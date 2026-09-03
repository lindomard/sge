unit S_CobEle_Remessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Grids, db, dbtables, func, S_DM1,
  s_CobEle_Remessa_Local, S_PComRV, S_Impres, S_Bco,lerarq, DBGrids, DBCtrls, S_SelEmp,
  DBClient, RxDBComb, ToolEdit, RXDBCtrl, ComCtrls;

type
  TFrm_CobEle_Remessa = class(TForm)
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel3: TPanel;
    Label11: TLabel;
    Label27: TLabel;
    QTDDOC: TStaticText;
    TOTLIQ: TStaticText;
    panel_editcab: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbl_nome: TLabel;
    NUMLOT: TEdit;
    MDATA: TMaskEdit;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    Src_CadRemBco: TDataSource;
    RG_LAYOUT: TRadioGroup;
    bbGerar: TBitBtn;
    gb_pasta: TGroupBox;
    MPASTA: TEdit;
    bbProcurar: TBitBtn;
    bbNGerar: TBitBtn;
    MINSERLREM: TEdit;
    Label4: TLabel;
    Label19: TLabel;
    MHORA: TEdit;
    Tb_CadRemBco: TClientDataSet;
    Tb_CadRemBcoRECODEMP: TFloatField;
    Tb_CadRemBcoRELOTSEQ: TFloatField;
    Tb_CadRemBcoRECHAVE: TFloatField;
    Tb_CadRemBcoRECODBCO: TFloatField;
    Tb_CadRemBcoRELAYOUT: TFloatField;
    Tb_CadRemBcoRECODEMP_DUP: TFloatField;
    Tb_CadRemBcoRECODECF: TFloatField;
    Tb_CadRemBcoRENUMDUP: TFloatField;
    Tb_CadRemBcoREDESD: TStringField;
    Tb_CadRemBcoRETIPO: TFloatField;
    Tb_CadRemBcoRECODCLI: TFloatField;
    Tb_CadRemBcoREVALDUP: TFloatField;
    Tb_CadRemBcoRENOSNUM: TStringField;
    Tb_CadRemBcoREDNOSNUM: TStringField;
    Tb_CadRemBcoREHORREM: TTimeField;
    Tb_CadRemBcoRECODRET: TFloatField;
    Tb_CadRemBcoRECODCOM: TFloatField;
    Tb_CadRemBcoRECODCAR: TFloatField;
    Tb_CadRemBcoRECODVARCAR: TFloatField;
    Tb_CadRemBcoRECODPROT: TFloatField;
    Tb_CadRemBcoRECODPROT02: TFloatField;
    Tb_CadRemBcoRECODPROT03: TFloatField;
    Tb_CadRemBcoREPROTESTO_QTDD: TFloatField;
    Tb_CadRemBconomprot02: TStringField;
    Tb_CadRemBconomcom: TStringField;
    Tb_CadRemBconomcob: TStringField;
    Tb_CadRemBconomprot: TStringField;
    Tb_CadRemBcoREQTDMAN: TFloatField;
    Tb_CadRemBcoRESITREG: TFloatField;
    Tb_CadRemBcoREJURD: TFloatField;
    Tb_CadRemBcoREMULTA: TFloatField;
    Tb_CadRemBcoREQTDDM: TFloatField;
    Tb_CadRemBcoREACEITE: TStringField;
    Tb_CadRemBcoREESPECIE: TStringField;
    Tb_CadRemBcoRECODBAR: TStringField;
    Tb_CadRemBcoRECODDIG: TStringField;
    Tb_CadRemBcoRECUSBCO: TFloatField;
    Tb_CadRemBcoRETIPCOB: TFloatField;
    Tb_CadRemBcoRESTATUS: TFloatField;
    Tb_CadRemBcoREORDEM: TFloatField;
    Tb_CadRemBcoREOBS: TStringField;
    Tb_CadRemBcoRERAZAO: TStringField;
    Tb_CadRemBcoREDESCD: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    lbl_cheio: TLabel;
    Label16: TLabel;
    lbl_CODPROT_QTDD: TLabel;
    lbl_codcar_c006: TLabel;
    item_pesquisar: TBitBtn;
    CB_CODCON: TComboBox;
    CB_CODPROT: TComboBox;
    CB_CODPROT02: TComboBox;
    ED_CODPROT_QTDD: TEdit;
    cb_codcar_c006: TComboBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBE_RECODCAR: TDBEdit;
    DBE_nomcob: TDBEdit;
    DBE_REDESCF: TDBEdit;
    DBE_REDESCD: TDBEdit;
    DBE_REMULTA: TDBEdit;
    DBE_REJURD: TDBEdit;
    DBE_REPROTESTO_QTDD: TDBEdit;
    RxDB_CODCON: TRxDBComboBox;
    RxDB_CODPROT: TRxDBComboBox;
    RxDB_CODPROT02: TRxDBComboBox;
    DBE_REDTDESCF: TDBDateEdit;
    rxdb_REDTVCTO: TDBDateEdit;
    DBNavigator1: TDBNavigator;
    GroupBox3: TGroupBox;
    gb_header_lote: TGroupBox;
    Panel2: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    edt_header_lote_versao_layout: TEdit;
    gb_header_arquivo: TGroupBox;
    edt_header_20_versao_layout: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox4: TGroupBox;
    Label30: TLabel;
    Label22: TLabel;
    Label29: TLabel;
    cb_codigo_baixa_para_devolucao: TComboBox;
    Label44: TLabel;
    Label45: TLabel;
    edt_cnab240_ha_densidade: TEdit;
    Label46: TLabel;
    Label23: TLabel;
    Label47: TLabel;
    edt_cnab240_dig_agencia_conta: TEdit;
    Tb_CadRemBcoREDATREM: TDateTimeField;
    Tb_CadRemBcoREDTVCTO: TDateTimeField;
    Tb_CadRemBcoREDTDESCF: TDateTimeField;
    Tb_CadRemBcoREDTEMIS: TDateTimeField;
    Tb_CadRemBcoREDATRET: TDateTimeField;
    Tb_CadRemBcoREDESCF: TFloatField;
    Tb_CadRemBcoRETIT_CHAVE_ID_ANO: TIntegerField;
    Tb_CadRemBcoRETIT_CHAVE_ID: TIntegerField;
    Tb_CadRemBcoqtdrem: TIntegerField;
    lblLegenda: TLabel;
    cb_homologacao: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure Tb_CadRemBcoCalcFields(DataSet: TDataSet);
    procedure CODBCOExit(Sender: TObject);
    procedure CB_CODCONExit(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure item_pesquisarClick(Sender: TObject);
    procedure Tb_CadRemBcoAfterInsert(DataSet: TDataSet);
    procedure Tb_CadRemBcoAfterPost(DataSet: TDataSet);
    procedure Tb_CadRemBcoAfterEdit(DataSet: TDataSet);
    procedure Tb_CadRemBcoAfterCancel(DataSet: TDataSet);
    procedure Tb_CadRemBcoBeforeDelete(DataSet: TDataSet);
    procedure Tb_CadRemBcoBeforePost(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure CB_CODCONEnter(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure bbNGerarClick(Sender: TObject);
    procedure bbProcurarClick(Sender: TObject);
    procedure MINSERLREMExit(Sender: TObject);
    procedure MPASTAExit(Sender: TObject);
    procedure CODBCOEnter(Sender: TObject);
    procedure CB_CODPROTClick(Sender: TObject);
    procedure CB_CODPROT02Click(Sender: TObject);
    procedure RG_LAYOUTClick(Sender: TObject);
    procedure cb_codcar_c006Click(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ED_CODPROT_QTDDExit(Sender: TObject);
    procedure DBE_REPROTESTO_QTDDExit(Sender: TObject);
  private
    { Private declarations }
    function fTestaDup(ptipo:Integer): Boolean;


    function fValidardados:Boolean;


    function fRetornaParcelaUnica(pChaveId,pChaveid_ano,pCodEmp: Integer): string;

    procedure fCarregarDados(pchave: integer);


  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;

    function fCobEle_rem104Cnab400(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;

  end;

function fCobEle_rem001Cnab4006001dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;
function fCobEle_rem001Cnab2406001dig(ptipo,pCodAge,pCodCed: integer; pCodConv: string; pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta,pCodCar, pVarCar: String;pDateRem: TDate): Boolean;
function fCobEle_rem001Cnab4007001dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;

function fCobEle_rem237Cnab4007237dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;

function fCobEle_rem341Cnab400(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;

function fCobEle_rem353008033Cnab240(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;

function fCobEle_rem399Cnab240399dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate; pHoraRem: TTime): Boolean;

function fCobEle_rem756Cnab4000756dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate; pHoraRem: TTime): Boolean;

function fCobEle_rem756Cnab240756(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate; pHoraRem: TTime): Boolean;


var
  Frm_CobEle_Remessa: TFrm_CobEle_Remessa;
  mTabTmp: String;
  mlin: Integer;
  mnumlot: Integer;
  mnumbco: Integer;
  moper: Integer=0;
  moper_item: Integer=0; // 0 inclusao 1-alteracao
  mOrdem_item: Integer=0;
  mChaveLote: Real;
  mQtdMan: Integer;
  mQtdDup: Integer;
  mTotalDup: Real;
  mValorAnt: Real;
  mcodbco_Ant: Real;
implementation

uses S_DM5, func_excecoes, S_DM2, S_C, S_CobEle_Remessa_Pesq, S_DefBac,
  S_DM4, s_CobEle_Remessa_Outras;

{$R *.dfm}
procedure TFrm_CobEle_Remessa.bbNGerarClick(Sender: TObject);
var
mnumseqrem: integer;
begin
if MPASTA.Text[length(MPASTA.Text)]='\' then
   MPASTA.Text:=copy(MPASTA.Text,1,length(MPASTA.Text)-1);
if not flcadbco(1,0,0,CODBCO.Text) then
   begin
   verteclado(0);
   fmensagem('Banco não Cadastrado!',0,['0'],0);
   exit;
   end;


if not DirectoryExists(MPASTA.Text) then
   begin
   fmensagem('Favor Selecione uma pasta válida!',0,['0'],0);
   bbProcurar.SetFocus;
   exit;
   end;

if (valfloat(DM1.Tb_BcoBCCODCED.AsString)=0) and (DM1.Tb_BcoBCNUMBCO.AsInteger<>399) then
   begin
   fmensagem('Conta/Cedente tem que ser colocado. '
            +'Entre em Cadastro->Bancos->Manutencao->Conta/Cedente '
            +'e preencha!',0,['0'],0);
   exit;
   end;

if ((trim(DM1.Tb_BcoBCDIGCED.AsString)='_') or (trim(DM1.Tb_BcoBCDIGCED.AsString)=''))  and (DM1.Tb_BcoBCNUMBCO.AsInteger<>399)  then
   begin
   fmensagem('Digito da Conta/Cedente tem que ser colocado. '
            +'Entre em Cadastro->Bancos->Manutencao->Digito '
            +'e preencha!',0,['0'],0);
   exit;
   end;

if (DM1.Tb_BcoBCNUMBCO.Value=0)   then
   begin
   fmensagem('Numero do Banco tem que ser colocado. '
            +'Entre em Cadastro->Bancos->Manutencao->Numero do Banco '
            +'e preencha!',0,['0'],0);
   exit;
   end;
if ((trim(DM1.Tb_BcoBCDIGNCO.AsString)='_') or (trim(DM1.Tb_BcoBCDIGNCO.AsString)='')) and (DM1.Tb_BcoBCNUMBCO.AsInteger<>399)  then
   begin
   fmensagem('Numero do digito do Banco tem que ser colocado. '
            +'Entre em Cadastro->Bancos->Manutencao->Numero do Banco Digito'
            +'e preencha!',0,['0'],0);
   exit;
   end;

if (fsonumero(DM1.Tb_BcoBCCODAGE.Value)=0)  and (DM1.Tb_BcoBCNUMBCO.AsInteger<>399)  then
   begin
   fmensagem('Codigo da Agencia tem que ser colocado. '
            +'Entre em Cadastro->Bancos->Manutencao->Codigo da Agencia '
            +'e preencha!',0,['0'],0);
   exit;
   end;

if ((trim(DM1.Tb_BcoBCDIGAGE.AsString)='_') or (trim(DM1.Tb_BcoBCDIGAGE.AsString)=''))  and (DM1.Tb_BcoBCNUMBCO.AsInteger<>399)  then
   begin
   fmensagem('Digito da Agencia tem que ser colocado. '
            +'Entre em Cadastro->Bancos->Manutencao->Codigo da Agencia Digito '
            +'e preencha!',0,['0'],0);
   exit;
   end;

if not fValidardados then
   exit;
if DM1.Tb_BcoBCNUMBCO.Value=001   then
   begin
   if length(DM1.Tb_BcoBCNUMCON.AsString)=6 then
      begin
      if RG_LAYOUT.ItemIndex=0 then
        begin
        if not fCobEle_rem001Cnab4006001dig(0
                               ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                               ,valint(DM1.Tb_BcoBCCODCED.Value)
                               ,valint(DM1.Tb_BcoBCNUMCON.Value)
                               ,valint(NUMLOT.Text)
                               ,DM1.Tb_BcoBCDIGAGE.Value
                               ,DM1.Tb_BcoBCDIGCED.Value
                               ,DM1.Tb_BcoBCNOMTIT.Value
                               ,DM1.Tb_BcoBCDIGCON.Value
                               ,MPASTA.Text
                               ,StrToDate(MDATA.Text)) then
          begin
          fmensagem('Arquivo não Gerado!',0,['0'],0);
          end;
        end
      else
        begin
        if not fCobEle_rem001Cnab2406001dig(1
                               ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                               ,valint(DM1.Tb_BcoBCCODCED.Value)
                               ,DM1.Tb_BcoBCNUMCON.Value
                               ,valint(NUMLOT.Text)
                               ,DM1.Tb_BcoBCDIGAGE.Value
                               ,DM1.Tb_BcoBCDIGCED.Value
                               ,DM1.Tb_BcoBCNOMTIT.Value
                               ,DM1.Tb_BcoBCDIGCON.Value
                               ,MPASTA.Text
                               ,DM1.Tb_BcoBCCODCAR.Value
                               ,DM1.Tb_BcoBCCODVAR.Value
                               ,StrToDate(MDATA.Text)) then
          begin
          fmensagem('Arquivo não Gerado!',0,['0'],0);
          end;
        end;
      end
   else if length(DM1.Tb_BcoBCNUMCON.AsString)=7 then
      begin
      if RG_LAYOUT.ItemIndex=0 then
        begin
        if not fCobEle_rem001Cnab4007001dig(0
                               ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                               ,valint(DM1.Tb_BcoBCCODCED.Value)
                               ,valint(DM1.Tb_BcoBCNUMCON.Value)
                               ,valint(NUMLOT.Text)
                               ,DM1.Tb_BcoBCDIGAGE.Value
                               ,DM1.Tb_BcoBCDIGCED.Value
                               ,DM1.Tb_BcoBCNOMTIT.Value
                               ,DM1.Tb_BcoBCDIGCON.Value
                               ,MPASTA.Text
                               ,StrToDate(MDATA.Text)) then
          begin
          fmensagem('Arquivo não Gerado!',0,['0'],0);
          end;
        end
      else
        begin
        if not fCobEle_rem001Cnab2406001dig(1
                               ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                               ,valint(DM1.Tb_BcoBCCODCED.Value)
                               ,DM1.Tb_BcoBCNUMCON.Value
                               ,valint(NUMLOT.Text)
                               ,DM1.Tb_BcoBCDIGAGE.Value
                               ,DM1.Tb_BcoBCDIGCED.Value
                               ,DM1.Tb_BcoBCNOMTIT.Value
                               ,DM1.Tb_BcoBCDIGCON.Value
                               ,MPASTA.Text
                               ,DM1.Tb_BcoBCCODCAR.Value
                               ,DM1.Tb_BcoBCCODVAR.Value
                               ,StrToDate(MDATA.Text)) then
          begin
          fmensagem('Arquivo não Gerado!',0,['0'],0);
          end;
        end;
      end
   else
      begin
      MessageDlg('Número do Convenio: '+DM1.Tb_BcoBCNUMCON.AsString+' é invalido. Tamanho do Numero do Convenio'+#13
                +' deve conter 6 ou 7 caracteres!',mtWarning,[mbOK],0);
      end;
   end;

if DM1.Tb_BcoBCNUMBCO.Value=341   then
   begin
   if not fCobEle_rem341Cnab400(0
                             ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                             ,valint(DM1.Tb_BcoBCCODCED.Value)
                             ,valint(DM1.Tb_BcoBCNUMCON.Value)
                             ,valint(NUMLOT.Text)
                             ,DM1.Tb_BcoBCDIGAGE.Value
                             ,DM1.Tb_BcoBCDIGCED.Value
                             ,DM1.Tb_BcoBCNOMTIT.Value
                             ,DM1.Tb_BcoBCDIGCON.Value
                             ,MPASTA.Text
                             ,StrToDate(MDATA.Text)) then
      begin
      fmensagem('Arquivo não Gerado!',0,['0'],0);
      end;
   end;

if DM1.Tb_BcoBCNUMBCO.Value=104   then
   begin
   if not fCobEle_rem104Cnab400(0
                             ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                             ,valint(DM1.Tb_BcoBCCODCED.Value)
                             ,valint(DM1.Tb_BcoBCNUMCON.Value)
                             ,valint(NUMLOT.Text)
                             ,DM1.Tb_BcoBCDIGAGE.Value
                             ,DM1.Tb_BcoBCDIGCED.Value
                             ,DM1.Tb_BcoBCNOMTIT.Value
                             ,DM1.Tb_BcoBCDIGCON.Value
                             ,MPASTA.Text
                             ,StrToDate(MDATA.Text)) then
      begin
      fmensagem('Arquivo não Gerado!',0,['0'],0);
      end;
   end;

if DM1.Tb_BcoBCNUMBCO.Value=399   then
  begin
  if RG_LAYOUT.ItemIndex=1 then
    begin
    if not  fCobEle_rem399Cnab240399dig(1
                             ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                             ,valint(DM1.Tb_BcoBCCODCED.Value)
                             ,valint(DM1.Tb_BcoBCNUMCON.Value)
                             ,valint(NUMLOT.Text)
                             ,DM1.Tb_BcoBCDIGAGE.Value
                             ,DM1.Tb_BcoBCDIGCED.Value
                             ,DM1.Tb_BcoBCNOMTIT.Value
                             ,DM1.Tb_BcoBCDIGCON.Value
                             ,MPASTA.Text
                             ,StrToDate(MDATA.Text)
                             ,StrToTime(MHORA.Text)) then
      begin
      fmensagem('Arquivo não Gerado!',0,['0'],0);
      end;
    end
  else
    begin
    fmensagem('Versão do Layout não disponivel!',0,['0'],0);
    end;

  end;


if DM1.Tb_BcoBCNUMBCO.Value=756   then
  begin
  if RG_LAYOUT.ItemIndex=0 then
    begin
    if not  fCobEle_rem756Cnab4000756Dig(1
                             ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                             ,valint(DM1.Tb_BcoBCCODCED.Value)
                             ,valint(DM1.Tb_BcoBCNUMCON.Value)
                             ,valint(NUMLOT.Text)
                             ,DM1.Tb_BcoBCDIGAGE.Value
                             ,DM1.Tb_BcoBCDIGCED.Value
                             ,DM1.Tb_BcoBCNOMTIT.Value
                             ,DM1.Tb_BcoBCDIGCON.Value
                             ,MPASTA.Text
                             ,StrToDate(MDATA.Text)
                             ,StrToTime(MHORA.Text)) then
      begin
      fmensagem('Arquivo não Gerado!',0,['0'],0);
      end;
    end
  else
    begin
    if not fCobEle_rem756Cnab240756(1
                             ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                             ,valint(DM1.Tb_BcoBCCODCED.Value)
                             ,valint(DM1.Tb_BcoBCNUMCON.Value)
                             ,valint(NUMLOT.Text)
                             ,DM1.Tb_BcoBCDIGAGE.Value
                             ,DM1.Tb_BcoBCDIGCED.Value
                             ,DM1.Tb_BcoBCNOMTIT.Value
                             ,DM1.Tb_BcoBCDIGCON.Value
                             ,MPASTA.Text
                             ,StrToDate(MDATA.Text)
                             ,StrToTime(MHORA.Text)) then
      begin
      fmensagem('Arquivo não Gerado!',0,['0'],0);
      end;
    end;
  end;


{
if trim(codbco.text)='001' then
   begin
   if not fCobEle_rem001Cnab4007001dig(0
                             ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                             ,valint(DM1.Tb_BcoBCCODCED.Value)
                             ,valint(DM1.Tb_BcoBCNUMCON.Value)
                             ,valint(NUMLOT.Text)
                             ,DM1.Tb_BcoBCDIGAGE.Value
                             ,DM1.Tb_BcoBCDIGCED.Value
                             ,DM1.Tb_BcoBCNOMTIT.Value
                             ,DM1.Tb_BcoBCDIGCON.Value
                             ,MPASTA.Text
                             ,StrToDate(MDATA.Text)) then
   begin
   fmensagem('Arquivo não Gerado!',0,['0'],0);
   end;
   end;
}
if DM1.Tb_BcoBCNUMBCO.Value=237   then
   begin
   if valfloat(DM1.Tb_BcoBCNUMCON.Value)=0 then
      begin
      fmensagem('Numero do Codigo do Cliente no Banco tem que ser colocado. '
               +'Entre em Cadastro->Bancos->Manutencao->Conv/Cod.Cliente no Banco '
               +'e preencha!',0,['0'],0);
      exit;
      end;
   if length(trim(DM1.Tb_BcoBCNOMTIT.AsString))<3 then
      begin
      fmensagem('Nome do Titular da Conta tem que ser colocado. '
               +'Entre em Cadastro->Bancos->Manutencao->Nome do Titular '
               +'e preencha!',0,['0'],0);
      exit;
      end;
//                             ,valint(MINSERLREM.Text)+valint(NUMLOT.Text)



   mnumseqrem:=fBuscareTestarID('REMBCO2371CNAB400');
   if not fCobEle_rem237Cnab4007237dig(0
                             ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                             ,valint(DM1.Tb_BcoBCCODCED.Value)
                             ,valint(DM1.Tb_BcoBCNUMCON.Value)
                             ,valint(MINSERLREM.Text)+mnumseqrem
                             ,DM1.Tb_BcoBCDIGAGE.Value
                             ,DM1.Tb_BcoBCDIGCED.Value
                             ,DM1.Tb_BcoBCNOMTIT.Value
                             ,DM1.Tb_BcoBCDIGCON.Value
                             ,MPASTA.Text
                             ,StrToDate(MDATA.Text)) then


     begin
      fmensagem('Arquivo não Gerado!',0,['0'],0);
     end;
   end;
if (DM1.Tb_BcoBCNUMBCO.Value=353) or (DM1.Tb_BcoBCNUMBCO.Value=008) or (DM1.Tb_BcoBCNUMBCO.Value=033) then
   begin
   if valfloat(DM1.Tb_BcoBCNUMCON.Value)=0 then
      begin
      fmensagem('Numero do Codigo do Cliente no Banco tem que ser colocado. '
               +'Entre em Cadastro->Bancos->Manutencao->Conv/Cod.Cliente no Banco '
               +'e preencha!',0,['0'],0);
      exit;
      end;
   if length(trim(DM1.Tb_BcoBCNOMTIT.AsString))<3 then
      begin
      fmensagem('Nome do Titular da Conta tem que ser colocado. '
               +'Entre em Cadastro->Bancos->Manutencao->Nome do Titular '
               +'e preencha!',0,['0'],0);
      exit;
      end;

   if RG_LAYOUT.ItemIndex=0 then
     begin
     fmensagem('Modelo layout CNAB400. Inexistente!',0,['0'],0);
     end
   else
     begin
     if not fCobEle_rem353008033Cnab240(0
                             ,ValInt(DM1.Tb_BcoBCCODAGE.Value)
                             ,valint(DM1.Tb_BcoBCCODCED.Value)
                             ,valint(DM1.Tb_BcoBCNUMCON.Value)
                             ,valint(MINSERLREM.Text)+valint(NUMLOT.Text)
                             ,DM1.Tb_BcoBCDIGAGE.Value
                             ,DM1.Tb_BcoBCDIGCED.Value
                             ,DM1.Tb_BcoBCNOMTIT.Value
                             ,DM1.Tb_BcoBCDIGCON.Value
                             ,MPASTA.Text
                             ,StrToDate(MDATA.Text)) then


       begin
       fmensagem('Arquivo não Gerado!',0,['0'],0);
       end;
     end;
   end;

bbGerar.SetFocus;
gb_pasta.Visible:=false;

end;

procedure TFrm_CobEle_Remessa.FormCreate(Sender: TObject);
begin

PageControl1.activepageindex:=0;

Tb_CadRemBco.CreateDataSet;
if flfilpad(-2,'_COBELE_REMESSA','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP',uppercase(edt_header_lote_versao_layout.name),[]) then
      edt_header_lote_versao_layout.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP',uppercase(edt_cnab240_ha_densidade.name),[]) then
      edt_cnab240_ha_densidade.Text:=DM4.Tb_FilPad2FPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP',uppercase(edt_header_lote_versao_layout.name),[]) then
      edt_header_lote_versao_layout.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP',uppercase(edt_cnab240_dig_agencia_conta.name),[]) then
      edt_cnab240_dig_agencia_conta.text :=DM4.Tb_FilPad2FPVALOR.Value;
   end;



if flfilpad(codusr,'_COBELE_REMESSA','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','MPASTA',[]) then
      MPASTA.Text:=DM4.Tb_FilPad2FPVALOR.Value;
//   if DM4.Tb_FilPad2.Locate('FPCOMP','MINSERLREM',[]) then
//      MINSERLREM.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   end;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
{if ce_empsel=2 then
   begin
   lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOAMBAS.Value;
   lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXAMBAS.AsInteger;
   end
else if ce_empsel=1 then
   begin
   lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
   lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
   end
else
   begin}
   lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
   lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
//   end;

Tb_CadRemBcoREVALDUP.DisplayFormat:=mcasas;
Tb_CadRemBcoREDATREM.DisplayFormat:=fdt2;
Tb_CadRemBcoREDATRET.DisplayFormat:=fdt2;
Tb_CadRemBcoREDTEMIS.DisplayFormat:=fdt2;
Tb_CadRemBcoREDTVCTO.DisplayFormat:=fdt2;
Tb_CadRemBcoREDESCF.DisplayFormat :=mcasas;
Tb_CadRemBcoREDTDESCF.DisplayFormat:=fdt2;
Tb_CadRemBcoREJURD.DisplayFormat   :=mcasas;
Tb_CadRemBcoREDESCD.DisplayFormat  :=mcasas;
Tb_CadRemBcoREMULTA.DisplayFormat  :=mcasas;


end;

procedure TFrm_CobEle_Remessa.BBLIMPARClick(Sender: TObject);
begin
RxDB_CODCON.Enabled        :=false;
RxDB_CODPROT.Enabled       :=false;
RxDB_CODPROT02.Enabled     :=false;

DBE_RECODCAR.ReadOnly       :=true;
DBE_REPROTESTO_QTDD.ReadOnly:=true;
rxdb_REDTVCTO.ReadOnly      :=true;
DBE_REDESCF.ReadOnly        :=true;
DBE_REDTDESCF.ReadOnly      :=true;
DBE_REDESCD.ReadOnly        :=true;
DBE_REMULTA.ReadOnly        :=true;
DBE_REJURD.ReadOnly         :=true;











NUMLOT.Text    :='';
MDATA.Text     :='/  /';
CODBCO.Text    :='';
NOMBCO.Text    :='';
QTDDOC.Caption :='';
TOTLIQ.Caption :='';
CB_CODCON.Text :='';
CB_CODPROT.Text:='';
Tb_CadRemBco.EmptyDataSet;
moper:=0;
panel_editcab.Enabled :=False;
Panel5.Enabled        :=False;
DBNavigator1.Enabled  :=False;
BBINCLUIR.Enabled     :=True;
BBLOCALIZAR.Enabled   :=True;
BBALTERAR.Enabled     :=False;
BBEXCLUIR.Enabled     :=False;
BBGRAVAR.Enabled      :=False;
BBIMPRIMIR.Enabled    :=False;
bbGerar.Enabled       :=False;
end;

procedure TFrm_CobEle_Remessa.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CobEle_Remessa.BBINCLUIRClick(Sender: TObject);
begin
If BBGRAVAR.Enabled then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                 +'Deseja gravar agora?',0,['1','2'],0) of
      mrYes: BBGRAVAR.Click;
      end;
   end;
BBLIMPAR.Click;
mQtdMan:=0;
panel_editcab.Enabled  :=True;
Panel5.Enabled         :=true;
DBNavigator1.Enabled   :=True;
BBINCLUIR.Enabled      :=False;
BBLOCALIZAR.Enabled    :=False;
BBALTERAR.Enabled      :=False;
BBEXCLUIR.Enabled      :=False;
BBGRAVAR.Enabled       :=True;
BBIMPRIMIR.Enabled     :=False;
bbGerar.Enabled        :=False;

MDATA.Text:=FormatDateTime(Fdt2,pdatasis);
mQtdDup  :=0;
mTotalDup:=0;
mValorAnt:=0;

moper:=0;
moper_item :=0;
mOrdem_item:=0;

MDATA.SetFocus;
end;

procedure TFrm_CobEle_Remessa.BBLOCALIZARClick(Sender: TObject);
begin
if moper<>3 then
   begin
   if Frm_CobEle_Remessa=nil then
      Application.CreateForm(TFrm_CobEle_Remessa_Local, Frm_CobEle_Remessa_Local)
   else
      begin
      Frm_CobEle_Remessa_Local.free;
      Frm_CobEle_Remessa_Local:=nil;
      Application.CreateForm(TFrm_CobEle_Remessa_Local, Frm_CobEle_Remessa_Local);
      end;
   Frm_CobEle_Remessa_Local.ShowModal;
   mnumlot:=Frm_CobEle_Remessa_Local.Qr_RemBcoRECHAVE.AsInteger;
   mnumbco:=Frm_CobEle_Remessa_Local.Qr_RemBcoRECODBCO.AsInteger;
   Frm_CobEle_Remessa_Local.Free;
   Frm_CobEle_Remessa_Local:=nil;
   fCarregarDados(mnumlot);

   end;
end;


procedure TFrm_CobEle_Remessa.fCarregarDados(pchave: integer);
var
x: Integer;
begin




Tb_CadRemBco.Open;
BBLIMPAR.Click;
//ShowMessage('Numero do lote: '+FloatTostr(mnumlot));
if mnumlot<>0 then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADREMBCO','RECODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add(' Select '
                     +' RECODEMP '
                     +',RELOTSEQ'
                     +',RECHAVE '
                     +',RECODBCO '
                     +',RELAYOUT '
                     +',RECODEMP_DUP '
                     +',RENUMDUP '
                     +',REDESD '
                     +',RETIPO '
                     +',REVALDUP '
                     +',RENOSNUM '
                     +',REDNOSNUM '
                     +',TO_CHAR(REDATREM,'+chr(39)+'DD/MM/YYYY'+chr(39)+') AS REDATREM '
                     +',TO_CHAR(REDATREM,'+chr(39)+'HH:MM:SS'+chr(39)+') AS REHORREM '
                     +',REDATRET '
                     +',RECODRET '
                     +',RECODCOM '
                     +',RECODCAR '
                     +',RECODVARCAR '
                     +',RECODPROT '
                     +', RECODPROT02 '
                     +', RECODPROT03 '
                     +', REPROTESTO_QTDD '
                     +',REQTDMAN '
                     +',RESITREG '
                     +',REDTEMIS '
                     +',RECODCLI '
                     +',RECODECF '
                     +',REDTVCTO '
                     +',REDESCF '
                     +',REDTDESCF '
                     +',REJURD '
                     +',REDESCD '
                     +',REMULTA '
                     +',REQTDDM '
                     +',REACEITE '
                     +',REESPECIE '
                     +',RECODBAR  '
                     +',RECODDIG '
                     +',RECUSBCO '
                     +',RETIPCOB '
                     +',RESTATUS '
                     +',REORDEM '
                     +',REOBS '
                     +',CRAZAO '
                     +',RETIT_CHAVE_ID_ANO '
                     +',RETIT_CHAVE_ID '
                     +',nvl( (select count(*) from CADREMBCO OUTROS where OUTROS.RETIT_CHAVE_ID_ANO=ATUAL.RETIT_CHAVE_ID_ANO '
                     +' and OUTROS.RETIT_CHAVE_ID=ATUAL.RETIT_CHAVE_ID '
                     +' and OUTROS.RECODEMP=ATUAL.RECODEMP and RECHAVE<>'+IntToStr(mnumlot)+'),0) as qtdrem '
                     +'  from CADREMBCO ATUAL, CADCLI where '
                     +iif(la_Empresas='','',la_empresas+' and ')
                     +' RELOTSEQ=0 '
                     +' and RECHAVE=0'+IntToStr(mnumlot)
                     +' and RECODBCO=0'+IntToStr(mnumbco)
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=0'+IntToStr(codemp))
                     +' and CCODCLI=RECODCLI order by RENUMDUP ' );
   try
      DM1.Query2.Open;
     except on e : exception do
        begin
        ex_erroSql_Novo(dm1.Query2,818,'SGE','CADREMBCO_OUTROS');
        end;
        end;
//     ex_erroSql_Novo(dm1.Query2,818,'SGE','CADREMBCO_OUTROS');

   DM1.Query2.First;
   mQtdDup  :=0;
   mTotalDup:=0;
   while not DM1.Query2.Eof do
     begin
     Tb_CadRemBco.Append;
     Tb_CadRemBcoRECODEMP.AsString:= DM1.Query2.FieldByName('RECODEMP').AsString;
     Tb_CadRemBcoRELOTSEQ.AsString:= DM1.Query2.FieldByName('RELOTSEQ').AsString;
     Tb_CadRemBcoRECHAVE.AsString:= DM1.Query2.FieldByName('RECHAVE').AsString;
     Tb_CadRemBcoRECODBCO.AsString:= DM1.Query2.FieldByName('RECODBCO').AsString;
     Tb_CadRemBcoRELAYOUT.AsString:= DM1.Query2.FieldByName('RELAYOUT').AsString;
     Tb_CadRemBcoRECODEMP_DUP.AsString:= DM1.Query2.FieldByName('RECODEMP_DUP').AsString;
     Tb_CadRemBcoRENUMDUP.AsString:= DM1.Query2.FieldByName('RENUMDUP').AsString;
     Tb_CadRemBcoREDESD.AsString:= DM1.Query2.FieldByName('REDESD').AsString;
     Tb_CadRemBcoRETIPO.AsString:= DM1.Query2.FieldByName('RETIPO').AsString;
     Tb_CadRemBcoREVALDUP.AsString:= DM1.Query2.FieldByName('REVALDUP').AsString;
     Tb_CadRemBcoRENOSNUM.AsString:= DM1.Query2.FieldByName('RENOSNUM').AsString;
     Tb_CadRemBcoREDNOSNUM.AsString:= DM1.Query2.FieldByName('REDNOSNUM').AsString;
     Tb_CadRemBcoREDATREM.AsDateTime:= DM1.Query2.FieldByName('REDATREM').AsDateTime;
     Tb_CadRemBcoREHORREM.AsDateTime:= DM1.Query2.FieldByName('REHORREM').AsDateTime;
     Tb_CadRemBcoREDATRET.AsDateTime:= DM1.Query2.FieldByName('REDATRET').AsDateTime;
     Tb_CadRemBcoRECODRET.AsString:= DM1.Query2.FieldByName('RECODRET').AsString;
     Tb_CadRemBcoRECODCOM.AsString:= DM1.Query2.FieldByName('RECODCOM').AsString;
     Tb_CadRemBcoRECODCAR.AsString:= DM1.Query2.FieldByName('RECODCAR').AsString;
     Tb_CadRemBcoRECODVARCAR.AsString:= DM1.Query2.FieldByName('RECODVARCAR').AsString;
     Tb_CadRemBcoRECODPROT.AsString:= DM1.Query2.FieldByName('RECODPROT').AsString;
     Tb_CadRemBcoRECODPROT02.AsString:= DM1.Query2.FieldByName('RECODPROT02').AsString;
     Tb_CadRemBcoRECODPROT03.AsString:= DM1.Query2.FieldByName('RECODPROT03').AsString;
     Tb_CadRemBcoREPROTESTO_QTDD.AsString:= DM1.Query2.FieldByName('REPROTESTO_QTDD').AsString;
     Tb_CadRemBcoREQTDMAN.AsString:= DM1.Query2.FieldByName('REQTDMAN').AsString;
     Tb_CadRemBcoRESITREG.AsString:= DM1.Query2.FieldByName('RESITREG').AsString;
     Tb_CadRemBcoREDTEMIS.AsDateTime:= DM1.Query2.FieldByName('REDTEMIS').AsDateTime;
     Tb_CadRemBcoRECODCLI.AsString:= DM1.Query2.FieldByName('RECODCLI').AsString;
     Tb_CadRemBcoRECODECF.AsString:= DM1.Query2.FieldByName('RECODECF').AsString;
     Tb_CadRemBcoREDTVCTO.AsDateTime:= DM1.Query2.FieldByName('REDTVCTO').AsDateTime;
     Tb_CadRemBcoREDESCF.AsString:= DM1.Query2.FieldByName('REDESCF').AsString;
     Tb_CadRemBcoREDTDESCF.AsDateTime:= DM1.Query2.FieldByName('REDTDESCF').AsDateTime;
     Tb_CadRemBcoREJURD.AsString:= DM1.Query2.FieldByName('REJURD').AsString;
     Tb_CadRemBcoREDESCD.AsString:= DM1.Query2.FieldByName('REDESCD').AsString;
     Tb_CadRemBcoREMULTA.AsString:= DM1.Query2.FieldByName('REMULTA').AsString;
     Tb_CadRemBcoREQTDDM.AsString:= DM1.Query2.FieldByName('REQTDDM').AsString;
     Tb_CadRemBcoREACEITE.AsString:= DM1.Query2.FieldByName('REACEITE').AsString;
     Tb_CadRemBcoREESPECIE.AsString:= DM1.Query2.FieldByName('REESPECIE').AsString;
     Tb_CadRemBcoRECODBAR.AsString:= DM1.Query2.FieldByName('RECODBAR').AsString;
     Tb_CadRemBcoRECODDIG.AsString:= DM1.Query2.FieldByName('RECODDIG').AsString;
     Tb_CadRemBcoRECUSBCO.AsString:= DM1.Query2.FieldByName('RECUSBCO').AsString;
     Tb_CadRemBcoRETIPCOB.AsString:= DM1.Query2.FieldByName('RETIPCOB').AsString;
     Tb_CadRemBcoRESTATUS.AsString:= DM1.Query2.FieldByName('RESTATUS').AsString;
     Tb_CadRemBcoREORDEM.AsString:= DM1.Query2.FieldByName('REORDEM').AsString;
     Tb_CadRemBcoREOBS.AsString:= DM1.Query2.FieldByName('REOBS').AsString;
     Tb_CadRemBcoRERAZAO.AsString:= DM1.Query2.FieldByName('CRAZAO').AsString;
     Tb_CadRemBcoRETIT_CHAVE_ID_ANO.AsInteger:= DM1.Query2.FieldByName('RETIT_CHAVE_ID_ANO').AsInteger;
     Tb_CadRemBcoRETIT_CHAVE_ID.AsInteger:= DM1.Query2.FieldByName('RETIT_CHAVE_ID').AsInteger;
     Tb_CadRemBcoqtdrem.AsInteger:= DM1.Query2.FieldByName('qtdrem').AsInteger;
     Tb_CadRemBco.Post;
     DM1.Query2.Next;
     end;

   QTDDOC.Caption:=IntToStr(mQtdDup);
   TOTLIQ.Caption:=FormatFloat(mcasas, mTotalDup);
   Tb_CadRemBco.First;

   NUMLOT.Text:=IntToStr(mnumlot);
   MDATA.Text :=FormatDatetime(fdt2, Tb_CadRemBcoREDATREM.Value);
   MHORA.Text :=Tb_CadRemBcoREHORREM.AsString;
   RG_LAYOUT.itemIndex:=Tb_CadRemBcoRELAYOUT.AsInteger;
   CODBCO.Text:=Tb_CadRemBcoRECODBCO.AsString;
   mcodbco_Ant:=ValFloat(CODBCO.Text);
   CODBCOExit(self);
   if not Tb_CadRemBcoRECODCOM.IsNull then
      begin
      for x:=0 to CB_CODCON.Items.Count-1 do
         begin
         if Formatfloat('00',Tb_CadRemBcoRECODCOM.Value)=copy(CB_CODCON.Items[x],1,2) then
            begin
            CB_CODCON.ItemIndex:=x;
            break;
            end;
         end;
      end;
   if not Tb_CadRemBcoRECODPROT.IsNull then
      begin
      for x:=0 to CB_CODPROT.Items.Count-1 do
         begin
         if Formatfloat('00',Tb_CadRemBcoRECODPROT.Value)=copy(CB_CODPROT.Items[x],1,2) then
            begin
            CB_CODPROT.ItemIndex:=x;
            break;
            end;
         end;
      end;

   if not Tb_CadRemBcoRECODPROT02.IsNull then
      begin
      for x:=0 to CB_CODPROT02.Items.Count-1 do
         begin
         if Formatfloat('00',Tb_CadRemBcoRECODPROT02.Value)=copy(CB_CODPROT02.Items[x],1,2) then
            begin
            CB_CODPROT02.ItemIndex:=x;
            break;
            end;
         end;
      end;
   ED_CODPROT_QTDD.Text:=Tb_CadRemBcoREPROTESTO_QTDD.AsString;
   end;





BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=True;
BBEXCLUIR.Enabled  :=True;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=True;
bbGerar.Enabled    :=True;
end;

procedure TFrm_CobEle_Remessa.MDATAExit(Sender: TObject);
begin
try
   MDATA.Text:=FormatDatetime(fdt2, StrtoDate(MDATA.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDATA.SetFocus;
   end;
end;

procedure TFrm_CobEle_Remessa.BBALTERARClick(Sender: TObject);
begin
panel_editcab.Enabled      :=True;
Panel5.Enabled      :=true;
DBNavigator1.Enabled:=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
bbGerar.Enabled    :=False;

RxDB_CODCON.Enabled        :=true;
RxDB_CODPROT.Enabled       :=true;
RxDB_CODPROT02.Enabled     :=true;

DBE_RECODCAR.ReadOnly       :=false;
DBE_REPROTESTO_QTDD.ReadOnly:=false;
rxdb_REDTVCTO.ReadOnly      :=false;
DBE_REDESCF.ReadOnly        :=false;
DBE_REDTDESCF.ReadOnly      :=false;
DBE_REDESCD.ReadOnly        :=false;
DBE_REMULTA.ReadOnly        :=false;
DBE_REJURD.ReadOnly         :=false;


moper:=1;
MDATA.SetFocus;

end;

procedure TFrm_CobEle_Remessa.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Excluir este lote?',0,['1','2'],2)<>mrYes then
   exit;
mChaveLote:=fsonumero(NUMLOT.Text);
DM1.Query1.Close;
DM1.query1.SQL.clear;
DM1.query1.SQL.Add(' Delete from CADREMBCO where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' RECODEMP=0'+InttoStr(codemp)+' and ')
               +' RELOTSEQ=0'
               +' and RECHAVE=0'+FloatToStr(mnumlot)
               +' and RECODBCO=0'+FloatToStr(mnumbco));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
Except
   fmensagem('Erro 723 ao Excluir Lote!',0,['0'],0);
   exit;
   end;
BBLIMPAR.Click;
fmensagem('Lote Excluido!',0,['0'],0);

end;

procedure TFrm_CobEle_Remessa.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_CobEle_Remessa',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_CobEle_Remessa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

If BBGRAVAR.Enabled then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: begin
             BBGRAVAR.Click;
             exit;
             end;
      mrNo: begin
            BBLIMPAR.Click;
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end;

Tb_CadRemBco.Close;
deletefile(mTabTmp+'.db');
//ShowMessage(mTabTmp);
end;

procedure TFrm_CobEle_Remessa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
   if (FormState<>[fsModal]) then
      Action := caFree;end;

procedure TFrm_CobEle_Remessa.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_CobEle_Remessa.DBGrid1ColExit(Sender: TObject);
begin
if (DBGrid1.SelectedField=Tb_CadRemBcoRENUMDUP) and not (Tb_CadRemBcoRENUMDUP.IsNull) then
   begin
   fTestaDup(0);
   end
else if (DBGrid1.SelectedField=Tb_CadRemBcoREDESD) and not (Tb_CadRemBcoREDESD.IsNull) then
   fTestaDup(0)
else if (DBGrid1.SelectedField=Tb_CadRemBcoRETIPO) and not (Tb_CadRemBcoRETIPO.IsNull) then
   fTestaDup(0);
end;

function TFrm_CobEle_Remessa.fTestaDup(ptipo:Integer): Boolean;
begin
result:=false;
if Tb_CadRemBco.State in [dsEdit,dsInsert] then
   begin
   if (DM1.Tb_Dar.Active) and
      (Tb_CadRemBcoRECODEMP_DUP.Value=DM1.Tb_DarCRCODEMP.Value) and
      (Tb_CadRemBcoRENUMDUP.Value=DM1.Tb_DarCRNUMERO.Value) and
      (Tb_CadRemBcoREDESD.Value=DM1.Tb_DarCRDESD.Value) and
      (Tb_CadRemBcoRETIPO.Value=DM1.Tb_DarCRDUP.Value) and
      (Tb_CadRemBcoREDTEMIS.Value=DM1.Tb_DarCRDTEMIS.Value) and
      (Tb_CadRemBcoREVALDUP.Value=DM1.Tb_DarCRVALOR.Value) then
       begin
       result:=true;
       end
   else if flcaddar(8,Tb_CadRemBcoRECODEMP_DUP.AsInteger,0,//ppre
               0,//codecf
               0,
               Tb_CadRemBcoRENUMDUP.AsString,
               Tb_CadRemBcoREDESD.AsString,
               Tb_CadRemBcoRETIPO.AsString,
               iif(moper_item=1,pdatanula,
               Tb_CadRemBcoREDTEMIS.AsDateTime),'') then
      begin
      Tb_CadRemBcoRECODEMP_DUP.Value:=DM1.Tb_DarCRCODEMP.Value;
      Tb_CadRemBcoRELOTSEQ.Value    :=0;
      Tb_CadRemBcoREDESD.Value      :=DM1.Tb_DarCRDESD.Value;
      Tb_CadRemBcoRENUMDUP.Value    :=DM1.Tb_DarCRNUMERO.Value;
      Tb_CadRemBcoRECODECF.Value    :=DM1.Tb_DarCRCODECF.Value;
      Tb_CadRemBcoRETIPO.Value      :=DM1.Tb_DarCRDUP.Value;
      Tb_CadRemBcoREVALDUP.Value    :=DM1.Tb_DarCRVALOR.Value;
      Tb_CadRemBcoRENOSNUM.Value    :=DM1.Tb_DarCRNOSNUM.Value;
      Tb_CadRemBcoREDNOSNUM.Value   :=DM1.Tb_DarCRDNOSNUM.Value;
      if not (DM1.Tb_DarCRDTEMIS.IsNull) and (DM1.Tb_DarCRDTEMIS.Value>pdatanula) then
         Tb_CadRemBcoREDTEMIS.Value    :=DM1.Tb_DarCRDTEMIS.Value;
      Tb_CadRemBcoRECODCLI.Value    :=DM1.Tb_DarCRCODCLI.Value;
      Tb_CadRemBcoRERAZAO.Value     :=DM1.Tb_Darrazaocli.Value;
      Tb_CadRemBcoRECODBCO.Value    :=DM1.Tb_DarCRCODBCO.Value;
      Tb_CadRemBcoRECODECF.Value    :=DM1.Tb_DarCRCODECF.Value;
      Tb_CadRemBcoRECODRET.Value    :=0;
      Tb_CadRemBcoRECODCOM.Value    :=fsonumero(copy(CB_CODCON.Text,1,5));
      if DM1.Tb_BCoBCCODBCO.Value<>valFloat(CODBCO.Text) then
         flcadbco(1,0,0,CODBCO.Text);
      Tb_CadRemBcoRECODCAR.Value    :=DM1.Tb_BcoBCCODCAR.AsFloat;
      Tb_CadRemBcoRECODVARCAR.Value :=fsonumero(DM1.Tb_BcoBCCODVAR.AsString);
      Tb_CadRemBcoRECODPROT.Value   :=fsonumero(copy(CB_CODPROT.Text,1,5));
      Tb_CadRemBcoRECODPROT02.Value :=fsonumero(copy(CB_CODPROT02.Text,1,5));
      Tb_CadRemBcoRECODPROT03.Value     :=0;
      Tb_CadRemBcoREPROTESTO_QTDD.Value :=valfloat(ED_CODPROT_QTDD.Text);
      if not (DM1.Tb_DarCRDTVCTO.IsNull) and (DM1.Tb_DarCRDTVCTO.Value>pdatanula) then
         Tb_CadRemBcoREDTVCTO.Value    :=DM1.Tb_DarCRDTVCTO.Value;
      Tb_CadRemBcoREDESCF.Value     :=DM1.Tb_DarCRDESCF.Value;
      if not (DM1.Tb_DarCRDTDESCF.IsNull) and (DM1.Tb_DarCRDTDESCF.Value>pdatanula) then
         Tb_CadRemBcoREDTDESCF.Value   :=DM1.Tb_DarCRDTDESCF.Value;
      Tb_CadRemBcoREJURD.Value      :=DM1.Tb_DarCRJURD.Value;
      Tb_CadRemBcoREDESCD.Value     :=DM1.Tb_DarCRDESCD.Value;
      Tb_CadRemBcoREMULTA.Value     :=DM1.Tb_DarCRMULTA.Value;
      Tb_CadRemBcoREQTDDM.Value     :=DM1.Tb_DarCRQTDDM.Value;
      Tb_CadRemBcoREACEITE.Value    :=DM1.Tb_DarCRACEITE.Value;
      Tb_CadRemBcoREESPECIE.Value   :=DM1.Tb_DarCRESPECIE.Value;
      Tb_CadRemBcoRECODBAR.Value    :=DM1.Tb_DarCRCODBAR.Value;
      Tb_CadRemBcoRECODDIG.Value    :=DM1.Tb_DarCRCODDIG.Value;
      Tb_CadRemBcoRECUSBCO.Value    :=DM1.Tb_DarCRCUSBCO.Value;
      Tb_CadRemBcoRETIPCOB.Value    :=DM1.Tb_DarCRTIPCOB.Value;
      Tb_CadRemBcoREOBS.Value       :=DM1.Tb_DarCROBS.Value;

      Result:=true;
      end
   else
      begin
      Tb_CadRemBcoREVALDUP.Value    :=0;
      Tb_CadRemBcoRECODECF.Value    :=0;
      Tb_CadRemBcoRETIPO.Value      :=0;
      Tb_CadRemBcoREVALDUP.Value    :=0;
      Tb_CadRemBcoRENOSNUM.Value    :='';
      Tb_CadRemBcoREDNOSNUM.Value    :='';
      Tb_CadRemBcoREDTEMIS.Value    :=pdatanula;
      Tb_CadRemBcoRECODCLI.Value    :=0;
      Tb_CadRemBcoRECODBCO.Value    :=0;
      Tb_CadRemBcoRECODECF.Value    :=0;
      Tb_CadRemBcoRECODRET.Value    :=0;
      Tb_CadRemBcoRECODCOM.Value    :=fsonumero(copy(CB_CODCON.Text,1,5));;
      if DM1.Tb_BCoBCCODBCO.Value<>valFloat(CODBCO.Text) then
         flcadbco(1,0,0,CODBCO.Text);
      Tb_CadRemBcoRECODCAR.Value    :=DM1.Tb_BcoBCCODCAR.AsFloat;
      Tb_CadRemBcoRECODVARCAR.Value :=fsonumero(DM1.Tb_BcoBCCODVAR.AsString);
      Tb_CadRemBcoRECODPROT.Value   :=fsonumero(copy(CB_CODPROT.Text,1,5));
      Tb_CadRemBcoRECODPROT02.Value :=fsonumero(copy(CB_CODPROT02.Text,1,5));
      Tb_CadRemBcoRECODPROT03.Value :=0;
      Tb_CadRemBcoREPROTESTO_QTDD.Value:=valfloat(ED_CODPROT_QTDD.Text);
      Tb_CadRemBcoREDESCF.Value     :=0;
      Tb_CadRemBcoREDTDESCF.Value   :=pdatanula;
      Tb_CadRemBcoREJURD.Value      :=0;
      Tb_CadRemBcoREDESCD.Value     :=0;
      Tb_CadRemBcoREMULTA.Value     :=0;
      Tb_CadRemBcoREQTDDM.Value     :=0;
      Tb_CadRemBcoREACEITE.Value    :='';
      Tb_CadRemBcoREESPECIE.Value   :='';
      Tb_CadRemBcoRECODBAR.Value    :='';
      Tb_CadRemBcoRECODDIG.Value    :='';
      Tb_CadRemBcoRECUSBCO.Value    :=0;
      Tb_CadRemBcoRETIPCOB.Value    :=0;
      Tb_CadRemBcoREOBS.Value       :=' ';
      Tb_CadRemBcoRERAZAO.Value     :=' ';
      end;
   end;
end;


procedure TFrm_CobEle_Remessa.Tb_CadRemBcoCalcFields(DataSet: TDataSet);
var
x: Integer;
begin
{
if not Tb_CadRemBcoRECODCLI.IsNull then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Tb_CadRemBcoRECODCLI.AsString) then
      begin
      Tb_CadRemBcorazao.Value:=DM1.Query1.Fields[0].AsString;
      DM1.Query1.Close;
      end;
   end;
}
if not Tb_CadRemBcoRECODCOM.IsNull then
   begin
   for x:=0 to CB_CODCON.Items.Count-1 do
      begin
      if Formatfloat('00',Tb_CadRemBcoRECODCOM.Value)=copy(CB_CODCON.Items[x],1,2) then
         begin
         Tb_CadRemBconomcom.Value:=CB_CODCON.Items[x];
         break;
         end;
      end;
   end;

if not Tb_CadRemBcoRECODCAR.IsNull then
   begin
   Tb_CadRemBconomcob.Value:=DM1.Tb_Bconomcar.Value;
   end;

if not Tb_CadRemBcoRECODPROT.IsNull then
   begin
   for x:=0 to CB_CODPROT.Items.Count-1 do
      begin
      if Formatfloat('00',Tb_CadRemBcoRECODPROT.Value)=copy(CB_CODPROT.Items[x],1,2) then
         begin
         Tb_CadRemBconomprot.Value:=CB_CODPROT.Items[x];
         break;
         end;
      end;
   end;

if not Tb_CadRemBcoRECODPROT02.IsNull then
   begin
   for x:=0 to CB_CODPROT02.Items.Count-1 do
      begin
      if Formatfloat('00',Tb_CadRemBcoRECODPROT02.Value)=copy(CB_CODPROT02.Items[x],1,2) then
         begin
         Tb_CadRemBconomprot02.Value:=CB_CODPROT02.Items[x];
         break;
         end;
      end;
   end;

end;

procedure TFrm_CobEle_Remessa.CODBCOExit(Sender: TObject);
var
x: Integer;
x_Item: Integer;
begin
lbl_CODPROT_QTDD.Visible:=False;
ED_CODPROT_QTDD.Visible :=False;
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)='' then
   exit;
if not flcadbco(1,0,0,CODBCO.Text) then
   begin
   verteclado(0);
   fmensagem('Banco não Cadastrado!',0,['0'],0);
   CODBCO.SetFocus;
   exit;
   end
else
   begin
   if Trim(DM1.Tb_BcoBCNOMTIT.AsString)='' then
      begin
      DM1.Tb_Bco.Edit;
      DM1.Tb_BcoBCNOMTIT.Value:=DM1.Tb_EmpRAZAO.Value;
      FAtualizaBanco(1,'CADBCO','BCCODEMP',DM1.Tb_BcoBCCODEMP.AsString,['BCCODBCO'],[DM1.Tb_BcoBCCODBCO.AsString],DM1.TB_BCO);
      DM1.Tb_Bco.Post;
      end;
   NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;
   if panel_editcab.Enabled then
      begin
      if DM1.Tb_BcoBCNUMBCO.AsInteger<=0 then
         begin
         verteclado(0);
         fmensagem('O número do Banco tem que estar informado no arquivo de Banco!',0,['0'],0);
         CODBCO.SetFocus;
         exit;
         end;

      if fSonumero(DM1.Tb_BcoBCCODCED.AsString)<=0 then
         begin
         verteclado(0);
         fmensagem('O número do Cedente/Conta tem que ser informado na tabela de Banco!',0,['0'],0);
         CODBCO.SetFocus;
         exit;
         end;
      if (trim(DM1.Tb_BcoBCDIGCED.AsString)='') and (DM1.Tb_BcoBCNUMBCO.AsInteger<>399)then
         begin
         verteclado(0);
         fmensagem('O número do digito Cedente/Conta tem que ser informado na tabela de Banco!',0,['0'],0);
         CODBCO.SetFocus;
         exit;
         end;
      if DM1.Tb_BcoBCNUMBCO.AsInteger=1 then
         begin
         lbl_codcar_c006.Visible :=true;
         cb_codcar_c006.Visible  :=true;
         end
      else
         begin
         lbl_codcar_c006.Visible :=false;
         cb_codcar_c006.Visible  :=false;
         end;

      if DM1.Tb_BcoBCNUMBCO.AsFloat=237 then
         begin
         if valfloat(DM1.Tb_BcoBCNUMCON.AsString)<=0 then
            begin
            fmensagem('Numero do Codigo do Cliente no Banco tem que ser colocado. '
                     +'Entre em Cadastro->Bancos->Manutencao->Conv/Cod.Cliente no Banco '
                     +'e preencha!',0,['0'],0);
            CODBCO.SetFocus;
            exit;
            end;
         end;
      end;
   if mcodbco_Ant<>0 then
      begin
      if mcodbco_Ant<>ValFloat(CODBCO.Text) then
         begin
         Tb_CadRemBco.EmptyDataSet;
         end
      end;

   end;

CB_CODCON.Items.Clear;
CB_CODPROT.Items.Clear;
CB_CODPROT02.Enabled:=True;
RxDB_CODCON.Items.Clear;
RxDB_CODCON.Values.Clear;
RxDB_CODPROT.Items.Clear;
RxDB_CODPROT.Values.Clear;

RxDB_CODPROT02.Items.Clear;
RxDB_CODPROT02.Values.Clear;


if DM1.Tb_BcoBCNUMBCO.Value=001 then // Banco do Brasil
   begin
   if RG_LAYOUT.ItemIndex=0 then
     begin
     CB_CODCON.Items.Add('01 - Registro de Títulos');
     CB_CODCON.Items.Add('02 - Solicitação de Baixa');
     CB_CODCON.Items.Add('03 - Pedido de Débito em Conta');
     CB_CODCON.Items.Add('04 - Concessão de Abatimento');
     CB_CODCON.Items.Add('05 - Cancel. de Abatimento');
     CB_CODCON.Items.Add('06 - Alteração de Vcto.Título');
     CB_CODCON.Items.Add('07 - Alteração No.Controle do Participante');
     CB_CODCON.Items.Add('08 - Alteração No.Título p/Ced');
     CB_CODCON.Items.Add('09 - Instrução p/Protestar');
     CB_CODCON.Items.Add('10 - Instrução p/Sustar Protes');
     CB_CODCON.Items.Add('11 - Instrução p/Dispensar Juros');
     CB_CODCON.Items.Add('12 - Alter.Nome/Endereço Sacado');
     for x_item:=0 to CB_CODCON.Items.Count-1 do
        begin
        RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
        RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
        end;



     CB_CODPROT.Items.Add('00 - Sem Instrucao de Protesto');
     CB_CODPROT.Items.Add('03 - Protestar no 03. dia útil após vencto.');
     CB_CODPROT.Items.Add('05 - Protestar no 05. dia útil após vencto.');
     CB_CODPROT.Items.Add('10 - Protestar no 10. dia útil após vencto.');

     for x_item:=0 to CB_CODPROT.Items.Count-1 do
        begin
        RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
        RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
        end;

     end
   else if RG_LAYOUT.ItemIndex=1 then
     begin
     CB_CODCON.Items.Add('01 = Cobrança ');
     CB_CODCON.Items.Add('03 = Bloqueto Eletrônico ');
     CB_CODCON.Items.Add('04 = Conciliação Bancária');
     CB_CODCON.Items.Add('05 = Débitos');
     CB_CODCON.Items.Add('06 = Custódia de Cheques');
     CB_CODCON.Items.Add('07 = Gestão de Caixa');
     CB_CODCON.Items.Add('08 = Consulta/Informação Margem');
     CB_CODCON.Items.Add('09 = Averbação da Consignação/Retenção');
     CB_CODCON.Items.Add('10 = Pagamento Dividendos');
     CB_CODCON.Items.Add('11 = Manutenção da Consignação');
     CB_CODCON.Items.Add('12 = Consignação de Parcelas');
     CB_CODCON.Items.Add('13 = Glosa da Consignação (INSS)');
     CB_CODCON.Items.Add('14 = Consulta de Tributos a pagar');
     CB_CODCON.Items.Add('20 = Pagamento Fornecedor');
     CB_CODCON.Items.Add('22 = Pagamento de Contas, Tributos e Impostos');
     CB_CODCON.Items.Add('25 = Compror');
     CB_CODCON.Items.Add('26 = Compror Rotativo');
     CB_CODCON.Items.Add('29 = Alegação do Sacado');
     CB_CODCON.Items.Add('30 = Pagamento Salários');
     CB_CODCON.Items.Add('32 = Pagamento de honorários');
     CB_CODCON.Items.Add('33 = Pagamento de bolsa auxílio');
     CB_CODCON.Items.Add('34 = Pagamento de prebenda (remuneração a padres e sacerdotes)');
     CB_CODCON.Items.Add('40 = Vendor');
     CB_CODCON.Items.Add('41 = Vendor a Termo');
     CB_CODCON.Items.Add('50 = Pagamento Sinistros Segurados');
     CB_CODCON.Items.Add('60 = Pagamento Despesas Viajante em Trânsito');
     CB_CODCON.Items.Add('70 = Pagamento Autorizado');
     CB_CODCON.Items.Add('75 = Pagamento Credenciados');
     CB_CODCON.Items.Add('77 = Pagamento de Remuneração');
     CB_CODCON.Items.Add('80 = Pagamento Representantes / Vendedores Autorizados');
     CB_CODCON.Items.Add('90 = Pagamento Benefícios');
     CB_CODCON.Items.Add('98 = Pagamentos Diversos');
     for x_item:=0 to CB_CODCON.Items.Count-1 do
        begin
        RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
        RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
        end;


     CB_CODPROT.Items.Add('01 = Entrada de Títulos ');
     CB_CODPROT.Items.Add('02 = Pedido de Baixa    ');
     CB_CODPROT.Items.Add('03 = Protesto para Fins Falimentares');
     CB_CODPROT.Items.Add('04 = Concessão de Abatimento');
     CB_CODPROT.Items.Add('05 = Cancelamento de Abatimento');
     CB_CODPROT.Items.Add('06 = Alteração de Vencimento');
     CB_CODPROT.Items.Add('07 = Concessão de Desconto');
     CB_CODPROT.Items.Add('08 = Cancelamento de Desconto');
     CB_CODPROT.Items.Add('09 = Protestar');
     CB_CODPROT.Items.Add('10 = Sustar Protesto e Baixar Título');
     CB_CODPROT.Items.Add('11 = Sustar Protesto e Manter em Carteira');
     CB_CODPROT.Items.Add('12 = Alteração de Juros de Mora');
     CB_CODPROT.Items.Add('13 = Dispensar Cobrança de Juros de Mora');
     CB_CODPROT.Items.Add('14 = Alteração de Valor/Percentual de Multa');
     CB_CODPROT.Items.Add('15 = Dispensar Cobrança de Multa');
     CB_CODPROT.Items.Add('16 = Alteração do Valor de Desconto');
     CB_CODPROT.Items.Add('17 = Não conceder Desconto');
     CB_CODPROT.Items.Add('18 = Alteração do Valor de Abatimento');
     CB_CODPROT.Items.Add('19 = Prazo Limite de Recebimento - Alterar');
     CB_CODPROT.Items.Add('20 = Prazo Limite de Recebimento - Dispensar');
     CB_CODPROT.Items.Add('21 = Alterar número do tíulo dado pelo cedente');
     CB_CODPROT.Items.Add('22 = Alterar número controle do Participante');
     CB_CODPROT.Items.Add('23 = Alterar dados do Sacado');
     CB_CODPROT.Items.Add('24 = Alterar dados do Sacador/Avalista');
     CB_CODPROT.Items.Add('30 = Recusa da Alegação do Sacado');
     CB_CODPROT.Items.Add('31 = Alteração de Outros Dados');
     CB_CODPROT.Items.Add('33 = Alteração dos Dados do Rateio de Crédito');
     CB_CODPROT.Items.Add('34 = Pedido de Cancelamento dos Dados do Rateio de Crédito');
     CB_CODPROT.Items.Add('35 = Pedido de Desagendamento do Débito Automático');
     CB_CODPROT.Items.Add('40 = Alteração de Carteira');
     CB_CODPROT.Items.Add('41 = Cancelar protesto');
     CB_CODPROT.Items.Add('42 = Alteração de Espécie de Título');
     CB_CODPROT.Items.Add('43 = Transferência de carteira/modalidade de cobrança');
     CB_CODPROT.Items.Add('44 = Alteração de contrato de cobrança');

     for x_item:=0 to CB_CODPROT.Items.Count-1 do
        begin
        RxDB_CODPROT.Items.Add(CB_CODCON.Items[x_item]);
        RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
        end;

     CB_CODPROT02.Items.Add('00 - Sem Instrucao de Protesto');
     CB_CODPROT02.Items.Add('03 - Protestar no 03. dia útil após vencto.');
     CB_CODPROT02.Items.Add('05 - Protestar no 05. dia útil após vencto.');
     CB_CODPROT02.Items.Add('10 - Protestar no 10. dia útil após vencto.');
     for x_item:=0 to CB_CODPROT02.Items.Count-1 do
        begin
        RxDB_CODPROT02.Items.Add(CB_CODPROT02.Items[x_item]);
        RxDB_CODPROT02.Values.Add(IntToStr(valint(copy(CB_CODPROT02.Items[x_item],1,2))));
        end;

     end;
   end
else if DM1.Tb_BcoBCNUMBCO.Value=104 then // Caixa Economica Federal
   begin
   CB_CODCON.Items.Add('01 - Entrada de Títulos.');
   CB_CODCON.Items.Add('02 - Pedido de Baixa.');
   CB_CODCON.Items.Add('04 - Concessão de Abatimento.');
   CB_CODCON.Items.Add('05 - Cancelamento de Abatimento.');
   CB_CODCON.Items.Add('06 - Alteração de Vencimento.');
   CB_CODCON.Items.Add('07 - Concessão de Desconto.');
   CB_CODCON.Items.Add('08 - Cancelamento de Desconto.');
   CB_CODCON.Items.Add('09 - Protestar.');
   CB_CODCON.Items.Add('10 - Cancelamento/Sustação da Instrução de Protesto.');
   CB_CODCON.Items.Add('31 - Alteração de Outros Dados.');

   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;

   CB_CODPROT.Items.Add('00 - Sem Instrucao de Protesto');
   CB_CODPROT.Items.Add('03 - Protestar no 03. dia útil após vencto.');
   CB_CODPROT.Items.Add('05 - Protestar no 05. dia útil após vencto.');
   CB_CODPROT.Items.Add('10 - Protestar no 10. dia útil após vencto.');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT02.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT02.Items[x_item],1,2))));
      end;

   end
else if DM1.Tb_BcoBCNUMBCO.Value=237 then // Bradesco
   begin
   CB_CODCON.Items.Add('01 - Entrada de Títulos(Remessa).');
   CB_CODCON.Items.Add('02 - Pedido de Baixa.');
   CB_CODCON.Items.Add('04 - Concessão de Abatimento.');
   CB_CODCON.Items.Add('05 - Cancelamento de Abatimento concedido.');
   CB_CODCON.Items.Add('06 - Alteração de Vencimento.');
   CB_CODCON.Items.Add('07 - Alteração do Controle do Participante.');
   CB_CODCON.Items.Add('08 - Alteração de seu Número.');
   CB_CODCON.Items.Add('09 - Pedido de Protesto.');
   CB_CODCON.Items.Add('18 - Sustar Protesto e baixar Titulo.');
   CB_CODCON.Items.Add('19 - Sustar Protesto e manter em carteira.');
   CB_CODCON.Items.Add('31 - Alteração de outros dados.');
   CB_CODCON.Items.Add('35 - Desagendamento do débito automático.');
   CB_CODCON.Items.Add('68 - Acerto nos dados do rateio de Crédito.');
   CB_CODCON.Items.Add('69 - Cancelamento do Rateio de Crédito.');

   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;

   CB_CODPROT.Items.Add('00 - Sem Instrucao de Protesto');
   CB_CODPROT.Items.Add('06 - Protestar ');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
      end;

//   CB_CODPROT.Items.Add('05 - Protestar no 05. dia útil após vencto.');
//   CB_CODPROT.Items.Add('10 - Protestar no 10. dia útil após vencto.');
   end
else if DM1.Tb_BcoBCNUMBCO.Value=341 then // banco itau
   begin
   CB_CODCON.Items.Add('01 - Entrada de Títulos(Remessa).');
   CB_CODCON.Items.Add('02 - Pedido de Baixa.');
   CB_CODCON.Items.Add('04 - Concessão de Abatimento.');
   CB_CODCON.Items.Add('05 - Cancelamento de Abatimento concedido.');
   CB_CODCON.Items.Add('06 - Alteração de Vencimento.');
   CB_CODCON.Items.Add('07 - Alteração do Uso da Empresa.');
   CB_CODCON.Items.Add('08 - Alteração de seu Número.');
   CB_CODCON.Items.Add('09 - Pedido de Protesto.(emite aviso ao sacado após xx dias do vencimento e envia ao cartorio apos 5 dias ');
   CB_CODCON.Items.Add('11 - Protestar para fins falimentares.');
   CB_CODCON.Items.Add('18 - Sustar Protesto e baixar Titulo.');
   CB_CODCON.Items.Add('34 - Baixa por ter sido pago diretamente ao cedente.');
   CB_CODCON.Items.Add('35 - Cancelamento de Instrucao.');
   CB_CODCON.Items.Add('37 - Alteração do Vencimento e Sustar Protesto.');
   CB_CODCON.Items.Add('38 - Cedente nao Concorda com Alegação do Sacado.');
   CB_CODCON.Items.Add('47 - Cedente Solicita Dispensa de Juros.');

   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;

   CB_CODPROT.Items.Add('00 - Sem Instrucao de Protesto');
   CB_CODPROT.Items.Add('02 - Devolver após 05 dias do vencimento');
   CB_CODPROT.Items.Add('03 - Devolver após 30 dias do vencimento');
   CB_CODPROT.Items.Add('05 - Receber conforme instrução no próprio título');
   CB_CODPROT.Items.Add('06 - Devolver após 10 dias do vencimento');
   CB_CODPROT.Items.Add('07 - Devolver após 15 dias do vencimento');
   CB_CODPROT.Items.Add('08 - Devolver após 20 dias do vencimento');
   CB_CODPROT.Items.Add('09 - Protestar (emite aviso ao sacado após XX dias do vencimento, e envia ao cartório após 5 dias úteis');
   CB_CODPROT.Items.Add('10 - NÃO PROTESTAR(inibe protesto, quando houver instrução permanente da conta corrente');
   CB_CODPROT.Items.Add('11 - Devolver após 25 dias do vencimento');
   CB_CODPROT.Items.Add('12 - Devolver após 35 dias do vencimento');
   CB_CODPROT.Items.Add('13 - Devolver após 40 dias do vencimento');
   CB_CODPROT.Items.Add('14 - Devolver após 45 dias do vencimento');
   CB_CODPROT.Items.Add('15 - Devolver após 50 dias do vencimento');
   CB_CODPROT.Items.Add('16 - Devolver após 55 dias do vencimento');
   CB_CODPROT.Items.Add('17 - Devolver após 60 dias do vencimento');
   CB_CODPROT.Items.Add('18 - Devolver após 90 dias do vencimento');
   CB_CODPROT.Items.Add('19 - Não Receber após 05 dias do vencimento');
   CB_CODPROT.Items.Add('20 - Não Receber após 10 dias do vencimento');
   CB_CODPROT.Items.Add('21 - Não Receber após 15 dias do vencimento');
   CB_CODPROT.Items.Add('22 - Não Receber após 20 dias do vencimento');
   CB_CODPROT.Items.Add('23 - Não Receber após 25 dias do vencimento');
   CB_CODPROT.Items.Add('24 - Não Receber após 30 dias do vencimento');
   CB_CODPROT.Items.Add('25 - Não Receber após 35 dias do vencimento');
   CB_CODPROT.Items.Add('26 - Não Receber após 40 dias do vencimento');
   CB_CODPROT.Items.Add('27 - Não Receber após 45 dias do vencimento');
   CB_CODPROT.Items.Add('28 - Não Receber após 50 dias do vencimento');
   CB_CODPROT.Items.Add('29 - Não Receber após 05 dias do vencimento');
   CB_CODPROT.Items.Add('30 - Imporância de desconto por dia');
   CB_CODPROT.Items.Add('31 - Não Receber após 60 dias do vencimento');
   CB_CODPROT.Items.Add('32 - Não Receber após 90 dias do vencimento');
   CB_CODPROT.Items.Add('33 - Conceder abatimento ref. à pis-pasep/confin/cssl, mesmo após vencimento');
   CB_CODPROT.Items.Add('37 - Receber até o último dia do mes de vencimento');
   CB_CODPROT.Items.Add('38 - Conceder desconto mesmo após o vencimento');
   CB_CODPROT.Items.Add('39 - Não Receber após o vencimento');
   CB_CODPROT.Items.Add('40 - conceder desconto conforme nota de crédito');
   CB_CODPROT.Items.Add('42 - Protesto para fins falimentares');
   CB_CODPROT.Items.Add('43 - Sujeito a protesto se não for pago no vencimento');
   CB_CODPROT.Items.Add('44 - imporância por dia de atraso a partir de DDMMAA');
   CB_CODPROT.Items.Add('45 - Tem dia da graça');
   CB_CODPROT.Items.Add('46 - Uso do banco');
   CB_CODPROT.Items.Add('47 - Dispensar Juros/Comissão de Permanencia');
   CB_CODPROT.Items.Add('51 - Receber somente com a parcela anterior quitada');
   CB_CODPROT.Items.Add('52 - Favor efetuar pgto somente através desta cobrança bancária');
   CB_CODPROT.Items.Add('53 - Uso do Banco');
   CB_CODPROT.Items.Add('54 - Apos vencimento pagavél somente na Empresa');
   CB_CODPROT.Items.Add('56 - Uso do Banco');
   CB_CODPROT.Items.Add('57 - Somar valor do título ao valor do campo mora/multa caso exista');
   CB_CODPROT.Items.Add('58 - Devolver após 365 dias de vencido');
   CB_CODPROT.Items.Add('59 - Cobrança negociada pagável somente por este bloqueto na rede bancaria');
   CB_CODPROT.Items.Add('61 - Titulo entregue em penhor em favor do cedente acima');
   CB_CODPROT.Items.Add('62 - Título Transferido a favor do cedente');
   CB_CODPROT.Items.Add('70 - Uso do Banco');
   CB_CODPROT.Items.Add('71 - Uso do Banco');
   CB_CODPROT.Items.Add('72 - Uso do Banco');
   CB_CODPROT.Items.Add('73 - Uso do Banco');
   CB_CODPROT.Items.Add('74 - Uso do Banco');
   CB_CODPROT.Items.Add('75 - Uso do Banco');
   CB_CODPROT.Items.Add('78 - Valor da ida englova multa de 10% pro rata');
   CB_CODPROT.Items.Add('79 - Cobrar Juros após 15 dias da emissão(para títulos com vencimento à vista)');
   CB_CODPROT.Items.Add('80 - Pagamento em cheque: somente receber com cheque de emissão do sacado');
   CB_CODPROT.Items.Add('81 - Protestar após xx dias corridos do vencimento');
   CB_CODPROT.Items.Add('82 - Protestar apos xx dias úteis do vencimento');
   CB_CODPROT.Items.Add('83 - Operação Ref a Vendor');
   CB_CODPROT.Items.Add('84 - Após vencimento consultar a agência cedente');
   CB_CODPROT.Items.Add('86 - Antes do vencimento ou após 15 dias, pagável somente em nossa sede');
   CB_CODPROT.Items.Add('87 - Uso do Banco');
   CB_CODPROT.Items.Add('88 - Não Receber antes do vencimento');
   CB_CODPROT.Items.Add('89 - Uso do Banco');
   CB_CODPROT.Items.Add('90 - No vencimento pagável em qualquer agência bancaria');
   CB_CODPROT.Items.Add('91 - Não Receber Após xx dias do vencimento');
   CB_CODPROT.Items.Add('92 - Devolver após xx dias do vencimento');
   CB_CODPROT.Items.Add('93 - Mensagens nos bloquetos com 30 posições');
   CB_CODPROT.Items.Add('94 - Mensagens nos bloquetos com 40 posições');
   CB_CODPROT.Items.Add('95 - Uso do Banco');
   CB_CODPROT.Items.Add('96 - Uso do Banco');
   CB_CODPROT.Items.Add('97 - Uso do Banco');
   CB_CODPROT.Items.Add('98 - Duplicata/Fatura No.');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
      end;


{

   CB_CODPROT.Items.Add('00 - Sem Instrucao de Protesto');
   CB_CODPROT.Items.Add('03 - Protestar no 03. dia útil após vencto.');
   CB_CODPROT.Items.Add('05 - Protestar no 05. dia útil após vencto.');
   CB_CODPROT.Items.Add('10 - Protestar no 10. dia útil após vencto.');
}
   end

else if DM1.Tb_BcoBCNUMBCO.Value=389 then // Mercantil do Brasil
   begin
   CB_CODCON.Items.Add('01 - Remessa');
   CB_CODCON.Items.Add('02 - Pedido de baixa');
   CB_CODCON.Items.Add('04 - Conceder abatimento');
   CB_CODCON.Items.Add('05 - Cancelar abatimento');
   CB_CODCON.Items.Add('06 - Alteração da data de vencimento');
   CB_CODCON.Items.Add('07 - Alteração do controle do participante');
   CB_CODCON.Items.Add('08 - Alteração  de  seu número');
   CB_CODCON.Items.Add('09 - Pedido de protesto');
   CB_CODCON.Items.Add('10 - Cancelar protesto');
   CB_CODCON.Items.Add('11 - Dispensar juros de mora');
   CB_CODCON.Items.Add('12 - Conceder desconto por dia de antecipação');
   CB_CODCON.Items.Add('13 - Cancelar desconto por dia de antecipação');
   CB_CODCON.Items.Add('14 - Conceder desconto 1');
   CB_CODCON.Items.Add('15 - Cancelar desconto 1');
   CB_CODCON.Items.Add('16 - Conceder desconto 2');
   CB_CODCON.Items.Add('17 - Cancelar desconto 2');
   CB_CODCON.Items.Add('18 - Sustar protesto');
   CB_CODCON.Items.Add('19 - Cancelar abatimento 2');
   CB_CODCON.Items.Add('20 - Cobrar juros de mora');
   CB_CODCON.Items.Add('21 - Cobrar comissão de permanência');
   CB_CODCON.Items.Add('22 - Cobrar multa');
   CB_CODCON.Items.Add('23 - Cobrar juros e comissão de permanência');
   CB_CODCON.Items.Add('24 - Cancelar multa');
   CB_CODCON.Items.Add('25 - Dispensar comissão de permanência');
   CB_CODCON.Items.Add('26 - Dispensar juros + comissão de permanência');
   CB_CODCON.Items.Add('27 - Devolver após "N" dias de vencido');
   CB_CODCON.Items.Add('28 - Protestar após "N" dias de vencido');
   CB_CODCON.Items.Add('29 - Conceder abatimento 2');
   CB_CODCON.Items.Add('30 - Regerar ficha de compensação');
   CB_CODCON.Items.Add('33 - Pedido de baixa por franco pagamento');
   CB_CODCON.Items.Add('43 - Pedido de transferência da Cobrança para o Desconto');
   CB_CODCON.Items.Add('44 - Pedido de baixa por débito em conta');
   CB_CODCON.Items.Add('45 - Transferência autorizada da Cobrança para o Desconto');
   CB_CODCON.Items.Add('46 - Transferência não autorizada da Cobrança para o Desconto');
   CB_CODCON.Items.Add('47 - Transferência efetivada da Cobrança para o Desconto');
   CB_CODCON.Items.Add('48 - Reentrada do título de Desconto na Cobrança');
   CB_CODCON.Items.Add('49 - Pedido de transferência do Desconto para a Cobrança');
   CB_CODCON.Items.Add('50 - Pedido de baixa por creli');
   CB_CODCON.Items.Add('51 - Pedido de baixa por restrição com transferência');
   CB_CODCON.Items.Add('53 - Mudança de aceite');

   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;


   CB_CODPROT.Items.Add('00 - Sem Instrucao de Protesto');
   CB_CODPROT.Items.Add('03 - Protestar no 03. dia útil após vencto.');
   CB_CODPROT.Items.Add('05 - Protestar no 05. dia útil após vencto.');
   CB_CODPROT.Items.Add('10 - Protestar no 10. dia útil após vencto.');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
      end;

   end
else if DM1.Tb_BcoBCNUMBCO.Value=392 then // Banco Finasa
   begin
   CB_CODCON.Items.Add('01 - Remessa');
   CB_CODCON.Items.Add('02 - Pedido de baixa');
   CB_CODCON.Items.Add('04 - Conceder abatimento');
   CB_CODCON.Items.Add('05 - Cancelar abatimento');
   CB_CODCON.Items.Add('06 - Alteração da data de vencimento');
   CB_CODCON.Items.Add('08 - Alteração  de  seu número');
   CB_CODCON.Items.Add('09 - Pedido de protesto');
   CB_CODCON.Items.Add('10 - Cancelar protesto');
   CB_CODCON.Items.Add('20 - Emissão automática - CCT');
   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;

   CB_CODPROT.Items.Add('00 - Sem Instrucao de Protesto');
   CB_CODPROT.Items.Add('05 - Cobrar comissão de permanência, inclusive no dia da graça');
   CB_CODPROT.Items.Add('08 - Não receber após o vencimento');
   CB_CODPROT.Items.Add('12 - Protestar 12 dias após o vencimento');
   CB_CODPROT.Items.Add('13 - Protestar 25 dias após o vencimento');
   CB_CODPROT.Items.Add('15 - Protestar 05 dias após o vencimento');
   CB_CODPROT.Items.Add('16 - Não pago no vencimento, protestar sem mais consultas');
   CB_CODPROT.Items.Add('17 - Protestar 10 dias após o vencimento');
   CB_CODPROT.Items.Add('18 - Protestar 15 dias após o vencimento');
   CB_CODPROT.Items.Add('19 - Protestar 20 dias após o vencimento');
   CB_CODPROT.Items.Add('20 - Protestar 45 dias após o vencimento');
   CB_CODPROT.Items.Add('21 - Protestar 30 dias após o vencimento');
   CB_CODPROT.Items.Add('22 - Devolver 45 dias após o vencimento');
   CB_CODPROT.Items.Add('23 - Conceder desconto ou abatimento com até 5 dias de tolerância');
   CB_CODPROT.Items.Add('24 - Não cobrar comissão de permanência');
   CB_CODPROT.Items.Add('25 - Não receber após 5 dias do vencimento');
   CB_CODPROT.Items.Add('26 - Não conceder desconto ou abatimento fora do prazo, sem prévia autorização, nem mesmo condicionalmente');
   CB_CODPROT.Items.Add('28 - Não dispensar comissão de permanência ou juros de mora nem conceder desconto ou abatimento fora do prazo');
   CB_CODPROT.Items.Add('29 - Devolver 25 dias após o vencimento');
   CB_CODPROT.Items.Add('30 - Não pago no vencimento, devolver no dia seguinte.');
   CB_CODPROT.Items.Add('31 - Devolver 15 dias após o vencimento');
   CB_CODPROT.Items.Add('32 - Devolver 20 dias após o vencimento');
   CB_CODPROT.Items.Add('33 - Não discpensar comissão de permanência ou juros de mora nem conceder desconto ou abatimento fora do prazo, inclusive no dia da graça');
   CB_CODPROT.Items.Add('34 - A duplicata e o bloquete, foram encaminhados ao sacado pelo próprio cedente. O comprovante de entrega, se necessário paro o protesto ser remetido posteriormente diretamente pela agência cedente');
   CB_CODPROT.Items.Add('35 - Protestar 4 dias após o vencimento, observado o prazo mínimo de 3 dias úteis');
   CB_CODPROT.Items.Add('40 - Devolver 30 dias após o vencimento');
   CB_CODPROT.Items.Add('41 - Devolver 60 dias após o vencimento');
   CB_CODPROT.Items.Add('43 - Devolver 9 dias após o vencimento');
   CB_CODPROT.Items.Add('45 - Devolver 5 dias após o vencimento');
   CB_CODPROT.Items.Add('46 - Devolver 10 dias após o vencimento');
   CB_CODPROT.Items.Add('52 - Cobrar comissão de permanência com base na variação TR');
   CB_CODPROT.Items.Add('53 - Cobrar comissão de permanência com base na variação TR, mais juros de 1% ao mês.');
   CB_CODPROT.Items.Add('58 - Devolver 6 dias após o vencimento.');
   CB_CODPROT.Items.Add('63 - Protestar 5 dias úteis após o vencimento');
   CB_CODPROT.Items.Add('64 - Protestar 3 dias úteis após o vencimento');
   CB_CODPROT.Items.Add('66 - Protestar no quarto dia útil após o vencimento');
   CB_CODPROT.Items.Add('72 - Protestar 7 dias após o vencimento');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
      end;

   end
else if DM1.Tb_BcoBCNUMBCO.Value=409 then // Unibanco
   begin
   CB_CODCON.Items.Add('01 - Remessa do título');
   CB_CODCON.Items.Add('02 - Pedido de baixa do título');
   CB_CODCON.Items.Add('04 - Concessão de abatimento');
   CB_CODCON.Items.Add('06 - Alteração de vencimento do título');
   CB_CODCON.Items.Add('07 - Alteração do campo "uso da empresa"');
   CB_CODCON.Items.Add('08 - Alteração do campo "seu número"');
   CB_CODCON.Items.Add('09 - Protestar o título');
   CB_CODCON.Items.Add('10 - Não protestar / Sustar protesto');
   CB_CODCON.Items.Add('14 - Desconto financeiro');
   CB_CODCON.Items.Add('15 - Alteração do valor do título');
   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;

   CB_CODPROT.Items.Add('00 - Sem Instrucao de Protesto');
   CB_CODPROT.Items.Add('01 - Não receber o principal sem os encargos de mora');
   CB_CODPROT.Items.Add('02 - Devolver se não pago até 15 dias após o vencimento');
   CB_CODPROT.Items.Add('03 - Devolver se não pago até 30 dias após o vencimento');
   CB_CODPROT.Items.Add('04 - Devolver só a pedido');
   CB_CODPROT.Items.Add('05 - Acatar as instruções contidas no título');
   CB_CODPROT.Items.Add('06 - Protestar');
   CB_CODPROT.Items.Add('07 - Não Protestar');
   CB_CODPROT.Items.Add('08 - Não cobrar juros de mora');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
      end;

   end
else if DM1.Tb_BcoBCNUMBCO.Value=641 then // Banco Bilbao Viscaya
   begin
   CB_CODCON.Items.Add('01 - Remessa');
   CB_CODCON.Items.Add('02 - Pedido de baixa');
   CB_CODCON.Items.Add('04 - Conceder abatimento');
   CB_CODCON.Items.Add('05 - Cancelar abatimento');
   CB_CODCON.Items.Add('06 - Alteração da data de vencimento');
   CB_CODCON.Items.Add('07 - Alteração do controle do participante');
   CB_CODCON.Items.Add('08 - Alteração  de  seu número');
   CB_CODCON.Items.Add('09 - Pedido de protesto');
   CB_CODCON.Items.Add('10 - Cancelar protesto');
   CB_CODCON.Items.Add('11 - Dispensar juros de mora');
   CB_CODCON.Items.Add('12 - Conceder desconto por dia de antecipação');
   CB_CODCON.Items.Add('13 - Cancelar desconto por dia de antecipação');
   CB_CODCON.Items.Add('14 - Conceder desconto 1');
   CB_CODCON.Items.Add('15 - Cancelar desconto 1');
   CB_CODCON.Items.Add('16 - Conceder desconto 2');
   CB_CODCON.Items.Add('17 - Cancelar desconto 2');
   CB_CODCON.Items.Add('18 - Sustar protesto');
   CB_CODCON.Items.Add('19 - Cancelar abatimento 2');
   CB_CODCON.Items.Add('20 - Cobrar juros de mora');
   CB_CODCON.Items.Add('21 - Cobrar comissão de permanência');
   CB_CODCON.Items.Add('22 - Cobrar multa');
   CB_CODCON.Items.Add('23 - Cobrar juros e comissão de permanência');
   CB_CODCON.Items.Add('24 - Cancelar multa');
   CB_CODCON.Items.Add('25 - Dispensar comissão de permanência');
   CB_CODCON.Items.Add('26 - Dispensar juros + comissão de permanência');
   CB_CODCON.Items.Add('27 - Devolver após "N" dias de vencido');
   CB_CODCON.Items.Add('28 - Protestar após "N" dias de vencido');
   CB_CODCON.Items.Add('29 - Conceder abatimento 2');
   CB_CODCON.Items.Add('30 - Regerar ficha de compensação');
   CB_CODCON.Items.Add('33 - Pedido de baixa por franco pagamento');
   CB_CODCON.Items.Add('43 - Pedido de transferência da Cobrança para o Desconto');
   CB_CODCON.Items.Add('44 - Pedido de baixa por débito em conta');
   CB_CODCON.Items.Add('45 - Transferência autorizada da Cobrança para o Desconto');
   CB_CODCON.Items.Add('46 - Transferência não autorizada da Cobrança para o Desconto');
   CB_CODCON.Items.Add('47 - Transferência efetivada da Cobrança para o Desconto');
   CB_CODCON.Items.Add('48 - Reentrada do título de Desconto na Cobrança');
   CB_CODCON.Items.Add('49 - Pedido de transferência do Desconto para a Cobrança');
   CB_CODCON.Items.Add('50 - Pedido de baixa por creli');
   CB_CODCON.Items.Add('51 - Pedido de baixa por restrição com transferência');
   CB_CODCON.Items.Add('53 - Mudança de aceite');
   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;

   CB_CODPROT.Items.Add('00 - Sem Instrucao de Protesto');
   CB_CODPROT.Items.Add('03 - Protestar no 03. dia util apos vencto.');
   CB_CODPROT.Items.Add('05 - Protestar no 05. dia util apos vencto.');
   CB_CODPROT.Items.Add('10 - Protestar no 10. dia corrido apos vencto');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
      end;

   end
else if DM1.Tb_BcoBCNUMBCO.Value=399 then // Banco HSBC
   begin
   CB_CODCON.Items.Add('01 - Entrada de titulos.');
   CB_CODCON.Items.Add('02 - Pedido de baixa.');
   CB_CODCON.Items.Add('04 - Concessão de abatimento.');
   CB_CODCON.Items.Add('05 - Cancelamento de abatimento.');
   CB_CODCON.Items.Add('06 - Alteração de vencimento.');
   CB_CODCON.Items.Add('07 - Cenceder desconto.');
   CB_CODCON.Items.Add('08 - Cancelamento desconto.');
   CB_CODCON.Items.Add('09 - Protestar');
   CB_CODCON.Items.Add('10 - Cancelamento / Sustação da instrução de protesto');
   CB_CODCON.Items.Add('31 - Alteração Outros Dados.');
   CB_CODCON.Items.Add('49 - Alteração para envio a cartorio.');
   CB_CODCON.Items.Add('50 - Inclusão de sacado no Boleto Eletrônico.');
   CB_CODCON.Items.Add('51 - Exclusão de sacado no Boleto Eletrônico.');
   CB_CODCON.Items.Add('52 - Reemissão.');
   CB_CODCON.Items.Add('53 - Entrada de titulos com parcelas faltantes.');
   CB_CODCON.Items.Add('55 - Transferencia para desconto.');
   CB_CODCON.Items.Add('57 - Protesto para fins falimentares.');
   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;

   CB_CODPROT.Items.Add('01 - Protestar XXXX dias corridos.(valido 02 - 45 dias) s/ msg boleto');
   CB_CODPROT.Items.Add('02 - Protestar XXXX dias úteis.(valido 02 - 45 dias) s/ msg boleto');
   CB_CODPROT.Items.Add('03 - Não protestar.');
   CB_CODPROT.Items.Add('04 - Protestar XXXX dias corridos.(valido 02 - 45 dias) c/ msg boleto');
   CB_CODPROT.Items.Add('05 - Protestar XXXX dias úteis.(valido 02 - 45 dias) c/ msg boleto');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
      end;

   lbl_CODPROT_QTDD.Visible:=True;
   ED_CODPROT_QTDD.Visible :=True;
   end
else if DM1.Tb_BcoBCNUMBCO.Value=756 then // Banco HSBC
   begin
   CB_CODCON.Items.Add('01 - Entrada de titulos.');
   CB_CODCON.Items.Add('02 - Pedido de baixa.');
   CB_CODCON.Items.Add('03 - Pedido de Debito.');
   CB_CODCON.Items.Add('04 - Concessão de abatimento.');
   CB_CODCON.Items.Add('05 - Cancelamento de abatimento.');
   CB_CODCON.Items.Add('06 - Alteração de vencimento.');
   CB_CODCON.Items.Add('07 - Alteração do Numero de Controle.');
   CB_CODCON.Items.Add('08 - Alteração de seu Numero.');
   CB_CODCON.Items.Add('09 - Instrução para Protestar');
   CB_CODCON.Items.Add('10 - Cancelamento / Sustação da instrução de protesto');
   CB_CODCON.Items.Add('11 - Dispensar Juros');
   CB_CODCON.Items.Add('12 - Alterar Sacado');
   CB_CODCON.Items.Add('30 - Recusa alteração sacado.');
   CB_CODCON.Items.Add('31 - Alteração Outros Dados.');
   CB_CODCON.Items.Add('34 - Baixa - Pagamento Direto ao Cedente');
   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;

   CB_CODPROT.Items.Add('00 - AUSENCIA DE INSTRUCOES');
   CB_CODPROT.Items.Add('01 - COBRAR JUROS');
   CB_CODPROT.Items.Add('03 - PROTESTAR 3 DIAS UTEIS APOS VENCIMENTO');
   CB_CODPROT.Items.Add('04 - PROTESTAR 4 DIAS UTEIS APOS VENCIMENTO');
   CB_CODPROT.Items.Add('05 - PROTESTAR 5 DIAS UTEIS APOS VENCIMENTO');
   CB_CODPROT.Items.Add('07 - NAO PROTESTAR');
   CB_CODPROT.Items.Add('10 - PROTESTAR 10 DIAS UTEIS APOS VENCIMENTO');
   CB_CODPROT.Items.Add('15 - PROTESTAR 15 DIAS UTEIS APOS VENCIMENTO');
   CB_CODPROT.Items.Add('20 - PROTESTAR 20 DIAS UTEIS APOS VENCIMENTO');;
   CB_CODPROT.Items.Add('22 - CONCEDER DESCONTO SO ATE DATA ESTIPULADA');
   CB_CODPROT.Items.Add('42 - DEVOLVER APOS 15 DIAS VENCIDO');
   CB_CODPROT.Items.Add('43 - DEVOLVER APOS 30 DIAS VENCIDO');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
      end;

   lbl_CODPROT_QTDD.Visible:=True;
   ED_CODPROT_QTDD.Visible :=True;
   end
else if (DM1.Tb_BcoBCNUMBCO.Value=353) or (DM1.Tb_BcoBCNUMBCO.Value=008) or (DM1.Tb_BcoBCNUMBCO.Value=033)  then
   begin
   CB_CODCON.Items.Add('01 - Entrada de Títulos.');
   CB_CODCON.Items.Add('02 - Pedido de Baixa.');
   CB_CODCON.Items.Add('04 - Concessão de Abatimento.');
   CB_CODCON.Items.Add('05 - Cancelamento de Abatimento.');
   CB_CODCON.Items.Add('06 - Alteração de Vencimento.');
   CB_CODCON.Items.Add('07 - Alteração da identificação do título na empresa.');
   CB_CODCON.Items.Add('08 - Alteração seu número.');
   CB_CODCON.Items.Add('09 - Protestar.');
   CB_CODCON.Items.Add('10 - Concessão de Desconto.');
   CB_CODCON.Items.Add('11 - Cancelamento de desconto.');
   CB_CODCON.Items.Add('18 - Pedido de Sustação de Protesto.');
   CB_CODCON.Items.Add('31 - Alteração de Outros Dados.');
   CB_CODCON.Items.Add('98 - Não Protestar.');
   for x_item:=0 to CB_CODCON.Items.Count-1 do
      begin
      RxDB_CODCON.Items.Add(CB_CODCON.Items[x_item]);
      RxDB_CODCON.Values.Add(IntToStr(valint(copy(CB_CODCON.Items[x_item],1,2))));
      end;

   CB_CODPROT.Items.Add('0 - Sem Instrucao de Protesto');
   CB_CODPROT.Items.Add('1 - Protestar dias corridos.');
   CB_CODPROT.Items.Add('2 - Protestar dias uteis.');
   CB_CODPROT.Items.Add('3 - Utilizar perfil cedente.');
   CB_CODPROT.Items.Add('9 - Cancelamnto de protesto automatico.');
   for x_item:=0 to CB_CODPROT.Items.Count-1 do
      begin
      RxDB_CODPROT.Items.Add(CB_CODPROT.Items[x_item]);
      RxDB_CODPROT.Values.Add(IntToStr(valint(copy(CB_CODPROT.Items[x_item],1,2))));
      end;
   end;


CB_CODPROT02.Items.Clear;
for x:=0 to CB_CODPROT.Items.Count-1 do
   begin
   CB_CODPROT02.Items.Add(CB_CODPROT02.Items[x]);
   end;
CB_CODPROT.ItemIndex:=0;
CB_CODPROT02.ItemIndex:=0;
ED_CODPROT_QTDD.Text:='0';

if DM1.Tb_BcoBCNUMBCO.Value=341 then // Banco do Brasil
   begin
   if (valint(copy(CB_CODPROT.Text,1,2))=9) or
      (valint(copy(CB_CODPROT.Text,1,2))=81) or
      (valint(copy(CB_CODPROT.Text,1,2))=82) then
      begin
      lbl_CODPROT_QTDD.Visible:=true;
      ED_CODPROT_QTDD.Visible :=true;
//      if valint(ED_CODPROT_QTDD.Text)=0 then
//         ED_CODPROT_QTDD.Text:='05';
      end
   end;

CB_CODCON.ItemIndex:=0;
CB_CODPROT.ItemIndex:=0;
CB_CODPROT02.ItemIndex:=0;
if moper=0 then
   begin
   RG_LAYOUT.ItemIndex:=DM1.Tb_BcoBCLAYOUT_PADRAO.AsInteger;
   cb_codcar_c006.ItemIndex:=DM1.Tb_BcoBCCODCAR_C006.AsInteger;
   end;
end;

procedure TFrm_CobEle_Remessa.CB_CODCONExit(Sender: TObject);
begin
CB_CODCON.ItemIndex:=CB_CODCON.Items.IndexOf(CB_CODCON.Text);
if CB_CODCON.ItemIndex>=0 then
   CB_CODCON.Text:=CB_CODCON.Items.Strings[CB_CODCON.itemIndex]
else
   begin
   with CB_CODCON do ItemIndex:=Items.IndexOf(CB_CODCON.Text);
   CB_CODCON.Text:=CB_CODCON.Items.Strings[CB_CODCON.itemIndex]
   end;
end;

procedure TFrm_CobEle_Remessa.BBGRAVARClick(Sender: TObject);
begin
Tb_CadRemBco.First;
if Tb_CadRemBco.IsEmpty then
   begin
   fmensagem('Favor digitar pelo menos um título!',0,['0'],0);
   exit;
   end;
mnumlot:=ValInt(NUMLOT.Text);
if (moper=0) and (mnumlot<=0) then
   begin
   DM1.Query1.Close;
   DM1.query1.SQL.clear;
//   DM1.query1.SQL.Add('Select max(RECHAVE) AS CHAVE from CADREMBCO where '
//                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' RECODEMP=0'+InttoStr(codemp)+' and ')
//                  +' RECODBCO=0'+Trim(CODBCO.Text));

   DM1.query1.SQL.Add('Select max(RECHAVE) AS CHAVE from CADREMBCO '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' WHERE RECODEMP=0'+InttoStr(codemp)));
   DM1.Query1.Open;
   mChaveLote:=DM1.Query1.Fields[0].AsFloat+1;;
   end
else
   begin
   mChaveLote:=mnumlot;
   DM1.Query1.Close;
   DM1.query1.SQL.clear;
   DM1.query1.SQL.Add(' Delete from CADREMBCO where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' RECODEMP=0'+InttoStr(codemp)+' and ')
                  +' RELOTSEQ=0'
                  +' and RECHAVE=0'+FloatToStr(mnumlot)
                  +' and RECODBCO=0'+FloatToStr(mnumbco));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   Except
      fmensagem('Erro 1149 ao Excluir Lote!',0,['0'],0);
      exit;
      end;



   end;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
{
DM1.Query3.Params.CreateParam(ftstring,'RECODEMP',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RELOTSEQ',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECHAVE',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODBCO',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RELAYOUT',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODEMP_DUP',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RENUMDUP',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REDESD',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RETIPO',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REVALDUP',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RENOSNUM',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REDNOSNUM',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REDATREM',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REDATRET',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODRET',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODCOM',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODCAR',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODVARCAR',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODPROT',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODPROT02',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODPROT03',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REPROTESTO_QTDD',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REQTDMAN',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RESITREG',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REDTEMIS',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODCLI',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODECF',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REDTVCTO',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REDESCF',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REDTDESCF',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REJURD',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REDESCD',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REMULTA',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REQTDDM',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REACEITE',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REESPECIE',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODBAR',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECODDIG',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RECUSBCO',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RETIPCOB',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'RESTATUS',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REORDEM',ptinput);
DM1.Query3.Params.CreateParam(ftstring,'REOBS',ptinput);
}
DM1.Query3.SQL.Add('Insert into CADREMBCO ('
          +' RECODEMP'
          +',RELOTSEQ'
          +',RECHAVE'
          +',RECODBCO'
          +',RELAYOUT'
          +',RECODEMP_DUP'
          +',RENUMDUP'
          +',REDESD'
          +',RETIPO'
          +',REVALDUP'
          +',RENOSNUM'
          +',REDNOSNUM'
          +',REDATREM'
          +',REDATRET'
          +',RECODRET'
          +',RECODCOM'
          +',RECODCAR'
          +',RECODVARCAR'
          +',RECODPROT'
          +',RECODPROT02'
          +',RECODPROT03'
          +',REPROTESTO_QTDD'
          +',REQTDMAN'
          +',RESITREG'
          +',REDTEMIS'
          +',RECODCLI'
          +',RECODECF'
          +',REDTVCTO'
          +',REDESCF'
          +',REDTDESCF'
          +',REJURD'
          +',REDESCD'
          +',REMULTA'
          +',REQTDDM'
          +',REACEITE'
          +',REESPECIE'
          +',RECODBAR'
          +',RECODDIG'
          +',RECUSBCO'
          +',RETIPCOB'
          +',RESTATUS'
          +',REORDEM'
          +',REOBS'
          +',RETIT_CHAVE_ID_ANO'
          +',RETIT_CHAVE_ID'
          +') Values  ('
          +' :RECODEMP'
          +',:RELOTSEQ'
          +',:RECHAVE'
          +',:RECODBCO'
          +',:RELAYOUT'
          +',:RECODEMP_DUP'
          +',:RENUMDUP'
          +',:REDESD'
          +',:RETIPO'
          +',:REVALDUP'
          +',:RENOSNUM'
          +',:REDNOSNUM'
          +',:REDATREM'
          +',:REDATRET'
          +',:RECODRET'
          +',:RECODCOM'
          +',:RECODCAR'
          +',:RECODVARCAR'
          +',:RECODPROT'
          +',:RECODPROT02'
          +',:RECODPROT03'
          +',:REPROTESTO_QTDD'
          +',:REQTDMAN'
          +',:RESITREG'
          +',:REDTEMIS'
          +',:RECODCLI'
          +',:RECODECF'
          +',:REDTVCTO'
          +',:REDESCF'
          +',:REDTDESCF'
          +',:REJURD'
          +',:REDESCD'
          +',:REMULTA'
          +',:REQTDDM'
          +',:REACEITE'
          +',:REESPECIE'
          +',:RECODBAR'
          +',:RECODDIG'
          +',:RECUSBCO'
          +',:RETIPCOB'
          +',:RESTATUS'
          +',:REORDEM'
          +',:REOBS'
          +',:RETIT_CHAVE_ID_ANO'
          +',:RETIT_CHAVE_ID'

          +')'
          );
Tb_CadRemBco.First;
While not Tb_CadRemBco.Eof do
   begin
   DM1.Query3.ParambyName('RECODEMP').AsFloat    :=codemp;
   DM1.Query3.ParambyName('RELOTSEQ').AsFloat    :=0;
   DM1.Query3.ParambyName('RECHAVE').AsFloat     :=mChaveLote;
   DM1.Query3.ParambyName('RECODBCO').AsFloat    :=fsonumero(CODBCO.Text);
   DM1.Query3.ParambyName('RELAYOUT').AsFloat    :=RG_LAYOUT.ItemIndex;
   DM1.Query3.ParambyName('RECODEMP_DUP').AsFloat:=Tb_CadRemBcoRECODEMP_DUP.Value;
   DM1.Query3.ParambyName('RENUMDUP').AsFloat    :=Tb_CadRemBcoRENUMDUP.Value;
   DM1.Query3.ParambyName('REDESD').AsString     :=Tb_CadRemBcoREDESD.Value;
   DM1.Query3.ParambyName('RETIPO').AsFloat      :=Tb_CadRemBcoRETIPO.Value;
   DM1.Query3.ParambyName('REVALDUP').AsFloat    :=Tb_CadRemBcoREVALDUP.Value;
   DM1.Query3.ParambyName('RENOSNUM').AsString   :=Tb_CadRemBcoRENOSNUM.Value;
   DM1.Query3.ParambyName('REDNOSNUM').AsString   :=Tb_CadRemBcoREDNOSNUM.Value;
   DM1.Query3.ParambyName('REDATREM').AsDateTime :=Tb_CadRemBcoREDATREM.Value;
   DM1.Query3.ParambyName('REDATRET').AsDateTime :=Tb_CadRemBcoREDATRET.Value;
   DM1.Query3.ParambyName('RECODRET').AsFloat    :=Tb_CadRemBcoRECODRET.Value;
   DM1.Query3.ParambyName('RECODCOM').AsFloat    :=Tb_CadRemBcoRECODCOM.Value;
   DM1.Query3.ParambyName('RECODCAR').AsFloat    :=Tb_CadRemBcoRECODCAR.Value;
   DM1.Query3.ParambyName('RECODVARCAR').AsFloat :=Tb_CadRemBcoRECODVARCAR.Value;
   DM1.Query3.ParambyName('RECODPROT').AsFloat   :=Tb_CadRemBcoRECODPROT.Value;
   DM1.Query3.ParambyName('RECODPROT02').AsFloat :=Tb_CadRemBcoRECODPROT02.Value;
   DM1.Query3.ParambyName('RECODPROT03').AsFloat :=Tb_CadRemBcoRECODPROT03.Value;
   DM1.Query3.ParambyName('REPROTESTO_QTDD').AsFloat :=Tb_CadRemBcoREPROTESTO_QTDD.Value;
   DM1.Query3.ParambyName('REQTDMAN').AsFloat    :=Tb_CadRemBcoREQTDMAN.Value;
   DM1.Query3.ParambyName('RESITREG').AsFloat    :=0;
   DM1.Query3.ParambyName('REDTEMIS').AsDateTime :=Tb_CadRemBcoREDTEMIS.Value;
   DM1.Query3.ParambyName('RECODCLI').AsFloat    :=Tb_CadRemBcoRECODCLI.Value;
   DM1.Query3.ParambyName('RECODECF').AsFloat    :=Tb_CadRemBcoRECODECF.Value;
   DM1.Query3.ParambyName('REDTVCTO').AsDateTime :=Tb_CadRemBcoREDTVCTO.Value;
   DM1.Query3.ParambyName('REDESCF').AsFloat     :=Tb_CadRemBcoREDESCF.Value;
   DM1.Query3.ParambyName('REDTDESCF').AsDateTime:=Tb_CadRemBcoREDTDESCF.Value;
   DM1.Query3.ParambyName('REJURD').AsFloat      :=Tb_CadRemBcoREJURD.Value;
   DM1.Query3.ParambyName('REDESCD').AsFloat     :=Tb_CadRemBcoREDESCD.Value;
   DM1.Query3.ParambyName('REMULTA').AsFloat     :=Tb_CadRemBcoREMULTA.Value;
   DM1.Query3.ParambyName('REQTDDM').AsFloat     :=Tb_CadRemBcoREQTDDM.Value;
   DM1.Query3.ParambyName('REACEITE').AsString   :=Tb_CadRemBcoREACEITE.Value;
   DM1.Query3.ParambyName('REESPECIE').AsString  :=Tb_CadRemBcoREESPECIE.Value;
   DM1.Query3.ParambyName('RECODBAR').AsString   :=Tb_CadRemBcoRECODBAR.Value;
   DM1.Query3.ParambyName('RECODDIG').AsString   :=Tb_CadRemBcoRECODDIG.Value;
   DM1.Query3.ParambyName('RECUSBCO').AsFloat    :=Tb_CadRemBcoRECUSBCO.Value;
   DM1.Query3.ParambyName('RETIPCOB').AsFloat    :=Tb_CadRemBcoRETIPCOB.Value;
   DM1.Query3.ParambyName('RESTATUS').AsFloat    :=Tb_CadRemBcoRESTATUS.Value;
   DM1.Query3.ParambyName('REORDEM').AsFloat     :=Tb_CadRemBcoREORDEM.Value;
   DM1.Query3.ParambyName('REOBS').AsString      :=Tb_CadRemBcoREOBS.Value;
   DM1.Query3.ParambyName('RETIT_CHAVE_ID_ANO').AsInteger      :=Tb_CadRemBcoRETIT_CHAVE_ID_ANO.Value;
   DM1.Query3.ParambyName('RETIT_CHAVE_ID').AsInteger      :=Tb_CadRemBcoRETIT_CHAVE_ID.Value;

   try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 964 ao incluir registros!',0,['0'],0);
      end;
   DM1.Query3.Close;
   Tb_CadRemBco.Next;
   end;

fCarregarDados(mnumlot);

//BBLIMPAR.Click;

end;

procedure TFrm_CobEle_Remessa.item_pesquisarClick(Sender: TObject);
begin
if Trim(CB_CODCON.Text)='' then
   begin
   fmensagem('Favor Selecionar um Comando válido!',0,['0'],0);
   CB_CODCON.SetFocus;
   exit;
   end;
if Trim(CB_CODPROT.Text)='' then
   begin
   fmensagem('Favor Selecionar um Codigo de Protesto Válido!',0,['0'],0);
   CB_CODCON.SetFocus;
   exit;
   end;
if Frm_CobEle_Remessa_Pesq=nil then
   Application.CreateForm(TFrm_CobEle_remessa_Pesq, Frm_CobEle_Remessa_Pesq)
else
   begin
   Frm_CobEle_Remessa_Pesq.free;
   Frm_CobEle_Remessa_Pesq:=nil;
   Application.CreateForm(TFrm_CobEle_remessa_Pesq, Frm_CobEle_Remessa_Pesq)
   end;

Frm_CobEle_Remessa_Pesq.CODBCO.Text:=CODBCO.Text;
Frm_CobEle_Remessa_Pesq.NOMBCO.Text:=NOMBCO.Text;
Frm_CobEle_Remessa_Pesq.ShowModal;
if not Frm_CobEle_Remessa_Pesq.Qr_Dar.active then
   exit;

Frm_CobEle_Remessa_Pesq.Qr_Dar.First;
While not Frm_CobEle_Remessa_Pesq.Qr_Dar.Eof do
  begin
  if flcadcli(1,0,Frm_CobEle_Remessa_Pesq.Qr_DarCRCODCLI.AsString) then
    begin
    if (Trim(DM1.Tb_CliCENDERC.AsString)='') or (Trim(DM1.Tb_CliCBAIRROC.AsString)='')
        or (Trim(DM1.Tb_CliCCIDADEC.AsString)='') or (Trim(DM1.Tb_CliCUFC.AsString)='')
        or (Trim(DM1.Tb_CliCCEPC.AsString)='') then
      begin
      fmensagem('Dados Endereço de Cobrança do Cliente '+DM1.Tb_CliCRAZAO.AsString
               +#13+' incompletos!',0,['0'],0);
      Frm_CobEle_Remessa_Pesq.Qr_Dar.Next;
      Continue;
      end;
    end;

  if trim(Frm_CobEle_Remessa_Pesq.Qr_DarOK.AsString)='' then
     begin
     Frm_CobEle_Remessa_Pesq.Qr_Dar.Next;
     Continue;
     end;
  if Tb_CadRemBco.Locate('RECODEMP_DUP;RENUMDUP;REDESD;REDTEMIS',
                         VarArrayOf([Frm_CobEle_Remessa_Pesq.Qr_DarCRCODEMP.AsString,
                                     Frm_CobEle_Remessa_Pesq.Qr_DarCRNUMERO.AsString,
                                     Frm_CobEle_Remessa_Pesq.Qr_DarCRDESD.AsString,
                                     Frm_CobEle_Remessa_Pesq.Qr_DarCRDTEMIS.AsString]), [loCaseInsensitive]) then
     begin
     Frm_CobEle_Remessa_Pesq.Qr_Dar.Next;
     Continue;
     end;

  Tb_CadRemBco.Append;
  Tb_CadRemBcoRECODEMP_DUP.Value:=Frm_CobEle_Remessa_Pesq.Qr_DarCRCODEMP.Value;
  Tb_CadRemBcoRENUMDUP.Value    :=Frm_CobEle_Remessa_Pesq.Qr_DarCRNUMERO.Value;
  Tb_CadRemBcoREDESD.Value      :=Frm_CobEle_Remessa_Pesq.Qr_DarCRDESD.Value;
  Tb_CadRemBcoRETIPO.Value      :=Frm_CobEle_Remessa_Pesq.Qr_DarCRDUP.Value;
  Tb_CadRemBcoRECODCLI.Value    :=Frm_CobEle_Remessa_Pesq.Qr_DarCRCODCLI.Value;
  Tb_CadRemBcoREVALDUP.Value    :=Frm_CobEle_Remessa_Pesq.Qr_DarCRVALOR.Value;
  Tb_CadRemBcoRERAZAO.Value     :=Frm_CobEle_Remessa_Pesq.Qr_DarCRAZAO.Value;
  Tb_CadRemBcoRENOSNUM.Value    :=Frm_CobEle_Remessa_Pesq.Qr_DarCRNOSNUM.Value;
  Tb_CadRemBcoREDNOSNUM.Value   :=Frm_CobEle_Remessa_Pesq.Qr_DarCRDNOSNUM.Value;
  Tb_CadRemBcoRETIT_CHAVE_ID_ANO.Value   :=Frm_CobEle_Remessa_Pesq.Qr_DarCRCHAVE_ID_ANO.AsInteger;
  Tb_CadRemBcoRETIT_CHAVE_ID.Value       :=Frm_CobEle_Remessa_Pesq.Qr_DarCRCHAVE_ID.AsInteger;

  Tb_CadRemBcoREDATREM.AsDateTime    :=date;
  Tb_CadRemBcoREDNOSNUM.Value   :=Frm_CobEle_Remessa_Pesq.Qr_DarCRDNOSNUM.Value;
  Tb_CadRemBcoRECODCOM.Value    :=fsonumero(copy(CB_CODCON.Text,1,5));
  Tb_CadRemBcoRECODCAR.Value    :=fsonumero(DM1.Tb_BcoBCCODCAR.Value);
  Tb_CadRemBcoRECODVARCAR.Value :=fsonumero(DM1.Tb_BcoBCCODVAR.Value);
  Tb_CadRemBcoRECODPROT.Value   :=fsonumero(copy(CB_CODPROT.Text,1,5));
  Tb_CadRemBcoRECODPROT02.Value :=fsonumero(copy(CB_CODPROT02.Text,1,5));
  Tb_CadRemBcoRECODPROT03.Value :=0;
  Tb_CadRemBcoREPROTESTO_QTDD.Value :=valfloat(ED_CODPROT_QTDD.Text);
//  if DM1.Tb_BcoBCNUMBCO.Value=001 then
//     Tb_CadRemBcoREPROTESTO_QTDD.Value :=5;


  if not (Frm_CobEle_Remessa_Pesq.Qr_DarCRDTVCTO.IsNull) and (Frm_CobEle_Remessa_Pesq.Qr_DarCRDTVCTO.Value>pdatanula) then
     Tb_CadRemBcoREDTVCTO.Value    :=Frm_CobEle_Remessa_Pesq.Qr_DarCRDTVCTO.Value;
  Tb_CadRemBcoREDESCF.Value     :=Frm_CobEle_Remessa_Pesq.Qr_DarCRDESCF.Value;
  if not (Frm_CobEle_Remessa_Pesq.Qr_DarCRDTDESCF.IsNull) and (Frm_CobEle_Remessa_Pesq.Qr_DarCRDTDESCF.Value>pdatanula) then
     Tb_CadRemBcoREDTDESCF.Value   :=Frm_CobEle_Remessa_Pesq.Qr_DarCRDTDESCF.Value;
  Tb_CadRemBcoREDTEMIS.Value       :=Frm_CobEle_Remessa_Pesq.Qr_DarCRDTEMIS.Value;

  Tb_CadRemBcoREJURD.Value      :=Frm_CobEle_Remessa_Pesq.Qr_DarCRJURD.Value;
  Tb_CadRemBcoREMULTA.Value     :=Frm_CobEle_Remessa_Pesq.Qr_DarCRMULTA.Value;
  Tb_CadRemBcoREQTDDM.Value     :=Frm_CobEle_Remessa_Pesq.Qr_DarCRQTDDM.Value;
  Tb_CadRemBcoREACEITE.Value    :=Frm_CobEle_Remessa_Pesq.Qr_DarCRACEITE.Value;
  Tb_CadRemBcoREESPECIE.Value   :=Frm_CobEle_Remessa_Pesq.Qr_DarCRESPECIE.Value;
  Tb_CadRemBcoRECODBAR.Value    :=Frm_CobEle_Remessa_Pesq.Qr_DarCRCODBAR.Value;
  Tb_CadRemBcoRECODDIG.Value    :=Frm_CobEle_Remessa_Pesq.Qr_DarCRCODDIG.Value;
  Tb_CadRemBcoREOBS.Value       :=Frm_CobEle_Remessa_Pesq.Qr_DarCROBS.Value;
  Tb_CadRemBcoqtdrem.Value      :=Frm_CobEle_Remessa_Pesq.Qr_Darqtdrem.AsInteger;
  Tb_CadRemBcoRECUSBCO.Value    :=0;
  Tb_CadRemBcoRETIPCOB.Value    :=0;
  mOrdem_item:=mOrdem_item+1;
  Tb_CadRemBcoREORDEM.Value:=mOrdem_item;
  Tb_CadRemBcoREDESCD.AsFloat   :=Frm_CobEle_Remessa_Pesq.Qr_DarCRDESCD.AsFloat;
  Tb_CadRemBco.Post;
  Frm_CobEle_Remessa_Pesq.Qr_Dar.Next;
  end;
Frm_CobEle_Remessa_Pesq.Free;
Frm_CobEle_Remessa_Pesq:=nil;
end;

procedure TFrm_CobEle_Remessa.Tb_CadRemBcoAfterInsert(DataSet: TDataSet);
begin
Tb_CadRemBcoRECODEMP.Value:=codemp;
Tb_CadRemBcoRELOTSEQ.Value:=0;
Tb_CadRemBcoRECHAVE.Value :=0;
Tb_CadRemBcoRECODBCO.Value:=fsonumero(CODBCO.Text);
Tb_CadRemBcoRESTATUS.Value:=0;
mValorAnt:=0;
moper_item:=0;
end;

procedure TFrm_CobEle_Remessa.Tb_CadRemBcoAfterPost(DataSet: TDataSet);
begin
if mValorAnt=0 then
   mQtdDup:=mQtdDup+1;
mTotalDup:=mTotalDup+Tb_CadRemBcoREVALDUP.Value-mValorAnt;
QTDDOC.Caption:=IntToStr(mQtdDup);
TOTLIQ.Caption:=FormatFloat(mcasas, mTotalDup);
end;

procedure TFrm_CobEle_Remessa.Tb_CadRemBcoAfterEdit(DataSet: TDataSet);
begin
mValorAnt:=Tb_CadRemBcoREVALDUP.Value;
moper_item:=1;
end;

procedure TFrm_CobEle_Remessa.Tb_CadRemBcoAfterCancel(DataSet: TDataSet);
begin
mValorAnt:=0;
end;

procedure TFrm_CobEle_Remessa.Tb_CadRemBcoBeforeDelete(DataSet: TDataSet);
begin
mTotalDup:=mTotalDup-Tb_CadRemBcoREVALDUP.Value;
mQtdDup:=mQtdDup-1;
QTDDOC.Caption:=IntToStr(mQtdDup);
TOTLIQ.Caption:=FormatFloat(mcasas, mTotalDup);

end;

procedure TFrm_CobEle_Remessa.Tb_CadRemBcoBeforePost(DataSet: TDataSet);
begin
if ((Tb_CadRemBcoREVALDUP.IsNull) or (Tb_CadRemBcoRENUMDUP.IsNull)) or
   (Tb_CadRemBcoREVALDUP.Value=0)  then
//   ((Tb_CadRemBcoREVALDUP.Value=0) or (Tb_CadRemBcoRENUMDUP.Value=0)) then
   begin
   Tb_CadRemBco.Cancel;
   abort;
   end;
{if moper_item=0 then
   begin
   mOrdem_item:=mOrdem_item+1;
   Tb_CadRemBcoREORDEM.Value:=mOrdem_item;
   DM5.Query1.Close;
   DM5.Query1.SQL.Clear;
   DM5.Query1.Params.CreateParam(ftString,'RECODEMP_DUP',ptInput);
   DM5.Query1.Params.CreateParam(ftString,'RENUMDUP',ptInput);
   DM5.Query1.Params.CreateParam(ftString,'REDESD',ptInput);
   DM5.Query1.Params.CreateParam(ftString,'REDTEMIS',ptInput);
   DM5.Query1.SQL.Add('Select COUNT(*) FROM '+mTabTmp
                     +' where RECODEMP_DUP=:RECODEMP_DUP'
                     +' and   RENUMDUP=:RENUMDUP'
                     +' and   REDESD=:REDESD'
                     +' and   REDTEMIS=:REDTEMIS');
   DM5.Query1.ParamByName('RECODEMP_DUP').AsFloat :=Tb_CadRemBcoRECODEMP.AsFloat;
   DM5.Query1.ParamByName('RENUMDUP').AsFloat     :=Tb_CadRemBcoRENUMDUP.AsFloat;
   DM5.Query1.ParamByName('REDESD').AsString      :=Tb_CadRemBcoREDESD.AsString;
   DM5.Query1.ParamByName('REDTEMIS').AsDateTime  :=Tb_CadRemBcoREDTEMIS.AsDateTime;
   DM5.Query1.Open;
   if DM5.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Registro ja digitado!',0,['0'],0);
      DBGrid1.SelectedField:=Tb_CadRemBcoRENUMDUP;
      abort;
      end;
   end
else
   begin
   DM5.Query1.Close;
   DM5.Query1.SQL.Clear;
   DM5.Query1.Params.CreateParam(ftString,'RECODEMP_DUP',ptInput);
   DM5.Query1.Params.CreateParam(ftString,'RENUMDUP',ptInput);
   DM5.Query1.Params.CreateParam(ftString,'REDESD',ptInput);
   DM5.Query1.Params.CreateParam(ftString,'REDTEMIS',ptInput);
   DM5.Query1.Params.CreateParam(ftString,'REORDEM',ptInput);
   DM5.Query1.SQL.Add('Select COUNT(*) FROM '+mTabTmp
                     +' where RECODEMP_DUP=:RECODEMP_DUP'
                     +' and   RENUMDUP=:RENUMDUP'
                     +' and   REDESD=:REDESD'
                     +' and   REDTEMIS=:REDTEMIS'
                     +' and   REORDEM<>:REORDEM');
   DM5.Query1.ParamByName('RECODEMP_DUP').AsFloat :=Tb_CadRemBcoRECODEMP_DUP.AsFloat;
   DM5.Query1.ParamByName('RENUMDUP').AsFloat     :=Tb_CadRemBcoRENUMDUP.AsFloat;
   DM5.Query1.ParamByName('REDESD').AsString      :=Tb_CadRemBcoREDESD.AsString;
   DM5.Query1.ParamByName('REDTEMIS').AsDateTime  :=Tb_CadRemBcoREDTEMIS.AsDateTime;
   DM5.Query1.ParamByName('REORDEM').AsFloat      :=Tb_CadRemBcoREORDEM.AsFloat;
   DM5.Query1.Open;
   if DM5.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Registro ja digitado!',0,['0'],0);
      DBGrid1.SelectedField:=Tb_CadRemBcoRENUMDUP;
      abort;
      end;
   end;}
end;

procedure TFrm_CobEle_Remessa.DBGrid1Exit(Sender: TObject);
begin
if Tb_CadRemBco.State in [dsedit,dsinsert] then
   Tb_CadRemBco.Post;
end;

procedure TFrm_CobEle_Remessa.CB_CODCONEnter(Sender: TObject);
begin
if Trim(NOMBCO.Text)='' then
   begin
   fmensagem('Favor Digitar o Código do Banco!',0,['0'],0);
   CODBCO.Setfocus;
   end;
end;

function fCobEle_rem001Cnab4007001dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;
// Remessa para o Banco 001 - Banco do Brasil convenio c/ 7 digitos
var
f: TextFile;
mlinha: String;
mSeqReg: Integer;
mArqsai: String;
begin
result:=true;
mArqsai:=pPasta+'\CBR641'+FormatFloat('0000',pCodRem)+'.REM';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;

mSeqReg:=1;
mlinha:='0';   //  Identificação do Registro Header: “0” (zero)      CAMPO 01
mlinha:=mlinha+'1';              // Tipo de Operação: “1” (um)       CAMPO 02
mlinha:=mlinha+insere2('REMESSA',' ',7);  //  Identificação por Extenso do Tipo de Operação 01 CAMPO 03
mlinha:=mlinha+'01';       // Identificação do Tipo de Serviço: “01” CAMPO 04
mlinha:=mlinha+insere2('COBRANCA',' ',8); // Identificação por Extenso do Tipo de Serviço: “COBRANCA”  05
mlinha:=mlinha+insere2(' ',' ',7);  // Complemento do Registro: “Brancos”  CAMPO 06
mlinha:=mlinha+insere(InttoStr(pcodage),'0',4);  // Prefixo da Agência: Número da Agência onde está cadastrado o convênio líder do cedente 02 CAMPO 07
mlinha:=mlinha+insere2(pDigAge,' ',1);  // Dígito Verificador -D.V. -do Prefixo da Agência. 02  CAMPO 08
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',8); // Número da Conta Corrente: Número da conta onde está cadastrado o Convênio Líder do Cedente 02  CAMPO 09
mlinha:=mlinha+insere2(pDigCed,' ',1); // Dígito Verificador -D.V. – do Número da Conta Corrente do Cedente 02 CAMPO 10
mlinha:=mlinha+insere('0','0',6);      // Complemento do Registro: “000000”  CAMPO 11
mlinha:=mlinha+insere2(pNomCed,' ',30); // Nome do Cedente  CAMPO 12
mlinha:=mlinha+insere2('001BANCODOBRASIL',' ',18); // 001BANCODOBRASIL  CAMPO 13
mlinha:=mlinha+FormatDateTime('DDMMYY',pDateRem);  //  Data da Gravação: Informe no formato “DDMMAA” 21  CAMPO 14
mlinha:=mlinha+insere(IntToStr(pCodRem),'0',7); // Seqüencial da Remessa 03  CAMPO 15
mlinha:=mlinha+insere2(' ',' ',22);  // Complemento do Registro: “Brancos”  CAMPO 16
mlinha:=mlinha+insere(IntToStr(pCodConv),'0',7);  // Número do Convênio Líder (numeração acima de 1.000.000 um milhão)" 04  CAMPO 17
mlinha:=mlinha+insere2(' ',' ',258);  //  Complemento do Registro: “Brancos”  CAMPO 18
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);  // Seqüencial do Registro:”000001”  CAMPO 19
Writeln(f,mlinha);

Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
   begin
   if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC',
                'C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
      begin
      fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString,
                 0,['0'],0);
      Frm_CobEle_Remessa.Tb_CadRemBco.Next;
      Continue;
      end;
   mSeqReg:=mSeqReg+1;
   mlinha:='7'; // Identificação do Registro Detalhe: 7 (sete)  CAMPO 01

   if DM1.Tb_EmpCNPF.AsFloat<>0 then
      begin
      mlinha:=mlinha+'01';  //  Tipo de Inscrição do Cedente 22  CAMPO 02
      mlinha:=mlinha+insere(DM1.Tb_EmpCNPF.AsString,'0',14); // Número do CPF/CNPJ do Cedente CAMPO 03
      end
   else
      begin
      mlinha:=mlinha+'02';   //  Tipo de Inscrição do Cedente 22  CAMPO 02
      mlinha:=mlinha+insere(DM1.Tb_EmpCGC.AsString,'0',14); // Número do CPF/CNPJ do Cedente  CAMPO 03
      end;

   mlinha:=mlinha+insere(InttoStr(pcodage),'0',4); // Prefixo da Agência 02 CAMPO 04
   mlinha:=mlinha+insere2(pDigAge,' ',1); // Dígito Verificador -D.V. -do Prefixo da Agência 02 CAMPO 05
   mlinha:=mlinha+insere(InttoStr(pCodCed),'0',8); // Número da Conta Corrente do Cedente 02 CAMPO 06
   mlinha:=mlinha+insere2(pDigCed,' ',1);  // Dígito Verificador -D.V. -do Número da Conta Corrente do Cedente 02 CAMPO 07
   mlinha:=mlinha+insere(IntToStr(pCodConv),'0',7);  // Número do Convênio de Cobrança do Cedente 02  CAMPO 08
//observacao para o numero da duplicata MANTER SEMPRE O MESMO PADRAO PARA QUE SEJA RECONHECIDO
// NO RETORNO
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',6);
   mlinha:=mlinha+'/';
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',2);
   mlinha:=mlinha+'0.'+iif(Frm_CobEle_Remessa.Tb_CadRemBcoRECODEMP_DUP.AsInteger>100,'1','0');
   mlinha:=mlinha+insere2(' ',' ',13); // restante do numero da duplicata //  Código de Controle da Empresa 23 CAMPO 09

   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.AsString,' ',17); // Nosso-Número 06 CAMPO 10

   mlinha:=mlinha+insere('0','0',02); // numero da prestação preenchimento c/0  // Número da Prestação: “00” (Zeros)  CAMPO 11
   mlinha:=mlinha+insere('0','0',02); // indicativo de grupo de valor = zeros //  Grupo de Valor: “00” (Zeros) CAMPO 12
   mlinha:=mlinha+insere2(' ',' ',03); // brancos //  Complemento do Registro: “Brancos”  CAMPO 13
   mlinha:=mlinha+insere2(' ',' ',01); // = brancos na posiçao 352a391 mensagemS // Indicativo de Mensagem ou Sacador/Avalista 13  CAMPO 14
                                      // = A 352a391 CNPJ-CNPF do sacador
{
   if (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=31) or
      (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=51) then
      mlinha:=mlinha+insere2('SD',' ',03)
   else if (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=12) then
      mlinha:=mlinha+insere2('AUI',' ',03)
   else
      mlinha:=mlinha+insere2('AI',' ',03);
}
   mlinha:=mlinha+insere2('',' ',03); // PREFIXO DO TITULO  // Prefixo do Título: “Brancos”  CAMPO 15

   if Frm_CobEle_Remessa.Tb_CadRemBcoRECODVARCAR.AsInteger<>0 then
      mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODVARCAR.AsString,'0',03) // Código das Variaçoes da Carteira // CAMPO 16
   else
      mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsString,'0',03); // Código das Variaçoes da Carteira // CAMPO 16

   mlinha:=mlinha+insere('0','0',01); // Conta Caução Conta Caução: “0” (Zero)  CAMPO 17
   mlinha:=mlinha+insere('0','0',06); // Número do bordero  CAMPO 18 Número do Borderô: “000000” (Zeros)
   mlinha:=mlinha+insere2(' ',' ',05); // Tipo de Cobrança CAMPO 19
{


TIPO DE COBRANÇA
a) Carteiras 11 ou 17:
-	04DSC: Solicitação de registro na Modalidade Descontada
-	08VDR: Solicitação de registro na Modalidade BBVendor
-	02VIN: solicitação de registro na Modalidade Vinculada
-	BRANCOS: Registro na Modalidade Simples
b) Carteiras 12, 31, 51:
    - BRANCOS
CARTEIRA DE COBRANÇA
11 - Cobrança Simples/Descontada/BBVendor
12 - Cobrança em Unidade Variável
17 - Cobrança Simples/Descontada
31 - Cobrança Caucionada/Vinculada
51 - Cobrança Descontada
 }
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsString,'0',02); // Código da Carteira // CAMPO 20
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString,'0',02); // Código do Comando // CAMPO 21
//observacao para o numero da duplicata MANTER SEMPRE O MESMO PADRAO PARA QUE SEJA RECONHECIDO
// NO RETORNO
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',6); // Seu Número/Número do Título Atribuído pelo Cedente 05 CAMPO 22
   mlinha:=mlinha+'/';
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',2);
   mlinha:=mlinha+insere2(' ',' ',01); // restante do numero da duplicata

   if Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value=Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value then
      mlinha:=mlinha+'999999' // Data de Vencimento c/Apresentação 23.7 121 a 126 9(006) Data de Vencimento 08
   else
      mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data de Vencimento da duplicata 23.7 121 a 126 9(006) Data de Vencimento 08
   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.Value*100),'0',13); // Valor do Titulo 24.7 127 a 139 9(011)v99 Valor do Título 19
   mlinha:=mlinha+'001'; // Código do Banco 25.7 140 a 142 9(003) Número do Banco: “001”
   mlinha:=mlinha+insere('0','0',04); // Agencia Cobradora 26.7 143 a 146 9(004) Prefixo da Agência Cobradora: “0000” 26
   mlinha:=mlinha+insere(' ',' ',01); // Digito da Agencia Cobradora 27.7 147 a 147 X(001) Dígito Verificador do Prefixo da Agência Cobradora: “Brancos”
   if Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=5 then
      mlinha:=mlinha+'02' // nota de credito 28.7 148 a 149 9(002) Espécie de Titulo 07
   else if (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=1) or
           (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=2) or
           (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=6) then
      mlinha:=mlinha+'10' // Cheques 28.7 148 a 149 9(002) Espécie de Titulo 07
   else
      mlinha:=mlinha+'01'; // Duplicata Mercantil; 28.7 148 a 149 9(002) Espécie de Titulo 07

   if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
      mlinha:=mlinha+'S'  // Aceite 29.7 150 a 150 X(001) Aceite do Título: 27
   else
      mlinha:=mlinha+'N';  // Aceite 29.7 150 a 150 X(001) Aceite do Título: 27
   mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value); // Data de Emissao 30.7 151 a 156 9(006) Data de Emissão: Informe no formato “DDMMAA” 28 
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsString,'0',2); // 1a. instrucao 31.7 157 a 158 9(002) Instrução Codificada 09
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT02.AsString,'0',2); // 2a. instrucao 32.7 159 a 160 9(002) Instrução Codificada 09 
   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.Value*100),'0',13); // Juros por dia de Atraso 33.7 161 a 173 9(011)v99 Juros de Mora por Dia de Atraso 10
   if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.AsFloat>0 then // desconto por dia de antecipação
      begin
      mlinha:=mlinha+'777777'; // Data limite para desconto  34.7 174 a 179 9(006) Data Limite para Concessão de Desconto/Data de Operação do BBVendor/Juros de Mora. 11
      mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.Value*100),'0',13); // desconto por dia 35.7 180 a 192 9(011)v99 Valor do Desconto 29
      end
   else
      begin
      if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF.AsFloat>0 then
         begin
         if Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.AsDateTime>=Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.AsDateTime then
            mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.Value) // Data limite para desconto 34.7 174 a 179 9(006) Data Limite para Concessão de Desconto/Data de Operação do BBVendor/Juros de Mora. 11
         else
            mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data limite para desconto 34.7 174 a 179 9(006) Data Limite para Concessão de Desconto/Data de Operação do BBVendor/Juros de Mora. 11
         end
      else
         mlinha:=mlinha+'000000'; // Data limite para desconto 34.7 174 a 179 9(006) Data Limite para Concessão de Desconto/Data de Operação do BBVendor/Juros de Mora. 11
       mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF .Value*100),'0',13); // desconto ate determinada data 35.7 180 a 192 9(011)v99 Valor do Desconto 29 
      end;
   mlinha:=mlinha+insere('0','0',13); // Valor do IOF - Campo 36 36.7 193 a 205 9(011)v99 Valor do IOF/Qtde Unidade Variável. 30 
   mlinha:=mlinha+insere('0','0',13); // Valor do Abatimento - Campo 37  37.7 206 a 218 9(011)v99 Valor do Abatimento 31 
   if DM1.Query2.FieldByName('CCNPJ').AsFloat=0 then
      begin
      mlinha:=mlinha+'01';  //38.7 219 a 220 9(002) Tipo de Inscrição do Sacado 32
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',14); // 39.7 221 a 234 9(014) Número do CNPJ ou CPF do Sacado 33
      end
   else
      begin
      mlinha:=mlinha+'02'; // 38.7 219 a 220 9(002) Tipo de Inscrição do Sacado 32
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',14); // 39.7 221 a 234 9(014) Número do CNPJ ou CPF do Sacado 33
      end;
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',37); // Razao Social 40.7 235 a 271 X(037) Nome do Sacado 
   mlinha:=mlinha+insere2(' ',' ',03); // Espaços 41.7 272 a 274 X(003) Complemento do Registro: “Brancos” 
   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString)+' ' // 42.7 275 a 314 X(040) Endereço do Sacado
                   +trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',40);
   mlinha:=mlinha+insere2(mcinst2,' ',40); // Endereço do Sacado 42.7 275 a 314 X(040) Endereço do Sacado
   mlinha:=mlinha+insere2(' ',' ',12); // brancos 43.7 315 a 326 X(012) Bairro do Sacado
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',08); // CEP 44.7 327 a 334 9(008) CEP do Endereço do Sacado
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CCIDADEC').AsString,' ',15); // Cidade 45.7 335 a 349 X(015) Cidade do Sacado
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CUFC').AsString,' ',02); // UF 46.7 350 a 351 X(002) UF da Cidade do Sacado 
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREOBS.Value,' ',40); // brancos 47.7 352 a 391 X(040) Observações/Mensagem ou Sacador/Avalista 13 
   mlinha:=mlinha+insere('0','0',02); // Dias para Protesto - Campo 48 48.7 392 a 393 X(002) Número de Dias Para Protesto 34 
   mlinha:=mlinha+insere2(' ',' ',01); // Branco Espaços - Campo 49 49.7 394 a 394 X(001) Complemento do Registro: “Brancos” 
   mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6); // 50.7 395 a 400 9(006) Seqüencial de Registro 35 
   Writeln(f,mlinha);
   Frm_CobEle_Remessa.Tb_CadRemBco.Next;
   end;
mSeqReg:=mSeqReg+1;
mlinha:='9';
mlinha:=mlinha+insere2(' ',' ',393); // Branco Espaços - Campo 02
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
Writeln(f,mlinha);

closefile(f);
verteclado(0);
fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);

end;


function fCobEle_rem001Cnab2406001dig(ptipo,pCodAge,pCodCed: integer; pCodConv: string; pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta,pCodCar, pVarCar: String;pDateRem: TDate): Boolean;

// Remessa para o Banco 001 - Banco do Brasil convenio c/ 6 digitos 240
var
f: TextFile;
mlinha: String;
//mSeqReg: Integer;
mArqsai: String;
mnumseqrem: integer;
mnumlote_arq: integer;
mqtddet: integer;
mqtdlinhas: integer;

mqtdsegmento_p_q: integer;


    function fGerarSegmentoR: boolean;
    begin
    if Frm_CobEle_Remessa.Tb_CadRemBcoREMULTA.AsFloat>0 then
       begin
       mlinha:=insere('1','0',3);              // 001-003 codigo do banco
       mlinha:=mlinha+insere(IntToStr(mnumlote_arq),'0',4);  //004-007
       mlinha:=mlinha+'3';              // 008-008  tipo registro
//       mQtdDet:=mQtdDet+1;
       mqtdsegmento_p_q:=mqtdsegmento_p_q+1;
       mlinha:=mlinha+insere(IntToStr(mqtdsegmento_p_q),'0',5);  //009-013
       mlinha:=mlinha+'R';              // 014-014 segmento detalhe
       mlinha:=mlinha+' ';              // 015-015 branco febraban
       mlinha:=mlinha+insere('01','0',2); // 016-017

       mlinha:=mlinha+insere('0','0',1); // 018-018 codigo do desconto 2
       mlinha:=mlinha+insere('0','0',8); // 019-026 data desconto 2
       mlinha:=mlinha+insere('0','0',15); // 027-041 esconto 2 valor ou percentual

       mlinha:=mlinha+insere('0','0',1); // 042-042 codigo do desconto 3
       mlinha:=mlinha+insere('0','0',8); // 043-050 data desconto 3
       mlinha:=mlinha+insere('0','0',15); // 051-065 desconto 3 valor ou percentual

       mlinha:=mlinha+insere('1','0',1); // 066-066 codigo dA MULTA     '1'  =  Valor Fixo '2'  =  Percentual
       mlinha:=mlinha+FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.AsDateTime);   //067-074
       mlinha:=mlinha+insere(FloatToStr(Frm_CobEle_Remessa.Tb_CadRemBcoREMULTA.AsFloat*100),'0',15); // valor do desc     // 075-089

       mlinha:=mlinha+insere(' ',' ',10); // 090-099 INFORMACAO DO SACADO
       mlinha:=mlinha+insere(' ',' ',40); // 100-139 INFORMACAO DO SACADO
       mlinha:=mlinha+insere(' ',' ',40); // 140-179 MENSAGEM 4
       mlinha:=mlinha+insere(' ',' ',20); // 180-199 USO FEBRABAN
       mlinha:=mlinha+insere('0','0',08); // 200-207 COD OCORR DO SACADO
       mlinha:=mlinha+insere('0','0',03); // 208-210 CODIGO DO DEBIDO NO BANCO
       mlinha:=mlinha+insere('0','0',05); // 211-215 CODIGO DA AGENCIA NO DEBITO
       mlinha:=mlinha+insere('0','0',01); // 216-216 DIGITO CODIGO DA AGENCIA NO DEBITO
       mlinha:=mlinha+insere('0','0',12); // 217-228  CONTA CORRENTE PARA DEBITO
       mlinha:=mlinha+insere('0','0',01); // 229-229 DIGITO DA CONTA
       mlinha:=mlinha+insere('0','0',01); // 230-230 DIGITO DA AGENCIA CODIGO DA AGENCIA NO DEBITO
       mlinha:=mlinha+insere('0','0',01); // 231-231 AVISO PARA DEBITO AUTOMATICO
       mlinha:=mlinha+insere('0','0',09); // 232-240 EXCLUSIVO FEBRABAN
       Writeln(f,mlinha);
       mqtdlinhas:=mqtdlinhas+1;
       end;

    result:=true;
    end;

begin

dm1.Tb_Emp.Close;
dm1.Tb_Emp.Sql.Clear;
dm1.Tb_Emp.SQL.Add('select * from cademp where codemp='+inttostr(codemp));
dm1.Tb_Emp.Open;
result:=true;
mArqsai:=pPasta+'\CBR641'+FormatFloat('0000',pCodRem)+'.REM';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;
mqtdsegmento_p_q:=0;
mqtdlinhas:=0;
mnumseqrem:=fBuscareTestarID('REMBCO001CNAB240');

mlinha:=insere('1','0',3);              // 001-003
mnumlote_arq:=0;
mlinha:=mlinha+insere('0','0',4);         //004-007  Se registro for Header do Arquivo preencher com '0000'
                                          //        Se registro for Trailer do Arquivo preencher com '9999
mlinha:=mlinha+insere('0','0',1);        //008-008  Domínio:
//                                                  '0'  =  Header de Arquivo
//                                                  '1'  =  Header de Lote
//                                                  '2'  =  Registros Iniciais do Lote
//                                                  '3'  =  Detalhe
//                                                  '4'  =  Registros Finais do Lote
//                                                  '5'  =  Trailer de Lote
//                                                  '9'  =  Trailer de Arquivo
mlinha:=mlinha+insere2(' ',' ',9);       //009-017
if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2' //018-018
else
  mlinha:=mlinha+'1'; //018-018
mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',14); //019-032
mlinha:=mlinha+insere(pCodConv,'0',9)+insere('0014','0',4)+insere(pCodCar,'0',2)+insere(pVarCar,'0',3)+insere(' ',' ',2); // 033/052

//mlinha:=mlinha+insere2(pCodConv,' ',20); // 033-052
mlinha:=mlinha+insere(InttoStr(pcodage),'0',5); // 053-057

mlinha:=mlinha+insere(pDigAge,'0',1); // 058-058
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12); // 059-070
mlinha:=mlinha+insere(pDigCed,'0',1); // 071-071
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_cnab240_dig_agencia_conta.text,' ',1); // 072-072
mlinha:=mlinha+insere2(pNomCed,' ',30); // 073-102
mlinha:=mlinha+insere2('BANCO DO BRASIL',' ',30);  // 103-132
mlinha:=mlinha+insere(' ',' ',10);   //133-142
mlinha:=mlinha+IntToStr(ptipo); // 143-143
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem);  //144-151
mlinha:=mlinha+FormatDateTime('HHMMSS',pDateRem); // 152-157
mlinha:=mlinha+formatfloat('000000', mnumseqrem); //  158-163
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_header_20_versao_layout.text,' ',3);  // 164-166
//mlinha:=mlinha+'082';
//mlinha:=mlinha+'087';
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_cnab240_ha_densidade.Text,'0',5);  //167-171
mlinha:=mlinha+insere(' ',' ',20); // 172-191
mlinha:=mlinha+insere(' ',' ',20); // 192-211
mlinha:=mlinha+insere(' ',' ',29); // 212-240
Writeln(f,mlinha);
mqtdlinhas:=mqtdlinhas+1;

// HEADER DO LOTE


// HEADER DE LOTE
mlinha:=insere('1','0',3);
mnumlote_arq:=1;
mlinha:=mlinha+insere(inttostr(mnumlote_arq),'0',4);  //004-007
mlinha:=mlinha+insere('1','1',1);   //008-008
mlinha:=mlinha+insere('R','R',1); //009-009

mlinha:=mlinha+insere('01','0',2);   //010-011
mlinha:=mlinha+insere(' ',' ',2);   //012-013
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_header_lote_versao_layout.text,' ',3); // 014-016
// '060','0',3); // 014-016

mlinha:=mlinha+insere(' ',' ',1);   //017-017

if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2' //018-018 '0'  =  Isento / Não Informado '1'  =  CPF '2'  =  CGC / CNPJ  '3'  =  PIS / PASEP '9'  =  Outros
else
  mlinha:=mlinha+'1'; //018-018 '0'  =  Isento / Não Informado '1'  =  CPF '2'  =  CGC / CNPJ  '3'  =  PIS / PASEP '9'  =  Outros
  mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',15); // 019-033
//mlinha:=mlinha+insere2(pCodConv,' ',20);  // 034-053
mlinha:=mlinha+insere(pCodConv,'0',9)+insere('0014','0',4)+insere(pCodCar,'0',2)+insere(pVarCar,'0',3)+insere(' ',' ',2);

mlinha:=mlinha+insere(InttoStr(pcodage),'0',5); // 054-058
mlinha:=mlinha+insere(pDigAge,'0',1); // 059-059
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12);  // 060-071
mlinha:=mlinha+insere(pDigCed,'0',1); // 072-072
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_cnab240_dig_agencia_conta.text,' ',1); // 073-073
mlinha:=mlinha+insere2(pNomCed,' ',30); // 074-103
mlinha:=mlinha+insere(' ',' ',40); // 104-143
mlinha:=mlinha+insere(' ',' ',40); // 144-183
mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECHAVE.AsString,'0',8); // 184-191
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem); //192-199
mlinha:=mlinha+insere('0','0',8); // 200-207
mlinha:=mlinha+insere(' ',' ',33); // 20/-240
Writeln(f,mlinha);
mqtdlinhas:=mqtdlinhas+1;


// TERMINO DO HEADER DO LOTE


mqtddet:=0;

mQtdDup:=0;
mTotalDup:=0;
Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
  begin
  // DETALHE linha 01
  if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC','C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
    begin
    fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString,0,['0'],0);
    Frm_CobEle_Remessa.Tb_CadRemBco.Next;
    Continue;
    end;
  mQtdDup:=mQtdDup+1;
  mqtdsegmento_p_q:=mqtdsegmento_p_q+1;

  mlinha:=insere('1','0',3);         //001-003
  mlinha:=mlinha+insere(IntToStr(mnumlote_arq),'0',4);  //004-007
  mQtdDet:=mQtdDet+1;

  mlinha:=mlinha+insere('3','3',1);  //008-008
  mlinha:=mlinha+insere(IntToStr(mqtdsegmento_p_q),'0',5);  //009-013
  mlinha:=mlinha+insere('P','P',1);        // 014-014
  mlinha:=mlinha+insere(' ',' ',1);        // 015-015
  mlinha:=mlinha+insere('01','0',2); // 016-017
//  mlinha:=mlinha+insere(fdeixanum2(Frm_CobEle_Remessa.CB_CODPROT.Text),'0',2); // 016-017
  mlinha:=mlinha+insere(InttoStr(pcodage),'0',5);        // 018-022
  mlinha:=mlinha+insere(pDigAge,'0',1);          // 023-023
  mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12);      //024 - 035
  mlinha:=mlinha+insere(pDigCed,'0',1);    //036*036
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_cnab240_dig_agencia_conta.Text,' ',1);       // 037-037
  mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.AsString,' ',20); // 038-057

//  mlinha:=mlinha+insere(Frm_CobEle_Remessa.cb_codcar_c006.TEXT[1],'1',1);      // 058-058

  if Frm_CobEle_Remessa.cb_codcar_c006.itemindex=1 then
     mlinha:=mlinha+insere('3','1',1)
  else
     mlinha:=mlinha+insere('7','1',1);      // 058-058


  mlinha:=mlinha+insere('1','1',1);      // 059-059
  mlinha:=mlinha+insere('1','1',1);      // 060-060
  mlinha:=mlinha+insere('2','2',1);      // 061-061
  mlinha:=mlinha+insere('2','2',1);      // 062/062
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString+'/'+Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',15);  // 063-077
  mlinha:=mlinha+insere(FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.AsDateTime),'0',8);           // 078-085
  mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.Value*100),'0',15);     //086-100
  mlinha:=mlinha+insere('0','0',5);                                                          //101-105
  mlinha:=mlinha+insere('   ',' ',1);                                                        // 106-106
  if Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=5 then
    begin
    mlinha:=mlinha+'08'; // nota de credito                                           // 107-108
    end
  else if (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=1) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=2) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=6) then
    begin
    mlinha:=mlinha+'01'; // Cheques                     107-108
    end
  else
    begin
    mlinha:=mlinha+'02'; // Duplicata Mercantil;         // 107-108
    end;
  if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
    begin
    mlinha:=mlinha+'A'  // Aceite                     // 109-109
    end
  else
    begin
    mlinha:=mlinha+'N';  // Aceite                    /109-109
    end;

  mlinha:=mlinha+FormatDateTime('DDMMYYYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value); // Data de Emissao 110-117

  if Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.AsFloat>0 then
    begin
    mlinha:=mlinha+insere('1','1',1);        // 118-118
    end
//LINDOMARR
  else
    begin
    mlinha:=mlinha+insere('3','3',1);        // 118-118
    end;
  if Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.AsFloat>0 then
     begin
     mlinha:=mlinha+FormatDateTime('DDMMYYYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // juros apartir do vencimento // 119-126
     mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.Value*100),'0',15); // juros apartir do vencimento  // 127-141
     end
  else
     begin
     mlinha:=mlinha+insere('0','0',8);   // juros apartir do vencimento // 119-126
     mlinha:=mlinha+insere('0','0',15);   //  // juros apartir do vencimento  // 127-141
     end;
  if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF.AsFloat > 0 then
    begin
    mlinha:=mlinha+insere('1','1',1);                // 142-142
    mlinha:=mlinha+FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // desc ate o dia   // 143-150
    mlinha:=mlinha+insere(FloatToStr(Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF.AsFloat*100),'0',15); // valor do desc     // 151-165
    end
  else
    begin
    mlinha:=mlinha+insere('0','0',24); // sem desconto    143-165
    end;
  mlinha:=mlinha+insere('0','0',15); // iof       // 166-180
  mlinha:=mlinha+insere('0','0',15); // abatimento    // 181-195
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString+'/'+Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,'0',25);  // 196-220
  if Frm_CobEle_Remessa.Tb_CadRemBcoREPROTESTO_QTDD.AsInteger>0 then

    begin
    mlinha:=mlinha+insere2('2','2',1);                                                  // 221-221
    mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoREPROTESTO_QTDD.AsString,'0',2);     // 222-222
    end
  else
    begin
    mlinha:=mlinha+insere2('3','3',1);                           // 221-221
    mlinha:=mlinha+insere2('0','0',2);                           // 222-223
    end;
  mlinha:=mlinha+insere2(copy(Frm_CobEle_Remessa.cb_codigo_baixa_para_devolucao.Text,1,1),'2',1);                            // 224-224
  mlinha:=mlinha+insere2('0','0',3);                            // 225-227
//  mlinha:=mlinha+insere(dm1.Tb_PargerPCODMOE.AsString,'0',2);    // 228-229
  mlinha:=mlinha+insere('9','0',2);    // 228-229
  mlinha:=mlinha+insere2('0','0',10);                           // 230-239
  mlinha:=mlinha+insere2(' ',' ',1);                            // 240-240
  Writeln(f,mlinha);
  mqtdlinhas:=mqtdlinhas+1;
 // DETALHE linha 02

  mlinha:=insere('1','0',3);  // 001-003
  mqtdsegmento_p_q:=mqtdsegmento_p_q+1;

  mlinha:=mlinha+insere(inttostr(mnumlote_arq),'0',4); // 004-007
  mlinha:=mlinha+insere('3','3',1); // 008-008

  mlinha:=mlinha+insere(IntToStr(mqtdsegmento_p_q),'0',5); //009-013
  mlinha:=mlinha+insere('Q','Q',1); // 014-014
  mlinha:=mlinha+insere(' ',' ',1);  // 015-015
  mlinha:=mlinha+insere(fdeixanum2(Frm_CobEle_Remessa.CB_CODPROT.Text),'0',2); // 016-017
  if DM1.Query2.FieldByName('CCNPJ').AsFloat=0 then
      begin
      mlinha:=mlinha+'1';           // 018-018
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',15); //019-033
      end
   else
      begin
      mlinha:=mlinha+'2'; // 018-018
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',15); //019-033
      end;
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',40); // Razao Social //034-073
   mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString),' ',40); // Endereço do Sacado //074-113
   mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',15); // brancos // 114-128
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',8); // CEP       // 0129-136
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CCIDADEC').AsString,' ',15); // Cidade     //  0137-0151
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CUFC').AsString,' ',2); // UF             152-153
   mlinha:=mlinha+insere2('0','0',16);         // dados avalista                             0154-169
   mlinha:=mlinha+insere2(' ',' ',40);         // dados avalista                                170-209
   mlinha:=mlinha+insere2('0','0',3);                                                           // 210-212
   mlinha:=mlinha+insere2(' ',' ',20);                                                            //   213-232
   mlinha:=mlinha+insere2(' ',' ',8);                                                          // 233-240

   Writeln(f,mlinha);
   mqtdlinhas:=mqtdlinhas+1;

    fGerarSegmentoR;


   mTotalDup:=mTotalDup+Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.AsFloat;
   Frm_CobEle_Remessa.Tb_CadRemBco.Next;
   end;
// TRAILER DO LOTE

mlinha:=insere('1','0',3); // 001-003
mlinha:=mlinha+insere(inttostr(mnumlote_arq),'0',4); // 004-007
mlinha:=mlinha+'5'; // 008-008
mlinha:=mlinha+insere2(' ',' ',9); // 009-017
mlinha:=mlinha+insere(FloatToStr(mqtdlinhas),'0',6);  // 018-023    totais dos registros to tipo 1,2,3,4 e 5
mlinha:=mlinha+insere(FloatToStr(mQtdDup),'0',6); // 024-029
mlinha:=mlinha+insere(FloatToStr(mTotalDup*100),'0',17); // 030-046
mlinha:=mlinha+insere('0','0',6);
mlinha:=mlinha+insere('0','0',17);
mlinha:=mlinha+insere('0','0',6);
mlinha:=mlinha+insere('0','0',17);
mlinha:=mlinha+insere('0','0',6);
mlinha:=mlinha+insere('0','0',17);
mlinha:=mlinha+insere('0','0',8);
mlinha:=mlinha+insere(' ',' ',117);
writeln(f,mlinha);
mqtdlinhas:=mqtdlinhas+1;

{
// TRAILER DO ARQUIVO novo


mlinha:=insere('1','0',3);              // 001-003
mlinha:=mlinha+insere('9999','0',4);         //004-007  Se registro for Header do Arquivo preencher com '0000'
                                          //        Se registro for Trailer do Arquivo preencher com '9999
mlinha:=mlinha+insere('9','0',1);        //008-008  Domínio:
//                                                  '0'  =  Header de Arquivo
//                                                  '1'  =  Header de Lote
//                                                  '2'  =  Registros Iniciais do Lote
//                                                  '3'  =  Detalhe
//                                                  '4'  =  Registros Finais do Lote
//                                                  '5'  =  Trailer de Lote
//                                                  '9'  =  Trailer de Arquivo
mlinha:=mlinha+insere2(' ',' ',9);       //009-017
if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2' //018-018
else
  mlinha:=mlinha+'1'; //018-018
mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',14); //019-032
mlinha:=mlinha+insere(pCodConv,'0',9)+insere('0014','0',4)+insere(pCodCar,'0',2)+insere(pVarCar,'0',3)+insere(' ',' ',2); // 033/052

//mlinha:=mlinha+insere2(pCodConv,' ',20); // 033-052
mlinha:=mlinha+insere(InttoStr(pcodage),'0',5); // 053-057

mlinha:=mlinha+insere(pDigAge,'0',1); // 058-058
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12); // 059-070
mlinha:=mlinha+insere(pDigCed,'0',1); // 071-071
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_cnab240_dig_agencia_conta.text,' ',1); // 072-072
mlinha:=mlinha+insere2(pNomCed,' ',30); // 073-102
mlinha:=mlinha+insere2('BANCO DO BRASIL',' ',30);  // 103-132
mlinha:=mlinha+insere(' ',' ',10);   //133-142
mlinha:=mlinha+IntToStr(ptipo); // 143-143
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem);  //144-151
mlinha:=mlinha+FormatDateTime('HHMMSS',pDateRem); // 152-157
mlinha:=mlinha+formatfloat('000000', mnumseqrem); //  158-163
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_header_20_versao_layout.text,' ',3);  // 164-166
//mlinha:=mlinha+'082';
//mlinha:=mlinha+'087';
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_cnab240_ha_densidade.Text,'0',5);  //167-171
mlinha:=mlinha+insere(' ',' ',20); // 172-191
mlinha:=mlinha+insere(' ',' ',20); // 192-211
mlinha:=mlinha+insere(' ',' ',29); // 212-240
Writeln(f,mlinha);

trailer do arquivo antio
}

mlinha:=insere('1','0',3);              // 001-003
mlinha:=mlinha+insere('9999','0',4);         //004-007  Se registro for Header do Arquivo preencher com '0000'
                                          //        Se registro for Trailer do Arquivo preencher com '9999
mlinha:=mlinha+insere('9','0',1);        //008-008  Domínio:
//                                                  '0'  =  Header de Arquivo
//                                                  '1'  =  Header de Lote
//                                                  '2'  =  Registros Iniciais do Lote
//                                                  '3'  =  Detalhe
//                                                  '4'  =  Registros Finais do Lote
//                                                  '5'  =  Trailer de Lote               
//                                                  '9'  =  Trailer de Arquivo
mqtdlinhas:=mqtdlinhas+1;

mlinha:=mlinha+insere2(' ',' ',9);       //009-017
//mnumlote:=mnumlote+1;

mlinha:=mlinha+insere('1','0',6);  // 018-023

mlinha:=mlinha+insere(FloatToStr(mqtdlinhas),'0',6);  // 024-029

mlinha:=mlinha+insere(' ',' ',06); //030-035
mlinha:=mlinha+insere(' ',' ',205); //036-240

Writeln(f,mlinha);


// termino do trailer do arquivo
closefile(f);
verteclado(0);
fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);
end;


function fCobEle_rem001Cnab4006001dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;
// Remessa para o Banco 001 - Banco do Brasil convenio c/ 6 digitos
var
f: TextFile;
mlinha: String;
mSeqReg: Integer;
mArqsai: String;
begin
result:=true;
mArqsai:=pPasta+'\CBR641'+FormatFloat('0000',pCodRem)+'.REM';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;

mSeqReg:=1;
mlinha:='0';
mlinha:=mlinha+'1';
mlinha:=mlinha+insere2('REMESSA',' ',7);
mlinha:=mlinha+'01';
mlinha:=mlinha+insere2('COBRANCA',' ',8);
mlinha:=mlinha+insere2(' ',' ',7);
mlinha:=mlinha+insere(InttoStr(pcodage),'0',4);
mlinha:=mlinha+insere2(pDigAge,' ',1);
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',8);
mlinha:=mlinha+insere2(pDigCed,' ',1);
mlinha:=mlinha+insere('0','0',6);
mlinha:=mlinha+insere2(pNomCed,' ',30);
mlinha:=mlinha+insere2('001BANCODOBRASIL',' ',18);
mlinha:=mlinha+FormatDateTime('DDMMYY',pDateRem);
mlinha:=mlinha+insere(IntToStr(pCodRem),'0',7);
mlinha:=mlinha+insere2(' ',' ',22);
mlinha:=mlinha+insere(IntToStr(pCodConv),'0',7);
mlinha:=mlinha+insere2(' ',' ',258);
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
Writeln(f,mlinha);

Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
   begin
   if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC',
                'C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
      begin
      fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString
                 ,0,['0'],0);
      Frm_CobEle_Remessa.Tb_CadRemBco.Next;
      Continue;
      end;
   mSeqReg:=mSeqReg+1;
   mlinha:='7';

   if DM1.Tb_EmpCNPF.AsFloat<>0 then
      begin
      mlinha:=mlinha+'01';
      mlinha:=mlinha+insere(DM1.Tb_EmpCNPF.AsString,'0',14);
      end
   else
      begin
      mlinha:=mlinha+'02';
      mlinha:=mlinha+insere(DM1.Tb_EmpCGC.AsString,'0',14);
      end;

   mlinha:=mlinha+insere(InttoStr(pcodage),'0',4);
   mlinha:=mlinha+insere2(pDigAge,' ',1);
   mlinha:=mlinha+insere(InttoStr(pCodCed),'0',8);
   mlinha:=mlinha+insere2(pDigCed,' ',1);
   mlinha:=mlinha+insere(IntToStr(pCodConv),'0',7);

//observacao para o numero da duplicata MANTER SEMPRE O MESMO PADRAO PARA QUE SEJA RECONHECIDO
// NO RETORNO
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',6);
   mlinha:=mlinha+'/';
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',2);
   mlinha:=mlinha+'0.'+iif(Frm_CobEle_Remessa.Tb_CadRemBcoRECODEMP_DUP.AsInteger>100,'1','0');
   mlinha:=mlinha+insere2(' ',' ',13); // restante do numero da duplicata

   mlinha:=mlinha+insere('0','0',17); // nosso numero Preencher no Banco
   mlinha:=mlinha+insere('0','0',02); // numero da prestação preenchimento c/0
   mlinha:=mlinha+insere('0','0',02); // indicativo de grupo de valor = zeros
   mlinha:=mlinha+insere2(' ',' ',03); // brancos
   mlinha:=mlinha+insere2(' ',' ',01); // = brancos na posiçao 352a391 mensagemS
                                      // = A 352a391 CNPJ-CNPF do sacador
   if (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=31) or
      (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=51) then
      mlinha:=mlinha+insere2('SD',' ',03)
   else if (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=12) then
      mlinha:=mlinha+insere2('AUI',' ',03)
   else
      mlinha:=mlinha+insere2('AI',' ',03);
   if Frm_CobEle_Remessa.Tb_CadRemBcoRECODVARCAR.AsInteger<>0 then
      mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODVARCAR.AsString,'0',03) // Código das Variaçoes da Carteira
   else
      mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsString,'0',03); // Código das Variaçoes da Carteira

   mlinha:=mlinha+insere('0','0',01); // Conta Caução
   mlinha:=mlinha+insere('0','0',06); // Número do bordero
   mlinha:=mlinha+insere2(' ',' ',05); // Tipo de Cobrança
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsString,'0',02); // Código da Carteira
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString,'0',02); // Código do Comando

   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',6);
   mlinha:=mlinha+'/';
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',2);
   mlinha:=mlinha+insere2(' ',' ',01); // restante do numero da duplicata
   if Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value=Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value then
      mlinha:=mlinha+'999999' // Data de Vencimento c/Apresentação
   else
      mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data de Vencimento da duplicata
   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.Value*100),'0',13); // Valor do Titulo
   mlinha:=mlinha+'001'; // Código do Banco
   mlinha:=mlinha+insere('0','0',04); // Agencia Cobradora
   mlinha:=mlinha+insere('0','0',01); // Digito da Agencia Cobradora
   if Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=5 then
      mlinha:=mlinha+'02' // nota de credito
   else if (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=1) or
           (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=2) or
           (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=6) then
      mlinha:=mlinha+'10' // Cheques
   else
      mlinha:=mlinha+'01'; // Duplicata Mercantil;

   if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
      mlinha:=mlinha+'S'  // Aceite
   else
      mlinha:=mlinha+'N';  // Aceite
   mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value); // Data de Emissao
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsString,'0',2); // 1a. instrucao
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT02.AsString,'0',2); // 2a. instrucao
   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.Value*100),'0',13); // Juros por dia de Atraso
   if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.AsFloat>0 then // desconto por dia de antecipação
      begin
      mlinha:=mlinha+'777777'; // Data limite para desconto
      mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.Value*100),'0',13); // desconto por dia
      end
   else
      begin
      if Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.AsDateTime>=Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.AsDateTime then
         mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.Value) // Data limite para desconto
      else
         mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data limite para desconto
      mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF .Value*100),'0',13); // desconto ate determinada data
      end;
   mlinha:=mlinha+insere('0','0',13); // Valor do IOF - Campo 36
   mlinha:=mlinha+insere('0','0',13); // Valor do Abatimento - Campo 37
   if DM1.Query2.FieldByName('CCNPJ').AsFloat=0 then
      begin
      mlinha:=mlinha+'01';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',14);
      end
   else
      begin
      mlinha:=mlinha+'02';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',14);
      end;
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',37); // Razao Social
   mlinha:=mlinha+insere2(' ',' ',03); // Espaços
   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString)+' '
                   +trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',37);
   mlinha:=mlinha+insere2(mcinst2,' ',37); // Endereço do Sacado
   mlinha:=mlinha+insere2(' ',' ',15); // brancos
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',08); // CEP
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CCIDADEC').AsString,' ',15); // Cidade
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CUFC').AsString,' ',02); // UF
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREOBS.Value,' ',40); // brancos
   mlinha:=mlinha+insere('0','0',02); // Dias para Protesto - Campo 48
   mlinha:=mlinha+insere2(' ',' ',01); // Branco Espaços - Campo 49
   mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
   Writeln(f,mlinha);
   Frm_CobEle_Remessa.Tb_CadRemBco.Next;
   end;
mSeqReg:=mSeqReg+1;
mlinha:='9';
mlinha:=mlinha+insere2(' ',' ',393); // Branco Espaços - Campo 02
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
Writeln(f,mlinha);

closefile(f);
verteclado(0);
fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);

end;


function fCobEle_rem237Cnab4007237dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;

// Remessa para o Banco 237 - Banco Bradesco c/ 7 digitos

var

f: TextFile;
mlinha: String;
mSeqReg: Integer;
mArqsai: String;
mPercMult: Real;
begin
result:=true;
mArqsai:=pPasta+'\CBR641'+FormatFloat('00000000',pCodRem)+'.REM';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;

mSeqReg:=1; //1
mlinha:='0';//2
mlinha:=mlinha+'1';//3
mlinha:=mlinha+insere2('REMESSA',' ',7);//10
mlinha:=mlinha+'01';//12
mlinha:=mlinha+insere2('COBRANCA',' ',15);//27
mlinha:=mlinha+insere(FormatFloat('000',pCodConv),'0',20);//47
mlinha:=mlinha+insere2(DM1.Tb_BcoBCNOMTIT.AsString,' ',30); // Razao Social//77
mlinha:=mlinha+insere2('237',' ',03);//80
mlinha:=mlinha+insere2('BRADESCO',' ',15);//95
mlinha:=mlinha+FormatDateTime('DDMMYY',pDateRem);//101
mlinha:=mlinha+insere2(' ',' ',8);//109
mlinha:=mlinha+insere2('MX',' ',2);//111
//if Insere(DM1.Tb_EmpCGC.AsString,'0',14)='02299715000112' then
//  begin
//  mlinha:=mlinha+'2001003';
//  end
//else
//  begin
  mlinha:=mlinha+insere(IntToStr(pCodRem),'0',7);
//  end;
//
//mlinha:=mlinha+insere(IntToStr(pCodRem),'0',7);
//
mlinha:=mlinha+insere2(' ',' ',277);
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);

Writeln(f,mlinha);

Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
   begin
   if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC',
                'C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
      begin
      fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString,
                 0,['0'],0);
      Frm_CobEle_Remessa.Tb_CadRemBco.Next;
      Continue;
      end;
   mSeqReg:=mSeqReg+1;
   mlinha:='1';     // 001 a 001 Identificação do Registro
//   mlinha:=mlinha+insere(InttoStr(pcodage),'0',5);
//   mlinha:=mlinha+insere2(pDigAge,' ',1);

   mlinha:=mlinha+insere('0','0',6); // codigo agencia/digito para debito 002 a 006 Agência de Débito (opcional)    + dig

   mlinha:=mlinha+insere('0','0',5); // 008 a 012 razao da conta do sacado   obs...

//   mlinha:=mlinha+insere(IntToStr(pCodCed),'0',7);
//   mlinha:=mlinha+insere2(pDigCed,' ',1);

   mlinha:=mlinha+insere('0','0',8); // cc e dig conta corrente para debito  //013 a 019 Conta Corrente (opcional) + dig

   mlinha:=mlinha+'0';
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsString,'0',03); // codigo da carteira
   mlinha:=mlinha+insere(IntTostr(pCodAge),'0',05); // codigo da agencia sem o digito
   mlinha:=mlinha+insere(IntToStr(pCodCed),'0',7);
   mlinha:=mlinha+insere2(pDigCed,' ',1);
//   021 a 037 Identificação da E mpresa Beneficiária no Banco


//observacao para o numero da duplicata MANTER SEMPRE O MESMO PADRAO PARA QUE SEJA RECONHECIDO
// NO RETORNO

   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',6);  // 038 a 062 Nº Controle do Participante
   mlinha:=mlinha+'/';
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',2);
   mlinha:=mlinha+'0.'+iif(Frm_CobEle_Remessa.Tb_CadRemBcoRECODEMP_DUP.AsInteger>100,'1','0');
   mlinha:=mlinha+insere2(' ',' ',13); // restante do numero da duplicata

//   mlinha:=mlinha+insere2('237',' ',3); //numero do banco 237
   mlinha:=mlinha+insere2('0','0',3); //numero do banco 237 063 a 065 Código do Banco a ser debitado na Câmara de Compensação
   if Frm_CobEle_Remessa.Tb_CadRemBcoREMULTA.AsFloat>0 then
      begin
      mlinha:=mlinha+'2';
      mPercMult:=Arredonda( ((Frm_CobEle_Remessa.Tb_CadRemBcoREMULTA.AsFloat*100)/Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.AsFloat) ,2);
      mlinha:=mlinha+insere(Formatfloat('0000', trunc(mPercMult*100)),'0',4);
      end
   else
      mlinha:=mlinha+insere2('00000',' ',5); /// zeros


//   mlinha:=mlinha+insere2('0000',' ',4); /// zeros
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.AsString,'0',11); // nosso numero Preencher no Banco

   mlinha:=mlinha+insere(trim(Frm_CobEle_Remessa.Tb_CadRemBcoREDNOSNUM.AsString),'0',1); // nosso numero digito

   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.Value*100),'0',10); // desconto por dia
   if ValFloat(Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.Value)>0 then
      mlinha:=mlinha+insere2('2',' ',1) ///codigo para emissao da papeleta de cobranca
   else
      mlinha:=mlinha+insere2('1',' ',1); ///codigo para emissao da papeleta de cobranca
//   mlinha:=mlinha+insere2('N',' ',1); ///identificacao se emite papeleta para debito automaticao
   mlinha:=mlinha+insere2(' ',' ',1); ///identificacao se emite papeleta para debito automaticao
   mlinha:=mlinha+insere2(' ',' ',10); /// brancos
   mlinha:=mlinha+insere2(' ',' ',1); ///indicador de rateio credito R para rateio
//   mlinha:=mlinha+insere2('1',' ',1); /// enderecamento para aviso do debito automatico em conta corrente
   mlinha:=mlinha+insere2(' ',' ',1); /// enderecamento para aviso do debito automatico em conta corrente
   mlinha:=mlinha+insere2(' ',' ',2); /// brancos
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString,'0',2); /// codigos de ocorrencia

/// numero do documento
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',6);
   mlinha:=mlinha+'/';
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',2);
   mlinha:=mlinha+insere2(' ',' ',01); // restante do numero da duplicata
{
   if Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value=Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value then
      mlinha:=mlinha+'999999' // Data de Vencimento da duplicata
   else
   RETIRADO EM 31/10/2019 AS 12:15 POR INSTRUCAO DO FREDERICO (BOI)
}
      mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data de Vencimento da duplicata
   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.Value*100),'0',13); // Valor do Titulo
//   mlinha:=mlinha+insere2('237',' ',3); //banco encarregado da cobranca
 // mlinha:=mlinha+insere(InttoStr(pcodage),'0',4);
//   mlinha:=mlinha+insere2(pDigAge,' ',1);
   mlinha:=mlinha+insere2('0','0',8); //banco encarregado da cobranca/agencia/dig


   if Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=5 then
      mlinha:=mlinha+'02' // nota de credito
   else
      mlinha:=mlinha+'01'; // Duplicata Mercantil;

   if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
      mlinha:=mlinha+'A'  // Aceite
   else
      mlinha:=mlinha+'N';  // Nao Aceite

   mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value); // Data de Emissao
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsString,'0',2); // 1a. instrucao
   if valint(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsString)>0 then
      mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoREPROTESTO_QTDD.AsString,'0',2) // qTD DIAS
   else
      mlinha:=mlinha+insere('0','0',2); // qTD DIAS

   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.Value*100),'0',13); // Juros por dia de Atraso

   if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.AsFloat>0 then // desconto por dia de antecipação
      begin
      if (Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.IsNull) or
         (Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.AsDateTime<=pdatanula) then
         mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value) // Data limite para desconto
      else
         mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.Value); // Data limite para desconto
      mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.Value*100),'0',13); // desconto por dia
      end
   else
      begin
      if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF.Value>0 then
         begin
         if Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.AsDateTime>=Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.AsDateTime then
            mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.Value) // Data limite para desconto
         else
            mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data limite para desconto
         end
      else
         mlinha:=mlinha+'000000';
      mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF .Value*100),'0',13); // desconto ate determinada data
      end;

   mlinha:=mlinha+insere('0','0',13); // Valor do IOF - Campo 36
   mlinha:=mlinha+insere('0','0',13); // Valor do Abatimento - Campo 37

   if DM1.Query2.FieldByName('CCNPJ').AsFloat>0 then
      begin
      mlinha:=mlinha+'02';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',14);
      end
   else
      begin
      mlinha:=mlinha+'01';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',14);
      end;

   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',40); // Razao Social
   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString)+' '
                   +trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',40);
   mlinha:=mlinha+mcinst2;
   mlinha:=mlinha+insere2(' ',' ',12); // 1 - mensagem
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',08); // CEP
   mlinha:=mlinha+insere2(' ',' ',60); // 2 - mensagem
   mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);



{

   mlinha:=mlinha+insere('0','0',02); // numero da prestação preenchimento c/0
   mlinha:=mlinha+insere('0','0',02); // indicativo de grupo de valor = zeros
   mlinha:=mlinha+insere2(' ',' ',03); // brancos
   mlinha:=mlinha+insere2(' ',' ',01); // = brancos na posiçao 352a391 mensagemS
                                      // = A 352a391 CNPJ-CNPF do sacador
   if (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=31) or
      (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=51) then
      mlinha:=mlinha+insere2('SD',' ',03)
   else if (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=12) then
      mlinha:=mlinha+insere2('AUI',' ',03)
   else
      mlinha:=mlinha+insere2('AI',' ',03);
   if Frm_CobEle_Remessa.Tb_CadRemBcoRECODVARCAR.AsInteger<>0 then
      mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODVARCAR.AsString,'0',03) // Código das Variaçoes da Carteira
   else
      mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsString,'0',03); // Código das Variaçoes da Carteira

   mlinha:=mlinha+insere('0','0',01); // Conta Caução
   mlinha:=mlinha+insere('0','0',06); // Número do bordero
   mlinha:=mlinha+insere2(' ',' ',05); // Tipo de Cobrança
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsString,'0',02); // Código da Carteira
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString,'0',02); // Código do Comando
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',6);
   mlinha:=mlinha+'-';
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',2);
   mlinha:=mlinha+insere2(' ',' ',01); // restante do numero da duplicata

   if Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value=Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value then
      mlinha:=mlinha+'999999' // Data de Vencimento c/Apresentação
   else
      mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data de Vencimento da duplicata

   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.Value*100),'0',13); // Valor do Titulo
   mlinha:=mlinha+'001'; // Código do Banco
   mlinha:=mlinha+insere('0','0',04); // Agencia Cobradora
   mlinha:=mlinha+insere('0','0',01); // Digito da Agencia Cobradora
   if Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=5 then
      mlinha:=mlinha+'02' // nota de credito
   else if (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=1) or
           (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=2) or
           (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=6) then
      mlinha:=mlinha+'10' // Cheques
   else
      mlinha:=mlinha+'01'; // Duplicata Mercantil;

   if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
      mlinha:=mlinha+'S'  // Aceite
   else
      mlinha:=mlinha+'N';  // Aceite
   mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value); // Data de Emissao
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsString,'0',2); // 1a. instrucao
   mlinha:=mlinha+insere('0','0',2); // 2a. instrucao
   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.Value*100),'0',13); // Juros por dia de Atraso
   if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.AsFloat>0 then // desconto por dia de antecipação
      begin
      mlinha:=mlinha+'777777'; // Data limite para desconto
      mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.Value*100),'0',13); // desconto por dia
      end
   else
      begin
      if Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.AsDateTime>=Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.AsDateTime then
         mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.Value) // Data limite para desconto
      else
         mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data limite para desconto
      mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF .Value*100),'0',13); // desconto ate determinada data
      end;
   mlinha:=mlinha+insere('0','0',13); // Valor do IOF - Campo 36
   mlinha:=mlinha+insere('0','0',13); // Valor do Abatimento - Campo 37
   if DM1.Query2.FieldByName('CCNPJ').AsFloat=0 then
      begin
      mlinha:=mlinha+'01';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',14);
      end
   else
      begin
      mlinha:=mlinha+'02';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',14);
      end;
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',37); // Razao Social
   mlinha:=mlinha+insere2(' ',' ',03); // Espaços
   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString)+' '
                   +trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',37);
   mlinha:=mlinha+insere2(mcinst2,' ',37); // Endereço do Sacado
   mlinha:=mlinha+insere2(' ',' ',15); // brancos
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',08); // CEP
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CCIDADEC').AsString,' ',15); // Cidade
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CUFC').AsString,' ',02); // UF
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREOBS.Value,' ',40); // brancos
   mlinha:=mlinha+insere('0','0',02); // Dias para Protesto - Campo 48
   mlinha:=mlinha+insere2(' ',' ',01); // Branco Espaços - Campo 49
   mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
}


   Writeln(f,mlinha);
   Frm_CobEle_Remessa.Tb_CadRemBco.Next;
   end;
mSeqReg:=mSeqReg+1;
mlinha:='9';
mlinha:=mlinha+insere2(' ',' ',393); // Branco Espaços - Campo 02
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
Writeln(f,mlinha);

closefile(f);
verteclado(0);
fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);

end;

// inicio caixa 104 cnab 400
function TFrm_CobEle_Remessa.fCobEle_rem104Cnab400(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate ): Boolean;
var

f: TextFile;
mlinha: String;
mSeqReg: Integer;
mArqsai: String;
mnumseqrem: integer;

begin
if pCodConv=0 then
   begin
   Messagedlg('Codigo do Convenio no cadastro de banco nao esta preenchido! Cadastros->Bancos->manutencao',mtWarning,[mbOk],0);
   end;
result:=true;
mArqsai:=pPasta+'\CB104'+FormatFloat('000',pCodRem)+'.TXT';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
mnumseqrem:=fBuscareTestarID('REMBCO104CNAB400');

AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;

mSeqReg:=1;
mlinha:='0'; // 001  001-001 TAM  01 CODIGO DE IDENTIFICACAO DO REGISTRO
mlinha:=mlinha+'1'; // 002  002-002 TAM  01 CODIGO DE IDENTIFICACAO DO REGISTRO
mlinha:=mlinha+insere2(iif(cb_homologacao.Checked,'TESTE',' '),' ',07); // 003  003-009 TAM  07 lieteral correspondente ao codigo da remessa
mlinha:=mlinha+'01'; // 004  010-011 TAM  02 CODIGO DE IDENTIFICACAO DO tipo de servico
mlinha:=mlinha+insere2('COBRANCA',' ',15); // 005  012-026 TAM  15 lieteral correspondente ao codigo da SERVICO
mlinha:=mlinha+insere(floattostr(pCodAge),'0',04); // 006  027-030 TAM  04 codigo da agencia detentora
mlinha:=mlinha+insere(floattostr(pCodConv),'0',06); // 007  031-036 TAM  06 codigo do conventio ne0004
mlinha:=mlinha+insere(' ',' ',10); // 008  037-046 TAM  10 preencher com espacoes em branco

mlinha:=mlinha+insere2(DM1.Tb_EmpRAZAO.AsString,' ',30); // 009  047-076 TAM  30 nome da empresa por extenso
mlinha:=mlinha+'104'; // 010  077-079 TAM  03 codigo do banco 104
mlinha:=mlinha+insere2('CAIXA ECONOMICA',' ',15); // 011  080-094 TAM  30 NE008

mlinha:=mlinha+Formatdatetime('ddmmyy', strtodate(MDATA.Text)); // 012  095-100 TAM  06 DATA da geracao da remessa
mlinha:=mlinha+insere(' ',' ',289); // 013  101-389 TAM  289 uso exclusivo da caixa

mlinha:=mlinha+insere(Inttostr(mnumseqrem),'0',05); // 014  390-394 TAM  05 numero seqencial do arquivo de remessa
mlinha:=mlinha+insere(Inttostr(mSeqReg),'0',06); // 015  395-4004 TAM  06 numero seqencial do registro no arquivo de remessa

Writeln(f,mlinha);

Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
   begin
   mSeqReg:=mSeqReg+1;
   mlinha:='1';     //  01  (001,001) tam 01 identificador do tipo de regisro
   if DM1.Tb_EmpCGC.AsFloat>0 then
      begin
      mlinha:=mlinha+'02';       // 02  (002,003) tam 02  tipo de inscricao
      mlinha:=mlinha+insere(DM1.Tb_EmpCGC.AsString,'0',14); // 03  (004,017) tam 14 numero de inscricao da pessoa
      end
   else
      begin
      mlinha:=mlinha+'01'; // 02  (002,003) tam 02  tipo de inscricao
      mlinha:=mlinha+insere(DM1.Tb_EmpCNPF.AsString,'0',14); // 03  (004,017) tam 14 numero de inscricao da pessoa
      end;
   mlinha:=mlinha+insere(IntToStr(pCodAge),'0',4); // 04  (018,021) tam 04  codigo da agencia do beneficiario
   mlinha:=mlinha+insere(IntToStr(pCodConv),'0',6); // 05  (022,027) tam 06  codigo do convenio
   mlinha:=mlinha+insere('2','0',1); // 07  (028,028) tam 01  identificacao de emissao do boleto 1-banco 2-cliente
   mlinha:=mlinha+insere('0','0',1); // 08  (029,029) tam 01  id da postagem 0-benficiario 1-pagador correio 2 beneficiario via caixa 3 pagador email
   mlinha:=mlinha+insere('2','0',1); // 07  (030,030) tam 01  identificacao de emissao do boleto 1-banco 2-cliente
// no proprio layout faltou o iem 08
   mlinha:=mlinha+insere('0','0',1); // 09  (031,031) tam 02  comissao de permanencia preencher com zeros
   mlinha:=mlinha+insere2(Tb_CadRemBcoRENUMDUP.AsString+'-'+Tb_CadRemBcoREDESD.AsString,' ',25); // 10  (032,056) tam 25  identificacao  do titulo no cliente
   mlinha:=mlinha+insere(Tb_CadRemBcoRENOSNUM.AsString,'0',17); // 11  (057,073 tam 17  nosso numero
   mlinha:=mlinha+insere(' ',' ',2); // 12.1  (074,075) tam 02  brancos
   mlinha:=mlinha+insere(' ','0',1); // 12.2  (076,076) tam 01  cnoa ne055
   mlinha:=mlinha+insere(' ',' ',1); // 13    (077,077) tam 01  brancos

   mlinha:=mlinha+formatdatetime('ddmmyy', Tb_CadRemBcoREDTVCTO.AsDateTime+1);  // 13.A1  (078,083) tam 06  data para inicio da cobranca dos juros
   if (Tb_CadRemBcoREDESCF.AsFloat>0) then
      begin
      mlinha:=mlinha+insere('3','0',1); // 13B.1  (084,084) tam 01  tipo do descono 0-sem 1-valor ate 2-perc ate 3-por dia 4 por dia util 5 perc dia 6 perc dia util
      end
   else if (Tb_CadRemBcoREDESCF.AsFloat>0) then
      begin
      mlinha:=mlinha+insere('1','0',1); // 13B.1  (084,084) tam 01  tipo do descono 0-sem 1-valor ate 2-perc ate 3-por dia 4 por dia util 5 perc dia 6 perc dia util
      end
   else
      mlinha:=mlinha+insere('0','0',1); // 13B.1  (084,084) tam 01  tipo do descono 0-sem 1-valor ate 2-perc ate 3-por dia 4 por dia util 5 perc dia 6 perc dia util

   mlinha:=mlinha+insere(' ',' ',22); // 13C    (085,106) tam 22  brancos
   mlinha:=mlinha+'01'; // 14.1    (107,108) TAM 02 CODIGO DA CARTEIRA 01
   mlinha:=mlinha+'01'; // 15.1    (109,110) TAM 02 TIPO DE OCORRENCIA 01-ENTRADA DE TITULO
   mlinha:=mlinha+insere2(Tb_CadRemBcoRENUMDUP.AsString+'-'+Tb_CadRemBcoREDESD.AsString,' ',10); // 16.1  (111,120) tam 10  identificacao  do titulo no cliente
   mlinha:=mlinha+formatdatetime('ddmmyy', Tb_CadRemBcoREDTVCTO.AsDateTime);  // 17.1  (121,126) TAM 06 DATA DE VENCIMENTO DO TITULO
   mlinha:=mlinha+insere(formatfloat('0',Tb_CadRemBcoREVALDUP.asfloat*100),'0',13); // 18.1  (127,139) tam 13  valor nominal do titulo
   mlinha:=mlinha+'104';  // 19  (140,142) tam 03  codigo do banco na compensacao 104
   mlinha:=mlinha+'00000'; // 20.1 (143,147) tam 05  codigo da agencia encarregada da cobranca valor 00000
   mlinha:=mlinha+insere('01',' ',02); // 21.1  (148,149) tam 02  especie do titulo
   mlinha:=mlinha+insere(Tb_CadRemBcoREACEITE.AsString,' ',01); // 22.1  (150,150) tam 01 aceite
   mlinha:=mlinha+formatdatetime('ddmmyy', Tb_CadRemBcoREDTEMIS.AsDateTime);  // 23.1  (151,165) TAM 06 DATA DE emissao DO TITULO

   mlinha:=mlinha+insere(Tb_CadRemBcoRECODPROT.asstring,'0',02);  // 24.1  (157,158) TAM 02 codigo do proteste
   mlinha:=mlinha+insere('0','0',2); // 25.1    (0159,160) tam 2  0 fixo

   mlinha:=mlinha+insere(formatfloat('0',Tb_CadRemBcoREJURD.asfloat*100),'0',13); // 26.1  (161,173) tam 13  valor do juros diario
   mlinha:=mlinha+formatdatetime('ddmmyy', Tb_CadRemBcoREDTVCTO.AsDateTime);  // 27.1  (174,179) TAM 06 DATA limite para desconto

   if Tb_CadRemBcoREDESCD.AsFloat>0 then
      mlinha:=mlinha+insere(formatfloat('0',Tb_CadRemBcoREDESCD.asfloat*100),'0',13) // 28.1  (180,19) tam 13  valor do juros diario
   else
      mlinha:=mlinha+insere(formatfloat('0',Tb_CadRemBcoREDESCF.asfloat*100),'0',13); // 28.1  (180,192) tam 13  valor do juros diario

   mlinha:=mlinha+insere(formatfloat('0',0),'0',13); // 29.1  (193,205) tam 13  valor do iof
   mlinha:=mlinha+insere(formatfloat('0',0),'0',13); // 30.1  (206,218) tam 13  valor do abatimento


   if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC',
                'C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
      begin
      fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString,
                 0,['0'],0);
      Frm_CobEle_Remessa.Tb_CadRemBco.Next;
      Continue;
      end;


   if DM1.Query2.FieldByName('CCNPJ').AsFloat>0 then
      begin
      mlinha:=mlinha+'02'; // 31.1  (209,220) tam 02  tipo de inscricao
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',14); // 32.1  (221,234) tam 14 numero da inscricao
      end
   else
      begin
      mlinha:=mlinha+'01';  // 31.1  (209,220) tam 02  tipo de inscricao
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',14); // 32.1  (221,234) tam 14 numero da inscricao
      end;



   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',40); // 33.1  (235,274) tam 40  nome do pagador
   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString),' ',40); // 34.1  (275,314) tam 40  endereco do pagador

   mlinha:=mlinha+mcinst2;
   mcinst2:=insere2(DM1.Query2.FieldByName('CBAIRROC').AsString,' ',12); // 35.1  (315,316) tam 12  bairro do pagador
   mlinha:=mlinha+mcinst2;
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',08); // 63.1  (327,334) tam 40  nome do pagador

   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CCIDADEC').AsString),' ',15);
   mlinha:=mlinha+mcinst2; // 37.1  (335,349 tam 15  cidade do pagador

   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CUFC').AsString),' ',02); // 38.1  (350,351) tam 02 uf cidade do pagador
   mlinha:=mlinha+mcinst2; // 38.1  (350,351) tam 02 uf cidade do pagador

   mlinha:=mlinha+formatdatetime('ddmmyy', Tb_CadRemBcoREDTVCTO.AsDateTime+1);  // 39.1  (352,357) TAM 06 DATA para cobranca de multa

   mlinha:=mlinha+insere(formatfloat('0',Tb_CadRemBcoREMULTA.asfloat*100),'0',10); // 40.1  (358,367) tam 10 valor da multa

   mlinha:=mlinha+insere(' ',' ',22); // 41.1    (368,389) tam 22  sacador avalista

   mlinha:=mlinha+insere('0','0',2); // 42.1    (368,389) tam 2  nao imprime mensagem no verso do boleto
   mlinha:=mlinha+insere(Tb_CadRemBcoREPROTESTO_QTDD.AsString,'0',2); // 43.1    (392,393) tam 2  quantidade de dias para protesteo
   mlinha:=mlinha+insere('1','0',1); // 44.1    (394,394) tam 1  codigo da moeda
   mlinha:=mlinha+insere(inttostr(mSeqReg),'0',6); // 45.1    (395,400) tam 6  numero sequencial dentro do registro
   Writeln(f,mlinha);
   Frm_CobEle_Remessa.Tb_CadRemBco.Next;
   end;
mSeqReg:=mSeqReg+1;
mlinha:='9';
mlinha:=mlinha+insere2(' ',' ',393); // Branco Espaços - Campo 02
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
Writeln(f,mlinha);
closefile(f);
verteclado(0);
fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);
end;


// termino da caixa

function fCobEle_rem341Cnab400(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;
var

f: TextFile;
mlinha: String;
mSeqReg: Integer;
mArqsai: String;
begin
result:=true;
mArqsai:=pPasta+'\C341'+FormatFloat('000',pCodRem)+'.TXT';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;

mSeqReg:=1;
mlinha:='0';
mlinha:=mlinha+'1';
mlinha:=mlinha+insere2('REMESSA',' ',7);
mlinha:=mlinha+'01';
mlinha:=mlinha+insere2('COBRANCA',' ',15);
mlinha:=mlinha+insere(FormatFloat('0000',pCodAge),'0',04);
mlinha:=mlinha+'00'; // COMPLEMENTO DO REGISTRO
mlinha:=mlinha+insere(FormatFloat('000',pCodCed),'0',05);
mlinha:=mlinha+insere2(pDigCed,'0',01);
mlinha:=mlinha+insere2(' ',' ',08); // COMPLEMENTO DO REGISTRO
mlinha:=mlinha+insere2(DM1.Tb_BcoBCNOMTIT.AsString,' ',30); // Razao Social
mlinha:=mlinha+insere2('341',' ',03);
mlinha:=mlinha+insere2('BANCO ITAU SA',' ',15);
mlinha:=mlinha+FormatDateTime('DDMMYY',pDateRem);
mlinha:=mlinha+insere2(' ',' ',294); // COMPLEMENTO DO REGISTRO
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);

Writeln(f,mlinha);

Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
   begin
   mSeqReg:=mSeqReg+1;
   mlinha:='1';     //  (001,001)

   if DM1.Tb_EmpCGC.AsFloat>0 then
      begin
      mlinha:=mlinha+'02';       //  (002,003)
      mlinha:=mlinha+insere(DM1.Tb_EmpCGC.AsString,'0',14); // (004,017)
      end
   else
      begin
      mlinha:=mlinha+'01'; // (002,003)
      mlinha:=mlinha+insere(DM1.Tb_EmpCNPF.AsString,'0',14); // (004,017)
      end;
   mlinha:=mlinha+insere(IntToStr(pCodAge),'0',4); // AGENCIA MANTENEDORA DA CONTA  // (018,021)
   mlinha:=mlinha+insere('0','0',2); // complemento do registro  // (022,023)
//   mlinha:=mlinha+insere('0','0',5); // numero da conta da empresa
   mlinha:=mlinha+insere(FormatFloat('0000',pCodCed),'0',5);  // (024,028)
//   mlinha:=mlinha+insere('0','0',1); // digito auto conferencia da conta da empresa
   mlinha:=mlinha+insere(pDigCed,'0',1);  // (029,029)

   mlinha:=mlinha+insere2(' ',' ',4); // COMPLEMENTO DO REGISTRO  // (030,033)
   mlinha:=mlinha+insere('0','0',4); // COD INSTRUCAO/ALEGACAO A SER CANCELADA NOTA 27   // (034,037)

   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',6);  // (038,043)
   mlinha:=mlinha+'/';  // (044,044)
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',2);  // (045,047)
   mlinha:=mlinha+'0.'+iif(Frm_CobEle_Remessa.Tb_CadRemBcoRECODEMP_DUP.AsInteger>100,'1','0');  // (048,048)
   mlinha:=mlinha+insere2(' ',' ',13); // restante do numero da duplicata  // (049,062)

   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.AsString,'0',08); // nosso numero Preencher no Banco  // (063,070)

   mlinha:=mlinha+insere('0','0',13); // QUANTIDADE DE MOEDA VARIAVEL 0 QUANDO REAL  // (071,083)
   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsString,'0',03); // codigo da carteira  // (084,086)
   mlinha:=mlinha+insere2(' ',' ',21); // IDENTIFICACAO DA OPERACAO NO BANCO  // (087,107)
   if (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=147) then
      mlinha:=mlinha+'E'
   else if (Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsInteger=150) then
      mlinha:=mlinha+'U'
   else
      mlinha:=mlinha+'I';

   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString,'0',2); /// codigos de ocorrencia

   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',6);
   mlinha:=mlinha+'/';
   mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',2);
   mlinha:=mlinha+insere2(' ',' ',01); // restante do numero da duplicata


   if Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value=Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value then
      mlinha:=mlinha+'999999' // Data de Vencimento da duplicata
   else
      mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data de Vencimento da duplicata
   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.Value*100),'0',13); // Valor do Titulo
   mlinha:=mlinha+insere2('341',' ',3); //numero do banco 341

   mlinha:=mlinha+insere('0','0',05); // AGENCIA COBRADORA
   mlinha:=mlinha+'01'; // duplicata mercantil;
   if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
      mlinha:=mlinha+'A'  // Aceite
   else
      mlinha:=mlinha+'N';  // Nao Aceite
   mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value); // Data de Emissao
   if Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsFloat>0 then
      mlinha:=mlinha+insere(' ',' ',2) // 1a. instrucao
   else
      mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsString,'0',2); // 1a. instrucao
   if Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT02.AsFloat>0 then
      mlinha:=mlinha+insere(' ',' ',2) // 2a. instrucao
   else
      mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT02.AsString,'0',2); // 2a. instrucao
   mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.Value*100),'0',13); // Juros por dia de Atraso


   if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.AsFloat>0 then // desconto por dia de antecipação
      begin
      if (Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.IsNull) or
         (Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.AsDateTime<=pdatanula) then
         mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value) // Data limite para desconto
      else
         mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.Value); // Data limite para desconto
      mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.Value*100),'0',13); // desconto por dia
      end
   else
      begin
      if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF.Value>0 then
         begin
         if Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.AsDateTime>=Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.AsDateTime then
            mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.Value) // Data limite para desconto
         else
            mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data limite para desconto
         end
      else
         mlinha:=mlinha+'000000';
      mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF .Value*100),'0',13); // desconto ate determinada data
      end;


   mlinha:=mlinha+insere('0','0',13); // Valor do IOF - Campo 36
   mlinha:=mlinha+insere('0','0',13); // Valor do Abatimento - Campo 37

   if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC',
                'C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
      begin
      fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString,
                 0,['0'],0);
      Frm_CobEle_Remessa.Tb_CadRemBco.Next;
      Continue;
      end;


   if DM1.Query2.FieldByName('CCNPJ').AsFloat>0 then
      begin
      mlinha:=mlinha+'02';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',14);
      end
   else
      begin
      mlinha:=mlinha+'01';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',14);
      end;


   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',30); // Razao Social
   mlinha:=mlinha+insere2(' ',' ',10); // COMPLEMENTO REGISTROS BRANCOS
   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString),' ',40); // logradouro
//                   +trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',40); na linhda de baixa ja tem
   mlinha:=mlinha+mcinst2;
   mcinst2:=insere2(DM1.Query2.FieldByName('CBAIRROC').AsString,' ',12);
   mlinha:=mlinha+mcinst2;
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',08); // CEP

   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CCIDADEC').AsString),' ',15);
//                   +trim(DM1.Query2.FieldByName('CUFC').AsString),' ',15); na linha de baixo
   mlinha:=mlinha+mcinst2;

   mcinst2:=insere2(trim(DM1.Query2.FieldByName('CUFC').AsString),' ',02);
   mlinha:=mlinha+mcinst2;
   mlinha:=mlinha+insere2(' ',' ',30); // nome do sacador / avalista
   mlinha:=mlinha+insere2(' ',' ',04); // complemento do registro
   mlinha:=mlinha+insere('0','0',06); // data de mora

   mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoREPROTESTO_QTDD.AsString,'0',02);
   mlinha:=mlinha+insere2(' ',' ',01); // complemento do registro
   mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
   Writeln(f,mlinha);
   Frm_CobEle_Remessa.Tb_CadRemBco.Next;
   end;
mSeqReg:=mSeqReg+1;
mlinha:='9';
mlinha:=mlinha+insere2(' ',' ',393); // Branco Espaços - Campo 02
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
Writeln(f,mlinha);
closefile(f);
verteclado(0);
fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);
end;

function fCobEle_rem399Cnab240399dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate; pHoraRem: TTime): Boolean;
var
  f: TextFile;
  mlinha: String;
  mArqsai: String;
begin
dm1.Tb_Emp.Close;
dm1.Tb_Emp.Sql.Clear;
dm1.Tb_Emp.SQL.Add('select * from cademp where codemp='+inttostr(codemp));
dm1.Tb_Emp.Open;
result:=true;
mArqsai:=pPasta+'\SCD'+FormatFloat('00000',pCodRem)+'.SEQ';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;
//HEADER CABEÇALHO
mlinha:=insere('399','0',3);
mlinha:=mlinha+insere('0','0',4);
mlinha:=mlinha+insere('0','0',1);
mlinha:=mlinha+insere2(' ',' ',9);
if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2'
else
  mlinha:=mlinha+'1';
mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',14);
mlinha:=mlinha+'COBCNAB'+insere(InttoStr(pcodage)+InttoStr(pCodCed)+pDigCed,'0',13);
mlinha:=mlinha+insere(InttoStr(pcodage),'0',5);
mlinha:=mlinha+insere(pDigAge,'0',1);
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12);
mlinha:=mlinha+insere(pDigCed,'0',1);
mlinha:=mlinha+insere(' ',' ',1);
mlinha:=mlinha+insere2(pNomCed,' ',30);
mlinha:=mlinha+insere2('HSBC Bank Brasil S.A.',' ',30);
mlinha:=mlinha+insere(' ',' ',10);
mlinha:=mlinha+IntToStr(ptipo);
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem);
mlinha:=mlinha+FormatDateTime('HHMMSS',pHoraRem);
mlinha:=mlinha+insere('1','0',6);
mlinha:=mlinha+'010';
mlinha:=mlinha+insere('0','0',5);
mlinha:=mlinha+insere('S','S',1);
mlinha:=mlinha+insere(' ',' ',11);
mlinha:=mlinha+insere('S','S',1);
mlinha:=mlinha+insere(' ',' ',7);
mlinha:=mlinha+insere(' ',' ',20);
mlinha:=mlinha+insere(' ',' ',29);
Writeln(f,mlinha);

// HEADER DE LOTE
mlinha:=insere('399','0',3);
mlinha:=mlinha+insere('1','0',4);
mlinha:=mlinha+insere('1','1',1);
mlinha:=mlinha+insere('R','R',1);
mlinha:=mlinha+insere('01','0',2);
mlinha:=mlinha+insere('0','0',2);
mlinha:=mlinha+insere('010','0',3);
mlinha:=mlinha+insere(' ',' ',1);
if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2'
else
  mlinha:=mlinha+'1';
mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',15);
mlinha:=mlinha+'COBCNAB'+insere(InttoStr(pcodage)+InttoStr(pCodCed)+pDigCed,'0',13);
mlinha:=mlinha+insere(InttoStr(pcodage),'0',5);
mlinha:=mlinha+insere(pDigAge,'0',1);
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12);
mlinha:=mlinha+insere(pDigCed,'0',1);
mlinha:=mlinha+insere(' ',' ',1);
mlinha:=mlinha+insere2(pNomCed,' ',30);
mlinha:=mlinha+insere(' ',' ',40);
mlinha:=mlinha+insere(' ',' ',40);
mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECHAVE.AsString,'0',8);
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem);
mlinha:=mlinha+insere('0','0',8);
mlinha:=mlinha+insere(' ',' ',11);
mlinha:=mlinha+insere(' ',' ',22);
Writeln(f,mlinha);
mQtdDup:=0;
mTotalDup:=0;
Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
  begin
  // DETALHE linha 01
  if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC','C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
    begin
    fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString,0,['0'],0);
    Frm_CobEle_Remessa.Tb_CadRemBco.Next;
    Continue;
    end;
  mQtdDup:=mQtdDup+1;
  mlinha:=insere('399','0',3);     // 01.03p banco
  mlinha:=mlinha+insere('1','0',4); // lote 02.3P
  mlinha:=mlinha+insere('3','3',1);  // 03.3P registro detalhe
  mlinha:=mlinha+insere(IntToStr(mQtdDup),'0',5); // 04.3P numero sequencial do registro do lote
  mlinha:=mlinha+insere('P','P',1);  // 05.3P cod do segmento registro detalhe
  mlinha:=mlinha+insere(' ',' ',1); // 06.3P  USO EXCLUSIVO FEBRABAN/CNAB
  mlinha:=mlinha+insere(fdeixanum2(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString),'0',2);   //  07.3P   CÓD. MOV. CÓDIGO DE MOVIMENTO
  mlinha:=mlinha+insere(InttoStr(pcodage),'0',5);  //  08.3P  AGENCIA CÓDIGO AGÊNCIA MANTENEDORA DA CONTA
  mlinha:=mlinha+insere(pDigAge,'0',1); // 09.3P DV DÍGITO VERIFICADOR DA AGÊNCIA
  mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12); // 10.3P NÚMERO NÚMERO DA CONTA CORRENTE
  mlinha:=mlinha+insere(pDigCed,'0',1); // 11.3P DV DÍGITO VERIFICADOR DA CONTA
  mlinha:=mlinha+insere(' ',' ',1); // 12.3P DV DÍGITO VERIFICADOR DA AG/CONTA
  mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.AsString
                        +Frm_CobEle_Remessa.Tb_CadRemBcoREDNOSNUM.AsString,' ',20); //13.3P NOSSO NÚMERO IDENTIFICAÇÃO DO TÍTULO NO BANCO
  mlinha:=mlinha+insere('1','1',1); // 14.3P CARTEIRA CÓDIGO DA CARTEIRA
  mlinha:=mlinha+insere('1','1',1); // 15.3P CADASTRAMENTO FORMA DE CADASTRAMENTO DO TÍTULO NO BANCO
  mlinha:=mlinha+insere('1','1',1); // 16.3P DOCUMENTO TIPO DE DOCUMENTO
  mlinha:=mlinha+insere('2','2',1); // EMISSÃO BOLETO IDENTIFICAÇÃO DA EMISSÃO DO BLOQ.
  mlinha:=mlinha+insere('2','2',1); // 18.3P DISTRIB. BOLETO IDENTIFICAÇÃO DA ISTRIBUIÇÃO
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString+'/'+Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,'0',15);  // 19.3P Nº DO DOCUMENTO  NÚMERO DO DOCUMENTO DE COBRANÇA
  mlinha:=mlinha+insere(FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.AsDateTime),'0',8); // 20.3P VENCIMENTO DATA DE VENCIMENTO
  mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.Value*100),'0',15); // 21.3P VALOR DO TÍTULO VALOR NOMINAL DO TÍTULO
  mlinha:=mlinha+insere('0','0',5); // 22.3P AG. COBRADORA AGÊNCIA ENCARREGADA DA COBRANÇA
  mlinha:=mlinha+insere('0','0',1); // 23.3P DV DÍGITO VERIFICADOR DA AGÊNCIA
  if Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=5 then
    begin
    mlinha:=mlinha+'08'; // nota de credito 24.3P ESPÉCIE TÍTULO ESPÉCIE DO TÍTULO
    end
  else if (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=1) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=2) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=6) then
    begin
    mlinha:=mlinha+'99'; // Cheques 24.3P ESPÉCIE TÍTULO ESPÉCIE DO TÍTULO
    end
  else
    begin
    mlinha:=mlinha+'02'; // Duplicata Mercantil; 24.3P ESPÉCIE TÍTULO ESPÉCIE DO TÍTULO
    end;
  if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
    begin
    mlinha:=mlinha+'A'  // Aceite 25.3P ACEITE IDENTIFICAÇÃO DE TÍTULO ACEITO/NÃO ACEITO
    end
  else
    begin
    mlinha:=mlinha+'N';  // Aceite 25.3P ACEITE IDENTIFICAÇÃO DE TÍTULO ACEITO/NÃO ACEITO
    end;
  mlinha:=mlinha+FormatDateTime('DDMMYYYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value); // Data de Emissao 26.3P DATA EMISSÃO TÍTULO DATA DA EMISSÃO DO TÍTULO
  if Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.AsInteger>0 then
    begin
    mlinha:=mlinha+insere('1','1',1); // 27.3P JUROS CÓD. JUROS MORA CÓDIGO DO JUROS DE MORA
    end
  else
    begin
    mlinha:=mlinha+insere('3','3',1); // 27.3P JUROS CÓD. JUROS MORA CÓDIGO DO JUROS DE MORA
    end;
  mlinha:=mlinha+FormatDateTime('DDMMYYYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // juros apartir do vencimento 28.3P DATA JUROS MORA ¦DATA DO JUROS DE MORA
  mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.Value*100),'0',15); // juros apartir do vencimento  29.3P JUROS MORA JUROS DE MORA POR DIA/TAXA
  mlinha:=mlinha+insere('1','1',1); // 30.3P DESCONTO 1 CÓD. DESC. 1 CÓDIGO DO DESCONTO 1
//  mlinha:=mlinha+FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.Value)); // desc ate o dia
  mlinha:=mlinha+FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // desc ate o dia 31.3P DATA DESC. 1 DATA DO DESCONTO 1
  mlinha:=mlinha+insere(FloatToStr(Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.AsFloat*100),'0',15); // valor do desc 32.3P DESCONTO 1 VALOR/PERCENTUAL A SER CONCEDIDO
  mlinha:=mlinha+insere('0','0',15); // iof 33.3P VLR IOF VALOR DO IOF A SER RECOLHIDO
  mlinha:=mlinha+insere('0','0',15); // abatimento  34.3P VLR ABATIMENTO VALOR DO ABATIMENTO
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString+'/'+Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,'0',25);  // 35.3P USO EMPRESA BENEFICIÁRIO IDENTIFICAÇÃO DO TÍT. NA EMPRESA
  if Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.Value>0 then
    begin
    mlinha:=mlinha+insere2(FloatToStr(ValFloat(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsString)),'0',1); // 36.3P CÓDIGO P/ PROTESTO CÓDIGO PARA PROTESTO
    mlinha:=mlinha+insere2(fdeixanum2(Frm_CobEle_Remessa.Tb_CadRemBcoREPROTESTO_QTDD.AsString),'0',2);  // 37.3P PRAZO P/ PROTESTO NÚMERO DE DIAS PARA PROTESTO
    end
  else
    begin
    mlinha:=mlinha+insere2('3','3',1); // 36.3P CÓDIGO P/ PROTESTO CÓDIGO PARA PROTESTO
    mlinha:=mlinha+insere2('0','0',2); // 37.3P PRAZO P/ PROTESTO NÚMERO DE DIAS PARA PROTESTO
    end;
  mlinha:=mlinha+insere2('2','2',1);   // 38.3P CÓDIGO P/ BAIXA/DEVOL CÓDIGO PARA BAIXA/DEVOLUÇÃO
  mlinha:=mlinha+insere2('0','0',3); // 39.3P PRAZO P/ BAIXA/DEVOL NÚMERO DE DIAS PARA BAIXA/DEVOL.
  mlinha:=mlinha+insere(dm1.Tb_PargerPCODMOE.AsString,'0',2); // 40.3P CÓDIGO DA MOEDA CÓDIGO DA MOEDA
  mlinha:=mlinha+insere2('0','0',10); // 41.3P NÚMERO DO CONTRATO N. DO CONTR. DA OPERAÇÃO DE CRÉD.
  mlinha:=mlinha+insere2(' ',' ',1);  // 42.3P CNAB USO EXCLUSIVO FEBRABAN/CNAB
  Writeln(f,mlinha);

 // DETALHE linha 02
  mQtdDup:=mQtdDup+1;
  mlinha:=insere('399','0',3);  // 01.3Q  CONTROLE BANCO CÓDIGO DO BANCO NA COMPENSAÇÃO
  mlinha:=mlinha+insere('1','0',4); //  02.3Q LOTE LOTE DE SERVIÇO
  mlinha:=mlinha+insere('3','3',1); // 03.3Q REGISTRO REGISTRO DETALHE
  mlinha:=mlinha+insere(IntToStr(mQtdDup),'0',5);  // 04.3Q SERVIÇO Nº DO REGISTRO Nº SEQUENCIAL DO REGISTRO NO LOTE
  mlinha:=mlinha+insere('Q','Q',1); // 05.3Q SEGMENTO CÓD. SEGMENTO DO REGISTRO DETALHE
  mlinha:=mlinha+insere(' ',' ',1); // 06.3Q CNAB USO EXCLUSIVO FEBRABAN/CNAB
  mlinha:=mlinha+insere(fdeixanum2(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString),'0',2); // 07.3Q CÓD. MOV. CÓDIGO DE MOVIMENTO
  if DM1.Query2.FieldByName('CCNPJ').AsFloat=0 then
      begin
      mlinha:=mlinha+'1'; // 08.3Q DADOS DO PAGADOR INSCRIÇAO TIPO TIPO DE INSCRIÇÃO
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',15); // 09.3Q NÚMERO N Ú M ERO DE INSCRIÇÃO
      end
   else
      begin
      mlinha:=mlinha+'2';  // 08.3Q DADOS DO PAGADOR INSCRIÇAO TIPO TIPO DE INSCRIÇÃO
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',15); // 09.3Q NÚMERO N Ú M ERO DE INSCRIÇÃO
      end;
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',40); // Razao Social 10.3Q NOME NOME
   mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString),' ',38); // Endereço do Sacado   11.3Q ENDEREÇO ENDEREÇO
   mlinha:=mlinha+'  '; // 12.3Q USO BANCO USO BANCO
   mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',15); // brancos 13.3Q BAIRRO BAIRRO
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',8); // CEP 14.3Q CEP CEP 15.3Q SUFIXO DO CEP SUFIXO DO CEP
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CCIDADEC').AsString,' ',15); // Cidade 16.3Q CIDADE CIDADE
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CUFC').AsString,' ',2); // UF           17.3Q UF UNIDADE DA FEDERAÇÃO
   mlinha:=mlinha+insere2('0','0',16);         // dados avalista   18.3Q SACADOR /AVALISTA INSCRIÇAO TIPO TIPO DE INSCRIÇÃO dados avalista 19.3Q NÚMERO N Ú M ERO DE INSCRIÇÃO
   mlinha:=mlinha+insere2(' ',' ',40);         // 20.3Q NOME NOME DO SACADOR/AVALISTA
   mlinha:=mlinha+insere2(' ',' ',3); // 21.3Q BANCO CORRESPONDENTE CÓD. BCO CORRESP. NA COMPENSAÇÃO
   mlinha:=mlinha+insere2(' ',' ',20);  // 22.3Q N. NÚM. BCO CORRESP. NOSSO NÚM. NO BCO CORRESPONDENTE
   mlinha:=mlinha+insere2(' ',' ',8);  //  23.3Q CNAB USO EXCLUSIVO FEBRABAN/CNAB
   Writeln(f,mlinha);
// detalhe linha 03


 // DETALHE linha 03
  mQtdDup:=mQtdDup+1;
  mlinha:=insere('399','0',3);  // 01.3R  CONTROLE BANCO CÓDIGO DO BANCO NA COMPENSAÇÃO
  mlinha:=mlinha+insere('1','0',4); //  02.3R LOTE LOTE DE SERVIÇO
  mlinha:=mlinha+insere('3','3',1); // 03.3R REGISTRO REGISTRO DETALHE
  mlinha:=mlinha+insere(IntToStr(mQtdDup),'0',5);  // 04.3R SERVIÇO Nº DO REGISTRO Nº SEQUENCIAL DO REGISTRO NO LOTE
  mlinha:=mlinha+insere('R','R',1); // 05.3R SEGMENTO CÓD. SEGMENTO DO REGISTRO DETALHE
  mlinha:=mlinha+insere(' ',' ',1); // 06.3R CNAB USO EXCLUSIVO FEBRABAN/CNAB
  mlinha:=mlinha+insere(fdeixanum2(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString),'0',2); // 07.3R CÓD. MOV. CÓDIGO DE MOVIMENTO

  mlinha:=mlinha+insere('0','0',1); // 08.3R  DESCONTO 2 CÓD. DESC. 2 CÓ DIGO DO DESCONTO 2
  mlinha:=mlinha+'00000000'; // 09.3R DATA DESC. 2 DA TA DO DESCONTO 2 19 26 8 - NUMÉRICO (DDMMAAAA)
  mlinha:=mlinha+insere(FormatFloat('0000',0),'0',15); // 10.3R DESCONTO 2 VA LOR/PERCENTUAL A SER CONCEDIDO


  mlinha:=mlinha+insere('0','0',1); //  11.3R  DESCONTO 3 CÓD. DESC. 3 CÓ DIGO DO DESCONTO 3
  mlinha:=mlinha+'00000000'; // 12.3R DATA DESC. 3 DA TA DO DESCONTO 3
  mlinha:=mlinha+insere(FormatFloat('0000',0),'0',15); // 13.3R DESCONTO 3 VALOR/PERCENTUAL A SER CONCEDIDO
  if Frm_CobEle_Remessa.Tb_CadRemBcoREMULTA.AsFloat<=0 then
     begin
     mlinha:=mlinha+insere('0','0',1); //  14.3R MULTA  CÓD. MULTA CÓ DIGO DA MULTA 66 66 1
     mlinha:=mlinha+'00000000'; // 15.3R DATA DA MULTA DA TA DA MULTA
     mlinha:=mlinha+insere(FormatFloat('0000',0),'0',15); // 16.3R MULTA VA LOR/PERCENTUAL A SER APLICADO
     end
  else
     begin
     mlinha:=mlinha+insere('1','1',1); //  14.3R MULTA  CÓD. MULTA CÓ DIGO DA MULTA 66 66 1
     mlinha:=mlinha+FormatDateTime('DDMMYYYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value+Frm_CobEle_Remessa.Tb_CadRemBcoREQTDDM.AsInteger); // j15.3R DATA DA MULTA DA TA DA MULTA
     mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREMULTA.AsFloat*100),'0',15); // 16.3R MULTA VA LOR/PERCENTUAL A SER APLICADO
     end;
  mlinha:=mlinha+insere(' ',' ',10); //  17.3R INFORMAÇÃO AO PAGADOR INFORMAÇÃO DO BANCO AO PAGADOR
  mlinha:=mlinha+insere(' ',' ',40); //  18.3R INFORMAÇÃO 3 MENSAGEM 3 100 139 40 - BRANCOS
  mlinha:=mlinha+insere(' ',' ',40); //  19.3R INFORMAÇÃO 4 MENSAGEM 4 140 179 40 - BRANCOS
  mlinha:=mlinha+insere(' ',' ',61); //  20.3R CNAB USO EXCLUSIVO FEBRABAN/CNAB 180 240 61 - BRANCOS
  Writeln(f,mlinha);

// termino detalhe linha 03




   mTotalDup:=mTotalDup+Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.AsFloat;
   Frm_CobEle_Remessa.Tb_CadRemBco.Next;
   end;

// TRAILER DO LOTE
mlinha:=insere('399','0',3);
mlinha:=mlinha+insere('1','0',4);
mlinha:=mlinha+'5';
mlinha:=mlinha+insere2(' ',' ',9);
mlinha:=mlinha+insere(FloatToStr(mQtdDup),'0',6);
mlinha:=mlinha+insere(FloatToStr(mQtdDup),'0',6);
mlinha:=mlinha+insere(FloatToStr(mTotalDup*100),'0',17);
mlinha:=mlinha+insere('0','0',6);
mlinha:=mlinha+insere('0','0',17);
mlinha:=mlinha+insere('0','0',6);
mlinha:=mlinha+insere('0','0',17);
mlinha:=mlinha+insere('0','0',6);
mlinha:=mlinha+insere('0','0',17);
mlinha:=mlinha+insere('0','0',8);
mlinha:=mlinha+insere(' ',' ',117);
writeln(f,mlinha);

// TRAILER DO ARQUIVO
mlinha:=insere('399','0',3);
mlinha:=mlinha+insere('9','9',4);
mlinha:=mlinha+insere('9','9',1);
mlinha:=mlinha+insere(' ',' ',9);
mlinha:=mlinha+insere('1','0',6);
mlinha:=mlinha+insere(FloatToStr(mQtdDup+4),'0',6);
mlinha:=mlinha+insere('1','0',6);
mlinha:=mlinha+insere(' ',' ',205);
Writeln(f,mlinha);
closefile(f);
verteclado(0);
fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);
end;


function fCobEle_rem353008033Cnab240(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate): Boolean;
var
  f: TextFile;
  mlinha: String;
  mArqsai: String;
begin
dm1.Tb_Emp.Close;
dm1.Tb_Emp.Sql.Clear;
dm1.Tb_Emp.SQL.Add('select * from cademp where codemp='+inttostr(codemp));
dm1.Tb_Emp.Open;
result:=true;
mArqsai:=pPasta+'\SAN'+FormatFloat('00000',pCodRem)+'.txt';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;
//HEADER CABEÇALHO
//353-008-033

mlinha:=insere('033','0',3);
mlinha:=mlinha+insere('0','0',4);
mlinha:=mlinha+insere('0','0',1);
mlinha:=mlinha+insere2(' ',' ',8);
if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2'
else
  mlinha:=mlinha+'1';
mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',15);
mlinha:=mlinha+insere(FloatToStr(pCodAge),'0',4)+insere(FloatToStr(pCodConv),'0',11);
mlinha:=mlinha+insere(' ',' ',25);
mlinha:=mlinha+insere2(pNomCed,' ',30);
mlinha:=mlinha+insere2('Banco Santander',' ',30);
mlinha:=mlinha+insere(' ',' ',10);
mlinha:=mlinha+'1';
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem);
mlinha:=mlinha+insere(' ',' ',6);
mlinha:=mlinha+insere('1','0',6);
mlinha:=mlinha+'040';
mlinha:=mlinha+insere(' ',' ',74);
Writeln(f,mlinha);

// HEADER DE LOTE
//353-008-033
mlinha:=insere('033','0',3);
mlinha:=mlinha+insere('1','0',4);
mlinha:=mlinha+insere('1','1',1);
mlinha:=mlinha+insere('R','R',1);
mlinha:=mlinha+insere('01','0',2);
mlinha:=mlinha+insere(' ',' ',2);
mlinha:=mlinha+insere('030','0',3);
mlinha:=mlinha+insere(' ',' ',1);
if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2'
else
  mlinha:=mlinha+'1';
mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',15);
mlinha:=mlinha+insere(' ',' ',20);
mlinha:=mlinha+insere(FloatToStr(pCodAge),'0',4)+insere(FloatToStr(pCodConv),'0',11);
mlinha:=mlinha+insere(' ',' ',5);
mlinha:=mlinha+insere2(pNomCed,' ',30);
mlinha:=mlinha+insere(' ',' ',40);
mlinha:=mlinha+insere(' ',' ',40);
mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECHAVE.AsString,'0',8);
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem);
mlinha:=mlinha+insere(' ',' ',41);
Writeln(f,mlinha);
mQtdDup:=0;
mTotalDup:=0;
Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
  begin
  // DETALHE linha 01
  if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC','C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
    begin
    fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString,0,['0'],0);
    Frm_CobEle_Remessa.Tb_CadRemBco.Next;
    Continue;
    end;
  mQtdDup:=mQtdDup+1;
  //353-008-033
  mlinha:=insere('033','0',3);
  mlinha:=mlinha+insere('1','0',4);
  mlinha:=mlinha+insere('3','3',1);
  mlinha:=mlinha+insere(IntToStr(mQtdDup),'0',5);
  mlinha:=mlinha+insere('P','P',1);
  mlinha:=mlinha+insere(' ',' ',1);
  mlinha:=mlinha+insere(fdeixanum2(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString),'0',2);
  mlinha:=mlinha+insere(InttoStr(pcodage),'0',4);
  mlinha:=mlinha+insere(pDigAge,'0',1);
  mlinha:=mlinha+insere(InttoStr(pCodCed),'0',9);
  mlinha:=mlinha+insere(pDigCed,'0',1);
//  mlinha:=mlinha+insere('0','0',9);
  mlinha:=mlinha+insere(InttoStr(pCodCed),'0',9);
  mlinha:=mlinha+insere(pDigCed,'0',1);
  mlinha:=mlinha+insere(' ',' ',2);
  mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.AsString
                        +Frm_CobEle_Remessa.Tb_CadRemBcoREDNOSNUM.AsString,' ',13);
  mlinha:=mlinha+insere('5','5',1);
  mlinha:=mlinha+insere('1','1',1);
  mlinha:=mlinha+insere('1','1',1);
  mlinha:=mlinha+insere(' ',' ',2);
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString+'/'+Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,'0',15);
  mlinha:=mlinha+insere(FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.AsDateTime),'0',8);
  mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.Value*100),'0',15);
  mlinha:=mlinha+insere('0','0',5);
  mlinha:=mlinha+insere(' ',' ',1);
if (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=1) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=2) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=6) then
    begin
    mlinha:=mlinha+'97'; // Cheques
    end
  else
    begin
    mlinha:=mlinha+'02'; // Duplicata Mercantil;
    end;

  if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
    begin
    mlinha:=mlinha+'A'  // Aceite
    end
  else
    begin
    mlinha:=mlinha+'N';  // Aceite
    end;
  mlinha:=mlinha+FormatDateTime('DDMMYYYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value); // Data de Emissao
  if Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.AsInteger>0 then
    begin
    mlinha:=mlinha+insere('1','1',1);
    mlinha:=mlinha+FormatDateTime('DDMMYYYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // juros apartir do vencimento
    end
  else
    begin
    mlinha:=mlinha+insere('3','3',1);
    mlinha:=mlinha+insere('0','0',8)
    end;
  mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.Value*100),'0',15); // juros apartir do vencimento

  if (Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.AsFloat>0) then
    begin
    mlinha:=mlinha+insere('3','3',1);
    mlinha:=mlinha+FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // desc ate o dia
    end
  else
    begin
    mlinha:=mlinha+insere('0','0',1);
    mlinha:=mlinha+insere('0','0',8) // desc ate o dia
    end;
    
  mlinha:=mlinha+insere(FloatToStr(Frm_CobEle_Remessa.Tb_CadRemBcoREDESCD.AsFloat*100),'0',15); // valor do desc
  mlinha:=mlinha+insere('0','0',15); // iof
  mlinha:=mlinha+insere('0','0',15); // abatimento
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString+'/'+Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,'0',25);
  if Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.Value>0 then
    begin
    mlinha:=mlinha+insere2(FloatToStr(ValFloat(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsString)),'0',1);
    mlinha:=mlinha+insere2(fdeixanum2(Frm_CobEle_Remessa.Tb_CadRemBcoREPROTESTO_QTDD.AsString),'0',2);
    end
  else
    begin
    mlinha:=mlinha+insere2('0','0',1);
    mlinha:=mlinha+insere2('0','0',2);
    end;
  mlinha:=mlinha+insere2('2','2',1);
  mlinha:=mlinha+insere2('0','0',1);
  mlinha:=mlinha+insere2('0','0',2);
  mlinha:=mlinha+insere('00','0',2);
  mlinha:=mlinha+insere2(' ',' ',11);
  Writeln(f,mlinha);

 // DETALHE linha 02
  mQtdDup:=mQtdDup+1;
  //353-008-033
  mlinha:=insere('033','0',3);
  mlinha:=mlinha+insere('1','0',4);
  mlinha:=mlinha+insere('3','3',1);
  mlinha:=mlinha+insere(IntToStr(mQtdDup),'0',5);
  mlinha:=mlinha+insere('Q','Q',1);
  mlinha:=mlinha+insere(' ',' ',1);
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString,'0',2);
  if DM1.Query2.FieldByName('CCNPJ').AsFloat=0 then
      begin
      mlinha:=mlinha+'1';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',15);
      end
   else
      begin
      mlinha:=mlinha+'2';
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',15);
      end;
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',40); // Razao Social
   mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString),' ',40); // Endereço do Sacado
   mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',15); // brancos
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',8); // CEP
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CCIDADEC').AsString,' ',15); // Cidade
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CUFC').AsString,' ',2); // UF
   mlinha:=mlinha+insere2('0','0',1);          // dados avalista
   mlinha:=mlinha+insere2('0','0',15);         // dados avalista
   mlinha:=mlinha+insere2(' ',' ',40);         // dados avalista
   mlinha:=mlinha+insere2('','0',12);
   mlinha:=mlinha+insere2(' ',' ',19);
   Writeln(f,mlinha);
   mTotalDup:=mTotalDup+Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.AsFloat;
   Frm_CobEle_Remessa.Tb_CadRemBco.Next;
   end;

// TRAILER DO LOTE
//353 - 008 - 033
mlinha:=insere('033','0',3);
mlinha:=mlinha+insere('1','0',4);
mlinha:=mlinha+'5';
mlinha:=mlinha+insere2(' ',' ',9);
mlinha:=mlinha+insere(FloatToStr(mQtdDup+2),'0',6);
mlinha:=mlinha+insere(' ',' ',217);
writeln(f,mlinha);

// TRAILER DO ARQUIVO
//353 - 008 - 033
mlinha:=insere('033','0',3);
mlinha:=mlinha+insere('9','9',4);
mlinha:=mlinha+insere('9','9',1);
mlinha:=mlinha+insere(' ',' ',9);
mlinha:=mlinha+insere('1','0',6);
mlinha:=mlinha+insere(FloatToStr(mQtdDup+4),'0',6);
mlinha:=mlinha+insere(' ',' ',211);
Writeln(f,mlinha);
closefile(f);
verteclado(0);
fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);
end;



function fCobEle_rem756Cnab4000756dig(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate; pHoraRem: TTime): Boolean;
// Remessa para o Banco 756 - Banco SICOOB
var
f: TextFile;
mlinha: String;
mSeqReg: Integer;
mArqsai: String;
begin
result:=true;
mArqsai:=pPasta+'\SICOOB'+FormatFloat('0000',pCodRem)+'.REM';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;

mSeqReg:=1;
mlinha:='0';
mlinha:=mlinha+'1';
mlinha:=mlinha+insere2('REMESSA',' ',7);
mlinha:=mlinha+'01';
mlinha:=mlinha+insere2('COBRANÇA',' ',8);
mlinha:=mlinha+insere2(' ',' ',7);
mlinha:=mlinha+insere(InttoStr(pcodage),'0',4);
mlinha:=mlinha+insere2(pDigAge,' ',1);
mlinha:=mlinha+insere(InttoStr(pCodConv),'0',9);
mlinha:=mlinha+insere(' ',' ',6);
mlinha:=mlinha+insere2(pNomCed,' ',30);
mlinha:=mlinha+insere2('756BANCOOBCED',' ',18);
mlinha:=mlinha+FormatDateTime('DDMMYY',pDateRem);
mlinha:=mlinha+insere(IntToStr(pCodRem),'0',7);
mlinha:=mlinha+insere2(' ',' ',287);
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
Writeln(f,mlinha);

Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
  begin
  if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC',
               'C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
     begin
     fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString
                ,0,['0'],0);
     Frm_CobEle_Remessa.Tb_CadRemBco.Next;
     Continue;
     end;
  mSeqReg:=mSeqReg+1;
  mlinha:='1';        // 001-001

  if DM1.Tb_EmpCNPF.AsFloat<>0 then
     begin
     mlinha:=mlinha+'01';    // 002-003
     mlinha:=mlinha+insere(DM1.Tb_EmpCNPF.AsString,'0',14); // 004-017
     end
  else
     begin
     mlinha:=mlinha+'02';    // 002-003
     mlinha:=mlinha+insere(DM1.Tb_EmpCGC.AsString,'0',14); // 004-017
     end;

  mlinha:=mlinha+insere(InttoStr(pcodage),'0',4); // 018-021       S
  mlinha:=mlinha+insere2(pDigAge,' ',1); // 022-022
  mlinha:=mlinha+insere(IntToStr(pCodCed),'0',8);  // 023-030
  mlinha:=mlinha+insere(pDigCed,' ',1); // 031-031
  mlinha:=mlinha+insere('0','0',6); // 032-037
  mlinha:=mlinha+insere(' ',' ',25); // 038-062

//observacao para o numero da duplicata MANTER SEMPRE O MESMO PADRAO PARA QUE SEJA RECONHECIDO
// NO RETORNO
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.AsString,'0',11); // 063-073
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoREDNOSNUM.AsString,'0',1); // 074-074
  mlinha:=mlinha+'01'; // 075-076
  mlinha:=mlinha+'00'; // 077-078
  mlinha:=mlinha+insere2(' ',' ',7); // 079-085
  mlinha:=mlinha+insere('0','0',3); // 086-088 variacao carteira
  mlinha:=mlinha+insere('0','0',1); // Conta Caução // 089-089

  mlinha:=mlinha+insere2('0','0',6);    // 090-095
  mlinha:=mlinha+insere2(' ',' ',6);  // 096-101

 mlinha:=mlinha+insere2(' ',' ',4); // 102-105 complemeno

  mlinha:=mlinha+'2';    // 106-106 tipo emissao 1-cooperativa 2-cliene

//  mlinha:=mlinha+insere2('0','0',2);    // 106-106 tipo emissao 1-cooperativa 2-cliene
//  mlinha:=mlinha+insere2('0','0',1);    // 106-106 tipo emissao 1-cooperativa 2-cliene


 mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCAR.AsString,'0',2);// 107-108
 mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.AsString,'0',2); // Código do Comando // 109-110
 mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString,'0',10);             // 111-120
 mlinha:=mlinha+insere(FormatDateTime('ddmmyy',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.AsDateTime),'0',6);

 mlinha:=mlinha+insere(FloatToStr(Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.AsFloat*100),'0',13);

{ mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.AsString,'0',13);
 LINDOMAR
}
 mlinha:=mlinha+insere('756','0',03);
 mlinha:=mlinha+insere(InttoStr(pcodage),'0',4);
 mlinha:=mlinha+insere2(pDigAge,' ',1);

 if (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=1) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=2) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=6) then
   mlinha:=mlinha+'10' // Cheques
 else
   mlinha:=mlinha+'01'; // Duplicata Mercantil;

 if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
   mlinha:=mlinha+'1'  // SEM Aceite
 else
   mlinha:=mlinha+'0';  // Aceite

 mlinha:=mlinha+insere(FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.AsDateTime),'0',6); // Data de Emissao
 mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT.AsString,'0',2); // 1a. instrucao
 mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODPROT02.AsString,'0',2); // 2a. instrucao
 mlinha:=mlinha+insere(FloatToStr(DM4.Tb_Par01PJURM.Value*10000),'0',6);
 mlinha:=mlinha+insere(FloatToStr(DM4.Tb_Par01PMULTA.Value*10000),'0',6);


// mlinha:=mlinha+insere(FloatToStr(Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.AsFloat*30*100),'0',6);
// mlinha:=mlinha+insere(FloatToStr(Frm_CobEle_Remessa.Tb_CadRemBcoREMULTA.AsFloat*100),'0',6);

// mlinha:=mlinha+insere2(' ',' ',1);     tipo disribuicao
 mlinha:=mlinha+'2';     //tipo disribuicao 1-cooperativa 2-cline

if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF.AsFloat=0 then
   mlinha:=mlinha+'000000'
else  if Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.AsDateTime>=Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.AsDateTime then
   mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTDESCF.Value) // Data limite para desconto
 else
   mlinha:=mlinha+FormatDateTime('DDMMYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // Data limite para desconto
mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF .Value*100),'0',13);


 mlinha:=mlinha+insere(dm1.Tb_PargerPCODMOE.AsString,'0',1);
 mlinha:=mlinha+insere('0','0',12); // Valor do IOF

// mlinha:=mlinha+insere('0','0',13); // Valor do IOF

 mlinha:=mlinha+insere('0','0',13); // Valor do Abatimento
 if DM1.Query2.FieldByName('CCNPJ').AsFloat=0 then
   begin
   mlinha:=mlinha+'01';
   mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',14);
   end
 else
   begin
   mlinha:=mlinha+'02';
   mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',14);
   end;
  mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',40); // Razao Social
  mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString),' ',37);
  mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',15);
  mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',08); // CEP
  mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CCIDADEC').AsString,' ',15); // Cidade
  mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CUFC').AsString,' ',02); // UF
  mlinha:=mlinha+insere2(Frm_CobEle_Remessa.Tb_CadRemBcoREOBS.Value,' ',40); // observação brancos
  mlinha:=mlinha+insere('0','0',02); // Dias para Protesto
  mlinha:=mlinha+insere2(' ',' ',01); // Branco Espaços
  mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
  Writeln(f,mlinha);
  Frm_CobEle_Remessa.Tb_CadRemBco.Next;
  end;
mSeqReg:=mSeqReg+1;
mlinha:='9';
mlinha:=mlinha+insere2(' ',' ',393);
mlinha:=mlinha+insere(IntToStr(mSeqReg),'0',6);
Writeln(f,mlinha);

closefile(f);
verteclado(0);
fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);

end;


// inicio sicoob 756 cnab 240


function fCobEle_rem756Cnab240756(ptipo,pCodAge,pCodCed,pCodConv,pCodRem:Integer; pDigAge,pDigCed,pNomCed,pDigConv,pPasta: String;pDateRem: TDate; pHoraRem: TTime): Boolean;
// Remessa para o Banco 756 - Banco SICOOB cnab 240
var
f: TextFile;
mlinha: String;
//mSeqReg: Integer;
mArqsai: String;
mnumseqrem: integer;
mnumlote_arq: integer;
mqtddet: integer;
mqtdlinhas: integer;

mqtdsegmento_p_q: integer;
begin


result:=true;
mArqsai:=pPasta+'\SICOOB240'+FormatFloat('0000',pCodRem)+'.REM';
if FileExists(mArqsai) then
   begin
   If fmensagem(' Já existe um arquivo '+#13
                +' '
                +'com o Nome:  '+mArqSai+#13
                +' '
                +'Deseja substituir o arquivo existente?',0,['1','2'],0)<>mrYes then
      begin
      result:=false;
      Exit;
      end;
   end;
AssignFile(f,mArqsai);
try
   Rewrite(f);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+mArqsai+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   result:=false;
   exit;
   exit;
   end;





mnumseqrem:=fBuscareTestarID('REMBCO756CNAB240');

mqtdsegmento_p_q:=0;
mqtdlinhas:=0;
mnumlote_arq:=0;



mlinha:=insere('756','0',3);              // 001-003
mnumlote_arq:=0;
mlinha:=mlinha+insere('0','0',4);         //004-007  Se registro for Header do Arquivo preencher com '0000'

mlinha:=mlinha+insere('0','0',1);        //008-008  egistro tipo 0

mlinha:=mlinha+insere2(' ',' ',9);       //009-017 eso exclusivo febraban
if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2' //018-018
else
  mlinha:=mlinha+'1'; //018-018
mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',14); //019-032

mlinha:=mlinha+insere(' ',' ',20); // 033/052

mlinha:=mlinha+insere(InttoStr(pcodage),'0',5); // 053-057

mlinha:=mlinha+insere(pDigAge,'0',1); // 058-058
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12); // 059-070
mlinha:=mlinha+insere(pDigCed,'0',1); // 071-071
mlinha:=mlinha+insere('0','0',1); // 072-072
mlinha:=mlinha+insere2(pNomCed,' ',30); // 073-102
mlinha:=mlinha+insere2('SICOOB',' ',30);  // 103-132
mlinha:=mlinha+insere(' ',' ',10);   //133-142
mlinha:=mlinha+'1'; // 143-143
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem);  //144-151
mlinha:=mlinha+FormatDateTime('HHMMSS',pDateRem); // 152-157
mlinha:=mlinha+formatfloat('000000', mnumseqrem); //  158-163
mlinha:=mlinha+insere('081',' ',3);  // 164-166
mlinha:=mlinha+insere('0','0',5);  //167-171
mlinha:=mlinha+insere(' ',' ',20); // 172-191
mlinha:=mlinha+insere(' ',' ',20); // 192-211
mlinha:=mlinha+insere(' ',' ',29); // 212-240
Writeln(f,mlinha);
mqtdlinhas:=mqtdlinhas+1;

// HEADER DO LOTE


// HEADER DE LOTE
mlinha:=insere('756','0',3);
mnumlote_arq:=1;
mlinha:=mlinha+insere(inttostr(mnumlote_arq),'0',4);  //004-007
mlinha:=mlinha+insere('1','1',1);   //008-008
mlinha:=mlinha+insere('R','R',1); //009-009

mlinha:=mlinha+insere('01','0',2);   //010-011
mlinha:=mlinha+insere(' ',' ',2);   //012-013
mlinha:=mlinha+insere('040',' ',3); // 014-016
// '060','0',3); // 014-016

mlinha:=mlinha+insere(' ',' ',1);   //017-017

if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2' //018-018 '0'  =  Isento / Não Informado '1'  =  CPF '2'  =  CGC / CNPJ  '3'  =  PIS / PASEP '9'  =  Outros
else
  mlinha:=mlinha+'1'; //018-018 '0'  =  Isento / Não Informado '1'  =  CPF '2'  =  CGC / CNPJ  '3'  =  PIS / PASEP '9'  =  Outros
  mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',15); // 019-033
mlinha:=mlinha+insere(' ',' ',20); // 034-053

mlinha:=mlinha+insere(InttoStr(pcodage),'0',5); // 054-058
mlinha:=mlinha+insere(pDigAge,'0',1); // 059-059
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12);  // 060-071
mlinha:=mlinha+insere(pDigCed,'0',1); // 072-072
mlinha:=mlinha+insere(' ',' ',1); // 073-073
mlinha:=mlinha+insere2(pNomCed,' ',30); // 074-103
mlinha:=mlinha+insere(' ',' ',40); // 104-143
mlinha:=mlinha+insere(' ',' ',40); // 144-183
mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECHAVE.AsString,'0',8); // 184-191
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem); //192-199
mlinha:=mlinha+insere('0','0',8); // 200-207
mlinha:=mlinha+insere(' ',' ',33); // 20/-240
Writeln(f,mlinha);
mqtdlinhas:=mqtdlinhas+1;


// TERMINO DO HEADER DO LOTE


mqtddet:=0;

mQtdDup:=0;
mTotalDup:=0;
Frm_CobEle_Remessa.Tb_cadrembco.First;
While not Frm_CobEle_Remessa.Tb_cadrembco.Eof do
  begin
  // DETALHE linha 01
  if not flqr2('CRAZAO,CCNPJ,CCPF,CIE,CRG,CCIDADEC,CUFC,CCEPC,CENDERC,CBAIRROC','C','CADCLI','N','CCODCLI',Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString) then
    begin
    fmensagem('Erro ao Localizar o Cliente Código: '+Frm_CobEle_Remessa.Tb_CadRemBcoRECODCLI.AsString,0,['0'],0);
    Frm_CobEle_Remessa.Tb_CadRemBco.Next;
    Continue;
    end;
  mQtdDup:=mQtdDup+1;
  mqtdsegmento_p_q:=mqtdsegmento_p_q+1;

  mlinha:=insere('756','0',3);         //001-003
  mlinha:=mlinha+insere(IntToStr(mnumlote_arq),'0',4);  //004-007
  mQtdDet:=mQtdDet+1;
  mlinha:=mlinha+insere('3','3',1);  //008-008
  mlinha:=mlinha+insere(IntToStr(mqtdsegmento_p_q),'0',5);  //009-013
  mlinha:=mlinha+insere('P','P',1);        // 014-014
  mlinha:=mlinha+insere(' ',' ',1);        // 015-015
  mlinha:=mlinha+insere('01','0',2); // 016-017
  mlinha:=mlinha+insere(InttoStr(pcodage),'0',5);        // 018-022
  mlinha:=mlinha+insere(pDigAge,'0',1);          // 023-023
  mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12);      //024 - 035
  mlinha:=mlinha+insere(pDigCed,'0',1);    //036*036
  mlinha:=mlinha+insere(' ',' ',1);       // 037-037
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.AsString+Frm_CobEle_Remessa.Tb_CadRemBcoREDNOSNUM.AsString,'0',10); // 038-057

  mlinha:=mlinha+Frm_CobEle_Remessa.fRetornaParcelaUnica(Frm_CobEle_Remessa.Tb_CadRemBcoRETIT_CHAVE_ID.asinteger
                                     ,Frm_CobEle_Remessa.Tb_CadRemBcoRETIT_CHAVE_ID_ANO.asinteger
                                     ,Frm_CobEle_Remessa.Tb_CadRemBcoRECODEMP_DUP.asinteger); // 88
  mlinha:=mlinha+'01'; // modalidade
  mlinha:=mlinha+'4'; // a4 sem envelopamento
  mlinha:=mlinha+insere(' ',' ',05); // em branco 5 posicos

//  Frm_CobEle_Remessa.Tb_CadRemBcoRENOSNUM.AsString,' ',10); // 038-057


  mlinha:=mlinha+insere('1','1',1);      // 058-058
  mlinha:=mlinha+insere('0','1',1);      // 059-059
  mlinha:=mlinha+insere(' ','1',1);      // 060-060
  mlinha:=mlinha+insere('2','2',1);      // 061-061
  mlinha:=mlinha+insere('2','2',1);      // 062/062
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString+'/'+Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,' ',15);  // 063-077
  mlinha:=mlinha+insere(FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.AsDateTime),'0',8);           // 078-085
  mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.Value*100),'0',15);     //086-100
  mlinha:=mlinha+insere('0','0',5);                                                          //101-105
  mlinha:=mlinha+insere('   ',' ',1);                                                        // 106-106
  if Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=5 then
    begin
    mlinha:=mlinha+'08'; // nota de credito                                           // 107-108
    end
  else if (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=1) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=2) or
          (Frm_CobEle_Remessa.Tb_CadRemBcoRETIPO.Value=6) then
    begin
    mlinha:=mlinha+'01'; // Cheques                     107-108
    end
  else
    begin
    mlinha:=mlinha+'02'; // Duplicata Mercantil;         // 107-108
    end;
  if Frm_CobEle_Remessa.Tb_CadRemBcoREACEITE.Value='S' then
    begin
    mlinha:=mlinha+'A'  // Aceite                     // 109-109
    end
  else
    begin
    mlinha:=mlinha+'N';  // Aceite                    /109-109
    end;

  mlinha:=mlinha+FormatDateTime('DDMMYYYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTEMIS.Value); // Data de Emissao 110-117

  if Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.AsFloat>0 then
    begin
    mlinha:=mlinha+insere('1','1',1);        // 118-118
    end
//LINDOMARR
  else
    begin
    mlinha:=mlinha+insere('0','0',1);        // 118-118
    end;
  if Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.AsFloat>0 then
     begin
     mlinha:=mlinha+FormatDateTime('DDMMYYYY', Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // juros apartir do vencimento // 119-126
     mlinha:=mlinha+insere(FormatFloat('0000',Frm_CobEle_Remessa.Tb_CadRemBcoREJURD.Value*100),'0',15); // juros apartir do vencimento  // 127-141
     end
  else
     begin
     mlinha:=mlinha+insere('0','0',8);   // juros apartir do vencimento // 119-126
     mlinha:=mlinha+insere('0','0',15);   //  // juros apartir do vencimento  // 127-141
     end;
  if Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF.AsFloat > 0 then
    begin
    mlinha:=mlinha+insere('1','1',1);                // 142-142
    mlinha:=mlinha+FormatDateTime('DDMMYYYY',Frm_CobEle_Remessa.Tb_CadRemBcoREDTVCTO.Value); // desc ate o dia   // 143-150
    mlinha:=mlinha+insere(FloatToStr(Frm_CobEle_Remessa.Tb_CadRemBcoREDESCF.AsFloat*100),'0',15); // valor do desc     // 151-165
    end
  else
    begin
    mlinha:=mlinha+insere('0','0',24); // sem desconto    143-165
    end;
  mlinha:=mlinha+insere('0','0',15); // iof       // 166-180
  mlinha:=mlinha+insere('0','0',15); // abatimento    // 181-195
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRENUMDUP.AsString+'/'+Frm_CobEle_Remessa.Tb_CadRemBcoREDESD.AsString,'0',25);  // 196-220
  if Frm_CobEle_Remessa.CB_CODPROT02.ItemIndex>0 then
    begin
    mlinha:=mlinha+insere2('1','1',1);                                                  // 221-221
    mlinha:=mlinha+insere2(fdeixanum2(Frm_CobEle_Remessa.CB_CODPROT02.Text),'0',2);     // 222-222
    end
  else
    begin
    mlinha:=mlinha+insere2('3','3',1);                           // 221-221
    mlinha:=mlinha+insere2('0','0',2);                           // 222-223
    end;
  mlinha:=mlinha+insere2('0','0',1);                            // 224-224
  mlinha:=mlinha+insere2(' ',' ',3);                            // 225-227
//  mlinha:=mlinha+insere(dm1.Tb_PargerPCODMOE.AsString,'0',2);    // 228-229
  mlinha:=mlinha+insere('9','0',2);    // 228-229
  mlinha:=mlinha+insere2('0','0',10);                           // 230-239
  mlinha:=mlinha+insere2(' ',' ',1);                            // 240-240
  Writeln(f,mlinha);
  mqtdlinhas:=mqtdlinhas+1;
 // DETALHE linha 02

  mlinha:=insere('756','0',3);  // 001-003
  mqtdsegmento_p_q:=mqtdsegmento_p_q+1;

  mlinha:=mlinha+insere(inttostr(mnumlote_arq),'0',4); // 004-007
  mlinha:=mlinha+insere('3','3',1); // 008-008

  mlinha:=mlinha+insere(IntToStr(mqtdsegmento_p_q),'0',5); //009-013
  mlinha:=mlinha+insere('Q','Q',1); // 014-014
  mlinha:=mlinha+insere(' ',' ',1);  // 015-015
  mlinha:=mlinha+insere(Frm_CobEle_Remessa.Tb_CadRemBcoRECODCOM.asstring,'0',2); // 016-017
  if DM1.Query2.FieldByName('CCNPJ').AsFloat=0 then
      begin
      mlinha:=mlinha+'1';           // 018-018
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCPF').AsString,'0',15); //019-033
      end
   else
      begin
      mlinha:=mlinha+'2'; // 018-018
      mlinha:=mlinha+insere(DM1.Query2.fieldbyName('CCNPJ').AsString,'0',15); //019-033
      end;
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CRAZAO').AsString,' ',40); // Razao Social //034-073
   mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CENDERC').AsString),' ',40); // Endereço do Sacado //074-113
   mlinha:=mlinha+insere2(trim(DM1.Query2.FieldByName('CBAIRROC').AsString),' ',15); // brancos // 114-128
   mlinha:=mlinha+insere(fdeixanum(DM1.Query2.FieldByName('CCEPC').AsString),'0',8); // CEP       // 0129-136
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CCIDADEC').AsString,' ',15); // Cidade     //  0137-0151
   mlinha:=mlinha+insere2(DM1.Query2.FieldByName('CUFC').AsString,' ',2); // UF             152-153
   mlinha:=mlinha+insere2('0','0',16);         // dados avalista                             0154-169
   mlinha:=mlinha+insere2(' ',' ',40);         // dados avalista                                170-209
   mlinha:=mlinha+insere2('0','0',3);                                                           // 210-212
   mlinha:=mlinha+insere2(' ',' ',20);                                                            //   213-232
   mlinha:=mlinha+insere2(' ',' ',8);                                                          // 233-240

   Writeln(f,mlinha);
   mqtdlinhas:=mqtdlinhas+1;
   mTotalDup:=mTotalDup+Frm_CobEle_Remessa.Tb_CadRemBcoREVALDUP.AsFloat;
   Frm_CobEle_Remessa.Tb_CadRemBco.Next;
   end;
// TRAILER DO LOTE

mlinha:=insere('756','0',3); // 001-003
mlinha:=mlinha+insere(inttostr(mnumlote_arq),'0',4); // 004-007
mlinha:=mlinha+'5'; // 008-008
mlinha:=mlinha+insere2(' ',' ',9); // 009-017
mlinha:=mlinha+insere(FloatToStr(mqtdlinhas),'0',6);  // 018-023    totais dos registros to tipo 1,2,3,4 e 5
mlinha:=mlinha+insere(FloatToStr(mQtdDup),'0',6); // 024-029
mlinha:=mlinha+insere(FloatToStr(mTotalDup*100),'0',17); // 030-046
mlinha:=mlinha+insere('0','0',6);    // 047	052	006	-
mlinha:=mlinha+insere('0','0',17);  // 053	069
mlinha:=mlinha+insere('0','0',6);     //070	075
mlinha:=mlinha+insere('0','0',17); // 076	092
mlinha:=mlinha+insere('0','0',6); // 093	098
mlinha:=mlinha+insere('0','0',17); // 099	115
mlinha:=mlinha+insere(' ',' ',8); //  116	123  Número do Aviso de Lançamento: Preencher com espaços em branco
mlinha:=mlinha+insere(' ',' ',117); //124	240

writeln(f,mlinha);
mqtdlinhas:=mqtdlinhas+1;

{
// TRAILER DO ARQUIVO novo


mlinha:=insere('1','0',3);              // 001-003
mlinha:=mlinha+insere('9999','0',4);         //004-007  Se registro for Header do Arquivo preencher com '0000'
                                          //        Se registro for Trailer do Arquivo preencher com '9999
mlinha:=mlinha+insere('9','0',1);        //008-008  Domínio:
//                                                  '0'  =  Header de Arquivo
//                                                  '1'  =  Header de Lote
//                                                  '2'  =  Registros Iniciais do Lote
//                                                  '3'  =  Detalhe
//                                                  '4'  =  Registros Finais do Lote
//                                                  '5'  =  Trailer de Lote
//                                                  '9'  =  Trailer de Arquivo
mlinha:=mlinha+insere2(' ',' ',9);       //009-017
if length(dm1.Tb_EmpCGC.AsString)>11 then
  mlinha:=mlinha+'2' //018-018
else
  mlinha:=mlinha+'1'; //018-018
mlinha:=mlinha+insere(dm1.Tb_EmpCGC.AsString,'0',14); //019-032
mlinha:=mlinha+insere(pCodConv,'0',9)+insere('0014','0',4)+insere(pCodCar,'0',2)+insere(pVarCar,'0',3)+insere(' ',' ',2); // 033/052

//mlinha:=mlinha+insere2(pCodConv,' ',20); // 033-052
mlinha:=mlinha+insere(InttoStr(pcodage),'0',5); // 053-057

mlinha:=mlinha+insere(pDigAge,'0',1); // 058-058
mlinha:=mlinha+insere(InttoStr(pCodCed),'0',12); // 059-070
mlinha:=mlinha+insere(pDigCed,'0',1); // 071-071
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_cnab240_dig_agencia_conta.text,' ',1); // 072-072
mlinha:=mlinha+insere2(pNomCed,' ',30); // 073-102
mlinha:=mlinha+insere2('BANCO DO BRASIL',' ',30);  // 103-132
mlinha:=mlinha+insere(' ',' ',10);   //133-142
mlinha:=mlinha+IntToStr(ptipo); // 143-143
mlinha:=mlinha+FormatDateTime('DDMMYYYY',pDateRem);  //144-151
mlinha:=mlinha+FormatDateTime('HHMMSS',pDateRem); // 152-157
mlinha:=mlinha+formatfloat('000000', mnumseqrem); //  158-163
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_header_20_versao_layout.text,' ',3);  // 164-166
//mlinha:=mlinha+'082';
//mlinha:=mlinha+'087';
mlinha:=mlinha+insere(Frm_CobEle_Remessa.edt_cnab240_ha_densidade.Text,'0',5);  //167-171
mlinha:=mlinha+insere(' ',' ',20); // 172-191
mlinha:=mlinha+insere(' ',' ',20); // 192-211
mlinha:=mlinha+insere(' ',' ',29); // 212-240
Writeln(f,mlinha);

trailer do arquivo antio
}

mlinha:=insere('756','0',3);              // 001-003
mlinha:=mlinha+insere('9999','0',4);         //004-007  Se registro for Header do Arquivo preencher com '0000'
                                          //        Se registro for Trailer do Arquivo preencher com '9999
mlinha:=mlinha+insere('9','0',1);        //008-008  Domínio:
//                                                  '0'  =  Header de Arquivo
//                                                  '1'  =  Header de Lote
//                                                  '2'  =  Registros Iniciais do Lote
//                                                  '3'  =  Detalhe
//                                                  '4'  =  Registros Finais do Lote
//                                                  '5'  =  Trailer de Lote               
//                                                  '9'  =  Trailer de Arquivo
mqtdlinhas:=mqtdlinhas+1;

mlinha:=mlinha+insere2(' ',' ',9);       //009-017
//mnumlote:=mnumlote+1;

mlinha:=mlinha+insere('1','0',6);  // 018-023

mlinha:=mlinha+insere(FloatToStr(mqtdlinhas),'0',6);  // 024-029

//mlinha:=mlinha+insere(FloattoStr(mQtddup),'0',06); //030-035   Qtde de Contas p/ Conc. (Lotes): "000000"
mlinha:=mlinha+insere('0','0',06); //030-035   Qtde de Contas p/ Conc. (Lotes): "000000"
mlinha:=mlinha+insere(' ',' ',205); //036-240

Writeln(f,mlinha);


// termino do trailer do arquivo
closefile(f);
verteclado(0);

fmensagem('Arquivo Gerado: '+marqsai,0,['0'],0);

result:=true;

end;


// termino sicoOb 756 cnab 240




procedure TFrm_CobEle_Remessa.bbGerarClick(Sender: TObject);
begin
gb_pasta.Visible:=True;
bbNGerar.SetFocus;
end;


procedure TFrm_CobEle_Remessa.bbProcurarClick(Sender: TObject);
begin
if frm_DefBac=nil then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   begin
   MPASTA.Text:=Frm_DefBac.mcam;
   fDeletaPadroes(codusr,'_COBELE_REMESSA','');
   fGravaPadroes(codusr,'MPASTA'     ,'text'      ,'_COBELE_REMESSA',MPASTA.Text);
   end;
FreeAndNIl(Frm_DefBac);


end;

procedure TFrm_CobEle_Remessa.MINSERLREMExit(Sender: TObject);
begin
fDeletaPadroes(codusr,'_COBELE_REMESSA','MPASTA');
fGravaPadroes(codusr,'MINSERLREM'    ,'text' ,'_COBELE_REMESSA',MINSERLREM.Text);
end;

procedure TFrm_CobEle_Remessa.MPASTAExit(Sender: TObject);
begin
fDeletaPadroes(codusr,'_COBELE_REMESSA','MPASTA');
fGravaPadroes(codusr,'MPASTA'    ,'text' ,'_COBELE_REMESSA',MPASTA.Text);

end;

procedure TFrm_CobEle_Remessa.CODBCOEnter(Sender: TObject);
begin
mcodbco_Ant:=ValFloat(CODBCO.Text);
end;

procedure TFrm_CobEle_Remessa.CB_CODPROTClick(Sender: TObject);
begin
if CB_CODPROT.ItemIndex>=0 then
   CB_CODPROT.Text:=CB_CODPROT.Items.Strings[CB_CODPROT.itemIndex]
else
   begin
   with CB_CODPROT do ItemIndex:=Items.IndexOf(CB_CODPROT.Text);
   CB_CODPROT.Text:=CB_CODPROT.Items.Strings[CB_CODPROT.itemIndex]
   end;
{
if DM1.Tb_BcoBCNUMBCO.Value=341 then // Banco ITAU
   begin
   if pos('PROT',CB_CODPROT.text)>0 then

   if (valint(copy(CB_CODPROT.Text,1,2))=9) or
      (valint(copy(CB_CODPROT.Text,1,2))=81) or
      (valint(copy(CB_CODPROT.Text,1,2))=82) then

      begin
      lbl_CODPROT_QTDD.Visible:=true;
      ED_CODPROT_QTDD.Visible :=true;
      lbl_CODPROT_QTDD.Top    :=29;
      ED_CODPROT_QTDD.Top     :=29;
      if valint(ED_CODPROT_QTDD.Text)=0 then
         ED_CODPROT_QTDD.Text:='05';
      end
   end
else
   begin
   lbl_CODPROT_QTDD.Visible:=false;
   ED_CODPROT_QTDD.Visible :=false;
   ED_CODPROT_QTDD.Text:='';
   end;
 }


 if pos('PROT',uppercase(CB_CODPROT.text))>0 then
    begin
    lbl_CODPROT_QTDD.Visible:=true;
    ED_CODPROT_QTDD.Visible :=true;
    lbl_CODPROT_QTDD.Top    :=CB_CODPROT.Top;
    ED_CODPROT_QTDD.Top     :=CB_CODPROT.Top;
//    if valint(ED_CODPROT_QTDD.Text)=0 then
//       ED_CODPROT_QTDD.Text:='05';
    end
else
   begin
   lbl_CODPROT_QTDD.Visible:=false;
   ED_CODPROT_QTDD.Visible :=false;
   ED_CODPROT_QTDD.Text:='';
   end;

end;

procedure TFrm_CobEle_Remessa.CB_CODPROT02Click(Sender: TObject);
begin
if CB_CODPROT02.ItemIndex>=0 then
   CB_CODPROT02.Text:=CB_CODPROT02.Items.Strings[CB_CODPROT02.itemIndex]
else
   begin
   with CB_CODPROT02 do ItemIndex:=Items.IndexOf(CB_CODPROT02.Text);
   CB_CODPROT02.Text:=CB_CODPROT02.Items.Strings[CB_CODPROT02.itemIndex]
   end;
{
if DM1.Tb_BcoBCNUMBCO.Value=341 then // Banco do Brasil
   begin
   if (valint(copy(CB_CODPROT02.Text,1,2))=9) or
      (valint(copy(CB_CODPROT02.Text,1,2))=81) or
      (valint(copy(CB_CODPROT02.Text,1,2))=82) then
      begin
      lbl_CODPROT_QTDD.Visible:=true;
      ED_CODPROT_QTDD.Visible :=true;
      lbl_CODPROT_QTDD.Top    :=29;
      ED_CODPROT_QTDD.Top     :=29;
      if valint(ED_CODPROT_QTDD.Text)=0 then
         ED_CODPROT_QTDD.Text:='05';
      end
   end
else
   begin
   lbl_CODPROT_QTDD.Visible:=false;
   ED_CODPROT_QTDD.Visible :=false;
   ED_CODPROT_QTDD.Text:='';
   end;
 }
 if pos('PROT',uppercase(CB_CODPROT02.text))>0 then
    begin
    lbl_CODPROT_QTDD.Visible:=true;
    ED_CODPROT_QTDD.Visible :=true;
    lbl_CODPROT_QTDD.Top    :=CB_CODPROT02.Top;
    ED_CODPROT_QTDD.Top     :=CB_CODPROT02.Top;
//    if valint(ED_CODPROT_QTDD.Text)=0 then
//       ED_CODPROT_QTDD.Text:='05';
    end
else
   begin
   lbl_CODPROT_QTDD.Visible:=false;
   ED_CODPROT_QTDD.Visible :=false;
   ED_CODPROT_QTDD.Text:='';
   end;



end;

procedure TFrm_CobEle_Remessa.RG_LAYOUTClick(Sender: TObject);
begin
CODBCOExit(self);
end;

function  TFrm_CobEle_Remessa.fValidardados:Boolean;
var
mObs: String;
query_testar: TQuery;
begin
la_Empresas:=fEmpresas_Selecionadas('CADREMBCO','RECODEMP',Form_SelEmp.CLB_EMPRESAS);

mObs:='';
query_testar:=TQuery.Create(nil);
query_testar.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_testar.SQL.Add('Select CCNPJ,CCPF,CRAZAO '
                     +',RENUMDUP '
                     +',REDESD '
                     +',RETIPO '
                     +',REVALDUP '
                     +'  from CADREMBCO, CADCLI where '
                     +iif(la_Empresas='','',la_empresas+' and ')
                     +' RELOTSEQ=0 '
                     +' and RECHAVE=0'+IntToStr(mnumlot)
                     +' and RECODBCO=0'+IntToStr(mnumbco)
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=0'+IntToStr(codemp))
                     +' and CCODCLI=RECODCLI order by RENUMDUP ' );
try
   query_testar.Open;
except
   query_testar.SQL.SaveToFile('c:\sql.txt');
   end;

While not query_testar.Eof do
   begin
   if query_testar.FieldByName('CCNPJ').AsFloat=DM1.Tb_EmpCGC.AsFloat then
      begin
      mObs:=mObs+'Titulo ' +query_testar.fieldbyname('RENUMDUP').AsString+' Desd: '+query_testar.fieldbyname('REDESD').AsString
                 +' valor '+FormatFloat(mcasas, query_testar.fieldbyname('REVALDUP').AsFloat)+#13
                 +'cnpj '+MaskCPFCNPJ(formatfloat('00000000000000', query_testar.fieldbyname('CCNPJ').Asfloat))
                 +' Cliente '+query_testar.fieldbyname('CRAZAO').AsString+' cnpj é invalido '+#13;
      end;
   query_testar.Next;
   end;
query_testar.close;
freeandnil(query_testar);
if mObs='' then
   result:=true
else
   begin
   result:=false;
   MessageDlg(mObs,mtError,[mbOk],0 );
   end;
end;

procedure TFrm_CobEle_Remessa.cb_codcar_c006Click(Sender: TObject);
begin
if cb_codcar_c006.itemindex<0 then
   cb_codcar_c006.itemindex:=0;

end;

procedure TFrm_CobEle_Remessa.GroupBox3Exit(Sender: TObject);
begin

fDeletaPadroes(-2,'_COBELE_REMESSA','');
fGravaPadroes(-2,uppercase(edt_header_lote_versao_layout.name)     ,'text'      ,'_COBELE_REMESSA',edt_header_lote_versao_layout.Text);
fGravaPadroes(-2,uppercase(edt_cnab240_ha_densidade.name)     ,'text'      ,'_COBELE_REMESSA',edt_cnab240_ha_densidade.Text);
fGravaPadroes(-2,uppercase(edt_header_lote_versao_layout.name)     ,'text'      ,'_COBELE_REMESSA',edt_header_lote_versao_layout.Text);
fGravaPadroes(-2,uppercase(edt_cnab240_dig_agencia_conta.name)     ,'text'      ,'_COBELE_REMESSA',edt_cnab240_dig_agencia_conta.Text);

end;

procedure TFrm_CobEle_Remessa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if Tb_CadRemBcoqtdrem.AsInteger>0 then
   begin
   DBGrid1.Canvas.Brush.Color := lblLegenda.Color;
   DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style + [fsBold];
   DBGrid1.Canvas.Font.Color := lblLegenda.Font.Color;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_CobEle_Remessa.DBGrid1DblClick(Sender: TObject);
begin
if Tb_CadRemBcoqtdrem.AsInteger>0 then
   begin
   Application.CreateForm(TFrm_CobEle_Remessa_Outras, Frm_CobEle_Remessa_Outras);
   if Frm_CobEle_Remessa_Outras.fLerdadosRemessa(Tb_CadRemBcoRETIT_CHAVE_ID.AsInteger,Tb_CadRemBcoRETIT_CHAVE_ID_ANO.AsInteger,Tb_CadRemBcoRECODEMP_DUP.AsInteger) then
      Frm_CobEle_Remessa_Outras.ShowModal;
   freeandnil(Frm_CobEle_Remessa_Outras);
   end;
end;


function TFrm_CobEle_Remessa.fRetornaParcelaUnica(pChaveId,pChaveid_ano,pCodEmp: Integer): string;
var
query_dar: tquery;
begin
query_dar:= tquery.create(nil);
query_dar.databasename:=DM1.SG_ASSOC.databasename;

query_dar.sql.add('select crqtdparc,crnumparc from caddar  where '
                     +' CRCODEMP=:CODEMP '
                     +' and CRCHAVE_ID_ANO = :CRCHAVE_ID_ANO '
                     +' and CRCHAVE_ID = :CRCHAVE_ID ');
QUEry_dar.parambyname('CODEMP').asinteger := pcodemp;
QUEry_dar.parambyname('CRCHAVE_ID_ANO').asinteger := pChaveId_ano;
QUEry_dar.parambyname('CRCHAVE_ID').asinteger := pChaveId;
try
   query_dar.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_dar,5368,'SGE','CADDAR');
   end;
   end;

if query_dar.fieldbyname('CRQTDPARC').AsInteger<1 then
   result:='01'
else
   result:=formatfloat('00', query_dar.fieldbyname('crnumparc').AsInteger);

query_dar.close;
freeandnil(query_dar);
end;
procedure TFrm_CobEle_Remessa.ED_CODPROT_QTDDExit(Sender: TObject);
begin
if DM1.Tb_BcoBCNUMBCO.Value=001 then
   begin
   if (valint(ED_CODPROT_QTDD.Text)<3) or (valint(ED_CODPROT_QTDD.Text)>5)  then
       begin
       MessageDlg('Valores validos para o banco do brasil 3,4 e 5!',mtWarning,[mbOk],0);
       ED_CODPROT_QTDD.TEXT:='5';
       ED_CODPROT_QTDD.SetFocus;
       exit;
       end;

   end;
end;

procedure TFrm_CobEle_Remessa.DBE_REPROTESTO_QTDDExit(Sender: TObject);
begin
if DM1.Tb_BcoBCNUMBCO.Value=001 then
   begin
   if (Tb_CadRemBcoREPROTESTO_QTDD.AsInteger<3) or (Tb_CadRemBcoREPROTESTO_QTDD.AsInteger>5)  then
       begin
       MessageDlg('Valores validos para o banco do brasil 3,4 e 5!',mtWarning,[mbOk],0);
       Tb_CadRemBcoREPROTESTO_QTDD.Value:=5;
       DBE_REPROTESTO_QTDD.SetFocus;
       exit;
       end;

   end;

end;

end.

