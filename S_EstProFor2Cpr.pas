unit S_EstProFor2Cpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, S_SelEmp,
  Dialogs, ComCtrls, StdCtrls, CheckLst, Buttons, DB, DBTables,func,lerarq, S_Impres
  ,s_lerarq_geral, Spin;

type
  TFrm_EstProFor2Cpr = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label1: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label15: TLabel;
    CLBEstoque: TCheckListBox;
    Label6: TLabel;
    CB_QDEC_QTD: TComboBox;
    Label14: TLabel;
    CLBStatus: TCheckListBox;
    Label12: TLabel;
    MARCA: TEdit;
    lbx_marca: TListBox;
    OMITIR_MAR: TCheckBox;
    Label8: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label9: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_ProFor: TQuery;
    CB_AVANCPAG: TCheckBox;
    Qr_ProForPDCODPRO: TFloatField;
    Qr_ProForPDNOME: TStringField;
    Qr_ProForPDUND: TStringField;
    Qr_ProForPDSALDO: TFloatField;
    Qr_ProForFRAZAO: TStringField;
    Qr_ProForCODFOR: TFloatField;
    Qr_ProForFEMAIL: TStringField;
    Qr_ProForFCGC: TStringField;
    Qr_ProForFFONE: TStringField;
    Qr_ProForFFAX: TStringField;
    Qr_ProForFCONT01: TStringField;
    Qr_ProForFFONEC01: TStringField;
    Qr_ProForFCIDADE: TStringField;
    Qr_ProForFUF: TStringField;
    Qr_ProForCGC: TStringField;
    Qr_ProForDTULTCPR: TDateTimeField;
    Qr_ProForQTDULTCPR: TFloatField;
    Qr_ProForPCOULTCPR: TFloatField;
    Qr_ProForDTPENULTCPR: TDateTimeField;
    Qr_ProForQTDPENULTCPR: TFloatField;
    Qr_ProForPCOPENULTCPR: TFloatField;
    Qr_ProForITEM: TFloatField;
    tsMaster: TTabSheet;
    Label2: TLabel;
    edt_qtdcompras: TSpinEdit;
    procedure CODFORExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure MARCAExit(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_marcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure CLBStatusClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_estprofor2cpr: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_EstProFor2Cpr: TFrm_EstProFor2Cpr;
  mCasasProFor: String='0';
implementation

uses S_DM1, S_GPro,S_Ram,S_For, func_excecoes;

{$R *.dfm}

procedure TFrm_EstProFor2Cpr.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      CODfor.SetFocus;
      end;
   end;

end;

procedure TFrm_EstProFor2Cpr.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;

end;

procedure TFrm_EstProFor2Cpr.MARCAExit(Sender: TObject);
begin
if Trim(MARCA.Text)='' then
   MARCA.Text:=''
else
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   MARCA.Text:=fRetAspas(MARCA.Text);
   DM1.Query2.SQL.Add('Select PDMARCA from CADPRO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PDMARCA like '+chr(39)+MARCA.Text+'%'+chr(39));
   DM1.Query2.Open;
   if DM1.Query2.IsEmpty then
      begin
      fmensagem('Marca nao Encontrada!',0,['0'],0);
      MARCA.SetFocus;
      end
   else
      begin
      lbx_marca.Items.Add(DM1.Query2.Fields[0].AsString);

      MARCA.text := '';
      MARCA.SetFocus;
      end;
   end;

end;

procedure TFrm_EstProFor2Cpr.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;


end;

procedure TFrm_EstProFor2Cpr.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   begin
   exit;
   end;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   begin
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   end
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;


end;

procedure TFrm_EstProFor2Cpr.CODRAMKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;


end;

procedure TFrm_EstProFor2Cpr.CODGRUKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;


end;

procedure TFrm_EstProFor2Cpr.CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'frm_medtpro',key);
   if valfloat(codpro.text)<>0 then
      lbx_codpro.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODPRO.AsFloat)
                                    +' - '+DM1.Tb_ProPDNOME.asstring);
   codpro.text := '';
   codpro.SetFocus;
   key:=#0;
   end;

end;

procedure TFrm_EstProFor2Cpr.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.AsFloat)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
   CODFOR.text := '';
   key:=#0;
   end;


end;

procedure TFrm_EstProFor2Cpr.lbx_codramKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_EstProFor2Cpr.lbx_codgruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_EstProFor2Cpr.lbx_marcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_marca.ItemIndex>=0 then
      lbx_marca.Items.Delete(lbx_marca.ItemIndex);

end;

procedure TFrm_EstProFor2Cpr.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_EstProFor2Cpr.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_EstProFor2Cpr.bbImprimirClick(Sender: TObject);
var
mforant: Real;
begin
bbImprimir.Enabled:=false;
if ValInt(CB_QDEC_QTD.Text)<1 then
   mCasasProFor:='0'
else
   mCasasProFor:='0.'+insere('0','0',valint(CB_QDEC_QTD.Text));

la_Empresas :='';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');

la_Empresas:=fEmpresas_Selecionadas('CADPF2','PF2CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_ProFor.Close;
Qr_ProFor.SQL.clear;
Qr_ProFor.SQL.add('select PDCODPRO,PDNOME,PDUND,PDSALDO,FRAZAO,CODFOR, '
                 +'FEMAIL,FCGC,FFONE,FFAX,FCONT01,FFONEC01,FCIDADE,FUF '
                 +',CGC,max(ITEM) as ITEM,MAX(DTULTCPR)  as DTULTCPR '
                 +',max(QTDULTCPR) as QTDULTCPR,max(PCOULTCPR) as PCOULTCPR '
                 +',max(DTPENULTCPR) AS DTPENULTCPR,max(QTDPENULTCPR) AS QTDPENULTCPR '
                 +',max(PCOPENULTCPR) AS PCOPENULTCPR from '
                 +' (SELECT * FROM ( Select PDCODPRO,PDNOME,PDUND,PDSALDO,FRAZAO '
                 +' ,PF1CODFOR  as CODFOR, FEMAIL,FCGC,FFONE,FFAX,FCONT01,FFONEC01,FCIDADE,FUF '
                 +',FCGC AS CGC  ,ROW_NUMBER() OVER (PARTITION BY PF1CODFOR,PDCODPRO  ORDER BY PDNOME,PF1CODFOR,PDCODPRO ASC,PF1DATAENT DESC ) AS ITEM '
                 +',PF1DATAENT AS DTULTCPR ,PF2QTDP AS QTDULTCPR ,PF2PU AS PCOULTCPR '
                 +' ,null AS DTPENULTCPR ,0 AS QTDPENULTCPR ,0 AS PCOPENULTCPR '
                 +'  from CADPF1'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' PF1STATUS<>9 ');
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' THEN
   Qr_ProFor.SQL.add(' and PF1CODFOR '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then Qr_ProFor.sql.Add(' and PDCODPRO '+mcinst2);
mcinst2:=fItensListBox(1,lbx_marca,OMITIR_MAR);
if trim(mcinst2)<>'' then Qr_ProFor.sql.Add(' and PDMARCA '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_gru);
if trim(mcinst2)<>'' then Qr_ProFor.sql.Add(' and PDCODGRU '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codram,OMITIR_ram);
if trim(mcinst2)<>'' then Qr_ProFor.sql.Add(' and PDCODRAM '+mcinst2);
mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
if trim(mcinst2)<>'' then
   Qr_ProFor.SQL.Add(' and  '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst2)<>'' then
   Qr_ProFor.SQL.Add(' and PDSTATUS  '+mcinst2);



Qr_ProFor.SQL.add(' ORDER BY PDNOME,PF1CODFOR,PDCODPRO ASC,PF1DATAENT DESC '
                 +') WHERE ITEM=1 '
                 +' union all'
                 +' SELECT * FROM ( '
                 +' Select PDCODPRO,PDNOME,PDUND,PDSALDO,FRAZAO '
                 +',PF1CODFOR  as CODFOR, '
                 +'FEMAIL,FCGC,FFONE,FFAX,FCONT01,FFONEC01,FCIDADE,FUF '
                 +',FCGC AS CGC '
                 +',ROW_NUMBER() OVER (PARTITION BY PF1CODFOR,PDCODPRO ORDER BY PDNOME,PF1CODFOR,PDCODPRO ASC,PF1DATAENT DESC ) AS ITEM '
                 +',null AS DTULTCPR ,0 AS QTDULTCPR ,0 AS PCOULTCPR ,PF1DATAENT AS DTPENULTCPR '
                 +',PF2QTDP AS QTDPENULTCPR,PF2PU  AS PCOPENULTCPR  '
                 +'  from CADPF1'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' PF1STATUS<>9 ');
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' THEN
   Qr_ProFor.SQL.add(' and PF1CODFOR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then Qr_ProFor.sql.Add(' and PDCODPRO '+mcinst2);
mcinst2:=fItensListBox(1,lbx_marca,OMITIR_MAR);
if trim(mcinst2)<>'' then Qr_ProFor.sql.Add(' and PDMARCA '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_gru);
if trim(mcinst2)<>'' then Qr_ProFor.sql.Add(' and PDCODGRU '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codram,OMITIR_ram);
if trim(mcinst2)<>'' then Qr_ProFor.sql.Add(' and PDCODRAM '+mcinst2);
mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
if trim(mcinst2)<>'' then
   Qr_ProFor.SQL.Add(' and  '+mcinst2);


mcinst2:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst2)<>'' then
   Qr_ProFor.SQL.Add(' and PDSTATUS  '+mcinst2);

Qr_ProFor.SQL.add(' ORDER BY PDNOME,PF1CODFOR,PDCODPRO ASC,PF1DATAENT DESC '
                 +') WHERE ITEM=2 '
                 +') group by PDNOME ,PDCODPRO,PDUND,PDSALDO,FRAZAO '
                 +' ,CODFOR,FEMAIL,FCGC,FFONE,FFAX,FCONT01,FFONEC01,FCIDADE,FUF '
                 +',CGC ');
Qr_ProFor.SQL.add(' order by  FRAZAO,CODFOR,PDNOME ,PDCODPRO,PDUND ');




try
   Qr_ProFor.Open;
except
   Qr_ProFor.sql.SaveToFile(mpastatemp +'sql.txt');
   end;

Qr_ProFor.sql.SaveToFile(mpastatemp +'sql.txt');

if Qr_ProFor.IsEmpty then
   begin
   fmensagem('Não ha registro a ser impresso!',0,['0'],0);
   bbImprimir.Enabled:=true;
   exit;
   end;
testeform := TFrm_EstProFor2Cpr(FindGlobalComponent('form_impres_estprofor2cpr'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_estprofor2cpr);

form_impres_estprofor2cpr.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_estprofor2cpr.mpag:=0;
form_impres_estprofor2cpr.mlin:=0;
mforant:=-1;
While not Qr_ProFor.Eof do
   begin
   if form_impres_estprofor2cpr.mlin=0 then
      begin
      form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.fImprimirCabecalho(136,'RELATORIO DE PRODUTOS POR FORNECEDOR COM AS 2 ULTIMAS COMPRAS.');
      mforant:=-1;
      end;
   if mforant<>Qr_ProForCODFOR.AsFloat then
      begin
      form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
      form_impres_estprofor2cpr.RDprint1.ImpF(form_impres_estprofor2cpr.mlin,01,insere2('-','-',136),mreduz);
      form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
      form_impres_estprofor2cpr.RDprint1.ImpF(form_impres_estprofor2cpr.mlin,01,insere2(Qr_ProForFRAZAO.AsString,' ',40)
                                      +insere2(' ',' ',08)
                                      +'Contato: '+insere2(Qr_ProForFCONT01.AsString,' ',38)
                                      +'Cidade: '+Qr_ProForFCIDADE.AsString+'-'+Qr_ProForFUF.AsString
                                       ,mreduz);
      form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
      form_impres_estprofor2cpr.RDprint1.ImpF(form_impres_estprofor2cpr.mlin,01,insere2('CNPJ: '+FormatFloat(pDFCNPJ, fSonumero(Qr_ProForFCGC.AsString)),' ',40)
                                      +insere2(' ',' ',08)
                                      +' e-mail: '+insere2(Qr_ProForFEMAIL.AsString,' ',38)
                                      +'  Fone: '+Qr_ProForFFONE.AsString+'/'+Qr_ProForFFAX.AsString
                                       ,mreduz);
      form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
      form_impres_estprofor2cpr.RDprint1.ImpF(form_impres_estprofor2cpr.mlin,01,'---------------------------------------------------------------+----------+----------+-------------+----------+----------+-------------+',mreduz);
      form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
      form_impres_estprofor2cpr.RDprint1.ImpF(form_impres_estprofor2cpr.mlin,01,'                                                               |      Dados da Ultima Compra       |      Data da Penultima Compra     |',mreduz);
      form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
      form_impres_estprofor2cpr.RDprint1.ImpF(form_impres_estprofor2cpr.mlin,01,'Produto                                         Und    Estoque |  Data    |Quantidade|Pco. Unitario|   Data   |Quantidade|Pco. Unitario|',mreduz);
      mforant:=Qr_ProForCODFOR.AsFloat;
      end;
   form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
   form_impres_estprofor2cpr.RDprint1.impf(form_impres_estprofor2cpr.mlin,01,insere(Qr_ProForPDCODPRO.AsString,' ',06)+' '
                                   +insere2(Qr_ProForPDNOME.AsString,' ',40)+' '
                                   +insere2(Qr_ProForPDUND.AsString,' ',03)+' '
                                   +insere(formatFloat(mCasasProFor, Qr_ProForPDSALDO.AsFloat),' ',10)+' '
                                   +'|'+insere(Qr_ProFordtultcpr.AsString,' ',10)+'|'
                                   +insere(Qr_ProForqtdultcpr.AsString,' ',10)+'|'
                                   +insere(Qr_ProForpcoultcpr.AsString,' ',13)+'|'
                                   +insere(Qr_ProForDTPENULTCPR.AsString,' ',10)+'|'
                                   +insere(Qr_ProForQTDPENULTCPR.AsString,' ',10)+'|'
                                   +insere(Qr_ProForPCOPENULTCPR.AsString,' ',13)+'|',mreduz);
   Qr_ProFor.Next;
   if Qr_ProFor.eof then
      begin
      form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
      form_impres_estprofor2cpr.RDprint1.impf(form_impres_estprofor2cpr.mlin,01,'FIM.-----------------------------------------------------------+----------+----------+-------------+----------+----------+-------------+',mreduz);
      if form_impres_estprofor2cpr.RDprint1.Setup then form_impres_estprofor2cpr.RDprint1.Fechar;
      form_impres_estprofor2cpr.free;
      form_impres_estprofor2cpr:=nil;
      end
   else if form_impres_estprofor2cpr.mlin>58 then
      begin
      form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
      form_impres_estprofor2cpr.RDprint1.impf(form_impres_estprofor2cpr.mlin,01,'Continua...----------------------------------------------------+----------+----------+-------------+----------+----------+-------------+',mreduz);
      form_impres_estprofor2cpr.RDprint1.Novapagina;
      form_impres_estprofor2cpr.mlin:=0;
      end
   else if Qr_ProForCODFOR.AsFloat<>mforant then
      begin
      if CB_AVANCPAG.Checked then
         begin
         form_impres_estprofor2cpr.mlin:=form_impres_estprofor2cpr.mlin+1;
         form_impres_estprofor2cpr.RDprint1.impf(form_impres_estprofor2cpr.mlin,01,'Continua...----------------------------------------------------+----------+----------+-------------+----------+----------+-------------+',mreduz);
         form_impres_estprofor2cpr.RDprint1.Novapagina;
         form_impres_estprofor2cpr.mlin:=0;
         end;
      end;
   end;

{
1234567890123456789012345678901234567980        Contato: 123456789012345679801234567890        Cidade: 123456789012345678901234567890-GO
CNPJ.: 02+728+662/0001-50                       e-mail.:                                       Fone.: 1234567890123456/1234567890123456
---------------------------------------------------------------+----------+----------+-------------+----------+----------+-------------+
                                                               |      Dados da Ultima Compra       |      Data da Penultima Compra     |
Produto                                         Und    Estoque |  Data    |Quantidade|Pco. Unitario|   Data   |Quantidade|Pco. Unitario|
123456 1234567890123456789012345678901234567890 123 1234567890 |10/09/2007|1234567890|1234567890123|10/09/2007|1234567890|1234567890123|

1234567890123456789012345678901234567980        Contato: 123456789012345679801234567890        Cidade: 123456789012345678901234567890-GO
CNPJ.: 02+728+662/0001-50                       e-mail.:                                       Fone.: 1234567890123456/1234567890123456
---------------------------------------------------------------+----------+----------+-------------+----------+----------+-------------+
}
bbImprimir.Enabled:=true;

end;

procedure TFrm_EstProFor2Cpr.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_EstProFor2Cpr.CLBEstoqueClick(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);

end;

procedure TFrm_EstProFor2Cpr.CLBStatusClick(Sender: TObject);
begin
CLBStatus:=Valida_CheckList(CLBStatus);

end;

procedure TFrm_EstProFor2Cpr.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_EstProFor2Cpr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_EstProFor2Cpr.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.
