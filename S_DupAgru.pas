unit S_DupAgru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Mask, Buttons,func,S_DM1,lerarq,S_Cli, ComCtrls,
  DB, DBTables,S_Ven,S_Bco,S_Usr,S_Con,S_Assessor,S_DM2;

type
  TFrm_DupAgru = class(TForm)
    STG1: TStringGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    NUMDUPI: TEdit;
    Label3: TLabel;
    NUMDUPF: TEdit;
    Label2: TLabel;
    PARC: TEdit;
    Edit1: TEdit;
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    Label6: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    NUMERO: TEdit;
    Label8: TLabel;
    DESD: TEdit;
    Label9: TLabel;
    CB_DUP: TComboBox;
    Label10: TLabel;
    CODCLI_DUP: TEdit;
    NOMCLI_DUP: TEdit;
    Label11: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label12: TLabel;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    NOMV02: TEdit;
    CODV02: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    CODV03: TEdit;
    NOMV03: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    CODTLV: TEdit;
    NOMTLV: TEdit;
    TabSheet3: TTabSheet;
    Label18: TLabel;
    Label19: TLabel;
    TOTNF: TStaticText;
    Label20: TLabel;
    ICMSR: TStaticText;
    VALOR: TStaticText;
    Label21: TLabel;
    VALFRE: TStaticText;
    Label22: TLabel;
    TARBAN: TStaticText;
    Label23: TLabel;
    MULTA: TStaticText;
    Label24: TLabel;
    JURD: TStaticText;
    DESCD: TStaticText;
    Label25: TLabel;
    Label26: TLabel;
    DESCF: TStaticText;
    Label27: TLabel;
    COMVEN: TStaticText;
    Label28: TLabel;
    COMTEL: TStaticText;
    COMSUP: TStaticText;
    Label29: TLabel;
    Label30: TLabel;
    SEMCOM: TStaticText;
    Label31: TLabel;
    COMV02: TStaticText;
    Label32: TLabel;
    COMV03: TStaticText;
    Label33: TLabel;
    TOTDI01: TStaticText;
    Label34: TLabel;
    TOTDI02: TStaticText;
    Label35: TLabel;
    TOTDI03: TStaticText;
    Label36: TLabel;
    TOTDIVL: TStaticText;
    Label37: TLabel;
    VALDES01: TStaticText;
    Label38: TLabel;
    VALDES02: TStaticText;
    Label39: TLabel;
    VLRDES: TStaticText;
    Label40: TLabel;
    QTDDM: TStaticText;
    Label41: TLabel;
    DTDESCF: TStaticText;
    NOMCV: TEdit;
    Label42: TLabel;
    CODCV: TEdit;
    Label43: TLabel;
    DTEMIS: TStaticText;
    DTVCTO: TStaticText;
    TabSheet4: TTabSheet;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    FC_DATAREF: TStaticText;
    FC_DATAP: TStaticText;
    FC_VALORP: TStaticText;
    FC_CODDEP: TStaticText;
    FC_NOMDEP: TStaticText;
    FC_CODCC: TStaticText;
    FC_NOMCC: TStaticText;
    FC_CODBCO: TStaticText;
    FC_NOMBCO: TStaticText;
    FC_TIPO: TStaticText;
    FC_NOME: TStaticText;
    FC_CODIGO: TStaticText;
    Label51: TLabel;
    FC_DOC: TStaticText;
    FC_DESCRICAO: TStaticText;
    Label52: TLabel;
    FC_NATDC: TStaticText;
    Label53: TLabel;
    Qr_Dar: TQuery;
    Qr_DarCRCODEMP: TFloatField;
    Qr_DarCRNUMERO: TFloatField;
    Qr_DarCRDESD: TStringField;
    Qr_DarCRDUP: TFloatField;
    Qr_DarCRCODCLI: TFloatField;
    Qr_DarCRNUMCUP: TFloatField;
    Qr_DarCRDATCUP: TDateTimeField;
    Qr_DarCRVALOR: TFloatField;
    Qr_DarCRDTEMIS: TDateTimeField;
    Qr_DarCRDTVCTO: TDateTimeField;
    Qr_DarCRDTPAG: TDateTimeField;
    Qr_DarCRDTBX: TDateTimeField;
    Qr_DarCRNPED: TFloatField;
    Qr_DarCRORDEM: TFloatField;
    Qr_DarCRVALPAG: TFloatField;
    Qr_DarCRCODVEN: TFloatField;
    Qr_DarCRCODTLV: TFloatField;
    Qr_DarCRSTATUS: TFloatField;
    Qr_DarCRDESC: TFloatField;
    Qr_DarCRDEVOL: TFloatField;
    Qr_DarCRJUROS: TFloatField;
    Qr_DarCRCODBCO: TFloatField;
    Qr_DarCRLOTE: TFloatField;
    Qr_DarCRICMSR: TFloatField;
    Qr_DarCRDESCF: TFloatField;
    Qr_DarCRDTDESCF: TDateTimeField;
    Qr_DarCRJURD: TFloatField;
    Qr_DarCRDESCD: TFloatField;
    Qr_DarCRMULTA: TFloatField;
    Qr_DarCRQTDDM: TFloatField;
    Qr_DarCREMIDUP: TFloatField;
    Qr_DarCREMIBLQ: TFloatField;
    Qr_DarCRVALFRE: TFloatField;
    Qr_DarCRNOSNUM: TStringField;
    Qr_DarCRTIPCOB: TFloatField;
    Qr_DarCRDTALT: TDateTimeField;
    Qr_DarCRUSRALT: TFloatField;
    Qr_DarCRUSRBX: TFloatField;
    Qr_DarCRCOMVEN: TFloatField;
    Qr_DarCRCOMTEL: TFloatField;
    Qr_DarCRCOMSUP: TFloatField;
    Qr_DarCRSEMCOM: TFloatField;
    Qr_DarCRCODLDR: TFloatField;
    Qr_DarCRLOTCV: TFloatField;
    Qr_DarCRLOTCS: TFloatField;
    Qr_DarCRCODORI: TFloatField;
    Qr_DarCRLOTCT: TFloatField;
    Qr_DarCRCODUSR: TFloatField;
    Qr_DarCRHRALT: TStringField;
    Qr_DarCRNFACUM: TStringField;
    Qr_DarCRTOTNF: TFloatField;
    Qr_DarCRLOTSEQ_CP: TFloatField;
    Qr_DarCRCODV02: TFloatField;
    Qr_DarCRCODV03: TFloatField;
    Qr_DarCRCODCV: TFloatField;
    Qr_DarCRCOMV02: TFloatField;
    Qr_DarCRCOMV03: TFloatField;
    Qr_DarCRLOTCV02: TFloatField;
    Qr_DarCRLOTCV03: TFloatField;
    Qr_DarCRCODECF: TFloatField;
    Qr_DarCRLOTSEQ_LB: TFloatField;
    Qr_DarCRLOTSEQ_FC: TFloatField;
    Qr_DarCRLOTSEQ_CV: TFloatField;
    Qr_DarCRLOTSEQ_CV02: TFloatField;
    Qr_DarCRLOTSEQ_CV03: TFloatField;
    Qr_DarCRLOTSEQ_CS: TFloatField;
    Qr_DarCRLOTSEQ_CT: TFloatField;
    Qr_DarCRTOTDI01: TFloatField;
    Qr_DarCRTOTDI02: TFloatField;
    Qr_DarCRTOTDI03: TFloatField;
    Qr_DarCRTOTDIVL: TFloatField;
    Qr_DarCRVALDES01: TFloatField;
    Qr_DarCRVALDES02: TFloatField;
    Qr_DarCRVLRDES: TFloatField;
    Qr_DarCRTARBAN: TFloatField;
    Qr_DarCRDNOSNUM: TStringField;
    Qr_DarCRACEITE: TStringField;
    Qr_DarCRESPECIE: TStringField;
    Qr_DarCRCODBAR: TStringField;
    Qr_DarCRCODDIG: TStringField;
    Qr_DarCRLEMAT: TFloatField;
    Label54: TLabel;
    Qr_Darnomcli: TStringField;
    Qr_Darnomven: TStringField;
    Qr_Darnomv02: TStringField;
    Qr_Darnomv03: TStringField;
    Qr_Darnombco: TStringField;
    Qr_Darnomtlv: TStringField;
    Qr_Darnomcv: TStringField;
    bbAgrupar: TBitBtn;
    Label55: TLabel;
    CODECF: TStaticText;
    Label56: TLabel;
    DATACF: TStaticText;
    Label57: TLabel;
    NUMCF: TStaticText;
    Label58: TLabel;
    COMASSE: TStaticText;
    Qr_DarCRCODASSE: TFloatField;
    Qr_DarCRCOMASSE: TFloatField;
    Qr_DarCRLOTSEQ_CASSE: TFloatField;
    Qr_DarCRLOTCASSE: TFloatField;
    Label59: TLabel;
    CODASSE: TEdit;
    NOMASSE: TEdit;
    QTDPARC: TEdit;
    Label60: TLabel;
    Label61: TLabel;
    NUMPARC: TEdit;
    Qr_DarCRINST01: TStringField;
    Qr_DarCRINST02: TStringField;
    Qr_DarCRINST03: TStringField;
    Qr_DarCRINST04: TStringField;
    Qr_DarCRQTDPARC: TFloatField;
    Qr_DarCRNUMPARC: TFloatField;
    GroupBox3: TGroupBox;
    INST01: TEdit;
    INST02: TEdit;
    INST03: TEdit;
    INST04: TEdit;
    Label62: TLabel;
    VALSEG: TStaticText;
    Qr_DarCRVALSEG: TFloatField;
    Label63: TLabel;
    TOTCGRU: TStaticText;
    TOTSGRU: TStaticText;
    Label64: TLabel;
    Label65: TLabel;
    TBCOCOB: TStaticText;
    Qr_DarCRTOTCGRU: TFloatField;
    Qr_DarCRTOTSGRU: TFloatField;
    Qr_DarCRTBCOCOB: TFloatField;
    Label66: TLabel;
    COMIS_EXTRA: TStaticText;
    Qr_DarCRCODV04: TFloatField;
    Qr_DarCRNR: TFloatField;
    Qr_DarCRCUSBCO: TFloatField;
    Qr_DarCRCOMV04: TFloatField;
    Qr_DarCRLOTSEQ_CV04: TFloatField;
    Qr_DarCRLOTCV04: TFloatField;
    Qr_DarCRTOTIPI: TFloatField;
    Qr_DarCREMIBOR: TFloatField;
    Qr_DarCRCHD_BANCO: TFloatField;
    Qr_DarCRCHD_AGENCIA: TStringField;
    Qr_DarCRCHD_CC: TStringField;
    Qr_DarCRCHD_NUMERO: TFloatField;
    Qr_DarCRTCB: TFloatField;
    Qr_DarCRCAUCAO: TFloatField;
    Qr_DarCRBCOCAU: TFloatField;
    Qr_DarCRDTCAU: TDateTimeField;
    Qr_DarCRSPC_DTPEN: TDateTimeField;
    Qr_DarCRSPC_DTNEG: TDateTimeField;
    Qr_DarCRSERASA_DTNEG: TDateTimeField;
    Qr_DarCRCODCTA: TFloatField;
    Qr_DarCRNOMCTA: TStringField;
    Qr_DarCRCODCC: TStringField;
    Qr_DarCRNOMCC: TStringField;
    Qr_DarCRNATDC: TStringField;
    Qr_DarCRCODDEP: TStringField;
    Qr_DarCRNOMDEP: TStringField;
    Qr_DarCRDESCMV: TStringField;
    Qr_DarCRCOMIS_EXTRA: TFloatField;
    Qr_DarCROBS: TMemoField;
    OBS: TMemo;
    Qr_DarCRID_NEW: TFloatField;
    Qr_DarCRID_PED01_NEW: TFloatField;
    Qr_DarCRID_LDR_NEW: TFloatField;
    cb_todos: TCheckBox;
    procedure bbSairClick(Sender: TObject);
    procedure NUMDUPIExit(Sender: TObject);
    procedure NUMDUPFExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_DarCalcFields(DataSet: TDataSet);
    procedure STG1DblClick(Sender: TObject);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure bbAgruparClick(Sender: TObject);
    procedure CODCLI_DUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLI_DUPExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODV02KeyPress(Sender: TObject; var Key: Char);
    procedure CODV03KeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODV02Exit(Sender: TObject);
    procedure CODV03Exit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODTLVKeyPress(Sender: TObject; var Key: Char);
    procedure CODTLVExit(Sender: TObject);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVExit(Sender: TObject);
    procedure NUMDUPIEnter(Sender: TObject);
    procedure CODASSEKeyPress(Sender: TObject; var Key: Char);
    procedure CODASSEExit(Sender: TObject);
    procedure QTDPARCExit(Sender: TObject);
    procedure NUMPARCExit(Sender: TObject);
    procedure OBSExit(Sender: TObject);
    procedure INST01Exit(Sender: TObject);
    procedure INST02Exit(Sender: TObject);
    procedure INST03Exit(Sender: TObject);
    procedure INST04Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb_todosClick(Sender: TObject);
  private
    { Private declarations }
    function fDupAgruZeraTxt(ptipo: Integer): boolean;
    function fCarregarGrid(ptipo: Integer): boolean;
    function fAtualizarTxt(ptipo,pCalc: Integer): boolean;
    function fContaMarcados: Integer;
    function fGravarDup: Boolean;
    function fGravarFC: Boolean;
    function fGravarAgru: Boolean;

    procedure AtualizarValores(pRow: integer);

  public
    { Public declarations }
  end;
var
  Frm_DupAgru: TFrm_DupAgru;
  mlotseqped: Real;
  mIdPed01New: Real;
  mIdLdrNew: Real;
  mIdDarNew: Real;
  mOrdemPed: Real;
  mCodOri  : Real;
  mChaveFC: Real;
  nfAcumNovo: String;

implementation

uses S_DM4, func_excecoes, ConvUtils;

{$R *.dfm}




procedure TFrm_DupAgru.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DupAgru.NUMDUPIExit(Sender: TObject);
begin
NUMDUPI.Text:=fdeixanum(NUMDUPI.Text);
end;

procedure TFrm_DupAgru.NUMDUPFExit(Sender: TObject);
begin
NUMDUPF.Text:=fdeixanum(NUMDUPF.Text);

end;

procedure TFrm_DupAgru.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DupAgru',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_DupAgru.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum(CODCLI.Text);
if ValFloat(CODCLI.Text)=0 then
   CODCLI.Text:='';
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_DupAgru.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_DupAgru.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_DupAgru.bbAplicarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if (ValInt(NUMDUPI.Text)>0) and (ValInt(NUMDUPF.Text)>0) then
   begin
   if ValInt(NUMDUPI.Text)>ValInt(NUMDUPF.Text) then
      begin
      fMensagem('Número inicial não pode ser maior que final, invalido!',0,['0'],0);
      NUMDUPI.SetFocus;
      exit;
      end;
   end;
Qr_Dar.Close;
Qr_Dar.SQL.clear;
Qr_Dar.SQL.Add('Select * from CADDAR ');
mcinst:=' where ';
if not DM1.Qr_tid.Locate('TINOME','CADDAR',[]) then
   begin
   Qr_Dar.SQL.add(mcinst+' CRCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
Qr_Dar.SQL.add(mcinst+' CRSTATUS=0 ');
mcinst:=' and ';
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Dar.SQL.add(mcinst+' CRDTEMIS>='+chr(39)+FormatDateTime(Fdt, StrtoDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Dar.SQL.add(mcinst+' CRDTEMIS<='+chr(39)+FormatDateTime(Fdt, StrtoDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(NUMDUPI.Text)<>'' then
   begin
   Qr_Dar.SQL.add(mcinst+' CRNUMERO>=0'+Trim(NUMDUPI.Text));
   mcinst:=' and ';
   end;
if Trim(NUMDUPF.Text)<>'' then
   begin
   Qr_Dar.SQL.add(mcinst+' CRNUMERO<=0'+Trim(NUMDUPF.Text));
   mcinst:=' and ';
   end;
if Trim(PARC.Text)<>'' then
   begin
   Qr_Dar.SQL.add(mcinst+' CRDESD='+chr(39)+Trim(PARC.Text)+chr(39));
   mcinst:=' and ';
   end;
if Trim(CODCLI.Text)<>'' then
   begin
   Qr_Dar.SQL.add(mcinst+' CRCODCLI=0'+Trim(CODCLI.Text));
   mcinst:=' and ';
   end;
Qr_Dar.Open;

fDupAgruZeraTxt(0);
fCarregarGrid(0);



end;

procedure TFrm_DupAgru.FormCreate(Sender: TObject);
begin
STG1.RowCount:=2;
STG1.Cells[00,00]:='';
STG1.Cells[01,00]:='Número';
STG1.Cells[02,00]:='Desd';
STG1.Cells[03,00]:='Dup';
STG1.Cells[04,00]:='Codigo';
STG1.Cells[05,00]:='Cliente';
STG1.Cells[06,00]:='Valor';
STG1.Cells[07,00]:='Dt.Emissão';
STG1.Cells[08,00]:='Dt.Vcto';
STG1.Cells[09,00]:='Lote Sq.Ped';
STG1.Cells[10,00]:='Chave Ped';
STG1.Cells[11,00]:='Ordem';
STG1.Cells[12,00]:='Lote Envio';
STG1.Cells[13,00]:='Num.Cupom';
STG1.Cells[14,00]:='Data CF';
STG1.Cells[15,00]:='Cód.Ecf';
STG1.Cells[16,00]:='NF.Acum';
STG1.Cells[17,00]:='Total NF';
STG1.Cells[18,00]:='Lote Caixa';
STG1.Cells[19,00]:='Sequencia';
STG1.Cells[20,00]:='Id New';


STG1.ColWidths[00]:=10; // X
STG1.ColWidths[01]:=60; //'Número';
STG1.ColWidths[02]:=10; //'Desd';
STG1.ColWidths[03]:=10; //'Dup';
STG1.ColWidths[04]:=50; //'Codigo';
STG1.ColWidths[05]:=150; // 'Cliente';
STG1.ColWidths[06]:=80; //'Valor';
STG1.ColWidths[07]:=80; //'Dt.Emissão';
STG1.ColWidths[08]:=80; //'Dt.Vcto';
STG1.ColWidths[09]:=70; //'Lote Sq.Ped';
STG1.ColWidths[10]:=70; //'Chave Ped';
STG1.ColWidths[11]:=30; //'Ordem';
STG1.ColWidths[12]:=30; // 'Lote Sq.Ped';
STG1.ColWidths[13]:=50; // 'Num.Cupom';
STG1.ColWidths[14]:=80; // 'Data CF';
STG1.ColWidths[15]:=40; // 'Cód.Ecf';
STG1.ColWidths[16]:=200; // 'NF.Acum';
STG1.ColWidths[17]:=100; // 'Total NF';
STG1.ColWidths[18]:=80; // 'NF.Acum';
STG1.ColWidths[19]:=80; // 'Total NF';
STG1.ColWidths[19]:=80; // 'Total NF';
PageControl1.ActivePageIndex:=0;
end;
function tFrm_DupAgru.fDupAgruZeraTxt(ptipo: Integer): boolean;

// ptipo=1 zera tudo 0-Parcial
var
x_stg: integer;

begin
if ptipo=1 then
   begin
   NUMDUPI.Text:='';
   NUMDUPF.Text:='';
   PARC.Text   :='';
   MDT1.Text   :='/  /';
   MDT2.Text   :='/  /';
   CODCLI.Text :='';
   NOMCLI.Text :='Todos...';
   end;
NUMERO.Text         :='';
DESD.Text           :='';
CB_DUP.Text         :='';
CODCLI_DUP.Text     :='';
NOMCLI_DUP.Text     :='';
NUMPARC.Text        :='';
QTDPARC.Text        :='';
INST01.Text         :='';
INST02.Text         :='';
INST03.Text         :='';
INST04.Text         :='';
CODVEN.Text         :='';
NOMVEN.Text         :='';
CODV02.Text         :='';
NOMV02.Text         :='';
CODV03.Text         :='';
NOMV03.Text         :='';
CODBCO.Text         :='';
NOMBCO.Text         :='';
CODTLV.Text         :='';
NOMTLV.Text         :='';
CODCV.Text          :='';
NOMCV.Text          :='';
OBS.Text            :='';
DTEMIS.Caption      :='/  /';
DTVCTO.Caption      :='/  /';
NUMCF.Caption       :='';
CODECF.Caption      :='';
DATACF.Caption      :='/  /';
VALOR.Caption       :=FormatFloat(mcasas, 0);
TOTNF.Caption       :=FormatFloat(mcasas, 0);
ICMSR.Caption       :=FormatFloat(mcasas, 0);
VALFRE.Caption      :=FormatFloat(mcasas, 0);
TARBAN.Caption      :=FormatFloat(mcasas, 0);
MULTA.Caption       :=FormatFloat(mcasas, 0);
JURD.Caption        :=FormatFloat(mcasas, 0);
DESCD.Caption       :=FormatFloat(mcasas, 0);
VALOR.Caption       :=FormatFloat(mcasas, 0);
DESCF.Caption       :=FormatFloat(mcasas, 0);
TOTDI01.Caption     :=FormatFloat(mcasas, 0);
TOTDI02.Caption     :=FormatFloat(mcasas, 0);
TOTDI03.Caption     :=FormatFloat(mcasas, 0);
TOTDIVL.Caption     :=FormatFloat(mcasas, 0);
VALDES01.Caption    :=FormatFloat(mcasas, 0);
VALDES02.Caption    :=FormatFloat(mcasas, 0);
VLRDES.Caption      :=FormatFloat(mcasas, 0);
QTDDM.Caption       :=FormatFloat(mcasqtd, 0);
DTDESCF.Caption     :='/  /';
COMVEN.Caption      :=FormatFloat(mcasas, 0);
COMIS_EXTRA.Caption :=FormatFloat(mcasas, 0);
COMV02.Caption      :=FormatFloat(mcasas, 0);
COMV03.Caption      :=FormatFloat(mcasas, 0);
COMTEL.Caption      :=FormatFloat(mcasas, 0);
COMSUP.Caption      :=FormatFloat(mcasas, 0);
SEMCOM.Caption      :=FormatFloat(mcasas, 0);
COMASSE.Caption     :=FormatFloat(mcasas, 0);
VALSEG.Caption      :=FormatFloat(mcasas, 0);
TOTCGRU.Caption     :=FormatFloat(mcasas, 0);
TOTSGRU.Caption     :=FormatFloat(mcasas, 0);
TBCOCOB.Caption     :=FormatFloat(mcasas, 0);
FC_DATAREF.Caption  :='/  /';
FC_DATAP.Caption    :='/  /';
FC_VALORP.Caption   :=FormatFloat(mcasas, 0);
FC_NATDC.Caption    :='';
FC_CODDEP.Caption   :='';
FC_NOMDEP.Caption   :='';
FC_CODCC.Caption    :='';
FC_NOMCC.Caption    :='';
FC_CODBCO.Caption   :='';
FC_NOMBCO.Caption   :='';
FC_TIPO.Caption     :='';
FC_CODIGO.Caption   :='';
FC_NOME.Caption     :='';
FC_DOC.Caption      :='';
FC_DESCRICAO.Caption:='';
mlotseqped:=0;
mchaveped :=0;
mIdPed01New :=0;
mIdLdrNew   :=0;
mIdDarNew   :=0;
mOrdemPed :=0;
mChaveFC  :=0;
mCodOri   :=0;
if ptipo=1 then
   begin
   for x_stg:=1 TO stg1.RowCount do
      begin
      STG1.Rows[x_stg].clear;
      STG1.Cells[15,x_stg]:='';
      STG1.Cells[07,x_stg]:='';
      end;
   STG1.RowCount:=2;
   STG1.Rows[1].Clear;
   end;
result:=true;
end;

function Tfrm_DupAgru.fCarregarGrid(ptipo: Integer): boolean;
var
x: Integer;
begin
STG1.RowCount:=2;
While not Qr_Dar.eof do
   begin
   x:=STG1.RowCount;
   STG1.RowCount:=x+1;
   STG1.Rows[x].Clear;
   STG1.Cells[00,x-1]:='';
   STG1.Cells[01,x-1]:=Qr_DarCRNUMERO.AsString;
   STG1.Cells[02,x-1]:=Qr_DarCRDESD.Value;
   STG1.Cells[03,x-1]:=Qr_DarCRDUP.AsString;
   STG1.Cells[04,x-1]:=Qr_DarCRCODCLI.AsString;
   STG1.Cells[05,x-1]:=Qr_Darnomcli.Value;
   STG1.Cells[06,x-1]:=FormatFloat(mcasas, Qr_DarCRVALOR.Value);
   if (Qr_DarCRDTEMIS.IsNull) or (Qr_DarCRDTEMIS.Value<=pdatanula) then
      STG1.Cells[07,x-1]:='/  /'
   else
      STG1.Cells[07,x-1]:=FormatDatetime(fdt2, Qr_DarCRDTEMIS.Value);
   if (Qr_DarCRDTVCTO.IsNull) or (Qr_DarCRDTVCTO.Value<=pdatanula) then
      STG1.Cells[08,x-1]:='/  /'
   else
      STG1.Cells[08,x-1]:=FormatDatetime(fdt2, Qr_DarCRDTVCTO.Value);
   STG1.Cells[09,x-1]:=Qr_DarCRLOTSEQ_CP.AsString;
   STG1.Cells[10,x-1]:=Qr_DarCRNPED.AsString;
   STG1.Cells[11,x-1]:=Qr_DarCRORDEM.AsString;
   STG1.Cells[12,x-1]:=Qr_DarCRLEMAT.AsString;
   STG1.Cells[13,x-1]:=Qr_DarCRNUMCUP.AsString;
   if (Qr_DarCRDATCUP.IsNull) or (Qr_DarCRDATCUP.Value<=pdatanula) then
      STG1.Cells[14,x-1]:='/  /'
   else
      STG1.Cells[14,x-1]:=FormatDatetime(fdt2, Qr_DarCRDATCUP.Value);
   STG1.Cells[15,x-1]:=Qr_DarCRCODECF.AsString;
   STG1.Cells[16,x-1]:=Qr_DarCRNFACUM.Value;
   STG1.Cells[20,x-1]:=Qr_DarCRID_NEW.AsString;
   STG1.Cells[17,x-1]:=FormatFloat(mcasas, Qr_DarCRTOTNF.Value);
   STG1.Cells[18,x-1]:=Qr_DarCRLOTSEQ_FC.AsString;
   STG1.Cells[19,x-1]:=Qr_DarCRCODLDR.AsString;
   Qr_Dar.Next;
   end;
result:=true;
end;

procedure TFrm_DupAgru.Qr_DarCalcFields(DataSet: TDataSet);
begin
if  flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_DarCRCODCLI.AsString) then
    Qr_Darnomcli.Value:=DM1.Query1.Fields[0].AsString
else
    Qr_Darnomcli.Value:='';

end;

function TFrm_DupAgru.fAtualizarTxt(ptipo,pCalc: Integer): boolean;
// ptipo=0 Todos
//      =1 so Dup
//      =2 do Caixa
begin
if ptipo<>2 then
   begin
   if Trim(NUMERO.Text)='' then
      NUMERO.Text      :=Qr_darCRNUMERO.AsString;
   if Trim(DESD.Text)='' then
      DESD.Text        :=Qr_DarCRDESD.Value;
   if Trim(CB_DUP.Text)='' then
      CB_DUP.Text      :=CB_DUP.Items[Qr_DarCRDUP.AsInteger];
   if trim(NOMCLI_DUP.Text)='' then
      begin
      CODCLI_DUP.Text     :=Qr_DarCRCODCLI.AsString;
      NOMCLI_DUP.Text     :=Qr_Darnomcli.AsString;
      end;
   if valint(QTDPARC.Text)<1 then
      begin
      QTDPARC.Text        :=Qr_DarCRQTDPARC.AsString;
      end;
   if valint(NUMPARC.Text)<1 then
      begin
      NUMPARC.Text        :=Qr_DarCRNUMPARC.AsString;
      end;
   if Trim(INST01.Text)='' then
      begin
      INST01.Text      :=Qr_DarCRINST01.Value;
      INST02.Text      :=Qr_DarCRINST02.Value;
      INST03.Text      :=Qr_DarCRINST03.Value;
      INST04.Text      :=Qr_DarCRINST04.Value;
      end;

   if Trim(NOMVEN.Text)='' then
      begin
      CODVEN.Text         :=Qr_DarCRCODVEN.AsString;
      NOMVEN.Text         :=Qr_Darnomven.AsString;
      end;
   if Trim(NOMV02.Text)='' then
      begin
      CODV02.Text         :=Qr_DarCRCODV02.AsString;
      NOMV02.Text         :=Qr_Darnomv02.AsString;
      end;
   if Trim(NOMV03.Text)='' then
      begin
      CODV03.Text         :=Qr_DarCRCODV03.AsString;
      NOMV03.Text         :=Qr_Darnomv03.AsString;
      end;
   if Trim(NOMBCO.Text)='' then
      begin
      CODBCO.Text         :=Qr_DarCRCODBCO.AsString;
      NOMBCO.Text         :=Qr_Darnombco.AsString;
      end;
   if Trim(NOMTLV.Text)='' then
      begin
      CODTLV.Text         :=Qr_DarCRCODTLV.AsString;
      NOMTLV.Text         :=Qr_Darnomtlv.AsString;
      end;
   if Trim(NOMCV.Text)='' then
      begin
      CODCV.Text         :=Qr_DarCRCODCV.AsString;
      NOMCV.Text         :=Qr_Darnomcv.AsString;
      end;
   if Trim(OBS.Text)='' then
      OBS.Lines.Text     :=Qr_DarCROBS.AsString;
   if Trim(DTEMIS.Caption)='/  /' then
      begin
      if (Qr_DarCRDTEMIS.IsNull) or (Qr_DarCRDTEMIS.Value<=pdatanula) then
         DTEMIS.Caption   :='/  /'
      else
         DTEMIS.Caption   :=FormatDatetime(fdt2,  Qr_DarCRDTEMIS.Value);
      end;
   if Trim(NUMCF.Caption)='' then
      NUMCF.Caption:=Qr_DarCRNUMCUP.AsString;
   if Trim(CODECF.Caption)='' then
      codecf.Caption:=Qr_DarCRCODECF.AsString;
   if Trim(DATACF.Caption)='/  /' then
      begin
      if (Qr_DarCRDATCUP.IsNull) or (Qr_DarCRDATCUP.Value<=pdatanula) then
         DATACF.Caption   :='/  /'
      else
         DATACF.Caption   :=FormatDatetime(fdt2,  Qr_DarCRDATCUP.Value);
      end;

   if Trim(DTVCTO.Caption)='/  /' then
      begin
      if (Qr_DarCRDTVCTO.IsNull) or (Qr_DarCRDTVCTO.Value<=pdatanula) then
         DTVCTO.Caption   :='/  /'
      else
         DTVCTO.Caption   :=FormatDatetime(fdt2,  Qr_DarCRDTVCTO.Value);
      end;
   if Trim(DTDESCF.Caption)='/  /' then
      begin
      if (Qr_DarCRDTDESCF.IsNull) or (Qr_DarCRDTDESCF.Value<=pdatanula) then
         DTDESCF.Caption   :='/  /'
      else
         DTDESCF.Caption   :=FormatDatetime(fdt2,  Qr_DarCRDTDESCF.Value);
      end;
   if mchaveped=0 then
      begin
      mIdPed01New:=Qr_DarCRID_PED01_NEW.Value;
      mIdDarNew  :=Qr_DarCRID_NEW.Value;
      mIdLdrNew  :=Qr_DarCRID_LDR_NEW.Value;

      mlotseqped:=Qr_DarCRLOTSEQ_CP.Value;
      mchaveped :=Qr_DarCRNPED.Value;
      mOrdemPed :=Qr_DarCRORDEM.Value;
      mCodOri   :=Qr_DarCRCODORI.Value;
      end;
   if pCalc=0 then
      begin
      VALOR.Caption       :=FormatFloat(mcasas, (ValFloat(VALOR.Caption)+Qr_DarCRVALOR.Value));
      TOTNF.Caption       :=VALOR.Caption;
//      TOTNF.Caption       :=FormatFloat(mcasas, (ValFloat(TOTNF.Caption)+Qr_DarCRTOTNF.Value));
      ICMSR.Caption       :=FormatFloat(mcasas, (ValFloat(ICMSR.Caption)+Qr_DarCRICMSR.Value));
      VALFRE.Caption      :=FormatFloat(mcasas, (ValFloat(VALFRE.Caption)+Qr_DarCRVALFRE.Value));
      TARBAN.Caption      :=FormatFloat(mcasas, (ValFloat(TARBAN.Caption)+Qr_DarCRTARBAN.Value));
      MULTA.Caption       :=FormatFloat(mcasas, (ValFloat(MULTA.Caption)+Qr_DarCRMULTA.Value));
      JURD.Caption        :=FormatFloat(mcasas, (ValFloat(JURD.Caption)+Qr_DarCRJURD.Value));
      DESCD.Caption       :=FormatFloat(mcasas, (ValFloat(DESCD.Caption)+Qr_DarCRDESCD.Value));
      DESCF.Caption       :=FormatFloat(mcasas, (ValFloat(DESCF.Caption)+Qr_DarCRDESCF.Value));
      TOTDI01.Caption     :=FormatFloat(mcasas, (ValFloat(TOTDI01.Caption)+Qr_DarCRTOTDI01.Value));
      TOTDI02.Caption     :=FormatFloat(mcasas, (ValFloat(TOTDI02.Caption)+Qr_DarCRTOTDI02.Value));
      TOTDI03.Caption     :=FormatFloat(mcasas, (ValFloat(TOTDI03.Caption)+Qr_DarCRTOTDI03.Value));
      TOTDIVL.Caption     :=FormatFloat(mcasas, (ValFloat(TOTDIVL.Caption)+Qr_DarCRTOTDIVL.Value));
      VALDES01.Caption    :=FormatFloat(mcasas, (ValFloat(VALDES01.Caption)+Qr_DarCRVALDES01.Value));
      VALDES02.Caption    :=FormatFloat(mcasas, (ValFloat(VALDES02.Caption)+Qr_DarCRVALDES02.Value));
      VLRDES.Caption      :=FormatFloat(mcasas, (ValFloat(VLRDES.Caption)+Qr_DarCRVLRDES.Value));
      QTDDM.Caption       :=FormatFloat(mcasqtd, (ValFloat(QTDDM.Caption)+Qr_DarCRQTDDM.Value));
      COMIS_EXTRA.Caption :=FormatFloat(mcasas, (ValFloat(COMIS_EXTRA.Caption)+Qr_DarCRCOMIS_EXTRA.Value));
      COMVEN.Caption      :=FormatFloat(mcasas, (ValFloat(COMVEN.Caption)+Qr_DarCRCOMVEN.Value));
      COMV02.Caption      :=FormatFloat(mcasas, (ValFloat(COMV02.Caption)+Qr_DarCRCOMV02.Value));
      COMV03.Caption      :=FormatFloat(mcasas, (ValFloat(COMV03.Caption)+Qr_DarCRCOMV03.Value));
      COMTEL.Caption      :=FormatFloat(mcasas, (ValFloat(COMTEL.Caption)+Qr_DarCRCOMTEL.Value));
      COMSUP.Caption      :=FormatFloat(mcasas, (ValFloat(COMSUP.Caption)+Qr_DarCRCOMSUP.Value));
      SEMCOM.Caption      :=FormatFloat(mcasas, (ValFloat(SEMCOM.Caption)+Qr_DarCRSEMCOM.Value));
      COMASSE.Caption     :=FormatFloat(mcasas, (ValFloat(COMASSE.Caption)+Qr_DarCRCOMASSE.Value));
      VALSEG.Caption      :=FormatFloat(mcasas, (ValFloat(VALSEG.Caption)+Qr_DarCRVALSEG.Value));
      TOTCGRU.Caption     :=FormatFloat(mcasas, (ValFloat(TOTCGRU.Caption)+Qr_DarCRTOTCGRU.Value));
      TOTSGRU.Caption     :=FormatFloat(mcasas, (ValFloat(TOTSGRU.Caption)+Qr_DarCRTOTSGRU.Value));
      TBCOCOB.Caption     :=FormatFloat(mcasas, (ValFloat(TBCOCOB.Caption)+Qr_DarCRTBCOCOB.Value));
      end
   else
      begin
      VALOR.Caption       :=FormatFloat(mcasas, (ValFloat(VALOR.Caption)-Qr_DarCRVALOR.Value));
      TOTNF.Caption       :=VALOR.Caption;
      //      TOTNF.Caption       :=FormatFloat(mcasas, (ValFloat(TOTNF.Caption)-Qr_DarCRTOTNF.Value));
      ICMSR.Caption       :=FormatFloat(mcasas, (ValFloat(ICMSR.Caption)-Qr_DarCRICMSR.Value));
      VALFRE.Caption      :=FormatFloat(mcasas, (ValFloat(VALFRE.Caption)-Qr_DarCRVALFRE.Value));
      TARBAN.Caption      :=FormatFloat(mcasas, (ValFloat(TARBAN.Caption)-Qr_DarCRTARBAN.Value));
      MULTA.Caption       :=FormatFloat(mcasas, (ValFloat(MULTA.Caption)-Qr_DarCRMULTA.Value));
      JURD.Caption        :=FormatFloat(mcasas, (ValFloat(JURD.Caption)-Qr_DarCRJURD.Value));
      DESCD.Caption       :=FormatFloat(mcasas, (ValFloat(DESCD.Caption)-Qr_DarCRDESCD.Value));
      DESCF.Caption       :=FormatFloat(mcasas, (ValFloat(DESCF.Caption)-Qr_DarCRDESCF.Value));
      TOTDI01.Caption     :=FormatFloat(mcasas, (ValFloat(TOTDI01.Caption)-Qr_DarCRTOTDI01.Value));
      TOTDI02.Caption     :=FormatFloat(mcasas, (ValFloat(TOTDI02.Caption)-Qr_DarCRTOTDI02.Value));
      TOTDI03.Caption     :=FormatFloat(mcasas, (ValFloat(TOTDI03.Caption)-Qr_DarCRTOTDI03.Value));
      TOTDIVL.Caption     :=FormatFloat(mcasas, (ValFloat(TOTDIVL.Caption)-Qr_DarCRTOTDIVL.Value));
      VALDES01.Caption    :=FormatFloat(mcasas, (ValFloat(VALDES01.Caption)-Qr_DarCRVALDES01.Value));
      VALDES02.Caption    :=FormatFloat(mcasas, (ValFloat(VALDES02.Caption)-Qr_DarCRVALDES02.Value));
      VLRDES.Caption      :=FormatFloat(mcasas, (ValFloat(VLRDES.Caption)-Qr_DarCRVLRDES.Value));
      QTDDM.Caption       :=FormatFloat(mcasqtd, (ValFloat(QTDDM.Caption)-Qr_DarCRQTDDM.Value));
      COMVEN.Caption      :=FormatFloat(mcasas, (ValFloat(COMVEN.Caption)-Qr_DarCRCOMVEN.Value));
      COMIS_EXTRA.Caption :=FormatFloat(mcasas, (ValFloat(COMIS_EXTRA.Caption)-Qr_DarCRCOMIS_EXTRA.Value));
      COMV02.Caption      :=FormatFloat(mcasas, (ValFloat(COMV02.Caption)-Qr_DarCRCOMV02.Value));
      COMV03.Caption      :=FormatFloat(mcasas, (ValFloat(COMV03.Caption)-Qr_DarCRCOMV03.Value));
      COMTEL.Caption      :=FormatFloat(mcasas, (ValFloat(COMTEL.Caption)-Qr_DarCRCOMTEL.Value));
      COMSUP.Caption      :=FormatFloat(mcasas, (ValFloat(COMSUP.Caption)-Qr_DarCRCOMSUP.Value));
      SEMCOM.Caption      :=FormatFloat(mcasas, (ValFloat(SEMCOM.Caption)-Qr_DarCRSEMCOM.Value));
      COMASSE.Caption     :=FormatFloat(mcasas, (ValFloat(COMASSE.Caption)-Qr_DarCRCOMASSE.Value));
      VALSEG.Caption      :=FormatFloat(mcasas, (ValFloat(VALSEG.Caption)-Qr_DarCRVALSEG.Value));
      TOTCGRU.Caption     :=FormatFloat(mcasas, (ValFloat(TOTCGRU.Caption)-Qr_DarCRTOTCGRU.Value));
      TOTSGRU.Caption     :=FormatFloat(mcasas, (ValFloat(TOTSGRU.Caption)-Qr_DarCRTOTSGRU.Value));
      TBCOCOB.Caption     :=FormatFloat(mcasas, (ValFloat(TBCOCOB.Caption)-Qr_DarCRTBCOCOB.Value));
      end;
   end;
if ptipo<>1 then
   begin
   if Trim(FC_DATAREF.Caption)='/  /' then
      begin
      if (DM1.Tb_LDRDATAREF.IsNull) or (DM1.Tb_LDRDATAREF.Value<=pdatanula) then
         FC_DATAREF.Caption   :='/  /'
      else
         FC_DATAREF.Caption   :=FormatDatetime(fdt2,  DM1.Tb_LDRDATAREF.Value);
      end;

   if Trim(FC_DATAP.Caption)='/  /' then
      begin
      if (DM1.Tb_LDRDATADP.IsNull) or (DM1.Tb_LDRDATADP.Value<=pdatanula) then
         FC_DATAP.Caption   :='/  /'
      else
         FC_DATAP.Caption   :=FormatDatetime(fdt2,  DM1.Tb_LDRDATADP.Value);
      end;
   if mChaveFC=0 then
      begin
      mChaveFC:=DM1.Tb_LDRCODLDR.Value;
      mIdLdrNew:=DM1.Tb_LDRLDR_ID_NEW.AsInteger;
      end;
   if pCalc=0 then
      FC_VALORP.Caption        :=FormatFloat(mcasas, (ValFloat(FC_VALORP.Caption)+DM1.Tb_LDRVALORP.Value))
   else
      FC_VALORP.Caption        :=FormatFloat(mcasas, (ValFloat(FC_VALORP.Caption)-DM1.Tb_LDRVALORP.Value));
   if trim(FC_NATDC.Caption)='' then
      FC_NATDC.Caption      :=DM1.Tb_LDRNATDC.Value;
   if Trim(FC_NOMDEP.Caption)='' then
      begin
      FC_CODDEP.Caption      :=DM1.Tb_LDRCODDEP.AsString;
      FC_NOMDEP.Caption      :=DM1.Tb_LDRNOMDEP.Value;
      end;
   if Trim(FC_NOMCC.Caption)='' then
      begin
      FC_CODCC.Caption       :=DM1.Tb_LDRCODCC.Value;
      FC_NOMCC.Caption       :=DM1.Tb_LDRNOMCCU.Value;
      end;
   if Trim(FC_NOMBCO.Caption)='' then
      begin
      FC_CODBCO.Caption       :=DM1.Tb_LDRCODBCO.AsString;
      FC_NOMBCO.Caption       :=DM1.Tb_LDRNOMBCO.Value;
      end;
   if Trim(FC_NOME.Caption)='' then
      begin
      FC_TIPO.Caption         :=DM1.Tb_LDRTIPO.Value;
      FC_CODIGO.Caption       :=DM1.Tb_LDRCODIGO.AsString;
      FC_NOME.Caption         :=DM1.Tb_LDRNOME.Value;
      end;
   if trim(FC_DOC.Caption)='' then
      FC_DOC.Caption          :=DM1.Tb_LDRNUMDOC.Value;
   if Trim(FC_DESCRICAO.Caption)='' then
      FC_DESCRICAO.Caption    :=DM1.Tb_LDRDESCMV.Value;
   end;
result:=true;

end;

procedure TFrm_DupAgru.STG1DblClick(Sender: TObject);
begin
if STG1.Row<1 then
   exit;
if STG1.Cells[0,STG1.Row]='X' then
   STG1.Cells[0,STG1.Row]:=' '
else
   STG1.Cells[0,STG1.Row]:='X';
AtualizarValores(STG1.Row);


end;

// inicio


procedure TFrm_DupAgru.AtualizarValores(pRow: integer);
var
mexiste: Boolean;
begin
if pRow<1 then
   exit;
mexiste:=false;
if fContaMarcados>0 then
   mexiste:=true;

if mexiste then
   begin
   if not Qr_dar.Locate('CRNUMERO;CRDESD;CRDUP;CRDTEMIS',
       vararrayof([valfloat(STG1.Cells[01,pRow]),
                STG1.Cells[02,pRow],
                valfloat(STG1.Cells[03,pRow]),
                StrtoDate(STG1.Cells[07,pRow])]),[]) then
      begin
      fMensagem('Erro ao Localizar a Duplicata: '+STG1.Cells[01,pRow],0,['0'],0);
      exit;
      end;
   end
else
   begin
   fDupAgruZeraTxt(0);
   exit;
   end;

if flcadldr(0,0,valint(STG1.Cells[18,pRow]),trim(STG1.Cells[19,pRow])) then
   begin
   if STG1.Cells[0,pRow]='X' then
      fAtualizarTxt(0,0)
   else
      fAtualizarTxt(0,1);
   end
else
   begin
   if STG1.Cells[0,pRow]='X' then
      fAtualizarTxt(1,0)
   else
      fAtualizarTxt(1,1);
   end;


end;

// termino


procedure TFrm_DupAgru.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
begin
if ((aCol=0) or (Acol=4) or (Acol=6) or (Acol=9)
   or (Acol=10) or (Acol=11) or (Acol=12) or (Acol=13) or (Acol=15)  or (Acol=17) or (Acol=18) or (Acol=19) ) then
   begin

//Pega o texto da célula
  Texto := STG1.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG1.Canvas.TextWidth(Texto);
  AlturaTexto := STG1.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG1.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

function TFrm_DupAgru.fContaMarcados: Integer;
var
mqtd: Integer;
x: Integer;
begin
mqtd:=0;
for x:=0 to STG1.RowCount do
   begin
   if STG1.Cells[00,x]='X' then
      mqtd:=mqtd+1;
   end;
result:=mqtd;
end;


procedure TFrm_DupAgru.bbAgruparClick(Sender: TObject);
begin
if fContaMarcados<2 then
   begin
   fMensagem('Pelo menos duas duplicatas tem que ser selecionada!',0,['0'],0);
   exit;
   end;

{
if flcaddar(8,codemp,0,0,0,fdeixanum(NUMERO.Text),
                     Trim(DESD.Text),
                     inttostr(CB_DUP.ItemIndex)
                     ,IIF(fSonumero(DTEMIS.Caption)=0,pDataNula, StrTodateTime(DTEMIS.Caption))
                     ,'') then
   begin
   MessageDlg('Ja Existe Um titulo Com o Mesmo Numero '+NUMERO.Text+mQuebraLinha+'Razao Social '+DM1.Tb_Darrazaocli.AsString+' Valor '+FormatFloat(mcasas , DM1.Tb_DarCRVALOR.AsFloat)+'!',mtWarning,[mbOk],0);
   exit;
   end;
}
fGravarAgru;

fGravarDup;
if ValFloat(FC_VALORP.Caption)<>0 then
   fGravarFC;
fDupAgruZeraTxt(1);


end;

procedure TFrm_DupAgru.CODCLI_DUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI_DUP.Text:=fChamaCli(0,'Frm_DupAgru',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_DupAgru.CODCLI_DUPExit(Sender: TObject);
begin
CODCLI_DUP.Text:=fdeixanum2(CODCLI_DUP.Text);
if Trim(CODCLI_DUP.Text)='' then
   NOMCLI_DUP.Text:='Todos...'
else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI_DUP .Text)) then
      NOMCLI_DUP.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI_DUP.SetFocus;
      end;
   end;


end;

procedure TFrm_DupAgru.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_DupAgru',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_DupAgru.CODV02KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODV02.Text :=fChamaVen(0,'frm_DupPart',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_DupAgru.CODV03KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODV03.Text :=fChamaVen(0,'frm_DupAgru',Key);
   if trim(CODV03.Text)<>'' then
      CODV03Exit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_DupAgru.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)='' then
   NOMVEN.Text:='Todos...'
else
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      NOMVEN.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;



end;

procedure TFrm_DupAgru.CODV02Exit(Sender: TObject);
begin
CODV02.Text:=fdeixanum2(CODV02.Text);
if Trim(CODV02.Text)='' then
   NOMV02.Text:='Todos...'
else
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODV02.Text)) then
      NOMV02.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODV02.SetFocus;
      end;
   end;



end;

procedure TFrm_DupAgru.CODV03Exit(Sender: TObject);
begin
CODV03.Text:=fdeixanum2(CODV03.Text);
if Trim(CODV03.Text)='' then
   NOMV03.Text:='Todos...'
else
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODV03.Text)) then
      NOMV03.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODV03.SetFocus;
      end;
   end;



end;

procedure TFrm_DupAgru.CODBCOExit(Sender: TObject);
begin
if ValFloat(CODBCO.Text)=0 then
   CODBCO.Text:='';
if (trim(CODBCO.Text)='') then
   begin
   NOMBCO.Text:='Carteira';
   exit;
   end;
if not flcadbco(1,0,0,CODBCO.Text) then
   begin
   fMensagem('Banco nao Cadastrado!',0,['0'],0);
   CODBCO.SetFocus;
   end
else
   NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;

end;

procedure TFrm_DupAgru.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_DupAgru',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_DupAgru.CODTLVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTLV.Text:=fChamaUsr(0,'frm_DupAgru',Key);
   if trim(CODTLV.Text)<>'' then
      CODTLVExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_DupAgru.CODTLVExit(Sender: TObject);
begin
CODTLV.Text:=fdeixanum2(CODTLV.Text);
if trim(CODTLV.Text)='' then
   exit;
if not flcadusr(1,0,CODTLV.Text) then
   begin
   fMensagem('Vendedor nao Cadastrado!',0,['0'],0);
   CODTLV.SetFocus;
   end
else
   NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value;


end;

procedure TFrm_DupAgru.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Con, Frm_Con);
   Frm_Con.Edit1.Text:=key;
   Frm_Con.BBnAtu.Click;
   Frm_Con.Edit1.SelStart:=1;
   Frm_Con.Edit1.SelLength:=1;
   Frm_Con.PC1.ActivePageIndex:=1;
   con_ori:='Frm_DupAgru';
   if Frm_Con.ShowModal=mrok then
      begin
      CODCV.Text:=DM1.Tb_CVCVCODCV.AsString;
      end;            
   Frm_Con.Free;
   key:=#0;
   end;

end;

procedure TFrm_DupAgru.CODCVExit(Sender: TObject);
begin
CODCV.Text:=fdeixanum2(CODCV.Text);
if Trim(CODCV.Text)='' then
   begin
   NOMCV.Text:='';
   exit;
   end;
if not flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',Trim(codcv.Text)) then
   begin
   fMensagem('Convenio não Cadastrado!',0,['0'],0);
   CODCV.SetFocus;
   end
else
   NOMCV.Text:=dm1.Query1.Fields[0].AsString;
end;
function TFrm_dupAgru.fGravarDup: Boolean;
begin



   DM4.Qr_IncDar.Close;
   DM4.Qr_IncDar.ParambyName('CRCODEMP').AsFloat    := codemp;
   DM4.Qr_IncDar.ParambyName('CRCODECF').AsFloat    := fsonumero(CODECF.Caption);
   DM4.Qr_IncDar.ParambyName('CRNUMERO').AsFloat    := fsonumero(NUMERO.Text);
   DM4.Qr_IncDar.ParambyName('CRDESD').AsString     := Trim(DESD.Text);
   DM4.Qr_IncDar.ParambyName('CRDUP').AsInteger     := CB_DUP.ItemIndex;
   DM4.Qr_IncDar.ParambyName('CRCODCLI').AsFloat    := fsonumero(CODCLI_DUP.Text);
   DM4.Qr_IncDar.ParambyName('CRNUMCUP').AsFloat    := fsonumero(NUMCF.Caption);
   if Trim(DATACF.Caption)='/  /' then
      DM4.Qr_IncDar.ParambyName('CRDATCUP').AsDateTime := pdatanula
   else
      DM4.Qr_IncDar.ParambyName('CRDATCUP').AsDateTime := StrToDate(DATACF.Caption);
   DM4.Qr_IncDar.ParambyName('CRVALOR').AsFloat     := ValFloat(VALOR.Caption);
   DM4.Qr_IncDar.ParambyName('CRTOTNF').AsFloat     := ValFloat(TOTNF.Caption);
   DM4.Qr_IncDar.ParambyName('CRTARBAN').AsFloat     :=ValFloat(TARBAN.Caption);

   if Trim(DTEMIS.Caption)='/  /' then
      begin
      DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime := pdatanula;
      DM4.Qr_IncDar.ParambyName('CRCOMPETENCIA_DTINICIO').AsDateTime := pdatanula;

      end
   else
      begin
      DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime               := StrtoDate(DTEMIS.Caption);
      DM4.Qr_IncDar.ParambyName('CRCOMPETENCIA_DTINICIO').AsDateTime := strtodatetime('01/'+formatdatetime('mm/yyyy', strtodate(DTEMIS.caption)));
      end;

   if Trim(DTVCTO.Caption)='/  /' then
      DM4.Qr_IncDar.ParambyName('CRDTVCTO').AsDateTime := pdatanula
   else
      DM4.Qr_IncDar.ParambyName('CRDTVCTO').AsDateTime := StrtoDate(DTVCTO.Caption);


   DM4.Qr_IncDar.ParambyName('CRCOMPETENCIA_TIPO').AsInteger      := 0;

   DM4.Qr_IncDar.ParambyName('CRDTPAG').AsDateTime  := pdatanula;
   DM4.Qr_IncDar.ParambyName('CRDTBX').AsDateTime   := pdatanula;
   DM4.Qr_IncDar.ParambyName('CRNPED').AsFloat      := mchaveped;
   DM4.Qr_IncDar.ParambyName('CRNPED_NIVEL').AsFloat:= 0;
   DM4.Qr_IncDar.ParambyName('CRORDEM').AsFloat     := mOrdemPed;
   if ValInt(QTDPARC.Text)<1 then
      DM4.Qr_IncDar.ParambyName('CRQTDPARC').AsFloat   := 1
   else
      DM4.Qr_IncDar.ParambyName('CRQTDPARC').AsFloat   :=fsonumero(QTDPARC.Text);

   if ValInt(NUMPARC.Text)<1 then
      DM4.Qr_IncDar.ParambyName('CRNUMPARC').AsFloat   := 1
   else
      DM4.Qr_IncDar.ParambyName('CRNUMPARC').AsFloat   :=fsonumero(NUMPARC.Text);

   DM4.Qr_IncDar.ParambyName('CRINST01').AsString      := INST01.Text;
   DM4.Qr_IncDar.ParambyName('CRINST02').AsString      := INST02.Text;
   DM4.Qr_IncDar.ParambyName('CRINST03').AsString      := INST03.Text;
   DM4.Qr_IncDar.ParambyName('CRINST04').AsString      := INST04.Text;

   DM4.Qr_IncDar.ParambyName('CRVALPAG').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCODVEN').AsFloat    := fsonumero(CODVEN.Text);
   DM4.Qr_IncDar.ParambyName('CRCODTLV').AsFloat    := fsonumero(CODTLV.Text);
   DM4.Qr_IncDar.ParambyName('CRSTATUS').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CROBS').AsString      := OBS.Text;
   DM4.Qr_IncDar.ParambyName('CRDESC').AsFloat      := 0;
   DM4.Qr_IncDar.ParambyName('CRDEVOL').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRJUROS').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTE').AsFloat      := 0;
   DM4.Qr_IncDar.ParambyName('CRICMSR').AsFloat     := ValFloat(ICMSR.Caption);
   DM4.Qr_IncDar.ParambyName('CRDESCF').AsFloat     := ValFloat(DESCF.Caption);
   if Trim(DTDESCF.Caption)='/  /' then
      DM4.Qr_IncDar.ParambyName('CRDTDESCF').AsDateTime:=pdatanula
   else
      DM4.Qr_IncDar.ParambyName('CRDTDESCF').AsDateTime:=StrToDate(DTDESCF.Caption);
   DM4.Qr_IncDar.ParambyName('CRJURD').AsFloat      := ValFloat(JURD.Caption);
   DM4.Qr_IncDar.ParambyName('CRDESCD').AsFloat     := ValFloat(DESCD.Caption);
   DM4.Qr_IncDar.ParambyName('CRMULTA').AsFloat     := ValFloat(MULTA.Caption);
   DM4.Qr_IncDar.ParambyName('CRQTDDM').AsFloat     := ValFloat(QTDDM.Caption);
   DM4.Qr_IncDar.ParambyName('CREMIDUP').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CREMIBLQ').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRVALFRE').AsFloat    := ValFloat(VALFRE.Caption);
   DM4.Qr_IncDar.ParambyName('CRNOSNUM').AsString   := ' ';
   DM4.Qr_IncDar.ParambyName('CRDNOSNUM').AsString  := ' ';
   DM4.Qr_IncDar.ParambyName('CRNFACUM').AsString   := copy(nfAcumNovo,1,253);
   DM4.Qr_IncDar.ParambyName('CRTIPCOB').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRDTALT').AsDateTime  := pdatanula;
   DM4.Qr_IncDar.ParambyName('CRUSRALT').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRUSRBX').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRCOMVEN').AsFloat    := ValFloat(COMVEN.Caption);
   DM4.Qr_IncDar.ParambyName('CRCOMV02').AsFloat    := ValFloat(COMV02.Caption);
   DM4.Qr_IncDar.ParambyName('CRCOMV03').AsFloat    := ValFloat(COMV03.Caption);
   DM4.Qr_IncDar.ParambyName('CRCOMTEL').AsFloat    := ValFloat(COMTEL.Caption);
   DM4.Qr_IncDar.ParambyName('CRCOMSUP').AsFloat    := ValFloat(COMSUP.Caption);
   DM4.Qr_IncDar.ParambyName('CRSEMCOM').AsFloat    := ValFloat(SEMCOM.Caption);
   DM4.Qr_IncDar.ParambyName('CRTOTDI01').AsFloat   := ValFloat(TOTDI01.Caption);
   DM4.Qr_IncDar.ParambyName('CRTOTDI02').AsFloat   := ValFloat(TOTDI02.Caption);
   DM4.Qr_IncDar.ParambyName('CRTOTDI03').AsFloat   := ValFloat(TOTDI03.Caption);
   DM4.Qr_IncDar.ParambyName('CRTOTDIVL').AsFloat   := ValFloat(TOTDIVL.Caption);
   DM4.Qr_IncDar.ParambyName('CRVALDES01').AsFloat   := ValFloat(VALDES01.Caption);
   DM4.Qr_IncDar.ParambyName('CRVALDES02').AsFloat   := ValFloat(VALDES02.Caption);
   DM4.Qr_IncDar.ParambyName('CRVLRDES').AsFloat     := ValFloat(VLRDES.Caption);
   DM4.Qr_IncDar.ParambyName('CRCODLDR').AsFloat     := mChaveFC;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_FC').AsFloat  := ls_codldr;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CP').AsFloat  := mlotseqped;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_LB').AsFloat  := ls_codldr;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV').AsFloat  := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV02').AsFloat:= 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV03').AsFloat:= 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CS').AsFloat  := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CT').AsFloat  := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV').AsFloat      := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV02').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV03').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCS').AsFloat      := 0;
   DM4.Qr_IncDar.ParambyName('CRCODORI').AsFloat     := mCodOri;
   DM4.Qr_IncDar.ParambyName('CRLOTCT').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRCODUSR').AsFloat    := codusr;
   DM4.Qr_IncDar.ParambyName('CRHRALT').AsString    := ' ';
   DM4.Qr_IncDar.ParambyName('CRCODV02').AsFloat    := fsonumero(CODV02.Text);
   DM4.Qr_IncDar.ParambyName('CRCODV03').AsFloat    := fsonumero(CODV03.Text);
   DM4.Qr_IncDar.ParambyName('CRCODCV').AsFloat     := fsonumero(CODCV.Text);
   DM4.Qr_IncDar.ParambyName('CRCODBAR').AsString   := ' ';
   DM4.Qr_IncDar.ParambyName('CRCODDIG').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRACEITE').AsString     := 'N';
   DM4.Qr_IncDar.ParambyName('CRESPECIE').AsString    := 'DM';
   DM4.Qr_IncDar.ParambyName('CRLEMAT').AsFloat       := 0;
   DM4.Qr_IncDar.ParambyName('CRCODASSE').AsFloat     :=ValFloat(CODASSE.Text);
   DM4.Qr_IncDar.ParambyName('CRCOMASSE').AsFloat     :=ValFloat(COMASSE.Caption);
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CASSE').AsFloat:=0;
   DM4.Qr_IncDar.ParambyName('CRLOTCASSE').AsFloat    :=0;
   DM4.Qr_IncDar.ParambyName('CRVALSEG').AsFloat      :=ValFloat(VALSEG.Caption);
   DM4.Qr_IncDar.ParambyName('CRTBCOCOB').AsFloat     :=ValFloat(TBCOCOB.Caption);
   DM4.Qr_IncDar.ParambyName('CREMIBOR').AsFloat      :=0;

   DM4.Qr_IncDar.ParambyName('CRCHD_BANCO').AsFloat   :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_AGENCIA').AsFloat :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_CC').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_NUMERO').AsFloat  :=0;
   DM4.Qr_IncDar.ParambyName('CRCODBCO').AsFloat    := fsonumero(CODBCO.Text);
   if fsonumero(CODBCO.Text)<>0 then
      DM4.Qr_IncDar.ParambyName('CRTCB').AsFloat         :=1
   else
      DM4.Qr_IncDar.ParambyName('CRTCB').AsFloat         :=0;

   DM4.Qr_IncDar.ParambyName('CRCAUCAO').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRBCOCAU').AsFloat         :=0;
   DM4.Qr_IncDar.ParambyName('CRDTCAU').AsDateTime       :=pdatanula;
   DM4.Qr_IncDar.ParambyName('CRSPC_DTPEN').AsDateTime   :=pdatanula;;
   DM4.Qr_IncDar.ParambyName('CRSPC_DTNEG').AsDateTime   :=pdatanula;;
   DM4.Qr_IncDar.ParambyName('CRSERASA_DTNEG').AsDateTime:=pdatanula;;
   DM4.Qr_IncDar.ParambyName('CRNR').AsFloat             :=0;

   DM4.Qr_IncDar.ParambyName('CRCODV04').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCOMV04').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV04').AsFloat :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV04').AsFloat     :=0;
   DM4.Qr_IncDar.ParambyName('CRTOTIPI').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRTOTCGRU').AsFloat     :=ValFloat(TOTCGRU.Caption);
   DM4.Qr_IncDar.ParambyName('CRTOTSGRU').AsFloat     :=ValFloat(TOTSGRU.Caption);
   DM4.Qr_IncDar.ParambyName('CRCUSBCO').AsFloat      :=0;

//   DM4.Qr_IncDar.ParambyName('CRCODCC').AsString     := mcodccu;
   DM4.Qr_IncDar.ParambyName('CRCODCC').AsString     := FC_CODCC.Caption;
//   DM4.Qr_IncDar.ParambyName('CRCODDEP').AsString    := mcoddep;
   DM4.Qr_IncDar.ParambyName('CRCODDEP').AsString    := FC_CODDEP.Caption;
   DM4.Qr_IncDar.ParambyName('CRDESCMV').AsString    := mdesc_mov;
//   DM4.Qr_IncDar.ParambyName('CRNOMCC').AsString     := mnomccu;
   DM4.Qr_IncDar.ParambyName('CRNOMCC').AsString     := FC_NOMCC.Caption;
//   DM4.Qr_IncDar.ParambyName('CRNOMDEP').AsString    := mnomdep;
   DM4.Qr_IncDar.ParambyName('CRNOMDEP').AsString    := FC_NOMDEP.Caption;
   DM4.Qr_IncDar.ParambyName('CRNOMCTA').AsString    := FC_NOMBCO.Caption;
   DM4.Qr_IncDar.ParambyName('CRCODCTA').AsInteger   := ValInt(FC_CODBCO.Caption);
//   DM4.Qr_IncDar.ParambyName('CRNATDC').AsString     := mnatdc;
   DM4.Qr_IncDar.ParambyName('CRNATDC').AsString     := FC_NATDC.Caption;
   DM4.Qr_IncDar.ParambyName('CRCOMIS_EXTRA').AsFloat:= ValFloat(COMIS_EXTRA.Caption);
   DM4.Qr_IncDar.ParambyName('CRSEQ').AsFloat         :=0;
   DM4.Qr_IncDar.ParambyName('CRPFPGTO').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRTABPV').AsString      :='AP';
   DM4.Qr_IncDar.ParambyName('CRCODPV').AsFloat       :=0;
   DM4.Qr_IncDar.ParambyName('CRVINC02').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCODFPGTO').AsFloat    :=0;
   DM4.Qr_IncDar.ParambyName('CRNOMFPGTO').AsString   :=' ';
   DM4.Qr_IncDar.ParambyName('CRFIN_CODFIN').AsFLoat   :=0;
   DM4.Qr_IncDar.ParambyName('CRLANCFIN').AsFLoat      :=0;
   DM4.Qr_IncDar.ParambyName('CRRECFRENTE').AsFLoat    :=0;
   DM4.Qr_IncDar.ParambyName('CRDATPED').AsDateTime    :=StrtoDate(DTEMIS.Caption);
   DM4.Qr_IncDar.ParambyName('CRCX_CODCAI').AsFloat    :=codcai;
   DM4.Qr_IncDar.ParambyName('CRCX_LOTMOV').AsFloat    :=lotmov;
   DM4.Qr_IncDar.ParambyName('CRCODCAR').AsFloat       :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_EC').AsFloat    :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTE_EC').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRTITPROT').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_EMITENTE').AsString:='';
   DM4.Qr_IncDar.ParambyName('CRCHAVE_ID_ANO').AsInteger :=valint(formatdatetime('yyyy', DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime));
   DM4.Qr_IncDar.ParambyName('CRCHAVE_ID').AsInteger    :=fBuscareTestarID('CADDAR_'+formatdatetime('yyyy', DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDateTime));

   DM4.Qr_IncDar.ParambyName('CRID_NEW').AsFloat          :=mIdDarNew;
   DM4.Qr_IncDar.ParambyName('CRID_PED01_NEW').AsFloat    :=mIdPed01New;
   DM4.Qr_IncDar.ParambyName('CRID_LDR_NEW').AsFloat       :=mIdLdrNew;

   Try
      DM4.Qr_IncDar.ExecSQL;
      fdm1StartCommit;
   except
      fMensagem('Erro ao incluir duplicata: 1334',0,['0'],0);
      end;
result:=true;
end;
function TFrm_DupAgru.fGravarFC: Boolean;
begin
DM4.Qr_IncLDR.Close;
DM4.Qr_IncLDR.ParambyName('CODEMP').AsFloat     := codemp;
if (Trim(FC_DATAP.Caption)='') or (Trim(FC_DATAP.Caption)='/  /') then
   DM4.Qr_IncLDR.ParambyName('DATADP').AsDateTime  := pdatanula
else
   DM4.Qr_IncLDR.ParambyName('DATADP').AsDateTime  := StrtoDate(FC_DATAP.Caption);
DM4.Qr_IncLDR.ParambyName('CODLDR').AsFloat     := mChaveFC;
DM4.Qr_IncLDR.ParambyName('DATAREAL').AsDateTime:= pdatanula;
if (Trim(FC_DATAREF.Caption)='') or (Trim(FC_DATAREF.Caption)='/  /') then
   DM4.Qr_IncLDR.ParambyName('DATAREF').AsDateTime  := pdatanula
else
   DM4.Qr_IncLDR.ParambyName('DATAREF').AsDateTime  := StrtoDate(FC_DATAREF.Caption);
DM4.Qr_IncLDR.ParambyName('VALORP').AsFloat     := ValFloat(FC_VALORP.Caption);
DM4.Qr_IncLDR.ParambyName('VALORR').AsFloat     := 0;
DM4.Qr_IncLDR.ParambyName('CODBCO').AsFloat     := fsonumero(FC_CODBCO.Caption);
DM4.Qr_IncLDR.ParambyName('CODCC').AsString     := trim(FC_CODCC.Caption);
DM4.Qr_IncLDR.ParambyName('CODDEP').AsString    := trim(FC_CODDEP.Caption);
DM4.Qr_IncLDR.ParambyName('NATDC').AsString     := Trim(FC_NATDC.Caption);
DM4.Qr_IncLDR.ParambyName('DESCMV').AsString    := trim(FC_DESCRICAO.Caption);
DM4.Qr_IncLDR.ParambyName('NUMDOC').AsString    := Trim(FC_DOC.Caption);
DM4.Qr_IncLDR.ParambyName('NUMDOC2').AsString   := ' ';
DM4.Qr_IncLDR.ParambyName('STATUS').AsFloat     := 0;
DM4.Qr_IncLDR.ParambyName('ORIGEM').AsFloat     := mCodOri;
DM4.Qr_IncLDR.ParambyName('LOCDEP').AsFloat     := mCodOri;
DM4.Qr_IncLDR.ParambyName('TIPO').AsString      := trim(FC_TIPO.Caption);
DM4.Qr_IncLDR.ParambyName('CODIGO').AsFloat     := fsonumero(FC_CODIGO.Caption);
DM4.Qr_IncLDR.ParambyName('USRALT').AsFloat     := 0;
DM4.Qr_IncLDR.ParambyName('DTALT').AsDateTime      := pdatanula;
DM4.Qr_IncLDR.ParambyName('HRALT').AsString     := ' ';
DM4.Qr_IncLDR.ParambyName('COMPENS').AsFloat    := 1;
//DM4.Qr_IncLDR.ParambyName('COMPENS').AsFloat    := 0;
DM4.Qr_IncLDR.ParambyName('DTCOMP').AsDateTime  := pdatasis;
DM4.Qr_IncLDR.ParambyName('DTHREXC').AsDateTime := pdatanula;
DM4.Qr_IncLDR.ParambyName('NOMDEP').AsString    := trim(FC_NOMDEP.Caption);
DM4.Qr_IncLDR.ParambyName('NOMBCO').AsString    := trim(FC_NOMBCO.Caption);
DM4.Qr_IncLDR.ParambyName('NOMCCU').AsString    := trim(FC_NOMCC.Caption);
DM4.Qr_IncLDR.ParambyName('NOME').AsString      := trim(FC_NOME.Caption);
DM4.Qr_IncLDR.ParambyName('FC_OBSFIN').AsString := ' ';

DM4.Qr_IncLDR.ParambyName('LOTSEQ').AsFloat     := ls_codldr;
DM4.Qr_IncLDR.ParambyName('LOTMOV').AsFloat     := lotmov;
DM4.Qr_IncLDR.ParambyName('DATLAN').AsDateTime  := pdatasis;
DM4.Qr_IncLDR.ParambyName('LEMAT').AsFloat      := 0;
DM4.Qr_IncLDR.ParambyName('CODUSR_CX').AsFloat   := codusr;
DM4.Qr_IncLDR.ParambyName('LDR_ID_NEW').AsFloat  := fBuscarProximoId('CADLDR_SEQ');
Try
   DM4.Qr_IncLDR.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(08,1385,'frm_DupAgru','CADLDR');
   end;
result:=true;
end;

function TFrm_DupAgru.fGravarAgru: Boolean;
var
x: Integer;
mcomp: String;
mCondicao_old: STRING;
mChave_Old: Real;
query_agru: tQuery;
mLoteAgrup: Integer;
begin
query_agru:=tQuery.create(nil);
query_agru.DatabaseName:=DM1.SG_ASSOC.databasename;
nfAcumNovo:='';
query_agru.Close;
query_agru.SQL.clear;
query_agru.SQL.Add('SELECT DUPAGRU_LOTE_SEQ.NEXTVAL as chave from dual ');
try
   query_agru.Open;
   mLoteAgrup:=query_agru.fieldbyName('chave').Asinteger;
except on e : exception do
   begin
   ex_erroSql_Novo(query_agru,1573,'SGE '+e.message,'DUPAGRU_LOTE_SEQ');
   exit;
   end;
   end;
// acumulado

for x:=1 to STG1.RowCount do
   begin
   if (STG1.Cells[00,x]<>'X')  OR ((fsonumero(STG1.Cells[15,x])=0) and (fsonumero(STG1.Cells[07,x])=0)) then
      continue;
   nfAcumNovo:=nfAcumNovo+mcomp+iif(Trim(STG1.Cells[16,x])='','',Trim(STG1.Cells[16,x])+'/')+STG1.Cells[20,x];
   mcomp:='/';
   end;


// termino acumulado


query_agru.Close;
query_agru.SQL.clear;
query_agru.Sql.Add('Insert into DUPAGRU ('
                  +' DACODEMP '
                  +',DACODECF '
                  +',DANUMERO '
                  +',DADESD '
                  +',DADUP '
                  +',DADTEMIS '
                  +',DAVALOR '
                  +',DALOTSEQ '
                  +',DACHAVE '
                  +',DAORDEM '
                  +',DANUMCF '
                  +',DADATACF '
                  +',DALEMAT '
                  +',DANFACUM '
                  +',DATOTNF'
                  +',DACHAVEID'
                  +',DALOTEAGRUP'
                  +',DAID_NEW'
                  +',DAID_DAR_NEW'
                  +') values ('
                  +' :CODEMP '
                  +',:CODECF '
                  +',:NUMERO '
                  +',:DESD '
                  +',:DUP '
                  +',:DTEMIS '
                  +',:VALOR '
                  +',:LOTSEQ '
                  +',:CHAVE '
                  +',:ORDEM '
                  +',:NUMCF '
                  +',:DATACF '
                  +',:LEMAT '
                  +',:NFACUM '
                  +',:TOTNF '
                  +',0  '
                  +',:DALOTEAGRUP'
                  +',DUPAGRU_SEQ.NEXTVAL'
                  +',:DAID_DAR_NEW'

                  +')');
for x:=1 to STG1.RowCount do
   begin
   if (STG1.Cells[00,x]<>'X')  OR ((fsonumero(STG1.Cells[15,x])=0) and (fsonumero(STG1.Cells[07,x])=0)) then
      continue;
   query_agru.ParamByName('CODEMP').AsFloat:=codemp;
   query_agru.ParamByName('CODECF').AsFloat:=fsonumero(STG1.Cells[15,x]);
   query_agru.ParamByName('NUMERO').AsFloat:=fsonumero(STG1.Cells[01,x]);
   query_agru.ParamByName('DESD').AsString :=Trim(STG1.Cells[02,x]);
   query_agru.ParamByName('DUP').AsFloat   :=fsonumero(STG1.Cells[03,x]);
   if (Trim(STG1.Cells[07,x])='')  or (Trim(STG1.Cells[07,x])='/  /') then
      query_agru.ParamByName('DTEMIS').AsDateTime:=pdatanula
   else
      query_agru.ParamByName('DTEMIS').AsDateTime:=StrtoDate(STG1.Cells[07,x]);
   query_agru.ParamByName('VALOR').AsFloat       :=fsonumero(STG1.Cells[06,x]);
   query_agru.ParamByName('LOTSEQ').AsFloat      :=fsonumero(STG1.Cells[09,x]);
   query_agru.ParamByName('CHAVE').AsFloat       :=fsonumero(STG1.Cells[10,x]);
   query_agru.ParamByName('ORDEM').AsFloat       :=fsonumero(STG1.Cells[11,x]);
   query_agru.ParamByName('NUMCF').AsFloat       :=fsonumero(STG1.Cells[13,x]);
   if (Trim(STG1.Cells[14,x])='')  or (Trim(STG1.Cells[14,x])='/  /') then
      query_agru.ParamByName('DATACF').AsDateTime:=pdatanula
   else
      query_agru.ParamByName('DATACF').AsDateTime:=StrtoDate(STG1.Cells[14,x]);
   query_agru.ParamByName('LEMAT').AsFloat       :=fsonumero(STG1.Cells[12,x]);
   query_agru.ParamByName('NFACUM').AsString     :=copy(nfAcumNovo,1,253);
   query_agru.ParamByName('TOTNF').AsFloat       :=fsonumero(STG1.Cells[17,x]);
   query_agru.ParamByName('DALOTEAGRUP').AsFloat :=mLoteAgrup;
   query_agru.ParamByName('DAID_DAR_NEW').AsFloat :=mIdDarNew;


   try
      query_agru.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_agru,1653,'SGE '+e.message,'Erro ao Incluir o DUPAGR');
      exit;
      end;
      end;
   // GERAR OLD
   DM1.Tb_Dar.Close;
   DM1.Tb_Dar.SQL.Clear;
   DM1.Tb_Dar.SQL.Add('SELECT CADDAR.*,CADDAR.ROWID AS IDDAR from CADDAR where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CRCODECF=0'+fdeixanum(STG1.Cells[15,x])
                     +' and CRNUMERO=0'+fdeixanum(STG1.Cells[01,x])
                     +' and CRDESD='+chr(39)+trim(STG1.Cells[02,x])+chr(39)
                     +' and CRDUP=0'+fdeixanum(STG1.Cells[03,x])
                     +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, StrtoDate(STG1.Cells[07,x]))+chr(39));
   DM1.Tb_Dar.Open;


   mCondicao_old:=' where CRCODEMP='+DM1.Tb_DarCRCODEMP.AsString
                  +' and CRNUMERO='+DM1.Tb_DarCRNUMERO.AsString
                  +' and CRDESD='+QuotedStr(DM1.Tb_DarCRDESD.AsString)
                  +' and CRDUP='+DM1.Tb_DarCRDUP.AsString
                  +' and CRNPED='+DM1.Tb_DarCRNPED.AsString;

   mChave_Old:=fGerarTabelas_Old(8 //status
                  ,0 //codigo novo valor chave
                  ,'CRCODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADDAR' // nome da tabela
                  ,mCondicao_old);


   // GERAR OLD
   DM1.Query1.Close;
   DM1.query1.SQL.Clear;
   DM1.query1.SQL.add('Delete from CADDAR where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CRCODECF=0'+fdeixanum(STG1.Cells[15,x])
                     +' and CRNUMERO=0'+fdeixanum(STG1.Cells[01,x])
                     +' and CRDESD='+chr(39)+trim(STG1.Cells[02,x])+chr(39)
                     +' and CRDUP=0'+fdeixanum(STG1.Cells[03,x])
                     +' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, StrtoDate(STG1.Cells[07,x]))+chr(39));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;

   except on e : exception do
      begin
      ex_erroSql_Novo(DM1.Query1,1653,'SGE '+e.message,'Erro ao Incluir o DUPAGR');
      exit;
      end;
      end;
   DM1.Query1.Close;
   DM1.query1.SQL.Clear;
   DM1.query1.SQL.add('Delete from CADLDR where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                     +' LOTSEQ=0'+fdeixanum(STG1.Cells[18,x])
                     +' and CODLDR=0'+fdeixanum(STG1.Cells[19,x]));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_agru,1715,'SGE '+e.message,'Erro ao Incluir o DUPAGR');
      exit;
      end;
      end;
   end;
query_agru.close;
freeandnil(query_agru);
result:=true;
end;

procedure TFrm_DupAgru.NUMDUPIEnter(Sender: TObject);
begin
if STG1.RowCount>2 then
   fDupAgruZeraTxt(1);

end;

procedure TFrm_DupAgru.CODASSEKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODASSE.Text:=fChamaAssessor(0,'frm_DupAgru',Key);
   if trim(CODASSE.Text)<>'' then
      CODASSEExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_DupAgru.CODASSEExit(Sender: TObject);
begin
CODASSE.Text:=fdeixanum2(CODASSE.Text);
if Trim(CODASSE.Text)='' then
   NOMASSE.Text:='Todos...'
else
   begin
   if flqr1('CARAZAO','CA','CADASSE','N','CACODASS',Trim(CODASSE.Text)) then
      NOMASSE.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fMensagem('Assessor não Cadastrado!',0,['0'],0);
      CODASSE.SetFocus;
      end;
   end;


end;

procedure TFrm_DupAgru.QTDPARCExit(Sender: TObject);
begin
QTDPARC.Text:=fdeixanum(QTDPARC.Text);
if ValInt(QTDPARC.Text)<1 then
   QTDPARC.Text:='1'
else if ValInt(QTDPARC.Text)>100 then
   QTDPARC.Text:='1';

end;

procedure TFrm_DupAgru.NUMPARCExit(Sender: TObject);
begin
NUMPARC.Text:=fdeixanum(NUMPARC.Text);
if ValInt(NUMPARC.Text)<1 then
   NUMPARC.Text:='1'
else if ValInt(NUMPARC.Text)>100 then
   NUMPARC.Text:='1';

end;

procedure TFrm_DupAgru.OBSExit(Sender: TObject);
begin
if Length(OBS.Text)>30 then
   OBS.Text:=copy(OBS.Text,1,30);
end;

procedure TFrm_DupAgru.INST01Exit(Sender: TObject);
begin
if Length(INST01.Text)>60 then
   INST01.Text:=copy(INST01.Text,1,60);

end;

procedure TFrm_DupAgru.INST02Exit(Sender: TObject);
begin
if Length(INST02.Text)>60 then
   INST02.Text:=copy(INST02.Text,1,60);

end;

procedure TFrm_DupAgru.INST03Exit(Sender: TObject);
begin
if Length(INST03.Text)>60 then
   INST03.Text:=copy(INST03.Text,1,60);

end;

procedure TFrm_DupAgru.INST04Exit(Sender: TObject);
begin
if Length(INST04.Text)>60 then
   INST04.Text:=copy(INST04.Text,1,60);

end;

procedure TFrm_DupAgru.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_DupAgru.cb_todosClick(Sender: TObject);
var
x_stg: integer;
begin


for x_stg:=1 to STG1.RowCount-1 do
   begin
   if ((fsonumero(STG1.Cells[15,x_stg])=0) and (fsonumero(STG1.Cells[07,x_stg])=0)) then
      continue;
   STG1.Cells[00,x_stg] := iif(cb_todos.checked,'X','');
   AtualizarValores(x_stg);
   end;

end;

end.
