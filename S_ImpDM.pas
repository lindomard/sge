unit S_ImpDM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids,lerarq,func,S_Editor, ExtCtrls,S_DefBac,
  FileCtrl, Gauges, DB, DBTables, S_SelEmp, S_Ped_AutoP, S_ExpDM, S_PVO, S_VisNF;

type
  TFrm_ImpDM = class(TForm)
    GroupBox1: TGroupBox;
    NOMARQ: TEdit;
    OpenDialog1: TOpenDialog;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label2: TLabel;
    NUMLOT: TEdit;
    GroupBox3: TGroupBox;
    STGP_REC: TStringGrid;
    CB_BUSCA: TCheckBox;
    bbIniciar: TBitBtn;
    Timer1: TTimer;
    sb_Pasta: TSpeedButton;
    Panel1: TPanel;
    bbProcurar: TBitBtn;
    bbImportar: TBitBtn;
    bbSair: TBitBtn;
    FileListBox1: TFileListBox;
    gb_grafico: TGroupBox;
    Gauge1: TGauge;
    TIPO: TEdit;
    Qr_DupRec: TQuery;
    Qr_DocRec: TQuery;
    CB_TIPO: TComboBox;
    Label3: TLabel;
    sb_SalvarPadrao: TSpeedButton;
    Label4: TLabel;
    ORIGEM_INFO: TEdit;
    bbLimpar: TBitBtn;
    Label5: TLabel;
    CB_TABPV: TComboBox;
    CODPV: TEdit;
    NOMPV: TEdit;
    CB_PCOLIQ: TCheckBox;
    NOME_ORIGEM: TEdit;
    procedure bbSairClick(Sender: TObject);
    procedure bbProcurarClick(Sender: TObject);
    procedure bbImportarClick(Sender: TObject);
    procedure NOMARQExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sb_PastaClick(Sender: TObject);
    procedure CB_BUSCAClick(Sender: TObject);
    procedure bbIniciarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure STGP_RECDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STGP_RECDblClick(Sender: TObject);
    procedure bbLimparClick(Sender: TObject);
    procedure CB_TABPVExit(Sender: TObject);
    procedure CODPVExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     function fimpdmtestaarq(parq: String): Boolean;
     function fimpdmfatped(ptipo: Integer): Boolean;
     function fimpdmrecbto(ptipo: Integer): Boolean;
     function fimpdmProcessa(pTipo: Integer): Boolean;
     function fimpdmCadCli(ptipo: Integer): Boolean;

     function fCriarGrafico(pTipo: Integer): Boolean;
     function FImpDMSolArquivo(ptipo: Integer): Boolean;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

function fLerCadcli_ret(pCodCli: String): Boolean;
var
  Frm_ImpDM: TFrm_ImpDM;
  mlinha: String;
  mqtdped: Integer;
  mqtdreg: Integer;
  mQtdItemPed: Integer;

  mchavepoc: String;
  mBuscando: Boolean=False;
  mglid, mgtot: Integer;
  mDadCli: Boolean=False;
  mDadPed: Boolean=False;
  mChavePedOri: Real;
  mCadPro: Boolean=False;
  mCadcli: Boolean=False;
  mCadDar: Boolean=False;
  mCadPV : Boolean=False;
  mReceb: boolean=False;
  mLocalOrigem_info: String;
  f: Textfile;
  form_editor: TFrm_Editor;
  form_pvo:Tfrm_pvo;
  form_expdm: TFrm_ExpDM;
  form_ped_autop: TFrm_ped_autop;
  form_defbac: TFrm_defbac;
  form_visnf: TFrm_VisNF;

implementation

uses S_DM1, S_DM4;

{$R *.dfm}

procedure TFrm_ImpDM.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ImpDM.bbProcurarClick(Sender: TObject);
var
y: integer;
begin
OpenDialog1.Options := OpenDialog1.Options + [ofAllowMultiSelect];
OpenDialog1.Filter := 'All Files (*.*)|*.*';
OpenDialog1.Title := 'Arquivos do dispositivo móvel';
if OpenDialog1.execute then
   begin
   NOMARQ.Text := OpenDialog1.FileName;
   if not fimpdmtestaarq(NOMARQ.Text) then
      NOMARQ.Text:='';
   end;

end;

procedure TFrm_ImpDM.bbImportarClick(Sender: TObject);
begin
if not FileExists(NOMARQ.Text) then
   begin
   fmensagem('Arquivo não Encontrado',0,['0'],0);
   exit;
   end;
mArqProc:=form_expdm.fimpdmtestanome(NOMARQ.Text)+'.TXT';
mPastaRec:=Fnomearq_Pasta(1,mArqProc);
if mPastaRec[length(mPastaRec)]<>'\' then
   mPastaRec:=mPastaRec+'\';
mArqProc :=Fnomearq_Pasta(0,mArqProc);

if not FileExists(mPastaRec+mArqProc) then
   begin
   fmensagem('Arquivo de dados Encontrado',0,['0'],0);
   mPastaRec  :='C:\DM\RECEBE\';
   exit;
   end;
mglid:=0;
mgtot:=mqtdreg;
if not gb_grafico.Visible then
   begin
   gb_grafico.Visible:=true;
   gb_grafico.Caption:='Processando o arquivo: '+mArqProc;
   gb_grafico.update;
   end;
STGP_REC.RowCount:=2;
STGP_REC.Rows[1].Clear;

if not fimpdmProcessa(0) then
   begin
   If fmensagem('Houve Erro no Arquivo. Foi Gerado um Arquivo de Log '+#13
                +'com o nome de: '+mPastaEnvio+form_expdm.fimpdmtestanome(mNomeEvento)+'.RET'+#13
                +'Quer visualizar Este Arquivo Agora?',0,['1','2'],0)=mrYes then
      begin
      CloseFile(F_Evento);
      RenameFile(mPastaEnvio+form_expdm.fimpdmtestanome(mNomeEvento)+'.$$$',
                mPastaEnvio+form_expdm.fimpdmtestanome(mNomeEvento)+'.RET');
      Application.CreateForm(Tfrm_Editor, form_Editor);
      form_Editor.RichEdit1.Lines.LoadFromFile(mPastaEnvio+form_expdm.fimpdmtestanome(mNomeEvento)+'.RET');
      form_Editor.ShowModal;
      form_Editor.Free;
      form_Editor:=nil;
      end;
   end;
{
mArqProc:=fimpdmtestanome(NOMARQ.Text)+'.ID';
DeleteFile(mpastarec+mArqProc);
mArqProc:=fimpdmtestanome(NOMARQ.Text)+'.TXT';
DeleteFile(mpastarec+mArqProc);
}
mArqProc:=form_expdm.fimpdmtestanome(mArqProc)+'.ID';
CopyFile(pchar(mpastarec+mArqProc),pchar('C:\DM\BKPREC\'+marqproc),true);
DeleteFile(mpastarec+mArqProc);
mArqProc:=form_expdm.fimpdmtestanome(mArqProc)+'.TXT';
CopyFile(pchar(mpastarec+mArqProc),pchar('C:\DM\BKPREC\'+marqproc),true);
DeleteFile(mpastarec+mArqProc);

gb_grafico.Visible:=false;
mPastaRec  :='C:\DM\RECEBE\';




end;

procedure TFrm_ImpDM.NOMARQExit(Sender: TObject);
begin
if not bbImportar.Focused then
   exit;
if CB_BUSCA.Checked then
   begin
   if not DirectoryExists(NOMARQ.Text) then
      begin
      fmensagem('Pasta não Encontrada!',0,['0'],0);
      NOMARQ.SetFocus;
      end;
   end
else if not fimpdmtestaarq(mPastaRec+NOMARQ.Text) then
   begin
   NOMARQ.SetFocus;
   exit;
   end;
end;
function TFrm_ImpDM.fimpdmtestaarq(parq: String): Boolean;
var
mtipo: String;
begin
if not FileExists(parq) then
   begin
   fmensagem('Arquivo não Encontrado!',0,['0'],0);
   result:=False;
   end
else
   begin
   AssignFile(F,parq);
   Reset(f);
   ReadLn(F,mlinha);
   if length(mlinha)<>74 then
      begin
      fmensagem('Não é um arquivo válido de Importação, ou esta danificado!',0,['0'],0);
//      lindomar
      closefile(f);
      mArqProc:=form_expdm.fimpdmtestanome(parq)+'.ID';
      CopyFile(pchar(mArqProc),pchar('C:\DM\BKPREC\'+Fnomearq_Pasta(0,marqproc)),true);
      DeleteFile(mArqProc);
      mArqProc:=form_expdm.fimpdmtestanome(parq)+'.TXT';
      CopyFile(pchar(mArqProc),pchar('C:\DM\BKPREC\'+Fnomearq_Pasta(0,marqproc)),true);
      DeleteFile(mArqProc);
      result:=false;
      exit;
      end
   else
      begin
      mPastaEnvio   :='C:\DM\enviar\';
      if not DirectoryExists(mPastaEnvio) then
         CreateDir(mPastaEnvio);
      NUMLOT.Text:=copy(mlinha,50,10);
      mLocalOrigem_info:=copy(mlinha,73,02);
      ORIGEM_INFO.Text:=mLocalOrigem_info;
      if ValInt(mLocalOrigem_info)=0 then
         NOME_ORIGEM.Text:='SGE-POCKET'
      else if ValInt(mLocalOrigem_info)=010 then
         NOME_ORIGEM.Text:='3S'
      else if ValInt(mLocalOrigem_info)=020 then
         NOME_ORIGEM.Text:='PEDIDO ELETRONICO';
      if valint(mLocalOrigem_info)=0 then
         begin
         mLocalOrigem_info:='';
         end
      else
         begin
         mPastaEnvio:=mPastaEnvio+FormatFloat('000',ValInt(mLocalOrigem_info))+'\';
         if not DirectoryExists(mPastaEnvio) then
            CreateDir(mPastaEnvio);
         end;

      mtipo:=copy(mlinha,01,02);
      TIPO.Text:=mtipo;
      if mtipo='SP' then
         begin
         Label1.Caption:='Supervidor: ';
         CODVEN.Text   :=copy(mlinha, 03,15);
         NOMVEN.Text   :=copy(mlinha, 18,30);
         mPastaEnvio   :=mPastaEnvio+'SP'+FormatFloat('00000', ValFloat(CODVEN.Text))+'\';
         end
      else if mtipo='TD' then
         begin
         Label1.Caption:='Gerencia';
         NOMVEN.Text   :='Gerencia';
         mPastaEnvio   :=mPastaEnvio+'TD'+FormatFloat('00000', 99)+'\';

         end
      else if mtipo='VD' then
         begin
         Label1.Caption:='Vendedor: ';
         CODVEN.Text   :=copy(mlinha, 03,15);
         if flqr1('VNOME','V','CADVEN','N','VCODVEN',fdeixanum(CODVEN.Text)) then
            NOMVEN.Text   :=DM1.Query1.Fields[0].AsString
         else
            NOMVEN.Text   :=copy(mlinha, 18,30);
         mPastaEnvio   :=mPastaEnvio+'VD'+FormatFloat('00000', ValFloat(CODVEN.Text))+'\';
         end
      else if mtipo='CL' then
         begin
         Label1.Caption:='Cliente: ';
         CODVEN.Text   :=copy(mlinha, 03,15);
         NOMVEN.Text   :=copy(mlinha, 18,30);
         mPastaEnvio   :=mPastaEnvio+'CL'+FormatFloat('00000', ValFloat(CODVEN.Text))+'\';
         end
      else
         begin
         fmensagem('Registro não Identificado!',0,['0'],0);
         result:=false;
         closefile(f);
         mArqProc:=form_expdm.fimpdmtestanome(parq)+'.ID';
         CopyFile(pchar(mArqProc),pchar('C:\DM\BKPREC\'+Fnomearq_Pasta(0,marqproc)),true);
         DeleteFile(mArqProc);
         mArqProc:=form_expdm.fimpdmtestanome(parq)+'.TXT';
         CopyFile(pchar(mArqProc),pchar('C:\DM\BKPREC\'+Fnomearq_Pasta(0,marqproc)),true);
         DeleteFile(mArqProc);
         exit;
         end;


      if not DirectoryExists(mPastaEnvio) then
         CreateDir(mPastaEnvio);
      if not DirectoryExists(mPastaEnvio) then
         CreateDir(mPastaEnvio);
      mqtdreg    :=valint(copy(mlinha,60,10));
      result:=true;
      end;
   closefile(f);
   end;

end;
function TFrm_ImpDM.fimpdmfatped(ptipo: Integer): Boolean;
var

x: Integer;
mFiltroPro_ant: Boolean;
mCnpj_Cli: String;
begin
//if (length(mlinha)<>81)  then
//   begin
//   exit;
//   end;
mchavepoc:=copy(mlinha,4,10); // chave do pedido;
flcadpar01(0,codemp,'1');
if form_pvo=nil then
   Application.CreateForm(Tfrm_PVO, form_PVO);
Frm_Ped_AutoP.Tool_Limpar.Click;
flcadpar01(0,codemp,'1');
Frm_Ped_AutoP.mFatMz       :=DM4.Tb_Par01PFATMZ.AsInteger=1;
Frm_Ped_AutoP.mFatMz_LocMov:=DM4.Tb_Par01PFATMZ_LOCMOV.AsInteger=0;
Frm_Ped_AutoP.mAvisar_SemEstoque:=DM4.Tb_Par01PFATMZC.AsInteger=1;

Frm_Ped_AutoP.CODDIG.Text        :=IntToStr(codusr);
Frm_Ped_AutoP.HORDIG.Text        :=FormatDatetime('hh:nn:ss',time);
Frm_Ped_AutoP.DATAP.Text:=FormatDatetime(fdt2,date);
Frm_Ped_AutoP.CODVEN.Text:=fdeixanum(copy(mlinha,36,14));
if valfloat(Frm_Ped_AutoP.CODVEN.Text)=0 then
   begin
   flcadven(0,1,'');
   Frm_Ped_AutoP.CODVEN.Text:=DM1.Tb_VenVCODVEN.AsString;
   end;
if flcadven(1,0,Frm_Ped_AutoP.CODVEN.Text) then
   begin
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   Frm_Ped_AutoP.mCodRegiao   :=DM1.Tb_VenVCODREG.AsFloat;
   end
else
   Frm_Ped_AutoP.CODVEN.Text:='';

Frm_Ped_AutoP.CODCLI.Text:=fdeixanum(copy(mlinha,22,14));
mFiltroPro_ant:=DM1.Tb_Pro.Filtered;
DM1.Tb_Pro.Filtered:=false;
if valint(copy(mlinha,137,1))=2 then
   begin
   mcnpj_cli:=copy(mlinha,142,014);
   if flqr1('CCODCLI','C','CADCLI','N','CCNPJ',mcnpj_cli) then
      Frm_Ped_AutoP.CODCLI.Text:=DM1.query1.FieldbyName('CCODCLI').asstring
   else
      Frm_Ped_AutoP.CODCLI.Text:='0';
   end;

if not flcadcli(1,0,Frm_Ped_AutoP.CODCLI.Text) then  // codigo do cliente
   begin
   form_expdm.fimpdmCriaEvento(0,'Cliente não Encontrado. Código: '+copy(mlinha,22,14)+' Chave do DM: '+mchavepoc,trim(NUMLOT.Text));
   result:=false;
   exit;
   end;
if valint(mLocalOrigem_info)=020 then
   begin
   if ValInt(Frm_Ped_AutoP.CODVEN.Text)=1102 then
      Frm_Ped_AutoP.CODVEN.Text:='1000';
   end;

if trim(Frm_Ped_AutoP.CODVEN.Text)='' then
   begin
   Frm_Ped_AutoP.CODVEN.Text:=DM1.Tb_CliCCODVEN.AsString;
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Frm_Ped_AutoP.CODVEN.Text) then
      begin
      form_expdm.fimpdmCriaEvento(0,'Vendedor não Encontrado. Código: '+copy(mlinha,22,14)+' Chave do DM: '+mchavepoc,trim(NUMLOT.Text));
      result:=false;
      exit;
      end;
   end;


if not flcaduf(0,0,0,DM1.Tb_CliCUF.AsString) then
   begin
   form_expdm.fimpdmCriaEvento(0,'UF Não Encontrado. Cliente Código: '+copy(mlinha,22,14)+' UF: '+DM1.Tb_CliCUF.Value+' Chave do DM: '+mchavepoc,trim(NUMLOT.Text));
   result:=false;
   exit;
   end;

Frm_Ped_AutoP.CB_TABPV.Text:=copy(mlinha,50,2);
Frm_Ped_AutoP.CODPV.Text   :=copy(mlinha,52,5);

if valint(copy(mlinha,139,1))=1 then
   Frm_Ped_AutoP.mSitCpr:=1
else if valint(copy(mlinha,139,1))=2 then
   Frm_Ped_AutoP.mSitCpr:=2
else
   Frm_Ped_AutoP.mSitCpr:=0;
if (valint(ORIGEM_INFO.Text)=20) and
   (  (DM1.Tb_CliCPEDELE_PAD.AsInteger=1) or (DM1.Tb_CliCPEDELE_PAD.AsInteger=2) )then
   begin
   Frm_Ped_AutoP.CB_TIPO2.ItemIndex:=DM1.Tb_CliCPEDELE_PAD.AsInteger-1;
   end
else
   begin
   with Frm_Ped_AutoP.CB_TIPO2 do ItemIndex:=Items.IndexOf(CB_TIPO.Text);
   end;
with Frm_Ped_AutoP.CB_TIPO do ItemIndex:=Items.IndexOf(Frm_Ped_AutoP.CB_TIPO2.text);
Frm_Ped_AutoP.mtipop:=Frm_Ped_AutoP.CB_TIPO2.ItemIndex;
if (Frm_Ped_AutoP.mSitCpr=2) and (trim(Frm_Ped_AutoP.CB_TABPV.Text)<>'')
   and (trim(Frm_Ped_AutoP.CODPV.Text)<>'') then
   begin
   Frm_Ped_AutoP.CODPV.Text   :=CODPV.Text;
   Frm_Ped_AutoP.CB_TABPV.Text:=CB_TABPV.Text;
   end
else if valint(mLocalOrigem_info)=020 then
   begin
   if DM1.Tb_CliCCODPV.Value>0 then
      begin
      Frm_Ped_AutoP.CB_TABPV.Text:=DM1.Tb_CliCTABPV.AsString;
      Frm_Ped_AutoP.CODPV.Text   :=DM1.Tb_CliCCODPV.AsString;
      end;
   end;

if not flcadpv(1,0,Frm_Ped_AutoP.CB_TABPV.Text,Frm_Ped_AutoP.CODPV.Text) then
   begin
   if DM1.Tb_CliCCODPV.Value>0 then
      begin
      Frm_Ped_AutoP.CB_TABPV.Text:=DM1.Tb_CliCTABPV.AsString;
      Frm_Ped_AutoP.CODPV.Text   :=DM1.Tb_CliCCODPV.AsString;
      end;
   if flcadpv(1,0,Frm_Ped_AutoP.CB_TABPV.Text,Frm_Ped_AutoP.CODPV.Text) then
      begin
       form_expdm.fimpdmCriaEvento(0,'O Plano de Vendas: '+copy(mlinha,51,2)+'/'+copy(mlinha,53,5)+' do pedido: '+mchavepoc+#13
                +'não é um plano Válido!',trim(NUMLOT.Text));
      result:=false;
      exit;
      end;
   end;

// validar os registros
Frm_Ped_AutoP.CODBCO.Text        :=copy(mlinha,57,3);
Frm_Ped_AutoP.CODPVExit(Self);

Frm_Ped_AutoP.CODCLIExit(Self);


// validar todos

Frm_Ped_AutoP.CHAVE.Text :='';
Frm_Ped_AutoP.ORDEM.Text :='';
//Frm_Ped_AutoP.CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
{
try
   Frm_Ped_AutoP.DATAP.Text :=FormatDateTime(fdt2, StrToDate(copy(mlinha,20,2)+'/'+copy(mlinha,18,2)+'/'+copy(mlinha,14,4)));
except
  Frm_Ped_AutoP.DATAP.Text :=FormatDatetime(fdt2,date);
  end;
}
Frm_Ped_AutoP.DATAP.Text :=FormatDateTime(fdt2, pdatasis);

Frm_Ped_AutoP.DATANF.Text:='/  /';
Frm_Ped_AutoP.NUMNF.Text  :='';
Frm_Ped_AutoP.SERIENF.Text:='';
Frm_Ped_AutoP.SUBSER.Text :='';
Frm_Ped_AutoP.PCOMIS.Text :='';
Frm_Ped_AutoP.MODELO.Text :='';
Frm_Ped_AutoP.OBS1.Text   :=copy(mlinha,70,60);
Frm_Ped_AutoP.OBS2.Text   :='';
Frm_Ped_AutoP.OBS3.Text   :='';
//Frm_Ped_AutoP.OBS2.Text   :=copy(mlinha,131,60);
//Frm_Ped_AutoP.OBS3.Text   :=copy(mlinha,191,50);

mStatus:=0;


//mtipop      :=CB_TIPO.ItemIndex;
Frm_Ped_AutoP.CB_TIPO.ItemIndex:=Frm_Ped_AutoP.mtipop;
Frm_Ped_AutoP.CODDIG.Text :=Inttostr(codusr);
Frm_Ped_AutoP.HORDIG.Text :=FormatDateTime('hh:nn:ss',time);
Frm_Ped_AutoP.DTMOD.Text  :='';
Frm_Ped_AutoP.CB_CONF.Checked:=False;
Frm_Ped_AutoP.CODCON.Text    :='';
Frm_Ped_AutoP.DATCON.Text :='/  /';
Frm_Ped_AutoP.HORCON.Text :='';
Frm_Ped_AutoP.CODTRA.Text:='';
Frm_Ped_AutoP.NOMTRA.Text:='';
Frm_Ped_AutoP.QTDVOL.Text:='0';
Frm_Ped_AutoP.PESOL.Text :='0';
Frm_Ped_AutoP.PESOB.Text :='0';
Frm_Ped_AutoP.ESPECIE.Text       :='';
Frm_Ped_AutoP.RGFRETEPC.ItemIndex:=StrToInt('0'+copy(mlinha,60,1));
Frm_Ped_AutoP.VALFRE.Text        :='0';
Frm_Ped_AutoP.UFPV.Text          :='';
Frm_Ped_AutoP.PLACAV.Text        :='';
Frm_Ped_AutoP.RGCODSER.ItemIndex :=0;
Frm_Ped_AutoP.DESC01.Text   :=FormatFloat(mcasas, valfloat(copy(mlinha,61,6))/100);
Frm_Ped_AutoP.DESC02.Text   :='0';
Frm_Ped_AutoP.VALDES.Text   :='0';
mcodldr            :=0;
mbcissqn           :=0;
missqn             :=0;
Frm_Ped_AutoP.CODVEN2.Text:='';
Frm_Ped_AutoP.CODVEN3.Text:='';
//Frm_Ped_AutoP.CODVEN.Text:= copy(mlinha,36,14);
mcomis     :=0;

if (valint(ORIGEM_INFO.Text)=20) then
   Frm_Ped_AutoP.CB_ORIGEM.ItemIndex:=2
else
   Frm_Ped_AutoP.CB_ORIGEM.ItemIndex:=3;

Frm_Ped_AutoP.CODTLV.Text:='';
Frm_Ped_AutoP.CB_ETIVOL.Checked :=False;
Frm_Ped_AutoP.CODSEP.Text:='';
Frm_Ped_AutoP.DATSEP.Text:='/  /';
Frm_Ped_AutoP.HORSEP.Text:='';
Frm_Ped_AutoP.codemb.Text:='';
Frm_Ped_AutoP.NUMCF.Text:='0';
Frm_Ped_AutoP.NPEDORI.Text:=mchavepoc;
Frm_Ped_AutoP.PEDORI1.Text:=copy(mlinha,184,20);
Frm_Ped_AutoP.SUBMOD.Text :=copy(mlinha,67,03);
mpund:=StrtoFloat('0'+Trim(Frm_Ped_AutoP.SUBMOD.Text));
Frm_Ped_AutoP.CB_TPPCO.ItemIndex:=0;

if (Frm_Ped_AutoP.mSitCpr=2) and (CB_PCOLIQ.Checked) then
   Frm_Ped_AutoP.CB_TPPCO.ItemIndex:=3
else
   Frm_Ped_AutoP.CB_TPPCO.ItemIndex:=valint(copy(mlinha,138,1));



Frm_Ped_AutoP.fPed01tarban(0);
//Frm_Ped_AutoP.Tool_Calcular.Click;

Frm_Ped_AutoP.moper_ped:=0;
Frm_Ped_AutoP.Tb_Ped02.Close;
Frm_Ped_AutoP.Tb_Ped02.SQL.Clear;
Frm_Ped_AutoP.Tb_Ped02.SQL.Add('Select * from '+mTabTmp01);
Frm_Ped_AutoP.Tb_Ped02.Open;
Frm_Ped_AutoP.Tb_Ped02s.Close;
Frm_Ped_AutoP.Tb_Ped02s.SQL.Clear;
Frm_Ped_AutoP.Tb_Ped02s.SQL.Add('Select * from '+mTabTmp02);
Frm_Ped_AutoP.Tb_Ped02s.Open;

Readln(f, mlinha);
fCriarGrafico(0);
mItem :=1;
mQtdItemPed:=0;
While not (trim(mlinha)='') and  (copy(mlinha,1,3)='010') and (copy(mlinha,4,10)=mchavepoc) do
   begin

   if not flcadpro(1,0,0,FloatToStr(ValFloat(copy(mlinha,14,14)))) then
      begin
      form_expdm.fimpdmCriaEvento(0,'Produto não Encontrado! Código: '+ copy(mlinha,14,14)+' Chave do DM: '+mchavepoc,trim(NUMLOT.Text));
      if eof(f) then
         begin
         Readln(f,mlinha);
         mlinha:='';
         end
      else
         Readln(f, mlinha);
      fCriarGrafico(0);
      Continue;
      end;

   mQtdItemPed:=mQtdItemPed+1;
   Frm_Ped_AutoP.Tb_Ped02.Append;
   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value   :=fsonumero(copy(mlinha,14,14));
//   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value   :=valfloat(copy(mlinha,14,14));
   flcadpro(1,0,0,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString);
//   Frm_Ped_AutoP.Tb_Ped02P2QTD.Value      :=valfloat(copy(mlinha,28,14))/1000; // quantidade
   Frm_Ped_AutoP.Tb_Ped02P2QTD.Value      :=fsonumero(copy(mlinha,28,14))/1000; // quantidade
   Frm_Ped_AutoP.Tb_Ped02UNDPRO.Value     :=DM1.Tb_ProPDUND.Value;
   Frm_Ped_AutoP.Tb_Ped02NOMEPRO.Value    :=DM1.Tb_ProPDNOME.Value;
   if Frm_Ped_AutoP.CB_TPPCO.ItemIndex=2 then
      Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value    :=fsonumero(copy(mlinha,54,14))/1000 // preco do pocket
   else
      Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value    :=DM1.Tb_Propcoven.Value; // preco do pocket


//      Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value    :=valfloat(copy(mlinha,54,14))/1000; // preco do pocket
   if (Frm_Ped_AutoP.mSitCpr=2) and ((trim(CODPV.Text)='') or (trim(CB_TABPV.Text)='')) then
      begin
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value    :=0;
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value    :=0;
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value    :=0;
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value   :=0;
      end
   else if Frm_Ped_AutoP.msitcpr<>2 then
      begin
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value    :=fsonumero(copy(mlinha,42,04))/100; // desconto 01
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value    :=fsonumero(copy(mlinha,46,04))/100; // desconto 02
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value    :=fsonumero(copy(mlinha,50,04))/100; // desconto 03
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value   :=fsonumero(copy(mlinha,82,06))/100; // desconto 03

//      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value    :=valfloat(copy(mlinha,42,04))/100; // desconto 01
//      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value    :=valfloat(copy(mlinha,46,04))/100; // desconto 02
//      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value    :=valfloat(copy(mlinha,50,04))/100; // desconto 03
//      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value   :=valfloat(copy(mlinha,82,06))/100; // desconto 03

      end;

   Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value   :=0;
//   Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value  :=''
//      Frm_Ped_AutoP.Tb_Ped02P2DTVCTO.Value:=Qr_PedP2DTVCTO.Value;

   Frm_Ped_AutoP.Tb_Ped02P2SIT.Value      :=DM1.Tb_ProPDSIT.Value;
   Frm_Ped_AutoP.Tb_Ped02P2TABELA.Value   :=DM1.Tb_ProPDTABICM.Value;
   Frm_Ped_AutoP.Tb_Ped02P2LISTA.Value    :=DM1.Tb_ProPDLISTA.Value;
   Frm_Ped_AutoP.Tb_Ped02P2PCOFPG.Value   :=DM1.Tb_Propcoven.Value;
   Frm_Ped_AutoP.Tb_Ped02P2PCOTAB.Value   :=DM1.Tb_ProPDPRECO1.Value;
   Frm_Ped_AutoP.Tb_Ped02DESCALTER.Value  :='';
   Frm_Ped_AutoP.Tb_Ped02P2SEMCOM.Value   :=iif(DM1.Tb_ProPDSEMCOM.IsNull,0,DM1.Tb_ProPDSEMCOM.AsString);
   Frm_Ped_AutoP.Tb_Ped02P2UCPR.Value     :=iif(DM1.Tb_ProPDUCPR.IsNull,0,DM1.Tb_ProPDUCPR.AsString);
   Frm_Ped_AutoP.Tb_Ped02.Post;
   if eof(f) then
      begin
      Readln(f,mlinha);
      mlinha:='';
      end
   else
      Readln(f,mlinha);
   fCriarGrafico(0);
   end;
Frm_Ped_AutoP.Tool_Calcular.Click;
if (Frm_Ped_AutoP.mSitCpr=2) and ((trim(CODPV.Text)='') or (trim(CB_TABPV.Text)='')) then
//if mSitCpr=2 then
   begin
   Frm_Ped_AutoP.Tb_Ped02.First;
   While not Frm_Ped_AutoP.Tb_Ped02.Eof do
      begin
      Frm_Ped_AutoP.Tb_Ped02.Edit;
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value    :=0;
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value    :=0;
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value    :=0;
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value   :=0;
      Frm_Ped_AutoP.Tb_Ped02.Post;
      Frm_Ped_AutoP.Tb_Ped02.Next;
      end;
   end;

Frm_Ped_AutoP.mordem:=0;
Frm_Ped_AutoP.mchave:=0;
Frm_Ped_AutoP.HORDIG.Text:=FormatDatetime(fhr,time);

//Frm_Ped_AutoP.Tool_Gravar.Click;


// nota
if Frm_Ped_AutoP.Tb_Ped02.State in [dsInsert,dsEdit] then
   begin
   if (Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsFloat<>0) and
      (Frm_Ped_AutoP.Tb_Ped02P2QTD.asfloat<>0) then
      Frm_Ped_AutoP.Tb_Ped02.Post
   else
      Frm_Ped_AutoP.Tb_Ped02.Cancel;
   end;

if (DM4.Tb_Par01PDESCMP0.Value>0) and (ValFloat(Frm_Ped_AutoP.TOTDES.Caption)>0)  then
   begin
   if (ValFloat(Frm_Ped_AutoP.TOTDES.Caption)>0) then
      mpdesc:=(ValFloat(Frm_Ped_AutoP.TOTDES.Caption)*100)/ValFloat(Frm_Ped_AutoP.TOTAL.Caption)
   else
      begin
      mpdesc:=valFloat(Frm_Ped_AutoP.DESC01.Text)+ValFloat(Frm_Ped_AutoP.DESC02.Text);
      end;
   mpdesc:=Arredonda(mpdesc,3);
   if (mpdesc>DM4.Tb_Par01PDESCMP0.Value) and (mpdesc>Frm_Ped_AutoP.mlib_mPDescLib) then
      begin
      Frm_Ped_AutoP.mlib_mPDescLib_Usr:=0;
      Frm_Ped_AutoP.mlib_mPDescLib    :=mpdesc;
      Frm_Ped_AutoP.mlib_codbloq      :=fAdicionaRemoveTexto(0,Frm_Ped_AutoP.mlib_codbloq,'20');
      Frm_Ped_AutoP.mlib_bloqPend     :=2;
      end;
   end;
if (Frm_Ped_AutoP.Tb_ped02.RecordCount>0) or (Frm_Ped_AutoP.Tb_ped02S.RecordCount>0) then
   Frm_Ped_AutoP.fgravarped_Autop(0); // mercadorias


if (Frm_Ped_AutoP.STG_PEN.RowCount>1) and (Frm_Ped_AutoP.mtipop<>0) then
   Frm_Ped_AutoP.fgravarpen_Autop(0);

STGP_REC.Cells[02,mqtdped-1]:=DM1.Tb_CliCRAZAO.Value;
STGP_REC.Cells[03,mqtdped-1]:=NOMVEN.Text;
STGP_REC.Cells[04,mqtdped-1]:=IntToStr(mQtdItemPed);
STGP_REC.Cells[05,mqtdped-1]:=trim(Frm_Ped_AutoP.mlib_codbloq);
// informacoes do bloqueios

if trim(Frm_Ped_AutoP.mlib_codbloq)<>'' then
   begin
   STGP_REC.Cells[06,mqtdped-1]:='';
   While x<length(Frm_Ped_AutoP.mlib_codbloq) do
      begin
      mcinst2:=copy(Frm_Ped_AutoP.mlib_codbloq,x,2);
      if fAdicionaRemoveTexto(2,Frm_Ped_AutoP.mlib_codbloq,mcinst2)='' then
         begin
         if ValInt(mcinst2)=1 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Cliente sem limite de Crédito '
         else if ValInt(mcinst2)=2 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Cliente Inadimplente'
         else if ValInt(mcinst2)=3 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Cliente com Cheques devolvidos'
         else if ValInt(mcinst2)=4 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Cliente Com titulos Protestado'
         else if ValInt(mcinst2)=5 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Cliente Com Cadastro Bloqueado Pelo Status=7'
         else if ValInt(mcinst2)=6 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Registro Vigilancia Sanitario Municipal Invalido'
         else if ValInt(mcinst2)=7 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Registro Vigilancia Sanitario Municipal Vencido'
         else if ValInt(mcinst2)=8 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Registro Vigilancia Sanitario Federal Invalido'
         else if ValInt(mcinst2)=10 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Prazo Maior que o Permitido no Plano de Vendas'
         else if ValInt(mcinst2)=11 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Cliente Inativo Com Cadastro Bloqueado Pelo Status=9'
         else if ValInt(mcinst2)=12 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Cliente Não Compra a mais de '+DM4.Tb_ParGer02PG2QTDDBLQCLISEMCPR.AsString+' dias'
         else if ValInt(mcinst2)=20 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Desconto Maior que o Permitido'
         else if ValInt(mcinst2)=30 then
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - cfop  com problemas'
         else
            STGP_REC.Cells[06,mqtdped-1]:=STGP_REC.Cells[06,mqtdped-1]+' '+mcinst2+' - Bloqueio não Identificado';
         end;
      x:=x+3;
      end;
   end;

// termino dos bloqueios


if Frm_Ped_AutoP.mchave=0 then
   begin
   STGP_REC.Cells[01,mqtdped-1]:='Não Faturado';
   form_expdm.fimpdmCriaEvento(0,'Pedido Não Faturado: Chave: '+mchavepoc,trim(NUMLOT.Text));
   end
else
   begin
   form_expdm.fimpdmCriaEvento(0,'Chave no Pocket: '+STGP_REC.Cells[0,mqtdped-1]
                   +' Pedido Chave: '+FloatToStr(Frm_Ped_AutoP.mchave),trim(NUMLOT.Text));
   STGP_REC.Cells[01,mqtdped-1]:=FloatTostr(Frm_Ped_AutoP.mchave);
   if Frm_Ped_AutoP.STG_PEN.RowCount>1 then
      begin
      form_expdm.fimpdmCriaEvento(0,insere('=','=',80),trim(NUMLOT.Text));
      form_expdm.fimpdmCriaEvento(0,centra('Mercadorias Pendentes. Sem Faturar',' ',80),trim(NUMLOT.Text));
      form_expdm.fimpdmCriaEvento(0,insere('=','=',80),trim(NUMLOT.Text));
      form_expdm.fimpdmCriaEvento(0,'Codigo      Qtd.Pedida Qtd.Atend  Nao Env.  Descricao do Produto',trim(NUMLOT.Text));
      end;
   for x:=0 to Frm_Ped_AutoP.STG_PEN.RowCount do
      begin
      if Trim(Frm_Ped_AutoP.STG_PEN.Cells[0,x])='' then
         Continue;
      if flcadpro(1,0,0,trim(Frm_Ped_AutoP.STG_PEN.Cells[0,x])) then
         begin
         form_expdm.fimpdmCriaEvento(0,insere2(DM1.Tb_ProPDCODPRO.AsString,' ',13)
                         +insere(Formatfloat(mcasqtd, ValFloat(Frm_Ped_AutoP.STG_PEN.Cells[1,x])),' ',10)
                         +insere(Formatfloat(mcasqtd, ValFloat(Frm_Ped_AutoP.STG_PEN.Cells[2,x])),' ',10)
                         +insere(Formatfloat(mcasqtd, (ValFloat(Frm_Ped_AutoP.STG_PEN.Cells[1,x])-ValFloat(Frm_Ped_AutoP.STG_PEN.Cells[2,x]))),' ',10)
                         +' '+insere2(DM1.Tb_ProPDNOME.AsString,' ',36),trim(NUMLOT.Text));
         end;
      end;
   if not mCriouEvento then
      begin
      mNomeEvento:=form_expdm.fcriarArqLog(0,FormatFloat('0000',ValInt(NUMLOT.Text)));
      Assignfile(F_Evento,mPastaEnvio+mNomeEvento);
      Rewrite(F_Evento);
      mCriouEvento:=true;
      end;

   form_expdm.fImpDMGerarRetorno(0,valint(ORIGEM_INFO.Text), Fsonumero(mchavepoc),DM1.Tb_CliCCODCLI.AsFloat,DM1.Tb_CliCCNPJ.Value,DM1.Tb_CliCCPF.AsFloat,Frm_Ped_AutoP.mchave);


//
//Codigo      Qtd.Pedida Qtd.Atend  Nao Env. Descricao do Produto
//123456789012312345.123123456.123123456.123 1234567890123456789012345678901234567
   if (mdocOnLine) AND (Frm_Ped_AutoP.mtipop<>0) then
      begin
      Frm_Ped_AutoP.moper_ped:=3;
      Frm_Ped_AutoP.tool_localizar.Click;
      if mdocOnLine then
         Frm_Ped_AutoP.fPed01EmiteOnLine(2,false);
      Frm_Ped_AutoP.moper_ped:=0;
      end;
   Frm_Ped_AutoP.mordem:=1;
{
   DM1.Tb_Cli.Edit;
   DM1.Tb_CliCCODPV.Value:=ValFloat(Frm_Ped_AutoP.CODPV.Text);
   DM1.Tb_CliCTABPV.Value:=Frm_Ped_AutoP.CB_TABPV.Text;
   DM1.Tb_Cli.Post;
}   end;
DM1.Tb_Pro.Filtered:=mFiltroPro_ant;

result:=True;

end;
function TFrm_ImpDM.fimpdmrecbto(ptipo: Integer): Boolean;
begin
if ptipo=22 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Delete from CADDUPREC where '
                    +' DPCODEMP=0'+IntToStr(codemp)
                    +' and DPDTOR='+chr(39)+TIPO.Text+chr(39)
                    +' and DPCODIGO=0'+Trim(CODVEN.Text)
                    +' and DPSEQ=0'+fdeixanum(copy(mlinha,04,10)));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   Qr_DupRec.ParambyName('DPCODEMP').AsFloat:=codemp;
   Qr_DupRec.ParambyName('DPTPOR').AsString :=TIPO.Text;
   Qr_DupRec.ParambyName('DPCODIGO').AsFloat:=ValFloat(CODVEN.Text);
   Qr_DupRec.ParambyName('DPSEQ').AsFloat   :=valfloat(copy(mlinha,04,10));
   Qr_DupRec.ParambyName('DPLOTE').AsFloat  :=valfloat(copy(mlinha,14,10));
   Qr_DupRec.ParambyName('DPNR').AsFloat    :=valfloat(copy(mlinha,24,10));
   Qr_DupRec.ParambyName('DPNUMERO').AsFloat:=valfloat(copy(mlinha,34,10));
   Qr_DupRec.ParambyName('DPDESD').AsString :=copy(mlinha,44,02);
   Qr_DupRec.ParambyName('DPDUP').AsFloat   :=valfloat(copy(mlinha,46,1));
   Qr_DupRec.ParambyName('DPCODCLI').AsFloat:=valfloat(copy(mlinha,47,14));
   Qr_DupRec.ParambyName('DPCODVEN').AsFloat:=valfloat(copy(mlinha,61,10));
   if ValFloat(copy(mlinha,71,8))<=0 then
      Qr_DupRec.ParambyName('DPDTEMIS').AsDateTime:=pdatanula
   else
      begin
      try
         Qr_DupRec.ParambyName('DPDTEMIS').AsDateTime:=StrToDate(copy(mlinha,77,2)+'/'+copy(mlinha,75,2)+'/'+copy(mlinha,71,4));
      except
         Qr_DupRec.ParambyName('DPDTEMIS').AsDateTime:=pdatanula;
         end;
      end;
   if ValFloat(copy(mlinha,134,8))<=0 then
      Qr_DupRec.ParambyName('DPDTPAG').AsDateTime:=pdatanula
   else
      begin
      try
         Qr_DupRec.ParambyName('DPDTPAG').AsDateTime:=StrToDate(copy(mlinha,140,2)+'/'+copy(mlinha,138,2)+'/'+copy(mlinha,134,4));
      except
         Qr_DupRec.ParambyName('DPDTPAG').AsDateTime:=pdatanula;
         end;
      end;
   Qr_DupRec.ParambyName('DPVALOR').AsFloat :=valfloat(copy(mlinha,81,14))/100;
   Qr_DupRec.ParambyName('DPJUROS').AsFloat :=valfloat(copy(mlinha,95,14))/100;
   Qr_DupRec.ParambyName('DPDESC').AsFloat  :=valfloat(copy(mlinha,109,14))/100;
   Qr_DupRec.ParambyName('DPTIPO').AsFloat  :=valfloat(copy(mlinha,123,01));
   Qr_DupRec.ParambyName('DPLOTENV').AsFloat:=valfloat(copy(mlinha,124,10));
   Qr_DupRec.ParambyName('DPORIGEM').AsFloat:=0;
   try
      Qr_DupRec.ExecSQL;
      fdm1StartCommit;
   except
      form_expdm.fimpdmCriaEvento(0,'Erro ao Criar o Arquivo de Duplicatas Recebidas',trim(NUMLOT.Text));
      end;
   end
else if ptipo=24 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Delete from CADDUPDREC where '
                    +' DRCODEMP=0'+IntToStr(codemp)
                    +' and DRDTOR='+chr(39)+TIPO.Text+chr(39)
                    +' and DRCODIGO=0'+Trim(CODVEN.Text)
                    +' and DRSEQ=0'+fdeixanum(copy(mlinha,04,10)));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;

   Qr_DocRec.ParambyName('DRCODEMP').AsFloat :=codemp;
   Qr_DocRec.ParambyName('DRTPOR').AsString  :=TIPO.Text;
   Qr_DocRec.ParambyName('DRCODIGO').AsFloat :=ValFloat(CODVEN.Text);
   Qr_DocRec.ParambyName('DRSEQ').AsFloat    :=valfloat(copy(mlinha,04,10));
   Qr_DocRec.ParambyName('DRLOTE').AsFloat   :=valfloat(copy(mlinha,14,10));
   Qr_DocRec.ParambyName('DRVALOR').AsFloat  :=valfloat(copy(mlinha,24,14))/100;
   if ValFloat(copy(mlinha,48,8))<=0 then
      Qr_DocRec.ParambyName('DRDATA').AsDateTime:=pdatanula
   else
      begin
      try
         Qr_DocRec.ParambyName('DRDATA').AsDateTime:=StrToDate(copy(mlinha,44,2)+'/'+copy(mlinha,42,2)+'/'+copy(mlinha,38,4));
      except
         Qr_DocRec.ParambyName('DRDATA').AsDateTime:=pdatanula;
         end;
      end;
   Qr_DocRec.ParambyName('DRFORMA').AsFloat   :=valfloat(copy(mlinha,48,02));
   Qr_DocRec.ParambyName('DRNUMERO').AsFloat  :=valfloat(copy(mlinha,50,10));
   Qr_DocRec.ParambyName('DRSERIE').AsString  :=copy(mlinha,63,10);
   Qr_DocRec.ParambyName('DRCC').AsString     :=copy(mlinha,73,20);
   Qr_DocRec.ParambyName('DRCOMP').AsString   :=copy(mlinha,93,04);
   Qr_DocRec.ParambyName('DRAGENCIA').AsString:=copy(mlinha,212,05);
   Qr_DocRec.ParambyName('DREMIT').AsString   :=copy(mlinha,97,05);
   Qr_DocRec.ParambyName('DRRG').AsString     :=copy(mlinha,137,05);
   Qr_DocRec.ParambyName('DRCGC').AsFloat     :=valfloat(copy(mlinha,177,14));
   if ValFloat(copy(mlinha,191,8))<=0 then
      Qr_DocRec.ParambyName('DRDTNAS').AsDateTime:=pdatanula
   else
      begin
      try
         Qr_DocRec.ParambyName('DRDTNAS').AsDateTime:=StrToDate(copy(mlinha,197,2)+'/'+copy(mlinha,195,2)+'/'+copy(mlinha,191,4));
      except
         Qr_DocRec.ParambyName('DRDTNAS').AsDateTime:=pdatanula;
         end;
      end;

   Qr_DocRec.ParambyName('DRTIPO').AsFloat   :=valfloat(copy(mlinha,201,02));
   Qr_DocRec.ParambyName('DRLOTENV').AsFloat :=valfloat(copy(mlinha,202,10));
   Qr_DocRec.ParambyName('DRORIGEM').AsFloat :=0;

   try
      Qr_DocRec.ExecSQL;
      fdm1StartCommit;
   except
      form_expdm.fimpdmCriaEvento(0,'Erro ao Criar o Arquivo de Documentos Recebidos!',trim(NUMLOT.Text));
      end;
   end;
mReceb:=True;
result:=true;
end;


function TFrm_ImpDM.fimpdmCadCli(ptipo: Integer): Boolean;
var
mcnpj: String;
begin



mcnpj:=fdeixanum(copy(mlinha,019,14));
if flcadcli(2,0,mcnpj) then
   begin
   if ptipo=2 then
      begin
      if fLerCadcli_ret(DM1.Tb_CliCCODCLI.AsString) then
         begin
         if not mCriouEvento then
            begin
            mNomeEvento:=form_expdm.fcriarArqLog(0,FormatFloat('0000',ValInt(NUMLOT.Text)));
            Assignfile(F_Evento,mPastaEnvio+mNomeEvento);
            Rewrite(F_Evento);
            mCriouEvento:=true;
            end;
         form_expdm.fExportarCliente(9);
         end;
      result:=true;
      exit;
      end;
   end;
if ptipo=2 then
   begin
   DM1.Tb_Cli.Append;
   DM1.Tb_CliCSITCLI.Value:=3;
   end
else
   DM1.Tb_Cli.edit;


DM1.Tb_CliCRAZAO.Value  :=UpperCase(trim(copy(mlinha,073,40)));
DM1.Tb_CliCDENOM.Value  :=UpperCase(trim(copy(mlinha,113,40)));
DM1.Tb_CliCLOG.Value    :=UpperCase(trim(copy(mlinha,153,40)));
DM1.Tb_CliCENDERC.Value :=DM1.Tb_CliCLOG.Value;
DM1.Tb_CliCBAIRRO.Value :=UpperCase(trim(copy(mlinha,193,30)));
DM1.Tb_CliCBAIRROC.Value:=DM1.Tb_CliCBAIRRO.Value;
DM1.Tb_CliCCIDADE.Value :=UpperCase(trim(copy(mlinha,223,30)));
DM1.Tb_CliCCIDADEC.Value:=DM1.Tb_CliCCIDADE.Value;
DM1.Tb_CliCUF.Value     :=UpperCase(trim(copy(mlinha,253,02)));
DM1.Tb_CliCUFC.Value    :=DM1.Tb_CliCUF.Value;
DM1.Tb_CliCCODBAI.Value :=0;
DM1.Tb_CliCCODLOC.Value :=0;

if (DM1.Tb_PargerPCODBAI.Value=1) and (trim(DM1.Tb_CliCBAIRRO.AsString)<>'') then
   begin
   DM1.Query3.close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.Params.CreateParam(ftString,'BNOME',ptInput);
   DM1.Query3.SQL.Add('Select BCODBAI,BNOME from CADBAI where upper(BNOME)=:BNOME');
   DM1.Query3.ParamByName('BNOME').AsString:=UpperCase(DM1.Tb_CliCBAIRRO.Value);
   DM1.Query3.Open;
   if DM1.Query3.IsEmpty then
      begin
      if (not DM1.Tb_Bai.Active) then
         flcadbai(1,0,'9999');
      DM1.Tb_Bai.Append;
      DM1.Tb_BaiBNOME.Value:=DM1.Tb_CliCBAIRRO.Value;
      DM1.Tb_Bai.Post;
      DM1.Tb_CliCCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
      end
   else
      begin
      DM1.Tb_CliCCODBAI.Value:=DM1.Query3.fieldbyName('BCODBAI').AsFloat;
      end;
   end;


if (DM1.Tb_PargerPCODLOC.Value=1) and (trim(DM1.Tb_CliCCIDADE.AsString)<>'') then
   begin
   DM1.Query3.close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.Params.CreateParam(ftString,'LNOME',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'LUF',ptInput);
   DM1.Query3.SQL.Add('Select LCODLOC,LNOME,LUF from CADLOC where upper(LNOME)=:LNOME and LUF=:LUF');
   DM1.Query3.ParamByName('LNOME').AsString:=UpperCase(DM1.Tb_CliCCIDADE.Value);
   DM1.Query3.ParamByName('LUF').AsString:=UpperCase(DM1.Tb_CliCUF.Value);
   DM1.Query3.Open;
   if DM1.Query3.IsEmpty then
      begin
      if (not DM1.Tb_Loc.Active) then
         flcadloc(1,0,'9999');
      DM1.Tb_Loc.Append;
      DM1.Tb_LocLNOME.Value:=DM1.Tb_CliCCIDADE.Value;
      DM1.Tb_LocLUF.Value  :=DM1.Tb_CliCUF.Value;
      DM1.Tb_Loc.Post;
      DM1.Tb_CliCCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;

      end
   else
      begin
      DM1.Tb_CliCCODLOC.Value:=DM1.Query3.fieldbyName('LCODLOC').AsFloat;
      end;
   end;


DM1.Tb_CliCCODBAIC.Value:=DM1.Tb_CliCCODBAI.Value;
DM1.Tb_CliCCODLOC.Value :=DM1.Tb_CliCCODLOC.Value;
DM1.Tb_CliCCEP.Value    :=copy(mlinha,385,09);
DM1.Tb_CliCCEPC.Value   :=DM1.Tb_CliCCEPC.Value;

DM1.Tb_CliCDTCAD.Value  :=date;
DM1.Tb_CliCCNPJ.Value   :=ValFloat(mcnpj);
DM1.Tb_CliCIE.Value     :=copy(mlinha,033,40);
DM1.Tb_CliCCODVEN.Value :=fSonumero(copy(mlinha,450,014));
if not flcaduf(0,0,0,DM1.Tb_CliCUF.Value) then
   begin
   DM1.Tb_UF.Append;
   DM1.Tb_UFPUF.Value :=DM1.Tb_CliCUF.Value;
   DM1.Tb_UFPNOM.Value:=DM1.Tb_CliCUF.Value;
   DM1.Tb_UF.Post;
   end;
if (DM1.Tb_CliCALIQA.Value=0) or (DM1.Tb_CliCALIQA.IsNull) then
   DM1.Tb_CliCALIQA.Value:=DM1.Tb_UFPICMSA.Value;
if (DM1.Tb_CliCALIQB.Value=0) or (DM1.Tb_CliCALIQB.IsNull) then
   DM1.Tb_CliCALIQB.Value:=DM1.Tb_UFPICMSB.Value;
if (DM1.Tb_CliCALIQC.Value=0) or (DM1.Tb_CliCALIQC.IsNull) then
   DM1.Tb_CliCALIQC.Value:=DM1.Tb_UFPICMSNC.Value;
if (DM1.Tb_CliCALIQD.Value=0) or (DM1.Tb_CliCALIQD.IsNull) then
   DM1.Tb_CliCALIQD.Value:=DM1.Tb_UFPICMSND.Value;
if (DM1.Tb_CliCALIQE.Value=0) or (DM1.Tb_CliCALIQE.IsNull) then
   DM1.Tb_CliCALIQE.Value:=DM1.Tb_UFPICMSNE.Value;
if (DM1.Tb_CliCALIQF.Value=0) or (DM1.Tb_CliCALIQF.IsNull) then
   DM1.Tb_CliCALIQF.Value:=DM1.Tb_UFPICMSNF.Value;
if (DM1.Tb_CliCALIQG.Value=0) or (DM1.Tb_CliCALIQG.IsNull) then
   DM1.Tb_CliCALIQG.Value:=DM1.Tb_UFPICMSNG.Value;
if (DM1.Tb_CliCALIQH.Value=0) or (DM1.Tb_CliCALIQH.IsNull) then
   DM1.Tb_CliCALIQH.Value:=DM1.Tb_UFPICMSNH.Value;
if (DM1.Tb_CliCALIQI.Value=0) or (DM1.Tb_CliCALIQI.IsNull) then
   DM1.Tb_CliCALIQI.Value:=DM1.Tb_UFPICMSNI.Value;
if DM1.Tb_CliCICMSTP.IsNull then
   DM1.Tb_CliCICMSTP.Value:=iif(DM1.Tb_UFPBICMS.Value='S',1,0);
if Trim(DM1.Tb_CliCUFC.Value)='' then
   DM1.Tb_CliCUFC.Value :=DM1.Tb_CliCUF.Value;



DM1.Tb_CliCEMAIL.Value  :=copy(mlinha,325,60);
DM1.Tb_CliCNOMCON.Value :=uppercase(trim(copy(mlinha,255,30)));
DM1.Tb_CliCFONCON.Value :=copy(mlinha,285,20);
DM1.Tb_CliCCODUSR.Value :=codusr;
if ptipo=2 then
   begin
   DM1.Tb_CliCOBS01.Value  :=copy(mlinha,504,60);
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_CliCCODVEN.AsString) then
      DM1.Tb_CliCNOMVEN.Value:=DM1.Query1.fieldbyName('VNOME').AsString;
   end;
DM1.Tb_CliCFAX.Value   :=copy(mlinha,305,20);
DM1.Tb_CliCFONE01.Value:=copy(mlinha,285,20);
DM1.Tb_Cli.Post;
ReadLn(F,mlinha);
if copy(mlinha,1,3)='10B' then
   begin
   if not DM4.Tb_Cli_OutInf.Active THEN
      flcadcli_outinf(1,0,'99999');
   while copy(mlinha,1,3)='10B' do
      begin
      DM4.Tb_Cli_OutInf.Append;
      DM4.Tb_Cli_OutInfOI_DESCRICAO.Value:=uppercase(trim(copy(mlinha,4,200)));
      dm4.Tb_Cli_OutInf.Post;
      if eof(f) then
         mlinha:=''
      else
         ReadLn(F,mlinha);
      end;
   end;

if copy(mlinha,1,3)='10C' then
   begin
   if not DM4.Tb_Cli_RefCom.Active THEN
      flcadcli_refcom(1,0,'99999');
   while copy(mlinha,1,3)='10C' do
      begin
      DM4.Tb_Cli_RefCom.Append;
      DM4.Tb_Cli_RefComRC_FONE.Value:=copy(mlinha,006,020);
      DM4.Tb_Cli_RefComRC_NOME.Value:=uppercase(trim(copy(mlinha,026,060)));
      dm4.Tb_Cli_RefCom.Post;
      if eof(f) then
         mlinha:=''
      else
         ReadLn(F,mlinha);
      end;
   end;

if copy(mlinha,1,3)='10D' then
   begin
   if not DM4.Tb_Cli_RefBan.Active THEN
      flcadcli_refban(1,0,'99999');
   while copy(mlinha,1,3)='10D' do
      begin
      DM4.Tb_Cli_RefBan.Append;
      DM4.Tb_Cli_RefBanRB_FONE.Value :=copy(mlinha,006,020);
      DM4.Tb_Cli_RefBanRB_BANCO.Value:=uppercase(trim(copy(mlinha,026,040)));
      dm4.Tb_Cli_RefBan.Post;
      if eof(f) then
         mlinha:=''
      else
         ReadLn(F,mlinha);
      end;
   end;
if fLerCadcli_ret(DM1.Tb_CliCCODCLI.AsString) then
   begin
   if not mCriouEvento then
      begin
      mNomeEvento:=form_expdm.fcriarArqLog(0,FormatFloat('0000',ValInt(NUMLOT.Text)));
      Assignfile(F_Evento,mPastaEnvio+mNomeEvento);
      Rewrite(F_Evento);
      mCriouEvento:=true;
      end;
   form_expdm.fExportarCliente(8);
   end;

result:=true;
end;

procedure TFrm_ImpDM.FormCreate(Sender: TObject);
var
x: Integer;
begin
if not DirectoryExists('C:\SGE\BKPTXT') then
   CreateDir('C:\SGE\BKPTXT');

if not DirectoryExists('C:\DM\BKPREC') then
   CreateDir('C:\DM\BKPREC');
if Frm_ExpDM=nil then
   Application.CreateForm(Tfrm_ExpDM, form_ExpDM);

CB_TIPO.Items.Clear;
for x:=0 to high(tab_tped)-1 do
   begin
   if (x=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=1) and (DM1.Tb_PargerPDESTTIP1.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=2) and (DM1.Tb_PargerPDESTTIP2.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=3) and (DM1.Tb_PargerPDESTTIP3.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=4) and (DM1.Tb_PargerPDESTTIP4.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=5) and (DM1.Tb_PargerPDESTTIP5.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=6) and (DM1.Tb_PargerPDESTTIP6.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=7) and (DM1.Tb_PargerPDESTTIP7.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=8) and (DM1.Tb_PargerPDESTTIP8.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=9) and (DM1.Tb_PargerPDESTTIP9.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=10) and (DM1.Tb_PargerPDESTTIP10.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=11) and (DM1.Tb_PargerPDESTTIP11.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=12) and (DM1.Tb_PargerPDESTTIP12.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=13) and (DM1.Tb_PargerPDESTTIP13.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=14) and (DM1.Tb_PargerPDESTTIP14.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=15) and (DM1.Tb_PargerPDESTTIP15.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=16) and (DM1.Tb_PargerPDESTTIP16.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=17) and (DM1.Tb_PargerPDESTTIP17.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=18) and (DM1.Tb_PargerPDESTTIP18.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=19) and (DM1.Tb_PargerPDESTTIP19.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=20) and (DM1.Tb_PargerPDESTTIP20.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=21) and (DM1.Tb_PargerPDESTTIP21.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=22) and (DM1.Tb_PargerPDESTTIP22.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=23) and (DM1.Tb_PargerPDESTTIP23.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=24) and (DM1.Tb_PargerPDESTTIP24.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=25) and (DM1.Tb_PargerPDESTTIP25.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=26) and (DM1.Tb_PargerPDESTTIP26.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x])
   else if (x=27) and (DM1.Tb_PargerPDESTTIP27.AsInteger=0) then
      CB_TIPO.Items.Add(tab_tped[x]);

   end;
Application.CreateForm(TFrm_Ped_AutoP, Form_Ped_AutoP);
Form_Ped_AutoP.mAceitaConfirmacao:=false;

Form_Ped_AutoP.CB_TIPO2.ItemIndex:=0;
with CB_TIPO do ItemIndex:=Items.IndexOf(Form_Ped_AutoP.CB_TIPO2.text);

CB_TABPV.ItemIndex:=0;

if flfilpad(codusr,'_IMPDM','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TIPO',[]) then
      CB_TIPO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TABPV',[]) then
      CB_TABPV.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CODPV',[]) then
      CODPV.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PCOLIQ',[]) then
      CB_PCOLIQ.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;

if flfilpad(0,'_IMPDM','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TIPO',[]) then
      CB_TIPO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TABPV',[]) then
      CB_TABPV.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CODPV',[]) then
      CODPV.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PCOLIQ',[]) then
      CB_PCOLIQ.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;

//with CB_TIPO do ItemIndex:=Items.IndexOf(Form_Ped_AutoP.CB_TIPO2.text);


if (trim(codpv.Text)<>'') and (trim(CODPV.Text)<>'') then
   begin
   if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      begin
      NOMPV.Text        :='Padrao(o que vier)';
      CODPV.Text        :='';
      CB_TABPV.ItemIndex:=0;
      end
   else
      NOMPV.Text        :=DM1.Tb_PVPVNOME.AsString;
   end;


ant_codpv:='';
Form_Ped_AutoP.ant_integer:=0;


STGP_REC.RowCount:=2;
STGP_REC.Cells[00,00]:='Chave Pocket';
STGP_REC.Cells[01,00]:='Chave SGE';
STGP_REC.Cells[02,00]:='Cliente';
STGP_REC.Cells[03,00]:='Vendedor';
STGP_REC.Cells[04,00]:='Qtd.Itens';
STGP_REC.Cells[05,00]:='Bloqueios';
STGP_REC.Cells[06,00]:='Descricao dos bloqueios';

mdocOnLine:=False;
if flcadpar01(0,iif(codemp>100, codemp-100, 100+codemp),'1' ) then
   begin
   if (DM4.Tb_Par01PONLINE_NF.Value=1) or
      (DM4.Tb_Par01PONLINE_ORC.Value=1) or
      (DM4.Tb_Par01PONLINE_LSEP.Value=1) then
       mdocOnLine:=true;
   end;

flcadpar01(0,codemp,'1');
flparger(0,0,'1');
if (DM4.Tb_Par01PONLINE_NF.Value=1) or
   (DM4.Tb_Par01PONLINE_ORC.Value=1) or
   (DM4.Tb_Par01PONLINE_LSEP.Value=1) then
   mdocOnLine:=true;
ls_numped:=DM1.Tb_PargerPLS_NUMPED.AsInteger;

if not DirectoryExists('C:\DM') then
   CreateDir('C:\DM');
if not DirectoryExists('C:\DM\ENVIAR') then
   CreateDir('C:\DM\ENVIAR');
if not DirectoryExists('C:\DM\RECEBE') then
   CreateDir('C:\DM\RECEBE');
mPastaRec  :='C:\DM\RECEBE\';
mPastaEnvio:='C:\DM\enviar\';

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_ImpDM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Form_Ped_AutoP.Free;
Form_Ped_AutoP:=nil;
if FileExists('C:\DM\SDMATIVO.TXT') then
   deletefile('C:\DM\SDMATIVO.TXT');


end;


function TFrm_ImpDM.fimpdmProcessa(pTipo: Integer): Boolean;
var
mpula: Boolean;

begin


{

Tabela dos Parametros
10A-Cadastro de Clientes
10B-Observacoes do cadastro
10C-Referencias comerciais
10D-Referencias Bancarias

005-Cabecalho de Pedido
010-Items do Pedido
020-Recebimento de Duplicatas


Solicitações:
105-Arquivo de Produtos
110-Arquivo de Clientes
113-Arquivo de Estados
115-Arquivo de Plano de Vendas
120-Arquivo de Duplicatas
125-Arquivo de Vendedores
130-dados do Cliente
140-Situacao do Pedido

}


mCriouEvento:=False;



CopyFile(pchar(form_expdm.fimpdmtestanome(mpastarec+mArqProc)+'.TXT')
,pchar(form_expdm.fimpdmtestanome('C:\SGE\BKPTXT\'+marqproc)+'.TXT'),false);

CopyFile(pchar(form_expdm.fimpdmtestanome(mpastarec+mArqProc)+'.ID')
,pchar(form_expdm.fimpdmtestanome('C:\SGE\BKPTXT\'+marqproc)+'.ID'),false);

AssignFile(f,mpastarec+mArqProc);


Reset(f);

ReadLn(F,mlinha);
fCriarGrafico(0);
mpula:=true;
//While not eof(f) and (mlinha<>'') do
While (mlinha<>'') do
   begin
   if copy(mlinha,1,3)='005' then
      begin
      mqtdped:=STGP_REC.RowCount;
      STGP_REC.RowCount:=mqtdped+1;
      STGP_REC.Rows[mqtdped].Clear;
      STGP_REC.Cells[00,mqtdped-1]:=copy(mlinha,4,10); // chave do pedido no pocket
      if mqtdped>5 then
         STGP_REC.TopRow:=mqtdped-5;

      verteclado(0);
      if not fimpdmfatped(0) then
         break
      else
         mpula:=false;

//         mpula:=false
//      else
//         begin
//         mchavepoc:=copy(mlinha,4,10); // chave do pedido;
//         Readln(f, mlinha);
//         fCriarGrafico(0);
//         While not (eof(f)) and (copy(mlinha,1,3)='010') and (copy(mlinha,4,10)=mchavepoc) do
//         While not (eof(f)) and (copy(mlinha,1,3)='010') and (copy(mlinha,4,10)=mchavepoc) do
//            begin
//            Readln(f,mlinha);
//            fCriarGrafico(0);
//            end;
//         mpula:=false;
//         end;
//         break;
      end
   else if copy(mlinha,1,3)='022' then
      begin
      if not fimpdmrecbto(22) then
         break;
      end
   else if copy(mlinha,1,3)='024' then
      begin
      if not fimpdmrecbto(24) then
         break;
      end
   else if copy(mlinha,1,3)='10A' then
      begin
      if not fimpdmCadCli(0) then
         break;
      mpula:=false;
      end
   else if ValInt(copy(mlinha,1,1))=1 then
      begin
      fimpdmSolArquivo(0);
      end
   else
      begin
      form_expdm.fimpdmCriaEvento(0,'Arquivo danificado, não foi possível processar!',trim(NUMLOT.Text));
      form_expdm.fimpdmCriaEvento(0,'Conteudo da Linha: '+mlinha,trim(NUMLOT.Text));

//      fmensagem('Arquivo danificado, não foi possível processar!',0,['0'],0);
      break;
      end;
   if mpula then
      begin
      if eof(f) then
         mlinha:=''
      else
         ReadLn(F,mlinha);
      fCriarGrafico(0);
      end;
   mpula:=true;
   end;
if mReceb then
   begin
   form_expdm.fimpdmCriaEvento(0,'Recebido o Recebimento do Lote: '+NUMLOT.Text,trim(NUMLOT.Text));
   end;
closefile(f);

if mCriouEvento then
   result:=false
else
   result := true;

{
Arquivo de Cabeçalho/Identificação
Registro   Tamanho   Posicao Inicial  Posição Final          Conteúdo/Valor
  01               02                 01                      02                    00-Identificação do Vendedor
  02               02                 03                      04                    00-Identificação do Vendedor
  03               05                 05                      09                    Codigo do Vendedor
  04               40                 10                      49                     Nome do Vendedor
  05               10                 50                      59                     Lote
  06               10                 60                      69                     Quantidade de Registros
}


end;



procedure TFrm_ImpDM.sb_PastaClick(Sender: TObject);
begin
testeform := TFrm_ImpDM(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   NOMARQ.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_ImpDM.CB_BUSCAClick(Sender: TObject);
begin
if CB_BUSCA.Checked then
   begin
   bbIniciar.Enabled:=true;
   GroupBox1.Caption:='Pasta para Buscar os Arquivos';
   sb_Pasta.Visible :=true;
   NOMARQ.Text :='C:\DM\recebe';

   if not DirectoryExists('C:\DM') then
      begin
      try
         CreateDir('C:\DM');
      except
         NOMARQ.Text:='C:\SGE'
         end;
      end;
   if not DirectoryExists('C:\DM\recebe') then
      begin
      try
         CreateDir('C:\DM\recebe');
      except
         NOMARQ.Text:='C:\SGE'
         end;
      end;
   verteclado(0);
   end
else
   begin
   bbIniciar.Enabled:=false;
   GroupBox1.Caption:='Nome do Arquivo a ser lido';
   sb_Pasta.Visible :=false;
   NOMARQ.Text      :='';
   mBuscando:=False;
   verteclado(0);
   end;

end;

procedure TFrm_ImpDM.bbIniciarClick(Sender: TObject);
begin

CODPV.Text:=fdeixanum2(CODPV.Text);
if (trim(codpv.Text)='') or (Trim(CB_TABPV.Text)='') then
   begin
   CODPV.Text:='';
   CB_TABPV.Text:='';
   end
else
   begin
   if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      begin
      fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
      CB_TABPV.SetFocus;
      exit;
      end;
   end;
if codusr<>1111 then
   begin
if CB_TIPO.Text<>tab_tped[0] then
   begin
   fMensagem('Tipo de Pedido Bloqueado temporariamente!',0,['0'],0);
   exit;
   end;
   end;

if mBuscando then
   begin
   mBuscando:=False;
   bbIniciar.Caption:='Iniciar as Buscas';
   sb_Pasta.Visible :=true;
   Timer1.Enabled   :=false;
   if FileExists('C:\DM\SDMATIVO.TXT') then
      deletefile('C:\DM\SDMATIVO.TXT');
   end
else
   begin
   if FileExists('C:\DM\SDMATIVO.TXT') then
      deletefile('C:\DM\SDMATIVO.TXT');
   assignfile(f,'C:\DM\SDMATIVO.TXT');
   rewrite(f);
   writeln(f,'ATIVADO EM '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time));
   closefile(f);
   STGP_REC.RowCount:=2;
   STGP_REC.Rows[1].Clear;
   sb_Pasta.Visible:=false;
   mBuscando:=true;
   bbIniciar.Caption:='Finalizar as Buscas';
   FileListBox1.Directory:=NOMARQ.Text;
   FileListBox1.Refresh;
   Timer1.Enabled:=true;
   mPastaRec  :='C:\DM\RECEBE\';

   end;

end;

procedure TFrm_ImpDM.Timer1Timer(Sender: TObject);
var
mNomeArq: String;
x: Integer;
begin
if mBuscando then
   begin
   if not FileExists('C:\DM\SDMATIVO.TXT') then
      begin
      assignfile(f,'C:\DM\SDMATIVO.TXT');
      rewrite(f);
      writeln(f,'ATIVADO EM '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time));
      closefile(f);
      end;

   FileListBox1.Update;
   if FileListBox1.Items.Count>0 then
      begin
      mBuscando:=false;
      for x:=0 to FileListBox1.Items.Count-1 do
         begin
         mNomeArq:=FileListBox1.Items[0];
         if not FileExists(mPastaRec+mNomeArq) then
            begin
            Continue;
            end;
         mArqProc:=form_expdm.fimpdmtestanome(mNomeArq)+'.TXT';
         if not FileExists(mPastaRec+mArqProc) then
            begin
            Continue;
            end;
         mglid:=0;
         if not fimpdmtestaarq(mPastaRec+mNomeArq) then
            Continue;

         mgtot:=mqtdreg;
         if not gb_grafico.Visible then
            begin
            gb_grafico.Visible:=true;
            end;
         gb_grafico.Caption:='Processando o arquivo: '+mArqProc;
         gb_grafico.Update;
         AvisoSonoro(14);
         fimpdmProcessa(0);
         if mCriouEvento then
            begin
            CloseFile(F_Evento);
            RenameFile(mPastaEnvio+form_expdm.fimpdmtestanome(mNomeEvento)+'.$$$',
            mPastaEnvio+form_expdm.fimpdmtestanome(mNomeEvento)+'.RET');
            end;


         mArqProc:=form_expdm.fimpdmtestanome(mNomeArq)+'.ID';
         CopyFile(pchar(mpastarec+mArqProc),pchar('C:\DM\BKPREC\'+marqproc),false);
         CopyFile(pchar(mpastarec+mArqProc),pchar('C:\SGE\BKPTXT\'+marqproc),false);
         DeleteFile(mpastarec+mArqProc);
         mArqProc:=form_expdm.fimpdmtestanome(mNomeArq)+'.TXT';
         CopyFile(pchar(mpastarec+mArqProc),pchar('C:\DM\BKPREC\'+marqproc),false);
         CopyFile(pchar(mpastarec+mArqProc),pchar('C:\SGE\BKPTXT\'+marqproc),false);
         DeleteFile(mpastarec+mArqProc);
         end;
      mBuscando:=true;
      gb_grafico.Visible:=false;
      end;
   end;
end;

function TFrm_ImpDM.fCriarGrafico(pTipo: Integer): Boolean;
begin
mglid:=mglid+1;
Gauge1.Progress:=mglid*100 div mgtot;
result:=true;
end;

function TFrm_ImpDM.FImpDMSolArquivo(ptipo: Integer): Boolean;
var
mArqSol: Integer;
pSenhaCli: String;
begin

mCadPro  :=False;
mCadcli  :=False;
mCadDar  :=False;
mCadPV   :=False;
mDadCli  :=false;
mDadPed  :=False;
mChavePedOri:=0;
mArqSol:=valint(copy(mlinha,1,3));
mCodReg:=0;

IF mArqSol<>125 THEN
   begin
   if mArqSol=105 then
      mCadPro:=true
   else if mArqSol=110 then
      mCadcli:=true
   else if mArqSol=115 then
      mCadpv :=true
   else if mArqSol=120 then
      mCaddar :=true
   else if mArqSol=130 then
      begin
      mDadCli :=true;
      pSenhaCli:=trim(copy(mlinha,19,20));
      end
   else if mArqSol=140 then
      begin
      mDadPed  :=true;
      mChavePedOri:=fsonumero(copy(mlinha,7,10));
      end;


   While not (eof(f)) and (copy(mlinha,1,1)='1') do
      begin
      Readln(f, mlinha);
      mArqSol:=valint(copy(mlinha,1,3));
      if mArqSol=105 then
         mCadPro:=true
      else if mArqSol=110 then
         mCadcli:=true
      else if mArqSol=115 then
         mCadpv :=true
      else if mArqSol=120 then
         mCaddar :=true
      else if mArqSol=130 then
         begin
         mDadCli :=true;
         pSenhaCli:=trim(copy(mlinha,19,20));
         end
      else if mArqSol=140 then
         begin
         mDadPed  :=true;
         mChavePedOri:=fsonumero(copy(mlinha,7,10));
         end;
      end;
   if TIPO.Text='SP' then
      begin
      form_ExpDM.CODSUP.Text:=Frm_ImpDM.CODVEN.Text;
      form_ExpDM.NOMSUP.Text:=Frm_ImpDM.NOMVEN.Text;
      form_ExpDM.CODVEN.Text:='';
      form_ExpDM.NOMVEN.Text:='';
      form_ExpDM.CODCLI.Text:='';
      end
   else if TIPO.Text='VD' then
      begin
      form_ExpDM.CODVEN.Text:=fdeixanum(Frm_ImpDM.CODVEN.Text);
      form_ExpDM.NOMVEN.Text:=Frm_ImpDM.NOMVEN.Text;
      form_ExpDM.CODSUP.Text:='';
      form_ExpDM.NOMSUP.Text:='';
      form_ExpDM.CODCLI.Text:='';
      if flqr1('VNOME,VCODREG','V','CADVEN','N','VCODVEN',Frm_ImpDM.CODVEN.Text) then
         mCodReg:=DM1.query1.FieldbyName('VCODREG').AsFloat
      else
         mCodReg:=0;
      end
   else if TIPO.Text='CL' then
      begin
      form_ExpDM.CODVEN.Text:=Frm_ImpDM.CODVEN.Text;
      form_ExpDM.NOMVEN.Text:=Frm_ImpDM.NOMVEN.Text;
      form_ExpDM.CODcli.Text:=Frm_ImpDM.CODVEN.Text;
      form_ExpDM.CODSUP.Text:='';
      form_ExpDM.NOMSUP.Text:='';
      end;
    if not  form_expdm.fExpDMExportar(1,ValFloat(form_ExpDM.CODVEN.Text),ValFloat(form_ExpDM.CODSUP.Text),
                     ValFloat(form_ExpDM.CODCLI.Text),
                     mChavePedOri,mCodReg,
                     '/  /',
                     '/  /',
                     pSenhaCli, // senha
                     mCadPro,
                     mCadcli,
                     mCadDar,
                     mCadPV,false,mDadCli,
                     mDadPed, valint(form_ExpDM.duprec.Text),ValInt(ORIGEM_INFO.Text)) then
       begin
       fmensagem('Erro ao Gerar o Arquivo de Exportacao!',0,['0'],0);
       end;
    end;

end;


procedure TFrm_ImpDM.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_IMPDM','');
fGravaPadroes(codusr,'CB_TIPO'        ,'itemindex'  ,'_IMPDM',IntToStr(CB_TIPO.ItemIndex));
fGravaPadroes(codusr,'CB_TABPV'       ,'itemindex'  ,'_IMPDM',IntToStr(CB_TABPV.ItemIndex));
fGravaPadroes(codusr,'CODPV'          ,'text'       ,'_IMPDM',CODPV.Text);
fGravaPadroes(codusr,'CB_PCOLIQ'      ,'checked'    ,'_IMPDM',iif(CB_PCOLIQ.Checked,'true','false'));

fDeletaPadroes(0,'_IMPDM','');
fGravaPadroes(0,'CB_TIPO'        ,'itemindex'  ,'_IMPDM',IntToStr(CB_TIPO.ItemIndex));
fGravaPadroes(0,'CB_TABPV'       ,'itemindex'  ,'_IMPDM',IntToStr(CB_TABPV.ItemIndex));
fGravaPadroes(0,'CODPV'          ,'text'       ,'_IMPDM',CODPV.Text);
fGravaPadroes(0,'CB_PCOLIQ'      ,'checked'    ,'_IMPDM',iif(CB_PCOLIQ.Checked,'true','false'));

end;

procedure TFrm_ImpDM.CB_TIPOExit(Sender: TObject);
begin
if CB_TIPO.ItemIndex<0 then
   with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO.Text);

end;

procedure TFrm_ImpDM.STGP_RECDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if arow>0 then
   begin
   if STGP_REC.Cells[05,arow]<>'' then
      STGP_REC.Canvas.Brush.Color:=clRed;
   STGP_REC.Canvas.TextRect(Rect, Rect.Left, rect.Top,STGP_REC.Cells[acol,arow]);
   end;


if ((aCol=4) ) then
   begin
//Pega o texto da célula
  Texto := STGP_REC.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STGP_REC.Canvas.TextWidth(Texto);
  AlturaTexto := STGP_REC.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STGP_REC.Canvas.TextRect(Rect, X, Y, Texto);
  end;

end;

procedure TFrm_ImpDM.STGP_RECDblClick(Sender: TObject);
begin
if valfloat(STGP_REC.Cells[01,STGP_REC.Row])<=0 then
   exit;

if frm_visnf=nil then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADP01V','P1VCODEMP',Form_SelEmp.CLB_EMPRESAS);

   Application.CreateForm(TFrm_VisNF, Form_VisNF);
   Form_VisNF.Qr_Dup.Close;
   Form_VisNF.Qr_Dup.SQL.Clear;
   Form_VisNF.Qr_Dup.SQL.Add('Select P1VDATAV AS DTVENC '
                        +'      ,P1VDTDESCF AS DTDESCF '
                        +'   ,sum(P1VVALOR) AS VALOR '
                        +'   ,sum(P1VDESCF) AS DESCF '
                        +' from CADP01V where '+iif(la_Empresas='','',la_Empresas+' and ')
                        +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                        +' P1VLOTSEQ=0'+IntToStr(ls_numped)
                        +' and P1VCHAVE=0'+trim(STGP_REC.Cells[01,STGP_REC.Row])
                        +' group by P1VDATAV,P1VDTDESCF ');
//   Form_VisNF.Qr_Dup.SQL.SaveToFile('C:\SQL01.TXT');
   Form_VisNF.Qr_Dup.Open;
   la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
   Form_VisNF.Qr_TotAliq.Close;
   Form_VisNF.Qr_TotAliq.SQL.Clear;
   Form_VisNF.Qr_TotAliq.SQL.Add('Select P2ALIQ AS PF2ALIQ,sum((P2PRECO*P2QTD)-P2TOTDES) as TOTLIQ '
                             +'       ,sum(P2BASEN+P2BCINR) AS BCICMS '
                             +'        ,sum(P2ICMSN+P2ICMSNR) AS ICMS '
                             +'        ,sum(P2BASER)           AS BASER '
                             +'        ,sum(P2ICMSR)           AS ICMSR '
                             +'        ,sum(P2TOTDES)          AS DESCONTO '
                             +'        ,sum(P2ISENTAS)         AS TOTISEN '
                             +'        ,sum(P2VALIPI)             AS VLRIPI '
                             +' from CADP02 where '+iif(la_Empresas='','',la_Empresas+' and ')
                        +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P2LOTSEQ=0'+IntToStr(ls_numped)
                  +' and P2CHAVE=0'+trim(STGP_REC.Cells[01,STGP_REC.Row])
                  +' group by P2ALIQ ');
//   Form_VisNF.Qr_TotAliq.SQL.SaveToFile('C:\SQL02.TXT');
   Form_VisNF.Qr_TotAliq.Open;

   Form_VisNF.Qr_TotSitTri.Close;
   Form_VisNF.Qr_TotSitTri.SQL.Clear;
   Form_VisNF.Qr_TotSitTri.SQL.Add('Select P2SIT AS PF2SIT,sum((P2PRECO*P2QTD)-P2TOTDES) as TOTLIQ '
                             +'       ,sum(P2BASEN+P2BCINR) AS BCICMS '
                             +'        ,sum(P2ICMSN+P2ICMSNR) AS ICMS '
                             +'        ,sum(P2BASER)           AS BASER '
                             +'        ,sum(P2ICMSR)           AS ICMSR '
                             +'        ,sum(P2TOTDES)          AS DESCONTO '
                             +'        ,sum(P2ISENTAS)         AS TOTISEN '
                             +'        ,sum(P2VALIPI)             AS VLRIPI '
                             +' from CADP02 where '+iif(la_Empresas='','',la_Empresas+' and ')
                        +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                        +' P2LOTSEQ=0'+IntToStr(ls_numped)
                        +' and P2CHAVE=0'+trim(STGP_REC.Cells[01,STGP_REC.Row])
                  +' group by P2SIT ');
//   Form_VisNF.Qr_TotSitTri.SQL.SaveToFile('C:\SQL03.TXT');
   Form_VisNF.Qr_TotSitTri.Open;


   Form_VisNF.Qr_TotLista.Close;
   Form_VisNF.Qr_TotLista.SQL.Clear;
   Form_VisNF.Qr_TotLista.SQL.Add('Select P2LISTA AS PF2LISTA,sum((P2PRECO*P2QTD)-P2TOTDES) as TOTLIQ '
                             +'       ,sum(P2BASEN+P2BCINR) AS BCICMS '
                             +'        ,sum(P2ICMSN+P2ICMSNR) AS ICMS '
                             +'        ,sum(P2BASER)           AS BASER '
                             +'        ,sum(P2ICMSR)           AS ICMSR '
                             +'        ,sum(P2TOTDES)          AS DESCONTO '
                             +'        ,sum(P2ISENTAS)         AS TOTISEN '
                             +'        ,sum(P2VALIPI)             AS VLRIPI '
                             +' from CADP02 where '+iif(la_Empresas='','',la_Empresas+' and ')
                        +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                        +' P2LOTSEQ=0'+IntToStr(ls_numped)
                        +' and P2CHAVE=0'+trim(STGP_REC.Cells[01,STGP_REC.Row])
                        +' group by P2LISTA ');
//   Form_VisNF.Qr_TotLista.SQL.SaveToFile('C:\SQL04.TXT');

   Form_VisNF.Qr_TotLista.Open;

   Form_VisNF.Qr_TotCFOP.Close;
   Form_VisNF.Qr_TotCFOP.SQL.Clear;
   Form_VisNF.Qr_TotCFOP.SQL.Add('Select P2CFO AS PF2CFO,sum((P2PRECO*P2QTD)-P2TOTDES) as TOTLIQ '
                            +'       ,sum(P2BASEN+P2BCINR) AS BCICMS '
                            +'       ,sum(P2ICMSN+P2ICMSNR) AS ICMS '
                            +'       ,sum(P2BASER)           AS BASER '
                            +'       ,sum(P2ICMSR)           AS ICMSR '
                            +'       ,sum(P2TOTDES)          AS DESCONTO '
                            +'       ,sum(P2ISENTAS)         AS TOTISEN '
                            +'       ,sum(P2VALIPI)             AS VLRIPI '
                             +' from CADP02 where '+iif(la_Empresas='','',la_Empresas+' and ')
                        +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                        +' P2LOTSEQ=0'+IntToStr(ls_numped)
                        +' and P2CHAVE=0'+trim(STGP_REC.Cells[01,STGP_REC.Row])
                        +' group by P2CFO ');
//   Form_VisNF.Qr_TotCFOP.SQL.SaveToFile('C:\SQL05.TXT');
   Form_VisNF.Qr_TotCFOP.Open;
   Form_VisNF.natop.Caption:='';
   mcinst:='';
   While not Form_VisNF.Qr_TotCFOP.Eof do
      begin
      Form_VisNF.natop.Caption:=Form_VisNF.natop.Caption+mcinst+FormatFloat('0000',Form_VisNF.Qr_TotCFOPPF2CFO.Value);
      mcinst:='/';
      Form_VisNF.Qr_TotCFOP.Next;
      end;

   Form_VisNF.Qr_TotCFOP.First;

   Form_VisNF.Qr_nf02.Close;
   Form_VisNF.Qr_nf02.SQL.Clear;
   Form_VisNF.Qr_nf02.SQL.add('Select  '
                     +'        max(P2CFO)     AS CFOP '
                     +'       ,sum(P2QTD)    AS QUANTIDADE '
                     +'       ,max(P2ITEM)    AS ITEM '
                     +'       ,max(P2PRECO)      AS VLPRODUTO '
                     +'       ,max(P2ALIQ)    AS ALIQ '
                     +'       ,max(P2LOTE)    AS LOTE '
                     +'       ,max(P2DTVCTO)  AS DATAV '
                     +'       ,max(P2DESC1)  AS PDESC01 '
                     +'       ,max(P2DESC2)  AS PDESC02 '
                     +'       ,max(P2DESC3)  AS PDESC03 '
                     +'       ,max(P2SIT)     AS SITTRI '
                     +'       ,max(P2ALIQ)    AS ALIQN '
                     +'       ,max(P2ALIQNR)  AS ALIQNR '
                     +'       ,sum(P2BASEN)   AS BASEN '
                     +'       ,sum(P2ICMSN)   AS ICMSN '
                     +'       ,sum(P2BASER)   AS BASER '
                     +'       ,sum(P2ICMSR)   AS ICMSR '
                     +'       ,max(P2TABELA)  AS TABICM '
                     +'       ,max(P2LISTA)   AS LISTA '
                     +'       ,sum(P2TOTDES)  AS TOTDES '
                     +'       ,sum(P2BCINR)  AS BASENR '
                     +'       ,sum(P2ICMSNR)  AS ICMSNR '
                     +'       ,sum(P2ISENTAS) AS ISENTAS '
                     +'       ,max(P2ALIPI)   AS ALIPI'
                     +'       ,sum(P2VALIPI)  AS VALIPI '
                     +'       ,max(P2PCOMAX)  AS PMC '
                     +'       ,P2CODPRO   AS CODPROD '
                     +'       ,PDNOME     AS DESCRICAO '
                     +'       ,PDUND      AS UNID '
                     +' from CADP02,CADPRO where '+iif(la_Empresas='','',la_Empresas+' and ')
                        +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +' P2LOTSEQ=0'+IntToStr(ls_numped)
                     +' and P2CHAVE=0'+trim(STGP_REC.Cells[01,STGP_REC.Row])
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                     +' and PDCODPRO=P2CODPRO '
                     +' group by P2CODPRO '
                     +'       ,PDNOME '
                     +'       ,PDUND');

//   Form_VisNF.Qr_nf02.SQL.SaveToFile('C:\SQL06.TXT');
   Form_VisNF.Qr_nf02.Open;

   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

   Form_VisNF.Qr_nf01.Close;
   Form_VisNF.Qr_nf01.SQL.Clear;
   Form_VisNF.Qr_nf01.SQL.add('Select (P1CODCLI-P1CODCLI)+1 AS FORCLI '
                     +',P1CODCLI    AS CODIGO '
                     +',P1DATAP     AS DATAPED '
                     +',max(P1DESC01) AS PDESC01 '
                     +',max(P1DESC02)  AS PDESC02 '
                     +',(P1CODCLI-P1CODCLI) AS PDESC03 '
                     +',SUM(P1VLRDES) AS DESCVLR '
                     +',SUM(P1TOTDES)    AS TOTDES '
                     +',SUM(P1TOTALB)    AS TOTMER '
                     +',SUM(P1TOTALL)    AS TOTLIQ '
                     +',max(P1STATUS)    AS STATUS '
                     +',SUM(P1TOTPOS)    AS TOTPOS '
                     +',SUM(P1TOTNEG)    AS TOTNEG '
                     +',SUM(P1TOTINA)    AS TOTINA '
                     +',sum(P1VALFRE)    AS VALFRE '
                     +',sum(P1VALSEG)    AS VALSEG '
                     +',sum(P1BASEN)     AS BASEN '
                     +',sum(P1BASER)     AS BASER '
                     +',sum(P1ICMSN)     AS ICMSN '
                     +',sum(P1ICMSR)     AS ICMSR '
                     +',sum(P1BASENRN+P1BASENRP+P1BASENRI)  AS BASENR '
                     +',sum(P1ICMSNRN+P1ICMSNRP+P1ICMSNRI)  AS ICMSNR '
                     +',sum(P1TOTISE)    AS ISENTAS '
                     +',sum(P1TOTOUT)    AS TOTOUT '
                     +',sum(P1IPIINA+P1IPINEG+P1IPIPOS)  AS TOTIPI '
                     +',max(P1DATANF)    AS DATANF '
                     +',max(P1NUMNF)     AS NUMNF '
                     +',max(P1SERIE)     AS SERIE '
                     +',max(P1SUBSER)    AS SUBSER '
                     +',max(P1MODELO)    AS MODELO '
                     +',max(P1BANCO)     AS CODBCO '
                     +',max(P1CODTRA)    AS CODTRA '
                     +',(P1CODCLI-P1CODCLI)  AS PERCIPIFRE '
                     +',(P1CODCLI-P1CODCLI)  AS IPIFRETE '
                     +' from CADP01 where '+iif(la_Empresas='','',la_Empresas+' and ')
                        +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +' P1LOTSEQ=0'+IntToStr(ls_numped)
                     +' and P1CHAVE=0'+trim(STGP_REC.Cells[01,STGP_REC.Row])
                     +' group by P1CODCLI,P1DATAP ');
//   Form_VisNF.Qr_nf01.SQL.SaveToFile('C:\SQL07.TXT');
   Form_VisNF.Qr_nf01.Open;
   Form_VisNF.Cb_Saida.Checked  :=true;
   Form_VisNF.Cb_Entrada.Checked:=false;
   Form_VisNF.ShowModal;
   Form_VisNF.Free;
   Form_VisNF:=nil;
   end;
end;

procedure TFrm_ImpDM.bbLimparClick(Sender: TObject);
var
mbuscando_Ant: Boolean;
x: Integer;
begin
mbuscando_Ant:=mBuscando;
mBuscando:=false;
for x:=1 to STGP_REC.RowCount do
   begin
   STGP_REC.Rows[x].clear;
   end;
STGP_REC.RowCount:=2;
mBuscando:=mbuscando_Ant;
end;

procedure TFrm_ImpDM.CB_TABPVExit(Sender: TObject);
begin
if CB_TABPV.ItemIndex<0 then
   with CB_TABPV do ItemIndex:=items.IndexOf(CB_TABPV.Text);
CB_TABPV.text:=CB_TABPV.Items.Strings[CB_TABPV.ItemIndex];
if trim(CB_TABPV.Text)='' then
   exit;

if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'CV') and
   (CB_TABPV.Text<>'PO') then
   begin
   verteclado(0);
   fMensagem('Tabelas Válidas "AV","AP","PP","PO","CV"',0,['0'],0);
   exit;
   end;
if not CODPV.Focused then
   begin
   if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      begin
      verteclado(0);
      fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
      CODPV.SetFocus;
      CB_TABPV.SetFocus;
      end
   else
      NOMPV.Text:=DM1.Tb_PVPVNOME.AsString;   
  end;


end;

procedure TFrm_ImpDM.CODPVExit(Sender: TObject);
begin
CODPV.Text:=fdeixanum2(CODPV.Text);

if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP')  then
   begin
   verteclado(0);
   fMensagem('Tabelas Válidas "AV","AP","PP","PO","CV"',0,['0'],0);
   exit;
   end;
if trim(codpv.Text)='' then
   begin
   CB_TABPV.Text:='';
   NOMPV.Text   :='Padrao(o que vier)';
   exit;
   end;

if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
   begin
   fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
   CODPV.SetFocus;
   CB_TABPV.SetFocus;
   end
else
   NOMPV.Text:=DM1.Tb_PVPVNOME.AsString;

end;



procedure TFrm_ImpDM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

form_ExpDM.Free;
form_ExpDM:=nil;

end;


function fLerCadcli_ret(pCodCli: String): Boolean;
begin

form_ExpDM.Qr_Cli.Close;
form_ExpDM.Qr_Cli.SQL.clear;
form_ExpDM.Qr_Cli.SQL.add('Select CTIPOC,CCODCLI,CCNPJ,CCPF,CRG,CIE,CRAZAO,CDENOM, '
              +'           CLOG,CBAIRRO,CCIDADE,CUF,CNOMCON,CFONCON, '
              +'            CFONE01 AS CFONERES,CFONE02 AS CCELULAR,CEMAIL,CCEP, '
              +'            CTABPV,CCODPV,CDESC, CPCOPRAT,CICMSR,CREPAS,CFRETEPC,CIPI, '
              +'    CDESC02,CDESC03,CDESCFIN,CALIQDEB,CCODRED,CCODVEN,CLCRED    '
              +', CSITCLI,CDTVALV,CDTANVISA,CDTCAD,COBS01,CDTUCPR,CCODBCO01 '
              +', CCODBCO02,CNIVEL '
              +',CCODV02,CCODV03,CCODV04,CPEDELE_SENHA,CROTA '

              +'            from CADCLI where CSTATUS<9'+iif(form_ExpDM.CB_CADCLI_BLOQ.Checked,'99 ',' '));
if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
   begin
   form_ExpDM.Qr_Cli.SQL.add(' and CCODEMP=0'+IntToStr(codemp));
   end;
if pCodCli<>'' then
   begin
   form_ExpDM.Qr_Cli.SQL.add(' and  CCODCLI=0'+pCodCli);
   end;

form_ExpDM.Qr_Cli.Open;
mtotc:=form_ExpDM.Qr_Cli.RecordCount;
if mtotc<1 then
   mtotc:=1;
mtotg:=mtotc;
result:=true;

end;

procedure TFrm_ImpDM.FormKeyDown(Sender: TObject; var Key: Word;
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
