unit S_Fpgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,func,lerarq,db,dbtables, Mask,S_Cli,Func_Ecf,func2;

type
  TFrm_Fpgto = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    CB_DIN: TCheckBox;
    VALDIN: TEdit;
    VALCHAV: TEdit;
    CB_CHAV: TCheckBox;
    CB_CHPD: TCheckBox;
    VALCHPD: TEdit;
    CB_CARDEB: TCheckBox;
    VALDEB: TEdit;
    VALVIS: TEdit;
    CB_CARVIS: TCheckBox;
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel3: TBevel;
    Bevel7: TBevel;
    Label6: TLabel;
    TOTPED: TEdit;
    Label7: TLabel;
    TOTREC: TEdit;
    Label8: TLabel;
    TOTRES: TEdit;
    CB_AREC: TCheckBox;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    bbConfirmar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    TOTCUP: TEdit;
    Label5: TLabel;
    TOTDES: TEdit;
    TOTLIQ: TEdit;
    Label9: TLabel;
    TOTACRE: TEdit;
    Label10: TLabel;
    CB_CARMAS: TCheckBox;
    CB_CARAME: TCheckBox;
    VALMAS: TEdit;
    VALAME: TEdit;
    Bevel8: TBevel;
    Bevel9: TBevel;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    CODCLI: TEdit;
    RAZSOC: TEdit;
    lbl_fantasia: TLabel;
    FANTASIA: TEdit;
    ENDERECO: TEdit;
    Label14: TLabel;
    BAIRRO: TEdit;
    Label15: TLabel;
    CIDADE: TEdit;
    Label16: TLabel;
    UF: TEdit;
    Label17: TLabel;
    CEP: TMaskEdit;
    lbl_cnpj: TLabel;
    IE: TEdit;
    lbl_ie: TLabel;
    Label20: TLabel;
    FONE: TMaskEdit;
    bbCancelar: TBitBtn;
    RG_TPPESSOA: TRadioGroup;
    CNPJ: TMaskEdit;
    procedure TOTDESExit(Sender: TObject);
    procedure TOTACREExit(Sender: TObject);
    procedure VALDINExit(Sender: TObject);
    procedure VALCHAVExit(Sender: TObject);
    procedure VALCHPDExit(Sender: TObject);
    procedure VALDEBExit(Sender: TObject);
    procedure VALVISExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure CB_ARECClick(Sender: TObject);
    procedure CB_DINExit(Sender: TObject);
    procedure CB_CHAVExit(Sender: TObject);
    procedure CB_CHPDExit(Sender: TObject);
    procedure CB_CARDEBExit(Sender: TObject);
    procedure CB_CARVISExit(Sender: TObject);
    procedure TOTDESKeyPress(Sender: TObject; var Key: Char);
    procedure bbConfirmarClick(Sender: TObject);
    procedure VALMASExit(Sender: TObject);
    procedure VALAMEExit(Sender: TObject);
    procedure CB_CARMASExit(Sender: TObject);
    procedure CB_CARAMEExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RG_TPPESSOAExit(Sender: TObject);
    procedure CNPJExit(Sender: TObject);
    procedure CB_CARMASClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  function ffpgtocalc(ptipo: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }

  end;
function ffpgtoCarregaCli(ptipo: Integer): Boolean;
function ffpgtolanfor(ptipo,pbanco: Integer;
                     pvalor,pacre,pdesc,pcnpj:Real;
                     pdoc,pserie,pemit,pie,pcc,pag,pcomp,pnumchq,pdtnas,pdtemis,pdtdep: String): Boolean;
function ffpgtoefetuabaixa(ptipo: Integer;pvalor,pacre,pdesc:Real): Boolean;

Function FReecupomAjustaEstoque(ptipo: Integer; pcodemp,plotseq,pchave: Real ): Boolean;
function fConcluiCupom(pFormaPgto: Integer): boolean;
function fpgtoConcluiTef(pTipo: Integer): Boolean;

var
  Frm_Fpgto: TFrm_Fpgto;
  mspaco: Integer=20;
  mconcluiu: Boolean=False;
  mloteb: Real=0;
  mlocorigem: Integer=0;
//  mchaveped: Integer=0;
  rcchave,rccodemp: Real;
  
implementation

uses S_PonVen, S_DM1, func_excecoes, S_DM4;

{$R *.dfm}

procedure TFrm_Fpgto.TOTDESExit(Sender: TObject);
begin
TOTDES.Text:=insere(FormatFloat(mcasas, valfloat(TOTDES.Text)),' ',mspaco);
if ValFloat(TOTDES.Text)<0 then
   begin
   MessageDlg('Este valor não pode ser menor que zero!',mtWarning,[mbOk],0);
   TOTDES.SetFocus;
   end;
ffpgtocalc(0);

end;

function TFrm_Fpgto.ffpgtocalc(ptipo: Integer): Boolean;
begin
TOTLIQ.Text:=insere(FormatFloat(mcasas, (ValFloat(TOTCUP.Text)+ValFloat(TOTACRE.Text)-ValFloat(TOTDES.Text))),' ',mspaco);
TOTPED.Text:=TOTLIQ.Text;
TOTREC.Text:=insere(Formatfloat(mcasas, (
                         ValFloat(VALDIN.Text)
                        +ValFloat(VALCHAV.Text)
                        +ValFloat(VALCHPD.Text)
                        +ValFloat(VALDEB.Text)
                        +ValFloat(VALVIS.Text)
                        +ValFloat(VALMAS.Text)
                        +ValFloat(VALAME.Text))),' ',mspaco);
TOTRES.Text:=insere(Formatfloat(mcasas, (valFloat(TOTPED.Text)-ValFloat(TOTREC.Text))),' ',mspaco);

result:=True;
end;
procedure TFrm_Fpgto.TOTACREExit(Sender: TObject);
begin
TOTACRE.Text:=insere(FormatFloat(mcasas, valfloat(TOTACRE.Text)),' ',mspaco);
if ValFloat(TOTACRE.Text)<0 then
   begin
   MessageDlg('Este valor não pode ser menor que zero!',mtWarning,[mbOk],0);
   TOTACRE.SetFocus;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.VALDINExit(Sender: TObject);
begin
VALDIN.Text:=insere(FormatFloat(mcasas, valfloat(VALDIN.Text)),' ',mspaco);
if ValFloat(VALDIN.Text)<0 then
   begin
   MessageDlg('Este valor não pode ser menor que zero!',mtWarning,[mbOk],0);
   VALDIN.SetFocus;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.VALCHAVExit(Sender: TObject);
begin
VALCHAV.Text:=insere(FormatFloat(mcasas, valfloat(VALCHAV.Text)),' ',mspaco);
if ValFloat(VALCHAV.Text)<0 then
   begin
   MessageDlg('Este valor não pode ser menor que zero!',mtWarning,[mbOk],0);
   VALCHAV.SetFocus;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.VALCHPDExit(Sender: TObject);
begin
VALCHPD.Text:=insere(FormatFloat(mcasas, valfloat(VALCHPD.Text)),' ',mspaco);
if ValFloat(VALCHPD.Text)<0 then
   begin
   MessageDlg('Este valor não pode ser menor que zero!',mtWarning,[mbOk],0);
   VALCHPD.SetFocus;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.VALDEBExit(Sender: TObject);
begin
VALDEB.Text:=insere(FormatFloat(mcasas, valfloat(VALDEB.Text)),' ',mspaco);
if ValFloat(VALDEB.Text)<0 then
   begin
   MessageDlg('Este valor não pode ser menor que zero!',mtWarning,[mbOk],0);
   VALDEB.SetFocus;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.VALVISExit(Sender: TObject);
begin
VALVIS.Text:=insere(FormatFloat(mcasas, valfloat(VALVIS.Text)),' ',mspaco);
if ValFloat(VALVIS.Text)<0 then
   begin
   MessageDlg('Este valor não pode ser menor que zero!',mtWarning,[mbOk],0);
   VALVIS.SetFocus;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Fpgto.CB_ARECClick(Sender: TObject);
begin
if CB_AREC.Checked then
   begin
   VALDIN.Text :='';
   VALCHAV.Text:='';
   VALCHPD.Text:='';
   VALDEB.Text :='';
   VALVIS.Text :='';
   VALMAS.Text :='';
   VALAME.Text :='';
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.CB_DINExit(Sender: TObject);
begin
if CB_DIN.Checked then
   begin
   VALDIN.ReadOnly:=False;
   VALDIN.Text:=insere(FormatFloat(mcasas, ValFloat(VALDIN.Text)+ValFloat(TOTRES.Text)),' ',mspaco);
   CB_AREC.Checked:=False;
   end
else
   begin
   VALDIN.Text:='';
   VALDIN.ReadOnly:=True;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.CB_CHAVExit(Sender: TObject);
begin
if CB_CHAV.Checked then
   begin
   VALCHAV.ReadOnly:=False;
   VALCHAV.Text:=insere(FormatFloat(mcasas, ValFloat(VALCHAV.Text)+ValFloat(TOTRES.Text)),' ',mspaco);
   CB_AREC.Checked:=False;
   end
else
   begin
   VALCHAV.Text:='';
   VALCHAV.ReadOnly:=True;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.CB_CHPDExit(Sender: TObject);
begin
if CB_CHPD.Checked then
   begin
   VALCHPD.ReadOnly:=False;
   VALCHPD.Text:=insere(FormatFloat(mcasas, ValFloat(VALCHPD.Text)+ValFloat(TOTRES.Text)),' ',mspaco);
   CB_AREC.Checked:=False;
   end
else
   begin
   VALCHPD.Text   :='';
   VALCHPD.ReadOnly:=True;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.CB_CARDEBExit(Sender: TObject);
begin
if CB_CARDEB.Checked then
   begin
   valdeb.ReadOnly:=False;
   VALDEB.Text:=insere(FormatFloat(mcasas, ValFloat(VALDEB.Text)+ValFloat(TOTRES.Text)),' ',mspaco);
   CB_AREC.Checked:=False;
   end
else
   begin
   VALDEB.ReadOnly:=True;
   VALDEB.Text:='';
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.CB_CARVISExit(Sender: TObject);
begin
if CB_CARVIS.Checked then
   begin
   VALVIS.ReadOnly:=False;
   VALVIS.Text:=insere(FormatFloat(mcasas, ValFloat(VALVIS.Text)+ValFloat(TOTRES.Text)),' ',mspaco);
   CB_AREC.Checked:=False;
   end
else
   begin
   VALVIS.Text:='';
   VALVIS.ReadOnly:=True;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.TOTDESKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   Key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Fpgto.bbConfirmarClick(Sender: TObject);
var
minfo: String;
mlanfor: Boolean;
mdoc: String;
mtotdes,mtotacre: Real;
begin

if ValFloat(TOTRES.Text)<0 then
   begin
   minfo:='Esta passando '+DM1.Tb_PargerPMOEDA.Value+': '+FormatFloat(mcasas, ValFloat(TOTRES.Text)*-1)+'. Posso Considerar como Acréscimos?';
   if fmensagem(pchar(minfo),0,['1','2'],2)<>mrYes then
      exit
   else
      begin
      TOTACRE.Text:=insere(Formatfloat(mcasas, ValFloat(TOTACRE.Text)-ValFloat(TOTRES.Text)),' ',mspaco);
      ffpgtocalc(0);
      end;
   end
else if not (CB_AREC.Checked) and  (ValFloat(TOTRES.Text)<>0) then
  begin
  MessageDlg('Valor Pago não Confere!',mtWarning,[mbOk],0);
  exit;
  end;

{if (mdesped>0) or (mvlracre>0) then
   begin
   iretorno:=fpvecf_Bema(0,4,0,mdesped,mvlracre,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao Lancar descontos ou acrescimos: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
   end;
}
if (DM1.Tb_Pargerptipotef.Value=2) and (codemp<100) then
   begin
   if not fpgtoConcluiTef(1) then
      bbCancelar.Click;
   mloteb:=0;
   mconcluiu:=True;
   close;

   exit;
   end;



if mlocorigem=0 then
   begin
   if not fpvgravap1(1,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text)) then
      begin
      MessageDlg('Erro ao Tentar Gravar o Pedido: '+FloatTostr(mchaveped)+', Chame-o Suporte!',mtWarning,[mbOK],0);
      exit;
      end;
   end;

mlanfor:=False;
if not flcadp01(0,0,ls_numped,FloatToStr(mchaveped),pvazio) then
   begin
   MessageDlg('Erro ao Ler Pedido.',mtError,[mbOk],0);
   exit;
   end;

mvlracre:=ValFloat(TOTACRE.Text);
mdesped :=ValFloat(TOTDES.Text);

if not flcadp01v(0,0,ls_numped,FloatToStr(mchaveped),pvazio) then
   begin
   MessageDlg('Erro ao Ler Vencimentos do Pedido.',mtError,[mbOk],0);
   exit;
   end;


flcadcli(1,0,DM1.Tb_Ped01P1CODCLI.AsString);
mdoc:=Formatfloat('000000',DM1.Tb_Ped01P1NUMCF.Value);
{
While not DM1.Tb_Dar.Eof do
   begin
   if mdoc='' then
      mdoc:=Formatfloat('000000',DM1.Tb_DarCRNUMERO.Value)
   else
      mdoc:=mdoc+copy(Formatfloat('000000',DM1.Tb_DarCRNUMERO.Value),4,3);
   DM1.Tb_Dar.Next;
   end;
DM1.Tb_Dar.First;
}
if DM1.Tb_Ped01P1ACREGER.Value>0 then
   begin
   iretorno:=fpvecf_Bema(0,4,0,DM1.Tb_Ped01P1ACREGER.Value,0,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao Lancar: '+DM1.Tb_PargerPTITAGER.Value,mtWarning,[mbOk],0);
   end;
if DM1.Tb_Ped01P1VALFRE.Value>0 then
   begin
   iretorno:=fpvecf_Bema(0,2,0,0,DM1.Tb_Ped01P1VALFRE.Value,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao Lancar taxa de Entrega: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
   end;
if DM1.Tb_Ped01P1ACRECONV.Value>0 then
   begin
   iretorno:=fpvecf_Bema(0,3,0,0,DM1.Tb_Ped01P1ACRECONV.Value,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao Lancar taxa de Administração: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
   end;


pobscupom2:=' ';
mtotdes :=ValFloat(TOTDES.Text)+DM1.Tb_Ped01P1TOTDES.Value;
mtotacre:=ValFloat(TOTACRE.Text);
if (mtotdes<>0) and (mtotacre<>0) then
   begin
   if mtotdes>mtotacre then
      begin
      mtotdes:=mtotdes-mtotacre;
      mtotacre:=0
      end
   else if mtotacre>mtotdes then
      begin
      mtotacre:=mtotacre-mtotdes;
      mtotdes:=0
      end;
   end;
if DM1.Tb_ECFCFFPGTO.Value=0 then
   fpvecf_Bema(0,4,0,mtotdes,mtotacre,ValFloat(TOTLIQ.Text),0,0);

if ValFloat(VALDIN.Text)>0 then
   begin
   pobscupom2:=' ';
   pobscupom:='Dinheiro';
   pobscupom2:=' ';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALDIN.Text),0,0); // dinheiro
   if (DM1.Tb_PargerPTIPOTEF.Value<>2) or (codemp>99) then
      begin
      ffpgtolanfor(0,999,ValFloat(VALDIN.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped:=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALCHAV.Text)>0 then
   begin
   pobscupom:='CHEQUE';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALCHAV.Text),0,01); // cheques
   if (DM1.Tb_PargerPTIPOTEF.Value<>2) or (codemp>99) then
      begin
      ffpgtolanfor(1,999,ValFloat(VALCHAV.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;

if ValFloat(VALCHPD.Text)>0 then
   begin
   pobscupom:='CHEQUE';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALCHPD.Text),0,01); // cheques
   if (DM1.Tb_PargerPTIPOTEF.Value<>2) or (codemp>99) then
      begin
      ffpgtolanfor(1,999,ValFloat(VALCHPD.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALDEB.Text)>0 then
   begin
   pobscupom:='ELETRON';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALDEB.Text),0,04); // cartoes
   if (DM1.Tb_PargerPTIPOTEF.Value<>2) or (codemp>99) then
      begin
      ffpgtolanfor(3,999,ValFloat(VALDEB.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALVIS.Text)>0 then
   begin
   pobscupom:='CARTAO VISA';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALVIS.Text),0,04); // cartoes
   if (DM1.Tb_PargerPTIPOTEF.Value<>2) or (codemp>99) then
      begin
      ffpgtolanfor(4,999,ValFloat(VALVIS.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALMAS.Text)>0 then
   begin
   pobscupom:='MASTERCARD';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALMAS.Text),0,04); // cartoes
   if (DM1.Tb_PargerPTIPOTEF.Value<>2) or (codemp>99) then
      begin
      ffpgtolanfor(5,999,ValFloat(VALMAS.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALAME.Text)>0 then
   begin
   pobscupom:='AMERICANEXPRESS';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALAME.Text),0,04); // cartoes
   if (DM1.Tb_PargerPTIPOTEF.Value<>2) or (codemp>99) then
      begin
      ffpgtolanfor(6,999,ValFloat(VALAME.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if CB_AREC.Checked then
   begin
   pobscupom:='Dinheiro';
   pobscupom2:='A RECEBER';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
          end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(TOTLIQ.Text),0,0); // dinheiro
   end;

pobscupom:=insere2('CLIENT:'+FormatFloat('00000',valFloat(CODCLI.Text))
          +'-'+RAZSOC.Text,' ',mtaml-6);
pobscupom:=pobscupom+' '+FormatFloat('00000',mchaveped);
if Trim(ENDERECO.Text)<>'' then
   pobscupom:=pobscupom+insere2('ENDER.: '+ENDERECO.Text,' ',mtaml);
if (trim(BAIRRO.Text)<>'') or (TRIM(CIDADE.Text)<>'') or (trim(UF.Text)<>'') then
   pobscupom:=pobscupom+insere2(Trim(BAIRRO.Text)+' '+Trim(CIDADE.Text)+'-'+Trim(UF.Text),' ',mtaml);

if ValFloat(Frm_Fpgto.CNPJ.Text)>0 then
   begin
   if Frm_Fpgto.RG_TPPESSOA.ItemIndex=0 then
      pobscupom:=pobscupom+insere2('CPF...: '+Frm_Fpgto.CNPJ.Text+' RG.: '+Frm_Fpgto.IE.Text,' ',mtaml)
   else
      pobscupom:=pobscupom+insere2('CNPJ..: '+Frm_Fpgto.CNPJ.Text+' Insc.Est.: '+Frm_Fpgto.IE.Text,' ',mtaml);
   end;
if Trim(Frm_Fpgto.FONE.Text)='' then
   pobscupom:=pobscupom+insere2('FONE..: '+FONE.Text,' ',mtaml);

if length(pobscupom)>mtam_mens then
   pobscupom:=copy(pobscupom,1,mtam_mens);
fpvecf_Bema(0,5,0,ValFloat(TOTDES.Text),ValFloat(TOTACRE.Text),ValFloat(TOTLIQ.Text),0,0);



{
if not (ppconsemp) and  (DM1.Tb_PargerPTIPOTEF.Value=2) then
   begin
   mResposta:=fpvAguardaRetorno(0);
   if mResposta=3 then
      begin
      MessageDlg('Erro ao Procuarar o Arquivo de Retorno!',mtError,[mbOk],0);
      end
   else if mResposta=1 then
      begin
      end;
   end;
}
if (ValFloat(CODCLI.Text)=1) or (ValFloat(CODCLI.Text)=2) then
   begin
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CFCHAVEP=0'+FloatToStr(mchaveped));
   DM1.Tb_CSF.Open;
   if DM1.Tb_CSF.Eof then
      DM1.Tb_CSF.Append
   else
      DM1.Tb_CSF.Edit;
   DM1.Tb_CSFCFCODEMP.Value:=codemp;
   DM1.Tb_CSFCFCHAVEP.Value:=mchaveped;
   DM1.Tb_CSFCFORDEMP.Value:=01;
   DM1.Tb_CSFCFRAZAO.Value :=Frm_Fpgto.RAZSOC.Text;
   DM1.Tb_CSFCFDENOM.Value :=Frm_Fpgto.FANTASIA.Text;
   DM1.Tb_CSFCFENDER.Value :=Frm_Fpgto.ENDERECO.Text;
   DM1.Tb_CSFCFBAIRRO.Value:=Frm_Fpgto.BAIRRO.Text;
   DM1.Tb_CSFCFCIDADE.Value:=Frm_Fpgto.CIDADE.Text;
   DM1.Tb_CSFCFUF.Value    :=Frm_Fpgto.UF.Text;
   DM1.Tb_CSFCFCEP.Value   :=Frm_Fpgto.CEP.Text;
   DM1.Tb_CSFCFTIPOC.Value :=0;
   DM1.Tb_CSFCFCGC.Value   :=fsonumero(Frm_Fpgto.CNPJ.Text);
   DM1.Tb_CSFCFIE.Value    :=IE.Text;
   DM1.Tb_CSFCFFONE.Value  :=Frm_Fpgto.FONE.Text;
   DM1.Tb_CSF.Post;
   end;

if not CB_AREC.Checked then
   begin
   mvlracre:=ValFloat(TOTACRE.Text);
   mdesped :=ValFloat(TOTDES.Text);
   ffpgtoefetuabaixa(0,ValFloat(TOTREC.Text),mvlracre,mdesped);
   end;
mconcluiu:=True;

fpvgravap1(4,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
if (mlocorigem<>0) and (DM1.Tb_PargerPLSEPCUPOM.Value=1) then
   begin
   FPedEmiteNf(0,3,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger
                  ,DM1.Tb_Ped01P1ORDEM.AsInteger, DM1.Tb_Ped01P1CODEMP.AsInteger,
                  1,DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // lista de separacao
   end;
mloteb:=0;
mconcluiu:=True;
close;
end;

procedure TFrm_Fpgto.VALMASExit(Sender: TObject);
begin
VALMAS.Text:=insere(FormatFloat(mcasas, valfloat(VALMAS.Text)),' ',mspaco);
if ValFloat(VALMAS.Text)<0 then
   begin
   MessageDlg('Este valor não pode ser menor que zero!',mtWarning,[mbOk],0);
   VALMAS.SetFocus;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.VALAMEExit(Sender: TObject);
begin
VALAME.Text:=insere(FormatFloat(mcasas, valfloat(VALAME.Text)),' ',mspaco);
if ValFloat(VALAME.Text)<0 then
   begin
   MessageDlg('Este valor não pode ser menor que zero!',mtWarning,[mbOk],0);
   VALAME.SetFocus;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.CB_CARMASExit(Sender: TObject);
begin
if CB_CARMAS.Checked then
   begin
   VALMAS.ReadOnly:=False;
   VALMAS.Text:=insere(FormatFloat(mcasas, ValFloat(VALMAS.Text)+ValFloat(TOTRES.Text)),' ',mspaco);
   CB_AREC.Checked:=False;
   end
else
   begin
   VALMAS.Text:='';
   VALMAS.ReadOnly:=True;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.CB_CARAMEExit(Sender: TObject);
begin
if CB_CARAME.Checked then
   begin
   VALAME.ReadOnly:=False;
   VALAME.Text:=insere(FormatFloat(mcasas, ValFloat(VALAME.Text)+ValFloat(TOTRES.Text)),' ',mspaco);
   CB_AREC.Checked:=False;
   end
else
   begin
   VALAME.Text:='';
   VALAME.ReadOnly:=True;
   end;
ffpgtocalc(0);

end;

function ffpgtolanfor(ptipo,pbanco: Integer;
                     pvalor,pacre,pdesc,pcnpj:Real;
                     pdoc,pserie,pemit,pie,pcc,pag,pcomp,pnumchq,pdtnas,pdtemis,pdtdep: String): Boolean;
var
mseq: Real;

{
ptipo: 0-Dinheiro
       1-Cheque a vista
       2-Cheques pre-Datados
       3-Cartoes debito
       4-Cartao Visa
       5-Cartao Mastercard
       6-Cartao American express
}

begin

if mloteb=0 then
   begin
   mloteb:=fbuscaLoteBaixaCR(0);
   end;
mdesc_mov:=pldr_descmov;
mcodccu  :=pldr_codccu;
mcoddep  :=pldr_coddep;
mnatdc   :=pldr_natdc;
mnomccu  :=pldr_nomccu;
mnomdep  :=pldr_nomdep;

if DM1.Tb_Ped01P1TIPO.Value=8 then
   fTestarParCaixaCliDar(1,1,'CADDARD')
else
   fTestarParCaixaCliDar(1,0,'CADDAR0');
if not DM1.Qr_FP.Locate('FPCODIGO',ptipo,[]) then
   begin
   MessageDlg('Erro ao procurar forma de pagamento!',mtError,[mbOk],0);
   DM1.Qr_FP.First;
   end;

mcodldr:=fCriarLDR(codemp
                  ,pvalor
                  ,pvalor
                  ,DM1.Qr_FPFPVINCULO.Value

                  ,DM1.Tb_Ped01P1CODCLI.Value
                  ,pdatasis
                  ,pdatasis
                  ,pdatasis
                  ,pdatanula
                  ,mcodccu
                  ,mcoddep
                  ,mnatdc
                  ,mdesc_mov
                  ,pdoc
                  ,DM1.Qr_FPFPDESC.Value
                  ,'CL'
                  ,pldr_nombco
                  ,mnomdep
                  ,mnomccu
                  ,pldr_nome
                  ,' '
                  ,03 // locdep
                  ,codcai
                  ,lotmov
                  ,0 // status
                 ,03); // origem
//mseq:=fbuscacodigofpcr(0);

mseq:=fCriarFPCR(codemp,DM1.Qr_FPFPCODIGO.Value,fsonumero(pnumchq),pbanco,pvalor,0
           ,codcai,mcodldr,mloteb
           ,DM1.Qr_FPFPVINCULO.Value
           ,DM1.Qr_FPFPTIPO.Value
           ,DM1.Tb_Ped01P1CHAVE.Value // numero da nr
           ,DM1.Tb_Ped01P1CODCLI.Value
           ,0 // dev cocdemp
           ,0 // dev codecf
           ,0 // dev numero
           ,0 // dev dup
           ,pdatasis
           ,pdatasis
           ,pdatanula
           ,pcc
           ,pserie
           ,' ' // desd
           );



if DM1.Qr_FPFPNUM.Value=1 then
   begin

   if (trim(pdtnas)='') or (trim(pdtnas)='/  /') then
      pdtnas:=FormatDateTime(fdt2, pdatanula);
   if (trim(pdtemis)='') or (trim(pdtemis)='/  /') then
      pdtemis:=FormatDateTime(fdt2, pdatasis);
   if (trim(pdtdep)='') or (trim(pdtdep)='/  /') then
      pdtdep:=FormatDateTime(fdt2, pdatasis);

   fCriarChqCli(codemp,fsonumero(pnumchq),pbanco,DM1.Tb_CliCCODCLI.Value,iif(DM1.Tb_CliCCNPJ.Value>0,DM1.Tb_CliCCNPJ.Value,DM1.Tb_CliCCPF.Value),
                pvalor,mloteb,0,0,0,0,codcai,codusr,mcodldr,
                     ls_codldr,
                     0, // quantidade de prorrogacoes
                     0, // codigo da forma de pagamento
                     codcai, // codigo do caixa
                     0, // deposito 0-sim 1-nao

                pserie,pcomp,pemit,pag,pcc,pie,'',

                     mcodccu,
                     mcoddep,
                     mdesc_mov,
                     ' ', // obs linha 01
                     ' ', // obs linha 02
                     mnombco,

                StrtoDate(pdtnas),
                StrToDate(pdtemis),
                StrToDAte(pdtdep),

                     pdatanula, // data da baixa
                     pdatanula,
                     pdatanula ); // data do ultimo deposito


   end;
result:=True;
end;



function ffpgtoefetuabaixa(ptipo: Integer;pvalor,pacre,pdesc:Real): Boolean;
var
mseq: Real;
mdesc, macre: Real;
mdifdesc, mdifacre: Real;
mqtddup: Integer;
mlidos: Integer;
mdesc_mov: String;
mcodccu  : String;
mcoddep  : String;
mnatdc   : String;
mnomccu  : String;
mnomdep  : String;

begin
mqtddup:=DM1.Tb_Ped01V.RecordCount;
mdesc:=pdesc/mqtddup;
mdesc:=Arredonda(mdesc,DM1.Tb_PargerPCASAS.AsInteger);
mdifdesc:=pdesc-(mdesc*mqtddup);

macre:=pacre/mqtddup;
macre:=Arredonda(macre,DM1.Tb_PargerPCASAS.AsInteger);
mdifacre:=pacre-(macre*mqtddup);
mlidos:=0;
DM1.Tb_Ped01V.First;
While not DM1.Tb_Ped01V.Eof do
   begin
   if ptipo=0 then
      begin
      fCriarFPCRDUP(codemp,
                    mloteb,
                    0, // numero da nr
                    codemp, // codigo da empresa da duplicata
                    DM1.Tb_Ped01P1NUMCF.Value,
                    0,
                    codecf,
                    DM1.Tb_Ped01P1CODCLI.Value,
                    DM1.Tb_Ped01P1CODVEN.Value,
                    codcai,
                    codusr,
                    DM1.Tb_Ped01VP1VVALOR.Value-(mdesc+mdifdesc)+(macre+mdifacre)
                    ,macre+mdifacre,
                    mdesc+mdifdesc,
                    DM1.Tb_Ped01VP1VICMSR.Value,
                    DM1.Tb_Ped01VP1VTOTIPI.Value,
                    DM1.Tb_Ped01VP1VVALOR.Value,
                    0, // devolu~ção
                    0, // parcial 0-nao 1-sim
                    DM1.Tb_Ped01P1DATACF.Value,
                    date,
                    date,
                    DM1.Tb_Ped01VP1VDATAV.Value,
                    chr(65+mlidos));


      end
   else
      begin
      if DM1.Tb_Ped01P1TIPO.Value=8 then
         fTestarParCaixaCliDar(1,1,'CADDAP0')
      else
         fTestarParCaixaCliDar(0,1,'CADDAR0');
      mdesc_mov:=pldr_descmov;
      mcodccu  :=pldr_codccu;
      mcoddep  :=pldr_coddep;
      mnatdc   :=pldr_natdc;
      mnomccu  :=pldr_nomccu;
      mnomdep  :=pldr_nomdep;
      mcodldr:=fCriarLDR(codemp
           ,iif(ptipo=1,0,pvalor)
           ,pvalor
           ,DM1.Qr_FPFPVINCULO.Value
           ,DM1.Tb_Ped01P1CODCLI.Value
           ,pdatasis
           ,iif(ptipo=1,pdatanula,pdatasis)
           ,pdatasis
           ,pdatanula
           ,mcodccu
           ,mcoddep
           ,mnatdc
           ,mdesc_mov
           ,'CF-'+DM1.Tb_Ped01P1NUMCF.AsString
           ,' '
           ,'CL'
           ,pldr_nombco
           ,mnomdep
           ,mnomccu
           ,pldr_nome
           ,' '
           ,03 // locdep
           ,codcai
           ,lotmov
           ,0 // status
          ,03); // origem
      end;
   if DM1.Tb_CliCDTUCPR.Value<DM1.Tb_Ped01P1DATDOC.Value then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADCLI set CDTUCPR='+chr(39)+FormatDateTime(fdt, DM1.Tb_Ped01P1DATDOC.Value)+chr(39)+' where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString+' and ')
                        +' CCODCLI=0'+DM1.Tb_Ped01P1CODCLI.AsString
                        +' and CDTUCPR<'+chr(39)+FormatDateTime(fdt, DM1.Tb_Ped01P1DATDOC.Value)+chr(39));
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,1122,'Frm_Fpgto','CADCLI');
         end;
      end;

   if (DM1.Tb_CliCDTPCPR.IsNull) or (DM1.Tb_CliCDTPCPR.Value<=pdatanula) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update CADCLI set CDTPCPR='+chr(39)+FormatDateTime(fdt, DM1.Tb_Ped01P1DATDOC.Value)+chr(39)+' where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString+' and ')
                        +' CCODCLI=0'+DM1.Tb_Ped01P1CODCLI.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,1122,'Frm_Fpgto','CADCLI');
         end;
      end;

  Gerar_Caddar_Conf(DM1.Tb_Ped01P1CODEMP.Value,
                    DM1.Tb_Ped01P1LOTSEQ.Value,
                    DM1.Tb_Ped01P1ORDEM.Value,
                    DM1.Tb_Ped01P1TOTALL.Value,
                    DM1.Tb_Ped01P1CHAVE.Value);
   DM4.Qr_IncDar.Close;
   DM4.Qr_IncDar.ParambyName('CRCODEMP').AsFloat    := codemp;
   DM4.Qr_IncDar.ParambyName('CRCODECF').AsFloat    := codecf;
   DM4.Qr_IncDar.ParambyName('CRNUMERO').AsFloat    := DM1.Tb_Ped01P1NUMCF.Value;
   DM4.Qr_IncDar.ParambyName('CRDESD').AsString     := chr(65+mlidos);
   if DM1.Tb_Ped01P1TIPO.Value=8 then
      DM4.Qr_IncDar.ParambyName('CRDUP').AsFloat    := 5
   else
      DM4.Qr_IncDar.ParambyName('CRDUP').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCODCLI').AsFloat    := DM1.Tb_Ped01P1CODCLI.Value;
   DM4.Qr_IncDar.ParambyName('CRNUMCUP').AsFloat    := DM1.Tb_Ped01P1NUMCF.Value;
   DM4.Qr_IncDar.ParambyName('CRDATCUP').AsDateTime := DM1.Tb_Ped01P1DATACF.Value;
   DM4.Qr_IncDar.ParambyName('CRVALOR').AsFloat     := DM1.Tb_Ped01VP1VVALOR.Value;
   DM4.Qr_IncDar.ParambyName('CRTOTNF').AsFloat     := DM1.Tb_Ped01VP1VVALOR.Value;
   DM4.Qr_IncDar.ParambyName('CRTARBAN').AsFloat     :=DM1.Tb_Ped01VP1VTARBAN.Value;
   DM4.Qr_IncDar.ParambyName('CRDTEMIS').AsDate     := DM1.Tb_Ped01P1DATDOC.AsDateTime;
   DM4.Qr_IncDar.ParambyName('CRDTVCTO').AsDate     := DM1.Tb_Ped01VP1VDATAV.Value;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CP').AsFloat := DM1.Tb_Ped01P1LOTSEQ.Value;
   DM4.Qr_IncDar.ParambyName('CRNPED').AsFloat      := DM1.Tb_Ped01P1CHAVE.Value;
   DM4.Qr_IncDar.ParambyName('CRNPED_NIVEL').AsFloat:= DM1.Tb_Ped01P1CHAVE_NIVEL.Value;

   DM4.Qr_IncDar.ParambyName('CRORDEM').AsFloat     := DM1.Tb_Ped01P1ORDEM.Value;
   DM4.Qr_IncDar.ParambyName('CRQTDPARC').AsFloat   := mqtddup;
   DM4.Qr_IncDar.ParambyName('CRNUMPARC').AsFloat   := mlidos;
   DM4.Qr_IncDar.ParambyName('CRCODVEN').AsFloat    := DM1.Tb_Ped01P1CODVEN.Value;
   DM4.Qr_IncDar.ParambyName('CRCODTLV').AsFloat    := DM1.Tb_Ped01P1CODTLV.Value;
   DM4.Qr_IncDar.ParambyName('CROBS').AsString      := ' ';
   DM4.Qr_IncDar.ParambyName('CRDEVOL').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRICMSR').AsFloat     := DM1.Tb_Ped01VP1VICMSR.Value;
   DM4.Qr_IncDar.ParambyName('CRDESCF').AsFloat     := DM1.Tb_Ped01VP1VDESCF.Value;
   DM4.Qr_IncDar.ParambyName('CRDTDESCF').AsDateTime:= DM1.Tb_Ped01VP1VDTDESCF.Value;
   DM4.Qr_IncDar.ParambyName('CRJURD').AsFloat      := arredonda(((DM1.Tb_DarCRVALOR.Value*DM4.Tb_Par01PJURM.Value/100)/30),2);
   DM4.Qr_IncDar.ParambyName('CRDESCD').AsFloat     := arredonda(((DM1.Tb_DarCRVALOR.Value*DM4.Tb_Par01PDESCM.Value/100)/30),2);
   DM4.Qr_IncDar.ParambyName('CRMULTA').AsFloat     := arredonda((DM1.Tb_DarCRVALOR.Value*DM4.Tb_Par01PMULTA.Value/100),2);
   DM4.Qr_IncDar.ParambyName('CRQTDDM').AsFloat     := DM4.Tb_Par01PQTDDM.Value;
   DM4.Qr_IncDar.ParambyName('CREMIDUP').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CREMIBLQ').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRVALFRE').AsFloat    := DM1.Tb_Ped01VP1VFRETE.Value;
   DM4.Qr_IncDar.ParambyName('CRNOSNUM').AsString   := ' ';
   DM4.Qr_IncDar.ParambyName('CRDNOSNUM').AsString  := ' ';
   DM4.Qr_IncDar.ParambyName('CRNFACUM').AsString   := DM1.Tb_Ped01P1NUMCF.AsString;
   DM4.Qr_IncDar.ParambyName('CRTIPCOB').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRDTALT').AsDateTime  := pdatanula;
   DM4.Qr_IncDar.ParambyName('CRUSRALT').AsFloat    := 0;
   DM4.Qr_IncDar.ParambyName('CRCOMVEN').AsFloat    := DM1.Tb_Ped01VP1VCOMISV.Value;
   DM4.Qr_IncDar.ParambyName('CRCOMV02').AsFloat    := DM1.Tb_Ped01VP1VCOM02.Value;
   DM4.Qr_IncDar.ParambyName('CRCOMV03').AsFloat    := DM1.Tb_Ped01VP1VCOM03.Value;
   DM4.Qr_IncDar.ParambyName('CRCOMTEL').AsFloat    := DM1.Tb_Ped01VP1VCOMIST.Value;
   DM4.Qr_IncDar.ParambyName('CRCOMSUP').AsFloat    := DM1.Tb_Ped01VP1VCOMISS.Value;
   DM4.Qr_IncDar.ParambyName('CRSEMCOM').AsFloat    := DM1.Tb_Ped01VP1VSEMCOM.Value;
   DM4.Qr_IncDar.ParambyName('CRTOTDI01').AsFloat   := DM1.Tb_Ped01VP1VTOTDI01.Value;
   DM4.Qr_IncDar.ParambyName('CRTOTDI02').AsFloat   := DM1.Tb_Ped01VP1VTOTDI02.Value;
   DM4.Qr_IncDar.ParambyName('CRTOTDI03').AsFloat   := DM1.Tb_Ped01VP1VTOTDI03.Value;
   DM4.Qr_IncDar.ParambyName('CRTOTDIVL').AsFloat   := DM1.Tb_Ped01VP1VTOTDIVL.Value;
   DM4.Qr_IncDar.ParambyName('CRVALDES01').AsFloat  := DM1.Tb_Ped01VP1VVALDES01.Value;
   DM4.Qr_IncDar.ParambyName('CRVALDES02').AsFloat    := DM1.Tb_Ped01VP1VVALDES02.Value;
   DM4.Qr_IncDar.ParambyName('CRVLRDES').AsFloat      := DM1.Tb_Ped01VP1VVLRDES.Value;
   DM4.Qr_IncDar.ParambyName('CRCODASSE').AsFloat     := DM1.Tb_Ped01P1CODASSE.Value;
   DM4.Qr_IncDar.ParambyName('CRCOMASSE').AsFloat     := DM1.Tb_Ped01VP1VCOMASSE.Value;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CASSE').AsFloat:=0;
   DM4.Qr_IncDar.ParambyName('CRLOTCASSE').AsFloat    :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV02').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV03').AsFloat   := 0;
   DM4.Qr_IncDar.ParambyName('CRLOTCS').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRCODORI').AsFloat    := DM1.Tb_Ped01P1TIPO.Value;
   DM4.Qr_IncDar.ParambyName('CRLOTCT').AsFloat     := 0;
   DM4.Qr_IncDar.ParambyName('CRCODUSR').AsFloat    := codusr;
   DM4.Qr_IncDar.ParambyName('CRHRALT').AsString    := ' ';
   DM4.Qr_IncDar.ParambyName('CRCODV02').AsFloat    := DM1.Tb_Ped01P1CODV02.Value;
   DM4.Qr_IncDar.ParambyName('CRCODV03').AsFloat    := DM1.Tb_Ped01P1CODV03.Value;
   DM4.Qr_IncDar.ParambyName('CRCODCV').AsFloat     := DM1.Tb_Ped01P1CODCV.Value;
   DM4.Qr_IncDar.ParambyName('CRCODLDR').AsFloat    := mcodldr;
   DM4.Qr_IncDar.ParambyName('CRCHD_BANCO').AsFloat   :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_AGENCIA').AsFloat :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_CC').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_NUMERO').AsFloat  :=0;
   DM4.Qr_IncDar.ParambyName('CRCODBCO').AsFloat    := DM1.Tb_Ped01P1BANCO.Value;
   if DM1.Tb_Ped01P1BANCO.AsInteger>0 then
      DM4.Qr_IncDar.ParambyName('CRTCB').AsFloat      :=1
   else
      DM4.Qr_IncDar.ParambyName('CRTCB').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCAUCAO').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRBCOCAU').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRDTCAU').AsFloat       :=0;
   DM4.Qr_IncDar.ParambyName('CRSPC_DTPEN').AsFloat   :=0;
   DM4.Qr_IncDar.ParambyName('CRSPC_DTNEG').AsFloat   :=0;
   DM4.Qr_IncDar.ParambyName('CRSERASA_DTNEG').AsFloat:=0;
   DM4.Qr_IncDar.ParambyName('CRCODDIG').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRACEITE').AsString     := 'N';
   DM4.Qr_IncDar.ParambyName('CRESPECIE').AsString    := 'DM';
   DM4.Qr_IncDar.ParambyName('CRLEMAT').AsFloat       := 0;
   DM4.Qr_IncDar.ParambyName('CRTBCOCOB').AsFloat    :=0;
   DM4.Qr_IncDar.ParambyName('CREMIBOR').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRINST01').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRINST02').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRINST03').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRINST04').AsString     := ' ';
   DM4.Qr_IncDar.ParambyName('CRVALSEG').AsFloat      :=DM1.Tb_Ped01VP1VSEG.Value;
   DM4.Qr_IncDar.ParambyName('CRCODBAR').AsString     := ' ';

   DM4.Qr_IncDar.ParambyName('CRCHD_BANCO').AsFloat   :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_AGENCIA').AsFloat :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_CC').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_NUMERO').AsFloat  :=0;
   if DM1.Tb_Ped01P1BANCO.AsInteger>0 then
      DM4.Qr_AltDar.ParambyName('CRTCB').AsFloat      :=1
   else
      DM4.Qr_AltDar.ParambyName('CRTCB').AsFloat      :=0;

   DM4.Qr_IncDar.ParambyName('CRCAUCAO').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRBCOCAU').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRDTCAU').AsDateTime    :=pdatanula;
   DM4.Qr_IncDar.ParambyName('CRSPC_DTPEN').AsDateTime:=pdatanula;;
   DM4.Qr_IncDar.ParambyName('CRSPC_DTNEG').AsDateTime:=pdatanula;;
   DM4.Qr_IncDar.ParambyName('CRSERASA_DTNEG').AsDateTime:=pdatanula;;
   DM4.Qr_IncDar.ParambyName('CRNR').AsFloat          :=0;
   DM4.Qr_IncDar.ParambyName('CRCODV04').AsFloat      :=DM1.Tb_Ped01P1CODV04.Value;
   DM4.Qr_IncDar.ParambyName('CRCOMV04').AsFloat      :=DM1.Tb_Ped01VP1VCOM04.Value;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_CV04').AsFloat :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTCV04').AsFloat     :=0;
   DM4.Qr_IncDar.ParambyName('CRTOTIPI').AsFloat      :=DM1.Tb_Ped01VP1VTOTIPI.Value;
   DM4.Qr_IncDar.ParambyName('CRTOTCGRU').AsFloat     :=DM1.Tb_Ped01VP1VTOTCGRU.Value;
   DM4.Qr_IncDar.ParambyName('CRTOTSGRU').AsFloat     :=DM1.Tb_Ped01VP1VTOTSGRU.Value;
   DM4.Qr_IncDar.ParambyName('CRCODCC').AsString    := mcodccu;
   DM4.Qr_IncDar.ParambyName('CRCODDEP').AsString   := mcoddep;
   DM4.Qr_IncDar.ParambyName('CRDESCMV').AsString   := mdesc_mov;
   DM4.Qr_IncDar.ParambyName('CRNOMCC').AsString    := mnomccu;
   DM4.Qr_IncDar.ParambyName('CRNOMDEP').AsString   := mnomdep;
   DM4.Qr_IncDar.ParambyName('CRNOMCTA').AsString   := pldr_nombco;
   DM4.Qr_IncDar.ParambyName('CRCODCTA').AsInteger  := codcai;
   DM4.Qr_IncDar.ParambyName('CRNATDC').AsString    := mnatdc;
   DM4.Qr_IncDar.ParambyName('CRCUSBCO').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCOMIS_EXTRA').AsFloat :=DM1.Tb_Ped01VP1VCOMISV_EXTRA.Value;

   if ptipo=0 then
      begin
      DM4.Qr_IncDar.ParambyName('CRDTPAG').AsDateTime    := pdatasis;
      DM4.Qr_IncDar.ParambyName('CRDTBX').AsDateTime     := pdatasis;
      DM4.Qr_IncDar.ParambyName('CRLOTE').AsFloat        := mloteb;
      DM4.Qr_IncDar.ParambyName('CRJUROS').AsFloat       := macre+mdifacre;
      DM4.Qr_IncDar.ParambyName('CRDESC').AsFloat        := mdesc+mdifdesc;
      DM4.Qr_IncDar.ParambyName('CRVALPAG').AsFloat      := DM1.Tb_Ped01VP1VVALOR.Value-(mdesc+mdifdesc);
      DM4.Qr_IncDar.ParambyName('CRSTATUS').AsFloat      := 2;
      DM4.Qr_IncDar.ParambyName('CRUSRBX').AsFloat       := 0;
      end
   else
      begin
      DM4.Qr_IncDar.ParambyName('CRDTPAG').AsDateTime    := pdatanula;
      DM4.Qr_IncDar.ParambyName('CRDTBX').AsDateTime     := pdatanula;
      DM4.Qr_IncDar.ParambyName('CRLOTE').AsFloat        := 0;
      DM4.Qr_IncDar.ParambyName('CRJUROS').AsFloat       := 0;
      DM4.Qr_IncDar.ParambyName('CRDESC').AsFloat        := 0;
      DM4.Qr_IncDar.ParambyName('CRVALPAG').AsFloat      := 0;
      DM4.Qr_IncDar.ParambyName('CRSTATUS').AsFloat      := 0;
      DM4.Qr_IncDar.ParambyName('CRUSRBX').AsFloat       := 0;
      end;
   DM4.Qr_IncDar.ParambyName('CRSEQ').AsFloat         :=0;
   DM4.Qr_IncDar.ParambyName('CRPFPGTO').AsFloat      :=DM1.Tb_Ped01VP1VPFPGTO.Value;
   DM4.Qr_IncDar.ParambyName('CRTABPV').AsString      :=DM1.Tb_Ped01VP1VTABPV.Value;
   DM4.Qr_IncDar.ParambyName('CRCODPV').AsFloat       :=DM1.Tb_Ped01VP1VCODIGO.Value;
   DM4.Qr_IncDar.ParambyName('CRVINC02').AsFloat      :=DM1.Tb_Ped01VP1VVINC02.Value;
   DM4.Qr_IncDar.ParambyName('CRCODFPGTO').AsFloat    :=DM1.Tb_Ped01VP1VCODFP.Value;
   DM4.Qr_IncDar.ParambyName('CRNOMFPGTO').AsString   :=DM1.Tb_Ped01VP1VNOMFPGTO.Value;
   DM4.Qr_IncDar.ParambyName('CRFIN_CODFIN').AsFLoat   :=0;
   DM4.Qr_IncDar.ParambyName('CRLANCFIN').AsFLoat      :=0;
   DM4.Qr_IncDar.ParambyName('CRRECFRENTE').AsFLoat    :=0;
   DM4.Qr_IncDar.ParambyName('CRDATPED').AsDateTime    :=DM1.Tb_Ped01P1DATAP.AsDateTime;
   DM4.Qr_IncDar.ParambyName('CRCX_CODCAI').AsFloat    :=codcai;
   DM4.Qr_IncDar.ParambyName('CRCX_LOTMOV').AsFloat    :=lotmov;
   DM4.Qr_IncDar.ParambyName('CRCODCAR').AsFloat       :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTSEQ_EC').AsFloat    :=0;
   DM4.Qr_IncDar.ParambyName('CRLOTE_EC').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRTITPROT').AsFloat      :=0;
   DM4.Qr_IncDar.ParambyName('CRCHD_EMITENTE').AsString:='';

   Try

      DM4.Qr_IncDar.ExecSQL;
      fdm1StartCommit;
   except
      DM4.Qr_AltDar.Close;
      DM4.Qr_AltDar.ParambyName('CRCODEMP').AsFloat    := codemp;
      DM4.Qr_AltDar.ParambyName('CRCODECF').AsFloat    := codecf;
      DM4.Qr_AltDar.ParambyName('CRNUMERO').AsFloat    := DM1.Tb_Ped01P1NUMCF.Value;
      DM4.Qr_AltDar.ParambyName('CRDESD').AsString     := chr(65+mlidos);
      if DM1.Tb_Ped01P1TIPO.Value=8 then
         DM4.Qr_AltDar.ParambyName('CRDUP').AsFloat    := 5
      else
         DM4.Qr_AltDar.ParambyName('CRDUP').AsFloat    := 0;
      DM4.Qr_AltDar.ParambyName('CRCODCLI').AsFloat    := DM1.Tb_Ped01P1CODCLI.Value;
      DM4.Qr_AltDar.ParambyName('CRNUMCUP').AsFloat    := DM1.Tb_Ped01P1NUMCF.Value;
      DM4.Qr_AltDar.ParambyName('CRDATCUP').AsDateTime := DM1.Tb_Ped01P1DATACF.Value;
      DM4.Qr_AltDar.ParambyName('CRVALOR').AsFloat     := DM1.Tb_Ped01VP1VVALOR.Value;
      DM4.Qr_AltDar.ParambyName('CRTOTNF').AsFloat     := DM1.Tb_Ped01VP1VVALOR.Value;
      DM4.Qr_AltDar.ParambyName('CRTARBAN').AsFloat     :=DM1.Tb_Ped01VP1VTARBAN.Value;
      DM4.Qr_AltDar.ParambyName('CRDTEMIS').AsDate     := DM1.Tb_Ped01P1DATDOC.AsDateTime;
      DM4.Qr_AltDar.ParambyName('CRDTVCTO').AsDateTime := DM1.Tb_Ped01VP1VDATAV.Value;
      DM4.Qr_AltDar.ParambyName('CRLOTSEQ_CP').AsFloat := DM1.Tb_Ped01P1LOTSEQ.Value;
      DM4.Qr_AltDar.ParambyName('CRNPED').AsFloat      := DM1.Tb_Ped01P1CHAVE.Value;
      DM4.Qr_AltDar.ParambyName('CRNPED_NIVEL').AsFloat:= DM1.Tb_Ped01P1CHAVE_NIVEL.Value;
      DM4.Qr_AltDar.ParambyName('CRORDEM').AsFloat     := DM1.Tb_Ped01P1ORDEM.Value;
      DM4.Qr_AltDar.ParambyName('CRQTDPARC').AsFloat   := mqtddup;
      DM4.Qr_AltDar.ParambyName('CRNUMPARC').AsFloat   := mlidos;
      DM4.Qr_AltDar.ParambyName('CRCODVEN').AsFloat    := DM1.Tb_Ped01P1CODVEN.Value;
      DM4.Qr_AltDar.ParambyName('CRCODTLV').AsFloat    := DM1.Tb_Ped01P1CODTLV.Value;
      DM4.Qr_AltDar.ParambyName('CROBS').AsString      := ' ';
      DM4.Qr_AltDar.ParambyName('CRDEVOL').AsFloat     := 0;
      DM4.Qr_AltDar.ParambyName('CRICMSR').AsFloat     := DM1.Tb_Ped01VP1VICMSR.Value;
      DM4.Qr_AltDar.ParambyName('CRDESCF').AsFloat     := DM1.Tb_Ped01VP1VDESCF.Value;
      DM4.Qr_AltDar.ParambyName('CRDTDESCF').AsDateTime:= DM1.Tb_Ped01VP1VDTDESCF.Value;
      DM4.Qr_AltDar.ParambyName('CRJURD').AsFloat      := arredonda(((DM1.Tb_DarCRVALOR.Value*DM4.Tb_Par01PJURM.Value/100)/30),2);
      DM4.Qr_AltDar.ParambyName('CRDESCD').AsFloat     := arredonda(((DM1.Tb_DarCRVALOR.Value*DM4.Tb_Par01PDESCM.Value/100)/30),2);
      DM4.Qr_AltDar.ParambyName('CRMULTA').AsFloat     := arredonda((DM1.Tb_DarCRVALOR.Value*DM4.Tb_Par01PMULTA.Value/100),2);
      DM4.Qr_AltDar.ParambyName('CRQTDDM').AsFloat     := DM4.Tb_Par01PQTDDM.Value;
      DM4.Qr_AltDar.ParambyName('CREMIDUP').AsFloat    := 0;
      DM4.Qr_AltDar.ParambyName('CREMIBLQ').AsFloat    := 0;
      DM4.Qr_AltDar.ParambyName('CRVALFRE').AsFloat    := DM1.Tb_Ped01VP1VFRETE.Value;
      DM4.Qr_AltDar.ParambyName('CRNOSNUM').AsString   := ' ';
      DM4.Qr_AltDar.ParambyName('CRDNOSNUM').AsString  := ' ';
      DM4.Qr_AltDar.ParambyName('CRNFACUM').AsString   := DM1.Tb_Ped01P1NUMCF.AsString;
      DM4.Qr_AltDar.ParambyName('CRTIPCOB').AsFloat    := 0;
      DM4.Qr_AltDar.ParambyName('CRDTALT').AsDateTime  := pdatanula;
      DM4.Qr_AltDar.ParambyName('CRUSRALT').AsFloat    := 0;
      DM4.Qr_AltDar.ParambyName('CRCOMVEN').AsFloat    := DM1.Tb_Ped01VP1VCOMISV.Value;
      DM4.Qr_AltDar.ParambyName('CRCOMV02').AsFloat    := DM1.Tb_Ped01VP1VCOM02.Value;
      DM4.Qr_AltDar.ParambyName('CRCOMV03').AsFloat    := DM1.Tb_Ped01VP1VCOM03.Value;
      DM4.Qr_AltDar.ParambyName('CRCOMTEL').AsFloat    := DM1.Tb_Ped01VP1VCOMIST.Value;
      DM4.Qr_AltDar.ParambyName('CRCOMSUP').AsFloat    := DM1.Tb_Ped01VP1VCOMISS.Value;
      DM4.Qr_AltDar.ParambyName('CRSEMCOM').AsFloat    := DM1.Tb_Ped01VP1VSEMCOM.Value;
      DM4.Qr_AltDar.ParambyName('CRTOTDI01').AsFloat   := DM1.Tb_Ped01VP1VTOTDI01.Value;
      DM4.Qr_AltDar.ParambyName('CRTOTDI02').AsFloat   := DM1.Tb_Ped01VP1VTOTDI02.Value;
      DM4.Qr_AltDar.ParambyName('CRTOTDI03').AsFloat   := DM1.Tb_Ped01VP1VTOTDI03.Value;
      DM4.Qr_AltDar.ParambyName('CRTOTDIVL').AsFloat   := DM1.Tb_Ped01VP1VTOTDIVL.Value;
      DM4.Qr_AltDar.ParambyName('CRVALDES01').AsFloat  := DM1.Tb_Ped01VP1VVALDES01.Value;
      DM4.Qr_AltDar.ParambyName('CRVALDES02').AsFloat  := DM1.Tb_Ped01VP1VVALDES02.Value;
      DM4.Qr_AltDar.ParambyName('CRVLRDES').AsFloat    := DM1.Tb_Ped01VP1VVLRDES.Value;
      DM4.Qr_AltDar.ParambyName('CRCODASSE').AsFloat     := DM1.Tb_Ped01P1CODASSE.Value;
      DM4.Qr_AltDar.ParambyName('CRCOMASSE').AsFloat     := DM1.Tb_Ped01VP1VCOMASSE.Value;
      DM4.Qr_AltDar.ParambyName('CRLOTSEQ_CASSE').AsFloat:=0;
      DM4.Qr_AltDar.ParambyName('CRLOTCASSE').AsFloat    :=0;
      DM4.Qr_AltDar.ParambyName('CRCODLDR').AsFloat    := mcodldr;
      DM4.Qr_AltDar.ParambyName('CRLOTCV').AsFloat     := 0;
      DM4.Qr_AltDar.ParambyName('CRLOTCV02').AsFloat   := 0;
      DM4.Qr_AltDar.ParambyName('CRLOTCV03').AsFloat   := 0;
      DM4.Qr_AltDar.ParambyName('CRLOTCS').AsFloat     := 0;
      DM4.Qr_AltDar.ParambyName('CRCODORI').AsFloat    := DM1.Tb_Ped01P1TIPO.Value;
      DM4.Qr_AltDar.ParambyName('CRLOTCT').AsFloat     := 0;
      DM4.Qr_AltDar.ParambyName('CRCODUSR').AsFloat    := codusr;
      DM4.Qr_AltDar.ParambyName('CRHRALT').AsString    := ' ';
      DM4.Qr_AltDar.ParambyName('CRCODV02').AsFloat    := DM1.Tb_Ped01P1CODV02.Value;
      DM4.Qr_AltDar.ParambyName('CRCODV03').AsFloat    := DM1.Tb_Ped01P1CODV03.Value;
      DM4.Qr_AltDar.ParambyName('CRCODCV').AsFloat     := DM1.Tb_Ped01P1CODCV.Value;
      DM4.Qr_AltDar.ParambyName('CRLEMAT').AsFloat     := 0;
      DM4.Qr_AltDar.ParambyName('CRINST01').AsString     := ' ';
      DM4.Qr_AltDar.ParambyName('CRINST02').AsString     := ' ';
      DM4.Qr_AltDar.ParambyName('CRINST03').AsString     := ' ';
      DM4.Qr_AltDar.ParambyName('CRINST04').AsString     := ' ';
      DM4.Qr_AltDar.ParambyName('CRCODBAR').AsString     := ' ';
      DM4.Qr_AltDar.ParambyName('CRCODDIG').AsString     := ' ';
      DM4.Qr_AltDar.ParambyName('CRACEITE').AsString     := 'N';
      DM4.Qr_AltDar.ParambyName('CRESPECIE').AsString    := 'DM';
      DM4.Qr_AltDar.ParambyName('CRVALSEG').AsFloat      :=DM1.Tb_Ped01VP1VSEG.Value;
      DM4.Qr_AltDar.ParambyName('CRTBCOCOB').AsFloat     :=0;
      DM4.Qr_AltDar.ParambyName('CREMIBOR').AsFloat      :=0;
      DM4.Qr_AltDar.ParambyName('CRCHD_BANCO').AsFloat   :=0;
      DM4.Qr_AltDar.ParambyName('CRCHD_AGENCIA').AsFloat :=0;
      DM4.Qr_AltDar.ParambyName('CRCHD_CC').AsFloat      :=0;
      DM4.Qr_AltDar.ParambyName('CRCHD_NUMERO').AsFloat  :=0;
      DM4.Qr_AltDar.ParambyName('CRCODBCO').AsFloat    := DM1.Tb_Ped01P1BANCO.Value;
      if DM1.Tb_Ped01P1BANCO.AsInteger>0 then
         DM4.Qr_AltDar.ParambyName('CRTCB').AsFloat         :=1
      else
         DM4.Qr_AltDar.ParambyName('CRTCB').AsFloat         :=0;
      DM4.Qr_AltDar.ParambyName('CRCAUCAO').AsFloat      :=0;
      DM4.Qr_AltDar.ParambyName('CRBCOCAU').AsFloat         :=0;
      DM4.Qr_AltDar.ParambyName('CRDTCAU').AsDateTime       :=pdatanula;
      DM4.Qr_AltDar.ParambyName('CRSPC_DTPEN').AsDateTime   :=pdatanula;
      DM4.Qr_AltDar.ParambyName('CRSPC_DTNEG').AsDateTime   :=pdatanula;
      DM4.Qr_AltDar.ParambyName('CRSERASA_DTNEG').AsDateTime:=pdatanula;
      DM4.Qr_AltDar.ParambyName('CRNR').AsFloat             :=0;

      DM4.Qr_AltDar.ParambyName('CRCODV04').AsFloat      :=DM1.Tb_Ped01P1CODV04.Value;
      DM4.Qr_AltDar.ParambyName('CRCOMV04').AsFloat      :=DM1.Tb_Ped01VP1VCOM04.Value;
      DM4.Qr_AltDar.ParambyName('CRLOTSEQ_CV04').AsFloat :=0;
      DM4.Qr_AltDar.ParambyName('CRLOTCV04').AsFloat     :=0;
      DM4.Qr_AltDar.ParambyName('CRTOTIPI').AsFloat      :=DM1.Tb_Ped01VP1VTOTIPI.Value;
      DM4.Qr_AltDar.ParambyName('CRTOTCGRU').AsFloat     :=DM1.Tb_Ped01VP1VTOTCGRU.Value;
      DM4.Qr_AltDar.ParambyName('CRTOTSGRU').AsFloat     :=DM1.Tb_Ped01VP1VTOTSGRU.Value;

      DM4.Qr_AltDar.ParambyName('CRCODCC').AsString    := mcodccu;
      DM4.Qr_AltDar.ParambyName('CRCODDEP').AsString   := mcoddep;
      DM4.Qr_AltDar.ParambyName('CRDESCMV').AsString   := mdesc_mov;
      DM4.Qr_AltDar.ParambyName('CRNOMCC').AsString    := mnomccu;
      DM4.Qr_AltDar.ParambyName('CRNOMDEP').AsString   := mnomdep;
      DM4.Qr_AltDar.ParambyName('CRNOMCTA').AsString   := pldr_nombco;
      DM4.Qr_AltDar.ParambyName('CRCODCTA').AsInteger  := codcai;
      DM4.Qr_AltDar.ParambyName('CRNATDC').AsString    := mnatdc;
      DM4.Qr_AltDar.ParambyName('CRCUSBCO').AsFloat    :=0;
      DM4.Qr_AltDar.ParambyName('CRCOMIS_EXTRA').AsFloat :=DM1.Tb_Ped01VP1VCOMISV_EXTRA.Value;
      if ptipo=0 then
         begin
         DM4.Qr_AltDar.ParambyName('CRDTPAG').AsDateTime  := pdatasis;
         DM4.Qr_AltDar.ParambyName('CRDTBX').AsDateTime   := pdatasis;
         DM4.Qr_AltDar.ParambyName('CRSTATUS').AsFloat    := 2;
         DM4.Qr_AltDar.ParambyName('CRUSRBX').AsFloat     := codusr;
         DM4.Qr_AltDar.ParambyName('CRLOTE').AsFloat      := mloteb;
         DM4.Qr_AltDar.ParambyName('CRJUROS').AsFloat     := macre+mdifacre;
         DM4.Qr_AltDar.ParambyName('CRDESC').AsFloat      := mdesc+mdifdesc;
         DM4.Qr_AltDar.ParambyName('CRVALPAG').AsFloat    := DM1.Tb_Ped01VP1VVALOR.Value-(mdesc+mdifdesc);
         end
      else
         begin
         DM4.Qr_AltDar.ParambyName('CRDTPAG').AsDateTime  := pdatanula;
         DM4.Qr_AltDar.ParambyName('CRDTBX').AsDateTime   := pdatanula;
         DM4.Qr_AltDar.ParambyName('CRSTATUS').AsFloat    := 0;
         DM4.Qr_AltDar.ParambyName('CRUSRBX').AsFloat     := 0;
         DM4.Qr_AltDar.ParambyName('CRLOTE').AsFloat      := 0;
         DM4.Qr_AltDar.ParambyName('CRJUROS').AsFloat     := 0;
         DM4.Qr_AltDar.ParambyName('CRDESC').AsFloat      := 0;
         DM4.Qr_AltDar.ParambyName('CRVALPAG').AsFloat    := 0;

         end;
      DM4.Qr_AltDar.ParambyName('CRSEQ').AsFloat         :=0;
      DM4.Qr_AltDar.ParambyName('CRPFPGTO').AsFloat      :=DM1.Tb_Ped01VP1VPFPGTO.Value;
      DM4.Qr_AltDar.ParambyName('CRTABPV').AsString      :=DM1.Tb_Ped01VP1VTABPV.Value;
      DM4.Qr_AltDar.ParambyName('CRCODPV').AsFloat       :=DM1.Tb_Ped01VP1VCODIGO.Value;
      DM4.Qr_AltDar.ParambyName('CRVINC02').AsFloat      :=DM1.Tb_Ped01VP1VVINC02.Value;
      DM4.Qr_AltDar.ParambyName('CRCODFPGTO').AsFloat    :=DM1.Tb_Ped01VP1VCODFP.Value;
      DM4.Qr_AltDar.ParambyName('CRNOMFPGTO').AsString   :=DM1.Tb_Ped01VP1VNOMFPGTO.Value;
      DM4.Qr_AltDar.ParambyName('CRFIN_CODFIN').AsFLoat   :=0;
      DM4.Qr_AltDar.ParambyName('CRLANCFIN').AsFLoat      :=0;
      DM4.Qr_AltDar.ParambyName('CRRECFRENTE').AsFLoat    :=0;
      DM4.Qr_AltDar.ParambyName('CRDATPED').AsDateTime    :=DM1.Tb_Ped01P1DATAP.AsDateTime;
      DM4.Qr_AltDar.ParambyName('CRCX_CODCAI').AsFloat    :=codcai;
      DM4.Qr_AltDar.ParambyName('CRCX_LOTMOV').AsFloat    :=lotmov;
      DM4.Qr_AltDar.ParambyName('CRCODCAR').AsFloat       :=0;
      DM4.Qr_AltDar.ParambyName('CRLOTSEQ_EC').AsFloat    :=0;
      DM4.Qr_AltDar.ParambyName('CRLOTE_EC').AsFloat      :=0;
      DM4.Qr_AltDar.ParambyName('CRTITPROT').AsFloat      :=0;
      DM4.Qr_AltDar.ParambyName('CRCHD_EMITENTE').AsString:='';

      Try
         DM4.Qr_AltDar.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(09,1165,'Frm_Fpgto','CADDAR');
         end;
      end;
   mlidos:=mlidos+1;
   mdifdesc:=0;
   mdifacre:=0;
   DM1.Tb_Ped01V.Next;
   end;
result:=True;
end;


procedure TFrm_Fpgto.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_Cli',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Fpgto.CODCLIExit(Sender: TObject);
begin
if not flcadcli(1,0,Trim(CODCLI.Text)) then
   begin
   MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
   CODCLI.SetFocus;
   end
else
   begin
   ffpgtoCarregaCli(0);
   end;
end;

function ffpgtoCarregaCli(ptipo: Integer): Boolean;
begin

Frm_Fpgto.CODCLI.Text  :=DM1.Tb_CliCCODCLI.AsString;
Frm_Fpgto.RAZSOC.Text  :=DM1.Tb_CliCRAZAO.Value;
Frm_Fpgto.FANTASIA.Text:=DM1.Tb_CliCDENOM.Value;
Frm_Fpgto.ENDERECO.Text:=DM1.Tb_CliCLOG.Value;
Frm_Fpgto.BAIRRO.Text  :=DM1.Tb_CliCBAIRRO.Value;
Frm_Fpgto.CIDADE.Text  :=DM1.Tb_CliCCIDADE.Value;
Frm_Fpgto.UF.Text      :=DM1.Tb_CliCUF.Value;
Frm_Fpgto.CEP.Text     :=DM1.Tb_CliCCEP.Value;
Frm_Fpgto.FONE.Text    :=DM1.Tb_CliCFONERES.Value;
if DM1.Tb_CliCCNPJ.Value=0 then
   begin
   Frm_Fpgto.lbl_fantasia.Visible   :=False;
   Frm_Fpgto.FANTASIA.Visible       :=False;
   Frm_Fpgto.lbl_cnpj.Caption       :='CNPF.:';
   Frm_Fpgto.lbl_ie.Caption         :='Identidade.:';
   Frm_Fpgto.RG_TPPESSOA.ItemIndex  :=0;
   Frm_Fpgto.CNPJ.Text              :=FormatFloat('000"."000"."000-00', DM1.Tb_CliCCPF.Value);
   Frm_Fpgto.IE.Text                :=DM1.Tb_CliCRG.Value;
   end
else
   begin
   Frm_Fpgto.RG_TPPESSOA.ItemIndex:=1;
   Frm_Fpgto.CNPJ.Text            :=FormatFloat('00"."000"."000"."0000-00"', DM1.Tb_CliCCNPJ.Value);
   Frm_Fpgto.IE.Text              :=DM1.Tb_CliCIE.Value;
   Frm_Fpgto.lbl_fantasia.Visible :=true;
   Frm_Fpgto.FANTASIA.Visible     :=true;
   Frm_Fpgto.lbl_cnpj.Caption     :='CNPJ.:';
   Frm_Fpgto.lbl_ie.Caption       :='IE..:';
   end;
if DM1.Tb_CliCCODCLI.Value<3 then
   begin
   Frm_Fpgto.RAZSOC.Enabled  :=True;
   Frm_Fpgto.FANTASIA.Enabled:=True;
   Frm_Fpgto.ENDERECO.Enabled:=True;
   Frm_Fpgto.BAIRRO.Enabled  :=True;
   Frm_Fpgto.CIDADE.Enabled  :=True;
   Frm_Fpgto.UF.Enabled      :=True;
   Frm_Fpgto.CEP.Enabled     :=True;
   Frm_Fpgto.FONE.Enabled    :=True;
   Frm_Fpgto.CNPJ.Enabled    :=True;
   Frm_Fpgto.IE.Enabled      :=True;
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CFCHAVEP=0'+FloatToStr(mchaveped));
   DM1.Tb_CSF.Open;
   if not DM1.Tb_CSF.Eof then
      begin
      Frm_Fpgto.RAZSOC.Text     :=DM1.Tb_CSFCFRAZAO.Value;
      Frm_Fpgto.FANTASIA.Text   :=DM1.Tb_CSFCFDENOM.Value;
      Frm_Fpgto.ENDERECO.Text   :=DM1.Tb_CSFCFENDER.Value;
      Frm_Fpgto.BAIRRO.Text     :=DM1.Tb_CSFCFBAIRRO.Value;
      Frm_Fpgto.CIDADE.Text     :=DM1.Tb_CSFCFCIDADE.Value;
      Frm_Fpgto.UF.Text         :=DM1.Tb_CSFCFUF.Value;
      Frm_Fpgto.CEP.Text        :=DM1.Tb_CSFCFCEP.Value;
      Frm_Fpgto.FONE.Text       :=DM1.Tb_CSFCFFONE.Value;
      Frm_Fpgto.IE.Text         :=DM1.Tb_CSFCFIE.Value;
      if DM1.Tb_CSFCFTIPOC.Value=1 then
         begin
         Frm_Fpgto.CNPJ.Text    :=FormatFloat('00"."000"."000"."0000-00"', DM1.Tb_CSFCFCGC.Value);
         Frm_Fpgto.lbl_cnpj.Caption       :='CNPJ..:';
         Frm_Fpgto.lbl_ie.Caption         :='IE.:';
         Frm_Fpgto.FANTASIA.Visible       :=true;
         Frm_Fpgto.lbl_fantasia.Visible   :=true;
         end
      else
         begin
         Frm_Fpgto.CNPJ.Text    :=FormatFloat('000"."000"."000-00"', DM1.Tb_CSFCFCGC.Value);
         Frm_Fpgto.lbl_cnpj.Caption       :='CNPF.:';
         Frm_Fpgto.lbl_ie.Caption         :='Identidade.:';
         Frm_Fpgto.FANTASIA.Visible       :=False;
         Frm_Fpgto.lbl_fantasia.Visible   :=False;
         end;
      end;
   end
else
   begin
   Frm_Fpgto.RAZSOC.Enabled  :=False;
   Frm_Fpgto.FANTASIA.Enabled:=False;
   Frm_Fpgto.ENDERECO.Enabled:=False;
   Frm_Fpgto.BAIRRO.Enabled  :=False;
   Frm_Fpgto.CIDADE.Enabled  :=False;
   Frm_Fpgto.UF.Enabled      :=False;
   Frm_Fpgto.CEP.Enabled     :=False;
   Frm_Fpgto.FONE.Enabled    :=False;
   Frm_Fpgto.CNPJ.Enabled    :=False;
   Frm_Fpgto.IE.Enabled      :=False;
   end;
result:=true;
end;
procedure TFrm_Fpgto.bbCancelarClick(Sender: TObject);
begin
if mlocorigem=1 then
   begin
   if fmensagem('Confirma a Exclusão do Cupom Fiscal?',0,['1','2'],2)<>mrYes then
      exit;
   end;
mconcluiu:=True;
if mlocorigem=1 then
   begin
   if (DM1.Tb_PargerPTIPOTEF.Value=2) and (codemp<100) then
      begin
      deletefile(cf_pastacf+cf_nomarq+'.CUP');
      end
   else
      iRetorno := Bematech_FI_CancelaCupom();
   end;




DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('UPDATE CADP01 set P1CUPOM=0, P1EMIDOC=0, P1CODECF=0 where '
                  +' P1CODEMP=0'+IntToStr(codemp)+' and '
                  +' P1LOTSEQ=0'+FloatToStr(ls_numped)+' and '
                  +' P1CHAVE=0'+FloatToStr(mchaveped));
DM1.Query1.ExecSQL;

if codemp>100 then
   begin
   rccodemp:=codemp;
   rcchave :=ls_numped;
   FReecupomAjustaEstoque(0,codemp,ls_numped,mchaveped);
   end;

{
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADP01 set P1CUPOM=0,P1NUMCF=0 where '
                  +' P1CODEMP=0'+InttoStr(codemp)
                  +' and P1LOTSEQ=0'+FloatToStr(ls_numped)
                  +' and P1CHAVE=0'+FloatToStr(mchaveped));
DM1.Query1.ExecSQL;
}
close;
end;

procedure TFrm_Fpgto.FormActivate(Sender: TObject);
begin
mconcluiu:=False;
if mlocorigem=2 then
   bbCancelar.Caption:='&Cancelar as Formas'
else
   bbCancelar.Caption:='&Cancelar Cupom';
end;

procedure TFrm_Fpgto.RG_TPPESSOAExit(Sender: TObject);
begin
if RG_TPPESSOA.ItemIndex=0 then
   begin
   lbl_fantasia.Visible:=False;
   FANTASIA.Visible    :=False;
   lbl_cnpj.Caption    :='CNPF.:';
   lbl_ie.Caption      :='Identidade.:';
//   CNPJ.EditMask       :='000.000.000-00;1; ';
   end
else
   begin
   lbl_fantasia.Visible:=true;
   FANTASIA.Visible    :=true;
   lbl_cnpj.Caption    :='CNPJ.:';
   lbl_ie.Caption      :='IE..:';
//   CNPJ.EditMask       :='00.000.000/0000-00;1; ';
   end

end;

procedure TFrm_Fpgto.CNPJExit(Sender: TObject);
begin
if RG_TPPESSOA.ItemIndex=1 then
   CNPJ.Text:=FormatFloat('00"."000"."000/0000-00',fsonumero(CNPJ.Text))
else
   CNPJ.Text:=FormatFloat('000"."000"."000-00',fsonumero(CNPJ.Text))
end;


Function FReecupomAjustaEstoque(ptipo: Integer; pcodemp,plotseq,pchave: Real ): Boolean;
var
mdtv: String;
begin
DM1.Tb_Ped01.Close;
DM1.Tb_Ped01.Sql.Clear;
DM1.Tb_Ped01.SQl.add('Select * from CADP01 where P1CODEMP=0'+FloatToStr(pcodemp)
                    +' and P1STATUS<>9 '
                    +' and P1LOTSEQ=0'+FloatToStr(plotseq)
                    +' and P1CHAVE=0'+FloatTostr(pchave)
                    +' order by P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM');
DM1.Tb_Ped01.Open;
While not DM1.Tb_Ped01.Eof do
   begin
   DM1.Tb_Ped02.Close;
   DM1.Tb_Ped02.SQl.Clear;
   DM1.Tb_Ped02.Sql.add('Select * from CADP02 where '
                       +' P2CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                       +' and P2LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                       +' and P2CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                       +' and P2ORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString
                       +' order by P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM');
   DM1.Tb_Ped02.Open;
   While not DM1.Tb_Ped02.Eof do
      begin
      flbaiest(0,0,0,0,DM1.Tb_Ped02P2CODPRO.AsString,'frm_fpgto_1797_',DM1.Tb_Ped02P2QTD.Value);
      if StrToInt('0'+copy(mpseg,4,2))>0  then  // se tem controle pelo CADLGC
         begin
         if (DM1.Tb_Ped02P2DTVCTO.IsNull) or (DM1.Tb_Ped02P2DTVCTO.Value<=pdatanula) then
            mdtv:=''
         else
            mdtv:=FormatDateTime(fdt, DM1.Tb_Ped02P2DTVCTO.Value);
         flbailgc(0,0,0,0,DM1.Tb_Ped02P2CODPRO.AsString,DM1.Tb_Ped02P2LOTE.Value,
                          mdtv,'','',DM1.Tb_Ped02P2QTD.Value);
         flcadpro(1,0,codemp,DM1.Tb_Ped02P2CODPRO.AsString);
         CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_Ped02P2LOTE.Value,'S_Fpgto',0,DM1.Tb_ProPDSALDO.AsFloat,DM1.Tb_Ped02P2QTD.Value,' Chave do Pedido - '+dm1.Tb_Ped02P2CHAVE.AsString);
         end;
      DM1.Tb_Ped02.Next;
      end;
   DM1.Tb_Ped01.Edit;
   DM1.Tb_Ped01P1TIPO.Value   :=0;
   DM1.Tb_Ped01P1CUPOM.Value  :=0;
   DM1.Tb_Ped01P1NUMCF.Value  :=0;
   DM1.Tb_Ped01P1CUPACRE.Value:=0;
   DM1.Tb_Ped01P1CUPDES.Value :=0;
   DM1.Tb_Ped01P1CODEMP.Value:=iif(rccodemp>100,rccodemp-100,100+rccodemp);
   DM1.Tb_Ped01.Post;
   DM1.Tb_Ped01.Next;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP02 set P2CODEMP=0'+IntToStr(iif(rccodemp>100,rccodemp-100,100+rccodemp))
                  +' where P2CODEMP=0'+Floattostr(pcodemp)
                  +' and P2LOTSEQ=0'+FloatToStr(plotseq)
                  +' and P2CHAVE=0'+FloattoStr(pchave));
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP01V set P1VCODEMP=0'+IntToStr(iif(rccodemp>100,rccodemp-100,100+rccodemp))
                  +' where P1VCODEMP=0'+FloatToStr(pcodemp)
                  +' and P1VLOTSEQ=0'+FloatToStr(plotseq)
                  +' and P1VCHAVE=0'+FloatToStr(pchave));
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP02D set P2DCODEMP=0'+IntToStr(iif(rccodemp>100,rccodemp-100,100+rccodemp))
                  +' where P2DCODEMP=0'+FloatToStr(pcodemp)
                  +' and P2DLOTSEQ=0'+FloatTostr(plotseq)
                  +' and P2DCHAVE=0'+FloatToStr(pchave));
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADP02D set P2DCODEMP=0'+IntToStr(iif(rccodemp>100,rccodemp-100,100+rccodemp))
                  +' where P2DCODEMP=0'+FloatToStr(pcodemp)
                  +' and P2DLOTSEQ=0'+FloatToStr(plotseq)
                  +' and P2DCHAVE=0'+FloatToStr(pchave));
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete CADCSF where CFCODEMP=0'+IntToStr(iif(rccodemp>100,rccodemp-100,100+rccodemp))
                  +' and CFCHAVEP=0'+FloatToStr(pchave));
DM1.Query1.ExecSQL;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADCSF set CFCODEMP=0'+IntToStr(iif(rccodemp>100,rccodemp-100,100+rccodemp))
                  +' where CFCODEMP=0'+FloatToStr(pcodemp)
                  +' and CFCHAVEP=0'+FloatToStr(pchave));
DM1.Query1.ExecSQL;

Result:=True;


end;

function fConcluiCupom(pFormaPgto: Integer): boolean;
begin

{
if ValFloat(TOTRES.Text)<0 then
   begin
   minfo:='Esta passando '+DM1.Tb_PargerPMOEDA.Value+': '+FormatFloat(mcasas, ValFloat(TOTRES.Text)*-1)+'. Posso Considerar como Acréscimos?';
   if fmensagem(pchar(minfo),0,['1','2'],2)<>mrYes then
      exit
   else
      begin
      TOTACRE.Text:=insere(Formatfloat(mcasas, ValFloat(TOTACRE.Text)-ValFloat(TOTRES.Text)),' ',mspaco);
      ffpgtocalc(0);
      end;
   end
else if not (CB_AREC.Checked) and  (ValFloat(TOTRES.Text)<>0) then
  begin
  MessageDlg('Valor Pago não Confere!',mtWarning,[mbOk],0);
  exit;
  end;

{if (mdesped>0) or (mvlracre>0) then
   begin
   iretorno:=fpvecf_Bema(0,4,0,mdesped,mvlracre,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao Lancar descontos ou acrescimos: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
   end;


if mlocorigem=0 then
   begin
   if not fpvgravap1(1,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text)) then
      begin
      MessageDlg('Erro ao Tentar Gravar o Pedido: '+FloatTostr(mchaveped)+', Chame-o Suporte!',mtWarning,[mbOK],0);
      exit;
      end;
   end;

mlanfor:=False;
if not flcadp01(0,0,ls_numped,FloatToStr(mchaveped),pvazio) then
   begin
   MessageDlg('Erro ao Ler Pedido.',mtError,[mbOk],0);
   exit;
   end;

mvlracre:=ValFloat(TOTACRE.Text);
mdesped :=ValFloat(TOTDES.Text);

{
if not flcaddar(9,0,0,codecf,DM1.Tb_Ped01P1CHAVE.AsString,DM1.Tb_Ped01P1ORDEM.AsString,DM1.Tb_Ped01P1LOTSEQ.AsString,DM1.Tb_Ped01P1DATDOC.AsDate) then
   begin
   MessageDlg('Erro ao Ler o arquivo de Duplicatas',mtWarning,[mbOk],0);
   exit;
   end;

if not flcadp01v(0,0,ls_numped,FloatToStr(mchaveped),pvazio) then
   begin
   MessageDlg('Erro ao Ler Vencimentos do Pedido.',mtError,[mbOk],0);
   exit;
   end;


flcadcli(1,0,DM1.Tb_Ped01P1CODCLI.AsString);
mdoc:=Formatfloat('000000',DM1.Tb_Ped01P1NUMCF.Value);
{
While not DM1.Tb_Dar.Eof do
   begin
   if mdoc='' then
      mdoc:=Formatfloat('000000',DM1.Tb_DarCRNUMERO.Value)
   else
      mdoc:=mdoc+copy(Formatfloat('000000',DM1.Tb_DarCRNUMERO.Value),4,3);
   DM1.Tb_Dar.Next;
   end;
DM1.Tb_Dar.First;

if DM1.Tb_Ped01P1ACREGER.Value>0 then
   begin
   iretorno:=fpvecf_Bema(0,4,0,DM1.Tb_Ped01P1ACREGER.Value,0,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao Lancar: '+DM1.Tb_PargerPTITAGER.Value,mtWarning,[mbOk],0);
   end;
if DM1.Tb_Ped01P1VALFRE.Value>0 then
   begin
   iretorno:=fpvecf_Bema(0,2,0,0,DM1.Tb_Ped01P1VALFRE.Value,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao Lancar taxa de Entrega: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
   end;
if DM1.Tb_Ped01P1ACRECONV.Value>0 then
   begin
   iretorno:=fpvecf_Bema(0,3,0,0,DM1.Tb_Ped01P1ACRECONV.Value,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao Lancar taxa de Administração: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
   end;


pobscupom2:=' ';
mtotdes :=ValFloat(TOTDES.Text)+DM1.Tb_Ped01P1TOTDES.Value;
mtotacre:=ValFloat(TOTACRE.Text);
if (mtotdes<>0) and (mtotacre<>0) then
   begin
   if mtotdes>mtotacre then
      begin
      mtotdes:=mtotdes-mtotacre;
      mtotacre:=0
      end
   else if mtotacre>mtotdes then
      begin
      mtotacre:=mtotacre-mtotdes;
      mtotdes:=0
      end;
   end;
if DM1.Tb_ECFCFFPGTO.Value=0 then
   fpvecf_Bema(0,4,0,mtotdes,mtotacre,ValFloat(TOTLIQ.Text),0,0);

if ValFloat(VALDIN.Text)>0 then
   begin
   pobscupom2:=' ';
   pobscupom:='Dinheiro';
   pobscupom2:=' ';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALDIN.Text),0,0); // dinheiro
   if DM1.Tb_PargerPTIPOTEF.Value<>2 then
      begin
      ffpgtolanfor(0,999,ValFloat(VALDIN.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped:=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALCHAV.Text)>0 then
   begin
   pobscupom:='CHEQUE';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALCHAV.Text),0,01); // cheques
   if DM1.Tb_PargerPTIPOTEF.Value<>2 then
      begin
      ffpgtolanfor(1,999,ValFloat(VALCHAV.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;

if ValFloat(VALCHPD.Text)>0 then
   begin
   pobscupom:='CHEQUE';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALCHPD.Text),0,01); // cheques
   if DM1.Tb_PargerPTIPOTEF.Value<>2 then
      begin
      ffpgtolanfor(2,999,ValFloat(VALCHPD.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALDEB.Text)>0 then
   begin
   pobscupom:='ELETRON';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALDEB.Text),0,04); // cartoes
   if DM1.Tb_PargerPTIPOTEF.Value<>2 then
      begin
      ffpgtolanfor(3,999,ValFloat(VALDEB.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALVIS.Text)>0 then
   begin
   pobscupom:='CARTAO VISA';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALVIS.Text),0,04); // cartoes
   if DM1.Tb_PargerPTIPOTEF.Value<>2 then
      begin
      ffpgtolanfor(4,999,ValFloat(VALVIS.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALMAS.Text)>0 then
   begin
   pobscupom:='MASTERCARD';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALMAS.Text),0,04); // cartoes
   if DM1.Tb_PargerPTIPOTEF.Value<>2 then
      begin
      ffpgtolanfor(5,999,ValFloat(VALMAS.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if ValFloat(VALAME.Text)>0 then
   begin
   pobscupom:='AMERICANEXPRESS';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
         end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(VALAME.Text),0,04); // cartoes
   if DM1.Tb_PargerPTIPOTEF.Value<>2 then
      begin
      ffpgtolanfor(6,999,ValFloat(VALAME.Text),mvlracre,mdesped,
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
               FormatDateTime(fdt2, DM1.Tb_DarCRDTVCTO.Value)); // data do deposito
      end;
   mvlracre:=0;
   mdesped :=0;
   if not mlanfor then
      begin
      fpvgravap1(3,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
      mlanfor:=True;
      end;
   end;
if CB_AREC.Checked then
   begin
   pobscupom:='Dinheiro';
   pobscupom2:='A RECEBER';
   if DM1.Tb_ECFCFMODELO.Value=1 then
      begin
      if DM1.Tb_ECF_FP.Locate('FPEFORMA',pobscupom,[loCaseInsensitive,LoPartialKey]) then
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
      else
         begin
         DM1.Tb_ECF_FP.First;
         pobscupom:=DM1.Tb_ECF_FPFPEFORMA.Value
          end;
      end;
   if DM1.Tb_ECFCFFPGTO.Value=0 then
      fpvecf_Bema(0,6,0,0,0,ValFloat(TOTLIQ.Text),0,0); // dinheiro
   end;

pobscupom:=insere2('CLIENT:'+FormatFloat('00000',valFloat(CODCLI.Text))
          +'-'+RAZSOC.Text,' ',mtaml-6);
pobscupom:=pobscupom+' '+FormatFloat('00000',mchaveped);
if Trim(ENDERECO.Text)<>'' then
   pobscupom:=pobscupom+insere2('ENDER.: '+ENDERECO.Text,' ',mtaml);
if (trim(BAIRRO.Text)<>'') or (TRIM(CIDADE.Text)<>'') or (trim(UF.Text)<>'') then
   pobscupom:=pobscupom+insere2(Trim(BAIRRO.Text)+' '+Trim(CIDADE.Text)+'-'+Trim(UF.Text),' ',mtaml);

if ValFloat(Frm_Fpgto.CNPJ.Text)>0 then
   begin
   if Frm_Fpgto.RG_TPPESSOA.ItemIndex=0 then
      pobscupom:=pobscupom+insere2('CPF...: '+Frm_Fpgto.CNPJ.Text+' RG.: '+Frm_Fpgto.IE.Text,' ',mtaml)
   else
      pobscupom:=pobscupom+insere2('CNPJ..: '+Frm_Fpgto.CNPJ.Text+' Insc.Est.: '+Frm_Fpgto.IE.Text,' ',mtaml);
   end;
if Trim(Frm_Fpgto.FONE.Text)='' then
   pobscupom:=pobscupom+insere2('FONE..: '+FONE.Text,' ',mtaml);

if length(pobscupom)>mtam_mens then
   pobscupom:=copy(pobscupom,1,mtam_mens);
fpvecf_Bema(0,5,0,ValFloat(TOTDES.Text),ValFloat(TOTACRE.Text),ValFloat(TOTLIQ.Text),0,0);



if (ValFloat(CODCLI.Text)=1) or (ValFloat(CODCLI.Text)=2) then
   begin
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CFCHAVEP=0'+FloatToStr(mchaveped));
   DM1.Tb_CSF.Open;
   if DM1.Tb_CSF.Eof then
      DM1.Tb_CSF.Append
   else
      DM1.Tb_CSF.Edit;
   DM1.Tb_CSFCFCODEMP.Value:=codemp;
   DM1.Tb_CSFCFCHAVEP.Value:=mchaveped;
   DM1.Tb_CSFCFORDEMP.Value:=01;
   DM1.Tb_CSFCFRAZAO.Value :=Frm_Fpgto.RAZSOC.Text;
   DM1.Tb_CSFCFDENOM.Value :=Frm_Fpgto.FANTASIA.Text;
   DM1.Tb_CSFCFENDER.Value :=Frm_Fpgto.ENDERECO.Text;
   DM1.Tb_CSFCFBAIRRO.Value:=Frm_Fpgto.BAIRRO.Text;
   DM1.Tb_CSFCFCIDADE.Value:=Frm_Fpgto.CIDADE.Text;
   DM1.Tb_CSFCFUF.Value    :=Frm_Fpgto.UF.Text;
   DM1.Tb_CSFCFCEP.Value   :=Frm_Fpgto.CEP.Text;
   DM1.Tb_CSFCFTIPOC.Value :=0;
   DM1.Tb_CSFCFCGC.Value   :=fsonumero(Frm_Fpgto.CNPJ.Text);
   DM1.Tb_CSFCFIE.Value    :=IE.Text;
   DM1.Tb_CSFCFFONE.Value  :=Frm_Fpgto.FONE.Text;
   DM1.Tb_CSF.Post;
   end;

if not CB_AREC.Checked then
   begin
   mvlracre:=ValFloat(TOTACRE.Text);
   mdesped :=ValFloat(TOTDES.Text);
   ffpgtoefetuabaixa(0,ValFloat(TOTREC.Text),mvlracre,mdesped);
   end;
mconcluiu:=True;

fpvgravap1(4,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text));
if (mlocorigem<>0) and (DM1.Tb_PargerPLSEPCUPOM.Value=1) then
   begin
   FPedEmiteNf(0,3,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger
                  ,DM1.Tb_Ped01P1ORDEM.AsInteger, DM1.Tb_Ped01P1CODEMP.AsInteger,
                  1,DM1.Tb_Ped01P1FORMACE.AsInteger,false,1,0,0); // lista de separacao
   end;
mloteb:=0;
mconcluiu:=True;
close;
}
end;


function fpgtoConcluiTef(pTipo: Integer): Boolean;
var
mResposta: Integer;
mg001, mg002: String;
begin
cf_numitem:=0;

mg001:='';
mg002:='';
if ptipo=1 then
   begin
   if Trim(Frm_Fpgto.RAZSOC.Text)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'G-'+Formatfloat('000',cf_numitem)+' = '+Frm_Fpgto.RAZSOC.Text);
      mg001:=Frm_Fpgto.RAZSOC.Text+'-'+FloatToStr(mchaveped);
      end;
   if Trim(Frm_Fpgto.ENDERECO.Text)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'G-'+Formatfloat('000',cf_numitem)+' = '+Frm_Fpgto.ENDERECO.Text);
      mg002:=Frm_Fpgto.ENDERECO.Text;
      end;
   cf_numitem:=0;
   if trim(mg001)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'H-'+Formatfloat('000',cf_numitem)+' = '+mg001);
      end;
   if trim(mg002)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'H-'+Formatfloat('000',cf_numitem)+' = '+mg002);
      end;
   if Trim(Frm_Fpgto.BAIRRO.Text)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'H-'+Formatfloat('000',cf_numitem)+' = Bairro:'+Frm_Fpgto.BAIRRO.Text);
      end;
   if Trim(Frm_Fpgto.CIDADE.Text)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'H-'+insere2(Formatfloat('000',cf_numitem)+' = '+'CID:'+Frm_Fpgto.CIDADE.Text+' UF: '+Frm_Fpgto.UF.Text+' CEP.: '+Frm_Fpgto.CEP.Text,' ',40));
      end;

   if Trim(Frm_Fpgto.CNPJ.Text)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      if Frm_Fpgto.RG_TPPESSOA.ItemIndex=1 then
         Writeln(cf_fcupenv,'H-'+insere2(Formatfloat('000',cf_numitem)+' = '+'CNPJ:'+Frm_Fpgto.CNPJ.Text+' Inscrição: '+Frm_Fpgto.IE.Text,' ',40))
      else
         Writeln(cf_fcupenv,'H-'+insere2(Formatfloat('000',cf_numitem)+' = '+'CNPF:'+Frm_Fpgto.CNPJ.Text+' RG: '+Frm_Fpgto.IE.Text,' ',40));
      end;

   end
else
   begin
   if Trim(DM1.Tb_CliCRAZAO.Value)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'G-'+Formatfloat('000',cf_numitem)+' = '+DM1.Tb_CliCRAZAO.Value);
      mg001:=DM1.Tb_CliCRAZAO.Value;
      end;
   if Trim(DM1.Tb_CliCLOG.Value)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'G-'+Formatfloat('000',cf_numitem)+' = '+DM1.Tb_CliCLOG.Value);
      mg002:=DM1.Tb_CliCLOG.Value;
      end;
   cf_numitem:=0;
   if trim(mg001)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'H-'+Formatfloat('000',cf_numitem)+' = '+mg001);
      end;
   if trim(mg002)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'H-'+Formatfloat('000',cf_numitem)+' = '+mg002);
      end;


   if Trim(DM1.Tb_CliCBAIRRO.Value)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'H-'+Formatfloat('000',cf_numitem)+' = '+DM1.Tb_CliCBAIRRO.Value);
      end;
   cf_numitem:=0;
   if Trim(DM1.Tb_CliCUF.Value)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      Writeln(cf_fcupenv,'H-'+insere2(Formatfloat('000',cf_numitem)+' = '+'CID:'+DM1.Tb_CliCCIDADE.Value+' UF: '+DM1.Tb_CliCUF.Value+' CEP.: '+DM1.Tb_CliCCEP.Value,' ',40));
      end;
   if Trim(Frm_Fpgto.CNPJ.Text)<>'' then
      begin
      cf_numitem:=cf_numitem+1;
      if Frm_Fpgto.RG_TPPESSOA.ItemIndex=1 then
         Writeln(cf_fcupenv,'H-'+insere2(Formatfloat('000',cf_numitem)+' = '+'CNPJ:'+Frm_Fpgto.CNPJ.Text+' Inscrição: '+Frm_Fpgto.IE.Text,' ',40))
      else
         Writeln(cf_fcupenv,'H-'+insere2(Formatfloat('000',cf_numitem)+' = '+'CNPF:'+Frm_Fpgto.CNPJ.Text+' RG: '+Frm_Fpgto.IE.Text,' ',40));
      end;

   end;

// inicio


mvlracre:=ValFloat(Frm_Fpgto.TOTACRE.Text);
mdesped :=ValFloat(Frm_Fpgto.TOTDES.Text)+DM1.Tb_Ped01P1TOTDES.Value;
Writeln(cf_fcupenv,'C-001'+' = '+Formatfloat('0',mdesped*100));
Writeln(cf_fcupenv,'D-001'+' = '+Formatfloat('0',mvlracre*100));
cf_numitem:=0;
if ValFloat(Frm_Fpgto.VALDIN.Text)>0 then
   begin
   cf_numitem:=cf_numitem+1;
   pobscupom:='DINHEIRO';
   if DM1.Tb_ECF_FP.Locate('FPEVINCULO',pobscupom,[loCaseInsensitive,LoPartialKey]) then
      pobscupom:=FormatFloat('00', DM1.Tb_ECF_FPFPECODIGO.Value)
   else
      pobscupom:='DINHEIRO';
   Writeln(cf_fcupenv,'E-1'+FormatFloat('00',cf_numitem)+' = '+pobscupom);
//   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-2'+FormatFloat('00',cf_numitem)+' = '+Formatfloat('00', ValFloat(Frm_Fpgto.VALDIN.Text)*100));
   end;
if ValFloat(Frm_Fpgto.VALCHAV.Text)>0 then
   begin
   cf_numitem:=cf_numitem+1;
   pobscupom:='CHEQUE';
   if DM1.Tb_ECF_FP.Locate('FPEVINCULO',pobscupom,[loCaseInsensitive,LoPartialKey]) then
      pobscupom:=FormatFloat('00', DM1.Tb_ECF_FPFPECODIGO.Value)
   else
      pobscupom:='CHEQUE';
   Writeln(cf_fcupenv,'E-1'+FormatFloat('00',cf_numitem)+' = '+pobscupom);
//   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-2'+FormatFloat('00',cf_numitem)+' = '+Formatfloat('00', ValFloat(Frm_Fpgto.VALCHAV.Text)*100));

   end;



if ValFloat(Frm_Fpgto.VALCHPD.Text)>0 then
   begin
   cf_numitem:=cf_numitem+1;
   pobscupom:='CHEQUE';
   if DM1.Tb_ECF_FP.Locate('FPEVINCULO',pobscupom,[loCaseInsensitive,LoPartialKey]) then
      pobscupom:=FormatFloat('00', DM1.Tb_ECF_FPFPECODIGO.Value)
   else
      pobscupom:='CHEQUE';
   Writeln(cf_fcupenv,'E-1'+FormatFloat('00',cf_numitem)+' = '+pobscupom);
//   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-2'+FormatFloat('00',cf_numitem)+' = '+Formatfloat('00', ValFloat(Frm_Fpgto.VALCHPD.Text)*100));
   end;

if ValFloat(Frm_Fpgto.VALDEB.Text)>0 then
   begin
   cf_numitem:=cf_numitem+1;
      pobscupom:='CARTAO DEBITO';
   if DM1.Tb_ECF_FP.Locate('FPEVINCULO',pobscupom,[loCaseInsensitive,LoPartialKey]) then
      pobscupom:=FormatFloat('00', DM1.Tb_ECF_FPFPECODIGO.Value)
   else
      pobscupom:='CARTAO';

   Writeln(cf_fcupenv,'E-1'+FormatFloat('00',cf_numitem)+' = '+pobscupom);
//   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-2'+FormatFloat('00',cf_numitem)+' = '+Formatfloat('00', ValFloat(Frm_Fpgto.VALDEB.Text)*100));
   end;


if ValFloat(Frm_Fpgto.VALVIS.Text)>0 then
   begin
   pobscupom:='CARTAO VISA';
   if DM1.Tb_ECF_FP.Locate('FPEVINCULO',pobscupom,[loCaseInsensitive,LoPartialKey]) then
      pobscupom:=FormatFloat('00', DM1.Tb_ECF_FPFPECODIGO.Value)
   else
      pobscupom:='CARTAO';

   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-1'+FormatFloat('00',cf_numitem)+' = '+pobscupom);
//   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-2'+FormatFloat('00',cf_numitem)+' = '+Formatfloat('00', ValFloat(Frm_Fpgto.VALVIS.Text)*100));
//   Writeln(cf_fcupenv,'J-002 = VISANET');
   end;
if ValFloat(Frm_Fpgto.VALMAS.Text)>0 then
   begin
   pobscupom:='CARTAO MASTERCARD';
   if DM1.Tb_ECF_FP.Locate('FPEVINCULO',pobscupom,[loCaseInsensitive,LoPartialKey]) then
      pobscupom:=FormatFloat('00', DM1.Tb_ECF_FPFPECODIGO.Value)
   else
      pobscupom:='CARTAO MASTERCARD';
   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-1'+FormatFloat('00',cf_numitem)+' = '+pobscupom);
//   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-2'+FormatFloat('00',cf_numitem)+' = '+Formatfloat('00', ValFloat(Frm_Fpgto.VALMAS.Text)*100));
//   Writeln(cf_fcupenv,'J-002 = REDECARD');
   end;
if ValFloat(Frm_Fpgto.VALAME.Text)>0 then
   begin
   pobscupom:='CARTAO AMERICAN EXPRESS';
   if DM1.Tb_ECF_FP.Locate('FPEVINCULO',pobscupom,[loCaseInsensitive,LoPartialKey]) then
      pobscupom:=FormatFloat('00', DM1.Tb_ECF_FPFPECODIGO.Value)
   else
      pobscupom:='CARTAO AMERICAN EXPRESS';
   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-1'+FormatFloat('00',cf_numitem)+' = '+pobscupom);
//   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-2'+FormatFloat('00',cf_numitem)+' = '+Formatfloat('00', ValFloat(Frm_Fpgto.VALAME.Text)*100));
//   Writeln(cf_fcupenv,'J-002 = AMEX');
   end;


if Frm_Fpgto.CB_AREC.Checked then
   begin
   pobscupom:='DINHEIRO';
   if DM1.Tb_ECF_FP.Locate('FPEVINCULO',pobscupom,[loCaseInsensitive,LoPartialKey]) then
      pobscupom:=FormatFloat('00', DM1.Tb_ECF_FPFPECODIGO.Value)
   else
      pobscupom:='DINHEIRO';

   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-1'+FormatFloat('00',cf_numitem)+' = '+pobscupom);
//   cf_numitem:=cf_numitem+1;
   Writeln(cf_fcupenv,'E-2'+FormatFloat('00',cf_numitem)+' = '+Formatfloat('00', ValFloat(Frm_Fpgto.TOTLIQ.Text)*100));
   end;
closefile(cf_fcupenv);
RenameFile(cf_pastacf+cf_nomarq+'.$$$',cf_pastacf+cf_nomarq+'.CUP');
mResposta:=fpvAguardaRetorno(0);
result:=true;
if mResposta=3 then // tempo de resposta esgotado
   begin
   result:=false;
   end
else if mResposta=1 then // cupom cancelado
   begin
   result:=False;
   end;


end;
procedure TFrm_Fpgto.CB_CARMASClick(Sender: TObject);
begin
if CB_CARMAS.Checked then
   begin
   VALMAS.ReadOnly:=False;
   VALMAS.Text:=insere(FormatFloat(mcasas, ValFloat(VALMAS.Text)+ValFloat(TOTRES.Text)),' ',mspaco);
   CB_AREC.Checked:=False;
   end
else
   begin
   VALMAS.Text:='';
   VALMAS.ReadOnly:=True;
   end;
ffpgtocalc(0);

end;

procedure TFrm_Fpgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
