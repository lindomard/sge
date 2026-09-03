unit S_CadSol_Baixas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, RxDBComb, ToolEdit, RXDBCtrl, Mask, Buttons,
  ExtCtrls, DB, Grids, DBGrids, DBTables;

type
  TFrm_CadSol_Baixas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtBuscar: TEdit;
    bbBuscar: TBitBtn;
    GroupBox1: TGroupBox;
    lblChave: TLabel;
    dbeChave: TDBEdit;
    lblDataSol: TLabel;
    dbeDataSol: TDBDateEdit;
    dbeNomSol: TDBEdit;
    dbeCodSol: TDBEdit;
    lblSolicitante: TLabel;
    Label2: TLabel;
    dbeCadSol: TDBMemo;
    lblObservacao: TLabel;
    edtDepto: TEdit;
    DBGrid1: TDBGrid;
    Tb_Sol1: TQuery;
    Tb_Sol1CS1CODEMP: TFloatField;
    Tb_Sol1CS1CHAVE: TFloatField;
    Tb_Sol1CS1LOTSEQ: TFloatField;
    Tb_Sol1CS1CODSOL: TStringField;
    Tb_Sol1CS1CODDEP: TFloatField;
    Tb_Sol1CS1OBS: TStringField;
    Tb_Sol1CS1DATA: TDateTimeField;
    Tb_Sol1NOMSOL: TStringField;
    Tb_Sol1NOMDEP: TStringField;
    Up_Sol1: TUpdateSQL;
    Src_Sol1: TDataSource;
    Tb_Sol2: TQuery;
    Tb_Sol2CS2CODEMP: TFloatField;
    Tb_Sol2CS2CHAVE: TFloatField;
    Tb_Sol2CS2LOTSEQ: TFloatField;
    Tb_Sol2CS2CODPRO: TStringField;
    Tb_Sol2CS2QTDPREV: TFloatField;
    Tb_Sol2CS2QTDREAL: TFloatField;
    Tb_Sol2NOMPRO: TStringField;
    Tb_Sol2QTDPEN: TFloatField;
    Up_Sol2: TUpdateSQL;
    Src_Sol2: TDataSource;
    btnConfirmar: TButton;
    Tb_Sol1CS1STATUS: TFloatField;
    procedure bbBuscarClick(Sender: TObject);
    procedure Tb_Sol1CalcFields(DataSet: TDataSet);
    procedure Tb_Sol2CalcFields(DataSet: TDataSet);
    procedure Tb_Sol2BeforeInsert(DataSet: TDataSet);
    procedure Tb_Sol2BeforePost(DataSet: TDataSet);
    procedure edtBuscarEnter(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadSol_Baixas: TFrm_CadSol_Baixas;

implementation

uses Func, S_CadSol_Pesq, S_DM2, S_DM6, lerarq, S_DM1;

{$R *.dfm}

procedure TFrm_CadSol_Baixas.bbBuscarClick(Sender: TObject);
var
  Chave: String;
begin
Chave := '-1';
if ValFloat(edtBuscar.Text)>0 then
  begin
  Chave := FloatToStr(ValFloat(edtBuscar.Text));
  end
else
  begin
  Application.CreateForm(TFrm_CadSol_Pesq,Frm_CadSol_Pesq);
  Frm_CadSol_Pesq.ShowModal;
  if not Frm_CadSol_Pesq.Tb_Sol1.IsEmpty then
    Chave := Frm_CadSol_Pesq.Tb_Sol1CS1CHAVE.AsString;
  FreeAndNil(Frm_CadSol_Pesq);
  end;
Tb_Sol1.Close;
TB_SOL1.SQL.Clear;
Tb_Sol1.SQL.Add('select * from CADSOL1 where CS1CHAVE = '+QuotedStr(Chave));
Tb_Sol1.Open;
flcadpro_dpto(1,0,Tb_Sol1CS1CODDEP.AsString);
edtDepto.Text:=DM6.Tb_Prod_DepPRODEP_NOME.AsString;

if Tb_Sol1CS1STATUS.AsInteger>0 then
  begin
  ShowMessage('Solicitação já confirmada!');
  Tb_Sol2.Close;
  TB_SOL2.SQL.Clear;
  Tb_Sol2.SQL.Add('select * from CADSOL2 where CS2CHAVE = -1');
  Tb_Sol2.Open;
  end
else
  begin
  Tb_Sol2.Close;
  TB_SOL2.SQL.Clear;
  Tb_Sol2.SQL.Add('select * from CADSOL2 where CS2CHAVE = '+QuotedStr(Chave));
  Tb_Sol2.Open;
  end;

end;

procedure TFrm_CadSol_Baixas.Tb_Sol1CalcFields(DataSet: TDataSet);
begin
if not Tb_Sol1CS1CODSOL.IsNull then
  begin
  if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_Sol1CS1CODSOL.AsString) then
    Tb_Sol1NOMSOL.AsString := DM1.Query1.FieldByName('NOMUSR').AsString
  else
    begin
    if Tb_Sol1CS1CODSOL.AsInteger=1111 then
      Tb_Sol1NOMSOL.AsString:='Suporte/Desenvolvimento';
    end;
  end;

if not Tb_Sol1CS1CODDEP.IsNull then
  begin
  if flqr1('PRODEP_NOME','','CADPRO_DPTO','N','PRODEP_CODDEP',Tb_Sol1CS1CODDEP.AsString) then
    Tb_Sol1NOMDEP.AsString := DM1.Query1.FieldByName('PRODEP_NOME').AsString
  end;
end;

procedure TFrm_CadSol_Baixas.Tb_Sol2CalcFields(DataSet: TDataSet);
begin
if flcadpro(1,0,0,Tb_Sol2CS2CODPRO.AsString) then
  Tb_Sol2NOMPRO.AsString := DM1.Tb_ProPDNOME.AsString;
Tb_Sol2QTDPEN.AsFloat := Tb_Sol2CS2QTDPREV.AsFloat - Tb_Sol2CS2QTDREAL.AsFloat;
end;

procedure TFrm_CadSol_Baixas.Tb_Sol2BeforeInsert(DataSet: TDataSet);
begin
Abort;
end;

procedure TFrm_CadSol_Baixas.Tb_Sol2BeforePost(DataSet: TDataSet);
begin
if Tb_Sol2CS2QTDREAL.IsNull then
  Tb_Sol2CS2QTDREAL.AsFloat:=0;
  
if Tb_Sol2CS2QTDREAL.AsFloat>Tb_Sol2CS2QTDPREV.AsFloat then
  begin
  ShowMessage('Quantidade maior que solicitada!');
  DBGrid1.SelectedField:=Tb_Sol2CS2QTDREAL;
  Abort;
  end;
if Tb_Sol2CS2QTDREAL.AsFloat<0 then
  begin
  ShowMessage('Quantidade menor que zero!');
  DBGrid1.SelectedField:=Tb_Sol2CS2QTDREAL;
  Abort;
  end;
end;

procedure TFrm_CadSol_Baixas.edtBuscarEnter(Sender: TObject);
begin
Tb_Sol1.Close;
TB_SOL1.SQL.Clear;
Tb_Sol1.SQL.Add('select * from CADSOL1 where CS1CHAVE = -1' );
Tb_Sol1.Open;

Tb_Sol2.Close;
TB_SOL2.SQL.Clear;
Tb_Sol2.SQL.Add('select * from CADSOL2 where CS2CHAVE = -1' );
Tb_Sol2.Open;
end;

procedure TFrm_CadSol_Baixas.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;
end;

procedure TFrm_CadSol_Baixas.btnConfirmarClick(Sender: TObject);
var
  oldChave: String;
  newChave: String;
begin
if not (Tb_Sol2.IsEmpty) then
  begin
  if ((Tb_Sol1CS1CHAVE.AsInteger>0)
      and (Tb_Sol1CS1STATUS.AsInteger=0)) then
    begin
    if not (Tb_Sol1.State in [dsEdit, dsInsert]) then
      Tb_Sol1.Edit;
    Tb_Sol1CS1STATUS.AsInteger:=1;
    oldChave := Tb_Sol1CS1CHAVE.AsString;
    Tb_Sol1.Post;

    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add(' SELECT * FROM CADSOL2 WHERE CS2CHAVE='+oldChave
                      +' AND CS2QTDREAL<>CS2QTDPREV ');
    DM1.Query2.Open;
    if not DM1.Query2.IsEmpty then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('select (max(CS1CHAVE)) as total from CADSOL1 where 1=1');
      DM1.Query2.SQL.Add(codemp2('CS1CODEMP',codemp));
      try
        DM1.Query2.Open;
      except
        end;
      if DM1.Query2.IsEmpty then
        newChave := '1'
      else
        newChave :=IntToStr(DM1.Query2.FieldByName('total').AsInteger+1);
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add(' INSERT INTO CADSOL1 ( CS1CODEMP, CS1CHAVE, CS1LOTSEQ, '
                        +' CS1CODDEP, CS1CODSOL,CS1OBS, CS1DATA, CS1STATUS) '
                        +' SELECT CS1CODEMP,'+newChave+' as CS1CHAVE, CS1LOTSEQ, '
                        +' CS1CODDEP, CS1CODSOL,CS1OBS, sysdate as CS1DATA, 0 as CS1STATUS '
                        +' FROM CADSOL1 WHERE CS1CHAVE='+oldChave);
      DM1.Query2.ExecSQL;

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add(' INSERT INTO CADSOL2 (CS2CODEMP, CS2CHAVE, CS2LOTSEQ, '
                        +' CS2CODPRO, CS2QTDPREV, CS2QTDREAL) '
                        +' SELECT CS2CODEMP, '+newChave+' AS CS2CHAVE, CS2LOTSEQ, CS2CODPRO, '
                        +' CS2QTDPREV-CS2QTDREAL as CS2QTDPREV, 0 as CS2QTDREAL '
                        +' FROM CADSOL2 WHERE CS2CHAVE='+oldChave
                        +' AND CS2QTDREAL<>CS2QTDPREV ');
      DM1.Query2.ExecSQL;
      end;
    Tb_Sol1.Close;

    Tb_Sol2.First;
    while not Tb_Sol2.Eof do
      begin
      fBaixarMercadorias(codemp
         ,log_filial_padrao
         ,0 // item
         ,02 // docori
         ,codusr
         ,0 //pcontesp
         ,Log_TipoProdPad //ptipoprod
         ,DM1.Tb_AjuAJSEQ.AsFloat
         ,DM1.Tb_AjuAJLOTSEQ.AsFloat
         ,Tb_Sol2CS2QTDREAL.AsFloat
         ,Tb_Sol2CS2CODPRO.AsString
         ,'S' // estnor
         ,'N' // estreversado
         ,''
         ,StrToDate('01/01/1900')
                  ,'' // lote re
                  ,'' // obs

         );
      Tb_Sol2.Next;
      end;
    Tb_Sol2.Close;

    end;
  end;
end;

procedure TFrm_CadSol_Baixas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.
