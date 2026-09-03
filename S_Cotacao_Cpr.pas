unit S_Cotacao_Cpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Grids, DBGrids, DBTables, DB,
  ComCtrls, Buttons, jpeg, ExtCtrls, RxDBComb, DBCtrls, RXDBCtrl, Menus;

type
  TFrm_Cotacao_Cpr = class(TForm)
    Panel_butons: TPanel;
    Image_buttons: TImage;
    sbnIncluir: TSpeedButton;
    sbnLocalizar: TSpeedButton;
    sbnAlterar: TSpeedButton;
    sbnGravar: TSpeedButton;
    sbnCancelar: TSpeedButton;
    sbnExcluir: TSpeedButton;
    bbSair: TSpeedButton;
    sbnImprimir: TSpeedButton;
    Panel_direito: TPanel;
    pnlCab: TPanel;
    Edit4: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    CODFOR: TEdit;
    Edit22: TEdit;
    Edit26: TEdit;
    Src_CC1: TDataSource;
    Up_CC1: TUpdateSQL;
    Tb_CC1: TQuery;
    Tb_CC1CCT1CODEMP: TFloatField;
    Tb_CC1CCT1CHAVE: TFloatField;
    Tb_CC1CCT1LOTSEQ: TFloatField;
    Tb_CC1CCT1OBS: TStringField;
    Tb_CC1CCT1DATA: TDateTimeField;
    Tb_CC1CCT1CASAS: TFloatField;
    Src_CC2: TDataSource;
    Up_CC2: TUpdateSQL;
    Tb_CC2: TQuery;
    Tb_CC2CCT2CODEMP: TFloatField;
    Tb_CC2CCT2CHAVE: TFloatField;
    Tb_CC2CCT2LOTSEQ: TFloatField;
    Tb_CC2CCT2CODPRO: TFloatField;
    Tb_CC2CCT2QTD: TFloatField;
    Tb_CC2CCT2OBS: TStringField;
    dbeChave: TDBEdit;
    dbeData: TDBDateEdit;
    dbObsCab: TDBMemo;
    PageControl1: TPageControl;
    TsItens: TTabSheet;
    DBGrid_itens: TDBGrid;
    Tb_CC3: TQuery;
    Up_CC3: TUpdateSQL;
    Src_CC3: TDataSource;
    Tb_CC3CCT3CODEMP: TFloatField;
    Tb_CC3CCT3CHAVE: TFloatField;
    Tb_CC3CCT3LOTSEQ: TFloatField;
    Tb_CC3CCT3CODFOR: TFloatField;
    Tb_CC3CCT3PRECO: TFloatField;
    Tb_CC3CCT3QTD: TFloatField;
    Tb_CC3CCT3OBS: TMemoField;
    PopupMenu1: TPopupMenu;
    Deletar1: TMenuItem;
    lbx_codfor: TListBox;
    Tb_CC3CCT3CODPRO: TFloatField;
    dbCasas: TRxDBComboBox;
    TsFornecedor: TTabSheet;
    DBGrid_Forn: TDBGrid;
    Tb_CC3NOMFOR: TStringField;
    Edit1: TEdit;
    cbFornecedor: TComboBox;
    Tb_CC2MINPCO: TFloatField;
    Tb_CC2NOMFOR: TStringField;
    Tb_CC3CCT3PRAZO: TFloatField;
    pnlObs: TPanel;
    dbObs: TDBMemo;
    Tb_CC2MINPRZ: TIntegerField;
    Tb_CC2NOMFORPRZ: TStringField;
    Tb_CC2PRAZO: TIntegerField;
    Tb_CC2MINPRZPCO: TFloatField;
    sbtImpSelecionado: TSpeedButton;
    Tb_CC2CCT2NOMPRO: TStringField;
    Tb_CC2CCT2UNDPRO: TStringField;
    Tb_CC2CCT2ITEM: TFloatField;
    Tb_CC3CCT3ITEM: TFloatField;
    Tb_CC3UNDPRO: TStringField;
    Tb_CC3NOMPRO: TStringField;
    Tb_CC2CCT2ID_NEW: TFloatField;
    Tb_CC3CCT3ID_NEW: TFloatField;
    Tb_CC2CCT2ID_CCT1_NEW: TFloatField;
    Tb_CC3CCT3ID_CCT2_NEW: TFloatField;
    Tb_CC1CCT1ID_NEW: TFloatField;
    edt_data_aprovacao: TEdit;
    edt_CCT1DATA_CONF_hora: TMaskEdit;
    edt_CCT1DATA_CONF: TDateEdit;
    Tb_CC1CCT1DATA_CONF: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
    procedure Tb_CC2CalcFields(DataSet: TDataSet);
    procedure sbnIncluirClick(Sender: TObject);
    procedure sbnAlterarClick(Sender: TObject);
    procedure sbnGravarClick(Sender: TObject);
    procedure sbnCancelarClick(Sender: TObject);
    procedure sbnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_CC1AfterInsert(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_CC2AfterInsert(DataSet: TDataSet);
    procedure Tb_CC2BeforePost(DataSet: TDataSet);
    procedure DBGrid_itensColExit(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_CC3AfterInsert(DataSet: TDataSet);
    procedure Tb_CC3CalcFields(DataSet: TDataSet);
    procedure cbFornecedorChange(Sender: TObject);
    procedure Tb_CC3BeforePost(DataSet: TDataSet);
    procedure dbObsExit(Sender: TObject);
    procedure DBGrid_FornDblClick(Sender: TObject);
    procedure sbnLocalizarClick(Sender: TObject);
    procedure Tb_CC3BeforeInsert(DataSet: TDataSet);
    procedure TsFornecedorEnter(Sender: TObject);
    procedure TsItensEnter(Sender: TObject);
    procedure sbnImprimirClick(Sender: TObject);
    procedure sbtImpSelecionadoClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    Gerando: Boolean;
    procedure MudaBotao(Status: Boolean);
    function fChamaPesqPro(pCodSol: Integer; pFormOri,pCarDig: String): String;


    procedure fBloquearEdicao(pBloqueia: Boolean);


  public
    { Public declarations }
  end;

var
  Frm_Cotacao_Cpr: TFrm_Cotacao_Cpr;
  usaformpro_normal : Boolean;

implementation

uses S_DM1, lerarq, Func, Math, flerarq, S_DM4, S_Pro_Nov, S_PesqProd,
  S_ConsCotCpr, func_excecoes, S_QrCotacao_Cpr;

{$R *.dfm}

function TFrm_Cotacao_Cpr.fChamaPesqPro(pCodSol: Integer; pFormOri,pCarDig: String): String;
begin
result:='';
Application.CreateForm(TFrm_Pro_Nov, Frm_Pro_Nov);
Frm_Pro_Nov.PC1.ActivePage:=Frm_Pro_Nov.tsTab;
Frm_Pro_Nov.proNov_ori:=pFormOri;
Frm_Pro_Nov.mtipo    :=1;
if pCarDig<>'' then
  begin
  if (Frm_Pro_Nov.CAMPO.ItemIndex=1) and (not ENumero(pCarDig)) then
    Frm_Pro_Nov.CAMPO.ItemIndex:=0;
  Frm_Pro_Nov.Edit1.Text:=PCarDig;
  Frm_Pro_Nov.Edit1.SelStart:=1;
  Frm_Pro_Nov.Edit1.SelLength:=1;
  end;
if Frm_Pro_Nov.ShowModal=mrOk then
  begin
  if pcodsol=0 then
    Result:=DM1.Tb_ProPDCODPRO.AsString
  else if pcodsol=1 then
    Result:=DM1.Tb_ProPDCODBAR.AsString
  else if pcodsol=3 then
    Result:=DM1.Tb_ProPDMARCA.AsString
  else
    Result:=DM1.Tb_ProPDCODPRO.AsString;
  end;
end;

procedure TFrm_Cotacao_Cpr.MudaBotao(Status: Boolean);
begin
//
fBloquearEdicao(Status);

sbnIncluir.Enabled    := Status;
sbnAlterar.Enabled    := Status;
sbnGravar.Enabled     := not Status;
sbnCancelar.Enabled   := not Status;
sbnExcluir.Enabled    := Status;
sbnImprimir.Enabled   := Status;

dbeChave.ReadOnly     := status;
dbeData.ReadOnly      := status;
CODFOR.ReadOnly       := status;
lbx_codfor.Enabled    := not status;
dbObs.ReadOnly        := status;
dbObsCab.ReadOnly     := status;
dbCasas.ReadOnly      := status;

DBGrid_itens.ReadOnly := Status;
DBGrid_Forn.ReadOnly  := Status;

end;
procedure TFrm_Cotacao_Cpr.fBloquearEdicao(pBloqueia: Boolean);
begin
dbeChave.Enabled:=pBloqueia=false;
dbeData.Enabled:=pBloqueia=false;
CODFOR.Enabled:=pBloqueia=false;
lbx_codfor.Enabled:=pBloqueia=false;
dbObsCab.Enabled:=pBloqueia=false;
dbeChave.Enabled:=pBloqueia=false;
dbCasas.Enabled:=pBloqueia=false;
//cbFornecedor.Enabled:=pBloqueia=false;

end;



procedure TFrm_Cotacao_Cpr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_Cotacao_Cpr.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Cotacao_Cpr.Tb_CC2CalcFields(DataSet: TDataSet);
var
  Query : TQuery;
begin

if (trim(Tb_CC2CCT2NOMPRO.AsString)<>'') AND (Tb_CC2CCT2ITEM.AsInteger>0) then
  begin
  Query:= TQuery.Create(nil);
  Query.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' select * from CADCOT3 where 1=1 and CCT3PRECO=(');
  Query.SQL.Add(' select MIN(CCT3PRECO) from CADCOT3 where 1=1 and CCT3PRECO>0');
  Query.SQL.Add(' and CCT3CODEMP='+Tb_CC2CCT2CODEMP.AsString);
  Query.SQL.Add(' and CCT3CHAVE ='+Tb_CC2CCT2CHAVE.AsString);
  Query.SQL.Add(' and CCT3LOTSEQ='+Tb_CC2CCT2LOTSEQ.AsString);
//  Query.SQL.Add(' and CCT3CODPRO='+Tb_CC2CCT2CODPRO.AsString);
  Query.SQL.Add(') and CCT3CODEMP='+Tb_CC2CCT2CODEMP.AsString);
  Query.SQL.Add(' and CCT3CHAVE ='+Tb_CC2CCT2CHAVE.AsString);
  Query.SQL.Add(' and CCT3LOTSEQ='+Tb_CC2CCT2LOTSEQ.AsString);
  Query.SQL.Add(' and CCT3ITEM='+Tb_CC2CCT2ITEM.AsString);
  Query.Open;
  Tb_CC2MINPCO.AsFloat := Query.FieldByName('CCT3PRECO').AsFloat;
  Tb_CC2PRAZO.AsInteger  := Query.FieldByName('CCT3PRAZO').AsInteger;
  flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Query.FieldByName('CCT3CODFOR').AsString);
  Tb_CC2NOMFOR.AsString := DM1.Query1.FieldByName('FRAZAO').AsString;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' select * from CADCOT3 where 1=1 and CCT3PRAZO=(');
  Query.SQL.Add(' select MIN(CCT3PRAZO) from CADCOT3 where 1=1');
  Query.SQL.Add(' and CCT3CODEMP='+Tb_CC2CCT2CODEMP.AsString);
  Query.SQL.Add(' and CCT3CHAVE ='+Tb_CC2CCT2CHAVE.AsString);
  Query.SQL.Add(' and CCT3LOTSEQ='+Tb_CC2CCT2LOTSEQ.AsString);
  Query.SQL.Add(' and CCT3ITEM='+Tb_CC2CCT2ITEM.AsString);
  Query.SQL.Add(') and CCT3CODEMP='+Tb_CC2CCT2CODEMP.AsString);
  Query.SQL.Add(' and CCT3CHAVE ='+Tb_CC2CCT2CHAVE.AsString);
  Query.SQL.Add(' and CCT3LOTSEQ='+Tb_CC2CCT2LOTSEQ.AsString);
  Query.SQL.Add(' and CCT3ITEM='+Tb_CC2CCT2ITEM.AsString);
  Query.Open;
  Tb_CC2MINPRZPCO.AsFloat := Query.FieldByName('CCT3PRECO').AsFloat;
  Tb_CC2MINPRZ.AsInteger  := Query.FieldByName('CCT3PRAZO').AsInteger;
  flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Query.FieldByName('CCT3CODFOR').AsString);
  Tb_CC2NOMFORPRZ.AsString := DM1.Query1.FieldByName('FRAZAO').AsString;

  FreeAndNil(Query);
  end;

end;

procedure TFrm_Cotacao_Cpr.sbnIncluirClick(Sender: TObject);
begin
lbx_codfor.Items.Clear;
cbFornecedor.Items.Clear;
Tb_CC1.Insert;
Tb_CC1.post;
Tb_CC1.edit;


Tb_CC2.Close;
TB_CC2.SQL.Clear;
Tb_CC2.SQL.Add(' select * from CADCOT2 where 1=1');
Tb_CC2.SQL.Add(' and CCT2CODEMP=-1');
Tb_CC2.SQL.Add(' and CCT2LOTSEQ=-1');
Tb_CC2.SQL.Add(' and CCT2CHAVE =-1');
Tb_CC2.Open;

Tb_CC3.Close;
TB_CC3.SQL.Clear;
Tb_CC3.SQL.Add('Select CADCOT3.*,CCT2NOMPRO AS NOMPRO,CCT2UNDPRO AS UNDPRO from CADCOT3,CADCOT2 '
              +' WHERE CCT3CODEMP=CCT2CODEMP '
              +' AND CCT3CHAVE=CCT2CHAVE '
             +'  AND CCT3LOTSEQ=CCT2LOTSEQ ');
Tb_CC3.SQL.Add(' and CCT3CODEMP=-1');
Tb_CC3.SQL.Add(' and CCT3LOTSEQ=-1');
Tb_CC3.SQL.Add(' and CCT3CHAVE =-1');
Tb_CC3.Open;

MudaBotao(False);
end;

procedure TFrm_Cotacao_Cpr.sbnAlterarClick(Sender: TObject);
begin
if Tb_CC1CCT1CHAVE.AsInteger>0 then
  begin
  Tb_CC1.Edit;
  MudaBotao(False);
  end;
end;

procedure TFrm_Cotacao_Cpr.sbnGravarClick(Sender: TObject);
begin
if (Tb_CC1.state in [dsEdit, dsInsert]) then
  begin
  if edt_CCT1DATA_CONF.Date>pdatanula then
     Tb_CC1CCT1DATA_CONF.AsDateTime :=StrtoDateTime(edt_CCT1DATA_CONF.text+' '+edt_CCT1DATA_CONF_hora.Text+':00')
  else
    Tb_CC1CCT1DATA_CONF.AsDateTime :=pdatanula;

  Tb_CC1.Post;
  end;
MudaBotao(True);
end;

procedure TFrm_Cotacao_Cpr.sbnCancelarClick(Sender: TObject);
var
  Query : TQuery;
begin
if Tb_CC1.State in [DsInsert] then
  begin
  Query:= TQuery.Create(nil);
  Query.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' delete from CADCOT2 where 1=1');
  Query.SQL.Add(' and CCT2CODEMP='+Tb_CC1CCT1CODEMP.AsString);
  Query.SQL.Add(' and CCT2CHAVE='+Tb_CC1CCT1CHAVE.AsString);
  Query.SQL.Add(' and CCT2LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
  Query.ExecSQL;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' delete from CADCOT3 where 1=1');
  Query.SQL.Add(' and CCT3CODEMP='+Tb_CC1CCT1CODEMP.AsString);
  Query.SQL.Add(' and CCT3CHAVE='+Tb_CC1CCT1CHAVE.AsString);
  Query.SQL.Add(' and CCT3LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
  Query.ExecSQL;
  end;
FreeAndNil(Query);
lbx_codfor.Items.Clear;
Tb_CC1.Cancel;
MudaBotao(True);
end;

procedure TFrm_Cotacao_Cpr.sbnExcluirClick(Sender: TObject);
var
  Query : TQuery;
begin
if not (Tb_CC1.State in [DsInsert, DsEdit]) then
  begin
  Query:= TQuery.Create(nil);
  Query.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' delete from CADCOT2 where 1=1');
  Query.SQL.Add(' and CCT2CODEMP='+Tb_CC1CCT1CODEMP.AsString);
  Query.SQL.Add(' and CCT2CHAVE='+Tb_CC1CCT1CHAVE.AsString);
  Query.SQL.Add(' and CCT2LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
  Query.ExecSQL;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' delete from CADCOT3 where 1=1');
  Query.SQL.Add(' and CCT3CODEMP='+Tb_CC1CCT1CODEMP.AsString);
  Query.SQL.Add(' and CCT3CHAVE='+Tb_CC1CCT1CHAVE.AsString);
  Query.SQL.Add(' and CCT3LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
  Query.ExecSQL;
  end;
FreeAndNil(Query);
lbx_codfor.Items.Clear;
Tb_CC1.Delete;
MudaBotao(True);
end;

procedure TFrm_Cotacao_Cpr.FormCreate(Sender: TObject);
begin
if flfilpad(-1,'_PRO','CB_FILGRU') then
  usaformpro_normal:=DM4.Tb_FilPad2FPVALOR.AsString='true';


Tb_CC1.Close;
Tb_CC1.SQL.Clear;
TB_CC1.SQL.Add('select * from CADCOT1 where 1=1');
TB_CC1.SQL.Add(' and CCT1CODEMP=-1');
TB_CC1.SQL.Add(' and CCT1LOTSEQ=-1');
TB_CC1.SQL.Add(' and CCT1CHAVE=-1');
Tb_CC1.Open;
MudaBotao(True);
end;

procedure TFrm_Cotacao_Cpr.Tb_CC1AfterInsert(DataSet: TDataSet);
var
  Query: TQuery;
begin
Query:= TQuery.Create(nil);
Query.DatabaseName := DM1.SG_ASSOC.DatabaseName;
Query.Close;
Query.SQL.Clear;
Query.SQL.Add(' select max(NVL(CCT1CHAVE,0))+1 ');
Query.SQL.Add(' as CHAVE from CADCOT1 where 1=1');
Query.SQL.Add(' and CCT1CODEMP='+IntToStr(codemp));
//Query.SQL.Add(' and CCT1LOTSEQ=1');
Query.Open;

Tb_CC1CCT1CODEMP.AsInteger:=codemp;
Tb_CC1CCT1CHAVE.AsFloat       :=Query.FieldByName('CHAVE').AsFloat;
Tb_CC1CCT1ID_NEW.AsFloat      :=fBuscarProximoId('CADCOT1_SEQ');
Tb_CC1CCT1LOTSEQ.AsFloat  :=1;
Tb_CC1CCT1DATA.AsDateTime :=Now;
Tb_CC1CCT1CASAS.AsInteger :=2;
end;

procedure TFrm_Cotacao_Cpr.c(DataSet: TDataSet);
begin

Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;
end;

procedure TFrm_Cotacao_Cpr.Tb_CC2AfterInsert(DataSet: TDataSet);
begin

Tb_CC2CCT2CODEMP.AsInteger    := Tb_CC1CCT1CODEMP.AsInteger;
Tb_CC2CCT2CHAVE.AsInteger     := Tb_CC1CCT1CHAVE.AsInteger;
Tb_CC2CCT2LOTSEQ.AsInteger    := Tb_CC1CCT1LOTSEQ.AsInteger;
Tb_CC2CCT2ID_NEW.AsFloat      :=fBuscarProximoId('CADCOT2_SEQ');
Tb_CC2CCT2ID_CCT1_NEW.AsFloat :=Tb_CC1CCT1ID_NEW.AsFloat;

end;

procedure TFrm_Cotacao_Cpr.Tb_CC2BeforePost(DataSet: TDataSet);
var
  Query : TQuery;
  i: Integer;
  function fBuscarUltimoPrecoCompra(pCodPro: Real; pCodFor: Real): Real;
  var
  query_pco: TQuery;
  begin
    query_pco:=TQuery.create(nil);
    query_pco.databasename:=DM1.SG_ASSOC.DatabaseName;

    query_pco.sql.Add('select PF2PU FROM ( ');


    query_pco.sql.Add('select pf1dataent,pf2codpro,PF2PU from cadpf2,cadpf1 '
                     +' where  pf1chave=pf2chave '
                     +' and pf1lotseq=pf2lotseq '
                     +' and pf1codemp=pf2codemp '
                     +' and pf2codpro=:CODPRO '
                     +' and pf1codfor=:CODFOR '
                     +' order by pf1dataent desc ');

    query_pco.sql.Add(') WHERE ROWNUM=1 ');
    query_pco.ParamByName('CODPRO').AsFloat:=pCodPro;
    query_pco.ParamByName('CODFOR').AsFloat:=pCodFor;
    try
       query_pco.open;
    except on e : exception do
       ex_erroSql_Novo(query_pco,455,'func Erro:'+e.Message ,'cadpf2');
       end;
    result:=query_pco.Fields[0].AsFloat;
    query_pco.close;
    freeandnil(query_pco);

  end;


begin
if (length(Tb_CC2CCT2NOMPRO.AsString)<2) or (Tb_CC2CCT2QTD.AsInteger = 0) then
  begin
  if (length(Tb_CC2CCT2NOMPRO.AsString)<2) then
    begin
    Tb_CC2.Cancel;
    end
  else if Tb_CC2CCT2QTD.AsInteger=0 then
    begin
    ShowMessage('Quantidade inferior ou igual a 0');
    DBGrid_itens.SelectedField:=Tb_CC2CCT2QTD;
    end
  else
    begin
    Tb_CC2.Cancel;

    end;
  Abort;
  end;
if Tb_CC2CCT2ITEM.AsInteger=0 then
   begin
   if fLerGenerico_query('CADCOT2','nvl(max(CCT2ITEM),0)+1','CCT2CHAVE='+Tb_CC2CCT2CHAVE.AsString+' and CCT2LOTSEQ='+Tb_CC2CCT2LOTSEQ.AsString,query_consulta) then
      Tb_CC2CCT2ITEM.AsInteger:=query_consulta.fields[0].AsInteger;
   end;


// inicio


if trim(Tb_CC2CCT2CHAVE.AsString)<>'' then
  begin
  Query:= TQuery.Create(nil);
  Query.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  for i :=0 to lbx_codfor.Items.Count - 1 do
    begin
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add(' select * from CADCOT3 where 1=1 ');
    Query.SQL.Add(' and CCT3CHAVE='+Tb_CC2CCT2CHAVE.AsString);
    Query.SQL.Add(' and CCT3LOTSEQ='+Tb_CC2CCT2LOTSEQ.AsString);
    Query.SQL.Add(' and CCT3CODEMP='+Tb_CC2CCT2CODEMP.AsString);
    Query.SQL.Add(' and CCT3ITEM='+Tb_CC2CCT2ITEM.AsString);
    Query.SQL.Add(' and CCT3CHAVE='+Tb_CC2CCT2CHAVE.AsString);
    Query.SQL.Add(' and CCT3CODFOR='+QuotedStr(pega_codigo(lbx_codfor.Items[i],'-')));
    Query.Open;
    if Query.IsEmpty then
      begin
      Gerando := True;
      Tb_CC3.Append;
      Gerando := False;
      Tb_CC3CCT3CODEMP.AsString:=Tb_CC2CCT2CODEMP.AsString;
      Tb_CC3CCT3CHAVE.AsString :=Tb_CC2CCT2CHAVE.AsString;
      Tb_CC3CCT3LOTSEQ.AsString:=Tb_CC2CCT2LOTSEQ.AsString;
      Tb_CC3CCT3CODPRO.AsString:=Tb_CC2CCT2CODPRO.AsString;
      Tb_CC3CCT3ITEM.AsString  :=Tb_CC2CCT2ITEM.AsString;
      Tb_CC3CCT3QTD.AsFloat    :=Tb_CC2CCT2QTD.AsFloat;

      Tb_CC3NOMPRO.AsString   :=Tb_CC2CCT2NOMPRO.AsString;
      Tb_CC3UNDPRO.AsString   :=Tb_CC2CCT2UNDPRO.AsString;

      Tb_CC3CCT3PRECO.AsFloat  :=fBuscarUltimoPrecoCompra(Tb_CC2CCT2CODPRO.AsFloat,fsonumero(pega_codigo(lbx_codfor.Items[i],'-')));
      Tb_CC3CCT3PRAZO.AsFloat  :=0;
      Tb_CC3CCT3OBS.AsString   :='';
      Tb_CC3CCT3CODFOR.AsString:=pega_codigo(lbx_codfor.Items[i],'-');
      Tb_CC3.Post;
      end;
    if cbFornecedor.Items.Count > 0 then
      begin
      cbFornecedor.ItemIndex:=0;
      cbFornecedorChange(Self);
      end;
    end;
  end;


//termino

end;

procedure TFrm_Cotacao_Cpr.DBGrid_itensColExit(Sender: TObject);
begin
if DBGrid_itens.SelectedField=Tb_CC2CCT2CODPRO then
  begin
  if Tb_CC2CCT2CODPRO.AsFloat > 0 then
     begin
     if not flcadpro(1,0,0,Tb_CC2CCT2CODPRO.AsString) then
        begin
        DBGrid_itens.SelectedField:=Tb_CC2CCT2CODPRO;
        ShowMessage('Produto não encontrado!!!');
        Abort;
        end
     else
        begin
        if Tb_CC2.State in [dsinsert,dsedit] then
           begin
           Tb_CC2CCT2NOMPRO.value:=DM1.Tb_ProPDNOME.asstring;
           Tb_CC2CCT2UNDPRO.value:=DM1.Tb_ProPDUND.asstring;
           end;
        DM1.Query1.Close;
        DM1.Query1.SQL.Clear;
        DM1.Query1.SQL.Add('select * from CADCOT2 where 1=1 ');
        DM1.Query1.SQL.Add(' and CCT2CODEMP='+Tb_CC2CCT2CODEMP.AsString);
        DM1.Query1.SQL.Add(' and CCT2LOTSEQ='+Tb_CC2CCT2LOTSEQ.AsString);
        DM1.Query1.SQL.Add(' and CCT2CHAVE='+Tb_CC2CCT2CHAVE.AsString);
        DM1.Query1.SQL.Add(' and CCT2CODPRO='+Tb_CC2CCT2CODPRO.AsString);
        DM1.Query1.Open;
        if not DM1.Query1.IsEmpty then
           begin
           Tb_CC2.Cancel;
           Tb_CC2.Locate('CCT2CODPRO',DM1.Query1.FieldByName('CCT2CODPRO').AsString,[]);
           ShowMessage('Produto já digitado!');
           end;
        end;
     end
  else if (Tb_CC2CCT2CODPRO.AsString='') and (DBGrid_itens.focused) then
     begin
     DBGrid_itens.SelectedField:=Tb_CC2CCT2CODPRO;
     DBGrid_itens.SetFocus;
     abort;
     end;

  end;
end;

procedure TFrm_Cotacao_Cpr.Deletar1Click(Sender: TObject);
begin
Tb_CC2.Delete;
end;

procedure TFrm_Cotacao_Cpr.DBGrid_itensKeyPress(Sender: TObject;
  var Key: Char);
begin
if (DBGrid_itens.SelectedField=Tb_CC2CCT2CODPRO) then
  begin
  if ((Key in ['a'..'z']) or (Key in ['A'..'Z']) or (Key ='%')) then
    begin
    if not (Tb_CC2.State in [dsEdit,dsInsert]) then
      begin
      if Tb_CC2CCT2CODPRO.IsNull then
        Tb_CC2.Append
      else
        Tb_CC2.Edit;
      end;
    Tb_CC2CCT2CODPRO.AsString:=fChamaPesqPro(0,'_venda',Key);
    if (Tb_CC2CCT2CODPRO.AsString)<>'' then
      begin
      DBGrid_itensColExit(self);
      DBGrid_itens.SelectedField:=Tb_CC2CCT2QTD;
      end;
    end;
  end;
end;

procedure TFrm_Cotacao_Cpr.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_CABC',Key);
   CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Cotacao_Cpr.CODFORExit(Sender: TObject);
var
  i : Integer;
begin
PageControl1.ActivePageIndex:=0;
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
  begin
  for i := 0 to lbx_codfor.items.Count -1 do
    begin
    if ValFloat(CODFOR.Text)=ValFloat(pega_codigo(lbx_codfor.Items[i],'-')) then
      begin
      ShowMessage('Codigo já digitado');
      CODFOR.Clear;
      CODFOR.SetFocus;
      Abort;
      end;
    end;
  if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
    begin
    lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);

    lbx_codfor.ItemIndex:=lbx_codfor.Items.Count-1;

    cbFornecedor.Items:=lbx_codfor.Items;
    cbFornecedor.ItemIndex := cbFornecedor.Items.Count - 1;

    CODFOR.text := '';
    CODFOR.SetFocus;

    Tb_CC2.Close;
    TB_CC2.SQL.Clear;
    Tb_CC2.SQL.Add(' select * from CADCOT2 where 1=1');
    Tb_CC2.SQL.Add(' and CCT2CODEMP='+Tb_CC1CCT1CODEMP.AsString);
    Tb_CC2.SQL.Add(' and CCT2LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
    Tb_CC2.SQL.Add(' and CCT2CHAVE ='+Tb_CC1CCT1CHAVE.AsString);
    Tb_CC2.Open;
    Tb_CC2.First;
    while not Tb_CC2.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add(' select * from CADCOT3 where 1=1');
      DM1.Query1.SQL.Add(' and CCT3CODEMP='+Tb_CC2CCT2CODEMP.AsString);
      DM1.Query1.SQL.Add(' and CCT3LOTSEQ='+Tb_CC2CCT2LOTSEQ.AsString);
      DM1.Query1.SQL.Add(' and CCT3CHAVE ='+Tb_CC2CCT2CHAVE.AsString);
      DM1.Query1.SQL.Add(' and CCT3ITEM='+Tb_CC2CCT2ITEM.AsString);
      DM1.Query1.SQL.Add(' and CCT3CODFOR='+pega_codigo(lbx_codfor.Items[lbx_codfor.ItemIndex],'-'));
      DM1.Query1.Open;
      if DM1.Query1.IsEmpty then
        begin
        Gerando := True;
        Tb_CC3.Append;
        Gerando := False;
        Tb_CC3CCT3CODEMP.AsInteger:=Tb_CC1CCT1CODEMP.AsInteger;
        Tb_CC3CCT3CHAVE.AsInteger :=Tb_CC1CCT1CHAVE.AsInteger;
        Tb_CC3CCT3LOTSEQ.AsInteger:=Tb_CC1CCT1LOTSEQ.AsInteger;
        Tb_CC3CCT3CODFOR.AsFloat  :=ValFloat(pega_codigo(lbx_codfor.Items[lbx_codfor.ItemIndex],'-'));
        Tb_CC3CCT3CODPRO.AsFloat  :=Tb_CC2CCT2CODPRO.AsFloat;
        Tb_CC3CCT3ITEM.AsFloat    :=Tb_CC2CCT2ITEM.AsFloat;
        Tb_CC3CCT3QTD.AsFloat     :=Tb_CC2CCT2QTD.AsFloat;
        Tb_CC3NOMPRO.AsString         :=Tb_CC2CCT2NOMPRO.AsString;
        Tb_CC3UNDPRO.AsString         :=Tb_CC2CCT2UNDPRO.AsString;

        Tb_CC3CCT3PRECO.AsFloat   :=0;
        Tb_CC3CCT3PRAZO.AsFloat   :=0;
        Tb_CC3.Post;
        end;
      Tb_CC2.Next;        
      end;
    end
  else
    begin
    fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
    CODFOR.text := '';
    CODFOR.SetFocus;
    end;
  end;
end;

procedure TFrm_Cotacao_Cpr.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  cod : String;
begin

if key=46 then
  if lbx_codfor.ItemIndex>=0 then
    begin
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add(' delete from CADCOT3 '
                      +' where CCT3CHAVE='+Tb_CC1CCT1CHAVE.AsString
                      +' and CCT3LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString
                      +' and CCT3CODFOR='+QuotedStr(pega_codigo(lbx_codfor.Items[lbx_codfor.ItemIndex],'-'))
                      +' and CCT3CODEMP='+Tb_CC1CCT1CODEMP.AsString);
    DM1.Query1.ExecSQL;
    Tb_CC3.Close;
    Tb_CC3.SQL.Clear;
    TB_CC3.SQL.Add('Select CADCOT3.*,CCT2NOMPRO AS NOMPRO,CCT2UNDPRO AS UNDPRO from CADCOT3,CADCOT2 '
              +' WHERE CCT3CODEMP=CCT2CODEMP '
              +' AND CCT3CHAVE=CCT2CHAVE '
             +'  AND CCT3LOTSEQ=CCT2LOTSEQ '
                  +' AND  CCT3CHAVE='+Tb_CC1CCT1CHAVE.AsString
                  +' and CCT3LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString
                  +' and CCT3CODEMP='+Tb_CC1CCT1CODEMP.AsString);

    Tb_CC3.Open;
    lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);
    cbFornecedor.Items := lbx_codfor.Items;
    end;
end;

procedure TFrm_Cotacao_Cpr.Tb_CC3AfterInsert(DataSet: TDataSet);
begin
Tb_CC3CCT3CODEMP.AsInteger    := Tb_CC1CCT1CODEMP.AsInteger;
Tb_CC3CCT3CHAVE.AsInteger     := Tb_CC1CCT1CHAVE.AsInteger;
Tb_CC3CCT3LOTSEQ.AsInteger    := Tb_CC1CCT1LOTSEQ.AsInteger;
Tb_CC3CCT3ID_NEW.AsFloat      := fBuscarProximoId('CADCOT3_SEQ');
Tb_CC3CCT3ID_CCT2_NEW.AsFloat := Tb_CC2CCT2ID_NEW.AsFloat;

end;

procedure TFrm_Cotacao_Cpr.Tb_CC3CalcFields(DataSet: TDataSet);
begin

if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Tb_CC3CCT3CODFOR.AsString) then
  Tb_CC3NOMFOR.AsString:=DM1.Query1.Fields[0].AsString;
{if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Tb_CC3CCT3CODPRO.AsString) then
  Tb_CC3NOMPRO.AsString:=DM1.Query1.Fields[0].AsString;
}
end;

procedure TFrm_Cotacao_Cpr.cbFornecedorChange(Sender: TObject);
begin
Tb_CC3.Close;
TB_CC3.SQL.Clear;
Tb_CC3.SQL.Add('Select CADCOT3.*,CCT2NOMPRO AS NOMPRO,CCT2UNDPRO AS UNDPRO from CADCOT3,CADCOT2 '
              +' WHERE CCT3CODEMP=CCT2CODEMP '
              +' AND CCT3CHAVE=CCT2CHAVE '
              +'  AND CCT3LOTSEQ=CCT2LOTSEQ '
              +'  AND CCT3ITEM=CCT2ITEM '
              +' and CCT3CODEMP='+Tb_CC1CCT1CODEMP.AsString);
Tb_CC3.SQL.Add(' and CCT3LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
Tb_CC3.SQL.Add(' and CCT3CHAVE ='+Tb_CC1CCT1CHAVE.AsString);
Tb_CC3.SQL.Add(' and CCT3CODFOR ='+QuotedStr(pega_codigo(cbFornecedor.Items[cbFornecedor.ItemIndex],'-')));
Tb_CC3.Open;
end;

procedure TFrm_Cotacao_Cpr.Tb_CC3BeforePost(DataSet: TDataSet);
begin
if (Tb_CC3CCT3QTD.AsInteger = 0) then
  begin
  Tb_CC3.Cancel;
  Abort;
  end;
end;

procedure TFrm_Cotacao_Cpr.dbObsExit(Sender: TObject);
begin
pnlObs.Visible:=False;
end;

procedure TFrm_Cotacao_Cpr.DBGrid_FornDblClick(Sender: TObject);
begin
if Tb_CC3CCT3CODPRO.AsFloat>0 then
  begin
  pnlObs.Visible:=True;
  dbObs.SetFocus;
  end;
end;

procedure TFrm_Cotacao_Cpr.sbnLocalizarClick(Sender: TObject);
var
  Query : TQuery;
  COD : Integer;
begin
Application.CreateForm(TFrm_ConsCotCpr,Frm_ConsCotCpr);
Frm_ConsCotCpr.ShowModal;
cod:=Frm_ConsCotCpr.Tb_CC1CCT1CHAVE.AsInteger;
FreeAndNil(Frm_ConsCotCpr);

Tb_CC1.Close;
TB_CC1.SQL.Clear;
Tb_CC1.SQL.Add(' select * from CADCOT1 where 1=1');
Tb_CC1.SQL.Add(' and CCT1CODEMP='+IntToStr(codemp));
Tb_CC1.SQL.Add(' and CCT1CHAVE ='+IntToStr(COD));
Tb_CC1.Open;

if Tb_CC1CCT1DATA_CONF.AsDateTime>pdatanula then
   begin
   edt_CCT1DATA_CONF.Date:=Tb_CC1CCT1DATA_CONF.AsDateTime;
   edt_CCT1DATA_CONF_hora.Text:=FormatDateTime(fhr_hhmm, Tb_CC1CCT1DATA_CONF.AsDateTime);
   end
else
   begin
   edt_CCT1DATA_CONF.Clear;
   edt_CCT1DATA_CONF_hora.Clear;
   end;


if not Tb_CC1.IsEmpty then
  begin
  Tb_CC2.Close;
  TB_CC2.SQL.Clear;
  Tb_CC2.SQL.Add(' select * from CADCOT2 where 1=1');
  Tb_CC2.SQL.Add(' and CCT2CODEMP='+Tb_CC1CCT1CODEMP.AsString);
  Tb_CC2.SQL.Add(' and CCT2LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
  Tb_CC2.SQL.Add(' and CCT2CHAVE ='+Tb_CC1CCT1CHAVE.AsString);
  Tb_CC2.Open;
  Tb_CC3.Close;
  TB_CC3.SQL.Clear;

   Tb_CC3.SQL.Add('Select CADCOT3.*,CCT2NOMPRO AS NOMPRO,CCT2UNDPRO AS UNDPRO from CADCOT3,CADCOT2 '
              +' WHERE CCT3CODEMP=CCT2CODEMP '
              +' AND CCT3CHAVE=CCT2CHAVE '
             +'  AND CCT3LOTSEQ=CCT2LOTSEQ ');
  Tb_CC3.SQL.Add(' and CCT3CODEMP='+Tb_CC1CCT1CODEMP.AsString);
  Tb_CC3.SQL.Add(' and CCT3LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
  Tb_CC3.SQL.Add(' and CCT3CHAVE ='+Tb_CC1CCT1CHAVE.AsString);
  Tb_CC3.Open;
  lbx_codfor.Items.Clear;
  Query:= TQuery.Create(nil);
  Query.DatabaseName := DM1.SG_ASSOC.DatabaseName;
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' select unique CCT3CODFOR from CADCOT3 where 1=1');
  Query.SQL.Add(' and CCT3CODEMP='+Tb_CC1CCT1CODEMP.AsString);
  Query.SQL.Add(' and CCT3LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
  Query.SQL.Add(' and CCT3CHAVE ='+Tb_CC1CCT1CHAVE.AsString);
  Query.Open;
  while not Query.Eof do
    begin
    if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Query.Fields[0].AsString) then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',Query.Fields[0].AsFloat)
                                    +' - '+DM1.Query1.Fields[0].AsString);
      end;
    Query.Next;
    end;
  cbFornecedor.Items:=lbx_codfor.Items;
  if cbFornecedor.Items.Count > 0 then
    begin
    cbFornecedor.ItemIndex:=0;
    cbFornecedorChange(self);
    end;
  FreeAndNil(Query);
  end;
end;

procedure TFrm_Cotacao_Cpr.Tb_CC3BeforeInsert(DataSet: TDataSet);
begin
if (not Gerando) then
  begin
  Tb_CC3.Cancel;
  Abort;
  end;
end;

procedure TFrm_Cotacao_Cpr.TsFornecedorEnter(Sender: TObject);
begin
if cbFornecedor.Items.Count > 0 then
  cbFornecedorChange(self);
end;

procedure TFrm_Cotacao_Cpr.TsItensEnter(Sender: TObject);
begin
Tb_CC2.Close;
Tb_CC2.Open;
end;

procedure TFrm_Cotacao_Cpr.sbnImprimirClick(Sender: TObject);
begin
Application.CreateForm(TQr_Cotacao_Cpr, Qr_Cotacao_Cpr);
Qr_Cotacao_Cpr.AbreBanco2(Tb_CC3CCT3CODEMP.AsInteger
                        ,Tb_CC3CCT3LOTSEQ.AsInteger
                        ,Tb_CC3CCT3CHAVE.AsInteger
                        ,Tb_CC3CCT3CODFOR.AsInteger);
Qr_Cotacao_Cpr.rlGrupo.PreviewModal;
FreeAndNil(Qr_Cotacao_Cpr);
end;

procedure TFrm_Cotacao_Cpr.sbtImpSelecionadoClick(Sender: TObject);
begin
Application.CreateForm(TQr_Cotacao_Cpr, Qr_Cotacao_Cpr);
Qr_Cotacao_Cpr.AbreBanco(Tb_CC3CCT3CODEMP.AsInteger
                        ,Tb_CC3CCT3LOTSEQ.AsInteger
                        ,Tb_CC3CCT3CHAVE.AsInteger
                        ,Tb_CC3CCT3CODFOR.AsInteger);
Qr_Cotacao_Cpr.rlUnitario.PreviewModal;
FreeAndNil(Qr_Cotacao_Cpr);
end;

procedure TFrm_Cotacao_Cpr.PageControl1Change(Sender: TObject);
begin
if Tb_CC1CCT1CHAVE.AsInteger>0 then
   begin
   Tb_CC2.Close;
   TB_CC2.SQL.Clear;
   Tb_CC2.SQL.Add(' select * from CADCOT2 where 1=1');
   Tb_CC2.SQL.Add(' and CCT2CODEMP='+Tb_CC1CCT1CODEMP.AsString);
   Tb_CC2.SQL.Add(' and CCT2LOTSEQ='+Tb_CC1CCT1LOTSEQ.AsString);
   Tb_CC2.SQL.Add(' and CCT2CHAVE ='+Tb_CC1CCT1CHAVE.AsString);
   Tb_CC2.Open;
   end;
end;

end.
