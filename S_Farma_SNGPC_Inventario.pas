unit S_Farma_SNGPC_Inventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,db,dbtables, Grids, DBGrids, ComCtrls,
  RLReport,s_lerarq_geral;

type
  TFrm_Farma_SNGPC_Inventario = class(TForm)
    Qr_Inv: TQuery;
    Src_Inv: TDataSource;
    Qr_InvPDNOME: TStringField;
    Qr_InvPDUND: TStringField;
    Qr_InvEI_CODEMP: TFloatField;
    Qr_InvEI_DATA: TDateTimeField;
    Qr_InvEI_CODPRO: TFloatField;
    Qr_InvEI_QTD: TFloatField;
    Qr_InvEI_LOTE: TStringField;
    U_Inv: TUpdateSQL;
    PageControl1: TPageControl;
    tsPrincipal: TTabSheet;
    tsRelatorio: TTabSheet;
    gb_itens_inv: TGroupBox;
    DBGrid_invent: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CB_DATA_ESTINI: TComboBox;
    bbIncluir: TBitBtn;
    bbExcluir: TBitBtn;
    bbSair: TBitBtn;
    bbImprimir: TBitBtn;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    edt_nompro: TEdit;
    CB_TPPESQ: TComboBox;
    Qr_Inv_Impres: TQuery;
    Qr_Inv_ImpresCODPRO: TFloatField;
    Qr_Inv_ImpresLOTE: TStringField;
    Qr_Inv_ImpresPDNOME: TStringField;
    Qr_Inv_ImpresPDUND: TStringField;
    Qr_Inv_ImpresPDREGMS: TStringField;
    Qr_Inv_ImpresQTDINV: TFloatField;
    Qr_Inv_ImpresTIPO_MED_INS: TFloatField;
    Qr_Inv_ImpresPDCLASSE_TERAPEUTICA: TFloatField;
    Qr_Inv_ImpresPDUND_INSUMO: TFloatField;
    Qr_Inv_ImpresPDUND_FARMACOTECNICA: TFloatField;
    Qr_Inv_ImpresCNPJ: TStringField;
    Src_Inv_Impres: TDataSource;
    RLReport_inventario: TRLReport;
    RLBand_cabger: TRLBand;
    RLCab_RazEmp: TRLLabel;
    RLCab_DathorEmi: TRLLabel;
    rlcab_titulo: TRLLabel;
    rlcab_pag: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand_cabdet: TRLBand;
    rlcabdet_codpro: TRLLabel;
    rlcabdet_nompro: TRLLabel;
    rlcabdet_qtd: TRLLabel;
    rlcabdet_und: TRLLabel;
    rlcabdet_lote: TRLLabel;
    rlcabdet_regms: TRLLabel;
    RLBand_det: TRLBand;
    rldet_codpro: TRLDBText;
    rldet_nompro: TRLDBText;
    rldet_qtd: TRLDBText;
    rldet_und: TRLDBText;
    rldet_lote: TRLDBText;
    rldet_regms: TRLDBText;
    RLBand_rodape: TRLBand;
    RLBand1: TRLBand;
    rlrod_qtdreg: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
    procedure bbIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CB_DATA_ESTINIChange(Sender: TObject);
    procedure edt_nomproChange(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure Qr_InvBeforePost(DataSet: TDataSet);
    procedure Qr_InvAfterInsert(DataSet: TDataSet);
    procedure Qr_InvAfterEdit(DataSet: TDataSet);
    procedure DBGrid_inventExit(Sender: TObject);
    procedure DBGrid_inventColExit(Sender: TObject);
    procedure Qr_InvAfterPost(DataSet: TDataSet);
    procedure Qr_InvBeforeDelete(DataSet: TDataSet);
    procedure bbExcluirClick(Sender: TObject);
    procedure RLReport_inventarioBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand_detBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure bbImprimirClick(Sender: TObject);
    procedure DBGrid_inventKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    mOrdemAtual: Integer; // 0 - Codigo 1-Descricao
    mCodPro_Ant: Real;
    mQtd_Ant: Real;
    mCodPro_Lido: Real;
    mLote_ant: String;
    mQtdReg: Integer;

    function FAtualizaComboInventario(pDataPadrao: String): Boolean;

    function fLerInventario(pOrdem: Integer): Boolean;

    function fLerProduto(pCodPro: Real): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_Farma_SNGPC_Inventario: TFrm_Farma_SNGPC_Inventario;

implementation

uses Func, S_DM1, lerarq, flerarq, Func2;

{$R *.dfm}

procedure TFrm_Farma_SNGPC_Inventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   action:=cafree;

end;

procedure TFrm_Farma_SNGPC_Inventario.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Farma_SNGPC_Inventario.bbIncluirClick(Sender: TObject);
var
mDataInv: String;
Query_Temp: TQuery;
begin
mDataInv := EmptyStr;
while mDataInv  = EmptyStr do
   begin
   try
      mDataInv  := InputBox('Informe a Data do Estoque Inicial','Data',DateToStr(Date));
      mDataInv:=FormatDatetime(fdt2, StrToDate(mDataInv)) ;
   Except
      mDataInv  := EmptyStr;
      end;
   end;
if fsonumero(mDataInv)<>0 then
   begin
   Query_Temp:=TQuery.create(nil);
   Query_temp.DatabaseName:='SG_ASSOC';
   Query_Temp.SQL.Clear;
   Query_Temp.SQL.Add('Select count(*) from CADSNGPC_ESTINI '
                     +' where EI_DATA=:DATA '
                     +' and EI_CODEMP=:CODEMP ');
   Query_Temp.ParamByName('DATA').Value:=StrToDate(mDataInv);
   Query_Temp.ParamByName('CODEMP').Value:=codemp;
   Query_Temp.Open;
   if query_temp.Fields[0].AsInteger>0 then
      begin
      MessageDlg('Estoque Inicial no dia '+mDataInv+' ja existente!',mtWarning,[mbOk],0);
      FreeAndNil(Query_Temp);
      exit;
      end;
   Query_Temp.Close;
   Query_Temp.SQL.Clear;
   Query_Temp.SQL.Add('Insert into CADSNGPC_ESTINI ('
                     +' EI_CODEMP,EI_DATA,EI_CODPRO,EI_QTD,EI_LOTE )'
                     +' Select PDCODEMP,:DATAINV,PDCODPRO,0 AS QTD,'+QuotedStr('X')
                     +' from CADPRO where PDCODEMP=:CODEMP '
                     +' and PDSGNPC=1 ' );
   Query_Temp.ParamByName('DATAINV').AsDateTime:=StrToDate(mDataInv);
   Query_Temp.ParamByName('CODEMP').AsFloat    :=codemp;
   try
      Query_Temp.ExecSQL;
      fdm1startcommit;
   except
      end;
   FreeAndNil(Query_Temp);
   FAtualizaComboInventario(mdatainv);
   end;
end;


function TFrm_Farma_SNGPC_Inventario.FAtualizaComboInventario(pDataPadrao: String): Boolean;

var
Query_Temp: TQuery;
begin

Query_Temp:=TQuery.create(nil);
Query_temp.DatabaseName:='SG_ASSOC';
Query_Temp.Close;
Query_Temp.SQL.Clear;
Query_Temp.SQL.Add('Select EI_DATA from CADSNGPC_ESTINI '
                  +' where EI_CODEMP=:CODEMP '
                  +' group by EI_DATA ');
Query_Temp.ParamByName('CODEMP').AsFloat    :=codemp;
try
   Query_Temp.Open;
except
   end;
CB_DATA_ESTINI.Clear;

if Query_Temp.Active then
   begin
   While not Query_Temp.Eof do
      begin
      CB_DATA_ESTINI.Items.Add(FormatDatetime(fdt2,  Query_Temp.Fields[0].AsDatetime));
      Query_Temp.Next;
      end;
   end;
freeandnil(query_temp);
result:=true;
if pDataPadrao<>'' then
   begin
   with CB_DATA_ESTINI do ItemIndex:=Items.IndexOf(pDataPadrao);
   CB_DATA_ESTINIChange(self);
   end;


end;
procedure TFrm_Farma_SNGPC_Inventario.FormShow(Sender: TObject);
begin
RLBand_cabger.Borders.DrawLeft:=true;
RLBand_cabger.Borders.DrawRight:=true;
RLBand_cabger.Borders.DrawTop:=true;

RLBand_cabdet.Borders.DrawLeft:=true;
RLBand_cabdet.Borders.DrawRight:=true;
RLBand_cabdet.Borders.DrawTop:=true;
RLBand_cabdet.Borders.DrawBottom:=true;

RLBand_det.Borders.DrawLeft:=true;
RLBand_det.Borders.DrawRight:=true;

rlcabdet_codpro.Borders.DrawRight:=true;
rlcabdet_nompro.Borders.DrawRight:=true;
rlcabdet_qtd.Borders.DrawRight:=true;
rlcabdet_und.Borders.DrawRight:=true;
rlcabdet_lote.Borders.DrawRight:=true;

rldet_codpro.Borders.DrawRight:=true;
rldet_nompro.Borders.DrawRight:=true;
rldet_qtd.Borders.DrawRight:=true;
rldet_und.Borders.DrawRight:=true;
rldet_lote.Borders.DrawRight:=true;


FAtualizaComboInventario('');
Qr_InvEI_QTD.DisplayFormat:=mcasqtd;
mOrdemAtual:=1; // 0 - Codigo 1-Descricao

end;

procedure TFrm_Farma_SNGPC_Inventario.CB_DATA_ESTINIChange(
  Sender: TObject);
begin
if trim(CB_DATA_ESTINI.Text)='' then
   Qr_Inv.Close
else
   begin
   if (not Qr_Inv.Active) and (StrtoDate(CB_DATA_ESTINI.Text)<>Qr_InvEI_DATA.AsDateTime) then
      fLerInventario(mOrdemAtual);
   end;

end;

function TFrm_Farma_SNGPC_Inventario.fLerInventario(pOrdem: Integer): Boolean;
begin
Qr_Inv.Close;
Qr_Inv.SQL.clear;
Qr_Inv.SQL.Add('Select   PDNOME,PDUND,  EI_CODEMP, '
              +'  EI_DATA,  EI_CODPRO,  EI_QTD,  EI_LOTE '
              +'  from CADPRO,CADSNGPC_ESTINI '
              +'  WHERE EI_CODPRO(+)=PDCODPRO '
              +'  AND EI_CODEMP(+)=PDCODEMP '
              +'  AND PDCODEMP=:CODEMP '
              +' and EI_DATA=:DATA ');
if pOrdem=0 then
   Qr_Inv.SQL.add(' ORDER BY PDCODPRO ')
else
   Qr_Inv.SQL.add(' ORDER BY PDNOME ');
Qr_Inv.ParamByName('CODEMP').AsInteger:=codemp;
Qr_Inv.ParamByName('DATA').Value      :=StrToDate(CB_DATA_ESTINI.Text);
try
   Qr_Inv.open;
except
   end;
mOrdemAtual:=pOrdem;
end;

procedure TFrm_Farma_SNGPC_Inventario.edt_nomproChange(Sender: TObject);
begin
if length(trim(edt_nompro.Text))>0 then
   begin
   if mOrdemAtual<>CB_TPPESQ.ItemIndex then
      fLerInventario(CB_TPPESQ.ItemIndex);
   if CB_TPPESQ.ItemIndex=0 then
      Qr_Inv.Locate('EI_CODPRO',fdeixanum(edt_nompro.text),[loPartialKey,loCaseInsensitive])
   else
      Qr_Inv.Locate('PDNOME',edt_nompro.text,[loPartialKey,loCaseInsensitive]);
   end;

end;

procedure TFrm_Farma_SNGPC_Inventario.c(DataSet: TDataSet);
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

procedure TFrm_Farma_SNGPC_Inventario.Qr_InvBeforePost(DataSet: TDataSet);
var
Query_Temp: tQuery;
begin
if Qr_InvEI_CODPRO.IsNull then
   begin
   abort;
   exit;
   end;

if Qr_InvEI_CODEMP.IsNull then
   Qr_InvEI_CODEMP.Value:=codemp;

if Qr_InvEI_DATA.IsNull then
   Qr_InvEI_DATA.Value:=StrToDate(CB_DATA_ESTINI.Text);
if Qr_InvEI_QTD.IsNull then
   Qr_InvEI_QTD.Value:=0;

if (Qr_InvEI_LOTE.IsNull) or (Trim(Qr_InvEI_LOTE.AsString)='') then
   Qr_InvEI_LOTE.Value:='X';
if (mCodPro_Ant<>Qr_InvEI_CODPRO.AsFloat) or (mLote_ant<>Qr_InvEI_LOTE.AsString) then
   begin
   Query_Temp:=tQuery.Create(nil);
   Query_Temp.DatabaseName:='SG_ASSOC';
   Query_Temp.SQL.Add('Select count(*) from CADSNGPC_ESTINI where '
                     +' EI_CODPRO=:CODPRO '
                     +' and EI_LOTE=:LOTE '
                     +' and EI_CODEMP=:CODEMP ');

   Query_Temp.ParamByName('CODPRO').Value:=Qr_InvEI_CODPRO.AsFloat;
   Query_Temp.ParamByName('LOTE').Value  :=Qr_InvEI_LOTE.AsString;
   Query_Temp.ParamByName('CODEMP').Value:=Qr_InvEI_CODEMP.AsInteger;
   Query_Temp.Open;
   if Query_Temp.Fields[0].AsInteger>0 then
      begin
      MessageDlg('Registro ja Existe no arquivo!',mtWarning,[mbOk],0);
      FreeAndNil(Query_Temp);
      abort;
      exit;
      end;
   FreeAndNil(Query_Temp);
   end;
if mCodPro_Lido<>Qr_InvEI_CODPRO.AsFloat then
   fLerProduto(Qr_InvEI_CODPRO.AsFloat);


end;

procedure TFrm_Farma_SNGPC_Inventario.Qr_InvAfterInsert(DataSet: TDataSet);
begin
    mCodPro_Ant:=0;
    mLote_ant  :='X';
    mQtd_Ant   :=0;

end;

procedure TFrm_Farma_SNGPC_Inventario.Qr_InvAfterEdit(DataSet: TDataSet);
begin
    mCodPro_Ant:=Qr_InvEI_CODPRO.AsFloat;
    mLote_ant  :=Qr_InvEI_LOTE.AsString;
    mQtd_Ant   :=Qr_InvEI_QTD.AsFloat;
end;


function TFrm_Farma_SNGPC_Inventario.fLerProduto(pCodPro: Real): Boolean;
var
Query_Pro: tQuery;
begin
Query_Pro:=tQuery.Create(nil);
Query_Pro.DatabaseName:='SG_ASSOC';
Query_Pro.SQL.Add('Select PDNOME,PDUND,PDCODPRO from CADPRO '
                 +' where PDCODEMP=:CODEMP '
                 +' and PDCODPRO=:CODPRO ');
Query_Pro.ParamByName('CODEMP').Value  :=iif(codemp>100,codemp-100,codemp);
Query_Pro.ParamByName('CODPRO').Value  :=pCodPro;
Query_Pro.Open;
if Query_Pro.IsEmpty then
  begin
  Query_Pro.SQL.Add('Select PDNOME,PDUND,PDCODPRO from CADPRO '
                   +' where PDCODEMP=:CODEMP '
                   +' and PDCODBAR=:CODPRO ');
  Query_Pro.ParamByName('CODEMP').Value  :=iif(codemp>100,codemp-100,codemp);
  Query_Pro.ParamByName('CODPRO').Value  :=pCodPro;
  Query_Pro.Open;
  end;
if Query_Pro.IsEmpty then
   begin
   Qr_InvPDNOME.Value:='';
   Qr_InvPDUND.Value :='';
   mCodPro_Lido      :=0;
   result:=false;
   end
else
   begin
   if Qr_Inv.state in [dsInsert,dsEdit] then
      begin
      Qr_InvPDNOME.Value:=Query_Pro.fieldbyName('PDNOME').AsString;
      Qr_InvPDUND.Value :=Query_Pro.fieldbyName('PDUND').AsString;
      end;
   mCodPro_Lido:=pCodpro;
   result:=true;
   end;
FreeandNil(Query_Pro);
end;


procedure TFrm_Farma_SNGPC_Inventario.DBGrid_inventExit(Sender: TObject);
begin
if mCodPro_Lido<>Qr_InvEI_CODPRO.AsFloat then
   fLerProduto(Qr_InvEI_CODPRO.AsFloat);

end;

procedure TFrm_Farma_SNGPC_Inventario.DBGrid_inventColExit(Sender: TObject);
begin
if DBGrid_invent.SelectedField=Qr_InvEI_CODPRO then
   begin
   if (Qr_InvEI_CODPRO.IsNull) or (Qr_InvEI_CODPRO.asFloat=0) then
      begin
      Qr_InvPDNOME.Value:='';
      Qr_InvPDUND.Value:='';
      end
   else if not fLerProduto(Qr_InvEI_CODPRO.AsFloat) then
      begin
      MessageDlg('Produto '+Qr_InvEI_CODPRO.AsString+' não Encontrado!',mtWarning,[mbOk],0);
      Qr_InvEI_CODPRO.Value:=0;
      DBGrid_invent.SelectedField:=Qr_InvEI_CODPRO;
      abort;
      exit;
      end;
   end;
if DBGrid_invent.SelectedField=Qr_InvEI_QTD then
   begin
   if Qr_InvEI_QTD.AsFloat<0 then
      Qr_InvEI_QTD.Value:=0;
   end;

end;

procedure TFrm_Farma_SNGPC_Inventario.Qr_InvAfterPost(DataSet: TDataSet);
var
query_inv: tQuery;
begin
c(Qr_Inv);
if mCodPro_Ant<>0 then
   begin
   query_inv:=tQuery.Create(nil);
   query_inv.DatabaseName:='SG_ASSOC';
   While true do
      begin
      query_inv.Close;
      query_inv.SQL.Clear;
      query_inv.SQL.Add('insert into OLD_CADSNGPC_ESTINI ('
                    +' EI_CODEMP '
                    +',EI_DATA '
                    +',EI_CODPRO '
                    +',EI_QTD '
                    +',EI_LOTE '
                    +',EI_CODNOV '
                    +',EI_CODUSR '
                    +',EI_DATHOR '
                    +',EI_TIPEVE '
                    +') values ('
                    +' :EI_CODEMP '
                    +',:EI_DATA '
                    +',:EI_CODPRO '
                    +',:EI_QTD '
                    +',:EI_LOTE '
                    +',SEQ_CADSNGPC_ESTINI.NextVal '
                    +',:EI_CODUSR '
                    +',SYSDATE '
                    +',0 '
                    +')');

      query_inv.ParamByName('EI_CODEMP').Value:=codemp;
      query_inv.ParamByName('EI_DATA').Value  :=StrToDateTime(CB_DATA_ESTINI.Text);
      query_inv.ParamByName('EI_CODPRO').Value:=mCodPro_Ant;
      query_inv.ParamByName('EI_QTD').Value   :=mQtd_Ant;
      query_inv.ParamByName('EI_LOTE').Value  :=mLote_ant;
      query_inv.ParamByName('EI_CODUSR').Value:=codusr;
      try
         query_inv.ExecSQL;
         fdm1StartCommit;
         freeandnil(query_inv);
         break;
      except
         query_inv.Close;
         query_inv.SQL.Clear;
         query_inv.SQL.Add('SELECT count(*) FROM USER_OBJECTS '
                          +' where OBJECT_TYPE='+QuotedStr('SEQUENCE')
                          +' and OBJECT_NAME='+QuotedStr('SEQ_CADSNGPC_ESTINI'));
         query_inv.Open;
         if query_inv.Fields[0].AsInteger>0 then
            begin
            FreeAndNil(query_inv);
            break;
            end
         else
            fCriarSequencia('SEQ_CADSNGPC_ESTINI',1);
         end;
      end;
   end;
end;

procedure TFrm_Farma_SNGPC_Inventario.Qr_InvBeforeDelete(
  DataSet: TDataSet);
var
query_inv: tQuery;
begin
query_inv:=tQuery.Create(nil);
query_inv.DatabaseName:='SG_ASSOC';
While true do
   begin
   query_inv.Close;
   query_inv.SQL.Clear;
   query_inv.SQL.Add('insert into OLD_CADSNGPC_ESTINI ('
                 +' EI_CODEMP '
                 +',EI_DATA '
                 +',EI_CODPRO '
                 +',EI_QTD '
                 +',EI_LOTE '
                 +',EI_CODNOV '
                 +',EI_CODUSR '
                 +',EI_DATHOR '
                 +',EI_TIPEVE '
                 +') values ('
                 +' :EI_CODEMP '
                 +',:EI_DATA '
                 +',:EI_CODPRO '
                 +',:EI_QTD '
                 +',:EI_LOTE '
                 +',SEQ_CADSNGPC_ESTINI.NextVal '
                 +',:EI_CODUSR '
                 +',SYSDATE '
                 +',8 '
                 +')');

   query_inv.ParamByName('EI_CODEMP').Value:=Qr_InvEI_CODEMP.AsInteger;
   query_inv.ParamByName('EI_DATA').Value  :=Qr_InvEI_DATA.AsDateTime;
   query_inv.ParamByName('EI_CODPRO').Value:=Qr_InvEI_CODPRO.AsFloat;
   query_inv.ParamByName('EI_QTD').Value   :=Qr_InvEI_QTD.AsFloat;
   query_inv.ParamByName('EI_LOTE').Value  :=Qr_InvEI_LOTE.AsString;
   query_inv.ParamByName('EI_CODUSR').Value:=codusr;
   try
      query_inv.ExecSQL;
      fdm1StartCommit;
      freeandnil(query_inv);
      break;
   except
      query_inv.Close;
      query_inv.SQL.Clear;
      query_inv.SQL.Add('SELECT count(*) FROM USER_OBJECTS '
                       +' where OBJECT_TYPE='+QuotedStr('SEQUENCE')
                       +' and OBJECT_NAME='+QuotedStr('SEQ_CADSNGPC_ESTINI'));
      query_inv.Open;
      if query_inv.Fields[0].AsInteger>0 then
         begin
         FreeAndNil(query_inv);
         break;
         end
      else
         fCriarSequencia('SEQ_CADSNGPC_ESTINI',1);
      end;
   end;

end;

procedure TFrm_Farma_SNGPC_Inventario.bbExcluirClick(Sender: TObject);
var
Query_Temp: TQuery;
mChave_Nova: Real;
begin
if fsonumero(CB_DATA_ESTINI.Text)=0 then
   exit;


Query_Temp:=TQuery.create(nil);
Query_temp.DatabaseName:='SG_ASSOC';
Query_Temp.SQL.Clear;
Query_Temp.SQL.Add('Select count(*) from CADSNGPC_ESTINI '
                  +' where EI_DATA=:DATA ');
Query_Temp.ParamByName('DATA').Value:=StrToDate(CB_DATA_ESTINI.Text);
Query_Temp.Open;
if query_temp.Fields[0].AsInteger=0 then
   begin
   FreeAndNil(Query_Temp);
   exit;
   end;
if Application.MessageBox(pchar('Quer Realmente Excluir o Inventario Inicial de '+CB_DATA_ESTINI.text+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mryes then
   begin
   FreeAndNil(Query_Temp);
   exit;
   end;
mChave_Nova:=fBuscarSequencia('SEQ_CADSNGPC_ESTINI');



query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('insert into OLD_CADSNGPC_ESTINI ('
              +' EI_CODEMP '
              +',EI_DATA '
              +',EI_CODPRO '
              +',EI_QTD '
              +',EI_LOTE '
              +',EI_CODNOV '
              +',EI_CODUSR '
              +',EI_DATHOR '
              +',EI_TIPEVE '
              +') select '
              +' EI_CODEMP '
              +',EI_DATA '
              +',EI_CODPRO '
              +',EI_QTD '
              +',EI_LOTE '
              +','+FloatToStr(mChave_Nova)
              +','+IntToStr(codusr)
              +',SYSDATE '
              +',8 '
              +' from CADSNGPC_ESTINI '
              +' where EI_CODEMP=:CODEMP '
              +' and EI_DATA=:DATA ');
query_temp.ParambyName('CODEMP').Value:=codemp;
query_temp.ParambyName('DATA').Value  :=StrToDate(CB_DATA_ESTINI.Text);
try
   query_temp.execsql;
   fdm1startcommit;
except
   end;
query_temp:=TQuery.create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.SQL.Clear;
query_temp.SQL.Add('Delete from CADSNGPC_ESTINI '
                  +' where EI_DATA=:DATA '
                  +' and EI_CODEMP=:CODEMP ');
query_temp.ParambyName('CODEMP').Value:=codemp;
query_temp.ParambyName('DATA').Value  :=StrToDate(CB_DATA_ESTINI.Text);
try
   query_temp.execsql;
   fdm1startcommit;
except
   end;
Qr_Inv.close;
FreeandNIl(query_temp);
fLerInventario(CB_TPPESQ.ItemIndex);
FAtualizaComboInventario('');

end;

procedure TFrm_Farma_SNGPC_Inventario.RLReport_inventarioBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
    mQtdReg:=0;

end;

procedure TFrm_Farma_SNGPC_Inventario.RLBand_detBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
    mQtdReg:=mQtdReg+1;

end;

procedure TFrm_Farma_SNGPC_Inventario.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlrod_qtdreg.Caption:='Foram Impressos '+IntToStr(mQtdReg)+' produtos.';

end;

procedure TFrm_Farma_SNGPC_Inventario.bbImprimirClick(Sender: TObject);
begin
try
   StrToDate(CB_DATA_ESTINI.text);
except
   MessageDlg('Favor Selecionar um Inventário Válido!',mtWarning,[mbOk],0);
   exit;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR','FCODEMP(+)','PDCODEMP','FCODFOR','PDCODFOR');
la_instrucao:=la_instrucao+' and ';
finnerjoin(1,'CADPRO','EI_CODEMP','PDCODEMP','EI_CODPRO','PDCODPRO');

Qr_Inv_Impres.Close;
Qr_Inv_Impres.sql.clear;
Qr_Inv_Impres.SQL.Add(' select PDUND_INSUMO,PDUND_FARMACOTECNICA,PDCLASSE_TERAPEUTICA,FCGC AS CNPJ,  '
                     +' case when PDNIVEL=8 then 2 else 1 end AS TIPO_MED_INS, '
                     +' PDCODPRO AS CODPRO,EI_LOTE as LOTE,PDNOME,PDUND,PDREGMS,nvl( EI_QTD,0) AS QTDINV FROM '
                     +' CADSNGPC_ESTINI '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' EI_CODEMP=0'+IntToStr(codemp));
Qr_Inv_Impres.SQL.Add(' and EI_DATA=:DATA');
Qr_Inv_Impres.ParamByName('DATA').Value:=StrToDate(CB_DATA_ESTINI.Text);
Qr_Inv_Impres.SQL.Add(' order by PDNOME,PDCODPRO ');

try
   Qr_Inv_Impres.Open;
except
   Qr_Inv_Impres.SQL.SaveToFile('c:\sqlINV.txt');
   end;

RLCab_RazEmp.Caption   :=DM1.Tb_EmpRAZAO_CAB.AsString;
RLCab_DathorEmi.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
rlcab_titulo.Caption  :='Inventario de Estoque em '+CB_DATA_ESTINI.Text+'.';


RLReport_inventario.PreviewModal;


end;

procedure TFrm_Farma_SNGPC_Inventario.DBGrid_inventKeyPress(
  Sender: TObject; var Key: Char);
begin
if (key in ['0'..'9']) and (DBGrid_invent.SelectedField=Qr_InvEI_CODPRO) and
   (Qr_Inv.State in [dsBrowse]) then
  begin
  if Qr_InvEI_CODPRO.IsNull then
    Qr_Inv.Append;
  end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
  and (DBGrid_invent.SelectedField=Qr_InvEI_CODPRO) then
  begin
  if not (Qr_Inv.State in [dsEdit,dsInsert]) then
    begin
    if Qr_InvEI_CODPRO.IsNull then
      Qr_Inv.Append
    else
      Qr_Inv.Edit;
    end;
  Qr_InvEI_CODPRO.AsString:=fChamaPesqPro(0,'_venda',key);
  key:=#0;
  if (Qr_InvEI_CODPRO.AsString)<>'' then
    begin
    keybd_event(VK_RETURN,0,0,0);
    end;
  end;
end;

end.
