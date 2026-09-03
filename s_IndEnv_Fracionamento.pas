unit s_IndEnv_Fracionamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBClient, Grids, DBGrids, DBTables,
  Buttons, ComCtrls, Mask, ToolEdit, DBCtrls, RLReport,jpeg, RLRichFilter,
  RLFilters, RLPDFFilter;

type
  TFrm_IndEnv_Fracionamento = class(TForm)
    src_frac_embalagem: TDataSource;
    src_CADFRAC03_PN: TDataSource;
    src_CADFRAC04_PNE: TDataSource;
    Tb_CADFRAC04_PNE: TQuery;
    Tb_CADFRAC04_PNEPNE_CODPRO: TFloatField;
    Tb_CADFRAC04_PNEPNE_QTD: TFloatField;
    Tb_CADFRAC04_PNEnompro: TStringField;
    Tb_CADFRAC04_PNEundpro: TStringField;
    Tb_CADFRAC04_PNEmarcapro: TStringField;
    Tb_CADFRAC02_EMB: TQuery;
    Tb_CADFRAC02_EMBMP_CODPRO: TFloatField;
    Tb_CADFRAC02_EMBMP_QTD: TFloatField;
    Tb_CADFRAC02_EMBundpro: TStringField;
    Tb_CADFRAC02_EMBnompro: TStringField;
    Tb_CADFRAC02_EMBmarcapro: TStringField;
    Tb_CADFRAC02_EMBMP_UTILIZA: TStringField;
    Tb_CADFRAC02_EMBCPTIPO: TFloatField;
    Tb_CADFRAC02_EMBtipo: TStringField;
    u_CADFRAC02_EMB: TUpdateSQL;
    Tb_CADFRAC04_PNEtipo: TStringField;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsLista: TTabSheet;
    Panel2: TPanel;
    gbprodfracionar: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    gb_frac_embalagem: TGroupBox;
    DBGrid_CADFRAC02_EMB: TDBGrid;
    Panel_novos: TPanel;
    GroupBox1: TGroupBox;
    DBGrid_CADFRAC03_PN: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid_CADFRAC04_PNE: TDBGrid;
    tsRelatorio: TTabSheet;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    cb_tppesq: TComboBox;
    edt_nomepesq: TEdit;
    bbAtualizar: TBitBtn;
    Panel4: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    bbIncluir: TBitBtn;
    bbCancelar: TBitBtn;
    bbExcluir: TBitBtn;
    bbGravar: TBitBtn;
    bbImprimir: TBitBtn;
    Tb_Frac01_Fracionar: TQuery;
    src_Frac01_Fracionar: TDataSource;
    DBGrid1: TDBGrid;
    Tb_Frac01_FracionarCF_CHAVE: TFloatField;
    Tb_Frac01_FracionarCF_CHAVE_ANO: TFloatField;
    Tb_Frac01_FracionarCF_DATHOR: TDateTimeField;
    Tb_Frac01_FracionarCF_CODUSR: TFloatField;
    Tb_Frac01_FracionarCF_NOMUSR: TStringField;
    Tb_Frac01_FracionarCF_NOMCOMPUTADOR: TStringField;
    Tb_Frac01_FracionarCF_CODPRO: TFloatField;
    Tb_Frac01_FracionarCF_QTD: TFloatField;
    Tb_Frac01_FracionarCF_CHAVE_OP: TFloatField;
    Tb_Frac01_FracionarCF_CHAVE_OP_ANO: TFloatField;
    Label62: TLabel;
    edt_datini: TDateEdit;
    Label63: TLabel;
    edt_datfin: TDateEdit;
    Tb_Frac01_Fracionarnompro: TStringField;
    Tb_Frac01_Fracionarundpro: TStringField;
    Tb_Frac01_Fracionarmarcapro: TStringField;
    DBE_CF_CODPRO: TDBEdit;
    DBE_CF_CHAVE_OP: TDBEdit;
    Label4: TLabel;
    DBE_CF_DATHOR: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBE_nompro: TDBEdit;
    Label7: TLabel;
    DBE_marcapro: TDBEdit;
    Label8: TLabel;
    dbe_CF_QTD: TDBEdit;
    DBE_undpro: TDBEdit;
    Label9: TLabel;
    DB_CF_CODPRO: TDBEdit;
    DB_CF_QTD: TDBEdit;
    DB_undpro: TDBEdit;
    DB_nompro: TDBEdit;
    DB_marcapro: TDBEdit;
    tb_CADFRAC03_PN: TQuery;
    tb_CADFRAC03_PNPN_CODPRO: TFloatField;
    tb_CADFRAC03_PNPN_QTD: TFloatField;
    tb_CADFRAC03_PNnompro: TStringField;
    tb_CADFRAC03_PNundpro: TStringField;
    tb_CADFRAC03_PNmarcapro: TStringField;
    Tb_CADFRAC02_EMBCFE_CHAVE: TFloatField;
    Tb_CADFRAC02_EMBCFE_CHAVE_ANO: TFloatField;
    tb_CADFRAC03_PNPN_CHAVE: TFloatField;
    tb_CADFRAC03_PNPN_CHAVE_ANO: TFloatField;
    Tb_CADFRAC04_PNEPNE_CHAVE: TFloatField;
    Tb_CADFRAC04_PNEPNE_CHAVE_ANO: TFloatField;
    Tb_CADFRAC04_PNEPNE_CODMP: TFloatField;
    U_Frac01_Fracionar: TUpdateSQL;
    U_CADFRAC03_PN: TUpdateSQL;
    DBNavigator2: TDBNavigator;
    Tb_CADFRAC02_EMBCFE_CODMP: TFloatField;
    Tb_CADFRAC04_PNEPNE_TIPO: TFloatField;
    Tb_Frac01_Fracionarqtdgrml: TFloatField;
    tb_CADFRAC03_PNqtdgrml: TFloatField;
    Label10: TLabel;
    lbl_qtdfalta: TStaticText;
    Tb_Frac01_Fracionarqtdgrml_total: TFloatField;
    tb_CADFRAC03_PNqtdgrml_total: TFloatField;
    RLReport1: TRLReport;
    cds_rel_frac01_fracionar: TClientDataSet;
    cds_rel_frac01_fracionarfrac01_codigo: TStringField;
    cds_rel_frac01_fracionarfrac01_qtde: TStringField;
    cds_rel_frac01_fracionarfrac01_und: TStringField;
    cds_rel_frac01_fracionarfrac01_nome: TStringField;
    cds_rel_frac01_fracionarfrac01_marca: TStringField;
    cds_rel_frac01_fracionarfrac02_codigo: TStringField;
    cds_rel_frac01_fracionarfrac02_qtde: TStringField;
    cds_rel_frac01_fracionarfrac02_und: TStringField;
    cds_rel_frac01_fracionarfrac02_nompro: TStringField;
    cds_rel_frac01_fracionarfrac02_marcapro: TStringField;
    cds_rel_frac01_fracionarfrac02_reutilizar: TStringField;
    src_rel_frac01_fracionar: TDataSource;
    cds_rel_CADFRAC03_PN: TClientDataSet;
    src_rel_CADFRAC03_PN: TDataSource;
    RLBand_cab: TRLBand;
    RLImage_logo: TRLImage;
    lblcab_empresa: TRLLabel;
    lblcab_obsrel: TRLLabel;
    lblcab_dathor_emi: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lblcab_fantasia: TRLLabel;
    RLBand_detfrac01: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLcabsubdet_frac01: TRLBand;
    RLBand1: TRLBand;
    rldet_frac01_codigo: TRLDBText;
    rldet_frac01_nome: TRLDBText;
    rldet_frac01_marca: TRLDBText;
    rldet_frac01_qtde: TRLDBText;
    rldet_frac01_und: TRLDBText;
    rldet_sep01_det: TRLLabel;
    rldet_frac02_codigo: TRLDBText;
    rldet_frac02_nompro: TRLDBText;
    rldet_frac02_marcapro: TRLDBText;
    rldet_frac02_qtde: TRLDBText;
    rldet_frac02_und: TRLDBText;
    cds_rel_frac01: TClientDataSet;
    src_rel_frac01: TDataSource;
    cds_rel_frac01nompro: TStringField;
    cds_rel_CADFRAC03_PNfrac03_codpro: TStringField;
    cds_rel_CADFRAC03_PNfrac03_qtde: TStringField;
    cds_rel_CADFRAC03_PNfrac03_und: TStringField;
    cds_rel_CADFRAC03_PNfrac03_nompro: TStringField;
    cds_rel_CADFRAC03_PNfrac03_marca: TStringField;
    cds_rel_CADFRAC03_PNfrac04_codpro: TStringField;
    cds_rel_CADFRAC03_PNfrac04_und: TStringField;
    cds_rel_CADFRAC03_PNfrac04_nompro: TStringField;
    cds_rel_CADFRAC03_PNfrac04_marcapro: TStringField;
    cds_rel_CADFRAC03_PNfrac04_qtde: TStringField;
    cds_rel_frac01codpro: TStringField;
    rlcab_frac01_codigo: TRLLabel;
    rlcab_frac01_nome: TRLLabel;
    rlcab_frac01_marca: TRLLabel;
    rlcab_frac01_qtde: TRLLabel;
    rlcab_sep01_det: TRLLabel;
    rlcab_frac01_und: TRLLabel;
    rlcab_frac02_codigo: TRLLabel;
    rlcab_frac02_nompro: TRLLabel;
    rlcab_frac02_marcapro: TRLLabel;
    rlcab_frac02_qtde: TRLLabel;
    rlcab_frac02_und: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    rlcab_frac03_codpro: TRLLabel;
    rlcab_frac03_nompro: TRLLabel;
    rlcab_frac03_marca: TRLLabel;
    rlcab_frac03_qtde: TRLLabel;
    rlcab_frac03_und: TRLLabel;
    rlcab_frac04_codpro: TRLLabel;
    rlcab_sep03: TRLLabel;
    rlcab_frac04_nompro: TRLLabel;
    rlcab_frac04_marcapro: TRLLabel;
    rlcab_frac04_qtde: TRLLabel;
    rlcab_frac04_und: TRLLabel;
    RLBand3: TRLBand;
    rldet_frac03_codpro: TRLDBText;
    rldet_frac03_nompro: TRLDBText;
    rldet_frac03_marca: TRLDBText;
    rldet_frac03_qtde: TRLDBText;
    rldet_frac03_und: TRLDBText;
    rldet_sep03: TRLLabel;
    rldet_frac04_codpro: TRLDBText;
    rldet_frac04_nompro: TRLDBText;
    rldet_frac04_marcapro: TRLDBText;
    rldet_frac04_qtde: TRLDBText;
    rldet_frac04_und: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLWord: TRLRichFilter;
    lblcab_frac01: TRLLabel;
    lblcab_frac02: TRLLabel;
    lblcab_frac03: TRLLabel;
    lblcab_frac04: TRLLabel;
    rlcab_obs: TRLLabel;
    tb_CADFRAC03_PNPN_QTDUND_MASTER: TFloatField;
    mant_tb_CADFRAC03_PN: TClientDataSet;
    mant_tb_CADFRAC03_PNcodpro: TFloatField;
    Panel5: TPanel;
    bbexcluir_CADFRAC03_PN: TBitBtn;
    Tb_Frac01_FracionarCF_QTD_PERDAS: TFloatField;
    tb_CADFRAC03_PNPN_QTD_PERDAS: TFloatField;
    cds_rel_CADFRAC03_PNfrac03_qtde_perdas: TStringField;
    StaticText6: TStaticText;
    DBE_CF_QTD_PERDAS: TDBEdit;
    Label11: TLabel;
    lbl_percperdas: TStaticText;
    Tb_Frac01_Fracionarprazoval_mes: TFloatField;
    StaticText7: TStaticText;
    DBE_CF_DTVCTO: TDBEdit;
    Tb_Frac01_FracionarCF_DTVCTO: TDateTimeField;
    Tb_Frac01_FracionarCF_LOTE: TStringField;
    StaticText8: TStaticText;
    DBCb_CF_LOTE: TDBComboBox;
    BitBtn1: TBitBtn;
    Label12: TLabel;
    lbl_estoque: TStaticText;
    GroupBox3: TGroupBox;
    Query_lotes: TQuery;
    src_lotes: TDataSource;
    Query_lotesCLNUMERO: TStringField;
    Query_lotesCLDTVCTO: TDateTimeField;
    Query_lotesCLQTD: TFloatField;
    DBGrid2: TDBGrid;
    Tb_CADFRAC02_EMBCFE_LOTE: TStringField;
    Tb_CADFRAC02_EMBCFE_DTVCTO: TDateTimeField;
    Tb_CADFRAC04_PNEPNE_LOTE: TStringField;
    Tb_CADFRAC04_PNEPNE_DTVCTO: TDateTimeField;
    tb_CADFRAC03_PNPN_LOTE: TStringField;
    tb_CADFRAC03_PNPN_DTVCTO: TDateTimeField;
    U_CADFRAC04_PNE: TUpdateSQL;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_CADFRAC02_EMBDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid_CADFRAC03_PNColExit(Sender: TObject);
    procedure DBGrid_CADFRAC03_PNKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_CADFRAC03_PNKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbIncluirClick(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure DB_CF_CODPROExit(Sender: TObject);
    procedure DB_CF_CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DB_CF_CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure DB_CF_QTDExit(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure Tb_Frac01_FracionarAfterCancel(DataSet: TDataSet);
    procedure Tb_Frac01_FracionarAfterDelete(DataSet: TDataSet);
    procedure Tb_Frac01_FracionarAfterEdit(DataSet: TDataSet);
    procedure Tb_Frac01_FracionarAfterInsert(DataSet: TDataSet);
    procedure Tb_Frac01_FracionarAfterPost(DataSet: TDataSet);
    procedure src_Frac01_FracionarDataChange(Sender: TObject;
      Field: TField);
    procedure src_CADFRAC03_PNDataChange(Sender: TObject; Field: TField);
    procedure tb_CADFRAC03_PNAfterEdit(DataSet: TDataSet);
    procedure tb_CADFRAC03_PNAfterInsert(DataSet: TDataSet);
    procedure Tb_Frac01_FracionarBeforePost(DataSet: TDataSet);
    procedure tb_CADFRAC03_PNBeforePost(DataSet: TDataSet);
    procedure bbImprimirClick(Sender: TObject);
    procedure DB_CF_CODPROEnter(Sender: TObject);
    procedure DBGrid_CADFRAC03_PNColEnter(Sender: TObject);
    procedure tb_CADFRAC03_PNBeforeDelete(DataSet: TDataSet);
    procedure DBGrid_CADFRAC02_EMBExit(Sender: TObject);
    procedure bbexcluir_CADFRAC03_PNClick(Sender: TObject);
    procedure tb_CADFRAC03_PNAfterPost(DataSet: TDataSet);
    procedure tb_CADFRAC03_PNAfterDelete(DataSet: TDataSet);
    procedure DBE_CF_QTD_PERDASExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBCb_CF_LOTEClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid_CADFRAC04_PNEColEnter(Sender: TObject);

  private
    { Private declarations }
    mQtdAnt: Real;
    mCodProAnt: Real;
    mQtdGrML_Faltam: Real;
//    mperdas_faltam: real;
    mQtdGrML_pn_ant: Real;
    mCodFrac01_Ant: Real;
    mQtdFrac01_Ant: Real;
    mperc_perdas: real;

     mQtdPerdas_ant: real;

    mFrac03_Codpro: Real;

    function fJaDigitado(pCodpro: Real; pTabela: tDataSet): Boolean;


    function fQtdLivre: Real;




    procedure fLiberarBloqueiaEdicao(pBloqueia: Boolean);


    procedure fLimparCampos;


    procedure pAtualizaBotoes(pEditando: Boolean);


    function fLerCADFRAC02_EMB(pChave,pChave_ano: Real): Boolean;
    function fLerCADFRAC02_EMB_INTERNO: Boolean;



    function fLerCADFRAC03_PN(pChave,pChave_ano: Real): Boolean;

    function fLerCADFRAC04_PNE(pChave,pChave_ano,pCodpro: Real): Boolean;


    function fGerarOp(pChave: Integer; pChave_ano: Integer): Boolean;



    function fBaixarMP(pChave,pLotSeq: Integer; pCancelamento: Boolean): Boolean;




    function fEntrarAcabado(pChave,pLotSeq: Integer; pCancelamento: Boolean): Boolean;


    procedure pApresentaTotais;


    function fExcluirOP(pChave,pChave_ano: Integer): Boolean;


    function fValidarEstoque(pExclusao: Boolean) :Boolean;

    procedure fCarregarComboLotes;


    procedure fMostrarVencimento(pLote: String);



    function fSqlLote(pCodMat: String): String;
    function fSqlDtVcto(pCodMat: String): String;


    procedure fCaregaroUltimoLoteValido(pCodPro: Real);



    function fTestarEstoquedoProdutodeOrigem: String;



    function fTestarEstoquedoMaterialdeEmbalagem: String;


    function fEstoqueNegativo(pchave,pchave_ano,pcodemp: integer): Boolean;


  public
    { Public declarations }
  end;

var
  Frm_IndEnv_Fracionamento: TFrm_IndEnv_Fracionamento;

implementation

uses S_DM1, s_lerarq_geral, Func, lerarq, func_excecoes, S_Ocorrencias,
  Math, S_DM3;

{$R *.dfm}

procedure TFrm_IndEnv_Fracionamento.BitBtn2Click(Sender: TObject);
begin
close;
end;



procedure TFrm_IndEnv_Fracionamento.FormCreate(Sender: TObject);
var
   mjpeg: TJPEGImage;


begin

Tb_CADFRAC04_PNEPNE_DTVCTO.EditMask     :=pEditMascData;
Tb_CADFRAC02_EMBCFE_DTVCTO.EditMask     :=pEditMascData;
tb_CADFRAC03_PNPN_DTVCTO.EditMask      :=pEditMascData;

mAnt_tb_CADFRAC03_PN.CreateDataSet;
mAnt_tb_CADFRAC03_PN.Open;

mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO1',mjpeg)=true then
   begin
   RLImage_logo.Picture.Bitmap.Assign(mjpeg);
   RLImage_logo.visible := True;
   end
else
   RLImage_logo.visible := False;
freeandnil(mjpeg);
cds_rel_frac01.CreateDataSet;


cds_rel_frac01_fracionar.CreateDataSet;
cds_rel_CADFRAC03_PN.CreateDataSet;



RLReport1.Borders.DrawLeft      :=true;
RLReport1.Borders.DrawTop       :=true;
RLReport1.Borders.DrawRight     :=true;
RLReport1.Borders.DrawBottom    :=true;
RLBand_detfrac01.Borders.DrawBottom    :=true;


rlcab_frac01_nome.Borders.DrawLeft     :=true;
rlcab_frac01_marca.Borders.DrawLeft    :=true;
rlcab_frac01_qtde.Borders.DrawLeft     :=true;
rlcab_frac01_und.Borders.DrawLeft      :=true;
rlcab_frac02_codigo.Borders.DrawLeft   :=true;
rlcab_frac02_nompro.Borders.DrawLeft   :=true;
rlcab_frac02_marcapro.Borders.DrawLeft :=true;
rlcab_frac02_qtde.Borders.DrawLeft     :=true;
rlcab_frac02_und.Borders.DrawLeft      :=true;


rldet_frac01_nome.Borders.DrawLeft     :=true;
rldet_frac01_marca.Borders.DrawLeft    :=true;
rldet_frac01_qtde.Borders.DrawLeft     :=true;
rldet_frac01_und.Borders.DrawLeft      :=true;
rldet_frac02_codigo.Borders.DrawLeft   :=true;
rldet_frac02_nompro.Borders.DrawLeft   :=true;
rldet_frac02_marcapro.Borders.DrawLeft :=true;
rldet_frac02_qtde.Borders.DrawLeft     :=true;
rldet_frac02_und.Borders.DrawLeft      :=true;

lblcab_frac02.Borders.DrawLeft     :=true;
lblcab_frac02.Borders.DrawBottom   :=true;
lblcab_frac01.Borders.DrawBottom   :=true;

lblcab_frac04.Borders.DrawLeft     :=true;
lblcab_frac04.Borders.DrawBottom   :=true;
lblcab_frac03.Borders.DrawBottom   :=true;



rlcab_frac03_nompro.Borders.DrawLeft     :=true;
rlcab_frac03_marca.Borders.DrawLeft    :=true;
rlcab_frac03_qtde.Borders.DrawLeft     :=true;
rlcab_frac03_und.Borders.DrawLeft      :=true;
rlcab_frac04_codpro.Borders.DrawLeft   :=true;
rlcab_frac04_nompro.Borders.DrawLeft   :=true;
rlcab_frac04_marcapro.Borders.DrawLeft :=true;
rlcab_frac04_qtde.Borders.DrawLeft     :=true;
rlcab_frac04_und.Borders.DrawLeft      :=true;



rldet_frac03_nompro.Borders.DrawLeft     :=true;
rldet_frac03_marca.Borders.DrawLeft    :=true;
rldet_frac03_qtde.Borders.DrawLeft     :=true;
rldet_frac03_und.Borders.DrawLeft      :=true;
rldet_frac04_codpro.Borders.DrawLeft   :=true;
rldet_frac04_nompro.Borders.DrawLeft   :=true;
rldet_frac04_marcapro.Borders.DrawLeft :=true;
rldet_frac04_qtde.Borders.DrawLeft     :=true;
rldet_frac04_und.Borders.DrawLeft      :=true;

rldet_sep01_det.Borders.DrawLeft      :=true;
rlcab_sep01_det.Borders.DrawLeft      :=true;
RLSubDetail1.Borders.DrawBottom       :=true;
RLSubDetail2.Borders.DrawBottom       :=true;

rldet_sep03.Borders.DrawLeft          :=true;
rlcab_sep03.Borders.DrawLeft          :=true;
RLcabsubdet_frac01.Borders.Drawtop    :=true;
RLcabsubdet_frac01.Borders.Drawtop    :=true;

RLcabsubdet_frac01.Borders.Drawbottom    :=true;

RLBand2.Borders.Drawbottom               :=true;
mQtdGrML_Faltam:=0;
//mperdas_faltam :=0;
mQtdGrML_pn_ant:=0;
pApresentaTotais;



mQtdAnt   :=0;
mCodProAnt:=0;

edt_datini.Date:=Date;
edt_datfin.Date:=Date;

tsRelatorio.TabVisible:=false;
bbAtualizarClick(self);


end;

procedure TFrm_IndEnv_Fracionamento.DBGrid_CADFRAC02_EMBDblClick(
  Sender: TObject);
begin
if bbGravar.enabled=true then
   begin
   if Tb_Frac01_FracionarCF_CODPRO.IsNull=false then
      begin
      tb_CADFRAC02_EMB.edit;
      if tb_CADFRAC02_EMBMP_UTILIZA.AsString='Nao' then
         tb_CADFRAC02_EMBMP_UTILIZA.AsString:='Sim'
      else
         tb_CADFRAC02_EMBMP_UTILIZA.AsString:='Nao';
      tb_CADFRAC02_EMB.post;
      end;
   end;

end;

procedure TFrm_IndEnv_Fracionamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (FormState<>[fsModal]) then
   action:=cafree;

end;


procedure TFrm_IndEnv_Fracionamento.fCaregaroUltimoLoteValido(pCodPro: Real);
var
query_temp: TQuery;
begin
query_temp:=TQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.sql.add('SELECT cldtvcto,clnumero FROM cadlgc '
                  +' where CLCODPRO=:CODPRO '
                  +' order by CLDTVCTO DESC,CLNUMERO');
query_temp.parambyname('CODPRO').AsFloat:=pCodPro;

query_temp.SQL.text:='Select * from ('
                    +query_temp.SQL.Text
                    +') t2 where rownum < 2 ';
try
   query_temp.Open;
   tb_CADFRAC03_PNPN_LOTE.Value:=query_temp.fieldbyname('CLNUMERO').asstring;
   tb_CADFRAC03_PNPN_DTVCTO.Value:=query_temp.fieldbyname('CLDTVCTO').asdatetime;
except on e : exception do
   ex_erroSql_Novo(query_temp,563,'erro ao ler cadlgc '+e.Message ,'CADLGC');
   end;
query_temp.close;
freeandnil(query_temp);

end;
procedure TFrm_IndEnv_Fracionamento.DBGrid_CADFRAC03_PNColExit(Sender: TObject);
begin
if tb_CADFRAC03_PN.State in [dsEdit, dsInsert] then
   begin
   if tb_CADFRAC03_PNPN_CODPRO.AsFloat>0  then
      begin

      if tb_CADFRAC03_PNPN_CODPRO.AsFloat=tb_Frac01_FracionarCF_CODPRO.AsFloat then
         begin
         MessageDlg('Produto Novo Não Pode ser o Mesmo a ser fracionado!',mtWarning,[mbOk],0);
         DBGrid_CADFRAC03_PN.SelectedField:=Tb_Frac01_FracionarCF_CODPRO;
         abort;
         end;
      if fLerGenerico_query('CADPRO','PDNOME,PDUND,PDMARCA,PDQTDGRML,PDFRACAO','PDCODPRO=0'+tb_CADFRAC03_PNPN_CODPRO.AsString,query_consulta) then
         begin
         tb_CADFRAC03_PNnompro.AsString    :=query_consulta.fieldbyname('PDNOME').asstring;
         tb_CADFRAC03_PNmarcapro.AsString  :=query_consulta.fieldbyname('PDMARCA').asstring;
         tb_CADFRAC03_PNundpro.AsString    :=query_consulta.fieldbyname('PDUND').asstring;
         tb_CADFRAC03_PNqtdgrml.AsFloat    :=query_consulta.fieldbyname('PDQTDGRML').AsFloat;
         if trim(tb_CADFRAC03_PNPN_LOTE.AsString)='' then
            begin
            fCaregaroUltimoLoteValido(tb_CADFRAC03_PNPN_CODPRO.AsFloat);
            end;


         if (tb_CADFRAC03_PNqtdgrml.AsFloat<>0) and (tb_CADFRAC03_PNPN_QTD.AsFloat=0) then
            begin
            tb_CADFRAC03_PNPN_QTD.AsFloat:=(mQtdGrML_pn_ant+mQtdGrML_Faltam)/tb_CADFRAC03_PNqtdgrml.AsFloat;
            if mperc_perdas>0 then
               begin
               tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat:=(tb_CADFRAC03_PNPN_QTD.AsFloat*mperc_perdas/100);
               if query_consulta.fieldbyname('PDFRACAO').AsInteger=0 then
                  tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat:=Arredonda(tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat,0)
               else
                  tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat:=Arredonda(tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat,DM1.Tb_PargerPCASIND.AsInteger);
               end;


            end;
         if mFrac03_Codpro<>tb_CADFRAC03_PNPN_CODPRO.asfloat then
            begin
            if fJaDigitado(tb_CADFRAC03_PNPN_CODPRO.asfloat,mAnt_tb_CADFRAC03_PN) then
               begin
               DBGrid_CADFRAC03_PN.SelectedField:=Tb_Frac01_FracionarCF_CODPRO;
               abort;
               end;
            end;

        if (DBGrid_CADFRAC03_PN.SelectedField=tb_CADFRAC03_PNPN_QTD) and (mqtdant<>tb_CADFRAC03_PNPN_QTD.asfloat) then
           begin
           if mperc_perdas>0 then
              begin
              tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat:=(tb_CADFRAC03_PNPN_QTD.AsFloat*mperc_perdas/100);
              if query_consulta.fieldbyname('PDFRACAO').AsInteger=0 then
                 tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat:=Arredonda(tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat,0)
              else
                 tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat:=Arredonda(tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat,DM1.Tb_PargerPCASIND.AsInteger);
              end;
           end;
         end
      else
         begin
         MessageDlg('Produto Codigo '+tb_CADFRAC03_PNPN_CODPRO.AsString+' não cadastrado!',mtWarning,[mbOk],0);
         abort;
         end;
      end;
   end;


end;


function TFrm_IndEnv_Fracionamento.fJaDigitado(pCodpro: Real; pTabela: tDataSet): Boolean;
begin
if pTabela.Locate('codpro',pcodpro,[]) then
   begin
   MessageDlg('Produto ja digitado anteriormente!',mtWarning,[mbOk],0);
   result:=true;
   end
else
   result:=false;
end;


procedure TFrm_IndEnv_Fracionamento.DBGrid_CADFRAC03_PNKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Tb_Frac01_FracionarCF_CODPRO.AsFloat>0  then
   begin
   if bbGravar.Enabled=true then
      begin
      if (key=113)  then
         begin
         if not (tb_CADFRAC03_PN.State in [dsedit,dsinsert]) then
            begin
            if tb_CADFRAC03_PNPN_CODPRO.IsNull then
               tb_CADFRAC03_PN.Insert
            else
               tb_CADFRAC03_PN.edit;
            end;
         tb_CADFRAC03_PNPN_CODPRO.AsFloat:=valfloat(fChamaPesqPro(0,'_venda',''));
         DBGrid_CADFRAC03_PNColExit(self);
         end;
      end;
   end;

end;

procedure TFrm_IndEnv_Fracionamento.DBGrid_CADFRAC03_PNKeyPress(Sender: TObject;
  var Key: Char);
begin
if Tb_Frac01_FracionarCF_CODPRO.AsFloat>0  then
   begin
   if DBGrid_CADFRAC03_PN.SelectedField=tb_CADFRAC03_PNPN_CODPRO then
      begin
      if bbGravar.Enabled=true then
         begin
         if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%')) then
            begin
            if not (tb_CADFRAC03_PN.State in [dsedit,dsinsert]) then
               begin
               if tb_CADFRAC03_PNPN_CODPRO.IsNull then
                  tb_CADFRAC03_PN.Insert
               else
                  tb_CADFRAC03_PN.edit;
               end;
            tb_CADFRAC03_PNPN_CODPRO.AsFloat:=valfloat(fChamaPesqPro(0,'_venda',key));
            DBGrid_CADFRAC03_PNColExit(self);
            key:=#0;
            end;
         end;
      end;   
   end;

end;

procedure TFrm_IndEnv_Fracionamento.FormShow(Sender: TObject);
begin
width:=1233;
Height:=576;
fLiberarBloqueiaEdicao(true);
pAtualizaBotoes(false);

end;


procedure TFrm_IndEnv_Fracionamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if bbGravar.enabled then
   begin
   if (Tb_Frac01_FracionarCF_CODPRO.AsFloat=0) or (Tb_Frac01_FracionarCF_QTD.AsFloat=0) or (tb_CADFRAC03_PN.IsEmpty) then
      bbcancelarclick(self)
   else
      begin
      verteclado(0);
      Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes: bbGravar.Click;
         mrNo : bbCANCELAR.Click;
      else CanClose:=False;
         end;

      end;

   end;
end;


procedure TFrm_IndEnv_Fracionamento.fLiberarBloqueiaEdicao(pBloqueia: Boolean);

begin
DB_CF_CODPRO.ReadOnly           := pBloqueia;
DB_CF_QTD.ReadOnly              := pBloqueia;
DBGrid_CADFRAC03_PN.ReadOnly    := pBloqueia;

end;


function TFrm_IndEnv_Fracionamento.fTestarEstoquedoProdutodeOrigem: String;
var
query_testelote: TQuery;
begin
fGerarEvento('AO ENTRAR 468  estoque de origem '+Tb_Frac01_FracionarCF_QTD.AsString);

fGerarEvento('762 lote do produto '+Tb_Frac01_FracionarCF_lote.AsString+' codigo '+Tb_Frac01_FracionarCF_CODPRO.asstring);
query_testelote:=TQuery.Create(nil);
query_testelote.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_testelote.SQL.Clear;
query_testelote.SQL.add('Select CLQTD,CLNUMERO,CLDTVCTO from CADLGC '
                       +' WHERE CLCODPRO=:CODPRO ');
if (trim(Tb_Frac01_FracionarCF_LOTE.AsString)='') or (Tb_Frac01_FracionarCF_LOTE.AsString='X') then
   query_testelote.SQL.add(' and ( CLNUMERO is null or CLNUMERO='+QuotedStr('X')+' or CLNUMERO='+QuotedStr(' ')+') ')
else
   begin
   query_testelote.SQL.add(' and CLNUMERO=:LOTE ');
   query_testelote.parambyname('LOTE').asstring:=Tb_Frac01_FracionarCF_LOTE.AsString;
   end;
query_testelote.parambyname('CODPRO').AsFloat:=Tb_Frac01_FracionarCF_CODPRO.AsFloat;

try
   query_testelote.open;
except on e : exception do
   ex_erroSql_Novo(query_testelote,7694,'erro ao ler materia prima'+e.Message ,'CADLGC');
   end;
if query_testelote.fieldbyname('CLQTD').asfloat<Tb_Frac01_FracionarCF_QTD.AsFloat then
   begin
   result:='Quantidade do lote '+Tb_Frac01_FracionarCF_LOTE.AsString+' solicitada para fracionar '+Tb_Frac01_FracionarCF_QTD.AsString
           +#13+'Quantidade em estoque '+query_testelote.fieldbyname('CLQTD').AsString+#13;
   end
else
   result:='';
query_testelote.Close;
freeandnil(query_testelote);
fGerarEvento('AO sair 800 '+Tb_Frac01_FracionarCF_QTD.AsString);




end;




function TFrm_IndEnv_Fracionamento.fTestarEstoquedoMaterialdeEmbalagem: String;
var
query_testelote: TQuery;
begin
result:='';
query_testelote:=TQuery.Create(nil);
query_testelote.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Tb_CADFRAC04_PNE.First;
While not Tb_CADFRAC04_PNE.Eof do
   begin
   if Tb_CADFRAC04_PNEPNE_CODMP.isnull then
      begin
      Tb_CADFRAC04_PNE.next;
      continue;                             
      end;
   fGerarEvento('810 lote da materia prima '+Tb_CADFRAC04_PNEPNE_LOTE.AsString+' codigo '+Tb_CADFRAC04_PNEPNE_CODMP.asstring);

   query_testelote.Close;;
   query_testelote.SQL.Clear;
   query_testelote.SQL.add('Select CLQTD,CLNUMERO,CLDTVCTO from CADLGC '
                          +' WHERE CLCODPRO=:CODPRO ');
   if (Tb_CADFRAC04_PNEPNE_LOTE.IsNull) or (Tb_CADFRAC04_PNEPNE_LOTE.AsString='X') or (trim(Tb_CADFRAC04_PNEPNE_LOTE.AsString)='') then
      query_testelote.SQL.add(' and ( CLNUMERO is null or CLNUMERO='+QuotedStr('X')+' or CLNUMERO='+QuotedStr(' ')+' or CLNUMERO='+QuotedStr('  ')+') ')
   else
      begin
      query_testelote.SQL.add(' and CLNUMERO=:LOTE ');
      query_testelote.parambyname('LOTE').asstring:=Tb_CADFRAC04_PNEPNE_LOTE.AsString;
      end;
   query_testelote.parambyname('CODPRO').AsFloat:=Tb_CADFRAC04_PNEPNE_CODMP.AsFloat;

//    ex_erroSql_Novo(query_testelote,810,'erro ao ler materia prima' ,'CADLGC');

   try
      query_testelote.open;
   except on e : exception do
      ex_erroSql_Novo(query_testelote,810,'erro ao ler materia prima'+e.Message ,'CADLGC');
      end;
   if query_testelote.fieldbyname('CLQTD').asfloat<Tb_CADFRAC04_PNEPNE_QTD.AsFloat then
      begin
      result:=result+'Quantidade do lote '+Tb_CADFRAC04_PNEPNE_LOTE.AsString+' solicitada para embalar os produtos '+Tb_CADFRAC04_PNEPNE_QTD.AsString
              +#13+'Quantidade em estoque '+query_testelote.fieldbyname('CLQTD').AsString+#13;
      end;
   Tb_CADFRAC04_PNE.Next;
   end;
query_testelote.Close;
freeandnil(query_testelote);




end;



procedure TFrm_IndEnv_Fracionamento.bbIncluirClick(Sender: TObject);
begin
fLiberarBloqueiaEdicao(false);
fLimparCampos;
mAnt_tb_CADFRAC03_PN.EmptyDataSet;

Tb_Frac01_Fracionar.Append;
PageControl1.ActivePage:=tsGeral;
DB_CF_CODPRO.SetFocus;

end;

procedure TFrm_IndEnv_Fracionamento.bbGravarClick(Sender: TObject);
var
query_exe: TQuery;
query_incint: TQuery;
mChaveOP: Integer;
mLotSeqOP: Integer;
mOcorrencias: String;
mtotperdas: real;
begin
mOcorrencias:='';

if valfloat(lbl_estoque.Caption)<Tb_Frac01_FracionarCF_QTD.AsFloat then
   begin
   mOcorrencias:=mOcorrencias+'Quantidade Solicitada '+DB_CF_QTD.Text+' Quantidade Disponivel '+lbl_estoque.Caption+' é invalido!';
   end;


if tb_CADFRAC03_PN.IsEmpty=true then
   begin
   MessageDlg('Favor Digitar o Produto Novo!',mtWarning,[mbOk],0);
   DBGrid_CADFRAC03_PN.SelectedField:=tb_CADFRAC03_PNPN_CODPRO;

   exit;
   end;
fGerarEvento('AO ENTRAR 897 '+Tb_Frac01_FracionarCF_QTD.AsString);
tb_CADFRAC03_PN.First;
While not tb_CADFRAC03_PN.Eof do
   begin
   if tb_CADFRAC03_PNPN_QTD.AsFloat<=0 then
      mOcorrencias:=mOcorrencias+'Produto Novo: '+tb_CADFRAC03_PNPN_CODPRO.AsString+'-'+Tb_CADFRAC03_PNnompro.AsString+' Quantidade = 0 é invalido'+#13;
   While not Tb_CADFRAC04_PNE.Eof do
      begin
      if tb_CADFRAC04_PNEPNE_QTD.AsFloat<=0 then
         mOcorrencias:=mOcorrencias+'Embalagens do Produto Novo: '+Tb_CADFRAC04_PNEPNE_CODMP.AsString+'-'+Tb_CADFRAC04_PNEnompro.AsString+' Quantidade = 0 é invalido'+#13;
      tb_CADFRAC04_PNe.Next;
      end;
   tb_CADFRAC03_PN.Next;
   end;
fGerarEvento('AO ENTRAR 911 '+Tb_Frac01_FracionarCF_QTD.AsString);

mOcorrencias:=mOcorrencias+fTestarEstoquedoProdutodeOrigem;
mOcorrencias:=mOcorrencias+fTestarEstoquedoMaterialdeEmbalagem;

fGerarEvento('AO condluir 919 '+Tb_Frac01_FracionarCF_QTD.AsString);


if trim(mOcorrencias)<>'' then
   begin
   MessageDlg(mOcorrencias+#13+'Favor Corrigir!',mtError,[mbOk],0);
   pAtualizaBotoes(true);
   exit;
   end;
{if mperc_perdas>0 then
   begin
   mtotperdas:=0;
   tb_CADFRAC03_PN.First;
   While not tb_CADFRAC03_PN.eof do
      begin
      mtotperdas:=mtotperdas+tb_CADFRAC03_PNPN_QTD.AsFloat;
      tb_CADFRAC03_PN.Next;
      end;
   if mtotperdas>Tb_Frac01_FracionarCF_QTD_PERDAS.AsFloat then
      begin

      end;
   end;
}
if mQtdGrML_Faltam>0 then
   begin
   if Application.MessageBox(pchar( 'Faltam ainda '+Floattostr(mQtdGrML_Faltam)+' Litros para completar a formula , deseja continuar mesmo assim?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   end;


query_incint:=TQuery.Create(nil);
query_incint.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
if not (tb_frac01_fracionar.state in [dsedit,dsinsert]) then
   begin
   fGerarEvento('antes de editar 954 '+Tb_Frac01_FracionarCF_QTD.AsString);

   tb_frac01_fracionar.edit;
   fGerarEvento('depos de editar 957 '+Tb_Frac01_FracionarCF_QTD.AsString);

   end;
Tb_Frac01_FracionarCF_CHAVE.AsFloat    :=fbuscarSequencia('CADFRAC_'+FormatDateTime('yyyy', pDataSis));
Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat:=valint(FormatDateTime('yyyy', pDataSis));

query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_exe.SQL.Clear;
query_exe.SQL.Add('insert into CADFRAC01_FRACIONAR ('
                 +'CF_CODEMP '
                 +',CF_CHAVE '
                 +',CF_CHAVE_ANO '
                 +',CF_DATHOR  '
                 +',CF_CODUSR '
                 +',CF_NOMUSR '
                 +',CF_NOMCOMPUTADOR  '
                 +',CF_CODPRO '
                 +',CF_QTD  '
                 +',CF_QTD_PERDAS '
                 +',CF_CHAVE_OP '
                 +',CF_CHAVE_OP_ANO  '
                 +',CF_LOTE  '
                 +',CF_DTVCTO  '

                 +') values ('
                 +' :CF_CODEMP '
                 +',:CF_CHAVE '
                 +',:CF_CHAVE_ANO '
                 +',:CF_DATHOR  '
                 +',:CF_CODUSR '
                 +',:CF_NOMUSR '
                 +',:CF_NOMCOMPUTADOR  '
                 +',:CF_CODPRO '
                 +',:CF_QTD  '
                 +',:CF_QTD_PERDAS '
                 +',:CF_CHAVE_OP '
                 +',:CF_CHAVE_OP_ANO  '
                 +',:CF_LOTE  '
                 +',:CF_DTVCTO  '

                 +') ');
query_exe.ParamByName('CF_CODEMP').AsFloat        :=1;
query_exe.ParamByName('CF_CHAVE').AsFloat         :=Tb_Frac01_FracionarCF_CHAVE.AsFloat;
query_exe.ParamByName('CF_CHAVE_ANO').AsFloat     :=Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat;
query_exe.ParamByName('CF_DATHOR').AsDateTime     :=Tb_Frac01_FracionarCF_DATHOR.AsDateTime;
query_exe.ParamByName('CF_CODUSR').AsFloat        :=codusr;
query_exe.ParamByName('CF_NOMUSR').AsString       :=nomusr;
query_exe.ParamByName('CF_NOMCOMPUTADOR').AsString:=NomeComputador;
query_exe.ParamByName('CF_CODPRO').AsFloat        :=Tb_Frac01_FracionarCF_CODPRO.AsFloat;
query_exe.ParamByName('CF_QTD').AsFloat           :=Tb_Frac01_FracionarCF_QTD.AsFloat;
query_exe.ParamByName('CF_QTD_PERDAS').AsFloat    :=Tb_Frac01_FracionarCF_QTD_PERDAS.AsFloat;

query_exe.ParamByName('CF_CHAVE_OP').AsFloat      :=0;
query_exe.ParamByName('CF_CHAVE_OP_ANO').AsFloat  :=0;

query_exe.ParamByName('CF_LOTE').AsString        :=Tb_Frac01_FracionarCF_LOTE.AsString;
query_exe.ParamByName('CF_DTVCTO').AsDateTime    :=Tb_Frac01_FracionarCF_DTVCTO.AsDateTime;



try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_exe,414,'erro ao ler materia prima'+e.Message ,'CADFRAC01_FRACIONAR');
   end;

fGerarEvento('AO INCLUIR 1013 '+Tb_Frac01_FracionarCF_QTD.AsString);
query_incint.Close;
query_incint.SQL.Clear;
query_incint.SQL.Add('Insert into CADFRAC02_EMB ('
                 +'CFE_CODEMP '
                 +',CFE_CHAVE '
                 +',CFE_CHAVE_ANO '
                 +',CFE_CODPRO '
                 +',CFE_CODMP '
                 +',CFE_QTD '
                 +',CFE_REUTILIZA '
                 +',CFE_CHAVE_AJ  '
                 +',CFE_CHAVE_AJ_ANO  '
                 +',CFE_TIPO  '
                 +',CFE_LOTE  '
                 +',CFE_DTVCTO  '
                 +') values ('
                 +' :CFE_CODEMP '
                 +',:CFE_CHAVE '
                 +',:CFE_CHAVE_ANO '
                 +',:CFE_CODPRO '
                 +',:CFE_CODMP '
                 +',:CFE_QTD '
                 +',:CFE_REUTILIZA '
                 +',:CFE_CHAVE_AJ  '
                 +',:CFE_CHAVE_AJ_ANO  '
                 +',:CFE_TIPO  '
                 +',:CFE_LOTE  '
                 +',:CFE_DTVCTO  '

                 +') ');


Tb_CADFRAC02_EMB.First;
While not Tb_CADFRAC02_EMB.eof do
   begin
   query_incint.Close;
   query_incint.ParamByName('CFE_CODEMP').AsFloat        := codemp;
   query_incint.ParamByName('CFE_CHAVE').AsFloat         := Tb_Frac01_FracionarCF_CHAVE.AsFloat;;
   query_incint.ParamByName('CFE_CHAVE_ANO').AsFloat     := Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat;
   query_incint.ParamByName('CFE_CODPRO').AsFloat        := Tb_CADFRAC02_EMBMP_CODPRO.AsFloat;
   query_incint.ParamByName('CFE_CODMP').AsFloat         := Tb_CADFRAC02_EMBCFE_CODMP.AsFloat;
   query_incint.ParamByName('CFE_QTD').AsFloat           := Tb_CADFRAC02_EMBMP_QTD.AsFloat;
   query_incint.ParamByName('CFE_REUTILIZA').AsString    := Tb_CADFRAC02_EMBMP_UTILIZA.Value[1];
   query_incint.ParamByName('CFE_CHAVE_AJ').AsFloat      := 0;
   query_incint.ParamByName('CFE_CHAVE_AJ_ANO').AsFloat  := 0;
   query_incint.ParamByName('CFE_TIPO').AsFloat          := Tb_CADFRAC02_EMBCPTIPO.AsInteger;
   query_incint.ParamByName('CFE_LOTE').AsString         := Tb_CADFRAC02_EMBCFE_LOTE.AsString;
   query_incint.ParamByName('CFE_DTVCTO').AsDateTime     := Tb_CADFRAC02_EMBCFE_DTVCTO.AsDateTime;
   try
      query_incint.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_incint,465,'erro ao ler materia prima'+e.Message ,'CADFRAC02_EMB');
      end;
   Tb_CADFRAC02_EMB.Next;
   end;

tb_CADFRAC03_PN.First;

query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('insert into CADFRAC03_PN ('
                 +' PN_CODEMP '
                 +',PN_CHAVE '
                 +',PN_CHAVE_ANO '
                 +',PN_CODPRO '
                 +',PN_QTD  '
                 +',PN_QTD_PERDAS  '
                 +',PN_QTDUND_MASTER'
                 +',PN_CHAVE_OP '
                 +',PN_CHAVE_OP_ANO '
                 +',PN_LOTE  '
                 +',PN_DTVCTO  '

                 +') values ('
                 +' :PN_CODEMP '
                 +',:PN_CHAVE '
                 +',:PN_CHAVE_ANO '
                 +',:PN_CODPRO '
                 +',:PN_QTD  '
                 +',:PN_QTD_PERDAS  '
                 +',:PN_QTDUND_MASTER'
                 +',:PN_CHAVE_OP '
                 +',:PN_CHAVE_OP_ANO '
                 +',:PN_LOTE  '
                 +',:PN_DTVCTO  '

                 +')');


query_incint.Close;
query_incint.SQL.Clear;
query_incint.SQL.Add('Insert into CADFRAC04_PNE ('
                    +' PNE_CODEMP '
                    +',PNE_CHAVE '
                    +',PNE_CHAVE_ANO '
                    +',PNE_CODPRO '
                    +',PNE_CODMP '
                    +',PNE_QTD '
                    +',PNE_CHAVE_OP '
                    +',PNE_TIPO '
                    +',PNE_CHAVE_OP_ANO '
                    +',PNE_LOTE  '
                    +',PNE_DTVCTO  '

                    +') values ('
                    +' :PNE_CODEMP '
                    +',:PNE_CHAVE '
                    +',:PNE_CHAVE_ANO '
                    +',:PNE_CODPRO '
                    +',:PNE_CODMP '
                    +',:PNE_QTD '
                    +',:PNE_CHAVE_OP '
                    +',:PNE_TIPO '
                    +',:PNE_CHAVE_OP_ANO '
                    +',:PNE_LOTE  '
                    +',:PNE_DTVCTO  '

                    +')');



tb_CADFRAC03_PN.First;
While not tb_CADFRAC03_PN.Eof do
   begin
   query_exe.ParamByName('PN_CODEMP').AsInteger     :=codemp;
   query_exe.ParamByName('PN_CHAVE').AsFloat        :=Tb_Frac01_FracionarCF_CHAVE.AsFloat;
   query_exe.ParamByName('PN_CHAVE_ANO').AsFloat    :=Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat;
   query_exe.ParamByName('PN_CODPRO').AsFloat       :=tb_CADFRAC03_PNPN_CODPRO.AsFloat;
   query_exe.ParamByName('PN_QTD').AsFloat          :=tb_CADFRAC03_PNPN_QTD.AsFloat;
   query_exe.ParamByName('PN_QTD_PERDAS').AsFloat   :=tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat;
   query_exe.ParamByName('PN_QTDUND_MASTER').AsFloat:=tb_CADFRAC03_PNPN_QTDUND_MASTER.AsFloat;


   query_exe.ParamByName('PN_LOTE').AsString         :=tb_CADFRAC03_PNPN_LOTE.AsString;
   query_exe.ParamByName('PN_DTVCTO').AsDateTime     :=tb_CADFRAC03_PNPN_DTVCTO.AsDateTime;


   query_exe.ParamByName('PN_CHAVE_OP').AsFloat    :=0;
   query_exe.ParamByName('PN_CHAVE_OP_ANO').AsFloat:=0;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_exe,510,'erro ao ler materia prima'+e.Message ,'CADFRAC03_PN');
      end;
   Tb_CADFRAC04_PNE.First;
   While not Tb_CADFRAC04_PNE.Eof do
      begin
      query_incint.close;
      query_incint.ParamByName('PNE_CODEMP').AsInteger    :=codemp;
      query_incint.ParamByName('PNE_CHAVE').AsFloat       :=Tb_Frac01_FracionarCF_CHAVE.AsFloat;
      query_incint.ParamByName('PNE_CHAVE_ANO').AsFloat   :=Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat;
      query_incint.ParamByName('PNE_CODPRO').AsFloat      :=Tb_CADFRAC04_PNEPNE_CODPRO.AsFloat;
      query_incint.ParamByName('PNE_CODMP').AsFloat       :=Tb_CADFRAC04_PNEPNE_CODMP.AsFloat;
      query_incint.ParamByName('PNE_QTD').AsFloat         :=Tb_CADFRAC04_PNEPNE_QTD.AsFloat;
      query_incint.ParamByName('PNE_CHAVE_OP').AsFloat    :=mChaveOp;
      query_incint.ParamByName('PNE_TIPO').AsFloat        :=Tb_CADFRAC04_PNEPNE_TIPO.AsFloat;
      query_incint.ParamByName('PNE_CHAVE_OP_ANO').AsFloat:=mLotSeqOP;
      query_incint.ParamByName('PNE_LOTE').AsString       :=Tb_CADFRAC04_PNEPNE_LOTE.AsString;
      query_incint.ParamByName('PNE_DTVCTO').AsDateTime   :=tb_CADFRAC04_PNEPNE_DTVCTO.AsDateTime;
      fGerarEvento('Loe pne '+Tb_CADFRAC04_PNEPNE_LOTE.AsString+' data de vencimento '+tb_CADFRAC04_PNEPNE_DTVCTO.AsString);
      try
         query_incint.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         ex_erroSql_Novo(query_incint,558,'erro ao ler materia prima'+e.Message ,'CADFRAC04_PNE' );
         end;
      Tb_CADFRAC04_PNE.Next;
      end;
   tb_CADFRAC03_PN.Next;
   end;

fGerarOp(Tb_Frac01_FracionarCF_CHAVE.AsInteger,Tb_Frac01_FracionarCF_CHAVE_ANO.AsInteger);



fLiberarBloqueiaEdicao(true);
Tb_Frac01_Fracionar.Post;

end;

function TFrm_IndEnv_Fracionamento.fGerarOp(pChave: Integer; pChave_ano: Integer): Boolean;

var
query_gravarop: TQuery;

mChaveOp: Integer;
mSeq: Integer;
mTotalPREV: Real;
mTotalREAL: Real;

mQtdPREV: Real;
mQtdREAL: Real;

query_exe: TQuery;

query_frac02: TQuery;
query_frac03: TQuery;
query_frac04: TQuery;
mNomPro_Novo: String;

begin
// verificar se ha embalagens a retornor para o estoque


query_frac02:=TQuery.create(nil);
query_frac02.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_frac02.Close;
query_frac02.SQL.clear;
query_frac02.SQL.Add('Select * from  CADFRAC02_EMB '
                         +' WHERE CFE_CHAVE=:CHAVE and CFE_CHAVE_ANO=:CHAVE_ANO '
                         +' and CFE_REUTILIZA='+QuotedStr('S')
                         +' order by CFE_CODPRO ');
query_frac02.ParamByName('CHAVE').AsInteger    :=pChave;
query_frac02.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;

try
   query_frac02.Open;
except on e : exception do
   ex_erroSql_Novo(query_frac02,894,'func Erro:'+e.Message ,'CADFRAC02_EMB');
   end;

While not query_frac02.eof do
   begin
   fAjustarEstoque(0,log_filial_padrao,query_frac02.fieldbyname('CFE_CODMP').AsFloat,query_frac02.fieldbyname('CFE_QTD').AsFloat
                  ,query_frac02.fieldbyname('CFE_LOTE').AsString,'EMBALAGEM DE FRACIONAMENTO DE PRODUTOS'
                  ,null,query_frac02.fieldbyname('CFE_DTVCTO').AsDateTime);
   query_frac02.Next;
   end;
// termino das embalagens a retornar



query_frac03:=TQuery.create(nil);
query_frac03.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_frac04:=TQuery.create(nil);
query_frac04.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_exe:=TQuery.create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;






query_gravarop:=TQuery.create(nil);
query_gravarop.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_frac03.Close;
query_frac03.SQL.clear;
query_frac03.SQL.Add('Select CADFRAC03_PN.*,PDNOME,PDUND,PDMARCA from  CADFRAC03_PN,CADPRO  '
                         +' WHERE PN_CHAVE=:CHAVE and PN_CHAVE_ANO=:CHAVE_ANO '
                         +' and PDCODPRO=PN_CODPRO '
                         +' order by PN_CODPRO ');
query_frac03.ParamByName('CHAVE').AsInteger    :=pChave;
query_frac03.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;

try
   query_frac03.Open;
except on e : exception do
   ex_erroSql_Novo(query_frac03,891,'func Erro:'+e.Message ,'CADFRAC03_PN');
   end;
While not query_frac03.Eof do
   begin
   mNomPro_Novo:=query_frac03.fieldbyname('PDNOME').asstring;
   mChaveOp:=fBuscarChaveOrdemProducao;
   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.Add('Update CADFRAC03_PN set PN_CHAVE_OP=:CHAVE_OP, PN_CHAVE_OP_ANO=:CHAVE_OP_ANO '
                         +' WHERE PN_CHAVE=:CHAVE and PN_CHAVE_ANO=:CHAVE_ANO '
                         +' and PN_CODPRO=:CODPRO ');
   query_exe.ParamByName('CHAVE_OP').AsInteger    :=mChaveOp;
   query_exe.ParamByName('CHAVE_OP_ANO').AsInteger:=ls_lotfab;

   query_exe.ParamByName('CHAVE').AsInteger    :=pChave;
   query_exe.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;

   query_exe.ParamByName('CODPRO').AsFloat     :=query_frac03.fieldbyname('PN_CODPRO').asfloat;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_exe,847,'func Erro:'+e.Message ,'CADFRAC03_PN');
      end;





   query_gravarop.Close;
   query_gravarop.SQL.Clear;
   query_gravarop.SQL.Add('Insert Into CADOP02 ('
                  +'OP2_CODEMP, '
                  +'OP2_FABENV, '
                  +'OP2_LOTSEQ, '
                  +'OP2_CODIGO, '
                  +'OP2_SEQ, '
                  +'OP2_CODPRO,'
                  +'OP2_QTDPREV, '
                  +'OP2_QTDPROD, '
                  +'OP2_PU, '
                  +'OP2_FAB_CHORI,'
                  +'OP2_FAB_CODIGO,'
                  +'OP2_FAB_QTD,'
                  +'OP2_FAB_PU,'
                  +'OP2_SITACAB,'
                  +'OP2_ORIGEM,'
                  +'OP2_NUMERO,'
                  +'OP2_FAB_DTFAB,'
                  +'OP2_FAB_VCTO,'
                  +'OP2_FAB_LOTE'
                  +') values ('
                  +':CODEMP ,'
                  +':FABENV,'
                  +':LOTSEQ, '
                  +':CODIGO ,'
                  +':SEQ,'
                  +':CODPRO,' // codigo do produto
                  +':QTDPREV,' // quantidade prevista
                  +':QTDPROD,' // quantidade produzada
                  +':PU,' // preco unitario
                  +':FAB_CHORI,' // chave de origem
                  +':FAB_CODIGO,' // codigo de origem
                  +':FAB_QTD,' // quantidade de origem
                  +':FAB_PU,' // preco unitario
                  +':SITACAB,' // Situacao do produto acabado
                  +':ORIGEM,' // origem das materias primas 0-normal 1-terceiros
                  +':NUMERO, '
                  +':FAB_DTFAB,'
                  +':FAB_VCTO,'
                  +':FAB_LOTE'
                  +')');

   query_gravarop.ParamByName('CODEMP').AsInteger  :=codemp;
   query_gravarop.ParamByName('FABENV').AsInteger  :=0;
   query_gravarop.ParamByName('LOTSEQ').AsInteger  :=ls_lotfab;
   query_gravarop.ParamByName('CODIGO').AsInteger  :=mChaveOp;
   query_gravarop.ParamByName('SEQ').AsInteger     :=1;
   query_gravarop.ParamByName('CODPRO').AsFloat    :=query_frac03.fieldbyname('PN_CODPRO').AsFloat;  // codigo do produto
   query_gravarop.ParamByName('QTDPREV').AsFloat   :=query_frac03.fieldbyname('PN_QTD').AsFloat;  // quantidade prevista
   query_gravarop.ParamByName('QTDPROD').AsFloat   :=query_frac03.fieldbyname('PN_QTD').AsFloat-query_frac03.fieldbyname('PN_QTD_PERDAS').AsFloat; // quantidade produzada
   query_gravarop.ParamByName('PU').AsFloat        :=0; // preco unitario
   query_gravarop.ParamByName('FAB_CHORI').AsFloat :=0; // chave de origem
   query_gravarop.ParamByName('FAB_CODIGO').AsFloat:=0; // codigo de origem
   query_gravarop.ParamByName('FAB_QTD').AsFloat    :=0; // quantidade de origem
   query_gravarop.ParamByName('FAB_PU').asfloat    :=0;  // preco unitario
   query_gravarop.ParamByName('SITACAB').asfloat   :=0; // Situacao do produto acabado
   query_gravarop.ParamByName('ORIGEM').AsFloat    :=0; //  origem das materias primas 0-normal 1-terceiros
   query_gravarop.ParamByName('NUMERO').AsString        :=' '; //
   query_gravarop.ParamByName('FAB_DTFAB').AsDateTime   :=pdatanula; //
{   query_gravarop.ParamByName('FAB_VCTO').AsDateTime    :=Tb_Frac01_FracionarCF_DTVCTO.AsDateTime; //
   query_gravarop.ParamByName('FAB_LOTE').AsString      :=Tb_Frac01_FracionarCF_LOTE.AsString; //; //
}
   query_gravarop.ParamByName('FAB_VCTO').AsDateTime    :=query_frac03.fieldbyname('PN_DTVCTO').asdatetime; //
   query_gravarop.ParamByName('FAB_LOTE').AsString      :=query_frac03.fieldbyname('PN_LOTE').asstring; //; //

   Try
      query_gravarop.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_gravarop,28259,'func Erro:'+e.Message ,'CADP02_LOTES');
      end;


   query_gravarop.Close;
   query_gravarop.SQL.Clear;
   query_gravarop.SQL.Add('Insert Into CADOP03 ('
              +'OP3_CODEMP, '
              +'OP3_FABENV, '
              +'OP3_LOTSEQ, '
              +'OP3_CODIGO, '
              +'OP3_SEQ, '
              +'OP3_CODMAT,'
              +'OP3_QTDPREV, '
              +'OP3_QTDUTIL, '
              +'OP3_PU, '
              +'OP3_SITMP,'
              +'OP3_ORIGEM,'
              +'OP3_NUMERO,'
              +'OP3_LOTE, '
              +'OP3_DTVCTO,'
              +'OP3_LOTE_RE ) values ('
              +':CODEMP,'
              +':FABENV,' // materias primas utilizadas para produção
              +':LOTSEQ,'
              +':CODIGO,'
              +':SEQ,'
              +':CODMAT,'
              +':QTDPREV,'
              +':QTDUTIL,'
              +':PU,'
              +':SITMP'+',' // Situacao do produto acabado
              +':ORIGEM'+',' // origem das materias primas 0-normal 1-terceiros
              +':NUMERO,'
              +':LOTE,'
              +':DTVCTO,'
              +':LOTE_RE)');
   mSeq:=0;

   query_gravarop.Close;
   query_gravarop.ParamByName('CODEMP').AsInteger := codemp;
   query_gravarop.ParamByName('FABENV').AsInteger := 0;
   query_gravarop.ParamByName('LOTSEQ').AsInteger := ls_lotfab;
   query_gravarop.ParamByName('CODIGO').AsFloat   := mChaveOp;
   query_gravarop.ParamByName('SEQ').AsInteger    := mSeq;
   query_gravarop.ParamByName('CODMAT').AsFloat   := Tb_Frac01_FracionarCF_CODPRO.AsFloat;
   try
      query_gravarop.ParamByName('QTDPREV').AsFloat  := query_frac03.fieldbyname('PN_QTDUND_MASTER').AsFloat;
   except
      end;

   query_gravarop.ParamByName('QTDUTIL').AsFloat  := query_frac03.fieldbyname('PN_QTDUND_MASTER').AsFloat;
   if fLerGenerico_query('CADPRO','case when PDPRECOC=0 THEN PDPRECO1 ELSE PDPRECOC END as PRECO ','PDCODPRO=0'+Tb_Frac01_FracionarCF_CODPRO.AsString,query_consulta) then
      query_gravarop.ParamByName('PU').AsFloat       := query_consulta.fieldbyname('PRECO').asfloat
   else
      query_gravarop.ParamByName('PU').AsFloat       := 0;
   query_gravarop.ParamByName('SITMP').AsFloat    := 1;
   query_gravarop.ParamByName('ORIGEM').AsFloat   := 0;
   query_gravarop.ParamByName('NUMERO').AsString  := ' ';

{   query_gravarop.ParamByName('FAB_VCTO').AsDateTime    :=Tb_Frac01_FracionarCF_DTVCTO.AsDateTime; //
   query_gravarop.ParamByName('FAB_LOTE').AsString      :=Tb_Frac01_FracionarCF_LOTE.AsString; //; //
}

   query_gravarop.ParamByName('LOTE').AsString    := Tb_Frac01_FracionarCF_LOTE.AsString;
   query_gravarop.ParamByName('DTVCTO').AsDateTime:= Tb_Frac01_FracionarCF_DTVCTO.AsDateTime;
   query_gravarop.ParamByName('LOTE_RE').AsString := ' ';
   Try
      query_gravarop.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_gravarop,953,'func Erro:'+e.Message ,'CADP03');
      end;

   query_frac04.Close;
   query_frac04.sql.clear;
   query_frac04.sql.Add('Select PNE_CHAVE_ANO ,PNE_CHAVE '
                    +',PNE_CODPRO,PNE_CODMP,PNE_QTD '
                    +',case when PNE_TIPO=1 then '+QuotedStr('por unidade')+' when PNE_TIPO=2 then '
                    +QuotedStr('Por Caixa Fechada')+' else '+QuotedStr('desconhecida')+' end  as tipo '
                    +',PNE_CODEMP '
                    +',PDUND as undpro '
                    +',PDNOME as nompro '
                    +',PDMARCA as marcapro '
                    +',PNE_TIPO '
                    +',PNE_LOTE, PNE_DTVCTO '
                    +' from CADFRAC04_PNE,CADPRO '                                                  
                    +' where PNE_CODEMP=:CODEMP '
                    +' and PDCODPRO=PNE_CODMP '
                    +' and PNE_CHAVE=:CHAVE '
                    +' and PNE_CHAVE_ANO=:CHAVE_ANO '
                    +' and PNE_CODPRO=:CODPRO ');
   query_frac04.ParamByName('CODEMP').AsInteger  := codemp;
   query_frac04.ParamByName('CHAVE').AsFloat     := pChave;
   query_frac04.ParamByName('CHAVE_ANO').AsFloat := pChave_ano;
   query_frac04.ParamByName('CODPRO').AsFloat    := query_frac03.fieldbyname('PN_CODPRO').AsFloat;
   try
      query_frac04.Open;
      result:=true;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_frac04,697,'erro ao ler materia prima'+e.Message ,'CADFRAC04_PNE');
      result:=false;
      end;
      end;

   While not query_frac04.Eof do
      begin

      query_exe.Close;
      query_exe.SQL.Clear;
      query_exe.SQL.Add('Update CADFRAC04_PNE set PNE_CHAVE_OP=:CHAVE_OP, PNE_CHAVE_OP_ANO=:CHAVE_OP_ANO '
                            +' WHERE PNE_CHAVE_OP=:CHAVE and PNE_CHAVE_OP_ANO=:CHAVE_ANO '
                            +' and PNE_CODPRO=:CODPRO ');
      query_exe.ParamByName('CHAVE_OP').AsInteger    :=mChaveOp;
      query_exe.ParamByName('CHAVE_OP_ANO').AsInteger:=ls_lotfab;

      query_exe.ParamByName('CHAVE').AsInteger    :=pChave;
      query_exe.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;

      query_exe.ParamByName('CODPRO').AsFloat     :=query_frac03.fieldbyname('PN_CODPRO').AsFloat;
      try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         ex_erroSql_Novo(query_exe,847,'func Erro:'+e.Message ,'CADFRAC03_PN');
         end;

// LINDOMAR
      query_gravarop.Close;
      query_gravarop.ParamByName('CODEMP').AsInteger := codemp;
      query_gravarop.ParamByName('FABENV').AsInteger := 1;
      query_gravarop.ParamByName('LOTSEQ').AsInteger := ls_lotfab;
      query_gravarop.ParamByName('CODIGO').AsFloat   := mChaveOp;
      query_gravarop.ParamByName('SEQ').AsInteger    := mSeq;
      query_gravarop.ParamByName('CODMAT').AsFloat   := query_frac04.fieldbyname('PNE_CODMP').AsFloat;
      query_gravarop.ParamByName('QTDPREV').AsFloat  := query_frac04.fieldbyname('PNE_QTD').AsFloat;
      query_gravarop.ParamByName('QTDUTIL').AsFloat  := query_gravarop.ParamByName('QTDPREV').AsFloat;

      if fLerGenerico_query('CADPRO','case when PDPRECOC=0 THEN PDPRECO1 ELSE PDPRECOC END as PRECO ','PDCODPRO=0'+Tb_CADFRAC04_PNEPNE_CODMP.AsString,query_consulta) then
         query_gravarop.ParamByName('PU').AsFloat       := query_consulta.fieldbyname('PRECO').asfloat
      else
         query_gravarop.ParamByName('PU').AsFloat       := 0;
      query_gravarop.ParamByName('SITMP').AsFloat    := 1;
      query_gravarop.ParamByName('ORIGEM').AsFloat   := 0;
      query_gravarop.ParamByName('NUMERO').AsString  := ' ';
      query_gravarop.ParamByName('LOTE').AsString    := query_frac04.fieldbyname('PNE_LOTE').AsString;
      query_gravarop.ParamByName('DTVCTO').AsDateTime:= query_frac04.fieldbyname('PNE_DTVCTO').Asdatetime;
      query_gravarop.ParamByName('LOTE_RE').AsString := ' ';
      Try
         query_gravarop.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_gravarop,953,'func Erro:'+e.Message ,'CADP03');
         freeandnil(query_gravarop);
         result:=false;
         exit;
         end;
         end;
      query_frac04.next;
      end;

// inicio do final


   mTotalPREV:=0;
   mTotalREAL:=0;
   mQtdPREV  :=0;
   mQtdREAL  :=0;


   if fLerGenerico_query('CADOP03','sum(OP3_QTDPREV) as QTDPREV, sum(OP3_QTDUTIL) as QTDUTIL '
                                  +',SUM(ROUND( (OP3_QTDPREV*OP3_PU),2) ) AS TOTALPREV '
                                  +',SUM(ROUND( (OP3_QTDUTIL*OP3_PU),2) ) AS TOTALUTIL '
                                  ,'OP3_CODIGO=0'+FloatToStr(mChaveOp)
                                  +' and OP3_LOTSEQ=0'+IntToStr(ls_lotfab)
                                  +' AND OP3_FABENV=0 ',query_consulta) then
      begin
      mTotalPREV:=query_consulta.fieldbyname('TOTALPREV').asfloat;
      mTotalREAL:=query_consulta.fieldbyname('TOTALUTIL').asfloat;
      mTotalPREV:=query_consulta.fieldbyname('QTDPREV').asfloat;
      mTotalREAL:=query_consulta.fieldbyname('QTDUTIL').asfloat;
      end;

   query_gravarop.Close;
   query_gravarop.SQL.Clear;

   query_gravarop.SQL.Add('Insert Into CADOP01 ('
                    +' OP1_CODEMP,'
                    +' OP1_FABENV,'
                    +' OP1_LOTSEQ,'
                    +' OP1_CODIGO,'
                    +' OP1_TMPPREV,'
                    +' OP1_TMPUTIL,'
                    +' OP1_TOTPREV,'
                    +' OP1_TOTPROD,'
                    +' OP1_STATUS,'
                    +' OP1_ORIGEM,'
                    +' OP1_SITMP, '
                    +' OP1_SITACAB, '
                    +' OP1_DATA, '
                    +' OP1_DATAPREV, '
                    +' OP1_LOTE, '
                    +' OP1_DATAVEN, '
                    +' OP1_OBS01, '
                    +' OP1_OBS02, '
                    +' OP1_OBS03, '
                    +' OP1_OBS04, '
                    +' OP1_OBS05, '
                    +' OP1_OBS06, '
                    +' OP1_OBS07, '
                    +' OP1_OBS08, '
                    +' OP1_OBS09, '
                    +' OP1_OBS10, '
                    +' OP1_NOME '
                    +',OP1_QTDMAN '
                    +',OP1_SITUACAO '
                    +',OP1_CHAVE_FRAC '
                    +',OP1_CHAVE_FRAC_ANO '
                    +',OP1_TIPO_OP '



                    +' ) Values ('
                    +':CODEMP ,'
                    +':FABENV ,'
                    +':LOTSEQ, '
                    +':CHAVE, '
                    +':TMPPREV,'
                    +':TMPUTIL,'
                    +':TOTPREV,'
                    +':TOTPROD,'
                    +':STATUS,'  // status
                    +':ORIGEM,' // origem da materia prima 0-normal 1-de terceiros
                    +':SITMP, '
                    +':SITACAB,' // Situacao do produto acabado
                    +':DATA, '
                    +':DATAPREV, '
                    +':LOTE, '
                    +':DATAVEN, '
                    +':OBS01, '
                    +':OBS02, '
                    +':OBS03, '
                    +':OBS04, '
                    +':OBS05, '
                    +':OBS06, '
                    +':OBS07, '
                    +':OBS08, '
                    +':OBS09, '
                    +':OBS10, '
                    +':NOME'
                    +',:QTDMAN '
                    +',:SITUACAO '
                    +',:OP1_CHAVE_FRAC '
                    +',:OP1_CHAVE_FRAC_ANO '
                    +',:OP1_TIPO_OP '

                    +')');
   query_gravarop.ParamByName('CODEMP').AsFloat := codemp;
   query_gravarop.ParamByName('FABENV').AsFloat := 0;
   query_gravarop.ParamByName('LOTSEQ').AsFloat := ls_lotfab;
   query_gravarop.ParamByName('CHAVE').AsFloat  :=mChaveOp;

   query_gravarop.ParamByName('TMPPREV').AsFloat := mQtdPREV;
   query_gravarop.ParamByName('TMPUTIL').AsFloat := mQtdREAL;
   query_gravarop.ParamByName('TOTPREV').AsFloat := mTotalPREV;
   query_gravarop.ParamByName('TOTPROD').AsFloat := mTotalREAL;

   query_gravarop.ParamByName('STATUS').AsFloat   := 2;
   query_gravarop.ParamByName('ORIGEM').AsFloat   := 0;
   query_gravarop.ParamByName('SITMP').AsFloat    := 1;
   query_gravarop.ParamByName('SITACAB').AsFloat  := 1;
   query_gravarop.ParamByName('DATA').AsDateTime     := Date;
   query_gravarop.ParamByName('DATAPREV').AsDateTime := Date;
   query_gravarop.ParamByName('LOTE').AsString    := query_frac04.fieldbyname('PNE_LOTE').AsString;
   query_gravarop.ParamByName('DATAVEN').AsDateTime:= query_frac04.fieldbyname('PNE_DTVCTO').Asdatetime;

   query_gravarop.ParamByName('DATAVEN').AsDateTime    :=query_frac03.fieldbyname('PN_DTVCTO').asdatetime; //
   query_gravarop.ParamByName('LOTE').AsString      :=query_frac03.fieldbyname('PN_LOTE').asstring; //; //

{
   query_gravarop.ParamByName('LOTE').AsString     :=  tb_Frac01_fracionarCF_LOTE.AsString;
   query_gravarop.ParamByName('DATAVEN').AsDateTime:= tb_Frac01_fracionarCF_DTVCTO.Asdatetime;
}   
   query_gravarop.ParamByName('OBS01').AsString    := 'PRODUCAO: '+mNomPro_Novo;
   query_gravarop.ParamByName('OBS02').AsString     := ' ';
   query_gravarop.ParamByName('OBS03').AsString     := ' ';
   query_gravarop.ParamByName('OBS04').AsString     := ' ';
   query_gravarop.ParamByName('OBS05').AsString     := ' ';
   query_gravarop.ParamByName('OBS06').AsString     := ' ';
   query_gravarop.ParamByName('OBS07').AsString     := ' ';
   query_gravarop.ParamByName('OBS08').AsString     := ' ';
   query_gravarop.ParamByName('OBS09').AsString     := ' ';
   query_gravarop.ParamByName('OBS10').AsString     := ' ';
   query_gravarop.ParamByName('NOME').AsString      := copy(mNomPro_Novo,1,60);
//   query_gravarop.ParamByName('NOME').AsString      := Tb_Frac01_Fracionarnompro.AsString;


   query_gravarop.ParamByName('QTDMAN').AsFloat     := 1;
   query_gravarop.ParamByName('SITUACAO').AsFloat          := 0;
   query_gravarop.ParamByName('OP1_CHAVE_FRAC').AsFloat    := pChave;
   query_gravarop.ParamByName('OP1_CHAVE_FRAC_ANO').AsFloat:= pChave_ano;
   query_gravarop.ParamByName('OP1_TIPO_OP').AsInteger     := 2;

   Try
      query_gravarop.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(query_gravarop,7667,'func Erro:'+e.Message ,'CADOP01');
      end;
   fBaixarMP(mChaveOp,ls_lotfab,false);
   fEntrarAcabado(mChaveOP,ls_LotFab, false);
   query_frac03.Next;
   end;

Tb_Frac01_FracionarCF_CHAVE_OP.AsFloat := mChaveOp;
Tb_Frac01_FracionarCF_CHAVE_OP_ANO.AsFloat := ls_lotfab;



query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Update CADFRAC01_FRACIONAR SET CF_CHAVE_OP=:CHAVE_OP , '
                 +' CF_CHAVE_OP_ANO=:CHAVE_OP_ANO  '
                 +' where CF_CODEMP=:CF_CODEMP '
                 +' and CF_CHAVE=:CF_CHAVE '
                 +' and CF_CHAVE_ANO=:CF_CHAVE_ANO ');

query_exe.ParamByName('CF_CODEMP').AsFloat        :=1;
query_exe.ParamByName('CF_CHAVE').AsFloat         :=Tb_Frac01_FracionarCF_CHAVE.AsFloat;
query_exe.ParamByName('CF_CHAVE_ANO').AsFloat     :=Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat;

query_exe.ParamByName('CHAVE_OP_ANO').AsFloat  :=ls_lotfab;
query_exe.ParamByName('CHAVE_OP').AsFloat      :=mchaveop;
Try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_exe,1710,'func Erro:'+e.Message ,'CADFRAC01_FRACIONAR');
   end;



// termino do final
freeandnil(query_exe);
freeandnil(query_gravarop);
query_frac02.close;
query_frac03.close;
query_frac04.close;
freeandnil(query_frac02);
freeandnil(query_frac03);
freeandnil(query_frac04);


end;



procedure TFrm_IndEnv_Fracionamento.fLimparCampos;

begin
if Tb_Frac01_Fracionar.State in [dsedit,dsinsert] then
   Tb_Frac01_Fracionar.Cancel;

    mQtdGrML_Faltam:=0;
//    mperdas_faltam:=0;
    mperc_perdas:=0;
pApresentaTotais;    

end;

procedure TFrm_IndEnv_Fracionamento.bbCancelarClick(Sender: TObject);
begin
if (Tb_Frac01_FracionarCF_CODPRO.AsFloat=0) or (Tb_Frac01_FracionarCF_QTD.AsFloat=0) or (tb_CADFRAC03_PN.IsEmpty) then
else
   begin
   if Application.MessageBox('Quer realmente cancelar a edicao?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   end;

fLiberarBloqueiaEdicao(false);
fLimparCampos;

end;



procedure TFrm_IndEnv_Fracionamento.bbAtualizarClick(Sender: TObject);
begin

Tb_Frac01_Fracionar.close;
Tb_Frac01_Fracionar.SQL.clear;
Tb_Frac01_Fracionar.SQL.Add('Select CF_CHAVE,CF_CHAVE_ANO,CF_DATHOR,CF_CODUSR,CF_NOMUSR,CF_NOMCOMPUTADOR'
                           +',CF_CODPRO,CF_QTD,CF_QTD_PERDAS,CF_CHAVE_OP,CF_CHAVE_OP_ANO '
                           +',CF_LOTE,CF_DTVCTO '
                           +',PDNOME as nompro '
                           +',PDUND as undpro '
                           +',PDMARCA as marcapro'
                           +',PDQTDGRML as qtdgrml '
                           +',PDPRZVAL as prazoval_mes '
                           +',PDQTDGRML*CF_QTD as qtdgrml_total '
                           +' from CADFRAC01_FRACIONAR,CADPRO '
                           +' where PDCODPRO=CF_CODPRO ');
if edt_datini.Date>pdatanula then
   begin
   Tb_Frac01_Fracionar.SQL.add(' and CF_DATHOR>:DATINI ');
   Tb_Frac01_Fracionar.ParamByName('DATINI').AsDateTime:=edt_datini.Date-1;
   end;
if edt_datfin.Date>pdatanula then
   begin
   Tb_Frac01_Fracionar.SQL.add(' and CF_DATHOR<:DATFIN ');
   Tb_Frac01_Fracionar.ParamByName('DATFIN').AsDateTime:=edt_datini.Date+1;
   end;
if length(trim( edt_nomepesq.Text))>0 then
   begin
   if cb_tppesq.itemindex=0 then // Codigo do Produto Fracionado
      begin
      Tb_Frac01_Fracionar.SQL.add(' and CF_CODPRO=0'+fdeixanum(edt_nomepesq.Text));
      end
   else if cb_tppesq.itemindex=1 then // Nome do Produto Fracionado
      begin
      Tb_Frac01_Fracionar.SQL.add(' and PDNOME LIKE :NOMPRO');
      Tb_Frac01_Fracionar.ParamByName('NOMPRO').AsString := edt_nomepesq.Text+'%';
      end
   end;
try
   Tb_Frac01_Fracionar.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_Frac01_Fracionar,543,'erro ao ler materia prima'+e.Message ,'CADFRAC01_FRACIONAR');
   end;
end;

procedure TFrm_IndEnv_Fracionamento.DB_CF_CODPROExit(Sender: TObject);
begin
if Tb_Frac01_Fracionar.state in [dsedit,dsinsert] then
   begin
   if Tb_Frac01_FracionarCF_CODPRO.AsFloat>0 then
      begin
      if (mCodFrac01_Ant<>Tb_Frac01_FracionarCF_CODPRO.AsFloat) and (tb_CADFRAC03_PN.IsEmpty=false) then
         begin
         MessageDlg('Somente é permitido alterar o produto quando nao foi digitado produto novo!',mtWarning,[mbOk],0);
         Tb_Frac01_FracionarCF_CODPRO.AsFloat:=mCodFrac01_Ant;
         DB_CF_CODPRO.SetFocus;
         exit;
         end;

      if fLerGenerico_query('CADPRO','PDNOME,PDUND,PDMARCA,PDQTDGRML','PDCODPRO=0'+Tb_Frac01_FracionarCF_CODPRO.AsString,query_consulta) then
         begin
         Tb_Frac01_Fracionarnompro.AsString   :=query_consulta.fieldbyname('PDNOME').asstring;
         Tb_Frac01_Fracionarmarcapro.AsString :=query_consulta.fieldbyname('PDMARCA').asstring;
         Tb_Frac01_Fracionarundpro.AsString   :=query_consulta.fieldbyname('PDUND').asstring;
         Tb_Frac01_Fracionarqtdgrml.AsString   :=query_consulta.fieldbyname('PDQTDGRML').asstring;
         fCarregarComboLotes;

         fLerCADFRAC02_EMB_INTERNO;

         end
      else
         begin
         MessageDlg('Produto Codigo '+Tb_Frac01_FracionarCF_CODPRO.AsString+' não cadastrado!',mtWarning,[mbOk],0);
         DB_CF_CODPRO.SelectAll;
         DB_CF_CODPRO.SetFocus;
         end;
      end;
   end;


end;

procedure TFrm_IndEnv_Fracionamento.DB_CF_CODPROKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=113)  then
   begin
   Tb_Frac01_FracionarCF_CODPRO.AsFloat:=valfloat(fChamaPesqPro(0,'_venda',''));
   DB_CF_CODPROExit(self);
   end;


end;

procedure TFrm_IndEnv_Fracionamento.DB_CF_CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%')) then
   begin
   Tb_Frac01_FracionarCF_CODPRO.AsFloat:=fsonumero(fChamaPesqPro(0,'_venda',key));
   key:=#0;
   end;

end;

procedure TFrm_IndEnv_Fracionamento.DB_CF_QTDExit(Sender: TObject);
begin
if (mQtdFrac01_Ant>0) and (mQtdFrac01_Ant>Tb_Frac01_FracionarCF_QTD.AsFloat) and (tb_CADFRAC03_PN.IsEmpty=false) then
   begin
   Tb_Frac01_FracionarCF_QTD.AsFloat:=mQtdFrac01_Ant;
   MessageDlg('Somente podera diminuar a quantidades quando os produtos novos nao forem digitados!',mtWarning,[mbOk],0);
   DB_CF_QTD.SetFocus;
   exit;
   end;


fLerCADFRAC02_EMB_INTERNO;

mQtdGrML_Faltam:=(Tb_Frac01_FracionarCF_QTD.AsFloat) *Tb_Frac01_Fracionarqtdgrml.AsFloat;
if (tb_CADFRAC03_PN.Active) and (tb_CADFRAC03_PN.IsEmpty=false) then
   begin
   tb_CADFRAC03_PN.First;
   While not tb_CADFRAC03_PN.Eof do
      begin
      tb_CADFRAC03_PN.Edit;
      mQtdGrML_pn_ant :=0;

      tb_CADFRAC03_PN.Post;
      tb_CADFRAC03_PN.Next;
      end;
   end;

//mQtdGrML_Faltam:=(Tb_Frac01_FracionarCF_QTD.AsFloat-Tb_Frac01_FracionarCF_QTD_PERDAS.AsFloat) *Tb_Frac01_Fracionarqtdgrml.AsFloat;
//mperdas_faltam :=Tb_Frac01_FracionarCF_QTD_PERDAS.AsFloat;
pApresentaTotais;

end;

procedure TFrm_IndEnv_Fracionamento.pApresentaTotais;
begin

mperc_perdas:=Tb_Frac01_FracionarCF_QTD_PERDAS.AsFloat;
if mperc_perdas>0 then
   begin
   mperc_perdas:=Tb_Frac01_FracionarCF_QTD_PERDAS.AsFloat*100 / Tb_Frac01_FracionarCF_QTD.AsFloat;
   end;

lbl_qtdfalta.Caption:=FloatToStr(mQtdGrML_Faltam);
lbl_percperdas.Caption:=FloatToStr(mperc_perdas)+'%';
//lbl_perdas_faltam.Caption:=Floattostr(mperdas_faltam);
end;

procedure TFrm_IndEnv_Fracionamento.bbExcluirClick(Sender: TObject);
var
mCondicao_old: string;
mChave_Old: Integer;
query_frac03: TQuery;
query_frac02: TQuery;
query_exe: TQuery;
begin

if fEstoqueNegativo(Tb_Frac01_FracionarCF_CHAVE_OP.AsInteger,
                    Tb_Frac01_FracionarCF_CHAVE_OP_ANO.AsInteger,
                     codemp) then
   begin
   exit;
   end;




if Application.MessageBox(pchar('Quer Realmente excluir o francionamento '+Tb_Frac01_FracionarCF_CHAVE.asstring+' do produto '+Tb_Frac01_FracionarCF_CODPRO.asstring
                         +'-'+Tb_Frac01_Fracionarnompro.AsString),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;



query_frac03:=TQuery.create(nil);
query_frac03.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_frac03.Close;
query_frac03.SQL.clear;
query_frac03.SQL.Add('Select * from  CADFRAC03_PN  '
                         +' WHERE PN_CHAVE=:CHAVE and PN_CHAVE_ANO=:CHAVE_ANO '
                         +' order by PN_CODPRO ');
query_frac03.ParamByName('CHAVE').AsInteger    :=Tb_Frac01_FracionarCF_CHAVE.AsInteger;
query_frac03.ParamByName('CHAVE_ANO').AsInteger:=Tb_Frac01_FracionarCF_CHAVE_ANO.AsInteger;

try
   query_frac03.Open;
except on e : exception do
   ex_erroSql_Novo(query_frac03,1515,'func Erro:'+e.Message ,'CADFRAC03_PN');
   end;


query_frac02:=TQuery.create(nil);
query_frac02.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_frac02.Close;
query_frac02.SQL.clear;
query_frac02.SQL.Add('Select * from  CADFRAC02_EMB '
                         +' WHERE CFE_CHAVE=:CHAVE and CFE_CHAVE_ANO=:CHAVE_ANO '
                         +' and CFE_REUTILIZA='+QuotedStr('S')
                         +' order by CFE_CODPRO ');

query_frac02.ParamByName('CHAVE').AsInteger    :=Tb_Frac01_FracionarCF_CHAVE.AsInteger;
query_frac02.ParamByName('CHAVE_ANO').AsInteger:=Tb_Frac01_FracionarCF_CHAVE_ANO.AsInteger;

try
   query_frac02.Open;
except on e : exception do
   ex_erroSql_Novo(query_frac02,894,'func Erro:'+e.Message ,'CADFRAC02_EMB');
   end;

While not query_frac02.eof do
   begin
   fAjustarEstoque(1,log_filial_padrao,query_frac02.fieldbyname('CFE_CODMP').AsFloat,query_frac02.fieldbyname('CFE_QTD').AsFloat
                  ,query_frac02.fieldbyname('CFE_LOTE').AsString,'EXCLUSAO EMBALAGEM DE FRACIONAMENTO DE PRODUTOS'
                  ,null,query_frac02.fieldbyname('CFE_DTVCTO').asdatetime);


   query_frac02.Next;
   end;
// termino das embalagens a retornar

Query_Frac03.First;
While not query_frac03.eof do
   begin
   fExcluirOP(query_frac03.fieldbyname('PN_CHAVE_OP').Asinteger,query_frac03.fieldbyname('PN_CHAVE_OP_ANO').Asinteger);
   query_frac03.Next;
   end;

query_frac03.close;
freeandnil(query_frac03);

query_frac02.close;
freeandnil(query_frac02);






mCondicao_old:=' where CF_CODEMP='+Inttostr(codemp)
              +' and CF_CHAVE='+Tb_Frac01_FracionarCF_CHAVE.AsString
              +' and CF_CHAVE_ANO='+Tb_Frac01_FracionarCF_CHAVE_ANO.AsString;

mChave_Old:=fGerarTabelas_Old(9 //status
                  ,0 //codigo novo valor chave
                  ,'CF_CODNOV' //nome do campo do novo valor (chave)
                  ,'CF_DATHOR_EVE' // nome do campo data e hora do evento
                  ,'CF_CODUSR_EVE' // nome do campo do usuario
                  ,'CF_STATUS_EVE' // nome do campo de status
                  ,'CADFRAC01_FRACIONAR' // nome da tabela
                  ,mCondicao_old);

mCondicao_old:=' where CFE_CODEMP='+Inttostr(codemp)
              +' and CFE_CHAVE='+Tb_Frac01_FracionarCF_CHAVE.AsString
              +' and CFE_CHAVE_ANO='+Tb_Frac01_FracionarCF_CHAVE_ANO.AsString;


mChave_Old:=fGerarTabelas_Old(9 //status
                  ,mchave_old //codigo novo valor chave
                  ,'CFE_CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADFRAC02_EMB' // nome da tabela
                  ,mCondicao_old);


mCondicao_old:=' where PN_CODEMP='+Inttostr(codemp)
              +' and PN_CHAVE='+Tb_Frac01_FracionarCF_CHAVE.AsString
              +' and PN_CHAVE_ANO='+Tb_Frac01_FracionarCF_CHAVE_ANO.AsString;


mChave_Old:=fGerarTabelas_Old(9 //status
                  ,mchave_old //codigo novo valor chave
                  ,'PN_CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADFRAC03_PN' // nome da tabela
                  ,mCondicao_old);


mCondicao_old:=' where PNE_CODEMP='+Inttostr(codemp)
              +' and PNE_CHAVE='+Tb_Frac01_FracionarCF_CHAVE.AsString
              +' and PNE_CHAVE_ANO='+Tb_Frac01_FracionarCF_CHAVE_ANO.AsString;


mChave_Old:=fGerarTabelas_Old(9 //status
                  ,mchave_old //codigo novo valor chave
                  ,'PNE_CODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADFRAC04_PNE' // nome da tabela
                  ,mCondicao_old);
//fBaixarMP(Tb_Frac01_FracionarCF_CHAVE.AsInteger,Tb_Frac01_FracionarCF_CHAVE_ANO.AsInteger,true);
//fEntrarAcabado(Tb_Frac01_FracionarCF_CHAVE.AsInteger,Tb_Frac01_FracionarCF_CHAVE_ANO.AsInteger, true);


query_exe:=TQuery.create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Delete from CADFRAC04_PNE where '
                 +' PNE_CODEMP=:CODEMP '
                 +' and PNE_CHAVE=:CHAVE '
                 +' and PNE_CHAVE_ANO=:CHAVE_ANO ');
query_exe.parambyName('CODEMP').AsInteger:=codemp;
query_exe.parambyName('CHAVE').AsInteger:=Tb_Frac01_FracionarCF_CHAVE.AsInteger;
query_exe.parambyName('CHAVE_ANO').AsInteger:=Tb_Frac01_FracionarCF_CHAVE_ANO.AsInteger;
try
   query_exe.ExecSQL;
except on e : exception do
   ex_erroSql_Novo(query_exe,1605,'func Erro:'+e.Message ,'CADFRAC04_PNE');
   end;


query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Delete from CADFRAC03_PN where '
                 +' PN_CODEMP=:CODEMP '
                 +' and PN_CHAVE=:CHAVE '
                 +' and PN_CHAVE_ANO=:CHAVE_ANO ');
query_exe.parambyName('CODEMP').AsInteger:=codemp;
query_exe.parambyName('CHAVE').AsInteger:=Tb_Frac01_FracionarCF_CHAVE.AsInteger;
query_exe.parambyName('CHAVE_ANO').AsInteger:=Tb_Frac01_FracionarCF_CHAVE_ANO.AsInteger;
try
   query_exe.ExecSQL;
except on e : exception do
   ex_erroSql_Novo(query_exe,1605,'func Erro:'+e.Message ,'CADFRAC04_PNE');
   end;


query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Delete from CADFRAC02_EMB where '
                 +' CFE_CODEMP=:CODEMP '
                 +' and CFE_CHAVE=:CHAVE '
                 +' and CFE_CHAVE_ANO=:CHAVE_ANO ');
query_exe.parambyName('CODEMP').AsInteger:=codemp;
query_exe.parambyName('CHAVE').AsInteger:=Tb_Frac01_FracionarCF_CHAVE.AsInteger;
query_exe.parambyName('CHAVE_ANO').AsInteger:=Tb_Frac01_FracionarCF_CHAVE_ANO.AsInteger;
try
   query_exe.ExecSQL;
except on e : exception do
   ex_erroSql_Novo(query_exe,1605,'func Erro:'+e.Message ,'CADFRAC04_PNE');
   end;


query_exe.Close;
query_exe.SQL.clear;
query_exe.SQL.Add('Delete from CADFRAC01_FRACIONAR where '
                 +' CF_CODEMP=:CODEMP '
                 +' and CF_CHAVE=:CHAVE '
                 +' and CF_CHAVE_ANO=:CHAVE_ANO ');
query_exe.parambyName('CODEMP').AsInteger:=codemp;
query_exe.parambyName('CHAVE').AsInteger:=Tb_Frac01_FracionarCF_CHAVE.AsInteger;
query_exe.parambyName('CHAVE_ANO').AsInteger:=Tb_Frac01_FracionarCF_CHAVE_ANO.AsInteger;
try
   query_exe.ExecSQL;
except on e : exception do
   ex_erroSql_Novo(query_exe,1605,'func Erro:'+e.Message ,'CADFRAC04_PNE');
   end;

Tb_Frac01_Fracionar.Delete;
MessageDlg('Fracionamento Excluido!',mtInformation,[mbOk],0);

end;

procedure TFrm_IndEnv_Fracionamento.Tb_Frac01_FracionarAfterCancel(
  DataSet: TDataSet);
begin
pAtualizaBotoes(false);
end;

procedure TFrm_IndEnv_Fracionamento.pAtualizaBotoes(pEditando: Boolean);
begin
bbIncluir.Enabled  :=pEditando=false;
bbGravar.Enabled   :=pEditando;
bbcancelar.Enabled :=pEditando;

bbexcluir.Enabled  :=pEditando=false;
bbImprimir.Enabled :=pEditando=false;

end;

procedure TFrm_IndEnv_Fracionamento.Tb_Frac01_FracionarAfterDelete(
  DataSet: TDataSet);
begin
pAtualizaBotoes(false);
end;

procedure TFrm_IndEnv_Fracionamento.Tb_Frac01_FracionarAfterEdit(
  DataSet: TDataSet);
begin
pAtualizaBotoes(true);
end;

procedure TFrm_IndEnv_Fracionamento.Tb_Frac01_FracionarAfterInsert(
  DataSet: TDataSet);
begin

Tb_Frac01_FracionarCF_CHAVE.AsFloat    :=0;

Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat:=0;

Tb_Frac01_FracionarCF_DATHOR.AsDateTime:=Now;

pAtualizaBotoes(true);

fLerCADFRAC02_EMB(Tb_Frac01_FracionarCF_CHAVE.AsFloat,Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat);
fLerCADFRAC03_PN(Tb_Frac01_FracionarCF_CHAVE.AsFloat,Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat);

end;

procedure TFrm_IndEnv_Fracionamento.Tb_Frac01_FracionarAfterPost(
  DataSet: TDataSet);
begin
pAtualizaBotoes(false);

end;

procedure TFrm_IndEnv_Fracionamento.src_Frac01_FracionarDataChange(
  Sender: TObject; Field: TField);
begin
if not (Tb_Frac01_Fracionar.State in [dsedit,dsinsert]) then
   begin
   if (Tb_Frac01_FracionarCF_CHAVE.AsFloat<>tb_CADFRAC02_EMBCFE_CHAVE.AsFloat) or
      (Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat<>tb_CADFRAC02_EMBCFE_CHAVE_ANO.AsFloat) then
      begin
      fLerCADFRAC02_EMB(Tb_Frac01_FracionarCF_CHAVE.AsFloat,Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat);
      fLerCADFRAC03_PN(Tb_Frac01_FracionarCF_CHAVE.AsFloat,Tb_Frac01_FracionarCF_CHAVE_ANO.AsFloat);
      end;
   end;
end;

function TFrm_IndEnv_Fracionamento.fLerCADFRAC02_EMB_INTERNO: Boolean;
var
mSqlLote: String;
mSqlDvcto: String;
begin
if (mQtdAnt<>Tb_Frac01_FracionarCF_QTD.AsFloat) or
   (mCodProAnt<>Tb_Frac01_FracionarCF_CODPRO.AsFloat) then
   begin

   mSqlLote:=fSqlLote('CPCODMAT');
   msqldvcto:=fSqlDtVcto('CPCODMAT');



   tb_CADFRAC02_EMB.close;
   if Tb_Frac01_FracionarCF_QTD.AsFloat=0 then
      Tb_Frac01_FracionarCF_QTD.AsFloat:=1;
   if (Tb_Frac01_FracionarCF_QTD.AsFloat>0) and (Tb_Frac01_FracionarCF_CODPRO.AsFloat>0) then
      begin
      tb_CADFRAC02_EMB.sql.clear;
      tb_CADFRAC02_EMB.sql.add('SELECT '
                                +Tb_Frac01_FracionarCF_CHAVE.AsString+' as CFE_CHAVE '
                                +','+Tb_Frac01_FracionarCF_CHAVE_ANO.AsString+' as CFE_CHAVE_ANO '
                                +', CPCODPRO AS  MP_CODPRO '
                                +', CPCODMAT as CFE_CODMP '
                                +' ,round(  (QTDPORUND * :QTDUND), '+DM1.Tb_PargerPCASQTD.AsString+') AS MP_QTD '
                                +'      ,PDUND AS undpro      ,PDNOME  as nompro '
                                +'      ,PDMARCA as marcapro      ,'+QuotedStr('Nao')+' as MP_UTILIZA '

                                +' , case when CPTIPO=1 then '+QuotedStr('por unidade')+' when CPTIPO=2 then '+QuotedStr('Por Caixa Fechada')
                                +' else '+QuotedStr('desconhecida')+' end  as tipo '
                                +', CFE_LOTE, CFE_DTVCTO '           
                                +'      ,CPTIPO from ( '
                                +' Select  CPCODPRO,CPCODMAT, CPTIPO, '
                                +'   CPQUANT, CASE WHEN CPTIPO=2 THEN '
                                +'                 CASE WHEN CPQUANT=0 THEN 1 ELSE 1 / CPQUANT END '
                                +'                 ELSE CPQUANT END AS QTDPORUND '
                                +','+mSqlLote
                                +','+mSqlDvcto
                                +' ,PDNOME, PDMARCA, PDUND from CADCOMP,CADPRO where  CPCODEMP='+IntToStr(codemp)+' and '
                          +' PDCODPRO=CPCODMAT and  (CPTIPO=2 or CPTIPO=1) '
                                +' and CPCODPRO=:CODPRO'
                                +' ORDER BY CPCODPRO_ACAB,CPORDEM '
                                +' ) ');
      tb_CADFRAC02_EMB.ParamByName('QTDUND').AsFloat:=Tb_Frac01_FracionarCF_QTD.AsFloat;
      tb_CADFRAC02_EMB.ParamByName('CODPRO').AsFloat:=Tb_Frac01_FracionarCF_CODPRO.AsFloat;

//       ex_erroSql_Novo(tb_CADFRAC02_EMB,166,'erro ao ler materia prima','CADCOMP');

      try
         tb_CADFRAC02_EMB.Open;
      except on e : exception do
         ex_erroSql_Novo(tb_CADFRAC02_EMB,166,'erro ao ler materia prima'+e.Message ,'CADCOMP');
         end;

      end;
   mQtdAnt   :=Tb_Frac01_FracionarCF_QTD.AsFloat;
   mCodProAnt:=Tb_Frac01_FracionarCF_CODPRO.AsFloat;
//   lbl_qtdreg.Caption:='Foram encontrados '+inttostr(tb_CADFRAC02_EMB.RecordCount)+' registros ';
   end;

end;



function TFrm_IndEnv_Fracionamento.fLerCADFRAC02_EMB(pChave,pChave_ano: Real): Boolean;
var
mSqlLote: String;
msqldtvcto: String;
begin
mSqlLote:=fSqlLote('CFE_CODPRO');
msqldtvcto:=fSqlDtVcto('CFE_CODPRO');


tb_CADFRAC02_EMB.Close;
tb_CADFRAC02_EMB.SQL.Clear;
tb_CADFRAC02_EMB.SQL.Add('Select CFE_CODPRO as MP_CODPRO, '
                          +'CFE_CODMP, '
                          +'CFE_QTD AS MP_QTD, '
                          +' PDUND as undpro, '
                          +'PDNOME as nompro, '
                          +'PDMARCA as marcapro, '
                          +' CASE when CFE_REUTILIZA='+QuotedStr('S')+' then '+QuotedStr('Sim')+' else '+QuotedStr('Nao')+' end as  MP_UTILIZA, '
                          +'CFE_TIPO AS CPTIPO, '
                          +'case when CFE_TIPO=1 then '+QuotedStr('por unidade')+' when CFE_TIPO=2 then '+QuotedStr('Por Caixa Fechada')
                          +' else '+QuotedStr('desconhecida')+' end  as tipo, '
                          +'CFE_CHAVE, CFE_CHAVE_ANO  '
                          +','+mSqlLote
                          +','+msqldtvcto

                          +' from CADFRAC02_EMB,CADPRO '
                          +'  where CFE_CODEMP=:CODEMP  and CFE_CHAVE=:CHAVE  and CFE_CHAVE_ANO=:CHAVE_ANO '
                          +'  and PDCODPRO=CFE_CODMP '
                          +'  and  CFE_CODPRO=:CODPRO  and CFE_CHAVE=:CHAVE  and CFE_CHAVE_ANO=:CHAVE_ANO '
                          );
tb_CADFRAC02_EMB.ParamByName('CODEMP').AsInteger  := codemp;
tb_CADFRAC02_EMB.ParamByName('CHAVE').AsFloat     := pChave;
tb_CADFRAC02_EMB.ParamByName('CHAVE_ANO').AsFloat := pChave_ano;
tb_CADFRAC02_EMB.ParamByName('CODPRO').AsFloat    := Tb_Frac01_FracionarCF_CODPRO.AsFloat;
try
   tb_CADFRAC02_EMB.Open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_CADFRAC02_EMB,2091,'erro ao ler materia prima'+e.Message ,'CADFRAC02_EMB');
   result:=false;
   end;
   end;



end;



function TFrm_IndEnv_Fracionamento.fLerCADFRAC04_PNE(pChave,pChave_ano,pCodpro: Real): Boolean;
var
  query_frac04: TQuery;
  query_temp: TQuery;

mqtdfat: real;
mqtdfalta: real;
     procedure pfechartudo;
     begin
     if query_frac04.Active=true then
        begin
        query_frac04.close;
        freeandnil(query_frac04);
        end;
     if query_temp.Active=true then
        begin
        query_temp.close;
        freeandnil(query_temp);
        end;

     end;
     function finstrucaoSql04(pcondicao: String): String;
     begin
     result:='Select '+Tb_Frac01_FracionarCF_CHAVE_ANO.AsString+' as PNE_CHAVE_ANO '
                    +', '+Tb_Frac01_FracionarCF_CHAVE_ANO.AsString+' PNE_CHAVE '
                    +',CPCODPRO as PNE_CODPRO'
                    +',CPCODMAT as PNE_CODMP'
                    +',round(  (QTDPORUND * '+mudavp(floattostr(tb_CADFRAC03_PNPN_QTD.AsFloat-tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat))+' ),2) AS  PNE_QTD '

                    +',case when CPTIPO=1 then '+QuotedStr('por unidade')+' when CPTIPO=2 then '
                    +QuotedStr('Por Caixa Fechada')+' else '+QuotedStr('desconhecida')+' end  as tipo '
                    +',CPCODEMP as  PNE_CODEMP '
                    +',PDUND as undpro '
                    +',PDNOME as nompro '
                    +',CPTIPO AS PNE_TIPO '
                    +',PDMARCA as marcapro, '
                    +iif(pcondicao='---11',' PNE_LOTE,PNE_DTVCTO ',
                       quoTedstr('    ')+' as PNE_LOTE '
                    +','+fTxtParaDateTime_Oracle(FormatDatetime(fdathor, pdatanula) )+' as PNE_DTVCTO ')
                    +' from (  '
                    +' Select  CPCODPRO, '
                    +'CPCODMAT,CPTIPO,CPQUANT, '
                    +' CASE WHEN CPTIPO=2 THEN '
                    +'       CASE WHEN CPQUANT=0 THEN 1 ELSE 1 / CPQUANT END        '
                    +'             ELSE CPQUANT END AS QTDPORUND, '
                    +'PDNOME,PDMARCA,PDUND,CPCODEMP from CADCOMP, '
                    +' CADPRO where  CPCODEMP='+Inttostr(codemp)+' and  PDCODPRO=CPCODMAT and  (CPTIPO=2 or CPTIPO=1)  '
                    +' and CPCODPRO='+FloatToStr(pCodpro)
                    +' '+pcondicao
                    +'ORDER BY CPCODPRO_ACAB,CPORDEM  ) ';
     end;


     procedure fAdicionarInicio;
     begin
     Tb_CADFRAC04_PNE.Append;
     Tb_CADFRAC04_PNEPNE_CODPRO.AsFloat     := query_frac04.Fieldbyname('PNE_CODPRO').AsFloat;
     Tb_CADFRAC04_PNEPNE_CHAVE.AsFloat      := query_frac04.Fieldbyname('PNE_CHAVE').AsFloat;
     Tb_CADFRAC04_PNEPNE_CHAVE_ANO.AsFloat  := query_frac04.Fieldbyname('PNE_CHAVE_ANO').AsFloat;
     Tb_CADFRAC04_PNEPNE_CODMP.AsFloat      := query_frac04.Fieldbyname('PNE_CODMP').AsFloat;
     Tb_CADFRAC04_PNEnompro.AsString        := query_frac04.Fieldbyname('nompro').AsString;
     Tb_CADFRAC04_PNEundpro.AsString        := query_frac04.Fieldbyname('undpro').AsString;
     Tb_CADFRAC04_PNEmarcapro.AsString      := query_frac04.Fieldbyname('marcapro').AsString;
     Tb_CADFRAC04_PNEtipo.AsString          := query_frac04.Fieldbyname('tipo').AsString;
     Tb_CADFRAC04_PNEPNE_TIPO.Asfloat       := query_frac04.Fieldbyname('PNE_TIPO').Asfloat;

     end;

begin

Tb_CADFRAC04_PNE.Close;
Tb_CADFRAC04_PNE.SQL.Clear;

if Tb_Frac01_Fracionar.State in [dsedit,dsinsert] then
   begin
   query_frac04:=TQuery.Create(nil);
   query_frac04.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_frac04.SQL.Add(finstrucaoSql04(''));
   try
      query_frac04.Open;
      result:=true;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_frac04,2141,'erro ao ler materia prima'+e.Message ,'CADFRAC04_PNE');
      pfechartudo;
      result:=false;
      exit;
      end;
      end;
   Tb_CADFRAC04_PNE.Close;
   Tb_CADFRAC04_PNE.SQL.Add(finstrucaoSql04(' and CPCODEMP=-109999 '));
   try
      Tb_CADFRAC04_PNE.Open;
      result:=true;
   except on e : exception do
      begin
      ex_erroSql_Novo(Tb_CADFRAC04_PNE,2329,'erro ao ler materia prima'+e.Message ,'CADFRAC04_PNE');
      pfechartudo;
      result:=false;
      exit;
      end;
      end;
  query_temp:=TQuery.create(nil);
  query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


   While not query_frac04.Eof do
      begin

      mqtdfalta                              := query_frac04.Fieldbyname('PNE_QTD').Asfloat;
      query_temp.close;
      query_temp.sql.add('SELECT cldtvcto,clnumero,CLQTD FROM cadlgc '
                    +' where CLCODPRO=:CODPRO and CLQTD>0'
                    +' order by CLDTVCTO ');
      query_temp.parambyname('CODPRO').AsFloat:=query_frac04.fieldbyname('PNE_CODMP').asfloat;
      try
         query_temp.Open;
     except on e : exception do
        begin
        ex_erroSql_Novo(query_temp,563,'erro ao ler cadlgc '+e.Message ,'CADLGC');
        pfechartudo;
        result:=false;
        exit;
        end;
        end;
     while (not query_temp.eof) and (mqtdfalta>0) do
        begin
        if query_temp.fieldbyname('CLQTD').AsFloat>mqtdfalta then
           mqtdfat:=mqtdfalta
        else
           mqtdfat:=query_temp.fieldbyname('CLQTD').AsFloat;
        fAdicionarInicio;
        Tb_CADFRAC04_PNEPNE_LOTE.AsString          := query_temp.fieldbyname('CLNUMERO').AsString;
        Tb_CADFRAC04_PNEPNE_DTVCTO.AsDatetime      := query_temp.fieldbyname('CLDTVCTO').asdatetime;
        Tb_CADFRAC04_PNEPNE_QTD.AsFloat            := mqtdfat;
        if mqtdfat>=mqtdfalta then
           mqtdfalta:=0
        else
           mqtdfalta:=mqtdfalta-mqtdfat;
        Tb_CADFRAC04_PNE.Post;
        query_temp.Next;
        end;
     if mqtdfalta>0 then
        begin
        fAdicionarInicio;
        Tb_CADFRAC04_PNEPNE_QTD.AsFloat            := mqtdfalta;
        Tb_CADFRAC04_PNE.Post;
        end;
      query_frac04.next;
      end;
   pfechartudo;
   end
else
   begin
   Tb_CADFRAC04_PNE.SQL.Add('Select PNE_CHAVE_ANO ,PNE_CHAVE '
                    +',PNE_CODPRO,PNE_CODMP,PNE_QTD '
                    +',case when PNE_TIPO=1 then '+QuotedStr('por unidade')+' when PNE_TIPO=2 then '
                    +QuotedStr('Por Caixa Fechada')+' else '+QuotedStr('desconhecida')+' end  as tipo '
                    +',PNE_CODEMP '
                    +',PDUND as undpro '
                    +',PDNOME as nompro '
                    +',PDMARCA as marcapro '
                    +',PNE_TIPO '
                    +', PNE_LOTE, PNE_DTVCTO '

                    +' from CADFRAC04_PNE,CADPRO '
                    +' where PNE_CODEMP=:CODEMP '
                    +' and PDCODPRO=PNE_CODMP '
                    +' and PNE_CHAVE=:CHAVE '
                    +' and PNE_CHAVE_ANO=:CHAVE_ANO '
                    +' and PNE_CODPRO=:CODPRO ');
   Tb_CADFRAC04_PNE.ParamByName('CODEMP').AsInteger  := codemp;
   Tb_CADFRAC04_PNE.ParamByName('CHAVE').AsFloat     := pChave;
   Tb_CADFRAC04_PNE.ParamByName('CHAVE_ANO').AsFloat := pChave_ano;
   Tb_CADFRAC04_PNE.ParamByName('CODPRO').AsFloat    := pCodpro;
   try
      Tb_CADFRAC04_PNE.Open;
      result:=true;
   except on e : exception do
      begin
      ex_erroSql_Novo(Tb_CADFRAC04_PNE,2173,'erro ao ler materia prima'+e.Message ,'CADFRAC04_PNE');
      result:=false;
      end;
      end;
   end;

//      ex_erroSql_Novo(Tb_CADFRAC04_PNE,697,'erro ao ler materia prima' ,'CADFRAC04_PNE');


end;


function TFrm_IndEnv_Fracionamento.fLerCADFRAC03_PN(pChave,pChave_ano: Real): Boolean;
begin
tb_CADFRAC03_PN.Close;
tb_CADFRAC03_PN.SQL.Clear;
tb_CADFRAC03_PN.SQL.Add('Select PN_CHAVE_ANO ,PN_CHAVE '
                         +',PN_CODPRO,PN_QTD,PN_QTD_PERDAS,PN_QTDUND_MASTER'
                         +',PDNOME as nompro '
                         +',PDUND as undpro '
                         +',PDMARCA as marcapro '
                         +',PDQTDGRML as qtdgrml '
                         +',PDQTDGRML*PN_QTD as qtdgrml_total '
                         +',PN_LOTE, PN_DTVCTO '
                         +' from CADFRAC03_PN,CADPRO '
                         +' where PDCODPRO=PN_CODPRO '
                         +' and PN_CHAVE=:CHAVE '
                         +' and PN_CHAVE_ANO=:CHAVE_ANO ');
tb_CADFRAC03_PN.ParamByName('CHAVE').AsFloat :=pchave;
tb_CADFRAC03_PN.ParamByName('CHAVE_ANO').AsFloat :=pChave_ano;
try
   tb_CADFRAC03_PN.Open;
except on e : exception do
   ex_erroSql_Novo(tb_CADFRAC03_PN,683,'erro ao ler materia prima'+e.Message ,'CADCOMP');
   end;

end;


procedure TFrm_IndEnv_Fracionamento.src_CADFRAC03_PNDataChange(
  Sender: TObject; Field: TField);
begin
if (tb_CADFRAC03_PNPN_CHAVE.AsFloat<>Tb_CADFRAC04_PNEPNE_CHAVE.AsFloat) or
   (tb_CADFRAC03_PNPN_CHAVE_ANO.AsFloat<>Tb_CADFRAC04_PNEPNE_CHAVE_ANO.AsFloat) or
   (tb_CADFRAC03_PNPN_CODPRO.AsFloat<>Tb_CADFRAC04_PNEPNE_CODPRO.AsFloat)  then
   begin
   fLerCADFRAC04_PNE(tb_CADFRAC03_PNPN_CHAVE.AsFloat,tb_CADFRAC03_PNPN_CHAVE_ANO.AsFloat,tb_CADFRAC03_PNPN_CODPRO.AsFloat);
   end;

end;

function TFrm_IndEnv_Fracionamento.fQtdLivre: Real;
var
tmp_CADFRAC03_PN: tDataset;
begin
{
tmp_CADFRAC03_PN:=Tb_CADFRAC03_PN;
}
result:=0;

end;




procedure TFrm_IndEnv_Fracionamento.tb_CADFRAC03_PNAfterEdit(
  DataSet: TDataSet);
begin
mFrac03_Codpro:=tb_CADFRAC03_PNPN_CODPRO.AsFloat;
mQtdGrML_pn_ant :=tb_CADFRAC03_PNqtdgrml.AsFloat*(tb_CADFRAC03_PNPN_QTD.AsFloat);
//mQtdGrML_pn_ant :=tb_CADFRAC03_PNqtdgrml.AsFloat*(tb_CADFRAC03_PNPN_QTD.AsFloat-tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat);
mQtdPerdas_ant:=tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat;

bbexcluir_CADFRAC03_PN.Enabled:=bbGravar.Enabled;

end;

procedure TFrm_IndEnv_Fracionamento.tb_CADFRAC03_PNAfterInsert(
  DataSet: TDataSet);
begin
    mQtdGrML_pn_ant:=0;
    mQtdPerdas_ant :=0;

    mFrac03_Codpro:=0;

bbexcluir_CADFRAC03_PN.Enabled:=bbGravar.Enabled;

end;

procedure TFrm_IndEnv_Fracionamento.Tb_Frac01_FracionarBeforePost(
  DataSet: TDataSet);
begin

Tb_Frac01_Fracionarqtdgrml_total.Value:=Tb_Frac01_Fracionarqtdgrml.AsFloat *Tb_Frac01_FracionarCF_QTD.AsFloat;

end;

procedure TFrm_IndEnv_Fracionamento.tb_CADFRAC03_PNBeforePost(
  DataSet: TDataSet);
begin
if tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat>0 then
   begin
   if (tb_CADFRAC03_PNPN_QTD.AsFloat<=tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat)  then
       begin
       messagedlg('o numero de perdas tem que ser menor que quantidade a produzir!',mtWarning,[mbOk],0);
       abort;
       exit;
       end;
    end;


if (tb_CADFRAC03_PNPN_QTD.AsFloat) > ((mQtdGrML_pn_ant+mQtdGrML_Faltam)/tb_CADFRAC03_PNqtdgrml.AsFloat)  then
   begin
   MessageDlg('Quantidade solicitada '+Floattostr( tb_CADFRAC03_PNPN_QTD.Asfloat)+' maxima permitida '+Floattostr(((mQtdGrML_pn_ant+mQtdGrML_Faltam)/tb_CADFRAC03_PNqtdgrml.AsFloat))+' invalido!',mtWarning,[mbOk],0);
   tb_CADFRAC03_PNPN_QTD.AsFloat:=((mQtdGrML_pn_ant+mQtdGrML_Faltam)/tb_CADFRAC03_PNqtdgrml.AsFloat);
   abort;
   exit;
   end;
//mQtdGrML_Faltam:=(mQtdGrML_Faltam-(tb_CADFRAC03_PNqtdgrml.AsFloat* (tb_CADFRAC03_PNPN_QTD.AsFloat-tb_CADFRAC03_PNPN_QTD_perdas.AsFloat)))

mQtdGrML_Faltam:=(mQtdGrML_Faltam-(tb_CADFRAC03_PNqtdgrml.AsFloat* (tb_CADFRAC03_PNPN_QTD.AsFloat)))
                 +mQtdGrML_pn_ant;

//mperdas_faltam:=(mperdas_faltam-(tb_CADFRAC03_PNPN_QTD_PERDAS.asfloat))
//                 +mQtdPerdas_ant;

mQtdGrML_pn_ant:=0;
mQtdPerdas_ant:=0;
pApresentaTotais;
tb_CADFRAC03_PNPN_QTDUND_MASTER.AsFloat:=(tb_CADFRAC03_PNqtdgrml.AsFloat* (tb_CADFRAC03_PNPN_QTD.AsFloat-tb_CADFRAC03_PNPN_QTD_perdas.AsFloat))/Tb_Frac01_Fracionarqtdgrml.AsFloat;
if (mFrac03_Codpro=0) then
   mant_tb_CADFRAC03_PN.Append
else
   begin
   if mant_tb_CADFRAC03_PN.Locate('codpro',mFrac03_Codpro,[]) then
      mant_tb_CADFRAC03_PN.edit
   else
      mant_tb_CADFRAC03_PN.Append;
   end;

mant_tb_CADFRAC03_PNcodpro.value:=tb_CADFRAC03_PNPN_CODPRO.AsFloat;
mant_tb_CADFRAC03_PN.post;

end;

procedure TFrm_IndEnv_Fracionamento.bbImprimirClick(Sender: TObject);
var
mCabecalho: Boolean;
begin
if Tb_Frac01_FracionarCF_CHAVE.IsNull then
   exit;


rlcab_obs.Caption:='Chave '+Tb_Frac01_FracionarCF_CHAVE.AsString+' Data/Hora: '+Tb_Frac01_FracionarCF_DATHOR.AsString;

cds_rel_frac01_fracionar.EmptyDataSet;
cds_rel_CADFRAC03_PN.EmptyDataSet;
cds_rel_frac01.EmptyDataSet;

cds_rel_frac01.Append;
cds_rel_frac01codpro.Value:=Tb_Frac01_FracionarCF_CODPRO.AsString;
cds_rel_frac01nompro.Value:=Tb_Frac01_Fracionarnompro.AsString;
cds_rel_frac01.Post;




cds_rel_frac01_fracionar.Append;
cds_rel_frac01_fracionarfrac01_codigo.Value:=Tb_Frac01_FracionarCF_CODPRO.AsString;
cds_rel_frac01_fracionarfrac01_qtde.Value  :=Tb_Frac01_FracionarCF_QTD.AsString;

cds_rel_frac01_fracionarfrac01_und.Value   :=Tb_Frac01_Fracionarundpro.AsString;
cds_rel_frac01_fracionarfrac01_nome.Value  :=Tb_Frac01_Fracionarnompro.AsString;
cds_rel_frac01_fracionarfrac01_marca.Value :=Tb_Frac01_Fracionarmarcapro.AsString;

Tb_CADFRAC02_EMB.First;
mCabecalho:=true;

While not Tb_CADFRAC02_EMB.Eof do
   begin
   if Tb_CADFRAC02_EMBMP_UTILIZA.AsString<>'Sim' then
      begin
      Tb_CADFRAC02_EMB.next;
      continue;
      end;
   if mCabecalho=false then
      cds_rel_frac01_fracionar.Append;
   cds_rel_frac01_fracionarfrac02_codigo.Value   :=Tb_CADFRAC02_EMBCFE_CODMP.AsString;
   cds_rel_frac01_fracionarfrac02_qtde.Value     :=Tb_CADFRAC02_EMBMP_QTD.AsString;
   cds_rel_frac01_fracionarfrac02_und.Value      :=Tb_CADFRAC02_EMBundpro.AsString;
   cds_rel_frac01_fracionarfrac02_nompro.Value   :=Tb_CADFRAC02_EMBnompro.AsString;
   cds_rel_frac01_fracionarfrac02_marcapro.Value :=Tb_CADFRAC02_EMBmarcapro.AsString;
   cds_rel_frac01_fracionar.Post;
   mCabecalho:=false;
   Tb_CADFRAC02_EMB.Next;
   end;
if cds_rel_frac01_fracionar.State in [dsedit,dsinsert] then
   cds_rel_frac01_fracionar.Post;

// inicio 03 04

tb_CADFRAC03_PN.First;
While (tb_CADFRAC03_PN.Eof=false) or (Tb_CADFRAC04_PNE.eof=false) do
   begin
   cds_rel_CADFRAC03_PN.Append;
   if Tb_CADFRAC04_PNE.eof=false then
      begin
      cds_rel_CADFRAC03_PNfrac04_und.Value       :=Tb_CADFRAC04_PNEundpro.AsString;
      cds_rel_CADFRAC03_PNfrac04_nompro.Value    :=Tb_CADFRAC04_PNEnompro.AsString;
      cds_rel_CADFRAC03_PNfrac04_codpro.Value    :=Tb_CADFRAC04_PNEPNE_CODMP.AsString;
      cds_rel_CADFRAC03_PNfrac04_marcapro.Value  :=Tb_CADFRAC04_PNEmarcapro.AsString;
      cds_rel_CADFRAC03_PNfrac04_qtde.Value      :=Tb_CADFRAC04_PNEPNE_QTD.AsString;
      Tb_CADFRAC04_PNE.Next;
      end;

   if tb_CADFRAC03_PN.Eof=false then
      begin
      cds_rel_CADFRAC03_PNfrac03_codpro.Value    :=tb_CADFRAC03_PNPN_CODPRO.AsString;
      cds_rel_CADFRAC03_PNfrac03_qtde.Value      :=tb_CADFRAC03_PNPN_QTD.AsString;
      cds_rel_CADFRAC03_PNfrac03_qtde_perdas.Value      :=tb_CADFRAC03_PNPN_QTD_PERDAS.AsString;
      cds_rel_CADFRAC03_PNfrac03_und.Value       :=tb_CADFRAC03_PNundpro.AsString;
      cds_rel_CADFRAC03_PNfrac03_nompro.Value    :=tb_CADFRAC03_PNnompro.AsString;
      cds_rel_CADFRAC03_PNfrac03_marca.Value     :=tb_CADFRAC03_PNmarcapro.AsString;
      tb_CADFRAC03_PN.Next
      end;
   cds_rel_CADFRAC03_PN.Post;
   end;




RLReport1.PreviewModal;
end;



function TFrm_IndEnv_Fracionamento.fBaixarMP(pChave,pLotSeq: Integer; pCancelamento: Boolean): Boolean;
var
mItem: Integer;
query_sit: TQuery;

pBaixar: pBaixarLotes;

begin

query_sit:=TQuery.Create(nil);
query_sit.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_sit.close;
query_sit.SQL.Add('Select OP3_CODIGO,OP3_LOTE,OP3_DTVCTO,OP3_DTFAB,OP3_QTDUTIL,OP3_PU,OP3_CODMAT '
                  +' from CADOP03 where OP3_CODIGO=0'+FloatToStr(pChave)
                    +' and OP3_LOTSEQ=0'+IntToStr(pLotSeq));
//                    +' AND OP3_FABENV=0 ');
try
   query_sit.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_sit,1684,'func Erro:'+e.Message ,'CADOP03');
   FreeAndNil(query_sit);
   result:=false;
   exit;
   end;
   end;




query_sit.First;
mItem:=0;
While not query_sit.eof do
   begin
   mItem:=mItem+1;
   	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := mItem;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := pChave;
	pBaixar.pChave_ano := pLotSeq;
	pBaixar.pQtd       := Query_sit.fieldbyname('OP3_QTDUTIL').AsFloat;
	pBaixar.pCodPro    := Query_sit.fieldbyname('OP3_CODMAT').AsString;
	pBaixar.pEstNor       := iif(pcancelamento=true,'E','S');
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := Query_Sit.fieldbyname('OP3_LOTE').AsString;
	pBaixar.pDtVcto       := Query_sit.fieldbyname('OP3_DTVCTO').AsDateTime;
	pBaixar.pDtFab        := Query_sit.fieldbyname('OP3_DTFAB').AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := iif(pcancelamento=true,'Exclusao da ordem de produção','Ordem deProducao');
  PBaixar.pChaveIdNew   := pChave;


	fBaixarMercadorias(pBaixar);

{   fBaixarMercadorias(codemp
                 ,log_filial_padrao
                 ,mItem // item
                 ,04 // docori
                 ,codusr
                 ,0 //pcontesp
                 ,Log_TipoProdPad //ptipoprod
                 ,pchave // chave
                 ,pLotSeq
                 ,Query_sit.fieldbyname('OP3_QTDUTIL').AsFloat // qtd
                 ,Query_sit.fieldbyname('OP3_CODMAT').AsString
                 ,iif(pcancelamento=true,'E','S')  // estoque normal
                 ,'N'  // estoque reservado
                 ,Query_Sit.fieldbyname('OP3_LOTE').AsString
                 ,Query_sit.fieldbyname('OP3_DTVCTO').AsDateTime
                 ,'' // lote re
                 ,iif(pcancelamento=true,'Exclusao da ordem de produção','Ordem deProducao')  // estoque normal
                 );
                 }
   query_sit.Next;
   end;
query_sit.close;
query_sit.SQL.Clear;
query_sit.SQL.Add('Update CADOP03 set OP3_SITMP=:SITMP '
                 +' where OP3_CODIGO=:CHAVE '
                 +' and OP3_LOTSEQ=:LOTSEQ '
                 +' and OP3_CODEMP=:CODEMP ');
query_sit.ParamByName('SITMP').AsInteger   :=iif(pcancelamento=true,0,1);  // estoque normal
query_sit.ParamByName('CHAVE').AsFloat     :=pChave;
query_sit.ParamByName('LOTSEQ').AsInteger  :=pLotSeq;
query_sit.ParamByName('CODEMP').AsInteger  :=codemp;

try
   query_sit.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_sit,1735,'func Erro:'+e.Message ,'CADOP03');
   end;


query_sit.close;
query_sit.SQL.Clear;
query_sit.SQL.Add('Update CADOP01 set OP1_SITMP=:SITMP '
                 +' where OP1_CODIGO=:CHAVE '
                 +' and OP1_LOTSEQ=:LOTSEQ '
                 +' and OP1_CODEMP=:CODEMP ');
query_sit.ParamByName('SITMP').AsInteger   :=iif(pcancelamento=true,0,1);  // estoque normal
query_sit.ParamByName('CHAVE').AsFloat     :=pChave;
query_sit.ParamByName('LOTSEQ').AsInteger  :=pLotSeq;
query_sit.ParamByName('CODEMP').AsInteger  :=codemp;

try
   query_sit.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_sit,490,'func Erro:'+e.Message ,'CADOP03');
   end;


query_sit.Close;
FreeAndNil(query_sit);
result:=true;
end;



function TFrm_IndEnv_Fracionamento.fEntrarAcabado(pChave,pLotSeq: Integer; pCancelamento: Boolean): Boolean;
var

query_sit:TQuery;
mItem: Integer;
pBaixar: pBaixarLotes;

begin

query_sit:=TQuery.Create(nil);
query_sit.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_sit.close;
query_sit.SQL.Add('select OP1_LOTE,  OP1_DATAVEN, OP2_QTDPROD,OP2_PU,op2_codpro from cadop01,cadop02 '
                 +' WHERE OP2_CODEMP=OP1_CODEMP AND OP2_LOTSEQ=OP1_LOTSEQ AND OP2_CODIGO=OP1_CODIGO '
                 +' and OP1_CODIGO=0'+FloatToStr(pChave)
                 +' and OP1_LOTSEQ=0'+IntToStr(pLotSeq)
                 +' AND OP1_FABENV=0 ');
try
   query_sit.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_sit,1684,'func Erro:'+e.Message ,'CADOP03');
   FreeAndNil(query_sit);
   result:=false;
   exit;
   end;
   end;






query_sit.First;
mitem:=0;
While not query_sit.Eof do
   begin
   mItem:=mItem+1;

	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := mitem;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := pChave;
	pBaixar.pChave_ano := pLotSeq;
	pBaixar.pQtd       := query_sit.fieldbyname('op2_qtdprod').AsFloat;
	pBaixar.pCodPro    := query_sit.fieldbyname('op2_codpro').AsString;
	pBaixar.pEstNor       := iif(pcancelamento=true,'S','E');
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := query_sit.fieldbyname('op1_lote').AsString;
	pBaixar.pDtVcto       := query_sit.fieldbyname('OP1_DATAVEN').AsDateTime;
	pBaixar.pDtFab        := query_sit.fieldbyname('OP1_DTFAB').AsDateTime;

	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := iif(pcancelamento=false,'Exclusao da ordem de produção','Ordem deProducao');
  PBaixar.pChaveIdNew   := pChave;

	fBaixarMercadorias(pBaixar);

{
   fBaixarMercadorias(codemp
                 ,log_filial_padrao
                 ,mItem // item
                 ,04 // docori
                 ,codusr
                 ,0 //pcontesp
                 ,Log_TipoProdPad //ptipoprod
                 ,pChave // chave
                 ,pLotSeq
                 ,query_sit.fieldbyname('op2_qtdprod').AsFloat // qtd
                 ,query_sit.fieldbyname('op2_codpro').AsString
                 ,iif(pcancelamento=true,'S','E')  // estoque normal
                 ,'N'  // estoque reservado
                 ,query_sit.fieldbyname('op1_lote').AsString
                 ,query_sit.fieldbyname('OP1_DATAVEN').AsDateTime
                 ,'' // lote re
                 ,iif(pcancelamento=false,'Exclusao da ordem de produção','Ordem deProducao')  // estoque normal
                 );
}                 
   query_sit.Next;
   end;



query_sit.Close;
query_sit.SQL.Clear;
query_sit.SQL.Add('Update CADOP02 set OP2_SITACAB=:SITACAB '
                 +' where OP2_CODIGO=:CHAVE '
                 +' and OP2_LOTSEQ=:LOTSEQ '
                 +' and OP2_CODEMP=:CODEMP ');
query_sit.ParamByName('SITACAB').AsInteger   :=iif(pcancelamento=true,0,1);  // estoque normal
query_sit.ParamByName('CHAVE').AsFloat     :=pChave;
query_sit.ParamByName('LOTSEQ').AsInteger  :=pLotSeq;
query_sit.ParamByName('CODEMP').AsInteger  :=codemp;

try
   query_sit.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_sit,490,'func Erro:'+e.Message ,'CADOP03');
   end;



query_sit.close;
query_sit.SQL.Clear;
query_sit.SQL.Add('Update CADOP01 set OP1_SITACAB=:SITACAB '
                 +' where OP1_CODIGO=:CHAVE '
                 +' and OP1_LOTSEQ=:LOTSEQ '
                 +' and OP1_CODEMP=:CODEMP ');
query_sit.ParamByName('SITACAB').AsInteger   :=iif(pcancelamento=true,0,1);  // estoque normal
query_sit.ParamByName('CHAVE').AsFloat     :=pChave;
query_sit.ParamByName('LOTSEQ').AsInteger  :=pLotSeq;
query_sit.ParamByName('CODEMP').AsInteger  :=codemp;

try
   query_sit.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_sit,490,'func Erro:'+e.Message ,'CADOP03');
   end;


query_sit.Close;
FreeAndNil(query_sit);

result:=true;
end;



procedure TFrm_IndEnv_Fracionamento.DB_CF_CODPROEnter(Sender: TObject);
begin
    mCodFrac01_Ant:=Tb_Frac01_FracionarCF_CODPRO.AsFloat;
    mQtdFrac01_Ant:=Tb_Frac01_FracionarCF_QTD.AsFloat;

end;




procedure TFrm_IndEnv_Fracionamento.DBGrid_CADFRAC03_PNColEnter(
  Sender: TObject);
begin
if (DBGRID_CADFRAC03_PN.selectedfield=tb_CADFRAC03_PNPN_QTD) and (tb_CADFRAC03_PNPN_CODPRO.Asfloat=0) and
   (tb_CADFRAC03_PN.state in [dsedit,dsinsert]) then
   begin
   DBGRID_CADFRAC03_PN.selectedfield:=tb_CADFRAC03_PNPN_CODPRO;
   end;
if (DBGRID_CADFRAC03_PN.selectedfield=tb_CADFRAC03_PNPN_QTD) and (tb_CADFRAC03_PNPN_CODPRO.Asfloat>0) and
   (tb_CADFRAC03_PN.state in [dsedit,dsinsert]) then
   begin
   mqtdant:=tb_CADFRAC03_PNPN_QTD.asfloat;

   end;


end;

procedure TFrm_IndEnv_Fracionamento.tb_CADFRAC03_PNBeforeDelete(
  DataSet: TDataSet);
begin

if mant_tb_CADFRAC03_PN.Locate('codpro', tb_CADFRAC03_PNPN_CODPRO.AsFloat,[]) then
   mant_tb_CADFRAC03_PN.Delete;



mQtdGrML_Faltam:=mQtdGrML_Faltam+((tb_CADFRAC03_PNqtdgrml.AsFloat* (tb_CADFRAC03_PNPN_QTD.AsFloat)));
//mQtdGrML_Faltam:=mQtdGrML_Faltam+((tb_CADFRAC03_PNqtdgrml.AsFloat* (tb_CADFRAC03_PNPN_QTD.AsFloat-tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat)));
//mperdas_faltam:=mperdas_faltam+(tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat;
mQtdGrML_pn_ant:=0;
mQtdPerdas_ant:=0;
pApresentaTotais;

end;

procedure TFrm_IndEnv_Fracionamento.DBGrid_CADFRAC02_EMBExit(
  Sender: TObject);
begin
if tb_CADFRAC03_PN.state in [dsedit,dsinsert] then
   Tb_CADFRAC03_PN.Post;
end;




function TFrm_IndEnv_Fracionamento.fExcluirOP(pChave,pChave_ano: Integer): Boolean;
var
query_op01: TQuery;
query_op02: TQuery;
query_op03: TQuery;
query_exe: TQuery;
pBaixar: pBaixarLotes;

begin


query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_op01:=TQuery.Create(nil);
query_op01.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_op02:=TQuery.Create(nil);
query_op02.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_op03:=TQuery.Create(nil);
query_op03.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_op01.SQL.add('Select OP1_SITMP,OP1_SITACAB from CADOP01 '
                  +' where OP1_CODEMP=:OP1_CODEMP '
                  +' and OP1_FABENV=:OP1_FABENV '
                  +' and OP1_LOTSEQ=:OP1_LOTSEQ '
                  +' and OP1_CODIGO=:OP1_CODIGO ');
query_op01.ParamByName('OP1_CODEMP').AsInteger :=CODEMP;
query_op01.ParamByName('OP1_FABENV').AsInteger :=0;
query_op01.ParamByName('OP1_LOTSEQ').AsInteger :=pChave_ano;
query_op01.ParamByName('OP1_CODIGO').AsInteger :=pChave;

try
   query_op01.open;
except on e : exception do
   ex_erroSql_Novo(query_op01,2248,'erro ao ler materia prima'+e.Message ,'CADOP01');
   end;
if query_op01.FieldByName('OP1_SITMP').AsInteger=1 then
   begin

   query_op02.Close;
   query_op02.SQL.Clear;
   query_op02.SQL.add('Select OP2_CODEMP, '
                   +'       OP2_CODIGO, '
                   +'       OP2_SEQ, '
                   +'       OP2_CODPRO, '
                   +'       OP2_NUMERO, '
                   +'       OP2_QTDPREV, '
                   +'       OP2_QTDPROD, '
                   +'       OP2_PU, '
                   +'       OP2_LOTSEQ, '
                   +'       OP2_FABENV, '
                   +'       OP2_DTVCTO, '
                   +'       OP2_FAB_CHORI, '
                   +'       OP2_FAB_CODIGO, '
                   +'       OP2_FAB_LOTE, '
                   +'       OP2_FAB_VCTO, '
                   +'       OP2_FAB_DTFAB, '
                   +'       OP2_FAB_QTD, '
                   +'       OP2_FAB_PU, '
                   +'       OP2_SITACAB, '
                   +'       OP2_ORIGEM, '
                   +'       PDNOME '
                   +'       ,PDMARCA '
                   +'       ,PDUND '
                   +'       ,PDQTDGRML,PDPRZVAL,PDREGMS '
                   +'       ,PDCODGRU AS CODGRU '
                   +'       ,PDNOMGRU AS NOMGRU '
                   +' from CADOP02,CADPRO '
                   +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                      ' OP2_CODEMP=0'+IntToStr(codemp)+' and PDCODEMP=OP2_CODEMP and ')
                   +' (OP2_FABENV=0 or OP2_FABENV=1) '
                   +' and OP2_LOTSEQ=:LOTSEQ'
                   +' and OP2_CODIGO=:CHAVE'
                   +' and PDCODPRO=OP2_CODPRO '
                   +' order by PDNOME ');
   query_op02.parambyname('LOTSEQ').asinteger:=pChave_ano;
   query_op02.parambyname('CHAVE').asinteger:=pChave;

   query_op02.Open;
   While not query_op02.Eof do
      begin

	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := query_op02.fieldbyname('OP2_SEQ').Asinteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := query_op02.fieldbyname('OP2_CODIGO').AsInteger;
	pBaixar.pChave_ano := query_op02.fieldbyname('OP2_LOTSEQ').AsInteger;
	pBaixar.pQtd       := query_op02.fieldbyname('OP2_QTDPROD').AsFloat;
	pBaixar.pCodPro    := query_op02.fieldbyname('OP2_CODPRO').AsString;
	pBaixar.pEstNor       := 'S';
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := query_op02.fieldbyname('OP2_FAB_LOTE').AsSTRing;
	pBaixar.pDtVcto       := query_op02.fieldbyname('OP2_DTVCTO').AsDateTime;
	pBaixar.pDtFab        := query_op02.fieldbyname('OP2_DTFAB').AsDateTime;

	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';

  PBaixar.pChaveIdNew   := pChave;

	fBaixarMercadorias(pBaixar);
{
      fBaixarMercadorias(codemp
                     ,log_filial_padrao
                     ,query_op02.fieldbyname('OP2_SEQ').Asinteger
                     ,04 // docori
                     ,codusr
                     ,0 //pcontesp
                     ,Log_TipoProdPad //ptipoprod
                     ,query_op02.fieldbyname('OP2_CODIGO').Asfloat // chave
                     ,query_op02.fieldbyname('OP2_LOTSEQ').AsInteger
                     ,query_op02.fieldbyname('OP2_QTDPROD').AsFloat
                     ,query_op02.fieldbyname('OP2_CODPRO').AsString
                     ,'S'
                     ,'N'
                     ,query_op02.fieldbyname('OP2_FAB_LOTE').AsSTRing
                     ,query_op02.fieldbyname('OP2_DTVCTO').AsDateTime
                     ,'' // lote re
                     ,'' // obs
                     );
}
      query_op02.Next;
      end;


   query_op03.Close;
   query_op03.SQL.Clear;
   query_op03.SQL.add('Select '
                   +'  OP3_CODIGO, '
                   +'  OP3_LOTSEQ, '
                   +'  OP3_SEQ, '
                   +'  OP3_CODMAT, '
                   +'  OP3_NUMERO, '
                   +'  OP3_QTDPREV, '
                   +'  OP3_QTDUTIL, '
                   +'  OP3_LOTE, '
                   +'  OP3_DTVCTO '
                   +'   from CADOP03 '
                   +'   where  OP3_CODEMP=0'+IntToStr(codemp)+' and '
                      +' (OP3_FABENV=0 or OP3_FABENV=1) '
                      +' and OP3_LOTSEQ=0'+Inttostr(pChave_ano)
                      +' and OP3_CODIGO=0'+IntToStr(pChave)
                      );
   query_op03.Open;
   While not query_op03.Eof do
      begin
      flcadpro(1,0,0,fdeixanum(query_op03.fieldbyname('OP3_CODMAT').AsString));


	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := query_op03.fieldbyname('OP3_SEQ').Asinteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := query_op03.fieldbyname('OP3_CODIGO').AsInteger;
	pBaixar.pChave_ano := query_op03.fieldbyname('OP3_lotseq').AsInteger;
	pBaixar.pQtd       := query_op03.fieldbyname('OP3_QTDUTIL').AsFloat;
	pBaixar.pCodPro    := query_op03.fieldbyname('OP3_CODMAT').AsString;
	pBaixar.pEstNor       := 'E';
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := query_op03.fieldbyname('OP3_LOTE').AsString;
	pBaixar.pDtVcto       := query_op03.fieldbyname('OP3_DTVCTO').AsDateTime;
	pBaixar.pDtFab        := query_op03.fieldbyname('OP3_DTFAB').AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := pChave;

	fBaixarMercadorias(pBaixar);

{      fBaixarMercadorias(codemp
                     ,log_filial_padrao
                     ,query_op03.fieldbyname('OP3_SEQ').Asinteger
                     ,04 // docori
                     ,codusr
                     ,0 //pcontesp
                     ,Log_TipoProdPad //ptipoprod
                     ,query_op03.fieldbyname('OP3_CODIGO').Asfloat // chave
                     ,query_op03.fieldbyname('OP3_lotseq').AsInteger
                     ,query_op03.fieldbyname('OP3_QTDUTIL').AsFloat
                     ,query_op03.fieldbyname('OP3_CODMAT').AsString
                     ,'E'
                     ,'N'
                     ,query_op03.fieldbyname('OP3_LOTE').AsString
                     ,query_op03.fieldbyname('OP3_DTVCTO').AsDateTime
                  ,'' // lote re
                  ,'' // obs

                     );
}                     

      query_op03.Next;
      end;

   end;
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Delete from CADOPET where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OPE_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OPE_FABENV=0'
                  +' and OPE_LOTSEQ=:LOTSEQ '
                  +' and OPE_CODIGO=:CHAVE ');

query_exe.parambyname('LOTSEQ').asinteger:=pChave_ano;
query_exe.parambyname('CHAVE').asinteger:=pChave;

Try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1636,'Frm_Ped','CADOPET');
   end;
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Delete from CADOP03 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' (OP3_FABENV=0 or OP3_FABENV=1) '
                  +' and OP3_LOTSEQ=:LOTSEQ'
                  +' and OP3_CODIGO=:CHAVE ');
query_exe.parambyname('LOTSEQ').asinteger:=pChave_ano;
query_exe.parambyname('CHAVE').asinteger:=pChave;

Try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1649,'Frm_Ped','CADOP03');
   end;
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Delete from CADOP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' (OP2_FABENV=0 or OP2_FABENV=1) '
                  +' and OP2_LOTSEQ=:LOTSEQ'
                  +' and OP2_CODIGO=:CHAVE');
query_exe.parambyname('LOTSEQ').asinteger:=pChave_ano;
query_exe.parambyname('CHAVE').asinteger:=pChave;

Try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1662,'Frm_IndEnv_Fab','CADOP02');
   end;

query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Delete from CADOP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' (OP1_FABENV=0 or OP1_FABENV=1) '
                  +' and OP1_LOTSEQ=:LOTSEQ'
                  +' and OP1_CODIGO=:CHAVE');
query_exe.parambyname('LOTSEQ').asinteger:=pChave_ano;
query_exe.parambyname('CHAVE').asinteger:=pChave;

Try
   query_exe.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1676,'Frm_IndEnv_Fab','CADOP01');
   end;


query_exe.close;
freeandnil(query_exe);


query_op01.close;
freeandnil(query_op01);

query_op02.close;
freeandnil(query_op02);


query_op03.close;
freeandnil(query_op03);


result:=True;
end;

procedure TFrm_IndEnv_Fracionamento.bbexcluir_CADFRAC03_PNClick(
  Sender: TObject);
begin
IF bbGravar.Enabled=false then
   exit;
IF tb_CADFRAC03_PN.State in [dsedit,dsinsert] then
   Tb_CADFRAC03_PN.Cancel
else
   begin
   if Application.MessageBox(pchar('Quer Realmente excluir o Produto '+tb_CADFRAC03_PNPN_CODPRO.AsString+' '+tb_CADFRAC03_PNnompro.AsString),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   tb_CADFRAC03_PN.Delete;
   end;
end;

procedure TFrm_IndEnv_Fracionamento.tb_CADFRAC03_PNAfterPost(
  DataSet: TDataSet);
begin
bbexcluir_CADFRAC03_PN.Enabled:=bbGravar.Enabled;
end;

procedure TFrm_IndEnv_Fracionamento.tb_CADFRAC03_PNAfterDelete(
  DataSet: TDataSet);
begin

bbexcluir_CADFRAC03_PN.Enabled:=tb_CADFRAC03_PN.IsEmpty=false;
end;


function TFrm_IndEnv_Fracionamento.fValidarEstoque(pExclusao: Boolean) :Boolean;
var
form_ocorrencias: TFrm_Ocorrencias;
begin
form_ocorrencias:=TFrm_Ocorrencias.create(nil);
if pExclusao=true then
   begin


   end
else
   begin
   tb_CADFRAC03_PN.First;
   While not tb_CADFRAC03_PN.Eof do
      begin
      
      if fLerGenerico_query('CADEST','CESALDO','CECODPRO='+tb_CADFRAC03_PNPN_CODPRO.AsString+' and CEFILIAL='+IntToStr(log_filial_padrao) ,query_consulta) then
         begin
         if query_consulta.FieldByName('CESALDO').AsFloat< (tb_CADFRAC03_PNPN_QTD.AsFloat-tb_CADFRAC03_PNPN_QTD_PERDAS.AsFloat) then
            begin
            form_ocorrencias.adicionaItemListView('Produto: '+tb_CADFRAC03_PNPN_CODPRO.AsString
                                                 +' - '+Tb_CADFRAC04_PNEnompro.AsString+' Estoque '
                                                 +query_consulta.fieldbyname('CESALDO').AsString
                                                 +' Ira Baixar '+floattostr(tb_CADFRAC03_PNPN_QTD.asfloat-tb_CADFRAC03_PNPN_QTD_perdas.asfloat)+' saldo '
                                                 +FloatToStr(query_consulta.fieldbyname('CESALDO').asfloat-tb_CADFRAC03_PNPN_QTD.AsFloat)
                                                 +' é invalido!');
            end;

         end;
      tb_CADFRAC03_PN.Next;   
      end;
   end;


end;

procedure TFrm_IndEnv_Fracionamento.DBE_CF_QTD_PERDASExit(Sender: TObject);
begin
if (mQtdFrac01_Ant>0) and (mQtdFrac01_Ant>Tb_Frac01_FracionarCF_QTD.AsFloat) and (tb_CADFRAC03_PN.IsEmpty=false) then
   begin
   Tb_Frac01_FracionarCF_QTD.AsFloat:=mQtdFrac01_Ant;
   MessageDlg('Somente podera diminuar a quantidades quando os produtos novos nao forem digitados!',mtWarning,[mbOk],0);
   DB_CF_QTD.SetFocus;
   exit;
   end;


fLerCADFRAC02_EMB_INTERNO;

//mQtdGrML_Faltam:=(Tb_Frac01_FracionarCF_QTD.AsFloat-Tb_Frac01_FracionarCF_QTD_PERDAS.AsFloat) *Tb_Frac01_Fracionarqtdgrml.AsFloat;
mQtdGrML_Faltam:=(Tb_Frac01_FracionarCF_QTD.AsFloat) *Tb_Frac01_Fracionarqtdgrml.AsFloat;
//mperdas_faltam:=Tb_Frac01_FracionarCF_QTD_PERDAS.AsFloat;

if (tb_CADFRAC03_PN.Active) and (tb_CADFRAC03_PN.IsEmpty=false) then
   begin
   tb_CADFRAC03_PN.First;
   While not tb_CADFRAC03_PN.Eof do
      begin
      tb_CADFRAC03_PN.Edit;
      mQtdGrML_pn_ant :=0;
      tb_CADFRAC03_PN.Post;
      tb_CADFRAC03_PN.Next;
      end;
   end;


pApresentaTotais;


end;
procedure TFrm_IndEnv_Fracionamento.fCarregarComboLotes;
begin
query_lotes.close;
query_lotes.databasename:=DM1.SG_ASSOC.DatabaseName;
Query_lotes.SQL.clear;
Query_lotes.SQL.add('select CLNUMERO,CLDTVCTO,CLQTD from cadlGc '
                   +' where CLCODPRO=:CODPRO '
                   +' and CLCODEMP=:CODEMP '
                   +' and CLQTD>0');
query_lotes.ParamByName('CODPRO').Asfloat := Tb_Frac01_FracionarCF_CODPRO.AsFloat;
query_lotes.ParamByName('CODEMP').Asfloat := codemp;
try
   query_lotes.open;
except on e : exception do
   ex_erroSql_Novo(query_lotes,2924,'erro ao ler materia prima'+e.Message ,'CADLGC');
   end;
DBCb_CF_LOTE.Items.clear;
While not query_lotes.Eof do
   begin
   DBCb_CF_LOTE.Items.add(query_lotes.fieldbyname('CLNUMERO').AsString);
   query_lotes.Next;
   end;
if DBCb_CF_LOTE.Items.Count>0 then
   begin
   DBCb_CF_LOTE.ItemIndex:=0;
   Tb_Frac01_FracionarCF_LOTE.Text:=DBCb_CF_LOTE.Text;
   end;
fMostrarVencimento(DBCb_CF_LOTE.text);


end;

procedure TFrm_IndEnv_Fracionamento.fMostrarVencimento(pLote: String);
var
mqtdestoque: real;
mpos: integer;
begin
fGerarEvento('2962 vai mostrar vencimentos');

lbl_estoque.Caption:='';
if Tb_Frac01_Fracionar.State IN [dsinsert,dsedit] then
   begin
   lbl_estoque.Caption:='';

   fGerarEvento('2967 vai limpar data ');
   Tb_Frac01_FracionarCF_DTVCTO.clear;
   fGerarEvento('2969 limpou data ');
   if Query_lotes.Locate('CLNUMERO',pLote,[]) then
      begin
      Tb_Frac01_FracionarCF_DTVCTO.AsDateTime:=Query_lotesCLDTVCTO.AsDateTime;
      lbl_estoque.Caption:=Query_lotesCLQTD.asstring;
      end;
   end;

end;
procedure TFrm_IndEnv_Fracionamento.BitBtn1Click(Sender: TObject);
begin


DBGrid_CADFRAC03_PN.SelectedField:=tb_CADFRAC03_PNPN_CODPRO;
DBGrid_CADFRAC03_PN.SetFocus;

end;

procedure TFrm_IndEnv_Fracionamento.DBCb_CF_LOTEClick(Sender: TObject);
begin
fMostrarVencimento(DBCb_CF_LOTE.Text);
end;

procedure TFrm_IndEnv_Fracionamento.DBGrid2DblClick(Sender: TObject);
begin
DBCb_CF_LOTE.Text:=Query_lotesCLNUMERO.AsString;


end;



function TFrm_IndEnv_Fracionamento.fSqlLote(pCodMat: String): String;
begin


result:='SELECT OP3_NUMERO,OP3_CODIGO FROM CADOP02,CADOP03 WHERE OP2_CODIGO=0'+Tb_Frac01_FracionarCF_CODPRO.asstring
            +' AND OP3_CODEMP=OP2_CODEMP AND OP3_FABENV=OP2_FABENV AND OP2_CODIGO=OP3_CODIGO '
            +' AND (OP2_NUMERO='+QuotedStr(Tb_Frac01_FracionarCF_LOTE.AsString)+') '
            +' AND OP3_CODMAT='+pcodmat
            +' order by OP3_CODIGO desc ';
result:='select OP3_NUMERO from ('
            +Result
            +') t1 where rownum < 2 ';

result:='(select OP3_NUMERO from ('
            +Result
            +') t1 where rownum < 2 ) as CFE_LOTE ';
end;

function TFrm_IndEnv_Fracionamento.fSqlDtVcto(pCodMat: String): String;
begin

result:='SELECT OP3_DTVCTO,OP3_CODIGO FROM CADOP02,CADOP03 WHERE OP2_CODIGO=0'+Tb_Frac01_FracionarCF_CODPRO.asstring
            +' AND OP3_CODEMP=OP2_CODEMP AND OP3_FABENV=OP2_FABENV AND OP2_CODIGO=OP3_CODIGO '
            +' AND (OP2_NUMERO='+QuotedStr(Tb_Frac01_FracionarCF_LOTE.AsString)+') '
            +' AND OP3_CODMAT='+pcodmat
            +' order by OP3_CODIGO desc ';
result:='(select OP3_DTVCTO from ('
            +result
            +') t1 where rownum < 2) as CFE_DTVCTO ';
end;
procedure TFrm_IndEnv_Fracionamento.DBGrid_CADFRAC04_PNEColEnter(
  Sender: TObject);

  procedure fCarregarLoteMateriaPrima(pcodpro: real);
  var
  query_temp: TQuery;
  begin
  query_temp:=TQuery.create(nil);
  query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
  query_temp.sql.add('SELECT cldtvcto,clnumero FROM cadlgc '
                    +' where CLCODPRO=:CODPRO '
                    +' order by CLDTVCTO DESC,CLNUMERO');
  query_temp.parambyname('CODPRO').AsFloat:=pCodPro;

  try
     query_temp.Open;
     While not query_temp.Eof do
        begin
        DBGrid_CADFRAC04_PNE.Columns[6].PickList.Add(query_temp.fieldbyname('CLNUMERO').asstring);
        query_temp.Next;
        end;
  except on e : exception do
     ex_erroSql_Novo(query_temp,563,'erro ao ler cadlgc '+e.Message ,'CADLGC');
     end;
  query_temp.close;
  freeandnil(query_temp);

  end;

begin
if DBGrid_CADFRAC04_PNE.SelectedField=Tb_CADFRAC04_PNEPNE_LOTE then
   begin
   DBGrid_CADFRAC04_PNE.Columns[6].PickList.clear;
   if Tb_CADFRAC04_PNEPNE_CODPRO.AsFloat<>0 then
      fCarregarLoteMateriaPrima(Tb_CADFRAC04_PNEPNE_CODPRO.AsFloat);
   end;
end;



function TFrm_IndEnv_Fracionamento.fEstoqueNegativo(pchave,pchave_ano,pcodemp: integer): Boolean;
var
query_estoque: TQuery;
mocorrencias: string;
   procedure pfecharquery;
   begin
   query_estoque.close;
   freeandnil(query_estoque);

   end;
begin
mocorrencias:='';

query_estoque:=TQuery.create(nil);
query_estoque.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_estoque.SQL.add('Select PDNOME,PDMARCA,OP2_CODIGO,OP2_CODPRO, '
                     +' OP2_FAB_LOTE, OP2_FAB_VCTO , '
                     +' OP2_QTDPROD,NVL(CLQTD,0) AS QTDLOTE FROM CADOP02,CADLGC,CADPRO '
                     +' WHERE (OP2_FABENV=0 or OP2_FABENV=1) '
                     +' and OP2_LOTSEQ=0'+Inttostr(pchave_ano)
                     +' and OP2_CODIGO=0'+Inttostr(pchave)
                     +'  AND CLCODPRO(+)=OP2_CODPRO '
                     +' AND CLNUMERO(+)=OP2_FAB_LOTE '
                     +' AND PDCODPRO=OP2_CODPRO '
                     );
query_estoque.sql.text:='Select * from ( '
                       + query_estoque.SQL.Text
                       +'  ) WHERE QTDLOTE<OP2_QTDPROD ';
// ex_erroSql_Novo(query_estoque,8381,'SGE','CADVER');

try
   query_estoque.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_estoque,8381,'SGE '+e.message,'CADVER');
   pfecharquery;
   end;
   end;
While not query_estoque.Eof do
   begin
   mocorrencias:=mocorrencias+'O produto '+query_estoque.fieldbyname('OP2_CODPRO').AsString+' - '
                +query_estoque.fieldbyname('PDNOME').AsString
                +' Lote: '+query_estoque.fieldbyname('OP2_FAB_LOTE').AsString
                +' possui '+query_estoque.fieldbyname('QTDLOTE').AsString
                +' no estoque, nesta ordem de produção possui '+query_estoque.fieldbyname('OP2_QTDPROD').AsString
                +' não podera ser excluido a op pois o estoque ira ficar negativo'+#13;
   query_estoque.next;
   end;
if mocorrencias<>'' then
   begin
   MessageDlg(mocorrencias,mtWarning,[mbOk],0);
   result:=true;
   end
else
   result:=false;
pfecharquery;
end;






end.
