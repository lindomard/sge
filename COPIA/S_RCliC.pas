unit S_RCliC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, S_DM1, db, dbtables, func, S_Cli, S_Ven,
  S_Impres,lerarq,S_Con, jpeg, CheckLst,S_Loc,S_UF, ComCtrls, Mask,
  ToolEdit;

type
  TFrm_RCliC = class(TForm)
    Panel1: TPanel;
    Qr_Cli: TQuery;
    tipo_pessoa: TCheckListBox;
    Label14: TLabel;
    Label4: TLabel;
    situacao_cli: TCheckListBox;
    Label5: TLabel;
    cb_separado: TComboBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_CliCRAZAO: TStringField;
    Qr_CliCDENOM: TStringField;
    Qr_CliCLOG: TStringField;
    Qr_CliCBAIRRO: TStringField;
    Qr_CliCCIDADE: TStringField;
    Qr_CliCUF: TStringField;
    Qr_CliCCEP: TStringField;
    Qr_CliCCNPJ: TFloatField;
    Qr_CliCIE: TStringField;
    Qr_CliCRG: TStringField;
    Qr_CliCCPF: TFloatField;
    Qr_CliCFONE01: TStringField;
    Qr_CliCFONE02: TStringField;
    Qr_CliCFONE03: TStringField;
    Qr_CliCCODVEN: TFloatField;
    Qr_CliCOBS01: TStringField;
    Qr_CliCOBS02: TStringField;
    Qr_CliCOBS03: TStringField;
    Qr_CliCOBS04: TStringField;
    Qr_CliCOBS05: TStringField;
    Qr_CliNOMGRU: TStringField;
    Qr_CliCCODCLI: TFloatField;
    RG_TIPOREL: TRadioGroup;
    CB_AVANCPAG: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    lbl_codven: TLabel;
    lbl_codcli: TLabel;
    Label1: TLabel;
    lbl_loc: TLabel;
    Label10: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    lbx_codloc: TListBox;
    CODLOC: TEdit;
    OMITIR_LOC: TCheckBox;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    CODCON: TEdit;
    OMITIR_CON: TCheckBox;
    lbx_codcon: TListBox;
    StaticText3: TStaticText;
    PALAVRA: TEdit;
    StaticText1: TStaticText;
    CODRAM: TEdit;
    OMITIR_RAM: TCheckBox;
    lbx_codram: TListBox;
    lbl_codred: TStaticText;
    CODRED: TEdit;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    Label3: TLabel;
    status: TCheckListBox;
    lbl_codbar: TStaticText;
    CODBAR: TEdit;
    lbx_codbar: TListBox;
    OMITIR_BAR: TCheckBox;
    StaticText4: TStaticText;
    EDT_CODREG: TEdit;
    lbx_CODREG: TListBox;
    OMITIR_CODREG: TCheckBox;
    StaticText6: TStaticText;
    edt_codassessor: TEdit;
    lbx_assessor: TListBox;
    OMITIR_ACESS: TCheckBox;
    Qr_Cliender_compl: TStringField;
    Qr_CliCNUM: TStringField;
    Qr_CliCCOMPL: TStringField;
    Qr_CliCFONCON: TStringField;
    Qr_CliCNOMCON: TStringField;
    Qr_CliCEMAIL: TStringField;
    Qr_CliCFAX: TStringField;
    rg_email: TRadioGroup;
    Label2: TLabel;
    cb_ordem: TComboBox;
    RG_IE: TRadioGroup;
    tsFiltrosData: TTabSheet;
    Label6: TLabel;
    edt_datinc_ini: TDateEdit;
    edt_datinc_fin: TDateEdit;
    Label7: TLabel;
    Qr_CliCROTA: TFloatField;
    Qr_CliCNOMROTA: TStringField;
    cb_omitir: TCheckBox;
    CB_HOME_PAGE: TCheckBox;
    Qr_CliCHOME: TStringField;
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_VENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_CLIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_CONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tipo_pessoaClick(Sender: TObject);
    procedure situacao_cliClick(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure statusClick(Sender: TObject);
    procedure CODREDExit(Sender: TObject);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODBARExit(Sender: TObject);
    procedure CODBARKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure EDT_CODREGExit(Sender: TObject);
    procedure EDT_CODREGKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_CODREGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codassessorExit(Sender: TObject);
    procedure edt_codassessorKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_assessorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Qr_CliCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_rclic: tfrm_Impres;
    function fRcliCCab(mtipo: Integer): Boolean;
    function fRCliCabGru(pTipo: Integer): Boolean;
    function fRCliCabRel(pTipo: Integer): Boolean;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fTestaCab(pTipo: Integer): Boolean;
    function fImprimirCriterito(pQtdCol: Integer): boolean;
  end;

var
  Frm_RCliC: TFrm_RCliC;
  codigo_ven     : string;
  codigo_cli     : string;
  codigo_con     : string;
  mCampoGrupo    : String;
  mCampoOrdem    : String;
  mGrupoAnt      : String;
  
implementation

uses S_RCli, S_Red, S_Bai, S_GirLoc_Cons, S_DM2, S_Assessor, S_DM6;

{$R *.dfm}

procedure TFrm_RCliC.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_medtpro',key);
   if valfloat(CODVEN.Text)<>0 then
      lbx_codven.Items.Add(FormatFloat('0000000',DM1.Tb_VenVCODVEN.AsFloat)
                                    +' - '+DM1.Tb_VenVNOME.Value);
   codven.text := '';
   key:=#0;
   end;
end;

procedure TFrm_RCliC.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RCliC',key);
   if trim(CODCLI.Text)<>'' then
      CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RCliC.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
   BEGIN
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codven.text := '';
      if CODVEN.Enabled then
         codven.SetFocus;
   END else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      codven.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      EXIT;
      end;
   end;
end;

procedure TFrm_RCliC.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
   BEGIN
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcli.text := '';
      codcli.SetFocus;
   END else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      codcli.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

function Tfrm_RCliC.fRcliCCab(mtipo: Integer): Boolean;
begin
if mtipo<>1 then
  begin
  if (form_impres_rclic.mlin>63) then
    begin
    form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
    form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('-','-',136),mreduz);
    form_impres_rclic.mlin:=0;
    form_impres_rclic.RDprint1.Novapagina;
    fRCliCabRel(Frm_RCliC.RG_TIPOREL.ItemIndex);
    form_impres_rclic.mlin:=3;
    end
  else if form_impres_rclic.mlin<>1 then
    begin
    form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
    result:=True;
    exit;
    end;
  end;

if Frm_RCliC.cb_separado.ItemIndex<>5 then
  begin
  fRCliCabGru(mtipo);
  end;

Result:=True;
end;

function TFrm_RCliC.fRCliCabGru(pTipo: Integer): Boolean;
begin
form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Frm_RCliC.Qr_CliNOMGRU.Value,mneg);
if RG_TIPOREL.ItemIndex=0 then
  begin
  form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
  form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,'Codigo Razao Social                             Endereco                                 Bairro               Cidade/UF                     Telefone',m20ccp);
  end;
result:=true;
end;

procedure TFrm_RCliC.bbImprimirClick(Sender: TObject);
var
  mEnder: String;
  mqtdc, mqtd: Integer;
  minc2: String;
  ordem: String;
begin
// seLect CTPPESSOA,ccnpj,ccpf,case when length(ccpf)>1 then 'fisica' else 'juridica' end as tppessoa from cadcli
bbImprimir.Enabled:=false;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_empresas :='';
ordem       :='';
if cb_separado.ItemIndex=0 then
  begin
  mCampoGrupo:='CNOMASSE  ||'+chr(39)+' '+chr(39)+' || TO_CHAR(CCODASSE) ';
  mCampoOrdem:='CNOMASSE,CCODASSE';
  end
else if cb_separado.ItemIndex=1 then
  begin
  mCampoGrupo:='CBAIRRO ||'+chr(39)+' '+chr(39)+' ||CCIDADE ';
  mCampoOrdem:='CUF,CCIDADE,CBAIRRO';
  end
else if cb_separado.ItemIndex=2 then
  begin
  mCampoGrupo:='CCIDADE ||'+chr(39)+' '+chr(39)+' || CUF ';
  mCampoOrdem:='CUF,CCIDADE';
  end
else if cb_separado.ItemIndex=3 then
  begin
  mCampoGrupo:='CNOMCV  ||'+chr(39)+' '+chr(39)+' || TO_CHAR(CCODCV) ';
  mCampoOrdem:='CNOMCV,CCODCV';
  end
else if cb_separado.ItemIndex=4 then
  begin
  mCampoGrupo:='CUF ';
  mCampoOrdem:='CUF';
  end
else if cb_separado.ItemIndex=5 then
  begin
  mCampoGrupo:='CNOMRAM  ||'+chr(39)+' '+chr(39)+' || TO_CHAR(CCODRAM) ';
  mCampoOrdem:='CNOMRAM,CCODRAM';
  end
else if cb_separado.ItemIndex=6 then
  begin
  mCampoGrupo:='CNOMRED  ||'+chr(39)+' '+chr(39)+' || TO_CHAR(CCODRED) ';
  mCampoOrdem:='CNOMRED,CCODRED';
  end
else if cb_separado.ItemIndex=7 then
  begin
  mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
  mCampoOrdem:='';
  end
else if cb_separado.ItemIndex=8 then
  begin
  mCampoGrupo:='CNOMVEN ||'+chr(39)+' '+chr(39)+' || TO_CHAR(CCODVEN) ';
  mCampoOrdem:='CNOMVEN,CCODVEN';
  end
else if cb_separado.ItemIndex=9 then
  begin
  mCampoGrupo:='CNOMROTA ||'+chr(39)+' '+chr(39)+' || TO_CHAR(CROTA) ';
  mCampoOrdem:='CNOMROTA,CROTA';
  end
else
  begin
  mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
  mCampoOrdem:='';
  end;
mcinst:=' where ';

Qr_Cli.Close;
Qr_Cli.SQL.Clear;
Qr_Cli.SQL.Add('Select CRAZAO '
              +'     ,CDENOM '
              +'     ,CCODCLI '
              +'      ,CLOG '
              +'      ,CBAIRRO '
              +'      ,CCIDADE '
              +'      ,CUF '
              +'      ,CCEP '
              +'      ,CCNPJ '
              +'      ,CIE '
              +'      ,CRG '
              +'      ,CCPF '
              +'      ,CFONE01 '
              +'      ,CFONE02 '
              +'      ,CFONE03 '
              +'      ,CFAX    '
              +'      ,CCODVEN '
              +'      ,COBS01 '
              +'      ,COBS02 '
              +'      ,COBS03 '
              +'      ,COBS04 '
              +'      ,COBS05 '
              +'      ,CROTA '
              +'      ,CNOMROTA '
              +'      ,CHOME '
              +','+mCampoGrupo+' AS NOMGRU '
              +',CNUM,CCOMPL '
              +',CFONCON,CNOMCON,CEMAIL '
              +'       from CADCLI '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CSTATUS<9999 ');

if RG_IE.ItemIndex=1 then
  begin
  Qr_Cli.SQl.Add(' and length(CIE)<=5 ');
  end
else if RG_IE.ItemIndex=0 then
  begin
  Qr_Cli.SQl.Add(' and length(CIE)>5 ');
  end;

mcinst:=' and ';
if rg_email.ItemIndex<2 then
  begin
  Qr_Cli.SQl.Add(mcinst+iif(rg_email.ItemIndex=0,' ',' NOT ')+' length(CEMAIL)>4 ');
  mcinst:=' and ';
  end;



mcinst:=' and ';
if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
  begin
  Qr_Cli.SQl.Add(mcinst+' CCODEMP=0'+IntToStr(codemp));
  mcinst:=' and ';
  end;

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
  begin
  Qr_cli.sql.Add(mcinst+'( CCODVEN '+mcinst2);
  Qr_cli.sql.Add(' or CCODV02 '+mcinst2);
  Qr_cli.sql.Add(' or CCODV03 '+mcinst2);
  Qr_cli.sql.Add(' or CCODV04 '+mcinst2+')');
  mcinst:=' and ';
  end;

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
  begin
  Qr_cli.sql.Add(mcinst+' CCODCLI '+mcinst2);
  mcinst:=' and ';
  end;

mcinst2:=fItensListBox(0,lbx_assessor,OMITIR_ACESS);
if trim(mcinst2)<>'' then
  begin
  Qr_cli.sql.Add(mcinst+' CCODASSE '+mcinst2);
  mcinst:=' and ';
  end;

mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
  begin
  Qr_cli.sql.Add(mcinst+' CCODRAM '+mcinst2);
  mcinst:=' and ';
  end;

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
  begin
  Qr_cli.sql.Add(mcinst+' CCODRED '+mcinst2);
  mcinst:=' and ';
  end;

mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
if trim(mcinst2)<>'' then
  Qr_cli.SQL.Add(' and CROTA '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codbar,OMITIR_BAR);
if trim(mcinst2)<>'' then
  begin
  Qr_cli.sql.Add(mcinst+' CCODBAI '+mcinst2);
  mcinst:=' and ';
  end;

mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
  begin
  Qr_cli.sql.Add(mcinst+' CCODCV '+mcinst2);
  mcinst:=' and ';
  end;

if trim(PALAVRA.Text)<>'' then
  begin
  Qr_cli.sql.Add(mcinst+' CRAZAO like '+chr(39)+PALAVRA.Text+'%'+chr(39));
  mcinst:=' and ';
  end;

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
  begin
  Qr_cli.SQL.Add(mcinst+' CUF '+mcinst2);
  mcinst:=' and ';
  end;

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
  begin
  Qr_cli.sql.Add(mcinst+' CCODLOC '+mcinst2);
  mcinst:=' and ';
  end;

mcinst2:=fItenstCheckListBox(0,tipo_pessoa);
if trim(mcinst2)<>'' then
  begin
  Qr_Cli.SQL.Add( mcinst+ ' CTPPESSOA '+mcinst2);
  mcinst:=' and ';
  end;

mcinst2:=fItenstCheckListBox(0,situacao_cli);
if trim(mcinst2)<>'' then
  begin
  Qr_Cli.SQL.Add( mcinst+ ' CSITCLI '+mcinst2);
  mcinst:=' and ';
  end;

mcinst2:=fItenstCheckListBox(0,status);
if trim(mcinst2)<>'' then
  begin
  Qr_Cli.SQL.Add( mcinst+ ' CSTATUS '+mcinst2);
  mcinst:=' and ';
  end;

if cb_ordem.ItemIndex=0 then
  ordem:='CCODCLI'
else if cb_ordem.ItemIndex=1 then
  ordem:='CRAZAO'
else
  ordem:='CDENOM';


if trim(edt_datinc_ini.Text)<>'/  /' then
   begin
   Qr_Cli.SQL.Add( mcinst+ ' CDTCAD>=:DTCAD_INI');
   Qr_Cli.ParamByName('DTCAD_INI').AsDateTime:=edt_datinc_ini.Date;
   mcinst:=' and ';
   end;


if trim(edt_datinc_fin.Text)<>'/  /' then
   begin
   Qr_Cli.SQL.Add( mcinst+ ' CDTCAD<=:DTCAD_FIN');
   Qr_Cli.ParamByName('DTCAD_FIN').AsDateTime:=edt_datinc_fin.Date;
   mcinst:=' and ';
   end;


if trim(mCampoOrdem)<>'' then
  Qr_Cli.SQL.Add(' order by '+mCampoOrdem+','+ordem)
else
  Qr_Cli.SQL.Add(' order by '+ordem);
try
  Qr_Cli.Open;
except
  Qr_Cli.sql.savetofile('c:\sql.txt');
  end;

if Qr_Cli.IsEmpty then
  begin
  fmensagem('Não ha Registros a Serem Impressos nesta Condição!',0,['0'],0);
  bbImprimir.Enabled:=true;
  exit;
  end;

mqtdc:=0;
testeform := TFrm_RCliC(FindGlobalComponent('form_impres_rclic'));
if (testeform=nil)  then
  begin
  Application.CreateForm(Tfrm_Impres, form_impres_rclic);
  end;

form_impres_rclic.mpag:=0;
form_impres_rclic.mlin:=0;
mGrupoAnt:='';
form_impres_rclic.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
if RG_TIPOREL.ItemIndex=1 then
  begin
  While not Qr_Cli.Eof do
    begin
    if form_impres_rclic.mlin=0 then
      fRCliCabRel(Frm_RCliC.RG_TIPOREL.ItemIndex);

    if cb_separado.ItemIndex<>7 then
      begin
      if (mGrupoAnt<>Qr_CliNOMGRU.Value) then
        begin
        if ((CB_AVANCPAG.Checked) or (form_impres_rclic.mlin>55)) and (form_impres_rclic.mlin>3) then
          begin
          form_impres_rclic.mlin:=63;
          fRcliCCab(0);
          end
        else
          fRcliCCab(1);
        end;
      mGrupoAnt:=Qr_CliNOMGRU.Value;
      end;

    mqtdc:=mqtdc+1;
    fRcliCCab(0);
    form_impres_rclic.Rdprint1.ImpF(form_impres_rclic.mlin,01,'Codigo..: '+FormatFloat('00000',Qr_CliCCODCLI.Value)
                              +' Razao Social: '+insere2(Qr_CliCRAZAO.Value,' ',40)
                              +' Nome de Fantasia: '+Qr_CliCDENOM.Value,mreduz);
    fRcliCCab(0);
    mEnder:=Trim(Qr_Cliender_compl.Value);
    form_impres_rclic.Rdprint1.ImpF(form_impres_rclic.mlin,01,'Endereco: '+insere2(mEnder,' ',60)+' Bairro..........: '+Qr_CliCBAIRRO.Value,mreduz);
    fRcliCCab(0);
    form_impres_rclic.Rdprint1.Impf(form_impres_rclic.mlin,01,'Cidade..: '+Insere2(Qr_CliCCIDADE.Value,' ',44)
                           +' UF.: '+insere2(Qr_CliCUF.Value,' ',10)+' CEP.............: '+Qr_CliCCEP.Value,mreduz);
    fRcliCCab(0);
    form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,'CNPJ....: '+FormatFloat('00"."000"."000/0000-00',Qr_CliCCNPJ.Value)
                            +' Insc.Estadual: '+insere2(Qr_CliCIE.Value,' ',20)+'       CNPF............:'
                            +FormatFloat('000"."000"."000"-"00',Qr_CliCCPF.Value)+' RG.: '+Qr_CliCRG.Value,mreduz);
    fRcliCCab(0);
    form_impres_rclic.Rdprint1.Impf(form_impres_rclic.mlin,01,'Fone(s).: Telefone 01: '+insere2(Qr_CliCFONE01.Value,' ',20)
                                    +'  Telefone 02: '+Insere2(Qr_CliCFONE02.Value,' ',20)
                                    +'      Fax: '+Insere2(Qr_CliCFAX.Value,' ',20),mreduz);
    fRcliCCab(0);
    form_impres_rclic.RDprint1.Impf(form_impres_rclic.mlin,01,'Código Vendedor........: '+FormatFloat('00000',Qr_CliCCODVEN.Value),mreduz);
    fRcliCCab(0);
    form_impres_rclic.RDprint1.Impf(form_impres_rclic.mlin,01,'E-Mail.................: '+insere2(Qr_CliCEMAIL.AsString,' ',45)+' Contato: '+insere2(Qr_CliCNOMCON.AsString,' ',30)+' Fone: '+Qr_CliCFONCON.AsString,mreduz);

    if CB_HOME_page.checked=true then
       begin
       fRcliCCab(0);
       form_impres_rclic.RDprint1.Impf(form_impres_rclic.mlin,01,'Home Page..............: '+insere2(Qr_CliCHOME.AsString,' ',100),mreduz);
       end;

    fRcliCCab(0);
    form_impres_rclic.RDprint1.Impf(form_impres_rclic.mlin,01,'',mreduz);
    Qr_Cli.Next;
    end;
{  if form_impres_rclic.mlin<>0 then
    begin
    form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
    form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('Fim--------Foram impressos: '+Inttostr(mqtdc)+' Registros.','-',136),mreduz);
    if Qr_Cli.Eof then
      begin
      form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
      form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('-','-',136),mreduz);
      fImprimirCriterito(136);
      if form_impres_rclic.RDprint1.Setup then
        form_impres_rclic.RDprint1.Fechar;
      form_impres_rclic.free;
      form_impres_rclic:=nil;
      end;
    end;}
  end
else
  begin
  mGrupoAnt:='';
  While not Qr_Cli.Eof do
    begin
    if form_impres_rclic.mlin=0 then
      fRCliCabRel(Frm_RCliC.RG_TIPOREL.ItemIndex);

    if cb_separado.ItemIndex<>7 then
      begin
      if mGrupoAnt<>Qr_CliNOMGRU.Value then
        begin
        if ((CB_AVANCPAG.Checked) or (form_impres_rclic.mlin>55)) and (form_impres_rclic.mlin>3) then
          begin
          form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
          form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('-','-',136),mreduz);
          form_impres_rclic.mlin:=0;
          form_impres_rclic.RDprint1.Novapagina;
          fRCliCabRel(Frm_RCliC.RG_TIPOREL.ItemIndex);
          form_impres_rclic.mlin:=3;
          end;
        fRCliCabGru(1);
        mGrupoAnt:=Qr_CliNOMGRU.Value;
        end
      else
        begin
        if form_impres_rclic.mlin>57 then
          begin
          form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
          form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('-','-',136),mreduz);
          form_impres_rclic.mlin:=0;
          form_impres_rclic.RDprint1.Novapagina;
          fRCliCabRel(Frm_RCliC.RG_TIPOREL.ItemIndex);
          form_impres_rclic.mlin:=3;
          end;
        end;
      end
    else
      begin
      if form_impres_rclic.mlin>57 then
        begin
        form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
        form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('-','-',136),mreduz);
        form_impres_rclic.mlin:=0;
        form_impres_rclic.RDprint1.Novapagina;
        fRCliCabRel(Frm_RCliC.RG_TIPOREL.ItemIndex);
        form_impres_rclic.mlin:=4;
        end;
      end;
    mqtdc:=mqtdc+1;
    form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
    form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,insere2(Formatfloat('000000', Qr_CliCCODCLI.Value)
                            +' '+Qr_CliCRAZAO.Value,' ',47)
                            +' '+insere2(Qr_Cliender_compl.Value,' ',40)
                            +' '+insere2(Qr_CliCBAIRRO.Value,' ',20)
                            +' '+insere2(Qr_CliCCIDADE.Value+'-'+Qr_CliCUF.Value,' ',29)
                            +' '+Qr_CliCFONE01.Value,m20ccp);
    Qr_Cli.Next;
    end;
  end;
if form_impres_rclic.mlin<>0 then
  begin
  form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
  form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('Fim--------Foram impressos: '+Inttostr(mqtdc)+' Registros.','-',136),mreduz);
  if Qr_Cli.Eof then
    begin
    form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
    form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('-','-',136),mreduz);
    fImprimirCriterito(136);
    if form_impres_rclic.RDprint1.Setup then
      form_impres_rclic.RDprint1.Fechar;
    form_impres_rclic.free;
    form_impres_rclic:=nil;
    end;
  end;
bbImprimir.Enabled:=true;
end;

procedure TFrm_RCliC.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RCliC.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if Trim(CODCON.Text)<>'' then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCON.Text) then
   BEGIN
      lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcon.text := '';
      codcon.SetFocus;
   END else
      begin
      fmensagem('Convênio não Cadastrado!',0,['0'],0);
      codcon.text := '';
      CODCON.SetFocus;
      end;
   end;
end;

procedure TFrm_RCliC.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      lbx_codcon.Items.Add(FormatFloat('0000000',DM1.Tb_TconCCODCON.AsFloat)
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;
end;

procedure TFrm_RCliC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RCliC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);
end;

procedure TFrm_RCliC.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_RCliC.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_RCliC.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_RCliC.OMITIR_CLIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_cli.Hint := 'Omitir Marcado - Todos Clientes'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_RCliC.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_con.Hint := 'Omitir Marcado - Todos Convenios '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_RCliC.tipo_pessoaClick(Sender: TObject);
var
x: Integer;
begin
  inherited;
if tipo_pessoa.ItemIndex=tipo_pessoa.Count-1 then
   begin
   for x := 0 to tipo_pessoa.Count -2 do
      begin
      if tipo_pessoa.Checked[tipo_pessoa.count-1] then
         tipo_pessoa.Checked[x] := true
      else
         tipo_pessoa.Checked[x]:=false;
      end;
   end
else
   begin
   tipo_pessoa.Checked[tipo_pessoa.Count-1]:=False;
   for x:=0 to tipo_pessoa.Count-2 do
      begin
      tipo_pessoa.Checked[tipo_pessoa.Count-1]:=true;
      if not tipo_pessoa.Checked[x] then
         begin
         tipo_pessoa.Checked[tipo_pessoa.Count-1]:=False;
         break;
         end;
      end;
   end;

end;

procedure TFrm_RCliC.situacao_cliClick(Sender: TObject);
begin
  inherited;
situacao_cli:=Valida_CheckList(situacao_cli);
end;



procedure TFrm_RCliC.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Loc',Key);
   CODLOCExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RCliC.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if flqr1('LNOME,LUF','L','CADLOC','N','LCODLOC',CODLOC.Text) then
   BEGIN
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
   END else
      begin
      fmensagem('Cidade não Cadastrada!',0,['0'],0);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;


end;

procedure TFrm_RCliC.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);


end;

procedure TFrm_RCliC.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if not flcaduf(0,0,0,CODUF.Text) then
      begin
      fmensagem('Estado nao Cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
   end;

end;

procedure TFrm_RCliC.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_RCliC.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
   coduf.text := '';
   coduf.SetFocus;
   end;


end;

procedure TFrm_RCliC.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if Trim(CODRAM.Text)<>'' then
   begin
   if flqr1('RNOME','R','CADRCLI','N','RCODRAM',CODRAM.Text) then
      begin
      lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codram.ItemIndex:=lbx_codram.Items.Count-1;

      CODRAM.text := '';
      CODRAM.SetFocus;
      end
   else
      begin
      fmensagem('Ramo de cliente não Cadastrado!',0,['0'],0);
      CODRAM.text := '';
      CODRAM.SetFocus;
      end;
   end;


end;

procedure TFrm_RCliC.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamoCli(0,'frm_rcpag',key);
   key:=#0;
   end;


end;

procedure TFrm_RCliC.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;


function TFrm_RCliC.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
      form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',136),mneg);
      end;
   end;
result:=true;
end;

function TFrm_RCliC.fTestaCab(pTipo: Integer): Boolean;
begin
if form_impres_rclic.mlin>57 then
   begin
   form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('-','-',136),mreduz);
   form_impres_rclic.mlin:=0;
   form_impres_rclic.RDprint1.Novapagina;
   fRCliCabRel(Frm_RCliC.RG_TIPOREL.ItemIndex);
   form_impres_rclic.mlin:=4;
   end;
result:=true;
end;

function TFrm_RCliC.fRCliCabRel(pTipo: Integer): Boolean;
begin
form_impres_rclic.mpag   :=form_impres_rclic.mpag+1;
form_impres_rclic.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mreduz);
form_impres_rclic.RDprint1.ImpF(01,115,'Pagina...: '+FormatFloat('0000',form_impres_rclic.mpag),mreduz);
form_impres_rclic.RDprint1.ImpF(02,01,'Relatorio de Clientes',mreduz);
form_impres_rclic.RDprint1.ImpF(02,115,'Data: '+FormatDateTime(fdt2, date),mreduz);
form_impres_rclic.RDprint1.ImpF(03,01,insere2('=','=',136),mreduz);
form_impres_rclic.mlin:=3;
if (pTipo=0) and (cb_separado.ItemIndex=7) then
  begin
  form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
  form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,'Codigo Razao Social                             Endereco                                 Bairro               Cidade/UF                     Telefone',m20ccp);
  end;
result:=true;
end;

function TFrm_RCliC.fImprimirCriterito(pQtdCol: Integer): boolean;
begin
if not cb_omitir.Checked then
  begin
  form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
  form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Centra('CRITERITOS DO RELATORIOS',' ',136),mreduz);
  if lbx_codven.Count>0 then
    FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
  if lbx_codcli.Count>0 then
    begin
    FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
    form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
    form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,
                     Centra(iif(Frm_RCliC.OMITIR_CLI.Checked,' Foram Inibidos ','Foram Selecionados Apenas ')
                     +IntToStr( Frm_RCliC.lbx_codcli.Items.Count)+' Clientes'
                     ,' ',136),mreduz);
    end;
  if lbx_coduf.Count>0 then
    FImprimeTitulo('Estado',lbx_coduf,OMITIR_UF);
  if lbx_codloc.Count>0 then
    FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
  if Frm_RCliC.lbx_codcon.Count>0 then
    FImprimeTitulo('Convenio',Frm_RCliC.lbx_codcon,Frm_RCliC.OMITIR_CON);
  if Frm_RCliC.lbx_codram.Count>0 then
    FImprimeTitulo('Ramo de Cliente',Frm_RCliC.lbx_codram,Frm_RCliC.OMITIR_RAM);
  if Frm_RCliC.lbx_codred.Count>0 then
    FImprimeTitulo('Rede de Cliente',Frm_RCliC.lbx_codred,Frm_RCliC.OMITIR_RED);
  if Frm_RCliC.lbx_CODREG.Count>0 then
    FImprimeTitulo('Região de Cliente',Frm_RCliC.lbx_CODREG,Frm_RCliC.OMITIR_CODREG);
  end;
form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Centra('Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time),' ',136),mreduz);
form_impres_rclic.mlin:=form_impres_rclic.mlin+1;
form_impres_rclic.RDprint1.ImpF(form_impres_rclic.mlin,01,Insere2('-','-',136),mreduz);
result:=true;
end;


procedure TFrm_RCliC.statusClick(Sender: TObject);
begin
status:=Valida_CheckList(status);
end;

procedure TFrm_RCliC.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codred.ItemIndex:=lbx_codred.Items.Count-1;

      CODRED.text := '';
      CODRED.SetFocus;
      end
   else
      begin
      fmensagem('Rede não Cadastrado!',0,['0'],0);
      CODRED.text := '';
      CODRED.SetFocus;
      end;
   end;
end;

procedure TFrm_RCliC.CODREDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_RCliC.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);
end;

procedure TFrm_RCliC.CODBARExit(Sender: TObject);
begin
CODBAR.Text:=fdeixanum2(CODBAR.Text);
if Trim(CODBAR.Text)<>'' then
   begin
   if flqr1('BNOME','B','CADBAI','N','BCODBAI',CODBAR.Text) then
      begin
      lbx_codbar.Items.Add(FormatFloat('0000000',StrToFloat(CODBAR.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codbar.ItemIndex:=lbx_codbar.Items.Count-1;

      CODBAR.text := '';
      CODBAR.SetFocus;
      end
   else
      begin
      fmensagem('Bairro não Cadastrado!',0,['0'],0);
      CODBAR.text := '';
      CODBAR.SetFocus;
      end;
   end;
end;

procedure TFrm_RCliC.CODBARKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBAR.Text:=fChamaBai(0,'Frm_Bai',key);
   if trim(CODBAR.Text)<>'' then
      CODBARExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_RCliC.lbx_codbarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbar.ItemIndex>=0 then
      lbx_codbar.Items.Delete(lbx_codbar.ItemIndex);
end;

procedure TFrm_RCliC.FormCreate(Sender: TObject);
begin
   PageControl1.ActivePage := TabSheet1;
if DM1.Tb_PargerPCODLOC.Value=1 then
   mboolean:=true
else
   mboolean:=false;
lbl_loc.Visible       :=mboolean;
CODLOC.Visible        :=mboolean;
lbx_codloc.Visible    :=mboolean;
OMITIR_LOC.Visible    :=mboolean;
if DM1.Tb_PargerPCODBAI.Value=1 then
   mboolean:=true
else
   mboolean:=false;
CODBAR.Visible        :=mboolean;
lbl_codbar.Visible    :=mboolean;
lbx_codbar.Visible    :=mboolean;
OMITIR_BAR.Visible    :=mboolean;
if log_codven>0 then
  begin
  CODVEN.Text:=FloatToStr(log_codven);
  flcadven(1,0,CODVEN.Text);
  if DM1.Tb_Ven.Eof then
    lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                      +' - '+DM1.Tb_VenVNOME.AsString)
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))+' - ');
  CODVEN.Enabled:=False;
  lbx_codven.Enabled:=False;
  OMITIR_VEN.Enabled:=False;
  end;
end;

procedure TFrm_RCliC.EDT_CODREGExit(Sender: TObject);
begin

edt_codreg.Text:=fdeixanum2(edt_codreg.Text);
if Trim(edt_codreg.Text)<>'' then
   begin
   if flqr1('CR_NOMREG','CR_','CADREGIAO','N','CR_CODREG',edt_codreg.Text) then
      begin
      lbx_codreg.Items.Add(FormatFloat('0000000',StrToFloat(edt_codreg.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codreg.ItemIndex:=lbx_codreg.Items.Count-1;
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end
   else
      begin
      fmensagem('Região Não Cadastrado!',0,['0'],0);
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end;
   end;

end;

procedure TFrm_RCliC.EDT_CODREGKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codreg.Text:=fdeixanum(fChamaRegiao(0,'frm_rped',key));
   edt_codregExit(self);
   key:=#0;
   end;


end;

procedure TFrm_RCliC.lbx_CODREGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_CODREG.ItemIndex>=0 then
      lbx_CODREG.Items.Delete(lbx_CODREG.ItemIndex);

end;

procedure TFrm_RCliC.edt_codassessorExit(Sender: TObject);
begin
  edt_codassessor.Text := fdeixanum2(edt_codassessor.Text);

  if Trim(edt_codassessor.Text)<>'' then begin
      if flqr102('CARAZAO','CA','CADASSE','N','CACODASS',edt_codassessor.Text,'N','CASTATUS','0') then begin
         lbx_assessor.Items.Add(FormatFloat('0000000',StrToFloat(edt_codassessor.Text))
                                           +' - '+DM1.Query1.Fields[0].AsString);
         lbx_assessor.ItemIndex := lbx_assessor.Items.Count-1;
         edt_codassessor.text := '';
         edt_codassessor.SetFocus;
      end
   else
      begin
      fmensagem('Assessor(s) não Cadastrado!',0,['0'],0);
      edt_codassessor.text := '';
      edt_codassessor.SetFocus;
      end;
   end;
end;

procedure TFrm_RCliC.edt_codassessorKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      edt_codassessor.Text := fChamaAssessor(0,'frm_assessor',key);
      if Trim(edt_codassessor.Text) <> '' then
         lbx_assessor.Items.Add(FormatFloat('0000000',DM2.Tb_AssessorCACODASS.AsFloat)
                                           +'-'+DM2.Tb_AssessorCARAZAO.Value);
      edt_codassessor.text := '';
      key:=#0;
   end;
end;

procedure TFrm_RCliC.lbx_assessorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_assessor.ItemIndex>=0 then
      lbx_assessor.Items.Delete(lbx_assessor.ItemIndex);
end;

procedure TFrm_RCliC.Qr_CliCalcFields(DataSet: TDataSet);
begin
if trim(Qr_CliCNUM.AsString)<>'' then
   Qr_Cliender_compl.AsString:=Qr_CliCLOG.AsString+' No. '+Qr_CliCNUM.AsString+' '+Qr_CliCCOMPL.AsString
else
   Qr_Cliender_compl.AsString:=Qr_CliCLOG.AsString+' '+Qr_CliCCOMPL.AsString;
end;

end.
