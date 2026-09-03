unit S_PonVen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func,s_DM1, StdCtrls, ComCtrls, Buttons, ExtCtrls,S_Color,
  lerarq,s_pro, Grids,func_ecf,S_Cancup,func2,S_PvAb,S_Fpgto_Comp,s_SI,S_Agde
  ,s_lerarq_geral;

type
  TFrm_PonVen = class(TForm)
    HeaderControl1: THeaderControl;
    Panel1: TPanel;
    Label3: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CODPRO: TEdit;
    QTD: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SUBTOT: TEdit;
    TOTITE: TEdit;
    TOTUN: TEdit;
    TAXENT: TEdit;
    TOTLIQ: TEdit;
    TAXADM: TEdit;
    EFETIVAR: TBitBtn;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    Panel3: TPanel;
    StatusBar3: TStatusBar;
    Memo1: TMemo;
    Timer1: TTimer;
    STG1: TStringGrid;
    Label10: TLabel;
    TOTDES: TEdit;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EFETIVARClick(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure QTDExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

    { Private declarations }

  public
    { Public declarations }
  end;
function fpvgravap1(ptipo: Integer;pAcreCup,pDesCup: Real): Boolean;

function fpvcalc(ptipo: Integer): Boolean;
function fpvlimpa(ptipo: Integer): Boolean;
function fpvecf_Bema(pTestaECF, ptipo: Integer; pqtd,pvalord,pvaloru,ptotal,pfrete,poutac: Real): Integer;
function fpv_conf(pTestaECF, ptipo: Integer; pqtd,pvalord,pvaloru,ptotal,pfrete,poutac: Real): Boolean;

function fpvatuacor(ptipo: Integer):Boolean;
function fpvcanped(ptipo: Integer):Boolean;
function fpvexcped(pchave: Real):Boolean;
function fpvAguardaRetorno(ptipo: Integer): Integer;
var
  Frm_PonVen: TFrm_PonVen;
  mobs: String;
  mtobs: Integer=0;
  mini: Integer=0;
  mtam: Integer=25;
  mtamg: integer=50;
  mqtdi  : Integer;
  mqtdu  : Real;
  mtaml   : Integer;
  mtam_mens  :Integer;
  msitcpr : Integer=0;
  mncupom: Integer=0;
  iRetorno: Integer=0;
  mvaldes : Real;
  mvlracre: Real;
  mdesped : Real;
  mfpgto  : Integer=0;
  mtpmoeda: Integer=0;
  mverpap: Integer=0;
// pouco papel 0-Verifica 1-Nao
  mpvcodcli: Real;
  mpvcodpv: Integer;
  mpvcodcv: Integer;
  mpvcodven: Real;
  mpvcom02 : Real;
  mpvcom03 : Real;
  mpvcom04 : Real;
  mpvobs1,mpvobs2,mpvobs3 : String;
  mpvnaut: String;
  mpvtabpv: String;
  mdtor: TDateTime;
  msair: Boolean=False;
  pobscupom: String;
  pobscupom2: String;
  mpvddescf,mpvtc,mpvtdc,mpvtpd1,mpvtpd2,mpvtpd3,mpvtpdesf,mtpp, mpvdiasdescf: Integer;
  mpvcom, mpvactd, mpvact00, mpvact01, mpvact99: Real;
  mpvdes, mpvdes1, mpvdes2, mpvdes3: Real;
  mpvdescf: Real;
  macrecv, macreger: Real;
  mtotaccv, mtotacger: Real;
  mpacreconv, mpacreger: Real;
  mdtreaj: TDateTime;
  mvalfre: Real=0;
  mOper : Integer; //0-Inclusao 1-Alteração
  f: TextFile;
  mEmitiuCupom: boolean=False;
  mLote: String;
  // variaveis usada para o Caso de Criar arquivo texto
  cf_pastacf: String='C:\SYFRENTE\TFS\';
  cf_pastacf_ret: String='C:\SYFRENTE\TFR\';
  cf_nomarq : String;
  cf_fcupenv: Textfile;
  cf_fcupret: Textfile;
  cf_numitem: Integer;
  cf_seqforma: Integer;

implementation

uses S_Fpgto, S_PvCanI, S_DM4, S_PVO, func_excecoes;

{$R *.dfm}

procedure TFrm_PonVen.Timer1Timer(Sender: TObject);
begin

HeaderControl1.Sections[3].Text:='Horas: '+FormatDateTime('hh:nn:ss',Time);
HeaderControl1.Sections[2].Text:='Data: '+FormatDateTime('dd:mm:yyyy',date);
if mtobs=0 then
   begin
   mini:=mini+1;
   if mini>mtamg then
      mini:=mtamg-mini;
   if (mini+mtam)>mtamg then
      label3.Caption:=copy((mobs+' '+mobs),mini,mtam)
   else
      label3.Caption:=copy(mobs,mini,mtam);
   label3.Update;
   end
else if mtobs=1 then
   begin
   if label3.Visible then
      label3.Visible:=False
   else
      label3.Visible:=True;
   end;
end;

procedure TFrm_PonVen.FormActivate(Sender: TObject);
begin
fpvatuacor(0);


DM1.Tb_ParFon.Close;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_Tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+PNomTer+chr(39)
                     +' and PFNOMFOR='+chr(39)+'PONVEN'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'PARAM'+chr(39));
DM1.Tb_ParFon.Open;
DM1.Tb_ParFon.Open;
if not DM1.Tb_ParFon.Eof then
   begin
   mobs :=DM1.Tb_ParFonPFMENS.Value;
   mtobs:=DM1.Tb_ParFonPFMTIPO.AsInteger;
   end
else
   begin
   mobs:='';
   mtobs:=3;
   end;
mtamg  :=Length(mobs);

label3.Visible:=True;
Label3.Caption:=mobs;
if mtobs=3 then
   label3.Visible:=False;


end;

procedure TFrm_PonVen.FormCreate(Sender: TObject);
begin

if DM1.Tb_PargerPTIPOTEF.Value=2 then
   begin
   if not DirectoryExists('C:\SYFRENTE') then
      CreateDir('C:\SYFRENTE');
   if not DirectoryExists('C:\SYFRENTE\TFS') then
      CreateDir('C:\SYFRENTE\TFS');
   if not DirectoryExists('C:\SYFRENTE\TFR') then
      CreateDir('C:\SYFRENTE\TFR');
   end;

flcadpar01(0,0,'1');

mini    :=0;
mtam    :=25;
mqtdi   :=0;
mqtdu   :=0;
mpacreconv :=0;
mpacreger:=DM1.Tb_PargerPACREGER.Value;
STG1.RowCount:=2;
STG1.Cells[00,0]:='Codigo';
STG1.Cells[01,0]:='Quantidade';
STG1.Cells[02,0]:='Unidade';
STG1.Cells[03,0]:='Descrição';
STG1.Cells[04,0]:='Preço Unitário';
STG1.Cells[05,0]:='Desconto';
STG1.Cells[06,0]:='Valor Total';
STG1.Cells[07,0]:='Total Desconto';
STG1.Cells[08,0]:='Sit.Tributária';
STG1.Cells[09,0]:='CFO';
STG1.Cells[10,0]:='Aliquota';
STG1.Cells[11,0]:='Codigo';
STG1.Cells[12,0]:='Situação';
STG1.Cells[13,0]:='Acrescimo Geral';
STG1.Cells[14,0]:='Acrescimo Convenio';
STG1.Cells[15,0]:='Grade';
HeaderControl1.Sections[0].Text:='Terminal ECF - '+Formatfloat('0000',DM1.Tb_ECFCFCAIXA.Value);
if (codcar=1111) and (codusr=1111) then
   HeaderControl1.Sections[1].Text:='Operador.: MASTER(Programador)'
else
   begin
   flcadusr(1,0,Inttostr(codusr));
   HeaderControl1.Sections[1].Text:='Operador(a): '+FormatFloat('0000',DM4.Tb_UsrCODUSR.Value)+'-'+DM4.Tb_UsrNOMUSR.Value;
   end;



end;

procedure TFrm_PonVen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if msair then
   begin
   MessageDlg('Verifique as configurações!',mtWarning,[mbOk],0);
   close;
   end;

If (Key=119) and (Shift=[ssCtrl,ssAlt]) then
   begin
   if fmensagem('Quer Realmente Forçar a Saida do Programa?',0,['1','2'],2)=mrYes then
      begin
      mqtdi:=0;
      Close;
      end;
   end;


if key=113 then      // F2
   begin
   mlote:='';
   if DM1.Tb_PargerPECFSOLCOD.Value=1 then
      begin
      While true do
         begin
         if Frm_PvAb.ShowModal=mrOk then
            begin
            if not flcadcli(1,0,Frm_PvAb.CODCLI.Text) then
               begin
               messagedlg('Favor Selecionar um Cliente válido!',mtWarning,[mbOk],0);
               Continue;
               end;
            if not flcadven(1,0,Frm_PvAb.CODVEN.Text) then
               begin
               messagedlg('Favor Selecionar um Vendedor válido!',mtWarning,[mbOk],0);
               Continue;
               end;
            if not flcadpv(1,0,Frm_PvAb.CB_TABPV.Text,Frm_PvAb.CODpv.Text) then
               begin
               messagedlg('Favor Selecionar um Plano de Vendas válido!',mtWarning,[mbOk],0);
               Continue;
               end;
            break;
            end
         else
            exit;
         end;
      CODPRO.Enabled:=True;
      fpvcalc(0);
      CODPRO.SetFocus;
      end
   else
      begin
      if not ppconsemp then
         begin
         iRetorno:=fverestimp(0);
         if iRetorno=9 then
            begin
            MessageDlg('Corrigir Erros! Não é possível iniciar um cupom.',mtError,[mbOk],0);
            exit;
            end
         else if iRetorno=1 then
            begin
            MessageDlg('Coloque uma nova Bobina de Papel e Tente Novamente!',mtError,[mbOk],0);
            exit;
            end;
         end;
      CODPRO.Enabled:=True;
      fpvcalc(0);
      CODPRO.SetFocus;
      mpvcodcli:=1;
      mpvcodven:=1;
      mpvcodpv :=01;
      mpvtabpv :='AV';
      if not flcadcli(1,0,FloatToStr(mpvcodcli)) then
         begin
         messagedlg('Favor Selecionar um Cliente válido!',mtWarning,[mbOk],0);
         exit;
         end;
      if not flcadven(1,0,FloatToStr(mpvcodven)) then
         begin
         messagedlg('Favor Selecionar um Vendedor válido!',mtWarning,[mbOk],0);
         exit;
         end;
       if not flcadpv(1,0,mpvtabpv,floattoStr(mpvcodpv)) then
          begin
          messagedlg('Favor Selecionar um Plano de Vendas válido!',mtWarning,[mbOk],0);
          exit;
          end;
      mverpap:=0;
      MessageDlg('Pronto para iniciar o cupom!',mtWarning,[mbOk],0);
      end;
   end;


if key=114 then          // F3
   begin
   mconcluiu:=False;
   if mchaveped<>0 then
      begin
      mfpgto:=0;
      mlocorigem:=0;
      if DM1.Tb_PargerPECFFECCOM.Value=1 then
         begin
         Application.CreateForm(TFrm_FPgto_Comp , Frm_Fpgto_Comp);
         ffpgto_CompCarregaCli(0);
         Frm_Fpgto_Comp.TOTCUP.Text:=Insere(Trim(TotLIQ.Text),' ',mspaco);
         Frm_Fpgto_Comp.TOTLIQ.Text:=Frm_Fpgto_Comp.TOTCUP.Text;
         Frm_Fpgto_Comp.TOTRES.Text:=Frm_Fpgto_Comp.TOTCUP.Text;
         Frm_Fpgto_Comp.ShowModal;
         Frm_FPgto_Comp.Free;
         end
      else
         begin
         Application.CreateForm(TFrm_Fpgto, Frm_Fpgto);
         ffpgtoCarregaCli(0);
         Frm_Fpgto.TOTCUP.Text:=Insere(Trim(TotLIQ.Text),' ',mspaco);
         Frm_Fpgto.TOTLIQ.Text:=Frm_Fpgto.TOTCUP.Text;
         Frm_Fpgto.TOTRES.Text:=Frm_Fpgto.TOTCUP.Text;
         Frm_Fpgto.ShowModal;
         Frm_FPgto.Free;
         end;
      if mconcluiu then
         begin
         fpvlimpa(0);
         mEmitiuCupom:=True;
         end
      else
         CODPRO.SetFocus;
      end;
   end;


if key=116 then           // F5
   begin
   QTD.Enabled:=True;
   QTD.SetFocus;
   end;
if key=117 then        // F6
   begin
   Application.CreateForm(TFrm_Color, Frm_Color);
   Frm_Color.ShowModal;
   fpvatuacor(0);
   Frm_Color.Free;
   end;
                     //F7
if (key=118) and (CODPRO.Enabled) then
   begin
   if (STG1.RowCount<3) and (Trim(STG1.Cells[0,1])='') then
      begin
      MessageDlg('Não ha itens a serem excluidos.',mtWarning,[mbOk],0);
      exit;
      end;
   flcadpar02(0,0,codusr,'23');
   if DM4.Tb_Par02PA2PDSN.Value='S' then
      begin
      if fValidaSenha(0,codusr,23,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha Excluir ítem do Cupom','')<>0 then
         exit;
      end;
   Application.CreateForm(TFrm_PvCanI, Frm_PvCanI);
   Frm_PvCanI.ShowModal;
   Frm_PvCanI.Free;
   fpvcalc(0);
   end;



end;
function fpvcalc(ptipo: Integer): Boolean;
var
x: Integer;
mtotb: Real;
mtotdes: Real;
mqtdu: Real;
mtoti: Integer;
begin
mtotb:=0;
mtotdes:=0;
mqtdu:=0;
mtoti:=0;
mtotaccv :=0;
mtotacger:=0;

mvalfre:=valfloat(Frm_PonVen.TAXENT.Text);
// lindomar
for x:=1 to Frm_PonVen.STG1.RowCount do
   begin
   if Trim(Frm_PonVen.STG1.Cells[0,x])='' then
      Continue;
   if Trim(Frm_PonVen.STG1.Cells[12,x])='N' then
      Continue;
   mtotb  :=mtotb  +Valfloat(Frm_PonVen.STG1.cells[06,x]);
   mtotdes:=mtotdes+ValFloat(Frm_PonVen.STG1.Cells[07,x]);
   mqtdu:=mqtdu+Valfloat(Frm_PonVen.STG1.Cells[01,x]);
   mtotacger:=mtotacger+ValFloat(Frm_PonVen.stg1.Cells[13,x]);
   mtotaccv :=mtotaccv+ValFloat(Frm_PonVen.stg1.Cells[14,x]);
   mtoti:=mtoti+1;
   end;

Frm_PonVen.TOTITE.Text:=IntToStr(mtoti);
Frm_PonVen.TOTUN.Text:=FormatFloat(mcasqtd,mqtdu);
Frm_PonVen.SUBTOT.Text:=Formatfloat(mcasas,mtotb);
Frm_PonVen.TOTDES.Text:=FormatFloat(mcasas,mtotdes);
Frm_PonVen.TAXENT.Text:=FormatFloat(mcasas,mvalfre);
Frm_PonVen.TAXADM.Text:=FormatFloat(mcasas,mtotaccv+mtotacger);
Frm_PonVen.totliq.Text:=FormatFloat(mcasas, (mtotb-mtotdes+mvalfre+mtotaccv+mtotacger));
Result:=true;
end;

procedure TFrm_PonVen.EFETIVARClick(Sender: TObject);
var
mtotal,mpreco,mcfo,maliq,mdesc: Real;
mdesc2,mbasen,micmsn,mrepas,mbaser,micmsr,mtotdes,malipi,mvalipi,mbinr,micmsnr,maliqnr: Real;
misentas,mpcomis,mdescm,mtotliq,mvdescf,mpdescf: Real;
mtotout: Real;
x:Integer;
begin
if Trim(CODPRO.Text)='' then
   exit;

mdesc  :=0;
mvaldes:=0;
maliq  :=0;
mcfo   :=0;
mpreco :=0;
mdesc2 :=0; mbasen:=0; micmsn:=0;  mrepas:=0;  mbaser:=0;  micmsr:=0; mtotdes:=0; malipi:=0;
mvalipi:=0; mbinr:=0;  micmsnr:=0; misentas:=0; maliqnr:=0;
mpcomis:=0; mdescm:=0; mtotliq:=0; mvdescf:=0; mpdescf:=0; mtotout:=0;
mtotal:=0;
mlote:='';
if (DM1.Tb_PargerPPCOGRA.Value=1) then
   begin
   if (Length(CODPRO.Text)>9) then
      begin
      mLote:=copy(CODPRO.Text,5,length(CODPRO.Text)-4);
      CODPRO.Text:=copy(CODPRO.Text,1,4);
      end;
   end;
CODPRO.Text:=fdeixanum(CODPRO.Text);
if not flcadpro(1,0,0,Trim(CODPRO.Text)) then
   begin
   MessageDlg('Código não cadastrado',mtError,[mbOK],0);
   CODPRO.SetFocus;
   exit;
   end;
if (DM1.Tb_PargerPPCOGRA.Value=1) then
   begin
   if not flcadlgc(0,1,0,Trim(CODPRO.Text),mlote,'') then
      begin
      MessageDlg('Grade Nao cadastrada!',mtWarning,[mbOk],0);
      CODPRO.SetFocus;
      exit;
      end;
   end;
if ValFloat(QTD.Text)<=0 then
   begin
   QTD.Text:='1';
   end;
QTD.Text:=FormatFloat(mcasqtd, ValFloat(QTD.Text));
mqtdi:=mqtdi+1;
if mqtdi=1 then
   begin
   Panel4.Font.Size:=30;
   Panel4.Caption:='Abrindo Cupom fiscal';
   Memo1.Lines.Add('Abertura do Cupom');
   Panel4.Caption:='';
   fpvatuacor(0);
   if ValInt(Frm_pvab.CHAVEP.Text)>0 then
      begin
      moper:=1;
      mchaveped:=ValInt(Frm_PvAb.CHAVEP.Text);
      fpvexcped(mchaveped);
      end
   else
      begin
      mOper:=0;
      flcadpar01(0,0,'1');
      DM4.Tb_Par01.Edit;
      mchaveped:=DM4.Tb_Par01PNUMPED.AsInteger;
      DM4.Tb_Par01PNUMPED.Value:=mchaveped+1;
      DM4.Tb_Par01.Post;
      end;
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      begin
      cf_nomarq:=Formatfloat('000000',mchaveped)+'01';
      AssignFile(cf_fcupenv,cf_pastacf+cf_nomarq+'.$$$');
      Rewrite(cf_fcupenv);
      cf_numitem:=0;
      cf_seqforma:=0;
      mncupom:=0;
      end;

   iretorno:=fpvecf_Bema(0,0,0,0,0,0,0,0);
   if iretorno<>1 then
      begin
      MessageDlg('Erro ao abrir o cupom: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
      exit;
      end;

   fAjustaEcfAberto(2,mchaveped);
   end;
Panel4.Caption:=DM1.Tb_ProPDNOME.Value;
mdesc  :=DM1.Tb_ProPDDESC1.Value;
mvaldes:=0;
if DM1.Tb_PargerPPCOGRA.Value=1 then
   mtotal:=valfloat(QTD.Text)*DM1.Tb_LGCCLPRECO1.Value
else
   mtotal:=valfloat(QTD.Text)*DM1.Tb_ProPDPRECO1.Value;

mvaldes:=(mtotal)*mdesc/100;
mvaldes:=Arredonda(mvaldes,2);


if DM1.Tb_ProPDSIT.Value[2] in ['1','6'] then
   begin
   mbaser:=mtotal-mvaldes;
//   mcfo:=DM1.Tb_UFPCFOCFR.AsInteger
   end
else if DM1.Tb_ProPDSIT.Value[2]='4' then
   begin
   misentas:=mtotal-mvaldes;
//   mcfo:=DM1.Tb_UFPCFOCFN.AsInteger;
   end
else
   begin
//   mcfo:=DM1.Tb_UFPCFOCFN.AsInteger;
   if DM1.Tb_ProPDTABICM.Value='B' then
      maliq:=DM1.Tb_UfPICMSB.Value
   else
      maliq:=DM1.Tb_UfPICMSA.Value;
   mbasen:=mtotal-mvaldes;
   micmsn:=mtotal*maliq/100;
   if DM1.Tb_ECFCFARRED.Value=1 then
      Truncar(micmsn,2)
   else
      Arredonda(micmsn,2);
   end;

if DM1.Tb_PargerPPCOGRA.Value=1 then
   iretorno:=fpvecf_Bema(1,1,ValFloat(QTD.Text),mvaldes,DM1.Tb_LGCCLPRECO1.Value,0,0,0)
else
   iretorno:=fpvecf_Bema(1,1,ValFloat(QTD.Text),mvaldes,DM1.Tb_ProPDPRECO1.Value,0,0,0);
//

if iretorno<>1 then
   begin
   MessageDlg('Erro ao Vender Item: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
   exit;
   end;

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   Panel5.Caption:=QTD.Text+' x '+FormatFloat(mcasaspu,DM1.Tb_LGCCLPRECO1.Value)
               +'='+FormatFloat(mcasas,mtotal);
   end
else
   begin
   Panel5.Caption:=QTD.Text+' x '+FormatFloat(mcasaspu,DM1.Tb_ProPDPRECO1.Value)
               +'='+FormatFloat(mcasas,mtotal);
   end;
if DM1.Tb_PargerPPCOGRA.Value=1 then
   Memo1.Lines.Add(FormatFloat('0000',mqtdi)+' - '+DM1.Tb_ProPDNOME.Value+'-'+Formatfloat('0000',DM1.Tb_ProPDCODPRO.Value)+DM1.Tb_LGCCLNUMERO.Value)
else
   Memo1.Lines.Add(FormatFloat('0000',mqtdi)+' - '+DM1.Tb_ProPDNOME.Value+'-'+DM1.Tb_ProPDCODPRO.AsString);

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   Memo1.Lines.Add(QTD.Text+' x '+FormatFloat(mcasas,DM1.Tb_LGCCLPRECO1.Value)+' = '+
   FormatFloat(mcasas,mtotal));
   end
else
   begin
   Memo1.Lines.Add(QTD.Text+' x '+FormatFloat(mcasas,DM1.Tb_ProPDPRECO1.Value)+' = '+
   FormatFloat(mcasas,mtotal));
   end;



if mvaldes>0 then
   begin
   Memo1.Lines.Add('- Desconto $: '+FormatFloat(mcasas,mvaldes)+' = '+
   FormatFloat(mcasas,(mtotal)-mvaldes));
   end;


STG1.RowCount:=mqtdi+1;
STG1.Rows[mqtdi+1].Clear;
STG1.Cells[00,mqtdi]:=CODPRO.Text;
STG1.Cells[01,mqtdi]:=QTD.Text;
STG1.Cells[02,mqtdi]:=DM1.Tb_ProPDUND.Value;
STG1.Cells[03,mqtdi]:=DM1.Tb_ProPDNOME.Value;
if DM1.Tb_PargerPPCOGRA.Value=1 then
   STG1.Cells[04,mqtdi]:=FormatFloat(mcasaspu, DM1.Tb_LGCCLPRECO1.Value)
else
   STG1.Cells[04,mqtdi]:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value);

STG1.Cells[05,mqtdi]:=FormatFloat(mcasas, mdesc);
if DM1.Tb_PargerPPCOGRA.Value=1 then
   STG1.Cells[06,mqtdi]:=FormatFloat(mcasas, valfloat(QTD.Text)*DM1.Tb_LGCCLPRECO1.Value)
else
   STG1.Cells[06,mqtdi]:=FormatFloat(mcasas, valfloat(QTD.Text)*DM1.Tb_ProPDPRECO1.Value);

STG1.Cells[07,mqtdi]:=FormatFloat(mcasas, mvaldes);;
STG1.Cells[08,mqtdi]:=DM1.Tb_ProPDSIT.Value;
STG1.Cells[09,mqtdi]:='0';
STG1.Cells[10,mqtdi]:='0';
STG1.Cells[11,mqtdi]:='0';
STG1.Cells[12,mqtdi]:='S';
macreger:=Arredonda(((ValFloat(STG1.Cells[06,mqtdi])-mvaldes)*mpacreger/100),2);
macrecv :=Arredonda(((ValFloat(STG1.Cells[06,mqtdi])+macreger-mvaldes)*mpacreconv/100),2);
STG1.Cells[13,mqtdi]:=FormatFloat(mcasas, macreger);
STG1.Cells[14,mqtdi]:=FormatFloat(mcasas, macrecv);
STG1.Cells[15,mqtdi]:=mlote;

fpvcalc(0);

mtotdes:=mvaldes;
if mbasen>0 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
      mtotout:= (ValFloat(qtd.Text)*DM1.Tb_LGCCLPRECO1.Value)-mvaldes
             -mbasen;
      end
   else
      begin
      mtotout:= (ValFloat(qtd.Text)*DM1.Tb_ProPDPRECO1.Value)-mvaldes
             -mbasen;
      end

   end
else
   mtotout:=0;
DM4.Qr_IncPed02.Close;
DM4.Qr_IncPed02.ParambyName('P2CODEMP').AsFloat      :=codemp;

DM4.Qr_IncPed02.ParambyName('P2CHAVE').AsFloat       :=mchaveped;
DM4.Qr_IncPed02.ParambyName('P2CHAVE_NIVEL').AsFloat :=0;
DM4.Qr_IncPed02.ParambyName('P2PCREDSN').AsFloat     :=DM4.Tb_ParGer02PG2PACREDICMS.AsFloat;

DM4.Qr_IncPed02.ParambyName('P2ORDEM').AsFloat       :=01;
DM4.Qr_IncPed02.ParambyName('P2LOTSEQ').AsFloat      :=ls_numped;

DM4.Qr_IncPed02.ParambyName('P2ITEM').AsFloat        :=mqtdi;
DM4.Qr_IncPed02.ParambyName('P2CODPRO').AsFloat      :=DM1.Tb_ProPDCODPRO.Value;
DM4.Qr_IncPed02.ParambyName('P2CODANT').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2QTD').AsFloat         :=ValFloat(QTD.Text);;
DM4.Qr_IncPed02.ParambyName('P2QTD_ATEN').AsFloat    :=ValFloat(QTD.Text);
if DM1.Tb_PargerPPCOGRA.Value=1 then
   DM4.Qr_IncPed02.ParambyName('P2LOTE').AsString    :=mLote
else
   DM4.Qr_IncPed02.ParambyName('P2LOTE').AsString       := ' ';
DM4.Qr_IncPed02.ParambyName('P2DTVCTO').AsDateTime   :=pdatanula;
DM4.Qr_IncPed02.ParambyName('P2DESC1').AsFloat       := mdesc;
DM4.Qr_IncPed02.ParambyName('P2DESC2').AsFloat       := mdesc2;
DM4.Qr_IncPed02.ParambyName('P2DESC3').AsFloat       := 0;
DM4.Qr_IncPed02.ParambyName('P2VALDES').AsFloat      := 0;
if DM1.Tb_PargerPPCOGRA.Value=1 then
   DM4.Qr_IncPed02.ParambyName('P2PRECO').AsFloat       := DM1.Tb_LGCCLPRECO1.Value
else
   DM4.Qr_IncPed02.ParambyName('P2PRECO').AsFloat       := DM1.Tb_ProPDPRECO1.Value;

DM4.Qr_IncPed02.ParambyName('P2SIT').AsString        := FormatFloat('000',ValFloat(DM1.Tb_ProPDSIT.Value));
DM4.Qr_IncPed02.ParambyName('P2CODFAB').AsFloat      := DM1.Tb_ProPDCODFOR.Value;
//DM4.Qr_IncPed02.ParambyName('P2CODGRU').AsFloat      := DM1.Tb_ProPDCODGRU.Value;
DM4.Qr_IncPed02.ParambyName('P2CODGRU').AsFloat      := DM1.Tb_ProPDBLDESCAV.Value;
DM4.Qr_IncPed02.ParambyName('P2BASEN').AsFloat       := mbasen;   // base do icms normal
DM4.Qr_IncPed02.ParambyName('P2ICMSN').AsFloat       := micmsn;   // Valor do icms normal
DM4.Qr_IncPed02.ParambyName('P2REPAS').AsFloat       := mrepas;  // Repasse do icms
DM4.Qr_IncPed02.ParambyName('P2BASER').AsFloat       := mbaser;   // base do icms retido
DM4.Qr_IncPed02.ParambyName('P2ICMSR').AsFloat       := micmsr;    // valor do icms retido
DM4.Qr_IncPed02.ParambyName('P2LISTA').AsFloat       := DM1.Tb_ProPDLISTA.Value;
DM4.Qr_IncPed02.ParambyName('P2STATUS').AsFloat      := 0;
if DM1.Tb_PargerPPCOGRA.Value=1 then
   DM4.Qr_IncPed02.ParambyName('P2PCOTAB').AsFloat      := DM1.Tb_LGCCLPRECO1.Value
else
   DM4.Qr_IncPed02.ParambyName('P2PCOTAB').AsFloat      := DM1.Tb_ProPDPRECO1.Value;

if DM1.Tb_PargerPPCOGRA.Value=1 then
   DM4.Qr_IncPed02.ParambyName('P2PCOFPG').AsFloat      := DM1.Tb_LGCCLPRECO1.Value
else
   DM4.Qr_IncPed02.ParambyName('P2PCOFPG').AsFloat      := DM1.Tb_Propcoven.Value;

DM4.Qr_IncPed02.ParambyName('P2PCOMAX').AsFloat      := DM1.Tb_ProPDPMC.Value;
DM4.Qr_IncPed02.ParambyName('P2UCPR').AsFloat        := DM1.Tb_ProPDUCPR.Value;
DM4.Qr_IncPed02.ParambyName('P2PCOCUS').AsFloat      := DM1.Tb_ProPDPRECOC.Value;
DM4.Qr_IncPed02.ParambyName('P2TOTDES').AsFloat      := mvaldes;    // Total do desconto
DM4.Qr_IncPed02.ParambyName('P2DESCRAT').AsFloat     := 0;   // Valor Desconto Rateado
DM4.Qr_IncPed02.ParambyName('P2TABELA').AsString     := DM1.Tb_ProPDTABICM.Value;
DM4.Qr_IncPed02.ParambyName('P2ALIPI').AsFloat       := malipi;
DM4.Qr_IncPed02.ParambyName('P2VALIPI').AsFloat      := mvalipi;   // Valor do IPI
DM4.Qr_IncPed02.ParambyName('P2BCINR').AsFloat       := mbinr;  // Base Calculo Icms normal do retido
DM4.Qr_IncPed02.ParambyName('P2ICMSNR').AsFloat      := micmsnr;  // Icms normal do Retido
DM4.Qr_IncPed02.ParambyName('P2ISENTAS').AsFloat     := misentas;   // Isentas
DM4.Qr_IncPed02.ParambyName('P2TOTOUT').AsFloat      := mtotout;
DM4.Qr_IncPed02.ParambyName('P2ALIQ').AsFloat        := maliq;   // Aliquota de icms
DM4.Qr_IncPed02.ParambyName('P2ALIQNR').AsFloat      := maliqnr;   // Aliquota normal do retido
DM4.Qr_IncPed02.ParambyName('P2PCOMIS').AsFloat      := mpcomis;
DM4.Qr_IncPed02.ParambyName('P2VCOMIS').AsFloat      := ((mtotal-mvaldes)*mpcomis)/100;
DM4.Qr_IncPed02.ParambyName('P2VCOM02').AsFloat      := ((mtotal-mvaldes)*mpvcom02)/100;
DM4.Qr_IncPed02.ParambyName('P2VCOM03').AsFloat      := ((mtotal-mvaldes)*mpvcom03)/100;
DM4.Qr_IncPed02.ParambyName('P2VCOM04').AsFloat      := ((mtotal-mvaldes)*mpvcom04)/100;
DM4.Qr_IncPed02.ParambyName('P2DESCM').AsFloat       := mdescm;
DM4.Qr_IncPed02.ParambyName('P2CFO').AsFloat         := mcfo;
DM4.Qr_IncPed02.ParambyName('P2CFOSUBECF').AsFloat   := mcfo;
if DM1.Tb_PargerPPCOGRA.Value=1 then
   DM4.Qr_IncPed02.ParambyName('P2SEMCOM').AsFloat      := iif(DM1.Tb_ProPDSEMCOM.Value=1,DM1.Tb_LGCCLPRECO1.Value,0)
else
   DM4.Qr_IncPed02.ParambyName('P2SEMCOM').AsFloat      := iif(DM1.Tb_ProPDSEMCOM.Value=1,DM1.Tb_ProPDPRECO1.Value,0);

DM4.Qr_IncPed02.ParambyName('P2TOTLIQ').AsFloat      := mtotal-mvaldes;
DM4.Qr_IncPed02.ParambyName('P2PDESCF').AsFloat      := mpdescf;
DM4.Qr_IncPed02.ParambyName('P2VDESCF').AsFloat      := ((mtotal-mvaldes)*mpdescf)/100;
DM4.Qr_IncPed02.ParambyName('P2ACRECONV').AsFloat    := macrecv;
DM4.Qr_IncPed02.ParambyName('P2ACREGER').AsFloat     := macreger;
DM4.Qr_IncPed02.ParambyName('P2PROMOCAO').AsString   := ' ';
DM4.Qr_IncPed02.ParambyName('P2DESCPR').AsFloat     := 0;
DM4.Qr_IncPed02.ParambyName('P2AMBIENTE').AsString:= ' ';
DM4.Qr_IncPed02.ParambyName('P2QTD_ENTREGUE').AsFloat  :=0;
DM4.Qr_IncPed02.ParambyName('P2QTD_ENTREGANDO').AsFloat:=0;
DM4.Qr_IncPed02.ParambyName('P2PCOMIS_EXTRA').AsFloat  :=0;
DM4.Qr_IncPed02.ParambyName('P2VCOMIS_EXTRA').AsFloat  :=0;
DM4.Qr_IncPed02.ParambyName('P2STATUS_PED1').AsFloat   :=0;
DM4.Qr_IncPed02.ParambyName('P2TIPO').AsFloat          :=1;
DM4.Qr_IncPed02.ParambyName('P2CODAGRU').AsFloat       :=0;
DM4.Qr_IncPed02.ParambyName('P2CONSIG').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2PCOM02').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2PCOM03').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2ST_IVA').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2ST_REDUT').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2ST_ICMCRED').AsFloat    :=0;
DM4.Qr_IncPed02.ParambyName('P2ST_ICMDEB').AsFloat     :=0;
DM4.Qr_IncPed02.ParambyName('P2REDUTICM').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2PRAZO').AsFloat         :=0;
DM4.Qr_IncPed02.ParambyName('P2ALPIS').AsFloat         :=0;
DM4.Qr_IncPed02.ParambyName('P2VALPIS').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2ALCOFINS').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2COFINS').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2CODVEN').AsFloat        :=0;
DM4.Qr_IncPed02.ParambyName('P2TIPO_PCO').AsFloat      :=0;
DM4.Qr_IncPed02.ParambyName('P2CONS_PROPRIO').AsFloat  :=0;
DM4.Qr_IncPed02.ParambyName('P2COMPLEMENTO').AsString  :='';
DM4.Qr_IncPed02.ParambyName('P2CODPRO_ORI').AsString :=' ';
DM4.Qr_IncPed02.ParambyName('P2NOMPRO_ORI').AsString :=' ';
DM4.Qr_IncPed02.ParambyName('P2KIT_PRO').AsString :='N';

Try
   DM4.Qr_IncPed02.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(06,593,'Frm_PonVen','CADP02');
   end;
{
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.Params.Clear;
DM1.Query1.Params.CreateParam(ftstring,'DTVCTO',ptinput);
DM1.Query1.Params.CreateParam(ftstring,'LOTE',ptinput);
DM1.Query1.SQL.add('Insert Into CADP02 ('
                  +'P2CODEMP, '
                  +'P2CHAVE, '
                  +'P2ORDEM, '
                  +'P2ITEM, '
                  +'P2CODPRO, '
                  +'P2QTD, '
                  +'P2DESC1, '
                  +'P2DESC2, '
                  +'P2VALDES, '
                  +'P2PRECO, '
                  +'P2SIT, '
                  +'P2CODFAB, '
                  +'P2BASEN, '
                  +'P2ICMSN, '
                  +'P2BASER, '
                  +'P2ICMSR, '
                  +'P2LISTA, '
                  +'P2STATUS, '
                  +'P2PCOTAB, '
                  +'P2TOTDES, '
                  +'P2DESCRAT, '
                  +'P2REPAS, '
                  +'P2TABELA, '
                  +'P2ALIPI, '
                  +'P2VALIPI, '
                  +'P2BCINR, '
                  +'P2ICMSNR, '
                  +'P2ISENTAS, '
                  +'P2ALIQ, '
                  +'P2ALIQNR, '
                  +'P2PCOMIS, '
                  +'P2VCOMIS, '
                  +'P2DESCM, '
                  +'P2SEMCOM, '
                  +'P2UCPR, '
                  +'P2PCOCUS, '
                  +'P2TOTLIQ, '
                  +'P2PDESCF, '
                  +'P2VDESCF, '
                  +'P2ACRECONV, '
                  +'P2ACREGER, '
                  +'P2CFO, '
                  +'P2DTVCTO, '
                  +'P2LOTE) values ('
                  +Inttostr(codemp)+','
                  +IntToStr(mchaveped)+','
                  +'1,'
                  +intTostr(mqtdi)+','
                  +DM1.Tb_ProPDCODPRO.AsString+','
                  +mudavp(FloatToStr(ValFloat(QTD.Text)))+','
                  +mudavp(FloatToStr(mdesc))+','
                  +mudavp(FloatTostr(mdesc2))+','
                  +'0'+','
                  +mudavp(DM1.Tb_ProPDPRECO1.AsString)+','
                  +chr(39)+FormatFloat('000',ValFloat(DM1.Tb_ProPDSIT.Value))+chr(39)+','
                  +mudavp(DM1.Tb_ProPDCODFOR.AsString)+','
                  +mudavp(FloatToStr(mbasen))+','    // base do icms normal
                  +mudavp(FloatToStr(micmsn))+','    // Valor do icms normal
                  +mudavp(FloatTostr(mbaser))+','    // base do icms retido
                  +mudavp(FloatToStr(micmsr))+','    // valor do icms retido
                  +Formatfloat('0',DM1.Tb_ProPDLISTA.Value)+','
                  +'0'+',' // status do produto
                  +mudavp(DM1.Tb_ProPDPRECO1.AsString)+','
                  +mudavp(FloatToStr(mtotdes))+','   // Total do desconto
                  +mudavp(FloatToStr(0))+','   // Desconto Rateado
                  +mudavp(FloatTostr(mrepas))+','   // Repasse do icms
                  +chr(39)+DM1.Tb_ProPDTABICM.Value+chr(39)+','
                  +mudavp(FloatTostr(malipi))+','
                  +mudavp(FloatTostr(mvalipi))+','   // Valor do IPI
                  +mudavp(FloatTostr(mbinr))+','   // Base Calculo Icms normal do retido
                  +mudavp(FloatToStr(micmsnr))+','   // Icms normal do Retido
                  +mudavp(FloatTosTr(misentas))+',' // Isentas
                  +mudavp(FloatToStr(maliq))+','   // Aliquota de icms
                  +mudavp(FloatToStr(maliqnr))+','    // Aliquota normal do retido
                  +mudavp(FloatTostr(mpcomis))+',' // p2pcomis
                  +mudavp(FormatFloat(mcasas,((mtotal-mvaldes)*mpcomis)/100) )+','
                  +mudavp(FloatTostr(mdescm))+',' // p2descm
                  +FormatFloat('0',DM1.Tb_ProPDSEMCOM.Value)+',' // produto sem comissao 0-nao 1-sim
                  +mudavp(DM1.Tb_ProPDUCPR.AsString)+','
                  +mudavp(DM1.Tb_ProPDPRECOC.AsString)+','
                  +mudavp(FloatToStr(mtotal-mvaldes))+','
                  +mudavp(FloatToStr(mpdescf))+','
                  +mudavp(FormatFloat(mcasas, ((mtotal-mvaldes)*mpdescf)/100) )+','
                  +mudavp(FloatToStr(macrecv))+','
                  +mudavp(FloatToStr(macreger))+','
                  +Formatfloat('0000',mcfo)+',' // cfo
                  +':DTVCTO,:LOTE)');
   DM1.Query1.params[0].AsString:='';
   DM1.Query1.params[1].AsString:='';
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,625,'frm_Ponven','CADP02');
   end;

}
flbaiest(0,0,1,0,DM1.Tb_ProPDCODPRO.AsString,'frm_ponven_880_',ValFloat(Qtd.Text));
if DM1.Tb_PargerPPCOGRA.Value=1 then
  begin
  flbailgc(0,0,1,0,DM1.Tb_ProPDCODPRO.AsString,mLote,'','','',ValFloat(qtd.Text));
  CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,mLote,'S_PonVen',1,DM1.Tb_ProPDSALDO.AsFloat,ValFloat(QTD.Text),' Ponto de Venda ');
  end;


CODPRO.Text:='';
QTD.Text:=FormatFloat(mcasqtd,1);
CODPRO.SetFocus;


end;

procedure TFrm_PonVen.CODPROExit(Sender: TObject);
begin
if not QTD.Focused then
   EFETIVAR.Click;
end;

function fpvgravap1(ptipo: Integer;pAcreCup,pDesCup: Real): Boolean;
{
Parametros
2-Inclusao inicial nao gera nfs nem duplicatas
3-ja Iniciou formas de pgto
4-Confirma a inclusao de todo o pedido inclusive as formas de pagamentos
1-Inclusao deleta anterior
}
var
mtotucpr:Real;
mtotb,mtotl,mbasen,micmsn,mbaser,micmsr,mbasenp,mbasenn,mbaseni: Real;
micmsnp, micmsnn, micmsni,mbaserp,mbasern,mbaseri: Real;
micmsrp, micmsrn, micmsri,mbasenrp,mbasenri,mbasenrn: Real;
micmsnrp, micmsnrn, micmsnri, mipiina, mipipos, mipineg : Real;
mtottri, mtotret, mtotise, mtotpos, mtotneg, mtotina: Real;
mbascal, msemcom,mbissqn, mvissqn, mpiscofn, mpiscofr, mtotdes: Real;
mtotcom02,mtotcom03,mtotcom04,mcomis,mcomist,mcomiss,mdescfin,mrepas,mpavdes,mbcissqn, missqn: Real;
mtotout,mtotdi01, mtotdi02, mtotdivl,mdescitem: Real;
mcfop1, mcfop2: String;
y:Integer;
begin
if (ptipo=3) or (ptipo=4) then
   begin
   DM1.Query1.Params.Clear;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('UPDATE CADP01 set P1CUPOM='+iif(ptipo=3,'3','1')
                     +iif(DM1.Tb_PargerPTIPOTEF.Value=2,', P1NUMCF=0'+Inttostr(mncupom),'')
                     +' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntTostr(codemp)+' and ')
                     +' P1LOTSEQ=0'+IntToStr(ls_numped)
                     +' and P1CHAVE=0'+FloatToStr(mchaveped));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,678,'frm_Ponven','CADP01');
      end;
   result:=True;
   exit;
   end;


mtotb   :=0; mtotl   :=0; mbasen  :=0; micmsn  :=0; mbaser  :=0; micmsr  :=0; mbasenp:=0; mbasenn:=0; mbaseni:=0;
micmsnp :=0; micmsnn :=0; micmsni :=0; mbaserp :=0; mbasern :=0; mbaseri :=0;
micmsrp :=0; micmsrn :=0; micmsri :=0; mbasenrp:=0; mbasenri:=0; mbasenrn:=0;
micmsnrp:=0; micmsnrn:=0; micmsnri:=0; mipiina :=0; mipipos :=0; mipineg :=0;
mtottri :=0; mtotret :=0; mtotise :=0; mtotpos :=0; mtotneg :=0; mtotina :=0;
mpiscofn:=0; mpiscofr:=0; mtotdes :=0; mbissqn :=0; mvissqn :=0;
msemcom :=0; mcomis  :=0; mcomist :=0; mcomiss :=0; mrepas :=0;
mdescfin:=0; mpavdes :=0; mbcissqn:=0; missqn  :=0;
mtotucpr:=0; mtotcom02:=0; mtotcom03:=0; mtotcom04:=0;
mtotdi01:=0; mtotdi02:=0; mtotdivl:=0; mtotout:=0;
macrecv  :=0; macreger :=0;
mcfop1:='';
mcfop2:='';

DM1.Tb_Ped02.Close;
DM1.Tb_Ped02.SQl.Clear;
DM1.Tb_Ped02.Sql.add('Select * from CADP02 where ');
if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Tb_Ped02.Sql.add(' P2LOTSEQ=0'+IntTostr(ls_numped)
                       +' P2CHAVE=0'+FloatTostr(mchaveped)
                   +' order by P2CHAVE');
   end
else
   DM1.Tb_Ped02.Sql.add(' P2CODEMP=0'+intTostr(codemp)
                   +' and P2LOTSEQ=0'+IntTostr(ls_numped)
                   +' and P2CHAVE=0'+FloatTostr(mchaveped)
                   +' order by P2CODEMP,P2CHAVE');
DM1.Tb_Ped02.Open;
While not DM1.Tb_Ped02.Eof do
   begin
   if DM1.Tb_ECFCFARRED.Value=0 then
      mtotb   :=mtotb+Arredonda((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)
   else
      mtotb   :=mtotb+Truncar((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger);
   if mcfop1='' then
      mcfop1:=FormatFloat('0000',DM1.Tb_Ped02P2CFO.Value);
   if mcfop2='' then
      begin
      if mcfop1<>Formatfloat('0000',DM1.Tb_Ped02P2CFO.Value) then
         mcfop2:=FormatFloat('0000',DM1.Tb_Ped02P2CFO.Value);
      end;

   mbasen  :=mbasen+DM1.Tb_Ped02P2BASEN.Value;
   micmsn  :=micmsn+DM1.Tb_Ped02P2ICMSN.Value;
   mbaser  :=mbaser+DM1.Tb_Ped02P2BASER.Value;
   micmsr  :=micmsr+DM1.Tb_Ped02P2ICMSR.Value;
   mbascal :=(DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value);
   mbascal :=mbascal-DM1.Tb_Ped02P2VALDES.Value-DM1.Tb_Ped02P2REPAS.Value;
   mdescitem:=arredonda((mtotb*DM1.Tb_Ped02P2DESC1.Value/100),2);
   mtotdi01 :=mtotdi01+mdescitem;
   mdescitem:=arredonda(((mtotb-mdescitem)*DM1.Tb_Ped02P2DESC2.Value/100),2);
   mtotdi02 :=mtotdi02+mdescitem;
   mtotdivl :=mtotdivl+DM1.Tb_Ped02P2VALDES.Value;
   macrecv  :=macrecv +DM1.Tb_Ped02P2ACRECONV.Value;
   macreger :=macreger+DM1.Tb_Ped02P2ACREGER.Value;
//   mbascal :=mbascal-(mbascal*ValFloat(DESC01.Text)/100);
//   mbascal :=mbascal-(mbascal*ValFloat(DESC02.Text)/100);
   mcomis  :=mcomis+(mbascal*DM1.Tb_Ped02P2PCOMIS.Value/100);
//   mcomiss  :=mcomiss+(mbascal*DM1.Tb_PargerPCOMSUP.Value/100);
//   mcomist  :=mcomist+(mbascal*DM1.Tb_PargerPCOMTLV.Value/100);
   mtotucpr :=mtotucpr+arredonda((DM1.Tb_Ped02P2QTD.Value*DM1.Tb_Ped02P2UCPR.Value),mcasger);
   if DM1.Tb_Ped02p2lista.Value=1 then
      begin
      mbasenp :=mbasenp+DM1.Tb_Ped02p2basen.Value;
      micmsnp :=micmsnp+DM1.Tb_Ped02p2icmsn.Value;
      mbaserp :=mbaserp+DM1.Tb_Ped02P2BASER.Value;
      micmsrp :=micmsrp+DM1.Tb_Ped02P2ICMSR.Value;
      mbasenrp:=mbasenrp+DM1.Tb_Ped02P2BCINR.Value;
      micmsnrp:=micmsnrp+DM1.Tb_Ped02P2ICMSNR.Value;
      mipipos :=mipipos+DM1.Tb_Ped02P2VALIPI.Value;
      end
   else if DM1.Tb_Ped02p2lista.Value=1 then
      begin
      mbasenn :=mbasenn+DM1.Tb_Ped02p2basen.Value;
      micmsnn :=micmsnn+DM1.Tb_Ped02p2icmsn.Value;
      mbasern :=mbasern+DM1.Tb_Ped02P2BASER.Value;
      micmsrn :=micmsrn+DM1.Tb_Ped02P2ICMSR.Value;
      mbasenrn:=mbasenrn+DM1.Tb_Ped02P2BCINR.Value;
      micmsnrn:=micmsnrn+DM1.Tb_Ped02P2ICMSNR.Value;
      mipineg :=mipineg+DM1.Tb_Ped02P2VALIPI.Value;
      end
   else
      begin
      mbaseni :=mbaseni+DM1.Tb_Ped02p2basen.Value;
      micmsni :=micmsni+DM1.Tb_Ped02p2icmsn.Value;
      mbaseri :=mbaseri+DM1.Tb_Ped02P2BASER.Value;
      micmsri :=micmsri+DM1.Tb_Ped02P2ICMSR.Value;
      mbasenri:=mbasenri+DM1.Tb_Ped02P2BCINR.Value;
      micmsnri:=micmsnri+DM1.Tb_Ped02P2ICMSNR.Value;
      mipiina :=mipiina+DM1.Tb_Ped02P2VALIPI.Value;
      end;
   if DM1.Tb_Ped02p2sit.Value[2] in ['1','6'] then
      begin
      if DM1.Tb_ECFCFARRED.Value=0 then
         begin
         mtotret:=mtotret+arredonda((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value;
         mpiscofr:=mpiscofr+arredonda((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value;
         end
      else
         begin
         mtotret:=mtotret+Truncar((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value;
         mpiscofr:=mpiscofr+Truncar((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value;
         end;
      end
   else if DM1.Tb_Ped02p2sit.Value[2] in ['4'] then
      begin
      if dm1.Tb_ECFCFARRED.Value=0 then
         mpiscofn:=mpiscofn+arredonda((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value
      else
         mpiscofn:=mpiscofn+truncar((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value;
      end
   else
      begin
      if DM1.Tb_ECFCFARRED.Value=0 then
         begin
         mpiscofn:=mpiscofn+arredonda((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value;
         mtottri:=mtottri+Arredonda((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value;
         end
      else
         begin
         mpiscofn:=mpiscofn+truncar((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value;
         mtottri:=mtottri+truncar((DM1.Tb_Ped02P2PRECO.Value*DM1.Tb_Ped02P2QTD.Value),mcasger)-DM1.Tb_Ped02P2TOTDES.Value;
         end;

      end;
   mtotdes:=mtotdes+DM1.Tb_Ped02P2TOTDES.Value;
   mrepas:=mrepas+DM1.Tb_Ped02P2REPAS.Value;
   mtotout:=mtotout+DM1.Tb_Ped02P2TOTOUT.Value;
//   if DM1.Tb_Ped02P2SEMCOM.Value=1 then
//      msemcom:=msemcom+mbascal;
   mdescfin:=mdescfin+DM1.Tb_Ped02P2VDESCF.Value;
   DM1.Tb_Ped02.Next;
   end;
mtotl:=mtotb-mtotdes-mrepas+micmsr+macrecv+macreger+mvalfre;
{
mpavdes:=mtotb-mtotd;
if (mpavdes<>0) and (valFloat(VALDES.Text)<>0) then
    mpavdes:=(valfloat(VALDES.Text)*100)/mpavdes
else
    mpavdes:=0;
mpavdes:=Arredonda(mpavdes,3);
}
mpavdes:=0;
//if ptipo=2 then
//   begin
   iretorno:=fpvecf_Bema(0,9,0,0,0,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao buscar o numero do cupom: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
//   end;
{
if ptipo=1 then
   begin
   DM1.Query1.Params.Clear;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('DELETE from CADP01 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntTostr(codemp)+' and ')
                     +' P1CHAVE=0'+IntToStr(mchaveped));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,831,'frm_Ponven','CADP01');
      end;
   end;
}
DM1.Tb_Ped01.Close;

if mOper=0 then
   begin
   DM4.Qr_IncPed01.Close;
   DM4.Qr_IncPed01.ParambyName('P1CODEMP').AsFloat       := codemp;
   DM4.Qr_IncPed01.ParambyName('P1LOTSEQ').AsFloat       := ls_numped;
   DM4.Qr_IncPed01.ParambyName('P1CHAVE').AsFloat        := mchaveped;
   DM4.Qr_IncPed01.ParambyName('P1ANALISE').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1CHAVE_NIVEL').AsFloat:= 00;

   DM4.Qr_IncPed01.ParambyName('P1ORDEM').AsFloat        := 01;
   DM4.Qr_IncPed01.ParambyName('P1CODCLI').AsFloat       := mpvcodcli;
   DM4.Qr_IncPed01.ParambyName('P1CODVEN').AsFloat       := mpvcodven;
   DM4.Qr_IncPed01.ParambyName('P1CODV02').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODV03').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODV04').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODASSE').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1DATAP').AsDatetime     := pdatasis;
   DM4.Qr_IncPed01.ParambyName('P1DATANF').AsDatetime    := pdatasis;
   DM4.Qr_IncPed01.ParambyName('P1NUMNF').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1SERIE').AsString       := '1';
   DM4.Qr_IncPed01.ParambyName('P1SUBSER').AsString      := '1';
   DM4.Qr_IncPed01.ParambyName('P1MODELO').AsString      := '1';
   DM4.Qr_IncPed01.ParambyName('P1SUBMOD').AsString      := NumPal_Sis('0');
   DM4.Qr_IncPed01.ParambyName('P1FORMACE').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1OBS1').AsString        := mpvobs1;
   DM4.Qr_IncPed01.ParambyName('P1OBS2').AsString        := mpvobs2;
   DM4.Qr_IncPed01.ParambyName('P1OBS3').AsString        := mpvobs3;
   DM4.Qr_IncPed01.ParambyName('P1STATUS').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1TIPO').AsFloat         := 1;
   DM4.Qr_IncPed01.ParambyName('P1PEDORI').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1SITPED').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTALB').AsFloat       := mtotb;
   DM4.Qr_IncPed01.ParambyName('P1TOTALL').AsFloat       := mtotl;
   DM4.Qr_IncPed01.ParambyName('P1CODUSR').AsFloat       := codusr;
   DM4.Qr_IncPed01.ParambyName('P1HORADIG').AsString     := FormatDateTime(fhr, time);  // horadigitada
   DM4.Qr_IncPed01.ParambyName('P1DTMOD').AsDateTime     := pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HRMOD').AsString       := FormatDateTime(fhr, time);  // hora da alteraçao
   DM4.Qr_IncPed01.ParambyName('P1USRMOD').AsFloat       := codusr;
   DM4.Qr_IncPed01.ParambyName('P1CONF').AsString        := 'N';
   DM4.Qr_IncPed01.ParambyName('P1CODCON').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1DATCON').AsDateTime    :=pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HORCON').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1TIPENT').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1PREVENT').AsDateTime   := pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HPREVENT').AsString    := '';
   DM4.Qr_IncPed01.ParambyName('P1CODENT').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1PRAZO').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1DATENT').AsDateTime    := pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HORENT').AsString      := '';
   DM4.Qr_IncPed01.ParambyName('P1TABPV').AsString       := mpvtabpv;
   DM4.Qr_IncPed01.ParambyName('P1CODPV').AsFloat        := mpvcodpv;
   DM4.Qr_IncPed01.ParambyName('P1CUPOM').AsFloat        := 1;
   DM4.Qr_IncPed01.ParambyName('P1BASEN').AsFloat        := mbasen;
   DM4.Qr_IncPed01.ParambyName('P1ICMSN').AsFloat        := micmsn;
   DM4.Qr_IncPed01.ParambyName('P1REPAS').AsFloat        := mrepas;
   DM4.Qr_IncPed01.ParambyName('P1BASER').AsFloat        := mbaser;
   DM4.Qr_IncPed01.ParambyName('P1ICMSR').AsFloat        := micmsr;
   DM4.Qr_IncPed01.ParambyName('P1BASENP').AsFloat       := mbasenp;
   DM4.Qr_IncPed01.ParambyName('P1BASENN').AsFloat       := mbasenn;
   DM4.Qr_IncPed01.ParambyName('P1BASENI').AsFloat       := mbaseni;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNP').AsFloat       := micmsnp;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNN').AsFloat       := micmsnn;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNI').AsFloat       := micmsni;
   DM4.Qr_IncPed01.ParambyName('P1BASERP').AsFloat       := mbaserp;
   DM4.Qr_IncPed01.ParambyName('P1BASERN').AsFloat       := mbasern;
   DM4.Qr_IncPed01.ParambyName('P1BASERI').AsFloat       := mbaseri;
   DM4.Qr_IncPed01.ParambyName('P1ICMSRP').AsFloat       := micmsrp;
   DM4.Qr_IncPed01.ParambyName('P1ICMSRN').AsFloat       := micmsrn;
   DM4.Qr_IncPed01.ParambyName('P1ICMSRI').AsFloat       := micmsri;
   DM4.Qr_IncPed01.ParambyName('P1BASENRI').AsFloat      := mbasenri;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNRI').AsFloat      := micmsnri;
   DM4.Qr_IncPed01.ParambyName('P1BASENRP').AsFloat      := mbasenrp;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNRP').AsFloat      := micmsnrp;
   DM4.Qr_IncPed01.ParambyName('P1BASENRN').AsFloat      := mbasenrn;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNRN').AsFloat      := micmsnrn;
   DM4.Qr_IncPed01.ParambyName('P1IPIINA').AsFloat       := mipiina;
   DM4.Qr_IncPed01.ParambyName('P1IPIPOS').AsFloat       := mipipos;
   DM4.Qr_IncPed01.ParambyName('P1IPINEG').AsFloat       := mipineg;
   DM4.Qr_IncPed01.ParambyName('P1TOTTRI').AsFloat       := mtottri;
   DM4.Qr_IncPed01.ParambyName('P1TOTRET').AsFloat       := mtotret;
   DM4.Qr_IncPed01.ParambyName('P1TOTISE').AsFloat       := mtotise;
   DM4.Qr_IncPed01.ParambyName('P1TOTOUT').AsFloat       := mtotout;
   DM4.Qr_IncPed01.ParambyName('P1TOTPOS').AsFloat       := mtotpos;
   DM4.Qr_IncPed01.ParambyName('P1TOTNEG').AsFloat       := mtotneg;
   DM4.Qr_IncPed01.ParambyName('P1TOTINA').AsFloat       := mtotina;
//   DM4.Qr_IncPed01.ParambyName('P1PISCOFN').AsFloat      := mpiscofn;
//   DM4.Qr_IncPed01.ParambyName('P1PISCOFR').AsFloat      := mpiscofr;
   DM4.Qr_IncPed01.ParambyName('P1TOTDES').AsFloat       := mtotdes;
   DM4.Qr_IncPed01.ParambyName('P1TOTDI01').AsFloat      := mtotdi01;
   DM4.Qr_IncPed01.ParambyName('P1TOTDI02').AsFloat      := mtotdi02;
   DM4.Qr_IncPed01.ParambyName('P1TOTDI03').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1VALDES01').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1VALDES02').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTDIVL').AsFloat      := mtotdivl;
   DM4.Qr_IncPed01.ParambyName('P1TOTUCPR').AsFloat      := mtotucpr;
   DM4.Qr_IncPed01.ParambyName('P1DESC01').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1DESC02').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1VLRDES').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1PAVDES').AsFloat       := mpavdes;
   DM4.Qr_IncPed01.ParambyName('P1CODTRA').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1QTDVOL').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1PESOL').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1PESOB').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1ESPECIE').AsString     := 'CX';
   DM4.Qr_IncPed01.ParambyName('P1FRETEPC').AsFloat      := 1;
   DM4.Qr_IncPed01.ParambyName('P1VALFRE').AsFloat       := mvalfre;
   DM4.Qr_IncPed01.ParambyName('P1TARBAN').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_BCSEG').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_ALSEG').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_VLSEG').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_BCOUTD').AsFloat  := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_ALOUTD').AsFloat  := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_VLOUTD').AsFloat  := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_BCIPI').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_ALIPI').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_VLIPI').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1UFPV').AsString        := '';
   DM4.Qr_IncPed01.ParambyName('P1PLACAV').AsString      := '';
   DM4.Qr_IncPed01.ParambyName('P1BANCO').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODSER').AsFloat       := 1;
   DM4.Qr_IncPed01.ParambyName('P1CODLDR').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1PCOMIS').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODCV').AsFloat        := mpvcodcv;
   DM4.Qr_IncPed01.ParambyName('P1LOTEDM').AsFloat       := 0;

   DM4.Qr_IncPed01.ParambyName('P1COMIS').AsFloat        := mcomis;
   DM4.Qr_IncPed01.ParambyName('P1COMV02').AsFloat       := mtotcom02;
   DM4.Qr_IncPed01.ParambyName('P1COMV03').AsFloat       := mtotcom03;
   DM4.Qr_IncPed01.ParambyName('P1COMV04').AsFloat       := mtotcom04;
   DM4.Qr_IncPed01.ParambyName('P1COMIST').AsFloat       := mcomist;
   DM4.Qr_IncPed01.ParambyName('P1COMISS').AsFloat       := mcomiss;
   DM4.Qr_IncPed01.ParambyName('P1COMASSE').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1ORIGEM').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1NPEDORI').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODTLV').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1BCISSQN').AsFloat      := mbcissqn;
   DM4.Qr_IncPed01.ParambyName('P1VISSQN').AsFloat       := mvissqn;
   DM4.Qr_IncPed01.ParambyName('P1ETIVOL').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODSEP').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1DATASEP').AsDateTime   := pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HORSEP').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CODEMB').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1DATAEMB').AsDateTime   := pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HOREMB').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1NUMCF').AsFloat        := mncupom;
   DM4.Qr_IncPed01.ParambyName('P1CODECF').AsFloat       := codecf;
   DM4.Qr_IncPed01.ParambyName('P1DATACF').AsDateTime    := pdatasis;
   DM4.Qr_IncPed01.ParambyName('P1TPPCO').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1SEMCOM').AsFloat       := msemcom;
   DM4.Qr_IncPed01.ParambyName('P1DESCFIN').AsFloat      := mdescfin;
   DM4.Qr_IncPed01.ParambyName('P1LOTCV').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCASSE').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCS').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCT').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1PVTC').AsFloat         := mpvtc;
   DM4.Qr_IncPed01.ParambyName('P1PVCOM').AsFloat        := mpvcom;
   DM4.Qr_IncPed01.ParambyName('P1PVCOM02').AsFloat      := mpvcom02;
   DM4.Qr_IncPed01.ParambyName('P1PVCOM03').AsFloat      := mpvcom03;
   DM4.Qr_IncPed01.ParambyName('P1PVCOM04').AsFloat      := mpvcom04;
   DM4.Qr_IncPed01.ParambyName('P1PVACTD').AsFloat       := mpvactd;
   DM4.Qr_IncPed01.ParambyName('P1PVACT00').AsFloat      := mpvact00;
   DM4.Qr_IncPed01.ParambyName('P1PVACT01').AsFloat      := mpvact01;
   DM4.Qr_IncPed01.ParambyName('P1PVACT99').AsFloat      := mpvact99;
   DM4.Qr_IncPed01.ParambyName('P1PVTDC').AsFloat        := mpvtdc;
   DM4.Qr_IncPed01.ParambyName('P1PVDES').AsFloat        := mpvdes;
   DM4.Qr_IncPed01.ParambyName('P1PVTPD1').AsFloat       := mpvtpd1;
   DM4.Qr_IncPed01.ParambyName('P1PVDES1').AsFloat       := mpvdes1;
   DM4.Qr_IncPed01.ParambyName('P1PVTPD2').AsFloat       := mpvtpd2;
   DM4.Qr_IncPed01.ParambyName('P1PVDES2').AsFloat       := mpvdes2;
   DM4.Qr_IncPed01.ParambyName('P1PVTPD3').AsFloat       := mpvtpd3;
   DM4.Qr_IncPed01.ParambyName('P1PVDES3').AsFloat       := mpvdes3;
   DM4.Qr_IncPed01.ParambyName('P1PVTPDESF').AsFloat     := mpvtpdesf;
   DM4.Qr_IncPed01.ParambyName('P1PVDESCF').AsFloat      := mpvdescf;
   DM4.Qr_IncPed01.ParambyName('P1PVDIASDESCF').AsFloat  := mpvdiasdescf;
   DM4.Qr_IncPed01.ParambyName('P1PVDDESCF').AsFloat     := mpvddescf;
   DM4.Qr_IncPed01.ParambyName('P1TPP').AsFloat          := mtpp;
   DM4.Qr_IncPed01.ParambyName('P1SITAC').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1VLRACRE').AsFloat      := mvlracre;
   DM4.Qr_IncPed01.ParambyName('P1PEDORI1').AsString     := ' ';
   DM4.Qr_IncPed01.ParambyName('P1PEDORI2').AsString     := ' ';
   DM4.Qr_IncPed01.ParambyName('P1MOTIVO').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1NUMVIS').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1DATVIS').AsDateTime    := pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1DATDOC').AsDate        := now;
   DM4.Qr_IncPed01.ParambyName('P1EMIDOC').AsFloat       := 1;
   DM4.Qr_IncPed01.ParambyName('P1ACRECONV').AsFloat     := macrecv;
   DM4.Qr_IncPed01.ParambyName('P1ACREGER').AsFloat      := macreger;
   DM4.Qr_IncPed01.ParambyName('P1PACRECONV').AsFloat    := mpacreconv;
   DM4.Qr_IncPed01.ParambyName('P1PACREGER').AsFloat     := mpacreger;
   DM4.Qr_IncPed01.ParambyName('P1CODDEP').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1NAUT').AsString        := mpvnaut;
   DM4.Qr_IncPed01.ParambyName('P1MINUTA').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1SITCPR').AsFloat       := msitcpr;
   DM4.Qr_IncPed01.ParambyName('P1LOTCV02').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCV03').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCV04').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1SEMCOMP').AsString     := '0';
   DM4.Qr_IncPed01.ParambyName('P1CFO1').AsString        := mcfop1;
   DM4.Qr_IncPed01.ParambyName('P1CFO2').AsString        := mcfop2;
   DM4.Qr_IncPed01.ParambyName('P1CFOSER').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1BLQPRM').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1VALSEG').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1PDESCLIB').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1PDESCL_USR').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1PROCESSO').AsString    := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CUPACRE').AsFloat      := pAcreCup;
   DM4.Qr_IncPed01.ParambyName('P1CUPDES').AsFloat       := pDesCup;
   DM4.Qr_IncPed01.ParambyName('P1LEMAT').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1QTDMAN').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CANHOTO').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1DTACERTO').AsDateTime:= pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1LTACERTO').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ALIQDEB').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTCGRU').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTSGRU').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTSERLIQ').AsFloat    := 0;
   DM4.Qr_IncPed01.ParambyName('P1DTHRCHEG').AsDatetime  := Now;
   DM4.Qr_IncPed01.ParambyName('P1CODPRIOR').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1PROMOCAO').AsString    := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CODBLOQ').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CODUSR_LBLOQ').AsFloat  := 0;
   DM4.Qr_IncPed01.ParambyName('P1COMIS_EXTRA').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1QTDM3').AsFloat         := 0;
   DM4.Qr_IncPed01.ParambyName('P1VFRE_CUSENT').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1VALENT').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1PRAZO_ENT').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1SEPAMB').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1PZOLIB').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1PZOLIB_USR').AsFloat    := 0;
   DM4.Qr_IncPed01.ParambyName('P1BLOQPEND').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODBLOQ_LIB').AsString  := ' ';
   DM4.Qr_IncPed01.ParambyName('P1ECF_SERIE').AsString    :=' ';
   DM4.Qr_IncPed01.ParambyName('P1CX_CODCAI').AsFloat     :=codcai;
   DM4.Qr_IncPed01.ParambyName('P1CX_LOTMOV').AsFloat     :=lotmov;
   DM4.Qr_IncPed01.ParambyName('P1DUP_PROD').AsFloat      :=0;
   DM4.Qr_IncPed01.ParambyName('P1DUP_SERV').AsFloat      :=0;
   DM4.Qr_IncPed01.ParambyName('P1INCTB').AsFloat         :=DM4.Tb_Par01PINCTB.Value;
   DM4.Qr_IncPed01.ParambyName('P1EMITENTE').AsString     :='P';
   DM4.Qr_IncPed01.ParambyName('P1PVACREDESREG').AsFloat    :=0;
   DM4.Qr_IncPed01.ParambyName('P1PVAJCOMIS').AsFloat       :=0;
   DM4.Qr_IncPed01.ParambyName('P1LOCAL').AsFloat           :=0;
   DM4.Qr_IncPed01.ParambyName('P1TOTPROM').AsFloat          := 0;
   DM4.Qr_IncPed01.ParambyName('P1TIPO_ENTSAI').AsFloat    := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTPIS').AsFloat    := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTCOFINS').AsFloat    := 0;
   DM4.Qr_IncPed01.ParambyName('P1RED_BCISSQN').AsFloat  := 0;
   DM4.Qr_IncPed01.ParambyName('P1BCINSS').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1RED_BCINSS').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1VINSS').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1BCIRRF').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1RED_BCIRRF').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1VIRRF').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1NFE_ENVXML').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1QTDDECPU').AsFloat     := dm1.Tb_PargerPCASASPU.AsInteger;
   DM4.Qr_IncPed01.ParambyName('P1TPEMIS').AsFloat       := 1;
   try
       DM4.Qr_IncPed01.ExecSQL;
       fdm1StartCommit;
   except
      ex_erroSql(05,1018,'Frm_PonVen','CADP01');
      result:=False;
      exit;
      end;
   end
else
   begin
   DM4.Qr_AltPed01.Close;
   DM4.Qr_AltPed01.ParambyName('P1CODEMP').AsFloat       := codemp;
   DM4.Qr_AltPed01.ParambyName('P1LOTSEQ').AsFloat       := ls_numped;
   DM4.Qr_AltPed01.ParambyName('P1CHAVE').AsFloat        := mchaveped;
   DM4.Qr_AltPed01.ParambyName('P1ANALISE').AsFloat      := DM4.Qr_Ped01P1ANALISE.Value;
   DM4.Qr_AltPed01.ParambyName('P1ACRESCIMO').AsFloat     := DM4.Qr_Ped01P1ACRESCIMO.Value;
   DM4.Qr_AltPed01.ParambyName('P1CHAVE_NIVEL').AsFloat  := 00;
   DM4.Qr_AltPed01.ParambyName('P1ORDEM').AsFloat        := 01;
   DM4.Qr_AltPed01.ParambyName('P1CODCLI').AsFloat       := mpvcodcli;
   DM4.Qr_AltPed01.ParambyName('P1CODVEN').AsFloat       := mpvcodven;
   DM4.Qr_AltPed01.ParambyName('P1CODV02').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1CODV03').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1CODV04').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1CODASSE').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1DATAP').AsDatetime     := pdatasis;
   DM4.Qr_AltPed01.ParambyName('P1DATANF').AsDatetime    := pdatasis;
   DM4.Qr_AltPed01.ParambyName('P1NUMNF').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1SERIE').AsString       := '1';
   DM4.Qr_AltPed01.ParambyName('P1SUBSER').AsString      := '1';
   DM4.Qr_AltPed01.ParambyName('P1MODELO').AsString      := '1';
   DM4.Qr_AltPed01.ParambyName('P1SUBMOD').AsString      := NumPal_Sis('0');
   DM4.Qr_AltPed01.ParambyName('P1FORMACE').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1OBS1').AsString        := mpvobs1;
   DM4.Qr_AltPed01.ParambyName('P1OBS2').AsString        := mpvobs2;
   DM4.Qr_AltPed01.ParambyName('P1OBS3').AsString        := mpvobs3;
   DM4.Qr_AltPed01.ParambyName('P1STATUS').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1TIPO').AsFloat         := 1;
   DM4.Qr_AltPed01.ParambyName('P1PEDORI').AsFloat       := 0;

   DM4.Qr_AltPed01.ParambyName('P1SITPED').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1TOTALB').AsFloat       := mtotb;
   DM4.Qr_AltPed01.ParambyName('P1TOTALL').AsFloat       := mtotl;
   DM4.Qr_AltPed01.ParambyName('P1CODUSR').AsFloat       := codusr;
   DM4.Qr_AltPed01.ParambyName('P1HORADIG').AsString     := FormatDateTime(fhr, time);  // horadigitada
   DM4.Qr_AltPed01.ParambyName('P1DTMOD').AsDateTime     := pdatanula;
   DM4.Qr_AltPed01.ParambyName('P1HRMOD').AsString       := FormatDateTime(fhr, time);  // hora da alteraçao
   DM4.Qr_AltPed01.ParambyName('P1USRMOD').AsFloat       := codusr;
   DM4.Qr_AltPed01.ParambyName('P1CONF').AsString        := 'N';
   DM4.Qr_AltPed01.ParambyName('P1CODCON').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1DATCON').AsDateTime    :=pdatanula;
   DM4.Qr_AltPed01.ParambyName('P1HORCON').AsString      := ' ';
   DM4.Qr_AltPed01.ParambyName('P1TIPENT').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1PREVENT').AsDateTime   := pdatanula;
   DM4.Qr_AltPed01.ParambyName('P1HPREVENT').AsString    := '';
   DM4.Qr_AltPed01.ParambyName('P1CODENT').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1PRAZO').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1DATENT').AsDateTime    := pdatanula;
   DM4.Qr_AltPed01.ParambyName('P1HORENT').AsString      := '';
   DM4.Qr_AltPed01.ParambyName('P1TABPV').AsString       := mpvtabpv;
   DM4.Qr_AltPed01.ParambyName('P1CODPV').AsFloat        := mpvcodpv;
   DM4.Qr_AltPed01.ParambyName('P1CUPOM').AsFloat        := 1;
   DM4.Qr_AltPed01.ParambyName('P1BASEN').AsFloat        := mbasen;
   DM4.Qr_AltPed01.ParambyName('P1ICMSN').AsFloat        := micmsn;
   DM4.Qr_AltPed01.ParambyName('P1REPAS').AsFloat        := mrepas;
   DM4.Qr_AltPed01.ParambyName('P1BASER').AsFloat        := mbaser;
   DM4.Qr_AltPed01.ParambyName('P1ICMSR').AsFloat        := micmsr;
   DM4.Qr_AltPed01.ParambyName('P1BASENP').AsFloat       := mbasenp;
   DM4.Qr_AltPed01.ParambyName('P1BASENN').AsFloat       := mbasenn;
   DM4.Qr_AltPed01.ParambyName('P1BASENI').AsFloat       := mbaseni;
   DM4.Qr_AltPed01.ParambyName('P1ICMSNP').AsFloat       := micmsnp;
   DM4.Qr_AltPed01.ParambyName('P1ICMSNN').AsFloat       := micmsnn;
   DM4.Qr_AltPed01.ParambyName('P1ICMSNI').AsFloat       := micmsni;
   DM4.Qr_AltPed01.ParambyName('P1BASERP').AsFloat       := mbaserp;
   DM4.Qr_AltPed01.ParambyName('P1BASERN').AsFloat       := mbasern;
   DM4.Qr_AltPed01.ParambyName('P1BASERI').AsFloat       := mbaseri;
   DM4.Qr_AltPed01.ParambyName('P1ICMSRP').AsFloat       := micmsrp;
   DM4.Qr_AltPed01.ParambyName('P1ICMSRN').AsFloat       := micmsrn;
   DM4.Qr_AltPed01.ParambyName('P1ICMSRI').AsFloat       := micmsri;
   DM4.Qr_AltPed01.ParambyName('P1BASENRI').AsFloat      := mbasenri;
   DM4.Qr_AltPed01.ParambyName('P1ICMSNRI').AsFloat      := micmsnri;
   DM4.Qr_AltPed01.ParambyName('P1BASENRP').AsFloat      := mbasenrp;
   DM4.Qr_AltPed01.ParambyName('P1ICMSNRP').AsFloat      := micmsnrp;
   DM4.Qr_AltPed01.ParambyName('P1BASENRN').AsFloat      := mbasenrn;
   DM4.Qr_AltPed01.ParambyName('P1ICMSNRN').AsFloat      := micmsnrn;
   DM4.Qr_AltPed01.ParambyName('P1IPIINA').AsFloat       := mipiina;
   DM4.Qr_AltPed01.ParambyName('P1IPIPOS').AsFloat       := mipipos;
   DM4.Qr_AltPed01.ParambyName('P1IPINEG').AsFloat       := mipineg;
   DM4.Qr_AltPed01.ParambyName('P1TOTTRI').AsFloat       := mtottri;
   DM4.Qr_AltPed01.ParambyName('P1TOTRET').AsFloat       := mtotret;
   DM4.Qr_AltPed01.ParambyName('P1TOTISE').AsFloat       := mtotise;
   DM4.Qr_AltPed01.ParambyName('P1TOTOUT').AsFloat       := mtotout;
   DM4.Qr_AltPed01.ParambyName('P1TOTPOS').AsFloat       := mtotpos;
   DM4.Qr_AltPed01.ParambyName('P1TOTNEG').AsFloat       := mtotneg;
   DM4.Qr_AltPed01.ParambyName('P1TOTINA').AsFloat       := mtotina;
//   DM4.Qr_AltPed01.ParambyName('P1PISCOFN').AsFloat      := mpiscofn;
//   DM4.Qr_AltPed01.ParambyName('P1PISCOFR').AsFloat      := mpiscofr;
   DM4.Qr_AltPed01.ParambyName('P1TOTDES').AsFloat       := mtotdes;
   DM4.Qr_AltPed01.ParambyName('P1TOTDI01').AsFloat      := mtotdi01;
   DM4.Qr_AltPed01.ParambyName('P1TOTDI02').AsFloat      := mtotdi02;
   DM4.Qr_AltPed01.ParambyName('P1TOTDI03').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1VALDES01').AsFloat     := 0;
   DM4.Qr_AltPed01.ParambyName('P1VALDES02').AsFloat     := 0;
   DM4.Qr_AltPed01.ParambyName('P1TOTDIVL').AsFloat      := mtotdivl;
   DM4.Qr_AltPed01.ParambyName('P1TOTUCPR').AsFloat      := mtotucpr;
   DM4.Qr_AltPed01.ParambyName('P1DESC01').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1DESC02').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1VLRDES').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1PAVDES').AsFloat       := mpavdes;
   DM4.Qr_AltPed01.ParambyName('P1CODTRA').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1QTDVOL').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1PESOL').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1PESOB').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1ESPECIE').AsString     := 'CX';
   DM4.Qr_AltPed01.ParambyName('P1FRETEPC').AsFloat      := 1;
   DM4.Qr_AltPed01.ParambyName('P1VALFRE').AsFloat       := mvalfre;
   DM4.Qr_AltPed01.ParambyName('P1FRETE_ALIQ').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1FRETE_ICMS').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1TARBAN').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_BCSEG').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_ALSEG').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_VLSEG').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_BCOUTD').AsFloat  := 0;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_ALOUTD').AsFloat  := 0;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_VLOUTD').AsFloat  := 0;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_BCIPI').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_ALIPI').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_VLIPI').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1UFPV').AsString        := '';
   DM4.Qr_AltPed01.ParambyName('P1PLACAV').AsString      := '';
   DM4.Qr_AltPed01.ParambyName('P1BANCO').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1CODSER').AsFloat       := 1;
   DM4.Qr_AltPed01.ParambyName('P1CODLDR').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1PCOMIS').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1CODCV').AsFloat        := mpvcodcv;
   DM4.Qr_AltPed01.ParambyName('P1LOTEDM').AsFloat       := 0;

   DM4.Qr_AltPed01.ParambyName('P1COMIS').AsFloat        := mcomis;
   DM4.Qr_AltPed01.ParambyName('P1COMV02').AsFloat       := mtotcom02;
   DM4.Qr_AltPed01.ParambyName('P1COMV03').AsFloat       := mtotcom03;
   DM4.Qr_AltPed01.ParambyName('P1COMV04').AsFloat       := mtotcom04;
   DM4.Qr_AltPed01.ParambyName('P1COMIST').AsFloat       := mcomist;
   DM4.Qr_AltPed01.ParambyName('P1COMISS').AsFloat       := mcomiss;
   DM4.Qr_AltPed01.ParambyName('P1COMASSE').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1ORIGEM').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1NPEDORI').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1CODTLV').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1BCISSQN').AsFloat      := mbcissqn;
   DM4.Qr_AltPed01.ParambyName('P1VISSQN').AsFloat       := mvissqn;
   DM4.Qr_AltPed01.ParambyName('P1ETIVOL').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1CODSEP').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1DATASEP').AsDateTime   := pdatanula;
   DM4.Qr_AltPed01.ParambyName('P1HORSEP').AsString      := ' ';
   DM4.Qr_AltPed01.ParambyName('P1CODEMB').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1DATAEMB').AsDateTime   := pdatanula;
   DM4.Qr_AltPed01.ParambyName('P1HOREMB').AsString      := ' ';
   DM4.Qr_AltPed01.ParambyName('P1NUMCF').AsFloat        := mncupom;
   DM4.Qr_AltPed01.ParambyName('P1CODECF').AsFloat       := codecf;
   DM4.Qr_AltPed01.ParambyName('P1DATACF').AsDateTime    := pdatasis;
   DM4.Qr_AltPed01.ParambyName('P1TPPCO').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1SEMCOM').AsFloat       := msemcom;
   DM4.Qr_AltPed01.ParambyName('P1DESCFIN').AsFloat      := mdescfin;
   DM4.Qr_AltPed01.ParambyName('P1LOTCV').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1LOTCASSE').AsFloat     := 0;
   DM4.Qr_AltPed01.ParambyName('P1LOTCS').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1LOTCT').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1PVTC').AsFloat         := mpvtc;
   DM4.Qr_AltPed01.ParambyName('P1PVCOM').AsFloat        := mpvcom;
   DM4.Qr_AltPed01.ParambyName('P1PVCOM02').AsFloat      := mpvcom02;
   DM4.Qr_AltPed01.ParambyName('P1PVCOM03').AsFloat      := mpvcom03;
   DM4.Qr_AltPed01.ParambyName('P1PVCOM04').AsFloat      := mpvcom04;
   DM4.Qr_AltPed01.ParambyName('P1PVACTD').AsFloat       := mpvactd;
   DM4.Qr_AltPed01.ParambyName('P1PVACT00').AsFloat      := mpvact00;
   DM4.Qr_AltPed01.ParambyName('P1PVACT01').AsFloat      := mpvact01;
   DM4.Qr_AltPed01.ParambyName('P1PVACT99').AsFloat      := mpvact99;
   DM4.Qr_AltPed01.ParambyName('P1PVTDC').AsFloat        := mpvtdc;
   DM4.Qr_AltPed01.ParambyName('P1PVDES').AsFloat        := mpvdes;
   DM4.Qr_AltPed01.ParambyName('P1PVTPD1').AsFloat       := mpvtpd1;
   DM4.Qr_AltPed01.ParambyName('P1PVDES1').AsFloat       := mpvdes1;
   DM4.Qr_AltPed01.ParambyName('P1PVTPD2').AsFloat       := mpvtpd2;
   DM4.Qr_AltPed01.ParambyName('P1PVDES2').AsFloat       := mpvdes2;
   DM4.Qr_AltPed01.ParambyName('P1PVTPD3').AsFloat       := mpvtpd3;
   DM4.Qr_AltPed01.ParambyName('P1PVDES3').AsFloat       := mpvdes3;
   DM4.Qr_AltPed01.ParambyName('P1PVTPDESF').AsFloat     := mpvtpdesf;
   DM4.Qr_AltPed01.ParambyName('P1PVDESCF').AsFloat      := mpvdescf;
   DM4.Qr_AltPed01.ParambyName('P1PVDIASDESCF').AsFloat  := mpvdiasdescf;
   DM4.Qr_AltPed01.ParambyName('P1PVDDESCF').AsFloat     := mpvddescf;
   DM4.Qr_AltPed01.ParambyName('P1TPP').AsFloat          := mtpp;
   DM4.Qr_AltPed01.ParambyName('P1SITAC').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1VLRACRE').AsFloat      := mvlracre;
   DM4.Qr_AltPed01.ParambyName('P1PEDORI1').AsString     := ' ';
   DM4.Qr_AltPed01.ParambyName('P1PEDORI2').AsString     := ' ';
   DM4.Qr_AltPed01.ParambyName('P1MOTIVO').AsString      := ' ';
   DM4.Qr_AltPed01.ParambyName('P1NUMVIS').AsString      := ' ';
   DM4.Qr_AltPed01.ParambyName('P1DATVIS').AsDateTime    := pdatanula;
   DM4.Qr_AltPed01.ParambyName('P1DATDOC').AsDate        := Now;
   DM4.Qr_AltPed01.ParambyName('P1EMIDOC').AsFloat       := 1;
   DM4.Qr_AltPed01.ParambyName('P1ACRECONV').AsFloat     := macrecv;
   DM4.Qr_AltPed01.ParambyName('P1ACREGER').AsFloat      := macreger;
   DM4.Qr_AltPed01.ParambyName('P1PACRECONV').AsFloat    := mpacreconv;
   DM4.Qr_AltPed01.ParambyName('P1PACREGER').AsFloat     := mpacreger;
   DM4.Qr_AltPed01.ParambyName('P1CODDEP').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1NAUT').AsString        := mpvnaut;
   DM4.Qr_AltPed01.ParambyName('P1MINUTA').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1SITCPR').AsFloat       := msitcpr;
   DM4.Qr_AltPed01.ParambyName('P1LOTCV02').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1LOTCV03').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1LOTCV04').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1SEMCOMP').AsString     := '0';
   DM4.Qr_AltPed01.ParambyName('P1CFO1').AsString        := mcfop1;
   DM4.Qr_AltPed01.ParambyName('P1CFO2').AsString        := mcfop2;
   DM4.Qr_AltPed01.ParambyName('P1CFOSER').AsString      := ' ';
   DM4.Qr_AltPed01.ParambyName('P1BLQPRM').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1VALSEG').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1PDESCLIB').AsFloat     := 0;
   DM4.Qr_AltPed01.ParambyName('P1PDESCL_USR').AsFloat   := codusr;
   DM4.Qr_AltPed01.ParambyName('P1PROCESSO').AsString    := ' ';
   DM4.Qr_AltPed01.ParambyName('P1CUPACRE').AsFloat      := pAcreCup;
   DM4.Qr_AltPed01.ParambyName('P1CUPDES').AsFloat       := pDesCup;
   DM4.Qr_AltPed01.ParambyName('P1LEMAT').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1QTDMAN').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1DTACERTO').AsDateTime  := pdatanula;
   DM4.Qr_AltPed01.ParambyName('P1LTACERTO').AsFloat     := 0;
   DM4.Qr_AltPed01.ParambyName('P1CANHOTO').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1ALIQDEB').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1TOTCGRU').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1TOTSGRU').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1TOTSERLIQ').AsFloat    := 0;

   DM4.Qr_AltPed01.ParambyName('P1DTHRCHEG').AsDatetime  := Now;
   DM4.Qr_AltPed01.ParambyName('P1CODPRIOR').AsFloat     := 0;
   DM4.Qr_AltPed01.ParambyName('P1PROMOCAO').AsString    := ' ';
   DM4.Qr_AltPed01.ParambyName('P1CODBLOQ').AsString      := ' ';
   DM4.Qr_AltPed01.ParambyName('P1CODUSR_LBLOQ').AsFloat  := 0;

   DM4.Qr_AltPed01.ParambyName('P1COMIS_EXTRA').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1QTDM3').AsFloat         := 0;
   DM4.Qr_AltPed01.ParambyName('P1VFRE_CUSENT').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1VALENT').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1PRAZO_ENT').AsFloat     := 0;
   DM4.Qr_AltPed01.ParambyName('P1SEPAMB').AsFloat        := 0;

   DM4.Qr_AltPed01.ParambyName('P1PZOLIB').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1PZOLIB_USR').AsFloat    := 0;
   DM4.Qr_AltPed01.ParambyName('P1BLOQPEND').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1CODBLOQ_LIB').AsString  := ' ';
   DM4.Qr_AltPed01.ParambyName('P1ECF_SERIE').AsString    :=' ';
   DM4.Qr_AltPed01.ParambyName('P1CX_CODCAI').AsFloat     :=codcai;
   DM4.Qr_AltPed01.ParambyName('P1CX_LOTMOV').AsFloat     :=lotmov;
   DM4.Qr_AltPed01.ParambyName('P1DUP_PROD').AsFloat      :=0;
   DM4.Qr_AltPed01.ParambyName('P1DUP_SERV').AsFloat      :=0;
   DM4.Qr_AltPed01.ParambyName('P1INCTB').AsFloat         :=DM4.Tb_Par01PINCTB.Value;
   DM4.Qr_AltPed01.ParambyName('P1EMITENTE').AsString     :='P';
   DM4.Qr_AltPed01.ParambyName('P1PVACREDESREG').AsFloat    :=0;
   DM4.Qr_AltPed01.ParambyName('P1PVAJCOMIS').AsFloat       :=0;
   DM4.Qr_AltPed01.ParambyName('P1LOCAL').AsFloat           :=0;
   DM4.Qr_AltPed01.ParambyName('P1TOTPROM').AsFloat          := 0;
   DM4.Qr_AltPed01.ParambyName('P1TIPO_ENTSAI').AsFloat    := 0;
   DM4.Qr_AltPed01.ParambyName('P1TOTPIS').AsFloat    := 0;
   DM4.Qr_AltPed01.ParambyName('P1TOTCOFINS').AsFloat    := 0;
   DM4.Qr_AltPed01.ParambyName('P1RED_BCISSQN').AsFloat  := 0;
   DM4.Qr_AltPed01.ParambyName('P1BCINSS').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1RED_BCINSS').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1VINSS').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1BCIRRF').AsFloat       := 0;
   DM4.Qr_altPed01.ParambyName('P1RED_BCIRRF').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1VIRRF').AsFloat        := 0;
   DM4.Qr_AltPed01.ParambyName('P1NFE_ENVXML').AsFloat   := 0;
   DM4.Qr_AltPed01.ParambyName('P1QTDDECPU').AsFloat     := dm1.Tb_PargerPCASASPU.AsInteger;
   DM4.Qr_AltPed01.ParambyName('P1TPEMIS').AsFloat       := 1;


//   try
       DM4.Qr_AltPed01.ExecSQL;
       fdm1StartCommit;
//   except
//      ex_erroSql(10,1018,'Frm_PonVen','CADP01');
//      result:=False;
//      exit;
//      end;
   end;




{77

DM1.Query1.Params.Clear;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftstring,'SERIE',ptinput);   // 00
DM1.Query1.Params.CreateParam(ftstring,'SUBSER',ptinput);  // 01
DM1.Query1.Params.CreateParam(ftstring,'MODELO',ptinput);  // 02
DM1.Query1.Params.CreateParam(ftstring,'OBS1',ptinput);    // 03
DM1.Query1.Params.CreateParam(ftstring,'OBS2',ptinput);    // 04
DM1.Query1.Params.CreateParam(ftstring,'OBS3',ptinput);    // 05
DM1.Query1.Params.CreateParam(ftstring,'ESPECIE',ptinput); // 06
DM1.Query1.Params.CreateParam(ftstring,'UFPV',ptinput);    // 07
DM1.Query1.Params.CreateParam(ftstring,'PLACAV',ptinput);  // 08
DM1.Query1.Params.CreateParam(ftstring,'DATANF',ptinput);  // 09
DM1.Query1.Params.CreateParam(ftstring,'DATACF',ptinput);  // 10
DM1.Query1.Params.CreateParam(ftstring,'DATDOC',ptinput);  // 10
DM1.Query1.Params.CreateParam(ftstring,'DATCON',ptinput);  // 11
DM1.Query1.Params.CreateParam(ftstring,'DTMOD',ptinput);   // 12
DM1.Query1.Params.CreateParam(ftstring,'DATASEP',ptinput); // 13
DM1.Query1.Params.CreateParam(ftstring,'DATAEMB',ptinput); // 14
DM1.Query1.Params.CreateParam(ftstring,'SUDMOD',ptinput);  // 15
DM1.Query1.Params.CreateParam(ftstring,'DATENT',ptinput);  // 16
DM1.Query1.Params.CreateParam(ftstring,'PREVENT',ptinput); // 17
DM1.Query1.Params.CreateParam(ftstring,'HORCON',ptinput); // 18
DM1.Query1.Params.CreateParam(ftstring,'HORSEP',ptinput); // 19
DM1.Query1.Params.CreateParam(ftstring,'HOREMB',ptinput); // 20
DM1.Query1.Params.CreateParam(ftstring,'HORENT',ptinput); // 21
DM1.Query1.Params.CreateParam(ftstring,'HPREVENT',ptinput); // 22
DM1.Query1.Params.CreateParam(ftstring,'PEDORI1',ptinput); // 21
DM1.Query1.Params.CreateParam(ftstring,'PEDORI2',ptinput); // 22
DM1.Query1.Params.CreateParam(ftstring,'MOTIVO',ptinput); // 22
DM1.Query1.Params.CreateParam(ftstring,'DATVIS',ptinput); // 22
DM1.Query1.Params.CreateParam(ftstring,'NAUT',ptinput); // 22
DM1.Query1.Params.CreateParam(ftstring,'NUMVIS',ptinput); // 22
DM1.Query1.SQL.Add('Insert into CADP01 ('
                  +'P1CODEMP,'
                  +'P1CHAVE,'
                  +'P1ORDEM,'
                  +'P1CODCLI,'
                  +'P1CODVEN,'
                  +'P1DATAP,'
                  +'P1NUMNF,'
                  +'P1STATUS,'
                  +'P1TIPO,'
                  +'P1SITPED, '
                  +'P1TOTALB,'
                  +'P1TOTALL,'
                  +'P1CODUSR,'
                  +'P1HORADIG,'
                  +'P1HRMOD,'
                  +'P1USRMOD,'
                  +'P1CONF,'
                  +'P1CODCON,'
                  +'P1TABPV,'
                  +'P1CODPV,'
                  +'P1CUPOM,'
                  +'P1BASEN,'
                  +'P1ICMSN,'
                  +'P1BASER,'
                  +'P1ICMSR,'
                  +'P1BASENP,'
                  +'P1BASENN,'
                  +'P1BASENI,'
                  +'P1ICMSNP,'
                  +'P1ICMSNN,'
                  +'P1ICMSNI,'
                  +'P1BASERP,'
                  +'P1BASERN,'
                  +'P1BASERI,'
                  +'P1ICMSRP,'
                  +'P1ICMSRN,'
                  +'P1ICMSRI,'
                  +'P1BASENRP,'
                  +'P1BASENRN,'
                  +'P1BASENRI,'
                  +'P1ICMSNRP,'
                  +'P1ICMSNRN,'
                  +'P1ICMSNRI,'
                  +'P1IPIINA,'
                  +'P1IPIPOS,'
                  +'P1IPINEG,'
                  +'P1TOTTRI,'
                  +'P1TOTRET,'
                  +'P1TOTISE,'
                  +'P1TOTPOS,'
                  +'P1TOTNEG,'
                  +'P1TOTINA,'
                  +'P1PISCOFN,'
                  +'P1PISCOFR,'
                  +'P1VLRACRE,'
                  +'P1TOTDES,'

                  +'P1TOTDI01,'
                  +'P1TOTDI02,'
                  +'P1TOTDIVL,'

                  +'P1REPAS,'
                  +'P1DESC01,'
                  +'P1DESC02,'
                  +'P1VLRDES,'
                  +'P1PAVDES,'
                  +'P1CODTRA,'
                  +'P1QTDVOL,'
                  +'P1PESOL,'
                  +'P1PESOB,'
                  +'P1CODENT,'
                  +'P1TIPENT,'
                  +'P1FRETEPC,'
                  +'P1VALFRE,'
                  +'P1BANCO,'
                  +'P1CODSER,'
                  +'P1CODLDR,'
                  +'P1CODV02,'
                  +'P1CODV03,'
                  +'P1COMIS,'
                  +'P1COMISS,'
                  +'P1COMIST,'
                  +'P1TPPCO,'
                  +'P1ORIGEM,'
                  +'P1CODTLV,'
                  +'P1PCOMIS,'
                  +'P1BCISSQN,'
                  +'P1VISSQN,'
                  +'P1ETIVOL,'
                  +'P1CODSEP,'
                  +'P1CODEMB,'
                  +'P1NUMCF,'
                  +'P1CODECF,'
                  +'P1SEMCOM,'
                  +'P1LOTCV,'
                  +'P1LOTCS,'
                  +'P1LOTCT,'
                  +'P1SITAC,'
                  +'P1PVTC,'
                  +'P1PVCOM,'
                  +'P1PVACTD,'
                  +'P1PVACT00,'
                  +'P1PVACT01,'
                  +'P1PVACT99,'
                  +'P1PVTDC,'
                  +'P1PVDES,'
                  +'P1PVTPD1,'
                  +'P1PVDES1,'
                  +'P1PVTPD2,'
                  +'P1PVDES2,'
                  +'P1PVTPDESF,'
                  +'P1PVDESCF,'
                  +'P1PVDIASDESCF,'
                  +'P1PVDDESCF,'
                  +'P1TPP, '
                  +'P1PRAZO, '
                  +'P1EMIDOC,'
                  +'P1DESCFIN,'
                  +'P1ACRECONV,'
                  +'P1ACREGER,'
                  +'P1PACRECONV,'
                  +'P1PACREGER,'
                  +'P1CODDEP,'
                  +'P1SERIE,'
                  +'P1SUBSER,'
                  +'P1MODELO,'
                  +'P1OBS1,'
                  +'P1OBS2,'
                  +'P1OBS3,'
                  +'P1ESPECIE,'
                  +'P1UFPV,'
                  +'P1PLACAV,'
                  +'P1DATANF,'
                  +'P1DATACF,'
                  +'P1DATDOC, '
                  +'P1DATCON,'
                  +'P1DTMOD,'
                  +'P1DATASEP,'
                  +'P1DATAEMB, '
                  +'P1SUBMOD,'
                  +'P1DATENT,'
                  +'P1PREVENT,'
                  +'P1HORCON,'
                  +'P1HORSEP,'
                  +'P1HOREMB,'
                  +'P1HORENT,'
                  +'P1HPREVENT,'
                  +'P1PEDORI1,'
                  +'P1PEDORI2,'
                  +'P1MOTIVO, '
                  +'P1DATVIS, '
                  +'P1NAUT, '
                  +'P1NUMVIS ) values ('
                  +IntTostr(codemp)+','
                  +IntTostr(mchaveped)+','
                  +'01'+','
                  +FloatToStr(mpvcodcli)+','
                  +FloatToStr(mpvcodven)+','
                  +chr(39)+FormatDateTime(fdt,pdatasis)+chr(39)+','
                  +'0'+',' //Numero da nota fiscal
                  +'0'+',' // Status do pedido
                  +'1'+',' // tipo do pedido 1-Venda normal
                  +'0'+',' // Situacao do Pedido 1-quando esta em alteraçao
                  +mudavp(FloattoStr(mtotb))+','
                  +mudavp(FloattoStr(mtotl))+','
                  +InttoStr(codusr)+','
                  +chr(39)+FormatDateTime(fhr, time)+chr(39)+',' // horadigitada
                  +chr(39)+FormatDateTime(fhr, time)+chr(39)+',' // hora da alteração
                  +'0'+','
                  +chr(39)+'S'+chr(39)+',' // Conferido S-por leitora otica
                  +InttoStr(codusr)+',' // codigo do conferidor
                  +chr(39)+mpvtabpv+chr(39)+','
                  +IntToStr(mpvcodpv)+','
                  +IntTostr(2)+',' // ptipo: 2-Cupom iniciado 3-Formas iniciada 1-Cupom ok
                  +mudavp(FloattoStr(mbasen))+','
                  +mudavp(FloattoStr(micmsn))+','
                  +mudavp(FloattoStr(mbaser))+','
                  +mudavp(FloattoStr(micmsr))+','
                  +mudavp(FloattoStr(mbasenp))+','
                  +mudavp(FloattoStr(mbasenn))+','
                  +mudavp(FloattoStr(mbaseni))+','
                  +mudavp(FloattoStr(micmsnp))+','
                  +mudavp(FloattoStr(micmsnn))+','
                  +mudavp(FloattoStr(micmsni))+','
                  +mudavp(FloattoStr(mbaserp))+','
                  +mudavp(FloattoStr(mbasern))+','
                  +mudavp(FloattoStr(mbaseri))+','
                  +mudavp(FloattoStr(micmsrp))+','
                  +mudavp(FloattoStr(micmsrn))+','
                  +mudavp(FloattoStr(micmsri))+','
                  +mudavp(FloattoStr(mbasenrp))+','
                  +mudavp(FloattoStr(mbasenrn))+','
                  +mudavp(FloattoStr(mbasenri))+','
                  +mudavp(FloattoStr(micmsnrp))+','
                  +mudavp(FloattoStr(micmsnrn))+','
                  +mudavp(FloattoStr(micmsnri))+','
                  +mudavp(FloattoStr(mipiina))+','
                  +mudavp(FloattoStr(mipipos))+','
                  +mudavp(FloattoStr(mipineg))+','
                  +mudavp(FloattoStr(mtottri))+','
                  +mudavp(FloattoStr(mtotret))+','
                  +mudavp(FloattoStr(mtotise))+','
                  +mudavp(FloattoStr(mtotpos))+','
                  +mudavp(FloattoStr(mtotneg))+','
                  +mudavp(FloattoStr(mtotina))+','
                  +mudavp(FloattoStr(mpiscofn))+','
                  +mudavp(FloattoStr(mpiscofr))+','
                  +mudavp(FloatToStr(mvlracre))+','
                  +mudavp(FloattoStr(mtotdes))+','

                  +mudavp(FloattoStr(mtotdi01))+','
                  +mudavp(FloattoStr(mtotdi02))+','
                  +mudavp(FloattoStr(mtotdivl))+','

                  +mudavp(FloattoStr(mrepas))+','
//                  +mudavp(DESC01.Text)+',' lindomar
 //                 +mudavp(DESC02.Text)+','
                  +'0'+','
                  +'0'+','
                  +mudavp(FloatToStr(mdesped))+','
                  +mudavp(FloatToStr(mpavdes))+','
                  +'0'+',' // codigo da transportador
                  +'0'+',' // Quantidade de volumes
                  +'0'+',' // peso liquido
                  +'0'+',' // Peso Bruto
                  +'0'+',' // Código Entregador
                  +'0'+',' // Tipo da Entrega
                  +'1'+',' // Frete por conta 1-emitente 2-destinatario
                  +mudavp(FloatToStr(mvalfre))+','
                  +'0'+',' // Código do Banco
                  +'0'+',' // Código da Serie da nota
                  +'0'+',' // Código do Fluxo de Caixa
                  +'0'+',' // Código do Vendedor 2
                  +'0'+',' // Código do Vendedor 3
                  +mudavp(FloatTostr(mcomis))+','   // Valor da comissao esta vazio
                  +mudavp(FloatTostr(mcomiss))+','   // Valor da comissao supervisor esta vazio
                  +mudavp(FloatTostr(mcomist))+','   // Valor da comissao televendas esta vazio
                  +IntToStr(Frm_PvAb.RG_TPPCO.itemindex)+',' // Tipo de Preco 0-Padrao
                  +'0'+',' // Origem do pedido
                  +'0'+',' // Código do Televendas
                  +'0'+',' // Percentutal de comissao
                  +mudavp(FloatTostr(mbcissqn))+','   // Base de calculo de issqn ver depois
                  +mudavp(FloatTostr(missqn))+','   // valor do imposto de issqn ver depois
                  +'0'+',' // Etiquetas dos volumes
                  +'0'+',' // Código do separador
                  +'0'+',' // Código do embalador
                  +FloatToStr(mncupom)+','
                  +FloatToStr(codecf)+','
                  +mudavp(FloatTostr(msemcom))+','   // valor dos produtos sem comissao
                  +'0'+',' // Lote de comissao do Vendedor
                  +'0'+',' // Lote de comissao do Supervisor
                  +'0'+',' // Lote de comissao do Televendas
                  +'0'+',' // SITAC
                  +FormatFloat('0',DM1.Tb_PVPVTPC.Value)+','
                  +mudavp(DM1.Tb_PVPVCOM.AsString)+','
                  +mudavp(DM1.Tb_PVPVACTD.AsString)+','
                  +mudavp(DM1.Tb_PVPVACT00.AsString)+','
                  +mudavp(DM1.Tb_PVPVACT01.AsString)+','
                  +mudavp(DM1.Tb_PVPVACT99.AsString)+','
                  +mudavp(DM1.Tb_PVPVTPDC.AsString)+','
                  +mudavp(DM1.Tb_PVPVDES.AsString)+','
                  +mudavp(DM1.Tb_PVPVTPD1.AsString)+','
                  +mudavp(DM1.Tb_PVPVDES1.AsString)+','
                  +mudavp(DM1.Tb_PVPVTPD2.AsString)+','
                  +mudavp(DM1.Tb_PVPVDES2.AsString)+','
                  +mudavp(DM1.Tb_PVPVTPDESF.AsString)+','
                  +mudavp(DM1.Tb_PVPVDESCF.AsString)+','
                  +mudavp(DM1.Tb_PVPVDIASDESCF.AsString)+','
                  +mudavp(DM1.Tb_PVPVDESCF.AsString)+','
                  +mudavp(DM1.Tb_PVPVTPP.AsString)+','
                  +'0'+',' // prazo ponderado
                  +'1'+',' // Emitiu documento
                  +mudavp(FloatToStr(mdescfin))+','
                  +mudavp(FloatToStr(mtotaccv))+','
                  +mudavp(FloatToStr(mtotacger))+','
                  +mudavp(FloatToStr(mpacrecv))+','
                  +mudavp(FloatToStr(mpacreger))+','
                  +mudavp(Trim(Frm_PvAb.CODDEP.Text))+','
                  +':SERIE, '
                  +':SUBSER, '
                  +':MODELO, '
                  +':OBS1, '
                  +':OBS2, '
                  +':OBS3, '
                  +':ESPECIE, '
                  +':UFPV, '
                  +':PLACAV, '
                  +':DATANF, '
                  +':DATACF, '
                  +':DATDOC, '
                  +':DATCON, '
                  +':DTMOD,'
                  +':DATASEP,'
                  +':DATAEMB,'
                  +':SUBMOD,'
                  +':DATENT,'
                  +':PREVENT,'
                  +':HORCON,'
                  +':HORSEP,'
                  +':HOREMB,'
                  +':HORENT,'
                  +':HPREVENT,'
                  +':PEDORI1,'
                  +':PEDORI2,'
                  +':MOTIVO,'
                  +':DATVIS,'
                  +':NAUT,'
                  +':NUMVIS)');
DM1.Query1.ParamByName('SERIE').AsString    :='1';
DM1.Query1.ParamByName('SUBSER').AsString   :='1';
DM1.Query1.ParamByName('MODELO').AsString   :='1';
DM1.Query1.ParamByName('OBS1').AsString     :=DM1.Tb_ECFCFMENS1.Value;
DM1.Query1.ParamByName('OBS2').AsString     :=DM1.Tb_ECFCFMENS2.Value;
DM1.Query1.ParamByName('OBS3').AsString     :=DM1.Tb_ECFCFMENS3.Value;
DM1.Query1.ParamByName('ESPECIE').AsString  :='CX'; // especie dos volumes
DM1.Query1.ParamByName('UFPV').AsString     :='';  // uf do veiculo
DM1.Query1.ParamByName('PLACAV').AsString   :=''; //Placa do veiculo entregador
DM1.Query1.ParamByName('DATANF').AsDateTime :=pdatanula; // data da nota fiscal
DM1.Query1.ParamByName('DATACF').AsDateTime :=pdatasis; // data do cupom;
DM1.Query1.ParamByName('DATDOC').AsDateTime :=Now; // data do cupom;
DM1.Query1.ParamByName('DATCON').AsDateTime :=pdatasis; // data de conferencia
DM1.Query1.ParamByName('DTMOD').AsDateTime  :=pdatasis; // data de alteração
DM1.Query1.ParamByName('DATASEP').AsDateTime:=pdatasis; // data da separação das mercadorias
DM1.Query1.ParamByName('SUBMOD').AsString   :=NumPal_Sis('0');
DM1.Query1.ParamByName('DATAEMB').AsDateTime:=pdatasis; // data da separação das mercadorias
DM1.Query1.ParamByName('DATENT').AsDateTime :=pdatasis; // data da entrega das mercadorias
DM1.Query1.ParamByName('PREVENT').AsDateTime:=pdatasis; // data prevista para entrega
DM1.Query1.ParamByName('HORCON').AsString   :=''; // hora da conferencia
DM1.Query1.ParamByName('HORSEP').AsString   :=''; // hora da separaçao da mercadorias
DM1.Query1.ParamByName('HOREMB').AsString   :='';// hora que embalou a mercadoria;
DM1.Query1.ParamByName('HORENT').AsString   :=''; // hora da entrega da mercadoria
DM1.Query1.ParamByName('HPREVENT').AsString :=''; // hora prevista para entrega;
DM1.Query1.ParamByName('PEDORI1').AsString :='';
DM1.Query1.ParamByName('PEDORI2').AsString :='';
DM1.Query1.ParamByName('MOTIVO').AsString  :='';
DM1.Query1.ParamByName('DATVIS').AsDateTime:=pdatasis;
DM1.Query1.ParamByName('NAUT').AsString    :='';
DM1.Query1.ParamByName('NUMVIS').AsString  :='';
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1211,'frm_Ponven','CADP01');
   end;
DM1.Query1.Params.Clear;
{
if ptipo=1 then
   begin
   if flcadp01(0,0,ls_numped,FloatToStr(mchaveped),'') then
      begin
      Fgravarnf(1);
      fgvencto(iif(mpvtabpv='PP',1,0),codemp,ls_numped,mchaveped,01,00,mpvcodpv,DM1.Tb_Ped01P1PVDDESCF.AsInteger
               ,DM1.Tb_Ped01P1PVDIASDESCF.AsInteger
               ,DM1.Tb_Ped01P1TOTALL.Value
               ,DM1.Tb_Ped01P1COMIS.Value
               ,DM1.Tb_Ped01P1COMV02.Value
               ,DM1.Tb_Ped01P1COMV02.Value
               ,DM1.Tb_Ped01P1COMISS.Value
               ,DM1.Tb_Ped01P1COMIST.Value
               ,DM1.Tb_Ped01P1SEMCOM.Value
               ,DM1.Tb_Ped01P1ICMSR.Value
               ,DM1.Tb_Ped01P1VALFRE.Value
               ,DM1.Tb_Ped01P1DESCFIN.Value
               ,DM1.Tb_Ped01P1TOTDI01.Value
               ,DM1.Tb_Ped01P1TOTDI02.Value
               ,DM1.Tb_Ped01P1TOTDI03.Value
               ,DM1.Tb_Ped01P1TOTDIVL.Value
               ,DM1.Tb_Ped01P1VALDES01.Value
               ,DM1.Tb_Ped01P1VALDES02.Value
               ,DM1.Tb_Ped01P1VLRDES.Value
               ,DM1.Tb_Ped01P1TARBAN.Value
               ,DM1.Tb_Ped01P1DATACF.Value,DM1.Tb_Ped01p1TABPV.Value);
      end;
   end;
}
DM1.Query1.Params.Clear;
result:=true;
end;

procedure TFrm_PonVen.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (DM1.Tb_PargerPPCOGRA.Value<>1)  then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Ponven',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_Ped',key);
      key:=#0;
      end;
   end;

end;
function fpvlimpa(ptipo: Integer): Boolean;
begin
Frm_Ponven.CODPRO.Text:='';
Frm_PonVen.CODPRO.Enabled:=False;
Frm_PonVen.Panel4.Font.Size:=50;
Frm_PonVen.Panel4.Caption:='CAIXA LIVRE';
Frm_PonVen.Panel5.Caption:='';
Frm_PonVen.Memo1.Text    :='';
Frm_PonVen.QTD.Text      :='1';
Frm_PonVen.SUBTOT.Text   :='';
Frm_PonVen.TAXENT.Text   :='';
Frm_PonVen.TAXADM.Text   :='';
Frm_PonVen.TOTLIQ.Text   :='';
Frm_PonVen.TOTITE.Text   :='';
Frm_PonVen.TOTUN.Text    :='';
Frm_PonVen.TOTDES.Text   :='';
if DM1.Tb_PargerPECFSOLCOD.Value=1 then
   begin
   Frm_PvAb.CHAVEP.Text       :='';
   Frm_PvAb.DADOSP.Text       :='';
   Frm_PvAb.CODCLI.Text       :='';
   Frm_PvAb.NOMCLI.Text       :='';
   Frm_PvAb.CODVEN.Text       :='';
   Frm_PvAb.NOMVEN.Text       :='';
   Frm_PvAb.CODDEP.Text       :='';
   Frm_PvAb.NOMDEP.Text       :='';
   Frm_PvAb.CODCON.Text       :='';
   Frm_PvAb.NOMCON.Text       :='';
   Frm_PvAb.NAUT.Text         :='';
   Frm_PvAb.MDATAREAJ.Text    :='/  /';
   Frm_PvAb.OBS1.Text         :='';
   Frm_PvAb.OBS2.Text         :='';
   Frm_PvAb.OBS3.Text         :='';
   Frm_PvAb.RG_TPENT.ItemIndex:=0;
   Frm_PvAb.RG_TPPCO.ItemIndex:=0;
   end;

mqtdi  :=0;
mqtdu  :=0;
mchaveped :=0;
mtotacger:=0;
mtotaccv :=0;
msitcpr:=0;
mvlracre:=0;
mdesped :=0;
mvalfre :=0;
fpvatuacor(0);
result:=True;

end;

function fpvecf_Bema(pTestaECF, ptipo: Integer; pqtd,pvalord,pvaloru,ptotal,pfrete,poutac: Real): Integer;
{
Parametros pTestaECF
0-Testa a Impressora Fiscal em todas as operações
1-Não Testa a Impressora
Parametro pqtd = Quantidade de Itens
pvalord  = Valor do desconto do item ou da finalização do cupom
pvaloru  = valor unitario ou valor do acrescimo para finalizações
           ou ainda pode ser total do pedido para tipo 5
ptotal = valor total do pedido, ou valor da forma de pagamento

poutac: quando usar o tef=2 SYFRETE DM1.Tb_PargerPTIPOTEF.value=2
para formade pagamento parametro do tipo 6 este valor ira representar
o seguinte: 00-dinheiro, 01-Cheque, 04-Cartoes
}
var
mcomando: String;
mnome   : String;
codigo,descricao,aliquota,tipoquantidade,quantidade,valorunitario,tipoDesconto,Desconto:String;
casasdecimais:Integer;
cf_seqObs, x: Integer;
begin


// linhas a serem retiradas

if (ppconsemp) and (DM1.Tb_PargerPTIPOTEF.Value<>2) then
   begin
//   fpv_conf(pTestaECF,ptipo,pqtd,pvalord,pvaloru,ptotal,pfrete,poutac);
   result:=1;
   exit;
   end;
if (codemp>100) then
   begin
   result:=1;
   exit;
   end;
// fim das linhas a serem retiradas


if (pTestaECF=0) and not (ppconsemp) and (DM1.Tb_PargerPTIPOTEF.Value<>2) then
   begin
   iRetorno:=fverestimp(mverpap);
   if iRetorno=1 then
      mverpap:=1
   else if iRetorno=8 then
      begin
      While iRetorno=8 do
         begin
         MessageDlg('Coloque uma nova Bobina de papel na Impressora Fiscal em Tecle Ok!',mtError,[mbOk],0);
         iRetorno:=fverestimp(mverpap);
         if iRetorno=0 then
            mverpap:=0;
         end;
      end
   else if iRetorno=9 then
      begin
      MessageDlg('Erro na impressora fiscal solicite um técnico!',mtError,[mbOk],0);
      result:=9;
      end;
   end;

if ptipo=0 then     // abertura do cupom Fiscal
   begin
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      begin
      Writeln(cf_fcupenv,'A-001 = '+DM1.Tb_cliCRAZAO.Value);
      cf_seqforma:=0;
      cf_numitem :=0;
      result:=1;
      end
   else
      begin
      mcomando   :=FormatFloat('"000"."000"."000"-"00',DM1.Tb_CliCCPF.Value);
      Result:=Bematech_FI_AbreCupom(pchar(mcomando) );
      end;
   end
else if ptipo=1 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      codigo:=FormatFloat('0000',DM1.Tb_ProPDCODPRO.Value)+'-'+DM1.Tb_LGCCLNUMERO.Value
   else
      codigo:=Formatfloat('000000',DM1.Tb_ProPDCODPRO.Value);
   descricao:=Trim(DM1.Tb_ProPDNOME.Value);
//   if length(descricao)>29 then
   descricao:=insere2(descricao,' ',29);
   if DM1.Tb_ProPDSIT.Value[2] in ['1','6'] then
      aliquota:='FF'
   else if DM1.Tb_ProPDSIT.Value[2]='4' then
      aliquota:='II'
   else if DM1.Tb_ProPDTABICM.Value='B' then
      aliquota:=FormatFloat('0',DM1.Tb_UfPICMSB.Value*100)
   else
      aliquota:=FormatFloat('0',DM1.Tb_UfPICMSA.Value*100);
   tipoquantidade:='F';
   Quantidade    :=FormatFloat('0000000',pqtd*1000);
   casasdecimais :=3;
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      valorunitario :=FormatFloat('0000000000',pvaloru*1000)
   else
      valorunitario :=FormatFloat('0.000',pvaloru);
   tipoDesconto  :='$';
   Desconto      :=FormatFloat('0',Arredonda((pvalord*100),2));
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      begin
      cf_numitem:=cf_numitem+1;
      mcinst:='I-'+Formatfloat('000', cf_numitem)+' = ';
      mcinst:=mcinst+'|'+insere2(codigo,' ',13);
      mcinst:=mcinst+'|'+descricao;
      if ValFloat(aliquota)>0 then
         mcinst:=mcinst+'|'+'T'+'|'+FormatFloat('00',valFloat(aliquota))
      else if aliquota='FF' then
         mcinst:=mcinst+'|'+'F'+'|'+'00'
      else if aliquota='II' then
         mcinst:=mcinst+'|'+'I'+'|'+'00'
      else
         mcinst:=mcinst+'|'+'N'+'|'+'00';
      mcinst:=mcinst+'|'+tipoquantidade;
      mcinst:=mcinst+'|'+quantidade;
      mcinst:=mcinst+'|'+formatfloat('0',casasdecimais);
      mcinst:=mcinst+'|'+valorunitario;
      if pvalord>0 then
         mcinst:=mcinst+'|'+'V'+'|'+Desconto
      else
         mcinst:=mcinst+'|'+'|';
      if Trim(DM1.Tb_ProPDUND.AsString)='' then
         mcinst:=mcinst+'|'+'UN'
      else
         mcinst:=mcinst+'|'+DM1.Tb_ProPDUND.Value;
      mcinst:=mcinst+'|';
      Writeln(cf_fcupenv, mcinst);
      result:=1;
      end
   else
      begin
      result        := Bematech_FI_VendeItem(pchar(codigo),
                    pchar(descricao),
                    pchar(aliquota),
                    pchar(tipoquantidade),
                    pchar(quantidade),
                    CasasDecimais,
                    pchar(valorunitario),
                    pchar(tipoDesconto),
                    pchar(desconto));
      end;
   end
else if ptipo=2 then // taxa de entrega
   begin
   codigo:='000002';
   descricao:='**Taxa de Entrega**';
   aliquota:='II';
   tipoquantidade:='F';
   Quantidade    :=FormatFloat('',1000);
   casasdecimais :=3;
   valorunitario :=FormatFloat('0.000',pvaloru);
   tipoDesconto  :='$';
   Desconto      :=FormatFloat('0',0);
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      begin
      cf_numitem:=cf_numitem+1;
      mcinst:='I-'+Formatfloat('000', cf_numitem)+' = ';
      mcinst:=mcinst+'|'+insere2(codigo,' ',13);
      mcinst:=mcinst+'|'+descricao;
      if ValFloat(aliquota)>0 then
         mcinst:=mcinst+'|'+'T'+'|'+FormatFloat('00',valFloat(aliquota))
      else if aliquota='FF' then
         mcinst:=mcinst+'|'+'F'+'|'+'00'
      else if aliquota='II' then
         mcinst:=mcinst+'|'+'I'+'|'+'00'
      else
         mcinst:=mcinst+'|'+'N'+'|'+'00';
      mcinst:=mcinst+'|'+tipoquantidade;
      mcinst:=mcinst+'|'+quantidade;
      mcinst:=mcinst+'|'+formatfloat('0',casasdecimais);
      mcinst:=mcinst+'|'+valorunitario;
      if pvalord>0 then
         mcinst:=mcinst+'|'+'V'+'|'+Desconto
      else
         mcinst:=mcinst+'|'+'|';
      mcinst:=mcinst+'|'+'UN';
      mcinst:=mcinst+'|';
      Writeln(cf_fcupenv, mcinst);
      result:=1;
      end
   else
      begin
      result        := Bematech_FI_VendeItem(pchar(codigo),
                    pchar(descricao),
                    pchar(aliquota),
                    pchar(tipoquantidade),
                    pchar(quantidade),
                    CasasDecimais,
                    pchar(valorunitario),
                    pchar(tipoDesconto),
                    pchar(desconto));
      end;
   end
else if ptipo=3 then // taxa de Administraçao
   begin
   codigo:='000003';
   descricao:='**Taxa de Administração**';
   aliquota:='II';
   tipoquantidade:='F';
   Quantidade    :=FormatFloat('0',1000);
   casasdecimais :=3;
   valorunitario :=FormatFloat('0.000',pvaloru);
   tipoDesconto  :='$';
   Desconto      :=FormatFloat('0',0);
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      begin
      cf_numitem:=cf_numitem+1;
      mcinst:='I-'+Formatfloat('000', cf_numitem)+' = ';
      mcinst:=mcinst+'|'+insere2(codigo,' ',13);
      mcinst:=mcinst+'|'+descricao;
      if ValFloat(aliquota)>0 then
         mcinst:=mcinst+'|'+'T'+'|'+FormatFloat('00',valFloat(aliquota))
      else if aliquota='FF' then
         mcinst:=mcinst+'|'+'F'+'|'+'00'
      else if aliquota='II' then
         mcinst:=mcinst+'|'+'I'+'|'+'00'
      else
         mcinst:=mcinst+'|'+'N'+'|'+'00';
      mcinst:=mcinst+'|'+tipoquantidade;
      mcinst:=mcinst+'|'+quantidade;
      mcinst:=mcinst+'|'+formatfloat('0',casasdecimais);
      mcinst:=mcinst+'|'+valorunitario;
      if pvalord>0 then
         mcinst:=mcinst+'|'+'V'+'|'+Desconto
      else
         mcinst:=mcinst+'|'+'|';
      mcinst:=mcinst+'|'+'UN';
      mcinst:=mcinst+'|';
      Writeln(cf_fcupenv, mcinst);
      result:=1;
      end
   else
      begin
      result        := Bematech_FI_VendeItem(pchar(codigo),
                    pchar(descricao),
                    pchar(aliquota),
                    pchar(tipoquantidade),
                    pchar(quantidade),
                    CasasDecimais,
                    pchar(valorunitario),
                    pchar(tipoDesconto),
                    pchar(desconto));
      end;
   end
else if ptipo=4 then // Acrescimos e descontos
   begin
   if pvalord>0 then // desconto em valor
      begin
      tipoquantidade:='D';
      tipoDesconto  :='$';
      mcomando:=FormatFloat('0', pvalord*100);
      if DM1.Tb_PargerPTIPOTEF.Value=2 then
         begin
         if pvalord>0 then
            begin
            mcinst:='C-001 = '+mcomando;
            Writeln(cf_fcupenv,mcomando);
            end;
         result:=1;
         end
      else
         begin
         Result:=Bematech_FI_IniciaFechamentoCupom( pchar(tipoquantidade),
                                                 pchar(tipoDesconto),
                                                 pchar( mcomando ) );
         end;

      end
   else // Acrescimos em valor
      begin
      tipoquantidade:='A';
      tipoDesconto  :='$';
      mcomando:=FormatFloat('0', pvaloru*100);
      if DM1.Tb_PargerPTIPOTEF.Value=2 then
         begin
         if pvalord>0 then
            begin
            mcinst:='D-001 = '+mcomando;
            Writeln(cf_fcupenv,mcomando);
            end;
         result:=1;
         end
      else
         begin
         Result:=Bematech_FI_IniciaFechamentoCupom( pchar(tipoquantidade),
                                                 pchar(tipoDesconto),
                                                 pchar( mcomando ) );
         end;
      end;
   end
else if ptipo=5 then // Fechamento do Cupom
   begin
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      begin
      if trim(pobscupom)<>'' then
         begin
         cf_seqObs:=0;
         x:=1;
         While x < length(pobscupom) do
            begin
            cf_seqobs:=cf_seqobs+1;
            Writeln(cf_fcupenv, 'H-'+FormatFloat('000', cf_seqobs)+' '+copy(pobscupom,x,mtaml));
            x:=x+mtaml;
            end;
         end;
      closefile(cf_fcupenv);
      result:=1;
      end
   else
      begin
      result := Bematech_FI_TerminaFechamentoCupom(pchar( trim(pobscupom) ) );
      if result<>1 then
         begin
         MessageDlg('Erro ao Fechar Cupom: '+IntToStr(Result),mtWarning,[mbOk],0);
         end;
      end;
   end
else if ptipo=6 then // efetua forma de pagamento
   begin
   mcomando:=FormatFloat('0.00', ptotal);
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      begin
      mcomando:=FormatFloat('0', ptotal*100);
      cf_seqforma:=cf_seqforma+1;
      Writeln(cf_fcupenv, 'E-1'+FormatFloat('00', cf_seqforma)+' '+insere2(pobscupom,' ',16));
      Writeln(cf_fcupenv, 'E-2'+FormatFloat('00', cf_seqforma)+' '+mcomando);
      result:=1;
      end
   else
      begin
      if DM1.Tb_ECFCFFPGTO.Value=0 then
         begin
         if (DM1.Tb_ECFCFMODELO.Value=1) then
            begin
            iRetorno := Bematech_FI_EfetuaFormaPagamento( pchar(pobscupom), pchar( mcomando ) );
            end
         else
            begin
            iRetorno := Bematech_FI_EfetuaFormaPagamentoDescricaoForma(
                        pchar( pobscupom ), pchar( mcomando ),
                        pchar( pobscupom2 ) );
            end;
         end;
      end;
{
   mcomando:=FormatFloat('0.00', ptotal);
   iRetorno := Bematech_FI_EfetuaFormaPagamentoDescricaoForma( pchar(pobscupom), pchar( mcomando ), pchar( '.' ) );

}   end
else if ptipo=7 then
   begin
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      result:=1
   else
      Result := Bematech_FI_CancelaItemGenerico( pchar(Frm_PvCanI.Qr_ItemP2ITEM.AsString) );
   end
else if ptipo=8 then
   begin
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      result:=1
   else
      Result := Bematech_FI_CancelaCupom();
   end
else if ptipo=9 then
   begin
   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      result:=1
   else
      begin
      mcomando:='';
      for x:= 1 to 6 do
         begin
         mcomando := mcomando + ' ';
         end;
       Result := Bematech_FI_NumeroCupom(mcomando);
       mncupom:=StrToInt(mcomando);
       end
    end
else if ptipo=10 then // taxa de Associativa
   begin
   codigo:='000004';
   descricao:='**Taxa Associativa**';
   aliquota:='II';
   tipoquantidade:='F';
   Quantidade    :=FormatFloat('0',1000);
   casasdecimais :=3;
   valorunitario :=FormatFloat('0.000',pvaloru);
   tipoDesconto  :='$';
   Desconto      :=FormatFloat('0',0);

   if DM1.Tb_PargerPTIPOTEF.Value=2 then
      begin
      cf_numitem:=cf_numitem+1;
      mcinst:='I-'+Formatfloat('000', cf_numitem)+' = ';
      mcinst:=mcinst+'|'+insere2(codigo,' ',13);
      mcinst:=mcinst+'|'+descricao;
      if ValFloat(aliquota)>0 then
         mcinst:=mcinst+'|'+'T'+'|'+FormatFloat('00',valFloat(aliquota))
      else if aliquota='FF' then
         mcinst:=mcinst+'|'+'F'+'|'+'00'
      else if aliquota='II' then
         mcinst:=mcinst+'|'+'I'+'|'+'00'
      else
         mcinst:=mcinst+'|'+'N'+'|'+'00';
      mcinst:=mcinst+'|'+tipoquantidade;
      mcinst:=mcinst+'|'+quantidade;
      mcinst:=mcinst+'|'+formatfloat('0',casasdecimais);
      mcinst:=mcinst+'|'+valorunitario;
      if pvalord>0 then
         mcinst:=mcinst+'|'+'V'+'|'+Desconto
      else
         mcinst:=mcinst+'|'+'|';
      mcinst:=mcinst+'|'+'UN';
      mcinst:=mcinst+'|';
      Writeln(cf_fcupenv, mcinst);
      result:=1;
      end
   else
      begin
      result        := Bematech_FI_VendeItem(pchar(codigo),
                    pchar(descricao),
                    pchar(aliquota),
                    pchar(tipoquantidade),
                    pchar(quantidade),
                    CasasDecimais,
                    pchar(valorunitario),
                    pchar(tipoDesconto),
                    pchar(desconto));
      end;
   end

end;

function fpv_conf(pTestaECF, ptipo: Integer; pqtd,pvalord,pvaloru,ptotal,pfrete,poutac: Real): Boolean;

var
mTexto,mEnder,mdesc1, mdesc2: String;
mpag,mqtdp: Integer;
mtaml: Integer;
begin
mtaml:=42;
if ptipo=0 then // abertura do cupom
   begin
   DM1.Tb_CI.Close;
   DM1.Tb_CI.ParamByName('IMPRESSORA').AsString:='EPSON LX';
   DM1.Tb_CI.Open;
   AssignFile(F,'LPT1');
   Try
      ReWrite(F)
   except
      Messagedlg('Erro ao tentar abrir a Impressora',mtError,[mbOK],0);
      end;
   WriteLn(F,DM1.Tb_CIC17CPPD.Value+Centra('PEDIDO P/CONFERENCIA',' ',28));
   WriteLn(F,'Cliente....: '+FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)+' '+DM1.Tb_CliCRAZAO.Value);
   WriteLn(F,'Descricao                Qtd Und Pco.Unt   Total');
   if ValInt(Frm_pvab.CHAVEP.Text)>0 then
      mncupom:=ValInt(Frm_PvAb.CHAVEP.Text)
   else
      mncupom:=DM4.Tb_Par01PNUMPED.AsInteger+1;
   end
else if ptipo=1 then
   begin
   mdesc2:=Trim(DM1.Tb_ProPDNOME.Value);
   if length(mdesc2)>24 then
      begin
      mdesc2:=centraTexto(mdesc2,0,24);
      mdesc1:=copy(mdesc2,1,24);
      mdesc2:=copy(mdesc2,25,24);
      end
   else
      begin
      mdesc1:=mdesc2;
      mdesc2:='';
      end;

   if trim(mdesc2)='' then
      begin
      WriteLn(F,insere2(mdesc1,' ',24)+' '
                       +insere2(FloatToStr(pqtd),' ',3)
                       +insere2(' '+DM1.Tb_ProPDUND.Value,' ',3)
                       +insere(formatFloat('####0.00',pvaloru),' ',08)
                       +insere(FormatFloat('####0.00',pvaloru*pqtd),' ',08));
      end
   else
      begin
      WriteLn(F,insere2(mdesc1,' ',24));
      WriteLn(F,insere2(mdesc2,' ',24)+' '
                       +insere(FloatToStr(pqtd),' ',3)
                       +insere2(' '+DM1.Tb_ProPDUND.Value,' ',3)
                       +insere(formatFloat('####0.00',pvaloru),' ',08)
                       +insere(FormatFloat('####0.00',pvaloru*pqtd),' ',08));
      end;
   if mvaldes>0 then
      begin
      WriteLn(F,insere2('Desconto Promocional','.',38)+' '
                       +insere(FormatFloat('####0.00',pvalord),' ',08));

      end;
   end
else if ptipo=2 then // taxa de entrega
   begin
   WriteLn(F,insere2('**Taxa de Entrega**',' ',24)+' '
                       +insere('1',' ',3)
                       +insere2('UN',' ',3)
                       +insere(formatFloat('####0.00',pvaloru),' ',08)
                       +insere(formatFloat('####0.00',pvaloru),' ',08));
   end
else if ptipo=3 then // taxa de administracao
   begin
   WriteLn(F,insere2('**Taxa de Administracao**',' ',24)+' '
                       +insere('1',' ',3)
                       +insere2('UN',' ',3)
                       +insere(formatFloat('####0.00',pvaloru),' ',08)
                       +insere(formatFloat('####0.00',pvaloru),' ',08));
   end
else if ptipo=4 then // Forma de Pagamento
   begin
   mdesc1:='';
   end
else if ptipo=5 then // Fechamento do Cupom
   begin
   mdesc1:='';
   WriteLn(F,insere2('-','-',48));
   WriteLn(f,DM1.Tb_CIPEJECT.Value);
   CloseFile(F);

   end
else if ptipo=6 then
   begin
   WriteLn(F,'Total em Unidades..: '+FloatTostr(pqtd));
   WriteLn(F,'- Total das Mercadorias...........'
                                  +insere(FormatFloat('#,##0.00',ptotal),' ',14));
   if poutac>0 then
      begin
      WriteLn(F,'- Taxa de Administração...........'
                                 +insere(FormatFloat('#,##0.00',poutac),' ',14));
      end;

   if pfrete>0 then
      begin
      WriteLn(F,'- Taxa de Entrega.................'
                                 +insere(FormatFloat('#,##0.00',pfrete),' ',14));
      end;
   if pvalord>0 then
      begin
      WriteLn(F,'- Desconto Promocional............'
                                 +insere(FormatFloat('#,##0.00',pvalord),' ',14));
      end;
   WriteLn(F,'- Total Liquido...................'
                                 +insere(FormatFloat('#,##0.00',ptotal+pfrete+poutac-pvalord),' ',14));


   WriteLn(F,' ');
   WriteLn(F,insere2('-','-',mtaml));
   WriteLn(F,Centra('Prazo Maximo Para Reclamacoes: 24 horas',' ',mtaml));
   WriteLn(F,insere2('-','-',mtaml));

   WriteLn(F,' ');
   mEnder:=DM1.Tb_CliCLOG.Value;
   mEnder:=Trim(mEnder)+' '+DM1.Tb_CliCBAIRRO.Value;
   WriteLn(F,'Nome..: '+FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)+' - '+DM1.Tb_CliCRAZAO.Value);
   WriteLn(F,'End...: '+copy(mEnder,1,40));
   if length(mender)>40 then
      begin
      WriteLn(F,'        '+copy(mEnder,41,40));
      end;
   WriteLn(F,'Prox..: '+copy(DM1.Tb_CliCPONTOR.Value,1,40));
   if length(DM1.Tb_CliCPONTOR.Value)>40 then
      begin
      WriteLn(F,'        '+copy(DM1.Tb_CliCPONTOR.Value,41,40));
      end;
   WriteLn(F,'CEP...: '+Insere2(DM1.Tb_CliCCEP.Value,' ',9)+' '+Trim(DM1.Tb_CliCCIDADE.Value)+'-'+DM1.Tb_CliCUF.Value);
   WriteLn(F,'Fone..: '+DM1.Tb_CliCFONERES.Value);
   WriteLn(F,Centra(insere('_','_',length(DM1.Tb_CliCRAZAO.Value+' '+DM1.Tb_CliCCELULAR.Value)),' ',48));
   WriteLn(F,Centra(DM1.Tb_CliCRAZAO.Value+' '+DM1.Tb_CliCCELULAR.Value,' ',48));
   WriteLn(F,Centra('DECLARO TER PEDIDO A '+DM1.Tb_EmpFANTASIA.Value+' OS PRODUTOS',' ',48));
   WriteLn(F,Centra('NESTE CUPOM',' ',48));
   if mfpgto=2 then
      begin
      WriteLn(F,DM1.Tb_cic17CPPD.Value+Centra('A SER PAGO PELO CONVENIO',' ',26));
      WriteLn(F,'Convenio.: '+DM1.Tb_CVCVRAZAO.Value);
      end
   else if mfpgto=1 then
      begin
      WriteLn(F,DM1.Tb_cic17CPPD.Value+Centra('RECEBER NO ATO DA ENTREGA',' ',26));
      end;
   end
else if ptipo=7 then
   begin
   mdesc2:=Trim(Frm_PvCanI.Qr_ItemPDNOME.Value)+' '+Trim(Frm_PvCanI.Qr_ItemPDMARCA.Value);
   Writeln(f,'============ITEM CANCELADO=============');
   if length(mdesc2)>24 then
      begin
      mdesc2:=centraTexto(mdesc2,0,24);
      mdesc1:=copy(mdesc2,1,24);
      mdesc2:=copy(mdesc2,25,24);
      end
   else
      begin
      mdesc1:=mdesc2;
      mdesc2:='';
      end;

   if trim(mdesc2)='' then
      begin
      WriteLn(F,insere2(mdesc1,' ',24)+' '
                       +insere2(Frm_PvCanI.Qr_ItemP2ITEM.AsString,' ',3)
                       +insere2(' '+Frm_PvCanI.Qr_ItemPDUND.Value,' ',3)
                       +insere(formatFloat('####0.00',Frm_PvCanI.Qr_ItemP2PRECO.Value),' ',08)
                       +insere(FormatFloat('####0.00',Frm_PvCanI.Qr_ItemP2PRECO.Value*Frm_PvCanI.Qr_ItemP2QTD.Value),' ',08));
      end
   else
      begin
      WriteLn(F,insere2(mdesc1,' ',24));
      WriteLn(F,insere2(mdesc2,' ',24)+' '
                       +insere2(Frm_PvCanI.Qr_ItemP2ITEM.AsString,' ',3)
                       +insere2(' '+Frm_PvCanI.Qr_ItemPDUND.Value,' ',3)
                       +insere(formatFloat('####0.00',Frm_PvCanI.Qr_ItemP2PRECO.Value),' ',08)
                       +insere(FormatFloat('####0.00',Frm_PvCanI.Qr_ItemP2PRECO.Value*Frm_PvCanI.Qr_ItemP2QTD.Value),' ',08));
      end;
   if Frm_PvCani.Qr_ItemP2DESC1.Value>0 then
      begin
      WriteLn(F,insere2('Desconto Promocional','.',38)+' '
                       +insere(FormatFloat('####0.00',Frm_PvCani.Qr_ItemP2DESC1.Value),' ',08));

      end;
   Writeln(f,'=======================================');
   end;
result:=true;
end;

procedure TFrm_PonVen.QTDExit(Sender: TObject);
begin
QTD.Enabled:=False;
CODPRO.Setfocus;
end;

function fpvatuacor(ptipo: Integer):Boolean;
begin
{
DM4.Tb_Par01Fon.Close;
DM4.Tb_Par01Fon.SQL.Clear;
DM4.Tb_Par01fon.SQL.Add('Select * from PARFON where '
                  +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                  +' PFNOMTER='+chr(39)+pnomter+chr(39)
                  +' and PFNOMFOR='+chr(39)+'PONVEN'+chr(39));
DM4.Tb_Par01Fon.Open;
}
if (Frm_PonVen.Panel4.Caption='CAIXA LIVRE') then
   begin
   Frm_PonVen.Panel4.Font.Color:=  clLime;
   end
else
   begin
   Frm_PonVen.Panel4.Font.Color:=  clRed;
   end;

{
While not DM4.Tb_Par01Fon.Eof do
   begin
   if DM4.Tb_Par01FonPFNOMCOM.Value='LABEL3' then
      begin
      Frm_PonVen.Label3.Font.Name :=DM4.Tb_Par01FonPFNOMFON.Value;
      Frm_PonVen.Label3.Font.Size :=DM4.Tb_Par01FonPFTAMFON.AsInteger;
      Frm_PonVen.Label3.Font.Color:=DM4.Tb_Par01FonPFCORFON.AsInteger;
      Frm_PonVen.Label3.Color     :=DM4.Tb_Par01FonPFCORFUN.AsInteger;
      end;
   if (DM4.Tb_Par01FonPFNOMCOM.Value='PANEL4') and (Frm_PonVen.Panel4.Caption='CAIXA LIVRE') then
      begin
      Frm_PonVen.Panel4.Font.Name :=DM4.Tb_Par01FonPFNOMFON.Value;
      Frm_PonVen.Panel4.Font.Size :=DM4.Tb_Par01FonPFTAMFON.AsInteger;
      Frm_PonVen.Panel4.Font.Color:=DM4.Tb_Par01FonPFCORFON.AsInteger;
      Frm_PonVen.Panel4.Color     :=DM4.Tb_Par01FonPFCORFUN.AsInteger;
      Frm_PonVen.Panel5.Font.Name :=DM4.Tb_Par01FonPFNOMFON.Value;
      Frm_PonVen.Panel5.Font.Size :=DM4.Tb_Par01FonPFTAMFON.AsInteger;
      Frm_PonVen.Panel5.Font.Color:=DM4.Tb_Par01FonPFCORFON.AsInteger;
      Frm_PonVen.Panel5.Color     :=DM4.Tb_Par01FonPFCORFUN.AsInteger;
      end;
   if (DM4.Tb_Par01FonPFNOMCOM.Value='PANEL5') and not (Frm_PonVen.PANEL4.Caption='CAIXA LIVRE') then
      begin
      Frm_PonVen.Panel4.Font.Name :=DM4.Tb_Par01FonPFNOMFON.Value;
      Frm_PonVen.Panel4.Font.Size :=DM4.Tb_Par01FonPFTAMFON.AsInteger;
      Frm_PonVen.Panel4.Font.Color:=DM4.Tb_Par01FonPFCORFON.AsInteger;
      Frm_PonVen.Panel4.Color     :=DM4.Tb_Par01FonPFCORFUN.AsInteger;
      Frm_PonVen.Panel5.Font.Name :=DM4.Tb_Par01FonPFNOMFON.Value;
      Frm_PonVen.Panel5.Font.Size :=DM4.Tb_Par01FonPFTAMFON.AsInteger;
      Frm_PonVen.Panel5.Font.Color:=DM4.Tb_Par01FonPFCORFON.AsInteger;
      Frm_PonVen.Panel5.Color     :=DM4.Tb_Par01FonPFCORFUN.AsInteger;
      end;
   if DM4.Tb_Par01FonPFNOMCOM.Value='PANEL2' then
      begin
      Frm_PonVen.Panel2.Font.Name :=DM4.Tb_Par01FonPFNOMFON.Value;
      Frm_PonVen.Panel2.Font.Size :=DM4.Tb_Par01FonPFTAMFON.AsInteger;
      Frm_PonVen.Panel2.Font.Color:=DM4.Tb_Par01FonPFCORFON.AsInteger;
      Frm_PonVen.Panel2.Color     :=DM4.Tb_Par01FonPFCORFUN.AsInteger;
      Frm_PonVen.Panel3.Font.Name :=DM4.Tb_Par01FonPFNOMFON.Value;
      Frm_PonVen.Panel3.Font.Size :=DM4.Tb_Par01FonPFTAMFON.AsInteger;
      Frm_PonVen.Panel3.Font.Color:=DM4.Tb_Par01FonPFCORFON.AsInteger;
      Frm_PonVen.Panel3.Color     :=DM4.Tb_Par01FonPFCORFUN.AsInteger;
      Frm_PonVen.StatusBar1.Font.Name :=DM4.Tb_Par01FonPFNOMFON.Value;
      Frm_PonVen.StatusBar1.Font.Size :=DM4.Tb_Par01FonPFTAMFON.AsInteger;
      Frm_PonVen.StatusBar1.Font.Color:=DM4.Tb_Par01FonPFCORFON.AsInteger;
      Frm_PonVen.StatusBar1.Color     :=DM4.Tb_Par01FonPFCORFUN.AsInteger;
      Frm_PonVen.StatusBar2.Font.Name :=DM4.Tb_Par01FonPFNOMFON.Value;
      Frm_PonVen.StatusBar2.Font.Size :=DM4.Tb_Par01FonPFTAMFON.AsInteger;
      Frm_PonVen.StatusBar2.Font.Color:=DM4.Tb_Par01FonPFCORFON.AsInteger;
      Frm_PonVen.StatusBar2.Color     :=DM4.Tb_Par01FonPFCORFUN.AsInteger;
      end;
   DM4.Tb_Par01Fon.Next;
   end;
   }
result:=True;
end;
procedure TFrm_PonVen.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if mqtdi>0 then
   begin
   MessageDlg('Favor Finalizar o Cupom Antes de Sair',mtWarning,[mbOk],0);
   CanClose:=False;
   CODPRO.SetFocus;
   exit;
   end;
fAjustaEcfAberto(99,0);
if mEmitiuCupom then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADECF set CFDTULTMOV='+chr(39)+FormatDateTime(fdt, date)+chr(39)
                     +' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CFCAIXA=0'+IntToStr(codecf));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,934,'Frm_PonVen','CADECF');
      end;
   mEmitiuCupom:=False;
   end;



end;

procedure TFrm_PonVen.FormKeyPress(Sender: TObject; var Key: Char);
begin

if (Integer(key)=4) then          // Ctrl-D
   begin
   if CODPRO.Enabled  then
      begin
      MessageDlg('Fechar Primeiro o Cupom Fiscal!',mtWarning,[mbOk],0);
      CODPRO.SetFocus;
      exit;
      end;
   if not fpvcanped(0) then
      begin
      if CODPRO.Enabled then
         CODPRO.SetFocus;
      end;
   end;

end;
function fpvcanped(ptipo: Integer):Boolean;
begin
if mchaveped=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.add('Select max(P1NUMCF) from CADP01 where P1CODEMP=0'+IntToStr(codemp)
                     +' and P1STATUS<9 '
                     +' and P1CODECF=0'+IntToStr(codecf)
                     +' and P1NUMCF>0'
                     +' and P1DATAP>='+chr(39)+FormatDateTime(fdt, date-1)+chr(39));
   DM1.Query1.Open;
   iretorno:=fpvecf_Bema(0,9,0,0,0,0,0,0);
   if iretorno<>1 then
      begin
      MessageDlg('Erro ao Buscar o numero do cupom: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
      exit;
      end;
   if DM1.Tb_ECFCFMODELO.Value=1 then
      mncupom:=mncupom-1;
   if mncupom<>DM1.Query1.Fields[0].AsFloat then
      begin
      MessageDlg('Cupom Maquina: '+FloatToStr(mncupom)+#13
                +'Cupom Arquivo: '+DM1.Query1.Fields[0].AsString+#13
                +'Cupom ja Cancelado Anteriormente ou houve erro ao localizar!',mtWarning,[mbOk],0);
      exit;
      end;

   if not flcadp01(2,0,ls_numped,IntTostr(codecf),FloatTostr(mncupom)) then
      begin
      MessageDlg('Cupom Maquina: '+FloatToStr(mncupom)+#13
                +'Cupom Arquivo: '+DM1.Query1.Fields[0].AsString+#13
                +'ao ler pedido!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   begin
   if not flcadp01(2,0,ls_numped,IntTostr(codecf),FloatTostr(mncupom)) then
      begin
      MessageDlg('Cupom Maquina: '+FloatToStr(mncupom)+#13
                +'Cupom Arquivo: '+DM1.Query1.Fields[0].AsString+#13
                +'ao ler pedido!',mtWarning,[mbOk],0);
      exit;
      end;
   end;


flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_Ped01P1CODCLI.AsString);
Application.CreateForm(TFrm_Cancup, Frm_CanCup);
Frm_CanCup.CHAVEP.Text:=DM1.Tb_Ped01P1CHAVE.AsString;
Frm_CanCup.NOMCLI.Text:=DM1.Query1.Fields[0].AsString;
mcancelou:=False;
Frm_CanCup.ShowModal;
Frm_CanCup.Free;
if not mcancelou then
   result:=False
else
   result:=True;
end;

function fpvexcped(pchave: Real):Boolean;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP01 set P1SITPED=1 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' P1LOTSEQ=0'+IntToStr(ls_numped)
                  +' and P1CHAVE=0'+FloatToStr(pchave));
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
   ex_erroSql(01,2162,'Frm_Ponven','CADP01');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADP01V where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1VCODEMP=0'+IntToStr(codemp)+' and ')
                  +' P1VLOTSEQ=0'+IntToStr(ls_numped)
                  +' and P1VCHAVE=0'+FloatToStr(pchave));
Try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
   ex_erroSql(01,2173,'Frm_Ponven','CADP01V');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete From CADP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP='+IntToStr(codemp)+' and ')
                  +' P2LOTSEQ=0'+IntToStr(ls_numped)
                  +' and P2CHAVE=0'+FloatToStr(pchave));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2173,'Frm_PonVen','CADP02');
   end;
result:=True;
end;


procedure TFrm_PonVen.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      CODPRO.Text:=fChamaPro(2,'Frm_PonVen','')
   else
     CODPRO.Text:=fChamaPro(0,'Frm_Ponven','');
   key:=0;
   end;

end;
function fpvAguardaRetorno(ptipo: Integer): Integer;
var
mdoc,mlinha_ret: String;
mInicioTexto: Integer;
mValRec,mtotRec: Real;
mCodRec: Integer;
begin
cancelar_proc:=false;
Application.Createform(TFrm_Agde, Frm_Agde);
Frm_Agde.label1.caption:='Aguardando Fechamento do Cupom...';
Frm_Agde.Panel1.Visible:=true;
Frm_Agde.show;
result:=0;
mdesped:=0;
mvlracre:=0;
mtotrec:=0;
While true do
   begin
   if not verteclado(0) then
      begin
      Result:=3;
      Frm_Agde.Free;
      exit;
      end;
   if not FileExists(cf_pastacf_ret+cf_nomarq+'.RES') then
      Continue;
   AssignFile(cf_fCupret,cf_pastacf_ret+cf_nomarq+'.RES');

   reset(cf_fCupRet);
   readln(cf_fCupret,mlinha_ret);
   While mlinha_ret<>'' do
      begin
      if copy(mlinha_ret,1,5)='V-001' then
         begin
         mncupom:=valint(copy(mlinha_ret,09,6))
         end
      else if copy(mlinha_ret,1,5)='C-001' then
         mdesped:=valfloat(copy(mlinha_ret,09,length(mlinha_ret)-08))/100
      else if copy(mlinha_ret,1,5)='D-001' then
         mvlracre:=valfloat(copy(mlinha_ret,09,length(mlinha_ret)-08))/100;
      readln(cf_fCupret,mlinha_ret);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('UPDATE CADP01 set P1CUPOM=2, P1EMIDOC=1, P1CODECF=0'+IntToStr(codecf)+', '
                     +' P1DATACF='+chr(39)+FormatDateTime(fdt, date)+CHR(39)+','
                     +' P1DATDOC=:DATDOC,'
                     +' P1CUPACRE=0'+mudavp(FloatToStr(mvlracre))+','
                     +' P1CUPDES=0'+mudavp(FloatToStr(mvlracre))+','
                     +' P1NUMCF=0'+IntToStr(mncupom)+' where '
                     +' P1CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString+' and '
                     +' P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString+' and '
                     +' P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString);
   DM1.Query1.ParambyName('DATDOC').AsDate:= NOW;
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,3538,'Frm_Ponven','CADP01');
      end;
   if not flcadp01(9,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsString,pvazio) then
      begin
      MessageDlg('Erro ao ler Pedido',mtWarning,[mbOk],0);
      exit;
      end;
   if not flcadp01v(0,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsString,pvazio) then
      begin
      MessageDlg('Erro ao Ler Vencimentos do Pedido.',mtError,[mbOk],0);
      exit;
      end;

//    FIM DASNOVAS
   Fgravarnf(1);
   mdoc:=Formatfloat('000000',DM1.Tb_Ped01P1NUMCF.Value);



   reset(cf_fCupRet);
   readln(cf_fCupret,mlinha_ret);
   While mlinha_ret<>'' do
      begin
      if copy(mlinha_ret,1,5)='X-001' then
         result:=valint(copy(mlinha_ret,09,1))
      else if copy(mlinha_ret,1,3)='E-1' then // FORMA DE PAGAMENTO
         begin
         readln(cf_fCupret,mlinha_ret);
         if copy(mlinha_ret,1,3)='E-2' then // FORMA DE PAGAMENTO
            begin
            mValRec:=valfloat(copy(mlinha_ret,09,length(mlinha_ret)-08))/100;
            mtotrec:=mtotrec+(mValRec);
            readln(cf_fCupret,mlinha_ret);
            if copy(mlinha_ret,1,3)='E-3' then // FORMA DE PAGAMENTO
               begin
               mCodRec:=valint(copy(mlinha_ret,09,length(mlinha_ret)-08));
               readln(cf_fCupret,mlinha_ret);
               end
            else mCodRec:=0;
            if not DM1.Tb_ECF_FP.Locate('FPECODIGO',mcodrec,[]) then
                DM1.Tb_ECF_FP.First;
            if LowerCase(copy(DM1.Tb_ECF_FPFPEFORMA.Value,1,3))='car' then
               begin
               ffpgtolanfor(2,999,mValRec,mvlracre,mdesped,
                  iif(DM1.Tb_CliCCNPJ.Value=0,DM1.Tb_CliCCPF.Value,DM1.Tb_CliCCNPJ.Value),
                  mdoc,
                  '999', // serie
                  DM1.Tb_CliCRAZAO.Value, // emitente
                  iif(DM1.Tb_CliCCNPJ.Value=0,DM1.Tb_CliCRG.Value,DM1.Tb_CliCIE.Value),
                  '999', // c/c
                  '999', // agencia
                  '999', // compensação
                  '999', // numchq
                  '', // data nascimento
                  FormatDateTime(fdt2, pdatasis), // data de emissao
                  FormatDateTime(fdt2, pdatasis)); // data do deposito
               end
            else if LowerCase(copy(DM1.Tb_ECF_FPFPEFORMA.Value,1,3))='che' then
               begin
               ffpgtolanfor(1,999,mValRec,mvlracre,mdesped,
                  iif(DM1.Tb_CliCCNPJ.Value=0,DM1.Tb_CliCCPF.Value,DM1.Tb_CliCCNPJ.Value),
                  mdoc,
                  '999', // serie
                  DM1.Tb_CliCRAZAO.Value, // emitente
                  iif(DM1.Tb_CliCCNPJ.Value=0,DM1.Tb_CliCRG.Value,DM1.Tb_CliCIE.Value),
                  '999', // c/c
                  '999', // agencia
                  '999', // compensação
                  '999', // numchq
                  '', // data nascimento
                  FormatDateTime(fdt2, pdatasis), // data de emissao
                  FormatDateTime(fdt2, pdatasis)); // data do deposito
               end
            else
               begin
               ffpgtolanfor(0,999,mValRec,mvlracre,mdesped,
                   iif(DM1.Tb_CliCCNPJ.Value=0,DM1.Tb_CliCCPF.Value,DM1.Tb_CliCCNPJ.Value),
                  mdoc,
                  '999', // serie
                  DM1.Tb_CliCRAZAO.Value, // emitente
                  iif(DM1.Tb_CliCCNPJ.Value=0,DM1.Tb_CliCRG.Value,DM1.Tb_CliCIE.Value),
                  '999', // c/c
                  '999', // agencia
                  '999', // compensação
                  '999', // numchq
                  '', // data nascimento
                  FormatDateTime(fdt2, pdatasis), // data de emissao
                  FormatDateTime(fdt2, pdatasis)); // data do deposito
               end;
            Continue;
            end;
         end;
      readln(cf_fCupret,mlinha_ret);
      end;
   closefile(cf_fcupret);
   deletefile(cf_pastacf_ret+cf_nomarq+'.RES');
   ffpgtoefetuabaixa(0,mtotrec,mvlracre,mdesped);
   fpvgravap1(4,mvlracre,mdesped);
   if (mlocorigem<>0) and (DM1.Tb_PargerPLSEPCUPOM.Value=1) then
      begin
      FPedEmiteNf(0,3,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger
                  ,DM1.Tb_Ped01P1ORDEM.AsInteger, DM1.Tb_Ped01P1CODEMP.AsInteger,
                  1,DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // lista de separacao
      end;
   break;
   end;
Frm_agde.Free;
end;
procedure TFrm_PonVen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

