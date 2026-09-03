unit S_Venda_Pre_Armas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, DBTables,
  DBCtrls, Mask, RxDBComb, dbcgrids;

type
  TFrm_Venda_Pre_Armas = class(TForm)
    Panel_item: TPanel;
    Panel9: TPanel;
    sbncmet_excluir: TSpeedButton;
    StaticText21: TStaticText;
    lbl_qtditens: TStaticText;
    StaticText30: TStaticText;
    lbl_qtdund: TStaticText;
    bbcmet_sair: TBitBtn;
    Tb_Ped02_Armas: TQuery;
    U_Ped02_Armas: TUpdateSQL;
    Src_Ped02_Armas: TDataSource;
    StaticText1: TStaticText;
    lbl_totreais: TStaticText;
    StaticText2: TStaticText;
    lbl_pcouni_medio: TStaticText;
    Tb_Ped02_ArmasP2ARMA_CODEMP: TFloatField;
    Tb_Ped02_ArmasP2ARMA_LOTSEQ: TFloatField;
    Tb_Ped02_ArmasP2ARMA_CHAVE: TFloatField;
    Tb_Ped02_ArmasP2ARMA_CHAVE_NIVEL: TFloatField;
    Tb_Ped02_ArmasP2ARMA_CODPRO: TFloatField;
    Tb_Ped02_ArmasP2ARMA_ITEM: TFloatField;
    Tb_Ped02_ArmasP2ARMA_SEQ: TFloatField;
    Tb_Ped02_ArmasP2ARMA_TPARMA: TFloatField;
    Tb_Ped02_ArmasP2ARMA_DESCR: TMemoField;
    DBCtrlGrid1: TDBCtrlGrid;
    Label1: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label2: TLabel;
    DBE_NSERIE: TDBEdit;
    Label3: TLabel;
    DBE_NCANO: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Tb_Ped02_Armassequencia: TStringField;
    Tb_Ped02_ArmasP2ARMA_NSERIE: TStringField;
    Tb_Ped02_ArmasP2ARMA_NCANO: TStringField;
    procedure Tb_Ped02_ArmasAfterInsert(DataSet: TDataSet);
    procedure Tb_Ped02_ArmasBeforeDelete(DataSet: TDataSet);
    procedure bbcmet_sairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Tb_Ped02_ArmasCalcFields(DataSet: TDataSet);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure Tb_Ped02_ArmasBeforeInsert(DataSet: TDataSet);
    procedure C(DataSet: TDataSet);
    procedure DBE_NCANOEnter(Sender: TObject);
    procedure Tb_Ped02_ArmasBeforePost(DataSet: TDataSet);
    procedure DBMemo1Enter(Sender: TObject);
  private
    { Private declarations }
    mlocalizando_pedido:boolean;


  public
    { Public declarations }
    pCodPro: Real;
    pItem: Real;
    pQtd: Real;

    pChave: Integer;
    pChave_Ano: Integer;
    pCodemp: Integer;
    pCodemp_filial: Integer;

    function fLerArmas(pTipo: Integer): Boolean;

  end;

var
  Frm_Venda_Pre_Armas: TFrm_Venda_Pre_Armas;

implementation

uses  Func, func_excecoes, S_DM1;

{$R *.dfm}

procedure TFrm_Venda_Pre_Armas.Tb_Ped02_ArmasAfterInsert(DataSet: TDataSet);
begin
abort;
end;

procedure TFrm_Venda_Pre_Armas.Tb_Ped02_ArmasBeforeDelete(DataSet: TDataSet);
begin
abort;
end;



function tFrm_Venda_Pre_Armas.fLerArmas(pTipo: Integer): Boolean;
begin

Tb_Ped02_Armas.Close;
Tb_Ped02_Armas.SQL.Clear;
Tb_Ped02_Armas.SQL.Add('Select * from CADP02_ARMAS'
                     +'  where  P2ARMA_LOTSEQ=:LOTSEQ '
                     +'  and P2ARMA_CHAVE=:CHAVE '
                     +'  and P2ARMA_CODPRO=:CODPRO '
                     +'  and P2ARMA_CODEMP=:CODEMP '
                     +'  and P2ARMA_ITEM=:ITEM '
                     +' order by P2ARMA_SEQ ');
Tb_Ped02_Armas.ParamByName('LOTSEQ').AsInteger:=pChave_ano;
Tb_Ped02_Armas.ParamByName('CHAVE').AsInteger :=pChave;
Tb_Ped02_Armas.ParamByName('CODEMP').AsInteger:=pCodemp;
Tb_Ped02_Armas.ParamByName('CODPRO').AsFloat  :=pCodPro;
Tb_Ped02_Armas.ParamByName('ITEM').AsFloat    :=pItem;
try
   Tb_Ped02_Armas.Open;
//   Tb_Ped02_CMet.sql.savetofile('c:\sql001.txt');

except
   Tb_Ped02_Armas.sql.savetofile('c:\sql001.txt');
   end;

result:=true;
end;

procedure TFrm_Venda_Pre_Armas.bbcmet_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Venda_Pre_Armas.FormShow(Sender: TObject);
begin
DBCtrlGrid1.SetFocus;
end;

procedure TFrm_Venda_Pre_Armas.Tb_Ped02_ArmasCalcFields(DataSet: TDataSet);
begin
Tb_Ped02_Armassequencia.Value:=FormatFloat('00', Tb_Ped02_ArmasP2ARMA_SEQ.AsInteger)+'/'+Formatfloat('00', pQtd);




end;

procedure TFrm_Venda_Pre_Armas.DBCtrlGrid1Exit(Sender: TObject);
begin
if Tb_Ped02_Armas.State in [dsEdit,dsInsert] then
   Tb_Ped02_Armas.Post;
   
end;

procedure TFrm_Venda_Pre_Armas.Tb_Ped02_ArmasBeforeInsert(
  DataSet: TDataSet);
begin
abort;
end;

procedure TFrm_Venda_Pre_Armas.C(DataSet: TDataSet);
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

procedure TFrm_Venda_Pre_Armas.DBE_NCANOEnter(Sender: TObject);
begin
if (length(trim(Tb_Ped02_ArmasP2ARMA_NCANO.AsString))<1) and
   (length(trim(Tb_Ped02_ArmasP2ARMA_NSERIE.AsString))>1) then
  Tb_Ped02_ArmasP2ARMA_NCANO.Value:=Tb_Ped02_ArmasP2ARMA_NSERIE.AsString;
end;

procedure TFrm_Venda_Pre_Armas.Tb_Ped02_ArmasBeforePost(DataSet: TDataSet);
begin
if (length(trim(Tb_Ped02_ArmasP2ARMA_NCANO.AsString))<1) and
   (length(trim(Tb_Ped02_ArmasP2ARMA_NSERIE.AsString))>1) then
  Tb_Ped02_ArmasP2ARMA_NCANO.Value:=Tb_Ped02_ArmasP2ARMA_NSERIE.AsString;

end;

procedure TFrm_Venda_Pre_Armas.DBMemo1Enter(Sender: TObject);
begin
if (length(trim(Tb_Ped02_ArmasP2ARMA_DESCR.AsString))<1) and
   (length(trim(Tb_Ped02_ArmasP2ARMA_NSERIE.AsString))>1) then
  Tb_Ped02_ArmasP2ARMA_DESCR.Value:='Nº Serie: '+Tb_Ped02_ArmasP2ARMA_NSERIE.AsString;

end;

end.
