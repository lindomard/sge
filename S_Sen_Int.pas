unit S_Sen_Int;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls,S_DM4,lerarq,func,S_Usr,S_Stru,
  Mask, ToolEdit, CurrEdit,db,DBTables;

type
  TFrm_Sen_Int = class(TForm)
    PC01: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    lbl_senMaster: TLabel;
    S00: TEdit;
    C00: TEdit;
    G00: TSpeedButton;
    Label2: TLabel;
    PS01: TCheckBox;
    S01: TEdit;
    C01: TEdit;
    G01: TSpeedButton;
    Label3: TLabel;
    PS02: TCheckBox;
    S02: TEdit;
    C02: TEdit;
    G02: TSpeedButton;
    Label4: TLabel;
    PS03: TCheckBox;
    S03: TEdit;
    C03: TEdit;
    G03: TSpeedButton;
    Label5: TLabel;
    PS04: TCheckBox;
    S04: TEdit;
    C04: TEdit;
    G04: TSpeedButton;
    TabSheet3: TTabSheet;
    Label7: TLabel;
    Label6: TLabel;
    PS05: TCheckBox;
    PS06: TCheckBox;
    S06: TEdit;
    S05: TEdit;
    C05: TEdit;
    C06: TEdit;
    G05: TSpeedButton;
    G06: TSpeedButton;
    Label13: TLabel;
    PS07: TCheckBox;
    S07: TEdit;
    C07: TEdit;
    G07: TSpeedButton;
    Label15: TLabel;
    PS09: TCheckBox;
    S09: TEdit;
    C09: TEdit;
    G09: TSpeedButton;
    Label16: TLabel;
    PS10: TCheckBox;
    S10: TEdit;
    C10: TEdit;
    G10: TSpeedButton;
    TabSheet4: TTabSheet;
    Label17: TLabel;
    PS11: TCheckBox;
    S11: TEdit;
    C11: TEdit;
    G11: TSpeedButton;
    Label18: TLabel;
    PS12: TCheckBox;
    S12: TEdit;
    C12: TEdit;
    G12: TSpeedButton;
    Label19: TLabel;
    PS13: TCheckBox;
    S13: TEdit;
    C13: TEdit;
    G13: TSpeedButton;
    Label20: TLabel;
    PS14: TCheckBox;
    S14: TEdit;
    C14: TEdit;
    G14: TSpeedButton;
    Label21: TLabel;
    PS15: TCheckBox;
    S15: TEdit;
    C15: TEdit;
    G15: TSpeedButton;
    Label22: TLabel;
    PS16: TCheckBox;
    S16: TEdit;
    C16: TEdit;
    G16: TSpeedButton;
    Label23: TLabel;
    PS17: TCheckBox;
    S17: TEdit;
    C17: TEdit;
    G17: TSpeedButton;
    Label24: TLabel;
    PS18: TCheckBox;
    S18: TEdit;
    C18: TEdit;
    G18: TSpeedButton;
    Label25: TLabel;
    PS19: TCheckBox;
    S19: TEdit;
    C19: TEdit;
    G19: TSpeedButton;
    Label26: TLabel;
    PS20: TCheckBox;
    S20: TEdit;
    C20: TEdit;
    G20: TSpeedButton;
    HeaderControl1: THeaderControl;
    Label8: TLabel;
    PS21: TCheckBox;
    S21: TEdit;
    C21: TEdit;
    G21: TSpeedButton;
    Label9: TLabel;
    PS22: TCheckBox;
    S22: TEdit;
    C22: TEdit;
    G22: TSpeedButton;
    Label12: TLabel;
    PS25: TCheckBox;
    S25: TEdit;
    C25: TEdit;
    G25: TSpeedButton;
    C26: TEdit;
    S26: TEdit;
    PS26: TCheckBox;
    Label27: TLabel;
    G26: TSpeedButton;
    Label28: TLabel;
    PS27: TCheckBox;
    S27: TEdit;
    C27: TEdit;
    G27: TSpeedButton;
    Label29: TLabel;
    PS28: TCheckBox;
    S28: TEdit;
    C28: TEdit;
    G28: TSpeedButton;
    C29: TEdit;
    S29: TEdit;
    PS29: TCheckBox;
    Label30: TLabel;
    G29: TSpeedButton;
    Label31: TLabel;
    PS30: TCheckBox;
    S30: TEdit;
    C30: TEdit;
    G30: TSpeedButton;
    Label32: TLabel;
    PS31: TCheckBox;
    S31: TEdit;
    C31: TEdit;
    G31: TSpeedButton;
    Label33: TLabel;
    PS32: TCheckBox;
    S32: TEdit;
    C32: TEdit;
    G32: TSpeedButton;
    C33: TEdit;
    S33: TEdit;
    PS33: TCheckBox;
    Label34: TLabel;
    G33: TSpeedButton;
    Label35: TLabel;
    PS34: TCheckBox;
    S34: TEdit;
    C34: TEdit;
    G34: TSpeedButton;
    Label36: TLabel;
    PS35: TCheckBox;
    S35: TEdit;
    C35: TEdit;
    G35: TSpeedButton;
    Label37: TLabel;
    PS36: TCheckBox;
    S36: TEdit;
    C36: TEdit;
    G36: TSpeedButton;
    Label38: TLabel;
    PS37: TCheckBox;
    S37: TEdit;
    C37: TEdit;
    G37: TSpeedButton;
    Label39: TLabel;
    PS38: TCheckBox;
    S38: TEdit;
    C38: TEdit;
    G38: TSpeedButton;
    Label40: TLabel;
    PS39: TCheckBox;
    S39: TEdit;
    C39: TEdit;
    G39: TSpeedButton;
    Label41: TLabel;
    PS40: TCheckBox;
    S40: TEdit;
    C40: TEdit;
    G40: TSpeedButton;
    Label42: TLabel;
    PS41: TCheckBox;
    S41: TEdit;
    C41: TEdit;
    G41: TSpeedButton;
    Label43: TLabel;
    PS42: TCheckBox;
    S42: TEdit;
    C42: TEdit;
    G42: TSpeedButton;
    Label44: TLabel;
    PS43: TCheckBox;
    S43: TEdit;
    C43: TEdit;
    G43: TSpeedButton;
    Label45: TLabel;
    PS44: TCheckBox;
    S44: TEdit;
    C44: TEdit;
    G44: TSpeedButton;
    lbl_usuario: TLabel;
    MCODUSR: TEdit;
    NOMUSR: TEdit;
    SB_AplicarTodos: TSpeedButton;
    Label47: TLabel;
    PS45: TCheckBox;
    S45: TEdit;
    C45: TEdit;
    G45: TSpeedButton;
    Label48: TLabel;
    PS46: TCheckBox;
    S46: TEdit;
    C46: TEdit;
    G46: TSpeedButton;
    Label49: TLabel;
    PS47: TCheckBox;
    S47: TEdit;
    C47: TEdit;
    G47: TSpeedButton;
    TsSenhasFrente: TTabSheet;
    Label14: TLabel;
    PS08: TCheckBox;
    S08: TEdit;
    C08: TEdit;
    G08: TSpeedButton;
    Label10: TLabel;
    PS23: TCheckBox;
    S23: TEdit;
    C23: TEdit;
    G23: TSpeedButton;
    Label11: TLabel;
    PS24: TCheckBox;
    S24: TEdit;
    C24: TEdit;
    G24: TSpeedButton;
    Label50: TLabel;
    PS48: TCheckBox;
    S48: TEdit;
    C48: TEdit;
    G48: TSpeedButton;
    Label51: TLabel;
    PS49: TCheckBox;
    S49: TEdit;
    C49: TEdit;
    G49: TSpeedButton;
    Label1: TLabel;
    PS50: TCheckBox;
    S50: TEdit;
    C50: TEdit;
    G50: TSpeedButton;
    Label46: TLabel;
    PS51: TCheckBox;
    S51: TEdit;
    C51: TEdit;
    G51: TSpeedButton;
    Label52: TLabel;
    PS52: TCheckBox;
    S52: TEdit;
    C52: TEdit;
    G52: TSpeedButton;
    Label53: TLabel;
    PS53: TCheckBox;
    S53: TEdit;
    C53: TEdit;
    G53: TSpeedButton;
    G61: TSpeedButton;
    C61: TEdit;
    S61: TEdit;
    PS61: TCheckBox;
    Label61: TLabel;
    Label54: TLabel;
    PS62: TCheckBox;
    S62: TEdit;
    C62: TEdit;
    G62: TSpeedButton;
    Label55: TLabel;
    PS63: TCheckBox;
    S63: TEdit;
    C63: TEdit;
    G63: TSpeedButton;
    Label56: TLabel;
    PS54: TCheckBox;
    S54: TEdit;
    C54: TEdit;
    G54: TSpeedButton;
    G55: TSpeedButton;
    C55: TEdit;
    S55: TEdit;
    PS55: TCheckBox;
    Label57: TLabel;
    Label64: TLabel;
    PS64: TCheckBox;
    S64: TEdit;
    C64: TEdit;
    G64: TSpeedButton;
    TabSheet5: TTabSheet;
    Label58: TLabel;
    PS56: TCheckBox;
    S56: TEdit;
    C56: TEdit;
    G56: TSpeedButton;
    Label59: TLabel;
    PS57: TCheckBox;
    S57: TEdit;
    C57: TEdit;
    G57: TSpeedButton;
    Label60: TLabel;
    PS65: TCheckBox;
    S65: TEdit;
    C65: TEdit;
    G65: TSpeedButton;
    Label62: TLabel;
    PS58: TCheckBox;
    S58: TEdit;
    C58: TEdit;
    G58: TSpeedButton;
    Label63: TLabel;
    PS59: TCheckBox;
    S59: TEdit;
    C59: TEdit;
    G59: TSpeedButton;
    Label65: TLabel;
    PS66: TCheckBox;
    S66: TEdit;
    C66: TEdit;
    G66: TSpeedButton;
    cDiasBlqLic: TCurrencyEdit;
    Label66: TLabel;
    Label67: TLabel;
    PS67: TCheckBox;
    s67: TEdit;
    C67: TEdit;
    G67: TSpeedButton;
    Label68: TLabel;
    PS68: TCheckBox;
    S68: TEdit;
    C68: TEdit;
    G68: TSpeedButton;
    Label69: TLabel;
    PS69: TCheckBox;
    s69: TEdit;
    C69: TEdit;
    G69: TSpeedButton;
    Label70: TLabel;
    PS70: TCheckBox;
    S70: TEdit;
    C70: TEdit;
    Label71: TLabel;
    PS71: TCheckBox;
    S71: TEdit;
    C71: TEdit;
    G71: TSpeedButton;
    G70: TSpeedButton;
    Label72: TLabel;
    PS72: TCheckBox;
    S72: TEdit;
    C72: TEdit;
    G72: TSpeedButton;
    Label73: TLabel;
    PS73: TCheckBox;
    S73: TEdit;
    C73: TEdit;
    G73: TSpeedButton;
    Label74: TLabel;
    PS74: TCheckBox;
    S74: TEdit;
    C74: TEdit;
    G74: TSpeedButton;
    Label75: TLabel;
    PS75: TCheckBox;
    S75: TEdit;
    C75: TEdit;
    G75: TSpeedButton;
    Label76: TLabel;
    PS76: TCheckBox;
    S76: TEdit;
    C76: TEdit;
    G76: TSpeedButton;
    procedure S00Change(Sender: TObject);
    procedure G00Click(Sender: TObject);
    procedure PS01Click(Sender: TObject);
    procedure S01Change(Sender: TObject);
    procedure G01Click(Sender: TObject);
    procedure PS02Click(Sender: TObject);
    procedure PS03Click(Sender: TObject);
    procedure PS04Click(Sender: TObject);
    procedure PS08Click(Sender: TObject);
    procedure PS13Click(Sender: TObject);
    procedure PS17Click(Sender: TObject);
    procedure PS21Click(Sender: TObject);
    procedure PS22Click(Sender: TObject);
    procedure PS14Click(Sender: TObject);
    procedure PS18Click(Sender: TObject);
    procedure PS05Click(Sender: TObject);
    procedure PS06Click(Sender: TObject);
    procedure PS07Click(Sender: TObject);
    procedure PS09Click(Sender: TObject);
    procedure PS10Click(Sender: TObject);
    procedure PS19Click(Sender: TObject);
    procedure PS20Click(Sender: TObject);
    procedure PS11Click(Sender: TObject);
    procedure PS12Click(Sender: TObject);
    procedure PS15Click(Sender: TObject);
    procedure PS16Click(Sender: TObject);
    procedure S02Change(Sender: TObject);
    procedure S03Change(Sender: TObject);
    procedure S04Change(Sender: TObject);
    procedure S08Change(Sender: TObject);
    procedure S13Change(Sender: TObject);
    procedure S17Change(Sender: TObject);
    procedure S21Change(Sender: TObject);
    procedure S22Change(Sender: TObject);
    procedure S14Change(Sender: TObject);
    procedure S18Change(Sender: TObject);
    procedure S05Change(Sender: TObject);
    procedure S06Change(Sender: TObject);
    procedure S07Change(Sender: TObject);
    procedure S09Change(Sender: TObject);
    procedure S10Change(Sender: TObject);
    procedure S19Change(Sender: TObject);
    procedure S20Change(Sender: TObject);
    procedure S11Change(Sender: TObject);
    procedure S12Change(Sender: TObject);
    procedure S15Change(Sender: TObject);
    procedure S16Change(Sender: TObject);
    procedure G02Click(Sender: TObject);
    procedure G03Click(Sender: TObject);
    procedure G04Click(Sender: TObject);
    procedure G08Click(Sender: TObject);
    procedure G13Click(Sender: TObject);
    procedure G17Click(Sender: TObject);
    procedure G21Click(Sender: TObject);
    procedure G22Click(Sender: TObject);
    procedure G14Click(Sender: TObject);
    procedure G18Click(Sender: TObject);
    procedure G05Click(Sender: TObject);
    procedure G06Click(Sender: TObject);
    procedure G07Click(Sender: TObject);
    procedure G09Click(Sender: TObject);
    procedure G10Click(Sender: TObject);
    procedure G19Click(Sender: TObject);
    procedure G20Click(Sender: TObject);
    procedure G11Click(Sender: TObject);
    procedure G12Click(Sender: TObject);
    procedure G15Click(Sender: TObject);
    procedure G16Click(Sender: TObject);
    procedure PS23Click(Sender: TObject);
    procedure S23Change(Sender: TObject);
    procedure G23Click(Sender: TObject);
    procedure PS24Click(Sender: TObject);
    procedure S24Change(Sender: TObject);
    procedure G24Click(Sender: TObject);
    procedure PS25Click(Sender: TObject);
    procedure S25Change(Sender: TObject);
    procedure G25Click(Sender: TObject);
    procedure PS26Click(Sender: TObject);
    procedure S26Change(Sender: TObject);
    procedure G26Click(Sender: TObject);
    procedure PS27Click(Sender: TObject);
    procedure S27Change(Sender: TObject);
    procedure G27Click(Sender: TObject);
    procedure PS28Click(Sender: TObject);
    procedure S28Change(Sender: TObject);
    procedure G28Click(Sender: TObject);
    procedure PS29Click(Sender: TObject);
    procedure S29Change(Sender: TObject);
    procedure G29Click(Sender: TObject);
    procedure PS30Click(Sender: TObject);
    procedure S30Change(Sender: TObject);
    procedure G30Click(Sender: TObject);
    procedure PS31Click(Sender: TObject);
    procedure S31Change(Sender: TObject);
    procedure G31Click(Sender: TObject);
    procedure PS32Click(Sender: TObject);
    procedure PS33Click(Sender: TObject);
    procedure PS34Click(Sender: TObject);
    procedure PS35Click(Sender: TObject);
    procedure S32Change(Sender: TObject);
    procedure S33Change(Sender: TObject);
    procedure S34Change(Sender: TObject);
    procedure S35Change(Sender: TObject);
    procedure G32Click(Sender: TObject);
    procedure G33Click(Sender: TObject);
    procedure G34Click(Sender: TObject);
    procedure G35Click(Sender: TObject);
    procedure PS36Click(Sender: TObject);
    procedure S36Change(Sender: TObject);
    procedure G36Click(Sender: TObject);
    procedure PS37Click(Sender: TObject);
    procedure S37Change(Sender: TObject);
    procedure G37Click(Sender: TObject);
    procedure PS38Click(Sender: TObject);
    procedure S38Change(Sender: TObject);
    procedure G38Click(Sender: TObject);
    procedure PS39Click(Sender: TObject);
    procedure S39Change(Sender: TObject);
    procedure G39Click(Sender: TObject);
    procedure PS40Click(Sender: TObject);
    procedure S40Change(Sender: TObject);
    procedure G40Click(Sender: TObject);
    procedure PS41Click(Sender: TObject);
    procedure S41Change(Sender: TObject);
    procedure G41Click(Sender: TObject);
    procedure PS42Click(Sender: TObject);
    procedure S42Change(Sender: TObject);
    procedure G42Click(Sender: TObject);
    procedure PS43Click(Sender: TObject);
    procedure S43Change(Sender: TObject);
    procedure G43Click(Sender: TObject);
    procedure PS44Click(Sender: TObject);
    procedure S44Change(Sender: TObject);
    procedure G44Click(Sender: TObject);
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure MCODUSRExit(Sender: TObject);
    procedure SB_AplicarTodosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure S45Change(Sender: TObject);
    procedure PS45Click(Sender: TObject);
    procedure G45Click(Sender: TObject);
    procedure PS46Click(Sender: TObject);
    procedure S46Change(Sender: TObject);
    procedure G46Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PS47Click(Sender: TObject);
    procedure S47Change(Sender: TObject);
    procedure G47Click(Sender: TObject);
    procedure PS48Click(Sender: TObject);
    procedure S48Change(Sender: TObject);
    procedure G48Click(Sender: TObject);
    procedure PS49Click(Sender: TObject);
    procedure S49Change(Sender: TObject);
    procedure G49Click(Sender: TObject);
    procedure PC01Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PS50Click(Sender: TObject);
    procedure S50Change(Sender: TObject);
    procedure G50Click(Sender: TObject);
    procedure S51Change(Sender: TObject);
    procedure G51Click(Sender: TObject);
    procedure PS51Click(Sender: TObject);
    procedure PS52Click(Sender: TObject);
    procedure S52Change(Sender: TObject);
    procedure G52Click(Sender: TObject);
    procedure PS53Click(Sender: TObject);
    procedure S53Change(Sender: TObject);
    procedure G53Click(Sender: TObject);
    procedure G61Click(Sender: TObject);
    procedure PS61Click(Sender: TObject);
    procedure S61Change(Sender: TObject);
    procedure PS62Click(Sender: TObject);
    procedure S62Change(Sender: TObject);
    procedure G62Click(Sender: TObject);
    procedure S63Change(Sender: TObject);
    procedure G63Click(Sender: TObject);
    procedure PS63Click(Sender: TObject);
    procedure S54Change(Sender: TObject);
    procedure G54Click(Sender: TObject);
    procedure PS54Click(Sender: TObject);
    procedure PS55Click(Sender: TObject);
    procedure S55Change(Sender: TObject);
    procedure G55Click(Sender: TObject);
    procedure S64Change(Sender: TObject);
    procedure G64Click(Sender: TObject);
    procedure PS64Click(Sender: TObject);
    procedure PS56Click(Sender: TObject);
    procedure S56Change(Sender: TObject);
    procedure G56Click(Sender: TObject);
    procedure PS57Click(Sender: TObject);
    procedure S57Change(Sender: TObject);
    procedure G57Click(Sender: TObject);
    procedure PS65Click(Sender: TObject);
    procedure S65Change(Sender: TObject);
    procedure G65Click(Sender: TObject);
    procedure S58Change(Sender: TObject);
    procedure G58Click(Sender: TObject);
    procedure PS58Click(Sender: TObject);
    procedure PS59Click(Sender: TObject);
    procedure S59Change(Sender: TObject);
    procedure G59Click(Sender: TObject);
    procedure G66Click(Sender: TObject);
    procedure PS66Click(Sender: TObject);
    procedure S66Change(Sender: TObject);
    procedure cDiasBlqLicExit(Sender: TObject);
    procedure PS67Click(Sender: TObject);
    procedure s67Change(Sender: TObject);
    procedure G67Click(Sender: TObject);
    procedure S68Change(Sender: TObject);
    procedure G68Click(Sender: TObject);
    procedure PS69Click(Sender: TObject);
    procedure s69Change(Sender: TObject);
    procedure G69Click(Sender: TObject);
    procedure PS70Click(Sender: TObject);
    procedure S70Change(Sender: TObject);
    procedure G70Click(Sender: TObject);
    procedure PS71Click(Sender: TObject);
    procedure S71Change(Sender: TObject);
    procedure G71Click(Sender: TObject);
    procedure G72Click(Sender: TObject);
    procedure S72Change(Sender: TObject);
    procedure PS72Click(Sender: TObject);
    procedure PS68Click(Sender: TObject);
    procedure G73Click(Sender: TObject);
    procedure S73Change(Sender: TObject);
    procedure PS73Click(Sender: TObject);
    procedure PS74Click(Sender: TObject);
    procedure S74Change(Sender: TObject);
    procedure G74Click(Sender: TObject);
    procedure PS75Click(Sender: TObject);
    procedure S75Change(Sender: TObject);
    procedure G75Click(Sender: TObject);
    procedure PS76Click(Sender: TObject);
    procedure S76Change(Sender: TObject);
    procedure G76Click(Sender: TObject);
  private
    { Private declarations }

    function fAtualizarDados(pCodusr: Integer): Boolean;

  public
    { Public declarations }
  end;
function fsenintGravar(pCodigo,pCodUsr: Integer; pNovaSenha,PCritica: String): Boolean;

var
  Frm_Sen_Int: TFrm_Sen_Int;
  mValidarClick: Boolean=True;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_Sen_Int.S00Change(Sender: TObject);
begin
if S00.Modified then
   begin
   G00.Enabled:=True;
   SB_AplicarTodos.Enabled:=true;
   end;

end;

procedure TFrm_Sen_Int.G00Click(Sender: TObject);
begin
If S00.Text<>C00.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C00.SetFocus;
   end
else
   begin
   fSenIntGravar(0,ValInt(MCODUSR.Text), S00.Text,'S');
   S00.Text:='';
   C00.Text:='';
   G00.Enabled:=False;
   SB_AplicarTodos.Enabled:=false;
   end;


end;

function fsenintGravar(pCodigo,pCodUsr: Integer; pNovaSenha,Pcritica: String): Boolean;
var
query_par02: tQuery;

begin
result:=true;

query_par02:=tQuery.Create(nil);
query_par02.DatabaseName:='SG_ASSOC';


if DM4.Tb_ParGer02PG2SENINTUSR.AsInteger<>1 then
  pcodusr:=0;

Query_par02.close;
Query_par02.sql.clear;
Query_par02.sql.Add('Select count(*) from CADPAR02 '
                  +' where (PA2CODEMP=:CODEMP or PA2CODEMP=:CODEMP_FILIAL) and '
                  +' PA2CODIGO=:CODIGO and PA2CODUSR=:CODUSR ');
Query_par02.parambyName('CODEMP').asinteger :=codemp;
if codemp>100 then
   Query_par02.parambyName('CODEMP_FILIAL').asinteger :=codemp-100
else
   Query_par02.parambyName('CODEMP_FILIAL').asinteger :=codemp+100;

Query_par02.parambyName('CODIGO').asinteger :=pcodigo;
Query_par02.parambyName('CODUSR').asinteger :=pcodusr;
try
   query_par02.open;
except
   result:=false;
   freeandnil(query_par02);
   exit;
   end;
if query_par02.fields[0].asinteger<1 then
   begin
   Query_par02.close;
   Query_par02.sql.clear;
   Query_par02.sql.Add('Insert into CADPAR02 ('
                      +'PA2CODEMP '
                      +',PA2CODIGO '
                      +',PA2CODUSR '
                      +',PA2SENHA '
                      +',PA2PDSN '
                      +') values ('
                      +':PA2CODEMP '
                      +',:PA2CODIGO '
                      +',:PA2CODUSR '
                      +',:PA2SENHA '
                      +',:PA2PDSN '
                      +')');
   Query_par02.parambyName('PA2CODEMP').asinteger :=codemp;
   if codemp>100 then
      Query_par02.parambyName('PA2CODEMP').asinteger :=codemp-100
   else
      Query_par02.parambyName('PA2CODEMP').asinteger :=codemp;
   Query_par02.parambyName('PA2CODIGO').asinteger    :=pcodigo;
   Query_par02.parambyName('PA2CODUSR').asinteger    :=pcodusr;
   Query_par02.parambyName('PA2SENHA').asstring      :=Crip(pNovaSenha,pCodUsr);
   Query_par02.parambyName('PA2PDSN').asstring       :=PCritica;

//   MessageDlg('GRAVANDO SENHA ORIGINAL '+pNovaSenha+' USUARIO '+IntToStr(pCodUsr) +' criptografada '+Crip(pNovaSenha,pCodUsr),mtInformation,[mbOk],0);

   try
      query_par02.execsql;
      fdm1startcommit;
   except
      result:=false;
      freeandnil(query_par02);
      exit;
      end;
   end
else
   begin
   Query_par02.close;
   Query_par02.sql.clear;
   Query_par02.sql.Add('Update CADPAR02 set PA2SENHA=:SENHA, PA2PDSN=:PDSN '
                     +' where (PA2CODEMP=:CODEMP or PA2CODEMP=:CODEMP_FILIAL) and '
                     +' PA2CODIGO=:CODIGO and PA2CODUSR=:CODUSR ');
   Query_par02.parambyName('SENHA').asstring  :=Crip(pNovaSenha,pCodUsr);
   Query_par02.parambyName('PDSN').asstring   :=PCritica;
   Query_par02.parambyName('CODEMP').asinteger :=codemp;
   if codemp>100 then
      Query_par02.parambyName('CODEMP_FILIAL').asinteger :=codemp-100
   else
      Query_par02.parambyName('CODEMP_FILIAL').asinteger :=codemp+100;
   Query_par02.parambyName('CODIGO').asinteger    :=pcodigo;
   Query_par02.parambyName('CODUSR').asinteger    :=pcodusr;
   try
      query_par02.execsql;
      fdm1startcommit;
   except
      result:=false;
      freeandnil(query_par02);
      exit;
      end;
   end;
freeandnil(query_par02);
end;

procedure TFrm_Sen_Int.PS01Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'1');
   If ((PS01.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS01.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G01.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S01Change(Sender: TObject);
begin
if S01.Modified then G01.Enabled:=True;

end;

procedure TFrm_Sen_Int.G01Click(Sender: TObject);
begin
If S01.Text<>C01.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C01.SetFocus;
   end
else
   begin
   fSenIntGravar(1,ValInt(MCODUSR.Text),S01.Text,iif(PS01.CheCked,'S','N'));
   G01.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS02Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'2');
   If ((PS02.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS02.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G02.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS03Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'3');
   If ((PS03.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS03.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G03.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS04Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'4');
   If ((PS04.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS04.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G04.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.PS08Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'8');
   If ((PS08.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS08.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G08.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS13Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'13');
   If ((PS13.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS13.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G13.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS17Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'17');
   If ((PS17.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS17.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G17.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS21Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'21');
   If ((PS21.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS21.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G21.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS22Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'22');
   If ((PS22.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS22.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G22.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS14Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'14');
   If ((PS14.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS14.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G14.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS18Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'18');
   If ((PS18.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS18.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G18.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS05Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'05');
   If ((PS05.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS05.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G05.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS06Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'6');
   If ((PS06.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS06.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G06.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.PS07Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'7');
   If ((PS07.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS07.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G07.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS09Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'9');
   If ((PS09.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS09.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G09.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS10Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'10');
   If ((PS10.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS10.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G10.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS19Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'19');
   If ((PS19.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS19.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G19.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS20Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'20');
   If ((PS20.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS20.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G20.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS11Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'11');
   If ((PS11.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS11.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G11.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.PS12Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'12');
   If ((PS12.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS12.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G12.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS15Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'15');
   If ((PS15.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS15.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G15.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS16Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'16');
   If ((PS16.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS16.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G16.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S02Change(Sender: TObject);
begin
if S02.Modified then G02.Enabled:=True;

end;

procedure TFrm_Sen_Int.S03Change(Sender: TObject);
begin
if S03.Modified then G03.Enabled:=True;

end;

procedure TFrm_Sen_Int.S04Change(Sender: TObject);
begin
if S04.Modified then G04.Enabled:=True;

end;

procedure TFrm_Sen_Int.S08Change(Sender: TObject);
begin
if S08.Modified then G08.Enabled:=True;

end;

procedure TFrm_Sen_Int.S13Change(Sender: TObject);
begin
if S13.Modified then G13.Enabled:=True;

end;

procedure TFrm_Sen_Int.S17Change(Sender: TObject);
begin
if S17.Modified then G17.Enabled:=True;

end;

procedure TFrm_Sen_Int.S21Change(Sender: TObject);
begin
if S21.Modified then G21.Enabled:=True;

end;

procedure TFrm_Sen_Int.S22Change(Sender: TObject);
begin
if S22.Modified then G22.Enabled:=True;

end;

procedure TFrm_Sen_Int.S14Change(Sender: TObject);
begin
if S14.Modified then G14.Enabled:=True;

end;

procedure TFrm_Sen_Int.S18Change(Sender: TObject);
begin
if S18.Modified then G18.Enabled:=True;

end;

procedure TFrm_Sen_Int.S05Change(Sender: TObject);
begin
if S05.Modified then G05.Enabled:=True;

end;

procedure TFrm_Sen_Int.S06Change(Sender: TObject);
begin
if S06.Modified then G06.Enabled:=True;

end;

procedure TFrm_Sen_Int.S07Change(Sender: TObject);
begin
if S07.Modified then G07.Enabled:=True;

end;

procedure TFrm_Sen_Int.S09Change(Sender: TObject);
begin
if S09.Modified then G09.Enabled:=True;

end;

procedure TFrm_Sen_Int.S10Change(Sender: TObject);
begin
if S10.Modified then G10.Enabled:=True;

end;

procedure TFrm_Sen_Int.S19Change(Sender: TObject);
begin
if S19.Modified then G19.Enabled:=True;

end;

procedure TFrm_Sen_Int.S20Change(Sender: TObject);
begin
if S20.Modified then G20.Enabled:=True;

end;

procedure TFrm_Sen_Int.S11Change(Sender: TObject);
begin
if S11.Modified then G11.Enabled:=True;

end;

procedure TFrm_Sen_Int.S12Change(Sender: TObject);
begin
if S12.Modified then G12.Enabled:=True;

end;

procedure TFrm_Sen_Int.S15Change(Sender: TObject);
begin
if S15.Modified then G15.Enabled:=True;

end;

procedure TFrm_Sen_Int.S16Change(Sender: TObject);
begin
if S16.Modified then G16.Enabled:=True;

end;

procedure TFrm_Sen_Int.G02Click(Sender: TObject);
begin
If S02.Text<>C02.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C02.SetFocus;
   end
else
   begin
   fSenIntGravar(2,ValInt(MCODUSR.Text),S02.Text,iif(PS02.CheCked,'S','N'));
   G02.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G03Click(Sender: TObject);
begin
If S03.Text<>C03.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C03.SetFocus;
   end
else
   begin
   fSenIntGravar(3,ValInt(MCODUSR.Text),S03.Text,iif(PS03.CheCked,'S','N'));
   G03.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G04Click(Sender: TObject);
begin
If S04.Text<>C04.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C04.SetFocus;
   end
else
   begin
   fSenIntGravar(4,ValInt(MCODUSR.Text),S04.Text,iif(PS04.CheCked,'S','N'));
   G04.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G08Click(Sender: TObject);
begin
If S08.Text<>C08.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C08.SetFocus;
   end
else
   begin
   fSenIntGravar(8,ValInt(MCODUSR.Text),S08.Text,iif(PS08.CheCked,'S','N'));
   G08.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G13Click(Sender: TObject);
begin
If S13.Text<>C13.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C13.SetFocus;
   end
else
   begin
   fSenIntGravar(13,ValInt(MCODUSR.Text),S13.Text,iif(PS13.CheCked,'S','N'));
   G13.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G17Click(Sender: TObject);
begin
If S17.Text<>C17.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C17.SetFocus;
   end
else
   begin
   fSenIntGravar(17,ValInt(MCODUSR.Text),S17.Text,iif(PS17.CheCked,'S','N'));
   G17.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G21Click(Sender: TObject);
begin
If S21.Text<>C21.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C21.SetFocus;
   end
else
   begin
   fSenIntGravar(21,ValInt(MCODUSR.Text),S21.Text,iif(PS21.CheCked,'S','N'));
   G21.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G22Click(Sender: TObject);
begin
If S22.Text<>C22.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C22.SetFocus;
   end
else
   begin
   fSenIntGravar(22,ValInt(MCODUSR.Text),S22.Text,iif(PS22.CheCked,'S','N'));
   G22.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G14Click(Sender: TObject);
begin
If S14.Text<>C14.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C14.SetFocus;
   end
else
   begin
   fSenIntGravar(14,ValInt(MCODUSR.Text),S14.Text,iif(PS14.CheCked,'S','N'));
   G14.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G18Click(Sender: TObject);
begin
If S18.Text<>C18.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C18.SetFocus;
   end
else
   begin
   fSenIntGravar(18,ValInt(MCODUSR.Text),S18.Text,iif(PS18.CheCked,'S','N'));
   G18.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G05Click(Sender: TObject);
begin
If S05.Text<>C05.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C05.SetFocus;
   end
else
   begin
   fSenIntGravar(5,ValInt(MCODUSR.Text),S05.Text,iif(PS05.CheCked,'S','N'));
   G05.Enabled:=False;
   end;
   

end;

procedure TFrm_Sen_Int.G06Click(Sender: TObject);
begin
If S06.Text<>C06.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C06.SetFocus;
   end
else
   begin
   fSenIntGravar(6,ValInt(MCODUSR.Text),S06.Text,iif(PS06.CheCked,'S','N'));
   G06.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G07Click(Sender: TObject);
begin
If S07.Text<>C07.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C07.SetFocus;
   end
else
   begin
   fSenIntGravar(7,ValInt(MCODUSR.Text),S07.Text,iif(PS07.CheCked,'S','N'));
   G07.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G09Click(Sender: TObject);
begin
If S09.Text<>C09.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C09.SetFocus;
   end
else
   begin
   fSenIntGravar(9,ValInt(MCODUSR.Text),S09.Text,iif(PS09.CheCked,'S','N'));
   G09.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G10Click(Sender: TObject);
begin
If S10.Text<>C10.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C10.SetFocus;
   end
else
   begin
   fSenIntGravar(10,ValInt(MCODUSR.Text),S10.Text,iif(PS10.CheCked,'S','N'));
   G10.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G19Click(Sender: TObject);
begin
If S19.Text<>C19.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C19.SetFocus;
   end
else
   begin
   fSenIntGravar(19,ValInt(MCODUSR.Text),S19.Text,iif(PS19.CheCked,'S','N'));
   G19.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G20Click(Sender: TObject);
begin
If S20.Text<>C20.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C20.SetFocus;
   end
else
   begin
   fSenIntGravar(20,ValInt(MCODUSR.Text),S20.Text,iif(PS20.CheCked,'S','N'));
   G20.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G11Click(Sender: TObject);
begin
If S11.Text<>C11.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C11.SetFocus;
   end
else
   begin
   fSenIntGravar(11,ValInt(MCODUSR.Text),S11.Text,iif(PS11.CheCked,'S','N'));
   G11.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G12Click(Sender: TObject);
begin
If S12.Text<>C12.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C12.SetFocus;
   end
else
   begin
   fSenIntGravar(12,ValInt(MCODUSR.Text),S12.Text,iif(PS12.CheCked,'S','N'));
   G12.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G15Click(Sender: TObject);
begin
If S15.Text<>C15.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C15.SetFocus;
   end
else
   begin
   fSenIntGravar(15,ValInt(MCODUSR.Text),S15.Text,iif(PS15.CheCked,'S','N'));
   G15.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G16Click(Sender: TObject);
begin
If S16.Text<>C16.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C16.SetFocus;
   end
else
   begin
   fSenIntGravar(16,ValInt(MCODUSR.Text),S16.Text,iif(PS16.CheCked,'S','N'));
   G16.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS23Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'23');
   If ((PS23.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS23.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G23.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S23Change(Sender: TObject);
begin
if S23.Modified then G23.Enabled:=True;

end;

procedure TFrm_Sen_Int.G23Click(Sender: TObject);
begin
If S23.Text<>C23.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C23.SetFocus;
   end
else
   begin
   fSenIntGravar(23,ValInt(MCODUSR.Text),S23.Text,iif(PS23.CheCked,'S','N'));
   G23.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS24Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'24');
   If ((PS24.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS24.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G24.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S24Change(Sender: TObject);
begin
if S24.Modified then G24.Enabled:=True;

end;

procedure TFrm_Sen_Int.G24Click(Sender: TObject);
begin
If S24.Text<>C24.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C24.SetFocus;
   end
else
   begin
   fSenIntGravar(24,ValInt(MCODUSR.Text),S24.Text,iif(PS24.CheCked,'S','N'));
   G24.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS25Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'25');
   If ((PS25.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS25.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G25.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S25Change(Sender: TObject);
begin
if S25.Modified then G25.Enabled:=True;

end;

procedure TFrm_Sen_Int.G25Click(Sender: TObject);
begin
If S25.Text<>C25.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C25.SetFocus;
   end
else
   begin
   fSenIntGravar(25,ValInt(MCODUSR.Text),S25.Text,iif(PS25.CheCked,'S','N'));
   G25.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS26Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'26');
   If ((PS26.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS26.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G26.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S26Change(Sender: TObject);
begin
if S26.Modified then G26.Enabled:=True;

end;

procedure TFrm_Sen_Int.G26Click(Sender: TObject);
begin
If S26.Text<>C26.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C26.SetFocus;
   end
else
   begin
   fSenIntGravar(26,ValInt(MCODUSR.Text),S26.Text,iif(PS26.CheCked,'S','N'));
   G26.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS27Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'27');
   If ((PS27.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS27.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G27.Enabled:=True;
   end;
end;

procedure TFrm_Sen_Int.S27Change(Sender: TObject);
begin
if S27.Modified then G27.Enabled:=True;

end;

procedure TFrm_Sen_Int.G27Click(Sender: TObject);
begin
If S27.Text<>C27.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C27.SetFocus;
   end
else
   begin
   fSenIntGravar(27,ValInt(MCODUSR.Text),S27.Text,iif(PS27.CheCked,'S','N'));
   G27.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS28Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'28');
   If ((PS28.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS28.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G28.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S28Change(Sender: TObject);
begin
if S28.Modified then G28.Enabled:=True;

end;

procedure TFrm_Sen_Int.G28Click(Sender: TObject);
begin
If S28.Text<>C28.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C28.SetFocus;
   end
else
   begin
   fSenIntGravar(28,ValInt(MCODUSR.Text),S28.Text,iif(PS28.CheCked,'S','N'));
   G28.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS29Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'29');
   If ((PS29.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS29.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G29.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S29Change(Sender: TObject);
begin
if S29.Modified then G29.Enabled:=True;

end;

procedure TFrm_Sen_Int.G29Click(Sender: TObject);
begin
If S29.Text<>C29.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C29.SetFocus;
   end
else
   begin
   fSenIntGravar(29,ValInt(MCODUSR.Text),S29.Text,iif(PS29.CheCked,'S','N'));
   G29.Enabled:=False;
   end;


end;

procedure TFrm_Sen_Int.PS30Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'30');
   If ((PS30.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS30.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G30.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S30Change(Sender: TObject);
begin
if S30.Modified then G30.Enabled:=True;

end;

procedure TFrm_Sen_Int.G30Click(Sender: TObject);
begin
If S30.Text<>C30.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C30.SetFocus;
   end
else
   begin
   fSenIntGravar(30,ValInt(MCODUSR.Text),S30.Text,iif(PS30.CheCked,'S','N'));
   G30.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS31Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'31');
   If ((PS31.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS31.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G31.Enabled:=True;
   end;
end;

procedure TFrm_Sen_Int.S31Change(Sender: TObject);
begin
if S31.Modified then G31.Enabled:=True;

end;

procedure TFrm_Sen_Int.G31Click(Sender: TObject);
begin
If S31.Text<>C31.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C31.SetFocus;
   end
else
   begin
   fSenIntGravar(31,ValInt(MCODUSR.Text),S31.Text,iif(PS31.CheCked,'S','N'));
   G31.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS32Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'32');
   If ((PS32.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS32.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G32.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS33Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'33');
   If ((PS33.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS33.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G33.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS34Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'34');
   If ((PS34.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS34.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G34.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.PS35Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'35');
   If ((PS35.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS35.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G35.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S32Change(Sender: TObject);
begin
if S32.Modified then G32.Enabled:=True;

end;

procedure TFrm_Sen_Int.S33Change(Sender: TObject);
begin
if S33.Modified then G33.Enabled:=True;

end;

procedure TFrm_Sen_Int.S34Change(Sender: TObject);
begin
if S34.Modified then G34.Enabled:=True;

end;

procedure TFrm_Sen_Int.S35Change(Sender: TObject);
begin
if S35.Modified then G35.Enabled:=True;

end;

procedure TFrm_Sen_Int.G32Click(Sender: TObject);
begin
If S32.Text<>C32.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C32.SetFocus;
   end
else
   begin
   fSenIntGravar(32,ValInt(MCODUSR.Text),S32.Text,iif(PS32.CheCked,'S','N'));
   G32.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G33Click(Sender: TObject);
begin
If S33.Text<>C33.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C33.SetFocus;
   end
else
   begin
   fSenIntGravar(33,ValInt(MCODUSR.Text),S33.Text,iif(PS33.CheCked,'S','N'));
   G33.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G34Click(Sender: TObject);
begin
If S34.Text<>C34.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C34.SetFocus;
   end
else
   begin
   fSenIntGravar(34,ValInt(MCODUSR.Text),S34.Text,iif(PS34.CheCked,'S','N'));
   G34.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G35Click(Sender: TObject);
begin
If S35.Text<>C35.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C35.SetFocus;
   end
else
   begin
   fSenIntGravar(35,ValInt(MCODUSR.Text),S35.Text,iif(PS35.CheCked,'S','N'));
   G35.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS36Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'36');
   If ((PS36.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS36.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G36.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S36Change(Sender: TObject);
begin
if S36.Modified then G36.Enabled:=True;

end;

procedure TFrm_Sen_Int.G36Click(Sender: TObject);
begin
If S36.Text<>C36.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C36.SetFocus;
   end
else
   begin
   fSenIntGravar(36,ValInt(MCODUSR.Text),S36.Text,iif(PS36.CheCked,'S','N'));
   G36.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS37Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'37');
   If ((PS37.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS37.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G37.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S37Change(Sender: TObject);
begin
if S37.Modified then G37.Enabled:=True;

end;

procedure TFrm_Sen_Int.G37Click(Sender: TObject);
begin
If S37.Text<>C37.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C37.SetFocus;
   end
else
   begin
   fSenIntGravar(37,ValInt(MCODUSR.Text),S37.Text,iif(PS37.CheCked,'S','N'));
   G37.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS38Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'38');
   If ((PS38.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS38.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G38.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S38Change(Sender: TObject);
begin
if S38.Modified then G38.Enabled:=True;

end;

procedure TFrm_Sen_Int.G38Click(Sender: TObject);
begin
If S38.Text<>C38.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C38.SetFocus;
   end
else
   begin
   fSenIntGravar(38,ValInt(MCODUSR.Text),S38.Text,iif(PS38.CheCked,'S','N'));
   G38.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS39Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'39');
   If ((PS39.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS39.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G39.Enabled:=True;
   end;   
end;

procedure TFrm_Sen_Int.S39Change(Sender: TObject);
begin
if S39.Modified then G39.Enabled:=True;

end;

procedure TFrm_Sen_Int.G39Click(Sender: TObject);
begin
If S39.Text<>C39.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C39.SetFocus;
   end
else
   begin
   fSenIntGravar(39,ValInt(MCODUSR.Text),S39.Text,iif(PS39.CheCked,'S','N'));
   G39.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS40Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'40');
   If ((PS40.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS40.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G40.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S40Change(Sender: TObject);
begin
if S40.Modified then G40.Enabled:=True;

end;

procedure TFrm_Sen_Int.G40Click(Sender: TObject);
begin
If S40.Text<>C40.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C40.SetFocus;
   end
else
   begin
   fSenIntGravar(40,ValInt(MCODUSR.Text),S40.Text,iif(PS40.CheCked,'S','N'));
   G40.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS41Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'41');
   If ((PS41.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS41.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G41.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S41Change(Sender: TObject);
begin
if S41.Modified then G41.Enabled:=True;

end;

procedure TFrm_Sen_Int.G41Click(Sender: TObject);
begin
If S41.Text<>C41.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C41.SetFocus;
   end
else
   begin
   fSenIntGravar(41,ValInt(MCODUSR.Text),S41.Text,iif(PS41.CheCked,'S','N'));
   G41.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS42Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'42');
   If ((PS42.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS42.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G42.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S42Change(Sender: TObject);
begin
if S42.Modified then G42.Enabled:=True;

end;

procedure TFrm_Sen_Int.G42Click(Sender: TObject);
begin
If S42.Text<>C42.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C42.SetFocus;
   end
else
   begin
   fSenIntGravar(42,ValInt(MCODUSR.Text),S42.Text,iif(PS42.CheCked,'S','N'));
   G42.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS43Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'43');
   If ((PS43.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS43.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G43.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S43Change(Sender: TObject);
begin
if S43.Modified then G43.Enabled:=True;

end;

procedure TFrm_Sen_Int.G43Click(Sender: TObject);
begin
If S43.Text<>C43.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C43.SetFocus;
   end
else
   begin
   fSenIntGravar(43,ValInt(MCODUSR.Text),S43.Text,iif(PS43.CheCked,'S','N'));
   G43.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS44Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'44');
   If ((PS44.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS44.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G44.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S44Change(Sender: TObject);
begin
if S44.Modified then G44.Enabled:=True;

end;

procedure TFrm_Sen_Int.G44Click(Sender: TObject);
begin
If S44.Text<>C44.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C44.SetFocus;
   end
else
   begin
   fSenIntGravar(44,ValInt(MCODUSR.Text),S44.Text,iif(PS44.CheCked,'S','N'));
   G44.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODUSR.Text:=fChamaUsr(0,'frm_Sen_lnt',Key);
   if trim(MCODUSR.Text)<>'' then
      MCODUSRExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Sen_Int.MCODUSRExit(Sender: TObject);
begin
MCODUSR.Text:=fdeixanum2(MCODUSR.Text);
if trim(MCODUSR.Text)='' then
   exit
else
   begin
   if flcadusr(1,0,Trim(MCODUSR.Text)) then
      NOMUSR.Text:=DM4.Tb_UsrNOMUSR.Value
   else
      begin
      fMensagem('Usuário não Cadastrado!',0,['0'],0);
      MCODUSR.SetFocus;
      exit;
      end;
   end;
mValidarClick:=False;
fAtualizarDados(ValInt(MCODUSR.Text));
mValidarClick:=True;

end;

procedure TFrm_Sen_Int.SB_AplicarTodosClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Aplicar a Senha Para Todos os Ítens?',0,['1','2'],2)<>mryes then
   exit;
If S00.Text<>C00.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C00.SetFocus;
   end
else
   begin
   fSenIntGravar(0,ValInt(MCODUSR.Text), S00.Text,'S');
   if flcadpar02(1,0,ValInt(MCODUSR.Text),'') then
      begin
      While not DM4.Tb_Par02.Eof do
         begin
         DM4.Tb_Par02.Edit;
         DM4.Tb_Par02PA2SENHA.Value :=Crip(C00.Text,ValInt(MCODUSR.Text));
         DM4.Tb_Par02.Post;
         DM4.Tb_Par02.Next;
         end;
      end;
   S00.Text:='';
   C00.Text:='';
   G00.Enabled:=False;
   SB_AplicarTodos.Enabled:=false;
   end;

end;

function TFrm_Sen_Int.fAtualizarDados(pCodusr: Integer): Boolean;
begin
fgravpar02(0,pCodusr);
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select PA2CODEMP,PA2CODUSR,PA2CODIGO,PA2PDSN,PA2SENHA '
                  +' from CADPAR02 ');
DM1.Query4.SQL.Add(' where PA2CODUSR=0'+IntToStr(pCodusr));
if not DM1.Qr_TID.Locate('TINOME','CADUSR',[]) then
   DM1.Query4.SQL.Add(' and PA2CODEMP=0'+IntToStr(codemp));
DM1.Query4.SQL.Add(' order by PA2CODEMP,PA2CODUSR,PA2CODIGO');
DM1.Query4.Open;



with Frm_Sen_Int do
   begin
   if DM1.Query4.Locate('PA2CODIGO',1,[]) then
      PS01.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',2,[]) then
      PS02.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',3,[]) then
      PS03.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',4,[]) then
      PS04.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',5,[]) then
      PS05.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',6,[]) then
      PS06.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',7,[]) then
      PS07.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',8,[]) then
      PS08.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',9,[]) then
      PS09.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',10,[]) then
      PS10.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',11,[]) then
      PS11.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',12,[]) then
      PS12.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',13,[]) then
      PS13.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',14,[]) then
      PS14.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',15,[]) then
      PS15.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',16,[]) then
      PS16.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',17,[]) then
      PS17.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',18,[]) then
      PS18.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',19,[]) then
      PS19.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',20,[]) then
      PS20.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',21,[]) then
      PS21.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',22,[]) then
      PS22.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',23,[]) then
      PS23.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',24,[]) then
      PS24.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',25,[]) then
      PS25.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',26,[]) then
      PS26.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',27,[]) then
      PS27.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',28,[]) then
      PS28.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',29,[]) then
      PS29.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',30,[]) then
      PS30.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',31,[]) then
      PS31.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',32,[]) then
      PS32.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',33,[]) then
      PS33.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',34,[]) then
      PS34.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',35,[]) then
      PS35.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',36,[]) then
      PS36.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',37,[]) then
      PS37.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',38,[]) then
      PS38.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',39,[]) then
      PS39.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',40,[]) then
      PS40.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',41,[]) then
      PS41.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',42,[]) then
      PS42.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',43,[]) then
      PS43.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',44,[]) then
      PS44.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',45,[]) then
      PS45.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',46,[]) then
      PS46.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',47,[]) then
      PS47.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',48,[]) then
      PS48.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',49,[]) then
      PS49.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',50,[]) then
      PS50.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',51,[]) then
      PS51.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',52,[]) then
      PS52.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',53,[]) then
      PS53.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',54,[]) then
      PS54.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',55,[]) then
      PS55.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',56,[]) then
      PS56.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',57,[]) then
      PS57.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',58,[]) then
      PS58.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',59,[]) then
      PS59.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);

      // DO 54 AO 60 JA ESTA SENDO UTILIZADO EM ALGUM LUGAR VER NA CADPAR02

   if DM1.Query4.Locate('PA2CODIGO',61,[]) then
      PS61.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',62,[]) then
      PS62.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',63,[]) then
      PS63.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',64,[]) then
      PS64.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',65,[]) then
      PS65.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',66,[]) then
      PS66.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',67,[]) then
      PS67.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',68,[]) then
      PS68.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',69,[]) then
      PS69.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',70,[]) then
      PS70.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',71,[]) then
      PS71.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',72,[]) then
      PS72.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',73,[]) then
      PS73.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',74,[]) then
      PS74.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',75,[]) then
      PS75.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);
   if DM1.Query4.Locate('PA2CODIGO',76,[]) then
      PS76.Checked:=IIF(DM1.Query4.Fieldbyname('PA2PDSN').AsString='S',True,False);


  if flfilpad(pCodusr,'_SI_LIC','CDIASBLQLIC') then
    if not DM4.Tb_FilPad2FPVALOR.IsNull then
      cDiasBlqLic.Text := DM4.Tb_FilPad2FPVALOR.AsString;
   end;

S01.Clear;
S02.Clear;
S03.Clear;
S04.Clear;
S05.Clear;
S06.Clear;
S07.Clear;
S08.Clear;
S09.Clear;
S10.Clear;


S11.Clear;
S12.Clear;
S13.Clear;
S14.Clear;
S15.Clear;
S16.Clear;
S17.Clear;
S18.Clear;
S19.Clear;
S20.Clear;

S21.Clear;
S22.Clear;
S23.Clear;
S24.Clear;
S25.Clear;
S26.Clear;
S27.Clear;
S28.Clear;
S29.Clear;
S30.Clear;

S41.Clear;
S42.Clear;
S43.Clear;
S44.Clear;
S45.Clear;
S46.Clear;
S47.Clear;
S48.Clear;
S49.Clear;
S50.Clear;

S51.Clear;
S52.Clear;
S53.Clear;
S54.Clear;
S55.Clear;
S56.Clear;
S57.Clear;
S58.Clear;
S59.Clear;
//S60.Clear;


S61.Clear;
S62.Clear;
S63.Clear;
S64.Clear;
S65.Clear;
S66.Clear;
S67.Clear;
S68.Clear;
S69.Clear;
S70.Clear;

S71.Clear;
S72.Clear;
S73.Clear;
S74.Clear;
S75.Clear;
S76.Clear;


C01.Clear;
C02.Clear;
C03.Clear;
C04.Clear;
C05.Clear;
C06.Clear;
C07.Clear;
C08.Clear;
C09.Clear;
C10.Clear;


C11.Clear;
C12.Clear;
C13.Clear;
C14.Clear;
C15.Clear;
C16.Clear;
C17.Clear;
C18.Clear;
C19.Clear;
C20.Clear;

C21.Clear;
C22.Clear;
C23.Clear;
C24.Clear;
C25.Clear;
C26.Clear;
C27.Clear;
C28.Clear;
C29.Clear;
C30.Clear;

C41.Clear;
C42.Clear;
C43.Clear;
C44.Clear;
C45.Clear;
C46.Clear;
C47.Clear;
C48.Clear;
C49.Clear;
C50.Clear;

C51.Clear;
C52.Clear;
C53.Clear;
C54.Clear;
C55.Clear;
C56.Clear;
C57.Clear;
C58.Clear;
C59.Clear;
//C60.Clear;


C61.Clear;
C62.Clear;
C63.Clear;
C64.Clear;
C65.Clear;
C66.Clear;
C67.Clear;
C68.Clear;
C69.Clear;
C70.Clear;

C71.Clear;
C72.Clear;
C73.Clear;
C74.Clear;
C75.Clear;
C76.Clear;



end;

procedure TFrm_Sen_Int.S72Change(Sender: TObject);
begin
if S72.Modified then G72.Enabled:=True;


end;
procedure TFrm_Sen_Int.FormCreate(Sender: TObject);
begin
{
Application.Createform(TFrm_Stru, Frm_Stru);
mStru_ori:='frm_sen_int';

Frm_Stru.bbAjustaDupPar.Click;
Frm_Stru.Free;
Frm_Stru:=nil;
}
if DM4.Tb_ParGer02PG2SENINTUSR.AsInteger=1 then
   begin
   lbl_usuario.Visible  :=true;
   MCODUSR.Visible      :=true;
   NOMUSR.Visible       :=true;
   lbl_senMaster.Visible:=true;
   S00.Visible          :=true;
   C00.Visible          :=true;
   G00.Visible          :=true;
   DM1.Query1.close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.Add('Delete from CADPAR02 where PA2CODUSR=0');
   try
      DM1.Query1.execsql;
      fdm1StartCommit;
   except
      DM1.Query1.sql.savetofile(mpastatemp + 'SQL.TXT');
      end;

   end
else
   begin
   lbl_usuario.Visible  :=false;
   MCODUSR.Visible      :=false;
   NOMUSR.Visible       :=false;
   lbl_senMaster.Visible:=true;
   S00.Visible          :=true;
   C00.Visible          :=true;
   G00.Visible          :=true;
   DM1.Query1.close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.Add('Delete from CADPAR02 where PA2CODUSR<>0');
   try
      DM1.Query1.execsql;
      fdm1StartCommit;
   except
      DM1.Query1.sql.savetofile(mpastatemp + 'SQL.TXT');
      end;

   mValidarClick:=False;
   fAtualizarDados(0);
   mValidarClick:=True;
   end;

end;

procedure TFrm_Sen_Int.S45Change(Sender: TObject);
begin
if S45.Modified then G45.Enabled:=True;

end;

procedure TFrm_Sen_Int.PS45Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'45');
   If ((PS45.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS45.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G45.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.G45Click(Sender: TObject);
begin
If S45.Text<>C45.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C45.SetFocus;
   end
else
   begin
   fSenIntGravar(45,ValInt(MCODUSR.Text),S45.Text,iif(PS45.CheCked,'S','N'));
   G45.Enabled:=False;
   end;


end;

procedure TFrm_Sen_Int.PS46Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'46');
   If ((PS46.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS46.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G46.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S46Change(Sender: TObject);
begin
if S46.Modified then G46.Enabled:=True;

end;

procedure TFrm_Sen_Int.G46Click(Sender: TObject);
begin
If S46.Text<>C46.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C46.SetFocus;
   end
else
   begin
   fSenIntGravar(46,ValInt(MCODUSR.Text),S46.Text,iif(PS46.CheCked,'S','N'));
   G46.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Sen_Int.PS47Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'47');
   If ((PS47.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS47.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G47.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S47Change(Sender: TObject);
begin
if S47.Modified then G47.Enabled:=True;

end;

procedure TFrm_Sen_Int.G47Click(Sender: TObject);
begin
If S47.Text<>C47.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C47.SetFocus;
   end
else
   begin
   fSenIntGravar(47,ValInt(MCODUSR.Text),S47.Text,iif(PS47.CheCked,'S','N'));
   G47.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS48Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'48');
   If ((PS48.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS48.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G48.Enabled:=True;
   end;   

end;

procedure TFrm_Sen_Int.S48Change(Sender: TObject);
begin
if S48.Modified then G48.Enabled:=True;

end;

procedure TFrm_Sen_Int.G48Click(Sender: TObject);
begin
If S48.Text<>C48.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C48.SetFocus;
   end
else
   begin
   fSenIntGravar(48,ValInt(MCODUSR.Text),S48.Text,iif(PS48.CheCked,'S','N'));
   G48.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS49Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'49');
   If ((PS49.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS49.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G49.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S49Change(Sender: TObject);
begin
if S49.Modified then G49.Enabled:=True;

end;

procedure TFrm_Sen_Int.G49Click(Sender: TObject);
begin
If S49.Text<>C49.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C49.SetFocus;
   end
else
   begin
   fSenIntGravar(49,ValInt(MCODUSR.Text),S49.Text,iif(PS49.CheCked,'S','N'));
   G49.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PC01Enter(Sender: TObject);
begin
if MCODUSR.Visible then
   begin
   if fSonumero(MCODUSR.Text)<=0 then
      begin
      fmensagem('Favor Selecionar um Usuário válido!',0,['0'],0);
      MCODUSR.SetFocus;
      end
   else
      MCODUSRExit(Self);
   end;
end;

procedure TFrm_Sen_Int.FormActivate(Sender: TObject);
begin
if MCODUSR.Visible then
   MCODUSR.SetFocus;
end;

procedure TFrm_Sen_Int.PS50Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'50');
   If ((PS50.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS50.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G50.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S50Change(Sender: TObject);
begin
if S50.Modified then G50.Enabled:=True;

end;

procedure TFrm_Sen_Int.G50Click(Sender: TObject);
begin
If S50.Text<>C50.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C50.SetFocus;
   end
else
   begin
   fSenIntGravar(50,ValInt(MCODUSR.Text),S50.Text,iif(PS50.CheCked,'S','N'));
   G50.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.S51Change(Sender: TObject);
begin
if S51.Modified then G51.Enabled:=True;

end;

procedure TFrm_Sen_Int.G51Click(Sender: TObject);
begin
If S51.Text<>C51.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C51.SetFocus;
   end
else
   begin
   fSenIntGravar(51,ValInt(MCODUSR.Text),S51.Text,iif(PS51.CheCked,'S','N'));
   G51.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS51Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'51');
   If ((PS51.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS51.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G51.Enabled:=True;
   end;


end;

procedure TFrm_Sen_Int.PS52Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'52');
  If ((PS52.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
     or (not (PS52.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
     G52.Enabled:=True;
  end;
end;

procedure TFrm_Sen_Int.S52Change(Sender: TObject);
begin
if S52.Modified then G52.Enabled:=True;
end;

procedure TFrm_Sen_Int.G52Click(Sender: TObject);
begin
If S52.Text<>C52.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C52.SetFocus;
   end
else
   begin
   fSenIntGravar(52,ValInt(MCODUSR.Text),S52.Text,iif(PS52.CheCked,'S','N'));
   G52.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS53Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'53');
   If ((PS53.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS53.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G53.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S53Change(Sender: TObject);
begin
if S53.Modified then G53.Enabled:=True;

end;

procedure TFrm_Sen_Int.G53Click(Sender: TObject);
begin
If S53.Text<>C53.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C53.SetFocus;
   end
else
   begin
   fSenIntGravar(53,ValInt(MCODUSR.Text),S53.Text,iif(PS53.CheCked,'S','N'));
   G53.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G61Click(Sender: TObject);
begin
If S61.Text<>C61.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C61.SetFocus;
   end
else
   begin
   fSenIntGravar(61,ValInt(MCODUSR.Text),S61.Text,iif(PS61.CheCked,'S','N'));
   G61.Enabled:=False;
   end;
end;

procedure TFrm_Sen_Int.PS61Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'61');
  If ((PS61.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
     or (not (PS61.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
     G61.Enabled:=True;
  end;

end;

procedure TFrm_Sen_Int.S61Change(Sender: TObject);
begin
if S61.Modified then G61.Enabled:=True;
end;


procedure TFrm_Sen_Int.PS62Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'62');
   If ((PS62.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS62.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G62.Enabled:=True;
   end;
end;

procedure TFrm_Sen_Int.S62Change(Sender: TObject);
begin
if S62.Modified then G62.Enabled:=True;
end;

procedure TFrm_Sen_Int.G62Click(Sender: TObject);
begin
If S62.Text<>C62.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C62.SetFocus;
   end
else
   begin
   fSenIntGravar(62,ValInt(MCODUSR.Text),S62.Text,iif(PS62.CheCked,'S','N'));
   G62.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.S63Change(Sender: TObject);
begin
if S63.Modified then G63.Enabled:=True;

end;

procedure TFrm_Sen_Int.G63Click(Sender: TObject);
begin
If S63.Text<>C63.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C63.SetFocus;
   end
else
   begin
   fSenIntGravar(63,ValInt(MCODUSR.Text),S63.Text,iif(PS63.CheCked,'S','N'));
   G63.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS63Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'63');
   If ((PS63.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS63.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G63.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S54Change(Sender: TObject);
begin
if S54.Modified then G54.Enabled:=True;

end;

procedure TFrm_Sen_Int.G54Click(Sender: TObject);
begin
If S54.Text<>C54.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C54.SetFocus;
   end
else
   begin
   fSenIntGravar(54,ValInt(MCODUSR.Text),S54.Text,iif(PS54.CheCked,'S','N'));
   G54.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS54Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'54');
   If ((PS54.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS54.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G54.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.PS55Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'55');
   If ((PS55.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS55.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G55.Enabled:=True;
   end;
end;

procedure TFrm_Sen_Int.S55Change(Sender: TObject);
begin
if S55.Modified then G55.Enabled:=True;
end;

procedure TFrm_Sen_Int.G55Click(Sender: TObject);
begin
If S55.Text<>C55.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C55.SetFocus;
   end
else
   begin
   fSenIntGravar(55,ValInt(MCODUSR.Text),S55.Text,iif(PS55.CheCked,'S','N'));
   G55
   .Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.S64Change(Sender: TObject);
begin
if S64.Modified then G64.Enabled:=True;
end;

procedure TFrm_Sen_Int.G64Click(Sender: TObject);
begin
If S64.Text<>C64.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C64.SetFocus;
   end
else
   begin
   fSenIntGravar(64,ValInt(MCODUSR.Text),S64.Text,iif(PS64.CheCked,'S','N'));
   G64.Enabled:=False;
   end;
end;

procedure TFrm_Sen_Int.PS64Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'64');
   If ((PS64.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS64.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G64.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.PS56Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'56');
   If ((PS56.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS56.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G56.Enabled:=True;
   end;
end;

procedure TFrm_Sen_Int.S56Change(Sender: TObject);
begin
if S56.Modified then G56.Enabled:=True;
end;

procedure TFrm_Sen_Int.G56Click(Sender: TObject);
begin
If S56.Text<>C56.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C56.SetFocus;
   end
else
   begin
   fSenIntGravar(56,ValInt(MCODUSR.Text),S56.Text,iif(PS56.CheCked,'S','N'));
   G56.Enabled:=False;
   end;
end;

procedure TFrm_Sen_Int.PS57Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'57');
   If ((PS57.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS57.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G57.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S57Change(Sender: TObject);
begin
if S57.Modified then G57.Enabled:=True;

end;

procedure TFrm_Sen_Int.G57Click(Sender: TObject);
begin
If S57.Text<>C57.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C57.SetFocus;
   end
else
   begin
   fSenIntGravar(57,ValInt(MCODUSR.Text),S57.Text,iif(PS57.CheCked,'S','N'));
   G57.Enabled:=False;
   end;
end;

procedure TFrm_Sen_Int.PS65Click(Sender: TObject);
begin

if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'65');
   If ((PS65.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS65.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G65.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S65Change(Sender: TObject);
begin
if S65.Modified then G65.Enabled:=True;

end;

procedure TFrm_Sen_Int.G65Click(Sender: TObject);
begin
If S65.Text<>C65.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C65.SetFocus;
   end
else
   begin
   fSenIntGravar(65,ValInt(MCODUSR.Text),S65.Text,iif(PS65.CheCked,'S','N'));
   G65.Enabled:=False;
   end;


end;

procedure TFrm_Sen_Int.S58Change(Sender: TObject);
begin
if S58.Modified then G58.Enabled:=True;
end;

procedure TFrm_Sen_Int.G58Click(Sender: TObject);
begin
If S58.Text<>C58.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C58.SetFocus;
   end
else
   begin
   fSenIntGravar(58,ValInt(MCODUSR.Text),S58.Text,iif(PS58.CheCked,'S','N'));
   G58.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.PS58Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'58');
   If ((PS58.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS58.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G58.Enabled:=True;
   end;


end;

procedure TFrm_Sen_Int.PS59Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'59');
  If ((PS59.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
    or (not (PS59.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
    G59.Enabled:=True;
  end;
end;

procedure TFrm_Sen_Int.S59Change(Sender: TObject);
begin
if S59.Modified then G59.Enabled:=True;
end;

procedure TFrm_Sen_Int.G59Click(Sender: TObject);
begin
if S59.Text<>C59.Text then
  begin
  fMensagem('Confirmação Incorreta!',0,['0'],0);
  C59.SetFocus;
  end
else
  begin
  fSenIntGravar(59,ValInt(MCODUSR.Text),S59.Text,iif(PS59.CheCked,'S','N'));
  G59.Enabled:=False;
  end;
end;

procedure TFrm_Sen_Int.G66Click(Sender: TObject);
begin
if S66.Text<>C66.Text then
  begin
  fMensagem('Confirmação Incorreta!',0,['0'],0);
  C66.SetFocus;
  end
else
  begin
  fSenIntGravar(66,ValInt(MCODUSR.Text),S66.Text,iif(PS66.CheCked,'S','N'));
  G66.Enabled:=False;
  end;
end;

procedure TFrm_Sen_Int.PS66Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'66');
  If ((PS66.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
    or (not (PS66.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
    G66.Enabled:=True;
  end;

end;

procedure TFrm_Sen_Int.S66Change(Sender: TObject);
begin
if S66.Modified then G66.Enabled:=True;
end;

procedure TFrm_Sen_Int.cDiasBlqLicExit(Sender: TObject);
begin
fDeletaPadroes(ValInt(MCODUSR.Text),'_SI_LIC','');
fGravaPadroes(ValInt(MCODUSR.Text),'CDIASBLQLIC','integer','_SI_LIC',cDiasBlqLic.Text);
end;

procedure TFrm_Sen_Int.PS67Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'67');
  If ((PS67.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
    or (not (PS67.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
    G67.Enabled:=True;
  end;

end;

procedure TFrm_Sen_Int.s67Change(Sender: TObject);
begin
if S67.Modified then
  G67.Enabled:=True;

end;

procedure TFrm_Sen_Int.G67Click(Sender: TObject);
begin
if S67.Text<>C67.Text then
  begin
  fMensagem('Confirmação Incorreta!',0,['0'],0);
  C67.SetFocus;
  end
else
  begin
  fSenIntGravar(67,ValInt(MCODUSR.Text),S67.Text,iif(PS67.CheCked,'S','N'));
  G67.Enabled:=False;
  end;
end;

procedure TFrm_Sen_Int.S68Change(Sender: TObject);
begin
if S68.Modified then G68.Enabled:=True;

end;

procedure TFrm_Sen_Int.G68Click(Sender: TObject);
begin
If S68.Text<>C68.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C68.SetFocus;
   end
else
   begin
   fSenIntGravar(68,ValInt(MCODUSR.Text),S68.Text,iif(PS68.CheCked,'S','N'));
   G68.Enabled:=False;
   end;


end;

procedure TFrm_Sen_Int.PS69Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'69');
  If ((PS69.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
    or (not (PS69.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
    G69.Enabled:=True;
  end;

end;

procedure TFrm_Sen_Int.s69Change(Sender: TObject);
begin
if S69.Modified then
  G69.Enabled:=True;

end;

procedure TFrm_Sen_Int.G69Click(Sender: TObject);
begin
if S69.Text<>C69.Text then
  begin
  fMensagem('Confirmação Incorreta!',0,['0'],0);
  C69.SetFocus;
  end
else
  begin
  fSenIntGravar(69,ValInt(MCODUSR.Text),S69.Text,iif(PS69.CheCked,'S','N'));
  G69.Enabled:=False;
  end;

end;

procedure TFrm_Sen_Int.PS70Click(Sender: TObject);
begin

if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'70');
   If ((PS70.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS70.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G70.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S70Change(Sender: TObject);
begin
if S70.Modified then G70.Enabled:=True;

end;

procedure TFrm_Sen_Int.G70Click(Sender: TObject);
begin
If S70.Text<>C70.Text then
   begin
   fMensagem('Confirmação Incorreta G70 !',0,['0'],0);
   C70.SetFocus;
   end
else
   begin
   fSenIntGravar(70,ValInt(MCODUSR.Text),S70.Text,iif(PS70.CheCked,'S','N'));
   G70.Enabled:=False;
   end;


end;

procedure TFrm_Sen_Int.PS71Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'71');
  If ((PS71.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
     or (not (PS71.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
     G71.Enabled:=True;
  end;

end;

procedure TFrm_Sen_Int.S71Change(Sender: TObject);
begin
if S71.Modified then G71.Enabled:=True;

end;

procedure TFrm_Sen_Int.G71Click(Sender: TObject);
begin
If S71.Text<>C71.Text then
   begin
   fMensagem('Confirmação Incorreta G71!',0,['0'],0);
   C71.SetFocus;
   end
else
   begin
   fSenIntGravar(71,ValInt(MCODUSR.Text),S71.Text,iif(PS71.CheCked,'S','N'));
   G71.Enabled:=False;
   end;

end;

procedure TFrm_Sen_Int.G72Click(Sender: TObject);
begin
If S72.Text<>C72.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C72.SetFocus;
   end
else
   begin
   fSenIntGravar(72,ValInt(MCODUSR.Text),S72.Text,iif(PS72.CheCked,'S','N'));
   G72.Enabled:=False;
   end;
end;

procedure TFrm_Sen_Int.PS72Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'72');
   If ((PS72.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS72.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G72.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.PS68Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'68');
   If ((PS68.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS68.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G68.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.G73Click(Sender: TObject);
begin
if S73.Text<>C73.Text then
  begin
  fMensagem('Confirmação Incorreta!',0,['0'],0);
  C73.SetFocus;
  end
else
  begin
  fSenIntGravar(73,ValInt(MCODUSR.Text),S73.Text,iif(PS73.CheCked,'S','N'));
  G73.Enabled:=False;
  end;

end;

procedure TFrm_Sen_Int.S73Change(Sender: TObject);
begin
if S73.Modified then
   G73.Enabled:=True;

end;

procedure TFrm_Sen_Int.PS73Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'73');
  If ((PS73.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
    or (not (PS73.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
    G73.Enabled:=True;
  end;

end;

procedure TFrm_Sen_Int.PS74Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'74');
  If ((PS74.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
    or (not (PS74.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
    G74.Enabled:=True;
  end;

end;

procedure TFrm_Sen_Int.S74Change(Sender: TObject);
begin
if S74.Modified then
   G74.Enabled:=True;

end;

procedure TFrm_Sen_Int.G74Click(Sender: TObject);
begin
if S74.Text<>C74.Text then
  begin
  fMensagem('Confirmação Incorreta!',0,['0'],0);
  C74.SetFocus;
  end
else
  begin
  fSenIntGravar(74,ValInt(MCODUSR.Text),S74.Text,iif(PS74.CheCked,'S','N'));
  G74.Enabled:=False;
  end;

end;

procedure TFrm_Sen_Int.PS75Click(Sender: TObject);
begin
if mValidarClick then
  begin
  flcadpar02(1,0,Valint(MCODUSR.Text),'75');
  If ((PS75.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
    or (not (PS75.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
    G75.Enabled:=True;
  end;

end;

procedure TFrm_Sen_Int.S75Change(Sender: TObject);
begin
if S75.Modified then
   G75.Enabled:=True;

end;

procedure TFrm_Sen_Int.G75Click(Sender: TObject);
begin
if S75.Text<>C75.Text then
  begin
  fMensagem('Confirmação Incorreta!',0,['0'],0);
  C75.SetFocus;
  end
else
  begin
  fSenIntGravar(75,ValInt(MCODUSR.Text),S75.Text,iif(PS75.CheCked,'S','N'));
  G75.Enabled:=False;
  end;

end;

procedure TFrm_Sen_Int.PS76Click(Sender: TObject);
begin
if mValidarClick then
   begin
   flcadpar02(1,0,Valint(MCODUSR.Text),'76');
   If ((PS76.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'S'))
      or (not (PS76.Checked) and (DM4.Tb_Par02PA2PDSN.Value<>'N')) then
      G76.Enabled:=True;
   end;

end;

procedure TFrm_Sen_Int.S76Change(Sender: TObject);
begin
if S76.Modified then G76.Enabled:=True;

end;

procedure TFrm_Sen_Int.G76Click(Sender: TObject);
begin
If S76.Text<>C76.Text then
   begin
   fMensagem('Confirmação Incorreta!',0,['0'],0);
   C76.SetFocus;
   end
else
   begin
   fSenIntGravar(76,ValInt(MCODUSR.Text),S76.Text,iif(PS76.CheCked,'S','N'));
   G76.Enabled:=False;
   end;

end;

end.
