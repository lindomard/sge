unit S_ind_ForEnv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls,S_DM1, DBTables, DB,S_Pro, Grids,
  DBGrids, Buttons,lerarq,func, jpeg, RLReport, RLRichText, RLRichFilter,
  RLXLSFilter, RLPDFFilter, RLFilters, RLDraftFilter, RLHTMLFilter,
  QRCtrls, QuickRpt, s_lerarq_geral;

type
  TFrm_Ind_ForEnv = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    Label2: TLabel;
    UNDPRO: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    APRESENT: TEdit;
    Label5: TLabel;
    UNDMED: TEdit;
    pc_formulas: TPageControl;
    Panel1: TPanel;
    TS_FORMULA: TTabSheet;
    GB_MP: TGroupBox;
    RG_MPUND: TGroupBox;
    Tb_Comp_MP: TQuery;
    Tb_Comp_MPCPCODEMP: TFloatField;
    Tb_Comp_MPCPORDEM: TFloatField;
    Tb_Comp_MPCPCODPRO: TFloatField;
    Tb_Comp_MPCPCODMAT: TFloatField;
    Tb_Comp_MPCPQUANT: TFloatField;
    Tb_Comp_MPCPPU: TFloatField;
    Tb_Comp_MPCPNUMERO: TStringField;
    Tb_Comp_MPCPMPNUM: TStringField;
    Tb_Comp_MPCPCODPRO_ACAB: TFloatField;
    Tb_Comp_MPCPALICMSCRED: TFloatField;
    Tb_Comp_MPCPICMSCRED: TFloatField;
    Tb_Comp_MPCPVLRINC: TFloatField;
    Tb_Comp_MPCPALIQORI: TFloatField;
    Tb_Comp_MPtotal: TFloatField;
    Tb_Comp_MPtotalliq: TFloatField;
    Tb_Comp_MPCPPERCENT: TFloatField;
    Tb_Comp_MPCPPERCENT_REST: TFloatField;
    Src_Comp_MP: TDataSource;
    RG_MPPAD: TGroupBox;
    Tb_Comp_MPCPTIPO: TFloatField;
    Panel_mp: TPanel;
    sb_mp_incluir: TSpeedButton;
    sb_mp_excluir: TSpeedButton;
    DBGrid_mp: TDBGrid;
    Tb_Comp_MPObservacao: TStringField;
    Panel_mpund: TPanel;
    sb_mpund_incluir: TSpeedButton;
    sb_mpund_excluir: TSpeedButton;
    DBGrid_mpund: TDBGrid;
    Panel_mppad: TPanel;
    sb_mppad_incluir: TSpeedButton;
    sb_mppad_excluir: TSpeedButton;
    DBGrid_mppad: TDBGrid;
    U_Comp_MP_und: TUpdateSQL;
    Src_Comp_MP_und: TDataSource;
    Tb_Comp_MP_UND: TQuery;
    Tb_Comp_MP_Pad: TQuery;
    Src_Comp_MP_Pad: TDataSource;
    U_Comp_MP_Pad: TUpdateSQL;
    QTDPAD: TEdit;
    Label6: TLabel;
    bbFechar: TBitBtn;
    Tb_Comp_MP_UNDCPCODEMP: TFloatField;
    Tb_Comp_MP_UNDCPORDEM: TFloatField;
    Tb_Comp_MP_UNDCPCODPRO: TFloatField;
    Tb_Comp_MP_UNDCPCODMAT: TFloatField;
    Tb_Comp_MP_UNDCPQUANT: TFloatField;
    Tb_Comp_MP_UNDCPPU: TFloatField;
    Tb_Comp_MP_UNDCPNUMERO: TStringField;
    Tb_Comp_MP_UNDCPMPNUM: TStringField;
    Tb_Comp_MP_UNDCPCODPRO_ACAB: TFloatField;
    Tb_Comp_MP_UNDCPALICMSCRED: TFloatField;
    Tb_Comp_MP_UNDCPICMSCRED: TFloatField;
    Tb_Comp_MP_UNDCPVLRINC: TFloatField;
    Tb_Comp_MP_UNDCPALIQORI: TFloatField;
    Tb_Comp_MP_UNDCPPERCENT: TFloatField;
    Tb_Comp_MP_UNDCPPERCENT_REST: TFloatField;
    Tb_Comp_MP_UNDCPTIPO: TFloatField;
    Tb_Comp_MP_UNDCPQTD_PAD: TFloatField;
    Tb_Comp_MP_PadCPCODEMP: TFloatField;
    Tb_Comp_MP_PadCPORDEM: TFloatField;
    Tb_Comp_MP_PadCPCODPRO: TFloatField;
    Tb_Comp_MP_PadCPCODMAT: TFloatField;
    Tb_Comp_MP_PadCPQUANT: TFloatField;
    Tb_Comp_MP_PadCPPU: TFloatField;
    Tb_Comp_MP_PadCPNUMERO: TStringField;
    Tb_Comp_MP_PadCPMPNUM: TStringField;
    Tb_Comp_MP_PadCPCODPRO_ACAB: TFloatField;
    Tb_Comp_MP_PadCPALICMSCRED: TFloatField;
    Tb_Comp_MP_PadCPICMSCRED: TFloatField;
    Tb_Comp_MP_PadCPVLRINC: TFloatField;
    Tb_Comp_MP_PadCPALIQORI: TFloatField;
    Tb_Comp_MP_PadCPPERCENT: TFloatField;
    Tb_Comp_MP_PadCPPERCENT_REST: TFloatField;
    Tb_Comp_MP_PadCPTIPO: TFloatField;
    Tb_Comp_MP_PadCPQTD_PAD: TFloatField;
    Ts_Texto01: TTabSheet;
    Ts_Texto02: TTabSheet;
    Ts_AnexoI: TTabSheet;
    Ts_AnexoII: TTabSheet;
    Ts_AnexoIII: TTabSheet;
    Ts_AnexoIV: TTabSheet;
    Ts_AnexoV: TTabSheet;
    Ts_AnexoVI: TTabSheet;
    Ts_AnexoVII: TTabSheet;
    Ts_AnexoVIII: TTabSheet;
    Tb_Comp_MPCPQTD_PAD: TFloatField;
    Tb_Comp_MPNOMPRO: TStringField;
    Tb_Comp_MPUNDPRO: TStringField;
    Tb_Comp_MP_UNDNOMPRO: TStringField;
    Tb_Comp_MP_UNDUNDPRO: TStringField;
    Tb_Comp_MP_PadNOMPRO: TStringField;
    Tb_Comp_MP_PadUNDPRO: TStringField;
    bbImprimir: TBitBtn;
    sbnPadrao: TSpeedButton;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    bbAdquirir_Texto01: TBitBtn;
    bbSalvar_Texto01: TBitBtn;
    GroupBox5: TGroupBox;
    bbAbrir_Texto01: TBitBtn;
    bbGravar_Texto01: TBitBtn;
    GroupBox6: TGroupBox;
    bbFonte_Texto01: TBitBtn;
    bbCorfundo_Texto01: TBitBtn;
    GroupBox8: TGroupBox;
    bbSubstituir_Texto01: TBitBtn;
    bbLocalizar_Texto01: TBitBtn;
    Texto01: TRichEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    FindDialog1: TFindDialog;
    ReplaceDialog1: TReplaceDialog;
    cb_imprime_texto01: TCheckBox;
    U_Comp_MP: TUpdateSQL;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    bbAdquirir_Texto02: TBitBtn;
    bbSalvar_Texto02: TBitBtn;
    GroupBox3: TGroupBox;
    bbAbrir_Texto02: TBitBtn;
    bbGravar_Texto02: TBitBtn;
    GroupBox7: TGroupBox;
    bbFonte_Texto02: TBitBtn;
    bbCorfundo_Texto02: TBitBtn;
    GroupBox9: TGroupBox;
    bbSubstituir_Texto02: TBitBtn;
    bbLocalizar_Texto02: TBitBtn;
    cb_imprime_texto02: TCheckBox;
    Panel4: TPanel;
    GroupBox10: TGroupBox;
    bbAdquirir_AnexoI: TBitBtn;
    bbSalvar_AnexoI: TBitBtn;
    GroupBox11: TGroupBox;
    bbAbrir_AnexoI: TBitBtn;
    bbGravar_AnexoI: TBitBtn;
    GroupBox12: TGroupBox;
    bbFonte_AnexoI: TBitBtn;
    bbCorfundo_AnexoI: TBitBtn;
    GroupBox13: TGroupBox;
    bbSubstituir_AnexoI: TBitBtn;
    bbLocalizar_AnexoI: TBitBtn;
    cb_imprime_anexoI: TCheckBox;
    Panel5: TPanel;
    GroupBox14: TGroupBox;
    bbAdquirir_AnexoII: TBitBtn;
    bbSalvar_AnexoII: TBitBtn;
    GroupBox15: TGroupBox;
    bbAbrir_AnexoII: TBitBtn;
    bbGravar_AnexoII: TBitBtn;
    GroupBox16: TGroupBox;
    bbFonte_AnexoII: TBitBtn;
    bbCorfundo_AnexoII: TBitBtn;
    GroupBox17: TGroupBox;
    bbSubstituir_AnexoII: TBitBtn;
    bbLocalizar_AnexoII: TBitBtn;
    cb_imprime_anexoII: TCheckBox;
    Panel6: TPanel;
    GroupBox18: TGroupBox;
    BitBtn29: TBitBtn;
    bbSalvar_AnexoIII: TBitBtn;
    GroupBox19: TGroupBox;
    bbAbrir_AnexoIII: TBitBtn;
    bbGravar_AnexoIII: TBitBtn;
    GroupBox20: TGroupBox;
    bbFonte_AnexoIII: TBitBtn;
    bbCorfundo_AnexoIII: TBitBtn;
    GroupBox21: TGroupBox;
    bbSubstituir_AnexoIII: TBitBtn;
    bbLocalizar_AnexoIII: TBitBtn;
    cb_imprime_anexoIII: TCheckBox;
    Panel7: TPanel;
    GroupBox22: TGroupBox;
    bbAdquirir_AnexoIV: TBitBtn;
    bbSalvar_AnexoIV: TBitBtn;
    GroupBox23: TGroupBox;
    bbAbrir_AnexoIV: TBitBtn;
    bbGravar_AnexoIV: TBitBtn;
    GroupBox24: TGroupBox;
    bbFonte_AnexoIV: TBitBtn;
    bbCorfundo_AnexoIV: TBitBtn;
    GroupBox25: TGroupBox;
    bbSubstituir_AnexoIV: TBitBtn;
    bbLocalizar_AnexoIV: TBitBtn;
    cb_imprime_anexoIV: TCheckBox;
    Panel8: TPanel;
    GroupBox26: TGroupBox;
    bbAdquirir_AnexoV: TBitBtn;
    bbSalvar_AnexoV: TBitBtn;
    GroupBox27: TGroupBox;
    bbAbrir_AnexoV: TBitBtn;
    bbGravar_AnexoV: TBitBtn;
    GroupBox28: TGroupBox;
    bbFonte_AnexoV: TBitBtn;
    bbCorfundo_AnexoV: TBitBtn;
    GroupBox29: TGroupBox;
    bbSubstituir_AnexoV: TBitBtn;
    bbLocalizar_AnexoV: TBitBtn;
    cb_imprime_anexoV: TCheckBox;
    Panel9: TPanel;
    GroupBox30: TGroupBox;
    bbAdquirir_AnexoVI: TBitBtn;
    bbSalvar_AnexoVI: TBitBtn;
    GroupBox31: TGroupBox;
    bbAbrir_AnexoVI: TBitBtn;
    bbGravar_AnexoVI: TBitBtn;
    GroupBox32: TGroupBox;
    bbFonte_AnexoVI: TBitBtn;
    bbCorfundo_AnexoVI: TBitBtn;
    GroupBox33: TGroupBox;
    bbSubstituir_AnexoVI: TBitBtn;
    bbLocalizar_AnexoVI: TBitBtn;
    cb_imprime_anexoVI: TCheckBox;
    Panel10: TPanel;
    GroupBox34: TGroupBox;
    bbAdquirir_AnexoVII: TBitBtn;
    bbSalvar_AnexoVII: TBitBtn;
    GroupBox35: TGroupBox;
    bbAbrir_AnexoVII: TBitBtn;
    bbGravar_AnexoVII: TBitBtn;
    GroupBox36: TGroupBox;
    bbFonte_AnexoVII: TBitBtn;
    bbCorfundo_AnexoVII: TBitBtn;
    GroupBox37: TGroupBox;
    bbSubstituir_AnexoVII: TBitBtn;
    bbLocalizar_AnexoVII: TBitBtn;
    cb_imprime_anexoVII: TCheckBox;
    Panel11: TPanel;
    GroupBox38: TGroupBox;
    bbAdquirir_AnexoVIII: TBitBtn;
    bbSalvar_AnexoVIII: TBitBtn;
    GroupBox39: TGroupBox;
    bbAbrir_AnexoVIII: TBitBtn;
    bbGravar_AnexoVIII: TBitBtn;
    GroupBox40: TGroupBox;
    bbFonte_AnexoVIII: TBitBtn;
    bbCorfundo_AnexoVIII: TBitBtn;
    GroupBox41: TGroupBox;
    bbSubstituir_AnexoVIII: TBitBtn;
    bbLocalizar_AnexoVIII: TBitBtn;
    cb_imprime_anexoVIII: TCheckBox;
    Texto02: TRichEdit;
    AnexoI: TRichEdit;
    AnexoII: TRichEdit;
    AnexoIII: TRichEdit;
    AnexoIV: TRichEdit;
    AnexoV: TRichEdit;
    AnexoVI: TRichEdit;
    AnexoVII: TRichEdit;
    AnexoVIII: TRichEdit;
    bbGravar: TBitBtn;
    ts_relatorio: TTabSheet;
    RLReport1: TRLReport;
    rlCabLogo: TRLBand;
    rl_logo: TRLImage;
    Qr_ProdFab: TQuery;
    Src_ProdFab: TDataSource;
    rl_Cabecalho: TRLBand;
    RLDBText1: TRLDBText;
    lbl_titulo02: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    Qr_ProdFabPDNOME: TStringField;
    Qr_ProdFabPDAPRES: TStringField;
    Qr_ProdFabPDQTDGRML: TFloatField;
    Qr_ProdFabLOTE: TStringField;
    Qr_ProdFabUND: TStringField;
    Qr_ProdFabDATADOC: TDateTimeField;
    Qr_ProdFabDATAEMI: TDateTimeField;
    Qr_ProdFabQTDTEORICA: TFloatField;
    Qr_ProdFabQTDREAL: TFloatField;
    Qr_ProdFabCOORD_PROD: TStringField;
    Qr_ProdFabRENDIMENTO: TFloatField;
    Qr_ProdFabCOORD_PROD_REND: TStringField;
    Qr_ProdFabGARANTIA_QUAL: TStringField;
    Qr_ProdFabDATAQUAL: TDateTimeField;
    Qr_ProdFabQTDPREV: TFloatField;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    Qr_ProdFabundmed: TStringField;
    Qr_ProdFabundemb: TStringField;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel9: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel10: TRLLabel;
    PRZVAL: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Qr_ProdFabPRZVAL: TFloatField;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand2: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    cab_nome: TRLMemo;
    cab_cent: TRLMemo;
    cab_forpad: TRLMemo;
    cab_re: TRLMemo;
    RLBand5: TRLBand;
    RLLabel23: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel24: TRLLabel;
    RLBand6: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLBand7: TRLBand;
    db_nome_und: TRLDBMemo;
    db_nome: TRLDBMemo;
    db_forcent: TRLDBMemo;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    rl_subdet_texto01: TRLSubDetail;
    Src_Texto01: TDataSource;
    rl_subdet_texto02: TRLSubDetail;
    rl_texto02: TRLBand;
    rt_texto02: TRLRichText;
    rl_subdet_AnexoI: TRLSubDetail;
    rl_anexoI: TRLBand;
    rt_anexoI: TRLRichText;
    rl_subdet_AnexoII: TRLSubDetail;
    rl_anexoII: TRLBand;
    rt_anexoII: TRLRichText;
    rl_subdet_AnexoIII: TRLSubDetail;
    rl_anexoIII: TRLBand;
    rt_anexoIII: TRLRichText;
    rl_subdet_AnexoIV: TRLSubDetail;
    rl_anexoIV: TRLBand;
    rt_anexoIV: TRLRichText;
    rl_subdet_AnexoV: TRLSubDetail;
    rl_anexoV: TRLBand;
    rt_anexoV: TRLRichText;
    rl_subdet_AnexoVI: TRLSubDetail;
    rl_anexoVI: TRLBand;
    rt_anexoVI: TRLRichText;
    rl_subdet_AnexoVII: TRLSubDetail;
    rl_anexoVII: TRLBand;
    rt_anexoVII: TRLRichText;
    rl_subdet_AnexoVIII: TRLSubDetail;
    rl_anexoVIII: TRLBand;
    rt_anexoVIII: TRLRichText;
    Qr_Texto01: TQuery;
    RLGroup1: TRLGroup;
    rl_texto01: TRLBand;
    rt_texto01: TRLRichText;
    RLBand8: TRLBand;
    Qr_Texto01IMPRIME: TFloatField;
    Qr_Texto01QTD: TFloatField;
    Qr_Texto01TOP_CHAVE: TStringField;
    Src_Texto02: TDataSource;
    Qr_Texto02: TQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField1: TStringField;
    Src_AnexoI: TDataSource;
    Qr_AnexoI: TQuery;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField2: TStringField;
    Src_AnexoII: TDataSource;
    Qr_AnexoII: TQuery;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField3: TStringField;
    Src_AnexoIII: TDataSource;
    Qr_AnexoIII: TQuery;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    StringField4: TStringField;
    Qr_AnexoIV: TQuery;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField5: TStringField;
    Src_AnexoIV: TDataSource;
    Qr_AnexoV: TQuery;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    StringField6: TStringField;
    Src_anexoV: TDataSource;
    Qr_AnexoVI: TQuery;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField7: TStringField;
    Src_AnexoVI: TDataSource;
    Src_AnexoVII: TDataSource;
    Qr_AnexoVII: TQuery;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    StringField8: TStringField;
    Src_AnexoVIII: TDataSource;
    Qr_AnexoVIII: TQuery;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    StringField9: TStringField;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLHTMLFilter1: TRLHTMLFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    Tb_Comp_MPQTDFORM: TFloatField;
    Tb_Comp_MPPCOUNIFORM: TFloatField;
    Tb_Comp_MP_UNDQTDFORM: TFloatField;
    Tb_Comp_MP_UNDPCOUNIFORM: TFloatField;
    db_qtdforpad: TRLDBText;
    db_qtdforpad_und: TRLDBText;
    Qr_ProdFabundmed_ltkg: TStringField;
    ts_report: TTabSheet;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    qr_logo: TQRImage;
    DetailBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    ChildBand1: TQRChildBand;
    QRDBText21: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel26: TQRLabel;
    QRSysData5: TQRSysData;
    ChildBand2: TQRChildBand;
    QRLabel27: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    CB_MODREL: TCheckBox;
    GroupHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    GroupHeaderBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel23: TQRLabel;
    lbl_re: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel32: TQRLabel;
    Qr_SubDet_Texto01: TQRSubDetail;
    qrrt_texto01: TQRRichText;
    Qr_SubDet_Texto02: TQRSubDetail;
    qrrt_texto02: TQRRichText;
    Qr_SubDet_AnexoI: TQRSubDetail;
    qrrt_AnexoI: TQRRichText;
    Qr_SubDet_AnexoII: TQRSubDetail;
    qrrt_AnexoII: TQRRichText;
    Qr_SubDet_AnexoIII: TQRSubDetail;
    qrrt_AnexoIII: TQRRichText;
    Qr_SubDet_AnexoIV: TQRSubDetail;
    qrrt_AnexoIV: TQRRichText;
    Qr_SubDet_AnexoV: TQRSubDetail;
    qrrt_AnexoV: TQRRichText;
    Qr_SubDet_AnexoVI: TQRSubDetail;
    qrrt_AnexoVI: TQRRichText;
    Qr_SubDet_AnexoVII: TQRSubDetail;
    qrrt_AnexoVII: TQRRichText;
    Qr_SubDet_AnexoVIII: TQRSubDetail;
    qrrt_AnexoVIII: TQRRichText;
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROEnter(Sender: TObject);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbFecharClick(Sender: TObject);
    procedure APRESENTExit(Sender: TObject);
    procedure APRESENTChange(Sender: TObject);
    procedure QTDPADChange(Sender: TObject);
    procedure UNDMEDChange(Sender: TObject);
    procedure UNDMEDExit(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure QTDPADExit(Sender: TObject);
    procedure sb_mp_incluirClick(Sender: TObject);
    procedure sb_mp_excluirClick(Sender: TObject);
    procedure sb_mpund_incluirClick(Sender: TObject);
    procedure sb_mppad_incluirClick(Sender: TObject);
    procedure sb_mpund_excluirClick(Sender: TObject);
    procedure sb_mppad_excluirClick(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure Tb_Comp_MPAfterCancel(DataSet: TDataSet);
    procedure Tb_Comp_MPAfterEdit(DataSet: TDataSet);
    procedure Tb_Comp_MPAfterInsert(DataSet: TDataSet);
    procedure Tb_Comp_MPBeforeDelete(DataSet: TDataSet);
    procedure Tb_Comp_MPBeforePost(DataSet: TDataSet);
    procedure DBGrid_mpColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_mpundColExit(Sender: TObject);
    procedure Tb_Comp_MP_UNDAfterCancel(DataSet: TDataSet);
    procedure Tb_Comp_MP_UNDAfterEdit(DataSet: TDataSet);
    procedure Tb_Comp_MP_UNDAfterInsert(DataSet: TDataSet);
    procedure Tb_Comp_MP_UNDBeforePost(DataSet: TDataSet);
    procedure Tb_Comp_MP_PadAfterCancel(DataSet: TDataSet);
    procedure Tb_Comp_MP_PadAfterEdit(DataSet: TDataSet);
    procedure Tb_Comp_MP_PadAfterInsert(DataSet: TDataSet);
    procedure Tb_Comp_MP_PadBeforePost(DataSet: TDataSet);
    procedure DBGrid_mppadColExit(Sender: TObject);
    procedure DBGrid_mpExit(Sender: TObject);
    procedure DBGrid_mpundExit(Sender: TObject);
    procedure DBGrid_mppadExit(Sender: TObject);
    procedure Tb_Comp_MPCalcFields(DataSet: TDataSet);
    procedure Tb_Comp_MPBeforeInsert(DataSet: TDataSet);
    procedure Tb_Comp_MP_UNDBeforeInsert(DataSet: TDataSet);
    procedure Tb_Comp_MP_PadBeforeInsert(DataSet: TDataSet);
    procedure DBGrid_mpKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_mpundKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_mppadKeyPress(Sender: TObject; var Key: Char);
    procedure bbAdquirir_Texto01Click(Sender: TObject);
    procedure bbSalvar_Texto01Click(Sender: TObject);
    procedure bbAbrir_Texto01Click(Sender: TObject);
    procedure sbnPadraoClick(Sender: TObject);
    procedure bbGravar_Texto01Click(Sender: TObject);
    procedure bbAdquirir_Texto02Click(Sender: TObject);
    procedure bbAdquirir_AnexoIClick(Sender: TObject);
    procedure bbAdquirir_AnexoIIClick(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure bbAdquirir_AnexoIVClick(Sender: TObject);
    procedure bbAdquirir_AnexoVClick(Sender: TObject);
    procedure bbAdquirir_AnexoVIClick(Sender: TObject);
    procedure bbAdquirir_AnexoVIIClick(Sender: TObject);
    procedure bbAdquirir_AnexoVIIIClick(Sender: TObject);
    procedure bbSalvar_Texto02Click(Sender: TObject);
    procedure bbSalvar_AnexoIClick(Sender: TObject);
    procedure bbSalvar_AnexoIIClick(Sender: TObject);
    procedure bbSalvar_AnexoIIIClick(Sender: TObject);
    procedure bbSalvar_AnexoIVClick(Sender: TObject);
    procedure bbSalvar_AnexoVClick(Sender: TObject);
    procedure bbSalvar_AnexoVIClick(Sender: TObject);
    procedure bbSalvar_AnexoVIIClick(Sender: TObject);
    procedure bbSalvar_AnexoVIIIClick(Sender: TObject);
    procedure bbAbrir_Texto02Click(Sender: TObject);
    procedure bbAbrir_AnexoIClick(Sender: TObject);
    procedure bbAbrir_AnexoIIClick(Sender: TObject);
    procedure bbAbrir_AnexoIIIClick(Sender: TObject);
    procedure bbAbrir_AnexoIVClick(Sender: TObject);
    procedure bbAbrir_AnexoVClick(Sender: TObject);
    procedure bbAbrir_AnexoVIClick(Sender: TObject);
    procedure bbAbrir_AnexoVIIClick(Sender: TObject);
    procedure bbAbrir_AnexoVIIIClick(Sender: TObject);
    procedure bbGravar_Texto02Click(Sender: TObject);
    procedure bbGravar_AnexoIClick(Sender: TObject);
    procedure bbGravar_AnexoIIClick(Sender: TObject);
    procedure bbGravar_AnexoIIIClick(Sender: TObject);
    procedure bbGravar_AnexoIVClick(Sender: TObject);
    procedure bbGravar_AnexoVClick(Sender: TObject);
    procedure bbGravar_AnexoVIClick(Sender: TObject);
    procedure bbGravar_AnexoVIIClick(Sender: TObject);
    procedure bbGravar_AnexoVIIIClick(Sender: TObject);
    procedure bbFonte_Texto01Click(Sender: TObject);
    procedure bbFonte_Texto02Click(Sender: TObject);
    procedure bbFonte_AnexoIClick(Sender: TObject);
    procedure bbFonte_AnexoIIClick(Sender: TObject);
    procedure bbFonte_AnexoIIIClick(Sender: TObject);
    procedure bbFonte_AnexoIVClick(Sender: TObject);
    procedure bbFonte_AnexoVClick(Sender: TObject);
    procedure bbFonte_AnexoVIClick(Sender: TObject);
    procedure bbFonte_AnexoVIIClick(Sender: TObject);
    procedure bbFonte_AnexoVIIIClick(Sender: TObject);
    procedure bbCorfundo_Texto01Click(Sender: TObject);
    procedure bbCorfundo_Texto02Click(Sender: TObject);
    procedure bbCorfundo_AnexoIClick(Sender: TObject);
    procedure bbCorfundo_AnexoIIIClick(Sender: TObject);
    procedure bbCorfundo_AnexoIVClick(Sender: TObject);
    procedure bbCorfundo_AnexoVClick(Sender: TObject);
    procedure bbCorfundo_AnexoVIClick(Sender: TObject);
    procedure bbCorfundo_AnexoVIIClick(Sender: TObject);
    procedure bbCorfundo_AnexoVIIIClick(Sender: TObject);
    procedure AnexoVIIIChange(Sender: TObject);
    procedure Texto01Change(Sender: TObject);
    procedure Texto02Change(Sender: TObject);
    procedure AnexoIChange(Sender: TObject);
    procedure AnexoIIChange(Sender: TObject);
    procedure AnexoIIIChange(Sender: TObject);
    procedure AnexoIVChange(Sender: TObject);
    procedure AnexoVChange(Sender: TObject);
    procedure AnexoVIChange(Sender: TObject);
    procedure AnexoVIIChange(Sender: TObject);
    procedure bbCorfundo_AnexoIIClick(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cb_imprime_texto01Click(Sender: TObject);
    procedure cb_imprime_texto02Click(Sender: TObject);
    procedure cb_imprime_anexoIClick(Sender: TObject);
    procedure cb_imprime_anexoIIClick(Sender: TObject);
    procedure cb_imprime_anexoIIIClick(Sender: TObject);
    procedure cb_imprime_anexoIVClick(Sender: TObject);
    procedure cb_imprime_anexoVClick(Sender: TObject);
    procedure cb_imprime_anexoVIClick(Sender: TObject);
    procedure cb_imprime_anexoVIIClick(Sender: TObject);
    procedure cb_imprime_anexoVIIIClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure Qr_ProdFabCalcFields(DataSet: TDataSet);
    procedure PRZVALExit(Sender: TObject);
    procedure db_forcentBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure db_qtdforpadBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure db_qtdforpad_undBeforePrint(Sender: TObject;
      var Text: String; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_subdet_texto02BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rt_texto01BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure Qr_SubDet_AnexoIBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qr_SubDet_Texto01BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qr_SubDet_Texto02BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qr_SubDet_AnexoIIBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qr_SubDet_AnexoIIIBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qr_SubDet_AnexoIVBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qr_SubDet_AnexoVBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qr_SubDet_AnexoVIBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qr_SubDet_AnexoVIIBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qr_SubDet_AnexoVIIIBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fGravarTexto(pCodEmp,pCodPro,pImprime: Real; pChave: String; pTexto: TRichEdit): Boolean;
function fAbrirTexto(pCodEmp,pCodPro: Real; pChave,ptabTemp: String): Integer;
function fAbrirArqFormulas(pChaveOp:Real): Boolean;

var
  Frm_Ind_ForEnv: TFrm_Ind_ForEnv;
  mAlterouProd: Boolean=false;
  mSeqMp     : Real=0;
  mSeqMp_Und : Real=0;
  mSeqMp_Pad : Real=0;
  mqtdZerado : Integer=0;
  mPerc_Ant  : Real=0;
  mOperMP    : Integer=0;
  mOperMP_und: Integer=0;
  mOperMP_pad: Integer=0;
  mQtdZerado_ant: Integer=0;
  mTotQsp: Real;
  mTextoTemp: String;
  f: TextFile;
  mAvisa: Boolean=true;
  mCodigoOP: Real=0;
  mImprimirLogo: Boolean=false;
implementation

{$R *.dfm}

procedure TFrm_Ind_ForEnv.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL=0 OR PDNIVEL=3';
//   DM1.Tb_Pro.Filtered:=True;
   CODPRO.Text:=fChamaPro(0,'Frm_Ind_ForEnv',key);
   DM1.Tb_Pro.Filter:='';
   DM1.Tb_Pro.Filtered:=False;
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_Ind_ForEnv.CODPROExit(Sender: TObject);
begin

if bbFechar.Focused then
   exit;
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if trim(CODPRO.Text)='' then
   begin
   APRESENT.Enabled    :=false;
   QTDPAD.Enabled      :=false;
   UNDMED.Enabled      :=false;
   Ts_Texto01.Enabled  :=false;
   Ts_Texto02.Enabled  :=false;
   Ts_AnexoI.Enabled   :=false;
   Ts_AnexoII.Enabled  :=false;
   Ts_AnexoIII.Enabled :=false;
   Ts_AnexoIV.Enabled  :=false;
   Ts_AnexoV.Enabled   :=false;
   Ts_AnexoVI.Enabled  :=false;
   Ts_AnexoVII.Enabled :=false;
   Ts_AnexoVIII.Enabled:=false;
   exit;
   end
else
   begin
   APRESENT.Enabled    :=true;
   QTDPAD.Enabled      :=true;
   UNDMED.Enabled      :=true;
   Ts_Texto01.Enabled  :=true;
   Ts_Texto02.Enabled  :=true;
   Ts_AnexoI.Enabled   :=true;
   Ts_AnexoII.Enabled  :=true;
   Ts_AnexoIII.Enabled :=true;
   Ts_AnexoIV.Enabled  :=true;
   Ts_AnexoV.Enabled   :=true;
   Ts_AnexoVI.Enabled  :=true;
   Ts_AnexoVII.Enabled :=true;
   Ts_AnexoVIII.Enabled:=true;
   end;
if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   MessageDlg('Produto não Cadastrado!',mtWarning,[mbOk],0);
   CODPRO.SetFocus;
   exit;
   end
else if (DM1.Tb_ProPDNIVEL.Value<>4) and
        (DM1.Tb_ProPDNIVEL.Value<>3) then
   begin
   MessageDlg('Produto: '+DM1.Tb_ProPDNOME.Value+' Nivel: '+DM1.Tb_ProPDNIVEL.AsString
             +'-'+DM1.Tb_Pron_nivel.Value+#13
             +'Nível Inválido!',mtWarning,[mbOk],0);
   exit;
   end;
NOMPRO.Text  :=DM1.Tb_ProPDNOME.Value;
UNDPRO.Text  :=DM1.Tb_ProPDUND.Value;
APRESENT.Text:=DM1.Tb_ProPDAPRES.Value;
QTDPAD.Text  :=DM1.Tb_ProPDEMBPAD.AsString;
UNDMED.Text  :=FormatFloat('0.000', DM1.Tb_ProPDQTDGRML.Value);
DBGrid_mp.ReadOnly   :=false;
DBGrid_mpund.ReadOnly:=false;
DBGrid_mppad.ReadOnly:=false;
Panel_mp.Enabled     :=true;
Panel_mpund.Enabled  :=true;
Panel_mppad.Enabled  :=true;

mAlterouProd         :=false;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CPORDEM) as ORDEM, ');
DM1.Query1.SQL.Add('       sum(CPQUANT) as CPQUANT, ');
DM1.Query1.SQL.Add('       sum(CPICMSCRED) as CPICMSCRED, ');
DM1.Query1.SQL.Add('       sum(CPQUANT*CPPU) as CPTOTAL, ');
DM1.Query1.SQL.Add('       sum(DECODE(CPPERCENT,0,0,CPPERCENT_REST)) as QSP, ');
DM1.Query1.SQL.Add('       count(*)  as QTDREG from CADCOMP where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                  +' CPTIPO=0 '
                  +' and CPCODPRO=0'+CODPRO.Text);
DM1.Query1.open;
mSeqMp :=DM1.query1.Fields[0].AsInteger+1;
mTotQsp:=100-DM1.query1.FieldbyName('QSP').AsFloat;




mTextoTemp:=fProcTemp(24);
mAvisa:=true;
cb_imprime_texto01.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'TEXTO01',mTextoTemp)=0;
Texto01.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_Texto01.Enabled:=false;
DeleteFile(mTextoTemp);


mAvisa:=true;
mTextoTemp:=fProcTemp(24);
cb_imprime_texto02.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'TEXTO02',mTextoTemp)=0;
Texto02.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_Texto02.Enabled:=false;
DeleteFile(mTextoTemp);

mAvisa:=true;
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoI.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOI',mTextoTemp)=0;
AnexoI.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_AnexoI.Enabled:=false;

DeleteFile(mTextoTemp);

mAvisa:=true;
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoII.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOII',mTextoTemp)=0;
AnexoII.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_AnexoII.Enabled:=false;

DeleteFile(mTextoTemp);
mAvisa:=true;
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoIII.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOIII',mTextoTemp)=0;
AnexoIII.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_AnexoIII.Enabled:=false;

DeleteFile(mTextoTemp);
mAvisa:=true;
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoIV.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOIV',mTextoTemp)=0;
AnexoIV.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_AnexoIV.Enabled:=false;

DeleteFile(mTextoTemp);
mAvisa:=true;
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoV.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOV',mTextoTemp)=0;
AnexoV.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_AnexoV.Enabled:=false;

DeleteFile(mTextoTemp);
mAvisa:=true;
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoVI.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOVI',mTextoTemp)=0;
AnexoVI.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_AnexoVI.Enabled:=false;

DeleteFile(mTextoTemp);
mAvisa:=true;
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoVII.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOVII',mTextoTemp)=0;
AnexoVII.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_AnexoVII.Enabled:=false;

DeleteFile(mTextoTemp);
mAvisa:=true;
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoVIII.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOVIII',mTextoTemp)=0;
 AnexoVIII.Lines.LoadFromFile(mTextoTemp);
if not mAvisa then
   bbGravar_AnexoVIII.Enabled:=false;
DeleteFile(mTextoTemp);
mAvisa:=true;


//
fAbrirArqFormulas(mCodigoOP);


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CPORDEM) as ORDEM, ');
DM1.Query1.SQL.Add('       sum(CPQUANT) as CPQUANT, ');
DM1.Query1.SQL.Add('       sum(CPICMSCRED) as CPICMSCRED, ');
DM1.Query1.SQL.Add('       sum(CPQUANT*CPPU) as CPTOTAL, ');
DM1.Query1.SQL.Add('       count(*)  as QTDREG from CADCOMP where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                  +' CPTIPO=1 '
                  +' and CPCODPRO=0'+CODPRO.Text);
DM1.Query1.open;
mSeqMp_Und:=DM1.query1.Fields[0].AsInteger+1;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CPORDEM) as ORDEM, ');
DM1.Query1.SQL.Add('       sum(CPQUANT) as CPQUANT, ');
DM1.Query1.SQL.Add('       sum(CPICMSCRED) as CPICMSCRED, ');
DM1.Query1.SQL.Add('       sum(CPQUANT*CPPU) as CPTOTAL, ');
DM1.Query1.SQL.Add('       count(*)  as QTDREG from CADCOMP where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                  +' CPTIPO=2 '
                  +' and CPCODPRO=0'+CODPRO.Text);
DM1.Query1.open;
mSeqMp_Pad:=DM1.query1.Fields[0].AsInteger+1;

end;

procedure TFrm_Ind_ForEnv.CODPROEnter(Sender: TObject);
begin
APRESENT.Enabled     :=false;
QTDPAD.Enabled       :=false;
UNDMED.Enabled       :=false;
DBGrid_mp.ReadOnly   :=true;
DBGrid_mpund.ReadOnly:=true;
DBGrid_mppad.ReadOnly:=true;
Panel_mp.Enabled     :=false;
Panel_mpund.Enabled  :=false;
Panel_mppad.Enabled  :=false;

Ts_Texto01.Enabled   :=false;
Ts_Texto02.Enabled   :=false;
Ts_AnexoI.Enabled    :=false;
Ts_AnexoII.Enabled   :=false;
Ts_AnexoIII.Enabled  :=false;
Ts_AnexoIV.Enabled   :=false;
Ts_AnexoV.Enabled    :=false;
Ts_AnexoVI.Enabled   :=false;
Ts_AnexoVII.Enabled  :=false;
Ts_AnexoVIII.Enabled :=false;



end;

procedure TFrm_Ind_ForEnv.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Tb_Comp_MP.Active then
   Tb_Comp_MP.Close;
if Tb_Comp_MP_UND.Active then
   Tb_Comp_MP_UND.Close;
if Tb_Comp_MP_Pad.Active then
   Tb_Comp_MP_Pad.Close;

end;

procedure TFrm_Ind_ForEnv.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ind_ForEnv.APRESENTExit(Sender: TObject);
begin
if Length(APRESENT.Text)>30 then
   begin
   APRESENT.Text:=copy(APRESENT.Text,1,30);
   if fsonumero(UNDMED.Text)=0 then
      begin
      UNDMED.Text:=FormatFloat('#0.000', fSonumero(APRESENT.Text)/1000);
      if ValFloat(UNDMED.Text)>99998 then
         begin
         UNDMED.Text:=FormatFloat('#0.000', 0);
         end;
      end;
   end;
end;

procedure TFrm_Ind_ForEnv.APRESENTChange(Sender: TObject);
begin
mAlterouProd:=true;
end;

procedure TFrm_Ind_ForEnv.QTDPADChange(Sender: TObject);
begin
mAlterouProd:=true;
end;

procedure TFrm_Ind_ForEnv.UNDMEDChange(Sender: TObject);
begin
mAlterouProd:=true;
end;

procedure TFrm_Ind_ForEnv.UNDMEDExit(Sender: TObject);
begin
UNDMED.Text:=FormatFloat('#0.000', ValFloat(UNDMED.Text));
if ValFloat(UNDMED.Text)>99998 then
   begin
   UNDMED.Text:=FormatFloat('#0.000', 0);
   end;

end;

procedure TFrm_Ind_ForEnv.GroupBox1Exit(Sender: TObject);
begin
if mAlterouProd then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.CreateParam(ftString,'APRES',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'EMBPAD',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'QTDGRML',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'PRZVAL',ptInput);
   DM1.Query1.SQL.Add('Update CADPRO set PDAPRES=:APRES, '
                     +' PDEMBPAD=:EMBPAD '
                     +',PDQTDGRML=:QTDGRML '
                     +',PDPRZVAL=:PRZVAL '
                     +' where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                     +' PDCODPRO=0'+fdeixanum(CODPRO.Text));
   DM1.Query1.ParambyName('APRES').AsString  :=APRESENT.Text;
   DM1.Query1.ParambyName('EMBPAD').AsFloat  :=ValFloat(QTDPAD.Text);
   DM1.Query1.ParambyName('QTDGRML').AsFloat :=ValFloat(UNDMED.Text);
   DM1.Query1.ParambyName('PRZVAL').AsInteger:=ValInt(PRZVAL.Text);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 333 ao atualizar a tabela de Produtos!',mtWarning,[mbOk],0);
      exit;
      end;
   end;

end;

procedure TFrm_Ind_ForEnv.QTDPADExit(Sender: TObject);
begin
QTDPAD.Text:=fdeixanum2(QTDPAD.Text);
if ValFloat(QTDPAD.Text)>99998 then
   begin
   QTDPAD.Text:='0';
   end;

end;

procedure TFrm_Ind_ForEnv.sb_mp_incluirClick(Sender: TObject);
begin
Tb_Comp_MP.Append;
end;

procedure TFrm_Ind_ForEnv.sb_mp_excluirClick(Sender: TObject);
begin
if Tb_Comp_MPCPCODEMP.IsNull then
   begin
   verteclado(1);
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem(pchar('Quer Realmente Excluir a Matéria Prima: '+#13
                         +Tb_Comp_MPNOMPRO.Value+'?'),0,['1','2'],2)=mrYes then
   begin
   Tb_Comp_MP.Delete;
   end;

end;

procedure TFrm_Ind_ForEnv.sb_mpund_incluirClick(Sender: TObject);
begin
Tb_Comp_MP_UND.Append;
end;

procedure TFrm_Ind_ForEnv.sb_mppad_incluirClick(Sender: TObject);
begin
if not (Tb_Comp_MP_Pad.State in [dsedit,dsinsert]) then
   Tb_Comp_MP_Pad.Append;

end;

procedure TFrm_Ind_ForEnv.sb_mpund_excluirClick(Sender: TObject);
begin
if Tb_Comp_MP_UNDCPCODEMP.IsNull then
   begin
   verteclado(1);
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem(pchar('Quer Realmente Excluir a Matéria Prima: '+#13
                         +Tb_Comp_MP_PadNOMPRO.Value+'?'),0,['1','2'],2)=mrYes then
   begin
   Tb_Comp_MP_UND.Delete;
   end;

end;

procedure TFrm_Ind_ForEnv.sb_mppad_excluirClick(Sender: TObject);
begin
if Tb_Comp_MP_PadCPCODEMP.IsNull then
   begin
   verteclado(1);
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem(pchar('Quer Realmente Excluir a Matéria Prima: '+#13
                         +Tb_Comp_MP_PadNOMPRO.Value+'?'),0,['1','2'],2)=mrYes then
   begin
   Tb_Comp_MP_Pad.Delete;
   end;

end;

procedure TFrm_Ind_ForEnv.c(DataSet: TDataSet);
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

procedure TFrm_Ind_ForEnv.Tb_Comp_MPAfterCancel(DataSet: TDataSet);
begin
mPerc_Ant     :=0;
mOperMP       :=0;
end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MPAfterEdit(DataSet: TDataSet);
begin
moperMP:=1;
mPerc_Ant    :=Tb_Comp_MPCPPERCENT.Value;
if (Tb_Comp_MPCPPERCENT.AsFloat=0) then
   mQtdZerado_ant:=1
else
   mQtdZerado_ant:=0;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MPAfterInsert(DataSet: TDataSet);
begin
mPerc_ant                     :=0;
mQtdZerado_ant                :=0;
Tb_Comp_MPCPORDEM.AsFloat     :=mSeqMp;
Tb_Comp_MPCPCODEMP.Value      :=codemp;
Tb_Comp_MPCPCODPRO.Value      :=ValFloat(CODPRO.Text);
Tb_Comp_MPCPCODPRO_ACAB.Value :=0;
Tb_Comp_MPCPTIPO.Value        :=0;
mOperMP                       :=0;
//Tb_Comp_MPCPCODMAT.Value      :=0;
Tb_Comp_MPCPPU.Value          :=0;
Tb_Comp_MPCPNUMERO.Value      :=' ';
Tb_Comp_MPCPMPNUM.Value       :=' ';
Tb_Comp_MPCPPERCENT_REST.Value:=0;
Tb_Comp_MPCPPERCENT.Value     :=0;


end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MPBeforeDelete(DataSet: TDataSet);
begin
mAlterouProd:=true;
if (Tb_Comp_MPCPPERCENT.Value=0) then
   begin
   mQtdZerado:=mQtdZerado-1;
   end;
mTotQsp:=mTotQsp+Tb_Comp_MPCPPERCENT_REST.Value;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MPBeforePost(DataSet: TDataSet);
begin
if Tb_Comp_MPCPCODPRO_ACAB.IsNull then
   Tb_Comp_MPCPCODPRO_ACAB.Value:=0;



if Tb_Comp_MPCPCODMAT.Isnull then
   begin
   Tb_Comp_MP.Cancel;
   Abort;
   exit;
   end;
if (Tb_Comp_MPCPQUANT.IsNull) or (Tb_Comp_MPCPQUANT.AsFloat<0) then
   Tb_Comp_MPCPQUANT.Value:=0;
if (Tb_Comp_MPCPPERCENT.IsNull) or (Tb_Comp_MPCPPERCENT.AsFloat<0) then
   Tb_Comp_MPCPPERCENT.Value:=0;
Tb_Comp_MPCPPERCENT.Value:=Arredonda(Tb_Comp_MPCPPERCENT.Value,3);
if mQtdZerado>0 then
   begin
   if (Tb_Comp_MPCPPERCENT.AsFloat=0) then
      begin
      MessageDlg('Favor Selecionar um percentual válido!',mtWarning,[mbOk],0);
      DBGrid_mp.SelectedField:=Tb_Comp_MPCPPERCENT;
      abort;
      exit;
      end;
   end;

if not flcadpro(1,0,0,Tb_Comp_MPCPCODMAT.AsString) then
   begin
   MessageDlg('Favor Selecionar um Código de Matéria Prima Válido!',mtWarning,[mbOk],0);
   DBGrid_MP.SelectedField:=Tb_Comp_MPCPCODMAT;
   abort;
   exit;
   end;
if mOperMP=0 then
   begin
   mSeqMp:=mSeqMp+1;
   end;
mOperMP:=0;
mQtdZerado:=mQtdZerado-mQtdZerado_ant;
if (Tb_Comp_MPCPQUANT.AsFloat=0) and (Tb_Comp_MPCPPERCENT.AsFloat=0) then
   mQtdZerado:=mQtdZerado+1;

if Tb_Comp_MPCPPERCENT.AsFloat<>0 then
   begin
   Tb_Comp_MPCPPERCENT_REST.Value:=Tb_Comp_MPCPPERCENT.Value;
   mTotQsp:=mTotQsp-Tb_Comp_MPCPPERCENT_REST.Value+mPerc_Ant;
   end
else
   mTotQsp:=mTotQsp+mPerc_Ant;
mPerc_Ant:=0;
mAlterouProd:=true;

end;

procedure TFrm_Ind_ForEnv.DBGrid_mpColExit(Sender: TObject);
begin
if Tb_Comp_MP.State in [dsEdit,dsInsert] then
   begin
   if (DBGrid_mp.SelectedField=Tb_Comp_MPCPCODMAT) and not (Tb_Comp_MPCPCODMAT.IsNull) then
      begin
      if not flcadpro(1,0,0,Tb_Comp_MPCPCODMAT.AsString) then
         begin
         MessageDlg('Favor Selecionar um Código de Matéria Prima Válido!',mtWarning,[mbOk],0);
         DBGrid_MP.SelectedField:=Tb_Comp_MPCPCODMAT;
         abort;
         exit;
         end
      else
         begin
         Tb_Comp_MPNOMPRO.Value  :=DM1.Tb_ProPDNOME.Value;
         Tb_Comp_MPUNDPRO.Value  :=DM1.Tb_ProPDUND.Value;
         end;
      end;
   end;
end;

procedure TFrm_Ind_ForEnv.FormCreate(Sender: TObject);
begin
Tb_Comp_MPCPPERCENT.DisplayFormat        :=mcasas_pct;
Tb_Comp_MPCPPERCENT_REST.DisplayFormat   :=mcasas_pct;

//Tb_Comp_MPCPPERCENT.DisplayFormat        :=mcasas_pct;
//Tb_Comp_MPCPPERCENT_REST.DisplayFormat   :=mcasas_pct;
Tb_Comp_MP_UNDQTDFORM.DisplayFormat    :=mcasind;
Tb_Comp_MP_UNDCPQUANT.DisplayFormat    :=mcasind;
Tb_Comp_MPQTDFORM.DisplayFormat        :=mcasind;
Tb_Comp_MP_PadCPQTD_PAD.DisplayFormat  :=mcasind;
Qr_ProdFabPDQTDGRML.DisplayFormat      :='#0.000';
Qr_ProdFabQTDPREV.DisplayFormat      :='#0.000';
Qr_ProdFabQTDREAL.DisplayFormat      :='#0.000';

if codusr=1111 then
   begin
   ts_relatorio.TabVisible:=true;
   ts_report.TabVisible   :=true;
   end
else
   begin
   ts_relatorio.TabVisible:=false;
   ts_report.TabVisible   :=false;
   end;

end;

procedure TFrm_Ind_ForEnv.DBGrid_mpundColExit(Sender: TObject);
begin
if Tb_Comp_MP_UND.State in [dsEdit,dsInsert] then
   begin
   if (DBGrid_mpund.SelectedField=Tb_Comp_MP_UNDCPCODMAT) and not (Tb_Comp_MP_UNDCPCODMAT.IsNull) then
      begin
      if not flcadpro(1,0,0,Tb_Comp_MP_UNDCPCODMAT.AsString) then
         begin
         MessageDlg('Favor Selecionar um Código de Matéria Prima Válido!',mtWarning,[mbOk],0);
         DBGrid_MPUND.SelectedField:=Tb_Comp_MP_UNDCPCODMAT;
         abort;
         exit;
         end
      else
         begin
         Tb_Comp_MP_UNDNOMPRO.Value  :=DM1.Tb_ProPDNOME.Value;
         Tb_Comp_MP_UNDUNDPRO.Value  :=DM1.Tb_ProPDUND.Value;
         if Tb_Comp_MPCPQUANT.AsFloat=0 then
            Tb_Comp_MPCPQUANT.Value:=1;
         end;
      end;
   end;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_UNDAfterCancel(DataSet: TDataSet);
begin
mOperMP_und  :=0;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_UNDAfterEdit(DataSet: TDataSet);
begin
mOperMP_und:=1;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_UNDAfterInsert(DataSet: TDataSet);
begin
Tb_Comp_MP_UNDCPORDEM.AsFloat     :=mSeqMp;
Tb_Comp_MP_UNDCPCODEMP.Value      :=codemp;
Tb_Comp_MP_UNDCPCODPRO.Value      :=ValFloat(CODPRO.Text);
Tb_Comp_MP_UNDCPCODPRO_ACAB.Value :=0;
Tb_Comp_MP_UNDCPTIPO.Value        :=1;
mOperMP_und                       :=0;
Tb_Comp_MP_UNDCPPU.Value          :=0;
Tb_Comp_MP_UNDCPNUMERO.Value      :=' ';
Tb_Comp_MP_UNDCPMPNUM.Value       :=' ';
Tb_Comp_MP_UNDCPPERCENT_REST.Value:=0;
Tb_Comp_MP_UNDCPPERCENT.Value     :=0;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_UNDBeforePost(DataSet: TDataSet);
begin
if Tb_Comp_MP_UNDCPCODPRO_ACAB.IsNull then
   Tb_Comp_MP_UNDCPCODPRO_ACAB.Value:=0;

if Tb_Comp_MP_UNDCPCODMAT.Isnull then
   begin
   Tb_Comp_MP_UND.Cancel;
   Abort;
   exit;
   end;
if (Tb_Comp_MP_UNDCPQUANT.IsNull) or (Tb_Comp_MP_UNDCPQUANT.AsFloat<0) then
   Tb_Comp_MP_UNDCPQUANT.Value:=0;
if (Tb_Comp_MP_UNDCPPERCENT.IsNull) or (Tb_Comp_MP_UNDCPPERCENT.AsFloat<0) then
   Tb_Comp_MP_UNDCPPERCENT.Value:=0;
Tb_Comp_MP_UNDCPPERCENT.Value:=Arredonda(Tb_Comp_MP_UNDCPPERCENT.Value,3);

if not flcadpro(1,0,0,Tb_Comp_MP_UNDCPCODMAT.AsString) then
   begin
   MessageDlg('Favor Selecionar um Código de Matéria Prima Válido!',mtWarning,[mbOk],0);
   DBGrid_mpund.SelectedField:=Tb_Comp_MP_UNDCPCODMAT;
   abort;
   exit;
   end;
if (Tb_Comp_MP_UNDCPQUANT.AsFloat=0) then
   begin
   MessageDlg('Favor Digitar uma Quantidade Válida!',mtWarning,[mbOk],0);
   DBGrid_mpund.SelectedField:=Tb_Comp_MP_UNDCPQUANT;
   abort;
   exit;
   end;

if mOperMP_und=0 then
   begin
   mSeqMp_Und:=mSeqMp_Und+1;
   end;
mOperMP_und:=0;
end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_PadAfterCancel(DataSet: TDataSet);
begin
mOperMP_pad       :=0;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_PadAfterEdit(DataSet: TDataSet);
begin
mOperMP_pad:=1;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_PadAfterInsert(DataSet: TDataSet);
begin
Tb_Comp_MP_PadCPORDEM.AsFloat     :=mSeqMp;
Tb_Comp_MP_PadCPCODEMP.Value      :=codemp;
Tb_Comp_MP_PadCPCODPRO.Value      :=ValFloat(CODPRO.Text);
Tb_Comp_MP_PadCPCODPRO_ACAB.Value :=0;
Tb_Comp_MP_PadCPQUANT.Value       :=1;
mOperMP_pad                       :=0;
Tb_Comp_MP_PadCPPU.Value          :=0;
Tb_Comp_MP_PadCPNUMERO.Value      :=' ';
Tb_Comp_MP_PadCPMPNUM.Value       :=' ';
Tb_Comp_MP_PadCPPERCENT_REST.Value:=0;
Tb_Comp_MP_PadCPPERCENT.Value     :=0;
Tb_Comp_MP_PADCPTIPO.Value        :=2;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_PadBeforePost(DataSet: TDataSet);
begin
if Tb_Comp_MP_PadCPCODPRO_ACAB.IsNull then
   Tb_Comp_MP_PadCPCODPRO_ACAB.Value:=0;



if Tb_Comp_MP_PadCPCODMAT.Isnull then
   begin
   Tb_Comp_MP_Pad.Cancel;
   Abort;
   exit;
   end;
if (Tb_Comp_MP_PadCPQUANT.IsNull) or (Tb_Comp_MP_PadCPQUANT.AsFloat<0) then
   Tb_Comp_MP_PadCPQUANT.Value:=0;
if (Tb_Comp_MP_PadCPPERCENT.IsNull) or (Tb_Comp_MP_PadCPPERCENT.AsFloat<0) then
   Tb_Comp_MP_PadCPPERCENT.Value:=0;
Tb_Comp_MP_PadCPPERCENT.Value:=Arredonda(Tb_Comp_MP_PadCPPERCENT.Value,3);

if not flcadpro(1,0,0,Tb_Comp_MP_PadCPCODMAT.AsString) then
   begin
   MessageDlg('Favor Selecionar um Código de Matéria Prima Válido!',mtWarning,[mbOk],0);
   DBGrid_mppad.SelectedField:=Tb_Comp_MP_PadCPCODMAT;
   abort;
   exit;
   end;
if Tb_Comp_MP_PadCPQTD_PAD.AsFloat=0 then
   begin
   MessageDlg('Favor Digitar uma Quantidade Válida!',mtWarning,[mbOk],0);
   DBGrid_mppad.SelectedField:=Tb_Comp_MP_PadCPQTD_PAD;
   abort;
   exit;
   end;
Tb_Comp_MP_PadCPQUANT.Value       :=1;
if mOperMP_pad=0 then
   begin
   mSeqMp_Pad:=mSeqMp_Pad+1;
   end;
mOperMP_pad:=0;



end;

procedure TFrm_Ind_ForEnv.DBGrid_mppadColExit(Sender: TObject);
begin
if Tb_Comp_MP_PAD.State in [dsEdit,dsInsert] then
   begin
   if (DBGrid_mppad.SelectedField=Tb_Comp_MP_PadCPCODMAT) and not (Tb_Comp_MP_PadCPCODMAT.IsNull) then
      begin
      if not flcadpro(1,0,0,Tb_Comp_MP_PadCPCODMAT.AsString) then
         begin
         MessageDlg('Favor Selecionar um Código de Matéria Prima Válido!',mtWarning,[mbOk],0);
         DBGrid_MPPAD.SelectedField:=Tb_Comp_MP_PADCPCODMAT;
         abort;
         exit;
         end
      else
         begin
         Tb_Comp_MP_PADNOMPRO.Value  :=DM1.Tb_ProPDNOME.Value;
         Tb_Comp_MP_PADUNDPRO.Value  :=DM1.Tb_ProPDUND.Value;
         if Tb_Comp_MP_PadCPQTD_PAD.AsFloat=0 then
            Tb_Comp_MP_PadCPQTD_PAD.Value     :=ValFloat(QTDPAD.Text);
         end;
      end;
   end;


end;

procedure TFrm_Ind_ForEnv.DBGrid_mpExit(Sender: TObject);
begin
if Tb_Comp_MP.State in [dsedit,dsInsert] then
   begin
   if Tb_Comp_MPCPCODPRO.IsNull then
      Tb_Comp_MP.Cancel
   else
      Tb_Comp_MP.Post;
   end;
if mAlterouProd then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select max(CPORDEM) as ORDEM, ');
   DM1.Query1.SQL.Add('       sum(CPQUANT) as CPQUANT, ');
   DM1.Query1.SQL.Add('       sum(CPICMSCRED) as CPICMSCRED, ');
   DM1.Query1.SQL.Add('       sum(CPQUANT*CPPU) as CPTOTAL, ');
   DM1.Query1.SQL.Add('       sum(DECODE(CPPERCENT,0,0,CPPERCENT_REST)) as QSP, ');
   DM1.Query1.SQL.Add('       count(*)  as QTDREG from CADCOMP where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                     +' CPTIPO=0 '
                     +' and CPCODPRO=0'+CODPRO.Text);
   DM1.Query1.open;
   mTotQsp:=100-DM1.query1.FieldbyName('QSP').AsFloat;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADCOMP set CPPERCENT_REST=0'+mudaVP(FloatToStr(mTotQsp)));
   DM1.Query2.SQL.Add(' where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                     +' CPTIPO=0 '
                     +' and CPCODPRO=0'+CODPRO.Text
                     +' and CPPERCENT=0');
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 906 ao Atualizar o Arquivo de Composicao!',mtWarning,[mbOk],0);
      end;

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADCOMP set CPPERCENT_REST=CPPERCENT');
   DM1.Query2.SQL.Add(' where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and ')
                     +' CPTIPO=0 '
                     +' and CPCODPRO=0'+CODPRO.Text
                     +' and CPPERCENT<>0');
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro 920 ao Atualizar o Arquivo de Composicao!',mtWarning,[mbOk],0);
      end;
   mAlterouProd:=false;
   end;



end;

procedure TFrm_Ind_ForEnv.DBGrid_mpundExit(Sender: TObject);
begin
if Tb_Comp_MP_UND.State in [dsedit,dsInsert] then
   begin
   if Tb_Comp_MP_UNDCPCODPRO.IsNull then
      Tb_Comp_MP_UND.Cancel
   else
      Tb_Comp_MP_UND.Post;
   end;

end;

procedure TFrm_Ind_ForEnv.DBGrid_mppadExit(Sender: TObject);
begin
if Tb_Comp_MP_Pad.State in [dsedit,dsInsert] then
   begin
   if Tb_Comp_MP_PADCPCODPRO.IsNull then
      Tb_Comp_MP_PAD.Cancel
   else
      Tb_Comp_MP_PAD.Post;
   end;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MPCalcFields(DataSet: TDataSet);
begin
if not Tb_Comp_MPCPCODMAT.isnull then
   begin
   if Tb_Comp_MPCPPERCENT.AsFloat=0 then
      Tb_Comp_MPObservacao.Value:='Q.S.P. '+FormatFloat(mcasas, mTotQsp)+'%'
   else
      Tb_Comp_MPObservacao.Value:=FormatFloat(mcasas, Tb_Comp_MPCPPERCENT.Value)+'%';
   end;
end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MPBeforeInsert(DataSet: TDataSet);
begin
DBGrid_MP.SelectedField:=Tb_Comp_MPCPCODMAT;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_UNDBeforeInsert(DataSet: TDataSet);
begin
DBGrid_mpund.SelectedField:=Tb_Comp_MP_UNDCPCODMAT;

end;

procedure TFrm_Ind_ForEnv.Tb_Comp_MP_PadBeforeInsert(DataSet: TDataSet);
begin
DBGrid_mppad.SelectedField:=Tb_Comp_MP_PADCPCODMAT;

end;

procedure TFrm_Ind_ForEnv.DBGrid_mpKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Tb_Comp_MP.State in [dsEdit,dsInsert]) then
   begin
   if Tb_Comp_MPCPCODMAT.IsNull then
      Tb_Comp_MP.Append
   else
      Tb_Comp_MP.Edit;
   end;
if (key in ['A'..'Z']) or (key in ['a'..'z'])
   and (DBGrid_mp.SelectedField=Tb_Comp_MPCPCODMAT) then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL<>0 and  PDNIVEL<>3';
//   DM1.Tb_Pro.Filtered:=True;
   Tb_Comp_MPCPCODMAT.Value:=fsonumero(fChamaPro(0,'Frm_Ind_ForEnv',key));
   DM1.Tb_Pro.Filter:='';
   DM1.Tb_Pro.Filtered:=False;
   key:=#0;
   end;

end;

procedure TFrm_Ind_ForEnv.DBGrid_mpundKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Tb_Comp_MP_UND.State in [dsEdit,dsInsert]) then
   begin
   if Tb_Comp_MP_UNDCPCODMAT.IsNull then
      Tb_Comp_MP_UND.Append
   else
      Tb_Comp_MP_UND.Edit;
   end;
if (key in ['A'..'Z']) or (key in ['a'..'z'])
   and (DBGrid_mpund.SelectedField=Tb_Comp_MP_UNDCPCODMAT) then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL<>0 and  PDNIVEL<>3';
//   DM1.Tb_Pro.Filtered:=True;
   Tb_Comp_MP_UNDCPCODMAT.Value:=fsonumero(fChamaPro(0,'Frm_Ind_ForEnv',key));
   DM1.Tb_Pro.Filter:='';
   DM1.Tb_Pro.Filtered:=False;
   key:=#0;
   end;

end;

procedure TFrm_Ind_ForEnv.DBGrid_mppadKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (Tb_Comp_MP_PAD.State in [dsEdit,dsInsert]) then
   begin
   if Tb_Comp_MP_PADCPCODMAT.IsNull then
      Tb_Comp_MP_PAD.Append
   else
      Tb_Comp_MP_PAD.Edit;
   end;
if (key in ['A'..'Z']) or (key in ['a'..'z'])
   and (DBGrid_mppad.SelectedField=Tb_Comp_MP_PADCPCODMAT) then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL<>0 and  PDNIVEL<>3';
//   DM1.Tb_Pro.Filtered:=True;
   Tb_Comp_MP_PADCPCODMAT.Value:=fsonumero(fChamaPro(0,'Frm_Ind_ForEnv',key));
   DM1.Tb_Pro.Filter:='';
   DM1.Tb_Pro.Filtered:=False;
   key:=#0;
   end;

end;

procedure TFrm_Ind_ForEnv.bbAdquirir_Texto01Click(Sender: TObject);
begin
If OpenDialog1.Execute Then
   Texto01.lines.loadfromfile(openDialog1.FileName);
end;

procedure TFrm_Ind_ForEnv.bbSalvar_Texto01Click(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         Texto01.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      Texto01.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbAbrir_Texto01Click(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_Texto01.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'TEXTO01',mTextoTemp)=0;
Texto01.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;


function fGravarTexto(pCodEmp,pCodPro,pImprime: Real; pChave: String; pTexto: TRichEdit): Boolean;
var
x,y: Integer;
mlinha,mlinha2: String;
begin
if (pcodemp>99) and (DM1.Qr_TID.Locate('TINOME','CADPRO',[])) then
   pcodemp:=100-pcodemp;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from IND_CADTOP where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(pcodemp)+' and ')
                  +' TOP_CODPRO=0'+FloatTostr(pCodPro)
                  +' and TOP_CHAVE='+chr(39)+pChave+chr(39));
try
  DM1.Query2.ExecSQL;
  fdm1StartCommit;
except
  DM1.Query2.sql.SavetoFile('C:\sql.txt');
  end;
mTextoTemp:=fProcTemp(24);
pTexto.Lines.SaveToFile(mTextoTemp);
assignfile(f,mTextoTemp);
reset(f);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'CHAVE',ptinput);
DM1.Query2.Params.CreateParam(ftString,'PAG',ptinput);
DM1.Query2.Params.CreateParam(ftString,'IMPRIME',ptinput);
DM1.Query2.Params.CreateParam(ftMemo,'TEXTO',ptinput);


DM1.Query2.SQL.Add(' Insert into IND_CADTOP (TOP_CODEMP,TOP_CODPRO,TOP_CHAVE,TOP_PAG,TOP_IMPRIME,TOP_TEXTO) '
              +' Values (:CODEMP,:CODPRO,:CHAVE,:PAG,:IMPRIME,:TEXTO)');
DM1.Query2.ParambyName('CODEMP').Asfloat      :=pCodEmp;
DM1.Query2.ParambyName('CODPRO').Asfloat      :=pCodPro;
DM1.Query2.ParambyName('CHAVE').AsString      :=pChave;
DM1.Query2.ParambyName('IMPRIME').Asfloat     :=pImprime;


x:=0;
y:=0;
mlinha2:='';

while not eof(f) do
   begin
   readln(f,mlinha);
   x:=x+1;
   mlinha2:=mlinha2+mlinha;
   if (x>60) or eof(f) then
      begin
      x:=0;
      y:=y+1;
      DM1.Query2.ParambyName('PAG').AsFloat :=y;
      DM1.Query2.ParambyName('TEXTO').AsMemo   :=mlinha2;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query2.sql.SavetoFile('C:\sql.txt');
         end;
      mlinha2:='';
      end;
   end;
closefile(f);
DeleteFile(mTextoTemp);
result:=true;

end;

procedure TFrm_Ind_ForEnv.sbnPadraoClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Gravar os Textos Como Padrão?',0,['1','2'],2)<>mrYes  then
   exit;

fGravarTexto(0,0,IIF(cb_imprime_texto01.Checked,0,1),'TEXTO01',Texto01);
fGravarTexto(0,0,IIF(cb_imprime_texto02.Checked,0,1),'TEXTO02',Texto02);
fGravarTexto(0,0,IIF(cb_imprime_anexoI.Checked,0,1),'ANEXOI',AnexoI);
fGravarTexto(0,0,IIF(cb_imprime_anexoII.Checked,0,1),'ANEXOII',AnexoII);
fGravarTexto(0,0,IIF(cb_imprime_anexoIII.Checked,0,1),'ANEXOIII',AnexoIII);
fGravarTexto(0,0,IIF(cb_imprime_anexoIV.Checked,0,1),'ANEXOIV',AnexoIV);
fGravarTexto(0,0,IIF(cb_imprime_anexoV.Checked,0,1),'ANEXOV',AnexoV);
fGravarTexto(0,0,IIF(cb_imprime_anexoVI.Checked,0,1),'ANEXOVI',AnexoVI);
fGravarTexto(0,0,IIF(cb_imprime_anexoVII.Checked,0,1),'ANEXOVII',AnexoVII);
fGravarTexto(0,0,IIF(cb_imprime_anexoVIII.Checked,0,1),'ANEXOVIII',AnexoVIII);
MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbGravar_Texto01Click(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_texto01.Checked,0,1),'TEXTO01',Texto01);
bbGravar_Texto01.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);
end;

function fAbrirTexto(pCodEmp,pCodPro: Real; pChave,ptabTemp: String): Integer;
begin
result:=0;
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select TOP_CODEMP,TOP_CODPRO,TOP_IMPRIME,TOP_PAG,TOP_TEXTO FROM IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(pcodemp)+' and ')
                     +' TOP_CODPRO=0'+FloatTostr(pCodPro)
                     +' and TOP_CHAVE='+chr(39)+pChave+chr(39)
                     +' ORDER BY TOP_PAG ');
DM1.Query3.Open;
if DM1.Query3.Eof then
   begin
   DM1.Query3.Close;
   DM1.Query3.sql.clear;
   DM1.Query3.SQL.Add('Select TOP_CODEMP,TOP_CODPRO,TOP_IMPRIME,TOP_PAG,TOP_TEXTO FROM IND_CADTOP where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0 and ')
                     +' TOP_CODPRO=0'
                     +' and TOP_CHAVE='+chr(39)+pChave+chr(39)
                     +' ORDER BY TOP_PAG ');
   DM1.Query3.Open;
   end
else
   mavisa:=false;
if not DM1.Query3.Eof then
   begin
   Result:=DM1.Query3.fieldbyname('TOP_IMPRIME').AsInteger;
   While not DM1.Query3.Eof do
      begin
      assignfile(f,ptabTemp);
      rewrite(f);
      While not DM1.Query3.Eof do
         begin
         writeln(f,DM1.Query3.fieldbyName('TOP_TEXTO').AsString);
         DM1.Query3.Next;
         end;
      closefile(f);
      end;
   end
else
   begin
   assignfile(f,ptabTemp);
   rewrite(f);
   writeln(f,'Não Encontrado');
   closefile(f);
   end;
end;
procedure TFrm_Ind_ForEnv.bbAdquirir_Texto02Click(Sender: TObject);
begin
If OpenDialog1.Execute Then
   Texto02.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Ind_ForEnv.bbAdquirir_AnexoIClick(Sender: TObject);
begin
If OpenDialog1.Execute Then
   AnexoI.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Ind_ForEnv.bbAdquirir_AnexoIIClick(Sender: TObject);
begin
If OpenDialog1.Execute Then
   AnexoII.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Ind_ForEnv.BitBtn29Click(Sender: TObject);
begin
If OpenDialog1.Execute Then
   AnexoIII.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Ind_ForEnv.bbAdquirir_AnexoIVClick(Sender: TObject);
begin
If OpenDialog1.Execute Then
   AnexoIV.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Ind_ForEnv.bbAdquirir_AnexoVClick(Sender: TObject);
begin
If OpenDialog1.Execute Then
   AnexoV.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Ind_ForEnv.bbAdquirir_AnexoVIClick(Sender: TObject);
begin
If OpenDialog1.Execute Then
   AnexoVI.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Ind_ForEnv.bbAdquirir_AnexoVIIClick(Sender: TObject);
begin
If OpenDialog1.Execute Then
   AnexoVII.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Ind_ForEnv.bbAdquirir_AnexoVIIIClick(Sender: TObject);
begin
If OpenDialog1.Execute Then
   AnexoVIII.lines.loadfromfile(openDialog1.FileName);

end;

procedure TFrm_Ind_ForEnv.bbSalvar_Texto02Click(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         Texto02.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      Texto02.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbSalvar_AnexoIClick(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         AnexoI.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      AnexoI.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbSalvar_AnexoIIClick(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         AnexoII.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      AnexoII.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbSalvar_AnexoIIIClick(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         AnexoIII.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      AnexoIII.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbSalvar_AnexoIVClick(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         AnexoIV.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      AnexoIV.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbSalvar_AnexoVClick(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         AnexoV.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      AnexoV.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbSalvar_AnexoVIClick(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         AnexoVI.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      AnexoVI.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbSalvar_AnexoVIIClick(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         AnexoVII.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      AnexoVII.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbSalvar_AnexoVIIIClick(Sender: TObject);
begin
If SaveDialog1.Execute Then
   Begin
   If FileExists(SaveDialog1.FileName) Then
      Begin
      If Messagedlg('Deseja Substituir o Arquivo existente?', mtConfirmation, MbYesNoCancel, 0) = Idyes Then
         AnexoVIII.Lines.SaveToFile(SaveDialog1.FileName);
      end
   else
      AnexoVIII.Lines.SaveToFile(SaveDialog1.FileName);
   end;

end;

procedure TFrm_Ind_ForEnv.bbAbrir_Texto02Click(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_Texto02.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'TEXTO02',mTextoTemp)=0;
Texto02.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;

procedure TFrm_Ind_ForEnv.bbAbrir_AnexoIClick(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoI.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOI',mTextoTemp)=0;
AnexoI.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;

procedure TFrm_Ind_ForEnv.bbAbrir_AnexoIIClick(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoII.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOII',mTextoTemp)=0;
AnexoII.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;

procedure TFrm_Ind_ForEnv.bbAbrir_AnexoIIIClick(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoIII.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOIII',mTextoTemp)=0;
AnexoIII.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;

procedure TFrm_Ind_ForEnv.bbAbrir_AnexoIVClick(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoIV.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOIV',mTextoTemp)=0;
AnexoIV.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;

procedure TFrm_Ind_ForEnv.bbAbrir_AnexoVClick(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoV.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOV',mTextoTemp)=0;
AnexoV.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;

procedure TFrm_Ind_ForEnv.bbAbrir_AnexoVIClick(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoVI.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOVI',mTextoTemp)=0;
AnexoVI.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;

procedure TFrm_Ind_ForEnv.bbAbrir_AnexoVIIClick(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoVII.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOVII',mTextoTemp)=0;
AnexoVII.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;

procedure TFrm_Ind_ForEnv.bbAbrir_AnexoVIIIClick(Sender: TObject);
begin
mTextoTemp:=fProcTemp(24);
cb_imprime_AnexoVIII.Checked:=fAbrirTexto(codemp,fsonumero(CODPRO.Text),'ANEXOVIII',mTextoTemp)=0;
AnexoVIII.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

end;

procedure TFrm_Ind_ForEnv.bbGravar_Texto02Click(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_texto02.Checked,0,1),'TEXTO02',Texto02);
bbGravar_Texto02.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbGravar_AnexoIClick(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_anexoI.Checked,0,1),'ANEXOI',AnexoI);
bbGravar_AnexoI.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbGravar_AnexoIIClick(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_anexoII.Checked,0,1),'ANEXOII',AnexoII);
bbGravar_AnexoII.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbGravar_AnexoIIIClick(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_anexoIII.Checked,0,1),'ANEXOIII',AnexoIII);
bbGravar_AnexoIII.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbGravar_AnexoIVClick(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_anexoIV.Checked,0,1),'ANEXOIV',AnexoIV);
bbGravar_AnexoIV.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbGravar_AnexoVClick(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_anexoV.Checked,0,1),'ANEXOV',AnexoV);
bbGravar_AnexoV.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbGravar_AnexoVIClick(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_anexoVI.Checked,0,1),'ANEXOVI',AnexoVI);
bbGravar_AnexoVI.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbGravar_AnexoVIIClick(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_anexoVII.Checked,0,1),'ANEXOVII',AnexoVII);
bbGravar_AnexoVII.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbGravar_AnexoVIIIClick(Sender: TObject);
begin
fGravarTexto(codemp,valfloat(CODPRO.Text),IIF(cb_imprime_anexoVIII.Checked,0,1),'ANEXOVIII',AnexoVIII);
bbGravar_AnexoVIII.Enabled:=false;
if mAvisa then
   MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

procedure TFrm_Ind_ForEnv.bbFonte_Texto01Click(Sender: TObject);
begin
FontDialog1.Font.Assign(Texto01.SelAttributes);
If FontDialog1.Execute Then
   If Texto01.SelLength > 0 Then
      Texto01.SelAttributes.Assign(FontDialog1.font)
   else
      Texto01.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbFonte_Texto02Click(Sender: TObject);
begin
FontDialog1.Font.Assign(Texto02.SelAttributes);
If FontDialog1.Execute Then
   If Texto02.SelLength > 0 Then
      Texto02.SelAttributes.Assign(FontDialog1.font)
   else
      Texto02.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbFonte_AnexoIClick(Sender: TObject);
begin
FontDialog1.Font.Assign(AnexoI.SelAttributes);
If FontDialog1.Execute Then
   If AnexoI.SelLength > 0 Then
      AnexoI.SelAttributes.Assign(FontDialog1.font)
   else
      AnexoI.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbFonte_AnexoIIClick(Sender: TObject);
begin
FontDialog1.Font.Assign(AnexoII.SelAttributes);
If FontDialog1.Execute Then
   If AnexoII.SelLength > 0 Then
      AnexoII.SelAttributes.Assign(FontDialog1.font)
   else
      AnexoII.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbFonte_AnexoIIIClick(Sender: TObject);
begin
FontDialog1.Font.Assign(AnexoIII.SelAttributes);
If FontDialog1.Execute Then
   If AnexoIII.SelLength > 0 Then
      AnexoIII.SelAttributes.Assign(FontDialog1.font)
   else
      AnexoIII.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbFonte_AnexoIVClick(Sender: TObject);
begin
FontDialog1.Font.Assign(AnexoIV.SelAttributes);
If FontDialog1.Execute Then
   If AnexoIV.SelLength > 0 Then
      AnexoIV.SelAttributes.Assign(FontDialog1.font)
   else
      AnexoIV.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbFonte_AnexoVClick(Sender: TObject);
begin
FontDialog1.Font.Assign(AnexoV.SelAttributes);
If FontDialog1.Execute Then
   If AnexoV.SelLength > 0 Then
      AnexoV.SelAttributes.Assign(FontDialog1.font)
   else
      AnexoV.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbFonte_AnexoVIClick(Sender: TObject);
begin
FontDialog1.Font.Assign(AnexoVI.SelAttributes);
If FontDialog1.Execute Then
   If AnexoVI.SelLength > 0 Then
      AnexoVI.SelAttributes.Assign(FontDialog1.font)
   else
      AnexoVI.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbFonte_AnexoVIIClick(Sender: TObject);
begin
FontDialog1.Font.Assign(AnexoVII.SelAttributes);
If FontDialog1.Execute Then
   If AnexoVII.SelLength > 0 Then
      AnexoVII.SelAttributes.Assign(FontDialog1.font)
   else
      AnexoVII.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbFonte_AnexoVIIIClick(Sender: TObject);
begin
FontDialog1.Font.Assign(AnexoVIII.SelAttributes);
If FontDialog1.Execute Then
   If AnexoVIII.SelLength > 0 Then
      AnexoVIII.SelAttributes.Assign(FontDialog1.font)
   else
      AnexoVIII.DefAttributes.Assign(FontDialog1.Font);

end;

procedure TFrm_Ind_ForEnv.bbCorfundo_Texto01Click(Sender: TObject);
begin
ColorDialog1.Color := Texto01.Color;
If Colordialog1.Execute Then
   texto01.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.bbCorfundo_Texto02Click(Sender: TObject);
begin
ColorDialog1.Color := Texto02.Color;
If Colordialog1.Execute Then
   texto02.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.bbCorfundo_AnexoIClick(Sender: TObject);
begin
ColorDialog1.Color := AnexoI.Color;

If Colordialog1.Execute Then
   AnexoI.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.bbCorfundo_AnexoIIIClick(Sender: TObject);
begin
ColorDialog1.Color := AnexoIII.Color;
If Colordialog1.Execute Then
   AnexoIII.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.bbCorfundo_AnexoIVClick(Sender: TObject);
begin
ColorDialog1.Color := AnexoIV.Color;
If Colordialog1.Execute Then
   AnexoIV.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.bbCorfundo_AnexoVClick(Sender: TObject);
begin
ColorDialog1.Color := AnexoV.Color;
If Colordialog1.Execute Then
   AnexoV.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.bbCorfundo_AnexoVIClick(Sender: TObject);
begin
ColorDialog1.Color := AnexoVI.Color;
If Colordialog1.Execute Then
   AnexoVI.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.bbCorfundo_AnexoVIIClick(Sender: TObject);
begin
ColorDialog1.Color := AnexoVII.Color;
If Colordialog1.Execute Then
   AnexoVII.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.bbCorfundo_AnexoVIIIClick(Sender: TObject);
begin
ColorDialog1.Color := AnexoVIII.Color;
If Colordialog1.Execute Then
   AnexoVIII.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.AnexoVIIIChange(Sender: TObject);
begin
if AnexoVIII.Modified then bbGravar_AnexoVIII.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.Texto01Change(Sender: TObject);
begin
if Texto01.Modified then bbGravar_Texto01.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.Texto02Change(Sender: TObject);
begin
if Texto02.Modified then bbGravar_Texto02.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.AnexoIChange(Sender: TObject);
begin
if AnexoI.Modified then bbGravar_AnexoI.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.AnexoIIChange(Sender: TObject);
begin
if AnexoII.Modified then bbGravar_AnexoII.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.AnexoIIIChange(Sender: TObject);
begin
if AnexoIII.Modified then bbGravar_AnexoIII.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.AnexoIVChange(Sender: TObject);
begin
if AnexoIV.Modified then bbGravar_AnexoIV.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.AnexoVChange(Sender: TObject);
begin
if AnexoV.Modified then bbGravar_AnexoV.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.AnexoVIChange(Sender: TObject);
begin
if AnexoVI.Modified then bbGravar_AnexoVI.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.AnexoVIIChange(Sender: TObject);
begin
if AnexoVII.Modified then bbGravar_AnexoVII.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.bbCorfundo_AnexoIIClick(Sender: TObject);
begin
ColorDialog1.Color := AnexoII.Color;
If Colordialog1.Execute Then
   AnexoII.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_ForEnv.bbGravarClick(Sender: TObject);
begin
mAvisa:=false;
if bbGravar_Texto01.Enabled then
   bbGravar_Texto01.Click;
if bbGravar_Texto02.Enabled then
   bbGravar_Texto02.Click;
if bbGravar_AnexoI.Enabled then
   bbGravar_AnexoI.Click;
if bbGravar_AnexoII.Enabled then
   bbGravar_AnexoII.Click;
if bbGravar_AnexoIII.Enabled then
   bbGravar_AnexoIII.Click;
if bbGravar_AnexoIV.Enabled then
   bbGravar_AnexoIV.Click;
if bbGravar_AnexoV.Enabled then
   bbGravar_AnexoV.Click;
if bbGravar_AnexoVI.Enabled then
   bbGravar_AnexoVI.Click;
if bbGravar_AnexoVII.Enabled then
   bbGravar_AnexoVII.Click;
if bbGravar_AnexoVIII.Enabled then
   bbGravar_AnexoVIII.Click;
mAvisa:=true;
MessageDlg('Gravado!',mtInformation,[mbOk],0);


end;

procedure TFrm_Ind_ForEnv.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if (bbGravar_Texto01.Enabled) or
   (bbGravar_Texto02.Enabled) or
   (bbGravar_AnexoI.Enabled) or
   (bbGravar_AnexoII.Enabled) or
   (bbGravar_AnexoIII.Enabled) or
   (bbGravar_AnexoIV.Enabled) or
   (bbGravar_AnexoV.Enabled) or
   (bbGravar_AnexoVI.Enabled) or
   (bbGravar_AnexoVII.Enabled) or
   (bbGravar_AnexoVIII.Enabled) then
   begin
   Case MessageDlg('Existe Texto ou Anexos que foram alterados e ainda não foram gravados!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: BBGRAVAR.Click;
      mrNo : mavisa:=true;
      else CanClose:=False;
      end;

   end;

end;

procedure TFrm_Ind_ForEnv.cb_imprime_texto01Click(Sender: TObject);
begin
bbGravar_Texto01.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.cb_imprime_texto02Click(Sender: TObject);
begin
bbGravar_Texto02.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.cb_imprime_anexoIClick(Sender: TObject);
begin
bbGravar_AnexoI.Enabled:=true;
end;

procedure TFrm_Ind_ForEnv.cb_imprime_anexoIIClick(Sender: TObject);
begin
bbGravar_AnexoII.Enabled:=true;

end;

procedure TFrm_Ind_ForEnv.cb_imprime_anexoIIIClick(Sender: TObject);
begin
bbGravar_AnexoIII.Enabled:=true;

end;

procedure TFrm_Ind_ForEnv.cb_imprime_anexoIVClick(Sender: TObject);
begin
bbGravar_AnexoIV.Enabled:=true;

end;

procedure TFrm_Ind_ForEnv.cb_imprime_anexoVClick(Sender: TObject);
begin
bbGravar_AnexoV.Enabled:=true;

end;

procedure TFrm_Ind_ForEnv.cb_imprime_anexoVIClick(Sender: TObject);
begin
bbGravar_AnexoVI.Enabled:=true;

end;

procedure TFrm_Ind_ForEnv.cb_imprime_anexoVIIClick(Sender: TObject);
begin
bbGravar_AnexoVII.Enabled:=true;

end;

procedure TFrm_Ind_ForEnv.cb_imprime_anexoVIIIClick(Sender: TObject);
begin
bbGravar_AnexoVIII.Enabled:=true;

end;

procedure TFrm_Ind_ForEnv.bbImprimirClick(Sender: TObject);
begin

mImprimirLogo:=false;
DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'CABREL'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM1.Query2.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                   +' or LSCODEMP is null )');

DM1.Query2.Open;
if not DM1.Query2.Eof then
   begin
   if not (DM1.Query2.Fields[0].IsNull)  and  (DM1.Query2.Fields[0].AsString<>'') then
      begin
      (DM1.Query2.FieldbyName('LSLOGO') as TBlobField).SaveToFile('C:\SGE\CABREL.JPG');
      mImprimirLogo:=true;
      qr_logo.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
      rl_logo.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
      deletefile('C:\SGE\CABREL.JPG');
      end;
   end;   

bbImprimir.Enabled:=false;
if mCodigoOP=0 then
   begin
   Qr_ProdFab.Close;
   Qr_ProdFab.SQL.Clear;
   Qr_ProdFab.SQL.Add('Select PDNOME,PDAPRES,PDQTDGRML,');
   Qr_ProdFab.SQL.Add('PDUND   AS UND,');
   Qr_ProdFab.SQL.Add('PDMARCA AS LOTE,');
   Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+') AS DATADOC,');
   Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+') AS DATAEMI,');
   Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS QTDTEORICA,');
   Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS QTDREAL,');
   Qr_ProdFab.SQL.Add('PDMARCA AS COORD_PROD,');
   Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS RENDIMENTO,');
   Qr_ProdFab.SQL.Add('PDMARCA AS COORD_PROD_REND,');
   Qr_ProdFab.SQL.Add('PDMARCA AS GARANTIA_QUAL,');
   Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+') AS DATAQUAL,');
   Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS QTDPREV ');
   Qr_ProdFab.SQL.Add(', PDCODPRO AS CODPRO ');
   Qr_ProdFab.SQL.Add(', PDSALDO-PDSALDO AS CHAVEOP ');
   Qr_ProdFab.SQL.Add(',PDPRZVAL AS PRZVAL FROM CADPRO');
   Qr_ProdFab.SQL.add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and '));
   Qr_ProdFab.SQL.add(' PDCODPRO=0'+fdeixanum2(CODPRO.Text));
   Qr_ProdFab.Open;
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select count(*)  FROM CADPRO');
DM1.Query2.SQL.add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and '));
DM1.Query2.SQL.add(' PDCODPRO=0'+fdeixanum2(CODPRO.Text));
DM1.Query2.Open;


mTextoTemp:=fProcTemp(24);

Texto01.Lines.saveToFile(mTextoTemp);
rt_texto01.Lines.LoadFromFile(mTextoTemp);
qrrt_texto01.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

mTextoTemp:=fProcTemp(24);
Texto02.Lines.saveToFile(mTextoTemp);
rt_texto02.Lines.LoadFromFile(mTextoTemp);
qrrt_texto02.Lines.LoadFromFile(mTextoTemp);

DeleteFile(mTextoTemp);

mTextoTemp:=fProcTemp(24);
AnexoI.Lines.saveToFile(mTextoTemp);
rt_AnexoI.Lines.LoadFromFile(mTextoTemp);
qrrt_AnexoI.Lines.LoadFromFile(mTextoTemp);

DeleteFile(mTextoTemp);
mTextoTemp:=fProcTemp(24);
AnexoII.Lines.saveToFile(mTextoTemp);
rt_AnexoII.Lines.LoadFromFile(mTextoTemp);
qrrt_AnexoII.Lines.LoadFromFile(mTextoTemp);

DeleteFile(mTextoTemp);
mTextoTemp:=fProcTemp(24);
AnexoIII.Lines.saveToFile(mTextoTemp);
rt_AnexoIII.Lines.LoadFromFile(mTextoTemp);
qrrt_AnexoIII.Lines.LoadFromFile(mTextoTemp);

DeleteFile(mTextoTemp);

mTextoTemp:=fProcTemp(24);
AnexoIV.Lines.saveToFile(mTextoTemp);
rt_AnexoIV.Lines.LoadFromFile(mTextoTemp);
qrrt_AnexoIV.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

mTextoTemp:=fProcTemp(24);
AnexoV.Lines.saveToFile(mTextoTemp);
rt_AnexoV.Lines.LoadFromFile(mTextoTemp);
qrrt_AnexoV.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

mTextoTemp:=fProcTemp(24);
AnexoVI.Lines.saveToFile(mTextoTemp);
rt_AnexoVI.Lines.LoadFromFile(mTextoTemp);
qrrt_AnexoVI.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

mTextoTemp:=fProcTemp(24);
AnexoVII.Lines.saveToFile(mTextoTemp);
rt_AnexoVII.Lines.LoadFromFile(mTextoTemp);
qrrt_AnexoVII.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);

mTextoTemp:=fProcTemp(24);
AnexoVIII.Lines.saveToFile(mTextoTemp);
rt_AnexoVIII.Lines.LoadFromFile(mTextoTemp);
qrrt_AnexoVIII.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);


Qr_Texto01.Close;
Qr_Texto01.Sql.Clear;
Qr_Texto01.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'TEXTO01'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_Texto01.Open;

Qr_Texto02.Close;
Qr_Texto02.Sql.Clear;
Qr_Texto02.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'TEXTO02'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_Texto02.Open;

Qr_AnexoI.Close;
Qr_AnexoI.Sql.Clear;
Qr_AnexoI.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'ANEXOI'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_AnexoI.Open;

Qr_AnexoII.Close;
Qr_AnexoII.Sql.Clear;
Qr_AnexoII.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'ANEXOII'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_AnexoII.Open;
Qr_AnexoIII.Close;
Qr_AnexoIII.Sql.Clear;
Qr_AnexoIII.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'ANEXOIII'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_AnexoIII.Open;

Qr_AnexoIV.Close;
Qr_AnexoIV.Sql.Clear;
Qr_AnexoIV.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'ANEXOIV'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_AnexoIV.Open;


Qr_AnexoV.Close;
Qr_AnexoV.Sql.Clear;
Qr_AnexoV.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'ANEXOV'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_AnexoV.Open;

Qr_AnexoVI.Close;
Qr_AnexoVI.Sql.Clear;
Qr_AnexoVI.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'ANEXOVI'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_AnexoVI.Open;

Qr_AnexoVII.Close;
Qr_AnexoVII.Sql.Clear;
Qr_AnexoVII.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'ANEXOVII'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_AnexoVII.Open;


Qr_AnexoVIII.Close;
Qr_AnexoVIII.Sql.Clear;
Qr_AnexoVIII.Sql.Add('Select max(TOP_IMPRIME) as IMPRIME,count(*) as QTD,TOP_CHAVE from IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2(CODPRO.Text)
                     +' and TOP_CHAVE='+chr(39)+'ANEXOVIII'+chr(39)
                     +' GROUP BY TOP_CHAVE ');

Qr_AnexoVIII.Open;



{
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select TOP_CODEMP,TOP_CODPRO,TOP_IMPRIME,TOP_PAG,TOP_TEXTO FROM IND_CADTOP where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' TOP_CODEMP=0'+FloatTostr(codemp)+' and ')
                     +' TOP_CODPRO=0'+fdeixanum2 FloatTostr(pCodPro)
                     +' and TOP_CHAVE='+chr(39)+pChave+chr(39)
                     +' ORDER BY TOP_PAG ');
DM1.Query3.Open;
}

if cb_imprime_texto01.Checked then
   rl_subdet_texto01.Visible:=true
else
   rl_subdet_texto01.Visible:=false;

if mImprimirLogo then
   rl_logo.Visible:=true
else
   rl_logo.Visible:=false;

if cb_imprime_texto02.Checked then
   rl_subdet_texto02.Visible:=true
else
   rl_subdet_texto02.Visible:=false;

if cb_imprime_anexoI.Checked then
   rl_subdet_AnexoI.Visible:=true
else
   rl_subdet_AnexoI.Visible:=false;
if cb_imprime_anexoII.Checked then
   rl_subdet_AnexoII.Visible:=true
else
   rl_subdet_AnexoII.Visible:=false;
if cb_imprime_anexoIII.Checked then
   rl_subdet_AnexoIII.Visible:=true
else
   rl_subdet_AnexoIII.Visible:=false;
if cb_imprime_anexoIV.Checked then
   rl_subdet_AnexoIV.Visible:=true
else
   rl_subdet_AnexoIV.Visible:=false;
if cb_imprime_anexoV.Checked then
   rl_subdet_AnexoV.Visible:=true
else
   rl_subdet_AnexoV.Visible:=false;

if cb_imprime_anexoVI.Checked then
   rl_subdet_AnexoVI.Visible:=true
else
   rl_subdet_AnexoVI.Visible:=false;

if cb_imprime_anexoVII.Checked then
   rl_subdet_AnexoVII.Visible:=true
else
   rl_subdet_AnexoVII.Visible:=false;

if cb_imprime_anexoVIII.Checked then
   rl_subdet_AnexoVIII.Visible:=true
else
   rl_subdet_AnexoVIII.Visible:=false;

if mCodigoOP=0 then
   begin
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.close;
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Clear;
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Add('Select CPCODEMP, '
                                 +'       CPORDEM, '
                                 +'       CPCODPRO, '
                                 +'       CPCODMAT, '
                                 +'       CPQUANT, '
                                 +'       CPPU, '
                                 +'       CPNUMERO, '
                                 +'       CPMPNUM, '
                                 +'       CPCODPRO_ACAB, '
                                 +'       CPALICMSCRED, '
                                 +'       CPICMSCRED, '
                                 +'       CPVLRINC, '
                                 +'       CPALIQORI, '
                                 +'       CPPERCENT, '
                                 +'       CPPERCENT_REST, '
                                 +'       CPTIPO, '
                                 +'       CPQTD_PAD, '
                                 +'       PDNOME as NOMPRO, '
                                 +'       PDUND as UNDPRO, ');
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Add('       CPQTD_PAD as QTDFORM, '
                                    +'       CPQTD_PAD as QTDUTIL, '
                                    +'       CPQTD_PAD as PCOUNIFORM '
                                    +'       from CADCOMP,CADPRO '
                                    +' where '
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' (CPTIPO=1 or CPTIPO=2) '
                                    +' and CPCODPRO=0'+fdeixanum(Frm_Ind_ForEnv.CODPRO.Text)
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                                    +' and PDCODPRO=CPCODMAT');

   Tb_Comp_MP_UND.Open;
   end;
if CB_MODREL.Checked then
   begin
   RLReport1.PreviewModal;
   end
else
   QuickRep1.Preview;
if mCodigoOP=0 then
   begin
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.close;
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Clear;
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Add('Select CPCODEMP, '
                                 +'       CPORDEM, '
                                 +'       CPCODPRO, '
                                 +'       CPCODMAT, '
                                 +'       CPQUANT, '
                                 +'       CPPU, '
                                 +'       CPNUMERO, '
                                 +'       CPMPNUM, '
                                 +'       CPCODPRO_ACAB, '
                                 +'       CPALICMSCRED, '
                                 +'       CPICMSCRED, '
                                 +'       CPVLRINC, '
                                 +'       CPALIQORI, '
                                 +'       CPPERCENT, '
                                 +'       CPPERCENT_REST, '
                                 +'       CPTIPO, '
                                 +'       CPQTD_PAD, '
                                 +'       PDNOME as NOMPRO, '
                                 +'       PDUND as UNDPRO, ');
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Add('       CPQTD_PAD as QTDFORM, '
                                    +'       CPQTD_PAD as QTDUTIL, '
                                    +'       CPQTD_PAD as PCOUNIFORM '
                                    +'       from CADCOMP,CADPRO '
                                    +' where '
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' CPTIPO=1 '
                                    +' and CPCODPRO=0'+fdeixanum(Frm_Ind_ForEnv.CODPRO.Text)
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                                    +' and PDCODPRO=CPCODMAT');

   end;
bbImprimir.Enabled:=true;

end;

procedure TFrm_Ind_ForEnv.Qr_ProdFabCalcFields(DataSet: TDataSet);
begin
if (UpperCase(Qr_ProdFabUND.Value)='BG') or
   (UpperCase(Qr_ProdFabUND.Value)='BIS') or
   (UpperCase(Qr_ProdFabUND.Value)='BN') then
   begin
   Qr_ProdFabundmed_ltkg.Value:='Kilos';
   Qr_ProdFabundmed.Value:='MG';
   Qr_ProdFabundemb.Value:='Tubos';
   end
else if (UpperCase(Qr_ProdFabUND.Value)='CX') or
   (UpperCase(Qr_ProdFabUND.Value)='CXA') or
   (UpperCase(Qr_ProdFabUND.Value)='CAI') then
   begin
   Qr_ProdFabundmed.Value:='MG';
   Qr_ProdFabundmed_ltkg.Value:='Kilos';
   Qr_ProdFabundemb.Value:='Caixas';
   end
else
   begin
   Qr_ProdFabundmed.Value     :='ML';
   Qr_ProdFabundmed_ltkg.Value:='Litros';
   Qr_ProdFabundemb.Value:='Frascos';
   end;




end;

procedure TFrm_Ind_ForEnv.PRZVALExit(Sender: TObject);
begin
PRZVAL.Text:=fdeixanum2(PRZVAL.Text);
if ValFloat(PRZVAL.Text)>99998 then
   begin
   PRZVAL.Text:='0';
   end;


end;

procedure TFrm_Ind_ForEnv.db_forcentBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
//db_forcent.Height:=db_nome.Height;
end;

procedure TFrm_Ind_ForEnv.db_qtdforpadBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
//db_qtdforpad.Height:=db_nome.Height;
end;

procedure TFrm_Ind_ForEnv.db_qtdforpad_undBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
if db_nome_und.Height<19 then
   begin
   db_qtdforpad_und.Borders.DrawBottom:=true;
   RLLabel29.Borders.DrawBottom:=True;
   end
else
   begin
   db_qtdforpad_und.Borders.DrawBottom:=false;
   RLLabel29.Borders.DrawBottom:=false;
   end

//db_qtdforpad_und.Height:=db_nome_und.Height;
end;

procedure TFrm_Ind_ForEnv.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{
db_nome.
if db_nome.
db_qtdforpad.Height:=db_nome.Height;
db_forcent.Height:=db_nome.Height;
}
end;

procedure TFrm_Ind_ForEnv.rl_subdet_texto02BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLReport1.NewPage;
end;

procedure TFrm_Ind_ForEnv.rt_texto01BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
{
mTextoTemp:=fProcTemp(24);
if Qr_Texto01TOP_CHAVE.Value='TEXTO01' then
   Texto01.Lines.saveToFile(mTextoTemp)
else if Qr_Texto01TOP_CHAVE.Value='TEXTO02' then
   Texto02.Lines.saveToFile(mTextoTemp)
else if Qr_Texto01TOP_CHAVE.Value='ANEXOI' then
   AnexoI.Lines.saveToFile(mTextoTemp)
else if Qr_Texto01TOP_CHAVE.Value='ANEXOII' then
   AnexoII.Lines.saveToFile(mTextoTemp)
else if Qr_Texto01TOP_CHAVE.Value='ANEXOIII' then
   AnexoIII.Lines.saveToFile(mTextoTemp)
else if Qr_Texto01TOP_CHAVE.Value='ANEXOIV' then
   AnexoIV.Lines.saveToFile(mTextoTemp)
else if Qr_Texto01TOP_CHAVE.Value='ANEXOV' then
   AnexoV.Lines.saveToFile(mTextoTemp)
else if Qr_Texto01TOP_CHAVE.Value='ANEXOVI' then
   AnexoVI.Lines.saveToFile(mTextoTemp)
else if Qr_Texto01TOP_CHAVE.Value='ANEXOVII' then
   AnexoVII.Lines.saveToFile(mTextoTemp)
else if Qr_Texto01TOP_CHAVE.Value='ANEXOVIII' then
   AnexoVIII.Lines.saveToFile(mTextoTemp);
Texto01.Lines.LoadFromFile(mTextoTemp);
DeleteFile(mTextoTemp);
}
end;

function fAbrirArqFormulas(pChaveOp:Real): Boolean;
begin
if pChaveOp=0 then
   begin
   Frm_Ind_ForEnv.Tb_Comp_MP.close;
   Frm_Ind_ForEnv.Tb_Comp_MP.SQL.Clear;
   Frm_Ind_ForEnv.Tb_Comp_MP.SQL.Add('Select CPCODEMP, '
                                 +'       CPORDEM, '
                                 +'       CPCODPRO, '
                                 +'       CPCODMAT, '
                                 +'       CPQUANT, '
                                 +'       CPPU, '
                                 +'       CPNUMERO, '
                                 +'       CPMPNUM, '
                                 +'       CPCODPRO_ACAB, '
                                 +'       CPALICMSCRED, '
                                 +'       CPICMSCRED, '
                                 +'       CPVLRINC, '
                                 +'       CPALIQORI, '
                                 +'       CPPERCENT, '
                                 +'       CPPERCENT_REST, '
                                 +'       CPTIPO, '
                                 +'       CPQTD_PAD, '
                                 +'       PDNOME as NOMPRO, '
                                 +'       PDUND as UNDPRO, ');
   Frm_Ind_ForEnv.Tb_Comp_MP.SQL.Add('       CPQTD_PAD as QTDFORM, '
                                    +'       CPQTD_PAD as QTDUTIL, '
                                    +'       CPQTD_PAD as PCOUNIFORM '
                                    +'       from CADCOMP,CADPRO '
                                    +' where '
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' CPTIPO=0 '
                                    +' and CPCODPRO=0'+fdeixanum(Frm_Ind_ForEnv.CODPRO.Text)
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                                    +' and PDCODPRO=CPCODMAT');
//incio und
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.close;
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Clear;
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Add('Select CPCODEMP, '
                                 +'       CPORDEM, '
                                 +'       CPCODPRO, '
                                 +'       CPCODMAT, '
                                 +'       CPQUANT, '
                                 +'       CPPU, '
                                 +'       CPNUMERO, '
                                 +'       CPMPNUM, '
                                 +'       CPCODPRO_ACAB, '
                                 +'       CPALICMSCRED, '
                                 +'       CPICMSCRED, '
                                 +'       CPVLRINC, '
                                 +'       CPALIQORI, '
                                 +'       CPPERCENT, '
                                 +'       CPPERCENT_REST, '
                                 +'       CPTIPO, '
                                 +'       CPQTD_PAD, '
                                 +'       PDNOME as NOMPRO, '
                                 +'       PDUND as UNDPRO, ');
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Add('       CPQTD_PAD as QTDFORM, '
                                    +'       CPQTD_PAD as QTDUTIL, '
                                    +'       CPQTD_PAD as PCOUNIFORM '
                                    +'       from CADCOMP,CADPRO '
                                    +' where '
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' CPTIPO=1 '
                                    +' and CPCODPRO=0'+fdeixanum(Frm_Ind_ForEnv.CODPRO.Text)
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                                    +' and PDCODPRO=CPCODMAT');
//termino und
//termino PAD

   Frm_Ind_ForEnv.Tb_Comp_MP_PAD.close;
   Frm_Ind_ForEnv.Tb_Comp_MP_PAD.SQL.Clear;
   Frm_Ind_ForEnv.Tb_Comp_MP_PAD.SQL.Add('Select CPCODEMP, '
                                 +'       CPORDEM, '
                                 +'       CPCODPRO, '
                                 +'       CPCODMAT, '
                                 +'       CPQUANT, '
                                 +'       CPPU, '
                                 +'       CPNUMERO, '
                                 +'       CPMPNUM, '
                                 +'       CPCODPRO_ACAB, '
                                 +'       CPALICMSCRED, '
                                 +'       CPICMSCRED, '
                                 +'       CPVLRINC, '
                                 +'       CPALIQORI, '
                                 +'       CPPERCENT, '
                                 +'       CPPERCENT_REST, '
                                 +'       CPTIPO, '
                                 +'       CPQTD_PAD, '
                                 +'       PDNOME as NOMPRO, '
                                 +'       PDUND as UNDPRO, ');
   Frm_Ind_ForEnv.Tb_Comp_MP_PAD.SQL.Add('       CPQTD_PAD as QTDFORM, '
                                    +'       CPQTD_PAD as QTDUTIL, '
                                    +'       CPQTD_PAD as PCOUNIFORM '
                                    +'       from CADCOMP,CADPRO '
                                    +' where '
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' CPTIPO=2 '
                                    +' and CPCODPRO=0'+fdeixanum(Frm_Ind_ForEnv.CODPRO.Text)
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                                    +' and PDCODPRO=CPCODMAT');


//termino PAD

   end
else
   begin
   Frm_Ind_ForEnv.Tb_Comp_MP.close;
   Frm_Ind_ForEnv.Tb_Comp_MP.SQL.Clear;
   Frm_Ind_ForEnv.Tb_Comp_MP.SQL.Add('Select max(CPCODEMP) as CPCODEMP, '
                                 +'          max(CPORDEM)  as CPORDEM, '
                                 +'          max(CPCODPRO) as  CPCODPRO, '
                                 +'          CPCODMAT      as CPCODMAT, '
                                 +'          max(CPQUANT)  as CPQUANT, '
                                 +'          max(CPPU)     as CPPU, '
                                 +'          max(CPNUMERO) as CPNUMERO, '
                                 +'          max(CPMPNUM)  as CPMPNUM, '
                                 +'          max(CPCODPRO_ACAB) as CPCODPRO_ACAB, '
                                 +'          max(CPALICMSCRED) as  CPALICMSCRED, '
                                 +'          max(CPICMSCRED)   as CPICMSCRED, '
                                 +'          max(CPVLRINC)     as CPVLRINC, '
                                 +'          max(CPALIQORI)    as CPALIQORI, '
                                 +'          max(CPPERCENT)    as  CPPERCENT, '
                                 +'          max(CPPERCENT_REST) as CPPERCENT_REST, '
                                 +'          max(CPTIPO)         as CPTIPO, '
                                 +'          max(CPQTD_PAD)      as CPQTD_PAD, '
                                 +'          max(PDNOME)         as NOMPRO, '
                                 +'          max(PDUND)          as UNDPRO, '
                                 +'       sum(OP3_QTDPREV) as QTDFORM, '
                                 +'       sum(OP3_QTDUTIL) as QTDUTIL, '
                                 +'       max(OP3_PU)      as PCOUNIFORM '
                                 +'       from CADOP03,CADCOMP,CADPRO '
                                 +' where '
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                                 +' OP3_CODIGO=0'+FloattoStr(pChaveOp)
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and CPCODEMP=OP3_CODEMP')
                                 +' and CPCODMAT=OP3_CODMAT '
                                 +' and CPTIPO=0 '
                                 +' and CPCODPRO=0'+fdeixanum(Frm_Ind_ForEnv.CODPRO.Text)
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                                 +' and PDCODPRO=CPCODMAT'
                                 +' group by CPCODMAT ');
// INICIO DO PADRAO E UND
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.close;
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Clear;
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.SQL.Add('Select max(CPCODEMP) as CPCODEMP, '
                                 +'          max(CPORDEM)  as CPORDEM, '
                                 +'          max(CPCODPRO) as  CPCODPRO, '
                                 +'          CPCODMAT      as CPCODMAT, '
                                 +'          max(CPQUANT)  as CPQUANT, '
                                 +'          max(CPPU)     as CPPU, '
                                 +'          max(CPNUMERO) as CPNUMERO, '
                                 +'          max(CPMPNUM)  as CPMPNUM, '
                                 +'          max(CPCODPRO_ACAB) as CPCODPRO_ACAB, '
                                 +'          max(CPALICMSCRED) as  CPALICMSCRED, '
                                 +'          max(CPICMSCRED)   as CPICMSCRED, '
                                 +'          max(CPVLRINC)     as CPVLRINC, '
                                 +'          max(CPALIQORI)    as CPALIQORI, '
                                 +'          max(CPPERCENT)    as  CPPERCENT, '
                                 +'          max(CPPERCENT_REST) as CPPERCENT_REST, '
                                 +'          CPTIPO         as CPTIPO, '
                                 +'          max(CPQTD_PAD)      as CPQTD_PAD, '
                                 +'          max(PDNOME)         as NOMPRO, '
                                 +'          max(PDUND)          as UNDPRO, '
                                 +'       sum(OP3_QTDPREV) as QTDFORM, '
                                 +'       sum(OP3_QTDUTIL) as QTDUTIL, '
                                 +'       max(OP3_PU)      as PCOUNIFORM '
                                 +'       from CADOP03,CADCOMP,CADPRO '
                                 +' where '
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                                 +' OP3_CODIGO=0'+FloattoStr(pChaveOp)
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and CPCODEMP=OP3_CODEMP')
                                 +' and CPCODMAT=OP3_CODMAT '
                                 +' and (CPTIPO=1 OR CPTIPO=2) '
                                 +' and CPCODPRO=0'+fdeixanum(Frm_Ind_ForEnv.CODPRO.Text)
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                                 +' and PDCODPRO=CPCODMAT'
                                 +' group by CPTIPO,CPCODMAT ');

   end;
//Frm_Ind_ForEnv.Tb_Comp_MP.Sql.SaveToFile('c:\sql.txt');
//Frm_Ind_ForEnv.Tb_Comp_MP_UND.Sql.SaveToFile('c:\sql_UND.txt');

try
   Frm_Ind_ForEnv.Tb_Comp_MP.Open;
   Frm_Ind_ForEnv.Tb_Comp_MP_UND.Open;
except
   messagedlg('Erro 2911 ao Abrir Composicao do Produto!',mtwarning,[mbOk],0);
   end;
if pChaveOp=0 then
   begin
   try
      Frm_Ind_ForEnv.Tb_Comp_MP_PAD.Open;
   except
      messagedlg('Erro 2911 ao Abrir Composicao do Produto!',mtwarning,[mbOk],0);
      end;
   end;   


{
                                 from CADCOMP,CADPRO
where CPCODEMP like :CODEMP
and     CPTIPO = 0
and     CPCODPRO like :CODPRO
and     PDCODPRO = CPCODMAT




if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   Frm_Ind_ForEnv.Tb_Comp_MP.ParamByName('CODEMP').AsString:='%'
else
   Tb_Comp_MP.ParamByName('CODEMP').AsFloat:=codemp;
Tb_Comp_MP.ParamByName('CODPRO').AsFloat :=fsonumero(CODPRO.Text);
Tb_Comp_MP.Open;
mQtdZerado:=0;
While not Tb_Comp_MP.Eof do
   begin
   if ((Tb_Comp_MPCPPERCENT.IsNull) or (Tb_Comp_MPCPPERCENT.Value=0)) then
      begin
      mQtdZerado:=mQtdZerado+1;
      end;
   Tb_Comp_MP.Next;
   end;
Tb_Comp_MP.First;

Tb_Comp_MP_UND.close;
Tb_Comp_MP_UND.ParamByName('TIPO').AsFloat :=1;

if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   Tb_Comp_MP_UND.ParamByName('CODEMP').AsString:='%'
else
   Tb_Comp_MP_UND.ParamByName('CODEMP').AsFloat:=codemp;
Tb_Comp_MP_UND.ParamByName('CODPRO').AsFloat :=fsonumero(CODPRO.Text);
Tb_Comp_MP_UND.Open;

Tb_Comp_MP_Pad.close;
if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   Tb_Comp_MP_Pad.ParamByName('CODEMP').AsString:='%'
else
   Tb_Comp_MP_Pad.ParamByName('CODEMP').AsFloat:=codemp;
Tb_Comp_MP_Pad.ParamByName('CODPRO').AsFloat :=fsonumero(CODPRO.Text);
Tb_Comp_MP_Pad.Open;
}
end;
procedure TFrm_Ind_ForEnv.Qr_SubDet_AnexoIBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_anexoI.Checked then
   PrintBand:=false;

//Qr_SubDet_AnexoI.ForceNewPage:=true;
end;

procedure TFrm_Ind_ForEnv.Qr_SubDet_Texto01BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_texto01.Checked then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.Qr_SubDet_Texto02BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_texto02.Checked then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.Qr_SubDet_AnexoIIBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_anexoII.Checked then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.Qr_SubDet_AnexoIIIBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_anexoIII.Checked then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.Qr_SubDet_AnexoIVBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_anexoIV.Checked then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.Qr_SubDet_AnexoVBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_anexoV.Checked then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.Qr_SubDet_AnexoVIBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_anexoVI.Checked then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.Qr_SubDet_AnexoVIIBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_anexoVII.Checked then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.Qr_SubDet_AnexoVIIIBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
if not cb_imprime_anexoVIII.Checked then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not mImprimirLogo then
   PrintBand:=false;

end;

procedure TFrm_Ind_ForEnv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree


end;

end.
