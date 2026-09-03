unit S_ExpDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls,db,dbtables,func,lerarq,S_DM1,S_Ven, Gauges,
  Buttons, ExtCtrls, FileCtrl,S_Sup, DBClient, S_SelEmp;

type
  TFrm_ExpDM = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    CB_CADPRO: TCheckBox;
    CB_CADCLI: TCheckBox;
    CB_CADDAR: TCheckBox;
    CB_CADPV: TCheckBox;
    CB_SEP: TCheckBox;
    GroupBox2: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Panel1: TPanel;
    bbProcessar: TBitBtn;
    bbSair: TBitBtn;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Qr_Pro: TQuery;
    Qr_Cli: TQuery;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDNOME: TStringField;
    Qr_ProPDNOME2: TStringField;
    Qr_ProPDMARCA: TStringField;
    Qr_ProPDPRECO1: TFloatField;
    Qr_ProPDUND: TStringField;
    Qr_ProPDSIT: TStringField;
    Qr_ProPDSALDO: TFloatField;
    Edit1: TEdit;
    Qr_Duplic: TQuery;
    Qr_DuplicCRNUMERO: TFloatField;
    Qr_DuplicCRDESD: TStringField;
    Qr_DuplicCRDTEMIS: TDateTimeField;
    Qr_DuplicCRDTVCTO: TDateTimeField;
    Qr_DuplicCRVALOR: TFloatField;
    Qr_DuplicCRCODCLI: TFloatField;
    Qr_DuplicCRDUP: TFloatField;
    Qr_DuplicCRNPED: TFloatField;
    Qr_DuplicCRORDEM: TFloatField;
    Qr_DuplicCRCODEMP: TFloatField;
    Qr_PV: TQuery;
    Qr_PVPVCODPV: TFloatField;
    Qr_PVPVNOME: TStringField;
    Qr_DuplicCRDTPAG: TDateTimeField;
    Qr_DuplicCRSTATUS: TFloatField;
    Qr_DuplicCRVALPAG: TFloatField;
    Qr_DuplicCRCODTLV: TFloatField;
    Qr_DuplicCRLOTE: TFloatField;
    Qr_DuplicCRJURD: TFloatField;
    Qr_ProPDDESC1: TFloatField;
    Qr_ProPDDESC2: TFloatField;
    Qr_CliCTIPOC: TFloatField;
    Qr_CliCCODCLI: TFloatField;
    Qr_CliCCNPJ: TFloatField;
    Qr_CliCCPF: TFloatField;
    Qr_CliCRG: TStringField;
    Qr_CliCIE: TStringField;
    Qr_CliCRAZAO: TStringField;
    Qr_CliCDENOM: TStringField;
    Qr_CliCLOG: TStringField;
    Qr_CliCBAIRRO: TStringField;
    Qr_CliCCIDADE: TStringField;
    Qr_CliCUF: TStringField;
    Qr_CliCNOMCON: TStringField;
    Qr_CliCFONCON: TStringField;
    Qr_CliCFONERES: TStringField;
    Qr_CliCCELULAR: TStringField;
    Qr_CliCEMAIL: TStringField;
    Qr_CliCCEP: TStringField;
    Qr_PVPVCODTIP: TStringField;
    NOMSUP: TEdit;
    CODSUP: TEdit;
    Label4: TLabel;
    Qr_ProPDPRECO2: TFloatField;
    Qr_ProPDPRECO3: TFloatField;
    Qr_ProPDLISTA: TFloatField;
    Qr_ProPDTABICM: TStringField;
    Qr_ProPDCODTIP: TFloatField;
    Qr_ProPDPMC: TFloatField;
    Qr_CliCTABPV: TStringField;
    Qr_CliCCODPV: TFloatField;
    Qr_CliCDESC: TFloatField;
    Qr_CliCPCOPRAT: TFloatField;
    Qr_CliCICMSR: TFloatField;
    Qr_CliCREPAS: TFloatField;
    Qr_CliCFRETEPC: TFloatField;
    Qr_DuplicCRCOMVEN: TFloatField;
    Qr_DuplicCRCODVEN: TFloatField;
    Qr_DuplicCRCODBCO: TFloatField;
    Qr_PVPVTPDC: TFloatField;
    Qr_PVPVDES: TFloatField;
    Qr_PVPVTPD1: TFloatField;
    Qr_PVPVDES1: TFloatField;
    Qr_PVPVTPD2: TFloatField;
    Qr_PVPVDES2: TFloatField;
    Qr_PVPVTPD3: TFloatField;
    Qr_PVPVDES3: TFloatField;
    Qr_PVPVD2S0: TFloatField;
    Qr_PVPVD2S1: TFloatField;
    Qr_PVPVD2S2: TFloatField;
    Qr_PVPVD2S3: TFloatField;
    Qr_PVPVD2S4: TFloatField;
    Qr_PVPVD2S5: TFloatField;
    Qr_PVPVD2S6: TFloatField;
    Qr_PVPVD2S7: TFloatField;
    Qr_PVPVACTD: TFloatField;
    Qr_PVPVACT00: TFloatField;
    Qr_PVPVACT01: TFloatField;
    Qr_PVPVACT99: TFloatField;
    Qr_UF: TQuery;
    Qr_UFPUF: TStringField;
    Qr_UFPIVAPOS: TFloatField;
    Qr_UFPIVANEG: TFloatField;
    Qr_UFPIVAINA: TFloatField;
    Qr_UFPREDUTRA: TFloatField;
    Qr_UFPREDUTRB: TFloatField;
    Qr_UFPICMSC: TFloatField;
    Qr_UFPICMSD: TFloatField;
    Qr_UFPTIPCAL: TStringField;
    Qr_UFPTIPOPCO: TFloatField;
    Qr_UFPCALCRET: TFloatField;
    Qr_UFPCODEMP: TFloatField;
    Qr_Ven: TQuery;
    Qr_VenVNOME: TStringField;
    Qr_VenVCODVEN: TFloatField;
    Qr_VenVCODSUP: TFloatField;
    Qr_Vennomesup: TStringField;
    Qr_UFPREPAS: TFloatField;
    Qr_CliCIPI: TFloatField;
    Qr_ProPDIPI: TFloatField;
    Qr_VenVFONECOM: TStringField;
    Qr_VenVCELULAR: TStringField;
    lbl_duprec: TLabel;
    duprec: TEdit;
    lbl_duprec2: TLabel;
    Qr_FPCR: TQuery;
    Qr_FPCRDUP: TQuery;
    Qr_FPCRDUPFPCODEMP: TFloatField;
    Qr_FPCRDUPFPLOTSEQ: TFloatField;
    Qr_FPCRDUPFPSEQ: TFloatField;
    Qr_FPCRDUPFPLOTE: TFloatField;
    Qr_FPCRDUPFPCODECF: TFloatField;
    Qr_FPCRDUPFPNUMERO: TFloatField;
    Qr_FPCRDUPFPDESD: TStringField;
    Qr_FPCRDUPFPTIPO: TFloatField;
    Qr_FPCRDUPFPCODCLI: TFloatField;
    Qr_FPCRDUPFPDTEMIS: TDateTimeField;
    Qr_FPCRDUPFPCAIXA: TFloatField;
    Qr_FPCRDUPFPCODUSR: TFloatField;
    Qr_FPCRDUPFPVALOR: TFloatField;
    Qr_FPCRDUPFPJUROS: TFloatField;
    Qr_FPCRDUPFPDESC: TFloatField;
    Qr_FPCRDUPFPNR: TFloatField;
    Qr_FPCRDUPFPDUP_CODEMP: TFloatField;
    Qr_FPCRDUPFPCODVEN: TFloatField;
    Qr_FPCRFPCODEMP: TFloatField;
    Qr_FPCRFPSEQ: TFloatField;
    Qr_FPCRFPLOTSEQ: TFloatField;
    Qr_FPCRFPDATA: TDateTimeField;
    Qr_FPCRFPFORMA: TFloatField;
    Qr_FPCRFPNUMERO: TFloatField;
    Qr_FPCRFPBANCO: TFloatField;
    Qr_FPCRFPSERIE: TStringField;
    Qr_FPCRFPVALOR: TFloatField;
    Qr_FPCRFPLOTE: TFloatField;
    Qr_FPCRFPCC: TStringField;
    Qr_FPCRFPTIPO: TFloatField;
    Qr_FPCRFPCAIXA: TFloatField;
    Qr_FPCRFPCODLDR: TFloatField;
    Qr_FPCRFPLOTSEQ_FC: TFloatField;
    Qr_DuplicCRDESCD: TFloatField;
    Qr_DuplicCRMULTA: TFloatField;
    Qr_DuplicCRDESCF: TFloatField;
    Qr_DuplicCRDTDESCF: TDateTimeField;
    Qr_DuplicCRJUROS: TFloatField;
    Qr_DuplicCRDESC: TFloatField;
    Qr_FPCRDUPFPDTBX: TDateTimeField;
    CB_XML: TCheckBox;
    ClientDataSet1: TClientDataSet;
    RG_PADRAO: TRadioGroup;
    Qr_CliCDESC02: TFloatField;
    Qr_CliCDESC03: TFloatField;
    Qr_CliCDESCFIN: TFloatField;
    Qr_CliCALIQDEB: TFloatField;
    Qr_PVPVTPDESF: TFloatField;
    Qr_PVPVDESCF: TFloatField;
    Qr_PVPVD1S0: TFloatField;
    Qr_PVPVD1S1: TFloatField;
    Qr_PVPVD1S2: TFloatField;
    Qr_PVPVD1S3: TFloatField;
    Qr_PVPVD1S4: TFloatField;
    Qr_PVPVD1S5: TFloatField;
    Qr_PVPVD1S6: TFloatField;
    Qr_PVPVD1S7: TFloatField;
    Qr_PVPVD3S0: TFloatField;
    Qr_PVPVD3S1: TFloatField;
    Qr_PVPVD3S2: TFloatField;
    Qr_PVPVD3S3: TFloatField;
    Qr_PVPVD3S4: TFloatField;
    Qr_PVPVD3S5: TFloatField;
    Qr_PVPVD3S6: TFloatField;
    Qr_PVPVD3S7: TFloatField;
    Qr_PVPVDFS0: TFloatField;
    Qr_PVPVDFS1: TFloatField;
    Qr_PVPVDFS2: TFloatField;
    Qr_PVPVDFS3: TFloatField;
    Qr_PVPVDFS4: TFloatField;
    Qr_PVPVDFS5: TFloatField;
    Qr_PVPVDFS6: TFloatField;
    Qr_PVPVDFS7: TFloatField;
    Qr_ProPDDESC3: TFloatField;
    Qr_ProPDDESFIN: TFloatField;
    Qr_ProPDEMBPAD: TFloatField;
    Qr_DuplicCRJURDEB: TFloatField;
    Qr_DuplicCRJURDEB_SAC: TFloatField;
    sb_SalvarPadrao: TSpeedButton;
    Qr_DuplicCCNPJ: TFloatField;
    Qr_DuplicCCPF: TFloatField;
    Qr_CliCCODRED: TFloatField;
    Qr_CliCCODVEN: TFloatField;
    Qr_CliCLCRED: TFloatField;
    Qr_CliCSITCLI: TFloatField;
    Qr_CliCDTVALV: TDateTimeField;
    Qr_CliCDTANVISA: TDateTimeField;
    Qr_CliCDTCAD: TDateTimeField;
    Qr_CliCOBS01: TStringField;
    Qr_CliCDTUCPR: TDateTimeField;
    Qr_CliCCODBCO01: TFloatField;
    Qr_RPro: TQuery;
    Qr_RProRCODRAM: TFloatField;
    Qr_RProRNOME: TStringField;
    Qr_Loc: TQuery;
    Qr_LocCCODLOC: TFloatField;
    Qr_LocCCIDADE: TStringField;
    Qr_LocCUF: TStringField;
    Qr_RedeCli: TQuery;
    Qr_RedeCliRDCODRED: TFloatField;
    Qr_RedeCliRDNOME: TStringField;
    Qr_For: TQuery;
    Qr_ForFCODFOR: TFloatField;
    Qr_ForFRAZAO: TStringField;
    Qr_ProPDCODFOR: TFloatField;
    Qr_ProPDCODRAM: TFloatField;
    Qr_PVPVPRAZOMED: TFloatField;
    RetSub: TGroupBox;
    Label5: TLabel;
    CARRET: TEdit;
    Label6: TLabel;
    CARSUB: TEdit;
    Qr_Venvemail: TStringField;
    Qr_Ped01: TQuery;
    Qr_Ped01P1NPEDORI: TFloatField;
    Qr_Ped01P1CHAVE: TFloatField;
    Qr_Ped01P1ORDEM: TFloatField;
    Qr_Ped01P1DATAP: TDateTimeField;
    Qr_Ped01P1CODCLI: TFloatField;
    Qr_Ped01P1CODVEN: TFloatField;
    Qr_Ped01P1TABPV: TStringField;
    Qr_Ped01P1CODPV: TFloatField;
    Qr_Ped01P1BANCO: TFloatField;
    Qr_Ped01P1FRETEPC: TFloatField;
    Qr_Ped01P1DESC01: TFloatField;
    Qr_Ped01P1SUBMOD: TStringField;
    Qr_Ped01P1OBS1: TStringField;
    Qr_Ped01P1CODURG: TFloatField;
    Qr_Ped01P1TOTALL: TFloatField;
    Qr_Ped01CCNPJ: TFloatField;
    Qr_Ped02: TQuery;
    Qr_Ped02P1NPEDORI: TFloatField;
    Qr_Ped02P2CODPRO: TFloatField;
    Qr_Ped02P2QTD: TFloatField;
    Qr_Ped02P2DESC1: TFloatField;
    Qr_Ped02P2DESC2: TFloatField;
    Qr_Ped02P2DESC3: TFloatField;
    Qr_Ped02P2PRECO: TFloatField;
    Qr_Ped02P2PCOTAB: TFloatField;
    Qr_Ped02P2PDESCF: TFloatField;
    Qr_Ped02P2VDESCF: TFloatField;
    Qr_Ped02P2TOTDES: TFloatField;
    Qr_Ped02P2DESCRAT: TFloatField;
    Qr_Ped02P2ICMSR: TFloatField;
    Qr_Ped02P2TOTLIQ: TFloatField;
    Qr_Ped02P2CHAVE: TFloatField;
    Qr_Ped02P2ORDEM: TFloatField;
    Label7: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    CB_SOVEND: TCheckBox;
    CB_ESTREAL: TCheckBox;
    Label8: TLabel;
    diasped: TEdit;
    Label9: TLabel;
    Qr_ProCODVEN: TFloatField;
    Qr_CliCCODBCO02: TFloatField;
    Qr_CliCNIVEL: TFloatField;
    Qr_CliCCODV02: TFloatField;
    Qr_CliCCODV03: TFloatField;
    Qr_CliCCODV04: TFloatField;
    Qr_ProPDSTATUS: TFloatField;
    Qr_ProPDCODBAR: TFloatField;
    Qr_ProPDPRAZO: TFloatField;
    Qr_DuplicCRTARBAN: TFloatField;
    Qr_CliCPEDELE_SENHA: TStringField;
    Qr_Procodven_blq: TFloatField;
    Qr_PPr: TQuery;
    Qr_PPrPPCODPRO: TFloatField;
    Qr_PPrPPPVTIP: TStringField;
    Qr_PPrPPPVTAB: TStringField;
    Qr_PPrPPCODRED: TFloatField;
    Qr_PPrPPCODREG: TFloatField;
    Qr_PPrPPPCOVDA: TFloatField;
    Qr_PPrPPDESC_1: TFloatField;
    Qr_PPrPPDESC_2: TFloatField;
    Qr_PPrPPDESC_3: TFloatField;
    Qr_PPrPPQTDMIN: TFloatField;
    Qr_PPrPPDATINI: TDateTimeField;
    Qr_PPrPPDATFIN: TDateTimeField;
    Qr_PPrPPVALMIN: TFloatField;
    Qr_PPrPPDESC_F: TFloatField;
    Qr_PPrPPPROMOCAO: TStringField;
    Qr_Ped02P2LOTE: TStringField;
    Qr_Ped02P2DTVCTO: TDateTimeField;
    Qr_Ped02P2BASEN: TFloatField;
    Qr_Ped02P2ICMSN: TFloatField;
    Qr_Ped02P2BASER: TFloatField;
    Qr_Ped02P2ALIQ: TFloatField;
    Qr_Ped02P2ALIQNR: TFloatField;
    Qr_Ped02P2REPAS: TFloatField;
    Qr_Ped02P2ALIPI: TFloatField;
    Qr_Ped02P2VALIPI: TFloatField;
    Qr_Ped02P2SIT: TStringField;
    Qr_Ped02P2CFO: TFloatField;
    Qr_Ped02P2PROMOCAO: TStringField;
    Qr_VenVDM_PCOEXTRA: TFloatField;
    Qr_VenVDM_DESCMAXITEM: TFloatField;
    Qr_VenVDM_ACREMAXITEM: TFloatField;
    Qr_ProPDNOMGRU: TStringField;
    PRE_FIXADO: TEdit;
    Label10: TLabel;
    Qr_ProPDEMBMUL: TFloatField;
    CB_PROMO: TCheckBox;
    Qr_CliCROTA: TFloatField;
    CB_CADCLI_BLOQ: TCheckBox;
    CB_PPADRAO: TCheckBox;
    Qr_Ped02P2DESCPR: TFloatField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure bbProcessarClick(Sender: TObject);
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CB_PPADRAOClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB_CADDARClick(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure duprecExit(Sender: TObject);
    procedure diaspedExit(Sender: TObject);
    procedure Qr_ProCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }


  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
      function fExpDMExportar(pOrigem,pCodven,PCodSup,pCodCli,pChavePed_Ori,pCodreg: Real; pdt1, pdtf,pSenha: String; pTabPro, pTabCli, pDupAb, pPv,pSoVend,pDadosCli,pDadosPed: Boolean; pDupDias,pOrigemInfo : Integer): Boolean;
      function fImpDMGerarRetorno(pLocal,pOrigem_Info: Integer;pChaveOri,pCodCli,pCnpj,pCpf,pChaveFat: Real): boolean;

      function fimpdmtestanome(pNomRec: String): String;
      function fimpdmCriaEvento(pLocal: Integer;pTexto,pNumLot: String): Boolean;
      function fCriarArqLog(pTipo: Integer;pnumlot: String): String;
      function fExportarCliente(pTipo: Integer): Boolean;

  end;



var
  Frm_ExpDM: TFrm_ExpDM;
  mPastaRec,mPastaEnvio: String;
  mOrigemInfo: Integer=0;
  mVersaoLayout: Integer=1;
  F_Evento    : TextFile;
  mCriouEvento: Boolean=False;
  mNomeEvento : String;
  mArqProc: String;
  f_Retorno: TextFile;
  mCalculaBloqueio: Boolean=false;
  mAcreProd: Real=0;
  mCodReg: Real;
  mtotc , mlidc: Integer;
mtotg , mlidg: Integer;

//  pBloqProV01,pbloqProV02: Real;

implementation

uses S_Agde, S_DM4, StdConvs;

{$R *.dfm}

procedure TFrm_ExpDM.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      ShowMessage('Data Invalida!');
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_ExpDM.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      exit;
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Data Final Menor que Data Inicial. Invalido!');
      MDT1.SetFocus;
      exit;
      end;
   end;


end;

procedure TFrm_ExpDM.CODVENExit(Sender: TObject);
begin
fdeixanum(CODVEN.Text);
if Trim(CODVEN.Text)='' then
   begin
   NOMVEN.Text   :='Todos...';
   CB_SEP.Enabled:=True;
   end
else
   begin
   if not flqr1('VNOME,VCODREG','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      fmensagem('Vendedor Não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      mAcreProd:=0;
      mCodReg  :=0;
      exit;
      end
   else
      begin
      mCodReg:=DM1.Query1.fieldbyName('VCODREG').AsFloat;
      NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
      if DM1.Query1.fieldbyName('VCODREG').AsFloat=0 then
         mAcreProd:=0
      else
         begin
         if flqr2('CR_NOMREG,CR_ACREREG,CR_DESREG','CR_','CADREGIAO','N','CR_CODREG',DM1.Query1.fieldbyName('VCODREG').AsString) then
            begin
            if DM1.Query2.fieldbyName('CR_DESREG').AsFloat>0 then
               mAcreProd:=DM1.Query2.fieldbyName('CR_DESREG').AsFloat*-1
            else
               mAcreProd:=DM1.Query2.fieldbyName('CR_ACREREG').AsFloat;
            end
         else
            mAcreProd:=0;
         end;
      CB_SEP.Enabled:=False;
      end;
   end;

end;

procedure TFrm_ExpDM.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_ExpDM',Key);
   CODVENExit(self);
   key:=#0;
   end;


end;

procedure TFrm_ExpDM.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpDM.bbProcessarClick(Sender: TObject);
begin

if RG_PADRAO.ItemIndex=2 then
   begin
   if (not DM1.Tb_Cli.Active) or (fsonumero(CODCLI.Text)=0) then
      begin
      fmensagem('Favor Selecionar um Cliente Valido!',0,['0'],0);
      exit;
      end;
   end;
if RG_PADRAO.ItemIndex=0 then
   mOrigemInfo:=0
else if RG_PADRAO.ItemIndex=1 then
   mOrigemInfo:=10
else if RG_PADRAO.ItemIndex=2 then
   mOrigemInfo:=20;
//pBloqProV01:=0;
//pbloqProV02:=0;
if mOrigemInfo<>20 then
   begin
   DM1.Tb_Ven.Close;
   DM1.Tb_Ven.Sql.clear;
   DM1.Tb_Ven.Sql.add('Select * from CADVEN ');
   mcinst:=' where ';
   if not DM1.Qr_TID.Locate('TINOME','CADVEN',[]) then
      begin
      DM1.Tb_Ven.Sql.Add(mcinst+' VCODEMP=0'+IntToStr(codemp));
      mcinst:=' and ';
      end;
   if valint(CODVEN.Text)<>0 then
      begin
      DM1.Tb_Ven.Sql.Add(mcinst+' VCODVEN=0'+trim(CODVEN.Text));
      mcinst:=' and ';
      end;
   if valint(CODSUP.Text)<>0 then
      begin
      DM1.Tb_Ven.Sql.Add(mcinst+' VCODSUP=0'+trim(CODSUP.Text));
      mcinst:=' and ';
      end;
   DM1.Tb_Ven.SQL.Add(' order by VNOME ');
   DM1.Tb_Ven.open;
   While not DM1.Tb_Ven.eof do
      begin
      Frm_ExpDM.NOMVEN.Text:=DM1.Tb_VenVNOME.AsString;
      fExpDMExportar(0,DM1.Tb_VenVCODVEN.AsFloat,ValFloat(CODSUP.Text),ValFloat(CODCLI.Text),
                     0, // chave do pedido de origem
                     DM1.Tb_VenVCODREG.AsFloat,
                    Trim(MDT1.Text),Trim(MDT2.Text),
                    '', // senha
                    CB_CADPRO.Checked,
                   CB_CADCLI.Checked,
                 CB_CADDAR.Checked,
                 CB_CADPV.Checked,
                 CB_SOVEND.Checked,
                 false,
                 false,
                 ValInt(DUPREC.Text),mOrigemInfo);
      DM1.Tb_Ven.Next;
      end;
   end
else
   begin
   fExpDMExportar(0,ValFloat(CODVEN.Text),ValFloat(CODSUP.Text),
                 ValFloat(CODCLI.Text),

//                 ValFloat(CODVEN.Text),
                 0, // chave do pedido de origem
                 mcodreg,

                 Trim(MDT1.Text),Trim(MDT2.Text),
                 '', // senha

                 CB_CADPRO.Checked,
                 CB_CADCLI.Checked,
                 CB_CADDAR.Checked,
                 CB_CADPV.Checked,
                 CB_SOVEND.Checked,
                 false, // dados cliente
                 false, // dados pedido
                 ValInt(DUPREC.Text),mOrigemInfo);
   end;


fmensagem('Concluido!',0,['0'],0);
end;

procedure TFrm_ExpDM.CODSUPExit(Sender: TObject);
begin
fdeixanum(CODSUP.Text);
if Trim(CODSUP.Text)='' then
   begin
   NOMSUP.Text   :='Todos...';
   end
else
   begin
   if not flqr1('SNOME','N','CADSUP','N','SCODSUP',CODSUP.Text) then
      begin
      fmensagem('Supervisor Não Cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      exit;
      end
   else
      begin
      NOMSUP.Text:=DM1.Query1.Fields[0].AsString;
      end;
   end;


end;

procedure TFrm_ExpDM.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_ExpDM',Key);
   CODSUPExit(self);
   key:=#0;
   end;


end;

procedure TFrm_ExpDM.CB_PPADRAOClick(Sender: TObject);
begin
if CB_PPADRAO.Checked then
   GroupBox2.Visible:=False
else
   GroupBox2.Visible:=true;
end;

function TFrm_ExpDM.fExpDMExportar(pOrigem,pCodven,PCodSup,pCodCli,pChavePed_Ori,pCodreg: Real; pdt1, pdtf,pSenha: String; pTabPro, pTabCli, pDupAb, pPv,pSoVend,pDadosCli,pDadosPed: Boolean; pDupDias,pOrigemInfo : Integer): Boolean;
var
mtotp , mlidp: Integer;
mtotuf, mliduf: Integer;
mtotd , mlidd: Integer;
mtotpv, mlidpv: Integer;
mtotv , mlidv: Integer;
mtotfp, mlidfp: Integer;
mSaldo: Real;
mtotfpdup,mlidfpdup: Integer;
mQtdReg: Integer;
mcomp: String;
f: TextFile;
mcoddad: String;
mSubst: Boolean;
mRetCar,mIncCar: String;
mArqSai: String;
begin
if Trim(Frm_ExpDM.CARRET.Text)='' then
   mSubst:=false
else
   begin
   mRetCar:=Trim(Frm_ExpDM.CARRET.Text+Frm_ExpDM.PRE_FIXADO.text);
   mIncCar:=Trim(Frm_ExpDM.CARSUB.Text);
   if length(mIncCar)<length(mRetCar) then
      mIncCar:=insere2(mIncCar,' ',length(mRetCar));
   mSubst:=true;
   end;
mcomp    :=' where ';
mtotg    :=0;
mlidg    :=0;
mtotp    :=0;
mlidp    :=0;
mtotd    :=0;
mlidd    :=0;
mtotpv   :=0;
mlidpv   :=0;
mtotv    :=0;
mlidpv   :=0;
mtotfp   :=0;
mtotfpdup:=0;
mlidfp   :=0;
mlidfpdup:=0;

if Not Frm_ExpDM.CB_PPADRAO.Checked then
   begin
   mPastaEnvio:=Frm_ExpDM.DirectoryListBox1.Directory;
   end
else
   mPastaEnvio:='C:\DM\enviar\';
mlidd:=length(mPastaEnvio);
if mPastaEnvio[mlidd]<>'\' then
   mPastaEnvio:=mPastaEnvio+'\';

if pOrigemInfo<>0 then
   begin
   mPastaEnvio:=mPastaEnvio+FormatFloat('000',pOrigemInfo)+'\';
   if not DirectoryExists(mPastaEnvio) then
      CreateDir(mPastaEnvio);
   end;

mlidd:=0;
if  pOrigemInfo=20 then // se for pedido eletronico
    begin
    mcoddad:='CL'+insere(FloatToStr(pCodCli),'0',15);
    mArqSai:='CL'+FormatFloat('00000', pCodCli);
    mPastaEnvio:=mPastaEnvio+'CL'+FormatFloat('00000', pCodCli)+'\';
    end
else if pCodven<>0 then
   begin
   if PCodSup=0 then
      begin
      mcoddad:='VD'+insere(FloatToStr(pcodven),'0',15);
      mArqSai:='VD'+FormatFloat('00000', pCodven);

//      if Frm_ExpDM.CB_PPADRAO.Checked then
//         mPastaPad:='C:\DM\enviar\VD'+FormatFloat('00000', pCodven)
//      else

      mPastaEnvio:=mPastaEnvio+'VD'+FormatFloat('00000', pCodven)+'\'
      end;
   end
else
   begin
   if PCodSup=0 then
      begin
      mcoddad:='TD'+insere('00099','0',15);
      mArqSai:='TD00099';

//      if Frm_ExpDM.CB_PPADRAO.Checked then
//         mPastaPad:='C:\DM\enviar\TD00099'
//      else
         mPastaEnvio:=mPastaEnvio+'TD00099'+'\';
      end
   else
      begin
      mcoddad:='SP'+insere(FloatToStr(PCodSup),'0',15);
      mArqSai:='SP'+FormatFloat('00000', PCodSup);

//      if Frm_ExpDM.CB_PPADRAO.Checked then
//         mPastaPad:='C:\DM\enviar\SP'+FormatFloat('00000', PCodSup)
//      else
         mPastaEnvio:=mPastaEnvio+'SP'+'00099'+'\';
      end;
   end;

if not DirectoryExists(mPastaEnvio) then
   CreateDir(mPastaEnvio);

// INICIO DADOS DOCLIENTE


if (pTabPro) then
   begin
   if pOrigemInfo=020 then
      begin
      mCalculaBloqueio:=true;
      DM1.Query5.Close;
      DM1.Query5.Sql.clear;
      DM1.Query5.Sql.Add('Select  BQCODRCLI '
                     +'       ,BQCODRPRO '
                     +'       ,BQCODVEN '
                     +'       ,BQCODFOR '
                     +'       ,BQCODUF '
                     +'       ,BQCODLOC '
                     +'       ,BQCODBAI '
                     +'       ,BQCODPRO '
                     +'       ,BQCODCLI '
                     +' from CADBLQ '
                     +' order by BQCODFOR,BQCODVEN ');

      DM1.Query5.Open;
      end
   else
      begin
      mCalculaBloqueio:=false;

      DM1.Query5.Close;
      DM1.Query5.Sql.clear;
      DM1.Query5.Sql.Add('Select  BQCODRCLI '
                     +'       ,BQCODRPRO '
                     +'       ,BQCODVEN '
                     +'       ,BQCODFOR '
                     +'       ,BQCODUF '
                     +'       ,BQCODLOC '
                     +'       ,BQCODBAI '
                     +'       ,BQCODPRO '
                     +'       ,BQCODCLI '
                     +' from CADBLQ '
                     +' WHERE (BQCODVEN='+FloatToStr(pCodven)+' OR BQCODVEN=-1) ');
      DM1.Query5.Open;
      end;



   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_empresas :='';
   la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);

   fInnerJoin(0,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADEST' ,'CECODEMP','PDCODEMP' ,'CECODPRO' ,'PDCODPRO');
   if Frm_ExpDM.CB_PROMO.Checked then
      begin
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADPPR' ,'PPCODEMP','PDCODEMP' ,'PPCODPRO' ,'PDCODPRO');
      end;

   Frm_ExpDM.Qr_Pro.Close;
   Frm_ExpDM.Qr_Pro.Sql.Clear;

   if pOrigemInfo=020 then
      begin
      if (not DM1.Tb_Cli.Active) or (DM1.Tb_CliCCODCLI.Value<>pCodCli) then
         flcadcli(1,0,FloatToStr(pCodCli));
      end;


{   if pOrigemInfo=020 then
      begin
      pBloqProV01:=0;
      pBloqProV02:=0;
      if (not DM1.Tb_Cli.Active) or (DM1.Tb_CliCCODCLI.Value<>pCodCli) then
         begin
         if not flcadcli(1,0,FloatToStr(pCodCli)) then
            begin
//            fmensagemSom('Erro ao Procurar Cliente!',0,['0'],0);
            mcodven01:='0';
            mcodven02:='0';
            end
         else
            begin
            mcodven01:='0'+DM1.Tb_CliCCODVEN.AsString;
            mcodven02:='0'+DM1.Tb_CliCCODV02.AsString;
            pBloqProV01:=DM1.Tb_CliCCODVEN.AsFloat;
            pBloqProV02:=DM1.Tb_CliCCODV02.AsFloat;
            end;
         end
      else
         begin
         mcodven01:='0'+DM1.Tb_CliCCODVEN.AsString;
         mcodven02:='0'+DM1.Tb_CliCCODV02.AsString;
         pBloqProV01:=DM1.Tb_CliCCODVEN.AsFloat;
         pBloqProV02:=DM1.Tb_CliCCODV02.AsFloat;
         end;

      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADBLQ','BQCODEMP','PDCODEMP','BQCODFOR','PDCODFOR');

       Frm_ExpDM.Qr_Pro.Sql.add('Select PDCODPRO,PDNOME,PDUND,PDNOME2,PDMARCA, PDPRECO1, ');
       Frm_ExpDM.Qr_Pro.Sql.add('PDPRECO2,PDPRECO3,CESALDO AS PDSALDO, ');
       Frm_ExpDM.Qr_Pro.Sql.add('PDSIT,PDDESC1,PDDESC2,PDLISTA,PDTABICM,PDCODTIP,PDPMC,PDIPI, ');
       Frm_ExpDM.Qr_Pro.Sql.add('PDDESC3,PDDESFIN,PDEMBPAD,PDCODFOR,FCODGFOR AS PDCODRAM,');
       Frm_ExpDM.Qr_Pro.Sql.add('max(DECODE(BQCODVEN,NULL,0,');
       Frm_ExpDM.Qr_Pro.Sql.add(mcodven01+',BQCODVEN, ');
       Frm_ExpDM.Qr_Pro.Sql.add(mcodven02+',BQCODVEN,0)) AS CODVEN ');
       Frm_ExpDM.Qr_Pro.Sql.add(',PDSTATUS,PDCODBAR,PDPRAZO  '
                    +' from CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' PDSTATUS<8 and FTIPOF=0 ');
       if not DM1.Query5.IsEmpty then
          begin
          DM1.Query5.First;
          mcinst4:='';
          While not DM1.Query5.Eof do
             begin
             if trim(mcinst4)='' then
                mcinst4:=DM1.Query5.FieldByName('BQCODFOR').AsString
             else
                mcinst4:=mcinst4+','+DM1.Query5.FieldByName('BQCODFOR').AsString;
             DM1.Query5.Next;
             end;
          DM1.Query1.SQL.Add(' and not PDCODFOR IN  ('+mcinst4+')');
          end;


       Frm_ExpDM.Qr_Pro.Sql.add('GROUP BY  PDCODPRO,PDNOME,PDUND,PDNOME2,PDMARCA, PDPRECO1,');
       Frm_ExpDM.Qr_Pro.Sql.add('PDPRECO2,PDPRECO3,CESALDO,');
       Frm_ExpDM.Qr_Pro.Sql.add('PDSIT,PDDESC1,PDDESC2,PDLISTA,PDTABICM,PDCODTIP,PDPMC,PDIPI,');
       Frm_ExpDM.Qr_Pro.Sql.add('PDDESC3,PDDESFIN,PDEMBPAD,PDCODFOR,FCODGFOR,');
       Frm_ExpDM.Qr_Pro.Sql.add('PDSTATUS,PDCODBAR,PDPRAZO');
      end
   else
      begin
}   Frm_ExpDM.Qr_Pro.Sql.add('Select PDCODPRO,PDNOME,PDUND,PDNOME2,PDMARCA');
    if mAcreProd>0 then
       begin
       Frm_ExpDM.Qr_Pro.SQL.add(',round(PDPRECO1+(PDPRECO1*'+mudavp(FloatToStr(mAcreProd))+'/100),'+IntToStr(mQtdCas_arredpu)+') as PDPRECO1');
       Frm_ExpDM.Qr_Pro.SQL.add(',round(PDPRECO2+(PDPRECO2*'+mudavp(FloatToStr(mAcreProd))+'/100),'+IntToStr(mQtdCas_arredpu)+') as PDPRECO2');
       if Frm_ExpDM.CB_PROMO.Checked then
          Frm_ExpDM.Qr_Pro.SQL.add(',round(min(PPPCOVDA)+(min(PPPCOVDA)*'+mudavp(FloatToStr(mAcreProd))+'/100),'+IntToStr(mQtdCas_arredpu)+') as PDPRECO3')
       else
          Frm_ExpDM.Qr_Pro.SQL.add(',round(PDPRECO3+(PDPRECO3*'+mudavp(FloatToStr(mAcreProd))+'/100),'+IntToStr(mQtdCas_arredpu)+') as PDPRECO3');

       end
    else
       begin
       if Frm_ExpDM.CB_PROMO.Checked then
          Frm_ExpDM.Qr_Pro.SQL.add(' ,PDPRECO1, PDPRECO2,min(PPPCOVDA) as PDPRECO3 ')
       else
          Frm_ExpDM.Qr_Pro.SQL.add(' ,PDPRECO1, PDPRECO2,PDPRECO3');

       end;

    Frm_ExpDM.Qr_Pro.SQL.Add(',CESALDO AS PDSALDO, '
              +' PDSIT,PDDESC1,PDDESC2,PDLISTA,PDTABICM,PDCODTIP,PDPMC,PDIPI, '
              +' PDDESC3,PDDESFIN,PDEMBPAD,PDEMBMUL,PDEMBMUL,PDCODFOR,FCODGFOR AS PDCODRAM,PDCODRAM AS CODVEN '
              +' ,PDSTATUS,PDCODBAR,PDPRAZO, PDNOMGRU '
              +' from CADPRO'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
              +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
              +' PDSTATUS<8 and (FTIPOF=0 or FTIPOF is null) '
              +' and (PDNIVEL=0 OR PDNIVEL=2) ');
   if pOrigemInfo<>020 then
      begin
      if not DM1.Query5.IsEmpty then
         begin
         DM1.Query5.First;
         mcinst4:='';
         While not DM1.Query5.Eof do
            begin
            if trim(mcinst4)='' then
               mcinst4:=DM1.Query5.FieldByName('BQCODFOR').AsString
            else
              mcinst4:=mcinst4+','+DM1.Query5.FieldByName('BQCODFOR').AsString;
            DM1.Query5.Next;
            end;
         Frm_ExpDM.Qr_Pro.SQL.Add(' and  not PDCODFOR IN  ('+mcinst4+')');
         end;
      end;
//   if pOrigemInfo=0 then
//      Frm_ExpDM.Qr_Pro.SQL.Add(' ORDER BY PDNOMGRU,PDNOME ')
//   else
   if Frm_ExpDM.CB_PROMO.Checked then
      begin
      Frm_ExpDM.Qr_Pro.Sql.add(' and (PPDATFIN is null or PPDATFIN<='+chr(39)
                              +FormatDateTime(fdt2, pdatanula)+chr(39)
                              +' or PPDATFIN>='+chr(39)+FormatDateTime(fdt2, pdatasis)+chr(39)+')');
      Frm_ExpDM.Qr_Pro.SQL.Add(' and (PPCODREG is null or PPCODREG=0 or PPCODREG=0'+FloatToStr(mCodReg)+')');
      Frm_ExpDM.Qr_Pro.Sql.add('Group by PDNOME,PDCODPRO,PDUND,PDNOME2,PDMARCA,PDPRECO1,PDPRECO2');
      Frm_ExpDM.Qr_Pro.SQL.Add(',CESALDO, '
                  +' PDSIT,PDDESC1,PDDESC2,PDLISTA,PDTABICM,PDCODTIP,PDPMC,PDIPI, '
                  +' PDDESC3,PDDESFIN,PDEMBPAD,PDEMBMUL,PDEMBMUL,PDCODFOR,FCODGFOR,PDCODRAM '
                  +' ,PDSTATUS,PDCODBAR,PDPRAZO, PDNOMGRU ');
      end;
//   Frm_ExpDM.Qr_Pro.SQL.Add(' ORDER BY PDNOME ');


//   Frm_ExpDM.Qr_Pro.sql.savetofile('c:\sql.txt');

   try
      Frm_ExpDM.Qr_Pro.Open;
   except
      Frm_ExpDM.Qr_Pro.sql.savetofile('c:\sql.txt');
      end;
   mtotp:=Frm_ExpDM.Qr_Pro.RecordCount;
   if mtotp<=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_empresas :='';
      la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
      fInnerJoin(1,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADEST' ,'CECODEMP','PDCODEMP' ,'CECODPRO' ,'PDCODPRO');



      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select count(*) '
                 +' from CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' PDSTATUS<8 and (FTIPOF=0 or FTIPOF is null) '
                 +' and (PDNIVEL=0 OR PDNIVEL=2) ');

      if not DM1.Query5.IsEmpty then
         begin
         DM1.Query5.First;
         mcinst4:='';
         While not DM1.Query5.Eof do
            begin
            if trim(mcinst4)='' then
               mcinst4:=DM1.Query5.FieldByName('BQCODFOR').AsString
            else
               mcinst4:=mcinst4+','+DM1.Query5.FieldByName('BQCODFOR').AsString;
            DM1.Query5.Next;
            end;
         DM1.Query1.SQL.Add(' and not PDCODFOR IN  ('+mcinst4+')');
         end;
      DM1.Query1.SQL.Add(' ORDER BY PDNOME ');
      DM1.Query1.Open;
      mtotp:=DM1.Query1.Fields[0].AsInteger;

      end;
   mtotg:=mtotg+mtotp;

   Frm_ExpDM.Qr_RPro.Close;
   Frm_ExpDM.Qr_RPro.Sql.Clear;
   Frm_ExpDM.Qr_RPro.Sql.add('Select GFCODGRU AS RCODRAM, GFNOME AS RNOME '
                           +' from CADGFOR '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' where GFCODEMP=0'+IntTostr(codemp)));
   Frm_ExpDM.Qr_RPro.Open;
   mQtdReg:=Frm_ExpDM.Qr_RPro.RecordCount;
   if mQtdReg<1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select count(*) from CADGFOR '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADRAM',[]),'',' where GFCODEMP=0'+IntToStr(codemp)));
      DM1.Query1.Open;
      mtotp:=mtotg+DM1.Query1.Fields[0].AsInteger;
      end
   else
      mtotp:=mtotg+mQtdReg;
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_empresas :='';
   la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(1,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');

   Frm_ExpDM.Qr_For.Close;
   Frm_ExpDM.Qr_For.Sql.Clear;
   Frm_ExpDM.Qr_For.Sql.add('Select PDCODFOR AS FCODFOR,FDENOM AS FRAZAO '
                 +' from CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' PDSTATUS<8 and (FTIPOF=0 or FTIPOF is null) '
                 +' and (PDNIVEL=0 OR PDNIVEL=2) ');
   if not DM1.Query5.IsEmpty then
      begin
      DM1.Query5.First;
      mcinst4:='';
      While not DM1.Query5.Eof do
         begin
         if trim(mcinst4)='' then
            mcinst4:=DM1.Query5.FieldByName('BQCODFOR').AsString
         else
            mcinst4:=mcinst4+','+DM1.Query5.FieldByName('BQCODFOR').AsString;
         DM1.Query5.Next;
         end;
      Frm_ExpDM.Qr_For.SQL.Add(' and not PDCODFOR IN  ('+mcinst4+')');
      end;
   Frm_ExpDM.Qr_For.SQL.Add(' group by PDCODFOR,FDENOM ');
//                           +' FTIPOF=0');
//LINDOMAR
{   Frm_ExpDM.Qr_For.Sql.add('Select FCODFOR,FRAZAO '
                           +' from CADFOR where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' FCODEMP=0'+IntTostr(codemp)+' and ')
                           +' FTIPOF=0');
}
//   Frm_ExpDM.Qr_For.SQL.Savetofile('c:\sqlfor01.txt');

   Frm_ExpDM.Qr_For.Open;

   mQtdReg:=Frm_ExpDM.Qr_For.RecordCount;
   if mQtdReg<1 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_empresas :='';
      la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
      fInnerJoin(1,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');
//      if pbanco=0 then
//         la_instrucao:=la_instrucao+' and ';

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select count(*)  '
                 +' from CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' PDSTATUS<8 and (FTIPOF=0 or FTIPOF is null) '
                 +' and (PDNIVEL=0 OR PDNIVEL=2) ');
      if not DM1.Query5.IsEmpty then
         begin
         DM1.Query5.First;
         mcinst4:='';
         While not DM1.Query5.Eof do
            begin
            if trim(mcinst4)='' then
               mcinst4:=DM1.Query5.FieldByName('BQCODFOR').AsString
            else
               mcinst4:=mcinst4+','+DM1.Query5.FieldByName('BQCODFOR').AsString;
            DM1.Query5.Next;
            end;
         DM1.Query1.SQL.Add(' and not PDCODFOR IN  ('+mcinst4+')');
         end;
      DM1.Query1.SQL.Add(' group by PDCODFOR,FDENOM ');
      try
         DM1.Query1.Open;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         end;
      mtotp:=mtotg+DM1.Query1.Fields[0].AsInteger;
      end
   else
      mtotp:=mtotg+mQtdReg;

   Frm_ExpDM.Qr_PPr.Close;
   Frm_ExpDM.Qr_PPr.SQL.Clear;
   Frm_ExpDM.Qr_PPr.SQL.Add('Select  PPGRADE, PPCODPRO,PPPVTIP,PPPVTAB,PPCODRED,PPCODREG, '
                           +'       PPPCOVDA,PPDESC_1,PPDESC_2,PPDESC_3,PPQTDMIN,'
                           +'       PPDATINI,PPDATFIN,PPVALMIN,PPDESC_F,PPPROMOCAO '
                           +'       FROM CADPPR '
                           +' where (PPDATFIN is null or PPDATFIN>='
                           +chr(39)+FormatDateTime(fdt, date)+chr(39)+')');
   Frm_ExpDM.Qr_PPr.Open;
   mQtdReg:=Frm_ExpDM.Qr_PPr.RecordCount;
   if mQtdReg<1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select count(*) FROM CADPPR '
                           +' where (PPDATFIN is null or PPDATFIN>='
                           +chr(39)+FormatDateTime(fdt, date)+chr(39)+')');
      DM1.Query1.Open;
      mtotp:=mtotg+DM1.Query1.Fields[0].AsInteger;
      end
   else
      mtotp:=mtotg+mQtdReg;

   end;


if pTabCli then
   begin
   mcomp:=' and ';
   if PCodSup=0 then
      begin
      Frm_ExpDM.Qr_Cli.Close;
      Frm_ExpDM.Qr_Cli.SQL.clear;
      Frm_ExpDM.Qr_Cli.SQL.add('Select CTIPOC,CCODCLI,CCNPJ,CCPF,CRG,CIE,CRAZAO,CDENOM, '
                    +'          CLOG,CBAIRRO,CCIDADE,CUF,CNOMCON,CFONCON, '
                    +'         CFONE01 AS CFONERES,CFONE02 AS CCELULAR,CEMAIL,CCEP, '
                    +'        CTABPV,CCODPV,CDESC, CPCOPRAT,CICMSR,CREPAS,CFRETEPC,CIPI, '
                    +'    CDESC02,CDESC03,CDESCFIN,CALIQDEB,CCODRED,CCODVEN,CLCRED,'
                    +'     CSITCLI,CDTVALV,CDTANVISA,CDTCAD,COBS01,CDTUCPR,CCODBCO01   '
                    +', CCODBCO02,CNIVEL '
                    +',CCODV02,CCODV03,CCODV04,CPEDELE_SENHA,CROTA '

                    +'         from CADCLI where CSTATUS<9'+iif(Frm_ExpDM.CB_CADCLI_BLOQ.Checked,'99 ',' '));
      if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
         begin
         Frm_ExpDM.Qr_Cli.SQL.add(mcomp+' CCODEMP=0'+IntToStr(codemp));
         mcomp:=' and ';
         end;
      if pcodven<>0 then
         begin
         Frm_ExpDM.Qr_Cli.SQL.add(mcomp+'( CCODVEN=0'+FloatToStr(pCodven)
                                        +' or CCODV02=0'+FloatToStr(pCodven)
                                        +' or CCODV03=0'+FloatToStr(pCodven)
                                        +' or CCODV04=0'+FloatToStr(pCodven)
                                        +') ' );
         mcomp:=' and ';
         end;
      if pcodcli<>0 then
         begin
         Frm_ExpDM.Qr_Cli.SQL.add(mcomp+' CCODCLI=0'+FloatToStr(pCodCli));
         end;
      Frm_ExpDM.Qr_Cli.Open;
      mtotc:=Frm_ExpDM.Qr_Cli.RecordCount;
      if mtotc<=0 then
         begin
         mcomp:=' and ';
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select count(*) from CADCLI WHERE CSTATUS<9'+iif(Frm_ExpDM.CB_CADCLI_BLOQ.Checked,'99 ',' '));
         if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
            begin
            DM1.Query1.SQL.add(mcomp+' CCODEMP=0'+IntToStr(codemp));
            mcomp:=' and ';
            end;
         if pCodven<>0 then
            begin
            DM1.Query1.SQL.add(mcomp+'( CCODVEN=0'+FloatToStr(pCodven)
                                        +' or CCODV02=0'+FloatToStr(pCodven)
                                        +' or CCODV03=0'+FloatToStr(pCodven)
                                        +' or CCODV04=0'+FloatToStr(pCodven)
                                        +') ' );
            mcomp:=' and ';
            end;

         if pCodCli<>0 then
            begin
            DM1.Query1.SQL.add(mcomp+' CCODCLI=0'+FloatToStr(pCodCli));
            end;

         DM1.Query1.Open;
         mtotc:=DM1.Query1.Fields[0].AsInteger;
         end;

      mcomp:=' and ';
      Frm_ExpDM.Qr_Loc.Close;
      Frm_ExpDM.Qr_Loc.SQL.clear;
      Frm_ExpDM.Qr_Loc.SQL.add('Select CCODLOC,CCIDADE,CUF '
                    +'         from CADCLI where CSTATUS<9'+iif(Frm_ExpDM.CB_CADCLI_BLOQ.Checked,'99 ',' '));
      if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
         begin
         Frm_ExpDM.Qr_Loc.SQL.add(mcomp+' CCODEMP=0'+IntToStr(codemp));
         mcomp:=' and ';
         end;
      if pcodven<>0 then
         begin
         Frm_ExpDM.Qr_LOc.SQL.add(mcomp+'( CCODVEN=0'+FloatToStr(pCodven)
                                        +' or CCODV02=0'+FloatToStr(pCodven)
                                        +' or CCODV03=0'+FloatToStr(pCodven)
                                        +' or CCODV04=0'+FloatToStr(pCodven)
                                        +') ' );
         end;

      Frm_ExpDM.Qr_Loc.SQL.Add(' group by CCODLOC,CCIDADE,CUF ');
      Frm_ExpDM.Qr_Loc.Open;
      mQtdReg:=Frm_ExpDM.Qr_Loc.RecordCount;
      if mQtdReg>0 then
         mtotc:=mtotc+mQtdReg;
      end
   else
      begin
      mcomp:=' and ';
      Frm_ExpDM.Qr_Cli.Close;
      Frm_ExpDM.Qr_Cli.SQL.clear;
      Frm_ExpDM.Qr_Cli.SQL.add('Select CTIPOC,CCODCLI,CCNPJ,CCPF,CRG,CIE,CRAZAO,CDENOM, '
                    +'           CLOG,CBAIRRO,CCIDADE,CUF,CNOMCON,CFONCON, '
                    +'            CFONE01 AS CFONERES,CFONE02 AS CCELULAR,CEMAIL,CCEP, '
                    +'            CTABPV,CCODPV,CDESC, CPCOPRAT,CICMSR,CREPAS,CFRETEPC,CIPI, '
                    +'    CDESC02,CDESC03,CDESCFIN,CALIQDEB,CCODRED,CCODVEN,CLCRED    '
                    +', CSITCLI,CDTVALV,CDTANVISA,CDTCAD,COBS01,CDTUCPR,CCODBCO01 '
                    +', CCODBCO02,CNIVEL '
                    +',CCODV02,CCODV03,CCODV04,CPEDELE_SENHA,CROTA '

                    +'            from CADCLI,CADVEN where CSTATUS<9'+iif(Frm_ExpDM.CB_CADCLI_BLOQ.Checked,'99 ',' '));
      if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
         begin
         Frm_ExpDM.Qr_Cli.SQL.add(mcomp+' CCODEMP=0'+IntToStr(codemp));
         mcomp:=' and ';
         end;
      if pCodven<>0 then
         begin
         Frm_ExpDM.Qr_Cli.SQL.add(mcomp+'( CCODVEN=0'+FloatToStr(pCodven)
                                        +' or CCODV02=0'+FloatToStr(pCodven)
                                        +' or CCODV03=0'+FloatToStr(pCodven)
                                        +' or CCODV04=0'+FloatToStr(pCodven)
                                        +') ' );
         mcomp:=' and ';
         end;
      if not DM1.Qr_TID.Locate('TINOME','CADVEN',[]) then
         begin
         Frm_ExpDM.Qr_Cli.SQL.add(mcomp+'( VCODVEN=CCODVEN '
                                       +' or VCODVEN=CCODV02'
                                       +' or VCODVEN=CCODV03'
                                       +' or VCODVEN=CCODV04 '
                                       +') ' );
         mcomp:=' and ';
         end;
      if PCodSup<>0 then
         Frm_ExpDM.Qr_Cli.SQL.Add(' and VCODSUP=0'+FloatTostr(PCodSup));
      if pCodCli<>0 then
         begin
         Frm_ExpDM.Qr_Cli.SQL.add(mcomp+' CCODCLI=0'+FloatToStr(pCodCli));
         end;

      Frm_ExpDM.Qr_Cli.Open;
      mtotc:=Frm_ExpDM.Qr_Cli.RecordCount;
      if mtotc<=0 then
         begin
         mcomp:=' and ';
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select count(*)  '
                    +'            from CADCLI,CADVEN where CSTATUS <9'+iif(Frm_ExpDM.CB_CADCLI_BLOQ.Checked,'99 ',' '));
         if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
            begin
            DM1.Query1.SQL.add(mcomp+' CCODEMP=0'+IntToStr(codemp));
            mcomp:=' and ';
            end;
         if pcodven<>0  then
            begin
            DM1.Query1.SQL.add(mcomp+'( CCODVEN=0'+FloatToStr(pCodven)
                                       +' or CCODV02=0'+FloatToStr(pCodven)
                                       +' or CCODV03=0'+FloatToStr(pCodven)
                                       +' or CCODV04=0'+FloatToStr(pCodven)
                                       +') ' );
            mcomp:=' and ';
            end;
         if not DM1.Qr_TID.Locate('TINOME','CADVEN',[]) then
            begin
            DM1.Query1.SQL.add(mcomp+ ' VCODEMP=CCODEMP ' );
            mcomp:=' and ';
            end;

         DM1.Query1.SQL.add(mcomp+'( VCODVEN=CCODVEN '
                                       + ' or VCODVEN=CCODV02'
                                       + ' or VCODVEN=CCODV03'
                                       + ' or VCODVEN=CCODV04 '
                                       + ') ' );
         mcomp:=' and ';
         if PCodSup<>0 then
            DM1.Query1.SQL.Add(' and VCODSUP=0'+FloatToStr(PCodSup));
         if pCodCli<>0 then
            begin
            DM1.Query1.SQL.add(mcomp+' CCODCLI=0'+FloatToStr(pCodCli));
            end;

         DM1.Query1.Open;
         mtotc:=DM1.Query1.Fields[0].AsInteger;
         end;
      Frm_ExpDM.Qr_Loc.Close;
      Frm_ExpDM.Qr_Loc.SQL.clear;
      Frm_ExpDM.Qr_Loc.SQL.add('Select CCODLOC,CCIDADE,CUF '
                    +'            from CADCLI,CADVEN ');
      if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
         begin
         Frm_ExpDM.Qr_Loc.SQL.add(mcomp+' CCODEMP=0'+IntToStr(codemp));
         mcomp:=' and ';
         end;
      if pCodven<>0 then
         begin
         Frm_ExpDM.Qr_Loc.SQL.add(mcomp+'( CCODVEN=0'+FloatToStr(pCodven)
                                       + ' or CCODV02=0'+FloatToStr(pCodven)
                                       + ' or CCODV03=0'+FloatToStr(pCodven)
                                       + ' or CCODV04=0'+FloatToStr(pCodven)
                                       + ') ' );
         mcomp:=' and ';

         end;
      if not DM1.Qr_TID.Locate('TINOME','CADVEN',[]) then
         begin
         Frm_ExpDM.Qr_Loc.SQL.add(mcomp+' VCODEMP=CCODEMP');
         mcomp:=' and ';
         end;

      Frm_ExpDM.Qr_Loc.SQL.add(mcomp+'( VCODVEN=CCODVEN '
                                      + ' or VCODVEN=CCODV02'
                                      +  ' or VCODVEN=CCODV03'
                                      +  ' or VCODVEN=CCODV04'
                                      +  ') ' );

      if PCodSup<>0 then
         Frm_ExpDM.Qr_Loc.SQL.Add(' and VCODSUP=0'+FloatTostr(PCodSup));
      Frm_ExpDM.Qr_Loc.Open;
      mQtdReg:=Frm_ExpDM.Qr_Loc.RecordCount;
      if mQtdReg>0 then
         begin
         mtotc:=mtotc+mQtdReg;
         end;
      end;
   mtotg:=mtotg+mtotc;
   Frm_ExpDM.Qr_UF.Close;
   Frm_ExpDM.Qr_UF.SQL.Clear;
   Frm_ExpDM.Qr_UF.SQL.Add('Select PCODEMP, '
                +'       PUF, '
                +'       PIVAPOS, '
                +'       PIVANEG, '
                +'       PIVAINA, '
                +'       PREDUTRA, '
                +'       PREDUTRB,'
                +'       PICMSC, '
                +'       PICMSD, '
                +'       PTIPCAL, '
                +'       PTIPOPCO, '
                +'       PCALCRET, '
                +'       PREPAS '
                +' from CADUF '
                +iif(DM1.Qr_TID.Locate('TINOME','CADUF',[]),'',' where (PCODEMP=0'+IntToStr(codemp)
                +') or (PCODEMP=0'+iif(codemp>100,IntToStr(codemp-100),IntToStr(codemp+100))+')'));
   Frm_ExpDM.Qr_UF.open;
   mtotuf:=Frm_ExpDM.Qr_UF.RecordCount;
   if mtotuf<=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select count(*) from CADUF '
                +iif(DM1.Qr_TID.Locate('TINOME','CADUF',[]),'',' where (PCODEMP=0'+IntToStr(codemp)
                +') or (PCODEMP=0'+iif(codemp>100,IntToStr(codemp-100),IntToStr(codemp+100))+')'));
      DM1.Query1.Open;
      mtotuf:=DM1.Query1.Fields[0].AsInteger;
      end;
   mtotg:=mtotg+mtotuf;


   Frm_ExpDM.Qr_RedeCli.Close;
   Frm_ExpDM.Qr_RedeCli.SQL.clear;
   Frm_ExpDM.Qr_RedeCli.SQL.Add('select RDCODRED,RDNOME from CADRED '
                               +iif(DM1.Qr_TID.Locate('TINOME','CADRED',[]),'','where RDCODEMP=0'+IntToStr(codemp) ));
   Frm_ExpDM.Qr_RedeCli.Open;

   end;
if pDupAb then
   begin
   mcomp:=' where ';
   if PCodSup=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
      la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
      Frm_ExpDM.Qr_Duplic.Close;
      Frm_ExpDM.Qr_Duplic.Sql.Clear;
      Frm_ExpDM.Qr_Duplic.Sql.add('select CRNUMERO,CRDESD,CRDTEMIS,CRDTVCTO, '
                       +'       CRVALOR,CRCODCLI,CRDUP,CRNPED,CRORDEM,CRCODEMP, '
                       +'       CRDTPAG,CRSTATUS,CRVALPAG,CRCODTLV,CRLOTE,CRJURD, '
                       +'       CRCOMVEN,CRCODVEN,CRCODBCO,CRDESCD,CRMULTA,CRDESCF, '
                       +'       CRDTDESCF,CRJUROS,CRDESC ,CRJURDEB,CRJURDEB_SAC,CCNPJ,CCPF '
                       +'       ,CRTARBAN '
                       +'       from CADDAR  '+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                       +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                       +' CRSTATUS<9 ');
      if pCodven<>0 then
         begin
         if pSoVend then
            Frm_ExpDM.Qr_Duplic.SQL.Add(' and CRCODVEN=0'+FloattoStr(pCodven))
         else
            begin
            Frm_ExpDM.Qr_Duplic.Sql.add(' and ( CCODVEN=0'+FloatToStr(pCodven)
                                        +' or CCODV02=0'+FloatToStr(pCodven)
                                        +' or CCODV03=0'+FloatToStr(pCodven)
                                        +' or CCODV04=0'+FloattoStr(pCodven)
                                        +') ' );

            end;
         end;
      if pDupDias=0 then
         Frm_ExpDM.Qr_Duplic.SQL.Add(' and CRSTATUS<2 ')
      else
         Frm_ExpDM.Qr_Duplic.SQL.Add(' and ( CRSTATUS<2 or (CRDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39)+'))');
      if Trim(pdt1)<>'/  /' then
         Frm_ExpDM.Qr_Duplic.SQL.Add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(pdt1))+chr(39));
      if Trim(pdtf)<>'/  /' then
         Frm_ExpDM.Qr_Duplic.SQL.Add(' and  CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(pdtf))+chr(39));
//      Frm_ExpDM.Qr_Duplic.sQL.sAVEtOFILE('C:\SQL.TXT');

      if pCodCli<>0 then
         begin
         Frm_ExpDM.Qr_Duplic.SQL.add(' and CRCODCLI=0'+FloatToStr(pCodCli));
         end;

      Frm_ExpDM.Qr_Duplic.Open;
      mtotd:=Frm_ExpDM.Qr_Duplic.RecordCount;
      if mtotd<=0 then
         begin
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
         la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
         DM1.Query1.Close;
         DM1.Query1.Sql.Clear;
         DM1.Query1.Sql.add('Select count(*) from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                       +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                       +' CRSTATUS<9 ');
         if pCodven<>0 then
            begin
            if pSoVend then
               DM1.Query1.Sql.add(' and CRCODVEN=0'+FloattoStr(pCodven))
            else
               begin
               DM1.Query1.Sql.add(' and ( CCODVEN=0'+FloatToStr(pCodven)
                                           +' or CCODV02=0'+FloatToStr(pCodven)
                                           +' or CCODV03=0'+FloatToStr(pCodven)
                                           +' or CCODV04=0'+FloattoStr(pCodven)
                                           +') ' );

               end;
            end;


         if Trim(pdt1)<>'/  /' then
            DM1.Query1.SQL.Add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(pdt1))+chr(39));

         if Trim(pdtf)<>'/  /' then
            DM1.Query1.SQL.Add(' and  CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(pdtf))+chr(39));
         if pCodCli<>0 then
            begin
            DM1.Query1.SQL.add(' and CRCODCLI=0'+FloatTostr(pCodCli));
            end;

         DM1.Query1.Open;
         mtotd:=DM1.Query1.Fields[0].AsInteger;
         end;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADP01','P1CODEMP','CRCODEMP','P1LOTSEQ','CRLOTSEQ_CP','P1CHAVE','CRNPED'
                   ,'P1ORDEM','CRORDEM');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
      la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
      Frm_ExpDM.Qr_Ped02.Close;
      Frm_ExpDM.Qr_Ped02.Sql.Clear;
      Frm_ExpDM.Qr_Ped02.Sql.Add('Select P2CHAVE,P2ORDEM,P2ITEM, '
                                +'       P1NPEDORI, '
                                +'       P2CODPRO, '
                                +'       P2QTD, '
                                +'       P2DESC1, '
                                +'       P2DESC2, '
                                +'       P2DESC3, '
                                +'       P2PRECO, '
                                +'       P2PCOTAB, '
                                +'       P2PDESCF, '
                                +'       P2VDESCF, '
                                +'       P2TOTDES, '
                                +'       P2DESCRAT, '
                                +'       P2ICMSR, '
                                +'       P2TOTLIQ '
                                +'      ,P2LOTE '
                                +'      ,P2DTVCTO '
                                +'       ,P2BASEN '
                                +'       ,P2ICMSN '
                                +'       ,P2BASER '
                                +'       ,P2ALIQ '
                                +'       ,P2ALIQNR '
                                +'       ,P2REPAS '
                                +'       ,P2ALIPI '
                                +'       ,P2VALIPI '
                                +'       ,P2SIT '
                                +'       ,P2CFO '
                                +'       ,P2PROMOCAO '
                                +'       ,max(P2DESCPR) as P2DESCPR '
                                +'       FROM CADDAR'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' CRSTATUS<9 ');
      if pCodven<>0 then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and CRCODVEN=0'+FloattoStr(pCodven));
      if pDupDias=0 then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and CRSTATUS<2 ')
      else
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and ( CRSTATUS<2 or (CRDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39)+'))');
      if Trim(pdt1)<>'/  /' then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(pdt1))+chr(39));
      if Trim(pdtf)<>'/  /' then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and  CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(pdtf))+chr(39));
      if valint(Frm_ExpDM.diasped.Text)<>0 then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt, date-valint(Frm_ExpDM.diasped.Text))+chr(39));

      if pCodCli<>0 then
         begin
         Frm_ExpDM.Qr_Ped02.SQL.add(' and CRCODCLI=0'+FloatToStr(pCodCli));
         end;

      Frm_ExpDM.Qr_Ped02.SQL.Add('GROUP BY '
                                +' P2CHAVE,P2ORDEM,P2ITEM, '
                                +'       P1NPEDORI, '
                                +'       P2CODPRO, '
                                +'       P2QTD, '
                                +'       P2DESC1, '
                                +'       P2DESC2, '
                                +'       P2DESC3, '
                                +'       P2PRECO, '
                                +'       P2PCOTAB, '
                                +'       P2PDESCF, '
                                +'       P2VDESCF, '
                                +'       P2TOTDES, '
                                +'       P2DESCRAT, '
                                +'       P2ICMSR, '
                                +'       P2TOTLIQ '
                                +'      ,P2LOTE '
                                +'      ,P2DTVCTO '
                                +'       ,P2BASEN '
                                +'       ,P2ICMSN '
                                +'       ,P2BASER '
                                +'       ,P2ALIQ '
                                +'       ,P2ALIQNR '
                                +'       ,P2REPAS '
                                +'       ,P2ALIPI '
                                +'       ,P2VALIPI '
                                +'       ,P2SIT '
                                +'       ,P2CFO '
                                +'       ,P2PROMOCAO '
                                );

//      Frm_ExpDM.Qr_Ped02.sQL.sAVEtOFILE('C:\SQL.TXT');

      Frm_ExpDM.Qr_Ped02.Open;

      mQtdReg:=Frm_ExpDM.Qr_Ped02.RecordCount;
      if mQtdReg>0 then
         mtotd:=mtotd+mQtdReg;


      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADP01','P1CODEMP','CRCODEMP','P1LOTSEQ','CRLOTSEQ_CP','P1CHAVE','CRNPED'
                   ,'P1ORDEM','CRORDEM');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
      la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
      Frm_ExpDM.Qr_Ped01.Close;
      Frm_ExpDM.Qr_Ped01.Sql.Clear;
      Frm_ExpDM.Qr_Ped01.Sql.Add('Select P1NPEDORI, P1CHAVE, '
                                +'       P1ORDEM, '
                                +'       P1DATAP, '
                                +'       P1CODCLI, '
                                +'       P1CODVEN, '
                                +'       P1TABPV, '
                                +'       P1CODPV, '
                                +'       P1BANCO, '
                                +'       P1FRETEPC, '
                                +'       P1DESC01, '
                                +'       P1SUBMOD, '
                                +'       P1OBS1, '
                                +'       P1CHAVE-P1CHAVE AS P1CODURG, '
                                +'       P1TOTALL, '
                                +'       CCNPJ FROM CADDAR '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' CRSTATUS<9 ');
      if pCodven<>0 then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and CRCODVEN=0'+FloattoStr(pCodven));
      if pDupDias=0 then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and CRSTATUS<2 ')
      else
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and ( CRSTATUS<2 or (CRDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39)+'))');
      if Trim(pdt1)<>'/  /' then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(pdt1))+chr(39));
      if Trim(pdtf)<>'/  /' then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and  CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(pdtf))+chr(39));
      if valint(Frm_ExpDM.diasped.Text)<>0 then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt, date-valint(Frm_ExpDM.diasped.Text))+chr(39));

      if pCodCli<>0 then
         begin
         Frm_ExpDM.Qr_Ped01.SQL.add(' and CRCODCLI=0'+FloatToStr(pCodCli));
         end;

      Frm_ExpDM.Qr_Ped01.SQL.Add('GROUP BY P1NPEDORI, P1CHAVE, '
                                +'       P1ORDEM, '
                                +'       P1DATAP, '
                                +'       P1CODCLI, '
                                +'       P1CODVEN, '
                                +'       P1TABPV, '
                                +'       P1CODPV, '
                                +'       P1BANCO, '
                                +'       P1FRETEPC, '
                                +'       P1DESC01, '
                                +'       P1SUBMOD, '
                                +'       P1OBS1, '
                                +'       P1TOTALL, '
                                +'       CCNPJ ');
//      Frm_ExpDM.Qr_Ped01.sQL.sAVEtOFILE('C:\SQL.TXT');
      Frm_ExpDM.Qr_Ped01.Open;
      mQtdReg:=Frm_ExpDM.Qr_Ped01.RecordCount;
      if mQtdReg>0 then
         mtotd:=mtotd+mQtdReg;
      end
   else
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADVEN' ,'VCODEMP','CRCODEMP' ,'VCODVEN' ,'CRCODVEN');
      la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
      Frm_ExpDM.Qr_Duplic.Close;
      Frm_ExpDM.Qr_Duplic.Sql.Clear;
      Frm_ExpDM.Qr_Duplic.Sql.add('select CRNUMERO,CRDESD,CRDTEMIS,CRDTVCTO,'
                    +'       CRVALOR,CRCODCLI,CRDUP,CRNPED,CRORDEM,CRCODEMP, '
                    +'       CRDTPAG,CRSTA4TUS,CRVALPAG,CRCODTLV,CRLOTE,CRJURD '
                    +'       ,CRCOMVEN,CRCODVEN,CRCODBCO,CRDESCD,CRMULTA,CRDESCF, '
                    +'        CRDTDESCF,CRJUROS,CRDESC,CRJURDEB,CRJURDEB_SAC,CCNPJ,CCPF '
                    +'       ,CRTARBAN '
                    +'       from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' CRSTATUS<9 ');

      if pCodven<>0 then
         begin
         if pSoVend then
            Frm_ExpDM.Qr_Duplic.SQL.Add(' and CRCODVEN=0'+FloattoStr(pCodven))
         else
            begin
            Frm_ExpDM.Qr_Duplic.Sql.add(' and ( CCODVEN=0'+FloatToStr(pCodven)
                                        +' or CCODV02=0'+FloatToStr(pCodven)
                                        +' or CCODV03=0'+FloatToStr(pCodven)
                                        +' or CCODV04=0'+FloatToStr(pCodven)
                                        +') ' );

            end;
         end;

     if pDupDias=0 then
        Frm_ExpDM.Qr_Duplic.SQL.Add(' and  CRSTATUS<2 ')
     else
        Frm_ExpDM.Qr_Duplic.SQL.Add(' and ( CRSTATUS<2 or (CRDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39)+'))');
     if Trim(pdt1)<>'/  /' then
        Frm_ExpDM.Qr_Duplic.SQL.Add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(pdt1))+chr(39));
      if Trim(pdtf)<>'/  /' then
         Frm_ExpDM.Qr_Duplic.SQL.Add(' and CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(pdtf))+chr(39));
      if PCodSup<>0 then
         Frm_ExpDM.Qr_Duplic.Sql.add(' and VCODSUP=0'+FloatToStr(PCodSup));
      if pCodCli<>0 then
         begin
         Frm_ExpDM.Qr_Duplic.SQL.add(' and CRCODCLI=0'+FloatToStr(pCodCli));
         end;

      Frm_ExpDM.Qr_Duplic.Open;
      mtotd:=Frm_ExpDM.Qr_Duplic.RecordCount;
      if mtotd<=0 then
         begin
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADVEN' ,'VCODEMP','CRCODEMP' ,'VCODVEN' ,'CRCODVEN');
         la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
         DM1.Query1.Close;
         DM1.Query1.Sql.Clear;
         DM1.Query1.Sql.add('Select count(*) from CADDAR'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' CRSTATUS<9 ');

         if pCodven<>0 then
            begin
            if pSoVend then
               DM1.Query1.SQL.Add(' and CRCODVEN=0'+FloattoStr(pCodven))
            else
               begin
               DM1.Query1.Sql.add(' and ( CCODVEN=0'+FloatToStr(pCodven)
                                           +' or CCODV02=0'+FloatToStr(pCodven)
                                           +' or CCODV03=0'+FloatToStr(pCodven)
                                           +' or CCODV04=0'+FloatToStr(pCodven)
                                           +') ' );

               end;
            end;

         if pDupDias=0 then
            DM1.Query1.SQL.Add(' and  CRSTATUS<2 ')
         else
            DM1.Query1.SQL.Add(' and ( CRSTATUS<2 or (CRDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39)+'))');

         if Trim(pdt1)<>'/  /' then
            DM1.Query1.SQL.Add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(pdt1))+chr(39));
         if Trim(pdtf)<>'/  /' then
            DM1.Query1.SQL.Add(' and  CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(pdtf))+chr(39));
         if PCodSup<>0 then
            DM1.Query1.Sql.add(' and VCODSUP=0'+FloatToStr(PCodSup));
         if pCodCli<>0 then
            begin
            DM1.Query1.SQL.add(' and CRCODCLI=0'+FloatToStr(pCodCli));
            end;

         DM1.Query1.Open;
         mtotd:=DM1.Query1.Fields[0].AsInteger;
         end;
// inicio

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADP01','P1CODEMP','CRCODEMP','P1LOTSEQ','CRLOTSEQ_CP','P1CHAVE','CRNPED'
                   ,'P1ORDEM','CRORDEM');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADVEN' ,'VCODEMP','CRCODEMP' ,'VCODVEN' ,'CRCODVEN');
      la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
      Frm_ExpDM.Qr_Ped02.Close;
      Frm_ExpDM.Qr_Ped02.Sql.Clear;
      Frm_ExpDM.Qr_Ped02.Sql.Add('Select P2CHAVE,P2ORDEM,P2ITEM, '
                                +'       P1NPEDORI, '
                                +'       P2CODPRO, '
                                +'       P2QTD, '
                                +'       P2DESC1, '
                                +'       P2DESC2, '
                                +'       P2DESC3, '
                                +'       P2PRECO, '
                                +'       P2PCOTAB, '
                                +'       P2PDESCF, '
                                +'       P2VDESCF, '
                                +'       P2TOTDES, '
                                +'       P2DESCRAT, '
                                +'       P2ICMSR, '
                                +'       P2TOTLIQ '
                                +'      ,P2LOTE '
                                +'      ,P2DTVCTO '
                                +'       ,P2BASEN '
                                +'       ,P2ICMSN '
                                +'       ,P2BASER '
                                +'       ,P2ALIQ '
                                +'       ,P2ALIQNR '
                                +'       ,P2REPAS '
                                +'       ,P2ALIPI '
                                +'       ,P2VALIPI '
                                +'       ,P2SIT '
                                +'       ,P2CFO '
                                +'       ,P2PROMOCAO  '
                                +'       ,max(P2DESCPR) as P2DESCPR '
                                +'       FROM CADDAR'+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' CRSTATUS<9 ');
      if pCodven<>0 then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and CRCODVEN=0'+FloattoStr(pCodven));
      if pDupDias=0 then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and CRSTATUS<2 ')
      else
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and ( CRSTATUS<2 or (CRDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39)+'))');
      if Trim(pdt1)<>'/  /' then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(pdt1))+chr(39));
      if Trim(pdtf)<>'/  /' then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and  CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(pdtf))+chr(39));
      if valint(Frm_ExpDM.diasped.Text)<>0 then
         Frm_ExpDM.Qr_Ped02.SQL.Add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt, date-valint(Frm_ExpDM.diasped.Text))+chr(39));

      if PCodSup<>0 then
         Frm_ExpDM.Qr_Ped02.Sql.add(' and VCODSUP=0'+FloatToStr(PCodSup));
      if pCodCli<>0 then
         begin
         Frm_ExpDM.Qr_Ped02.SQL.add(' and CRCODCLI=0'+FloatToStr(pCodCli));
         end;

      Frm_ExpDM.Qr_Ped02.SQL.Add('GROUP BY '
                                +' P2CHAVE,P2ORDEM,P2ITEM, '
                                +'       P1NPEDORI, '
                                +'       P2CODPRO, '
                                +'       P2QTD, '
                                +'       P2DESC1, '
                                +'       P2DESC2, '
                                +'       P2DESC3, '
                                +'       P2PRECO, '
                                +'       P2PCOTAB, '
                                +'       P2PDESCF, '
                                +'       P2VDESCF, '
                                +'       P2TOTDES, '
                                +'       P2DESCRAT, '
                                +'       P2ICMSR, '
                                +'       P2TOTLIQ '
                                +'      ,P2LOTE '
                                +'      ,P2DTVCTO '
                                +'       ,P2BASEN '
                                +'       ,P2ICMSN '
                                +'       ,P2BASER '
                                +'       ,P2ALIQ '
                                +'       ,P2ALIQNR '
                                +'       ,P2REPAS '
                                +'       ,P2ALIPI '
                                +'       ,P2VALIPI '
                                +'       ,P2SIT '
                                +'       ,P2CFO '
                                +'       ,P2PROMOCAO '

                                );

//      Frm_ExpDM.Qr_Ped02.sQL.sAVEtOFILE('C:\SQL.TXT');

      Frm_ExpDM.Qr_Ped02.Open;

      mQtdReg:=Frm_ExpDM.Qr_Ped02.RecordCount;
      if mQtdReg>0 then
         mtotd:=mtotd+mQtdReg;


      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADP01','P1CODEMP','CRCODEMP','P1LOTSEQ','CRLOTSEQ_CP','P1CHAVE','CRNPED'
                   ,'P1ORDEM','CRORDEM');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADVEN' ,'VCODEMP','CRCODEMP' ,'VCODVEN' ,'CRCODVEN');
      la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
      Frm_ExpDM.Qr_Ped01.Close;
      Frm_ExpDM.Qr_Ped01.Sql.Clear;
      Frm_ExpDM.Qr_Ped01.Sql.Add('Select P1NPEDORI, P1CHAVE, '
                                +'       P1ORDEM, '
                                +'       P1DATAP, '
                                +'       P1CODCLI, '
                                +'       P1CODVEN, '
                                +'       P1TABPV, '
                                +'       P1CODPV, '
                                +'       P1BANCO, '
                                +'       P1FRETEPC, '
                                +'       P1DESC01, '
                                +'       P1SUBMOD, '
                                +'       P1OBS1, '
                                +'       P1CHAVE-P1CHAVE AS P1CODURG, '
                                +'       P1TOTALL, '
                                +'       CCNPJ FROM CADDAR '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' CRSTATUS<9 ');
      if pCodven<>0 then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and CRCODVEN=0'+FloattoStr(pCodven));
      if pDupDias=0 then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and CRSTATUS<2 ')
      else
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and ( CRSTATUS<2 or (CRDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39)+'))');
      if Trim(pdt1)<>'/  /' then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(pdt1))+chr(39));
      if Trim(pdtf)<>'/  /' then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and  CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(pdtf))+chr(39));
      if valint(Frm_ExpDM.diasped.Text)<>0 then
         Frm_ExpDM.Qr_Ped01.SQL.Add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt, date-valint(Frm_ExpDM.diasped.Text))+chr(39));

      if PCodSup<>0 then
         Frm_ExpDM.Qr_Ped01.Sql.add(' and VCODSUP=0'+FloatToStr(PCodSup));
      if pCodCli<>0 then
         begin
         Frm_ExpDM.Qr_Ped01.SQL.add(' and CRCODCLI=0'+FloatToStr(pCodCli));
         end;

      Frm_ExpDM.Qr_Ped01.SQL.Add('GROUP BY P1NPEDORI, P1CHAVE, '
                                +'       P1ORDEM, '
                                +'       P1DATAP, '
                                +'       P1CODCLI, '
                                +'       P1CODVEN, '
                                +'       P1TABPV, '
                                +'       P1CODPV, '
                                +'       P1BANCO, '
                                +'       P1FRETEPC, '
                                +'       P1DESC01, '
                                +'       P1SUBMOD, '
                                +'       P1OBS1, '
                                +'       P1TOTALL, '
                                +'       CCNPJ ');
//      Frm_ExpDM.Qr_Ped01.sQL.sAVEtOFILE('C:\SQL.TXT');
      Frm_ExpDM.Qr_Ped01.Open;
      mQtdReg:=Frm_ExpDM.Qr_Ped01.RecordCount;
      if mQtdReg>0 then
         mtotd:=mtotd+mQtdReg;

// termino


      end;
   mtotg:=mtotg+mtotd;
   if pDupDias>0 then
      begin
      if PCodSup=0 then
         begin
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         la_Empresas:=fEmpresas_Selecionadas('FPCRDUP','FPCRDUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
         Frm_ExpDM.Qr_FPCRDUP.Close;
         Frm_ExpDM.Qr_FPCRDUP.SQL.Clear;
         Frm_ExpDM.Qr_FPCRDUP.SQL.Add('Select * from FPCRDUP '+iif(la_tabelas='','',',')+la_tabelas
                                     +'       '+la_Join
                                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                     +iif(la_instrucao='','',la_instrucao+' and ')
                                     +' FPDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39));

         if pCodven<>0 then
            Frm_ExpDM.Qr_FPCRDUP.SQL.Add(' and FPCODVEN=0'+FloatTostr(pCodven));
         if pCodCli<>0 then
            begin
            Frm_ExpDM.Qr_FPCRDUP.SQL.add(' and FPCODCLI=0'+FloatToStr(pCodCli));
            end;

         Frm_ExpDM.Qr_FPCRDUP.Open;
         mtotfpdup:=Frm_ExpDM.Qr_FPCRDUP.RecordCount;
         if mtotfpdup<=0 then
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            la_Empresas:=fEmpresas_Selecionadas('FPCRDUP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select count(*) from FPCRDUP '+iif(la_tabelas='','',',')+la_tabelas
                                     +'       '+la_Join
                                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                     +iif(la_instrucao='','',la_instrucao+' and ')
                                     +' FPDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39));

            if pCodven<>0 then
               DM1.Query1.SQL.Add(' and FPCODVEN=0'+FloatTostr(pCodven));
            if pcodcli<>0 then
               begin
               DM1.Query1.SQL.add(' and FPCODCLI=0'+FloatToStr(pCodCli));
               end;

            DM1.Query1.Open;
            mtotfpdup:=DM1.Query1.Fields[0].AsInteger;
            end;
         end
      else
         begin
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(0,'CADVEN' ,'VCODEMP','FPCODEMP' ,'VCODVEN' ,'FPCODVEN');
         if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
           la_Empresas:=''
         else
            la_Empresas:=fla_sqlmp('FPCODEMP',Form_SelEmp.CLB_EMPRESAS);


         Frm_ExpDM.Qr_FPCRDUP.Close;
         Frm_ExpDM.Qr_FPCRDUP.SQL.Clear;
         Frm_ExpDM.Qr_FPCRDUP.SQL.Add('Select * from FPCRDUP '+iif(la_tabelas='','',',')+la_tabelas
                                     +'       '+la_Join
                                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                     +iif(la_instrucao='','',la_instrucao+' and ')
                                     +' FPDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39) );
         if pCodven<>0 then
            Frm_ExpDM.Qr_FPCRDUP.SQL.Add(' and FPCODVEN=0'+FloatTostr(pCodven));
         if PCodSup<>0 then
            Frm_ExpDM.Qr_FPCRDUP.SQL.Add(' and VCODSUP=0'+FloatTostr(PCodSup));
         if pCodCli<>0 then
            begin
            Frm_ExpDM.Qr_FPCRDUP.SQL.add(' and FPCODCLI=0'+FloatToStr(pCodCli));
            end;


         Frm_ExpDM.Qr_FPCRDUP.Open;
         mtotfpdup:=Frm_ExpDM.Qr_FPCRDUP.RecordCount;
         if mtotfpdup<=0 then
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(0,'CADVEN' ,'VCODEMP','FPCODEMP' ,'VCODVEN' ,'FPCODVEN');
            if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
               la_Empresas:=''
            else
               la_Empresas:=fla_sqlmp('FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select count(*) from FPCRDUP '+iif(la_tabelas='','',',')+la_tabelas
                                     +'       '+la_Join
                                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                     +iif(la_instrucao='','',la_instrucao+' and ')
                                     +' FPDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39) );
            if pCodven<>0 then
               DM1.Query1.SQL.Add(' and FPCODVEN=0'+FloatTostr(pCodven));
            if PCodSup<>0 then
               DM1.Query1.SQL.Add(' and VCODSUP=0'+FloatTostr(PCodSup));
            if pCodCli<>0 then
               begin
               DM1.Query1.SQL.add(' and FPCODCLI=0'+FloatToStr(pCodCli));
               end;

            DM1.Query1.Open;
            mtotfpdup:=DM1.Query1.Fields[0].AsInteger;
            end;
         end;
      mtotg:=mtotg+mtotfpdup;

// documentos
      if PCodSup=0 then
         begin

         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(1,'FPCR' ,'FPCR.FPCODEMP','DUP.FPCODEMP' ,'FPCR.FPLOTE' ,'DUP.FPLOTE');
         if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
           la_Empresas:=''
         else
            la_Empresas:=fla_sqlmp('DUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

         Frm_ExpDM.Qr_FPCR.Close;
         Frm_ExpDM.Qr_FPCR.SQL.Clear;
         Frm_ExpDM.Qr_FPCR.SQL.Add('Select FPCR.FPCODEMP, '
                                  +'       FPCR.FPSEQ, '
                                  +'       FPCR.FPLOTSEQ, '
                                  +'       FPCR.FPDATA, '
                                  +'       FPCR.FPFORMA, '
                                  +'       FPCR.FPNUMERO, '
                                  +'       FPCR.FPBANCO, '
                                  +'       FPCR.FPSERIE, '
                                  +'       FPCR.FPVALOR, '
                                  +'       FPCR.FPLOTE, '
                                  +'       FPCR.FPCC, '
                                  +'       FPCR.FPTIPO, '
                                  +'       FPCR.FPCAIXA, '
                                  +'       FPCR.FPCODLDR, '
                                  +'       FPCR.FPLOTSEQ_FC '
                                  +' from FPCRDUP DUP '+iif(la_tabelas='','',',')+la_tabelas
                                  +'       '+la_Join
                                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                  +iif(la_instrucao='','',la_instrucao+' and ')
                                  +' DUP.FPDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39) );
         if pCodven<>0 then
            Frm_ExpDM.Qr_FPCR.SQL.Add(' and DUP.FPCODVEN=0'+FloatTostr(pCodven));
         if pCodCli<>0 then
            begin
            Frm_ExpDM.Qr_FPCR.SQL.add(' and DUP.FPCODCLI=0'+FloattoStr(pCodCli));
            end;

//         Frm_ExpDM.Qr_FPCR.sQL.sAVETOfILE('C:\SQL.TXT');
         Frm_ExpDM.Qr_FPCR.Open;

         mtotfpdup:=Frm_ExpDM.Qr_FPCR.RecordCount;
         if mtotfp<=0 then
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(1,'FPCR' ,'FPCR.FPCODEMP','DUP.FPCODEMP' ,'FPCR.FPLOTE' ,'DUP.FPLOTE');
            if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
               la_Empresas:=''
            else
               la_Empresas:=fla_sqlmp('DUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select count(*) from FPCRDUP DUP '+iif(la_tabelas='','',',')+la_tabelas
                                  +'       '+la_Join
                                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                  +iif(la_instrucao='','',la_instrucao+' and ')
                                  +' DUP.FPDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39) );
            if pCodven<>0 then
               DM1.Query1.SQL.Add(' and DUP.FPCODVEN=0'+FloatTostr(pCodven));
            if pCodCli<>0 then
               begin
               DM1.Query1.SQL.add(' and DUP.FPCODCLI=0'+FloatToStr(pCodCli));
               end;

//            DM1.Query1.sQL.sAVETOfILE('C:\SQL.TXT');

            DM1.Query1.Open;
            mtotfp :=DM1.Query1.Fields[0].AsInteger;
            end;
         end
      else
         begin
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(1,'FPCR' ,'FPCR.FPCODEMP','DUP.FPCODEMP' ,'FPCR.FPLOTE' ,'DUP.FPLOTE');
         if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
            la_Empresas:=''
         else
            la_Empresas:=fla_sqlmp('DUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADVEN' ,'VCODEMP','FPCR.FPCODEMP' ,'VCODVEN' ,'FPCR.FPCODVEN');

         Frm_ExpDM.Qr_FPCR.Close;
         Frm_ExpDM.Qr_FPCR.SQL.Clear;
         Frm_ExpDM.Qr_FPCR.SQL.Add('Select FPCR.FPCODEMP, '
                                  +'       FPCR.FPSEQ, '
                                  +'       FPCR.FPLOTSEQ, '
                                  +'       FPCR.FPDATA, '
                                  +'       FPCR.FPFORMA, '
                                  +'       FPCR.FPNUMERO, '
                                  +'       FPCR.FPBANCO, '
                                  +'       FPCR.FPSERIE, '
                                  +'       FPCR.FPVALOR, '
                                  +'       FPCR.FPLOTE, '
                                  +'       FPCR.FPCC, '
                                  +'       FPCR.FPTIPO, '
                                  +'       FPCR.FPCAIXA, '
                                  +'       FPCR.FPCODLDR, '
                                  +'       FPCR.FPLOTSEQ_FC '
                                  +' from FPCRDUP DUP '+iif(la_tabelas='','',',')+la_tabelas
                                  +'       '+la_Join
                                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                  +iif(la_instrucao='','',la_instrucao+' and ')
                                  +' DUP.FPDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39) );
         if pCodven<>0 then
            Frm_ExpDM.Qr_FPCR.SQL.Add(' and DUP.FPCODVEN=0'+FloatTostr(pCodven));
         if pCodCli<>0 then
            begin
            Frm_ExpDM.Qr_FPCR.SQL.add(' and DUP.FPCODCLI=0'+FloatToStr(pCodCli));
            end;

//         Frm_ExpDM.Qr_FPCR.sQL.sAVETOfILE('C:\SQL.TXT');
         Frm_ExpDM.Qr_FPCR.Open;
         mtotfp:=Frm_ExpDM.Qr_FPCR.RecordCount;
         if mtotfp<=0 then
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(1,'FPCR' ,'FPCR.FPCODEMP','DUP.FPCODEMP' ,'FPCR.FPLOTE' ,'DUP.FPLOTE');
            if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
               la_Empresas:=''
            else
               la_Empresas:=fla_sqlmp('DUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
            if pbanco=0 then
               la_instrucao:=la_instrucao+' and ';
            fInnerJoin(0,'CADVEN' ,'VCODEMP','FPCR.FPCODEMP' ,'VCODVEN' ,'FPCR.FPCODVEN');

            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select count(*) from FPCRDUP DUP '+iif(la_tabelas='','',',')+la_tabelas
                                  +'       '+la_Join
                                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                  +iif(la_instrucao='','',la_instrucao+' and ')
                                  +' DUP.FPDTBX>='+chr(39)+FormatDateTime(fdt, date-pDupDias)+chr(39) );
            if pCodven<>0 then
               DM1.Query1.SQL.Add(' and DUP.FPCODVEN=0'+FloatTostr(pCodven));
//            DM1.Query1.sQL.sAVETOfILE('C:\SQL.TXT');

            if pCodCli<>0 then
               begin
               DM1.Query1.SQL.add(' and DUP.FPCODCLI=0'+FloatToStr(pCodCli));
               end;

            DM1.Query1.Open;
            mtotfp :=DM1.Query1.Fields[0].AsInteger;
            end;
         end;
      end;
      mtotg:=mtotg+mtotfp;
   end;

if pPv then
   begin
   Frm_ExpDM.Qr_PV.Close;
   Frm_ExpDM.Qr_PV.Sql.Clear;
   Frm_ExpDM.Qr_PV.Sql.add('Select PVCODTIP,PVCODPV,PVNOME, '
                +'        PVTPDC,PVDES, '
                +'        PVTPD1,PVDES1, '
                +'        PVTPD2,PVDES2, '
                +'        PVTPD3,PVDES3, '
                +'        PVD2S0,PVD2S1, '
                +'        PVD2S2,PVD2S3, '
                +'        PVD2S4,PVD2S5, '
                +'        PVD2S6,PVD2S7, '
                +'        PVACTD,PVACT00, '
                +'        PVACT01,PVACT99 '
                +'       ,PVTPDESF  '
                +'       ,PVDESCF   '
                +'       ,PVD1S0 '
                +'       ,PVD1S1 '
                +'       ,PVD1S2 '
                +'       ,PVD1S3  '
                +'       ,PVD1S4  '
                +'       ,PVD1S5  '
                +'       ,PVD1S6  '
                +'       ,PVD1S7  '
                +'       ,PVD3S0  '
                +'       ,PVD3S1  '
                +'       ,PVD3S2  '
                +'       ,PVD3S3  '
                +'       ,PVD3S4  '
                +'       ,PVD3S5  '
                +'       ,PVD3S6  '
                +'       ,PVD3S7  '
                +'       ,PVDFS0  '
                +'       ,PVDFS1  '
                +'       ,PVDFS2 '
                +'       ,PVDFS3 '
                +'       ,PVDFS4 '
                +'       ,PVDFS5 '
                +'       ,PVDFS6 '
                +'       ,PVDFS7,PVPRAZOMED '
                +' from CADPV '
                +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' where PVCODEMP=0'+IntTostr(codemp)));
//   Frm_ExpDM.Qr_PV.SQL.SAVETOFILE('C:\SQL.TXT');

   Frm_ExpDM.Qr_PV.Open;
   mtotpv:=Frm_ExpDM.Qr_PV.RecordCount;
   if mtotp<=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Select count(*) from CADPV '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPV',[]),'',' where PVCODEMP=0'+IntToStr(codemp)));
      DM1.Query1.Open;
      mtotpv:=DM1.Query1.Fields[0].AsInteger;
      end;
   mtotg:=mtotg+mtotpv;
   end;



if (pTabCli) or (pDupAb) or (pPv) then
   begin
   mcinst:='';
   Frm_ExpDM.Qr_Ven.Close;
   Frm_ExpDM.Qr_Ven.SQL.Clear;
   Frm_ExpDM.Qr_Ven.SQL.Add('Select VCODVEN,VNOME,VCODSUP,VFONECOM,VCELULAR '
                           +',VDM_PCOEXTRA, VDM_DESCMAXITEM,VDM_ACREMAXITEM '
                           +'  from CADVEN ');
   mcinst:=' where ';
   if not DM1.Qr_TID.Locate('TINOME','CADVEN',[]) then
      begin
      Frm_ExpDM.Qr_Ven.SQL.Add(mcinst+' VCODEMP=0'+IntTostr(codemp));
      mcinst:=' and ';
      end;
   if pCodven<>0 then
      begin
      Frm_ExpDM.Qr_Ven.sql.Add(mcinst+' VCODVEN=0'+FloatToStr(pCodven));
      mcinst:=' and ';
      end;
   if PCodSup<>0 then
      begin
      Frm_ExpDM.Qr_Ven.sql.Add(mcinst+' VCODSUP=0'+FloatToStr(PCodSup));
      mcinst:=' and ';
      end;
   Frm_ExpDM.Qr_Ven.Open;
   mtotv:=Frm_ExpDM.Qr_Ven.RecordCount;
   if mtotv<=0 then
      begin
      mcinst:=' where ';
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select count(*) from CADVEN ');
      mcinst:=' where ';
      if not DM1.Qr_TID.Locate('TINOME','CADVEN',[]) then
         begin
         DM1.Query1.SQL.Add(mcinst+' VCODEMP=0'+IntTostr(codemp));
         mcinst:=' and ';
          end;
      if pCodven<>0 then
         begin
         DM1.Query1.SQL.Add(mcinst+' VCODVEN=0'+FloatToStr(pCodven));
         mcinst:=' and ';
         end;
      if PCodSup<>0 then
         begin
         DM1.Query1.sql.Add(mcinst+' VCODSUP=0'+FloatToStr(pcodsup));
         mcinst:=' and ';
         end;
      DM1.Query1.Open;
      mtotv:=DM1.Query1.Fields[0].AsInteger;
      end;
   mtotg:=mtotg+mtotv;
   end;
if (pDadosCli) and (mtotg=0) then
   mtotg:=1;
//if (pDadosPed) and (mtotg=0) then
if (pDadosPed)then
   begin
   mtotg:=1;
   fImpDMGerarRetorno(0,pOrigemInfo, pChavePed_Ori,pCodCli,0,0,0);
   result:=true;
   exit;
{
   if mCriouEvento then
      begin
      CloseFile(F_Evento);
      RenameFile(mPastaEnvio+fimpdmtestanome(mNomeEvento)+'.$$$',
      mPastaEnvio+fimpdmtestanome(mNomeEvento)+'.RET');
      end;
}
   end;



if mtotg<=0 then
   begin
   if pOrigem=0 then
      fmensagem('Nada a Ser Enviado!',0,['0'],0);
   result:=False;
   exit;
   end;
// retirar lindomar
//if ValInt(Edit1.Text)>0 then
//   begin
//   mtotg:=mtotg-mtotp-mtotc;
//   mtotg:=mtotg+(ValInt(edit1.Text)*2);
//   end;
Frm_ExpDM.Groupbox3.Visible:=True;
Frm_ExpDM.GroupBox4.Visible:=True;


AssignFile(f_retorno,mPastaEnvio+'\CADPAR.GER');
rewrite(f_retorno);
if Trim(Frm_ExpDM.NOMVEN.Text)<>'' then
   mcinst:=Frm_ExpDM.NOMVEN.Text
else if Trim(Frm_ExpDM.NOMSUP.Text)<>'' then
   mcinst:=Frm_ExpDM.NOMSUP.Text
else
   mcinst:='GERENTE';

WriteLn(f_retorno,'001',insere(FloatToStr(mtotg),'0',11)
               +insere2(mcoddad,' ',17)
               +insere2(iif(mSubst,fSubstituirCaractere(mcinst,mRetCar,mIncCar),mcinst),' ',35)
               +insere2(iif(mSubst,fSubstituirCaractere(DM1.Tb_EmpRAZAO.Value,mRetCar,mIncCar),DM1.Tb_EmpRAZAO.Value) ,' ',35)
               +iif(pTabPro,'1','0')
               +iif(pTabCli,'1','0')
               +iif(pDupAb,'1','0')
               +iif(pPv,'1','0')
               +insere2(DM1.Tb_PargerPCASQTD.AsString,'0',1)
               +insere2(IntToStr(mQtdCas_arredpu),'0',1)
               +insere2(DM1.Tb_PargerPCASAS.AsString,'0',1)
               +insere2(DM1.Tb_PargerPDM_ENDIP.Value,' ',20)
               +insere(DM1.Tb_PargerPDM_PORTA.AsString,'0',10)
               +insere('1','0',03) // versao
               +insere(Inttostr(mOrigemInfo),'0',02) // versao
               +insere2(DM1.Tb_EmpE_MAIL.Value,' ',70) // e-mail
               +insere2(DM1.Tb_PargerPDM_ENDIP_INTERNO.Value,' ',20)
               +insere2(DM1.Tb_PargerPDM_ENDIP.AsString,' ',50) // e-mail

               );
CloseFile(f_retorno);
{ Resumo de identificação do registro 001-Cabecalho
IDENTIF    03     1     03   //001-Cabeçalho
QTDREG     11     4     14   //Quantidade de registros do Arquivo
TIPO       02    15     16   // tipo do Registros VD-Vendedor SP-Supervisor TD-Gerente

CODVEN     15    17     31   //Codigo do vendedor
NOMVEN     35    32     66   //Nome do Vendedor
NOMEMP     35    67    101   // Nome da empresa


ARQPRO     01   102    102   // Arquivo de Produto 0-nao 1-Sim
ARQCLI     01   103    103   // Arquivo de Cliente 0-nao 1-Sim
ARQDUP     01   104    104   // Arquivo de Duplicatas em aberto
ARQPV      01   105    105   // Arquivo de Plano de Vendas
QTDDEC_QTD 01   106    106   // Quantidade de casas decimais para quantidade
QTDDEC_PU  01   107    107   // Quantidade de casas decimais para Preços Unitarios
QTDDEC_OU  01   108    108   // Quantidade de casas decimais para Outros Valores
ENDIP      20   109    128   // Endreço IP para Conexão
PORTA            20   129    138   // porta do host para Conexão
VERSAO_LAYOUT    03   139    141   // Versao do Layout
ORIGEM_INFO      02   142    143   // porta do host para Conexão

               );


}

//if Trim(CODVEN.Text)='' then
//   mnomsai:='VD99999.TXT'
//else
//   mnomsai:='VD'+Formatfloat('00000',ValFloat(CODVEN.Text))+'.TXT';
AssignFile(f_retorno,mPastaEnvio+'\'+mArqSai+'.GER');
rewrite(f_retorno);

{ Resumo do layout de Duplicatas  020
Item	Descrição	Tam.	Posição Inicial	Posição Final	Tipo do Campo	Conteúdo
01	IDENTIF	003	001	003	N	Fixo: 020
02	NUMERO	014	004	017	N	Número da Duplicata
03	DESD	002	018	019	C	Desdobramento/Parcela
04	DT.EMISSAO	010	020	029	C	Data de Emissão no formato AAAAMMDD
05	DT.VCTO	        010	030	039	C	Data de Vencimento no Formato AAAAMMDD
06	VALOR DUP	014	040	053	N	Valor da Parcela/Duplicata com 2 decimais Não precisa colocar o ponto decimal
07	COD. CLIENTE	014	054	067	N	Código do Cliente
08	TIPO	001	068	068	N	Tipo da Duplicata
09	CHAVE PED	010	069	078	N	Chave do Pedido
10	ORDEM PED	003	079	081	N	Ordem do Pedido/Pagina
11	DT.PGTO	010	082	091	N	Data de Recebimento da Duplicata Formato AAAAMMDD
12	STATUS	001	092	092	N	Status da duplicata 0-Em Aberto 1-Pago Parcial 2-Pago Total
13	VALOR PAG	014	093	116	N	Valor já Recebido da Duplicata com 2 Decimais Não precisa colocar o ponto decimal
14	COD.TELEV	014	107	120	N	Código do Televendas de atendeu este pedido
15	LOTE REC	010	121	130	N	Número do Lote de Recebimento
16	JUROS AO DIA	014	131	144	N	Juros por dia de atraso com 2 decimais Não precisa colocar o ponto decimal
17	% COMIS	014	145	158	N	Valor da Comissão para este titulo com 2 decimais Não precisa colocar o ponto decimal
18	COD.BANCO	003	159	161	N	Código do Banco, quando zero é carteira
19	COD.VEND	014	162	175	N	Código do Vendedor
20	DUP(TIPO)	002	176	177	N	Dup(Tipo de Duplicata) 8-Nota de Credito
21	DESCD	014	178	191	N	Desconto por dia de Antecipação
22	MULTA	014	192	205	N	Multa por Atraso
23	DESC.FIN	014	206	219	N	Valor do Desconto Financeiro
24	DATADESC	008	220	227	N	Data Limite para conceder desconto financeiro
25	LIVRE	002	228	229	N	Campo livre
26	JUROS	014	230	243	N	Juros Recebidos
27	DESC.CONC	014	244	257	N	Valor do Desconto Concedido
28	JUROS DEB	014	258	271	N	Juros Debitado
29	JURDEBSACADO	002	272	273	N	Para quem foi debitado o juros 00-Cliente 01-Vendedor





Resumo do layout to CADDUPREC 022
IDENTIF    03    01     03 // 022
FPSEQ      10    04    013
FPLOTE     10    14    023
FPNR       10    24    033
FPNUMERO   10    34    043
FPDESD     02    44    045
FPDUP      01    46    046
FPCODCLI   14    47    060
FPCODVEN   10    61    070
FPDTEMIS   08    71    078  formato yyyymmdd
LIVRE      02    79    080
FPVALOR    14    81    094  com 2 casas decimais e sem ponto decimal
FPJUROS    14    95    108  com 2 casas decimais e sem ponto decimal
FPDESC     14   109    122  com 2 casas decimais e sem ponto decimal
FPTIPO     01   123    123
FPLOTENV   10   124    133
FPDTPAG    08   134    141  formato yyyymmdd


Resumo do layout to CADDUPDREC   024
IDENTIF    03    01     03  // 024
FPSEQ      10    04    013
FPLOTE     10    14    023
FPVALOR    14    24    037  com 2 casas decimais e sem o ponto decimal
FPDATA     08    38    045 formato yyyymmdd
fplivre01  02    46    047 counteudo 00
FPFORMA    02    48    049
FPNUMERO   10    50    059
FPBANCO    03    60    062
FPSERIE    10    63    072
FPCC       20    73    092
FPCOMP     04    93    096
FPEMIT     40    97    136
FPRG       40   137    176
FPCGC      14   177    190
FPDTNAS    08   191    198 formato yyyymmdd
livre02    02   199    200 conteudo 00
FPTIPO     01   201    201
FPLOTENV   10   202    211
FPAGENCIA  05   212    216

}



if pDadosCli then
   begin
   mcomp:=' and ';
   Frm_ExpDM.Qr_Cli.Close;
   Frm_ExpDM.Qr_Cli.SQL.clear;
   Frm_ExpDM.Qr_Cli.SQL.add('Select CTIPOC,CCODCLI,CCNPJ,CCPF,CRG,CIE,CRAZAO,CDENOM, '
                 +'          CLOG,CBAIRRO,CCIDADE,CUF,CNOMCON,CFONCON, '
                 +'         CFONE01 AS CFONERES,CFONE02 AS CCELULAR,CEMAIL,CCEP, '
                 +'        CTABPV,CCODPV,CDESC, CPCOPRAT,CICMSR,CREPAS,CFRETEPC,CIPI, '
                 +'    CDESC02,CDESC03,CDESCFIN,CALIQDEB,CCODRED,CCODVEN,CLCRED,'
                 +'     CSITCLI,CDTVALV,CDTANVISA,CDTCAD,COBS01,CDTUCPR,CCODBCO01   '
                 +'  ,   CCODBCO02,CNIVEL '
                 +',CCODV02,CCODV03,CCODV04,CPEDELE_SENHA,CROTA '

                 +'         from CADCLI where CSTATUS<9'+iif(Frm_ExpDM.CB_CADCLI_BLOQ.Checked,'99 ',' '));
   if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
      begin
      Frm_ExpDM.Qr_Cli.SQL.add(mcomp+' CCODEMP=0'+IntToStr(codemp));
      mcomp:=' and ';
      end;
{
   if pcodven<>0 then
      begin
      Frm_ExpDM.Qr_Cli.SQL.add(mcomp+'( CCODVEN=0'+FloatToStr(pCodven)
                                     +' or CCODV02=0'+FloatToStr(pCodven)
                                     +' or CCODV03=0'+FloatToStr(pCodven)
                                     +' or CCODV04=0'+FloatToStr(pCodven)
                                     +') ' );
      mcomp:=' and ';
      end;
}
   if pcodcli<>0 then
      begin
      Frm_ExpDM.Qr_Cli.SQL.add(mcomp+' CCNPJ=0'+FloatToStr(pCodCli));
      end;
   Frm_ExpDM.Qr_Cli.Open;
   mtotc:=Frm_ExpDM.Qr_Cli.RecordCount;
   if mtotc<=0 then
      begin
      mcomp:=' and ';
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select count(*) from CADCLI WHERE CSTATUS<9'+iif(Frm_ExpDM.CB_CADCLI_BLOQ.Checked,'99 ',' '));
      if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
         begin
         DM1.Query1.SQL.add(mcomp+' CCODEMP=0'+IntToStr(codemp));
         mcomp:=' and ';
         end;
{
      if pCodven<>0 then
         begin
         DM1.Query1.SQL.add(mcomp+'( CCODVEN=0'+FloatToStr(pCodven)
                                     +' or CCODV02=0'+FloatToStr(pCodven)
                                     +' or CCODV03=0'+FloatToStr(pCodven)
                                     +' or CCODV04=0'+FloatToStr(pCodven)
                                     +') ' );
         mcomp:=' and ';
         end;
}
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.add(mcomp+' CCNPJ=0'+FloatToStr(pCodCli));
         end;
      DM1.Query1.Open;
      mtotc:=DM1.Query1.Fields[0].AsInteger;
      end;

   Frm_ExpDM.GroupBox4.Caption:='Processando o arquivo de Clientes...';
   Frm_ExpDM.GroupBox4.Update;
   mlidc:=0;
   if Frm_ExpDM.Qr_Cli.IsEmpty then
      Writeln(f_retorno,'030ERRO-Nao Foi Encontrado o Cliente ')
   else if Frm_ExpDM.Qr_CliCPEDELE_SENHA.AsString=''then
      Writeln(f_retorno,'030ERRO-Favor Solicitar uma senha para autenticacao')
   else if PalNum_Sis(trim(Frm_ExpDM.Qr_CliCPEDELE_SENHA.Value))<>pSenha then
      Writeln(f_retorno,'030ERRO-Senha nao Confere')
   else
      begin
      While not Frm_ExpDM.Qr_Cli.Eof do
         begin
         mlidg:=mlidg+1;
         mlidc:=mlidc+1;
         if mlidc>mtotc then
            break;
         Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
         Frm_ExpDM.Gauge2.Progress:=mlidc*100 div mtotc;
         Writeln(f_retorno,'030'+iif(Frm_ExpDM.Qr_CliCCNPJ.AsFloat>0,
                         insere(FormatFloat('00000000000000',Frm_ExpDM.Qr_CliCCNPJ.value),'0',14)
                        ,insere(FormatFloat('00000000000000',Frm_ExpDM.Qr_CliCCPF.Value),'0',14)
                             )
                        +insere(FormatFloat('00000000000000',Frm_ExpDM.Qr_CliCCODCLI.Value),'0',14)
                        +insere2(Frm_ExpDM.Qr_CLICTABPV.AsString,' ',02)
                        +insere(Frm_ExpDM.Qr_CliCCODPV.AsString,'0',14)
                        +insere(Frm_ExpDM.Qr_CliCCODBCO01.AsString,'0',10)
                        +insere(Frm_ExpDM.Qr_CliCCODBCO02.AsString,'0',10)
                        +insere(Frm_ExpDM.Qr_CliCNIVEL.AsString,'0',03)
                        +insere(Frm_ExpDM.Qr_CliCCODVEN.AsString,'0',14)
                        +insere(Frm_ExpDM.Qr_CliCCODV02.AsString,'0',14)
                        );


         Frm_ExpDM.Qr_Cli.Next;
         end;
      Frm_ExpDM.Qr_Cli.First;
      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.Add('Select CPV_TABPV,CPV_CODPV,PVNOME,PVPRAZOS '
                        +' from CADCLI_PV,CADPV '
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CPV_CODEMP=0'+intToStr(codemp)+' and ')
                        +' CPV_CODCLI=0'+Frm_ExpDM.Qr_CliCCODCLI.AsString
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPV',[]),'',' and PVCODEMP=CPV_CODEMP')
                        +' AND PVCODTIP=CPV_TABPV '
                        +' AND PVCODPV=CPV_CODPV '
                        +' order by CPV_TABPV,CPV_CODPV ');
      DM1.Query4.Open;
      if DM1.Query4.IsEmpty then
         begin
         DM1.Query4.Close;
         DM1.Query4.SQL.Clear;
         DM1.Query4.SQL.Add('Select PVCODTIP AS CPV_TABPV, PVCODPV AS CPV_CODPV,PVNOME,PVPRAZOS '
                        +' from CADPV '
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' PVCODEMP=0'+intToStr(codemp)+' and ')
                        +' PVCODTIP='+chr(39)+Frm_ExpDM.Qr_CliCTABPV.AsString+chr(39)
                        +' AND PVCODPV=0'+Frm_ExpDM.Qr_CliCCODPV.AsString);
         DM1.Query4.Open;
         end;


      if DM1.Query4.IsEmpty then
         Writeln(f_retorno,'031ERRO-Nao ha planos de Vendas Cadastrado para o cliente')
      else
         begin
         While not DM1.Query4.Eof do
            begin
            Writeln(f_retorno,'031'+insere2(DM1.Query4.fieldbyName('CPV_TABPV').AsString,' ',02)
                        +insere(DM1.Query4.fieldbyName('CPV_CODPV').AsString,'0',14)
                        +insere2(DM1.Query4.fieldbyName('PVNOME').AsString,' ',40)
                        +insere2(DM1.Query4.fieldbyName('PVPRAZOS').AsString,' ',60));
            DM1.Query4.Next;
            end;
         end;
      end;
// cidade
   end;

// TERMINO DADOS DO CLIENTE

if pDupAb then
   begin
   Frm_ExpDM.GroupBox4.Caption:='Processando o arquivo de Duplicatas...';
   Frm_ExpDM.GroupBox4.Update;
//   if Trim(Frm_ExpDM.Edit1.Text)<>'' then
//      mtotd:=StrToInt('0'+Trim(Frm_ExpDM.Edit1.Text)); // Retirar lindomar

   While not Frm_ExpDM.Qr_Duplic.Eof do
      begin
      mlidg:=mlidg+1;
      mlidd:=mlidd+1;
      if mlidd>mtotd then
         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidd*100 div mtotd;
      Writeln(f_retorno,'020'+insere(Frm_ExpDM.Qr_DuplicCRNUMERO.AsString,'0',14)
                   +insere2(Trim(Frm_ExpDM.Qr_DuplicCRDESD.Value),' ',2)
                   +FormatDatetime('yyyymmdd',Frm_ExpDM.Qr_DuplicCRDTEMIS.Value)
                   +'00'
                   +FormatDateTime('yyyymmdd',Frm_ExpDM.Qr_DuplicCRDTVCTO.Value)
                   +'00'
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRVALOR.Value*100)),'0',14)
                   +insere(Frm_ExpDM.Qr_DuplicCRCODCLI.AsString,'0',14)
                   +insere(Frm_ExpDM.Qr_DuplicCCNPJ.AsString,'0',14)
                   +iif(Frm_ExpDM.Qr_DuplicCRCODEMP.Value>100,'1','0')
                   +insere(Frm_ExpDM.Qr_DuplicCRNPED.AsString,'0',10)
                   +insere(Frm_ExpDM.Qr_DuplicCRORDEM.AsString,'0',03)
                   +iif(Frm_ExpDM.Qr_DuplicCRSTATUS.Value<1,'00000000',FormatDateTime('yyyymmdd',Frm_ExpDM.Qr_DuplicCRDTPAG.Value))
                   +'00'
                   +insere(Frm_ExpDM.Qr_DuplicCRSTATUS.AsString,'0',1)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRVALPAG.Value*100)),'0',14)
                   +insere(Frm_ExpDM.Qr_DuplicCRCODTLV.AsString,'0',14)
                   +insere(Frm_ExpDM.Qr_DuplicCRLOTE.AsString,'0',10)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRJURD.Value*100)),'0',14)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRCOMVEN.Value*100)),'0',14)
                   +insere(Frm_ExpDM.Qr_DuplicCRCODBCO.AsString,'0',3)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRCODVEN.Value)),'0',14)
                   +insere(Frm_ExpDM.Qr_DuplicCRDUP.AsString,'0',02)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRDESCD.Value*100)),'0',14)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRMULTA.Value*100)),'0',14)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRDESCF.Value*100)),'0',14)
                   +iif(Frm_ExpDM.Qr_DuplicCRDTDESCF.Value<=pdatanula,
                        '00000000',
                   formatDateTime('yyyymmdd',Frm_ExpDM.Qr_DuplicCRDTDESCF.Value))
                   +'00'
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRJUROS.Value*100)),'0',14)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRDESC.Value*100)),'0',14)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRJURDEB.Value*100)),'0',14)
                   +insere(mudaVP(FormatFloat('00',Frm_ExpDM.Qr_DuplicCRJURDEB_SAC.Value*100)),'0',2)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_DuplicCRTARBAN.Value*100)),'0',14)
                   );

      Frm_ExpDM.Qr_Duplic.Next;
      end;
// duplicatas baixadas
   Frm_ExpDM.GroupBox4.Caption:='Processando o arquivo de Duplicatas Baixadas...';
   Frm_ExpDM.GroupBox4.Update;

   While not Frm_ExpDM.Qr_FPCRDUP.Eof do
      begin
      mlidg:=mlidg+1;
      mlidfpdup:=mlidfpdup+1;
      if mlidfpdup>mtotfpdup then
         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidd*100 div mtotfpdup;
      Writeln(f_retorno,'022'+iif(Frm_ExpDM.Qr_FPCRDUPFPSEQ.Value<0,FormatFloat('000000000',Frm_ExpDM.Qr_FPCRDUPFPSEQ.Value),
                   FormatFloat('0000000000',Frm_ExpDM.Qr_FPCRDUPFPSEQ.Value))
                   +iif(Frm_ExpDM.Qr_FPCRDUPFPLOTE.Value<0,FormatFloat('000000000',Frm_ExpDM.Qr_FPCRDUPFPLOTE.Value),
                   FormatFloat('0000000000',Frm_ExpDM.Qr_FPCRDUPFPLOTE.Value))
                   +iif(Frm_ExpDM.Qr_FPCRDUPFPNR.Value<0,FormatFloat('000000000',Frm_ExpDM.Qr_FPCRDUPFPNR.Value),
                   FormatFloat('0000000000',Frm_ExpDM.Qr_FPCRDUPFPNR.Value))
                   +iif(Frm_ExpDM.Qr_FPCRDUPFPNUMERO.Value<0,FormatFloat('000000000',Frm_ExpDM.Qr_FPCRDUPFPNUMERO.Value),
                   FormatFloat('0000000000',Frm_ExpDM.Qr_FPCRDUPFPNUMERO.Value))
                   +insere2(Trim(Frm_ExpDM.Qr_FPCRDUPFPDESD.Value),' ',2)
                   +insere(Frm_ExpDM.Qr_FPCRDUPFPTIPO.AsString,'0',1)
                   +iif(Frm_ExpDM.Qr_DuplicCRCODCLI.Value<0,FormatFloat('0000000000000',Frm_ExpDM.Qr_FPCRDUPFPCODCLI.Value),
                                               FormatFloat('00000000000000',Frm_ExpDM.Qr_FPCRDUPFPCODCLI.Value))
                   +iif(Frm_ExpDM.Qr_DuplicCRCODVEN.Value<0,FormatFloat('000000000',Frm_ExpDM.Qr_FPCRDUPFPCODVEN.Value),
                                               FormatFloat('0000000000',Frm_ExpDM.Qr_FPCRDUPFPCODVEN.Value))
                   +FormatDatetime('yyyymmdd',Frm_ExpDM.Qr_FPCRDUPFPDTEMIS.Value)
                   +'00'
                   +iif(Frm_ExpDM.Qr_FPCRDUPFPVALOR.Value<0,'00000000000000',
                        insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_FPCRDUPFPVALOR.Value*100)),'0',14))
                   +iif(Frm_ExpDM.Qr_FPCRDUPFPJUROS.Value<0,'00000000000000',
                        insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_FPCRDUPFPJUROS.Value*100)),'0',14))
                   +iif(Frm_ExpDM.Qr_FPCRDUPFPDESC.Value<0,'00000000000000',
                        insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_FPCRDUPFPDESC.Value*100)),'0',14))
                   +iif(Frm_ExpDM.Qr_FPCRDUPFPCODEMP.Value>100,'1','0')
                   +insere('0','0',10)
                   +iif(Frm_ExpDM.Qr_FPCRDUPFPDTBX.Value<=pdatanula,insere2('0','0',8),
                        FormatDatetime('yyyymmdd',Frm_ExpDM.Qr_FPCRDUPFPDTBX.Value))
                   );
      Frm_ExpDM.Qr_FPCRDUP.Next;
      end;

// fim das duplicatas baixadas



// documentos Recebidos
   Frm_ExpDM.GroupBox4.Caption:='Processando o arquivo de Documentos Recebidos...';
   Frm_ExpDM.GroupBox4.Update;

   While not Frm_ExpDM.Qr_FPCR.Eof do
      begin
      mlidg:=mlidg+1;
      mlidfp:=mlidfp+1;
      if mlidfp>mtotfp then
         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidd*100 div mtotfp;
      Writeln(f_retorno,'024'+iif(Frm_ExpDM.Qr_FPCRFPSEQ.Value<0,FormatFloat('000000000',Frm_ExpDM.Qr_FPCRFPSEQ.Value),
                   FormatFloat('0000000000',Frm_ExpDM.Qr_FPCRFPSEQ.Value))
                   +iif(Frm_ExpDM.Qr_FPCRFPLOTE.Value<0,FormatFloat('000000000',Frm_ExpDM.Qr_FPCRFPLOTE.Value),
                   FormatFloat('0000000000',Frm_ExpDM.Qr_FPCRFPLOTE.Value))
                   +iif(Frm_ExpDM.Qr_FPCRFPVALOR.Value<0,'00000000000000',
                        insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_FPCRFPVALOR.Value*100)),'0',14))
                   +FormatDatetime('yyyymmdd',Frm_ExpDM.Qr_FPCRFPDATA.Value)
                   +'00'
                   +iif(Frm_ExpDM.Qr_FPCRFPFORMA.Value<0,FormatFloat('0',Frm_ExpDM.Qr_FPCRFPFORMA.Value),
                   FormatFloat('00',Frm_ExpDM.Qr_FPCRFPFORMA.Value))
                   +iif(Frm_ExpDM.Qr_FPCRFPNUMERO.Value<0,FormatFloat('000000000',Frm_ExpDM.Qr_FPCRFPNUMERO.Value),
                   FormatFloat('0000000000',Frm_ExpDM.Qr_FPCRFPNUMERO.Value))
                   +iif(Frm_ExpDM.Qr_FPCRFPBANCO.Value<0,FormatFloat('00',Frm_ExpDM.Qr_FPCRFPBANCO.Value),
                   FormatFloat('000',Frm_ExpDM.Qr_FPCRFPBANCO.Value))
                   +insere2(
                   iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_FPCRFPSERIE.Value,mRetCar,mIncCar),
                   Frm_ExpDM.Qr_FPCRFPSERIE.Value),' ',10)
                   +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_FPCRFPCC.Value,mRetCar,mIncCar),
                   Frm_ExpDM.Qr_FPCRFPCC.Value),' ',20)
                   +insere('0','0',4) // compensacao
                   +insere(' ',' ',40) // Emitente
                   +insere(' ',' ',40) // rg
                   +insere('0','0',14) // CNPJ
                   +insere('0','0',08) // data de nascimento
                   +'00'
                   +iif(Frm_ExpDM.Qr_FPCRFPCODEMP.Value>100,'1','0')
                   +insere('0','0',10)
                   +insere2('0','0',5) // agencia
                   );

      Frm_ExpDM.Qr_FPCR.Next;
      end;
// fim das duplicatas baixadas


   While not Frm_ExpDM.Qr_Ped01.Eof do
      begin
      mlidg:=mlidg+1;
      mlidd:=mlidd+1;
//      if mlidd>mtotd then
//         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidd*100 div mtotd;
      Writeln(f_retorno,'035'+insere(Frm_ExpDM.Qr_Ped01P1NPEDORI.AsString,'0',10)
                     +FormatDatetime('yyyymmdd',Frm_ExpDM.Qr_Ped01P1DATAP.Value)
                     +insere(Frm_ExpDM.Qr_Ped01P1CODCLI.AsString,'0',14)
                     +insere(Frm_ExpDM.Qr_Ped01P1CODVEN.AsString,'0',14)
                     +insere2(Frm_ExpDM.Qr_Ped01P1TABPV.AsString,' ',02)
                     +insere(Frm_ExpDM.Qr_Ped01P1CODPV.AsString,'0',05)
                     +insere(Frm_ExpDM.Qr_Ped01P1BANCO.AsString,'0',03)
                     +insere(Frm_ExpDM.Qr_Ped01P1FRETEPC.AsString,'0',01)
                     +insere(  FormatFloat('00',Frm_ExpDM.Qr_Ped01P1DESC01.Value*100), '0',06)
                     +insere( Formatfloat('0', ValFloat(PalNum_sis(Frm_ExpDM.Qr_Ped01P1SUBMOD.value))),'0',3)
                     +insere2(Frm_ExpDM.Qr_Ped01P1OBS1.Value,' ',70)
                     +insere( Frm_ExpDM.Qr_Ped01P1CODURG.AsString,'0',02)
                     +insere( Frm_ExpDM.Qr_Ped01CCNPJ.AsString,'0',14)
                     +insere( Frm_ExpDM.Qr_Ped01P1CHAVE.AsString,'0',10)
                     +insere( Frm_ExpDM.Qr_Ped01P1ORDEM.AsString,'0',04)
                     +insere( FormatFloat('00',Frm_ExpDM.Qr_Ped01P1TOTALL.Value*100), '0',14)
                   );
      Frm_ExpDM.Qr_Ped01.Next;
      end;


   While not Frm_ExpDM.Qr_Ped02.Eof do
      begin
      mlidg:=mlidg+1;
      mlidd:=mlidd+1;
//      if mlidd>mtotd then
//         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidd*100 div mtotd;
      if Frm_ExpDM.Qr_Ped02P2DTVCTO.AsDateTime>pdatanula then
         mcinst4:=FormatDatetime('yyyymmdd', Frm_ExpDM.Qr_Ped02P2DTVCTO.Value)
      else
         mcinst4:=insere('0','0',08);
      Writeln(f_retorno,'040'+insere(Frm_ExpDM.Qr_Ped02P1NPEDORI.AsString,'0',10)
                     +insere(Frm_ExpDM.Qr_Ped02P2CODPRO.AsString,'0',14)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2QTD.Value*1000), '0',14)
                     +insere( FormatFloat('00',Frm_ExpDM.Qr_Ped02P2DESC1.Value*100), '0',04)
                     +insere( FormatFloat('00',Frm_ExpDM.Qr_Ped02P2DESC2.Value*100), '0',04)
                     +insere( FormatFloat('00',Frm_ExpDM.Qr_Ped02P2DESC3.Value*100), '0',04)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2PRECO.Value*1000), '0',14)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2PCOTAB.Value*1000), '0',14)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2PDESCF.Value*100), '0',06)
                     +insere( FormatFloat('000',(Frm_ExpDM.Qr_Ped02P2TOTDES.Value+Frm_ExpDM.Qr_Ped02P2DESCRAT.Value)*100), '0',14)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2ICMSR.Value*100), '0',14)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2TOTLIQ.Value*100), '0',14)
                     +insere( Frm_ExpDM.Qr_Ped02P2CHAVE.AsString, '0',10)
                     +insere( Frm_ExpDM.Qr_Ped02P2ORDEM.AsString, '0',04)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2BASEN.Value*100), '0',14)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2ICMSN.Value*100), '0',14)
                     +iif(Frm_ExpDM.Qr_Ped02P2ALIQ.AsFloat=0,
                                 insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2ALIQNR.Value*100), '0',06)
                                ,insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2ALIQ.Value*100), '0',06))
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2REPAS.Value*100), '0',14)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2BASER.Value*100), '0',14)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2ALIPI.Value*100), '0',06)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2VALIPI.Value*100), '0',14)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2VDESCF.Value*100), '0',14)
                     +insere( Frm_ExpDM.Qr_Ped02P2SIT.Value, '0',03)
                     +insere( FormatFloat('000',Frm_ExpDM.Qr_Ped02P2CFO.Value), '0',05)
                     +insere2(Frm_ExpDM.Qr_Ped02P2PROMOCAO.AsString,' ',10)
                     +insere2(Frm_ExpDM.Qr_Ped02P2LOTE.AsString,' ',20)
                     +mcinst4);
      Frm_ExpDM.Qr_Ped02.Next;
      end;
    end;


{ Layout do arquivo de clientes  010
IDENTIF    03     01     03
TIPO       01     04     04    // Tipo de Pessoa 0-Juridica 1-Fisica
CCODCLI    14     05     18
CNPJ       14     19     32    // CNPJ do cliente
CIE        40     33     72    // Inscrição Estadual do cliente
CRAZAO     40     73    112    // Razão Social do Cliente
CDENOM     40    113    152    // Denominação/nome de fantasia do cliente
CENDER     40    153    192    // Endereço do cliente
CBAIRRO    30    193    222    // Bairro do cliente
CCIDADE    30    223    252    // Cidade do Cliente
CUF        02    253    254    // Unidade da Federação do cliente
CCONT      30    255    284    // Pessoa de Contato
CFONE      20    285    304    // Telefone do Cliente
CFAX       20    305    324    // Fax do Cliente
CEMAIL     60    325    384    // EMail do Cliente
CCEP       09    385    393    // CEP
CTABPV     02    394    395    // Tabela do Plano de Vendas
CCODPV     05    396    400    // Código do Plano de Vendas
CDESC01    06    401    406    // Percentual de Desconto 01  2 decimais sem ponto
CPCOPRAT   01    407    407    // preco praticados 0-Padrao 1,2 e 3 do cadastro produto
CICMSRET   01    408    408    // Icms Retido 0-Nao 1-Sim
CREPAS     01    409    409    // Repasse icms  0-Nao 1-Sim
CFRETEPC   01    410    410    // Frete 1-Cif 2-Fob
CIPI       01    411    411    // IPI 0-Nao 1-Sim
CDESC02    06    412    417    // Percentual de Desconto 02  2 decimais sem ponto
CDESC03    06    418    423    // Percentual de Desconto 02  2 decimais sem ponto
CDESCFIN                 06    424    429    // Percentual de Desconto Financeiro
CALIQDEB                 006     430    435    // Percentual de Aliquota de Debito
COD.REDE        	014	436	449	N	Código da Rede do Cliente
COD.VENDEDOR    	014	450	463	N	Código do Vendedor
LIM.CRED                 14   464   477  com 2 casas decimais e sem ponto decimal
SIT.CLIENTE	        002	478	479	N	Situação do Cliente 0-Normal 1-Bloquado
DT.VCTO.ALVARA MUNIC	08	480	487	N	Data de Vencimento do Alvará da Vigilância Sanitária Municipal formato yyyymmdd
DT.VCTO.ANVISA	        08	488	495	N	Data de Vencimento do Alvará da Vigilância Sanitária ANVISAl formato yyyymmdd
DT.CADASTRO	        08	496	503	N	Data do Cadastrao formato yyyymmdd
COBS            	60	504	563	N	Observações do cliente
DT.ULT.CPR      	08	564	571	N	Data da Ultima Compra yyyymmdd
COD_BCO                	05	572	576	N	Código do Banco






{ Layout do arquivo de UF  013
IDENTIF    03     01     03
PTABELA    01     04     04    // Validos 0 e 1
PUF        02     05     06    // Uf
PIVAPOS    06     07     12    // IVA Produtos positivos com 2 decimais e sem o ponto
PIVANEG    06     13     18    // IVA Produtos negativos com 2 decimais e sem o ponto
PIVAINA    06     19     24    // IVA Produtos inalterados com 2 decimais e sem o ponto
PREDUTRA   06     25     30    // Redutor Retido Tabela A  com 2 decimais e sem o ponto
PREDUTRB   06     31     36    // Redutor Retido Tabela B  com 2 decimais e sem o ponto
PICMSCRED  06     37     42    // Icms Credito com 2 decimais e sem o ponto
PICMSDEB   06     43     48    // Icms Debito com 2 decimais e sem o ponto
PTIPCAL    01     49     49    // Calcular icms Sub. Sob S-PMC N-Iva
PCALCRET   01     50     50    // Calcular icms Sub.(DEBITO) Sob 1-Valor Liq 0-Valor Bruto
PTIPOPCO   01     51     51    // Preços Praticados no Estado, 1,2,3
PREPAS     06     52     57    // % Repasse de Icms com 2 decimais e sem o ponto



}
if pTabCli then
   begin
   fExportarCliente(0);
// cidade
   While not Frm_ExpDM.Qr_Loc.Eof do
      begin
      mlidg:=mlidg+1;
      mlidc:=mlidc+1;
      if mlidc>mtotc then
         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidc*100 div mtotc;
      Writeln(f_retorno,'011'+insere(Frm_ExpDM.Qr_LocCCODLOC.AsString,'0',14)
               +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_LocCCIDADE.AsString,mRetCar,mIncCar),
               Frm_ExpDM.Qr_LocCCIDADE.AsString),' ',40)
               +insere2(Frm_ExpDM.Qr_LocCUF.AsString,' ',02) );
      Frm_ExpDM.Qr_Loc.Next;
      end;

// rede de cliente
   While not Frm_ExpDM.Qr_RedeCli.Eof do
      begin
      mlidg:=mlidg+1;
      mlidc:=mlidc+1;
      if mlidc>mtotc then
         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidc*100 div mtotc;
      Writeln(f_retorno,'012'+insere(Frm_ExpDM.Qr_RedeCliRDCODRED.AsString,'0',14)
               +insere(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_RedeCliRDNOME.AsString,mRetCar,mIncCar),
               Frm_ExpDM.Qr_RedeCliRDNOME.AsString),' ',40) );
      Frm_ExpDM.Qr_RedeCli.Next;
      end;



// Estado
   While not Frm_ExpDM.Qr_UF.Eof do
      begin
      mlidg :=mlidg+1;
      mliduf:=mliduf+1;
      if mliduf>mtotuf then
         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mliduf*100 div mtotuf;
      Writeln(f_retorno,'013'
      +iif(Frm_ExpDM.Qr_UFPCODEMP.Value>100,'1','0')
      +insere(Frm_ExpDM.Qr_UFPUF.Value,' ',2)
      +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_UFPIVAPOS.Value*100)),'0',06)
      +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_UFPIVANEG.Value*100)),'0',06)
      +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_UFPIVAINA.Value*100)),'0',06)
      +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_UFPREDUTRA.Value*100)),'0',06)
      +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_UFPREDUTRB.Value*100)),'0',06)
      +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_UFPICMSC.Value*100)),'0',06)
      +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_UFPICMSD.Value*100)),'0',06)
      +insere(Frm_ExpDM.Qr_UFPTIPCAL.Value,' ',1)
      +iif(Frm_ExpDM.Qr_UFPCALCRET.Value<0,'0',
       FormatFloat('0',Frm_ExpDM.Qr_UFPCALCRET.Value))
      +iif(Frm_ExpDM.Qr_UFPTIPOPCO.Value<0,'0',
       FormatFloat('0',Frm_ExpDM.Qr_UFPTIPOPCO.Value))
      +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_UFPREPAS.Value*100)),'0',06));
      Frm_ExpDM.Qr_UF.Next;
      end;


   end;


{ Layout do arquivo de Plano de Vendas 015-

Item	Descrição	Tam.	Posição Inicial	Posição Final	Tipo do Campo	Conteúdo
01	IDENTIF	003	001	003	N	Fixo: 015
02	TABPV	002	004	005	C	Tabela do Plano de Vendas
03	CODPV	        005	006	010	N	Código do Plano de Vendas
04	NOME	040	011	050	C	Nome do Plano de Vendas
05	TIPO D.COM	001	051	051	N	Tipo de Desconto Comercial 0-PV, 1-Cad.Cli 2-Extra Dig
06	%DESC.COML.	006	052	057	N	% de desconto comercial quando do plano de vendas com 2 decimais Não precisa colocar o ponto decimal
07	TIPO D.ITEM 01	001	058	058	N	Tipo de desconto 01 do item 0-PV, 1-Cad.Pro, 2-Cad.Cli, 3-Extra Digitado 4-Tabela de Status do Produto
08	% DESC.ITEM 01	006	059	064	N	% de Desconto do item 01 quando do plano de vendas com 2 decimais Não precisa colocar o ponto decimal
09	PVTPD2	001	065	065	N	Tipo de Desconto do item 02 0-PV, 1-Cad.Pro, 2-Cad.Cli, 3-Extra, 4-Tab.Status do Produto.
10	PVDES2	006	066	071	N	% de desconto do item 02 quando do plano de vendas. Com 2 decimais Não precisa colocar o ponto decimal
11	PVTPD3	001	072	072	N	Tipo de desconto do item 03. 0-PV, 1-Cad.Pro, 2-Extra Digitado, 3-Tabela de Status do Produto
12	PVDES3	006	073	078	N	% Desconto do item 03 quando do plano de vendas. Com 2 decimais Não precisa colocar o ponto decimal
13	PVD2S0	006	079	084	N	%Desconto do item 02 quando produto for do status 0. Com 2 Decimais Não precisa colocar o ponto decimal
14	PVD2S1	006	085	090	N	%Desconto do item 02 quando produto for do status 1. Com 2 Decimais Não precisa colocar o ponto decimal
15	PVD2S2	006	091	096	N	%Desconto do item 02 quando produto for do status 2. Com 2 Decimais Não precisa colocar o ponto decimal
16	PVD2S3	006	097	102	N	%Desconto do item 02 quando produto for do status 3. Com 2 Decimais Não precisa colocar o ponto decimal
17	PVD2S4	006	103	108	N	%Desconto do item 02 quando produto for do status 4. Com 2 Decimais Não precisa colocar o ponto decimal
18	PVD2S5	006	109	114	N	%Desconto do item 02 quando produto for do status 5. Com 2 Decimais Não precisa colocar o ponto decimal
19	PVD2S6	006	115	120	N	%Desconto do item 02 quando produto for do status 6. Com 2 Decimais Não precisa colocar o ponto decimal
20	PVD2S7	006	121	126	N	%Desconto do item 02 quando produto for do status 7. Com 2 Decimais Não precisa colocar o ponto decimal
21	PVTPDESCF	002	127	128	N	Tipo do Desconto Financeiro. 0-Cadastro de Produtos. 1-Cadastro de Fornecedores. 2-Grupo de Produtos. 3-Plano de Vendas. 4-Intervalo de Descontos. 5-Ref.Tabela de Status de Produtos. 6-Extra(Digitado)
21	PVDESCFIN	006	129	134	N	%Desconto de desconto financeiro. Não precisa colocar o ponto decimal
22	PVD1S0	006	135	140	N	%Desconto do item 01 quando produto for do status 0. Com 2 Decimais Não precisa colocar o ponto decimal
23	PVD1S1	006	141	146	N	%Desconto do item 01 quando produto for do status 1. Com 2 Decimais Não precisa colocar o ponto decimal
24	PVD1S2	006	147	152	N	%Desconto do item 01 quando produto for do status 2. Com 2 Decimais Não precisa colocar o ponto decimal
25	PVD1S3	006	153	158	N	%Desconto do item 01 quando produto for do status 3. Com 2 Decimais Não precisa colocar o ponto decimal
26	PVD1S4	006	159	164	N	%Desconto do item 01 quando produto for do status 4. Com 2 Decimais Não precisa colocar o ponto decimal
27	PVD1S5	006	165	170	N	%Desconto do item 01 quando produto for do status 5. Com 2 Decimais Não precisa colocar o ponto decimal
28	PVD1S6	006	171	176	N	%Desconto do item 01 quando produto for do status 6. Com 2 Decimais Não precisa colocar o ponto decimal
29	PVD1S7	006	177	182	N	%Desconto do item 03 quando produto for do status 7. Com 2 Decimais Não precisa colocar o ponto decimal
30	PVD3S0	006	183	188	N	%Desconto do item 03 quando produto for do status 0. Com 2 Decimais Não precisa colocar o ponto decimal
31	PVD3S1	006	189	194	N	%Desconto do item 03 quando produto for do status 1. Com 2 Decimais Não precisa colocar o ponto decimal
32	PVD3S2	006	195	200	N	%Desconto do item 03 quando produto for do status 2. Com 2 Decimais Não precisa colocar o ponto decimal
33	PVD3S3	006	201	206	N	%Desconto do item 03 quando produto for do status 3. Com 2 Decimais Não precisa colocar o ponto decimal
34	PVD3S4	006	207	212	N	%Desconto do item 03 quando produto for do status 4. Com 2 Decimais Não precisa colocar o ponto decimal
35	PVD3S5	006	213	218	N	%Desconto do item 03 quando produto for do status 5. Com 2 Decimais Não precisa colocar o ponto decimal
36	PVD3S6	006	219	224	N	%Desconto do item 03 quando produto for do status 6. Com 2 Decimais Não precisa colocar o ponto decimal
37	PVD3S7	006	225	230	N	%Desconto do item 03 quando produto for do status 7. Com 2 Decimais Não precisa colocar o ponto decimal
38	PVDFS0	006	231	236	N	%Desconto financeiro quando produto for do status 0. Com 2 Decimais Não precisa colocar o ponto decimal
38	PVDFS1	006	237	242	N	%Desconto financeiro quando produto for do status 1. Com 2 Decimais Não precisa colocar o ponto decimal
29	PVDFS2	006	243	248	N	%Desconto financeiro quando produto for do status 2. Com 2 Decimais Não precisa colocar o ponto decimal
40	PVDFS3	006	249	254	N	%Desconto financeiro quando produto for do status 3. Com 2 Decimais Não precisa colocar o ponto decimal
41	PVDFS4	006	255	260	N	%Desconto financeiro quando produto for do status 4. Com 2 Decimais Não precisa colocar o ponto decimal
42	PVDFS5	006	261	266	N	%Desconto financeiro quando produto for do status 5. Com 2 Decimais Não precisa colocar o ponto decimal
43	PVDFS6	        006	267	272	N	%Desconto financeiro quando produto for do status 6. Com 2 Decimais Não precisa colocar o ponto decimal
44	PVDFS7	        006	273	278	N	%Desconto financeiro quando produto for do status 7. Com 2 Decimais Não precisa colocar o ponto decimal
45	PVPRAZOMED	010	279	287	N	Prazo Medio do Plano
              PVPRAZOMED


}
if pPv then
   begin
   Frm_ExpDM.GroupBox4.Caption:='Processando o arquivo de Plano de Vendas...';
   Frm_ExpDM.GroupBox4.Update;
   mlidc:=0;
   While not Frm_ExpDM.Qr_PV.Eof do
      begin
      mlidg:=mlidg+1;
      mlidpv:=mlidpv+1;
      if mlidpv>mtotpv then
         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidv*100 div mtotpv;
      Writeln(f_retorno,'015'+insere2(Frm_ExpDM.Qr_PVPVCODTIP.Value,' ',2)
               +FormatFloat('00000',Frm_ExpDM.Qr_PVPVCODPV.Value)
               +insere2(iif(msubst,fSubstituirCaractere(Frm_ExpDM.Qr_PVPVNOME.Value,mRetCar,mIncCar),
               Frm_ExpDM.Qr_PVPVNOME.Value),' ',40)
               +iif(Frm_ExpDM.Qr_PVPVTPDC.Value<0,'0',
                insere(FormatFloat('0',Frm_ExpDM.Qr_PVPVTPDC.Value),'0',1))
               +iif(Frm_ExpDM.Qr_PVPVDES.Value<0,'000000',
                insere(mudaVP(FormatFloat('000',Frm_ExpDM.Qr_PVPVDES.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVTPD1.Value<0,'0',
                insere(FormatFloat('0',Frm_ExpDM.Qr_PVPVTPD1.Value),'0',1))
               +iif(Frm_ExpDM.Qr_PVPVDES1.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDES1.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVTPD2.Value<0,'0',
                insere(FormatFloat('0',Frm_ExpDM.Qr_PVPVTPD2.Value),'0',1))
               +iif(Frm_ExpDM.Qr_PVPVDES2.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDES2.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVTPD3.Value<0,'0',
                insere(FormatFloat('0',Frm_ExpDM.Qr_PVPVTPD3.Value),'0',1))
               +iif(Frm_ExpDM.Qr_PVPVDES3.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDES3.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD2S0.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD2S0.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD2S1.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD2S1.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD2S2.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD2S2.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD2S3.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD2S3.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD2S4.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD2S4.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD2S5.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD2S5.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD2S6.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD2S6.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD2S7.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD2S7.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVTPDESF.Value<0,'00',
                insere(mudaVP(FormatFloat('00',Frm_ExpDM.Qr_PVPVTPDESF.Value)),'0',02))
               +iif(Frm_ExpDM.Qr_PVPVDESCF.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDESCF.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD1S0.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD1S0.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD1S1.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD1S1.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD1S2.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD1S2.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD1S3.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD1S3.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD1S4.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD1S4.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD1S5.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD1S5.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD1S6.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD1S6.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD1S7.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD1S7.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD3S0.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD3S0.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD3S1.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD3S1.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD3S2.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD3S2.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD3S3.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD3S3.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD3S4.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD3S4.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD3S5.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD3S5.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD3S6.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD3S6.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVD3S7.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVD3S7.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVDFS0.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDFS0.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVDFS1.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDFS1.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVDFS2.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDFS2.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVDFS3.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDFS3.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVDFS4.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDFS4.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVDFS5.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDFS5.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVDFS6.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDFS6.Value*100)),'0',06))
               +iif(Frm_ExpDM.Qr_PVPVDFS7.Value<0,'000000',
                insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_PVPVDFS7.Value*100)),'0',06))
               +insere(Frm_ExpDM.Qr_PVPVPRAZOMED.AsString,'0',10)
                );
      Frm_ExpDM.Qr_Pv.Next;
      end;
   end;
{ Layout do arquivo do Vendedor  025-
IDENTIF    03     01     03    // identificação do registro
CODVEN     05     04     08    // Código do Vendedor
NOMVEN     40     09     48    // Nome do Vendedor
CODSUP     05     49     53    // Código do Supervisor
NOMSUP     40     54     93    // Nome do Supervisor
FONECOM    20     94    113    // Telefone comercial
CELULAR    20    114    133    // Telefone Celular
EMAIL      70    134    203    // E Mail

}

if (pTabCli) or (pDupAb) or (pPv) then
   begin
   Frm_ExpDM.GroupBox4.Caption:='Processando o arquivo de Vendedores...';
   Frm_ExpDM.GroupBox4.Update;
   mlidc:=0;
   While not Frm_ExpDM.Qr_Ven.Eof do
      begin
      mlidg:=mlidg+1;
      mlidv:=mlidv+1;
      if mlidv>mtotv then
         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidv*100 div mtotv;
      Writeln(f_retorno,'025'+insere(Frm_ExpDM.Qr_VenVCODVEN.AsString,'0',5)
                     +insere2(iif(msubst,fSubstituirCaractere(Frm_ExpDM.Qr_VenVNOME.AsString,mRetCar,mIncCar),
                     Frm_ExpDM.Qr_VenVNOME.AsString),' ',40)
                     +insere(Frm_ExpDM.Qr_VenVCODSUP.AsString,'0',5)
                     +insere2(Frm_ExpDM.Qr_Vennomesup.Value,' ',40)
                     +insere2(Frm_ExpDM.Qr_VenVFONECOM.Value,' ',20)
                     +insere2(Frm_ExpDM.Qr_VenVCELULAR.Value,' ',20)
                     +insere2(Frm_ExpDM.Qr_Venvemail.Value,' ',70)
                     +insere(mudaVP(FormatFloat('00000',Frm_ExpDM.Qr_VenVDM_DESCMAXITEM.Value*100)),'0',06)
                     +insere2('0','0',06) // desconto maximo geral
                     +insere2(Frm_ExpDM.Qr_VenVDM_PCOEXTRA.AsString,'0',01) // Aceita preco extra 0-Nao 1-sim
                     +insere(mudaVP(FormatFloat('00000',Frm_ExpDM.Qr_VenVDM_ACREMAXITEM.Value*100)),'0',07)
                     );

      Frm_ExpDM.Qr_Ven.Next;
      end;
   end;


{ Resumo do layout de Produtos 005-produtos
IDENTIF    03     1     03
CODPRO     13     4     16
NOME       53    17     69
MARCA      40    70    109
UND         3   110    112
SIT         3   113    115
PRECO      14   116    129   com 3 casas decimais e sem o decimal separator o ponto '.'
PRECO2     14   130    143   com 3 casas decimais e sem o decimal separator o ponto '.'
PRECO3     14   144    157   com 3 casas decimais e sem o decimal separator o ponto '.'
PMC        14   158    171   com 3 casas decimais e sem o decimal separator o ponto '.'
DESC01     06   172    177   com 2 casas decimais e sem o decimal separator o ponto '.'
DESC02     06   178    183   com 2 casas decimais e sem o decimal separator o ponto '.'
SALDO      14   184    197   com 3 casas decimais e sem o decimal separator o ponto '.'
LISTA      01   198    198   Lista positiva, negativa, inalterada
TABELA     01   199    199   Tabela de icms do Produto a,b,c...
CODTIP     05   200    204   Código do Tipo do Produto
IPI        06   205    210   % de ipi do produto  com 2 decimais e sem o ponto
OBS        50   211    260   Observacoes diversas
DESC03     06   261    266   com 2 casas decimais e sem o decimal separator o ponto '.'
DESCFIN    06   267    272   com 2 casas decimais e sem o decimal separator o ponto '.'
EMBPAD     06   273    278   com 2 casas decimais e sem o decimal separator o ponto '.'
CODFOR    014	279    292	N	Código do Fornecedor
CODRAM	  014	293    306	N	Código Ramo do Produto
CODVEN	  014	307    320	N	Vendedor Permitido
CODBAR	  014	321    340	N	codigo de Barras
PRAZO	  005	341    345	N	Prazo
STATUS	  002	346    347	N	Status


}


if pTabPro then
   begin
   Frm_ExpDM.GroupBox4.Caption:='Processando o arquivo de Produtos...';
   Frm_ExpDM.GroupBox4.Update;
   if Trim(Frm_ExpDM.Edit1.Text)<>'' then
      mtotp:=StrToInt('0'+Trim(Frm_ExpDM.Edit1.Text)); // Retirar lindomar
   if Frm_ExpDM.CB_XML.Checked then
      begin
      if Frm_ExpDM.ClientDataSet1.Active then
         Frm_ExpDM.ClientDataSet1.Close;
      Frm_ExpDM.ClientDataSet1.Fields.Clear;
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('CODPRO',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('NOME',ftString,53,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('MARCA',ftString,40,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('UND',ftString,03,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('SIT',ftString,03,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('PRECO01',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('PRECO02',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('PRECO03',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('PMC',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('DESC01',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('DESC02',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('SALDO',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('LISTA',ftInteger,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('TABELA',ftString,01,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('CODTIP',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.FieldDefs.Add('IPI',ftFloat,0,False);
      Frm_ExpDM.ClientDataSet1.CreateDataSet;
      Frm_ExpDM.ClientDataSet1.Open;

      end;
   While not Frm_ExpDM.Qr_Pro.Eof do
      begin
      mlidg:=mlidg+1;
      mlidp:=mlidp+1;
      if (Frm_ExpDM.Qr_ProPDNOME.IsNull) or (Frm_ExpDM.Qr_ProPDNOME.Value[1]='_') then
         begin
         Frm_ExpDM.Qr_Pro.Next;
         Continue;
         end;
//      if mlidp>mtotp then
//         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidp*100 div mtotp;
      if Frm_ExpDM.CB_XML.Checked then
         begin
         Frm_ExpDM.ClientDataSet1.Append;
         Frm_ExpDM.ClientDataSet1.FieldByName('CODPRO').AsFloat  :=Frm_ExpDM.Qr_ProPDCODPRO.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('NOME').AsString   :=Frm_ExpDM.Qr_ProPDNOME.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('MARCA').AsString  :=Frm_ExpDM.Qr_ProPDMARCA.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('UND').AsString    :=Frm_ExpDM.Qr_ProPDUND.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('SIT').AsString    :=Frm_ExpDM.Qr_ProPDSIT.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('PRECO01').AsFloat :=Frm_ExpDM.Qr_ProPDPRECO1.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('PRECO02').AsFloat :=Frm_ExpDM.Qr_ProPDPRECO2.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('PRECO03').AsFloat :=Frm_ExpDM.Qr_ProPDPRECO3.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('PMC').AsFloat     :=Frm_ExpDM.Qr_ProPDPMC.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('DESC01').AsFloat  :=Frm_ExpDM.Qr_ProPDDESC1.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('DESC02').AsFloat  :=Frm_ExpDM.Qr_ProPDDESC2.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('SALDO').AsFloat   :=Frm_ExpDM.Qr_ProPDSALDO.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('LISTA').AsInteger :=Frm_ExpDM.Qr_ProPDLISTA.AsInteger;
         Frm_ExpDM.ClientDataSet1.FieldByName('TABELA').AsString :=Frm_ExpDM.Qr_ProPDTABICM.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('CODTIP').AsFloat  :=Frm_ExpDM.Qr_ProPDCODTIP.Value;
         Frm_ExpDM.ClientDataSet1.FieldByName('IPI').AsFloat     :=Frm_ExpDM.Qr_ProPDIPI.Value;
         Frm_ExpDM.ClientDataSet1.Post;
         end
      else
         begin
         mSaldo:=Frm_ExpDM.Qr_ProPDSALDO.Value;
         if not Frm_ExpDM.CB_ESTREAL.Checked then
            begin
            if msaldo>0 then
               msaldo:=1;
            end;
         if msaldo<0 then
            msaldo:=0;
         Writeln(f_retorno,'005'+
                 insere(Frm_ExpDM.Qr_ProPDCODPRO.AsString,'0',13)
                   +insere2(iif(msubst,fSubstituirCaractere(Frm_ExpDM.Qr_ProPDNOME.Value,mRetCar,mIncCar),
                   Frm_ExpDM.Qr_ProPDNOME.Value),' ',53)
                   +insere2(iif(msubst,fSubstituirCaractere(Frm_ExpDM.Qr_ProPDMARCA.Value,mRetCar,mIncCar),
                   Frm_ExpDM.Qr_ProPDMARCA.Value),' ',20)
                   +insere2(iif(msubst,fSubstituirCaractere(Frm_ExpDM.Qr_ProPDNOMGRU.Value,mRetCar,mIncCar),
                   Frm_ExpDM.Qr_ProPDNOMGRU.Value),' ',20)
                   +insere2(Frm_ExpDM.Qr_Propdund.Value,' ',3)
                   +insere(Frm_ExpDM.Qr_ProPDSIT.Value,'0',3)
                   +insere(mudaVP(FormatFloat('00000',Frm_ExpDM.Qr_ProPDPRECO1.Value*1000)),'0',14)
                   +insere(mudaVP(FormatFloat('00000',Frm_ExpDM.Qr_ProPDPRECO2.Value*1000)),'0',14)
                   +insere(mudaVP(FormatFloat('00000',Frm_ExpDM.Qr_ProPDPRECO3.Value*1000)),'0',14)
                   +insere(mudaVP(FormatFloat('00000',Frm_ExpDM.Qr_ProPDPMC.Value*1000)),'0',14)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_ProPDDESC1.Value*100)),'0',06)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_ProPDDESC2.Value*100)),'0',06)
                   +insere(mudaVP(FormatFloat('00000',mSaldo*1000)),'0',14)
                   +insere(Frm_ExpDM.Qr_ProPDLISTA.AsString,'0',1)
                   +insere(Frm_ExpDM.Qr_ProPDTABICM.Value,'A',1)
                   +insere(FormatFloat('00000',Frm_ExpDM.Qr_ProPDCODTIP.Value),'0',5)
                   +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_ProPDIPI.Value*100)),'0',06)
                   +insere2(iif(msubst,fSubstituirCaractere(Frm_ExpDM.Qr_ProPDNOME2.Value,mRetCar,mIncCar),
                   Frm_ExpDM.Qr_ProPDNOME2.Value),' ',44)

                   +iif(Frm_ExpDM.Qr_ProPDEMBMUL.Value<=0,'000001',
                        insere(FormatFloat('0000',Frm_ExpDM.Qr_ProPDEMBMUL.Value),'0',06))

                   +iif(Frm_ExpDM.Qr_ProPDDESC3.Value<0,'000000',
                        insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_ProPDDESC3.Value*100)),'0',06))
                   +iif(Frm_ExpDM.Qr_ProPDDESFIN.Value<0,'000000',
                        insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_ProPDDESFIN.Value*100)),'0',06))
                   +iif(Frm_ExpDM.Qr_ProPDEMBPAD.Value<0,'000000',
                        insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_ProPDEMBPAD.Value)),'0',06))
                   +insere(Frm_ExpDM.Qr_ProPDCODFOR.AsString,'0',14)
                   +insere(Frm_ExpDM.Qr_ProPDCODRAM.AsString,'0',14)
                   +insere(Frm_ExpDM.Qr_Procodven_blq.AsString,'0',14)
                   +insere(Frm_ExpDM.Qr_ProPDCODBAR.AsString,'0',20)
                   +insere(Frm_ExpDM.Qr_ProPDPRAZO.AsString,'0',05)
                   +insere(Frm_ExpDM.Qr_ProPDSTATUS.AsString,'0',02)
                   );
         end;
      Frm_ExpDM.Qr_Pro.Next;
      end;

   Frm_ExpDM.Qr_RPro.First;

   While not Frm_ExpDM.Qr_RPro.Eof do
      begin
      mlidg:=mlidg+1;
      mlidp:=mlidp+1;
//      if mlidp>mtotp then
//         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidp*100 div mtotp;
      Writeln(f_retorno,'006'+insere(Frm_ExpDM.Qr_RProRCODRAM.AsString,'0',14)
                   +insere2(iif(msubst,fSubstituirCaractere(Frm_ExpDM.Qr_RProRNOME.Value,mRetCar,mIncCar),
                   Frm_ExpDM.Qr_RProRNOME.Value),' ',40));
      Frm_ExpDM.Qr_RPro.Next;
      end;

   Frm_ExpDM.Qr_For.First;

   While not Frm_ExpDM.Qr_For.Eof do
      begin
      mlidg:=mlidg+1;
      mlidp:=mlidp+1;
//      if mlidp>mtotp then
//         break;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidp*100 div mtotp;
      Writeln(f_retorno,'007'+insere(Frm_ExpDM.Qr_ForFCODFOR.AsString,'0',14)
                   +insere2(iif(msubst,fSubstituirCaractere(Frm_ExpDM.Qr_ForFRAZAO.Value,mRetCar,mIncCar),
                   Frm_ExpDM.Qr_ForFRAZAO.Value),' ',40));
      Frm_ExpDM.Qr_For.Next;
      end;



   Frm_ExpDM.Qr_PPr.First;

   While not Frm_ExpDM.Qr_PPr.Eof do
      begin
      mlidg:=mlidg+1;
      mlidp:=mlidp+1;
      Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
      Frm_ExpDM.Gauge2.Progress:=mlidp*100 div mtotp;
      if Frm_ExpDM.Qr_PPrPPDATINI.AsDateTime<=pdatanula then
         mcinst3:=insere2('0','0',08)
      else
         mcinst3:=FormatDatetime('yyyymmdd',Frm_ExpDM.Qr_PPrPPDATINI.Value);

      if Frm_ExpDM.Qr_PPrPPDATFIN.AsDateTime<=pdatanula then
         mcinst4:=insere2('0','0',08)
      else
         mcinst4:=FormatDatetime('yyyymmdd',Frm_ExpDM.Qr_PPrPPDATFIN.Value);

      Writeln(f_retorno,'008'+insere(Frm_ExpDM.Qr_PPrPPCODPRO.AsString,'0',14)
                   +insere2(Frm_ExpDM.Qr_PPrPPPVTIP.AsString,' ',02)
                   +insere(Frm_ExpDM.Qr_PPrPPPVTAB.AsString,'0',10)
                   +insere(Frm_ExpDM.Qr_PPrPPCODRED.AsString,'0',14)
                   +insere(Frm_ExpDM.Qr_PPrPPCODREG.AsString,'0',14)
                   +insere(FormatFloat('00000',Frm_ExpDM.Qr_PPrPPPCOVDA.AsFloat *1000),'0',15)
                   +insere(FormatFloat('00000',Frm_ExpDM.Qr_PPrPPDESC_1.AsFloat*100),'0',06)
                   +insere(FormatFloat('00000',Frm_ExpDM.Qr_PPrPPDESC_2.AsFloat*100),'0',06)
                   +insere(FormatFloat('00000',Frm_ExpDM.Qr_PPrPPDESC_3.AsFloat*100),'0',06)
                   +insere(FormatFloat('00000',Frm_ExpDM.Qr_PPrPPDESC_F.AsFloat*100),'0',06)
                   +insere(FormatFloat('00000',Frm_ExpDM.Qr_PPrPPQTDMIN.AsFloat*1000),'0',15)
                   +insere(FormatFloat('00000',Frm_ExpDM.Qr_PPrPPVALMIN.AsFloat*1000),'0',15)
                   +mcinst3
                   +mcinst4
                   +insere2(Frm_ExpDM.Qr_PPrPPPROMOCAO.AsString,' ',30));
      Frm_ExpDM.Qr_PPr.Next;
      end;
    end;
if Frm_ExpDM.CB_XML.Checked then
   begin
   Frm_ExpDM.ClientDataSet1.SaveToFile('C:\CADPRO.XML',dfXML);
   end;


//aqui que tenho que gerar o retorno

CloseFile(f_Retorno);
Frm_ExpDM.GroupBox3.Visible:=False;
Frm_ExpDM.GroupBox4.Visible:=False;

if FileExists(mPastaEnvio+mArqSai+'.TXT') then
   DeleteFile(mPastaEnvio+mArqSai+'.TXT');
if FileExists(mPastaEnvio+'CADPAR.TXT') then
   DeleteFile(mPastaEnvio+'CADPAR.TXT');

if not RenameFile(mPastaEnvio+mArqSai+'.GER',mPastaEnvio+mArqSai+'.TXT') then
   begin
   fmensagem('Não Renomeou o arquivo completo !',0,['0'],0);
   end;

if not RenameFile(mPastaEnvio+'CADPAR.GER',mPastaEnvio+'CADPAR.TXT') then
   begin
   fmensagem('Não Renomeou o arquivo de parametros!',0,['0'],0);
   end;


verteclado(0);
// pOrigem=0 then
//   fmensagem('Concluido!',0,['0'],0);
result:=true;

end;
function TFrm_ExpDM.fExportarCliente(pTipo: Integer): Boolean;
var
mSubst: Boolean;
mlinha_ret,mRetCar,mIncCar: String;
begin
if Trim(Frm_ExpDM.CARRET.Text)='' then
   mSubst:=false
else
   begin
   mRetCar:=Trim(Frm_ExpDM.CARRET.Text+Frm_ExpDM.PRE_FIXADO.text);
   mIncCar:=Trim(Frm_ExpDM.CARSUB.Text);
   if length(mIncCar)<length(mRetCar) then
      mIncCar:=insere2(mIncCar,' ',length(mRetCar));
   mSubst:=true;
   end;

Frm_ExpDM.GroupBox4.Caption:='Processando o arquivo de Clientes...';
Frm_ExpDM.GroupBox4.Update;
mlidc:=0;

if Trim(Frm_ExpDM.Edit1.Text)<>'' then
   mtotc:=StrToInt('0'+Trim(Frm_ExpDM.Edit1.Text)); // Retirar lindomar

While not Frm_ExpDM.Qr_Cli.Eof do
   begin
   mlidg:=mlidg+1;
   mlidc:=mlidc+1;
   if mlidc>mtotc then
      break;
   Frm_ExpDM.Gauge1.Progress:=mlidg*100 div mtotg;
   Frm_ExpDM.Gauge2.Progress:=mlidc*100 div mtotc;
   if ptipo>7 then
      mlinha_ret:='10A'
   else
      mlinha_ret:='010';
   mlinha_ret:=mlinha_ret+insere(Frm_ExpDM.Qr_CliCTIPOC.AsString,'0',1)
            +insere(Frm_ExpDM.Qr_CliCCODCLI.AsString,'0',14)
            +iif(Frm_ExpDM.Qr_CliCTIPOC.Value=0,
            insere(Frm_ExpDM.Qr_CliCCNPJ.AsString,'0',14)+insere2(Frm_ExpDM.Qr_CliCIE.Value,' ',40),
            insere(Frm_ExpDM.Qr_CliCCPF.AsString,'0',14)
            +insere2(Frm_ExpDM.Qr_CliCRG.Value,' ',40))
            +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_CliCRAZAO.Value,mRetCar,mIncCar),
            Frm_ExpDM.Qr_CliCRAZAO.Value),' ',40)
            +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_CliCDENOM.Value,mRetCar,mIncCar),
            Frm_ExpDM.Qr_CliCDENOM.Value),' ',40)
            +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_CliCLOG.Value,mRetCar,mIncCar),
            Frm_ExpDM.Qr_CliCLOG.Value),  ' ',40)
            +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_CliCBAIRRO.Value,mRetCar,mIncCar),
            Frm_ExpDM.Qr_CliCBAIRRO.Value),' ',30)
            +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_CliCCIDADE.Value,mRetCar,mIncCar),
            Frm_ExpDM.Qr_CliCCIDADE.Value),' ',30)
            +insere2(Frm_ExpDM.Qr_CliCUF.Value,' ',02)
            +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_CliCNOMCON.Value,mRetCar,mIncCar),
            Frm_ExpDM.Qr_CliCNOMCON.Value),' ',30)
            +insere2(Frm_ExpDM.Qr_CliCFONERES.Value,' ',20)
            +insere2(Frm_ExpDM.Qr_CliCCELULAR.Value,' ',20)
            +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_CliCEMAIL.Value,mRetCar,mIncCar),
            Frm_ExpDM.Qr_CliCEMAIL.Value),' ',60)
            +insere2(Frm_ExpDM.Qr_CliCCEP.Value,' ',9)
            +insere2(Frm_ExpDM.Qr_CliCTABPV.Value,' ',2)
            +insere(Frm_ExpDM.Qr_CliCCODPV.AsString,'0',5)
            +insere(mudaVP(FormatFloat('0000',Frm_ExpDM.Qr_CliCDESC.Value*100)),'0',06)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCPCOPRAT.Value),'0',01)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCICMSR.Value),'0',01)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCREPAS.Value),'0',01)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCFRETEPC.Value),'0',01)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCIPI.Value),'0',01)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCDESC02.Value*100),'0',06)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCDESC03.Value*100),'0',06)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCDESCFIN.Value*100),'0',06)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCALIQDEB.Value*100),'0',06)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCCODRED.Value),'0',14)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCCODVEN.Value),'0',14)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCLCRED.Value*100),'0',14)
            +insere(FormatFloat('0',Frm_ExpDM.Qr_CliCSITCLI.Value),'0',02)
            +iif(Frm_ExpDM.Qr_CliCDTVALV.Value<=pdatanula,
                '00000000',
                formatDateTime('yyyymmdd',Frm_ExpDM.Qr_CliCDTVALV.Value))
            +iif(Frm_ExpDM.Qr_CliCDTANVISA.Value<=pdatanula,
                '00000000',
                formatDateTime('yyyymmdd',Frm_ExpDM.Qr_CliCDTANVISA.Value))
            +iif(Frm_ExpDM.Qr_CliCDTCAD.Value<=pdatanula,
                '00000000',
                formatDateTime('yyyymmdd',Frm_ExpDM.Qr_CliCDTCAD.Value))
            +insere2(iif(mSubst,fSubstituirCaractere(Frm_ExpDM.Qr_CliCOBS01.Value,mRetCar,mIncCar),
            Frm_ExpDM.Qr_CliCOBS01.Value),' ',60)
            +iif(Frm_ExpDM.Qr_CliCDTUCPR.Value<=pdatanula,
                '00000000',
                formatDateTime('yyyymmdd',Frm_ExpDM.Qr_CliCDTUCPR.Value))
            +insere(Frm_ExpDM.Qr_CliCCODBCO01.AsString,'0',05)
            +insere(Frm_ExpDM.Qr_CliCROTA.AsString,'0',14)
            +insere2(Inttostr(pTipo),'0',1); // situacao cadastral do cliente

   if ptipo>7 then
      Writeln(f_evento,mlinha_ret)
   else
      Writeln(f_retorno,mlinha_ret);

   Frm_ExpDM.Qr_Cli.Next;
   end;

result:=true;
end;

procedure TFrm_ExpDM.FormCreate(Sender: TObject);
begin
if not DirectoryExists('C:\DM') then
   CreateDir('C:\DM');
if not DirectoryExists('C:\DM\enviar') then
   CreateDir('C:\DM\enviar');
if not DirectoryExists('C:\DM\RECEBE') then
   CreateDir('C:\DM\RECEBE');
mPastaRec  :='C:\DM\RECEBE\';
mPastaEnvio:='C:\DM\enviar\';
if flfilpad(codusr,'_EXPDM','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_PADRAO',[]) then
      RG_PADRAO.itemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value)
   else
      RG_PADRAO.ItemIndex:=0;
   if DM4.Tb_FilPad2.Locate('FPCOMP','DUPREC',[]) then
      duprec.Text:=DM4.Tb_FilPad2FPVALOR.Value
   else
      duprec.Text:='';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CARRET',[]) then
      begin
      CARRET.Text:=DM4.Tb_FilPad2FPVALOR.Value;
      if DM4.Tb_FilPad2.Locate('FPCOMP','CARSUB',[]) then
         CARSUB.Text:=DM4.Tb_FilPad2FPVALOR.Value;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','DIASPED',[]) then
      diasped.Text:=DM4.Tb_FilPad2FPVALOR.Value
   else
      diasped.Text:='';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADPRO',[]) then
      CB_CADPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADPRO.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ESTREAL',[]) then
      CB_ESTREAL.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_ESTREAL.Checked:=true;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADCLI',[]) then
      CB_CADCLI.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADCLI.Checked:=true;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADCLI_BLOQ',[]) then
      CB_CADCLI_BLOQ.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADCLI_BLOQ.Checked:=true;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADDAR',[]) then
      CB_CADDAR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADDAR.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SOVEND',[]) then
      CB_SOVEND.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_SOVEND.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADPV',[]) then
      CB_CADPV.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADPV.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEP',[]) then
      CB_SEP.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_SEP.Checked:=false;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PROMO',[]) then
      CB_PROMO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;


if flfilpad(0,'_EXPDM','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_PADRAO',[]) then
      RG_PADRAO.itemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value)
   else
      RG_PADRAO.ItemIndex:=0;
   if DM4.Tb_FilPad2.Locate('FPCOMP','DUPREC',[]) then
      duprec.Text:=DM4.Tb_FilPad2FPVALOR.Value
   else
      duprec.Text:='';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CARRET',[]) then
      begin
      CARRET.Text:=DM4.Tb_FilPad2FPVALOR.Value;
      if DM4.Tb_FilPad2.Locate('FPCOMP','CARSUB',[]) then
         CARSUB.Text:=DM4.Tb_FilPad2FPVALOR.Value;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','DIASPED',[]) then
      diasped.Text:=DM4.Tb_FilPad2FPVALOR.Value
   else
      diasped.Text:='';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADPRO',[]) then
      CB_CADPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADPRO.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ESTREAL',[]) then
      CB_ESTREAL.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_ESTREAL.Checked:=true;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADCLI',[]) then
      CB_CADCLI.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADCLI.Checked:=true;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADCLI_BLOQ',[]) then
      CB_CADCLI_BLOQ.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADCLI_BLOQ.Checked:=true;


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADDAR',[]) then
      CB_CADDAR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADDAR.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SOVEND',[]) then
      CB_SOVEND.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_SOVEND.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CADPV',[]) then
      CB_CADPV.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CADPV.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEP',[]) then
      CB_SEP.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_SEP.Checked:=false;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PROMO',[]) then
      CB_PROMO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_ExpDM.CB_CADDARClick(Sender: TObject);
begin
if CB_CADDAR.Checked then
   begin
   lbl_duprec.Visible :=true;
   lbl_duprec2.Visible:=true;
   CB_SOVEND.Visible  :=true;
   end
else
   begin
   lbl_duprec.Visible :=false;
   lbl_duprec2.Visible:=false;
   CB_SOVEND.Visible  :=false;
   end
end;

procedure TFrm_ExpDM.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_EXPDM','');
fGravaPadroes(0,'RG_PADRAO'        ,'itemindex'  ,'_EXPDM',IntToStr(RG_PADRAO.ItemIndex));
fGravaPadroes(0,'DUPREC'           ,'text'       ,'_EXPDM',duprec.Text);
fGravaPadroes(0,'CB_CADPRO'        ,'checked'    ,'_EXPDM',iif(CB_CADPRO.Checked,'true','false'));
fGravaPadroes(0,'CB_CADCLI'        ,'checked'    ,'_EXPDM',iif(CB_CADCLI.Checked,'true','false'));
fGravaPadroes(0,'CB_CADCLI_BLOQ'   ,'checked'    ,'_EXPDM',iif(CB_CADCLI_BLOQ.Checked,'true','false'));
fGravaPadroes(0,'CB_CADDAR'        ,'checked'    ,'_EXPDM',iif(CB_CADDAR.Checked,'true','false'));
fGravaPadroes(0,'CB_SOVEND'        ,'checked'    ,'_EXPDM',iif(CB_SOVEND.Checked,'true','false'));
fGravaPadroes(0,'CB_ESTREAL'       ,'checked'    ,'_EXPDM',iif(CB_ESTREAL.Checked,'true','false'));
fGravaPadroes(0,'CB_CADPV'         ,'checked'    ,'_EXPDM',iif(CB_CADPV.Checked,'true','false'));
fGravaPadroes(0,'CB_SEP'           ,'checked'    ,'_EXPDM',iif(CB_SEP.Checked,'true','false'));
fGravaPadroes(0,'CARRET'           ,'text'       ,'_EXPDM',CARRET.Text);
fGravaPadroes(0,'CARSUB'           ,'text'       ,'_EXPDM',CARSUB.Text);
fGravaPadroes(0,'DIASPED'          ,'text'       ,'_EXPDM',diasped.Text);
fGravaPadroes(0,'CB_PROMO'         ,'checked'    ,'_EXPDM',iif(CB_PROMO.Checked,'true','false'));

end;

procedure TFrm_ExpDM.CODCLIExit(Sender: TObject);
begin
fdeixanum(CODCLI.Text);
if Trim(CODCLI.Text)='' then
   begin
   NOMCLI.Text   :='Todos...';
   end
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente Não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.AsString;
      end;
   end;


end;

procedure TFrm_ExpDM.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_ExpDM',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ExpDM.duprecExit(Sender: TObject);
begin
duprec.Text:=fdeixanum2(duprec.Text);
end;

procedure TFrm_ExpDM.diaspedExit(Sender: TObject);
begin
diasped.Text:=fdeixanum2(diasped.Text);
end;

function TFrm_ExpDM.fImpDMGerarRetorno(pLocal,pOrigem_Info: Integer;pChaveOri,pCodCli,pCnpj,pCpf,pChaveFat: Real): boolean;
{
pLocal=Retorno direto 0
       Retorno por solicitacao= 1
}
var
mChaveFat: Real;
mQtdDup: Integer;
x: Integer;
mlinha_ret: string;
mGravarRetItens: Boolean;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select P1CHAVE,P1ORDEM,P1LOTSEQ,P1NPEDORI, '
                  +' P1CODCLI,P1CODVEN,P1CODTLV,P1TABPV,P1CODPV  '
                  +',P1BANCO,P1FRETEPC,P1DESC01 '
                  +',P1SUBMOD  '
                  +',P1OBS1 '
                  +',P1TIPO '
                  +',P1CANHOTO '
                  +',P1DATHORREC '
                  +',P1NOMEREC '
                  +',P1CODPRIOR '
                  +',P1TOTALL '
                  +',P1PEDORI1 '
                  +',P1NUMNF '
                  +',P1DATANF '
                  +',P1MODELO '
                  +',P1SERIE '
                  +',P1INCTB '
                  +',P1BLOQPEND '
                  +',P1CODBLOQ '
                  +',P1CODBLOQ_LIB '
                  +',P1QTDVOL '
                  +',P1CODTRA '
                  +',P1MINUTA '
                  +',P1PREVENT '
                  +',P1HPREVENT '
                  +',P1HORADIG '
                  +',P1CODSEP '
                  +',P1DATASEP '
                  +',P1HORSEP '
                  +',P1CODEMP '
                  +',P1DATAEMB '
                  +',P1HOREMB '
                  +',P1CODCON '
                  +',P1DATCON '
                  +',P1HORCON '
                  +',P1CODEMB '
                  +',P1HOREMB '
                  +',P1DATAP '
                  +' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P1STATUS<9 ');

DM1.Query2.SQL.Add(' and P1NPEDORI=0'+FloatToStr(pChaveOri));

if pChaveFat<>0 then
   DM1.Query2.SQL.Add(' and P1CHAVE=0'+FloatToStr(pChaveFat));
if pcodcli=0 then
   begin
   if pOrigem_Info=020 then
      DM1.Query2.SQL.Add(' and P1ORIGEM=2')
   else if (pOrigem_Info=010) or (pOrigem_Info=000) then
      DM1.Query2.SQL.Add(' and P1ORIGEM=3');
   end;   



DM1.Query2.SQL.Add(' and P1CODCLI=0'+FloatToStr(pCodCli));

try
   DM1.Query2.Open;
except
   DM1.Query2.Sql.SaveToFile('c:\sql01.txt');
   exit;
   end;

if DM1.Query2.Eof then
   begin
   fimpdmCriaEvento(plocal,'045'+insere(FloatToStr(pchaveori),'0',10)+insere('0','0',14)+insere( '999999','0',10)+insere2('Pedido Nao Faturado chave: '+FloatTostr(pChaveOri),' ',40)+insere2(' ',' ',60)+FormatDatetime('yyyymmddhhss',now),'');
   result:=true;
   exit;
   end
else if DM1.Query2.FieldByName('P1TIPO').AsInteger<1 then
   begin
   fimpdmCriaEvento(plocal,'045'+insere(FloatToStr(pchaveori),'0',10)
                     +insere(DM1.Tb_Ped01P1CHAVE.AsString,'0',10)+insere('0','0',04)+insere( '888888','0',10)+insere2('Aguardando Faturamento chave: '+FloatTostr(pChaveOri),' ',40)+insere2(' ',' ',60)+FormatDatetime('yyyymmddhhss',now),'');
   result:=true;
   exit;
   end;
fimpdmCriaEvento(plocal,'Retorno do Pedido: '+FloatTostr(pChaveOri),'');

While not DM1.Query2.Eof do
   begin
   if DM1.Query2.FieldByName('P1BLOQPEND').AsInteger=2 then
      begin
      if length(DM1.Query2.FieldByName('P1CODBLOQ').AsString)>0 then
         x:=1
      else
         x:=1;
      While x<length(DM1.Query2.FieldbyName('P1CODBLOQ').AsString) do
         begin
         mcinst2:=copy(DM1.Query2.FieldbyName('P1CODBLOQ').AsString,x,2);
         if fAdicionaRemoveTexto(2,DM1.Query2.FieldbyName('P1CODBLOQ_LIB').AsString,mcinst2)='' then
            begin
            if ValInt(mcinst2)=1 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('1','0',10); //Cliente sem limite de Crédito
               mlinha_ret:=mlinha_ret+insere2('Limite de Credito Esgotado',' ',40); //Cliente sem limite de Crédito
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); // Outras Observacoes
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=2 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('2','0',10); //Cliente inadimplente
               mlinha_ret:=mlinha_ret+insere2('Inadiplencia',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); // Outras Observacoes
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=3 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('3','0',10); //Cliente inadimplente
               mlinha_ret:=mlinha_ret+insere2('Cheque Devolvido',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); // Cheque Devolvido
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=4 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('4','0',10); //Titulos Protestado
               mlinha_ret:=mlinha_ret+insere2('Titulos Protestado',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); // Cheque Devolvido
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=5 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('5','0',10); //
               mlinha_ret:=mlinha_ret+insere2('Cadastro com Restricoes Status=7',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=6 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('6','0',10); //
               mlinha_ret:=mlinha_ret+insere2('Registro Vigilancia Estadual Invalido',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=7 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('7','0',10); //
               mlinha_ret:=mlinha_ret+insere2('Registro Vigilancia Estadual Vencido',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=8 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('8','0',10); //
               mlinha_ret:=mlinha_ret+insere2('Registro da ANVISA Invalido',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);

               end
            else if ValInt(mcinst2)=9 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('9','0',10); //
               mlinha_ret:=mlinha_ret+insere2('Registro da ANVISA Vencido',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=10 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('10','0',10); //
               mlinha_ret:=mlinha_ret+insere2('Prazo Maior que Permitido',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=11 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('11','0',10); //
               mlinha_ret:=mlinha_ret+insere2('Cliente Inativo Status=9',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=20 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('20','0',10); //
               mlinha_ret:=mlinha_ret+insere2('Desconto Maior que Permitido',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else if ValInt(mcinst2)=30 then
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('30','0',10); //
               mlinha_ret:=mlinha_ret+insere2('cfop com problemas',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            else
               begin
               mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
               mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
               mlinha_ret:=mlinha_ret+insere('40','0',10); //
               mlinha_ret:=mlinha_ret+insere2('Bloqueio nao identificado',' ',40);
               mlinha_ret:=mlinha_ret+insere2(' ',' ',60); //
               mlinha_ret:=mlinha_ret +FormatDatetime('yyyymmddhhss',now);
               if plocal=1 then
                  writeln(f_retorno,mlinha_ret)
               else
                  writeln(F_Evento,mlinha_ret);
               end
            end;
         x:=x+3;
         end;
      end;
    mGravarRetItens:=true;
    if DM1.Query2.FieldByName('P1BLOQPEND').AsInteger=2 then
       begin
       mGravarRetItens:=false;
       if flqr1('CPEDELE_RETBLOQ','C','CADCLI','N','CCODCLI',DM1.Query2.FieldByName('P1CODCLI').AsString) then
          begin
          if DM1.Query1.FieldByName('CPEDELE_RETBLOQ').AsInteger=1 then
             mGravarRetItens:=true;
          end;
       end;

   if mGravarRetItens then
      begin
      mlinha_ret:='005'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
      mlinha_ret:=mlinha_ret+insere2(FormatDatetime('yyyymmdd',DM1.Query2.fieldbyName('P1DATAP').AsDateTime),'0',08);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CODCLI').AsString,'0',14);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CODVEN').AsString,'0',14);
      mlinha_ret:=mlinha_ret+insere2(DM1.Query2.fieldbyName('P1TABPV').AsString,' ',02);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CODPV').AsString,'0',05);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1BANCO').AsString,'0',03);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1FRETEPC').AsString,'0',01);
      mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query2.fieldbyName('P1DESC01').AsFloat*100),'0',06);
      mlinha_ret:=mlinha_ret+insere(PalNum_Sis(DM1.Query2.fieldbyName('P1SUBMOD').AsString),'0',03);
      mlinha_ret:=mlinha_ret+insere2(DM1.Query2.fieldbyName('P1OBS1').AsString,' ',69);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1TIPO').AsString,'0',01);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CODPRIOR').AsString,'0',02);
      if pCnpj=0 then
         mlinha_ret:=mlinha_ret+insere(FloattoStr(pCpf),'0',14)
      else
         mlinha_ret:=mlinha_ret+insere(FloattoStr(pCnpj),'0',14);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
      mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query2.fieldbyName('P1TOTALL').AsFloat*100),'0',14);
      mlinha_ret:=mlinha_ret+insere2(DM1.Query2.fieldbyName('P1PEDORI1').AsString,' ',20);
      if (DM1.Query2.FieldByName('P1DATANF').IsNull) or (DM1.Query2.FieldByName('P1DATANF').AsDateTime<=pdatanula) then
         mlinha_ret:=mlinha_ret+insere('0','0',08)
      else
         mlinha_ret:=mlinha_ret+insere2(FormatDatetime('yyyymmdd',DM1.Query2.fieldbyName('P1DATANF').AsDateTime),'0',08);
      mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1NUMNF').AsString,'0',10);
      mlinha_ret:=mlinha_ret+insere2(DM1.Query2.fieldbyName('P1MODELO').AsString,' ',03);
      mlinha_ret:=mlinha_ret+insere2(DM1.Query2.fieldbyName('P1SERIE').AsString,' ',03);
      if plocal=1 then
         writeln(f_retorno,mlinha_ret)
      else
         writeln(F_Evento,mlinha_ret);
      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.Add('Select P2CHAVE,P2ORDEM,P2LOTSEQ '
                        +',P2CODPRO,P2QTD,P2DESC1,P2DESC2,P2DESC3  '
                        +',P2PRECO,P2PCOTAB,P2PDESCF,P2TOTDES,P2ICMSR '
                        +',P2TOTLIQ,P2DTVCTO,P2LOTE,P2PROMOCAO '
                        +',P2BASEN,P2ICMSN,P2BCINR,P2ICMSNR '
                        +',P2ALIQ,P2ALIQNR,P2REPAS '
                        +',P2BASER,P2ALIPI,P2VALIPI,P2VDESCF,P2SIT,P2CFO '
                        +' from CADP02 where '
                        +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+
                        DM1.Query2.fieldbyName('P1CODEMP').AsString+' and ')
                        +' P2LOTSEQ=0'+DM1.Query2.fieldbyName('P1LOTSEQ').AsString
                        +' and P2CHAVE=0'+DM1.Query2.fieldbyName('P1CHAVE').AsString);
      try
         DM1.Query3.Open;
      except
         DM1.Query3.Sql.SaveToFile('c:\sql03.txt');
         end;
      While not DM1.Query3.Eof do
         begin
         if DM1.Query3.Fieldbyname('P2DTVCTO').AsDateTime>pdatanula then
            mcinst4:=FormatDatetime('yyyymmdd', DM1.Query3.Fieldbyname('P2DTVCTO').AsDateTime)
         else
            mcinst4:=insere('0','0',08);

         mlinha_ret:='010'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query3.fieldbyName('P2CODPRO').AsString,'0',14);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2QTD').AsFloat*1000),'0',14);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2DESC1').AsFloat*100),'0',04);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2DESC2').AsFloat*100),'0',04);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2DESC3').AsFloat*100),'0',04);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2PRECO').AsFloat*1000),'0',14);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2PCOTAB').AsFloat*1000),'0',14);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2PDESCF').AsFloat*100),'0',06);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2TOTDES').AsFloat*100),'0',14);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2ICMSR').AsFloat*100),'0',14);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2TOTLIQ').AsFloat*100),'0',14);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
         if DM1.Query3.FieldByName('P2BASEN').AsFloat<>0 then
            begin
            mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2BASEN').AsFloat*100),'0',14);
            mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2ICMSN').AsFloat*100),'0',14);
            mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2ALIQ').AsFloat*100),'0',06);
            end
         else
            begin
            mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2BCINR').AsFloat*100),'0',14);
            mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2ICMSNR').AsFloat*100),'0',14);
            mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2ALIQNR').AsFloat*100),'0',06);
            end;
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2REPAS').AsFloat*100),'0',14);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2BASER').AsFloat*100),'0',14);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2ALIPI').AsFloat*100),'0',06);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2VALIPI').AsFloat*100),'0',14);
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query3.fieldbyName('P2VDESCF').AsFloat*100),'0',14);
         mlinha_ret:=mlinha_ret+insere2(DM1.Query3.fieldbyName('P2SIT').AsString,'0',03);
         mlinha_ret:=mlinha_ret+insere(DM1.Query3.fieldbyName('P2CFO').AsString,'0',05);
         mlinha_ret:=mlinha_ret+insere2(DM1.Query3.fieldbyName('P2PROMOCAO').AsString,' ',10);
         mlinha_ret:=mlinha_ret+insere2(DM1.Query3.fieldbyName('P2LOTE').AsString,' ',20);
         mlinha_ret:=mlinha_ret+mcinst4;

         if plocal=1 then
            writeln(f_retorno,mlinha_ret)
         else
            writeln(F_Evento,mlinha_ret);
         DM1.Query3.Next;
         end;
      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.Add('Select P1VDATAV,P1VVALOR,P1VCOMISV,P1VDESCF,'
                        +' P1VDTDESCF ,P1VTARBAN '
                        +' from CADP01V where '
                        +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1VCODEMP=0'+
                        DM1.Query2.fieldbyName('P1CODEMP').AsString+' and ')
                        +' P1VLOTSEQ=0'+DM1.Query2.fieldbyName('P1LOTSEQ').AsString
                        +' and P1VCHAVE=0'+DM1.Query2.fieldbyName('P1CHAVE').AsString);
      try
         DM1.Query4.Open;
      except
         DM1.Query4.Sql.SaveToFile('c:\sql04.txt');
         exit;
         end;

      mQtdDup:=0;
      While not DM1.Query4.Eof do
         begin
         mQtdDup:=mQtdDup+1;
         mlinha_ret:='020'+insere(DM1.Query2.fieldbyName('P1NUMNF').AsString,'0',14);
         mlinha_ret:=mlinha_ret+insere2(chr(64+mQtdDup),' ',2);
         if (DM1.Query2.FieldByName('P1DATANF').IsNull) or (DM1.Query2.FieldByName('P1DATANF').AsDateTime<=pdatanula) then
            mlinha_ret:=mlinha_ret+insere2(FormatDatetime('yyyymmdd',DM1.Query2.fieldbyName('P1DATAP').AsDateTime),'0',08)
         else
            mlinha_ret:=mlinha_ret+insere2(FormatDatetime('yyyymmdd',DM1.Query2.fieldbyName('P1DATANF').AsDateTime),'0',08);
         mlinha_ret:=mlinha_ret+insere2('0','0',2); //zeros
         mlinha_ret:=mlinha_ret+insere2(FormatDatetime('yyyymmdd',DM1.Query4.fieldbyName('P1VDATAV').AsDateTime),'0',08);
         mlinha_ret:=mlinha_ret+insere2('0','0',2); //zeros
         if DM1.Query2.FieldByName('P1INCTB').AsInteger=2 then
            mlinha_ret:=mlinha_ret+insere(FloatToStr((DM1.Query4.fieldbyName('P1VVALOR').AsFloat
                                 +DM1.Query4.fieldbyName('P1VTARBAN').AsFloat) *100),'0',14)
         else
            mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query4.fieldbyName('P1VVALOR').AsFloat*100),'0',14);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CODCLI').AsString,'0',14);
         if pCnpj=0 then
            mlinha_ret:=mlinha_ret+insere(FloattoStr(pCpf),'0',14)
         else
            mlinha_ret:=mlinha_ret+insere(FloattoStr(pCnpj),'0',14);
         if DM1.Query2.FieldByName('P1CODEMP').AsInteger>99 then
            mlinha_ret:=mlinha_ret+'1'
         else
            mlinha_ret:=mlinha_ret+'0';
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
//         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',03);
         mlinha_ret:=mlinha_ret+insere('0','0',08); // data de pagamento
         mlinha_ret:=mlinha_ret+insere2('0','0',2); //zeros
         mlinha_ret:=mlinha_ret+'0'; // status
         mlinha_ret:=mlinha_ret+insere('0','0',14); // valor recebido
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CODTLV').AsString,'0',14);
         mlinha_ret:=mlinha_ret+insere('0','0',10); // Lote de Recebimento
         mlinha_ret:=mlinha_ret+insere(FloatToStr(
                                Arredonda((( (DM1.Query4.fieldbyName('P1VVALOR').AsFloat
                                 +DM1.Query4.fieldbyName('P1VTARBAN').AsFloat)
                                 *DM4.Tb_Par01PJURM.Value/100)/30),2)
                                  *100),'0',14); // juros por dia de atraso

         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query4.fieldbyName('P1VCOMISV').AsFloat*100),'0',14);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1BANCO').AsString,'0',03);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CODVEN').AsString,'0',14);
         mlinha_ret:=mlinha_ret+insere('0','0',02);  // DUP


         mlinha_ret:=mlinha_ret+insere(FloatToStr(
                                Arredonda((( (DM1.Query4.fieldbyName('P1VVALOR').AsFloat
                                 )
                                 *DM4.Tb_Par01PDESCM.Value/100)/30),2)
                                  *100),'0',14); // desconto por dia de antecipacao

         mlinha_ret:=mlinha_ret+insere(FloatToStr(
                                Arredonda((( (DM1.Query4.fieldbyName('P1VVALOR').AsFloat
                                 +DM1.Query4.fieldbyName('P1VTARBAN').AsFloat)
                                 *DM4.Tb_Par01PMULTA.Value/100)),2)
                                  *100),'0',14); // jmulta por atraso

         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query4.fieldbyName('P1VDESCF').AsFloat*100),'0',14);


         if (DM1.Query4.FieldByName('P1VDTDESCF').IsNull) or (DM1.Query4.FieldByName('P1VDTDESCF').AsDateTime<=pdatanula) then
            mlinha_ret:=mlinha_ret+insere2('0','0',08)
         else
            mlinha_ret:=mlinha_ret+insere2(FormatDatetime('yyyymmdd',DM1.Query4.fieldbyName('P1VDTDESCF').AsDateTime),'0',08);

         mlinha_ret:=mlinha_ret+insere('0','0',02); // Campo livre
         mlinha_ret:=mlinha_ret+insere('0','0',14); // juros recebidos
         mlinha_ret:=mlinha_ret+insere('0','0',14); // desconto concedido
         mlinha_ret:=mlinha_ret+insere('0','0',14); // juros debitados
         mlinha_ret:=mlinha_ret+insere('0','0',02); // juros debitados sacado 0-Cliente 1-vendedor
         mlinha_ret:=mlinha_ret+insere(FloatToStr(DM1.Query4.fieldbyName('P1VTARBAN').AsFloat*100),'0',14);
         if plocal=1 then
            writeln(f_retorno,mlinha_ret)
         else
            writeln(F_Evento,mlinha_ret);
         DM1.Query4.Next;
         end;
      if DM1.Query2.FieldByName('P1CANHOTO').AsFloat=1 then
         begin
         mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
         mlinha_ret:=mlinha_ret+insere('106','0',10); //
         mcinst4:='Mercadoria Entregue';
         if DM1.Query2.FieldByName('P1DATHORREC').AsDateTime>pdatanula then
            begin
            mcinst4:=mcinst4+'. Em '+FormatDatetime(fdt2, DM1.Query2.FieldByName('P1DATHORREC').AsDateTime)
                             +' as '+FormatDatetime(fhr, DM1.Query2.FieldByName('P1DATHORREC').AsDateTime);
            end;
         mlinha_ret:=mlinha_ret+insere2(mcinst4,' ',40);
         mcinst4:='';
         if DM1.Query2.FieldByName('P1NOMEREC').AsString<>'' then
            mcinst4:='Merc.Recepcionada por '+DM1.Query2.fieldbyName('P1NOMEREC').AsString;
         mcinst:='';
         mcinst3:='';
         if DM1.Query2.FieldByName('P1CODTRA').AsFloat<>0 then
            begin
            if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Query2.FieldbyName('P1CODTRA').AsString) then
               begin
               if trim(mcinst4)<>'' then
                  mcinst4:=mcinst4+'. Transportado por ';
               mcinst4:=mcinst4+mcinst+DM1.Query1.FieldbyName('TRRAZTRA').AsString;
               mcinst:='/'
               end;
            end;
         if DM1.Query2.FieldByName('P1QTDVOL').AsFloat=1 then
            begin
            mcinst4:=mcinst4+mcinst+DM1.Query2.FieldByName('P1QTDVOL').AsString+' Volume ';
            mcinst:='/'
            end
         else if DM1.Query2.FieldByName('P1QTDVOL').AsFloat<>0 then
            begin
            mcinst4:=mcinst4+mcinst+DM1.Query2.FieldByName('P1QTDVOL').AsString+' Volumes ';
            mcinst:='/'
            end;
         if (DM1.Query2.FieldByName('P1PREVENT').AsDateTime>pdatanula) then
            begin
            mcinst4:=mcinst4+mcinst+'Saida: '+FormatDateTime(fdt, DM1.Query2.FieldByName('P1PREVENT').AsDateTime)
                    +' as '+DM1.Query2.FieldByName('P1HPREVENT').AsString;
            mcinst:='/'
            end;
         mlinha_ret:=mlinha_ret+insere2(mcinst4,' ',60);
         if plocal=1 then
            writeln(f_retorno,mlinha_ret)
         else
            writeln(F_Evento,mlinha_ret);
         end
      else if DM1.Query2.FieldByName('P1MINUTA').AsFloat<>0 then
         begin
         mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
         mlinha_ret:=mlinha_ret+insere('104','0',10); //
         mlinha_ret:=mlinha_ret+insere2('Encaminhado a Transportadora',' ',40);
         mcinst:='';
         mcinst4:='';
         mcinst3:='';
         if DM1.Query2.FieldByName('P1CODTRA').AsFloat<>0 then
            begin
            if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Query2.FieldbyName('P1CODTRA').AsString) then
               begin
               mcinst4:=mcinst4+mcinst+DM1.Query1.FieldbyName('TRRAZTRA').AsString;
               mcinst:='/'
               end;
            end;
         if DM1.Query2.FieldByName('P1QTDVOL').AsFloat=1 then
            begin
            mcinst4:=mcinst4+mcinst+DM1.Query2.FieldByName('P1QTDVOL').AsString+' Volume ';
            mcinst:='/'
            end
         else if DM1.Query2.FieldByName('P1QTDVOL').AsFloat<>0 then
            begin
            mcinst4:=mcinst4+mcinst+DM1.Query2.FieldByName('P1QTDVOL').AsString+' Volumes ';
            mcinst:='/'
            end;
         if (DM1.Query2.FieldByName('P1PREVENT').AsDateTime>pdatanula) then
            begin
            mcinst4:=mcinst4+mcinst+'Saida: '+FormatDateTime(fdt, DM1.Query2.FieldByName('P1PREVENT').AsDateTime)
                    +' as '+DM1.Query2.FieldByName('P1HPREVENT').AsString;
            mcinst:='/'
            end;
         mlinha_ret:=mlinha_ret+insere2(mcinst4,' ',60);
         mcinst4:='';
         if (DM1.Query2.FieldByName('P1PREVENT').AsDateTime>pdatanula) then
            mcinst4:=FormatdateTime('YYYYMMDD',DM1.Query2.fieldbyName('P1PREVENT').AsDateTime);
         if length(trim(DM1.Query2.FieldByName('P1HPREVENT').AsString))>2 then
            mcinst4:=mcinst4+copy(DM1.Query2.fieldbyName('P1HPREVENT').asString,1,2)
                     +copy(DM1.Query2.fieldbyName('P1HPREVENT').asString,4,2);
         mlinha_ret:=mlinha_ret+insere2(mcinst4,'0',12);
         if plocal=1 then
            writeln(f_retorno,mlinha_ret)
         else
            writeln(F_Evento,mlinha_ret);
         end
      else if DM1.Query2.FieldByName('P1NUMNF').AsFloat<>0 then
         begin
         mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
         mcinst3:='';
         mcinst :='';

         if DM1.Query2.FieldByName('P1CODEMB').AsFloat<>0 then
            begin
            mlinha_ret:=mlinha_ret+insere('105','0',10); //
            mlinha_ret:=mlinha_ret+insere2('Aguardando despacho',' ',40);
            mcinst3:='';
            if (DM1.Query2.FieldByName('P1DATAEMB').AsDateTime>pdatanula) then
               mcinst3:=FormatdateTime('YYYYMMDD',DM1.Query2.fieldbyName('P1DATAEMB').AsDateTime);
            if length(trim(DM1.Query2.FieldByName('P1DATAEMB').AsString))>2 then
               mcinst3:=mcinst3+copy(DM1.Query2.fieldbyName('P1HOREMB').asString,1,2)
                     +copy(DM1.Query2.fieldbyName('P1HOREMB').asString,4,2);
            end
         else
            begin
            mlinha_ret:=mlinha_ret+insere('103','0',10); //
            mlinha_ret:=mlinha_ret+insere2('Embalando as Mercadorias',' ',40);
            if (DM1.Query2.FieldByName('P1DATASEP').AsDateTime>pdatanula) then
               mcinst3:=FormatdateTime('YYYYMMDD',DM1.Query2.fieldbyName('P1DATASEP').AsDateTime);
            if length(trim(DM1.Query2.FieldByName('P1HORSEP').AsString))>2 then
               mcinst3:=mcinst3+copy(DM1.Query2.fieldbyName('P1HORSEP').asString,1,2)
                     +copy(DM1.Query2.fieldbyName('P1HORSEP').asString,4,2);
            end;
         mcinst:='';
         mcinst4:='';
         if DM1.Query2.FieldByName('P1CODTRA').AsFloat<>0 then
            begin
            if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Query2.FieldbyName('P1CODTRA').AsString) then
               begin
               mcinst4:=mcinst4+mcinst+DM1.Query1.FieldbyName('TRRAZTRA').AsString;
               mcinst:='/'
               end;
            end;
         if DM1.Query2.FieldByName('P1QTDVOL').AsFloat=1 then
            begin
            mcinst4:=mcinst4+mcinst+DM1.Query2.FieldByName('P1QTDVOL').AsString+' Volume ';
            mcinst:='/'
            end
         else if DM1.Query2.FieldByName('P1QTDVOL').AsFloat<>0 then
            begin
            mcinst4:=mcinst4+mcinst+DM1.Query2.FieldByName('P1QTDVOL').AsString+' Volumes ';
            mcinst:='/'
            end;
         if (DM1.Query2.FieldByName('P1PREVENT').AsDateTime>pdatanula) then
            begin
            mcinst4:=mcinst4+mcinst+'Saida: '+FormatDateTime(fdt, DM1.Query2.FieldByName('P1PREVENT').AsDateTime)
                    +' as '+DM1.Query2.FieldByName('P1HPREVENT').AsString;
            mcinst:='/'
            end;
         mlinha_ret:=mlinha_ret+insere2(mcinst4,' ',60);
         mlinha_ret:=mlinha_ret+insere2(mcinst3,' ',12);
         if plocal=1 then
            writeln(f_retorno,mlinha_ret)
         else
            writeln(F_Evento,mlinha_ret);
         end
      else if DM1.Query2.FieldByName('P1CODEMB').AsFloat<>0 then
         begin
         mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
         mlinha_ret:=mlinha_ret+insere('103','0',10); //
         mlinha_ret:=mlinha_ret+insere2('Embalando as Mercadorias',' ',40);
         mlinha_ret:=mlinha_ret+insere2(' ',' ',60);
         mcinst4:='';
         if (DM1.Query2.FieldByName('P1DATASEP').AsDateTime>pdatanula) then
            mcinst4:=FormatdateTime('YYYYMMDD',DM1.Query2.fieldbyName('P1DATASEP').AsDateTime);
         if length(trim(DM1.Query2.FieldByName('P1HORSEP').AsString))>2 then
            mcinst4:=mcinst4+copy(DM1.Query2.fieldbyName('P1HORSEP').asString,1,2)
                  +copy(DM1.Query2.fieldbyName('P1HORSEP').asString,4,2);
         mlinha_ret:=mlinha_ret+insere2(mcinst4,'0',12);
         if plocal=1 then
            writeln(f_retorno,mlinha_ret)
         else
            writeln(F_Evento,mlinha_ret);
         end
      else if DM1.Query2.FieldByName('P1CODSEP').AsFloat<>0 then
         begin
         mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
         mlinha_ret:=mlinha_ret+insere('102','0',10); //
         mlinha_ret:=mlinha_ret+insere2('Aguardando Conferencia',' ',40);
         mlinha_ret:=mlinha_ret+insere2(' ',' ',60);

         if (DM1.Query2.FieldByName('P1DATAP').AsDateTime>pdatanula) then
            mcinst4:=FormatdateTime('YYYYMMDD',DM1.Query2.fieldbyName('P1DATAP').AsDateTime);
         if length(trim(DM1.Query2.FieldByName('P1HORADIG').AsString))>2 then
            mcinst4:=mcinst4+copy(DM1.Query2.fieldbyName('P1HORADIG').asString,1,2)
                  +copy(DM1.Query2.fieldbyName('P1HORADIG').asString,4,2);
         mlinha_ret:=mlinha_ret+insere2(mcinst4,'0',12);
         if plocal=1 then
            writeln(f_retorno,mlinha_ret)
         else
            writeln(F_Evento,mlinha_ret);
         end
      else
         begin
         mlinha_ret:='045'+insere(DM1.Query2.fieldbyName('P1NPEDORI').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1CHAVE').AsString,'0',10);
         mlinha_ret:=mlinha_ret+insere(DM1.Query2.fieldbyName('P1ORDEM').AsString,'0',04);
         mlinha_ret:=mlinha_ret+insere('101','0',10); //
         mlinha_ret:=mlinha_ret+insere2('Encaminhado ao Deposito p/Separacao',' ',40);
         mlinha_ret:=mlinha_ret+insere2(' ',' ',60);
         mcinst4:='';
         if (DM1.Query2.FieldByName('P1DATAP').AsDateTime>pdatanula) then
            mcinst4:=FormatdateTime('YYYYMMDD',DM1.Query2.fieldbyName('P1DATAP').AsDateTime);
         if length(trim(DM1.Query2.FieldByName('P1HORADIG').AsString))>2 then
            mcinst4:=mcinst4+copy(DM1.Query2.fieldbyName('P1HORADIG').asString,1,2)
                  +copy(DM1.Query2.fieldbyName('P1HORADIG').asString,4,2);
         mlinha_ret:=mlinha_ret+insere2(mcinst4,'0',12);
         if plocal=1 then
            writeln(f_retorno,mlinha_ret)
         else
            writeln(F_Evento,mlinha_ret);
         end;

      end;
   DM1.Query2.Next;
   end;
result:=true;
end;
function TFrm_ExpDM.fimpdmCriaEvento(pLocal: Integer;pTexto,pNumLot: String): Boolean;
{
pLocal=0-Normal
       1-Retorno de Consulta de Pedido
}
begin
if pLocal=0 then
   begin
   if not mCriouEvento then
      begin
      mNomeEvento:=fcriarArqLog(0, pNumLot );
//   mNomeEvento:=fcriarArqLog(0, FormatFloat('0000',pNumLot) );
       Assignfile(F_Evento,mPastaEnvio+mNomeEvento);
      Rewrite(F_Evento);
      mCriouEvento:=true;
      end;
   end;
if plocal=1 then
   writeln(f_retorno,pTexto)
else
   writeln(F_Evento,pTexto);

result:=true;
end;


function TFrm_ExpDM.fCriarArqLog(pTipo: Integer; pnumlot: String): String;
var
mtabtemp: String;
x: Integer;
begin
x:=0;

mtabtemp:=fimpdmtestanome(mArqProc)+'_'+FormatFloat('0000',fSonumero(pnumlot));
if FileExists(mPastaEnvio+mtabtemp+'.$$$') then
   DeleteFile(mPastaEnvio+mtabtemp+'.$$$');
if FileExists(mPastaEnvio+mtabtemp+'.RET') then
   DeleteFile(mPastaEnvio+mtabtemp+'.RET');
mtabtemp:=mtabtemp+'.$$$';

{
While true do
   begin
   mtabtemp:=fimpdmtestanome(mArqProc)+'_'+pnumlot+'_L'+FormatFloat('00',x);
   if ((FileExists(mPastaEnvio+mtabtemp+'.$$$')) or (FileExists(mPastaEnvio+mtabtemp+'.RET'))) then
      x:=x+1
   else
      break;
   end;
}
result:=mtabtemp;
end;

function TFrm_ExpDM.fimpdmtestanome(pNomRec: String): String;

var
mPonto,mtam: Integer;
begin
mPonto:=0;
mtam   :=length(pnomrec);
for mPonto:=1 to mtam do
   begin
   if pnomrec[mPonto]='.' then break;
   end;
if mPonto>0 then
   Result:=copy(pnomrec, 1, mponto-1)
else
   Result:=pnomrec;
end;


procedure TFrm_ExpDM.Qr_ProCalcFields(DataSet: TDataSet);
begin

if mCalculaBloqueio then
   begin
   Qr_Procodven_blq.AsFloat:=0;
   if not DM1.Query5.Locate('BQCODFOR',Qr_ProPDCODFOR.AsFloat,[]) then
      Qr_Procodven_blq.AsFloat:=0
   else
      begin
      if not DM1.Query5.Locate('BQCODFOR;BQCODVEN',vararrayof([Qr_ProPDCODFOR.AsFloat,DM1.Tb_CliCCODVEN.asFloat]),[]) then
         Qr_Procodven_blq.AsFloat:=DM1.Tb_CliCCODVEN.AsFloat
      else if not DM1.Query5.Locate('BQCODFOR;BQCODVEN',vararrayof([Qr_ProPDCODFOR.AsFloat,DM1.Tb_CliCCODV02.asFloat]),[]) then
         Qr_Procodven_blq.AsFloat:=DM1.Tb_CliCCODV02.AsFloat
      else if not DM1.Query5.Locate('BQCODFOR;BQCODVEN',vararrayof([Qr_ProPDCODFOR.AsFloat,DM1.Tb_CliCCODV03.asFloat]),[]) then
         Qr_Procodven_blq.AsFloat:=DM1.Tb_CliCCODV03.AsFloat
      else if not DM1.Query5.Locate('BQCODFOR;BQCODVEN',vararrayof([Qr_ProPDCODFOR.AsFloat,DM1.Tb_CliCCODV04.asFloat]),[]) then
         Qr_Procodven_blq.AsFloat:=DM1.Tb_CliCCODV04.AsFloat;
      end;
   end;
end;

procedure TFrm_ExpDM.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ExpDM.FormKeyDown(Sender: TObject; var Key: Word;
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
