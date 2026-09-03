unit s_compras_orc_impxml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, xmldom, XMLIntf, msxmldom,
  XMLDoc, FMTBcd, DB, Provider, DBClient, SqlExpr, Grids, DBGrids, Mask, DBCtrls,
  DBTables,s_lerarq_geral, ToolEdit;

type
  Tfrm_compras_orc_impxml = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    edt_nomarq: TEdit;
    opd1: TOpenDialog;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    bbBuscar: TBitBtn;
    PageControl1: TPageControl;
    tsDadosPed: TTabSheet;
    tsXML: TTabSheet;
    bbLer: TBitBtn;
    tsItensPed: TTabSheet;
    Edit3: TEdit;
    edt_cnpj: TEdit;
    edt_razsoc: TEdit;
    Edit1: TEdit;
    edt_codfor: TEdit;
    Edit2: TEdit;
    Edit19: TEdit;
    Edit22: TEdit;
    Edit20: TEdit;
    edt_valseg: TEdit;
    edt_tarban: TEdit;
    edt_descItens: TEdit;
    edt_TotProdServ: TEdit;
    Edit33: TEdit;
    edt_outdesp: TEdit;
    edt_totipi: TEdit;
    Edit26: TEdit;
    Edit28: TEdit;
    edt_percfrete: TEdit;
    edt_valfre: TEdit;
    edt_vlricmsst: TEdit;
    edt_vlricms: TEdit;
    edt_vlrPIS: TEdit;
    edt_vlrCOFINS: TEdit;
    edt_totliq: TEdit;
    Edit41: TEdit;
    Edit11: TEdit;
    Edit9: TEdit;
    Edit40: TEdit;
    Edit39: TEdit;
    edt_bcicmsst: TEdit;
    edt_bcicms: TEdit;
    edt_bcPIS: TEdit;
    edt_bcCOFINS: TEdit;
    Edit8: TEdit;
    Edit7: TEdit;
    Edit36: TEdit;
    Edit24: TEdit;
    Edit5: TEdit;
    edt_ie: TEdit;
    Edit6: TEdit;
    edt_cidade: TEdit;
    Edit10: TEdit;
    edt_uf: TEdit;
    Src_Pfor02_orc: TDataSource;
    GroupBox4: TGroupBox;
    GroupBox3: TGroupBox;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    StaticText2: TStaticText;
    DBEdit2: TDBEdit;
    StaticText3: TStaticText;
    DBEdit3: TDBEdit;
    StaticText4: TStaticText;
    DBEdit4: TDBEdit;
    StaticText5: TStaticText;
    DBEdit5: TDBEdit;
    StaticText6: TStaticText;
    DBEdit6: TDBEdit;
    StaticText7: TStaticText;
    DBEdit7: TDBEdit;
    GroupBox5: TGroupBox;
    DBGrid2: TDBGrid;
    src_vcto: TDataSource;
    RichEdit1: TRichEdit;
    bbVerSemRel: TBitBtn;
    Edit4: TEdit;
    edt_fone: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    edt_fantasia: TEdit;
    Edit14: TEdit;
    edt_logradouro: TEdit;
    Edit15: TEdit;
    edt_nro: TEdit;
    Edit16: TEdit;
    edt_cpl: TEdit;
    Edit17: TEdit;
    edt_bairro: TEdit;
    Edit18: TEdit;
    edt_cep: TEdit;
    Edit21: TEdit;
    edt_inscmun: TEdit;
    Edit23: TEdit;
    edt_cnae: TEdit;
    CB_CRT: TComboBox;
    bbCadFor: TBitBtn;
    Panel2: TPanel;
    bbInserir: TBitBtn;
    bbSairSemGravar: TBitBtn;
    lbl_semrel: TLabel;
    DBEdit8: TDBEdit;
    tb_vcto: TQuery;
    tb_vctoPF1VCODEMP: TFloatField;
    tb_vctoPF1VCHAVE: TFloatField;
    tb_vctoPF1VLOTSEQ: TFloatField;
    tb_vctoPF1VDATAV: TDateTimeField;
    tb_vctoPF1VVALOR: TFloatField;
    tb_vctoPF1VCODIGO: TFloatField;
    tb_vctoPF1VPRAZO: TFloatField;
    tb_vctoPF1VCODFP: TFloatField;
    tb_vctoPF1VNOMFP: TStringField;
    tb_vctoPF1VQTDPARC: TFloatField;
    tb_vctoPF1VBAIXA: TStringField;
    tb_vctoPF1VDESCF: TFloatField;
    tb_vctoPF1VDTDESCF: TDateTimeField;
    Tb_Pfor02_Orc: TQuery;
    Tb_Pfor02_OrcPF2ITEM: TFloatField;
    Tb_Pfor02_OrcPF2QTDP: TFloatField;
    Tb_Pfor02_OrcPF2DESC_PERC01: TFloatField;
    Tb_Pfor02_OrcPF2DESC_PERC02: TFloatField;
    Tb_Pfor02_OrcPF2DESC_PERC03: TFloatField;
    Tb_Pfor02_OrcPF2PU: TFloatField;
    Tb_Pfor02_OrcPF2SIT: TStringField;
    Tb_Pfor02_OrcPF2CSOSN: TStringField;
    Tb_Pfor02_OrcPF2CFO: TFloatField;
    Tb_Pfor02_OrcPF2DESC_COMPL: TMemoField;
    Tb_Pfor02_OrcVALOR_TOTAL: TFloatField;
    Tb_Pfor02_OrcPF2CSOSN_ORI: TFloatField;
    Tb_Pfor02_OrcPF2ICMS_PRED: TFloatField;
    Tb_Pfor02_OrcPF2MODBCST: TFloatField;
    Tb_Pfor02_OrcPF2ST_IVA: TFloatField;
    Tb_Pfor02_OrcPF2ST_PERCRED: TFloatField;
    Tb_Pfor02_OrcPF2ST_ICMSCRED: TFloatField;
    Tb_Pfor02_OrcPF2ST_ICMSDEB: TFloatField;
    Tb_Pfor02_OrcPF2PRECO_MAXCONS: TFloatField;
    Tb_Pfor02_OrcPF2IPI_PERC: TFloatField;
    Tb_Pfor02_OrcPF2ICMS_PERC: TFloatField;
    Tb_Pfor02_OrcPF2COFINS_PERC: TFloatField;
    Tb_Pfor02_OrcPF2PIS_PERC: TFloatField;
    Tb_Pfor02_OrcPF2ICMSSN_PERC: TFloatField;
    Tb_Pfor02_OrcPF2IPI_CST: TStringField;
    Tb_Pfor02_OrcPF2PIS_CST: TStringField;
    Tb_Pfor02_OrcPF2COFINS_CST: TStringField;
    Tb_Pfor02_OrcPF2IPI_VALOR: TFloatField;
    Tb_Pfor02_OrcPF2ST_BASE: TFloatField;
    Tb_Pfor02_OrcPF2ST_ICMS: TFloatField;
    Tb_Pfor02_OrcPF2ICMS_BASE: TFloatField;
    Tb_Pfor02_OrcPF2ICMS_VALOR: TFloatField;
    Tb_Pfor02_OrcPF2ICMS_RED_VLR: TFloatField;
    Tb_Pfor02_OrcPF2DESC_CABEC: TFloatField;
    Tb_Pfor02_OrcPF2DESC_TOTDES: TFloatField;
    Tb_Pfor02_OrcPF2PIS_VALOR: TFloatField;
    Tb_Pfor02_OrcPF2TOTLIQ: TFloatField;
    Tb_Pfor02_OrcPF2ICMSSN_VALOR: TFloatField;
    Tb_Pfor02_OrcPF2COFINS_VALOR: TFloatField;
    Tb_Pfor02_OrcPF2DESC_VALOR: TFloatField;
    Tb_Pfor02_OrcNOMPRO_FOR: TStringField;
    Tb_Pfor02_OrcUNDPRO_FOR: TStringField;
    Tb_Pfor02_OrcNOMPRO_INT: TStringField;
    Tb_Pfor02_OrcUNDPRO_INT: TStringField;
    Tb_Pfor02_OrcPF2CODBAR: TFloatField;
    Tb_Pfor02_OrcPF2CODPRO_INT: TFloatField;
    Tb_Pfor02_OrcPF2QTDPED_INT: TFloatField;
    Tb_Pfor02_Orcfator_conv: TFloatField;
    Tb_Pfor02_Orcpcouni_int: TFloatField;
    Tb_Pfor02_Orcdesc_conv: TStringField;
    Tb_Pfor02_OrcPF2PU_INT: TFloatField;
    U_Pfor02_Orc: TUpdateSQL;
    u_vcto: TUpdateSQL;
    tsOcorrencias: TTabSheet;
    Memo_ocorrencias: TMemo;
    bbCadastrar: TBitBtn;
    Tb_Pfor02_OrcCODNCM: TStringField;
    Tb_PF2_Lotes: TQuery;
    Tb_PF2_LotesPF2L_ITEM: TFloatField;
    Tb_PF2_LotesPF2L_LOTE: TStringField;
    Tb_PF2_LotesPF2L_DTFAB: TDateTimeField;
    Tb_PF2_LotesPF2L_DTVCTO: TDateTimeField;
    Tb_PF2_LotesPF2L_QTD: TFloatField;
    Src_PF2_Lotes: TDataSource;
    U_Pf2_Lotes: TUpdateSQL;
    bbCadTodosProd: TBitBtn;
    DBGrid_prod: TDBGrid;
    tsDadosNF: TTabSheet;
    Edit25: TEdit;
    Edit27: TEdit;
    RGFRETEPC: TComboBox;
    edt_nfe_chave: TMaskEdit;
    Edit37: TEdit;
    edt_numnf: TEdit;
    Edit35: TEdit;
    edt_serie: TEdit;
    Edit42: TEdit;
    edt_datanf: TDateEdit;
    Edit38: TEdit;
    CB_MODELONF: TComboBox;
    Edit29: TEdit;
    edt_tra_cnpjtra: TEdit;
    edt_nomtra: TEdit;
    tb_vctoNUMDUP: TStringField;
    Tb_PF2_LotesPF2L_QTDFOR: TFloatField;
    Tb_Pfor02_OrcPF2CODPRO: TStringField;
    gb_soma: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    st_totprod: TStaticText;
    st_totdes: TStaticText;
    Tb_Pfor02_OrcPF2IPIVUNID: TFloatField;
    Tb_Pfor02_OrcPF2IPIQTDUNID: TFloatField;
    Tb_Pfor02_OrcPF2PISQTDUNID: TFloatField;
    Tb_Pfor02_OrcPF2PISVUNID: TFloatField;
    Tb_Pfor02_OrcPF2COFINSQTDUNID: TFloatField;
    Tb_Pfor02_OrcPF2COFINSVUNID: TFloatField;
    edt_chaveacesso: TMaskEdit;
    Edit31: TEdit;
    edt_tra_inscest: TEdit;
    edt_tra_codtra: TEdit;
    Edit32: TEdit;
    edt_tra_ender: TEdit;
    Edit34: TEdit;
    edt_tra_cidade: TEdit;
    Edit43: TEdit;
    edt_tra_uf: TEdit;
    GroupBox6: TGroupBox;
    Edit30: TEdit;
    edt_chave_ant: TEdit;
    sbn_ok: TSpeedButton;
    Tb_Pfor02_OrcPF2FRERAT: TFloatField;
    Tb_Pfor02_OrcPF2IPI_BASE: TFloatField;
    Tb_Pfor02_OrcPDMARCA: TStringField;
    Tb_Pfor02_OrcPDSTATUS: TFloatField;
    StaticText8: TStaticText;
    DBEdit9: TDBEdit;
    CB_NAOCODBAR: TCheckBox;
    DBGrid_lotes: TDBGrid;
    Tb_Pfor02_OrcPF2CEST: TStringField;
    Tb_Pfor02_OrcPF2VICMSDESON: TFloatField;
    Tb_Pfor02_OrcPF2IPI_PRED: TFloatField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure bbLerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbBuscarClick(Sender: TObject);
    procedure bbVerSemRelClick(Sender: TObject);
    procedure bbCadForClick(Sender: TObject);
    procedure bbInserirClick(Sender: TObject);
    procedure bbSairSemGravarClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Tb_Pfor02_OrcCalcFields(DataSet: TDataSet);
    procedure bbCadastrarClick(Sender: TObject);
    procedure Src_Pfor02_orcDataChange(Sender: TObject; Field: TField);
    procedure bbCadTodosProdClick(Sender: TObject);
    procedure Src_PF2_LotesDataChange(Sender: TObject; Field: TField);
    procedure DBGrid_prodDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Tb_PF2_LotesBeforePost(DataSet: TDataSet);
    procedure Tb_Pfor02_OrcAfterEdit(DataSet: TDataSet);
    procedure Tb_Pfor02_OrcBeforePost(DataSet: TDataSet);
    procedure GroupBox3Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure edt_chave_antExit(Sender: TObject);
    procedure sbn_okClick(Sender: TObject);
  private
    { Private declarations }


    Function fLerXML(pNomeArq: String ): Boolean;
    function fLerCadPFor02(pTipo: Integer): Boolean;
    function fLerCadPFor_Vcto(pTipo: Integer): Boolean;
    function fLerCadPFor_Lotes(pTipo: Integer): Boolean;

    function LimparCampos(pTipo: Integer): Boolean;
    function fProcurarRelacionamentos(ptipo: Integer): Boolean;

    function fIncluirProduto(ptipo: Integer): Boolean;


    function fProcuraCodigoInterno: Boolean;


    function fSubstituirProduto: Boolean;

    function fLocalizaTra: Boolean;

    function fCadastrarTransp: Boolean;

    function fTestarChaveNFE: Boolean;

    function fAjustarChaveNFE:Boolean;

  public
    { Public declarations }
    mCarregandoped02: Boolean;
    mDisplayFormatPU: String;
    vXMLDoc: TXMLDocument;
    mIncluirPedido: Boolean;
    mcasaspu_ped: Integer;

    mcodpro_ant: string;
    und_ant: string;
    mNomPro_Ant: String;
    mQtd_Ant: Real;

  end;

var
  frm_compras_orc_impxml: Tfrm_compras_orc_impxml;


implementation

uses func, S_DM1, LerArq, S_compras_ProdSemRel
  , S_Ocorrencias,s_for, func_excecoes, S_DM4, S_Download_XML_NFE;

{$R *.dfm}

procedure Tfrm_compras_orc_impxml.SpeedButton1Click(Sender: TObject);
begin
if opd1.Execute then
   begin
   edt_nomarq.Text:=opd1.FileName;
   bbLerClick(self);
   end;
end;

procedure Tfrm_compras_orc_impxml.bbBuscarClick(Sender: TObject);
begin

Application.CreateForm(TFrm_Download_XML_NFE,Frm_Download_XML_NFE);
Frm_Download_XML_NFE.edt_nfe_chave.Text:=edt_chaveacesso.Text;
//Edit30.Text:=InttoStr(length(fdeixanum(Frm_Download_XML_NFE.edt_nfe_chave.Text)));
if length(fdeixanum(Frm_Download_XML_NFE.edt_nfe_chave.Text))=44 then
   Frm_Download_XML_NFE.mAcionarAutomaticamente:=true;

Frm_Download_XML_NFE.ShowModal;
edt_nomarq.Text:=Frm_Download_XML_NFE.mNomeArqXML_Salvo;

FreeAndNil(Frm_Download_XML_NFE);

end;

procedure Tfrm_compras_orc_impxml.bbCadForClick(Sender: TObject);
var
form_for: TFrm_For;
begin
if Form_for=nil then
   Application.CreateForm(TFrm_for, Form_for);

form_for.for_ori:='compras_orc_impxml';
form_for.PC1.ActivePage:=form_for.tsCad;
form_for.mtipo:=1;
form_for.INCLUIRClick(self);
DM1.Tb_ForFRAZAO.AsString :=copy(edt_razsoc.Text,1,60);
DM1.Tb_ForFCGC.Value      :=fdeixanum(edt_cnpj.Text);
form_for.edt_cnpj.Text     :=fdeixanum(edt_cnpj.Text);
DM1.Tb_ForFIE.Value       :=edt_ie.Text;
DM1.Tb_ForFFONE.Value     :=edt_fone.Text;
DM1.Tb_ForFDENOM.Value    :=copy(edt_fantasia.Text,1,40);
DM1.Tb_ForFCEP.Value      :=edt_cep.Text;
DM1.Tb_ForFNLOG.Value     :=edt_logradouro.Text;
DM1.Tb_ForFNUM.Value      :=edt_nro.Text;
DM1.Tb_ForFCOMPL.Value    :=edt_cpl.Text;
DM1.Tb_ForFBAIRRO.Value   :=edt_bairro.Text;
DM1.Tb_ForFCIDADE.Value   :=edt_cidade.Text;
DM1.Tb_ForFUF.Value       :=edt_UF.Text;
DM1.Tb_ForFIM.Value       :=edt_inscmun.Text;

if flcadloc(0,0,edt_cidade.Text) then
   DM1.Tb_ForFCODLOC.Value      :=DM1.Tb_LocLCODLOC.AsFloat;
if flcadloc(0,0,edt_bairro.Text) then
   DM1.Tb_ForFCODBAI.Value      :=DM1.Tb_BaiBCODBAI.AsFloat;

DM1.Tb_ForFDATHOR_INC.AsDateTime:=Now;
form_for.ShowModal;
FreeAndNil(form_for);
if  flcadfor(3,0,fdeixanum(edt_cnpj.Text)) then
    begin
    edt_codfor.Text:=DM1.Tb_ForFCODFOR.AsString;
    bbCadFor.Enabled:=false;
    fProcurarRelacionamentos(0);

    end
else
    bbCadFor.Enabled:=true;



end;

procedure Tfrm_compras_orc_impxml.bbInserirClick(Sender: TObject);
begin
if (not tb_pfor02_orc.Active) or (tb_pfor02_orc.RecordCount=0) then
   begin
   mIncluirPedido:=false;
   close;
   exit;
   end;
fProcurarRelacionamentos(0);


Application.CreateForm(TFrm_Ocorrencias,Frm_Ocorrencias);
if valfloat(edt_codfor.Text)=0 then
   begin
   Frm_Ocorrencias.adicionaItemListView('Falta o Código do Fornecedor!');
   Frm_Ocorrencias.ListView1.Items[Frm_Ocorrencias.mPosicaoItem].ImageIndex:=3;
   Frm_Ocorrencias.mErros:=true;
   end;
tb_pfor02_orc.First;
while not tb_pfor02_orc.Eof do
   begin
   if tb_pfor02_orcPF2CODPRO_INT.Asfloat=0 then
      begin
      Frm_Ocorrencias.adicionaItemListView('O Produto '+tb_pfor02_orcNOMPRO_FOR.AsString+' - '+tb_pfor02_orcPF2CODPRO.AsString
                                          +' Não Possui Relacionamento!');
      Frm_Ocorrencias.ListView1.Items[Frm_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Frm_Ocorrencias.mErros:=true;
      end;

   if Tb_Pfor02_OrcPDSTATUS.Asfloat=9 then
      begin
      Frm_Ocorrencias.adicionaItemListView('O Produto '+tb_pfor02_orcNOMPRO_FOR.AsString+' - '+tb_pfor02_orcPF2CODPRO.AsString
                                          +' Esta Inativo!');
      Frm_Ocorrencias.ListView1.Items[Frm_Ocorrencias.mPosicaoItem].ImageIndex:=3;
      Frm_Ocorrencias.mErros:=true;
      end;


   tb_pfor02_orc.Next;
   end;
if (fsonumero(edt_tra_cnpjtra.Text)>0) and (fSonumero(edt_tra_codtra.text)=0) then
   fCadastrarTransp;

if Frm_Ocorrencias.mErros then
   begin
   Frm_Ocorrencias.ShowModal;
   FreeAndNil(Frm_Ocorrencias);
   end
else
   begin
   FreeAndNil(Frm_Ocorrencias);
   mIncluirPedido:=true;
   close;
   end;
end;

procedure Tfrm_compras_orc_impxml.bbLerClick(Sender: TObject);
begin
if FileExists(edt_nomarq.Text) then
  begin
  RichEdit1.Lines.Clear;
  if fLerXML(edt_nomarq.Text) then
    RichEdit1.Lines.LoadFromFile(edt_nomarq.Text);
  if fSonumero(edt_cnpj.Text)<>0 then
    begin
    if flcadfor(3,0,fdeixanum(edt_cnpj.Text)) then
      begin
      edt_codfor.Text:=DM1.Tb_ForFCODFOR.AsString;
      bbCadFor.Enabled:=false;
      fProcurarRelacionamentos(0);
      end
    else
      bbCadFor.Enabled:=true;
    end;
  Tb_Pfor02_Orc.First;  
  end;

end;



procedure Tfrm_compras_orc_impxml.bbSairSemGravarClick(Sender: TObject);
begin
mIncluirPedido:=false;
close;

end;

procedure Tfrm_compras_orc_impxml.bbVerSemRelClick(Sender: TObject);
begin
if valfloat(edt_codfor.Text)=0 then
   begin
   MessageDlg('Fornecedor não Localizado. Favor Cadastra-lo!',mtWarning,[mbOk],0);
   exit;
   end;
Application.CreateForm(TFrm_compras_ProdSemRel,Frm_compras_ProdSemRel);
Frm_compras_ProdSemRel.cds_prodSemRel.CreateDataSet;
Frm_compras_ProdSemRel.cds_prodSemRel.Open;

tb_pfor02_orc.First;
while not tb_pfor02_orc.Eof do
   begin
   if tb_pfor02_orcPF2CODPRO_INT.Asfloat<>0 then
      begin
      tb_pfor02_orc.Next;
      continue;
      end;
   Frm_compras_ProdSemRel.cds_prodSemRel.Append;
   Frm_compras_ProdSemRel.cds_prodSemRelPSR_ITEM.Value      :=tb_pfor02_orcPF2ITEM.AsInteger;
   Frm_compras_ProdSemRel.cds_prodSemRelPSR_UND_FOR.Value   :=tb_pfor02_orcUNDPRO_FOR.AsString;
   Frm_compras_ProdSemRel.cds_prodSemRelPSR_NOMPRO_FOR.Value:=tb_pfor02_orcNOMPRO_FOR.AsString;
   Frm_compras_ProdSemRel.cds_prodSemRelPSR_QTD_FOR.Value   :=tb_pfor02_orcPF2QTDP.AsFloat;
   Frm_compras_ProdSemRel.cds_prodSemRelPSR_CODPRO_FOR.Value:=tb_pfor02_orcPF2CODPRO.AsString;
   Frm_compras_ProdSemRel.cds_prodSemRelPSR_VLRTOT_FOR.Value:=Arredonda(( tb_pfor02_orcPF2QTDP.AsFloat*tb_pfor02_orcPF2PU.AsFloat),2);
   Frm_compras_ProdSemRel.cds_prodSemRelPSR_CODFOR.Value    :=Valfloat(edt_codfor.Text);
   Frm_compras_ProdSemRel.cds_prodSemRelPSR_MARCA.AsString  :=Tb_Pfor02_OrcPDMARCA.AsString;
   Frm_compras_ProdSemRel.cds_prodSemRelPSR_STATUS.Value    :=Tb_Pfor02_OrcPDSTATUS.AsInteger;


   Frm_compras_ProdSemRel.cds_prodSemRel.Post;
   tb_pfor02_orc.Next;
   end;
Frm_compras_ProdSemRel.ShowModal;
FreeAndNil(Frm_compras_ProdSemRel);
fProcurarRelacionamentos(0);

end;


procedure Tfrm_compras_orc_impxml.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (key=113)  then
   begin
   if Valfloat(edt_codfor.Text)=0 then
      begin
      MessageDlg('Falta Código do Fornecedor!',mtWarning,[mbOk],0);
      exit;
      end;
   if not (tb_pfor02_orc.State in [dsEdit,dsInsert]) then
      begin
      tb_pfor02_orc.Edit;
      end;
   tb_pfor02_orcPF2CODPRO_INT.AsString:=fChamaPro(0,'_compras_orc_impxml','');
   end;

end;

procedure Tfrm_compras_orc_impxml.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') or
   (key in ['0'..'9']) or (key<>#8) then
   begin
   if Valfloat(edt_codfor.Text)=0 then
      begin
      MessageDlg('Falta Código do Fornecedor!',mtWarning,[mbOk],0);
      exit;
      end;
   end;



end;

function tFrm_Compras_Orc_ImpXML.fLerCadPFor_Vcto(pTipo: Integer): Boolean;
begin
result:=true;
Tb_Vcto.Close;
Tb_Vcto.SQL.Clear;
Tb_Vcto.SQL.Add('SELECT PF1VCODEMP,PF1VCHAVE,PF1VLOTSEQ, '
               +' PF1VDATAV  ,PF1VVALOR,PF1VCODIGO ,0 AS PF1VPRAZO '
               +',0 AS PF1VCODFP,'+QuotedStr('DINHEIRO ')+' AS PF1VNOMFP,0 AS PF1VQTDPARC,'
               +QuotedStr('N')+' AS PF1VBAIXA ,PF1VDESCF,PF1VDTDESCF '
               +',RPAD('+QuotedStr(' ')+',10) AS NUMDUP '
               +' FROM CADPF1V '
               +' where PF1VCODEMP=-9999');
try
   Tb_Vcto.Open;
except
   if fVerificaRedeAtiva(true) then
      ex_erroSql_Novo(Tb_Vcto,271,'frm_venda_pre','paf_cadpf01_parc_orc');
   end;


end;



function tFrm_Compras_Orc_ImpXML.fLerCadPFor_Lotes(pTipo: Integer): Boolean;
begin
result:=true;
Tb_PF2_Lotes.Close;
Tb_PF2_Lotes.SQL.Clear;
Tb_PF2_Lotes.SQL.Add('Select PF2L_ITEM,PF2L_LOTE,PF2L_DTFAB '
                    +'       ,PF2L_DTVCTO,PF2L_QTD      '
                    +'  ,PF2L_QTD as PF2L_QTDFOR from CADPF2_LOTES_ORC  '
                    +'  where (PF2L_CODEMP=-9999 ) ');
try
   Tb_PF2_Lotes.open;
except
   ex_erroSql_Novo(Tb_PF2_Lotes,3268,'compras_orc','CADPF2_LOTES');
   result:=false;
   exit;
   end;
result:=true;
end;


function tFrm_Compras_Orc_ImpXML.fLerCadPFor02(pTipo: Integer): Boolean;
begin
result:=true;
Tb_Pfor02_orc.Close;
Tb_Pfor02_orc.SQL.Clear;
Tb_Pfor02_orc.SQL.Add('select PF2ITEM,PF2QTDP '
                     +',PF2DESC01 AS PF2DESC_PERC01'
                     +',PF2DESC02 AS PF2DESC_PERC02'
                     +',TO_CHAR(PF2CODPRO) AS PF2CODPRO,'
                     +' PF2FRERAT,'
                     +'PF2DESC03 AS PF2DESC_PERC03'
                     +',PF2PU ,PF2SIT, PF2CSOSN'
                     +',PF2CFO, Pf2DESC_COMPL, PF2QTDP*PF2PU AS VALOR_TOTAL'
                     +',PF2CSOSN_ORI, PF2PREDICMNOR AS PF2ICMS_PRED,'
                     +' PF2MODBCST, PF2ST_IVA,  PF2ST_PERCRED, PF2ST_ICMSCRED, PF2ST_ICMSDEB,'
                     +' PF2PMC AS PF2PRECO_MAXCONS , PF2ALIPI AS PF2IPI_PERC'
                     +',PF2IPI_PRED '

                     +', PF2ALIQ AS PF2ICMS_PERC, PF2COFINS_PERC'
                     +',PF2IPI AS PF2IPI_BASE '

                     +',PF2IPI AS PF2PIS_PERC,0 AS PF2ICMSSN_PERC'
                     +',PF2CST_IPI AS PF2IPI_CST,  PF2CST_PIS AS PF2PIS_CST, PF2CST_COFINS AS PF2COFINS_CST,PF2IPI AS PF2IPI_VALOR'
                     +',PF2BASER AS PF2ST_BASE,PF2ST_ICMS,PF2BASEN AS  PF2ICMS_BASE'
                     +',PF2ICMSN AS PF2ICMS_VALOR'
                     +',PF2ICMS_RED_VLR,PF2DESCRAT AS PF2DESC_CABEC,'
                     +'PF2TOTDES AS PF2DESC_TOTDES, PF2PIS_VALOR,PF2TOTLIQ'
                     +',PF2ICMSSN_VALOR,PF2COFINS_VALOR,PF2VALDES AS  PF2DESC_VALOR,'
                     +'PDNOME AS NOMPRO_FOR,PDNOME AS UNDPRO_FOR,PDNOME AS NOMPRO_INT'
                     +',PDUND AS UNDPRO_INT,PF2CODPRO AS PF2CODBAR'
                     +',PF2CODPRO AS PF2CODPRO_INT ,PF2QTDP AS PF2QTDPED_INT'
                     +',PF2PU AS PF2PU_INT, PDCODNCM AS CODNCM'
                     +',PF2CEST '
                     +'                     ,PF2IPIQTDUNID '
                     +' ,PF2IPIVUNID '
                     +',PF2PISQTDUNID '
                     +',PF2PISVUNID '
                     +',PF2COFINSQTDUNID '
                     +',PF2COFINSVUNID '
                     +',PDMARCA,PDSTATUS'
                     +',PF2VICMSDESON '

                     +'  FROM CADPF2,CADPRO  '
                     +' where PDCODPRO =PF2CODPRO '
                     +'         and PDCODEMP=PF2CODEMP'
                     +' and PF2CODEMP=-9999');

try
   Tb_Pfor02_orc.Open;
except
   if fVerificaRedeAtiva(true) then
      ex_erroSql_Novo(Tb_Pfor02_orc,208,'frm_venda_pre','paf_cadpf2_orc');
   end;


end;



Function Tfrm_compras_orc_impxml.fLerXML(pNomeArq: String ): Boolean;
var 
    NodeMaster,NodePai,NodeSec,NodeTmp,NodeImposto,NodeLote,NodeTmp_Imp,NodeTmp_ImpCateg: IXMLNode;
//    nome, codigo: WideString;
//    nome, codigo: String;
mDados_Lid: String;
mItem: Integer;
x: Integer;
Query_Cons: TQuery;
mQtdFaltaLote: Real;
mDataXML: String;
mModeloNF: String;
x_combo: Integer;
x_imp: Integer;
mFator_item: Real;
x_ipi: Integer;
mTotDesXML:Real;
mTotProdXML:Real;
//mDadosExcel: tStrings;
 streStream : TStringStream;
 mTextoXML: TStrings;
x_node: Integer;
mvaloripi_calc: real;
begin
Memo_ocorrencias.Lines.Clear;

tb_pfor02_orc.Close;
tb_vcto.Close;
Tb_PF2_Lotes.Close;

if not FileExists(pNomeArq) then
   begin
   result:=false;
   exit;
   end;
if lowercase(copy(pNomeArq,length(pNomeArq)-2,3))<>'xml' then
   begin
   MessageDlg('Não é um arquivo do tipo XML!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;


  // Cria a variável baseada no TXMLDocument
vXMLDoc := TXMLDocument.Create(self);




// Le conteúdo do arquivo XML informado
try
   vXMLDoc.LoadFromFile(pNomeArq);
except

    mTextoXML:=TStringList.Create;
    mTextoXML.LoadFromFile(pnomearq);
    mTextoXML.Text:=fRetiraSujeiras(mTextoXML.Text);


    streStream := TStringStream.Create(AnsiToAscii( mTextoXML.Text));
   try
      vXMLDoc.LoadFromStream(streStream);
   except

      vXMLDoc.LoadFromStream(streStream);

      end;
   freeandnil(streStream);
   end;
{
Memo1.Lines.Clear;
NodePai:=vXMLDoc.DocumentElement.childNodes.First;

repeat
     NodeSec := NodePai.ChildNodes.First;
     for x_node:=0 to NodeSec.ChildNodes.Count-1 do
        begin
        Memo1.Lines.Add(NodeSec.ChildNodes[x_node].NodeName);
        NodeTmp:=NodeSec.ChildNodes[x_node];
        NodeMaster:=NodeTmp.ChildNodes.FindNode('infNFe');
        if NodeMaster<>nil then
           begin
           memo1.Lines.Add('achou');
           break;
           end;
        end;
    if NodeMaster<>nil then
       break;
     NodePai := NodePai.NextSibling;
  until NodePai = nil;
exit;
// Poderia ser uma URL como abaixo:
//vXMLDoc.FileName := 'http://www.caiooliveira.com.br/?feed=rss2';
//vXMLDoc.Active := True;

//vXMLDoc.Active:=True;

NodePai:=vXMLDoc.DocumentElement.childNodes.First;

for x_node:=0 to NodePai. Collection. Collection.Count-1 do
   begin
   memo1.Lines.Add(NodePai.Collection.ChildNodes[x_node].NodeName);
   if uppercase(NodePai.Collection.ChildNodes[x_node].NodeName)='INFNFE' then
      begin
      NodeMaster:=NodePai.Collection.ChildNodes.FindNode('infNFe');
      end;
   end;

}

NodeMaster := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infNFe');
if NodeMaster=nil then
   begin
   NodeMaster:=vXMLDoc.DocumentElement.childNodes.First;
   NodePai:=vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('emit');



   end
else
   NodePai:=NodeMaster.ChildNodes.FindNode('emit');

//exit;

mCarregandoped02:=true;


if NodePai=nil then
   begin
   MessageDlg('Não é um XML de Nota Fiscal Válido!',mtWarning,[mbOk],0);
   result:=false;
   FreeAndNil(vXMLDoc);
   exit;
   end;

try
   edt_nfe_chave.Text:=string(NodeMaster.GetAttributeNS('Id',''));
except on e:Exception do
     begin
     Memo_ocorrencias.Lines.Add('Arquivo: '+pNomeArq+' Não é um XML Válido para importação! '+e.Message);
     result:=false;
     FreeAndNil(vXMLDoc);
     exit;
     end;
  end;
//mDadosExcel:=tStringlist.create;
edt_nfe_chave.Text:=copy(edt_nfe_chave.text,4,length(edt_nfe_chave.Text)-3);


edt_nfe_chave.Text :=Copy(edt_nfe_chave.Text,1,4)+'.'
                       +Copy(edt_nfe_chave.Text,5,4)+'.'
                       +Copy(edt_nfe_chave.Text,9,4)+'.'
                       +Copy(edt_nfe_chave.Text,13,4)+'.'
                       +Copy(edt_nfe_chave.Text,17,4)+'.'
                       +Copy(edt_nfe_chave.Text,21,4)+'.'
                       +Copy(edt_nfe_chave.Text,25,4)+'.'
                       +Copy(edt_nfe_chave.Text,29,4)+'.'
                       +Copy(edt_nfe_chave.Text,33,4)+'.'
                       +Copy(edt_nfe_chave.Text,37,4)+'.'
                       +Copy(edt_nfe_chave.Text,41,4);



// Esse nó vai ser usado no LOOP



edt_numnf.Text:=NodeMaster.ChildNodes['ide'].ChildNodes['nNF'].Text;
edt_serie.Text:=NodeMaster.ChildNodes['ide'].ChildNodes['serie'].Text;
if fsonumero(NodeMaster.ChildNodes['ide'].ChildNodes['dEmi'].Text)<>0 then
   begin
   try
      edt_datanf.Date:=StrToDateTime( copy(NodeMaster.ChildNodes['ide'].ChildNodes['dEmi'].Text,9,2)+'/'
                   +copy(NodeMaster.ChildNodes['ide'].ChildNodes['dEmi'].Text,6,2)+'/'
                   +copy(NodeMaster.ChildNodes['ide'].ChildNodes['dEmi'].Text,1,4));
   except
      end;
   end
else
   begin
   if fsonumero(NodeMaster.ChildNodes['ide'].ChildNodes['dhEmi'].Text)<>0 then
      begin
      try
         edt_datanf.Date:=StrToDateTime( copy(NodeMaster.ChildNodes['ide'].ChildNodes['dhEmi'].Text,9,2)+'/'
                      +copy(NodeMaster.ChildNodes['ide'].ChildNodes['dhEmi'].Text,6,2)+'/'
                      +copy(NodeMaster.ChildNodes['ide'].ChildNodes['dhEmi'].Text,1,4));
      except
         end;
      end;
   end;



//ShowMessage(NodeMaster.ChildNodes['ide'].ChildNodes['mod'].Text);
mModeloNF:=NodeMaster.ChildNodes['ide'].ChildNodes['mod'].Text;
for x_combo:=0 to CB_MODELONF.Items.Count-1 do
   begin
   if valint(copy(CB_MODELONF.Items[x_combo],1,2))=valint(mModeloNF) then
      begin
      CB_MODELONF.ItemIndex:=x_combo;
      break;
      end;
   end;

mModeloNF:=NodeMaster.ChildNodes['transp'].ChildNodes['modFrete'].Text;

for x_combo:=0 to RGFRETEPC.Items.Count-1 do
   begin
   if valint(copy(RGFRETEPC.Items[x_combo],1,1))=valint(mModeloNF) then
      begin
      RGFRETEPC.ItemIndex:=x_combo;
      break;
      end;
   end;



edt_tra_cnpjtra.Text:=MaskCPFCNPJ2(NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['CNPJ'].Text);
edt_nomtra.Text :=NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xNome'].Text;
if (length(edt_nomtra.Text)>1) and (fsonumero(edt_tra_cnpjtra.text)=0) then
    begin
    edt_tra_cnpjtra.Text:=MaskCPFCNPJ2(NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['CPF'].Text);
    end;
edt_tra_inscest.Text:=NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['IE'].Text;
edt_tra_ender.Text  :=NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xEnder'].Text;
edt_tra_cidade.Text :=NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xMun'].Text;
edt_tra_cidade.Text:=fRetAspas( RetiraAcentos( edt_tra_cidade.Text));
edt_tra_uf.Text     :=NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['UF'].Text;
if (length(edt_nomtra.Text)>1) and (fsonumero(edt_tra_codtra.text)=0) then
  fLocalizaTra;



NodeSec := NodePai;
// Posiciona o primeiro elemento encontrado
NodeSec.ChildNodes.First;

edt_cnpj.Text:=FormatFloat(pDFCNPJ, fsonumero(NodeSec.ChildNodes['CNPJ'].Text));
Query_Cons:= TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons.Close;
Query_Cons.SQL.Clear;
Query_Cons.SQL.Add('Select FCODFOR from CADFOR where '
                         +' 1=1 '+ fFiltrosMultiEmpresa('FCODEMP','CADPRO',codemp)
                          +' and FCGC=:CNPJ ');
Query_Cons.ParamByName('CNPJ').AsString:=edt_cnpj.Text;
try
   Query_Cons.Open;
except
   end;
if Query_Cons.IsEmpty then
   begin
   edt_codfor.Text:='';
   bbCadFor.Enabled:=true;
   end
else
   begin
   edt_codfor.Text:=Query_Cons.FieldbyName('CCODCLI').AsString;
   bbCadFor.Enabled:=false;
   end;

edt_fone.Text:=NodeSec.ChildNodes['fone'].Text;
edt_ie.Text:=NodeSec.ChildNodes['IE'].Text;


edt_razsoc.Text:=NodeSec.ChildNodes['xNome'].Text;
edt_fantasia.Text:=NodeSec.ChildNodes['xFant'].Text;

edt_inscmun.Text:=NodeSec.ChildNodes['IM'].Text;
edt_cnae.Text:=NodeSec.ChildNodes['CNAE'].Text;
CB_CRT.ItemIndex:=valint(NodeSec.ChildNodes['CRT'].Text)-1;


///NodePai := NodePai.ChildNodes.FindNode('enderEmit');


//NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('enderEmit');
// Esse nó vai ser usado no LOOP
//NodeSec := NodePai;
NodeSec := NodePai.ChildNodes.FindNode('enderEmit');

if trim(edt_ie.Text)<>'' then
   edt_ie.Text:=Mascara_Inscricao(edt_ie.Text,NodeSec.ChildNodes['UF'].Text);

edt_cidade.Text:=fRetAspas(RetiraAcentos( NodeSec.ChildNodes['xMun'].Text));
edt_uf.Text    :=NodeSec.ChildNodes['UF'].Text;
edt_cep.Text   :=MaskCep(NodeSec.ChildNodes['CEP'].Text);
edt_logradouro.Text:=NodeSec.ChildNodes['xLgr'].Text;
edt_nro.Text:=NodeSec.ChildNodes['nro'].Text;
edt_cpl.Text:=NodeSec.ChildNodes['xCpl'].Text;
edt_bairro.Text:=NodeSec.ChildNodes['xBairro'].Text;


// Aqui eu peço para encontrar a primeira ocorrencia da Tag <det>>
//NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('prod');
{NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('det');
// Esse nó vai ser usado no LOOP
if NodePai=nil then
   begin
   MessageDlg('Não é um XML de Nota Fiscal Válido!',mtWarning,[mbOk],0);
   result:=false;
   FreeAndNil(vXMLDoc);
   exit;
   end;

NodeSec := NodePai;
}
//NodeSec := NodePai.ChildNodes.FindNode('det');
NodeSec := NodeMaster.ChildNodes.FindNode('det');


//NodeSec := vXMLDoc.DocumentElement.ChildNodes.First.ChildNodes.FindNode('prod') ;

// StartItemNode := XMLDoc.DocumentElement.ChildNodes.First.ChildNodes.FindNode('item') ;

// Posiciona o primeiro elemento encontrado
fLerCadPFor02(0);
fLerCadPFor_Lotes(0);

mItem:=0;
NodeSec.ChildNodes.First;

mTotDesXML :=0;
mTotProdXML:=0;
mcasaspu_ped:=8;
repeat
// referencia a tag <prod> dentro de <det>
   NodeTmp  := NodeSec.ChildNodes['prod'];

 // da pra ver que é um XML resumido da NFe (so temos uma tag <prod> para cada <det> então não precisaria da linha abaixo
    // agora se tivéssemos mais de uma seria o caso de posicionar também na primeira ocorrencia.
   NodeTmp.ChildNodes.First;

   mDados_Lid:=trim(NodeTmp.ChildNodes['xProd'].text);

   if mDados_Lid<>'' then
      begin
{
      if fsonumero(NodeTmp.ChildNodes['cProd'].text)<>52329 then
         begin
         NodeSec := NodeSec.NextSibling;
         continue;
         end;
}
      tb_pfor02_orc.Append;
      Tb_Pfor02_OrcPF2SIT.Value:='000';

      // pega os dados que vc quiser dentro da tag <prod>
      mItem:=mItem+1;
      tb_pfor02_orcPF2CODPRO.AsString:=NodeTmp.ChildNodes['cProd'].text;
      try
        Tb_Pfor02_OrcPF2FRERAT.AsFloat:=valfloat(mudapv(NodeTmp.ChildNodes['vFrete'].text));
      except
        Tb_Pfor02_OrcPF2FRERAT.AsFloat:=0;
        end;
      tb_pfor02_orcPF2QTDPED_INT.AsFloat:=valfloat(mudapv(NodeTmp.ChildNodes['qCom'].text));
      tb_pfor02_orcPF2QTDP.AsFloat:=valfloat(mudapv(NodeTmp.ChildNodes['qCom'].text));
      tb_pfor02_orcPF2ITEM.AsInteger:=mItem;
      tb_pfor02_orcPF2DESC_PERC01.AsFloat:=0;
      tb_pfor02_orcPF2DESC_PERC02.AsFloat:=0;
      tb_pfor02_orcPF2DESC_PERC03.AsFloat:=0;
      Tb_Pfor02_OrcCODNCM.AsString:=NodeTmp.ChildNodes['NCM'].text;
      Tb_Pfor02_OrcPF2CEST.AsString:=NodeTmp.ChildNodes['CEST'].text;

      Tb_Pfor02_OrcPF2CFO.AsInteger:=valint(NodeTmp.ChildNodes['CFOP'].text);
      tb_pfor02_orcPF2DESC_CABEC.Value:=0;
      tb_pfor02_orcPF2DESC_TOTDES.Value:= valfloat(mudapv(NodeTmp.ChildNodes['vDesc'].text));
      Tb_Pfor02_OrcPF2DESC_VALOR.AsFloat := 0;

//      tb_pfor02_orcPF2DESC_PERC01.AsFloat := Arredonda((tb_pfor02_orcPF2DESC_TOTDES.Value / tb_pfor02_orcVALOR_TOTAL.AsFloat)*100,2);

      mTotDesXML :=mTotDesXML+valfloat(mudapv(NodeTmp.ChildNodes['vProd'].text));
      mTotProdXML:=mTotProdXML+valfloat(mudapv(NodeTmp.ChildNodes['vDesc'].text));


      tb_pfor02_orcNOMPRO_FOR.AsString     :=NodeTmp.ChildNodes['xProd'].text;
      if NodeTmp.ChildNodes['uCom'].text<>NodeTmp.ChildNodes['uTrib'].text then
         Memo_ocorrencias.Lines.Add('Unidade Comercial ['+NodeTmp.ChildNodes['uCom'].text
                                   +'] Tributavel ['+NodeTmp.ChildNodes['uTrib'].text+']');


//      IF frm_compras_orc_impxml.tb_pfor02_orcPF2CODPRO_INT.AsFloat=7641 THEN
//         ShowMessage('Este e o Codigo ');

      tb_pfor02_orcUNDPRO_FOR.AsString:=NodeTmp.ChildNodes['uCom'].text;
{
      if NumeroDecimais(ValFloat(mudapv(NodeTmp.ChildNodes['vUnCom'].text)))>mCasaspu_ped then
         begin
         mcasaspu_ped:=NumeroDecimais(ValFloat(mudapv(NodeTmp.ChildNodes['vUnCom'].text)));
         mDisplayFormatPU:='#,##0';
         if mcasaspu_ped>0 then
            mDisplayFormatPU:=mDisplayFormatPU+'.'+insere('0','0',mcasaspu_ped+1);
         (tb_pfor02_orc.FieldbyName('PF2PU') AS TFloatField).DisplayFormat:=mDisplayFormatPU;
         (tb_pfor02_orc.FieldbyName('PF2PU_INT') as TFloatField).DisplayFormat:=mDisplayFormatPU;
         end;
}
      tb_pfor02_orcPF2CODBAR.AsString:=fdeixanum(NodeTmp.ChildNodes['cEAN'].text);
      if (length(trim(tb_pfor02_orcPF2CODBAR.AsString))=0) and (length(trim(Tb_Pfor02_OrcPF2CODPRO.AsString))>12) then
          tb_pfor02_orcPF2CODBAR.Value:=fsonumero(Tb_Pfor02_OrcPF2CODPRO.AsString);
//      tb_pfor02_orcPF2DESC_VALOR.Value:=0;

      tb_pfor02_orcVALOR_TOTAL.AsFloat:=valfloat(mudapv(NodeTmp.ChildNodes['vProd'].text));
      tb_pfor02_orcPF2TOTLIQ.AsFloat:=valfloat(mudapv(NodeTmp.ChildNodes['vProd'].text));
      if (tb_pfor02_orcVALOR_TOTAL.AsFloat)=0 then
         begin
         tb_pfor02_orcVALOR_TOTAL.AsFloat  :=Arredonda( (valfloat(mudapv(NodeTmp.ChildNodes['vUnCom'].text))*Tb_Pfor02_OrcPF2QTDP.AsFloat),2);
         tb_pfor02_orcPF2TOTLIQ.AsFloat    :=tb_pfor02_orcVALOR_TOTAL.AsFloat;
         end;

//         <qCom>1.0000</qCom><vUnCom>8.0400000000</vUnCom>
      mFator_item:=1;
      if trim(tb_pfor02_orcPF2CODBAR.AsString)<>'' then
         begin
         tb_pfor02_orcPF2CODPRO_INT.AsFloat:=fAchaCodigoOri(tb_pfor02_orcPF2CODBAR.AsString);
         if length(trim(tb_pfor02_orcPF2CODPRO_INT.AsString))>1 then
            begin
            mFator_item:=pRet_Qtd;
            tb_pfor02_orcPF2QTDPED_INT.AsFloat:=tb_pfor02_orcPF2QTDP.AsFloat*pRet_Qtd;
            tb_pfor02_orcPF2PU_INT.AsFloat:=Arredonda((tb_pfor02_orcVALOR_TOTAL.AsFloat/tb_pfor02_orcPF2QTDPED_INT.AsFloat),mcasaspu_ped);
            end;
         end;
      if (tb_pfor02_orcPF2CODPRO_INT.Asfloat=0) and (fsonumero(edt_codfor.Text)>0) then
         begin
         tb_pfor02_orcPF2CODPRO_INT.AsFloat:=fAchaCodigoProdutonoFornecedor(fsonumero(edt_codfor.Text),Tb_Pfor02_OrcPF2CODPRO.AsString,'');
         if  length(trim(tb_pfor02_orcPF2CODPRO_INT.AsString))>1 then
             begin
             tb_pfor02_orcPF2QTDPED_INT.AsFloat:=tb_pfor02_orcPF2QTDP.AsFloat*pRet_Qtd;
             mFator_item:=pRet_Qtd;
             tb_pfor02_orcPF2PU_INT.AsFloat:=Arredonda((tb_pfor02_orcVALOR_TOTAL.AsFloat/tb_pfor02_orcPF2QTDPED_INT.AsFloat),mcasaspu_ped);
             end;
         end;
      if tb_pfor02_orcPF2CODPRO_INT.Asfloat<>0 then
         begin
         Query_Cons.Close;
         Query_Cons.SQL.clear;
         Query_Cons.SQL.Add('Select PDNOME,PDUND from CADPRO where '
                                +' 1=1 '+ fFiltrosMultiEmpresa('PDCODEMP','CADPRO',codemp)
                                +' and PDCODPRO=:CODPRO ');
         Query_Cons.ParamByName('CODPRO').AsString:=tb_pfor02_orcPF2CODPRO_INT.AsString;
         try
            Query_Cons.Open;
            tb_pfor02_orcNOMPRO_INT.Value:=Query_Cons.FieldByName('PDNOME').AsString;
            tb_pfor02_orcUNDPRO_INT.Value:=Query_Cons.FieldByName('PDUND').AsString;
         except
            end;
         end;
//      tb_pfor02_orcPF2ITEM.Value:=ValInt(NodeTmp.ChildNodes['nItem'].text);
      tb_pfor02_orcPF2QTDP.Value:=ValFloat(mudapv(NodeTmp.ChildNodes['qCom'].text));
      tb_pfor02_orcPF2DESC_VALOR.Value:=ValFloat(mudapv(NodeTmp.ChildNodes['vDesc'].text));
{      tb_pfor02_orcPF2DESC_PERC01.Value:=0;
      tb_pfor02_orcPF2DESC_PERC02.Value:=0;
      tb_pfor02_orcPF2DESC_PERC03.Value:=0;}


      if valfloat(mudapv(NodeTmp.ChildNodes['vUnCom'].text))*ValFloat(mudapv(NodeTmp.ChildNodes['qCom'].text))
         <>ValFloat(mudapv(NodeTmp.ChildNodes['vProd'].text)) then
         Memo_ocorrencias.Lines.Add('Preco Unitario Comercial ['+NodeTmp.ChildNodes['vUnCom'].text
                                   +'] Quantidade ['+NodeTmp.ChildNodes['qCom'].text+'] =['
                                   +NodeTmp.ChildNodes['vProd'].text+']'
                                   +' calculado ['
                                   +FloatToStr(
                                   valfloat(mudapv(NodeTmp.ChildNodes['vUnCom'].text))*ValFloat(mudapv(NodeTmp.ChildNodes['qCom'].text))
                                   )
                                   +']');

      tb_pfor02_orcPF2PU.Value:=ValFloat(mudapv(NodeTmp.ChildNodes['vProd'].text))
                               / tb_pfor02_orcPF2QTDP.Value;
      valfloat(mudapv(NodeTmp.ChildNodes['vUnCom'].text));

      if NodeTmp.ChildNodes['vUnCom'].text<>NodeTmp.ChildNodes['vUnTrib'].text then
         Memo_ocorrencias.Lines.Add('Preco Unitario Comercial ['+NodeTmp.ChildNodes['vUnCom'].text
                                   +'] Tributavel ['+NodeTmp.ChildNodes['vUnTrib'].text+']');


      if NodeTmp.ChildNodes['qCom'].text<>NodeTmp.ChildNodes['qTrib'].text then
         Memo_ocorrencias.Lines.Add('Quantidade Comercial ['+NodeTmp.ChildNodes['qCom'].text
                                   +'] Tributavel ['+NodeTmp.ChildNodes['qTrib'].text+']');

      NodeImposto  := NodeSec.ChildNodes['imposto'];

      if NodeImposto<>nil then
         begin

         for x_imp:=0 to NodeImposto.ChildNodes.Count-1 do
            begin
             if NodeImposto.ChildNodes[x_imp].NodeName ='ICMS'then
                begin
//                NodeTmp_Imp := NodeImposto.ChildNodes['ICMS'];
                NodeTmp_Imp := NodeImposto.ChildNodes[x_imp];
                NodeTmp_Imp.ChildNodes.First;
                if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS00'then
                   begin
                   NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS00'];
                   NodeTmp_ImpCateg.ChildNodes.First;
                   Tb_Pfor02_OrcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                              +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                   tb_pfor02_orcPF2ICMS_BASE.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                   tb_pfor02_orcPF2ICMS_PERC.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                   tb_pfor02_orcPF2ICMS_VALOR.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));
                   end
                else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS10'then
                   begin
                   NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS10'];
                   NodeTmp_ImpCateg.ChildNodes.First;
                   Tb_Pfor02_OrcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                   tb_pfor02_orcPF2ICMS_BASE.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                   tb_pfor02_orcPF2ICMS_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                   tb_pfor02_orcPF2ST_ICMSCRED.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                   tb_pfor02_orcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                   tb_pfor02_orcPF2MODBCST.Value    :=valint(NodeTmp_ImpCateg.ChildNodes['modBCST'].text);
                   tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                   Tb_Pfor02_OrcPF2ST_PERCRED.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                   tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                   tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                   tb_pfor02_orcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));
                   end
                else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS20'then
                   begin
                   NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS20'];
                   NodeTmp_ImpCateg.ChildNodes.First;
                   tb_pfor02_orcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                              +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                   tb_pfor02_orcPF2ICMS_PRED.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBC'].text));
                   tb_pfor02_orcPF2ICMS_BASE.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                   tb_pfor02_orcPF2ICMS_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                   tb_pfor02_orcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));
                   end
                else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS30'then
                   begin
                   NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS30'];
                   NodeTmp_ImpCateg.ChildNodes.First;
                   tb_pfor02_orcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                              +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                   tb_pfor02_orcPF2MODBCST.Value    :=valint(mudapv(NodeTmp_ImpCateg.ChildNodes['modBCST'].text));

                   tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                   Tb_Pfor02_OrcPF2ST_PERCRED.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                   tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                   tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                   tb_pfor02_orcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));
                   end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS40'then
                  begin
                   NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS40'];
                   NodeTmp_ImpCateg.ChildNodes.First;
                   Tb_Pfor02_OrcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                                +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                   Tb_Pfor02_OrcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));
                   Tb_Pfor02_OrcPF2VICMSDESON.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSDeson'].text));

                   end
                else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS50'then
                   begin
                   NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS50'];
                   NodeTmp_ImpCateg.ChildNodes.First;
                   tb_pfor02_orcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                              +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                  tb_pfor02_orcPF2ICMS_PRED.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBC'].text));
                  tb_pfor02_orcPF2ICMS_BASE.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  tb_pfor02_orcPF2ICMS_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));
                  end

                else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS51'then
                   begin
                   NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS51'];
                   NodeTmp_ImpCateg.ChildNodes.First;
                   tb_pfor02_orcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                              +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS60'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS60'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCSTRet'].text));
                  tb_pfor02_orcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSSTRet'].text));

                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS70'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS70'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                  tb_pfor02_orcPF2ICMS_PRED.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBC'].text));
                  tb_pfor02_orcPF2ICMS_BASE.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  tb_pfor02_orcPF2ICMS_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ST_ICMSCRED.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  tb_pfor02_orcPF2MODBCST.Value    :=valint(NodeTmp_ImpCateg.ChildNodes['modBCST'].text);
                  tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                  Tb_Pfor02_OrcPF2ST_PERCRED.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                  tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                  tb_pfor02_orcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));
                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS90' then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS90'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                  tb_pfor02_orcPF2ICMS_BASE.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  tb_pfor02_orcPF2ICMS_PRED.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBC'].text));
                  tb_pfor02_orcPF2ICMS_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ST_ICMSCRED.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  tb_pfor02_orcPF2MODBCST.Value    :=valint(NodeTmp_ImpCateg.ChildNodes['modBCST'].text);
                  tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                  Tb_Pfor02_OrcPF2ST_PERCRED.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                  tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                  tb_pfor02_orcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));
                  end


               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSST' then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSST'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2SIT.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                             +NodeTmp_ImpCateg.ChildNodes['CST'].text;
                  tb_pfor02_orcPF2ICMS_BASE.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  tb_pfor02_orcPF2ICMS_PRED.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBC'].text));
                  tb_pfor02_orcPF2ICMS_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ST_ICMSCRED.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  tb_pfor02_orcPF2MODBCST.Value    :=valint(NodeTmp_ImpCateg.ChildNodes['modBCST'].text);
                  tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                  Tb_Pfor02_OrcPF2ST_PERCRED.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                  tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                  tb_pfor02_orcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));
                  end

               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN101' then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN101'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2CSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  tb_pfor02_orcPF2CSOSN_ORI.Value:=valint(NodeTmp_ImpCateg.ChildNodes['orig'].text);

                  tb_pfor02_orcPF2ICMS_BASE.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  tb_pfor02_orcPF2ICMS_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ST_ICMSCRED.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  tb_pfor02_orcPF2MODBCST.Value    :=valint(mudapv(NodeTmp_ImpCateg.ChildNodes['modBCST'].text));
                  tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                  Tb_Pfor02_OrcPF2ST_PERCRED.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                  tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                  Tb_Pfor02_OrcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));
                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN102'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN102'];
                  NodeTmp_ImpCateg.ChildNodes.First;


                  tb_pfor02_orcPF2CSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  tb_pfor02_orcPF2CSOSN_ORI.Value:=valint(NodeTmp_ImpCateg.ChildNodes['orig'].text);

                  tb_pfor02_orcPF2MODBCST.Value    :=valint(mudapv(NodeTmp_ImpCateg.ChildNodes['modBCST'].text));
                  tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                  Tb_Pfor02_OrcPF2ST_PERCRED.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                  tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                  Tb_Pfor02_OrcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));

                  tb_pfor02_orcPF2ICMSSN_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pCredSN'].text));
                  tb_pfor02_orcPF2ICMSSN_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vCredICMSSN'].text));

                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN201'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN201'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2CSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  tb_pfor02_orcPF2CSOSN_ORI.Value:=valint(NodeTmp_ImpCateg.ChildNodes['orig'].text);
                  tb_pfor02_orcPF2MODBCST.Value    :=valint(NodeTmp_ImpCateg.ChildNodes['modBCST'].text);

                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                  Tb_Pfor02_OrcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));
                  tb_pfor02_orcPF2ICMSSN_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pCredSN'].text));
                  tb_pfor02_orcPF2ICMSSN_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vCredICMSSN'].text));
                  tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                  end
//INICIO
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2CSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  tb_pfor02_orcPF2CSOSN_ORI.Value:=valint(NodeTmp_ImpCateg.ChildNodes['orig'].text);
                  if valint(tb_pfor02_orcPF2CSOSN.Value)<100 then
                     tb_pfor02_orcPF2CSOSN.Value:='900';


                  end
// TERMINO
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN202'then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN202'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2CSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  tb_pfor02_orcPF2CSOSN_ORI.Value:=valint(NodeTmp_ImpCateg.ChildNodes['orig'].text);

                  tb_pfor02_orcPF2MODBCST.Value    :=valint(NodeTmp_ImpCateg.ChildNodes['modBCST'].text);
                  tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                  Tb_Pfor02_OrcPF2ST_PERCRED.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                  tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                  Tb_Pfor02_OrcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));

                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN500' then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN500'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2CSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;

                  tb_pfor02_orcPF2CSOSN_ORI.Value:=valint(NodeTmp_ImpCateg.ChildNodes['orig'].text);

                  tb_pfor02_orcPF2ICMS_BASE.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  tb_pfor02_orcPF2ICMS_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ST_ICMSCRED.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  tb_pfor02_orcPF2MODBCST.Value    :=valint(mudapv(NodeTmp_ImpCateg.ChildNodes['modBCST'].text));
                  tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                  Tb_Pfor02_OrcPF2ST_PERCRED.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                  tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(nodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                  Tb_Pfor02_OrcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));
                  end

               else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN900' then
                  begin
                  NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN900'];
                  NodeTmp_ImpCateg.ChildNodes.First;
                  tb_pfor02_orcPF2CSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                  tb_pfor02_orcPF2CSOSN_ORI.Value:=valint(NodeTmp_ImpCateg.ChildNodes['orig'].text);

                  tb_pfor02_orcPF2ICMS_BASE.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                  tb_pfor02_orcPF2ICMS_PERC.Value  :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ST_ICMSCRED.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                  tb_pfor02_orcPF2ICMS_VALOR.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMS'].text));

                  tb_pfor02_orcPF2MODBCST.Value    :=valint(mudapv(NodeTmp_ImpCateg.ChildNodes['modBCST'].text));
                  tb_pfor02_orcPF2ST_IVA.Value     :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pMVAST'].text));
                  Tb_Pfor02_OrcPF2ST_PERCRED.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pRedBCST'].text));
                  tb_pfor02_orcPF2ST_BASE.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBCST'].text));
                  tb_pfor02_orcPF2ST_ICMSDEB.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMSST'].text));
                  Tb_Pfor02_OrcPF2ST_ICMS.Value    :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vICMSST'].text));
                  end;
               end
            else if NodeImposto.ChildNodes[x_imp].NodeName ='PIS'then
               begin
               NodeTmp_Imp := NodeImposto.ChildNodes[x_imp];
               NodeTmp_Imp.ChildNodes.First;
               if NodeTmp_Imp.ChildNodes[0].NodeName ='PISNT'then
                  Tb_Pfor02_OrcPF2PIS_CST.Value   :=NodeTmp_Imp.ChildNodes['PISNT'].ChildNodes['CST'].text
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='PISAliq'then
                  begin
                  Tb_Pfor02_OrcPF2PIS_CST.Value   :=NodeTmp_Imp.ChildNodes['PISAliq'].ChildNodes['CST'].text;
                  Tb_Pfor02_OrcPF2PIS_PERC.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['PISAliq'].ChildNodes['pPIS'].text));
                  Tb_Pfor02_OrcPF2PIS_VALOR.Value :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['PISAliq'].ChildNodes['vPIS'].text));
                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='PISOutr'then
                  begin
                  Tb_Pfor02_OrcPF2PIS_CST.Value   :=NodeTmp_Imp.ChildNodes['PISOutr'].ChildNodes['CST'].text;
                  Tb_Pfor02_OrcPF2PIS_PERC.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['PISOutr'].ChildNodes['pPIS'].text));
                  Tb_Pfor02_OrcPF2PIS_VALOR.Value :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['PISOutr'].ChildNodes['vPIS'].text));
                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='PISQtde'then
                  begin
                  Tb_Pfor02_OrcPF2PIS_CST.Value   :=NodeTmp_Imp.ChildNodes['PISQtde'].ChildNodes['CST'].text;
                  Tb_Pfor02_OrcPF2PISQTDUNID.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['PISQtde'].ChildNodes['qBCProd'].text));
                  Tb_Pfor02_OrcPF2PISVUNID.Value :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['PISQtde'].ChildNodes['vAliqProd'].text));
                  Tb_Pfor02_OrcPF2PIS_VALOR.Value :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['PISOutr'].ChildNodes['vPIS'].text));
                  end;
               end
            else if NodeImposto.ChildNodes[x_imp].NodeName ='COFINS'then
               begin
               NodeTmp_Imp := NodeImposto.ChildNodes[x_imp];
               NodeTmp_Imp.ChildNodes.First;
               if NodeTmp_Imp.ChildNodes[0].NodeName ='COFINSNT'then
                  Tb_Pfor02_OrcPF2COFINS_CST.Value   :=NodeTmp_Imp.ChildNodes['COFINSNT'].ChildNodes['CST'].text
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='COFINSAliq'then
                  begin
                  Tb_Pfor02_OrcPF2COFINS_CST.Value   :=NodeTmp_Imp.ChildNodes['COFINSAliq'].ChildNodes['CST'].text;
                  Tb_Pfor02_OrcPF2COFINS_PERC.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['COFINSAliq'].ChildNodes['pCOFINS'].text));
                  Tb_Pfor02_OrcPF2COFINS_VALOR.Value :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['COFINSAliq'].ChildNodes['vCOFINS'].text));
                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='COFINSOutr'then
                  begin
                  Tb_Pfor02_OrcPF2COFINS_CST.Value   :=NodeTmp_Imp.ChildNodes['COFINSOutr'].ChildNodes['CST'].text;
                  Tb_Pfor02_OrcPF2COFINS_PERC.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['COFINSOutr'].ChildNodes['pCOFINS'].text));
                  Tb_Pfor02_OrcPF2COFINS_VALOR.Value :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['COFINSOutr'].ChildNodes['vCOFINS'].text));
                  end
               else if NodeTmp_Imp.ChildNodes[0].NodeName ='COFINSQtde'then
                  begin
                  Tb_Pfor02_OrcPF2COFINS_CST.Value   :=NodeTmp_Imp.ChildNodes['PISQtde'].ChildNodes['CST'].text;
                  Tb_Pfor02_OrcPF2COFINSQTDUNID.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['COFINSQtde'].ChildNodes['qBCProd'].text));
                  Tb_Pfor02_OrcPF2COFINSVUNID.Value :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['COFINSQtde'].ChildNodes['vAliqProd'].text));
                  Tb_Pfor02_OrcPF2COFINS_VALOR.Value :=valfloat(mudapv(NodeTmp_Imp.ChildNodes['COFINSOutr'].ChildNodes['vCOFINS'].text));
                  end;
               end
// INICIO



// TERMINO


            else if NodeImposto.ChildNodes[x_imp].NodeName ='IPI'then
               begin
               NodeTmp_Imp := NodeImposto.ChildNodes[x_imp];
               NodeTmp_Imp.ChildNodes.First;
               for x_ipi:=0 to NodeTmp_Imp.ChildNodes.count-1 do
                  begin
                  mcinst:=NodeTmp_Imp.ChildNodes[x_ipi].NodeName;
                  if NodeTmp_Imp.ChildNodes[x_ipi].NodeName ='IPITrib'then
                      begin
                      Tb_Pfor02_OrcPF2IPI_CST.Value   :=NodeTmp_Imp.ChildNodes[x_ipi].ChildNodes['CST'].text;
                      Tb_Pfor02_OrcPF2IPIQTDUNID.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes[x_ipi].ChildNodes['qUnid'].text));
                      Tb_Pfor02_OrcPF2IPIVUNID.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes[x_ipi].ChildNodes['vUnid'].text));
                      Tb_Pfor02_OrcPF2IPI_PERC.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes[x_ipi].ChildNodes['pIPI'].text));
                      Tb_Pfor02_OrcPF2IPI_BASE.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes[x_ipi].ChildNodes['vBC'].text));



                      Tb_Pfor02_OrcPF2IPI_VALOR.Value :=valfloat(mudapv(NodeTmp_Imp.ChildNodes[x_ipi].ChildNodes['vIPI'].text));
                      if (Tb_Pfor02_OrcPF2IPI_VALOR.AsFloat>0) and (Tb_Pfor02_OrcPF2IPIQTDUNID.AsFloat=0)  and (Tb_Pfor02_OrcPF2IPIVUNID.AsFloat=0)
                         and (Tb_Pfor02_OrcPF2IPI_PERC.asfloat=0) then
                         begin
                         Tb_Pfor02_OrcPF2IPIQTDUNID.Value  :=1;
                         Tb_Pfor02_OrcPF2IPIVUNID.Value    :=Tb_Pfor02_OrcPF2IPI_VALOR.AsFloat;
                         Tb_Pfor02_OrcPF2IPI_BASE.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes[x_ipi].ChildNodes['vBC'].text));
                         end;
                      if  (Tb_Pfor02_OrcPF2IPI_BASE.Value>0) and (Tb_Pfor02_OrcPF2IPI_BASE.Value<>Tb_Pfor02_OrcPF2TOTLIQ.Value) then
                         begin
                         Tb_Pfor02_OrcPF2IPIQTDUNID.Value  :=1;
                         Tb_Pfor02_OrcPF2IPIVUNID.Value    :=Tb_Pfor02_OrcPF2IPI_VALOR.AsFloat;
                         Tb_Pfor02_OrcPF2IPI_BASE.Value  :=valfloat(mudapv(NodeTmp_Imp.ChildNodes[x_ipi].ChildNodes['vBC'].text));
                         end;
                      if (Tb_Pfor02_OrcPF2IPI_VALOR.AsFloat>0) and (Tb_Pfor02_OrcPF2IPI_PERC.AsFloat>0)  then
                         begin
                         mvaloripi_calc:=arredonda( (Tb_Pfor02_OrcPF2IPI_BASE.Value*Tb_Pfor02_OrcPF2IPI_PERC.AsFloat/100) ,2);
                         if fDiferenciaEmPercentual(mvaloripi_calc,Tb_Pfor02_OrcPF2IPI_VALOR.AsFloat)>0 then
                            Tb_Pfor02_OrcPF2IPI_PRED.value:=fDiferenciaEmPercentual(mvaloripi_calc,Tb_Pfor02_OrcPF2IPI_VALOR.AsFloat);




                         end;
                      end
                  else if NodeTmp_Imp.ChildNodes[x_ipi].NodeName ='IPINT'then
                      begin
                      Tb_Pfor02_OrcPF2IPI_CST.Value   :=NodeTmp_Imp.ChildNodes[x_ipi].ChildNodes['CST'].text;
                      end;
                  end;
               end;
            end;
         end;
      if Tb_Pfor02_OrcPF2CSOSN_ORI.IsNull then
         Tb_Pfor02_OrcPF2CSOSN_ORI.AsInteger:=0;
      if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2) then
         begin
         if (Tb_Pfor02_OrcPF2CSOSN.isnull )  then
            begin
            if Tb_Pfor02_OrcPF2SIT.Value='000' then
               Tb_Pfor02_OrcPF2CSOSN.Value:='102'
            else if Tb_Pfor02_OrcPF2SIT.Value='060' then
               Tb_Pfor02_OrcPF2CSOSN.Value:='202'
            else if Tb_Pfor02_OrcPF2SIT.Value='040' then
               Tb_Pfor02_OrcPF2CSOSN.Value:='300'
            else
               Tb_Pfor02_OrcPF2CSOSN.Value:='900'
            end
         else
            Tb_Pfor02_OrcPF2CSOSN.Value:='900';
         end
      else
         begin
         if (Tb_Pfor02_OrcPF2SIT.isnull)  then
            begin
            if (Tb_Pfor02_OrcPF2CSOSN.Value='101') or
               (Tb_Pfor02_OrcPF2CSOSN.Value='102') or
               (Tb_Pfor02_OrcPF2CSOSN.Value='103') then
               Tb_Pfor02_OrcPF2SIT.Value:='000'
            else if (Tb_Pfor02_OrcPF2CSOSN.Value='201') or
               (Tb_Pfor02_OrcPF2CSOSN.Value='202') or
               (Tb_Pfor02_OrcPF2CSOSN.Value='203') or
               (Tb_Pfor02_OrcPF2CSOSN.Value='500') then
               Tb_Pfor02_OrcPF2SIT.Value:='060'
            else if (Tb_Pfor02_OrcPF2CSOSN.Value='300') then
               Tb_Pfor02_OrcPF2SIT.Value:='040'
            else
               Tb_Pfor02_OrcPF2SIT.Value:='000';
            end
         else
            Tb_Pfor02_OrcPF2SIT.Value:='000';

         end;

      if Tb_Pfor02_OrcPF2CFO.AsInteger>4999 then
         begin
         Tb_Pfor02_OrcPF2CFO.AsInteger:=fCFOP_Entrada(Tb_Pfor02_OrcPF2CFO.AsInteger);

         end;
     if Log_TipoLote=1 then
        begin
        mQtdFaltaLote:=Tb_Pfor02_OrcPF2QTDP.AsFloat;
// inicio
//        NodeLote  := NodeSec.ChildNodes['med'];
//        NodeMed := NodeTmp.ChildNodes.FindNode('med');
        NodeLote := NodeTmp.ChildNodes.FindNode('rastro');

        if NodeLote=nil then
           begin
           NodeLote := NodeTmp.ChildNodes.FindNode('med');
           end;
        if NodeLote<>nil then
           NodeLote.ChildNodes.First;

        While (NodeLote<>nil) and (mQtdFaltaLote>0) do
           begin
           if valfloat(mudapv(NodeLote.ChildNodes['qLote'].text)) > 0 then
            begin
             Tb_PF2_Lotes.Append;

             Tb_PF2_LotesPF2L_ITEM.value:=mItem;
             Tb_PF2_LotesPF2L_LOTE.value:=NodeLote.ChildNodes['nLote'].text;
//                                          +NodeMed.ChildNodes['nLote'].text
             mDataXML:=NodeLote.ChildNodes['dFab'].text;
               if fsonumero(mDataXML)<>0 then
                begin
                try
                   Tb_PF2_LotesPF2L_DTFAB.value:=StrToDate(copy(mDataXml,09,02)+'/'+copy(mDataXml,06,02)+'/'+copy(mDataXml,01,04));
                except
                     end;
                end;
             mDataXML:=NodeLote.ChildNodes['dVal'].text;
             if fsonumero(mDataXML)<>0 then
                begin
                try
                   Tb_PF2_LotesPF2L_DTVCTO.value:=StrToDate(copy(mDataXml,09,02)+'/'+copy(mDataXml,06,02)+'/'+copy(mDataXml,01,04));
                except
                     end;
                end;
             Tb_PF2_LotesPF2L_QTDFOR.value:=valfloat(mudapv(NodeLote.ChildNodes['qLote'].text));
             Tb_PF2_LotesPF2L_QTD.value   :=Tb_PF2_LotesPF2L_QTDFOR.AsFloat*mFator_item;

             mQtdFaltaLote:=mQtdFaltaLote-Tb_PF2_LotesPF2L_QTDFOR.AsFloat;
             Tb_PF2_Lotes.Post;
             end;
           NodeLote := NodeLote.NextSibling;
           end;
         if mQtdFaltaLote>0 then
           begin
           Tb_PF2_Lotes.Append;
           Tb_PF2_LotesPF2L_ITEM.value   :=mItem;
           Tb_PF2_LotesPF2L_QTD.value   :=mQtdFaltaLote*mFator_item;
           Tb_PF2_LotesPF2L_QTDFOR.value:=mQtdFaltaLote;
           Tb_PF2_Lotes.Post;
           end;
         end;

// termino

      mDados_Lid:=tb_pfor02_orcNOMPRO_FOR.AsString;
//      mDadosExcel.Add(tb_pfor02_orcVALOR_TOTAL.AsString+';'+tb_pfor02_orcPF2QTDPED_INT.Asstring+';'+Tb_Pfor02_OrcPF2ICMS_BASE.Asstring+';'+Tb_Pfor02_OrcPF2ICMS_PRED.Asstring);

      if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) or (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2) then
         begin
         if (Tb_Pfor02_OrcPF2CSOSN.isnull ) and (valint(Tb_Pfor02_OrcPF2CSOSN.AsString)=0)  then
            Tb_Pfor02_OrcPF2CSOSN.value:='900';
         end;
      tb_pfor02_orc.Post;
      end;
   NodeSec := NodeSec.NextSibling;

until
   NodeSec = nil;

st_totprod.Caption:=FloatToStr(mTotProdXML);
st_totdes.Caption:=FloatToStr(mTotDesXML);

NodeSec := NodeMaster.ChildNodes.FindNode('total');

//NodeSec := NodePai.ChildNodes.FindNode('total');
{
NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('total');
if NodePai=nil then
   begin
   MessageDlg('Não é um XML de Nota Fiscal Válido!',mtWarning,[mbOk],0);
   result:=false;
   vXMLDoc.Free;
   exit;
   end;
//NodePai := NodePai.ChildNodes.FindNode('total');


// Esse nó vai ser usado no LOOP
if NodePai=nil then
   begin
   MessageDlg('Não é um XML de Nota Fiscal Válido!',mtWarning,[mbOk],0);
   result:=false;
   vXMLDoc.Free;
   exit;
   end;
}
//NodeSec := NodePai;

// Posiciona o primeiro elemento encontrado
NodeSec.ChildNodes.First;

edt_TotProdServ.Text:=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vProd'].text)));
edt_descItens.Text  :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vDesc'].text)));
edt_valseg.Text     :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vSeg'].text)));
edt_outdesp.Text    :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vOutro'].text)));
edt_totipi.Text     :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vIPI'].text)));
edt_vlrPIS.Text     :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vPIS'].text)));
edt_vlrCOFINS.Text  :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vCOFINS'].text)));
edt_totliq.Text     :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vNF'].text)));

edt_bcicms.Text   :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vBC'].text)));
edt_vlricms.Text  :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vICMS'].text)));
edt_bcicmsst.Text :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vBCST'].text)));
edt_vlricmsst.Text:=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vST'].text)));
edt_valfre.Text   :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vFrete'].text)));
edt_valfre.Text   :=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vFrete'].text)));
edt_descItens.Text:=FormatFloat(mCasas, valfloat(mudaPV(NodeSec.ChildNodes['ICMSTot'].ChildNodes['vDesc'].text)));
//RichTextXML.Lines.Add('Total dos Descontos.........: '+insere(NodeSec.ChildNodes['vDesc'].Text,' ',15));
//RichTextXML.Lines.Add('Total Liquido da Nota Fiscal: '+insere(NodeSec.ChildNodes['vNF'].Text,' ',15));

// vencimentos

fLerCadPFor_Vcto(0);
//NodeSec := NodePai.ChildNodes.FindNode('cobr');

NodeSec := NodeMaster.ChildNodes.FindNode('cobr');
if nodesec<>nil then
   NodeSec := NodeSec.ChildNodes.FindNode('dup');

{
NodeSec := NodeMaster.ChildNodes.FindNode('cobr');
NodeSec := NodeSec.ChildNodes.FindNode('dup');
}

//NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('cobr');
// Esse nó vai ser usado no LOOP
if Nodesec<>nil then
   begin
   mItem:=0;                               
//   NodeSec := NodePai;
   NodeSec.ChildNodes.First;
   repeat
// lindomar agora   
      mDados_Lid:=trim(fdeixanum2(NodeSec.ChildNodes['dVenc'].text));
      if mDados_Lid<>'' then
         begin
         tb_vcto.Append;
      // pega os dados que vc quiser dentro da tag <prod>
         mItem:=mItem+1;
         tb_vctoPF1VCODEMP.AsInteger:=codemp;
         tb_vctoPF1VCHAVE.AsInteger:=0;
         tb_vctoPF1VLOTSEQ.AsInteger:=0;
         tb_vctoPF1VCODFP.AsInteger:=0;
         tb_vctoPF1VNOMFP.AsString:='';
         tb_vctoNUMDUP.AsString:=NodeSec.ChildNodes['nDup'].text;
         mDados_Lid:=fdeixanum2(NodeSec.ChildNodes['dVenc'].text);
         if trim(mDados_Lid)<>'' then
            begin
            try
               tb_vctoPF1VDATAV.AsDateTime:=StrToDateTime(copy(mDados_Lid,1+6,2)+'/'+
                                        copy(mDados_Lid,1+4,2)+'/'+
                                        copy(mDados_Lid,1,4)
                                        );
            except
               end;
            end;
         tb_vctoPF1VVALOR.asFloat:=valfloat(mudapv(NodeSec.ChildNodes['vDup'].text));
         tb_vctoPF1VQTDPARC.AsInteger:=0;
         tb_vctoPF1VBAIXA.AsString:='N';
         tb_vctoPF1VCODIGO.AsInteger:=mItem;
         tb_vctoPF1VPRAZO.AsInteger:=0;
         tb_vctoPF1VDESCF.AsFloat:=0;
         tb_vcto.Post;
         end;
   NodeSec := NodeSec.NextSibling;
until
   NodeSec = nil;
   end;
// termino dos vencimentos


Tb_Pfor02_Orc.First;
//ShowMessage('Pis cst '+Tb_Pfor02_OrcPF2PIS_CST.AsString);
FreeAndNil(Query_Cons);
mCarregandoped02:=false;

//mDadosExcel.savetofile('c:\pedfor.csv');
//freeandnil(mDadosExcel);
result:=true;
end;

procedure Tfrm_compras_orc_impxml.FormCreate(Sender: TObject);
var
x: Integer;
Query_Temp: Tquery;
begin
 mcasaspu_ped:=8;
//edt_nfe_chave.editMask:= pEditMascChave_Acesso;
edt_chaveacesso.editMask:= pEditMascChave_Acesso;

Query_Temp:=Tquery.create(nil);
Query_Temp.DatabaseName:='SG_ASSOC';
Query_Temp.Sql.Clear;
Query_Temp.Sql.Add('Delete from codpfor where pfcodpro=0 ');
try
   Query_Temp.ExecSQL;
   fdm1StartCommit;
except
   end;   

mCarregandoped02:=false;

if Log_TipoLote<>1 then
   DBGrid_lotes.Visible:=false;
for x := 0 to tb_pfor02_orc.Fields.Count-1 do
   begin
   if tb_pfor02_orc.Fields[x].DataType=ftFloat then
      (tb_pfor02_orc.Fields[x] as TFloatField).DisplayFormat:=mCasas
   else if tb_pfor02_orc.Fields[x].DataType=ftDateTime then
      (tb_pfor02_orc.Fields[x] as TDateTimeField).DisplayFormat:=fdt2;
   end;

mDisplayFormatPU:='#,##0';
if mcasaspu_ped>0 then
   mDisplayFormatPU:=mDisplayFormatPU+'.'+insere('0','0',mcasaspu_ped+1);

(tb_pfor02_orc.FieldbyName('PF2PU') AS TFloatField).DisplayFormat:=mDisplayFormatPU;
(tb_pfor02_orc.FieldbyName('PF2PU_INT') as TFloatField).DisplayFormat:=mDisplayFormatPU;


for x := 0 to tb_vcto.Fields.Count-1 do
   begin
   if tb_vcto.Fields[x].DataType=ftFloat then
      (tb_vcto.Fields[x] as TFloatField).DisplayFormat:=mCasas
   else if tb_vcto.Fields[x].DataType=ftDateTime then
      (tb_vcto.Fields[x] as TDateTimeField).DisplayFormat:=fdt2;
   end;
Tb_Pfor02_OrcPF2CFO.DisplayFormat:='#0';
Tb_Pfor02_OrcPF2ITEM.DisplayFormat:='#0';
Tb_Pfor02_OrcPF2CODBAR.DisplayFormat:='';
Tb_Pfor02_OrcPF2CSOSN_ORI.DisplayFormat:='';
Tb_Pfor02_OrcPF2MODBCST.DisplayFormat:='';

tb_pfor02_orcPF2QTDP.DisplayFormat:=mcasqtd;
tb_pfor02_orcPF2QTDPED_INT.DisplayFormat:=mcasqtd;
//tb_pfor02_orcPF2PU.DisplayFormat:=mCasasPU;

//Tb_Pfor02_OrcPF2CODPRO.DisplayFormat:='';
Tb_Pfor02_OrcPF2CODPRO_INT.DisplayFormat:='';
LimparCampos(0);
mIncluirPedido:=false;

end;

function Tfrm_compras_orc_impxml.LimparCampos(pTipo: Integer): Boolean;
begin
edt_nfe_chave.Clear;

edt_tra_codtra.Clear;
edt_tra_inscest.Clear;
edt_tra_ender.Clear;
edt_tra_cnpjtra.Clear;
edt_tra_cidade.Clear;
edt_tra_uf.Clear;





edt_numnf.Clear;
edt_serie.Clear;
edt_datanf.Clear;
//CB_MODELO.Clear;
//RGFRETEPC.Clear;

edt_tra_cnpjtra.Clear;
edt_nomtra.Clear;

edt_cnpj.Clear;
edt_ie.Text         :='';
edt_fone.Clear;
edt_codfor.Clear;
edt_razsoc.Clear;
edt_fantasia.Clear;
edt_cep.Clear;
edt_logradouro.Clear;
edt_nro.Clear;
edt_cpl.Clear;
edt_bairro.Clear;
edt_inscmun.Clear;
edt_cnae.Clear;
edt_cidade.Text     :='';
edt_uf.Text         :='';
CB_CRT.ItemIndex:=-1;

edt_tarban.Clear;
edt_TotProdServ.Text:='';
edt_descItens.Text  :='';
edt_valseg.Text     :='';
edt_outdesp.Text    :='';
edt_totipi.Text     :='';
edt_vlrPIS.Text     :='';
edt_vlrCOFINS.Text  :='';
edt_totliq.Text     :='';
edt_bcicms.Text     :='';
edt_vlricms.Text    :='';
edt_bcicmsst.Text   :='';
edt_vlricmsst.Text  :='';
edt_valfre.Text     :='';
edt_bcPIS.Text      :='';
edt_bcCOFINS.Text   :='';
edt_percfrete.Text  :='';



result:=true;
end;

procedure Tfrm_compras_orc_impxml.Tb_Pfor02_OrcCalcFields(
  DataSet: TDataSet);
begin
if (tb_pfor02_orcVALOR_TOTAL.AsFloat<>0) and
   (tb_pfor02_orcPF2QTDP.AsFloat<>0) and (tb_pfor02_orcPF2QTDPED_INT.AsFloat<>0) then
   begin
   try
      tb_pfor02_orcpcouni_int.Value:=Arredonda( (tb_pfor02_orcVALOR_TOTAL.AsFloat/tb_pfor02_orcPF2QTDPED_INT.AsFloat),mcasaspu_ped);
   except
      end;
   end
else
   tb_pfor02_orcpcouni_int.Value:=0;
if (tb_pfor02_orcpcouni_int.AsFloat>0) and (tb_pfor02_orcPF2CODPRO_INT.AsFloat<>0)
   and (tb_pfor02_orcPF2QTDPED_INT.AsFloat<>0) and  (tb_pfor02_orcPF2QTDP.AsFloat<>0)  then
   begin
   try
   tb_pfor02_orcfator_conv.AsFloat:=tb_pfor02_orcPF2QTDPED_INT.AsFloat/tb_pfor02_orcPF2QTDP.AsFloat;
   tb_pfor02_orcdesc_conv.AsString:='Então 1 '+tb_pfor02_orcUNDPRO_FOR.AsString
                  +' é igual a '+FloatToStr(1*tb_pfor02_orcfator_conv.AsFloat)
                  +' '+tb_pfor02_orcUNDPRO_INT.AsString;
   except
      end;
   end
else
   begin
   tb_pfor02_orcfator_conv.AsFloat:=0;
   tb_pfor02_orcdesc_conv.AsString:='';
   end;



end;

function Tfrm_compras_orc_impxml.fProcuraCodigoInterno: Boolean;
begin
{
if tb_pfor02_orcPF2CODPRO_INT.AsFloat<>0 then
   begin
   result:=true;
   exit;
   end;
}
if not (Tb_Pfor02_Orc.State in [dsEdit,dsInsert]) then
   Tb_Pfor02_Orc.Edit;
tb_pfor02_orcPF2CODPRO_INT.AsFloat:=0;

if fsonumero(edt_codfor.Text)>0 then
  begin
  if not (Tb_Pfor02_Orc.State in [dsEdit,dsInsert]) then
    Tb_Pfor02_Orc.Edit;
  tb_pfor02_orcPF2CODPRO_INT.AsFloat:=fAchaCodigoProdutonoFornecedor(fsonumero(edt_codfor.Text),tb_pfor02_orcPF2CODPRO.AsString,'');
  if tb_pfor02_orcPF2CODPRO_INT.Asfloat<>0 then
    begin
    tb_pfor02_orcPF2QTDPED_INT.AsFloat:=tb_pfor02_orcPF2QTDP.AsFloat*pRet_Qtd;
    if Tb_PF2_Lotes.Locate('PF2L_ITEM',Tb_Pfor02_OrcPF2ITEM.AsInteger,[]) then
      begin
      While (not Tb_PF2_Lotes.Eof) and ( Tb_Pfor02_OrcPF2ITEM.AsInteger=Tb_PF2_LotesPF2L_Item.AsInteger)  do
         begin
         Tb_PF2_Lotes.Edit;
         Tb_PF2_LotesPF2L_QTD.Value:=Tb_PF2_LotesPF2L_QTDFOR.Value*pRet_Qtd;
         Tb_PF2_Lotes.Post;
         Tb_PF2_Lotes.Next;
         end;
      end;
    if (tb_pfor02_orcVALOR_TOTAL.AsFloat<>0) and (tb_pfor02_orcPF2QTDPED_INT.AsFloat<>0) then
      begin
      try
        tb_pfor02_orcPF2PU_INT.AsFloat:=Arredonda((tb_pfor02_orcVALOR_TOTAL.AsFloat/tb_pfor02_orcPF2QTDPED_INT.AsFloat),mcasaspu_ped);
      except
        tb_pfor02_orcPF2PU_INT.AsFloat:=0;
        end;
      end;
    end;
  end;

if CB_NAOCODBAR.Checked=false then
   begin
   if (tb_pfor02_orcPF2CODPRO_INT.Asfloat=0) then
     begin
     if trim(tb_pfor02_orcPF2CODBAR.AsString)<>'' then
       begin
       if not (Tb_Pfor02_Orc.State in [dsEdit,dsInsert]) then
         Tb_Pfor02_Orc.Edit;
       tb_pfor02_orcPF2CODPRO_INT.AsFloat:=fAchaCodigoOri(tb_pfor02_orcPF2CODBAR.AsString);
       if tb_pfor02_orcPF2CODPRO_INT.Asfloat<>0 then
         begin
         tb_pfor02_orcPF2QTDPED_INT.AsFloat:=tb_pfor02_orcPF2QTDP.AsFloat*pRet_Qtd;
         tb_pfor02_orcPF2PU_INT.AsFloat:=Arredonda((tb_pfor02_orcVALOR_TOTAL.AsFloat/tb_pfor02_orcPF2QTDPED_INT.AsFloat),mcasaspu_ped);
         end;
       end;
     end;
  end;   

if Tb_Pfor02_Orc.State in [dsEdit,dsInsert] then
  Tb_Pfor02_Orc.Post;

result:=true;
end;

function Tfrm_compras_orc_impxml.fProcurarRelacionamentos(ptipo: Integer): Boolean;
var
Query_Cons: TQuery;

begin
 mCarregandoped02:=true;


Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';

Tb_Pfor02_Orc.First;
While not Tb_Pfor02_Orc.Eof do
   begin
   fProcuraCodigoInterno;

   if tb_pfor02_orcPF2CODPRO_INT.AsFloat<>0 then
      begin
      Query_Cons.Close;
      Query_Cons.SQL.clear;
      Query_Cons.SQL.Add('Select PDNOME,PDUND,PDMARCA,PDSTATUS from CADPRO where 1=1 '
                        + fFiltrosMultiEmpresa('PDCODEMP','CADPRO',codemp)
                        +' and PDCODPRO=:CODPRO ');
      Query_Cons.ParamByName('CODPRO').AsString:=tb_pfor02_orcPF2CODPRO_INT.AsString;
      try
         Query_Cons.Open;
         if not (Tb_Pfor02_Orc.State in [dsEdit,dsInsert]) then
            Tb_Pfor02_Orc.Edit;

         if query_cons.isempty then
            begin
            tb_pfor02_orcPF2CODPRO_INT.AsString:='';
            tb_pfor02_orcNOMPRO_INT.Value     :='';
            tb_pfor02_orcUNDPRO_INT.Value     :='';
            tb_pfor02_orcPDMARCA.Value        :='';
            tb_pfor02_orcPDSTATUS.Value       :=0;
            end
         else
            begin
            tb_pfor02_orcNOMPRO_INT.Value:=Query_Cons.FieldByName('PDNOME').AsString;
            tb_pfor02_orcUNDPRO_INT.Value:=Query_Cons.FieldByName('PDUND').AsString;
            tb_pfor02_orcPDMARCA.Value:=Query_Cons.FieldByName('PDMARCA').AsString;
            tb_pfor02_orcPDSTATUS.Value:=Query_Cons.FieldByName('PDSTATUS').AsInteger;
            end;
      except
         end;
      end;
   if (Tb_Pfor02_Orc.State in [dsEdit,dsInsert]) then
      Tb_Pfor02_Orc.Post;
   Tb_Pfor02_Orc.Next;
   end;
FreeandNil(Query_Cons);
mCarregandoped02:=false;

result:=true;
end;

procedure Tfrm_compras_orc_impxml.bbCadastrarClick(Sender: TObject);
begin
if fsonumero(edt_codfor.text)=0 then
   begin
   verteclado(0);
   MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
   exit;
   end;
mCarregandoped02:=true;
fProcuraCodigoInterno;
mCarregandoped02:=false;

if tb_pfor02_orcPF2CODPRO_INT.AsFloat=0 then
   fIncluirProduto(0);




end;


function Tfrm_compras_orc_impxml.fIncluirProduto(ptipo: Integer): Boolean;
var
query_temp: Tquery;

begin
if not DM1.Tb_Pro.active then
  flcadpro(1,0,0,'-111');
DM1.Tb_Pro.Insert;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.SQL.Clear;
DM4.Tb_FilPad.SQL.Add(' select * from filpad where FPFORM='+QuotedStr('_PRO_CST'));
DM4.Tb_FilPad.Open;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_EST_REV']),[]) then
  DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.Value:=DM4.Tb_FilPadFPVALOR2.Value;
if length(DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString)<2 then
   DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.AsString:='00';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_EST_CF']),[]) then
  DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.Value:=DM4.Tb_FilPadFPVALOR2.Value;
if length(DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString)<2 then
   DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.AsString:='00';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_INT_REV']),[]) then
  DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.Value:=DM4.Tb_FilPadFPVALOR2.Value;
if length(DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString)<2 then
   DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.AsString:='00';


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_INT_CF']),[]) then
  DM1.TB_PROPDFIS_CST_ICMS_INT_CF.Value:=DM4.Tb_FilPadFPVALOR2.Value;
if length(DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.AsString)<2 then
   DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.AsString:='00';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_PRED_ICMS_EST']),[]) then
  DM1.Tb_ProPDFIS_PRED_ICMS_EST.AsFloat:=valfloat(DM4.Tb_FilPadFPVALOR2.AsString);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_PRED_ICMS_INT']),[]) then
  DM1.Tb_ProPDFIS_PRED_ICMS_INT.AsFloat:=valfloat(DM4.Tb_FilPadFPVALOR2.AsString);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_EST_REV']),[]) then
  DM1.TB_PROPDFIS_CSOSN_EST_REV.Value:=DM4.Tb_FilPadFPVALOR2.Value;
if length(DM1.Tb_ProPDFIS_CSOSN_EST_REV.AsString)<3 then
   DM1.Tb_ProPDFIS_CSOSN_EST_REV.AsString:='101';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_EST_CF']),[]) then
  DM1.TB_PROPDFIS_CSOSN_EST_CF.Value:=DM4.Tb_FilPadFPVALOR2.Value;
if length(DM1.Tb_ProPDFIS_CSOSN_EST_CF.AsString)<3 then
   DM1.Tb_ProPDFIS_CSOSN_EST_CF.AsString:='101';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_INT_REV']),[]) then
  DM1.TB_PROPDFIS_CSOSN_INT_REV.Value:=DM4.Tb_FilPadFPVALOR2.Value;
if length(DM1.Tb_ProPDFIS_CSOSN_INT_REV.AsString)<3 then
   DM1.Tb_ProPDFIS_CSOSN_INT_REV.AsString:='101';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_INT_CF']),[]) then
  DM1.TB_PROPDFIS_CSOSN_INT_CF.Value:=DM4.Tb_FilPadFPVALOR2.Value;
if length(DM1.Tb_ProPDFIS_CSOSN_INT_CF.AsString)<3 then
   DM1.Tb_ProPDFIS_CSOSN_INT_CF.AsString:='101';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_PISCOF_ENTRADA']),[]) then
  DM1.TB_PROPDFIS_CST_PISCOF_ENTRADA.Value:=DM4.Tb_FilPadFPVALOR2.Value;
if length(DM1.Tb_ProPDFIS_CST_PISCOF_ENTRADA.AsString)<2 then
   DM1.Tb_ProPDFIS_CST_PISCOF_ENTRADA.AsString:='99';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_PISCOF_SAIDA']),[]) then
  DM1.TB_PROPDFIS_CST_PISCOF_SAIDA.Value:=DM4.Tb_FilPadFPVALOR2.Value;

if length(DM1.Tb_ProPDFIS_CST_PISCOF_SAIDA.AsString)<2 then
   DM1.Tb_ProPDFIS_CST_PISCOF_SAIDA.AsString:='99';
query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';

{
if ENumero(Tb_Pfor02_OrcPF2CODPRO.AsString) then
   begin
   query_temp.close;
   query_temp.SQL.Clear;
   query_temp.SQL.Add('Select count(*) from CADPRO where '
                     +'PDCODPRO=:CODPRO ');
   query_temp.ParamByName('CODPRO').AsFloat:=fSonumero(Tb_Pfor02_OrcPF2CODPRO.AsString);
   query_temp.Open;
   if query_temp.Fields[0].AsInteger=0 then
      begin
      DM1.Tb_ProPDCODPRO.Value:=fSonumero(Tb_Pfor02_OrcPF2CODPRO.AsString);
      DM1.Tb_Pro.Post;
      DM1.Tb_Pro.Edit;
      end;
   end;
}

DM1.Tb_ProPDNOME.AsString    :=Tb_Pfor02_OrcNOMPRO_FOR.AsString;
DM1.Tb_ProPDUND.AsString     :=Tb_Pfor02_OrcUNDPRO_FOR.AsString;
if (uppercase(copy(DM1.Tb_ProPDUND.AsString,1,2))='KG') or
   (uppercase(copy(DM1.Tb_ProPDUND.AsString,1,2))='MT') or
   (uppercase(copy(DM1.Tb_ProPDUND.AsString,1,2))='LT') then
   DM1.Tb_ProPDFRACAO.Value:=1
else
   DM1.Tb_ProPDFRACAO.Value:=0;

if CB_NAOCODBAR.Checked=false then
   DM1.Tb_ProPDCODBAR.Value     :=fSonumero(Tb_Pfor02_OrcPF2CODBAR.AsString);
DM1.Tb_ProPDCODFOR.Value     :=fSonumero(edt_codfor.Text);
DM1.Tb_ProPDNOMFOR.Value     :=copy(edt_razsoc.text,1,40);
DM1.Tb_ProPDNIVEL.Value      :=00;
DM1.Tb_ProPDPCOFAB.Value     :=Tb_Pfor02_Orcpcouni_int.AsFloat;
DM1.Tb_ProPDPRECOC.Value     :=Tb_Pfor02_Orcpcouni_int.AsFloat;
DM1.Tb_ProPDUCPR.Value       :=Tb_Pfor02_Orcpcouni_int.AsFloat;
DM1.Tb_ProPDPCOFAB.Value     :=Tb_Pfor02_Orcpcouni_int.AsFloat;
DM1.Tb_ProPDFIS_ORIGEM.Value      :=Tb_Pfor02_OrcPF2CSOSN_ORI.AsString;
if trim(Tb_Pfor02_OrcPF2SIT.AsString)='' then
   begin
   DM1.Tb_ProPDSIT.Value:='000';
   DM1.Tb_ProPDSITCF.Value   :='000';
   end
else
   begin
   DM1.Tb_ProPDSIT.Value     :=Tb_Pfor02_OrcPF2SIT.AsString;
   DM1.Tb_ProPDSITCF.Value   :=Tb_Pfor02_OrcPF2SIT.AsString;
   end;



if valint(Tb_Pfor02_OrcPF2CSOSN.AsString)>0 then
   DM1.Tb_ProPDFIS_CSOSN_EST_CF.Value:=Tb_Pfor02_OrcPF2CSOSN.AsString;

DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.Value      :=copy(DM1.Tb_ProPDSIT.AsString,2,2);
DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.Value     :=copy(DM1.Tb_ProPDSIT.AsString,2,2);

DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.Value      :=copy(DM1.Tb_ProPDSIT.AsString,2,2);
DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.Value     :=copy(DM1.Tb_ProPDSIT.AsString,2,2);
DM1.Tb_ProPDCODNCM.Value                   :=Tb_Pfor02_OrcCODNCM.AsString;
DM1.Tb_ProPDCLAS.Value                     :=Tb_Pfor02_OrcCODNCM.AsString;
DM1.Tb_ProPDCEST.Value                     :=Tb_Pfor02_OrcPF2CEST.AsString;
DM1.Tb_Pro.Post;


mCodPFor.PFCODEMP  :=iif(codemp>100,codemp-100,codemp);
mCodPFor.PFCODFOR   :=DM1.Tb_ProPDCODFOR.AsFloat;
mCodPFor.PFCODPRO   :=DM1.Tb_ProPDCODPRO.AsFloat;
mCodPFor.PFCODPFORN :=Tb_Pfor02_OrcPF2CODPRO.AsString;
mCodPFor.PFFATOR    :=1;
mCodPFor.PFUNDFOR   :=copy(Tb_Pfor02_OrcUNDPRO_FOR.AsString,1,3);
mCodPFor.PFNOMPROFOR:=copy(Tb_Pfor02_OrcNOMPRO_FOR.AsString,1,100);



fIncluirCodPFor(mCodPFor);
   Tb_Pfor02_Orc.Edit;
   tb_pfor02_orcPF2CODPRO_INT.AsFloat:=fAchaCodigoProdutonoFornecedor(fsonumero(edt_codfor.Text),tb_pfor02_orcPF2CODPRO.AsString,'');
query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Select PDNOME,PDUND,PDMARCA,PDSTATUS from CADPRO where '
                  +' 1=1 '+ fFiltrosMultiEmpresa('PDCODEMP','CADPRO',codemp)

                  +' and PDCODPRO=:CODPRO ');
query_temp.ParamByName('CODPRO').AsFloat:=Tb_Pfor02_OrcPF2CODPRO_INT.AsFloat;
query_temp.Open;
if not query_temp.IsEmpty then
   begin
   Tb_Pfor02_OrcNOMPRO_INT.AsString   :=query_temp.fieldbyname('PDNOME').asstring;
   Tb_Pfor02_OrcUNDPRO_INT.AsString   :=query_temp.fieldbyName('PDUND').asstring;
   tb_pfor02_orcPDMARCA.Value         :=Query_temp.FieldByName('PDMARCA').AsString;
   tb_pfor02_orcPDSTATUS.Value        :=Query_temp.FieldByName('PDSTATUS').AsInteger;

   end;
query_temp.Close;
freeandnil(query_temp);


Tb_Pfor02_Orc.Post;

end;


procedure Tfrm_compras_orc_impxml.Src_Pfor02_orcDataChange(Sender: TObject;
  Field: TField);
begin
if Tb_Pfor02_OrcPF2CODPRO_INT.AsFloat=0 then
   lbl_semrel.Visible:=true
else
   lbl_semrel.Visible:=false;
if not mCarregandoped02 then
   begin
   Tb_PF2_Lotes.Filter  :='PF2L_ITEM='+Tb_Pfor02_OrcPF2ITEM.AsString;
   Tb_PF2_Lotes.Filtered:=true;
   end;
end;

procedure Tfrm_compras_orc_impxml.bbCadTodosProdClick(Sender: TObject);
begin
if fsonumero(edt_codfor.text)=0 then
   begin
   verteclado(0);
   MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem('Quer Cadastrar todos os Produtos não Relacionados?',0,['1','2'],2)=mrYes then
   begin
   Tb_Pfor02_Orc.First;
   While not Tb_Pfor02_Orc.Eof do
      begin
      mCarregandoped02:=true;
      fProcuraCodigoInterno;
      mCarregandoped02:=false;
      if tb_pfor02_orcPF2CODPRO_INT.AsFloat=0 then
         fIncluirProduto(0);
      Tb_Pfor02_Orc.Next;
      end;
   end;
end;

procedure Tfrm_compras_orc_impxml.Src_PF2_LotesDataChange(Sender: TObject;
  Field: TField);
begin
if Log_TipoLote=1 then
   begin
//   lindomar
   end;

end;

procedure Tfrm_compras_orc_impxml.DBGrid_prodDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if tb_pfor02_orcPF2CODPRO_INT.AsFloat=0 then
   begin
   DBGrid_prod.Canvas.Font.Color:=clRed;
   DBGrid_prod.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure Tfrm_compras_orc_impxml.Tb_PF2_LotesBeforePost(
  DataSet: TDataSet);
begin
if Tb_PF2_LotesPF2L_LOTE.IsNull then
   Tb_PF2_LotesPF2L_LOTE.AsString:=' ';

end;

procedure Tfrm_compras_orc_impxml.Tb_Pfor02_OrcAfterEdit(
  DataSet: TDataSet);
begin
mcodpro_ant:=tb_pfor02_orcPF2CODPRO_INT.AsString;
und_ant    :=tb_pfor02_orcUNDPRO_INT.AsString;
mNomPro_Ant:=tb_pfor02_orcNOMPRO_INT.AsString;
mQtd_Ant   :=Tb_Pfor02_OrcPF2QTDPED_INT.AsFloat;

end;

procedure Tfrm_compras_orc_impxml.Tb_Pfor02_OrcBeforePost(
  DataSet: TDataSet);
var
Query_exe: TQuery;

begin
if not mCarregandoped02 then
   begin
   if bbCadFor.Enabled then
     begin
     fmensagem('Por favor primeiro cadastre o fornecedor!',0,['0'],0);
     Tb_Pfor02_Orc.Cancel;
     Abort;
     end;
   Query_exe:=TQuery.Create(nil);
   Query_exe.DatabaseName:='SG_ASSOC';
   if und_ant<>tb_pfor02_orcUNDPRO_INT.AsString then
      begin
      Query_exe.Close;
      Query_exe.SQL.Clear;
      Query_exe.SQL.Add('Update CADPRO set PDUND=:UND '
                      +' where '
                      +' 1=1 '+ fFiltrosMultiEmpresa('PDCODEMP','CADPRO',codemp)
                      +' and PDCODPRO=:CODPRO ');
      Query_exe.ParamByName('UND').Value   :=tb_pfor02_orcUNDPRO_INT.AsString;

      Query_exe.ParamByName('CODPRO').Value:=Tb_Pfor02_OrcPF2CODPRO_INT.AsFloat;
      try
         Query_exe.ExecSQL;
         fdm1StartCommit;
      except
         end;

      Query_exe.Close;
      Query_exe.SQL.Clear;

      end;

   tb_pfor02_orcUNDPRO_INT.AsString   :='';
   tb_pfor02_orcNOMPRO_INT.AsString:='';
   tb_pfor02_orcPDMARCA.Value:='';
   tb_pfor02_orcPDSTATUS.Value:=0;

   //   tb_pfor02_orcPF2QTDPED_INT.AsFloat    :=0;
   if tb_pfor02_orcPF2CODPRO_INT.Asfloat<>0 then
      begin
      if flcadpro(1,0,0,tb_pfor02_orcPF2CODPRO_INT.AsString) then
         begin
         tb_pfor02_orcUNDPRO_INT.AsString:=DM1.Tb_ProPDUND.AsString;
         tb_pfor02_orcNOMPRO_INT.AsString:=DM1.Tb_ProPDNOME.AsString;
         tb_pfor02_orcPDMARCA.Value      :=DM1.Tb_ProPDMARCA.AsString;
         tb_pfor02_orcPDSTATUS.Value     :=DM1.Tb_ProPDSTATUS.AsInteger;

         if tb_pfor02_orcPF2QTDPED_INT.AsFloat=0 then
            tb_pfor02_orcPF2QTDPED_INT.AsFloat:=tb_pfor02_orcPF2QTDP.AsFloat;
         end;
      end;
   if (mcodpro_ant<>Tb_Pfor02_OrcPF2CODPRO.AsString) or
      (Tb_Pfor02_OrcPF2QTDPED_INT.AsFloat<>mQtd_Ant) then
      begin
//      if fAchaCodigoProdutonoFornecedor(Valfloat(edt_codfor.Text),'',Tb_Pfor02_OrcPF2CODPRO_INT.AsString)=0 then
//      if fAchaCodigoProdutonoFornecedor(Valfloat(edt_codfor.Text),Tb_Pfor02_OrcPF2CODPRO.AsString,Tb_Pfor02_OrcPF2CODPRO_INT.AsString)=0 then

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add(' delete from CODPFOR where PFCODPRO not in ( '
                        +' select pfcodpro from CODPFOR where pfcodfor='+FloatToStr(Valfloat(edt_codfor.Text))
                        +'  and pfcodpforn='+QuotedStr(Tb_Pfor02_OrcPF2CODPRO.AsString)
                        +' and rownum =1) and pfcodfor='+FloatToStr(Valfloat(edt_codfor.Text))
                        +' and pfcodpforn='+QuotedStr(Tb_Pfor02_OrcPF2CODPRO.AsString));
      DM1.Query1.ExecSQL;


      if ValFloat(mcodpro_ant)=0 then
        mcodpro_ant := Tb_Pfor02_OrcPF2CODPRO_INT.AsString;
      if ((length(trim(Tb_Pfor02_OrcPF2CODPRO_INT.AsString))>0)
         and (trim(Tb_Pfor02_OrcPF2CODPRO_INT.AsString)<> '0')) then
        begin
        if fAchaCodigoProdutonoFornecedor(Valfloat(edt_codfor.Text),Tb_Pfor02_OrcPF2CODPRO.AsString,mcodpro_ant)=0 then
          begin


          mCodPFor.PFCODEMP  :=iif(codemp>100,codemp-100,codemp);
          mCodPFor.PFCODFOR   :=fsonumero(edt_codfor.Text);
          mCodPFor.PFCODPRO   :=Tb_Pfor02_OrcPF2CODPRO_INT.AsFloat;
          mCodPFor.PFCODPFORN :=Tb_Pfor02_OrcPF2CODPRO.AsString;
          mCodPFor.PFFATOR    :=Tb_Pfor02_Orcfator_conv.AsFloat;
          mCodPFor.PFUNDFOR   :=copy(Tb_Pfor02_OrcUNDPRO_FOR.AsString,1,3);
          mCodPFor.PFNOMPROFOR:=copy(Tb_Pfor02_OrcNOMPRO_FOR.AsString,1,100);
          fIncluirCodPFor(mCodPFor);




          end
        else
          begin
          if not fSubstituirProduto then
            begin
            DBEdit1.SetFocus;
            exit;
            end;

             mCodPFor.PFCODEMP  :=iif(codemp>100,codemp-100,codemp);
             mCodPFor.PFCODFOR   :=fsonumero(edt_codfor.Text);
             mCodPFor.PFCODPRO   :=Tb_Pfor02_OrcPF2CODPRO_INT.AsFloat;
             mCodPFor.PFCODPFORN :=Tb_Pfor02_OrcPF2CODPRO.AsString;
             mCodPFor.PFFATOR    :=Tb_Pfor02_Orcfator_conv.AsFloat;
             mCodPFor.PFUNDFOR   :=copy(Tb_Pfor02_OrcUNDPRO_FOR.AsString,1,3);
             mCodPFor.PFNOMPROFOR:=copy(Tb_Pfor02_OrcNOMPRO_FOR.AsString,1,100);
             fIncluirCodPFor(mCodPFor);


          end;
        end
      else
        begin
        Query_Exe.SQL.Add(' delete CODPFOR where PFCODEMP=:PFCODEMP and '
                           +' PFCODPFORN=:PFCODPFORN  and PFCODFOR=:PFCODFOR');
        Query_Exe.ParamByName('PFCODEMP').AsInteger :=codemp;
        Query_Exe.ParamByName('PFCODFOR').AsFloat   :=Valfloat(edt_codfor.Text);
        Query_Exe.ParamByName('PFCODPFORN').AsString:=Tb_Pfor02_OrcPF2CODPRO.AsString;

         try
           Query_Exe.ExecSQL;
           fDM1StartCommit;
        except on e : exception do
           ex_erroSql_Novo(Query_Exe,1899,'s_compras_prodsemrel'+e.message,'codpfor');
           end;
           end;
        end;
   FreeAndNil(Query_exe);
   end;


end;

procedure Tfrm_compras_orc_impxml.GroupBox3Exit(Sender: TObject);
begin
if Tb_Pfor02_Orc.State in [dsedit,dsinsert] then
   Tb_Pfor02_Orc.Post;
if edt_nomarq.Focused then
   DBGrid_prod.SetFocus;
end;

procedure Tfrm_compras_orc_impxml.DBEdit1Exit(Sender: TObject);
var
mCodPro_ori_Bar: string;
begin
if tb_pfor02_orc.State in [dsEdit,dsInsert] then
   begin
   if tb_pfor02_orcPF2CODPRO_INT.Asfloat<>0 then
      begin
      if flcadpro(1,0,0,tb_pfor02_orcPF2CODPRO_INT.AsString) then
         begin
         tb_pfor02_orcUNDPRO_INT.AsString:=DM1.Tb_ProPDUND.AsString;
         tb_pfor02_orcNOMPRO_INT.AsString:=DM1.Tb_ProPDNOME.AsString;
         tb_pfor02_orcPDMARCA.Value      :=DM1.Tb_ProPDMARCA.AsString;
         tb_pfor02_orcPDSTATUS.Value     :=DM1.Tb_ProPDSTATUS.AsInteger;

         if tb_pfor02_orcPF2QTDPED_INT.AsFloat=0 then
            tb_pfor02_orcPF2QTDPED_INT.AsFloat:=tb_pfor02_orcPF2QTDP.AsFloat;


         end
      else
         begin
         mCodPro_ori_Bar:=FloatToStr(fAchaCodigoOri(tb_pfor02_orcPF2CODPRO_INT.AsString));
         if valfloat(mCodPro_ori_Bar)>0 then
            begin
            if flcadpro(1,0,0,mCodPro_ori_Bar) then
               begin
               tb_pfor02_orcPF2CODPRO_INT.AsString:=DM1.Tb_ProPDCODPRO.AsString;
               tb_pfor02_orcUNDPRO_INT.AsString   :=DM1.Tb_ProPDUND.AsString;
               tb_pfor02_orcNOMPRO_INT.AsString   :=DM1.Tb_ProPDNOME.AsString;
               tb_pfor02_orcPF2QTDPED_INT.AsFloat :=tb_pfor02_orcPF2QTDP.AsFloat;
               tb_pfor02_orcPDMARCA.Value         :=DM1.Tb_ProPDMARCA.AsString;
               tb_pfor02_orcPDSTATUS.Value        :=DM1.Tb_ProPDSTATUS.AsInteger;
               end
            end;
         end;



      end;
   end;
end;



function Tfrm_compras_orc_impxml.fSubstituirProduto: Boolean;
begin
result:=true;
end;

function Tfrm_compras_orc_impxml.fLocalizaTra: Boolean;
var
  query_tra: TQuery;
begin
query_tra:=TQuery.Create(nil);
query_tra.DatabaseName:='SG_ASSOC';
query_tra.Close;
query_tra.SQL.clear;
query_tra.SQL.Add('Select TRCODTRA from CADTRA ');
query_tra.sql.add(' where TRCNPF=:CNPJ_CPF or TRCNPJ=:CNPJ_CPF ');
query_tra.ParambyName('CNPJ_CPF').asFloat:=fsonumero(edt_tra_cnpjtra.text);
Query_tra.open;
if not query_tra.IsEmpty then
   edt_tra_codtra.text:=query_tra.fields[0].asstring;
freeandnil(query_tra);
result:=true;
end;


function Tfrm_compras_orc_impxml.fCadastrarTransp: Boolean;
begin
if not DM1.Tb_tra.active then
   flcadtra(0,0,'-1');
DM1.Tb_Tra.Append;
DM1.Tb_TraTRDTCAD.AsDateTime  :=now;
DM1.Tb_TraTRCODUSR_INC.AsFloat:=codusr;
DM1.Tb_TraTRCODEMP.Value      :=codemp;
DM1.Tb_TraTRRAZTRA.Value      :=edt_nomtra.Text;
DM1.Tb_TraTRNLOG.Value        :=edt_tra_ender.Text;
DM1.Tb_TraTRCIDADE.Value      :=edt_tra_cidade.Text;
DM1.Tb_TraTRUF.Value          :=edt_tra_uf.Text;
DM1.Tb_TraTRCODLOC.Value      :=fCodigoCidade(edt_tra_cidade.Text,edt_tra_uf.Text);
if length(fdeixanum(edt_tra_cnpjtra.Text))<12 then
   DM1.Tb_TraTRCNPF.Value     :=fsonumero(edt_tra_cnpjtra.Text)
else
   DM1.Tb_TraTRCNPJ.Value     :=fsonumero(edt_tra_cnpjtra.Text);
FAtualizaBanco(1,'CADTRA','TRCODEMP',DM1.Tb_TraTRCODEMP.AsString
               ,['TRCODTRA'],[DM1.Tb_traTRCODTRA.AsString]
               ,DM1.Tb_Tra);

DM1.Tb_Tra.Post;
edt_tra_codtra.Text   :=DM1.Tb_TraTRCODTRA.AsString;
result:=true;
end;

procedure Tfrm_compras_orc_impxml.edt_chave_antExit(Sender: TObject);
begin
edt_chave_ant.Text:=fdeixanum(edt_chave_ant.Text);

end;

function Tfrm_compras_orc_impxml.fTestarChaveNFE: Boolean;
var
query_temp: tQuery;
begin
if fsonumero(edt_chave_ant.text)=0 then
   begin
   result:=false;
   exit;
   end;
result:=true;

if length(trim(fdeixanum(edt_nfe_chave.text)))<2 then
   begin
   Messagedlg('Chave da NFE '+edt_nfe_chave.text+' não é uma chave válida!',mtwarning,[mbOk],0);
   result:=false
   end;

Tb_Pfor02_Orc.First;
While not Tb_Pfor02_Orc.eof do
   begin
   if fsonumero(Tb_Pfor02_OrcPF2CODPRO_INT.AsString)=0 then
      begin
      Messagedlg('Existem produtos sem relacionamento!',mtwarning,[mbOk],0);
      result:=false;
      freeandnil(query_temp);
      exit;                           
      end;
   Tb_Pfor02_Orc.Next;   
   end;
query_temp:=tQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.SQL.clear;
query_temp.SQL.Add('Select PF1_NFE_CHAVE from CADPF1 where PF1CODEMP=:CODEMP '
                  +' and PF1CHAVE=:CHAVE ');
query_temp.ParamByName('CODEMP').ASinteger:=codemp;
query_temp.parambyname('CHAVE').AsFloat   :=fsonumero(edt_chave_ant.text);
try
   query_temp.open;
except
   end;
if query_temp.isempty then
   begin
   Messagedlg('Chave não encontrada!',mtwarning,[mbOk],0);
   result:=false
   end
else if fdeixanum(query_temp.fieldbyname('PF1_NFE_CHAVE').asstring)<>fdeixanum(edt_nfe_chave.text) then
   begin
   Messagedlg('Chave do Pedido '+edt_chave_ant.text+' chave da nfe '+edt_nfe_chave.text+' não é mesma do Pedido!',mtwarning,[mbOk],0);
   result:=false
   end;
freeandnil(query_temp);

end;


procedure Tfrm_compras_orc_impxml.sbn_okClick(Sender: TObject);
begin
if fsonumero(edt_chave_ant.text)<>0 then
   begin
   if fTestarChaveNFE then
      begin
      if fAjustarChaveNFE then
         MessageDlg('Concluido!',mtInformation,[mbOk],0);
      end;
   end;


end;

function Tfrm_compras_orc_impxml.fAjustarChaveNFE:Boolean;
var
Query_exe:tQuery;
Query_temp:tQuery;
begin
Tb_Pfor02_Orc.First;



query_temp:=tQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.SQL.clear;
query_temp.SQL.Add(' Select count(*) as QTDITEM '+
                   '  ,sum(PF2QTDP) as QTDUND'+
                   '  ,sum(PF2BASEN) as P2ICMS_BASE'+
                   '  ,sum(PF2ICMSN) as P2ICMS_VALOR'+
                   '  ,sum(PF2ICMS_RED_VLR) as P2ICMS_RED_VLR'+
                   '  ,sum(PF2BASER) as P2ST_BASE'+
                   '  ,sum(PF2ICMSR) as P2ST_ICMS'+
                   '  ,sum(PF2TOTDES) as P2DESC_VLRTOT'+
                   '  ,sum(PF2DESC_CABEC) as P2DESC_CAB'+
                   '  ,sum(PF2IPI) as P2IPI_VALOR'+
                   '  ,sum(PF2PIS_VALOR) as P2PIS_VALOR'+
                   '  ,sum(PF2COFINS_VALOR) as P2COFINS_VALOR'+
                   '  ,sum(PF2ICMSSN_VALOR) as P2ICMSSN_VALOR'+
                   '  ,sum(PF2TOTLIQ) as P2COFINS_BASE'+
                   '  ,sum(PF2TOTLIQ) as P2PIS_BASE'+
                   '  ,sum(ROUND((PF2QTDP*PF2PU),2)) as P1TOTMER'+
                   '  ,sum(PF2DESC_RATEADO) as P2DESC_RAT'+
                   '  ,sum(PF2TOTLIQ) as P1TOTALL'+

                   '  ,sum(PF2IPI) as P1TOTIPI '
                   +',PF1GRAVNF,PF1_NFE_CHAVE,PF1LOTSEQ,PF1CHAVE '
                   +'  FROM CADPF2,CADPF1  '
                   +'  WHERE PF1CODEMP=PF2CODEMP AND PF1CHAVE=PF2CHAVE AND PF1LOTSEQ=PF2LOTSEQ '
                   +' and PF2CODEMP=:CODEMP '
                  +' and PF2CHAVE=:CHAVE ');
query_temp.sql.add(' group by PF1GRAVNF,PF1_NFE_CHAVE,PF1LOTSEQ,PF1CHAVE ');
query_temp.ParamByName('CODEMP').ASinteger:=codemp;
query_temp.parambyname('CHAVE').AsFloat   :=fsonumero(edt_chave_ant.text);
try
   query_temp.open;
except
   end;

if query_temp.fieldByName('PF1GRAVNF').Asinteger=0 then
   begin
   if flcadne(5,query_temp.fieldByName('PF1LOTSEQ').AsString,query_temp.fieldByName('PF1CHAVE').AsString,'','','','','') then
      begin
      dm1.tb_ne.edit;
      DM1.Tb_NENEBASEN.Value    :=Query_temp.FieldbyName('P2ICMS_BASE').AsFloat;
      DM1.Tb_NENEICMSN.Value    :=Query_temp.FieldbyName('P2ICMS_VALOR').AsFloat;
      DM1.Tb_NENEBASER.Value    :=Query_temp.FieldbyName('P2ST_BASE').AsFloat;
      DM1.Tb_NENEICMSR.Value    :=Query_temp.FieldbyName('P2ST_ICMS').AsFloat;

      DM1.Tb_NENETOTMER.Value    :=Query_temp.FieldbyName('P1TOTMER').AsFloat;

      DM1.Tb_NENETOTNOT.Value    :=Query_temp.FieldbyName('P1TOTALL').AsFloat;
      DM1.Tb_NENETOTDES.Value    :=Query_temp.FieldbyName('P2DESC_VLRTOT').AsFloat;
      DM1.Tb_NENETOTPOS.Value    :=0;
      DM1.Tb_NENETOTNEG.Value    :=0;
      DM1.Tb_NENEISENTAS.Value   :=0;
      DM1.Tb_NENETOTINA.Value    :=Query_temp.FieldbyName('P1TOTALL').AsFloat;
      FAtualizaBanco(1,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.AsString
                    ,['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                                 'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                                  DM1.Tb_NENECODFOR.AsString
                                 ,DM1.Tb_NENENUMERO.AsString
                                 ,DM1.Tb_NENESERIE.AsString
                                 ,DM1.Tb_NENESUBSER.AsString
                                 ,DM1.Tb_NENEMODELO.AsString
                                 ,DM1.Tb_NENECFO.AsString
                                 ,FormatDateTime(fdt,  DM1.Tb_NENEDTENT.Value)
                                 ,FormatDateTime(fdt,  DM1.Tb_NENEDTEMIS.Value)]
                     ,DM1.Tb_NE);
      DM1.Tb_NE.Post;
      end;
   end;
freeandnil(query_temp);

Query_exe:=tQuery.Create(nil);
Query_exe.DatabaseName:='SG_ASSOC';

Query_Exe.Close;
Query_Exe.Sql.Clear;
Query_Exe.Sql.Add('Insert into CADPF2_ORC_temp '
                       +'('
                       +' PF2T_CODEMP'

                       +',PF2T_FILIAL'
                       +',PF2T_CHAVE'
                       +',PF2T_CHAVE_ANO'
                       +',PF2T_ITEM'
                       +',PF2T_CFOP'
                       +',PF2T_MODBCST'
                       +',PF2T_ST_BASE'
                       +',PF2T_ST_VALOR'
                       +',PF2T_SITUACAO'
                       +',PF2T_CODPRO'
                       +',PF2T_QTDPED'
                       +',PF2T_DESC_PERC01'
                       +',PF2T_DESC_PERC02'
                       +',PF2T_DESC_PERC03'
                       +',PF2T_DESC_VALOR'
                       +',PF2T_PRECO'
                       +',PF2T_DESC_REPAS'
                       +',PF2T_LISTA'
                       +',PF2T_PRECO_TAB'
                       +',PF2T_PRECO_FPGTO'
                       +',PF2T_PRECO_UCPR'
                       +',PF2T_PRECO_CUS'
                       +',PF2T_PRECO_MAXCONS'
                       +',PF2T_IPI_PERC'
                       +',PF2T_IPI_PRED'

                       +',PF2T_ICMS_PERC'
                       +',PF2T_COMISV01_PERC'
                       +',PF2T_PIS_PERC'
                       +',PF2T_COFINS_PERC'
                       +',PF2T_DESCFIN_PERC'
                       +',PF2T_ACRES_PERC'
                       +',PF2T_ICMS_PRED'
                       +',PF2T_ST_IVA'
                       +',PF2T_ST_PREDUT'
                       +',PF2T_ST_ICMSRED'
                       +',PF2T_ST_ICMSDEB'
                       +',PF2T_ICMSSN_PERC'
                       +',PF2T_PED1_DESCRAT'
                       +',PF2T_PED1_ACRERAT'
                       +',PF2T_PED1_VALSEG'
                       +',PF2T_VALFRE'
                       +',PF2T_VALFRE_PERC'
                       +',PF2T_VALFRE_ICMS_ALIQ'
                       +',PF2T_VALFRE_ICMS_VALOR'
                       +',PF2T_VALFRE_IPIICMS_ALIQ'
                       +',PF2T_VALFRE_IPIICMS_VALOR'
                       +',PF2T_PED1_TARBAN'
                       +',PF2T_PED1_OUTDESP'
                       +',PF2T_CST'
                       +',PF2T_CST_PIS '
                       +',PF2T_CST_COFINS '
                       +',PF2T_CST_IPI '
                       +',PF2T_DESCCOMPL'
                       +',PF2T_CSOSN'
                       +',PF2T_CSOSN_ORI'
                       +',PF2T_PROMOCAO'
                       +',PF2T_QTDDUP'
                       +',PF2T_QTDDUP_ANT'
                       +',PF2T_PRAZOS'
                       +',PF2T_TIPOMOV'
                       +',PF2T_TIPO_EVENTO'
                       +',PF2T_HISTORICO'
                       +',PF2T_HISTORICO_ANT'
                       +',PF2T_ITEM_ANT'
                       +',PF2T_CODPRO_ANT'
                       +',PF2T_QTDPED_ANT'
                       +',PF2T_DESC_CAB'
                       +',PF2T_CODFP'
                       +',PF2T_NOMFP'
                       +',PF2T_BAIXA'
                       +',PF2T_PED1_DESC_PERC01'
                       +',PF2T_PED1_DESC_PERC02'
                       +',PF2T_PED1_DESC_PERC03'
                       +',PF2T_PED1_DESC_PERC01_ANT'
                       +',PF2T_PED1_DESC_PERC02_ANT'
                       +',PF2T_PED1_DESC_PERC03_ANT'
                       +',PF2T_CODUSR'
                       +',PF2T_DATAPED'
                       +',PF2T_VD_IPI_Valor'
                       +',PF2T_VD_ICMSST_BASE'
                       +',PF2T_VD_ICMSST_VALOR'
                       +',PF2T_VD_ICMS_BASE'
                       +',PF2T_VD_ICMS_VALOR'
                       +',PF2T_VD_PIS_BASE'
                       +',PF2T_VD_PIS_VALOR'
                       +',PF2T_VD_COFINS_BASE'
                       +',PF2T_VD_COFINS_VALOR '
                       +',PF2T_ALTDUP '
                       +',PF2T_IMP_IMP_ALIQ'
                       +',PF2T_IMP_IMP_VALOR'
                       +',PF2T_OUTDESP'
                       +',PF2T_OUTDESP_ICMS_ALIQ'
                       +',PF2T_OUTDESP_ICMS_VALOR'
                       +',PF2T_TOTSEG'
                       +',PF2T_TOTSEG_ICMS_ALIQ'
                       +',PF2T_PED1_OUTVDUP'
                       +',PF2T_BASER_IPI'
                       +',PF2T_IPIQTDUNID'
                       +',PF2T_IPIVUNID '
                       +',PF2T_PISQTDUNID '
                       +',PF2T_PISVUNID'
                       +',PF2T_COFINSQTDUNID'
                       +',PF2T_COFINSVUNID'

                      +') values ('
                       +':PF2T_CODEMP'
                       +',:PF2T_FILIAL'

                       +',:PF2T_CHAVE'
                       +',:PF2T_CHAVE_ANO'
                       +',:PF2T_ITEM'
                       +',:PF2T_CFOP'
                       +',:PF2T_MODBCST'
                       +',:PF2T_ST_BASE'
                       +',:PF2T_ST_VALOR'
                       +',:PF2T_SITUACAO'
                       +',:PF2T_CODPRO'
                       +',:PF2T_QTDPED'
                       +',:PF2T_DESC_PERC01'
                       +',:PF2T_DESC_PERC02'
                       +',:PF2T_DESC_PERC03'
                       +',:PF2T_DESC_VALOR'
                       +',:PF2T_PRECO'
                       +',:PF2T_DESC_REPAS'
                       +',:PF2T_LISTA'
                       +',:PF2T_PRECO_TAB'
                       +',:PF2T_PRECO_FPGTO'
                       +',:PF2T_PRECO_UCPR'
                       +',:PF2T_PRECO_CUS'
                       +',:PF2T_PRECO_MAXCONS'
                       +',:PF2T_IPI_PERC'
                       +',:PF2T_IPI_PRED '
                       +',:PF2T_ICMS_PERC'
                       +',:PF2T_COMISV01_PERC'
                       +',:PF2T_PIS_PERC'
                       +',:PF2T_COFINS_PERC'
                       +',:PF2T_DESCFIN_PERC'
                       +',:PF2T_ACRES_PERC'
                       +',:PF2T_ICMS_PRED'
                       +',:PF2T_ST_IVA'
                       +',:PF2T_ST_PREDUT'
                       +',:PF2T_ST_ICMSRED'
                       +',:PF2T_ST_ICMSDEB'
                       +',:PF2T_ICMSSN_PERC'
                       +',:PF2T_PED1_DESCRAT'
                       +',:PF2T_PED1_ACRERAT'
                       +',:PF2T_PED1_VALSEG'
                       +',:PF2T_VALFRE'
                       +',:PF2T_VALFRE_PERC'
                       +',:PF2T_VALFRE_ICMS_ALIQ'
                       +',:PF2T_VALFRE_ICMS_VALOR'
                       +',:PF2T_VALFRE_IPIICMS_ALIQ'
                       +',:PF2T_VALFRE_IPIICMS_VALOR'
                       +',:PF2T_PED1_TARBAN'
                       +',:PF2T_PED1_OUTDESP'
                       +',:PF2T_CST'
                       +',:PF2T_CST_PIS '
                       +',:PF2T_CST_COFINS '
                       +',:PF2T_CST_IPI '


                       +',:PF2T_DESCCOMPL'
                       +',:PF2T_CSOSN'
                       +',:PF2T_CSOSN_ORI'
                       +',:PF2T_PROMOCAO'
                       +',:PF2T_QTDDUP'
                       +',:PF2T_QTDDUP_ANT'
                       +',:PF2T_PRAZOS'
                       +',:PF2T_TIPOMOV'
                       +',:PF2T_TIPO_EVENTO'
                       +',:PF2T_HISTORICO'
                       +',:PF2T_HISTORICO_ANT'
                       +',:PF2T_ITEM_ANT'
                       +',:PF2T_CODPRO_ANT'
                       +',:PF2T_QTDPED_ANT'
                       +',:PF2T_DESC_CAB'
                       +',:PF2T_CODFP'
                       +',:PF2T_NOMFP'
                       +',:PF2T_BAIXA'
                       +',:PF2T_PED1_DESC_PERC01'
                       +',:PF2T_PED1_DESC_PERC02'
                       +',:PF2T_PED1_DESC_PERC03'
                       +',:PF2T_PED1_DESC_PERC01_ANT'
                       +',:PF2T_PED1_DESC_PERC02_ANT'
                       +',:PF2T_PED1_DESC_PERC03_ANT'
                       +',:PF2T_CODUSR'
                       +',:PF2T_DATAPED'
                       +',:PF2T_VD_IPI_Valor'
                       +',:PF2T_VD_ICMSST_BASE'
                       +',:PF2T_VD_ICMSST_VALOR'
                       +',:PF2T_VD_ICMS_BASE'
                       +',:PF2T_VD_ICMS_VALOR'
                       +',:PF2T_VD_PIS_BASE'
                       +',:PF2T_VD_PIS_VALOR'
                       +',:PF2T_VD_COFINS_BASE'
                       +',:PF2T_VD_COFINS_VALOR '
                       +',:PF2T_ALTDUP '
                       +',:PF2T_IMP_IMP_ALIQ'
                       +',:PF2T_IMP_IMP_VALOR'
                       +',:PF2T_OUTDESP'
                       +',:PF2T_OUTDESP_ICMS_ALIQ'
                       +',:PF2T_OUTDESP_ICMS_VALOR'
                       +',:PF2T_TOTSEG'
                       +',:PF2T_TOTSEG_ICMS_ALIQ'
                       +',:PF2T_PED1_OUTVDUP'
                       +',:PF2T_BASER_IPI'

                       +',:PF2T_IPIQTDUNID'
                       +',:PF2T_IPIVUNID '
                       +',:PF2T_PISQTDUNID '
                       +',:PF2T_PISVUNID'
                       +',:PF2T_COFINSQTDUNID'
                       +',:PF2T_COFINSVUNID'
                       +')');
While not Tb_Pfor02_Orc.Eof do
   begin
   Query_Exe.ParamByName('PF2T_CODEMP').AsInteger         :=codemp;
   Query_Exe.ParamByName('PF2T_FILIAL').AsInteger         :=1;
   Query_Exe.ParamByName('PF2T_CHAVE').AsInteger          :=valint(edt_chave_ant.Text);
   Query_Exe.ParamByName('PF2T_CHAVE_ANO').AsInteger      :=ls_numpf;
   Query_Exe.ParamByName('PF2T_ITEM').AsInteger           :=Tb_Pfor02_OrcPF2ITEM.AsInteger;
   Query_Exe.ParamByName('PF2T_CFOP').AsInteger           :=Tb_Pfor02_OrcPF2CFO.AsInteger;
   Query_Exe.ParamByName('PF2T_MODBCST').AsInteger        :=Tb_Pfor02_OrcPF2MODBCST.AsInteger;
   Query_Exe.ParamByName('PF2T_ST_BASE').AsFloat          :=Tb_Pfor02_OrcPF2ST_BASE.AsFloat;
   Query_Exe.ParamByName('PF2T_ST_VALOR').AsFloat         :=Tb_Pfor02_OrcPF2ST_ICMS.AsFloat;
   Query_Exe.ParamByName('PF2T_SITUACAO').AsInteger       :=0;
   Query_Exe.ParamByName('PF2T_CODPRO').AsString          :=Tb_Pfor02_OrcPF2CODPRO_INT.AsString;
   Query_Exe.ParamByName('PF2T_QTDPED').AsFloat           :=Tb_Pfor02_OrcPF2QTDPED_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_PERC01').AsFloat      :=Tb_Pfor02_OrcPF2DESC_PERC01.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_PERC02').AsFloat      :=Tb_Pfor02_OrcPF2DESC_PERC02.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_PERC03').AsFloat      :=Tb_Pfor02_OrcPF2DESC_PERC03.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_VALOR').AsFloat       :=0;
   Query_Exe.ParamByName('PF2T_PRECO').AsFloat            :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_REPAS').AsFloat       :=0;
   Query_Exe.ParamByName('PF2T_LISTA').AsFloat            :=0;
   Query_Exe.ParamByName('PF2T_PRECO_TAB').AsFloat        :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_PRECO_FPGTO').AsFloat      :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_PRECO_UCPR').AsFloat       :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_PRECO_CUS').AsFloat        :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_PRECO_MAXCONS').AsFloat    :=Tb_Pfor02_OrcPF2PRECO_MAXCONS.AsFloat;
   Query_Exe.ParamByName('PF2T_IPI_PERC').AsFloat         :=Tb_Pfor02_OrcPF2IPI_PERC.AsFloat;
   Query_Exe.ParamByName('PF2T_IPI_PRED').AsFloat         :=Tb_Pfor02_OrcPF2IPI_PRED.AsFloat;
   Query_Exe.ParamByName('PF2T_ICMS_PERC').AsFloat        :=Tb_Pfor02_OrcPF2ICMS_PRED.AsFloat;
   Query_Exe.ParamByName('PF2T_COMISV01_PERC').AsFloat    :=0;
   Query_Exe.ParamByName('PF2T_PIS_PERC').AsFloat         :=Tb_Pfor02_OrcPF2PIS_PERC.AsFloat;
   Query_Exe.ParamByName('PF2T_COFINS_PERC').AsFloat      :=Tb_Pfor02_OrcPF2COFINS_PERC.AsFloat;
   Query_Exe.ParamByName('PF2T_DESCFIN_PERC').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_ACRES_PERC').AsFloat       :=0;
   Query_Exe.ParamByName('PF2T_ICMS_PRED').AsFloat        :=Tb_Pfor02_OrcPF2ICMS_PRED.AsFloat;
   Query_Exe.ParamByName('PF2T_ST_IVA').AsFloat           :=Tb_Pfor02_OrcPF2ST_IVA.AsFloat;
   Query_Exe.ParamByName('PF2T_ST_PREDUT').AsFloat        :=Tb_Pfor02_OrcPF2ST_PERCRED.AsFloat;
   Query_Exe.ParamByName('PF2T_ST_ICMSRED').AsFloat       :=0;
   Query_Exe.ParamByName('PF2T_ST_ICMSDEB').AsFloat       :=Tb_Pfor02_OrcPF2ST_ICMSDEB.AsFloat;
   Query_Exe.ParamByName('PF2T_ICMSSN_PERC').AsFloat      :=Tb_Pfor02_OrcPF2ICMSSN_PERC.AsFloat;
   Query_Exe.ParamByName('PF2T_PED1_DESCRAT').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_PED1_ACRERAT').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_PED1_VALSEG').AsFloat      :=0;
   Query_Exe.ParamByName('PF2T_VALFRE').AsFloat           :=valfloat(edt_valfre.text);
   Query_Exe.ParamByName('PF2T_VALFRE_PERC').AsFloat      :=0;
   Query_Exe.ParamByName('PF2T_VALFRE_ICMS_ALIQ').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_VALFRE_ICMS_VALOR').AsFloat    :=0;

   Query_Exe.ParamByName('PF2T_VALFRE_IPIICMS_ALIQ').AsFloat  :=0;
   Query_Exe.ParamByName('PF2T_VALFRE_IPIICMS_VALOR').AsFloat :=0;

   Query_Exe.ParamByName('PF2T_PED1_TARBAN').AsFloat          :=0;
   Query_Exe.ParamByName('PF2T_PED1_OUTDESP').AsFloat         :=0;
   Query_Exe.ParamByName('PF2T_CST').AsString                 :=Tb_Pfor02_OrcPF2SIT.AsString;
   Query_Exe.ParamByName('PF2T_CST_PIS').AsString             :=Tb_Pfor02_OrcPF2PIS_CST.AsString;
   Query_Exe.ParamByName('PF2T_CST_COFINS').AsString          :=Tb_Pfor02_OrcPF2COFINS_CST.AsString;
   Query_Exe.ParamByName('PF2T_CST_IPI').AsString             :=Tb_Pfor02_OrcPF2IPI_CST.AsString;

   Query_Exe.ParamByName('PF2T_DESCCOMPL').AsString           :='';
   Query_Exe.ParamByName('PF2T_CSOSN').AsString               :=Tb_Pfor02_OrcPF2CSOSN.AsString;
   Query_Exe.ParamByName('PF2T_CSOSN_ORI').AsString           :=Tb_Pfor02_OrcPF2CSOSN_ORI.AsString;
   Query_Exe.ParamByName('PF2T_PROMOCAO').AsString            :='';
   Query_Exe.ParamByName('PF2T_QTDDUP').AsInteger             :=1;
   Query_Exe.ParamByName('PF2T_QTDDUP_ANT').AsInteger         :=1;
   Query_Exe.ParamByName('PF2T_PRAZOS').AsString              :='';
   Query_Exe.ParamByName('PF2T_TIPOMOV').AsInteger            :=0;
   Query_Exe.ParamByName('PF2T_ITEM_ANT').AsInteger            :=0;
   Query_Exe.ParamByName('PF2T_HISTORICO_ANT').AsString        :='';
   Query_Exe.ParamByName('PF2T_CODPRO_ANT').AsString           :='';
   Query_Exe.ParamByName('PF2T_QTDPED_ANT').AsFloat            :=0;

   Query_Exe.ParamByName('PF2T_CODFP').AsInteger               := 0;
   Query_Exe.ParamByName('PF2T_NOMFP').AsString                := '';
   Query_Exe.ParamByName('PF2T_BAIXA').AsString                := 'N';
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC01').AsFloat      := 0;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC02').AsFloat      := 0;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC03').AsFloat      := 0;

   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC01_ANT').AsFloat  := 0;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC02_ANT').AsFloat  := 0;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC03_ANT').AsFloat  := 0;
   Query_Exe.ParamByName('PF2T_CODUSR').AsInteger              := 0;
   Query_Exe.ParamByName('PF2T_DATAPED').AsDateTime            := DATE;

//LINDOMAR
   Query_Exe.ParamByName('PF2T_TIPO_EVENTO').AsInteger         :=0;
   Query_Exe.ParamByName('PF2T_HISTORICO').AsString            :='Pedido ';

   Query_Exe.ParamByName('PF2T_TIPO_EVENTO').AsInteger         :=1;

   Query_Exe.ParamByName('PF2T_DESC_CAB').AsFloat                :=0;

   Query_Exe.ParamByName('PF2T_VD_IPI_Valor').AsFloat    :=0;
   Query_Exe.ParamByName('PF2T_VD_ICMSST_BASE').AsFloat  :=0;
   Query_Exe.ParamByName('PF2T_VD_ICMSST_VALOR').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_VD_ICMS_BASE').AsFloat    :=0;
   Query_Exe.ParamByName('PF2T_VD_ICMS_VALOR').AsFloat   :=0;

   Query_Exe.ParamByName('PF2T_VD_PIS_BASE').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_VD_PIS_VALOR').AsFloat    :=0;

   Query_Exe.ParamByName('PF2T_VD_COFINS_BASE').AsFloat  :=0;
   Query_Exe.ParamByName('PF2T_VD_COFINS_VALOR').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_ALTDUP').AsString         :='N';

   Query_Exe.ParamByName('PF2T_IMP_IMP_ALIQ').AsFloat    :=0;
   Query_Exe.ParamByName('PF2T_IMP_IMP_VALOR').AsFloat   :=0;

   Query_Exe.ParamByName('PF2T_PED1_OUTVDUP').AsFloat    :=0;

   Query_Exe.ParamByName('PF2T_OUTDESP').AsFloat           :=0;
   Query_Exe.ParamByName('PF2T_OUTDESP_ICMS_ALIQ').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_OUTDESP_ICMS_VALOR').AsFloat:=0;

   Query_Exe.ParamByName('PF2T_TOTSEG').AsFloat           :=0;
   Query_Exe.ParamByName('PF2T_TOTSEG_ICMS_ALIQ').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_BASER_IPI').AsFloat        :=0;



    Query_Exe.ParamByName('PF2T_IPIQTDUNID').AsFloat        :=Tb_Pfor02_OrcPF2IPIQTDUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_IPIVUNID').AsFloat        :=Tb_Pfor02_OrcPF2IPIVUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_PISQTDUNID').AsFloat        :=Tb_Pfor02_OrcPF2PISQTDUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_PISVUNID').AsFloat        :=Tb_Pfor02_OrcPF2PISVUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_COFINSQTDUNID').AsFloat        :=Tb_Pfor02_OrcPF2COFINSQTDUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_COFINSVUNID').AsFloat        :=Tb_Pfor02_OrcPF2COFINSVUNID.AsFloat;
   try
      Query_Exe.ExecSQL;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(Query_Exe,3093,'_lerarq','CADPF1');
         result:=false;
         end;
      end;
   Tb_Pfor02_Orc.Next;
   end;
// somente para arredondar ipi

if valfloat(edt_totipi.Text)<>0 then
   begin
   Tb_Pfor02_Orc.First;
   Query_Exe.ParamByName('PF2T_CODEMP').AsInteger         :=codemp;
   Query_Exe.ParamByName('PF2T_FILIAL').AsInteger         :=1;
   Query_Exe.ParamByName('PF2T_CHAVE').AsInteger          :=valint(edt_chave_ant.Text);
   Query_Exe.ParamByName('PF2T_CHAVE_ANO').AsInteger      :=ls_numpf;
   Query_Exe.ParamByName('PF2T_ITEM').AsInteger           :=Tb_Pfor02_OrcPF2ITEM.AsInteger;
   Query_Exe.ParamByName('PF2T_CFOP').AsInteger           :=Tb_Pfor02_OrcPF2CFO.AsInteger;
   Query_Exe.ParamByName('PF2T_MODBCST').AsInteger        :=Tb_Pfor02_OrcPF2MODBCST.AsInteger;
   Query_Exe.ParamByName('PF2T_ST_BASE').AsFloat          :=Tb_Pfor02_OrcPF2ST_BASE.AsFloat;
   Query_Exe.ParamByName('PF2T_ST_VALOR').AsFloat         :=Tb_Pfor02_OrcPF2ST_ICMS.AsFloat;
   Query_Exe.ParamByName('PF2T_SITUACAO').AsInteger       :=0;
   Query_Exe.ParamByName('PF2T_CODPRO').AsString          :=Tb_Pfor02_OrcPF2CODPRO_INT.AsString;
   Query_Exe.ParamByName('PF2T_QTDPED').AsFloat           :=Tb_Pfor02_OrcPF2QTDPED_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_PERC01').AsFloat      :=Tb_Pfor02_OrcPF2DESC_PERC01.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_PERC02').AsFloat      :=Tb_Pfor02_OrcPF2DESC_PERC02.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_PERC03').AsFloat      :=Tb_Pfor02_OrcPF2DESC_PERC03.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_VALOR').AsFloat       :=0;
   Query_Exe.ParamByName('PF2T_PRECO').AsFloat            :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_DESC_REPAS').AsFloat       :=0;
   Query_Exe.ParamByName('PF2T_LISTA').AsFloat            :=0;
   Query_Exe.ParamByName('PF2T_PRECO_TAB').AsFloat        :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_PRECO_FPGTO').AsFloat      :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_PRECO_UCPR').AsFloat       :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_PRECO_CUS').AsFloat        :=Tb_Pfor02_OrcPF2PU_INT.AsFloat;
   Query_Exe.ParamByName('PF2T_PRECO_MAXCONS').AsFloat    :=Tb_Pfor02_OrcPF2PRECO_MAXCONS.AsFloat;
   Query_Exe.ParamByName('PF2T_IPI_PERC').AsFloat         :=Tb_Pfor02_OrcPF2IPI_PERC.AsFloat;
   Query_Exe.ParamByName('PF2T_IPI_PRED').AsFloat         :=Tb_Pfor02_OrcPF2IPI_PRED.AsFloat;
   Query_Exe.ParamByName('PF2T_ICMS_PERC').AsFloat        :=Tb_Pfor02_OrcPF2ICMS_PERC.AsFloat;
   Query_Exe.ParamByName('PF2T_COMISV01_PERC').AsFloat    :=0;
   Query_Exe.ParamByName('PF2T_PIS_PERC').AsFloat         :=Tb_Pfor02_OrcPF2PIS_PERC.AsFloat;
   Query_Exe.ParamByName('PF2T_COFINS_PERC').AsFloat      :=Tb_Pfor02_OrcPF2COFINS_PERC.AsFloat;
   Query_Exe.ParamByName('PF2T_DESCFIN_PERC').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_ACRES_PERC').AsFloat       :=0;
   Query_Exe.ParamByName('PF2T_ICMS_PRED').AsFloat        :=Tb_Pfor02_OrcPF2ICMS_PRED.AsFloat;
   Query_Exe.ParamByName('PF2T_ST_IVA').AsFloat           :=Tb_Pfor02_OrcPF2ST_IVA.AsFloat;
   Query_Exe.ParamByName('PF2T_ST_PREDUT').AsFloat        :=Tb_Pfor02_OrcPF2ST_PERCRED.AsFloat;
   Query_Exe.ParamByName('PF2T_ST_ICMSRED').AsFloat       :=0;
   Query_Exe.ParamByName('PF2T_ST_ICMSDEB').AsFloat       :=Tb_Pfor02_OrcPF2ST_ICMSDEB.AsFloat;
   Query_Exe.ParamByName('PF2T_ICMSSN_PERC').AsFloat      :=Tb_Pfor02_OrcPF2ICMSSN_PERC.AsFloat;
   Query_Exe.ParamByName('PF2T_PED1_DESCRAT').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_PED1_ACRERAT').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_PED1_VALSEG').AsFloat      :=0;
   Query_Exe.ParamByName('PF2T_VALFRE').AsFloat           :=valfloat(edt_valfre.text);
   Query_Exe.ParamByName('PF2T_VALFRE_PERC').AsFloat      :=0;
   Query_Exe.ParamByName('PF2T_VALFRE_ICMS_ALIQ').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_VALFRE_ICMS_VALOR').AsFloat    :=0;

   Query_Exe.ParamByName('PF2T_VALFRE_IPIICMS_ALIQ').AsFloat  :=0;
   Query_Exe.ParamByName('PF2T_VALFRE_IPIICMS_VALOR').AsFloat :=0;

   Query_Exe.ParamByName('PF2T_PED1_TARBAN').AsFloat          :=0;
   Query_Exe.ParamByName('PF2T_PED1_OUTDESP').AsFloat         :=0;
   Query_Exe.ParamByName('PF2T_CST').AsString                 :=Tb_Pfor02_OrcPF2SIT.AsString;
   Query_Exe.ParamByName('PF2T_CST_PIS').AsString             :=Tb_Pfor02_OrcPF2PIS_CST.AsString;
   Query_Exe.ParamByName('PF2T_CST_COFINS').AsString          :=Tb_Pfor02_OrcPF2COFINS_CST.AsString;
   Query_Exe.ParamByName('PF2T_CST_IPI').AsString             :=Tb_Pfor02_OrcPF2IPI_CST.AsString;

   Query_Exe.ParamByName('PF2T_DESCCOMPL').AsString           :='';
   Query_Exe.ParamByName('PF2T_CSOSN').AsString               :=Tb_Pfor02_OrcPF2CSOSN.AsString;
   Query_Exe.ParamByName('PF2T_CSOSN_ORI').AsString           :=Tb_Pfor02_OrcPF2CSOSN_ORI.AsString;
   Query_Exe.ParamByName('PF2T_PROMOCAO').AsString            :='';
   Query_Exe.ParamByName('PF2T_QTDDUP').AsInteger             :=1;
   Query_Exe.ParamByName('PF2T_QTDDUP_ANT').AsInteger         :=1;
   Query_Exe.ParamByName('PF2T_PRAZOS').AsString              :='';
   Query_Exe.ParamByName('PF2T_TIPOMOV').AsInteger            :=0;
   Query_Exe.ParamByName('PF2T_ITEM_ANT').AsInteger            :=0;
   Query_Exe.ParamByName('PF2T_HISTORICO_ANT').AsString        :='';
   Query_Exe.ParamByName('PF2T_CODPRO_ANT').AsString           :='';
   Query_Exe.ParamByName('PF2T_QTDPED_ANT').AsFloat            :=0;

   Query_Exe.ParamByName('PF2T_CODFP').AsInteger               := 0;
   Query_Exe.ParamByName('PF2T_NOMFP').AsString                := '';
   Query_Exe.ParamByName('PF2T_BAIXA').AsString                := 'N';
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC01').AsFloat      := 0;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC02').AsFloat      := 0;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC03').AsFloat      := 0;

   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC01_ANT').AsFloat  := 0;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC02_ANT').AsFloat  := 0;
   Query_Exe.ParamByName('PF2T_PED1_DESC_PERC03_ANT').AsFloat  := 0;
   Query_Exe.ParamByName('PF2T_CODUSR').AsInteger              := 0;
   Query_Exe.ParamByName('PF2T_DATAPED').AsDateTime            := DATE;

   //LINDOMAR
   Query_Exe.ParamByName('PF2T_TIPO_EVENTO').AsInteger         :=0;
   Query_Exe.ParamByName('PF2T_HISTORICO').AsString            :='Pedido ';

   Query_Exe.ParamByName('PF2T_TIPO_EVENTO').AsInteger         :=1;

   Query_Exe.ParamByName('PF2T_DESC_CAB').AsFloat                :=0;

   Query_Exe.ParamByName('PF2T_VD_IPI_Valor').AsFloat    :=valfloat(edt_totipi.Text);
   Query_Exe.ParamByName('PF2T_VD_ICMSST_BASE').AsFloat  :=0;
   Query_Exe.ParamByName('PF2T_VD_ICMSST_VALOR').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_VD_ICMS_BASE').AsFloat    :=0;
   Query_Exe.ParamByName('PF2T_VD_ICMS_VALOR').AsFloat   :=0;

   Query_Exe.ParamByName('PF2T_VD_PIS_BASE').AsFloat     :=0;
   Query_Exe.ParamByName('PF2T_VD_PIS_VALOR').AsFloat    :=0;

   Query_Exe.ParamByName('PF2T_VD_COFINS_BASE').AsFloat  :=0;
   Query_Exe.ParamByName('PF2T_VD_COFINS_VALOR').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_ALTDUP').AsString         :='N';

   Query_Exe.ParamByName('PF2T_IMP_IMP_ALIQ').AsFloat    :=0;
   Query_Exe.ParamByName('PF2T_IMP_IMP_VALOR').AsFloat   :=0;

   Query_Exe.ParamByName('PF2T_PED1_OUTVDUP').AsFloat    :=0;

   Query_Exe.ParamByName('PF2T_OUTDESP').AsFloat           :=0;
   Query_Exe.ParamByName('PF2T_OUTDESP_ICMS_ALIQ').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_OUTDESP_ICMS_VALOR').AsFloat:=0;

   Query_Exe.ParamByName('PF2T_TOTSEG').AsFloat           :=0;
   Query_Exe.ParamByName('PF2T_TOTSEG_ICMS_ALIQ').AsFloat :=0;
   Query_Exe.ParamByName('PF2T_BASER_IPI').AsFloat        :=0;



    Query_Exe.ParamByName('PF2T_IPIQTDUNID').AsFloat        :=Tb_Pfor02_OrcPF2IPIQTDUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_IPIVUNID').AsFloat        :=Tb_Pfor02_OrcPF2IPIVUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_PISQTDUNID').AsFloat        :=Tb_Pfor02_OrcPF2PISQTDUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_PISVUNID').AsFloat        :=Tb_Pfor02_OrcPF2PISVUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_COFINSQTDUNID').AsFloat        :=Tb_Pfor02_OrcPF2COFINSQTDUNID.AsFloat;
   Query_Exe.ParamByName('PF2T_COFINSVUNID').AsFloat        :=Tb_Pfor02_OrcPF2COFINSVUNID.AsFloat;
   try
      Query_Exe.ExecSQL;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(Query_Exe,3235,'_lerarq','CADPF1');
         result:=false;
         end;
      end;

   end;
// termino somente para arredondar ipi


freeandnil(query_exe);




result:=true;



end;

end.
