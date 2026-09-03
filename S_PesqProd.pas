unit S_PesqProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, ToolEdit,
  DB, DBTables, Buttons, DBCtrls, RxMemDS, S_ProConf,
       lerarq,  S_Pro, S_Pro_Nov,
  CheckLst, DBClient;



type
  TAuxDBGrid = class(TDBGrid);

  Tfrm_pesqprod = class(TForm)
    Qr_LGC: TQuery;
    Qr_LGCCLCODEMP: TFloatField;
    Qr_LGCCLCODPRO: TFloatField;
    Qr_LGCCLDTVCTO: TDateTimeField;
    Qr_LGCCLNUMERO: TStringField;
    Qr_LGCCLQTD: TFloatField;
    Qr_LGCCLQTDR: TFloatField;
    Qr_LGCCLQTDC: TFloatField;
    Qr_LGCCLQTDT: TFloatField;
    Qr_LGCdtvcto: TStringField;
    Qr_LGCCLQTD_PRAT: TFloatField;
    Qr_LGCCLQTD_DEP: TFloatField;
    Qr_LGCCLQTD_REP: TFloatField;
    Tb_PPR: TQuery;
    Tb_PPRPPCODEMP: TFloatField;
    Tb_PPRPPPROMOCAO: TStringField;
    Tb_PPRPPPVTIP: TStringField;
    Tb_PPRPPPVTAB: TStringField;
    Tb_PPRPPCODRED: TFloatField;
    Tb_PPRPPFLAG: TStringField;
    Tb_PPRPPCODPRO: TFloatField;
    Tb_PPRPPDATINI: TDateTimeField;
    Tb_PPRPPDATFIN: TDateTimeField;
    Tb_PPRPPCODGRU: TFloatField;
    Tb_PPRPPPCOVDA: TFloatField;
    Tb_PPRPPDESC_1: TFloatField;
    Tb_PPRPPDESC_2: TFloatField;
    Tb_PPRPPDESC_3: TFloatField;
    Tb_PPRPPCONFVDA: TStringField;
    Tb_PPRPPCOMIS: TFloatField;
    Tb_PPRPPQTDMIN: TFloatField;
    Tb_PPRPPVALMIN: TFloatField;
    Tb_PPRPPOBS: TStringField;
    Tb_PPRPPKIT: TStringField;
    Tb_PPRPPDESC_F: TFloatField;
    Tb_PPRdataini: TStringField;
    Tb_PPRdatafin: TStringField;
    Src_PPR: TDataSource;
    Src_Pro: TDataSource;
    Src_LGC: TDataSource;
    Panel_pesquisar: TPanel;
    Pesquisapor: TLabel;
    lbl_emp: TLabel;
    BBnAtu: TBitBtn;
    CAMPO: TComboBox;
    Edit1: TMaskEdit;
    btn_cadastro: TBitBtn;
    Panel_filtros: TPanel;
    Label86: TLabel;
    MARCA: TMaskEdit;
    Qr_Pro: TQuery;
    Qr_ProPDCODEMP: TFloatField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDCODBAR: TFloatField;
    Qr_ProPDCODNCM: TStringField;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDNOME2: TStringField;
    Qr_ProPDMARCA: TStringField;
    Qr_ProPDNIVEL: TFloatField;
    Qr_ProPDCODFOR: TFloatField;
    Qr_ProPDCODPROC: TFloatField;
    Qr_ProPDPRECO1: TFloatField;
    Qr_ProPDPRECO2: TFloatField;
    Qr_ProPDPRECO3: TFloatField;
    Qr_ProPDPRECOA1: TFloatField;
    Qr_ProPDPRECOA2: TFloatField;
    Qr_ProPDPRECOA3: TFloatField;
    Qr_ProPDDESC1: TFloatField;
    Qr_ProPDDESC1A: TFloatField;
    Qr_ProPDDESC2: TFloatField;
    Qr_ProPDDESC3: TFloatField;
    Qr_ProPDQTDP: TFloatField;
    Qr_ProPDPRAZO: TFloatField;
    Qr_ProPDDESFIN: TFloatField;
    Qr_ProPDSIT: TStringField;
    Qr_ProPDDTUATP1: TDateTimeField;
    Qr_ProPDDTULTSAI: TDateTimeField;
    Qr_ProPDDTULTENT: TDateTimeField;
    Qr_ProPDUSRALT1: TFloatField;
    Qr_ProPDDTUATP2: TDateTimeField;
    Qr_ProPDUSRALT2: TFloatField;
    Qr_ProPDDTUATP3: TDateTimeField;
    Qr_ProPDUSRALT3: TFloatField;
    Qr_ProPDDATAUA: TDateTimeField;
    Qr_ProPDUND: TStringField;
    Qr_ProPDCURVA: TStringField;
    Qr_ProPDCODGRU: TFloatField;
    Qr_ProPDCODCON: TFloatField;
    Qr_ProPDCODRAM: TFloatField;
    Qr_ProPDCODTIP: TFloatField;
    Qr_ProPDVDAMAXM: TFloatField;
    Qr_ProPDESTMAX: TFloatField;
    Qr_ProPDESTMIN: TFloatField;
    Qr_ProPDFRACAO: TFloatField;
    Qr_ProPDLISTA: TFloatField;
    Qr_ProPDPRECOC: TFloatField;
    Qr_ProPDPCOMC: TFloatField;
    Qr_ProPDPMC: TFloatField;
    Qr_ProPDCUSFAB: TFloatField;
    Qr_ProPDCUSENV: TFloatField;
    Qr_ProPDUCPR: TFloatField;
    Qr_ProPDCUSFIN: TFloatField;
    Qr_ProPDPCOFAB: TFloatField;
    Qr_ProPDSTATUS: TFloatField;
    Qr_ProPDSTATUS02: TFloatField;
    Qr_ProPDTABICM: TStringField;
    Qr_ProPDIPI: TFloatField;
    Qr_ProPDREGMS: TStringField;
    Qr_ProPDCLAS: TStringField;
    Qr_ProPDSECAO: TStringField;
    Qr_ProPDEMBPAD: TFloatField;
    Qr_ProPDEMBPAD2: TStringField;
    Qr_ProPDEMBMUL: TFloatField;
    Qr_ProPDCOMIS: TFloatField;
    Qr_ProPDSEMCOM: TFloatField;
    Qr_ProPDREST: TFloatField;
    Qr_ProPDPRZVAL: TFloatField;
    Qr_ProPDPESOB: TFloatField;
    Qr_ProPDPESOL: TFloatField;
    Qr_ProPDCODUSR: TFloatField;
    Qr_ProPDSALDO: TFloatField;
    Qr_ProPDBAIXO: TFloatField;
    Qr_ProPDALTO: TFloatField;
    Qr_ProPDSALDOR: TFloatField;
    Qr_ProPDBAIXOR: TFloatField;
    Qr_ProPDALTOR: TFloatField;
    Qr_ProPDSALDOC: TFloatField;
    Qr_ProPDBAIXOC: TFloatField;
    Qr_ProPDALTOC: TFloatField;
    Qr_ProPDDTALT: TDateTimeField;
    Qr_ProPDDATCAD: TDateTimeField;
    Qr_ProPDHRALT: TStringField;
    Qr_ProPDPROALT: TFloatField;
    Qr_ProPDNOMFOR: TStringField;
    Qr_ProPDNOMPROC: TStringField;
    Qr_ProPDNOMGRU: TStringField;
    Qr_ProPDNOMCON: TStringField;
    Qr_ProPDNOMRAM: TStringField;
    Qr_ProPDNOMTIP: TStringField;
    Qr_ProPDNOMPROALT: TStringField;
    Qr_ProPDUCODFOR: TFloatField;
    Qr_ProPDUNOMFOR: TStringField;
    Qr_ProPDCODFAB: TStringField;
    Qr_ProPDSALDOT: TFloatField;
    Qr_ProPDALTOT: TFloatField;
    Qr_ProPDBAIXOT: TFloatField;
    Qr_ProPDPMC02: TFloatField;
    Qr_ProPDPMC03: TFloatField;
    Qr_ProPDCX_PVDA: TFloatField;
    Qr_ProPDCX_PFAB: TFloatField;
    Qr_ProPDCX_PMAX: TFloatField;
    Qr_ProPDICMSCRED: TFloatField;
    Qr_ProPDICMSDEB: TFloatField;
    Qr_ProPDVLRINC: TFloatField;
    Qr_ProPDPRAT: TStringField;
    Qr_ProPDLADO: TStringField;
    Qr_ProPDRUA: TStringField;
    Qr_ProPDAPLIC: TStringField;
    Qr_ProPDAPRES: TStringField;
    Qr_ProPDSITCF: TStringField;
    Qr_ProPDQTDM3: TFloatField;
    Qr_ProPDUNDVDA: TFloatField;
    Qr_ProPDCOMIS_EXTRA: TFloatField;
    Qr_ProPDRESTFOR: TFloatField;
    Qr_ProPDRESTCON: TFloatField;
    Qr_ProPDQTDGRML: TFloatField;
    Qr_ProPDBLDESCAV: TFloatField;
    Qr_ProPDCODBAR_EMBPAD: TStringField;
    Qr_ProPDTEMPOFAB: TFloatField;
    Qr_ProPDSALDO_PRAT: TFloatField;
    Qr_ProPDSALDO_DEP: TFloatField;
    Qr_ProPDSALDO_REP: TFloatField;
    Qr_ProPDENTPEN: TFloatField;
    Qr_ProPDUSRALT: TFloatField;
    Qr_ProPDUSRINC: TFloatField;
    Qr_ProPDPRZVAL_ANOS: TFloatField;
    Qr_ProPDPRZVAL_DIAS: TFloatField;
    Qr_ProPDCODDEP: TFloatField;
    Qr_ProPDNOMDEP: TStringField;
    Qr_Proestoque: TFloatField;
    Qr_Proestoque_prat: TFloatField;
    Qr_Proestoque_dep: TFloatField;
    Qr_Proestoquer: TFloatField;
    Qr_Proestoquet: TFloatField;
    Qr_Proestoquec: TFloatField;
    Qr_Proentpen: TFloatField;
    Qr_Prodtuent: TDateField;
    Qr_Prodtusai: TDateField;
    Qr_Propcoven: TFloatField;
    Qr_Prodiferenca: TFloatField;
    Qr_Proestoque_rep: TFloatField;
    pgc_localizar: TPageControl;
    tbs_lista: TTabSheet;
    gb_estoque: TGroupBox;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    db_estoque: TDBEdit;
    db_estoquet: TDBEdit;
    db_estoquer: TDBEdit;
    db_estoquec: TDBEdit;
    db_entpen: TDBEdit;
    DBE_estoque_dep: TDBEdit;
    DBE_PRAT: TDBEdit;
    DBE_REP: TDBEdit;
    DBGrid1: TDBGrid;
    gb_promocao: TGroupBox;
    dbg_promocao: TDBGrid;
    GroupBox1: TGroupBox;
    lbl_ProVenc: TStaticText;
    tbs_filtros: TTabSheet;
    Bevel1: TBevel;
    tbs_lotes: TTabSheet;
    Bevel2: TBevel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    GB_INFO_GRADE: TGroupBox;
    st_estmin_prat_grade: TStaticText;
    st_estmin_ger_grade: TStaticText;
    CB_INIBIRBLOQ: TCheckBox;
    lbl_obs: TStaticText;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    CODCLI: TEdit;
    bbSair: TBitBtn;
    txt_nomcli: TMemo;
    panel_preco_cli: TPanel;
    Qr_Procodnommarca: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    Qr_Propcocomdesc: TFloatField;
    lbl_desccli: TLabel;
    sbConfigMaster: TSpeedButton;
    Src_ConfigMaster: TDataSource;
    mem_configMaster: TRxMemoryData;
    mem_configMasterCM_CHAVE: TStringField;
    mem_configMasterCM_ORDEM: TIntegerField;
    mem_configMasterCM_TAMANHO: TIntegerField;
    mem_configMasterCM_CAPTION: TStringField;
    mem_configMasterCM_VISIVEL: TStringField;
    CLFNivel: TCheckListBox;
    Label89: TLabel;
    Qr_ProPDREFER: TStringField;
    Qr_ProPDDATA_REPLICA: TDateTimeField;
    Qr_ProPDDESCMAX: TFloatField;
    Qr_ProPDTEMFORMULA: TFloatField;
    Qr_ProPDBALANCA: TFloatField;
    Qr_ProPDVALREGMS: TDateTimeField;
    Qr_ProPDKIT: TStringField;
    Qr_ProPDFIS_PRED_ICMS_EST: TFloatField;
    Qr_ProPDFIS_ORIGEM: TStringField;
    Qr_ProPDFIS_CST_ICMS_EST_CF: TStringField;
    Qr_ProPDFIS_CSOSN_EST_REV: TStringField;
    Qr_ProPDFIS_CSOSN_EST_CF: TStringField;
    Qr_ProPDFIS_CSOSN_INT_REV: TStringField;
    Qr_ProPDFIS_CSOSN_INT_CF: TStringField;
    Qr_ProPDFIS_CST_PISCOF_ENTRADA: TStringField;
    Qr_ProPDFIS_CST_PISCOF_SAIDA: TStringField;
    Qr_ProPDCODEXT: TFloatField;
    Qr_ProPDFIS_CST_ICMS_EST_REV: TStringField;
    Qr_ProPDFIS_CST_ICMS_INT_CF: TStringField;
    Qr_ProPDFIS_CST_ICMS_INT_REV: TStringField;
    Qr_ProPDFIS_PRED_ICMS_INT: TFloatField;
    Qr_ProPDFIS_PIS_ALIQ_ENTRADA: TFloatField;
    Qr_ProPDFIS_COFINS_ALIQ_ENTRADA: TFloatField;
    Qr_ProPDFIS_PIS_ALIQ_SAIDA: TFloatField;
    Qr_ProPDFIS_COFINS_ALIQ_SAIDA: TFloatField;
    Qr_ProPDCONTESP: TFloatField;
    Qr_ProPDCMET_CONSTANTE: TFloatField;
    Qr_Prosaldo_filial: TFloatField;
    bbEstFilial: TBitBtn;
    Qr_Prosaldo_filial_disponivel: TFloatField;
    Qr_Proqtd_analise: TFloatField;
    Qr_ProPDCMET_BITOLA: TFloatField;
    Qr_ProPDTIPOPROD: TFloatField;
    Label7: TLabel;
    CB_ESTOQUE: TComboBox;
    Label8: TLabel;
    CB_TABPV: TComboBox;
    CODPV: TEdit;
    NOMPV: TEdit;
    Qr_ProPRECO_VENDA: TFloatField;
    tsObservacoes: TTabSheet;
    DBMemo1: TDBMemo;
    Label_key: TLabel;
    Qr_ProSALDO_PEDIDO: TFloatField;
    Qr_Prodtvenc: TDateTimeField;
    bbSalvarPadrao: TBitBtn;
    Qr_ProPDCOMPRA_UND: TStringField;
    Qr_ProPDNOME_COMPRA: TStringField;
    tsConfiguracao: TTabSheet;
    gb_configMaster: TGroupBox;
    Label2: TLabel;
    sb_configMaster_Restaurar: TSpeedButton;
    sbConfigMaster_Salvar: TSpeedButton;
    DBGrid3: TDBGrid;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    src_config_salva: TDataSource;
    cds_config_salva: TClientDataSet;
    cds_config_salvacodusr: TIntegerField;
    cds_config_salvanomusr: TStringField;
    DBGrid4: TDBGrid;
    GroupBox4: TGroupBox;
    cds_salvar_para: TClientDataSet;
    src_salvar_para: TDataSource;
    cds_salvar_parasalvar: TStringField;
    cds_salvar_paracodusr: TIntegerField;
    cds_salvar_paranomusr: TStringField;
    DBGrid5: TDBGrid;
    Qr_ProPDCBENEF_CST_FORAE_REV: TStringField;
    Qr_ProPDCBENEF_CST_FORAE_CONSFIN: TStringField;
    Qr_ProPDCBENEF_CST_DENTROE_REV: TStringField;
    Qr_ProPDCBENEF_CST_DENTROE_CONSFIN: TStringField;
    Qr_ProPDOBS_NEW: TMemoField;
    Qr_LGCCLSITUACAO: TFloatField;
    Qr_LGCsituacao: TStringField;
    GroupBox5: TGroupBox;
    st_recall: TStaticText;
    cb_salvar_sql: TCheckBox;
    Qr_Proqtd_em_recall: TFloatField;
    Qr_LGCCLDTFAB: TDateTimeField;
    Qr_LGCdtfab: TStringField;
    Qr_ProPDALIQ_ISS: TFloatField;
    Qr_ProPDCBS_CST: TStringField;
    Qr_ProPDCODCLASSTRIB: TStringField;
    Qr_ProPDSERV_INSS_ALIQ: TFloatField;
    Qr_ProPDSERV_INSS_RED: TFloatField;
    Qr_ProPDSERV_IRRF_ALIQ: TFloatField;
    Qr_ProPDSERV_IRRF_RED: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Src_ProDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure Qr_LGCCalcFields(DataSet: TDataSet);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure btn_cadastroClick(Sender: TObject);
    procedure Qr_ProCalcFields(DataSet: TDataSet);
    procedure RG_ESTOQUEClick(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbConfigMasterClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure sb_configMaster_RestaurarClick(Sender: TObject);
    procedure DBGrid1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure sbConfigMaster_SalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    function flcadpro_Local(pDadosPesqProd: pDadosPesqProd): Boolean;

    procedure bbEstFilialClick(Sender: TObject);
    procedure CB_TABPVExit(Sender: TObject);
    procedure CODPVExit(Sender: TObject);
    procedure CB_ESTOQUEClick(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure CB_ESTOQUEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private


    { Private declarations }

    mUsrConfig: integer;

    mCampos: array of string;

    function fCarregaPadrao(ptipo: Integer): String;
    function fcarregapromocao(ptipo: Integer): Boolean;
    function fcarregagrade(ptipo: Integer): Boolean;
    function fGravaFil(ptipo: Integer): Boolean;

    procedure fLimparDadosPesqProd;
    procedure fBuscarDadosUsr;



    procedure fBuscarConfigSalva;





    procedure fCarregarPadrao(pCodUsr: integer);

    procedure fMarcarUsrParaSalvar(pCodusr: integer);


  public

    { Public declarations }

    mpro_codcli: string;
    mpro_aceita_pco_exclusivo: string;


   parpp_acretodos:Real;
   parpp_acret0:Real;
   parpp_acret1:real;
   parpp_acred01: real;
   parpp_tpp: Integer;
   pFilial: Integer;
   pFilial_Desc: String;
   pDescPcoLiq: Real;
   mPVTipoDesc01: Integer;
   mPVTipoPreco: Integer;   //  2 - extra
   muf_cad: string;
   function fAtualizaGrid(pTipo: Integer): Boolean;
   function fAtualizaTabela(pTipo: Integer): Boolean;

   function fTipodePreco: Boolean;

   procedure fConfigLimpo;


  end;
const
   mFormulario  =  '_PESQPROD';

var
  frm_pesqprod: Tfrm_pesqprod;
  propesq_ori: String;
  mfiltro    : String;
  pro_dtvcto : TDateTime;
  mAtuafiltro: boolean=False;
  mPrecoAnt  : Real;
  mSoConsulta: Boolean=False;
  mCodpro_Ant: Real=0;
  mcodigo    : String;
  mDescCli   : Real=0;
  form_pro_nov  : tFrm_Pro_nov;

  mDadosPesqProd : pDadosPesqProd;

implementation

uses func_excecoes, S_VendaBloqueada_Relacao, S_Pro_CodBar, S_Pro_Fornec,
     S_DM1, S_DM4, func, S_DM2, S_Pcus, s_Princ, S_Pro_EstFilial;


{$R *.dfm}

procedure Tfrm_pesqprod.FormCreate(Sender: TObject);
var
  x : Integer;
  n: Integer;
  nivel  : TNivPro;
begin
cb_salvar_sql.visible:=codusr=1111;

tsConfiguracao.TabVisible:=false;
if log_filial_Qtd<2 then
   begin
   bbEstFilial.Visible:=false;
   DBGrid1.Columns[8].Visible:=false;
   end;

CLFNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLFNivel.Items.Add(nivel[n]);
  end;

mUsrConfig :=-1;
pgc_localizar.ActivePage := tbs_lista;

if pdatasis<=pdatanula then
   pdatasis:=date;

pro_dtvcto          := pdatasis;
lbl_ProVenc.Visible := False;

if ValInt(copy(mpseg,4,2))=01 then
   begin
   DBGrid2.Columns[1].Visible:=True;
   Qr_LGCCLNUMERO.DisplayLabel:='Numero do Lote';
   tbs_lotes.Caption:='&Lotes das Mercadorias';
   if DM1.Tb_PargerPQTDDIAV.Value>0 then
      pro_dtvcto:=pdatasis+DM1.Tb_PargerPQTDDIAV.Value;
   lbl_ProVenc.Caption:='Produtos com Vencimentos Inferior a: '+FormatDateTime(fdt2, pro_dtvcto);
   lbl_ProVenc.Visible:=true;
   if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
      lbl_ProVenc.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;

   end
else if (valint(copy(mpseg,4,2))=02) then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      pgc_localizar.Pages[2].TabVisible := False
   else
      begin
      tbs_lotes.Caption := '&Grade';
      DBGrid2.Columns[1].Visible:=False;
      Qr_LGCCLNUMERO.DisplayLabel:='Grade';
      end;
   end
else if (valint(copy(mpseg,4,2))=03) then
   begin
   tbs_lotes.Caption           := '&Lote';
   DBGrid2.Columns[1].Visible  :=False;
   Qr_LGCCLNUMERO.DisplayLabel :='Lote';
   end
else
   pgc_localizar.Pages[2].TabVisible := False;

if DM1.Tb_PargerPDQPCOP.Value=1 then
   begin
   DBGrid1.Columns[4].Visible:=false;
   DBGrid1.Columns[5].Visible:=false;
   end
else if DM1.Tb_PargerPDQPCOP.Value=2 then
   begin
   DBGrid1.Columns[5].Visible:=false;
   end
else if (DM1.Tb_PargerPDQPCOP.Value=4) or (DM1.Tb_PargerPDQPCOP.Value=5) then
   begin
   if (DM1.Tb_PargerPDQPCOP.Value=4) then
      DBGrid1.Columns[5].Visible:=false;
   DBGrid1.Columns[4].Title.Caption:='Pço.Atacado';
   DBGrid1.Columns[3].Title.Caption:='Pço.Varejo';
   end;


pro_dtvcto:=pdatasis;
lbl_ProVenc.Visible:=False;

if ValInt(copy(mpseg,4,2))=01 then
   begin
   DBGrid2.Columns[1].Visible:=True;
   Qr_LGCCLNUMERO.DisplayLabel:='Numero do Lote';
   tbs_lotes.Caption:='&Lotes das Mercadorias';
   if DM1.Tb_PargerPQTDDIAV.Value>0 then
      pro_dtvcto:=pdatasis+DM1.Tb_PargerPQTDDIAV.Value;

   lbl_ProVenc.Caption:='Produtos com Vencimentos Inferior a: '+FormatDateTime(fdt2, pro_dtvcto);
   lbl_ProVenc.Visible:=true;
   if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
      lbl_ProVenc.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;

   end
else if (valint(copy(mpseg,4,2))=02) then
   begin
   GB_INFO_GRADE.Visible:=true;
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      pgc_localizar.Pages[2].TabVisible:=False
   else
      begin
      tbs_lotes.Caption:='&Grade';
      DBGrid2.Columns[1].Visible:=False;
      Qr_LGCCLNUMERO.DisplayLabel:='Grade';
      end;
   end
else if (valint(copy(mpseg,4,2))=03) then
   begin
   tbs_lotes.Caption:='&Lote';
   DBGrid2.Columns[1].Visible:=False;
   Qr_LGCCLNUMERO.DisplayLabel:='Lote';
   end
else
   pgc_localizar.Pages[2].TabVisible:=False;



if (DM1.Tb_PargerPPROMCADPRO.AsInteger = 1) then
   begin
   if (Screen.Width=800) and (screen.Height=600) then
      begin
      gb_promocao.Visible  := false;
      Height := 467;
      end
   else
      begin
      gb_promocao.Visible  := true;
      Height :=559;
      end;
   end
else
   begin
   gb_promocao.Visible  := False;
   if (Screen.Width=800) and (screen.Height=600) then
      Height := 467
   else
      Height :=559;
   end;


if Log_TipoLote>0 then
   tbs_lotes.TabVisible := True
else
   tbs_lotes.TabVisible := False;
propesq_ori:='';
if DM1.Tb_PargerPUPMC.Value=0 then
   begin
   DBGrid1.Columns[09].Visible:=False;
   DBGrid1.Columns[10].Visible:=False;
   end;

if DM1.Tb_PargerPOCUEST.Value = 1 then
   DBGrid1.Columns[1].Width := 430;

// INICIO


// TERMINO

if flfilpad(0,'_PESQPROD','CB_ESTOQUE') then
   CB_ESTOQUE.itemindex:=valint(DM4.Tb_FilPad2FPVALOR.Value);


if flfilpad(0,'_PESQPROD','') then
   begin

//  DM4.Tb_FilPad.First;
//  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_ESTOQUE']),[]) then



  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_MATPREV']),[]) then
    begin
    if DM4.Tb_FilPad2FPVALOR.Value='true' then
      CLFNivel.Checked[0]:=true
    else
      CLFNivel.Checked[0]:=false;
      end
  else
   CLFNivel.Checked[0]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_MATPRIMA']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[1]:=true
     else
        CLFNivel.Checked[1]:=false;
     end
  else
     CLFNivel.Checked[1]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_EMBALAGEM']),[]) then
    begin
    if DM4.Tb_FilPad2FPVALOR.Value='true' then
      CLFNivel.Checked[2]:=true
    else
      CLFNivel.Checked[2]:=false;
    end
  else
     CLFNivel.Checked[2]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_PRODPROD']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[3]:=true
     else
        CLFNivel.Checked[3]:=false;
     end
  else
     CLFNivel.Checked[3]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_ACABADO']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[4]:=true
     else
        CLFNivel.Checked[4]:=false;
     end
  else
     CLFNivel.Checked[4]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_SUBPRO']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[5]:=true
     else
        CLFNivel.Checked[5]:=false;
     end
  else
     CLFNivel.Checked[5]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_ACES']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[6]:=true
     else
        CLFNivel.Checked[6]:=false;
     end
  else
     CLFNivel.Checked[6]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_USOCONSUMO']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[7]:=true
     else
        CLFNivel.Checked[7]:=false;
     end
  else
     CLFNivel.Checked[7]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_IMOBILIZADO']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[8]:=true
     else
        CLFNivel.Checked[8]:=false;
     end
  else
     CLFNivel.Checked[8]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_SERVICO']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[9]:=true
     else
        CLFNivel.Checked[9]:=false;
     end
  else
     CLFNivel.Checked[9]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_INSUMOS']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[10]:=true
     else
        CLFNivel.Checked[10]:=false;
     end
  else
     CLFNivel.Checked[10]:=true;

  DM4.Tb_FilPad.First;
  if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PESQPROD','CB_OUTROS']),[]) then
     begin
     if DM4.Tb_FilPad2FPVALOR.Value='true' then
        CLFNivel.Checked[11]:=true
     else
        CLFNivel.Checked[11]:=false;
     end
  else
     CLFNivel.Checked[11]:=true;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_INIBIRBLOQ',[]) then
      CB_INIBIRBLOQ.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;
if not (DM1.Tb_PargerPCONSPROPAD.IsNull) then
   CAMPO.ItemIndex:=DM1.Tb_PargerPCONSPROPAD.AsInteger;
if CB_INIBIRBLOQ.Checked then
   lbl_obs.Caption:='Não Apresentando os Produtos Bloqueados';
if tipace=2 then
   btn_cadastro.Visible:=true
else if tipace=0 then
   btn_cadastro.Visible:=false
else
   begin
   DM4.Tb_Ace.Close;
   DM4.Tb_Ace.SQL.Clear;
   DM4.Tb_Ace.SQL.Add('select * from CADACE where MENU=:MENU and ');
   DM4.Tb_Ace.SQL.add(' '+fla_EmpBaixaAlta(0,'CADACE',' ',codemp,'CODEMP',' and ')
                     +'  CODCAR=0'+InttoStr(codcar)
                     +' order by CODEMP,CODCAR');
   DM4.Tb_Ace.ParamByName('MENU').AsString:='mpro_0103';
   DM4.Tb_Ace.Open;
{
   if DM4.Tb_Ace.IsEmpty then
      begin
      btn_cadastro.Visible:= DM4.Tb_Ace.Locate('MENU',Frm_Princ.mmoe_0103.Name,[]);
      end;
}      
   end;

Qr_ProPDUCPR.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propcoven.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
//Qr_Propcoven02.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
//Qr_Propcoven03.DisplayFormat     :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);

Qr_ProPDVLRINC.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propdpreco1.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propdpreco2.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propdpreco3.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propdprecoa1.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propdprecoa2.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propdprecoa3.DisplayFormat  :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_ProPDPMC.DisplayFormat      :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_ProPDPMC02.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_ProPDPMC03.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propdprecoc.DisplayFormat   :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propdpcomc.DisplayFormat    :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);
Qr_Propcocomdesc.DisplayFormat :=iif(DM1.Tb_PargerPCASPUIND.Value>DM1.Tb_PargerPCASASPU.Value,mcaspuind,mcasaspu);

Qr_ProPDUNDVDA.DisplayFormat   :=mcasqtd;
Qr_ProPDDTALT.DisplayFormat    :=fdathor;
Qr_ProPDDATCAD.DisplayFormat   :=fdathor;


Qr_ProPDDESFIN.DisplayFormat   :=mcasas;
Qr_ProPDDESC1.DisplayFormat    :=mcasas;
Qr_ProPDDESC1A.DisplayFormat   :=mcasas;
Qr_ProPDIPI.DisplayFormat      :=mcasas;
Qr_ProPDICMSCRED.DisplayFormat      :=mcasas;
Qr_ProPDICMSDEB.DisplayFormat      :=mcasas;
Qr_ProPDQTDGRML.DisplayFormat     :='#,##0.000';
Qr_ProPDQTDP.DisplayFormat     :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_ProPDDESC2.DisplayFormat    :=mcasas;
Qr_ProPDDESC3.DisplayFormat    :=mcasas;
Qr_Proentpen.DisplayFormat     :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_ProPDSALDO.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_Prosaldo_filial.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);

Qr_ProPDSALDO_DEP.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_ProPDSALDO_PRAT.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_ProPDBAIXO.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_ProPDALTO.DisplayFormat     :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_Proestoque.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_Prosaldo_filial.DisplayFormat    :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);

Qr_Prosaldo_filial.DisplayLabel:='Estoque '+log_filial_padrao_nome;
pFilial:=log_filial_padrao;
pFilial_Desc:=log_filial_padrao_nome;

Qr_Proestoquer.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_Proestoquec.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_Proestoquet.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_ProPDVDAMAXM.DisplayFormat  :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_ProPDEMBMUL.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_ProPDESTMAX.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
Qr_ProPDESTMIN.DisplayFormat   :=iif(DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value,mcasind,mcasqtd);
//fCarregaPadrao(0);




SetLength(mCampos,23);
mCampos[00]:='PDCODPRO';
mCampos[01]:='PDNOME';
mCampos[02]:='PDNOME2';
mCampos[03]:='PDMARCA';
mCampos[04]:='PDREFER';
mCampos[05]:='pcoven';
mCampos[06]:='PDPRECO2';
mCampos[07]:='PDPRECO3';
mCampos[08]:='estoque';
mCampos[09]:='saldo_filial';
mCampos[10]:='PDUND';
mCampos[11]:='PDDESC1';
mCampos[12]:='PDPMC';
mCampos[13]:='diferenca';
mCampos[14]:='PDCLAS';
mCampos[15]:='PDPESOB';
mCampos[16]:='PDEMBPAD';
mCampos[17]:='PDDTULTSAI';
mCampos[18]:='PDDTULTENT';
mCampos[19]:='PDNOME_COMPRA';
mCampos[20]:='PDCOMPRA_UND';
mCampos[21]:='PDPRECOC';
mCampos[22]:='PDPCOFAB';




parpp_acretodos:=0;
parpp_acret0   :=0;
parpp_acret1   :=0;
parpp_acred01  :=0;

fBuscarDadosUsr;

fBuscarConfigSalva;
cds_config_salva.locate('codusr',inttostr(codusr),[]);
DBGrid4CellClick(DBGrid4.Columns[0]);

end;

procedure Tfrm_pesqprod.fCarregarPadrao(pCodUsr: integer);
var
x: integer;

begin
if mem_configMaster.Active=false then
   mem_configMaster.Open;
mem_configMaster.DisableControls;
mem_configMaster.EmptyTable;

if flfilpad(pCodUsr,'_PESQPROD','') then
   begin
   for x:=0 to High(mcampos) do
      begin
      if DM4.Tb_FilPad2.Locate('FPCOMP',mCampos[x]+'_ORDEM',[]) then
         begin
         mem_configMaster.Append;
         mem_configMasterCM_CHAVE.AsString   :=mcampos[x];
         mem_configMasterCM_ORDEM.AsInteger  :=valint(DM4.Tb_FilPad2FPVALOR.AsString);
         if DM4.Tb_FilPad2.Locate('FPCOMP',mCampos[x]+'_TAM',[]) then
            mem_configMasterCM_TAMANHO.AsInteger  :=valint(DM4.Tb_FilPad2FPVALOR.AsString);
         if DM4.Tb_FilPad2.Locate('FPCOMP',mCampos[x]+'_CAPTION',[]) then
            mem_configMasterCM_CAPTION.AsString :=DM4.Tb_FilPad2FPVALOR.AsString;
         if DM4.Tb_FilPad2.Locate('FPCOMP',mCampos[x]+'_VISIVEL',[]) then
            mem_configMasterCM_VISIVEL.AsString :=DM4.Tb_FilPad2FPVALOR.AsString;
         mem_configMaster.Post;
         end;
      end;
   end
else
    fConfigLimpo;

fAtualizaGrid(0);
mem_configMaster.EnableControls;
end;


procedure Tfrm_pesqprod.BBnAtuClick(Sender: TObject);
begin
   if (CAMPO.ItemIndex=1) or (CAMPO.ItemIndex=3) then
       Edit1.Text:=fdeixanum2(Edit1.Text);
       fLimparDadosPesqProd;
       


      mDadosPesqProd.pTipo:=CAMPO.ItemIndex;
      mDadosPesqProd.pPre:=1;
      mDadosPesqProd.pCodEmp:=codemp;
      if CAMPO.ItemIndex=1 then
         mDadosPesqProd.pCodPro:=valfloat(Edit1.Text)
      else if CAMPO.ItemIndex=2 then
         mDadosPesqProd.pNomeGen:=Edit1.Text
      else if CAMPO.ItemIndex=3 then
         mDadosPesqProd.pCodBar:=fdeixanum2(Edit1.Text)
      else if CAMPO.ItemIndex=4 then
         mDadosPesqProd.pNomfor:=Edit1.Text
      else if CAMPO.ItemIndex=5 then
         mDadosPesqProd.pRefer:=Edit1.Text
      else if CAMPO.ItemIndex=6 then
         mDadosPesqProd.pCodFor:=valint(Edit1.Text)
      else if CAMPO.ItemIndex=7 then
         mDadosPesqProd.pNomeNaCompra:=Edit1.Text
      else
         mDadosPesqProd.pNome := Edit1.Text;
    mDadosPesqProd.pMarca := MARCA.Text;

   flcadpro_Local(mDadosPesqProd);

   if  ((CAMPO.ItemIndex=3) or (CAMPO.ItemIndex=1))  and (Qr_Pro.IsEmpty) then
       begin
       mcinst2:=FloatToStr(fAchaCodigoOri(Edit1.Text));
       Edit1.Text:=mcinst2;
       if valfloat(mcinst2)>0 then
          begin
          mDadosPesqProd.pCodPro:=valfloat(mcinst2);
          flcadpro_Local(mDadosPesqProd);
          end;
      end;
end;

procedure Tfrm_pesqprod.Edit1Change(Sender: TObject);
begin
   if DM1.Tb_PargerPONCHAGEPRO.Value=1 then begin
      if (CAMPO.ItemIndex=1) or (CAMPO.ItemIndex=3) then
         Edit1.Text:=fdeixanum2(Edit1.Text);
      fLimparDadosPesqProd;

      mDadosPesqProd.pTipo:=CAMPO.ItemIndex;
      mDadosPesqProd.pPre:=1;
      mDadosPesqProd.pCodEmp:=codemp;
      if CAMPO.ItemIndex=1 then
         mDadosPesqProd.pCodPro:=valfloat(Edit1.Text)
      else if CAMPO.ItemIndex=2 then
         mDadosPesqProd.pNomeGen:=Edit1.Text
      else if CAMPO.ItemIndex=3 then
         mDadosPesqProd.pCodBar:=fdeixanum2(Edit1.Text)
      else if CAMPO.ItemIndex=4 then
         mDadosPesqProd.pCodFor:=valint(Edit1.Text)
      else if CAMPO.ItemIndex=5 then
         mDadosPesqProd.pRefer:=Edit1.Text
      else if CAMPO.ItemIndex=6 then
         mDadosPesqProd.pCodFor:=valint(Edit1.Text)
      else if CAMPO.ItemIndex=7 then
         mDadosPesqProd.pNomeNaCompra:=Edit1.Text

      else
         mDadosPesqProd.pNome := Edit1.Text;
    mDadosPesqProd.pMarca := MARCA.Text;

   flcadpro_Local(mDadosPesqProd);

//      flcadpro2(campo.ItemIndex,1,0,iif(CB_PESQAVANC.Checked,'%','')+edit1.Text,MARCA.Text,'');
   end;
end;

procedure Tfrm_pesqprod.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

if (TAuxDBGrid(DBGrid1).DataLink.ActiveRecord + 1 = TAuxDBGrid(DBGrid1).Row) or (gdSelected in State) then
   begin
   DBGrid1.Canvas.Brush.Color := clSkyBlue;
   DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
   DBGrid1.Canvas.Font.Color := clBlack;
   end;

DBGrid1.Canvas.FillRect(Rect);
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

if (DM1.Tb_PargerPQTDDIAV.Value>0)  and (Qr_Prodtvenc.AsDateTime>pdatanula)
and (not (Qr_Prodtvenc.IsNull) and (Qr_Prodtvenc.Value<pro_dtvcto)) then
   begin
   if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if Qr_ProPDSTATUS.Value>7 then
   begin
   if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   end
else if Qr_ProPDNIVEL.Value=0 then
   begin
   if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_ACAB.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if Qr_ProPDNIVEL.Value=1 then
   begin
   if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end else if Qr_ProPDNIVEL.Value=2 then
      begin
      if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
         begin
         DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MPR.AsInteger;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end
      end
   else if Qr_ProPDNIVEL.Value=3 then
      begin
      if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
         begin
         DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_PP.AsInteger;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if Qr_ProPDNIVEL.Value=4 then
   begin
   if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if Qr_ProPDNIVEL.Value=5 then
   begin
   if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end else if Qr_ProPDNIVEL.Value=6 then
      begin
      if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
         begin
         DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end;

if (Qr_ProPDESTMIN.AsFloat>0) and (Qr_ProPDSALDO_PRAT.AsFloat<=Qr_ProPDESTMIN.AsFloat) then
   begin
   if not (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.Value<>0) then
      begin
      DBGrid1.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_ESTMIN_PRAT.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end else if (Qr_ProPDESTMIN.AsFloat>0) and (Qr_ProPDSALDO.AsFloat<=Qr_ProPDESTMIN.AsFloat) then
      begin
      if not (DM1.Tb_PargerPFCORP_ESTMIN_GER.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_GER.Value<>0) then
         begin
         DBGrid1.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_ESTMIN_GER.AsInteger;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end;


if DM1.Tb_PargerPFDIAS_SEMMOV.AsFloat>0 then
  if Qr_proPDDTULTSAI.AsDateTime+DM1.Tb_PargerPFDIAS_SEMMOV.AsFloat<Date then
    begin
    DBGrid1.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_SEMMOV.AsInteger;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;

if Qr_Proqtd_em_recall.AsFloat>0 then
   begin
   DBGrid1.Canvas.Brush.Color:=st_recall.Color;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end


end;

function Tfrm_pesqprod.fCarregaPadrao(ptipo: Integer): String;
var
  x, x2     : Integer;
  mfiltro: String;
begin
mfiltro          :='';
mcinst:='';



if (CLFNivel.Checked[0]) and (CLFNivel.Checked[1]) and
   (CLFNivel.Checked[2]) and (CLFNivel.Checked[3]) and
   (CLFNivel.Checked[4]) and (CLFNivel.Checked[5]) and
   (CLFNivel.Checked[6]) and (CLFNivel.Checked[6]) and
   (CLFNivel.Checked[7]) and (CLFNivel.Checked[8]) and
   (CLFNivel.Checked[9]) and (CLFNivel.Checked[10]) and
   (CLFNivel.Checked[11]) then

   mcinst2:=''
else
  begin
  mcinst2:='';
  mcinst3:='';
  for x2:=0 to 11 do
    begin
    if CLFNivel.Checked[x2] then
      begin
      mcinst2:=mcinst2+mcinst3+'PDNIVEL='+inttostr(x2);
      mcinst3:=' or ';
      end;
    end;
  mcinst2:='('+mcinst2+')';
  end;

if CB_INIBIRBLOQ.Checked then
   begin
   if trim(mfiltro)<>'' then
      mfiltro:=mfiltro+' and PDSTATUS<>9 '
   else
      mfiltro:=' PDSTATUS<>9 ';
   end;
result:=mfiltro;
end;

procedure Tfrm_pesqprod.DBGrid1DblClick(Sender: TObject);
begin
   ModalResult := MrOk;
   propesq_ori := '';
end;

procedure Tfrm_pesqprod.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

if (key<>9) and (key<>27) then
   begin
   if (key=115) and (shift=[ssalt]) then
   else
      begin
      if key=8 then
         Edit1.Text:=copy(Edit1.Text,1,length(Edit1.Text)-1)
      else if (key=32) or (key>60) then
         Edit1.Text:=Edit1.Text+Char(key);
      end;
   end;


   if key = vk_escape then begin
      propesq_ori := '';
      Close;
   end;

   if key = 9 then begin
      if propesq_ori = '' then begin
      end else begin
         ModalResult := MrOk;
         propesq_ori := '';
      end;
      Abort;
   end;
end;

procedure Tfrm_pesqprod.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = vk_escape then begin
      propesq_ori := '';
      Close;
   end;
end;

function Tfrm_pesqprod.fcarregapromocao(ptipo: Integer): Boolean;
begin
Tb_PPR.Close;
Tb_PPR.SQL.Clear;
Tb_PPR.SQL.add(' Select PPCODEMP, '
              +'  PPPROMOCAO, '
              +'  PPPVTIP, '
              +'  PPPVTAB, '
              +'  PPCODRED, '
              +'  PPCODCLI, '
              +'  PPUF, '
              +'  PPID, '
              +'  pPID_ANO, '
              +'   PPFLAG, '
              +'  PPCODPRO, '
              +'  PPGRADE, '
              +'  PPDATINI, '
              +'  PPDATFIN, '
              +'  PPCODGRU, '
              +'  PPPCOVDA, '
              +'  PPDESC_1, '
              +'  PPDESC_2, '
              +'  PPDESC_3, '
              +'  PPCONFVDA, '
              +'  PPCOMIS, '
              +'  PPQTDMIN, '
              +'  PPVALMIN, '
              +'  PPOBS, '
              +'  PPKIT, '
              +'  PPDESC_F, '
              +'  PPPRIOR '
              +' from CADPPR where '
   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PPCODPRO=0'+IntTostr(codemp)+' and ')
   +' PPCODPRO=0'+Qr_ProPDCODPRO.AsString);
Tb_PPR.Open;
if Tb_PPR.Eof then
   result:=false
else
   result:=true;

end;

procedure Tfrm_pesqprod.Src_ProDataChange(Sender: TObject; Field: TField);
begin
fcarregagrade(0);
if (pgc_localizar.ActivePage = tbs_lista) and (gb_promocao.Visible) then
   fcarregapromocao(0);
end;

function Tfrm_pesqprod.fcarregagrade(ptipo: Integer): Boolean;
begin
   Label6.Caption:='Produto: '+Qr_ProPDCODPRO.AsString+' - '+Qr_ProPDNOME.AsString+' Est.: '+FormatFloat(mcasqtd, Qr_Proestoque.Value);
   Qr_LGC.Close;
   Qr_Lgc.SQL.Clear;

   Qr_LGc.SQL.Add('Select CADLGC.* '
                 +', case when CLSITUACAO=0 then '+QuotedStr(situacaoLote[0])
                 +'       when CLSITUACAO=1 then '+QuotedStr(situacaoLote[1])
                 +'       when CLSITUACAO=2 then '+QuotedStr(situacaoLote[2])
                 +'       else to_char(CLSITUACAO) || '+QuotedStr('-')+' || '+QuotedStr('desconhecido')
                 +' end  as situacao '
                 +' from CADLGC ');

   if DM1.Qr_TID.Locate('TINOME','CADEST',[]) then begin
      Qr_LGC.SQL.Add(' Where CLCODPRO=0'+Qr_ProPDCODPRO.AsString
                    +' order by CLNUMERO')
   end else begin
      Qr_LGC.SQL.Add(' where CLCODEMP=0'+InttoStr(codemp)
                    +' and CLCODPRO=0'+Qr_ProPDCODPRO.AsString
                    +' order by CLNUMERO');
   end;

   try
      Qr_LGC.Open;

   except on e : exception do
      begin
      ex_erroSql_Novo(Qr_LGC,1304,'SGE','CADLGC');
      end;
      end;


   result := True;
end;

procedure Tfrm_pesqprod.FormShow(Sender: TObject);
begin
if (not Edit1.Focused) and (propesq_ori<>'consulta') then
   Edit1.SetFocus;

if codusr=1111 then
  begin
  tbs_filtros.TabVisible:=True;
  sbConfigMaster.Visible:=True;
  end
else
  begin
  sbConfigMaster.Visible:=False;
  tbs_filtros.TabVisible:=false;
  end;

if codemp < 100 then
   begin
   if (DM1.Tb_PargerPTEXTOBAIXO.AsString) <> '' then
      begin
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
      end
   else
      begin
      lbl_emp.Caption   :='';
      end;
   end
else
   begin
   if (DM1.Tb_PargerPTEXTOALTO.AsString) <> '' then
      begin
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
      end
   else
      begin
      lbl_emp.Caption   :='';
      end;
   end;
muf_cad:=DM1.Tb_EmpUF.AsString;
fTipodePreco;

if flfilpad(-1,'_PAR','') then
   begin
   st_recall.Color := valint(DM4.Tb_FilPad2FPVALOR.AsString);
   end;


end;

procedure Tfrm_pesqprod.Qr_LGCCalcFields(DataSet: TDataSet);
begin
   if (Qr_LGCCLDTVCTO.IsNull) or (Qr_LGCCLDTVCTO.Value<=pdatanula) then
      Qr_LGCdtvcto.Value:='/  /'
   else
      Qr_LGCdtvcto.Value:=FormatDatetime(fdt2, Qr_LGCCLDTVCTO.Value);

if (Qr_LGCCLDTFAB.IsNull) or (Qr_LGCCLDTFAB.Value<=pdatanula) then
   Qr_LGCdtfab.Value:='/  /'
else
   Qr_LGCdtfab.Value:=FormatDatetime(fdt2, Qr_LGCCLDTFAB.Value);
      
end;

procedure Tfrm_pesqprod.bbSalvarPadraoClick(Sender: TObject);
begin
  fgravafil(0);
  fCarregaPadrao(0);
end;

function Tfrm_pesqprod.fGravaFil(ptipo: Integer): Boolean;
var
  x : Integer;
begin
  fDeletaPadroes(0,'_PESQPROD','');
  fGravaPadroes(0,'CB_ESTOQUE'     ,'itemindex'       ,'_PESQPROD',IntTostr(CB_ESTOQUE.ItemIndex));
  fGravaPadroes(0,'CB_INIBIRBLOQ'  ,'checked'         ,'_PESQPROD',iif(CB_INIBIRBLOQ.Checked,'true','false'));
  fGravaPadroes(0,'CB_MATPREV'     ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[0],'true','false'));
  fGravaPadroes(0,'CB_MATPRIMA'    ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[1],'true','false'));
  fGravaPadroes(0,'CB_EMBALAGEM'   ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[2],'true','false'));
  fGravaPadroes(0,'CB_PRODPROD'    ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[3],'true','false'));
  fGravaPadroes(0,'CB_ACABADO'     ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[4],'true','false'));
  fGravaPadroes(0,'CB_SUBPRO'      ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[5],'true','false'));
  fGravaPadroes(0,'CB_ACES'        ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[6],'true','false'));
  fGravaPadroes(0,'CB_USOCONSUMO'  ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[7],'true','false'));
  fGravaPadroes(0,'CB_IMOBILIZADO' ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[8],'true','false'));
  fGravaPadroes(0,'CB_SERVICO'     ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[9],'true','false'));
  fGravaPadroes(0,'CB_INSUMOS'     ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[10],'true','false'));
  fGravaPadroes(0,'CB_OUTROS'      ,'checked'         ,'_PESQPROD',iif(CLFNivel.Checked[11],'true','false'));

  DM4.Tb_FilPad2.Close;
  DM4.Tb_FilPad2.Open;
  result:=True;
end;

procedure Tfrm_pesqprod.btn_cadastroClick(Sender: TObject);
var
  nomtemp: String;
begin
nomtemp:=Qr_ProPDNOME.AsString;

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   if (form_proconf=nil)  then
      begin
      Application.CreateForm(Tfrm_proconf , form_proconf);
      form_proconf.CAMPO.ItemIndex  :=0;
      form_proconf.Edit1.Text:=nomtemp;
      form_proconf.PC1.ActivePage:=form_proconf.tsTab;
      form_proconf.formstyle:=fsnormal;
      form_proconf.visible:=false;

      end;
//   form_proconf.Top:=0;
   form_proconf.ShowModal;
   form_proconf.Free;
   form_proconf:=nil;
   end
else if valint(copy(mpseg,1,2))=7 then
   begin
   end
else
   begin
   if DM1.Tb_pargerPFORPROPAD.Asinteger=1 then
      begin
      if form_pro_nov=nil then
         begin
         Application.CreateForm(TFrm_Pro_Nov, form_pro_nov);
         form_pro_nov.FormStyle:=fsNormal;
         form_pro_nov.Visible:=False;
         form_pro_nov.Caption:='Manutenção no cadastro de produtos novo - [Local de Acesso: Consulta de Produtos]';
         form_pro_nov.CAMPO.ItemIndex  :=0;
         form_pro_nov.Edit1.Text:=nomtemp;
         form_pro_nov.PC1.ActivePage:=Form_Pro_Nov.tsTab;
         end;
//      form_pro_nov.Top:=0;
      if form_pro_nov.FormStyle=fsMDIChild then
        begin
        form_pro_nov.FormStyle:=fsNormal;
        form_pro_nov.Visible:=False;
        end;
      form_pro_nov.ShowModal;
      form_pro_nov.free;
      form_pro_nov:=nil;
      end
   else
      begin
      if (form_pro=nil)  then
         begin
         Application.CreateForm(TFrm_Pro, Form_Pro);
         form_pro.CAMPO.ItemIndex  :=0;
         form_pro.Edit1.Text:=nomtemp;
         form_pro.PC1.ActivePage:=Form_Pro.tsTab;
         form_pro.formstyle:=fsnormal;
         form_pro.visible:=false;

         end;
//      form_pro.Top:=0;
      form_pro.ShowModal;
      form_pro.free;
      form_pro:=nil;
      end;
   end;
end;

function Tfrm_PesqProd.flcadpro_Local(pDadosPesqProd: pDadosPesqProd): Boolean;
var
comp_sql: string;
mCamposPro: String;

mPreco: String;
mComandoDiminuir: String;


begin
{
0-Nome
1-Código
2-Descrição 2
3-Código Barras
4-Fornecedor
5-Marca/Referencia
6-Código do Produto no Fabricante






}



if par_tpp=1 then
   mPreco:='PDPRECO1'
else if par_tpp=2 then
   mPreco:='PDPRECO2'
else if par_tpp=3 then
   mPreco:='PDPRECO3'
else
   mPreco:='PDPRECO1';
if ((mpro_aceita_pco_exclusivo)='S') and
   ((trim(mpro_codcli)<>'') ) then
   begin
   mPreco:='case when nvl(PEC_PRECO,0)>0 then PEC_PRECO else '+mPreco+' end ';
   end;

if pDadosPesqProd.pItem>0 then
   begin
   mComandoDiminuir:=',NVL( (SELECT SUM(P2QTD) FROM CADP02 WHERE P2CHAVE=:CHAVE AND '
                     +' (P2CODEMP=:CODEMP_INI or P2CODEMP=:CODEMP_FIN) '
                     +' AND P2LOTSEQ=:LOTSEQ AND P2CODPRO=PDCODPRO '
                     +' AND P2ITEM<:ITEM),0)';
   end
else
   mComandoDiminuir:=', 0 ';

mComandoDiminuir:= mComandoDiminuir+' AS SALDO_PEDIDO ';



mCamposPro:=' PDCODEMP,  PDCODPRO,  PDCODBAR,  PDNOME,  PDNOME2,  PDMARCA '
            +',  PDNIVEL,  PDCODFOR,  PDPRECO1,  PDPRECO2,  PDPRECO3,  PDPMC '
            +',  PDPRECOA1,  PDPRECOA2,  PDPRECOA3,  PDDESC1,  PDDESC1A,  PDDESC2 '
            +',  PDDESC3,  PDQTDP,  PDPRAZO,  PDSIT,  PDDTUATP1,  PDUSRALT1,  PDDTUATP2 '
            +' , PDUSRALT2 , PDDTUATP3 , PDUSRALT3 , PDDATAUA , PDUND , PDCURVA , PDCODGRU '
            +' , PDCODCON , PDCODRAM , PDCODTIP , PDESTMAX , PDESTMIN , PDFRACAO  , PDLISTA '
            +' , PDPRECOC , PDPCOMC , PDPCOFAB , PDSTATUS , PDTABICM , PDIPI , PDREGMS , PDCLAS '
            +' , PDSECAO , PDEMBPAD , PDEMBMUL , PDCOMIS , PDSEMCOM , PDPRZVAL , PDUCPR , PDCODUSR'
            +' , PDSALDO , PDDTALT , PDHRALT , PDEMBPAD2 , PDCODPROC , PDPROALT , PDDTULTSAI , PDDTULTENT '
            +' , PDVDAMAXM , PDREST , PDPESOB , PDPESOL,  PDBAIXO,  PDALTO,  PDDATCAD,  PDNOMFOR '
            +',  PDNOMPROC,  PDNOMGRU,  PDNOMCON,  PDNOMRAM,  PDNOMTIP,  PDNOMPROALT,  PDSTATUS02 '
            +',  PDSALDOR,  PDBAIXOR,  PDALTOR,  PDSALDOC,  PDBAIXOC,  PDALTOC,  PDCODNCM,  PDCUSFAB '
            +',  PDCUSENV,  PDCUSFIN,  PDUCODFOR,  PDUNOMFOR,  PDCODFAB,  PDSALDOT,  PDALTOT '
            +',  PDBAIXOT,  PDPMC02,  PDPMC03,  PDCX_PVDA,  PDCX_PFAB,  PDCX_PMAX,  PDICMSCRED '
            +',  PDICMSDEB,  PDVLRINC,  PDPRAT,  PDLADO,  PDRUA,  PDAPLIC,  PDAPRES,  PDQTDM3 '
            +',  PDCOMIS_EXTRA,  PDQTDGRML,  PDUNDVDA,  PDBLDESCAV,  PDRESTFOR,  PDRESTCON,  PDSITCF '
            +',  PDCODBAR_EMBPAD,  PDENTPEN,  PDUSRALT,  PDUSRINC,  PDSALDO_PRAT,  PDSALDO_DEP,  PDSALDO_REP '
            +',  PDTEMPOFAB,  PDPRZVAL_ANOS,  PDPRZVAL_DIAS,  PDCODDEP,  PDNOMDEP,  PDREFER,  PDDATA_REPLICA '
            +',  case when NVL(PDDESCMAX,0)>0 THEN PDDESCMAX ELSE NVL(GRPERCDESC,0) end AS  PDDESCMAX,  PDBALANCA,  PDTEMFORMULA,  PDVALREGMS,  PDKIT,  PDCODEXT,  PDFIS_ORIGEM,  PDFIS_CST_ICMS_EST_REV '
            +',  PDFIS_CST_ICMS_EST_CF,  PDFIS_PRED_ICMS_EST,  PDFIS_CST_ICMS_INT_CF,  PDFIS_CST_ICMS_INT_REV '
            +',  PDFIS_PRED_ICMS_INT,  PDFIS_CSOSN_EST_REV,  PDFIS_CSOSN_EST_CF,  PDFIS_CSOSN_INT_REV '
            +',  PDFIS_CSOSN_INT_CF,  PDFIS_CST_PISCOF_ENTRADA,  PDFIS_CST_PISCOF_SAIDA,  PDFIS_PIS_ALIQ_ENTRADA '
            +',  PDFIS_COFINS_ALIQ_ENTRADA,  PDFIS_PIS_ALIQ_SAIDA,  PDFIS_COFINS_ALIQ_SAIDA '
            +',  PDCONTESP,  PDCMET_CONSTANTE,  PDCMET_BITOLA,   PDQTD_ANALISE '
            +',  PDDESFIN,  PDCODGEN,  PDNOME_COMPRA,  PDCODBAR_TIPO,  PDFARMA_PCOFAB,  PDPMC_ANT '
            +',  PDREFRIGERADO,  PDSGNPC,  PDFARMA_PCOFAB_ANT,  PDTIPO_RECEITA '
            +',  PDUSO_MEDICAMENTO,  PDCLASSE_TERAPEUTICA,  PDUND_INSUMO,  PDUND_FARMACOTECNICA '
            +',  PDUND_MEDICAMENTO,  PDTIPO_MED,  PDPERCIMPOSTOS,  PDTIPOPROD,  PDVENDA_PEND '
            +',  PDAPRES_QTD,  PDAPRES_NOME,  PDPRECO1_DIG,  PDPCOCUS_DIG,  PDPCOCPR_DIG '
            +',  PDPRECO1_DIG_USA,  PDPCOCUS_DIG_USA,  PDPCOCPR_DIG_USA,  PDDTATU_PEDELE '
            +',  PDPEDELE_DISP,  PDOBS_NEW,  PDPRECO_INDEX,  PDPRECO_CODINDEX '
            +',  PDENTPEN as entpen,  PDCOMPRA_UND '
            +',  PDCBENEF_CST_FORAE_REV '
            +',  PDCBENEF_CST_FORAE_CONSFIN '
            +',  PDCBENEF_CST_DENTROE_REV '
            +',  PDCBENEF_CST_DENTROE_CONSFIN '
            +',  PDALIQ_ISS '
            +', PDCODCLASSTRIB '
            +', PDCBS_CST '
            +', PDSERV_INSS_ALIQ '
            +', PDSERV_INSS_RED '
            +', PDSERV_IRRF_ALIQ '
            +', PDSERV_IRRF_RED '


            +',  nvl( (select sum(CLQTD) FROM CADLGC WHERE CLCODEMP=PDCODEMP AND CLCODPRO=PDCODPRO AND CLSITUACAO=1),0) as qtd_em_recall '


            +', CASE WHEN :TIPOPCO = 2 THEN ROUND( ('+mPreco+' - ('+mPreco+' *PDDESC1/100)), :MQTDDEC ) ELSE '+mPreco+' END AS PRECO_VENDA_tmp '
            +mComandoDiminuir;


// Qr_Pro.Filtered:=false;

Qr_Pro.Close;
Qr_Pro.SQL.Clear;
Qr_Pro.SQL.Add('Select '+mCamposPro+' from CADPRO,CADGRU ');
if ((mpro_aceita_pco_exclusivo)='S') and
   ((trim(mpro_codcli)<>'')) then
   Qr_Pro.sql.add(',CADPRO_PCOCLI ');

Qr_Pro.Parambyname('TIPOPCO').Asinteger:=mPVTipoPreco;
Qr_Pro.Parambyname('MQTDDEC').Asinteger:=DM1.Tb_PargerpCasasPu.AsInteger;

Qr_pro.sql.add(' where  GRCODGRU(+)=PDCODGRU ');
if ((mpro_aceita_pco_exclusivo)='S') and
   ((trim(mpro_codcli)<>'')) then
   Qr_pro.sql.add(' and    PEC_CODEMP(+)=PDCODEMP AND PEC_CODPRO(+)=PDCODPRO  and PEC_CODCLI(+)='+mpro_codcli);

comp_sql:=' and ';

if pDadosPesqProd.pCodEmp=0 then
   pDadosPesqProd.pcodemp:=codemp;

if (trim(pDadosPesqProd.pMarca)<>'') and (not pDadosPesqProd.pSemFiltros) then
   begin
   Qr_Pro.Params.CreateParam(ftString,'MARCA',ptInput);

   if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
      begin
      Qr_Pro.SQL.Add(comp_sql+'upper(PDMARCA) like :MARCA');
      Qr_Pro.Params.ParamByName('MARCA').AsString:=Uppercase(pDadosPesqProd.pMarca)+'%';
      end
   else
      begin
      Qr_Pro.SQL.Add(comp_sql+'PDMARCA like :MARCA');
      Qr_Pro.Params.ParamByName('MARCA').AsString:=pDadosPesqProd.pMarca+'%';
      end;

   comp_sql:=' and ';
   end;

if (trim(pDadosPesqProd.pNome)<>'') and (not pDadosPesqProd.pSemFiltros) then
   begin
   Qr_Pro.Params.CreateParam(ftString,'NOME',ptInput);
   Qr_Pro.SQL.Add(comp_sql+'PDNOME like :NOME');
   Qr_Pro.Params.ParamByName('NOME').AsString:='%';
   comp_sql:=' and ';
   end;
{
if trim(qr_Pro.Filter)<>'' then
   Qr_Pro.Filtered:=true;
}


if pDadosPesqProd.ptipo<1 then
   begin
   Qr_Pro.Params.CreateParam(ftString,'NOME',ptInput);
   if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
      begin
      Qr_Pro.SQL.Add(comp_sql+'upper(PDNOME) like :NOME');
      Qr_Pro.Params.ParamByName('NOME').AsString:=Uppercase(pDadosPesqProd.pNome)+'%';
      end
   else
      begin
      Qr_Pro.SQL.Add(comp_sql+'PDNOME like :NOME');
      Qr_Pro.Params.ParamByName('NOME').AsString:=pDadosPesqProd.pNome+'%';
      end;
   comp_sql:=' and ';
   end;

if (pDadosPesqProd.pCodPro<>0) then
   begin
   Qr_Pro.SQl.add(comp_sql+' PDCODPRO=0'+floatToStr(pDadosPesqProd.pcodpro));
   comp_sql:=' and ';
   end;
if (trim(pDadosPesqProd.pNomeGen)<>'') and (not pDadosPesqProd.pSemFiltros) then

   begin
   Qr_Pro.Params.CreateParam(ftString,'NOME2',ptInput);
   if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
      begin
      Qr_Pro.SQL.Add(comp_sql+'upper(PDNOME2) like :NOME2');
      Qr_Pro.Params.ParamByName('NOME2').AsString:=Uppercase(pDadosPesqProd.pNomeGen)+'%';
      end
   else
      begin
      Qr_Pro.SQL.Add(comp_sql+'PDNOME2 like :NOME2');
      Qr_Pro.Params.ParamByName('NOME2').AsString:=pDadosPesqProd.pNomeGen+'%';
      end;
   comp_sql:=' and ';
   end;
// inicio

if (trim(pDadosPesqProd.pNomeNaCompra)<>'') and (not pDadosPesqProd.pSemFiltros) then

   begin
   Qr_Pro.Params.CreateParam(ftString,'NOME_COMPRA',ptInput);
   if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
      begin
      Qr_Pro.SQL.Add(comp_sql+'upper(PDNOME_COMPRA) like :NOME_COMPRA');
      Qr_Pro.Params.ParamByName('NOME_COMPRA').AsString:=Uppercase(pDadosPesqProd.pNomeNaCompra)+'%';
      end
   else
      begin
      Qr_Pro.SQL.Add(comp_sql+'PDNOME_COMPRA like :NOME_COMPRA');
      Qr_Pro.Params.ParamByName('NOME_COMPRA').AsString:=pDadosPesqProd.pNomeNaCompra+'%';
      end;
   comp_sql:=' and ';
   end;

// ternino

if (trim(pDadosPesqProd.pCodBar)<>'')  and (not pDadosPesqProd.pSemFiltros) then
   begin
   Qr_Pro.SQl.add(comp_sql+' PDCODBAR=0'+pDadosPesqProd.pCodBar);
   comp_sql:=' and ';
   end;

if (trim(pDadosPesqProd.pNomFor)<>'')  and (not pDadosPesqProd.pSemFiltros) then
   begin
   Qr_Pro.Params.CreateParam(ftString,'NOMFOR',ptInput);
   if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
      begin
      Qr_Pro.SQL.Add(comp_sql+'upper(PDNOMFOR) like :NOMFOR');
      Qr_Pro.Params.ParamByName('NOMFOR').AsString:=uppercase(pDadosPesqProd.pNomFor)+'%';
      end
   else
      begin
      Qr_Pro.SQL.Add(comp_sql+'PDNOMFOR like :NOMFOR');
      Qr_Pro.Params.ParamByName('NOMFOR').AsString:=pDadosPesqProd.pNomFor+'%';
      end;
   comp_sql:=' and ';
   end;

if (trim(pDadosPesqProd.pRefer)<>'')  and (not pDadosPesqProd.pSemFiltros) then
   begin
   Qr_Pro.Params.CreateParam(ftString,'PDREFER',ptInput);
   if DM4.Tb_ParGer02PG2IGNOR_MINUSCULAS.AsInteger=1 then
      begin
      Qr_Pro.SQL.Add(comp_sql+'PDREFER like :PDREFER');
      Qr_Pro.Params.ParamByName('PDREFER').AsString:=pDadosPesqProd.pRefer+'%';
      end
   else
      begin
      Qr_Pro.SQL.Add(comp_sql+'upper(PDREFER) like :PDREFER');
      Qr_Pro.Params.ParamByName('PDREFER').AsString:=Uppercase(pDadosPesqProd.pRefer)+'%';
      end;
   comp_sql:=' and ';
   end;

if (pDadosPesqProd.pCodFor<>0)  and (not pDadosPesqProd.pSemFiltros) then
   begin
   Qr_Pro.SQL.Add(comp_sql+' PDCODFAB=0'+IntTostr(pDadosPesqProd.pCodFor));
   comp_sql:=' and ';
   end;


if ((pDadosPesqProd.ptipo<>1) and (pDadosPesqProd.ptipo<>3))  and (not pDadosPesqProd.pSemFiltros) then
   begin
   mcinst4:=fCarregaPadrao(0);
   if trim(mcinst4)<>'' then
      begin
      Qr_Pro.SQL.Add(comp_sql+mcinst4);
      comp_sql:=' and ';
      end;
   end;
if  (not pDadosPesqProd.pSemFiltros) then
    Qr_Pro.SQL.Add(comp_sql+' PDNOME<>'+QuotedStr('_'));


Qr_Pro.Sql.add(fla_EmpBaixaAlta(0,'CADPRO',comp_sql,pDadosPesqProd.pcodemp,'PDCODEMP',''));





if pDadosPesqProd.pItem>0 then
   begin
   Qr_Pro.ParamByName('CODEMP_INI').AsInteger:=pDadosPesqProd.pCodEmp;
   if pDadosPesqProd.pCodEmp>100 then
      Qr_Pro.ParamByName('CODEMP_FIN').AsInteger:=pDadosPesqProd.pCodEmp-100
   else
      Qr_Pro.ParamByName('CODEMP_FIN').AsInteger:=pDadosPesqProd.pCodEmp+100;
   Qr_Pro.ParamByName('CHAVE').AsInteger:=pDadosPesqProd.pChavePed;
   Qr_Pro.ParamByName('LOTSEQ').AsInteger:=ls_numped;
   Qr_Pro.ParamByName('ITEM').AsInteger:=pDadosPesqProd.pItem;


//   ex_erroSql_Novo(qr_pro,1562,'func Erro:'+e.Message ,'CADPRO');
   end;

//ex_erroSql_Novo(qr_pro,1562,'func Erro:' ,'CADPRO');

// novos ajustes para retirar os campos calculados

Qr_pro.sql.text:='SELECT T2.*,T1.* from ( '
               +Qr_Pro.sql.text
               +' ) T1 '
               +' LEFT JOIN  (SELECT '
               +' SUM(nvl(CEQTD_ANALISE,0)) as qtd_analise '
               +',SUM(case when cefilial=:filial then cesaldo else 0 end) as saldo_filial_tmp '
               +',sum(CESALDO) as estoque_tmp '
               +',sum(CESALDO_PRAT) as estoque_prat_tmp '
               +',sum(CESALDO_DEP) as estoque_dep '
               +',sum(CESALDO_REP) as estoque_rep '
               +',sum(CESALDOR) as estoquer '
               +',sum(CESALDOC) as estoquec '
               +',sum(CESALDOT) as estoquet '

               +',max(CEDTUENT) as dtuent '
               +',max(CEDTUSAI) as dtusai '
               +',CECODPRO '
               +' FROM CADEST GROUP BY CECODPRO ) T2 '
               +' ON (CECODPRO=T1.PDCODPRO) ';




// inicio
Qr_pro.sql.text:='Select T3.* '
                +', saldo_filial_tmp-saldo_pedido as saldo_filial '
                +', estoque_tmp-saldo_pedido as estoque '
                +', saldo_filial_tmp-(saldo_pedido+qtd_analise + qtd_em_recall'
                +') as saldo_filial_disponivel '

                +', estoque_prat_tmp-(saldo_pedido) as estoque_prat '
                +', PRECO_VENDA_TMP AS PRECO_VENDA '
                +', round(  (PRECO_VENDA_TMP + (PRECO_VENDA_TMP * :ACRES /100)) , '+inttostr(mQtdCas_arredpu)+') as pcoven '
                +', PDCODPRO ||'+quotedstr(' - ')+' || PDNOME || '+quotedstr(' ')+' || PDMARCA as codnommarca '
                +', (Select min(CLDTVCTO) from CADLGC where CLCODPRO=PDCODPRO '
                +' and CLDTVCTO>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                +' ) as dtvenc '
                +' from ('
                +qr_pro.sql.text
                +') T3 ';




// inicio

Qr_Pro.sql.text:='Select t4.* '
                +', round( (case when nvl(PDPMC,0) = 0 then 0 else ((PDPMC-pcoven) * 100 ) / PDPMC end) , '+inttostr(mQtdCas_arredpu)+') as diferenca '
                +', round( (pcoven - (pcoven * :DESCCLI /100) ) , '+inttostr(mQtdCas_arredpu)+') as pcocomdesc  '
                +' from ('
                +qr_pro.sql.text
                +') T4 ';



if (not pDadosPesqProd.pSemFiltros) then
   begin
   if CB_ESTOQUE.ItemIndex=1 then
      begin
      Qr_pro.sql.add(' where NVL(ESTOQUE,0)<=0');
      end
   else if CB_ESTOQUE.ItemIndex=0 then
      begin
      Qr_pro.sql.add(' where NVL(ESTOQUE,0)>0');
      end;
   end;









// fim






// termino campos calculados



if pbanco_versao>9 then
   Qr_Pro.SQL.add(' Order by PDNOME ');

if pfilial=0 then
   pfilial:=1;
qr_pro.ParamByName('FILIAL').AsInteger :=pFilial;


Qr_Pro.parambyName('ACRES').asfloat:=par_acretodos;
Qr_Pro.parambyName('DESCCLI').asfloat:=mDescCli;

if cb_salvar_sql.checked=true then 
   ex_erroSql_Novo(qr_pro,1562,'func Erro:' ,'CADPRO');


try
   Qr_Pro.Open;
except on e : exception do
   ex_erroSql_Novo(qr_pro,1562,'func Erro:'+e.Message ,'CADPRO');
   end;


if Qr_Pro.Eof then
   Result:=False
else
   Result:=True;
end;


procedure Tfrm_pesqprod.Qr_ProCalcFields(DataSet: TDataSet);

var
query_est: tQuery;
begin
{
query_est:=TQuery.Create(nil);
query_est.DatabaseName:='SG_ASSOC';
query_est.Close;
query_est.SQL.Clear;
query_est.SQL.Add('Select  sum(CEQTD_ANALISE)  as CEQTD_ANALISE,sum(CESALDO) as CESALDO,sum(CESALDO_PRAT) AS CESALDO_PRAT,sum(CESALDO_DEP) AS CESALDO_DEP '
                 +'                ,sum(CESALDOR) as CESALDOR,sum(CESALDOC) as CESALDOC,sum(CESALDOT) as CESALDOT, '
                 +'                  sum(CEENTPEN) as CEENTPEN,max(CEDTUENT) as CEDTUENT '
                 +'                  ,max(CEDTUSAI) as CEDTUSAI,sum(CESALDO_REP) as CESALDO_REP '
                 +'                 , max( (select count(*) from CADEST WHERE (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '
                 +'                         and CECODPRO=:CODPRO AND (CEFILIAL=:FILIAL or CEFILIAL is null))) AS QTDREG '
                 +'                ,sum(DECODE(CEFILIAL,:FILIAL,CESALDO,0)) AS SALDO_FILIAL '
                 +' from CADEST where (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '
                 +' and CECODPRO=:CODPRO  ');


query_est.ParamByName('CODEMP').AsInteger:=codemp;
if codemp<100 then
   query_est.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100
else
   query_est.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100;
query_est.ParamByName('CODPRO').Value              :=Qr_ProPDCODPRO.AsFloat;
if pfilial=0 then
   pfilial:=1;
query_est.ParamByName('FILIAL').AsInteger :=pFilial;
try
   query_est.Open;
except
   query_est.SQL.SaveToFile(mpastatemp +'sqlest.txt');
   end;
if (query_est.IsEmpty) or (query_est.fieldbyName('QTDREG').Asinteger=0) then
   begin
   query_est.Close;
   query_est.Sql.Clear;
   query_est.Sql.add('Insert into CADEST ('
                        +'CECODEMP, '
                        +'CECODPRO, '
                        +'CEFILIAL, '
                        +'CESALDO, '
                        +'CESALDO_PRAT, '
                        +'CESALDO_DEP, '
                        +'CESALDO_REP, '
                        +'CESALDOR,'
                        +'CESALDOC,'
                        +'CESALDOT,'
                        +'CEENTPEN,'
                        +'CEDTUSAI,'
                        +'CEDTUENT'
                        +') Values ('
                        +Inttostr(codemp-iif(codemp>100,100,0))+','
                        +Qr_ProPDCODPRO.AsString+','
                        +Inttostr(pFilial)+','
                        +'0,' // SALDO
                        +'0,' // SALDO_PRAT
                        +'0,' // SALDO_DEP
                        +'0,' // SALDO_REP
                        +'0,' // SALDOR
                        +'0,' // SALDOC
                        +'0,' // SALDOT
                        +'0,' // ENTPEN
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                        +')');
   try

      query_est.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
//     showmessage('Ocorreu o seguinte erro: '+ e.message);
      ex_erroSql_Novo(query_est,111,'func Erro:'+e.Message ,'CADEST');
      end;

   query_est.Close;
   query_est.SQL.Clear;
   query_est.SQL.Add('Select  sum(CEQTD_ANALISE)  as CEQTD_ANALISE,sum(CESALDO) as CESALDO,sum(CESALDO_PRAT) AS CESALDO_PRAT,sum(CESALDO_DEP) AS CESALDO_DEP '
                    +'                ,sum(CESALDOR) as CESALDOR,sum(CESALDOC) as CESALDOC,sum(CESALDOT) as CESALDOT, '
                    +'                  sum(CEENTPEN) as CEENTPEN,max(CEDTUENT) as CEDTUENT '
                    +'                  ,max(CEDTUSAI) as CEDTUSAI,sum(CESALDO_REP) as CESALDO_REP '
                    +'                 , max( (select count(*) from CADEST WHERE (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '
                    +'                         and CECODPRO=:CODPRO AND (CEFILIAL=:FILIAL or CEFILIAL is null))) AS QTDREG '
                    +'                ,sum(DECODE(CEFILIAL,:FILIAL,CESALDO,0)) AS SALDO_FILIAL '



                    +' from CADEST where (CECODEMP=:CODEMP OR CECODEMP=:CODEMP_FILIAL) '
                    +' and CECODPRO=:CODPRO  ');


   query_est.ParamByName('CODEMP').AsInteger:=codemp;
   if codemp<100 then
      query_est.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100
   else
      query_est.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100;
   query_est.ParamByName('CODPRO').Value              :=Qr_ProPDCODPRO.AsFloat;

   query_est.ParamByName('FILIAL').AsInteger :=pFilial;
   try
      query_est.Open;
   except
      query_est.SQL.SaveToFile(mpastatemp +'sqlest.txt');
      end;

   end;


qr_Proqtd_analise.AsFloat :=query_est.fieldByName('CEQTD_ANALISE').AsFloat;

Qr_Prosaldo_filial.AsFloat :=query_est.fieldByName('SALDO_FILIAL').AsFloat
                            -Qr_ProSALDO_PEDIDO.AsFloat;
Qr_Proestoque.Value:=query_est.fieldByName('CESALDO').AsFloat
                    -Qr_ProSALDO_PEDIDO.AsFloat;
Qr_Prosaldo_filial_disponivel.Value:=Qr_Prosaldo_filial.AsFloat-Qr_Proqtd_analise.AsFloat;

Qr_Proestoque_prat.Value:=query_est.fieldByName('CESALDO_PRAT').AsFloat-Qr_ProSALDO_PEDIDO.AsFloat;
Qr_Proestoque_dep.Value:=query_est.fieldByName('CESALDO_DEP').AsFloat;
Qr_Proestoque_rep.Value:=query_est.fieldByName('CESALDO_REP').AsFloat;
Qr_Proestoquer.Value:=query_est.fieldByName('CESALDOR').AsFloat;
Qr_Proestoquec.Value:=query_est.fieldByName('CESALDOC').AsFloat;
Qr_Proestoquet.Value:=query_est.fieldByName('CESALDOT').AsFloat;
Qr_Proentpen.Value  :=Qr_ProPDENTPEN.AsFloat;
//Qr_Proentpen.Value  :=query_est.fieldByName('CEENTPEN').AsFloat;

if not query_est.fieldByName('CEDTUENT').IsNull then
   Qr_Prodtuent.Value  :=query_est.fieldByName('CEDTUent').Value;
if not query_est.fieldByName('CEDTUSAI').IsNull then
   Qr_Prodtusai.Value  :=query_est.fieldByName('CEDTUSAI').Value;




if par_tpp=1 then
  begin
  if par_acretodos<>0 then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (Qr_ProPDCODTIP.Value=0) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (Qr_ProPDCODTIP.Value=1) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (Qr_ProPDCODTIP.Value<>0) and (Qr_ProPDCODTIP.Value<>1) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acred01/100),mQtdCas_arredpu)
  else
     Qr_Propcoven.Value:=Qr_ProPRECO_VENDA.Value;
  end
else if par_tpp=2 then
  begin
  if par_acretodos<>0 then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (Qr_ProPDCODTIP.Value=0) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (Qr_ProPDCODTIP.Value=1) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (Qr_ProPDCODTIP.Value<>0) and (Qr_ProPDCODTIP.Value<>1) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acred01/100),mQtdCas_arredpu)
  else
     Qr_Propcoven.Value:=Qr_ProPRECO_VENDA.Value;
  end
else if par_tpp=3 then
  begin
  if par_acretodos<>0 then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (Qr_ProPDCODTIP.Value=0) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (Qr_ProPDCODTIP.Value=1) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (Qr_ProPDCODTIP.Value<>0) and (Qr_ProPDCODTIP.Value<>1) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acred01/100),mQtdCas_arredpu)
  else
     Qr_Propcoven.Value:=Qr_ProPRECO_VENDA.Value;
  end
else
  begin
  if par_acretodos<>0 then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acretodos/100),mQtdCas_arredpu)
  else if (par_acret0<>0) and (Qr_ProPDCODTIP.Value=0) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acret0/100),mQtdCas_arredpu)
  else if (par_acret1<>0) and (Qr_ProPDCODTIP.Value=1) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acret1/100),mQtdCas_arredpu)
  else if (par_acred01<>0) and (Qr_ProPDCODTIP.Value<>0) and (Qr_ProPDCODTIP.Value<>1) then
     Qr_Propcoven.Value:=Arredonda(Qr_ProPRECO_VENDA.Value+(Qr_ProPRECO_VENDA.Value* par_acred01/100),mQtdCas_arredpu)
  else
     Qr_Propcoven.Value:=Qr_ProPRECO_VENDA.Value;
  end;

Qr_Prodiferenca.Value:=Qr_ProPDPMC.Value-Qr_Propcoven.Value;

if (Qr_Prodiferenca.Value<=0)  then
   Qr_Prodiferenca.Value:=0
else if Qr_ProPDPMC.AsFloat<>0 then
   begin
   Qr_Prodiferenca.Value:=Arredonda((Qr_Prodiferenca.Value*100)
                            /Qr_ProPDPMC.Value,mQtdCas_arredpu);
   end;

if DM1.Tb_PargerPQTDDIAV.Value>0 then
   begin
   query_est.close;
   query_est.SQL.Clear;
   query_est.SQL.add('Select min(CLDTVCTO) from CADLGC where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+IntTostr(codemp)+' and ')
                     +' CLCODPRO=0'+Qr_ProPDCODPRO.AsString
                     +' and CLDTVCTO>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39));
   query_est.Open;
   if not query_est.Fields[0].IsNull then
      Qr_Prodtvenc.Value:=query_est.Fields[0].AsDateTime;
   end;

FreeAndNil(query_est);


Qr_Procodnommarca.AsString:=Qr_ProPDCODPRO.AsString+' - '+Qr_ProPDNOME.AsString+' '
                           +Qr_ProPDMARCA.AsString;

if mDescCli=0 then
   Qr_Propcocomdesc.AsFloat:=Qr_Propcoven.AsFloat
else if Qr_Propcoven.AsFloat=0 then
   Qr_Propcocomdesc.AsFloat:=0
else
   Qr_Propcocomdesc.AsFloat:=Arredonda( (Qr_Propcoven.AsFloat-(
                             Qr_Propcoven.AsFloat*mDescCli/100))  ,mQtdCas_arredpu);
}
end;

procedure Tfrm_pesqprod.RG_ESTOQUEClick(Sender: TObject);
begin
fCarregaPadrao(0);
end;

procedure Tfrm_pesqprod.GroupBox3Exit(Sender: TObject);
begin
fCarregaPadrao(0);
end;

procedure Tfrm_pesqprod.bbSairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_pesqprod.CODCLIExit(Sender: TObject);
begin
mpro_codcli:='';
mDescCli:=0;
panel_preco_cli.Visible:=false;
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if CODCLI.Text='' then
   begin
   txt_nomcli.Text:='';
   muf_cad:=DM1.Tb_EmpUF.AsString;
   end
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text := '';
      CODCLI.SetFocus;
      end
   else
      begin
      txt_nomcli.Text:=DM1.Tb_CliCRAZAO.Value+'/'+DM1.Tb_CliCDENOM.AsString
      +' Cidade: '+DM1.Tb_CliCCIDADE.AsString
      +' UF: '+DM1.Tb_CliCUF.AsString;
      mDescCli:=DM1.Tb_CliCDESC.AsFloat;
      muf_cad :=DM1.Tb_CliCUF.AsString;
      mpro_codcli:=DM1.Tb_CliCCODCLI.AsString;
      lbl_desccli.Caption:=FormatFloat(mcasas_pct, mDescCli);
      if (DM1.Tb_PVPVCODPV.AsInteger>0) and (trim(DM1.Tb_PVPVCODTIP.AsString)<>'') then
         begin
         CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.AsString;
         CODPV.Text   :=DM1.Tb_PVPVCODPV.AsString;
         CODPVExit(self);
         end;
      panel_preco_cli.Visible:=True;
      end;
   end;

end;

procedure Tfrm_pesqprod.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure Tfrm_pesqprod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_pesqprod.sbConfigMasterClick(Sender: TObject);
begin
tsConfiguracao.TabVisible := tsConfiguracao.TabVisible=false;
fAtualizaTabela(0);
end;

procedure Tfrm_pesqprod.DBGrid3DblClick(Sender: TObject);
begin
if DBGrid3.SelectedField=mem_configMasterCM_VISIVEL then
   begin
   if not (mem_configMaster.state in [dsEdit,dsInsert]) then
      mem_configMaster.Edit;
   if mem_configMasterCM_VISIVEL.AsString='X' then
      mem_configMasterCM_VISIVEL.AsString:=''
   else
      mem_configMasterCM_VISIVEL.AsString:='X';
   mem_configMaster.Post;
   fAtualizaGrid(0);
   end;
end;

procedure Tfrm_pesqprod.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
//Desenha um checkbox no dbgrid
if Column.FieldName = 'CM_VISIVEL' then
   begin
   DBGrid3.Canvas.FillRect(Rect);
   Check := 0;
   if mem_configMasterCM_VISIVEL.AsString = 'X' then
      Check := DFCS_CHECKED
   else
      Check := 0;
   R:=Rect;
   InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
   DrawFrameControl(DBGrid3.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;

end;

procedure Tfrm_pesqprod.DBEdit1Exit(Sender: TObject);
begin
if mem_configMaster.State in [dsEdit,dsInsert] then
   begin
   mem_configMaster.Post;
   fAtualizaGrid(0);
   end;
end;

procedure Tfrm_pesqprod.sb_configMaster_RestaurarClick(Sender: TObject);
var
mOrdem: Integer;
begin
if fmensagem('Quer Realmente Voltar as Configurações Originais?',0,['1','2'],2)<>mrYes then
   exit;

fConfigLimpo;
fDeletaPadroes(mUsrConfig,'_PESQPROD','');
fBuscarDadosUsr;
fBuscarConfigSalva;
cds_config_salva.Locate('codusr',inttostr(mUsrConfig),[]);

end;


procedure Tfrm_pesqprod.fConfigLimpo;
var
mOrdem: integer;
begin

mOrdem:=0;
mem_configMaster.Close;
mem_configMaster.Open;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDCODPRO';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=48;
mem_configMasterCM_CAPTION.AsString:='Código';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDCODBAR';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=60;
mem_configMasterCM_CAPTION.AsString:='Código de Barras';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;


mOrdem:=mOrdem+1;
mem_configMaster.Append;

mem_configMasterCM_CHAVE.AsString   :='PDNOME';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=253;
mem_configMasterCM_CAPTION.AsString:='Descrição do Produto';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;
mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDNOME2';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=253;
mem_configMasterCM_CAPTION.AsString:='Descrição 2(Nome Generico)';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDMARCA';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=107;
mem_configMasterCM_CAPTION.AsString:='Marca/Fabricante';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

mOrdem:=mOrdem+1;


mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDREFER';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=107;
mem_configMasterCM_CAPTION.AsString:='Referencia';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

mOrdem:=mOrdem+1;

mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='pcoven';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=77;
mem_configMasterCM_CAPTION.AsString:=Qr_Propcoven.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;
mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDPRECO2';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=77;
mem_configMasterCM_CAPTION.AsString:=Qr_ProPDPRECO2.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDPRECO3';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=77;
mem_configMasterCM_CAPTION.AsString:=Qr_ProPDPRECO3.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='estoque';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=77;
mem_configMasterCM_CAPTION.AsString:=Qr_Proestoque.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;


mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='saldo_filial';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=77;
mem_configMasterCM_CAPTION.AsString:=Qr_Prosaldo_filial.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;



mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDUND';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=27;
mem_configMasterCM_CAPTION.AsString:=Qr_ProPDUND.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDDESC1';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=64;
mem_configMasterCM_CAPTION.AsString:=Qr_ProPDDESC1.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDPMC';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=83;
mem_configMasterCM_CAPTION.AsString :=Qr_ProPDPMC.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;
mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='diferenca';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=77;
mem_configMasterCM_CAPTION.AsString:=Qr_Prodiferenca.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;
mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDCLAS';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=144;
mem_configMasterCM_CAPTION.AsString:=Qr_ProPDCLAS.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;
mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDPESO';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=74;
mem_configMasterCM_CAPTION.AsString:=Qr_ProPDPESOB.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;
mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDEMBPAD';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=77;
mem_configMasterCM_CAPTION.AsString:=Qr_ProPDEMBPAD.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;


mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDDTULTSAI';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=77;
mem_configMasterCM_CAPTION.AsString:=Qr_ProPDDTULTSAI.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;



mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDDTULTENT';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=77;
mem_configMasterCM_CAPTION.AsString:=Qr_ProPDDTULTENT.DisplayLabel;
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;



mOrdem:=mOrdem+1;
mem_configMaster.Append;

mem_configMasterCM_CHAVE.AsString   :='PDNOME_COMPRA';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=253;
mem_configMasterCM_CAPTION.AsString:='Nome na Compra';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDCOMPRA_UND';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=50;
mem_configMasterCM_CAPTION.AsString:='Und na Compra';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;


mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDPRECOC';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=50;
mem_configMasterCM_CAPTION.AsString:='Pço Compra';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;


mOrdem:=mOrdem+1;
mem_configMaster.Append;
mem_configMasterCM_CHAVE.AsString   :='PDPCOFAB';
mem_configMasterCM_ORDEM.AsInteger  :=mOrdem;
mem_configMasterCM_TAMANHO.AsInteger:=50;
mem_configMasterCM_CAPTION.AsString:='Pço Fábrica';
mem_configMasterCM_VISIVEL.AsString:='X';
mem_configMaster.Post;

fAtualizaGrid(0);

mem_configMaster.First;



end;

function tFrm_PesqProd.fAtualizaGrid(pTipo: Integer): Boolean;
var
mqtdDel,x: Integer;
mBookMarck: TBookmark;

begin

mBookMarck:=mem_configMaster.GetBookmark;
mqtdDel:=DBGrid1.Columns.Count-1;
mem_configMaster.SortOnFields('CM_ORDEM');
mem_configMaster.First;
for x:=0 to mQtdDel do
   begin
   DBGrid1.Columns.Delete(0);
   end;

DBGrid1.Columns.Clear;


While not mem_configMaster.Eof do
   begin
   if mem_configMasterCM_VISIVEL.AsString<>'X' then
      begin
      mem_configMaster.Next;
      Continue;
      end;
   DBGrid1.Columns.Add;
   x:=DBGrid1.Columns.Count-1;
   DBGrid1.Columns[x].FieldName    :=mem_configMasterCM_CHAVE.AsString;
   DBGrid1.Columns[x].Title.Caption:=mem_configMasterCM_CAPTION.AsString;
   DBGrid1.Columns[x].Width        :=mem_configMasterCM_TAMANHO.AsInteger;
   mem_configMaster.Next;
   end;
mem_configMaster.GotoBookmark(mBookMarck);
result:=true;
end;

function tFrm_PesqProd.fAtualizaTabela(pTipo: Integer): Boolean;
var
x: Integer;
begin

mem_configMaster.First;
While not mem_configMaster.Eof do
   begin
   mem_configMaster.Edit;
   mem_configMasterCM_VISIVEL.Value:='';
   mem_configMaster.Post;
   mem_configMaster.Next;
   end;
mem_configMaster.First;

for x:=0 to DBGrid1.Columns.Count-1 do
   begin
   if mem_configMaster.Locate('CM_CHAVE',DBGrid1.Columns[x].fieldName,[]) then
      mem_configMaster.Edit
   else
      mem_configMaster.Append;
   mem_configMasterCM_CHAVE.AsString   :=DBGrid1.Columns[x].FieldName;
   mem_configMasterCM_ORDEM.AsInteger  :=x;
   mem_configMasterCM_TAMANHO.AsInteger:=DBGrid1.Columns[x].Width;
   mem_configMasterCM_CAPTION.AsString :=DBGrid1.Columns[x].Title.Caption;
   mem_configMasterCM_VISIVEL.AsString :='X';
   mem_configMaster.Post;
   end;
mem_configMaster.First;
Result:=true;
end;


procedure Tfrm_pesqprod.DBGrid1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
   fAtualizaTabela(0);

end;

procedure Tfrm_pesqprod.sbConfigMaster_SalvarClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Gravar As Alterações Feitas?',0,['1','2'],2)<>mrYes then
   exit;
fAtualizaTabela(0);
sbConfigMaster.Enabled:=false;
cds_salvar_para.First;
While not cds_salvar_para.Eof do
   begin
   if cds_salvar_parasalvar.Value='X' then
      begin
      fDeletaPadroes(cds_salvar_paracodusr.AsInteger,'_PESQPROD','');
      mem_configMaster.First;
      mboolean:=false;
      While not mem_configMaster.Eof do
         begin
         if mem_configMasterCM_VISIVEL.AsString='X' then
            begin
            mboolean:=true;
            break;
            end;
         mem_configMaster.next;
         end;
      if not mboolean then
         begin
         mem_configMaster.First;
         mem_configMaster.Edit;
         mem_configMasterCM_VISIVEL.Value:='X';
         mem_configMaster.Post;
         end;


      mem_configMaster.First;

      While not mem_configMaster.Eof do
         begin
         fGravaPadroes(cds_salvar_paracodusr.AsInteger, mem_configMasterCM_CHAVE.AsString +'_ORDEM','Text'
                    ,'_PESQPROD',
                    mem_configMasterCM_ORDEM.AsString);
         fGravaPadroes(cds_salvar_paracodusr.AsInteger,mem_configMasterCM_CHAVE.AsString+'_TAM','Text'
                    ,'_PESQPROD',
                    mem_configMasterCM_TAMANHO.AsString);
         fGravaPadroes(cds_salvar_paracodusr.AsInteger, mem_configMasterCM_CHAVE.AsString+'_CAPTION','Text'
                    ,'_PESQPROD',
                    mem_configMasterCM_CAPTION.AsString);

         fGravaPadroes(cds_salvar_paracodusr.AsInteger, mem_configMasterCM_CHAVE.AsString+'_VISIVEL','Text'
                    ,'_PESQPROD',
                    mem_configMasterCM_VISIVEL.AsString);

         mem_configMaster.Next;
         end;
      end;
   cds_salvar_para.Next;
   end;
sbConfigMaster.Enabled :=true;


fBuscarDadosUsr;
fBuscarConfigSalva;
cds_config_salva.Locate('codusr',inttostr(mUsrConfig),[]);



end;

procedure Tfrm_pesqprod.FormActivate(Sender: TObject);
begin
if tipace=2 then
   btn_cadastro.Visible:=true
else if tipace=0 then
   btn_cadastro.Visible:=false
else
   begin
   DM4.Tb_Ace.Close;
   DM4.Tb_Ace.SQL.Clear;
   DM4.Tb_Ace.SQL.Add('select * from CADACE where MENU=:MENU and ');
   DM4.Tb_Ace.SQL.add(' '+fla_EmpBaixaAlta(0,'CADACE',' ',codemp,'CODEMP',' and ')
                     +'  CODCAR=0'+InttoStr(codcar)
                     +' order by CODEMP,CODCAR');
   DM4.Tb_Ace.ParamByName('MENU').AsString:='mpro_0103';
   DM4.Tb_Ace.Open;

   if DM4.Tb_Ace.IsEmpty then
      begin
      btn_cadastro.Visible:= DM4.Tb_Ace.Locate('MENU',Frm_Princ.mmoe_0103.Name,[]);
      end;
   end;
if (pfilial>0) then
   Qr_Prosaldo_filial.DisplayLabel:=pFilial_Desc;
BBnAtuClick(Self);
end;

procedure Tfrm_pesqprod.bbEstFilialClick(Sender: TObject);
var
form_pro_estfilial: Tfrm_Pro_EstFilial;
begin
  inherited;
if not Qr_ProPDCODPRO.IsNull then
   begin
   Application.CreateForm(Tfrm_Pro_EstFilial, form_Pro_EstFilial);
   form_Pro_EstFilial.lbl_nompro.Caption:=Qr_ProPDCODPRO.AsString+' - '+Qr_ProPDNOME.AsString+'/'+Qr_ProPDMARCA.AsString;
   form_Pro_EstFilial.lbl_precoqtd.Caption:='Preço Unitário: '+FormatFloat(mcasaspu, Qr_Propcoven.asfloat)
                                          +' Quantidade Total: '+FormatFloat(mcasqtd, Qr_Proestoque.asfloat);
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADEST','CECODEMP','CFCODEMP','CEFILIAL','CFFILIAL');

   form_pro_estfilial.tb_cadpro_filial.Close;
   form_pro_estfilial.tb_cadpro_filial.SQL.Clear;
   form_pro_estfilial.tb_cadpro_filial.SQL.Add('Select NVL(CESALDO,0) AS CESALDO,CFNOME,CFFILIAL from CADPRO_FILIAL'+iif(la_tabelas='','',',')+la_tabelas
                                              +'       '+la_Join
                                              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                              +' (CFCODEMP=:CODEMP OR CFCODEMP=:CODEMP_FILIAL) '
                                              +' AND CECODPRO(+)=:CODPRO order by CFFILIAL ');

   form_pro_estfilial.tb_cadpro_filial.ParamByName('CODEMP').AsInteger:=Qr_ProPDCODEMP.AsInteger;
   if Qr_ProPDCODEMP.AsInteger>100 then
      form_pro_estfilial.tb_cadpro_filial.ParamByName('CODEMP_FILIAL').AsInteger:=Qr_ProPDCODEMP.AsInteger-100
   else
      form_pro_estfilial.tb_cadpro_filial.ParamByName('CODEMP_FILIAL').AsInteger:=Qr_ProPDCODEMP.AsInteger+100;
   form_pro_estfilial.tb_cadpro_filial.ParamByName('CODPRO').AsFloat:=Qr_ProPDCODPRO.AsFloat;
   try
      form_pro_estfilial.tb_cadpro_filial.Open;
   except
      form_pro_estfilial.tb_cadpro_filial.SQL.SaveToFile(mpastatemp +'sql.TXT');
      end;
//   form_pro_estfilial.tb_cadpro_filial.SQL.SaveToFile(mpastatemp +'sql.TXT');

   form_pro_estfilial.ShowModal;
   FreeAndNil(form_pro_estfilial);
   end;

end;

procedure Tfrm_pesqprod.CB_TABPVExit(Sender: TObject);
begin
if (BBSAIR.Focused) then
   exit;
if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'PO') then
   begin
   fmensagem('Tabelas Válidas "AV","AP","PP"',0,['0'],0);
   exit;
   end;


end;

procedure Tfrm_pesqprod.CODPVExit(Sender: TObject);
begin
if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
   begin
   fmensagem('Plano de Vendas nao Cadastrado',0,['0'],0);
   CB_TABPV.SetFocus;
   mPVTipoDesc01 := 0;
   mPVTipoPreco  :=0;

   end
else
   begin
   mpro_aceita_pco_exclusivo:=DM1.Tb_PVPVACEITARPCOEXCLUSIVO.AsString;

   NOMPV.Text    := DM1.Tb_PVPVNOME.Value;
   mPVTipoDesc01 := DM1.Tb_PVPVTPD1.AsInteger;
   if mPVTipoDesc01=0 then
      pDescPcoLiq   := DM1.Tb_PVPVDES1.AsFloat
   else
      pDescPcoLiq   := 0;

   if DM1.Tb_PVPVTPP.AsInteger=0 then
      begin
      if fLerGenerico_query('CADUF','PTIPOPC',' PUF='+QuotedStr(muf_cad),query_consulta) then
         begin
         if query_consulta.fieldbyname('PTIPOPC').AsInteger=3 then
            mPVTipoPreco:=2
         else
            mPVTipoPreco:=0
         end;
      end
   else
      mPVTipoPreco:=0;
   end;

end;

function tFrm_PesqProd.fTipodePreco: Boolean;
begin
if trim(CODPV.Text)<>'' then
   begin
   if (CODPV.Text<>DM1.Tb_PVPVCODPV.AsString) or
      (CB_TABPV.Text<>DM1.Tb_PVPVCODTIP.AsString) then
      CODPVExit(self);
      if DM1.Tb_PVPVTPP.AsInteger=0 then
         begin
         if fLerGenerico_query('CADUF','PTIPOPC',' PUF='+QuotedStr(muf_cad),query_consulta) then
            begin
            if query_consulta.fieldbyname('PTIPOPC').AsInteger=3 then
               mPVTipoPreco:=2
            else
               mPVTipoPreco:=0
            end;
         end
      else
         mPVTipoPreco:=0;
   end
else
   begin
   if fLerGenerico_query('CADUF','PTIPOPC',' PUF='+QuotedStr(muf_cad),query_consulta) then
      begin
      if query_consulta.fieldbyname('PTIPOPC').AsInteger=3 then
         mPVTipoPreco:=2
      else
         mPVTipoPreco:=0
      end
   else
      mPVTipoPreco:=0;
   end;
end;



procedure Tfrm_pesqprod.CB_ESTOQUEClick(Sender: TObject);
begin
BBnAtuClick(self);
end;

procedure Tfrm_pesqprod.GroupBox2Exit(Sender: TObject);
begin
fTipodePreco;

end;

procedure Tfrm_pesqprod.CB_ESTOQUEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin




If (Shift=[ssCtrl]) then // ctrl-S or s
   begin
   if ( (Key=83) or (Key=115) )  then
      begin
      fDeletaPadroes(0,'_PESQPROD','CB_ESTOQUE');
      fGravaPadroes(0, 'CB_ESTOQUE','index'
              ,'_PESQPROD',
              inttostr(cb_estoque.itemindex));
      end
   else if ( (Key=69) or (Key=101) )  then // E e
      begin
      fDeletaPadroes(0,'_PESQPROD','CB_ESTOQUE');
      end;
   Label_key.caption:='tecla: '+inttostr(key);
   end
else
    Label_key.caption:='tecla: '+inttostr(key)+ ' shift ';


end;



procedure Tfrm_pesqprod.fLimparDadosPesqProd;
begin
mDadosPesqProd.pTipo      :=1;
mDadosPesqProd.pPre       :=1;
mDadosPesqProd.pCodEmp    :=0;
mDadosPesqProd.pCodPro    :=0;
mDadosPesqProd.pItem      :=0;
mDadosPesqProd.pCodBar    :='';
mDadosPesqProd.pMarca     :='';
mDadosPesqProd.pNome      :='';
mDadosPesqProd.pNomeGen   :='';
mDadosPesqProd.pRefer     :='';
mDadosPesqProd.pChavePed  :=0;
mDadosPesqProd.pCodEmp    :=0;
mDadosPesqProd.pItem      :=0;
mDadosPesqProd.pNomeNaCompra:='';

end;

procedure tFrm_PesqProd.fBuscarConfigSalva;
var
query_config: tQuery;

begin
query_config := tQuery.Create(nil);
query_config.Close;
query_config.databasename:=DM1.SG_ASSOC.databasename;

query_config.Close;
query_config.sql.clear;
query_config.sql.add('SELECT FPCODUSR,FPFORM,COUNT(*) AS QTD FROM FILPAD '
                    +' WHERE FPFORM=' + QuotedStr(mFormulario)
                    +' AND FPCODUSR<>0 '
                    +' GROUP BY FPCODUSR,FPFORM '
                    +' order by FPCODUSR ');


query_config.SQL.Text:='select T1.*, NOMUSR FROM ('
                    + query_config.SQL.text
                    +') T1 left join CADUSR on (CODUSR = FPCODUSR )';

try
   query_config.open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_config,2751,'_stru '+e.message,'user');
   end;
   end;
if cds_config_salva.Active=false then
   begin
   cds_config_salva.CreateDataSet;
   end;
cds_config_salva.EmptyDataSet;

while not query_config.eof do
   begin
   cds_config_salva.append;
   cds_config_salvacodusr.Value:=query_config.fieldbyname('FPCODUSR').AsInteger;
   if query_config.fieldbyname('FPCODUSR').AsInteger<0 then
      cds_config_salvanomusr.Value:='Geral'
   else
      cds_config_salvanomusr.Value:=query_config.fieldbyname('NOMUSR').AsString;
   cds_config_salva.post;
   query_config.next;
   end;
if cds_config_salva.isempty then
   begin
   cds_config_salva.append;
   cds_config_salvacodusr.Value:=-1;
   cds_config_salvanomusr.Value:='Geral';
   cds_config_salva.post;
   end;
query_config.close;
FreeAndNil(query_config);

end;






procedure tFrm_PesqProd.fBuscarDadosUsr;
var
query_config: tQuery;

begin
query_config := tQuery.Create(nil);
query_config.Close;
query_config.databasename:=DM1.SG_ASSOC.databasename;

query_config.Close;
query_config.sql.clear;
query_config.sql.add('SELECT 0 AS ORDEM, CODUSR,NOMUSR FROM CADUSR '
                    +' UNION ALL '
                    +' SELECT -1 AS ORDEM, -1 AS CODUSR,'+quotedstr('Geral ')+'  as NOMUSR FROM DUAL '
                    +' ORDER BY ORDEM,NOMUSR ');




try
   query_config.open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_config,2751,'_stru '+e.message,'user');
   end;
   end;
if cds_salvar_para.Active=false then
   begin
   cds_salvar_para.CreateDataSet;
   end;
cds_salvar_para.EmptyDataSet;

while not query_config.eof do
   begin
   cds_salvar_para.append;
   cds_salvar_paracodusr.Value:=query_config.fieldbyname('CODUSR').AsInteger;
   cds_salvar_paranomusr.Value:=query_config.fieldbyname('NOMUSR').AsString;
   cds_salvar_para.post;
   query_config.next;
   end;
query_config.close;
FreeAndNil(query_config);

end;



procedure Tfrm_pesqprod.DBGrid4CellClick(Column: TColumn);
begin
if not cds_config_salvacodusr.IsNull then
   begin
   mUsrConfig := cds_config_salvacodusr.AsInteger;
   fCarregarPadrao(mUsrConfig);
   fMarcarUsrParaSalvar(mUsrConfig);

   end;

end;

procedure Tfrm_pesqprod.fMarcarUsrParaSalvar(pCodusr: integer);
begin
cds_salvar_para.first;

While not cds_salvar_para.Eof do
   begin
   cds_salvar_para.Edit;
   cds_salvar_parasalvar.Value := iif(cds_salvar_paracodusr.AsInteger=pcodusr,'X','');
   cds_salvar_para.Post;
   cds_salvar_para.Next;
   end;


end;

procedure Tfrm_pesqprod.DBGrid5DblClick(Sender: TObject);
begin
if cds_salvar_paracodusr.AsInteger<>0 then
   begin
   cds_salvar_para.Edit;
   cds_salvar_parasalvar.AsString := iif(cds_salvar_parasalvar.AsString='X','','X');
   cds_salvar_para.Post;
   end;
end;

procedure Tfrm_pesqprod.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (DM1.Tb_Pro.Active) and (Log_TipoLote=2) then
   begin
   if (DM1.Tb_ProPDESTMIN.AsFloat>0) and
      (Qr_LGCCLQTD_PRAT.AsFloat<=DM1.Tb_ProPDESTMIN.AsFloat) then
      begin
      if not (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_PRAT.Value<>0) then
         begin
         DBGrid2.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_ESTMIN_PRAT.AsInteger;
         DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
       end
    else if (DM1.Tb_ProPDESTMIN.AsFloat>0) and
       (Qr_LGCCLQTD.AsFloat<=DM1.Tb_ProPDESTMIN.AsFloat) then
       begin
       if not (DM1.Tb_PargerPFCORP_ESTMIN_GER.IsNull) and (DM1.Tb_PargerPFCORP_ESTMIN_GER.Value<>0) then
          begin
          DBGrid2.Canvas.Brush.Color := dm1.Tb_PargerPFCORP_ESTMIN_GER.AsInteger;
          DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
       end;
    end;
  if Qr_LGCCLSITUACAO.AsInteger=1 then
     begin
     DBGrid2.Canvas.font.Color :=  clRed;
     DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;

end;

end.
