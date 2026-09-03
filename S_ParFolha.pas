unit S_ParFolha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, S_DM1, db,dbtables,func,S_DM2,
  Buttons,lerarq,S_Eve,S_EvePref;

type
  TFrm_ParFolha = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CODSFAM: TEdit;
    NOMSFAM: TEdit;
    Label19: TLabel;
    FINSS05A: TEdit;
    Label20: TLabel;
    FINSS05B: TEdit;
    Label21: TLabel;
    FINSS05: TEdit;
    Label22: TLabel;
    Label18: TLabel;
    FINSS04: TEdit;
    Label17: TLabel;
    FINSS04B: TEdit;
    Label16: TLabel;
    FINSS04A: TEdit;
    Label15: TLabel;
    Label11: TLabel;
    FINSS03A: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    FINSS03B: TEdit;
    FINSS03: TEdit;
    Label14: TLabel;
    Label10: TLabel;
    FINSS02: TEdit;
    Label9: TLabel;
    FINSS02B: TEdit;
    Label8: TLabel;
    FINSS02A: TEdit;
    Label7: TLabel;
    Label3: TLabel;
    FINSS01A: TEdit;
    Label4: TLabel;
    FINSS01B: TEdit;
    Label5: TLabel;
    FINSS01: TEdit;
    Label6: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label2: TLabel;
    CODINSS: TEdit;
    NOMINSS: TEdit;
    Bevel1: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    FFGTS01A: TEdit;
    FFGTS02A: TEdit;
    FFGTS03A: TEdit;
    FFGTS04A: TEdit;
    FFGTS05A: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    FFGTS01B: TEdit;
    FFGTS02B: TEdit;
    FFGTS03B: TEdit;
    FFGTS04B: TEdit;
    FFGTS05B: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    FFGTS01: TEdit;
    FFGTS02: TEdit;
    FFGTS03: TEdit;
    FFGTS04: TEdit;
    FFGTS05: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    NOMFGTS: TEdit;
    CODFGTS: TEdit;
    Label43: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    FIR05A: TEdit;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    CODIR: TEdit;
    NOMIR: TEdit;
    FIR01A: TEdit;
    FIR03A: TEdit;
    FIR04A: TEdit;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    FIR01B: TEdit;
    FIR02B: TEdit;
    FIR03B: TEdit;
    FIR04B: TEdit;
    FIR05B: TEdit;
    FIR05: TEdit;
    FIR04: TEdit;
    FIR03: TEdit;
    FIR02: TEdit;
    FIR01: TEdit;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel18: TBevel;
    FIR02A: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label65: TLabel;
    CODSAL: TEdit;
    NOMSAL: TEdit;
    Label66: TLabel;
    CODGRA: TEdit;
    NOMGRA: TEdit;
    TabSheet5: TTabSheet;
    bb_Folha: TBitBtn;
    bb_13unico: TBitBtn;
    bb_Ferias: TBitBtn;
    bb_recisao: TBitBtn;
    bb_13pp: TBitBtn;
    bb_sp: TBitBtn;
    GroupBox2: TGroupBox;
    Label67: TLabel;
    QTDHM: TEdit;
    Label68: TLabel;
    CODVT: TEdit;
    NOMVT: TEdit;
    Label69: TLabel;
    CODFER: TEdit;
    NOMFER: TEdit;
    Label70: TLabel;
    CODRES: TEdit;
    NOMRES: TEdit;
    Label71: TLabel;
    COD13UN: TEdit;
    NOM13UN: TEdit;
    Label72: TLabel;
    COD131P: TEdit;
    NOM131P: TEdit;
    Label73: TLabel;
    COD132P: TEdit;
    NOM132P: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CODSFAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODSFAMExit(Sender: TObject);
    procedure CODINSSExit(Sender: TObject);
    procedure CODFGTSExit(Sender: TObject);
    procedure CODIRExit(Sender: TObject);
    procedure CODINSSKeyPress(Sender: TObject; var Key: Char);
    procedure CODFGTSKeyPress(Sender: TObject; var Key: Char);
    procedure CODIRKeyPress(Sender: TObject; var Key: Char);
    procedure FINSS01AKeyPress(Sender: TObject; var Key: Char);
    procedure FINSS01AExit(Sender: TObject);
    procedure FINSS01BExit(Sender: TObject);
    procedure FINSS01Exit(Sender: TObject);
    procedure FINSS02AExit(Sender: TObject);
    procedure FINSS02BExit(Sender: TObject);
    procedure FINSS02Exit(Sender: TObject);
    procedure FINSS03AExit(Sender: TObject);
    procedure FINSS03BExit(Sender: TObject);
    procedure FINSS03Exit(Sender: TObject);
    procedure FINSS04AExit(Sender: TObject);
    procedure FINSS04BExit(Sender: TObject);
    procedure FINSS04Exit(Sender: TObject);
    procedure FINSS05AExit(Sender: TObject);
    procedure FINSS05BExit(Sender: TObject);
    procedure FINSS05Exit(Sender: TObject);
    procedure FFGTS01AExit(Sender: TObject);
    procedure FFGTS01BExit(Sender: TObject);
    procedure FFGTS01Exit(Sender: TObject);
    procedure FFGTS02AExit(Sender: TObject);
    procedure FFGTS02BExit(Sender: TObject);
    procedure FFGTS02Exit(Sender: TObject);
    procedure FFGTS03AExit(Sender: TObject);
    procedure FFGTS03BExit(Sender: TObject);
    procedure FFGTS03Exit(Sender: TObject);
    procedure FFGTS04AExit(Sender: TObject);
    procedure FFGTS04BExit(Sender: TObject);
    procedure FFGTS04Exit(Sender: TObject);
    procedure FFGTS05AExit(Sender: TObject);
    procedure FFGTS05BExit(Sender: TObject);
    procedure FFGTS05Exit(Sender: TObject);
    procedure FIR01AExit(Sender: TObject);
    procedure FIR01BExit(Sender: TObject);
    procedure FIR01Exit(Sender: TObject);
    procedure FIR02AExit(Sender: TObject);
    procedure FIR02BExit(Sender: TObject);
    procedure FIR02Exit(Sender: TObject);
    procedure FIR03AExit(Sender: TObject);
    procedure FIR03BExit(Sender: TObject);
    procedure FIR03Exit(Sender: TObject);
    procedure FIR04AExit(Sender: TObject);
    procedure FIR04BExit(Sender: TObject);
    procedure FIR04Exit(Sender: TObject);
    procedure FIR05AExit(Sender: TObject);
    procedure FIR05BExit(Sender: TObject);
    procedure FIR05Exit(Sender: TObject);
    procedure CODGRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODSALExit(Sender: TObject);
    procedure CODSALKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRAExit(Sender: TObject);
    procedure bb_FolhaClick(Sender: TObject);
    procedure bb_FeriasClick(Sender: TObject);
    procedure bb_recisaoClick(Sender: TObject);
    procedure bb_13unicoClick(Sender: TObject);
    procedure bb_13ppClick(Sender: TObject);
    procedure bb_spClick(Sender: TObject);
    procedure QTDHMKeyPress(Sender: TObject; var Key: Char);
    procedure QTDHMExit(Sender: TObject);
    procedure CODVTExit(Sender: TObject);
    procedure CODVTKeyress(Sender: TObject; var Key: Char);
    procedure CODFERExit(Sender: TObject);
    procedure CODRESExit(Sender: TObject);
    procedure COD13UNExit(Sender: TObject);
    procedure COD131PExit(Sender: TObject);
    procedure COD132PExit(Sender: TObject);
    procedure CODFERKeyPress(Sender: TObject; var Key: Char);
    procedure CODRESKeyPress(Sender: TObject; var Key: Char);
    procedure COD13UNKeyPress(Sender: TObject; var Key: Char);
    procedure COD131PKeyPress(Sender: TObject; var Key: Char);
    procedure COD132PKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ParFolha: TFrm_ParFolha;

implementation

{$R *.dfm}

procedure TFrm_ParFolha.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ParFolha.FormCreate(Sender: TObject);
begin
if not flParFPag(0,0,'1') then
   begin
   DM2.Tb_ParFPag.Append;
   DM2.Tb_ParFPagPFCODEMP.Value  :=codemp;
   DM2.Tb_ParFPagPFCODPAR.Value  :=1;
   DM2.Tb_ParFPagPFCODSAL.Value  :=0;
   DM2.Tb_ParFPagPFCODGRA.Value  :=0;
   DM2.Tb_ParFPagPFCODSFAM.Value :=0;
   DM2.Tb_ParFPagPFCODVT.Value   :=0;
   DM2.Tb_ParFPagPFCODINSS.Value :=0;
   DM2.Tb_ParFPagPFFINSS01A.Value:=0;
   DM2.Tb_ParFPagPFFINSS01B.Value:=0;
   DM2.Tb_ParFPagPFFINSS01.Value :=0;
   DM2.Tb_ParFPagPFFINSS02A.Value:=0;
   DM2.Tb_ParFPagPFFINSS02B.Value:=0;
   DM2.Tb_ParFPagPFFINSS02.Value :=0;
   DM2.Tb_ParFPagPFFINSS03A.Value:=0;
   DM2.Tb_ParFPagPFFINSS03B.Value:=0;
   DM2.Tb_ParFPagPFFINSS03.Value :=0;

   DM2.Tb_ParFPagPFFINSS04A.Value:=0;
   DM2.Tb_ParFPagPFFINSS04B.Value:=0;
   DM2.Tb_ParFPagPFFINSS04.Value :=0;
   DM2.Tb_ParFPagPFFINSS05A.Value:=0;
   DM2.Tb_ParFPagPFFINSS05B.Value:=0;
   DM2.Tb_ParFPagPFFINSS05.Value :=0;
   DM2.Tb_ParFPagPFCODFGTS.Value :=0;
   DM2.Tb_ParFPagPFFFGTS01A.Value:=0;
   DM2.Tb_ParFPagPFFFGTS01B.Value:=0;
   DM2.Tb_ParFPagPFFFGTS01.Value :=0;
   DM2.Tb_ParFPagPFFFGTS02A.Value:=0;
   DM2.Tb_ParFPagPFFFGTS02B.Value:=0;
   DM2.Tb_ParFPagPFFFGTS02.Value :=0;

   DM2.Tb_ParFPagPFFFGTS03A.Value:=0;
   DM2.Tb_ParFPagPFFFGTS03B.Value:=0;
   DM2.Tb_ParFPagPFFFGTS03.Value :=0;

   DM2.Tb_ParFPagPFFFGTS04A.Value:=0;
   DM2.Tb_ParFPagPFFFGTS04B.Value:=0;
   DM2.Tb_ParFPagPFFFGTS04.Value :=0;

   DM2.Tb_ParFPagPFFFGTS05A.Value:=0;
   DM2.Tb_ParFPagPFFFGTS05B.Value:=0;
   DM2.Tb_ParFPagPFFFGTS05.Value :=0;
   DM2.Tb_ParFPagPFCODIR.Value   :=0;
   DM2.Tb_ParFPagPFFIR01A.Value  :=0;
   DM2.Tb_ParFPagPFFIR01B.Value  :=0;
   DM2.Tb_ParFPagPFFIR01.Value   :=0;

   DM2.Tb_ParFPagPFFIR02A.Value  :=0;
   DM2.Tb_ParFPagPFFIR02B.Value  :=0;
   DM2.Tb_ParFPagPFFIR02.Value   :=0;

   DM2.Tb_ParFPagPFFIR03A.Value  :=0;
   DM2.Tb_ParFPagPFFIR03B.Value  :=0;
   DM2.Tb_ParFPagPFFIR03.Value   :=0;

   DM2.Tb_ParFPagPFFIR04A.Value  :=0;
   DM2.Tb_ParFPagPFFIR04B.Value  :=0;
   DM2.Tb_ParFPagPFFIR04.Value   :=0;

   DM2.Tb_ParFPagPFFIR05A.Value  :=0;
   DM2.Tb_ParFPagPFFIR05B.Value  :=0;
   DM2.Tb_ParFPagPFFIR05.Value   :=0;
   DM2.Tb_ParFPagPFQTDHM.Value   :=220;
   DM2.Tb_ParFPag.Post;
   flParFPag(0,0,'1');
   end;
CODSAL.Text  :=DM2.Tb_ParFPagPFCODSAL.AsString;
if DM2.Tb_ParFPagPFCODSAL.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODSAL.AsString) then
      NOMSAL.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMSAL.Text:='';
   end;
CODGRA.Text  :=DM2.Tb_ParFPagPFCODGRA.AsString;
if DM2.Tb_ParFPagPFCODGRA.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODGRA.AsString) then
      NOMGRA.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMGRA.Text:='';
   end;
CODSFAM.Text :=DM2.Tb_ParFPagPFCODSFAM.AsString;
if DM2.Tb_ParFPagPFCODSFAM.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODSFAM.AsString) then
      NOMSFAM.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMSFAM.Text:='';
   end;
CODVT.Text    :=DM2.Tb_ParFPagPFCODVT.AsString;
if DM2.Tb_ParFPagPFCODVT.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODVT.AsString) then
      NOMVT.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMVT.Text:='';
   end;


CODINSS.Text :=DM2.Tb_ParFPagPFCODINSS.AsString;
if DM2.Tb_ParFPagPFCODINSS.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODINSS.AsString) then
      NOMINSS.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMINSS.Text:='';
   end;


FINSS01.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS01.Value);
FINSS01A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS01A.Value);
FINSS01B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS01B.Value);

FINSS02.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS02.Value);
FINSS02A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS02A.Value);
FINSS02B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS02B.Value);

FINSS03.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS03.Value);
FINSS03A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS03A.Value);
FINSS03B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS03B.Value);

FINSS04.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS04.Value);
FINSS04A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS04A.Value);
FINSS04B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS04B.Value);

FINSS05.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS05.Value);
FINSS05A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS05A.Value);
FINSS05B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFINSS05B.Value);

CODFGTS.Text := DM2.Tb_ParFPagPFCODFGTS.AsString;
if DM2.Tb_ParFPagPFCODFGTS.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODFGTS.AsString) then
      NOMFGTS.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMFGTS.Text:='';
   end;


FFGTS01.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS01.Value);
FFGTS01A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS01A.Value);
FFGTS01B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS01B.Value);

FFGTS02.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS02.Value);
FFGTS02A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS02A.Value);
FFGTS02B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS02B.Value);

FFGTS03.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS03.Value);
FFGTS03A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS03A.Value);
FFGTS03B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS03B.Value);

FFGTS04.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS04.Value);
FFGTS04A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS04A.Value);
FFGTS04B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS04B.Value);

FFGTS05.Text :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS05.Value);
FFGTS05A.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS05A.Value);
FFGTS05B.Text:=FormatFloat(mcasas, DM2.Tb_ParFPagPFFFGTS05B.Value);

CODIR.Text   :=DM2.Tb_ParFPagPFCODIR.AsString;
if DM2.Tb_ParFPagPFCODIR.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODIR.AsString) then
      NOMIR.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMIR.Text:='';
   end;

if DM2.Tb_ParFPagPFCODFER.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODFER.AsString) then
      NOMFER.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMFER.Text:='';
   end;
if DM2.Tb_ParFPagPFCODRES.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODRES.AsString) then
      NOMRES.Text:=dm1.Query1.Fields[0].AsString
   else
      NOMRES.Text:='';
   end;
if DM2.Tb_ParFPagPFCODDTERUN.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODDTERUN.AsString) then
      NOM13UN.Text:=dm1.Query1.Fields[0].AsString
   else
      NOM13UN.Text:='';
   end;

if DM2.Tb_ParFPagPFCODDTER01.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODDTER01.AsString) then
      NOM131P.Text:=dm1.Query1.Fields[0].AsString
   else
      NOM131P.Text:='';
   end;

if DM2.Tb_ParFPagPFCODDTER02.Value>0 then
   begin
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+DM2.Tb_ParFPagPFCODDTER02.AsString) then
      NOM132P.Text:=dm1.Query1.Fields[0].AsString
   else
      NOM132P.Text:='';
   end;



FIR01.Text   :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR01.Value);
FIR01A.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR01A.Value);
FIR01B.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR01B.Value);

FIR02.Text   :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR02.Value);
FIR02A.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR02A.Value);
FIR02B.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR02B.Value);

FIR03.Text   :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR03.Value);
FIR03A.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR03A.Value);
FIR03B.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR03B.Value);

FIR04.Text   :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR04.Value);
FIR04A.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR04A.Value);
FIR04B.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR04B.Value);

FIR05.Text   :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR05.Value);
FIR05A.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR05A.Value);
FIR05B.Text  :=FormatFloat(mcasas, DM2.Tb_ParFPagPFFIR05B.Value);
QTDHM.Text   :=DM2.Tb_ParFPagPFQTDHM.AsString;


CODFER.Text  :=DM2.Tb_ParFPagPFCODFER.AsString;
CODRES.Text  :=DM2.Tb_ParFPagPFCODRES.AsString;
COD13UN.Text :=DM2.Tb_ParFPagPFCODDTERUN.AsString;
COD131P.Text :=DM2.Tb_ParFPagPFCODDTER01.AsString;
COD132P.Text :=DM2.Tb_ParFPagPFCODDTER02.AsString;


end;

procedure TFrm_ParFolha.BitBtn1Click(Sender: TObject);
begin
flParFPag(0,0,'1');
DM2.Tb_ParFPag.Edit;

DM2.Tb_ParFPagPFCODSAL.Value  := ValFloat(CODSAL.Text);
DM2.Tb_ParFPagPFCODGRA.Value  := ValFloat(CODGRA.Text);
DM2.Tb_ParFPagPFCODSFAM.Value := ValFloat(CODSFAM.Text);
DM2.Tb_ParFPagPFCODVT.Value   := ValFloat(CODVT.Text);
DM2.Tb_ParFPagPFCODINSS.Value := ValFloat(CODINSS.Text);
DM2.Tb_ParFPagPFFINSS01.Value := ValFloat(FINSS01.Text);
DM2.Tb_ParFPagPFFINSS01A.Value:= ValFloat(FINSS01A.Text);
DM2.Tb_ParFPagPFFINSS01B.Value:= ValFloat(FINSS01B.Text);

DM2.Tb_ParFPagPFFINSS02.Value := ValFloat(FINSS02.Text);
DM2.Tb_ParFPagPFFINSS02A.Value:= ValFloat(FINSS02A.Text);
DM2.Tb_ParFPagPFFINSS02B.Value:= ValFloat(FINSS02B.Text);

DM2.Tb_ParFPagPFFINSS03.Value := ValFloat(FINSS03.Text);
DM2.Tb_ParFPagPFFINSS03A.Value:= ValFloat(FINSS03A.Text);
DM2.Tb_ParFPagPFFINSS03B.Value:= ValFloat(FINSS03B.Text);

DM2.Tb_ParFPagPFFINSS04.Value := ValFloat(FINSS04.Text);
DM2.Tb_ParFPagPFFINSS04A.Value:= ValFloat(FINSS04A.Text);
DM2.Tb_ParFPagPFFINSS04B.Value:= ValFloat(FINSS04B.Text);

DM2.Tb_ParFPagPFFINSS05.Value := ValFloat(FINSS05.Text);
DM2.Tb_ParFPagPFFINSS05A.Value:= ValFloat(FINSS05A.Text);
DM2.Tb_ParFPagPFFINSS05B.Value:= ValFloat(FINSS05B.Text);

DM2.Tb_ParFPagPFCODFGTS.Value := ValFloat(CODFGTS.Text);

DM2.Tb_ParFPagPFFFGTS01.Value := ValFloat(FFGTS01.Text);
DM2.Tb_ParFPagPFFFGTS01A.Value:= ValFloat(FFGTS01A.Text);
DM2.Tb_ParFPagPFFFGTS01B.Value:= ValFloat(FFGTS01B.Text);

DM2.Tb_ParFPagPFFFGTS02.Value := ValFloat(FFGTS02.Text);
DM2.Tb_ParFPagPFFFGTS02A.Value:= ValFloat(FFGTS02A.Text);
DM2.Tb_ParFPagPFFFGTS02B.Value:= ValFloat(FFGTS02B.Text);

DM2.Tb_ParFPagPFFFGTS03.Value := ValFloat(FFGTS03.Text);
DM2.Tb_ParFPagPFFFGTS03A.Value:= ValFloat(FFGTS03A.Text);
DM2.Tb_ParFPagPFFFGTS03B.Value:= ValFloat(FFGTS03B.Text);

DM2.Tb_ParFPagPFFFGTS04.Value := ValFloat(FFGTS04.Text);
DM2.Tb_ParFPagPFFFGTS04A.Value:= ValFloat(FFGTS04A.Text);
DM2.Tb_ParFPagPFFFGTS04B.Value:= ValFloat(FFGTS04B.Text);

DM2.Tb_ParFPagPFFFGTS05.Value := ValFloat(FFGTS05.Text);
DM2.Tb_ParFPagPFFFGTS05A.Value:= ValFloat(FFGTS05A.Text);
DM2.Tb_ParFPagPFFFGTS05B.Value:= ValFloat(FFGTS05B.Text);

DM2.Tb_ParFPagPFCODIR.Value   := ValFloat(CODIR.Text);
DM2.Tb_ParFPagPFFIR01.Value   := ValFloat(FIR01.Text);
DM2.Tb_ParFPagPFFIR01A.Value  := ValFloat(FIR01A.Text);
DM2.Tb_ParFPagPFFIR01B.Value  := Valfloat(FIR01B.Text);

DM2.Tb_ParFPagPFFIR02.Value   := ValFloat(FIR02.Text);
DM2.Tb_ParFPagPFFIR02A.Value  := ValFloat(FIR02A.Text);
DM2.Tb_ParFPagPFFIR02B.Value  := ValFloat(FIR02B.Text);

DM2.Tb_ParFPagPFFIR03.Value   := ValFloat(FIR03.Text);
DM2.Tb_ParFPagPFFIR03A.Value  := ValFloat(FIR03A.Text);
DM2.Tb_ParFPagPFFIR03B.Value  := ValFloat(FIR03B.Text);

DM2.Tb_ParFPagPFFIR04.Value   := ValFloat(FIR04.Text);
DM2.Tb_ParFPagPFFIR04A.Value  := ValFloat(FIR04A.Text);
DM2.Tb_ParFPagPFFIR04B.Value  := ValFloat(FIR04B.Text);

DM2.Tb_ParFPagPFCODFER.Value   := ValFloat(CODFER.Text);
DM2.Tb_ParFPagPFCODRES.Value   := ValFloat(CODRES.Text);
DM2.Tb_ParFPagPFCODDTERUN.Value:= ValFloat(COD13UN.Text);
DM2.Tb_ParFPagPFCODDTER01.Value:= ValFloat(COD131P.Text);
DM2.Tb_ParFPagPFCODDTER02.Value:= ValFloat(COD132P.Text);

DM2.Tb_ParFPagPFFIR05.Value   := ValFloat(FIR05.Text);
DM2.Tb_ParFPagPFFIR05A.Value  := ValFloat(FIR05A.Text);
DM2.Tb_ParFPagPFFIR05B.Value  := ValFloat(FIR05B.Text);
DM2.Tb_ParFPagPFQTDHM.Value   := ValFloat(QTDHM.Text);
if DM2.Tb_ParFPagPFCODINSS.Value>0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQl.Clear;
   DM1.Query2.SQL.Add('Update CADEVE set '
                     +' CEINCINSS=1, '
                     +' CEINCFGTS=1, '
                     +' CEINCVT  =1, '
                     +' CEINCIR  =1 where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADEVE',[]),'',' CECODEMP=0'+intToStr(codemp)+' and ')
                     +' CECODEVE=0'+DM2.Tb_ParFPagPFCODINSS.AsString);
   DM1.Query2.ExecSQL;
   end;
if DM2.Tb_ParFPagPFCODFGTS.Value>0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQl.Clear;
   DM1.Query2.SQL.Add('Update CADEVE set '
                     +' CEINCINSS=1, '
                     +' CEINCFGTS=1, '
                     +' CEINCVT  =1, '
                     +' CEINCIR  =1 where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADEVE',[]),'',' CECODEMP=0'+intToStr(codemp)+' and ')
                     +' CECODEVE=0'+DM2.Tb_ParFPagPFCODFGTS.AsString);
   DM1.Query2.ExecSQL;
   end;
if DM2.Tb_ParFPagPFCODIR.Value>0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQl.Clear;
   DM1.Query2.SQL.Add('Update CADEVE set '
                     +' CEINCINSS=1, '
                     +' CEINCFGTS=1, '
                     +' CEINCVT  =1, '
                     +' CEINCIR  =1 where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADEVE',[]),'',' CECODEMP=0'+intToStr(codemp)+' and ')
                     +' CECODEVE=0'+DM2.Tb_ParFPagPFCODIR.AsString);
   DM1.Query2.ExecSQL;
   end;

if DM2.Tb_ParFPagPFCODVT.Value>0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQl.Clear;
   DM1.Query2.SQL.Add('Update CADEVE set '
                     +' CEINCINSS=1, '
                     +' CEINCFGTS=1, '
                     +' CEINCVT  =1, '
                     +' CEINCIR  =1 where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADEVE',[]),'',' CECODEMP=0'+intToStr(codemp)+' and ')
                     +' CECODEVE=0'+DM2.Tb_ParFPagPFCODVT.AsString);
   DM1.Query2.ExecSQL;
   end;
DM2.Tb_ParFPag.Post;
end;

procedure TFrm_ParFolha.CODSFAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      CODSFAM.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.CODSFAMExit(Sender: TObject);
begin
if ValFloat(CODSFAM.Text)<=0 then
   CODSFAM.Text:='';
if Trim(CODSFAM.Text)='' then
   NOMSFAM.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(CODSFAM.Text)) then
      begin
      NOMSFAM.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODSFAM.SetFocus;
      end;

end;

procedure TFrm_ParFolha.CODINSSExit(Sender: TObject);
begin
if ValFloat(CODINSS.Text)<=0 then
   CODINSS.Text:='';

if Trim(CODINSS.Text)='' then
   NOMINSS.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(CODINSS.Text)) then
      begin
      NOMINSS.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODINSS.SetFocus;
      end;

end;

procedure TFrm_ParFolha.CODFGTSExit(Sender: TObject);
begin
if ValFloat(CODFGTS.Text)<=0 then
   CODFGTS.Text:='';

if Trim(CODFGTS.Text)='' then
   NOMFGTS.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(CODFGTS.Text)) then
      begin
      NOMFGTS.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODFGTS.SetFocus;
      end;

end;

procedure TFrm_ParFolha.CODIRExit(Sender: TObject);
begin
if ValFloat(CODIR.Text)<=0 then
   CODIR.Text:='';

if Trim(CODIR.Text)='' then
   NOMIR.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(CODIR.Text)) then
      begin
      NOMIR.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODIR.SetFocus;
      end;

end;

procedure TFrm_ParFolha.CODINSSKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      CODINSS.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.CODFGTSKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      CODFGTS.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.CODIRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      CODIR.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.FINSS01AKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;   
end;

procedure TFrm_ParFolha.FINSS01AExit(Sender: TObject);
begin
FINSS01A.Text:=FormatFloat(mcasas, ValFloat(FINSS01A.Text));
end;

procedure TFrm_ParFolha.FINSS01BExit(Sender: TObject);
begin
FINSS01B.Text:=FormatFloat(mcasas, ValFloat(FINSS01B.Text));

end;

procedure TFrm_ParFolha.FINSS01Exit(Sender: TObject);
begin
FINSS01.Text:=FormatFloat(mcasas, ValFloat(FINSS01.Text));

end;

procedure TFrm_ParFolha.FINSS02AExit(Sender: TObject);
begin
FINSS02A.Text:=FormatFloat(mcasas, ValFloat(FINSS02A.Text));

end;

procedure TFrm_ParFolha.FINSS02BExit(Sender: TObject);
begin
FINSS02B.Text:=FormatFloat(mcasas, ValFloat(FINSS02B.Text));

end;

procedure TFrm_ParFolha.FINSS02Exit(Sender: TObject);
begin
FINSS02.Text:=FormatFloat(mcasas, ValFloat(FINSS02.Text));

end;

procedure TFrm_ParFolha.FINSS03AExit(Sender: TObject);
begin
FINSS03A.Text:=FormatFloat(mcasas, ValFloat(FINSS03A.Text));

end;

procedure TFrm_ParFolha.FINSS03BExit(Sender: TObject);
begin
FINSS03B.Text:=FormatFloat(mcasas, ValFloat(FINSS03B.Text));

end;

procedure TFrm_ParFolha.FINSS03Exit(Sender: TObject);
begin
FINSS03.Text:=FormatFloat(mcasas, ValFloat(FINSS03.Text));

end;

procedure TFrm_ParFolha.FINSS04AExit(Sender: TObject);
begin
FINSS04A.Text:=FormatFloat(mcasas, ValFloat(FINSS04A.Text));

end;

procedure TFrm_ParFolha.FINSS04BExit(Sender: TObject);
begin
FINSS04B.Text:=FormatFloat(mcasas, ValFloat(FINSS04B.Text));

end;

procedure TFrm_ParFolha.FINSS04Exit(Sender: TObject);
begin
FINSS04.Text:=FormatFloat(mcasas, ValFloat(FINSS04.Text));

end;

procedure TFrm_ParFolha.FINSS05AExit(Sender: TObject);
begin
FINSS05A.Text:=FormatFloat(mcasas, ValFloat(FINSS05A.Text));

end;

procedure TFrm_ParFolha.FINSS05BExit(Sender: TObject);
begin
FINSS05B.Text:=FormatFloat(mcasas, ValFloat(FINSS05B.Text));

end;

procedure TFrm_ParFolha.FINSS05Exit(Sender: TObject);
begin
FINSS05.Text:=FormatFloat(mcasas, ValFloat(FINSS05.Text));

end;

procedure TFrm_ParFolha.FFGTS01AExit(Sender: TObject);
begin
FFGTS01A.Text:=FormatFloat(mcasas, ValFloat(FFGTS01A.Text));

end;

procedure TFrm_ParFolha.FFGTS01BExit(Sender: TObject);
begin
FFGTS01B.Text:=FormatFloat(mcasas, ValFloat(FFGTS01B.Text));

end;

procedure TFrm_ParFolha.FFGTS01Exit(Sender: TObject);
begin
FFGTS01.Text:=FormatFloat(mcasas, ValFloat(FFGTS01.Text));

end;

procedure TFrm_ParFolha.FFGTS02AExit(Sender: TObject);
begin
FFGTS02A.Text:=FormatFloat(mcasas, ValFloat(FFGTS02A.Text));

end;

procedure TFrm_ParFolha.FFGTS02BExit(Sender: TObject);
begin
FFGTS02B.Text:=FormatFloat(mcasas, ValFloat(FFGTS02B.Text));

end;

procedure TFrm_ParFolha.FFGTS02Exit(Sender: TObject);
begin
FFGTS02.Text:=FormatFloat(mcasas, ValFloat(FFGTS02.Text));

end;

procedure TFrm_ParFolha.FFGTS03AExit(Sender: TObject);
begin
FFGTS03A.Text:=FormatFloat(mcasas, ValFloat(FFGTS03A.Text));

end;

procedure TFrm_ParFolha.FFGTS03BExit(Sender: TObject);
begin
FFGTS03B.Text:=FormatFloat(mcasas, ValFloat(FFGTS03B.Text));

end;

procedure TFrm_ParFolha.FFGTS03Exit(Sender: TObject);
begin
FFGTS03.Text:=FormatFloat(mcasas, ValFloat(FFGTS03.Text));

end;

procedure TFrm_ParFolha.FFGTS04AExit(Sender: TObject);
begin
FFGTS04A.Text:=FormatFloat(mcasas, ValFloat(FFGTS04A.Text));

end;

procedure TFrm_ParFolha.FFGTS04BExit(Sender: TObject);
begin
FFGTS04B.Text:=FormatFloat(mcasas, ValFloat(FFGTS04B.Text));

end;

procedure TFrm_ParFolha.FFGTS04Exit(Sender: TObject);
begin
FFGTS04.Text:=FormatFloat(mcasas, ValFloat(FFGTS04.Text));

end;

procedure TFrm_ParFolha.FFGTS05AExit(Sender: TObject);
begin
FFGTS05A.Text:=FormatFloat(mcasas, ValFloat(FFGTS05A.Text));

end;

procedure TFrm_ParFolha.FFGTS05BExit(Sender: TObject);
begin
FFGTS05B.Text:=FormatFloat(mcasas, ValFloat(FFGTS05B.Text));

end;

procedure TFrm_ParFolha.FFGTS05Exit(Sender: TObject);
begin
FFGTS05.Text:=FormatFloat(mcasas, ValFloat(FFGTS05.Text));

end;

procedure TFrm_ParFolha.FIR01AExit(Sender: TObject);
begin
FIR01A.Text:=FormatFloat(mcasas, ValFloat(FIR01A.Text));

end;

procedure TFrm_ParFolha.FIR01BExit(Sender: TObject);
begin
FIR01B.Text:=FormatFloat(mcasas, ValFloat(FIR01B.Text));

end;

procedure TFrm_ParFolha.FIR01Exit(Sender: TObject);
begin
FIR01.Text:=FormatFloat(mcasas, ValFloat(FIR01.Text));

end;

procedure TFrm_ParFolha.FIR02AExit(Sender: TObject);
begin
FIR02A.Text:=FormatFloat(mcasas, ValFloat(FIR02A.Text));

end;

procedure TFrm_ParFolha.FIR02BExit(Sender: TObject);
begin
FIR02B.Text:=FormatFloat(mcasas, ValFloat(FIR02B.Text));

end;

procedure TFrm_ParFolha.FIR02Exit(Sender: TObject);
begin
FIR02.Text:=FormatFloat(mcasas, ValFloat(FIR02.Text));

end;

procedure TFrm_ParFolha.FIR03AExit(Sender: TObject);
begin
FIR03A.Text:=FormatFloat(mcasas, ValFloat(FIR03A.Text));

end;

procedure TFrm_ParFolha.FIR03BExit(Sender: TObject);
begin
FIR03B.Text:=FormatFloat(mcasas, ValFloat(FIR03B.Text));

end;

procedure TFrm_ParFolha.FIR03Exit(Sender: TObject);
begin
FIR03.Text:=FormatFloat(mcasas, ValFloat(FIR03.Text));

end;

procedure TFrm_ParFolha.FIR04AExit(Sender: TObject);
begin
FIR04A.Text:=FormatFloat(mcasas, ValFloat(FIR04A.Text));

end;

procedure TFrm_ParFolha.FIR04BExit(Sender: TObject);
begin
FIR04B.Text:=FormatFloat(mcasas, ValFloat(FIR04B.Text));

end;

procedure TFrm_ParFolha.FIR04Exit(Sender: TObject);
begin
FIR04.Text:=FormatFloat(mcasas, ValFloat(FIR04.Text));

end;

procedure TFrm_ParFolha.FIR05AExit(Sender: TObject);
begin
FIR05A.Text:=FormatFloat(mcasas, ValFloat(FIR05A.Text));

end;

procedure TFrm_ParFolha.FIR05BExit(Sender: TObject);
begin
FIR05B.Text:=FormatFloat(mcasas, ValFloat(FIR05B.Text));

end;

procedure TFrm_ParFolha.FIR05Exit(Sender: TObject);
begin
FIR05.Text:=FormatFloat(mcasas, ValFloat(FIR05.Text));

end;

procedure TFrm_ParFolha.CODGRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      CODGRA.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.CODSALExit(Sender: TObject);
begin
if ValFloat(CODSAL.Text)<=0 then
   CODSAL.Text:='';
if Trim(CODSAL.Text)='' then
   NOMSAL.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(CODSAL.Text)) then
      begin
      NOMSAL.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODSAL.SetFocus;
      end;


end;

procedure TFrm_ParFolha.CODSALKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      CODSAL.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.CODGRAExit(Sender: TObject);
begin
if ValFloat(CODGRA.Text)<=0 then
   CODGRA.Text:='';
if Trim(CODGRA.Text)='' then
   NOMGRA.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(CODGRA.Text)) then
      begin
      NOMGRA.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODGRA.SetFocus;
      end;


end;

procedure TFrm_ParFolha.bb_FolhaClick(Sender: TObject);
begin
pf_tipo:=0;
pf_codcli:=0;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;

end;

procedure TFrm_ParFolha.bb_FeriasClick(Sender: TObject);
begin
pf_tipo:=4;
pf_codcli:=0;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;

end;

procedure TFrm_ParFolha.bb_recisaoClick(Sender: TObject);
begin
pf_tipo:=5;
pf_codcli:=0;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;

end;

procedure TFrm_ParFolha.bb_13unicoClick(Sender: TObject);
begin
pf_tipo:=1;
pf_codcli:=0;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;

end;

procedure TFrm_ParFolha.bb_13ppClick(Sender: TObject);
begin
pf_tipo:=2;
pf_codcli:=0;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;

end;

procedure TFrm_ParFolha.bb_spClick(Sender: TObject);
begin
pf_tipo:=3;
pf_codcli:=0;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;

end;

procedure TFrm_ParFolha.QTDHMKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_ParFolha.QTDHMExit(Sender: TObject);
begin
QTDHM.Text:=FloatToStr(ValFloat(QTDHM.Text));
end;

procedure TFrm_ParFolha.CODVTExit(Sender: TObject);
begin
if ValFloat(CODVT.Text)<=0 then
   CODVT.Text:='';
if Trim(CODVT.Text)='' then
   NOMVT.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(CODVT.Text)) then
      begin
      NOMVT.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODVT.SetFocus;
      end;


end;

procedure TFrm_ParFolha.CODVTKeyress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      CODVT.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.CODFERExit(Sender: TObject);
begin
if ValFloat(CODFER.Text)<=0 then
   CODFER.Text:='';
if Trim(CODFER.Text)='' then
   NOMFER.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(CODFER.Text)) then
      begin
      NOMFER.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODFER.SetFocus;
      end;
end;

procedure TFrm_ParFolha.CODRESExit(Sender: TObject);
begin
if ValFloat(CODRES.Text)<=0 then
   CODRES.Text:='';
if Trim(CODRES.Text)='' then
   NOMRES.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(CODRES.Text)) then
      begin
      NOMRES.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      CODRES.SetFocus;
      end;


end;

procedure TFrm_ParFolha.COD13UNExit(Sender: TObject);
begin
if ValFloat(COD13UN.Text)<=0 then
   COD13UN.Text:='';
if Trim(COD13UN.Text)='' then
   NOM13UN.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(COD13UN.Text)) then
      begin
      NOM13UN.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      COD13UN.SetFocus;
      end;


end;

procedure TFrm_ParFolha.COD131PExit(Sender: TObject);
begin
if ValFloat(COD131P.Text)<=0 then
   COD131P.Text:='';
if Trim(COD131P.Text)='' then
   NOM131P.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(COD131P.Text)) then
      begin
      NOM131P.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      COD131P.SetFocus;
      end;


end;

procedure TFrm_ParFolha.COD132PExit(Sender: TObject);
begin
if ValFloat(COD132P.Text)<=0 then
   COD132P.Text:='';
if Trim(COD132P.Text)='' then
   NOM132P.Text:=''
else
   if flqr1('CENOMEVE','CE','CADEVE','N','CECODEVE','0'+Trim(COD132P.Text)) then
      begin
      NOM132P.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      begin
      MessageDlg('Evento não Cadastrado!',mtWarning,[mbOk],0);
      COD132P.SetFocus;
      end;

end;

procedure TFrm_ParFolha.CODFERKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      CODFER.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.CODRESKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      CODRES.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.COD13UNKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      COD13UN.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.COD131PKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      COD131P.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

end;

procedure TFrm_ParFolha.COD132PKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Eve, Frm_Eve);
   Frm_Eve.Edit1.Text:=key;
   Frm_Eve.BBnAtu.Click;
   Frm_Eve.Edit1.SelStart:=1;
   Frm_Eve.Edit1.SelLength:=1;
   Frm_Eve.PC1.ActivePageIndex:=1;
   Eve_ori:='Frm_ParFolha';
   if Frm_Eve.ShowModal=mrok then
      begin
      COD132P.Text:=DM2.Tb_EveCECODEVE.AsString;
      end;
   Frm_Eve.Free;
   key:=#0;
   end;

End;

procedure TFrm_ParFolha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
