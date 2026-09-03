unit S_PvAb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,db,dbtables,func,S_DM1,S_Obs, ExtCtrls,lerarq,
  func2,S_Cli,S_Ven,s_pv, Mask,S_PVO;

type
  TFrm_PvAb = class(TForm)
    Label1: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label2: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label3: TLabel;
    CODCON: TEdit;
    NOMCON: TEdit;
    Label4: TLabel;
    CODPV: TEdit;
    NOMPV: TEdit;
    Label5: TLabel;
    CODDEP: TEdit;
    NOMDEP: TEdit;
    RG_TPENT: TRadioGroup;
    Label10: TLabel;
    NAUT: TEdit;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    CHAVEP: TEdit;
    DADOSP: TEdit;
    GroupBox2: TGroupBox;
    VCTOTI: TMaskEdit;
    RG_TPPCO: TRadioGroup;
    CB_TABPV: TComboBox;
    OBS1: TEdit;
    OBS2: TEdit;
    OBS3: TEdit;
    lbl_preco: TLabel;
    MDATAREAJ: TMaskEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODPVExit(Sender: TObject);
    procedure CODPVKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RG_TPENTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CHAVEPExit(Sender: TObject);
    procedure OBS1Exit(Sender: TObject);
    procedure OBS2Exit(Sender: TObject);
    procedure OBS3Exit(Sender: TObject);
    procedure OBS1KeyPress(Sender: TObject; var Key: Char);
    procedure OBS2KeyPress(Sender: TObject; var Key: Char);
    procedure OBS3KeyPress(Sender: TObject; var Key: Char);
    procedure RG_TPPCOExit(Sender: TObject);
    procedure MDATAREAJExit(Sender: TObject);
    procedure CODDEPKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CB_TABPVExit(Sender: TObject);
    procedure NAUTExit(Sender: TObject);
    procedure NAUTKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Frm_PvAb: TFrm_PvAb;
  mautor: Boolean;
  mtotger,mlcred: Real;
  mliberado: boolean;
  mtpPco_ant: Integer=0;
implementation

uses S_PonVen, S_DM4, S_SitCre, func_excecoes;

{$R *.dfm}

procedure TFrm_PvAb.BitBtn2Click(Sender: TObject);
begin
modalResult:=mrNo;
end;

procedure TFrm_PvAb.CODCLIExit(Sender: TObject);
begin
if BitBtn2.Focused then
   exit;
if flcadcli(1,0,CODCLI.Text) then
   begin
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   pldr_nome :=DM1.Tb_CliCRAZAO.Value;
   end
else
   begin
   fMensagem('Cliente não cadastrado.',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end;
if ValInt(CODVEN.Text)<=0 then
   CODVEN.Text:=DM1.Tb_CliCCODVEN.AsString;
IF DM1.Tb_CliCCODCV.Value=0 then
   Begin
   NOMCON.Text:='Nao Possui Convenio';
   if Trim(CODPV.Text)='' then
      begin
      CB_TABPV.Text:='AV';
      CODPV.Text:='1';
      end;
   end
else
   begin
   flcadcv(1,DM1.Tb_CliCCODCV.AsString);
   CODCON.Text:=DM1.Tb_CliCCODCV.AsString;
   NOMCON.Text:=DM1.Tb_CVCVRAZAO.Value;
   if Trim(CODPV.Text)='' then
      begin
      if DM1.Tb_CVCVCODPV.Value>0 then
         begin
         CB_TABPV.Text:=DM1.Tb_CVCVTABPV.AsString;
         CODPV.Text   :=DM1.Tb_CVCVCODPV.AsString;
         end
      else
         begin
         CODPV.Text:='1';
         CB_TABPV.Text:='AV';
         end;
      if flcadpv(1,0,CB_TABPV.Text,CODPV.Text) then
         begin
         NOMPV.Text:=DM1.Tb_PVPVNOME.AsString;
         mpacreconv:=DM1.Tb_CVCVACFIN.Value;
         end;
      end;
   end;

mautor:=False;
mlcred:=0;
mtotger:=0;


if not (CODVEN.Focused) and (trim(CODCLI.Text)='') then
   exit;
flcadcli(1,0,CODCLI.Text);
if DM1.Tb_Cli.Eof then
   begin
   ShowMessage('Cliente nao Cadastrado');
   CODCLI.SetFocus;
   exit;
   end
else
   begin
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   pldr_nome :=DM1.Tb_CliCRAZAO.Value;
   end;
mliberado:=False;
mlcred   :=0;
if not flcaduf(0,0,0,DM1.Tb_CliCUF.AsString) then
   begin
   fMensagem('Favor Corrigir o Estado do Cadastro do Cliente!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end;
   
if DM1.Tb_CliCSITCLI.Value>0 then
   begin
   flcadpar02(0,0,codusr,'17');
   if DM4.Tb_Par02PA2PDSN.Value='S' then
      begin
      if fValidaSenha(0,codusr,17,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Cliente com o Cadastro Bloqueado. Para liberar digite a senha','')<>0 then
         begin
         CODCLI.SetFocus;
         exit;
         end;
      end;
   end;



if DM4.Tb_Par01PVISA.Value=1 then
   begin
   if DM4.Tb_Par01PVISA.Value=1 then
      begin
      if trim(DM1.Tb_CliCNALV.Value)='' then
         begin
         fMensagem('Número do alvara da vigilância Sanitária Municipal Invalido',0,['0'],0);
         CODCLI.SetFocus;
         exit;
         end
      else if DM1.Tb_CliCDTVALV.Value<pdatasis then
         begin
         fMensagem('Alvara da vigilância Sanitária Municipal vencido. Data do Vcto: '+FormatDateTime(fdt2,DM1.Tb_CliCDTVALV.Value),0,['0'],0);
         CODCLI.SetFocus;
         exit;
         end;
      end;
   end;
if DM1.Tb_PargerPANVISA.Value=1 then
   begin
   if DM4.Tb_Par01PANVISA.Value=1 then
      begin
      if trim(DM1.Tb_CliCNANVISA.Value)='' then
         begin
         fMensagem('Número do alvara da vigilância Sanitária Nacional(ANVISA) Invalido',0,['0'],0);
         CODCLI.SetFocus;
         exit;
         end
      else if DM1.Tb_CliCDTANVISA.Value<pdatasis then
         begin
         fMensagem('Alvara da vigilância Sanitária Nacional(ANVISA) vencido. Data do Vcto: '+FormatDateTime(fdt2,DM1.Tb_CliCDTANVISA.Value),0,['0'],0);
         CODCLI.SetFocus;
         exit;
         end;
      end;
   end;
{
if DM1.Tb_PargerPVERCRE.Value=1 then
   begin
   Application.CreateForm(TFrm_SitCre, Frm_SitCre);
   Frm_SitCre.CODCLI.Text:=Trim(CODCLI.Text);
   frm_SitCre.BBAPLICAR.Click;
   Frm_SitCre.ShowModal;
   mlcred:=mLimCre;
   Frm_SitCre.Free;
   if msit then
      begin
      mliberado:=False;
      flcadpar02(0,0,codusr,'17');
      if DM4.Tb_Par02PA2PDSN.Value='S' then
         begin
         if fValidaSenha(0,codusr,17,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Cliente com o Cadastro Bloqueado. Para liberar digite a senha','')<>0 then
            begin
            CODCLI.SetFocus;
            exit;
            end;
         end;
      end;
   end;
}
RG_TPPCO.ItemIndex:=DM1.Tb_UFPTIPOPC.AsInteger;
if (DM1.Tb_CliCCODPV.Value>0) and not (DM1.Tb_CliCTABPV.IsNull) and (valfloat(CODPV.Text)<=0) then
   begin
   CB_TABPV.Text:=DM1.Tb_CliCTABPV.Value;
   CODPV.Text   :=DM1.Tb_CliCCODPV.AsString;
   end;
NOMCON.Text:='';
CODCON.Text:='';
if DM1.Tb_CliCCODCV.Value>0 then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
      begin
      NOMCON.Text:=DM1.Query1.Fields[0].AsString;
      CODCON.Text:=DM1.Tb_CliCCODCV.AsString;
      end
   else
      begin
      if CB_TABPV.Text='CV' then
         begin
         CB_TABPV.Text:='';
         CODPV.Text:='';
         end;
      end;
   end;

mpacreger:=DM1.Tb_PargerPACREGER.Value;
end;

procedure TFrm_PvAb.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PvAb',key);
   key:=#0;
   end;

end;

procedure TFrm_PvAb.CODPVExit(Sender: TObject);
begin
if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
   begin
   NOMPV.Text:='Plano Opcional(Digitado)';
   Frm_PvO.ShowModal;
   mpvtdc       := Frm_PVO.CB_PVTPC.ItemIndex;
   mpvtc        := Frm_PVO.CB_PVTPC.ItemIndex;
   mpvtpd1      := Frm_PVO.CB_PVTPD1.ItemIndex;
   mpvtpd2      := Frm_PVO.CB_PVTPD2.ItemIndex;
   mpvtpdesf    := Frm_PVO.CB_PVTPDESF.ItemIndex;
   mtpp         := Frm_PVO.CB_TPP.ItemIndex;
   mpvcom       := valfloat(Frm_PVO.COM.Text);
   mpvactd      := valfloat(Frm_PVO.ACTD.Text);
   mpvact00     := valfloat(Frm_PVO.ACT00.Text);
   mpvact01     := ValFloat(Frm_PVO.ACT01.Text);
   mpvact99     := ValFloat(Frm_PVO.ACT99.Text);
   mpvdes       := ValFloat(Frm_PVO.DES.Text);
   mpvdes1      := ValFloat(Frm_PVO.DES1.Text);
   mpvdes2      := ValFloat(Frm_PVO.DES2.Text);
   mpvdescf     := ValFloat(Frm_PVO.DESCF.Text);
   mpvddescf    := Frm_PVO.CB_PVDDESCF.ItemIndex;
   mpvdiasdescf := StrToInt('0'+Trim(Frm_PVO.DIASDESCF.Text));
   mpvcom02     := ValFloat(Frm_PVO.COM02.Text);
   mpvcom03     := ValFloat(Frm_PVO.COM03.Text);
   end
else
   begin
   flcadpv(1,0,CB_TABPV.Text,CODpv.Text);
   if DM1.Tb_PV.Eof then
      begin
      fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
      CB_TABPV.SetFocus;
      end
   else
      begin
      mpacreconv:=0;
      if CB_TABPV.Text='CV' then
         begin
         if DM1.Tb_CliCCODCV.Value<=0 then
            begin
            fMensagem('Cliente não Possui Convênio!',0,['0'],0);
            CB_TABPV.SetFocus;
            exit;
            end;
         if flqr1('CVRAZAO,CVACFIN','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
            mpacreconv:=DM1.Query1.Fields[1].AsFloat;
         end;
      NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
      mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
      mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
      mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
      mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
      mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
      mtpp         := DM1.Tb_PVPVTPP.AsInteger;
      mpvcom       := DM1.Tb_PVPVCOM.Value;
      mpvactd      := DM1.Tb_PVPVACTD.Value;
      mpvact00     := DM1.Tb_PVPVACT00.Value;
      mpvact01     := DM1.Tb_PVPVACT01.Value;
      mpvact99     := DM1.Tb_PVPVACT99.Value;
      mpvdes       := DM1.Tb_PVPVDES.Value;
      mpvdes1      := DM1.Tb_PVPVDES1.Value;
      mpvdes2      := DM1.Tb_PVPVDES2.Value;
      mpvdescf     := DM1.Tb_PVPVDESCF.Value;
      mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
      mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
      mpvcom02     := DM1.Tb_PVPVCOM02.Value;
      mpvcom03     := DM1.Tb_PVPVCOM03.Value;
      Frm_PVO.Tb_Po99_NOV.Close;
      Frm_PVO.Tb_Po99_NOV.SQL.Clear;
      Frm_PVO.Tb_Po99_NOV.SQL.add('Select PV2CODEMP as POCODEMP, '
                             +' PV2PRAZO as POPRAZO from CADPV2 '
                             +' where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                             +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                             +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                             +' order by PV2PRAZO');
      Frm_PVO.Tb_Po99_NOV.Open;
      end;
   end;
end;

procedure TFrm_PvAb.CODPVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPV.Text:=fChamaPV(0,'frm_rdev',key);
   if valint(codpv.Text)<>0 then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.AsString;
      CODPVExit(self);
      end;
   key:=#0;
   end;


end;

procedure TFrm_PvAb.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_PvAb',Key);
   key:=#0;
   end;

end;

procedure TFrm_PvAb.CODVENExit(Sender: TObject);
begin
if flcadven(1,0,CODVEN.Text) then
   begin
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   end
else
   begin
   fMensagem('Vendedor não cadastrado.',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;

end;

procedure TFrm_PvAb.BitBtn1Click(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   begin
   fMensagem('Código do Atendente Campo Obrigatório!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;
if Trim(CODCLI.Text)='' then
   begin
   fMensagem('Código do Associado Campo Obrigatório!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end;
if Trim(CODPV.Text)='' then
   begin
   fMensagem('Código do Plano de Vendas Campo Obrigatório!',0,['0'],0);
   CODPV.SetFocus;
   exit;
   end;
if valfloat(CHAVEP.Text)>0 then
   mdtor:=DM1.Tb_Ped01P1DATAP.Value
else
   mdtor:=pdatasis;
ModalResult:=mrOk;
end;

procedure TFrm_PvAb.RG_TPENTClick(Sender: TObject);
begin
if RG_TPENT.ItemIndex=1 then
   begin
   Frm_PonVen.TAXENT.Text:=FormatFloat(mcasas, DM4.Tb_Par01pvalfre.Value);
   mvalFre:=DM4.Tb_Par01pvalfre.value;
   end
else
   begin
   Frm_PonVen.TAXENT.Text:='';
   mvalfre:=0;
   end;

end;

procedure TFrm_PvAb.FormCreate(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   CODVEN.Text:=IntToStr(codusr);
 RG_TPPCO.Visible:=True;
fCarregaDadosCaixa('CADDAR0');

end;

procedure TFrm_PvAb.FormActivate(Sender: TObject);
begin
CHAVEP.SetFocus;
end;

procedure TFrm_PvAb.CHAVEPExit(Sender: TObject);
begin
DADOSP.Text:='';
if valfloat(CHAVEP.Text)>0 then
   begin
   if not flcadp01(0,0,ls_numped,CHAVEP.Text,'') then
      begin
      fMensagem('Pedido não Encontrado.',0,['0'],0);
      CHAVEP.SetFocus;
      end
   else
      begin
      if DM1.Tb_Ped01P1NUMCF.Value>0 then
         begin
         fMensagem('Este Pedido ja foi emitido. Numero do cupom: '+FormatFloat('00000',DM1.Tb_Ped01P1NUMCF.Value),0,['0'],0);
         CHAVEP.SetFocus;
         exit;
         end;

      DADOSP.Text:='Data do Pedido: '+FormatDateTime(fdt2, DM1.Tb_Ped01P1DATAP.Value)+' Valor.: '+FormatFloat(mcasas, DM1.Tb_Ped01P1TOTALL.Value);
      if DM1.Tb_Ped01P1TIPO.Value>0 then
         begin
         fMensagem('Este Pedido não é Válido, pois não é orçamento: '+FormatFloat('00000',DM1.Tb_Ped01P1NUMCF.Value),0,['0'],0);
         CHAVEP.SetFocus;
         exit;
         end;
      CODVEN.Text:=DM1.Tb_Ped01P1CODVEN.AsString;
      flcadusr(1,0,CODVEN.Text);
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
      CODCLI.Text:=DM1.Tb_Ped01P1CODCLI.AsString;
      flcadcli(1,0,CODCLI.Text);
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
      pldr_nome :=DM1.Tb_CliCRAZAO.Value;
      CODDEP.Text:=DM1.Tb_Ped01P1CODDEP.AsString;
      if (trim(CODDEP.Text)='0') or (Trim(CODDEP.Text)='') then
         CODDEP.Text:='';
      mpacreconv:=dm1.Tb_Ped01P1ACRECONV.Value;
      IF DM1.Tb_CliCCODCV.Value=0 then
         Begin
         CODCON.Text:='';
         NOMCON.Text:='Nao Possui Convenio';
         end
      else
         begin
         flcadcv(1,DM1.Tb_CliCCODCV.AsString);
         CODCON.Text:=DM1.Tb_CliCCODCV.AsString;
         NOMCON.Text:=DM1.Tb_CVCVRAZAO.Value;
         mpacreconv :=DM1.Tb_CVCVACFIN.Value;
         end;
      CB_TABPV.Text:=DM1.Tb_Ped01P1TABPV.Value;
      CODPV.Text:=DM1.Tb_Ped01P1CODPV.AsString;
      NOMPV.Text:='';
      if valfloat(CODPV.Text)>0 then
         begin
         if flcadpv(1,0,CB_TABPV.Text,CODPV.Text) then
            begin
            if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
               begin
               NOMPV.Text:='Plano Opcional(Digitado)';
               Frm_PvO.ShowModal;
               mpvtdc       := DM1.Tb_Ped01P1PVTDC.AsInteger;
               mpvtc        := DM1.Tb_Ped01P1PVTC.AsInteger;
               mpvtpd1      := DM1.Tb_Ped01P1PVTPD1.AsInteger;
               mpvtpd2      := DM1.Tb_Ped01P1PVTPD2.AsInteger;
               mpvtpdesf    := DM1.Tb_Ped01P1PVTPDESF.AsInteger;
               mtpp         := DM1.Tb_Ped01P1TPP.AsInteger;
               mpvcom       := DM1.Tb_Ped01P1PVCOM.AsInteger;
               mpvactd      := DM1.Tb_Ped01P1PVACTD.AsInteger;
               mpvact00     := DM1.Tb_Ped01P1PVACT00.AsInteger;
               mpvact01     := DM1.Tb_Ped01P1PVACT01.AsInteger;
               mpvact99     := DM1.Tb_Ped01P1PVACT99.AsInteger;
               mpvdes       := DM1.Tb_Ped01P1PVDES.AsInteger;
               mpvdes1      := DM1.Tb_Ped01P1PVDES1.AsInteger;
               mpvdes2      := DM1.Tb_Ped01P1PVDES2.AsInteger;
               mpvdescf     := DM1.Tb_Ped01P1PVDESCF.AsInteger;
               mpvddescf    := DM1.Tb_Ped01P1PVDDESCF.AsInteger;
               mpvdiasdescf := DM1.Tb_Ped01P1PVDIASDESCF.AsInteger;
               mpvcom02     := DM1.Tb_Ped01P1PVCOM02.AsInteger;
               mpvcom03     := DM1.Tb_Ped01P1PVCOM03.AsInteger;
               end
            else
               begin
               NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
               mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
               mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
               mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
               mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
               mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
               mtpp         := DM1.Tb_PVPVTPP.AsInteger;
               mpvcom       := DM1.Tb_PVPVCOM.Value;
               mpvactd      := DM1.Tb_PVPVACTD.Value;
               mpvact00     := DM1.Tb_PVPVACT00.Value;
               mpvact01     := DM1.Tb_PVPVACT01.Value;
               mpvact99     := DM1.Tb_PVPVACT99.Value;
               mpvdes       := DM1.Tb_PVPVDES.Value;
               mpvdes1      := DM1.Tb_PVPVDES1.Value;
               mpvdes2      := DM1.Tb_PVPVDES2.Value;
               mpvdescf     := DM1.Tb_PVPVDESCF.Value;
               mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
               mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
               mpvcom02     := DM1.Tb_PVPVCOM02.Value;
               mpvcom03     := DM1.Tb_PVPVCOM03.Value;
               Frm_PVO.Tb_Po99_NOV.Close;
               Frm_PVO.Tb_Po99_NOV.SQL.Clear;
               Frm_PVO.Tb_Po99_NOV.SQL.add('Select PV2CODEMP as POCODEMP, '
                                      +' PV2PRAZO as POPRAZO from CADPV2 '
                                      +' where '
                                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                                      +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                                      +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                                      +' order by PV2PRAZO');
               Frm_PVO.Tb_Po99_NOV.Open;
               end;
            end;
         end;

       RG_TPENT.ItemIndex:=DM1.Tb_Ped01P1TIPENT.AsInteger;
       if RG_TPENT.ItemIndex=1 then
          begin
          Frm_PonVen.TAXENT.Text:=FormatFloat(mcasas, DM4.Tb_Par01pvalfre.Value);
          mvalfre:=DM4.Tb_Par01PVALFRE.Value;
          end
       else
          begin
          Frm_PonVen.TAXENT.Text:='';
          mvalfre:=DM4.Tb_Par01PVALFRE.Value;
          end;
       NAUT.Text:=DM1.Tb_Ped01P1NAUT.Value;
       OBS1.Text:=DM1.Tb_Ped01P1OBS1.Value;
       OBS2.Text:=DM1.Tb_Ped01P1OBS2.Value;
       OBS3.Text:=DM1.Tb_Ped01P1OBS3.Value;
       // INICIO

       macreger:=DM1.Tb_PargerPACREGER.Value;
      end;
   end;
end;

procedure TFrm_PvAb.OBS1Exit(Sender: TObject);
begin
if (length(OBS1.Text)>59) then
   OBS1.Text:=copy(OBS1.Text,1,60);

end;

procedure TFrm_PvAb.OBS2Exit(Sender: TObject);
begin
if (length(OBS2.Text)>59) then
   OBS2.Text:=copy(OBS2.Text,1,60);

end;

procedure TFrm_PvAb.OBS3Exit(Sender: TObject);
begin
if (length(OBS3.Text)>59) then
   OBS3.Text:=copy(OBS3.Text,1,60);

end;

procedure TFrm_PvAb.OBS1KeyPress(Sender: TObject; var Key: Char);
begin
if (length(OBS1.Text)>59) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_PvAb.OBS2KeyPress(Sender: TObject; var Key: Char);
begin
if (length(OBS2.Text)>59) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_PvAb.OBS3KeyPress(Sender: TObject; var Key: Char);
begin
if (length(OBS3.Text)>59) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_PvAb.RG_TPPCOExit(Sender: TObject);
begin
if RG_TPPCO.ItemIndex<>mtpPco_ant then
   begin
   if fValidaSenha(0,codusr,21,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração do Tipo de Preço Padrão','')<>0 then
      begin
      fMensagem('Alteração não Aceita!',0,['0'],0);
      RG_TPPCO.ItemIndex:=mtpPco_ant;
      exit;
      end;
   end;
if RG_TPPCO.ItemIndex=1 then
   begin
   lbl_preco.Visible:=True;
   MDATAREAJ.Visible:=true;
   end
else
   begin
   lbl_preco.Visible:=False;
   MDATAREAJ.Visible:=False;
   end;

end;

procedure TFrm_PvAb.MDATAREAJExit(Sender: TObject);
begin
mdtreaj:=StrToDate(MDATAREAJ.Text);
end;

procedure TFrm_PvAb.CODDEPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9'])  then
   key:=#8;

end;

procedure TFrm_PvAb.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
mpvcodcli:=ValFloat(CODCLI.Text);
mpvcodven:=Valint(CODVEN.Text);
mpvcodpv :=ValInt(CODPV.Text);
mpvcodcv :=ValInt(CODCON.Text);
mpvtabpv :=CB_TABPV.Text;
mpvobs1  :=obs1.text;
mpvobs2  :=obs2.text;
mpvobs3  :=obs3.text;
mpvnaut  :=NAUT.Text;

end;

procedure TFrm_PvAb.CB_TABPVExit(Sender: TObject);
begin
with CB_TABPV do ItemIndex:=items.IndexOf(CB_TABPV.Text);
CB_TABPV.text:=CB_TABPV.Items.Strings[CB_TABPV.ItemIndex];
if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'CV') and
   (CB_TABPV.Text<>'PO') then
   begin
   fMensagem('Tabelas Válidas "AV","AP","PP","PO","CV"',0,['0'],0);
   exit;
   end;
if not CODPV.Focused then
   begin
   if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
      begin
      NOMPV.Text:='Plano Opcional(Digitado)';
      Frm_PvO.ShowModal;
      mpvtdc       := Frm_PVO.CB_PVTPDC.ItemIndex;
      mpvtc        := Frm_PVO.CB_PVTPC.ItemIndex;
      mpvtpd1      := Frm_PVO.CB_PVTPD1.ItemIndex;
      mpvtpd2      := Frm_PVO.CB_PVTPD2.ItemIndex;
      mpvtpdesf    := Frm_PVO.CB_PVTPDESF.ItemIndex;
      mtpp         := Frm_PVO.CB_TPP.ItemIndex;
      mpvcom       := valfloat(Frm_PVO.COM.Text);
      mpvactd      := valfloat(Frm_PVO.ACTD.Text);
      mpvact00     := valfloat(Frm_PVO.ACT00.Text);
      mpvact01     := ValFloat(Frm_PVO.ACT01.Text);
      mpvact99     := ValFloat(Frm_PVO.ACT99.Text);
      mpvdes       := ValFloat(Frm_PVO.DES.Text);
      mpvdes1      := ValFloat(Frm_PVO.DES1.Text);
      mpvdes2      := ValFloat(Frm_PVO.DES2.Text);
      mpvdescf     := ValFloat(Frm_PVO.DESCF.Text);
      mpvddescf    := Frm_PVO.CB_PVDDESCF.ItemIndex;
      mpvdiasdescf := StrToInt('0'+Trim(Frm_PVO.DIASDESCF.Text));
      mpvcom02     := ValFloat(Frm_PVO.COM02.Text);
      mpvcom03     := ValFloat(Frm_PVO.COM03.Text);
      end
   else
      begin
      flcadpv(1,0,CB_TABPV.Text,CODpv.Text);
      if DM1.Tb_PV.Eof then
         begin
         fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
         CB_TABPV.SetFocus;
         end
      else
         begin
         mpacreconv:=0;
         if CB_TABPV.Text='CV' then
            begin
            if DM1.Tb_CliCCODCV.Value<=0 then
               begin
               fMensagem('Cliente não Possui Convênio!',0,['0'],0);
               CB_TABPV.SetFocus;
               exit;
               end;
            if flqr1('CVRAZAO,CVACFIN','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
               mpacreconv:=DM1.Query1.Fields[1].AsFloat;
            end;
         NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
         mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
         mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
         mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
         mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
         mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
         mtpp         := DM1.Tb_PVPVTPP.AsInteger;
         mpvcom       := DM1.Tb_PVPVCOM.Value;
         mpvactd      := DM1.Tb_PVPVACTD.Value;
         mpvact00     := DM1.Tb_PVPVACT00.Value;
         mpvact01     := DM1.Tb_PVPVACT01.Value;
         mpvact99     := DM1.Tb_PVPVACT99.Value;
         mpvdes       := DM1.Tb_PVPVDES.Value;
         mpvdes1      := DM1.Tb_PVPVDES1.Value;
         mpvdes2      := DM1.Tb_PVPVDES2.Value;
         mpvdescf     := DM1.Tb_PVPVDESCF.Value;
         mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
         mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
         mpvcom02     := DM1.Tb_PVPVCOM02.Value;
         mpvcom03     := DM1.Tb_PVPVCOM03.Value;
         Frm_PVO.Tb_Po99_NOV.Close;
         Frm_PVO.Tb_Po99_NOV.SQL.Clear;
         Frm_PVO.Tb_Po99_NOV.SQL.add('Select PV2CODEMP as POCODEMP, '
                                +' PV2PRAZO as POPRAZO from CADPV2 '
                                +' where '
                                +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                                +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                                +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                                +' order by PV2PRAZO');
         Frm_PVO.Tb_Po99_NOV.Open;
        end;
      end;
   end;

end;

procedure TFrm_PvAb.NAUTExit(Sender: TObject);
begin
if not fTestaTam(0,40,NAUT.Text,'') then
   NAUT.Text:=copy(NAUT.Text,1,40);
end;

procedure TFrm_PvAb.NAUTKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,40,NAUT.Text,key) then
   key:=#0;

end;

procedure TFrm_PvAb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
