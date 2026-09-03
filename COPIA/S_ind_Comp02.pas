unit S_ind_Comp02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,s_DM3,db,dbtables,func, Mask, DBCtrls,
  ComCtrls, Buttons, dbcgrids,lerarq, Grids, DBGrids, QRCtrls, QuickRpt,
  jpeg, RLReport, RLRichText, RLFilters, RLDraftFilter,RichEdit, ShellAPI,S_Impres,
  S_Mfor01, s_lerarq_geral;



type
  TFrm_Ind_Comp02 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    bbFechar: TBitBtn;
    DBCtrlGrid1: TDBCtrlGrid;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    Panel2: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBNavigator2: TDBNavigator;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Src_Comp02: TDataSource;
    SbImprimirComp: TSpeedButton;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    PageControl1: TPageControl;
    ts_Texto01: TTabSheet;
    ts_Texto02: TTabSheet;
    ts_Texto03: TTabSheet;
    ts_Texto04: TTabSheet;
    ts_texto05: TTabSheet;
    ts_Texto06: TTabSheet;
    panel_t01: TPanel;
    sbFonte01: TSpeedButton;
    sbCorFundo01: TSpeedButton;
    Texto01: TRichEdit;
    panel_t02: TPanel;
    sbFonte02: TSpeedButton;
    sbCorFundo02: TSpeedButton;
    Texto02: TRichEdit;
    panel_t04: TPanel;
    sbFonte04: TSpeedButton;
    sbCorFundo04: TSpeedButton;
    panel_t03: TPanel;
    sbFonte03: TSpeedButton;
    sbCorFundo03: TSpeedButton;
    panel_t05: TPanel;
    sbFonte05: TSpeedButton;
    sbCorFundo05: TSpeedButton;
    panel_t06: TPanel;
    sbFonte06: TSpeedButton;
    sbCorFundo06: TSpeedButton;
    Texto03: TRichEdit;
    Texto04: TRichEdit;
    Texto05: TRichEdit;
    Texto06: TRichEdit;
    cb_imprime_texto01: TCheckBox;
    cb_imprime_texto02: TCheckBox;
    cb_imprime_texto03: TCheckBox;
    cb_imprime_texto04: TCheckBox;
    cb_imprime_texto05: TCheckBox;
    cb_imprime_texto06: TCheckBox;
    bbSalvarTextos: TBitBtn;
    RG_MPPAD: TGroupBox;
    Panel_mppad: TPanel;
    sb_mppad_incluir: TSpeedButton;
    sb_mppad_excluir: TSpeedButton;
    DBGrid_mppad: TDBGrid;
    Tb_Comp_MP_Pad: TQuery;
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
    Tb_Comp_MP_PadNOMPRO: TStringField;
    Tb_Comp_MP_PadUNDPRO: TStringField;
    Src_Comp_MP_Pad: TDataSource;
    U_Comp_MP_Pad: TUpdateSQL;
    sbImprimirOP: TSpeedButton;
    ts_OPQuickReport: TTabSheet;
    Qr_ProdFab: TQuery;
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
    Qr_ProdFabundmed: TStringField;
    Qr_ProdFabundemb: TStringField;
    Qr_ProdFabPRZVAL: TFloatField;
    Qr_ProdFabundmed_ltkg: TStringField;
    Tb_Comp_MP: TQuery;
    Tb_Comp_MPCPCODEMP: TFloatField;
    Tb_Comp_MPCPORDEM: TFloatField;
    Tb_Comp_MPCPCODPRO: TFloatField;
    Tb_Comp_MPCPCODMAT: TFloatField;
    Tb_Comp_MPCPQUANT: TFloatField;
    Tb_Comp_MPCPPU: TFloatField;
    Tb_Comp_MPCPNUMERO: TStringField;
    Tb_Comp_MPCPCODPRO_ACAB: TFloatField;
    Tb_Comp_MPCPMPNUM: TStringField;
    Tb_Comp_MPCPALICMSCRED: TFloatField;
    Tb_Comp_MPCPICMSCRED: TFloatField;
    Tb_Comp_MPCPVLRINC: TFloatField;
    Tb_Comp_MPCPALIQORI: TFloatField;
    Tb_Comp_MPtotal: TFloatField;
    Tb_Comp_MPtotalliq: TFloatField;
    Tb_Comp_MPCPPERCENT: TFloatField;
    Tb_Comp_MPCPPERCENT_REST: TFloatField;
    Tb_Comp_MPCPTIPO: TFloatField;
    Tb_Comp_MPObservacao: TStringField;
    Tb_Comp_MPCPQTD_PAD: TFloatField;
    Tb_Comp_MPNOMPRO: TStringField;
    Tb_Comp_MPUNDPRO: TStringField;
    Tb_Comp_MPQTDFORM: TFloatField;
    Tb_Comp_MPPCOUNIFORM: TFloatField;
    Ts_QuickReportEnvase: TTabSheet;
    sbImprimir_Envase: TSpeedButton;
    Label7: TLabel;
    UNDMED: TEdit;
    Tb_FichaPesagem: TQuery;
    ts_quickreportFichaPesagem: TTabSheet;
    Tb_FichaPesagemNOMPRO: TStringField;
    Tb_FichaPesagemLOTE: TStringField;
    Tb_FichaPesagemDATADOC: TDateTimeField;
    Tb_FichaPesagemCODMAT: TFloatField;
    Tb_FichaPesagemQUANT: TFloatField;
    Tb_FichaPesagemPCOUNI: TFloatField;
    Tb_FichaPesagemNOMMAT: TStringField;
    Tb_FichaPesagemNOMUND: TStringField;
    Ts_ProdFortes: TTabSheet;
    RLReport_op: TRLReport;
    Src_ProdFab: TDataSource;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLDB_NUMOP: TRLDBText;
    Qr_ProdFabCHAVEOP: TFloatField;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    Qr_ProdFabCODPRO: TFloatField;
    RLDBText3: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel15: TRLLabel;
    RLBand4: TRLBand;
    lbl_CabOP_CodPro: TRLMemo;
    lbl_cabOp_NomPro: TRLMemo;
    lbl_opForCent: TRLMemo;
    lbl_opForPad: TRLMemo;
    lbl_CabOp_QtdUtil: TRLMemo;
    lbl_CabLoteRe: TRLMemo;
    RLBand5: TRLBand;
    Text_CabOP_CodPro: TRLDBText;
    Src_Comp_MP: TDataSource;
    Text_cabOp_NomPro: TRLDBText;
    Text_opForCent: TRLDBText;
    text_opForPad: TRLDBText;
    Text_CabOp_QtdUtil: TRLLabel;
    text_CabLoteRe: TRLLabel;
    rlSubDet_Texto01: TRLSubDetail;
    RLBand_Texto01: TRLBand;
    rlRichTexto01: TRLRichText;
    rlSubDet_Texto02: TRLSubDetail;
    RLBand_Texto02: TRLBand;
    rlRichTexto02: TRLRichText;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    RLLabel16: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel17: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    ts_FichaPesagem_Fortes: TTabSheet;
    RLReport_Ficha_Pesagem: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    RLLabel18: TRLLabel;
    Src_FichaPesagem: TDataSource;
    matricial: TRLDraftFilter;
    RLLabel19: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    lbl_poscursor: TLabel;
    sbnPadrao: TSpeedButton;
    RLLabel27: TRLLabel;
    ts_Envase_Fortes: TTabSheet;
    RLReport_envase: TRLReport;
    RLBand8: TRLBand;
    RLDBText14: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText15: TRLDBText;
    RLBand9: TRLBand;
    RLLabel29: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel36: TRLLabel;
    RLLabel41: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand10: TRLBand;
    RLLabel42: TRLLabel;
    RLBand11: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLBand12: TRLBand;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLSubDetail_EnvT01: TRLSubDetail;
    RLBand13: TRLBand;
    RLenv_Texto01: TRLRichText;
    RLSubDetail_EnvT02: TRLSubDetail;
    RLBand14: TRLBand;
    rlEnv_Texto02: TRLRichText;
    RLBand15: TRLBand;
    RLBand16: TRLBand;
    RLLabel45: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel46: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    lbl_opLote: TRLMemo;
    RLDBText25: TRLDBText;
    TsTextoTmp: TTabSheet;
    TextoTmp: TRichEdit;
    Tb_FichaPesagemLOTERE: TStringField;
    Ts_Texto_Cab: TTabSheet;
    Panel3: TPanel;
    sbFonteCab: TSpeedButton;
    sbCorFundoCab: TSpeedButton;
    cb_imprime_texto_cab: TCheckBox;
    TextoCab: TRichEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Qr_ProdFabDATAVEN: TDateTimeField;
    Qr_ProdFabOP1_STATUS: TFloatField;
    Qr_ProdFabrendimento_calc: TFloatField;
    BitBtn1: TBitBtn;
    procedure bbFecharClick(Sender: TObject);
    procedure Src_Comp02DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SbImprimirCompClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Texto01KeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure sbFonte01Click(Sender: TObject);
    procedure sbCorFundo01Click(Sender: TObject);
    procedure bbSalvarTextosClick(Sender: TObject);
    procedure sbFonte02Click(Sender: TObject);
    procedure sbFonte03Click(Sender: TObject);
    procedure sbFonte04Click(Sender: TObject);
    procedure sbFonte05Click(Sender: TObject);
    procedure sbFonte06Click(Sender: TObject);
    procedure sbCorFundo02Click(Sender: TObject);
    procedure sbCorFundo03Click(Sender: TObject);
    procedure sbCorFundo04Click(Sender: TObject);
    procedure sbCorFundo06Click(Sender: TObject);
    procedure Tb_Comp_MP_PadAfterCancel(DataSet: TDataSet);
    procedure C(DataSet: TDataSet);
    procedure Tb_Comp_MP_PadAfterEdit(DataSet: TDataSet);
    procedure Tb_Comp_MP_PadAfterInsert(DataSet: TDataSet);
    procedure Tb_Comp_MP_PadBeforeInsert(DataSet: TDataSet);
    procedure Tb_Comp_MP_PadBeforePost(DataSet: TDataSet);
    procedure sb_mppad_incluirClick(Sender: TObject);
    procedure sb_mppad_excluirClick(Sender: TObject);
    procedure DBGrid_mppadColExit(Sender: TObject);
    procedure DBGrid_mppadExit(Sender: TObject);
    procedure DBGrid_mppadKeyPress(Sender: TObject; var Key: Char);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure sbImprimirOPClick(Sender: TObject);
    procedure Tb_Comp_MPCalcFields(DataSet: TDataSet);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cb_imprime_texto06Click(Sender: TObject);
    procedure sbImprimir_EnvaseClick(Sender: TObject);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure UNDMEDExit(Sender: TObject);
    procedure UNDMEDChange(Sender: TObject);
    procedure OP_QRCompositeReport1AddReports(Sender: TObject);
    procedure Qr_FichaPesagemBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure rlSubDet_Texto01BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure rlSubDet_Texto02BeforePrint(Sender: TObject;
      var PrintIt: Boolean);

    procedure Texto01Change(Sender: TObject);
    procedure Texto01SelectionChange(Sender: TObject);
    procedure Texto02SelectionChange(Sender: TObject);
    procedure Texto03SelectionChange(Sender: TObject);
    procedure Texto04SelectionChange(Sender: TObject);
    procedure Texto05SelectionChange(Sender: TObject);
    procedure Texto06SelectionChange(Sender: TObject);
    procedure sbnPadraoClick(Sender: TObject);
    procedure RLSubDetail_EnvT01BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLSubDetail_EnvT02BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure TextoCabChange(Sender: TObject);
    procedure sbFonteCabClick(Sender: TObject);
    procedure sbCorFundoCabClick(Sender: TObject);
    procedure TextoCabSelectionChange(Sender: TObject);
    procedure Qr_ProdFabCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
    function UpdateCursorPos(pNumTex: Integer):Boolean;

  public
    { Public declarations }
    form_mfor01_pcus: Tfrm_mfor01;
    function fImprimirOP_RdPrint(pTipo: Integer): Integer;
    function fImprimirEnvase_RdPrint(pTipo: Integer): Integer;

  end;

function fAbrirTexto(pTipo: Integer;pCodEmp,pCodpro_EmPro,pCodPro: Real; pChave,ptabTemp: String): Integer;
function fGravarTexto(pCodEmp,pCodPro_Empro,pCodPro,pImprime: Real; pChave: String; pTexto: TRichEdit): Boolean;

var
  Frm_Ind_Comp02: TFrm_Ind_Comp02;
  mTextoTemp: String;
  f: TextFile;
  mSalvouTexto: Boolean;
//  mBloqueiaChange: Boolean=false;
  mOperMP_pad: Integer=0;
  mOrdem_mpCP: Integer=0;
  mCodPro_Ant: Real=-1;
  mImprimirLogo: Boolean=false;
  mAlterouProd: Boolean=false;
  mQtdPagTot: Integer=0;
  form_impres_ind_comp02: TFrm_Impres;

implementation

uses S_DM1;

{$R *.dfm}

resourcestring
  sColRowInfo = 'Linha: %3d   Coluna: %3d';


procedure TFrm_Ind_Comp02.bbFecharClick(Sender: TObject);
begin
{
if DM3.Tb_Comp02.State in [dsEdit,dsInsert] then
   begin
   fGravarTexto(0);
   end;
}
if bbSalvarTextos.Enabled then
   begin
   Case Fmensagem('Existe texto sem gravar!'+#13
                  +'Deseja gravar agora?',0,['1','2'],2) of
      mrYes: bbSalvarTextos.Click;
      end;
   end;
close;
end;

procedure TFrm_Ind_Comp02.Src_Comp02DataChange(Sender: TObject;
  Field: TField);
begin
mboolean:=false;
if (not (DM3.Tb_comp02.State in [dsEdit,dsInsert]))
   and (mCodPro_ant<>DM3.Tb_Comp02CP_CODPRO.AsFloat) then
//   and (not mBloqueiaChange) then
   begin

   
   UNDMED.Text:=FormatFloat('0.000', DM3.Tb_comp02qtdgrml.Value);
   flcadcq(0,DM3.Tb_Comp02CP_CODPRO_EMPRO.AsString,DM3.Tb_Comp02CP_CODPRO.AsString);
   if DM3.Tb_Comp02embpad.AsFloat>0 then
      begin
      RG_MPPAD.Caption:='Material de Embalagem de Embarque para '+DM3.Tb_Comp02embpad.AsString
                    +' Unidades do Produto: '+DM3.Tb_Comp02nompro.Value;
      end
   else
      begin
      RG_MPPAD.Caption:='Material de Embalagem de Embarque(Caixa Padrão)';
      end;


   Tb_Comp_MP_PAD.close;
   Tb_Comp_MP_PAD.SQL.Clear;
   Tb_Comp_MP_PAD.SQL.Add('Select CPCODEMP, '
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
   Tb_Comp_MP_PAD.SQL.Add('       CPQTD_PAD as QTDFORM, '
                                    +'       CPQTD_PAD as QTDUTIL, '
                                    +'       CPQTD_PAD as PCOUNIFORM '
                                    +'       from CADCOMP,CADPRO '
                                    +' where '
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' CPTIPO=2 '
                                    +' and CPCODPRO=0'+dm3.Tb_Comp02CP_CODPRO_EMPRO.AsString
                                    +' and CPCODPRO_ACAB=0'+dm3.Tb_Comp02CP_CODPRO.AsString
                                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                                    +' and PDCODPRO=CPCODMAT');
   Tb_Comp_MP_PAD.Open;


   TextoCab.Lines.Clear;
   mTextoTemp:=fProcTemp(22);
   mSalvouTexto:=false;
   cb_imprime_texto_cab.Checked:=fAbrirTexto(0,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTOCAB',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      TextoCab.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;


   Texto01.Lines.Clear;
   mTextoTemp:=fProcTemp(20);
   mSalvouTexto:=false;
   cb_imprime_texto01.Checked:=fAbrirTexto(0,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO01',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto01.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;

   Texto02.Lines.Clear;
   mTextoTemp:=fProcTemp(21);
   mSalvouTexto:=false;
   cb_imprime_texto02.Checked:=fAbrirTexto(0,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO02',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto02.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;

   Texto03.Lines.Clear;
   mTextoTemp:=fProcTemp(22);
   mSalvouTexto:=false;
   cb_imprime_texto03.Checked:=fAbrirTexto(0,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO03',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto03.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;

   Texto04.Lines.Clear;
   mTextoTemp:=fProcTemp(23);
   mSalvouTexto:=false;
   cb_imprime_texto04.Checked:=fAbrirTexto(0,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO04',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto04.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;


   Texto05.Lines.Clear;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   cb_imprime_texto05.Checked:=fAbrirTexto(0,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO05',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto05.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;

   Texto06.Lines.Clear;
   mTextoTemp:=fProcTemp(20);
   mSalvouTexto:=false;
   cb_imprime_texto06.Checked:=fAbrirTexto(0,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO06',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto06.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;
   end;
bbSalvarTextos.Enabled:=mboolean;


end;

procedure TFrm_Ind_Comp02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree
end;

procedure TFrm_Ind_Comp02.SbImprimirCompClick(Sender: TObject);
begin
if DM3.Tb_Comp02CP_CODPRO.AsFloat>0 then
   form_mfor01_pcus.fPcusImprime(3,DM3.Tb_Comp02CP_CODPRO.Value,0,0,'' )
else
   Fmensagem('Válido somente quando tem Produto Acabado!',0,['0'],0);

end;

procedure TFrm_Ind_Comp02.FormCreate(Sender: TObject);
begin


PageControl1.ActivePageIndex:=1;
ts_OPQuickReport.Visible:=false;
Ts_QuickReportEnvase.Visible:=false;
ts_quickreportFichaPesagem.Visible:=false;
Ts_ProdFortes.Visible:=false;
RLReport_Ficha_Pesagem.Visible:=false;
ts_Envase_Fortes.Visible:=false;
TsTextoTmp.Visible:=false;

mTextoTemp:=fProcTemp(24);
mCodPro_Ant:=-1;

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
//      qrEnv_logo.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
//      qr_logo.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
      deletefile('C:\SGE\CABREL.JPG');
      end;
   end;
Tb_Comp_MPQTDFORM.DisplayFormat:='#,###0.000';
Tb_Comp_MPPCOUNIFORM.DisplayFormat:='#,###0.000';

if codusr=1111 then
   begin
   Ts_QuickReportEnvase.TabVisible      :=true;
   ts_OPQuickReport.TabVisible          :=true;
   ts_quickreportFichaPesagem.TabVisible:=true;
   Ts_ProdFortes.TabVisible             :=true;
   ts_FichaPesagem_Fortes.TabVisible    :=true;
   ts_Envase_Fortes.TabVisible          :=true;
   TsTextoTmp.TabVisible                :=true;
   end
else
   begin
   Ts_QuickReportEnvase.TabVisible      :=false;
   ts_OPQuickReport.TabVisible          :=false;
   ts_quickreportFichaPesagem.TabVisible:=false;
   Ts_ProdFortes.TabVisible             :=false;
   ts_FichaPesagem_Fortes.TabVisible    :=false;
   ts_Envase_Fortes.TabVisible          :=false;
   TsTextoTmp.TabVisible                :=false;
   end;


end;

function fGravarTexto(pCodEmp,pCodPro_Empro,pCodPro,pImprime: Real; pChave: String; pTexto: TRichEdit): Boolean;

var
x,y: Integer;
mlinha,mlinha2: String;
begin
if (pcodemp>99) and (DM1.Qr_TID.Locate('TINOME','CADPRO',[])) then
   pcodemp:=100-pcodemp;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADPROC02_TEXTO where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+FloatTostr(pcodemp)+' and ')
                  +' CP_CODPRO_EMPRO=0'+FloatTostr(pCodPro_Empro)
                  +' and CP_CODPRO=0'+FloatTostr(pCodPro)
                  +' and CP_CHAVE='+chr(39)+pChave+chr(39));
try
  DM1.Query2.ExecSQL;
  fdm1StartCommit;
except
  DM1.Query2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
  end;
mTextoTemp:=fProcTemp(24);
pTexto.Lines.SaveToFile(mTextoTemp);
assignfile(f,mTextoTemp);
reset(f);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptinput);
DM1.Query2.Params.CreateParam(ftString,'CODPRO_EMPRO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptinput);
DM1.Query2.Params.CreateParam(ftString,'CHAVE',ptinput);
DM1.Query2.Params.CreateParam(ftString,'PAGINA',ptinput);
DM1.Query2.Params.CreateParam(ftString,'IMPRIME',ptinput);
DM1.Query2.Params.CreateParam(ftMemo,'TEXTO',ptinput);


DM1.Query2.SQL.Add(' Insert into CADPROC02_TEXTO (CP_CODEMP,CP_CODPRO_EMPRO,CP_CODPRO,CP_CHAVE,CP_PAGINA,CP_IMPRIME,CP_TEXTO) '
              +' Values (:CODEMP,:CODPRO_EMPRO,:CODPRO,:CHAVE,:PAGINA,:IMPRIME,:TEXTO)');
DM1.Query2.ParambyName('CODEMP').Asfloat      :=pCodEmp;
DM1.Query2.ParambyName('CODPRO_EMPRO').Asfloat:=pCodPro_Empro;
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
      DM1.Query2.ParambyName('PAGINA').AsFloat :=y;
      DM1.Query2.ParambyName('TEXTO').AsMemo   :=mlinha2;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query2.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;
      mlinha2:='';
      end;
   end;
closefile(f);
DeleteFile(mTextoTemp);
result:=true;

end;


procedure TFrm_Ind_Comp02.Texto01KeyPress(Sender: TObject; var Key: Char);
begin
if not bbSalvarTextos.Enabled then
   bbSalvarTextos.Enabled:=true;
end;

procedure TFrm_Ind_Comp02.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
if mAlterouProd then
   UNDMEDExit(Self);

   if bbSalvarTextos.Enabled then
      begin
      Case Fmensagem('Existe texto sem gravar!'+#13
                  +'Deseja gravar agora?',0,['1','2'],2) of
         mrYes: bbSalvarTextos.Click;
         end;
      end;
{
if DM3.Tb_Comp02.State in [dsEdit,dsInsert] then
   begin
   if bbSalvarTextos.Enabled then
      begin
      bbSalvarTextos.Click;
      end;
   end;
}
//if DBNavigator1.Action=nb
end;

procedure TFrm_Ind_Comp02.sbFonte01Click(Sender: TObject);
begin

FontDialog1.Font.Assign(Texto01.SelAttributes);

If FontDialog1.Execute Then
   begin
   If Texto01.SelLength > 0 Then
      Texto01.SelAttributes.Assign(FontDialog1.font)
   else
      Texto01.DefAttributes.Assign(FontDialog1.Font);
   if not bbSalvarTextos.Enabled then
      bbSalvarTextos.Enabled:=true;
   end;

end;

procedure TFrm_Ind_Comp02.sbCorFundo01Click(Sender: TObject);
begin
ColorDialog1.Color := Texto01.Color;

If Colordialog1.Execute Then
   texto01.Color := ColorDialog1.Color;

end;


function fAbrirTexto(pTipo:Integer;pCodEmp,pCodpro_EmPro,pCodPro: Real; pChave,ptabTemp: String): Integer;

begin
mCodPro_Ant:=pCodpro;
result:=1;
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select CP_PAGINA,CP_TEXTO,CP_IMPRIME from CADPROC02_TEXTO  where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+FloatTostr(pcodemp)+' and ')
                     +' CP_CODPRO_EMPRO=0'+FloatTostr(pCodpro_EmPro)
                     +' and CP_CODPRO=0'+FloatTostr(pCodPro)
                     +' and CP_CHAVE='+chr(39)+pChave+chr(39)
                     +' ORDER BY CP_PAGINA ');
DM1.Query3.Open;

if DM1.Query3.Eof then
   begin
   DM1.Query3.Close;
   DM1.Query3.sql.clear;
   DM1.Query3.SQL.Add('Select CP_PAGINA,CP_TEXTO,CP_IMPRIME from CADPROC02_TEXTO  where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0 and ')
                     +' CP_CODPRO_EMPRO=0 and '
                     +iif(pCodpro>0,' CP_CODPRO=-1',' CP_CODPRO=0')
                     +' and CP_CHAVE='+chr(39)+pChave+chr(39)
                     +' ORDER BY CP_PAGINA ');
   DM1.Query3.Open;
   if not DM1.Query3.Eof then
      mboolean:=true;
   end;
if DM1.Query3.Eof then
   exit;

Result:=DM1.Query3.fieldbyname('CP_IMPRIME').AsInteger;
While not DM1.Query3.Eof do
   begin
   assignfile(f,ptabTemp);
   rewrite(f);
   msalvouTexto:=true;
   While not DM1.Query3.Eof do
      begin
      writeln(f,DM1.Query3.fieldbyName('CP_TEXTO').AsString);
      DM1.Query3.Next;
      end;
   closefile(f);
   end;
end;

procedure TFrm_Ind_Comp02.bbSalvarTextosClick(Sender: TObject);
begin
bbSalvarTextos.Enabled:=False;

fGravarTexto(DM3.Tb_Comp02CP_CODEMP.AsInteger,
             DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
             DM3.Tb_Comp02CP_CODPRO.AsFloat,
             iif(cb_imprime_texto_cab.Checked,0,1)
             ,'TEXTOCAB',TextoCab);

fGravarTexto(DM3.Tb_Comp02CP_CODEMP.AsInteger,
             DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
             DM3.Tb_Comp02CP_CODPRO.AsFloat,
             iif(cb_imprime_texto01.Checked,0,1)
             ,'TEXTO01',Texto01);
fGravarTexto(DM3.Tb_Comp02CP_CODEMP.AsInteger,
             DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
             DM3.Tb_Comp02CP_CODPRO.AsFloat,
             iif(cb_imprime_texto02.Checked,0,1)
             ,'TEXTO02',Texto02);
fGravarTexto(DM3.Tb_Comp02CP_CODEMP.AsInteger,
             DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
             DM3.Tb_Comp02CP_CODPRO.AsFloat,
             iif(cb_imprime_texto03.Checked,0,1)
             ,'TEXTO03',Texto03);
fGravarTexto(DM3.Tb_Comp02CP_CODEMP.AsInteger,
             DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
             DM3.Tb_Comp02CP_CODPRO.AsFloat,
             iif(cb_imprime_texto04.Checked,0,1)
             ,'TEXTO04',Texto04);
fGravarTexto(DM3.Tb_Comp02CP_CODEMP.AsInteger,
             DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
             DM3.Tb_Comp02CP_CODPRO.AsFloat,
             iif(cb_imprime_texto05.Checked,0,1)
             ,'TEXTO05',Texto05);
fGravarTexto(DM3.Tb_Comp02CP_CODEMP.AsInteger,
             DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
             DM3.Tb_Comp02CP_CODPRO.AsFloat,
             iif(cb_imprime_texto06.Checked,0,1)
             ,'TEXTO06',Texto06);






end;

procedure TFrm_Ind_Comp02.sbFonte02Click(Sender: TObject);
begin
FontDialog1.Font.Assign(Texto02.SelAttributes);

If FontDialog1.Execute Then
   begin
   If Texto02.SelLength > 0 Then
      Texto02.SelAttributes.Assign(FontDialog1.font)
   else
      Texto02.DefAttributes.Assign(FontDialog1.Font);
   if not bbSalvarTextos.Enabled then
      bbSalvarTextos.Enabled:=true;
      
   end;

end;

procedure TFrm_Ind_Comp02.sbFonte03Click(Sender: TObject);
begin
FontDialog1.Font.Assign(Texto03.SelAttributes);

If FontDialog1.Execute Then
   begin
   If Texto03.SelLength > 0 Then
      Texto03.SelAttributes.Assign(FontDialog1.font)
   else
      Texto03.DefAttributes.Assign(FontDialog1.Font);
   if not bbSalvarTextos.Enabled then
      bbSalvarTextos.Enabled:=true;
      
   end;

end;

procedure TFrm_Ind_Comp02.sbFonte04Click(Sender: TObject);
begin
FontDialog1.Font.Assign(Texto04.SelAttributes);

If FontDialog1.Execute Then
   begin
   If Texto04.SelLength > 0 Then
      Texto04.SelAttributes.Assign(FontDialog1.font)
   else
      Texto04.DefAttributes.Assign(FontDialog1.Font);
   if not bbSalvarTextos.Enabled then
      bbSalvarTextos.Enabled:=true;
      
   end;

end;

procedure TFrm_Ind_Comp02.sbFonte05Click(Sender: TObject);
begin
FontDialog1.Font.Assign(Texto05.SelAttributes);

If FontDialog1.Execute Then
   begin
   If Texto05.SelLength > 0 Then
      Texto05.SelAttributes.Assign(FontDialog1.font)
   else
      Texto05.DefAttributes.Assign(FontDialog1.Font);
   if not bbSalvarTextos.Enabled then
      bbSalvarTextos.Enabled:=true;
      
   end;

end;

procedure TFrm_Ind_Comp02.sbFonte06Click(Sender: TObject);
begin
FontDialog1.Font.Assign(Texto06.SelAttributes);

If FontDialog1.Execute Then
   begin
   If Texto06.SelLength > 0 Then
      Texto06.SelAttributes.Assign(FontDialog1.font)
   else
      Texto06.DefAttributes.Assign(FontDialog1.Font);
   if not bbSalvarTextos.Enabled then
      bbSalvarTextos.Enabled:=true;

   end;

end;

procedure TFrm_Ind_Comp02.sbCorFundo02Click(Sender: TObject);
begin
ColorDialog1.Color := Texto02.Color;

If Colordialog1.Execute Then
   texto02.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_Comp02.sbCorFundo03Click(Sender: TObject);
begin
ColorDialog1.Color := Texto03.Color;

If Colordialog1.Execute Then
   texto03.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_Comp02.sbCorFundo04Click(Sender: TObject);
begin
ColorDialog1.Color := Texto04.Color;

If Colordialog1.Execute Then
   texto04.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_Comp02.sbCorFundo06Click(Sender: TObject);
begin
ColorDialog1.Color := Texto06.Color;

If Colordialog1.Execute Then
   texto06.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_Comp02.Tb_Comp_MP_PadAfterCancel(DataSet: TDataSet);
begin
mOperMP_pad       :=0;

end;

procedure TFrm_Ind_Comp02.C(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   Fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_Ind_Comp02.Tb_Comp_MP_PadAfterEdit(DataSet: TDataSet);
begin
mOperMP_pad:=1;

end;

procedure TFrm_Ind_Comp02.Tb_Comp_MP_PadAfterInsert(DataSet: TDataSet);
begin
Tb_Comp_MP_PadCPORDEM.AsFloat     :=mOrdem_mpCP;
Tb_Comp_MP_PadCPCODEMP.Value      :=codemp;
Tb_Comp_MP_PadCPCODPRO.Value      :=DM3.Tb_Comp02CP_CODPRO_EMPRO.Value;
Tb_Comp_MP_PadCPCODPRO_ACAB.Value :=DM3.Tb_Comp02CP_CODPRO.Value;
Tb_Comp_MP_PadCPQUANT.Value       :=1;
mOperMP_pad                       :=0;
Tb_Comp_MP_PadCPPU.Value          :=0;
Tb_Comp_MP_PadCPNUMERO.Value      :=' ';
Tb_Comp_MP_PadCPMPNUM.Value       :=' ';
Tb_Comp_MP_PadCPPERCENT_REST.Value:=0;
Tb_Comp_MP_PadCPPERCENT.Value     :=0;
Tb_Comp_MP_PADCPTIPO.Value        :=2;

end;

procedure TFrm_Ind_Comp02.Tb_Comp_MP_PadBeforeInsert(DataSet: TDataSet);
begin
DBGrid_mppad.SelectedField:=Tb_Comp_MP_PADCPCODMAT;

end;

procedure TFrm_Ind_Comp02.Tb_Comp_MP_PadBeforePost(DataSet: TDataSet);
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
   Fmensagem('Favor Selecionar um Código de Matéria Prima Válido!',0,['0'],0);
   DBGrid_mppad.SelectedField:=Tb_Comp_MP_PadCPCODMAT;
   abort;
   exit;
   end;
if Tb_Comp_MP_PadCPQTD_PAD.AsFloat=0 then
   begin
   Fmensagem('Favor Digitar uma Quantidade Válida!',0,['0'],0);
   DBGrid_mppad.SelectedField:=Tb_Comp_MP_PadCPQTD_PAD;
   abort;
   exit;
   end;
Tb_Comp_MP_PadCPQUANT.Value       :=1;
if mOperMP_pad=0 then
   begin
   mOrdem_mpCP:=mOrdem_mpCP+1;
   end;
mOperMP_pad:=0;


end;

procedure TFrm_Ind_Comp02.sb_mppad_incluirClick(Sender: TObject);
begin
if not (Tb_Comp_MP_Pad.State in [dsedit,dsinsert]) then
   Tb_Comp_MP_Pad.Append;

end;

procedure TFrm_Ind_Comp02.sb_mppad_excluirClick(Sender: TObject);
begin
if Tb_Comp_MP_PadCPCODEMP.IsNull then
   begin
   verteclado(1);
   Fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   exit;
   end;
if fmensagem(pchar('Quer Realmente Excluir a Matéria Prima: '+#13
                         +Tb_Comp_MP_PadNOMPRO.Value+'?'),
                         0,['1','2'],2)=mrYes then
   begin
   Tb_Comp_MP_Pad.Delete;
   end;

end;

procedure TFrm_Ind_Comp02.DBGrid_mppadColExit(Sender: TObject);
begin
if Tb_Comp_MP_PAD.State in [dsEdit,dsInsert] then
   begin
   if (DBGrid_mppad.SelectedField=Tb_Comp_MP_PadCPCODMAT) and not (Tb_Comp_MP_PadCPCODMAT.IsNull) then
      begin
      if not flcadpro(1,0,0,Tb_Comp_MP_PadCPCODMAT.AsString) then
         begin
         Fmensagem('Favor Selecionar um Código de Matéria Prima Válido!',0,['0'],0);
         DBGrid_MPPAD.SelectedField:=Tb_Comp_MP_PADCPCODMAT;
         abort;
         exit;
         end
      else
         begin
         Tb_Comp_MP_PADNOMPRO.Value  :=DM1.Tb_ProPDNOME.Value;
         Tb_Comp_MP_PADUNDPRO.Value  :=DM1.Tb_ProPDUND.Value;
         if Tb_Comp_MP_PadCPQTD_PAD.AsFloat=0 then
            Tb_Comp_MP_PadCPQTD_PAD.Value     :=DM3.Tb_Comp02embpad.Value;
         end;
      end;
   end;



end;

procedure TFrm_Ind_Comp02.DBGrid_mppadExit(Sender: TObject);
begin
if Tb_Comp_MP_Pad.State in [dsedit,dsInsert] then
   begin
   if Tb_Comp_MP_PADCPCODPRO.IsNull then
      Tb_Comp_MP_PAD.Cancel
   else
      Tb_Comp_MP_PAD.Post;
   end;

end;

procedure TFrm_Ind_Comp02.DBGrid_mppadKeyPress(Sender: TObject;
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

procedure TFrm_Ind_Comp02.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Qr_OrdemProducao.NewPage;
//qr_texto01.Lines.Clear;
mTextoTemp:=fProcTemp(24);
mSalvouTexto:=false;
fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
            DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
            DM3.Tb_TextoCP_CODPRO.AsFloat,
            DM3.Tb_TextoCP_CHAVE.AsString,mTextoTemp);
if mSalvouTexto then
   begin
//   qr_texto01.Lines.LoadFromFile(mTextoTemp);
   DeleteFile(mTextoTemp);
   end;

end;

procedure TFrm_Ind_Comp02.sbImprimirOPClick(Sender: TObject);
begin
   Qr_ProdFab.Close;
   Qr_ProdFab.SQL.Clear;
   Qr_ProdFab.SQL.Add('Select PDNOME,PDAPRES,PDQTDGRML,');
   Qr_ProdFab.SQL.Add('PDUND   AS UND,');
   Qr_ProdFab.SQL.Add('PDMARCA AS LOTE,');
   Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+') AS DATADOC,');
   Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+') AS DATAEMI,');
   Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+') AS DATAVEN,');

   Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS QTDTEORICA,');
   Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS QTDREAL,');
   Qr_ProdFab.SQL.Add('PDMARCA AS COORD_PROD,');
   Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS RENDIMENTO,');
   Qr_ProdFab.SQL.Add('PDMARCA AS COORD_PROD_REND,');
   Qr_ProdFab.SQL.Add('PDMARCA AS GARANTIA_QUAL,');
   Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+') AS DATAQUAL,');
   Qr_ProdFab.SQL.Add('  PDSALDO-PDSALDO AS CHAVEOP, ');
   Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS QTDPREV ');
   Qr_ProdFab.SQL.Add(', PDCODPRO AS CODPRO ');
   Qr_ProdFab.SQL.Add(',PDPRZVAL AS PRZVAL ');
   Qr_ProdFab.SQL.Add(',PDPRZVAL AS OP1_STATUS ');
   Qr_ProdFab.SQL.Add('   FROM CADPRO');
   Qr_ProdFab.SQL.add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and '));
   Qr_ProdFab.SQL.add(' PDCODPRO=0'+DM3.Tb_Comp02CP_CODPRO_EMPRO.AsString);
   Qr_ProdFab.Open;

Tb_Comp_MP.close;
Tb_Comp_MP.SQL.Clear;
Tb_Comp_MP.SQL.Add('Select CPCODEMP, '
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
Tb_Comp_MP.SQL.Add('       CPQTD_PAD as QTDFORM, '
                  +'       CPQTD_PAD as QTDUTIL, '
                  +'       CPQTD_PAD as PCOUNIFORM '
                  +'       from CADCOMP,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' (CPTIPO=0 or CPTIPO is null) '
                  +' and CPCODPRO=0'+DM3.Tb_Comp02CP_CODPRO_EMPRO.AsString
                  +' and CPCODPRO_ACAB=0'
//                  +' and CPCODPRO_ACAB=0'+DM3.Tb_Comp02CP_CODPRO.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                  +' and PDCODPRO=CPCODMAT ');
Tb_Comp_MP.SQL.Add(' ORDER BY CPTIPO,CPORDEM ');

Tb_Comp_MP.Open;


Tb_FichaPesagem.close;
Tb_FichaPesagem.SQL.Clear;
Tb_FichaPesagem.SQL.Add('Select ');
Tb_FichaPesagem.SQL.Add(chr(39)+Qr_ProdFabPDNOME.Value+chr(39)+' as NOMPRO, ');
Tb_FichaPesagem.SQL.Add(chr(39)+Qr_ProdFabLOTE.Value+chr(39)+' as LOTE, ');
Tb_FichaPesagem.SQL.Add(chr(39)+Qr_ProdFabLOTE.Value+chr(39)+' as LOTERE, ');
Tb_FichaPesagem.SQL.Add('TO_DATE('+chr(39)+FormatDatetime(fdt, Qr_ProdFabDATAEMI.Value)+chr(39)+') as DATADOC, ');
Tb_FichaPesagem.SQL.Add(' CPCODMAT AS CODMAT, ');
Tb_FichaPesagem.SQL.Add('        CPQUANT AS QUANT, ');
Tb_FichaPesagem.SQL.Add('        CPPU    AS PCOUNI,');
Tb_FichaPesagem.SQL.Add('        PDNOME  AS NOMMAT,');
Tb_FichaPesagem.SQL.Add('        PDUND   AS NOMUND');
Tb_FichaPesagem.SQL.Add('  from CADCOMP,CADPRO'
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' (CPTIPO=0 or CPTIPO is null) '
                  +' and CPCODPRO=0'+DM3.Tb_Comp02CP_CODPRO_EMPRO.AsString
                  +' and CPCODPRO_ACAB=0'
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                  +' and PDCODPRO=CPCODMAT ');
Tb_FichaPesagem.SQL.Add(' ORDER BY CPTIPO,CPORDEM ');
Tb_FichaPesagem.Open;

DM3.Tb_Texto.Close;
DM3.Tb_Texto.SQL.Clear;
DM3.Tb_Texto.SQL.Add('Select CP_CODEMP,CP_CODPRO, CP_CODPRO_EMPRO,CP_CHAVE, '
                    +'  max(CP_PAGINA) as CP_PAGINA, '
                    +' max(CP_IMPRIME) as CP_IMPRIME '
                    +' ,max(CP_IMPMP) as CP_IMPMP '
                    +' ,max(CP_IMPEMB) as CP_IMPEMB '
                    +' ,max(CP_AVANCPAG) as CP_AVANCPAG '
                    +' from CADPROC02_TEXTO  '
                    +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),''
                    ,' CP_CODEMP=0'+IntToStr(codemp)+' and '));
//DM3.Tb_Texto.SQL.add(' CP_CODPRO=0'+DM3.Tb_Comp02CP_CODPRO.AsString);
DM3.Tb_Texto.SQL.add(' CP_CODPRO=0');
//DM3.Tb_Texto.SQL.add(' AND CP_CODPRO_EMPRO=0');
DM3.Tb_Texto.SQL.add(' AND CP_CODPRO_EMPRO=0'+DM3.Tb_Comp02CP_CODPRO_EMPRO.AsString);
DM3.Tb_Texto.SQL.add(' AND CP_IMPRIME=0');
DM3.Tb_Texto.SQL.Add(' group by  CP_CODEMP,CP_CODPRO, CP_CODPRO_EMPRO,CP_CHAVE ');
DM3.Tb_Texto.SQL.Add(' order by CP_CODPRO, CP_CODPRO_EMPRO,CP_PAGINA ');

try
  DM3.Tb_Texto.Open;
except
  DM3.Tb_Texto.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
  exit;
  end;
if DM1.Tb_PargerPIND_TPFORMULA.Asinteger=2 then
   begin
   mQtdPagTot:=fImprimirOP_RdPrint(0);
   fImprimirOP_RdPrint(1);

//   RLReport_op.PreviewModal;
   end
else
   begin
//   OP_QrCompositeReport1.prepare;
   //Qr_OrdemProducao.Preview;
//   OP_LBLQTDP.Caption:=IntToStr(Qr_OrdemProducao.PageNumber);
//   OP_QrCompositeReport1.preview;
   end




end;

procedure TFrm_Ind_Comp02.Tb_Comp_MPCalcFields(DataSet: TDataSet);
begin
Tb_Comp_MPtotalliq.Value:=Tb_Comp_MPCPQUANT.AsFloat*Tb_Comp_MPCPPU.AsFloat;
Tb_Comp_MPtotal.Value   :=Tb_Comp_MPCPQUANT.AsFloat*Tb_Comp_MPCPPU.AsFloat;
Tb_Comp_MPtotalliq.Value:=Tb_Comp_MPtotalliq.AsFloat-Tb_Comp_MPCPICMSCRED.AsFloat;
if (Tb_Comp_MPCPCODMAT.AsFloat>0) and (Tb_Comp_MPCPCODPRO_ACAB.AsFloat=0) then
   begin
   if Tb_Comp_MPCPPERCENT.AsFloat=0 then
//      Tb_Comp_MPObservacao.Value:='QSP '+FormatFloat(mcasas, Tb_Comp_MPCPPERCENT_REST.Value)+'%'
      Tb_Comp_MPObservacao.Value:=FormatFloat(mcasas, Tb_Comp_MPCPPERCENT_REST.Value)+'%'
   else
      Tb_Comp_MPObservacao.Value:=FormatFloat(mcasas, Tb_Comp_MPCPPERCENT_REST.Value)+'%';
   end;


end;

procedure TFrm_Ind_Comp02.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{
if length(Tb_Comp_MPNOMPRO.Value)>30 then
   begin
   QrText_observ.Height :=34;
   QrText_qtdform.Height:=34;
   end
else
   begin
   QrText_observ.Height :=17;
   QrText_qtdform.Height:=17;
   end;
}
end;

procedure TFrm_Ind_Comp02.cb_imprime_texto06Click(Sender: TObject);
begin
if not bbSalvarTextos.Enabled then
   bbSalvarTextos.Enabled:=true;

end;

procedure TFrm_Ind_Comp02.sbImprimir_EnvaseClick(Sender: TObject);
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
   Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+') AS DATAVEN,');
   Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS QTDPREV ');
   Qr_ProdFab.SQL.Add(',  PDSALDO-PDSALDO AS CHAVEOP ');
   Qr_ProdFab.SQL.Add(', PDCODPRO AS CODPRO ');
   Qr_ProdFab.SQL.Add(',PDPRZVAL AS PRZVAL ');
   Qr_ProdFab.SQL.Add(',PDPRZVAL AS OP1_STATUS ');
   Qr_ProdFab.SQL.Add('   FROM CADPRO');
   Qr_ProdFab.SQL.add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and '));
   Qr_ProdFab.SQL.add(' PDCODPRO=0'+DM3.Tb_Comp02CP_CODPRO.AsString);
//   Qr_ProdFab.SQL.SAVETOFILE('C:\S8QL.TXT');
   Qr_ProdFab.Open;
if Qr_ProdFab.Eof then
   begin
   Fmensagem('Não ha um Envase para Este Produto!',0,['0'],0);
   exit;
   end;
Tb_Comp_MP.close;
Tb_Comp_MP.SQL.Clear;
Tb_Comp_MP.SQL.Add('Select CPCODEMP, '
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
Tb_Comp_MP.SQL.Add('       CPQTD_PAD as QTDFORM, '
                  +'       CPQTD_PAD as QTDUTIL, '
                  +'       CPQTD_PAD as PCOUNIFORM '
                  +'       from CADCOMP,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' (CPTIPO>0) '
                  +' and CPCODPRO=0'+DM3.Tb_Comp02CP_CODPRO_EMPRO.AsString
                  +' and CPCODPRO_ACAB=0'+DM3.Tb_Comp02CP_CODPRO.AsString

                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP')
                  +' and PDCODPRO=CPCODMAT');
Tb_Comp_MP.SQL.Add(' ORDER BY CPTIPO,CPORDEM ');
Tb_Comp_MP.Open;


DM3.Tb_Texto.Close;
DM3.Tb_Texto.SQL.Clear;
DM3.Tb_Texto.SQL.Add('Select CP_CODEMP,CP_CODPRO, CP_CODPRO_EMPRO,CP_CHAVE, '
                    +'  max(CP_PAGINA) as CP_PAGINA, '
                    +' max(CP_IMPRIME) as CP_IMPRIME '
                    +' ,max(CP_IMPMP) as CP_IMPMP '
                    +' ,max(CP_IMPEMB) as CP_IMPEMB '
                    +' ,max(CP_AVANCPAG) as CP_AVANCPAG '
                    +' from CADPROC02_TEXTO  '
                    +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),''
                    ,' CP_CODEMP=0'+IntToStr(codemp)+' and '));
DM3.Tb_Texto.SQL.add(' CP_CODPRO=0'+DM3.Tb_Comp02CP_CODPRO.AsString);
DM3.Tb_Texto.SQL.add(' AND CP_CODPRO_EMPRO=0'+DM3.Tb_Comp02CP_CODPRO_EMPRO.AsString);
DM3.Tb_Texto.SQL.add(' AND CP_IMPRIME=0');
DM3.Tb_Texto.SQL.Add(' group by  CP_CODEMP,CP_CODPRO, CP_CODPRO_EMPRO,CP_CHAVE ');
DM3.Tb_Texto.SQL.Add(' order by CP_CODPRO, CP_CODPRO_EMPRO,CP_PAGINA ');

try
  DM3.Tb_Texto.Open;
except
  DM3.Tb_Texto.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
  exit;
  end;


      Frm_Ind_Comp02.Tb_FichaPesagem.close;
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Clear;
      Frm_Ind_Comp02.Tb_FichaPesagem.Params.CreateParam(ftString,'NOMPRO',ptInput);
      Frm_Ind_Comp02.Tb_FichaPesagem.Params.CreateParam(ftString,'LOTE',ptInput);
      Frm_Ind_Comp02.Tb_FichaPesagem.Params.CreateParam(ftString,'LOTERE',ptInput);

      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('Select ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(':NOMPRO  as NOMPRO, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(':LOTE  as LOTE, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(':LOTERE  as LOTERE, ');

      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('TO_DATE('+chr(39)+FormatDatetime(fdt, Frm_Ind_Comp02.Qr_ProdFabDATAEMI.Value)+chr(39)+') as DATADOC, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(' CPCODMAT AS CODMAT, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        0 AS QUANT, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        0     AS PCOUNI,');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        PDNOME      AS NOMMAT,');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        PDUND       AS NOMUND');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('   from CADCOMP,CADPRO  where     '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADOP03',[]),'',' CPCODEMP=0'+IntTostr(codemp)+' and ')
                  +' CPCODPRO='+DM3.Tb_Comp02CP_CODPRO.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=CPCODEMP ')
                  +' and CPCODPRO_ACAB=0'+DM3.Tb_Op02OP2_CODPRO.AsString);

      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(' ORDER BY CPTIPO,CPORDEM');
      Frm_Ind_Comp02.Tb_FichaPesagem.ParamByName('NOMPRO').AsString:=Frm_Ind_Comp02.Qr_ProdFabPDNOME.Value;
      Frm_Ind_Comp02.Tb_FichaPesagem.ParamByName('LOTE').AsString  :=Frm_Ind_Comp02.Qr_ProdFabLOTE.Value;
      Frm_Ind_Comp02.Tb_FichaPesagem.ParamByName('LOTERE').AsString  :=Frm_Ind_Comp02.Qr_ProdFabLOTE.Value;
      try
         Frm_Ind_Comp02.Tb_FichaPesagem.Open
      except
         Frm_Ind_Comp02.Tb_FichaPesagem.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

         end;



if DM1.Tb_PargerPIND_TPFORMULA.Asinteger=2 then
   begin
   mQtdPagTot:=fImprimirEnvase_RdPrint(0);
   fImprimirEnvase_RdPrint(1);

//   RLReport_envase.PreviewModal;
   end;
//else
//   QuickRep2.Preview;


end;

procedure TFrm_Ind_Comp02.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{
if length(Tb_Comp_MPNOMPRO.Value)>30 then
   begin
//   QrTextEnv_observ.Height :=34;
   QrTextEnv_qtdform.Height:=34;
   end
else
   begin
//   QrTextEnv_observ.Height :=17;
   QrTextEnv_qtdform.Height:=17;
   end;
 }
end;

procedure TFrm_Ind_Comp02.QRSubDetail4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{
QuickRep2.NewPage;
qrEnv_texto01.Lines.Clear;
mTextoTemp:=fProcTemp(24);
mSalvouTexto:=false;
fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
            DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
            DM3.Tb_TextoCP_CODPRO.AsFloat,
            DM3.Tb_TextoCP_CHAVE.AsString,mTextoTemp);
if mSalvouTexto then
   begin
   qrEnv_texto01.Lines.LoadFromFile(mTextoTemp);
   DeleteFile(mTextoTemp);
   end;

 }
end;

procedure TFrm_Ind_Comp02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not mImprimirLogo then
   PrintBand:=false;

end;

procedure TFrm_Ind_Comp02.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not mImprimirLogo then
   PrintBand:=false;

end;

procedure TFrm_Ind_Comp02.UNDMEDExit(Sender: TObject);
begin
UNDMED.Text:=FormatFloat('0.000', ValFloat(UNDMED.Text));

if mAlterouProd then
   begin
   mAlterouProd:=false;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select PDNOME,PDUND,PDQTDGRML from CADPRO where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PDCODPRO=0'+DM3.Tb_Comp02CP_CODPRO.AsString);
   dm1.Query2.Open;
   if DM1.Query2.Eof then
      exit;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.CreateParam(ftString,'QTDGRML',ptInput);
   DM1.Query1.SQL.Add('Update CADPRO set PDQTDGRML=:QTDGRML '
                     +' where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                     +' PDCODPRO=0'+DM3.Tb_Comp02CP_CODPRO.AsString);
   DM1.Query1.ParambyName('QTDGRML').AsFloat :=ValFloat(UNDMED.Text);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      Fmensagem('Erro 333 ao atualizar a tabela de Produtos!',0,['0'],0);
      exit;
      end;
   end;

end;

procedure TFrm_Ind_Comp02.UNDMEDChange(Sender: TObject);
begin
mAlterouProd:=true;

end;

procedure TFrm_Ind_Comp02.OP_QRCompositeReport1AddReports(Sender: TObject);
begin
{ with OP_QRCompositeReport1.Reports do
 begin
  Add(Qr_OrdemProducao);
  Add(Qr_FichaPesagem);
  end;
 }
end;

procedure TFrm_Ind_Comp02.Qr_FichaPesagemBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
//Qr_FichaPesagem.NewPage;
end;

procedure TFrm_Ind_Comp02.rlSubDet_Texto01BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlRichTexto01.Lines.Clear;
mTextoTemp:=fProcTemp(24);
mSalvouTexto:=false;
mboolean:=fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
            DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
            DM3.Tb_TextoCP_CODPRO.AsFloat,
            'TEXTO01',mTextoTemp)=0;
if (mSalvouTexto) and (mboolean) then
   begin
   rlSubDet_Texto01.Visible:=true;
   rlRichTexto01.Lines.LoadFromFile(mTextoTemp);
   DeleteFile(mTextoTemp);
   end
else
   begin
   rlSubDet_Texto01.Visible:=false;
   end;

end;

procedure TFrm_Ind_Comp02.PageControl1Change(Sender: TObject);
begin
{
if PageControl1.ActivePage=ts_Texto01 then
   begin
   Texto01.Lines.Clear;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   cb_imprime_texto01.Checked:=fAbrirTexto(1,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO01',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto01.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;
   end
else if PageControl1.ActivePage=ts_Texto02 then
   begin
   Texto02.Lines.Clear;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   cb_imprime_texto02.Checked:=fAbrirTexto(1,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO02',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto02.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;
   end
else if PageControl1.ActivePage=ts_Texto03 then
   begin
   Texto03.Lines.Clear;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   cb_imprime_texto03.Checked:=fAbrirTexto(1,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO03',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto03.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;
   end
else if PageControl1.ActivePage=ts_Texto04 then
   begin
   Texto04.Lines.Clear;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   cb_imprime_texto04.Checked:=fAbrirTexto(1,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO04',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto04.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;
   end
else if PageControl1.ActivePage=ts_Texto05 then
   begin
   Texto05.Lines.Clear;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   cb_imprime_texto05.Checked:=fAbrirTexto(1,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO05',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto05.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;
   end
else if PageControl1.ActivePage=ts_Texto06 then
   begin
   Texto06.Lines.Clear;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   cb_imprime_texto06.Checked:=fAbrirTexto(1,dm3.Tb_Comp02CP_CODEMP.AsInteger,
               DM3.Tb_Comp02CP_CODPRO_EMPRO.AsFloat,
               DM3.Tb_Comp02CP_CODPRO.AsFloat,
               'TEXTO06',mTextoTemp)=0;
   if mSalvouTexto then
      begin
      Texto06.Lines.LoadFromFile(mTextoTemp);
      DeleteFile(mTextoTemp);
      end;
   end;
}
end;

procedure TFrm_Ind_Comp02.rlSubDet_Texto02BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlRichTexto02.Lines.Clear;
mTextoTemp:=fProcTemp(24);
mSalvouTexto:=false;
mboolean:=fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
            DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
            DM3.Tb_TextoCP_CODPRO.AsFloat,
            'TEXTO02',mTextoTemp)=0;
if (mSalvouTexto) and (mboolean) then
   begin
   rlSubDet_Texto02.Visible:=true;
   rlRichTexto02.Lines.LoadFromFile(mTextoTemp);
   DeleteFile(mTextoTemp);
   end
else
   begin
   rlSubDet_Texto02.Visible:=false;
   end;

end;


function TFrm_Ind_Comp02.UpdateCursorPos(pNumTex: Integer):Boolean;

var
  CharPos: TPoint;
begin

  if pNumTex=0 then
     begin
     CharPos.Y := SendMessage(TextoCab.Handle, EM_EXLINEFROMCHAR, 0,
     TextoCab.SelStart);
     CharPos.X := (TextoCab.SelStart -
     SendMessage(TextoCab.Handle, EM_LINEINDEX, CharPos.Y, 0));
     end
  else if pNumTex=1 then
     begin
     CharPos.Y := SendMessage(Texto01.Handle, EM_EXLINEFROMCHAR, 0,
     Texto01.SelStart);
     CharPos.X := (Texto01.SelStart -
     SendMessage(Texto01.Handle, EM_LINEINDEX, CharPos.Y, 0));
     end
  else if pNumTex=2 then
     begin
     CharPos.Y := SendMessage(Texto02.Handle, EM_EXLINEFROMCHAR, 0,
     Texto02.SelStart);
     CharPos.X := (Texto02.SelStart -
     SendMessage(Texto02.Handle, EM_LINEINDEX, CharPos.Y, 0));
     end
  else if pNumTex=3 then
     begin
     CharPos.Y := SendMessage(Texto03.Handle, EM_EXLINEFROMCHAR, 0,
     Texto03.SelStart);
     CharPos.X := (Texto03.SelStart -
     SendMessage(Texto03.Handle, EM_LINEINDEX, CharPos.Y, 0));
     end
  else if pNumTex=4 then
     begin
     CharPos.Y := SendMessage(Texto04.Handle, EM_EXLINEFROMCHAR, 0,
     Texto04.SelStart);
     CharPos.X := (Texto04.SelStart -
     SendMessage(Texto04.Handle, EM_LINEINDEX, CharPos.Y, 0));
     end
  else if pNumTex=5 then
     begin
     CharPos.Y := SendMessage(Texto05.Handle, EM_EXLINEFROMCHAR, 0,
     Texto05.SelStart);
     CharPos.X := (Texto05.SelStart -
     SendMessage(Texto05.Handle, EM_LINEINDEX, CharPos.Y, 0));
     end
  else if pNumTex=6 then
     begin
     CharPos.Y := SendMessage(Texto06.Handle, EM_EXLINEFROMCHAR, 0,
     Texto06.SelStart);
     CharPos.X := (Texto06.SelStart -
     SendMessage(Texto06.Handle, EM_LINEINDEX, CharPos.Y, 0));
     end;

  Inc(CharPos.Y);
  Inc(CharPos.X);
  lbl_poscursor.Caption := Format(sColRowInfo, [CharPos.Y, CharPos.X]);
//  StatusBar.Panels[0].Text := Format(sColRowInfo, [CharPos.Y, CharPos.X]);
end;

procedure TFrm_Ind_Comp02.Texto01Change(Sender: TObject);
begin
    UpdateCursorPos(01);
end;

procedure TFrm_Ind_Comp02.Texto01SelectionChange(Sender: TObject);
begin
    UpdateCursorPos(01);

end;

procedure TFrm_Ind_Comp02.Texto02SelectionChange(Sender: TObject);
begin
    UpdateCursorPos(02);

end;

procedure TFrm_Ind_Comp02.Texto03SelectionChange(Sender: TObject);
begin
    UpdateCursorPos(03);

end;

procedure TFrm_Ind_Comp02.Texto04SelectionChange(Sender: TObject);
begin
    UpdateCursorPos(04);

end;

procedure TFrm_Ind_Comp02.Texto05SelectionChange(Sender: TObject);
begin
    UpdateCursorPos(05);

end;

procedure TFrm_Ind_Comp02.Texto06SelectionChange(Sender: TObject);
begin
    UpdateCursorPos(06);

end;

procedure TFrm_Ind_Comp02.sbnPadraoClick(Sender: TObject);
var
mTipo: Integer;
begin
if DM3.Tb_Comp02CP_CODPRO.AsFloat>0 then
   mtipo:=-1
else
   mtipo:=0;

if fmensagem('Quer Realmente Gravar os Textos '
            +iif(mtipo=0,' da Ordem de Produção ',' da Ordem de Envase ')+'Como Padrão?',0,['1','2'],2)<>mrYes then
   exit;
fGravarTexto(0,0,mtipo,IIF(cb_imprime_texto_cab.Checked,0,1),'TEXTOCAB',TextoCab);
fGravarTexto(0,0,mtipo,IIF(cb_imprime_texto01.Checked,0,1)  ,'TEXTO01',Texto01);
fGravarTexto(0,0,mtipo,IIF(cb_imprime_texto02.Checked,0,1)  ,'TEXTO02',Texto02);
fGravarTexto(0,0,mtipo,IIF(cb_imprime_texto03.Checked,0,1)  ,'TEXTO03',Texto02);
fGravarTexto(0,0,mtipo,IIF(cb_imprime_texto04.Checked,0,1)  ,'TEXTO04',Texto03);
fGravarTexto(0,0,mtipo,IIF(cb_imprime_texto05.Checked,0,1)  ,'TEXTO05',Texto05);
fGravarTexto(0,0,mtipo,IIF(cb_imprime_texto06.Checked,0,1)  ,'TEXTO06',Texto06);


Fmensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_Ind_Comp02.RLSubDetail_EnvT01BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLenv_Texto01.Lines.Clear;
mTextoTemp:=fProcTemp(24);
mSalvouTexto:=false;
mboolean:=fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
            DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
            DM3.Tb_TextoCP_CODPRO.AsFloat,
            'TEXTO01',mTextoTemp)=0;
if (mSalvouTexto) and (mboolean) then
   begin
   RLSubDetail_EnvT01.Visible:=true;
   RLenv_Texto01.Lines.LoadFromFile(mTextoTemp);
   DeleteFile(mTextoTemp);
   end
else
   begin
   RLSubDetail_EnvT01.Visible:=false;
   end;

end;

procedure TFrm_Ind_Comp02.RLSubDetail_EnvT02BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLenv_Texto02.Lines.Clear;
mTextoTemp:=fProcTemp(24);
mSalvouTexto:=false;
mboolean:=fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
            DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
            DM3.Tb_TextoCP_CODPRO.AsFloat,
            'TEXTO02',mTextoTemp)=0;
if (mSalvouTexto) and (mboolean) then
   begin
   RLSubDetail_EnvT02.Visible:=true;
   RLenv_Texto02.Lines.LoadFromFile(mTextoTemp);
   DeleteFile(mTextoTemp);
   end
else
   begin
   RLSubDetail_EnvT02.Visible:=false;
   end;

end;

function TFrm_Ind_Comp02.fImprimirOP_RdPrint(pTipo: Integer): Integer;
{
ptipo=0 somente para saber quantas pagina
ptipo=1 impressao total
}

var
x: Integer;
mtamtexto,aux: Integer;

begin
if ptipo=0 then
   mQtdPagTot:=0;
testeform := TFrm_Ind_Comp02(FindGlobalComponent('form_impres_ind_comp02'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_ind_comp02);

form_impres_ind_comp02.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_ind_comp02.mlin:=1;
form_impres_ind_comp02.mpag:=0;
Frm_Ind_Comp02.Qr_ProdFab.First;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,centra(DM1.Tb_EmpRAZAO.Value,' ',80),form_impres_ind_comp02.mNeg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,centra('ORDEM DE PRODUCAO - FICHA DE FABRICACAO '+Frm_Ind_Comp02.Qr_ProdFabCHAVEOP.AsString,' ',80),form_impres_ind_comp02.mNeg);

form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,64,insere('Pagina: '+FormatFloat('00',form_impres_ind_comp02.mpag)+'/'+FormatFloat('00',mQtdPagTot),' ',16),form_impres_ind_comp02.mNeg);



form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        'Produto..............: ',form_impres_ind_comp02.mNeg);
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,41,Frm_Ind_Comp02.Qr_ProdFabCODPRO.AsString+' '+Frm_Ind_Comp02.Qr_ProdFabPDNOME.AsString,form_impres_ind_comp02.mNeg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        'Apresentacao.........: ',form_impres_ind_comp02.mNeg);
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,41,Frm_Ind_Comp02.Qr_ProdFabPDAPRES.AsString,form_impres_ind_comp02.mNeg);


form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'Lote.................: ',form_impres_ind_comp02.mNeg);
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,41,Frm_Ind_Comp02.Qr_ProdFabLOTE.AsString, form_impres_ind_comp02.mNeg);
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,80,' Validade: '+Frm_Ind_Comp02.Qr_ProdFabPRZVAL.AsString+' Mês(es)', form_impres_ind_comp02.mNeg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,insere2('Date de Emissao......: '+FormatDateTime(fdt2, Frm_Ind_Comp02.Qr_ProdFabDATAEMI.Value),' ',45)+' Data de Fabricacao: ____/____/____', form_impres_ind_comp02.mNeg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        'Quantidade Teorica...: '+FormatFloat(mcasind, Frm_Ind_Comp02.Qr_ProdFabQTDTEORICA.Value)+' LITROS/KILOS', form_impres_ind_comp02.mNeg);
if Frm_Ind_Comp02.Qr_ProdFabOP1_STATUS.Value=2 then
   begin
   form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
   form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,insere2('Quantidade Real......: '+FormatFloat(mcasind, Frm_Ind_Comp02.Qr_ProdFabQTDREAL.Value)+' LITROS/KILOS',' ',45)
                                           +' Rendimento........: '+
                                           Frm_Ind_Comp02.Qr_ProdFabrendimento_calc.AsString
                                           +'%', form_impres_ind_comp02.mNeg);
   end;


DM3.Tb_Texto.First;
While not DM3.Tb_Texto.Eof do
   begin
   if DM3.Tb_TextoCP_CHAVE.Value<>'TEXTOCAB' then
      begin
      DM3.Tb_Texto.Next;
      Continue;
      end;


   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   mboolean:=fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
                DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
                DM3.Tb_TextoCP_CODPRO.AsFloat,
                DM3.Tb_TextoCP_CHAVE.Value,mTextoTemp)=0;
   if (mSalvouTexto) and (mboolean) then
      begin
      Frm_Ind_Comp02.TextoTmp.Lines.LoadFromFile(mTextoTemp);
      mtamtexto:=length(Frm_Ind_Comp02.TextoTmp.Text);
      DeleteFile(mTextoTemp);
      for x:=0 to Frm_Ind_Comp02.TextoTmp.Lines.Count-1 do
         begin
         form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
         aux :=  Frm_Ind_Comp02.TextoTmp.FindText(Frm_Ind_Comp02.TextoTmp.Lines[x], 0,mtamtexto, []);
         If aux <> -1 Then
            Begin
            Frm_Ind_Comp02.TextoTmp.SelStart := Aux;
            Frm_Ind_Comp02.TextoTmp.SelLength := Length(Frm_Ind_Comp02.TextoTmp.Lines[x]);
            End;
         Frm_Ind_Comp02.FontDialog1.Font.Assign(Frm_Ind_Comp02.TextoTmp.SelAttributes);

         if Frm_Ind_Comp02.FontDialog1.Font.Size<8 then
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],mreduz)
         else if Frm_Ind_Comp02.FontDialog1.Font.Style=[fsbold] then
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],form_impres_ind_comp02.mNeg)
         else
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],mnormal);
         if form_impres_ind_comp02.mlin>62 then
            begin
            form_impres_ind_comp02.RDprint1.Novapagina;
            form_impres_ind_comp02.mlin:=1;
            form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,64,'Pagina: '+FormatFloat('00',form_impres_ind_comp02.mpag)+'/'+FormatFloat('00',mQtdPagTot),form_impres_ind_comp02.mNeg);
            form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
            end;
         end;
      end;
   DM3.Tb_Texto.Next;
   end;
{

form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        'Qtd.Real Obitida.....: _____________________________________ L/Kg:____________CX', mnormal);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        'Rendimento Final.....: _____________________________________ Data:____/____/____', mnormal);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        'Garantia de Qualidade: _____________________________________ Data:____/____/____', mnormal);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;

form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,insere2('-','-',80), mnormal);
}
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
if form_impres_ind_comp02.mlin>50 then
   begin
   form_impres_ind_comp02.RDprint1.Novapagina;
   form_impres_ind_comp02.mlin:=1;
   form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
   end;


form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,Centra('MATERIAS PRIMAS',' ',80), form_impres_ind_comp02.mNeg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'+------+-------------------------------------+----------+---------+--------+----------+--------+',form_impres_ind_comp02.m12ccp_neg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'|      |                                     |  Formula |Form.Pad.| Lote   |Quant.Util|        |',form_impres_ind_comp02.m12ccp_neg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'|Codigo|             Nome                    |Centesimal| (Kg/L)  |        |   (Kg/L) |  (RE)  |',form_impres_ind_comp02.m12ccp_neg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'+------+-------------------------------------+----------+---------+--------+----------+--------+',form_impres_ind_comp02.m12ccp_neg);
Frm_Ind_Comp02.Tb_Comp_MP.First;
While not Frm_Ind_Comp02.Tb_Comp_MP.Eof do
   begin
   form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
   form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'|'
                                  +insere(Frm_Ind_Comp02.Tb_Comp_MPCPCODMAT.AsString,' ',06)
                                  +'|'
                                  +insere2(Frm_Ind_Comp02.Tb_Comp_MPNOMPRO.AsString,' ',37)
                                  +'|'
                                  +centra(Frm_Ind_Comp02.Tb_Comp_MPObservacao.AsString,' ',10)
                                  +'|'
                                  +insere(Formatfloat(mcasind, Frm_Ind_Comp02.Tb_Comp_MPQTDFORM.Value),' ',09)
                                  +'|'
                                  +insere2(Frm_Ind_Comp02.Tb_Comp_MPCPMPNUM.AsString,' ',08)
                                  +'|__________|________|',form_impres_ind_comp02.m12ccp_neg);
   Frm_Ind_Comp02.Tb_Comp_MP.Next;
   if Frm_Ind_Comp02.Tb_Comp_MP.Eof then
      begin
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'+------+-------------------------------------+----------+---------+--------+----------+--------+',form_impres_ind_comp02.m12ccp_neg);
      end
   else if form_impres_ind_comp02.mlin>58 then
      begin
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'+------+-------------------------------------+----------+---------+--------+----------+--------+',form_impres_ind_comp02.m12ccp_neg);
      form_impres_ind_comp02.RDprint1.Novapagina;
      form_impres_ind_comp02.mlin:=1;
      form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,64,'Pagina: '+FormatFloat('00',form_impres_ind_comp02.mpag)+'/'+FormatFloat('00',mQtdPagTot),form_impres_ind_comp02.mNeg);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      end;
   end;

DM3.Tb_Texto.First;
While not DM3.Tb_Texto.Eof do
   begin
   if DM3.Tb_TextoCP_CHAVE.Value='TEXTOCAB' then
      begin
      DM3.Tb_Texto.Next;
      Continue;
      end;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   mboolean:=fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
                DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
                DM3.Tb_TextoCP_CODPRO.AsFloat,
                DM3.Tb_TextoCP_CHAVE.Value,mTextoTemp)=0;
   if (mSalvouTexto) and (mboolean) then
      begin
      Frm_Ind_Comp02.TextoTmp.Lines.LoadFromFile(mTextoTemp);
      mtamtexto:=length(Frm_Ind_Comp02.TextoTmp.Text);
      DeleteFile(mTextoTemp);
      for x:=0 to Frm_Ind_Comp02.TextoTmp.Lines.Count-1 do
         begin
         form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
         aux :=  Frm_Ind_Comp02.TextoTmp.FindText(Frm_Ind_Comp02.TextoTmp.Lines[x], 0,mtamtexto, []);
//         aux :=  Frm_Ind_Comp02.TextoTmp.FindText(trim(Frm_Ind_Comp02.TextoTmp.Lines[x]), 0,mtamtexto, []);
         If aux <> -1 Then
            Begin
            Frm_Ind_Comp02.TextoTmp.SelStart := Aux;
            Frm_Ind_Comp02.TextoTmp.SelLength := Length(Frm_Ind_Comp02.TextoTmp.Lines[x]);
            End;
         Frm_Ind_Comp02.FontDialog1.Font.Assign(Frm_Ind_Comp02.TextoTmp.SelAttributes);
         if Frm_Ind_Comp02.FontDialog1.Font.Size<8 then
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],mreduz)
         else if Frm_Ind_Comp02.FontDialog1.Font.Style=[fsbold] then
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],form_impres_ind_comp02.mNeg)
         else
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],mnormal);
         if form_impres_ind_comp02.mlin>62 then
            begin
            form_impres_ind_comp02.RDprint1.Novapagina;
            form_impres_ind_comp02.mlin:=1;
            form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,64,'Pagina: '+FormatFloat('00',form_impres_ind_comp02.mpag)+'/'+FormatFloat('00',mQtdPagTot),form_impres_ind_comp02.mNeg);
            form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
            end;
         end;
      end;
   DM3.Tb_Texto.Next;
   end;

if ptipo=1 then
   begin
   Frm_Ind_Comp02.Tb_FichaPesagem.First;
   if not Frm_Ind_Comp02.Tb_FichaPesagem.eof then
      form_impres_ind_comp02.RDprint1.Novapagina;
   x:=0;
   mcinst3:='';
   form_impres_ind_comp02.mlin:=1;
   While not Frm_Ind_Comp02.Tb_FichaPesagem.eof do
      begin
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'+----------------------------------------------------------+',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|           ETIQUETA DE PESAGEM MATERIA PRIMA              |',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Data: '+FormatDateTime(fdt2, Frm_Ind_Comp02.Tb_FichaPesagemDATADOC.Value)+insere('Lote: '+Frm_Ind_Comp02.Tb_FichaPesagemLOTE.AsString,' ',41)+' |',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Produto: '+insere2(Frm_Ind_Comp02.Tb_FichaPesagemNOMPRO.Value,' ',49)+'|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Materia Prima: '+insere2(Frm_Ind_Comp02.Tb_FichaPesagemNOMMAT.Value,' ',43)+'|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Lote(RE): '+insere2(Frm_Ind_Comp02.Tb_FichaPesagemLOTERE.Value,' ',48)+'|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Quantidade Pesada/Medida:_________________________________|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Pesada Por:_______________________________________________|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Conferida Por:____________________________________________|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'+----------------------------------------------------------+',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      x:=x+1;
      if x>1 then
         begin
         if form_impres_ind_comp02.mlin>57 then
            begin
            form_impres_ind_comp02.RDprint1.Novapagina;
            form_impres_ind_comp02.mlin:=1;
            end;
         mcinst3:='';
         X:=0;
         end
      else
         begin
         mcinst3:=insere2(' ',' ',66);
         form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin-11;
         end;
      Frm_Ind_Comp02.Tb_FichaPesagem.Next;
      end;
   end;
{


|Produto: 1234567890123456789012345678901234567890123456789|
|Lote...:                                                  |
|Materia Prima: 1234567890123456789012345678901234567890123|
|Quantidade Pesada/Medida:_________________________________|
|Pesada Por:_______________________________________________|
|Conferida Por:____________________________________________|
+----------------------------------------------------------+

+----------------------------------------------------------+
|           ETIQUETA DE PESAGEM MATERIA PRIMA              |
|Data: 01/11/2007                                          |
|Produto: 1234567890123456789012345678901234567890123456789|
|Lote...:                                                  |
|Materia Prima: 1234567890123456789012345678901234567890123|
|Quantidade Pesada/Medida:_________________________________|
|Pesada Por:_______________________________________________|
|Conferida Por:____________________________________________|
+----------------------------------------------------------+

}
if ptipo=0 then
   form_impres_ind_comp02.RDprint1.Abortar
else
   if form_impres_ind_comp02.RDprint1.Setup then form_impres_ind_comp02.RDprint1.Fechar;

{



                                        MATERIAS PRIMAS
+------+-------------------------------------+----------+---------+--------+----------+--------+
|      |             Nome                    |  Formula |Form.Pad.| Lote   |Quant.Util|        |
+------+-------------------------------------+----------+---------+--------+----------+--------+
|Codigo|             Nome                    |Centesimal| (Kg/L)  |        |   (Kg/L) |  (RE)  |
|123456|1234567890123456789012345678901234567|QSP100,00%| 123.123 |12345678|__________|________|


|      |             Nome                    |  Formula |Form.Pad.| Lote   |Quant.Util|        |
+------+-------------------------------------+----------+---------+--------+----------+--------+
|Codigo|             Nome                    |Centesimal| (Kg/L)  |        |   (Kg/L) |  (RE)  |
|123456|1234567890123456789012345678901234567|QSP100,00%| 123.123 |12345678|__________|________|


}

result:=form_impres_ind_comp02.mpag;
form_impres_ind_comp02.Free;
form_impres_ind_comp02:=nil;

end;

function TFrm_Ind_Comp02.fImprimirEnvase_RdPrint(pTipo: Integer): Integer;
{
ptipo=0 somente para saber quantas pagina
ptipo=1 impressao total
}

var
aux,x: Integer;
mTamTexto: Integer;
begin
if ptipo=0 then
   mQtdPagTot:=0;
testeform := TFrm_Ind_Comp02(FindGlobalComponent('form_impres_ind_comp02'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_ind_comp02);


form_impres_ind_comp02.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

form_impres_ind_comp02.mlin:=1;
form_impres_ind_comp02.mpag:=0;
Frm_Ind_Comp02.Qr_ProdFab.First;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,centra(DM1.Tb_EmpRAZAO.Value,' ',80),form_impres_ind_comp02.mneg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,centra('ORDEM DE PRODUCAO - FICHA DE ENVASE: '+Frm_Ind_Comp02.Qr_ProdFabCHAVEOP.AsString,' ',80),form_impres_ind_comp02.mneg);
form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,64,insere('Pagina: '+FormatFloat('00',form_impres_ind_comp02.mpag)+'/'+FormatFloat('00',mQtdPagTot),' ',16),form_impres_ind_comp02.mneg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        'Produto..............: ',form_impres_ind_comp02.mneg);
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        '                       '+Frm_Ind_Comp02.Qr_ProdFabCODPRO.AsString+' '+Frm_Ind_Comp02.Qr_ProdFabPDNOME.AsString,form_impres_ind_comp02.mneg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        'Apresentacao.........: ',form_impres_ind_comp02.mneg);
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        '                       '+Frm_Ind_Comp02.Qr_ProdFabPDAPRES.AsString,form_impres_ind_comp02.mneg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,insere2('Lote.................: '+Frm_Ind_Comp02.Qr_ProdFabLOTE.AsString ,' ',45)+' Dt.Vcto.: '+FormatDatetime('mm/yyyy', Frm_Ind_Comp02.Qr_ProdFabDATAVEN.Value), form_impres_ind_comp02.mneg);

//   form_impres_ind_comp02.Rdprint1.Impf(form_impres_ind_comp02.mlin,35,'Lote: '+insere2(DM3.Tb_Op02OP2_FAB_LOTE.AsString,' ',20)
//                              +' Vencimento: '+FormatDateTime('mm/yyyy', DM3.Tb_Op02OP2_FAB_VCTO.Value)

form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        '                      '+Frm_Ind_Comp02.Qr_ProdFabLOTE.AsString, form_impres_ind_comp02.mneg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,insere2('Date de Emissao......: '+FormatDateTime(fdt2, Frm_Ind_Comp02.Qr_ProdFabDATAEMI.Value),' ',45)+' Data de Fabricacao: ____/____/____', form_impres_ind_comp02.mneg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,        'Quantidade Teorica...: '+FormatFloat(mcasind, Frm_Ind_Comp02.Qr_ProdFabQTDTEORICA.Value)+' Unidades', form_impres_ind_comp02.mneg);

if Frm_Ind_Comp02.Qr_ProdFabOP1_STATUS.Value=2 then
   begin
   form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
   form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,insere2('Quantidade Real......: '+FormatFloat(mcasind, Frm_Ind_Comp02.Qr_ProdFabQTDREAL.Value)+' LITROS/KILOS',' ',45)
                                           +' Rendimento........: '+
                                           Frm_Ind_Comp02.Qr_ProdFabrendimento_calc.AsString
                                           +'%', form_impres_ind_comp02.mneg);
   end;

//form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
//form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,Centra('ENVASE OU FRACIONAMENTO',' ',80), mnormal);
//form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
//form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,insere2('-','-',80), mnormal);


DM3.Tb_Texto.First;
While not DM3.Tb_Texto.Eof do
   begin
   if DM3.Tb_TextoCP_CHAVE.Value<>'TEXTOCAB' then
      begin
      DM3.Tb_Texto.Next;
      Continue;
      end;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   mboolean:=fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
                DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
                DM3.Tb_TextoCP_CODPRO.AsFloat,
                DM3.Tb_TextoCP_CHAVE.Value,mTextoTemp)=0;
   if (mSalvouTexto) and (mboolean) then
      begin
      Frm_Ind_Comp02.TextoTmp.Lines.LoadFromFile(mTextoTemp);
      mtamtexto:=length(Frm_Ind_Comp02.TextoTmp.Text);
      DeleteFile(mTextoTemp);
      for x:=0 to Frm_Ind_Comp02.TextoTmp.Lines.Count-1 do
         begin
         form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
         aux :=  Frm_Ind_Comp02.TextoTmp.FindText(Frm_Ind_Comp02.TextoTmp.Lines[x], 0,mtamtexto, []);
         If aux <> -1 Then
            Begin
            Frm_Ind_Comp02.TextoTmp.SelStart := Aux;
            Frm_Ind_Comp02.TextoTmp.SelLength := Length(Frm_Ind_Comp02.TextoTmp.Lines[x]);
            End;
         Frm_Ind_Comp02.FontDialog1.Font.Assign(Frm_Ind_Comp02.TextoTmp.SelAttributes);

         if Frm_Ind_Comp02.FontDialog1.Font.Size<8 then
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],mreduz)
         else if Frm_Ind_Comp02.FontDialog1.Font.Style=[fsbold] then
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],form_impres_ind_comp02.mneg)
         else
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],mnormal);
         if form_impres_ind_comp02.mlin>62 then
            begin
            form_impres_ind_comp02.RDprint1.Novapagina;
            form_impres_ind_comp02.mlin:=1;
            form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,64,'Pagina: '+FormatFloat('00',form_impres_ind_comp02.mpag)+'/'+FormatFloat('00',mQtdPagTot),form_impres_ind_comp02.mneg);
            form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
            end;
         end;
      end;
   DM3.Tb_Texto.Next;
   end;
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
if form_impres_ind_comp02.mlin>50 then
   begin
   form_impres_ind_comp02.RDprint1.Novapagina;
   form_impres_ind_comp02.mlin:=1;
   form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
   end;

form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,Centra('MATERIAL DE EMBALAGEM',' ',80), form_impres_ind_comp02.mneg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'+------+------------------------------------------------+---------+--------+----------+--------+',form_impres_ind_comp02.m12ccp_neg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'|      |                                                |Form.Pad.| Lote   |Quant.Util|  Lote  |',form_impres_ind_comp02.m12ccp_neg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'|Codigo|             Nome                               | (Kg/L)  |        |   (Kg/L) |  (RE)  |',form_impres_ind_comp02.m12ccp_neg);
form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'+------+------------------------------------------------+---------+--------+----------+--------+',form_impres_ind_comp02.m12ccp_neg);


Frm_Ind_Comp02.Tb_Comp_MP.First;
While not Frm_Ind_Comp02.Tb_Comp_MP.Eof do
   begin
   form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
   form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'|'
                                  +insere(Frm_Ind_Comp02.Tb_Comp_MPCPCODMAT.AsString,' ',06)
                                  +'|'
                                  +insere2(Frm_Ind_Comp02.Tb_Comp_MPNOMPRO.AsString,' ',48)
                                  +'|'
                                  +insere(Formatfloat(mcasind, Frm_Ind_Comp02.Tb_Comp_MPQTDFORM.Value),' ',09)
                                  +'|'
                                  +insere2(Frm_Ind_Comp02.Tb_Comp_MPCPMPNUM.AsString,' ',08)
                                  +'|__________|________|',form_impres_ind_comp02.m12ccp_neg);
   Frm_Ind_Comp02.Tb_Comp_MP.Next;
   if Frm_Ind_Comp02.Tb_Comp_MP.Eof then
      begin
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'+------+------------------------------------------------+---------+--------+----------+--------+',form_impres_ind_comp02.m12ccp_neg);
      end
   else if form_impres_ind_comp02.mlin>58 then
      begin
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'+------+------------------------------------------------+---------+--------+----------+--------+',form_impres_ind_comp02.m12ccp_neg);
      form_impres_ind_comp02.RDprint1.Novapagina;
      form_impres_ind_comp02.mlin:=1;
      form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,64,'Pagina: '+FormatFloat('00',form_impres_ind_comp02.mpag)+'/'+FormatFloat('00',mQtdPagTot),form_impres_ind_comp02.mneg);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      end;
   end;

DM3.Tb_Texto.First;
While not DM3.Tb_Texto.Eof do
   begin
   if DM3.Tb_TextoCP_CHAVE.Value='TEXTOCAB' then
      begin
      DM3.Tb_Texto.Next;
      Continue;
      end;
   mTextoTemp:=fProcTemp(24);
   mSalvouTexto:=false;
   mboolean:=fAbrirTexto(1,DM3.Tb_TextoCP_CODEMP.AsInteger,
                DM3.Tb_TextoCP_CODPRO_EMPRO.AsFloat,
                DM3.Tb_TextoCP_CODPRO.AsFloat,
                DM3.Tb_TextoCP_CHAVE.Value,mTextoTemp)=0;
   if (mSalvouTexto) and (mboolean) then
      begin
      Frm_Ind_Comp02.TextoTmp.Lines.LoadFromFile(mTextoTemp);
      mtamtexto:=length(Frm_Ind_Comp02.TextoTmp.Text);
      DeleteFile(mTextoTemp);
      for x:=0 to Frm_Ind_Comp02.TextoTmp.Lines.Count-1 do
         begin
         form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
         aux :=  Frm_Ind_Comp02.TextoTmp.FindText(Frm_Ind_Comp02.TextoTmp.Lines[x], 0,mtamtexto, []);
         If aux <> -1 Then
            Begin
            Frm_Ind_Comp02.TextoTmp.SelStart := Aux;
            Frm_Ind_Comp02.TextoTmp.SelLength := Length(Frm_Ind_Comp02.TextoTmp.Lines[x]);
            End;
         Frm_Ind_Comp02.FontDialog1.Font.Assign(Frm_Ind_Comp02.TextoTmp.SelAttributes);

         if Frm_Ind_Comp02.FontDialog1.Font.Size<8 then
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],mreduz)
         else if Frm_Ind_Comp02.FontDialog1.Font.Style=[fsbold] then
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],form_impres_ind_comp02.mneg)
         else
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,frm_ind_comp02.TextoTmp.Lines[x],mnormal);
         if form_impres_ind_comp02.mlin>62 then
            begin
            form_impres_ind_comp02.RDprint1.Novapagina;
            form_impres_ind_comp02.mlin:=1;
            form_impres_ind_comp02.mpag:=form_impres_ind_comp02.mpag+1;
            form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,64,'Pagina: '+FormatFloat('00',form_impres_ind_comp02.mpag)+'/'+FormatFloat('00',mQtdPagTot),form_impres_ind_comp02.mneg);
            form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
            end;
         end;
      end;
   DM3.Tb_Texto.Next;
   end;

if ptipo=1 then
   begin
   Frm_Ind_Comp02.Tb_FichaPesagem.First;
   if not Frm_Ind_Comp02.Tb_FichaPesagem.eof then
      form_impres_ind_comp02.RDprint1.Novapagina;
   x:=0;
   mcinst3:='';
   form_impres_ind_comp02.mlin:=1;
   While not Frm_Ind_Comp02.Tb_FichaPesagem.eof do
      begin
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'+----------------------------------------------------------+',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|     ETIQUETA DE SEPARACAO DE MATERIAL DE EMBALAGEM       |',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Data: '+FormatDateTime(fdt2, Frm_Ind_Comp02.Tb_FichaPesagemDATADOC.Value)+insere('Lote: '+Frm_Ind_Comp02.Tb_FichaPesagemLOTE.AsString,' ',41)+' |',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Produto: '+insere2(Frm_Ind_Comp02.Tb_FichaPesagemNOMPRO.Value,' ',49)+'|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Mat.Embalagem: '+insere2(Frm_Ind_Comp02.Tb_FichaPesagemNOMMAT.Value,' ',43)+'|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Lote(RE): '+insere2(Frm_Ind_Comp02.Tb_FichaPesagemLOTERE.Value,' ',48)+'|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Quantidade Separada:______________________________________|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Separada Por:_____________________________________________|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'|Conferida Por:____________________________________________|',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,mcinst3+'+----------------------------------------------------------+',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      form_impres_ind_comp02.RDprint1.ImpF(form_impres_ind_comp02.mlin,01,'',mreduz);
      form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin+1;
      x:=x+1;
      if x>1 then
         begin
         if form_impres_ind_comp02.mlin>57 then
            begin
            form_impres_ind_comp02.RDprint1.Novapagina;
            form_impres_ind_comp02.mlin:=1;
            end;
         mcinst3:='';
         X:=0;
         end
      else
         begin
         mcinst3:=insere2(' ',' ',66);
         form_impres_ind_comp02.mlin:=form_impres_ind_comp02.mlin-11;
         end;
      Frm_Ind_Comp02.Tb_FichaPesagem.Next;
      end;
   end;
{


|Produto: 1234567890123456789012345678901234567890123456789|
|Lote...:                                                  |
|Materia Prima: 1234567890123456789012345678901234567890123|
|Quantidade Pesada/Medida:_________________________________|
|Pesada Por:_______________________________________________|
|Conferida Por:____________________________________________|
+----------------------------------------------------------+

+----------------------------------------------------------+
|           ETIQUETA DE PESAGEM MATERIA PRIMA              |
|Data: 01/11/2007                                          |
|Produto: 1234567890123456789012345678901234567890123456789|
|Lote...:                                                  |
|Materia Prima: 1234567890123456789012345678901234567890123|
|Quantidade Pesada/Medida:_________________________________|
|Pesada Por:_______________________________________________|
|Conferida Por:____________________________________________|
+----------------------------------------------------------+

}
if ptipo=0 then
   form_impres_ind_comp02.RDprint1.Abortar
else
   if form_impres_ind_comp02.RDprint1.Setup then form_impres_ind_comp02.RDprint1.Fechar;


{



                                        MATERIAS PRIMAS
+------+-------------------------------------+----------+---------+--------+----------+--------+
|      |             Nome                    |  Formula |Form.Pad.| Lote   |Quant.Util|        |
+------+-------------------------------------+----------+---------+--------+----------+--------+
|Codigo|             Nome                    |Centesimal| (Kg/L)  |        |   (Kg/L) |  (RE)  |
|123456|1234567890123456789012345678901234567|QSP100,00%| 123.123 |12345678|__________|________|


|      |             Nome                    |  Formula |Form.Pad.| Lote   |Quant.Util|        |
+------+-------------------------------------+----------+---------+--------+----------+--------+
|Codigo|             Nome                    |Centesimal| (Kg/L)  |        |   (Kg/L) |  (RE)  |
|123456|1234567890123456789012345678901234567|QSP100,00%| 123.123 |12345678|__________|________|


}

result:=form_impres_ind_comp02.mpag;
form_impres_ind_comp02.free;
form_impres_ind_comp02:=nil;
end;

procedure TFrm_Ind_Comp02.TextoCabChange(Sender: TObject);
begin
    UpdateCursorPos(00);

end;

procedure TFrm_Ind_Comp02.sbFonteCabClick(Sender: TObject);
begin

FontDialog1.Font.Assign(TextoCab.SelAttributes);

If FontDialog1.Execute Then
   begin
   If TextoCab.SelLength > 0 Then
      TextoCab.SelAttributes.Assign(FontDialog1.font)
   else
      TextoCab.DefAttributes.Assign(FontDialog1.Font);
   if not bbSalvarTextos.Enabled then
      bbSalvarTextos.Enabled:=true;
   end;


end;

procedure TFrm_Ind_Comp02.sbCorFundoCabClick(Sender: TObject);
begin
ColorDialog1.Color := TextoCab.Color;

If Colordialog1.Execute Then
   TextoCab.Color := ColorDialog1.Color;

end;

procedure TFrm_Ind_Comp02.TextoCabSelectionChange(Sender: TObject);
begin
    UpdateCursorPos(00);

end;

procedure TFrm_Ind_Comp02.Qr_ProdFabCalcFields(DataSet: TDataSet);
begin
Qr_ProdFabrendimento_calc.Value:=0;
if (Qr_ProdFabQTDPREV.AsFloat>0) and
   (Qr_ProdFabQTDREAL.AsFloat>0) then
   begin
   try
      Qr_ProdFabrendimento_calc.Value:=(Qr_ProdFabQTDPREV.Value*100)
                                      /Qr_ProdFabQTDREAL.Value;
   except
      Qr_ProdFabrendimento_calc.Value:=0;
      end;
   end;
end;

procedure TFrm_Ind_Comp02.BitBtn1Click(Sender: TObject);
begin
TextocAB.Lines.SaveToFile('C:\LDC.TXT');

end;

end.
