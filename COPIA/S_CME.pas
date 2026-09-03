unit S_CME;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, S_DM1, db, dbtables, func,S_Stru,
  func2;

type
  TFrm_CME = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    CB_CADBCO: TCheckBox;
    CB_CADCCU: TCheckBox;
    CB_CADCFO: TCheckBox;
    CB_CADCLI: TCheckBox;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    CB_CADCON: TCheckBox;
    CB_CADCV: TCheckBox;
    CB_CADDEP: TCheckBox;
    CB_CADECF: TCheckBox;
    CB_CADFOR: TCheckBox;
    CB_CADIDV: TCheckBox;
    CB_CADPED: TCheckBox;
    CB_CADPAR: TCheckBox;
    CB_CADPRO: TCheckBox;
    CB_CADPV: TCheckBox;
    CB_CADTAB: TCheckBox;
    CB_CADTDV: TCheckBox;
    CB_CADTRA: TCheckBox;
    CB_CADUF: TCheckBox;
    CB_CADUSR: TCheckBox;
    CB_CADVEN: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    CB_CADEST: TCheckBox;
    BitBtn5: TBitBtn;
    CB_CADSUP: TCheckBox;
    CB_CADCOMD: TCheckBox;
    CB_PARLDR: TCheckBox;
    CB_CADRED: TCheckBox;
    CB_CADLOC: TCheckBox;
    CB_CADBAI: TCheckBox;
    CB_CADMOE: TCheckBox;
    CB_CADIMO: TCheckBox;
    CB_CADGIR: TCheckBox;
    CB_CADCPN: TCheckBox;
    CB_CADIMP_SYS: TCheckBox;
    CB_CADLOGSIS: TCheckBox;
    Label3: TLabel;
    bbMeioMarcado: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure bbMeioMarcadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function finseretid(pNome: String; pStatus: TCheckBox): Boolean;
function FRetornaStatusCheckBox(pTabela:String): TCheckBoxState;

var
  Frm_CME: TFrm_CME;

implementation

uses func_excecoes, StdConvs;

{$R *.dfm}

procedure TFrm_CME.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CME.FormCreate(Sender: TObject);
begin
DM1.Qr_TID.Close;
DM1.Qr_TID.SQL.Clear;
DM1.Qr_TID.SQL.Add('Select * from CADTID');
DM1.Qr_TID.open;
CB_CADBCO.State :=FRetornaStatusCheckBox('CADBCO');
CB_CADCCU.State :=FRetornaStatusCheckBox('CADCCU');
CB_CADCFO.State :=FRetornaStatusCheckBox('CADCFO');
CB_CADCLI.State :=FRetornaStatusCheckBox('CADCLI');
CB_CADCON.State :=FRetornaStatusCheckBox('CADCON');
CB_CADCV.State  :=FRetornaStatusCheckBox('CADCV');
CB_CADDEP.State :=FRetornaStatusCheckBox('CADDEP');
CB_CADECF.State :=FRetornaStatusCheckBox('CADECF');
CB_CADFOR.State :=FRetornaStatusCheckBox('CADFOR');
CB_CADIDV.State :=FRetornaStatusCheckBox('CADIDV');
CB_CADIMP_SYS.State :=FRetornaStatusCheckBox('CADIMP_SYS');
CB_CADPED.State :=FRetornaStatusCheckBox('CADPED');
CB_CADPAR.State :=FRetornaStatusCheckBox('CADPAR');
CB_CADPRO.State :=FRetornaStatusCheckBox('CADPRO');
CB_CADEST.State :=FRetornaStatusCheckBox('CADEST');
CB_CADPV.State  :=FRetornaStatusCheckBox('CADPV');
CB_CADTAB.State :=FRetornaStatusCheckBox('CADTAB');
CB_CADTDV.State :=FRetornaStatusCheckBox('CADTDV');
CB_CADTRA.State :=FRetornaStatusCheckBox('CADTRA');
CB_CADUF.State  :=FRetornaStatusCheckBox('CADUF');
CB_CADUSR.State :=FRetornaStatusCheckBox('CADUSR');
CB_CADVEN.State :=FRetornaStatusCheckBox('CADVEN');
CB_CADSUP.State :=FRetornaStatusCheckBox('CADSUP');
CB_CADCOMD.State:=FRetornaStatusCheckBox('CADCOMD');
CB_PARLDR.State :=FRetornaStatusCheckBox('PARLDR');
CB_CADRED.State :=FRetornaStatusCheckBox('CADRED');
CB_CADLOC.State :=FRetornaStatusCheckBox('CADLOC');
CB_CADBAI.State :=FRetornaStatusCheckBox('CADBAI');
CB_CADMOE.State :=FRetornaStatusCheckBox('CADMOE');
CB_CADIMO.State :=FRetornaStatusCheckBox('CADMAN');
CB_CADGIR.State :=FRetornaStatusCheckBox('CADGIR');
CB_CADCPN.State :=FRetornaStatusCheckBox('CADCPN');

end;

procedure TFrm_CME.BitBtn1Click(Sender: TObject);
begin
CB_CADBCO.Checked :=True;
CB_CADCCU.Checked :=True;
CB_CADCFO.Checked :=True;
CB_CADCLI.Checked :=True;
CB_CADCON.Checked :=True;
CB_CADCV.Checked  :=True;
CB_CADDEP.Checked :=True;
CB_CADECF.Checked :=True;
CB_CADFOR.Checked :=True;
CB_CADIDV.Checked :=True;
CB_CADLOGSIS.Checked :=True;
CB_CADIMP_SYS.Checked :=True;
CB_CADIDV.Checked :=TRUE;

CB_CADPED.Checked :=True;
CB_CADPAR.Checked :=True;
CB_CADPRO.Checked :=True;
CB_CADEST.Checked :=True;
CB_CADPV.Checked  :=True;
CB_CADTAB.Checked :=True;
CB_CADTDV.Checked :=True;
CB_CADTRA.Checked :=True;
CB_CADUF.Checked  :=True;
CB_CADUSR.Checked :=True;
CB_CADVEN.Checked :=True;
CB_CADSUP.Checked :=True;
CB_CADRED.Checked :=True;
CB_CADCOMD.Checked :=True;
CB_PARLDR.Checked:=True;
CB_CADLOC.Checked:=True;
CB_CADRED.Checked:=True;

end;

procedure TFrm_CME.BitBtn2Click(Sender: TObject);
begin
CB_CADBCO.Checked :=False;
CB_CADCCU.Checked :=False;
CB_CADCFO.Checked :=False;
CB_CADCLI.Checked :=False;
CB_CADCON.Checked :=False;
CB_CADCV.Checked  :=False;
CB_CADDEP.Checked :=False;
CB_CADECF.Checked :=False;
CB_CADFOR.Checked :=False;
CB_CADIDV.Checked :=False;
CB_CADIDV.Checked :=False;
CB_CADLOGSIS.Checked :=False;
CB_CADIMP_SYS.Checked :=False;

CB_CADPED.Checked :=False;
CB_CADPAR.Checked :=False;
CB_CADPRO.Checked :=False;
CB_CADEST.Checked :=False;
CB_CADPV.Checked  :=False;
CB_CADTAB.Checked :=False;
CB_CADTDV.Checked :=False;
CB_CADTRA.Checked :=False;
CB_CADUF.Checked  :=False;
CB_CADUSR.Checked :=False;
CB_CADVEN.Checked :=False;
CB_CADSUP.Checked :=False;
CB_CADRED.Checked :=False;
CB_CADLOC.Checked :=False;
CB_CADBAI.Checked :=False;
CB_CADMOE.Checked :=False;
CB_CADIMO.Checked :=False;
CB_CADGIR.Checked :=False;
CB_CADCPN.Checked :=False;
CB_CADCOMD.Checked :=False;
CB_PARLDR.Checked:=True;

end;

procedure TFrm_CME.BitBtn3Click(Sender: TObject);
var
mtab :array [1..44] of string;
mlid: Integer;
begin
mtab[01]:='CADACE';
mtab[02]:='CADAJU';
mtab[03]:='CADBCO';
mtab[04]:='CADCAR';
mtab[05]:='CADCCU';
mtab[06]:='CADCFO';
mtab[07]:='CADCHCP';
mtab[08]:='CADCHQ';
mtab[09]:='CADCLI';
mtab[10]:='CADCON';
mtab[11]:='CADCV';
mtab[12]:='RETIRA';
mtab[13]:='CADDEP';
mtab[14]:='CADECF';
mtab[15]:='CADFOR';
mtab[16]:='CADGRU';
mtab[17]:='CADIDV';
mtab[18]:='RETIRA';
mtab[19]:='RETIRA';
mtab[20]:='RETIRA';
mtab[21]:='CADNS';
mtab[22]:='CADPED';
mtab[23]:='CADPAR';
mtab[24]:='RETIRA';
mtab[25]:='CADPRO';
mtab[26]:='CADPV';
mtab[27]:='CADRAM';
mtab[28]:='CADTAB';
mtab[29]:='CADTDV';
mtab[30]:='CADTP';
mtab[31]:='CADTRA';
mtab[32]:='CADUF';
mtab[33]:='CADUSR';
mtab[34]:='CADVEN';
mtab[35]:='RETIRA';
mtab[36]:='RETIRA';
mtab[37]:='PARLDR';
mtab[38]:='CADMOE';
mtab[39]:='CADIMO';
mtab[40]:='CADVEI';
mtab[41]:='CADMAN';
mtab[42]:='CADGIR';
mtab[43]:='CADCPN';
mtab[44]:='CADLOGSIS';

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Delete from CADTID');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,289,'Frm_CME','CADTID');
   end;
if not CB_CADBCO.Checked then
   begin
   finseretid('CADBCO',CB_CADBCO);
   end;
if not CB_CADCCU.Checked then
   begin
   finseretid('CADCCU',CB_CADCCU);
   end;
if not CB_CADCFO.Checked then
   begin
   finseretid('CADCFO',CB_CADCFO);
   finseretid('CADCLATABICM',CB_CADCFO);
   end;
if not CB_CADCLI.Checked then
   begin
   finseretid('CADCLI',CB_CADCLI);
   finseretid('CADCLI_BENS',CB_CADCLI);
   finseretid('CADCLI_IC',CB_CADCLI);
   finseretid('CADCLI_PV',CB_CADCLI);
   finseretid('CADCLI_OUTINF',CB_CADCLI);
   finseretid('CADCLI_REFBAN',CB_CADCLI);
   finseretid('CADCLI_REFCOM',CB_CADCLI);
   finseretid('CADCLI_REFPES',CB_CADCLI);

   finseretid('CADASSE',CB_CADCLI);
   finseretid('CADRCLI',CB_CADCLI);
   finseretid('CONTATO',CB_CADCLI);
   finseretid('CADCSER01',CB_CADCLI);
   finseretid('CADCSER02',CB_CADCLI);
   end;
if not CB_CADCON.Checked then
   begin
   finseretid('CADCON',CB_CADCON);
   end;
if not CB_CADCV.Checked then
   begin
   finseretid('CADCV',CB_CADCV);
   end;

if not CB_CADDEP.Checked then
   begin
   finseretid('CADDEP',CB_CADDEP);
   end;

if not CB_CADECF.Checked then
   begin
   finseretid('CADECF',CB_CADECF);
   finseretid('CADMI01',CB_CADECF);
   finseretid('CADMI02',CB_CADECF);
   finseretid('CADECF_FP',CB_CADECF);
   end;
if not CB_CADFOR.Checked then
   begin
   finseretid('CADFOR',CB_CADFOR);
   finseretid('CADFOR_BLOQ',CB_CADFOR);
   finseretid('CADGFOR',CB_CADFOR);
   end;
if not CB_CADIDV.Checked then
   begin
   finseretid('CADIDV',CB_CADIDV);
   end;

if not CB_CADLOGSIS.Checked then
   begin
   finseretid('CADLOGSIS',CB_CADLOGSIS);
   end;

if not CB_CADIMP_SYS.Checked then
   begin
   finseretid('CADIMP_SYS',CB_CADIMP_SYS);
   end;

if not CB_CADCV.Checked then
   begin
   finseretid('CADCV',CB_CADCV);
   end;
   
if not CB_CADPED.Checked then
   begin
   finseretid('CADNS',CB_CADPED);
   finseretid('CADPED',CB_CADPED);
   finseretid('CADP01',CB_CADPED);
   finseretid('CADPEN',CB_CADPED);
   finseretid('CADP01D',CB_CADPED);
   finseretid('CADP01V',CB_CADPED);
   finseretid('CADCON01',CB_CADPED);
   finseretid('CADCON02',CB_CADPED);
   finseretid('CADCON03',CB_CADPED);
   finseretid('CADP02',CB_CADPED);
   finseretid('CADP02_MAN',CB_CADPED);
   finseretid('CADP02D',CB_CADPED);
   finseretid('CADP02_DCONS',CB_CADPED);
   finseretid('CADP02S',CB_CADPED);
   finseretid('CADPFP',CB_CADPED);
   finseretid('CADOS',CB_CADPED);
   finseretid('CADOS01',CB_CADPED);
   finseretid('CADOS02',CB_CADPED);
   finseretid('CADOS03',CB_CADPED);
   finseretid('CADOS04',CB_CADPED);
   finseretid('CADOS05',CB_CADPED);
   finseretid('CADACRE01',CB_CADPED);
   finseretid('CADACRE02',CB_CADPED);
   finseretid('CADTRO_CAB',CB_CADPED);
   finseretid('CADTRO_ENT',CB_CADPED);
   finseretid('CADTRO_SAI',CB_CADPED);
   finseretid('CADTRO_ORI',CB_CADPED);
   finseretid('CADTROMOLD',CB_CADPED);
   finseretid('CADLSEN',CB_CADPED);
   finseretid('CADDAP',CB_CADPED);
   finseretid('FPCPDUP',CB_CADPED);
   finseretid('FPCP',CB_CADPED);
   finseretid('CADPF',CB_CADPED);
   finseretid('CADNE',CB_CADPED);
   finseretid('CADCCOR01',CB_CADPED);
   finseretid('CADCCOR02',CB_CADPED);
   finseretid('CADPFOR',CB_CADPED);
   finseretid('CADPF1',CB_CADPED);
   finseretid('CADPF1V',CB_CADPED);
   finseretid('CADPF2',CB_CADPED);
   finseretid('CADCSF',CB_CADPED);
   finseretid('CADDAR',CB_CADPED);
   finseretid('FPCRDUP',CB_CADPED);
   finseretid('FPCR',CB_CADPED);
   finseretid('CADCB01',CB_CADPED);
   finseretid('CADCB02',CB_CADPED);
   finseretid('CADCL01',CB_CADPED);
   finseretid('CADCL02',CB_CADPED);
   finseretid('CADLBR1',CB_CADPED);
   finseretid('CADLBR2',CB_CADPED);
   finseretid('CADREMBCO',CB_CADPED);
   finseretid('CADLIC',CB_CADPED);
   finseretid('CADLC1',CB_CADPED);
   finseretid('CADLC2',CB_CADPED);
   finseretid('CADLDR',CB_CADPED);
   finseretid('CADMOV',CB_CADPED);
   finseretid('CADMIN1',CB_CADPED);
   finseretid('CADMIN2',CB_CADPED);
   finseretid('CADOP01',CB_CADPED);
   finseretid('CADOP02',CB_CADPED);
   finseretid('CADOP03',CB_CADPED);
   finseretid('CADOPET',CB_CADPED);
   finseretid('IND_CADOP_DOC',CB_CADPED);
   finseretid('IND_CADTOP',CB_CADPED);
   finseretid('CADCHQ',CB_CADPED);
   finseretid('CADBCL01',CB_CADPED);
   finseretid('CADBCL02',CB_CADPED);
   finseretid('CADCHCP',CB_CADPED);
   finseretid('CADTPDRE',CB_CADPED);
   finseretid('CADLOCA01',CB_CADPED);
   finseretid('CADLOCA02',CB_CADPED);
   finseretid('CADP01_ORC',CB_CADPED);   
   end;


if not CB_CADPAR.Checked then
   begin
   finseretid('CADPAR',CB_CADPAR);
   end;
if not CB_CADPRO.Checked then
   begin
   finseretid('CADPRO',CB_CADPRO);
   finseretid('CADPRO_CODBAR',CB_CADPRO);
   finseretid('CADBLQ',CB_CADPRO);
   finseretid('CADGRU',CB_CADPRO);
   finseretid('CADGRU_TEXTO',CB_CADPRO);
   finseretid('CADRAM',CB_CADPRO);
   finseretid('CADTP',CB_CADPRO);
   finseretid('CADSGPRO',CB_CADPRO);
   finseretid('CADSGPRO_ANO',CB_CADPRO);
   finseretid('CADMPER',CB_CADPRO);
   finseretid('CADMPAR',CB_CADPRO);
   finseretid('CADAL1',CB_CADPRO);
   finseretid('CADAL2',CB_CADPRO);
   finseretid('CADCP01',CB_CADPRO);
   finseretid('CADCP02',CB_CADPRO);
   finseretid('CADAJPCO',CB_CADPRO);
   finseretid('CADRPRO',CB_CADPRO);
   finseretid('CADCOMP',CB_CADPRO);
   finseretid('CADCOMP2',CB_CADPRO);
   finseretid('CADCUS',CB_CADPRO);
   finseretid('CADCUS2',CB_CADPRO);
   finseretid('CADOP01',CB_CADPRO);
   finseretid('CADOP02',CB_CADPRO);
   finseretid('CADOP03',CB_CADPRO);
   finseretid('CADOPET',CB_CADPRO);
   finseretid('C0DPFOR',CB_CADPRO);
   finseretid('CADGPRO',CB_CADPRO);
   finseretid('CADPPR',CB_CADPRO);
   finseretid('CADPROC02',CB_CADPRO);
   finseretid('CADPROC02_TEXTO',CB_CADPRO);
   finseretid('CADPROC',CB_CADPRO);
   finseretid('CADPROC_TEXTO',CB_CADPRO);
   finseretid('CADAJCOMIS',CB_CADPRO);
   finseretid('CODPFOR',CB_CADPRO);
   finseretid('CADPRO_BLOQ',CB_CADPRO);
   finseretid('CADPRO_BLOQ_BX',CB_CADPRO);
   finseretid('CADPRO_INFNUT',CB_CADPRO);
   finseretid('CADPRO_CIN',CB_CADPRO);
   finseretid('CADPRO_DPTO',CB_CADPRO);
   finseretid('CADPRO_EXT',CB_CADPRO);   
   finseretid('CADPRO_SIMILAR',CB_CADPRO);
   end;
if not CB_CADEST.Checked then
   begin
   finseretid('CADAJU',CB_CADEST);
   finseretid('CADEST',CB_CADEST);
   finseretid('CADLGC',CB_CADEST);
   finseretid('CADEDIA',CB_CADEST);
   finseretid('CADEGD',CB_CADEST);
   finseretid('CADBAL01',CB_CADEST);
   finseretid('CADBAL02',CB_CADEST);
   end;

if not CB_CADPV.Checked then
   begin
   finseretid('CADPV',CB_CADPV);
   finseretid('CADPV2',CB_CADPV);
   end;


if not CB_CADTAB.Checked then
   begin
   finseretid('CADTAB',CB_CADTAB);
   end;
if not CB_CADTDV.Checked then
   begin
   finseretid('CADTDV',CB_CADTDV);
   end;
if not CB_CADCV.Checked then
   begin
   finseretid('CADCV',CB_CADCV);
   end;
if not CB_CADTRA.Checked then
   begin
   finseretid('CADTRA',CB_CADTRA);
   end;
if not CB_CADUF.Checked then
   begin
   finseretid('CADUF',CB_CADUF);
   finseretid('CADUF_TPPED',CB_CADUF);
   finseretid('CADPARCFO',CB_CADUF);
   finseretid('CADCLFISCAL_UF',CB_CADUF);
   end;
if not CB_CADUSR.Checked then
   begin
   finseretid('CADPAR02',CB_CADUSR);
   finseretid('CADUSR',CB_CADUSR);
   finseretid('CADACE',CB_CADUSR);
   finseretid('CADCAR',CB_CADUSR);
   finseretid('CADFUN',CB_CADUSR);
   finseretid('CADFIMO',CB_CADUSR);   
   finseretid('CADTDEP',CB_CADUSR);
   finseretid('CADSIND',CB_CADUSR);
   end;
if not CB_CADVEN.Checked then
   begin
   finseretid('CADVEN',CB_CADVEN);
   finseretid('CADVEN_COTAMES',CB_CADVEN);
   finseretid('CADREGIAO',CB_CADVEN);
   finseretid('CADPROVEN_COTAMES',CB_CADVEN);
   finseretid('CADFORVEN_COTAMES',CB_CADVEN);
   end;
if not CB_CADSUP.Checked then
   begin
   finseretid('CADSUP',CB_CADSUP);
   end;
if not CB_CADRED.Checked then
   begin
   finseretid('CADRED',CB_CADRED);
   end;
if not CB_CADLOC.Checked then
   begin
   finseretid('CADLOC',CB_CADLOC);
   end;
if not CB_CADBAI.Checked then
   begin
   finseretid('CADBAI',CB_CADBAI);
   end;

if not CB_CADMOE.Checked then
   begin
   finseretid('CADMOE',CB_CADMOE);
   end;


if not CB_CADCOMD.Checked then
   begin
   finseretid('CADCOMD',CB_CADCOMD);
   end;

if not CB_PARLDR.Checked then
   begin
   finseretid('PARLDR',CB_PARLDR);
   end;
if not CB_CADIMO.Checked then
   begin
   finseretid('CADIMO',CB_CADIMO);
   finseretid('CADVEI',CB_CADIMO);
   finseretid('CADMAN',CB_CADIMO);
   finseretid('CADIMO01',CB_CADIMO);
   finseretid('CADIMO02',CB_CADIMO);
   finseretid('CADVEI',CB_CADIMO);
   finseretid('CADVEI01',CB_CADIMO);
   finseretid('CADVEI02',CB_CADIMO);
   end;
if not CB_CADGIR.Checked then
   begin
   finseretid('CADGIR',CB_CADGIR);
   finseretid('CADGC01',CB_CADGIR);
   finseretid('CADGC02',CB_CADGIR);
   finseretid('CADGB01',CB_CADGIR);
   finseretid('CADGB02',CB_CADGIR);
   end;
if not CB_CADCPN.Checked then
   begin
   finseretid('CADCPN',CB_CADCPN);
   finseretid('CADCPN_GRID',CB_CADCPN);
   end;


pexecutar:=False;

if MessageDlg('É Necessário Criar os Índices! Deseja Cria-los Agora?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
   begin
   if frm_stru=nil then
      Application.CreateForm(TFrm_Stru, Frm_Stru);
   Frm_Stru.Show;
   Frm_Stru.INDICES.Click;
   Frm_Stru.Free;
   Frm_Stru:=nil;
   end;
if frm_stru=nil then
   Application.CreateForm(TFrm_Stru, Frm_Stru);
Frm_Stru.Show;
//fcriarTriggers(1); // excluir
//fcriarTriggers(0); // criar
if not Frm_Stru.fcriarTriggers(3) then
   begin
   MessageDlg('Feche todas as copias do Programa  e  Execute  o  programa'+#13
             +'no servidor, caso venha a aparecer esta mensagem novamente'+#13
             +'Solicite Suporte imediatamente.Fones '+pfonsup,mtError,[mbOk],0);
   FFecharTudo(0);
   Application.Terminate;
   exit;
   end;
Frm_Stru.Free;
Frm_Stru:=nil;
end;

procedure TFrm_CME.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM1.Qr_TID.Close;
DM1.Qr_TID.SQL.Clear;
DM1.Qr_TID.SQL.Add('Select * from CADTID');
DM1.Qr_TID.open;

if (FormState<>[fsModal]) then
  Action := caFree;
end;

procedure TFrm_CME.BitBtn5Click(Sender: TObject);
begin
CB_CADBCO.Checked :=False;
CB_CADCCU.Checked :=False;
CB_CADCFO.Checked :=False;
CB_CADCLI.Checked :=False;
CB_CADCON.Checked :=False;
CB_CADCV.Checked  :=False;
CB_CADDEP.Checked :=False;
CB_CADECF.Checked :=True;
CB_CADFOR.Checked :=False;
CB_CADIDV.Checked :=True;
CB_CADIMP_SYS.Checked :=True;

CB_CADPED.Checked :=True;
CB_CADPAR.Checked :=True;
CB_PARLDR.Checked :=True;
CB_CADPRO.Checked :=False;
CB_CADEST.Checked :=true;
CB_CADPV.Checked  :=False;
CB_CADTAB.Checked :=True;
CB_CADTDV.Checked :=False;
CB_CADTRA.Checked :=False;
CB_CADUF.Checked  :=False;
CB_CADUSR.Checked :=False;
CB_CADVEN.Checked :=False;
CB_CADSUP.Checked :=False;
CB_CADRED.Checked :=False;
CB_CADLOC.Checked :=False;
CB_CADBAI.Checked :=False;
CB_CADMOE.Checked :=False;
CB_CADIMO.Checked :=False;


CB_CADCOMD.Checked :=False;

end;


function finseretid(pNome: String; pStatus: TCheckBox): Boolean;

begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADTID (TINOME,TIQTD) values (:TINOME,:TIQTD)');
DM1.Query1.ParamByName('TINOME').AsString:=pNome;
if pStatus.State=cbGrayed   then
   DM1.Query1.ParamByName('TIQTD').AsInteger:=1
else if pStatus.State=cbChecked  then
   DM1.Query1.ParamByName('TIQTD').AsInteger :=2
else
   DM1.Query1.ParamByName('TIQTD').AsInteger:=0;
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   result:=True;
except
   ex_erroSql(01,781,'Frm_CME','CADTID');
   result:=False;
   end;
end;
procedure TFrm_CME.bbMeioMarcadoClick(Sender: TObject);
begin
CB_CADBCO.State:=cbGrayed;
CB_CADCCU.State:=cbGrayed;
CB_CADCFO.State:=cbGrayed;
CB_CADCLI.State:=cbGrayed;
CB_CADCON.State:=cbGrayed;
CB_CADCV.State:=cbGrayed;
CB_CADDEP.State:=cbGrayed;
CB_CADECF.State:=cbGrayed;
CB_CADFOR.State:=cbGrayed;
CB_CADIDV.State:=cbGrayed;
CB_CADIDV.State:=cbGrayed;
CB_CADLOGSIS.State:=cbGrayed;
CB_CADIMP_SYS.State:=cbGrayed;

CB_CADPED.State:=cbGrayed;
CB_CADPAR.State:=cbGrayed;
CB_CADPRO.State:=cbGrayed;
CB_CADEST.State:=cbGrayed;
CB_CADPV.State:=cbGrayed;
CB_CADTAB.State:=cbGrayed;
CB_CADTDV.State:=cbGrayed;
CB_CADTRA.State:=cbGrayed;
CB_CADUF.State:=cbGrayed;
CB_CADUSR.State:=cbGrayed;
CB_CADVEN.State:=cbGrayed;
CB_CADSUP.State:=cbGrayed;
CB_CADRED.State:=cbGrayed;
CB_CADLOC.State:=cbGrayed;
CB_CADBAI.State:=cbGrayed;
CB_CADMOE.State:=cbGrayed;
CB_CADIMO.State:=cbGrayed;
CB_CADGIR.State:=cbGrayed;
CB_CADCPN.State:=cbGrayed;
CB_CADCOMD.State:=cbGrayed;
CB_PARLDR.Checked:=True;


end;
function FRetornaStatusCheckBox(pTabela:String): TCheckBoxState;
begin

if DM1.Qr_TID.Locate('TINOME',ptabela,[]) then
   begin
   if DM1.Qr_TIDTIQTD.AsInteger=1 then
      Result:=cbGrayed
   else
      result:=cbUnchecked;
   end
else
   result:=cbChecked;
end;
end.
