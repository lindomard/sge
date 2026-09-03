unit S_FPgto_Comp;

interface

uses                                   
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, S_DM1, func,
  Db, DBTables,lerarq,S_Cli,S_LOptica,func2;


type
  TFrm_FPgto_Comp = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bbBaixar: TBitBtn;
    BBCancelar: TBitBtn;
    BBSair: TBitBtn;
    Tb_Ldr: TQuery;
    Qr_Ldr: TQuery;
    Qr_LdrCODEMP: TFloatField;
    Qr_LdrDATADP: TDateTimeField;
    Qr_LdrCODLDR: TFloatField;
    Qr_LdrDATAREAL: TDateTimeField;
    Qr_LdrDATAREF: TDateTimeField;
    Qr_LdrVALORP: TFloatField;
    Qr_LdrVALORR: TFloatField;
    Qr_LdrCODBCO: TFloatField;
    Qr_LdrCODCC: TStringField;
    Qr_LdrCODDEP: TStringField;
    Qr_LdrNATDC: TStringField;
    Qr_LdrDESCMV: TStringField;
    Qr_LdrNUMDOC: TStringField;
    Qr_LdrNUMDOC2: TStringField;
    Qr_LdrORIGEM: TFloatField;
    Qr_LdrSTATUS: TFloatField;
    Qr_LdrTIPO: TStringField;
    Qr_LdrCODIGO: TFloatField;
    Qr_LdrUSREXC: TFloatField;
    Qr_LdrDTHREXC: TDateTimeField;
    Qr_LdrUSRALT: TFloatField;
    Qr_LdrDTALT: TDateTimeField;
    Panel5: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    RadioGroup1: TRadioGroup;
    NUMCHQ: TEdit;
    BANCO: TEdit;
    SERIE: TEdit;
    VALOR: TEdit;
    EMITENTE: TEdit;
    CPF: TEdit;
    RG: TEdit;
    CONTA: TEdit;
    DTNAS: TMaskEdit;
    DTDEP: TMaskEdit;
    AGENCIA: TEdit;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    HeaderControl3: THeaderControl;
    Panel6: TPanel;
    HeaderControl4: THeaderControl;
    STG_CHQ: TStringGrid;
    RG_TIPO: TRadioGroup;
    Panel3: TPanel;
    Label17: TLabel;
    TOTDES: TEdit;
    Label18: TLabel;
    TOTACRE: TEdit;
    Label16: TLabel;
    TOTLIQ: TEdit;
    Label2: TLabel;
    TOTCUP: TEdit;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Label1: TLabel;
    TOTPED: TEdit;
    Label14: TLabel;
    TOTREC: TEdit;
    Label15: TLabel;
    TOTRES: TEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    lbl_fantasia: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    lbl_cnpj: TLabel;
    lbl_ie: TLabel;
    Label28: TLabel;
    CODCLI: TEdit;
    RAZSOC: TEdit;
    FANTASIA: TEdit;
    ENDERECO: TEdit;
    BAIRRO: TEdit;
    CIDADE: TEdit;
    UF: TEdit;
    CEP: TMaskEdit;
    IE: TEdit;
    FONE: TMaskEdit;
    lbl_compens: TLabel;
    COMPENS: TEdit;
    RG_TPPESSOA: TRadioGroup;
    CNPJ: TMaskEdit;
    st_leitor: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure NUMCHQExit(Sender: TObject);
    procedure NUMCHQKeyPress(Sender: TObject; var Key: Char);
    procedure BANCOExit(Sender: TObject);
    procedure VALORExit(Sender: TObject);
    procedure DTDEPExit(Sender: TObject);
    procedure VALORKeyPress(Sender: TObject; var Key: Char);
    procedure DTNASExit(Sender: TObject);
    procedure RadioGroup1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure bbBaixarClick(Sender: TObject);
    procedure BBCancelarClick(Sender: TObject);
    procedure BBSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RG_TIPOClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TOTDESExit(Sender: TObject);
    procedure TOTACREExit(Sender: TObject);
    procedure TOTLIQExit(Sender: TObject);
    procedure CPFKeyPress(Sender: TObject; var Key: Char);
    procedure TOTDESKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure RAZSOCExit(Sender: TObject);
    procedure FANTASIAExit(Sender: TObject);
    procedure ENDERECOExit(Sender: TObject);
    procedure BAIRROExit(Sender: TObject);
    procedure CIDADEExit(Sender: TObject);
    procedure UFExit(Sender: TObject);
    procedure CEPExit(Sender: TObject);
    procedure IEExit(Sender: TObject);
    procedure FONEExit(Sender: TObject);
    procedure RG_TPPESSOAClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure NUMCHQKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NUMCHQEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function ffpgto_CompCarregaCli(ptipo: Integer): boolean;
var
  Frm_FPgto_Comp: TFrm_FPgto_Comp;
  mtottax, mtotpag: Real;
  macres,mdesc: Real;

implementation

uses S_PonVen,S_Fpgto, S_DM4;

{$R *.DFM}

procedure TFrm_FPgto_Comp.FormCreate(Sender: TObject);
begin
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
while not DM1.Qr_FP.Eof do
   begin
   RadioGroup1.Items.Add(Formatfloat('00',DM1.Qr_FPFPCODIGO.Value)+'-'+DM1.Qr_FPFPDESC.Value);
   DM1.Qr_FP.Next;
   end;
//flcadldr(0,0,'9999999');
RadioGroup1.ItemIndex:=0;
DM1.Qr_FP.Locate('FPCODIGO',RadioGroup1.ItemIndex,[]);
mconcluiu:=False;
STG_CHQ.RowCount:=2;
STG_CHQ.Rows[1].Clear;

STG_CHQ.Cells[00,00]:='Forma Pgto';
STG_CHQ.Cells[01,00]:='Número';
STG_CHQ.Cells[02,00]:='Banco';
STG_CHQ.Cells[03,00]:='Série';
STG_CHQ.Cells[04,00]:='Agencia';
STG_CHQ.Cells[05,00]:='Emitente';
STG_CHQ.Cells[06,00]:='Valor';
STG_CHQ.Cells[07,00]:='CNPJ/CNPF';
STG_CHQ.Cells[08,00]:='Inscrição/RG';
STG_CHQ.Cells[09,00]:='C/C';
STG_CHQ.Cells[10,00]:='Dt.Emissão';
STG_CHQ.Cells[11,00]:='Cód.Cli';
STG_CHQ.Cells[12,00]:='Dt.Nasc.';
STG_CHQ.Cells[13,00]:='Dt.Depos.';
STG_CHQ.Cells[14,00]:='cod.Forma';
STG_CHQ.Cells[15,00]:='Compens';

end;

procedure TFrm_FPgto_Comp.NUMCHQExit(Sender: TObject);
begin
if not (BBSair.Focused) and not (BBCancelar.Focused) then
   begin
   if StrToInt('0'+NUMCHQ.Text)<=0 then
      begin
      ShowMessage('Numero do Cheque Campo Obrigatorio!');
      NUMCHQ.SetFocus;
      end
   else
      st_leitor.Visible:=false;
   end
else
   st_leitor.Visible:=false;
end;

procedure TFrm_FPgto_Comp.NUMCHQKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_FPgto_Comp.BANCOExit(Sender: TObject);
begin
if not (BBSair.Focused) and not (BBCancelar.Focused) then
   begin
   if StrToInt('0'+BANCO.Text)<=0 then
      begin
      ShowMessage('Código do Banco Campo Obrigatório!');
      BANCO.SetFocus;
      end;
   end;


end;

procedure TFrm_FPgto_Comp.VALORExit(Sender: TObject);
begin
if (BBSair.Focused) or (BBCancelar.Focused) or (bbBaixar.Focused) then
   exit;
if valfloat(VALOR.Text)<=0 then
   begin
   ShowMessage('Campo com Preenchimento Obrigatório!');
   VALOR.Setfocus;
   end
else
   valor.Text:=FormatFloat('#####0.00',ValFloat(VALOR.Text));
end;

procedure TFrm_FPgto_Comp.DTDEPExit(Sender: TObject);
begin
if Trim(DTDEP.Text)='/  /' then
   begin
   ShowMessage('Preenchimento Obrigatório!');
   DTDEP.SetFocus;
   end
else
   DTDEP.Text:=FormatDateTime(fdt2,StrToDate(DTDEP.Text));

end;

procedure TFrm_FPgto_Comp.VALORKeyPress(Sender: TObject; var Key: Char);
begin
If Key in ['.',','] then Key:=DecimalSeparator
else If (Key<>#8) and not (Key in ['0'..'9']) then Key:=#0;

end;

procedure TFrm_FPgto_Comp.DTNASExit(Sender: TObject);
begin
if Trim(DTNAS.Text)<>'/  /' then
   DTNAS.Text:=FormatDateTime(fdt2,StrToDate(DTNAS.Text));

end;

procedure TFrm_FPgto_Comp.RadioGroup1Exit(Sender: TObject);
var
mvalor: Real;
mqtd: Integer;
begin
if (NUMCHQ.Focused) or (VALOR.Focused) then
   begin
   mvalor:=valfloat(TOTLIQ.Text);
   for mqtd:=1 to STG_CHQ.RowCount do
      begin
      if Trim(STG_CHQ.Cells[00,mqtd])='' then
         continue;
      DM1.Qr_FP.Locate('FPCODIGO',StrToFloat('0'+STG_CHQ.Cells[14,mqtd]),[]);
      if DM1.Qr_FPFPTIPO.Value=1 then
         mvalor:=mvalor+Valfloat(STG_CHQ.Cells[06,mqtd])
      else
         mvalor:=mvalor-valfloat(STG_CHQ.Cells[06,mqtd]);
      end;
   DM1.Qr_FP.Locate('FPCODIGO',RadioGroup1.ItemIndex,[]);
   VALOR.Text:=FormatFloat('#####0.00',mvalor);
   if DM1.Qr_FPFPNUM.Value=1 then
      begin
      Label3.Enabled:=True;
      Label4.Enabled:=True;
      Label5.Enabled:=True;
      Label13.Enabled:=True;
      Label10.Enabled:=True;
      Label12.Enabled:=True;
      Label7.Enabled :=True;
      Label8.Enabled :=True;
      Label9.Enabled :=True;
      Label11.Enabled:=True;
      NUMCHQ.Enabled :=True;
      BANCO.Enabled  :=True;
      SERIE.Enabled  :=True;
      AGENCIA.Enabled:=True;
      CONTA.Enabled  :=True;
      DTDEP.Enabled  :=True;
      EMITENTE.Enabled:=True;
      CPF.Enabled    :=True;
      RG.Enabled     :=True;
      DTNAS.Enabled  :=True;
      COMPENS.Enabled:=true;
      lbl_compens.Enabled:=True;

      COMPENS.Text   :='';
      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      DTDEP.Text     :=FormatDateTime(fdt2,date);
      EMITENTE.Text  :=DM1.Tb_CliCRAZAO.Value;
      if DM1.Tb_CliCCNPJ.Value>0 then
         begin
         CPF.Text:=FormatFloat('00"."000"."000"/"0000"-"00', DM1.Tb_CliCCNPJ.Value);
         RG.Text        :=DM1.Tb_CliCIE.Value;

         end
      else
         begin
         CPF.Text:=FormatFloat('000"."000"."000"-"00'      , DM1.Tb_CliCCPF.Value);
         RG.Text        :=DM1.Tb_CliCRG.Value;
         end;
      if Not conta.Focused then
         NUMCHQ.SetFocus;
      end
   else
      begin
      Label3.Enabled:=False;
      Label4.Enabled:=False;
      Label5.Enabled:=False;
      Label13.Enabled:=False;
      Label10.Enabled:=False;
      Label12.Enabled:=False;
      Label7.Enabled :=False;
      Label8.Enabled :=False;
      Label9.Enabled :=False;
      Label11.Enabled:=False;
      NUMCHQ.Enabled :=False;
      BANCO.Enabled  :=False;
      SERIE.Enabled  :=False;
      AGENCIA.Enabled:=False;
      CONTA.Enabled  :=False;
      DTDEP.Enabled  :=False;
      EMITENTE.Enabled:=False;
      CPF.Enabled    :=False;
      RG.Enabled     :=False;
      DTNAS.Enabled  :=False;
      COMPENS.Enabled:=False;
      lbl_compens.Enabled:=False;

      NUMCHQ.Text    :='';
      BANCO.Text     :='';
      SERIE.Text     :='';
      AGENCIA.Text   :='';
      CONTA.Text     :='';
      DTDEP.Text     :='';
      EMITENTE.Text  :='';
      CPF.Text       :='';
      RG.Text        :='';
      DTNAS.Text     :='';
      COMPENS.Text   :='';
      VALOR.SetFocus;
      end;
   end;

end;

procedure TFrm_FPgto_Comp.BitBtn2Click(Sender: TObject);
var
mvalor: Real;
mqtd: Integer;
begin
if Valfloat(VALOR.Text)<=0 then
   begin
   MessageDlg('Valor invalido!',mtWarning,[mbOk],0);
   exit;
   end;
mqtd:=STG_CHQ.RowCount;
STG_CHQ.Cells[00,mqtd-1]:=DM1.Qr_FPFPDESC.Value;
STG_CHQ.Cells[01,mqtd-1]:=NUMCHQ.Text;
STG_CHQ.Cells[02,mqtd-1]:=BANCO.Text;
STG_CHQ.Cells[03,mqtd-1]:=SERIE.Text;
STG_CHQ.Cells[04,mqtd-1]:=AGENCIA.Text;
STG_CHQ.Cells[05,mqtd-1]:=EMITENTE.Text;
STG_CHQ.Cells[06,mqtd-1]:=VALOR.Text;
STG_CHQ.Cells[07,mqtd-1]:=CPF.Text;
STG_CHQ.Cells[08,mqtd-1]:=RG.Text;
STG_CHQ.Cells[09,mqtd-1]:=CONTA.Text;
STG_CHQ.Cells[10,mqtd-1]:=FormatDateTime(fdt2, pdatasis);
STG_CHQ.Cells[11,mqtd-1]:=DM1.Tb_CliCCODCLI.AsString;
STG_CHQ.Cells[12,mqtd-1]:=DTNAS.Text;
STG_CHQ.Cells[13,mqtd-1]:=DTDEP.Text;
STG_CHQ.Cells[14,mqtd-1]:=DM1.Qr_FPFPCODIGO.AsString;
STG_CHQ.Cells[15,mqtd-1]:=COMPENS.Text;
STG_CHQ.RowCount:=mqtd+1;

   Label3.Enabled:=False;
   Label4.Enabled:=False;
   Label5.Enabled:=False;
   Label13.Enabled:=False;
   Label10.Enabled:=False;
   Label12.Enabled:=False;
   Label7.Enabled :=False;
   Label8.Enabled :=False;
   Label9.Enabled :=False;
   Label11.Enabled:=False;
   NUMCHQ.Enabled :=False;
   BANCO.Enabled  :=False;
   SERIE.Enabled  :=False;
   AGENCIA.Enabled:=False;
   CONTA.Enabled  :=False;
   DTDEP.Enabled  :=False;
   EMITENTE.Enabled:=False;
   CPF.Enabled    :=False;
   RG.Enabled     :=False;
   DTNAS.Enabled  :=False;
   COMPENS.Enabled:=False;
   lbl_compens.Enabled:=False;

   NUMCHQ.Text    :='';
   BANCO.Text     :='';
   SERIE.Text     :='';
   AGENCIA.Text   :='';
   CONTA.Text     :='';
   DTDEP.Text     :='';
   EMITENTE.Text  :='';
   CPF.Text       :='';
   RG.Text        :='';
   DTNAS.Text     :='';
   VALOR.Text     :='';
   COMPENS.Text   :='';

mvalor:=0;
for mqtd:=1 to STG_CHQ.RowCount do
   begin
   if Trim(STG_CHQ.Cells[00,mqtd])='' then
      continue;
   DM1.Qr_FP.Locate('FPCODIGO',StrToFloat('0'+STG_CHQ.Cells[14,mqtd]),[]);
   if DM1.Qr_FPFPTIPO.Value=1 then
      mvalor:=mvalor+Valfloat(STG_CHQ.Cells[06,mqtd])
   else
      mvalor:=mvalor-valfloat(STG_CHQ.Cells[06,mqtd]);
   end;
TOTPED.Text:=TOTLIQ.Text;
TOTREC.Text:=FormatFloat(mcasas, (mvalor*-1));
mvalor:=mvalor+valfloat(TOTLIQ.Text);
TOTRES.Text:=FormatFloat(mcasas, mvalor);
if mvalor=0 then
   bbBaixar.SetFocus
else
   RadioGroup1.SetFocus;

end;

procedure TFrm_FPgto_Comp.BitBtn4Click(Sender: TObject);
var
mens: String;
mqtd: Integer;
begin
mqtd:=STG_CHQ.Row;

if Trim(STG_CHQ.Cells[00,mqtd])='' then
   exit;
mens:='Quer realmente excluir a a forma de pagamento: '+STG_CHQ.Cells[00,mqtd]+chr(13)
     +' Valor: '+STG_CHQ.Cells[06,mqtd];

if fmensagem(pchar(mens),0,['1','2'],2)=mryes then
   begin
   if STG_CHQ.RowCount=2 then
      STG_CHQ.Rows[1].Clear
   else
      begin
      for mqtd:=STG_CHQ.Row to STG_CHQ.RowCount do
         begin
         STG_CHQ.Cells[00,mqtd]:=STG_CHQ.Cells[00,mqtd+1];
         STG_CHQ.Cells[01,mqtd]:=STG_CHQ.Cells[01,mqtd+1];
         STG_CHQ.Cells[02,mqtd]:=STG_CHQ.Cells[02,mqtd+1];
         STG_CHQ.Cells[03,mqtd]:=STG_CHQ.Cells[03,mqtd+1];
         STG_CHQ.Cells[04,mqtd]:=STG_CHQ.Cells[04,mqtd+1];
         STG_CHQ.Cells[05,mqtd]:=STG_CHQ.Cells[05,mqtd+1];
         STG_CHQ.Cells[06,mqtd]:=STG_CHQ.Cells[06,mqtd+1];
         STG_CHQ.Cells[07,mqtd]:=STG_CHQ.Cells[07,mqtd+1];
         STG_CHQ.Cells[08,mqtd]:=STG_CHQ.Cells[08,mqtd+1];
         STG_CHQ.Cells[09,mqtd]:=STG_CHQ.Cells[09,mqtd+1];
         STG_CHQ.Cells[10,mqtd]:=STG_CHQ.Cells[10,mqtd+1];
         STG_CHQ.Cells[11,mqtd]:=STG_CHQ.Cells[11,mqtd+1];
         STG_CHQ.Cells[12,mqtd]:=STG_CHQ.Cells[12,mqtd+1];
         STG_CHQ.Cells[13,mqtd]:=STG_CHQ.Cells[13,mqtd+1];
         STG_CHQ.Cells[14,mqtd]:=STG_CHQ.Cells[14,mqtd+1];
         STG_CHQ.Cells[15,mqtd]:=STG_CHQ.Cells[15,mqtd+1];
         end;
      end;
   STG_CHQ.RowCount:=STG_CHQ.RowCount-1;
   end;

end;

procedure TFrm_FPgto_Comp.bbBaixarClick(Sender: TObject);
var
mqtdchq: Integer;
mtotdup, mtotpag: Real;
mlanfor: Boolean;
mdoc: String;
pParFgto,mqtd: Integer;
mvalacre, mvaldes: Real;
begin
mtotdup:=0;
mtotpag:=0;
mtotdup:=valfloat(TOTREC.Text);
for mqtd:=1 to STG_CHQ.RowCount do
   begin
   DM1.Qr_Fp.Locate('FPCODIGO',ValFloat(STG_CHQ.Cells[14,mqtd]),[]);
   if DM1.Qr_FPFPTIPO.Value=1 then
      mtotpag:=mtotpag-ValFloat(STG_CHQ.Cells[06,mqtd])
   else
      mtotpag:=mtotpag+ValFloat(STG_CHQ.Cells[06,mqtd]);

   end;
mtotpag:=StrToFloat(Formatfloat('#####0.00',mtotpag));
mtotdup:=StrToFloat(Formatfloat('#####0.00',mtotdup));

if mtotdup<>mtotpag then
   begin
   ShowMessage('Total do Pedido........... '+FormatFloat('#####0.00',mtotdup)+#13
              +'Total do(s) Pagamento(s).. '+FormatFloat('#####0.00',mtotpag)+#13
              +'Favor Corrigir!');
   exit;
   end;

if MessageDlg('Confirma a Baixa do Pedido Acima?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
   begin
   if mlocorigem=0 then
      begin
      if not fpvgravap1(1,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text)) then
         begin
         MessageDlg('Erro ao Tentar Gravar o Pedido: '+FloatTostr(mchaveped)+', Chame-o Suporte!',mtWarning,[mbOK],0);
         exit;
         end;
      end;
{   if not flcadp01(0,0,FloatToStr(mchaveped),pvazio) then
      begin
      MessageDlg('Erro ao Ler Pedido.',mtError,[mbOk],0);
      exit;
      end;
}   fAjustaEcfAberto(5,mchaveped);
   mvlracre:=ValFloat(TOTACRE.Text);
   mdesped :=ValFloat(TOTDES.Text);
   mvalacre:=ValFloat(TOTACRE.Text);
   mvaldes :=ValFloat(TOTDES.Text);

   if DM1.Tb_Ped01P1ACREGER.Value>0 then
      begin
      iretorno:=fpvecf_Bema(0,10,0,0,DM1.Tb_Ped01P1ACREGER.Value,0,0,0);
      if iretorno<>1 then
         MessageDlg('Erro ao Lancar taxa Associativa: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
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

   mlanfor:=False;
   flcadp01v(0,0,ls_numped,FloatToStr(mchaveped),pvazio);
   mqtdchq:=0;
   While not DM1.Tb_Ped01V.Eof do
      begin
      if mdoc='' then
         mdoc:=Formatfloat('000000',DM1.Tb_Ped01P1NUMCF.Value)+'/'+chr(65+mqtdchq)
      else
         mdoc:=mdoc+'/'+chr(65+mqtdchq);
      DM1.Tb_Ped01V.Next;
      end;
   iretorno:=fpvecf_Bema(0,4,0,mvaldes,mvalacre,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro '+IntTostr(iRetorno)+'  ao Lancar: '+DM1.Tb_PargerPTITAGER.Value,mtWarning,[mbOk],0);

   for mqtdchq:=1 to STG_CHQ.RowCount do
      begin
      if Trim(STG_chq.cells[00,mqtdchq])='' then
         continue;
      if ValInt(STG_CHQ.Cells[14,mqtdchq])=0 then
         begin
         pobscupom:='Dinheiro';
         pobscupom2:=' ';
         pParFgto  :=0;
         end
      else if ValInt(STG_CHQ.Cells[14,mqtdchq])=1 then
         begin
         pobscupom:='CHEQUE';
         pobscupom2:='IMEDIATO';
         pParFgto  :=1;
         end
      else if ValInt(STG_CHQ.Cells[14,mqtdchq])=2 then
         begin
         pobscupom:='CHEQUE';
         if Trim(STG_CHQ.Cells[13,mqtd-1])='/  /' then
            pobscupom2:=''
         else
            pobscupom2:='p/ '+STG_CHQ.Cells[13,mqtd-1];
         pParFgto  :=1;
         end
      else if ValInt(STG_CHQ.Cells[14,mqtdchq])=3 then
         begin
         pobscupom:='ELETRON';
         pobscupom2:='';
         pParFgto  :=4;
         end
      else if ValInt(STG_CHQ.Cells[14,mqtdchq])=4 then
         begin
         pobscupom:='CARTAO VISA';
         pobscupom2:='';
         pParFgto  :=4;
         end
      else if ValInt(STG_CHQ.Cells[14,mqtdchq])=5 then
         begin
         pobscupom:='MASTERCARD';
         pobscupom2:='';
         pParFgto  :=4;
         end
      else if ValInt(STG_CHQ.Cells[14,mqtdchq])=6 then
         begin
         pobscupom:='AMERICANEXPRESS';
         pobscupom2:='';
         pParFgto  :=4;

         end;
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

      fpvecf_Bema(0,6,0,0,0,valFloat(STG_CHQ.Cells[06,mqtdchq]),0,pParFgto);

      if (DM1.Tb_PargerPTIPOTEF.Value=2) or (codemp>99) then
         begin
         ffpgtolanfor(ValInt(STG_CHQ.Cells[14,mqtdchq]),//codigo da forma
                   ValInt(STG_CHQ.Cells[02,mqtdchq]), // codigodo banco
                   valFloat(STG_CHQ.Cells[06,mqtdchq]), // Valor Recebido
                   mvlracre,mdesped,
                   valfloat(STG_CHQ.Cells[07,mqtdchq]), // cpj cnpj
                   mdoc,
                   STG_CHQ.Cells[03,mqtdchq], // serie
                   STG_CHQ.Cells[05,mqtdchq], // emitente
                   STG_CHQ.Cells[08,mqtdchq], // ie/rg
                   STG_CHQ.Cells[09,mqtdchq], // c/c
                   STG_CHQ.Cells[04,mqtdchq], // agencia
                   STG_CHQ.Cells[15,mqtdchq], // compensaçao
                   trim(STG_CHQ.Cells[01,mqtdchq]), // Numero do cheque
                   iif(Trim(STG_CHQ.Cells[12,mqtd-1])='/  /','',STG_CHQ.Cells[12,mqtd-1]), // data nascimento
                   iif(Trim(STG_CHQ.Cells[10,mqtd-1])='/  /','',STG_CHQ.Cells[10,mqtd-1]), // data emissao
                   iif(Trim(STG_CHQ.Cells[13,mqtd-1])='/  /','',STG_CHQ.Cells[13,mqtd-1])); // data deposito
         end;
      mvlracre:=0;
      mdesped:=0;
      if not mlanfor then
         begin
         mlanfor:=True;
         end;
      end;
   pobscupom:=insere2('CLIENT:'+FormatFloat('00000',valFloat(CODCLI.Text))
             +'-'+RAZSOC.Text,' ',mtaml-6);
   pobscupom:=pobscupom+' '+FormatFloat('00000',mchaveped);
   if Trim(ENDERECO.Text)<>'' then
      pobscupom:=pobscupom+insere2('ENDER.: '+ENDERECO.Text,' ',mtaml);
   if (trim(BAIRRO.Text)<>'') or (TRIM(CIDADE.Text)<>'') or (trim(UF.Text)<>'') then
      pobscupom:=pobscupom+insere2(Trim(BAIRRO.Text)+' '+Trim(CIDADE.Text)+'-'+Trim(UF.Text),' ',mtaml);
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
      DM1.Tb_CSFCFRAZAO.Value :=RAZSOC.Text;
      DM1.Tb_CSFCFDENOM.Value :=FANTASIA.Text;
      DM1.Tb_CSFCFENDER.Value :=ENDERECO.Text;
      DM1.Tb_CSFCFBAIRRO.Value:=BAIRRO.Text;
      DM1.Tb_CSFCFCIDADE.Value:=CIDADE.Text;
      DM1.Tb_CSFCFUF.Value    :=UF.Text;
      DM1.Tb_CSFCFCEP.Value   :=CEP.Text;
      DM1.Tb_CSFCFTIPOC.Value :=0;
      DM1.Tb_CSFCFCGC.Value   :=fsonumero(CNPJ.Text);
      DM1.Tb_CSFCFIE.Value    :=IE.Text;
      DM1.Tb_CSFCFFONE.Value  :=FONE.Text;
      DM1.Tb_CSF.Post;
      end;
   mvlracre:=ValFloat(TOTACRE.Text);
   mdesped :=ValFloat(TOTDES.Text);

   ffpgtoefetuabaixa(0,ValFloat(TOTREC.Text),mvlracre,mdesped);
   mconcluiu:=True;
   fAjustaEcfAberto(1,mchaveped);
   mloteb:=0;
   close;
   end;

end;

procedure TFrm_FPgto_Comp.BBCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FPgto_Comp.BBSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FPgto_Comp.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
mens: String;
begin
mfpgto:=RG_TIPO.ItemIndex;
if not mconcluiu then
   begin
   mens:='Quer Realmente Sair e continuar Lançando Produto';
   if fmensagem(pchar(mens),0,['1','2'],2)<>MrYes then
      CanClose:=False;
   end;   
end;

procedure TFrm_FPgto_Comp.RG_TIPOClick(Sender: TObject);
begin
if (RG_tipo.ItemIndex=1) or (RG_TIPO.ItemIndex=2) then
   BitBtn1.Enabled:=True
else
   BitBtn1.Enabled:=False;
end;

procedure TFrm_FPgto_Comp.BitBtn1Click(Sender: TObject);
begin
if (RG_TIPO.itemIndex=2) then
   begin
   if (DM1.Tb_CliCCODCV.Value>0) then
      mconcluiu:=True
   else
      begin
      Messagedlg('Cliente não possui Convenio',mtWarning,[mbOk],0);
      RG_TIPO.SetFocus;
      exit;
      end;
   end;

if mlocorigem=0 then
   begin
   if not fpvgravap1(1,Valfloat(TOTACRE.Text),Valfloat(TOTDES.Text)) then
      begin
      MessageDlg('Erro ao Tentar Gravar o Pedido: '+FloatTostr(mchaveped)+', Chame-o Suporte!',mtWarning,[mbOK],0);
      exit;
      end;
   end;
flcadp01v(0,0,ls_numped,FloatToStr(mchaveped),pvazio);
if DM1.Tb_Ped01P1ACREGER.Value>0 then
   begin
   iretorno:=fpvecf_Bema(0,10,0,0,DM1.Tb_Ped01P1ACREGER.Value,0,0,0);
   if iretorno<>1 then
      MessageDlg('Erro ao Lancar taxa '+DM1.Tb_PargerPTITAGER.Value+': '+IntToStr(iRetorno),mtWarning,[mbOk],0);
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
      MessageDlg('Erro ao Lancar taxa de Convenio: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
   end;



iretorno:=fpvecf_Bema(0,4,0,ValFloat(TOTDES.Text),ValFloat(TOTACRE.Text),0,0,0);
if iretorno<>1 then
   MessageDlg('Erro '+IntTostr(iRetorno)+'  ao Lancar: '+DM1.Tb_PargerPTITAGER.Value,mtWarning,[mbOk],0);
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
fpvecf_Bema(0,6,0,0,0,ValFloat(TOTLIQ.Text),0,0);

pobscupom:=insere2('CLIENT:'+FormatFloat('00000',valFloat(CODCLI.Text))
          +'-'+RAZSOC.Text,' ',mtaml-6);
pobscupom:=pobscupom+' '+FormatFloat('00000',mchaveped);
if Trim(ENDERECO.Text)<>'' then
   pobscupom:=pobscupom+insere2('ENDER.: '+ENDERECO.Text,' ',mtaml);
if (trim(BAIRRO.Text)<>'') or (TRIM(CIDADE.Text)<>'') or (trim(UF.Text)<>'') then
   pobscupom:=pobscupom+insere2(Trim(BAIRRO.Text)+' '+Trim(CIDADE.Text)+'-'+Trim(UF.Text),' ',mtaml);
if DM1.Tb_Ped01P1CODCV.Value>0 then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',DM1.Tb_Ped01P1CODCV.AsString) then
      begin
      pobscupom:=pobscupom+insere2('Conv: '+DM1.Query1.Fields[0].AsString,' ',mtaml);
      end;
   end;
if length(pobscupom)>mtam_mens then
   pobscupom:=copy(pobscupom,1,mtam_mens);
fpvecf_Bema(0,5,0,ValFloat(TOTDES.Text),ValFloat(TOTACRE.Text),ValFloat(TOTLIQ.Text),0,0);
ffpgtoefetuabaixa(1,ValFloat(TOTLIQ.Text),ValFloat(TOTACRE.Text),ValFloat(TOTDES.Text));
FAJustaEcfAberto(1,mchaveped);
mconcluiu:=True;
mloteb:=0;
close;
end;

procedure TFrm_FPgto_Comp.TOTDESExit(Sender: TObject);
begin
TOTDES.Text:=FormatFloat(mcasas, ValFloat(TOTDES.Text));
TOTLIQ.Text:=FormatFloat(mcasas, Valfloat(TOTCUP.Text)+(valfloat(TOTACRE.Text)-ValFloat(TOTDES.Text)));
end;

procedure TFrm_FPgto_Comp.TOTACREExit(Sender: TObject);
begin
TOTACRE.Text:=FormatFloat(mcasas, ValFloat(TOTACRE.Text));

TOTLIQ.Text:=FormatFloat(mcasas, Valfloat(TOTCUP.Text)+(valfloat(TOTACRE.Text)-ValFloat(TOTDES.Text)));

end;

procedure TFrm_FPgto_Comp.TOTLIQExit(Sender: TObject);
var
mens: String;
begin
TOTLIQ.Text:=FormatFloat(mcasas, ValFloat(TOTLIQ.Text));

if arredonda(ValFloat(TOTLIQ.Text),2)<arredonda((Valfloat(TOTCUP.Text)+(valfloat(TOTACRE.Text)-ValFloat(TOTDES.Text))),2) then
   begin
   mens:='Valor Pago: '+TOTLIQ.Text+'Valor Devido: '+FormatFloat(mcasas, Valfloat(TOTCUP.Text)+(valfloat(TOTACRE.Text)-ValFloat(TOTDES.Text)))+#13
        +'O Pagamento é parcial ';
   if fmensagem(pchar(mens),0,['1','2'],2)<>mrYes then
      begin
      TOTLIQ.Text:=FormatFloat(mcasas, Valfloat(TOTCUP.Text)+(valfloat(TOTACRE.Text)-ValFloat(TOTDES.Text)));
      TOTLIQ.SetFocus;
      end;
   end;
end;

procedure TFrm_FPgto_Comp.CPFKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_FPgto_Comp.TOTDESKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   Key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;
function ffpgto_CompCarregaCli(ptipo: Integer): boolean;
begin
Frm_Fpgto_Comp.CODCLI.Text  :=DM1.Tb_CliCCODCLI.AsString;
Frm_Fpgto_Comp.RAZSOC.Text  :=DM1.Tb_CliCRAZAO.Value;
Frm_Fpgto_Comp.FANTASIA.Text:=DM1.Tb_CliCDENOM.Value;
Frm_Fpgto_Comp.ENDERECO.Text:=DM1.Tb_CliCLOG.Value;
Frm_Fpgto_Comp.BAIRRO.Text  :=DM1.Tb_CliCBAIRRO.Value;
Frm_Fpgto_Comp.CIDADE.Text  :=DM1.Tb_CliCCIDADE.Value;
Frm_Fpgto_Comp.UF.Text      :=DM1.Tb_CliCUF.Value;
Frm_Fpgto_Comp.CEP.Text     :=DM1.Tb_CliCCEP.Value;
Frm_Fpgto_Comp.FONE.Text    :=DM1.Tb_CliCFONERES.Value;

if DM1.Tb_CliCCNPJ.Value=0 then
   begin
   Frm_Fpgto_Comp.lbl_fantasia.Visible   :=False;
   Frm_Fpgto_Comp.FANTASIA.Visible       :=False;
   Frm_Fpgto_Comp.lbl_cnpj.Caption       :='CNPF.:';
   Frm_Fpgto_Comp.lbl_ie.Caption         :='Identidade.:';
   Frm_Fpgto_Comp.RG_TPPESSOA.ItemIndex  :=0;
   Frm_Fpgto_Comp.CNPJ.Text              :=FormatFloat('000"."000"."000-00', DM1.Tb_CliCCPF.Value);
   Frm_Fpgto_Comp.IE.Text                :=DM1.Tb_CliCRG.Value;
   end
else
   begin
   Frm_Fpgto_Comp.RG_TPPESSOA.ItemIndex  :=1;
   Frm_Fpgto_Comp.CNPJ.Text              :=FormatFloat('00"."000"."000"."0000-00"', DM1.Tb_CliCCNPJ.Value);
   Frm_Fpgto_Comp.IE.Text                :=DM1.Tb_CliCIE.Value;
   Frm_Fpgto_Comp.lbl_fantasia.Visible   :=true;
   Frm_Fpgto_Comp.FANTASIA.Visible       :=true;
   Frm_Fpgto_Comp.lbl_cnpj.Caption       :='CNPJ.:';
   Frm_Fpgto_Comp.lbl_ie.Caption         :='IE..:';
   end;

if DM1.Tb_CliCCODCLI.Value<3 then
   begin
   Frm_Fpgto_Comp.RAZSOC.Enabled  :=True;
   Frm_Fpgto_Comp.FANTASIA.Enabled:=True;
   Frm_Fpgto_Comp.ENDERECO.Enabled:=True;
   Frm_Fpgto_Comp.BAIRRO.Enabled  :=True;
   Frm_Fpgto_Comp.CIDADE.Enabled  :=True;
   Frm_Fpgto_Comp.UF.Enabled      :=True;
   Frm_Fpgto_Comp.CEP.Enabled     :=True;
   Frm_Fpgto_Comp.FONE.Enabled    :=True;
   Frm_Fpgto_Comp.CNPJ.Enabled    :=True;
   Frm_Fpgto_Comp.IE.Enabled      :=True;
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CFCHAVEP=0'+FloatToStr(mchaveped));
   DM1.Tb_CSF.Open;
   if not DM1.Tb_CSF.Eof then
      begin
      Frm_Fpgto_Comp.RAZSOC.Text     :=DM1.Tb_CSFCFRAZAO.Value;
      Frm_Fpgto_Comp.FANTASIA.Text   :=DM1.Tb_CSFCFDENOM.Value;
      Frm_Fpgto_Comp.ENDERECO.Text   :=DM1.Tb_CSFCFENDER.Value;
      Frm_Fpgto_Comp.BAIRRO.Text     :=DM1.Tb_CSFCFBAIRRO.Value;
      Frm_Fpgto_Comp.CIDADE.Text     :=DM1.Tb_CSFCFCIDADE.Value;
      Frm_Fpgto_Comp.UF.Text         :=DM1.Tb_CSFCFUF.Value;
      Frm_Fpgto_Comp.CEP.Text        :=DM1.Tb_CSFCFCEP.Value;
      Frm_Fpgto_Comp.FONE.Text       :=DM1.Tb_CSFCFFONE.Value;
      Frm_Fpgto_Comp.IE.Text         :=DM1.Tb_CSFCFIE.Value;
      if DM1.Tb_CSFCFTIPOC.Value=1 then
         begin
         Frm_Fpgto_Comp.CNPJ.Text    :=FormatFloat('00"."000"."000"."0000-00"', DM1.Tb_CSFCFCGC.Value);
         Frm_Fpgto_Comp.lbl_cnpj.Caption       :='CNPJ..:';
         Frm_Fpgto_Comp.lbl_ie.Caption         :='IE.:';
         Frm_Fpgto_Comp.FANTASIA.Visible       :=true;
         Frm_Fpgto_Comp.lbl_fantasia.Visible   :=true;
         end
      else
         begin
         Frm_Fpgto_Comp.CNPJ.Text    :=FormatFloat('000"."000"."000-00"', DM1.Tb_CSFCFCGC.Value);
         Frm_Fpgto_Comp.lbl_cnpj.Caption       :='CNPF.:';
         Frm_Fpgto_Comp.lbl_ie.Caption         :='Identidade.:';
         Frm_Fpgto_Comp.FANTASIA.Visible       :=False;
         Frm_Fpgto_Comp.lbl_fantasia.Visible   :=False;
         end;
      end;
   end
else
   begin
   Frm_Fpgto_Comp.RAZSOC.Enabled  :=False;
   Frm_Fpgto_Comp.FANTASIA.Enabled:=False;
   Frm_Fpgto_Comp.ENDERECO.Enabled:=False;
   Frm_Fpgto_Comp.BAIRRO.Enabled  :=False;
   Frm_Fpgto_Comp.CIDADE.Enabled  :=False;
   Frm_Fpgto_Comp.UF.Enabled      :=False;
   Frm_Fpgto_Comp.CEP.Enabled     :=False;
   Frm_Fpgto_Comp.FONE.Enabled    :=False;
   Frm_Fpgto_Comp.CNPJ.Enabled    :=False;
   Frm_Fpgto_Comp.IE.Enabled      :=False;
   end;
result:=true;
end;
procedure TFrm_FPgto_Comp.CODCLIExit(Sender: TObject);
begin
if not flcadcli(1,0,Trim(CODCLI.Text)) then
   begin
   MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
   CODCLI.SetFocus;
   end
else
   begin
   ffpgto_CompCarregaCli(0);
   end;

end;

procedure TFrm_FPgto_Comp.RAZSOCExit(Sender: TObject);
begin
if (length(RAZSOC.Text)>33) then
   RAZSOC.Text:=copy(RAZSOC.Text,1,34);

end;

procedure TFrm_FPgto_Comp.FANTASIAExit(Sender: TObject);
begin
if (length(FANTASIA.Text)>33) then
   FANTASIA.Text:=copy(FANTASIA.Text,1,34);

end;

procedure TFrm_FPgto_Comp.ENDERECOExit(Sender: TObject);
begin
if (length(ENDERECO.Text)>33) then
   ENDERECO.Text:=copy(ENDERECO.Text,1,34);

end;

procedure TFrm_FPgto_Comp.BAIRROExit(Sender: TObject);
begin
if (length(BAIRRO.Text)>19) then
   BAIRRO.Text:=copy(BAIRRO.Text,1,20);

end;

procedure TFrm_FPgto_Comp.CIDADEExit(Sender: TObject);
begin
if (length(CIDADE.Text)>19) then
   CIDADE.Text:=copy(CIDADE.Text,1,20);

end;

procedure TFrm_FPgto_Comp.UFExit(Sender: TObject);
begin
if (length(UF.Text)>1) then
   UF.Text:=copy(UF.Text,1,2);

end;

procedure TFrm_FPgto_Comp.CEPExit(Sender: TObject);
begin
if (length(CEP.Text)>8) then
   CEP.Text:=copy(CEP.Text,1,8);

end;

procedure TFrm_FPgto_Comp.IEExit(Sender: TObject);
begin
if (length(IE.Text)>39) then
   IE.Text:=copy(IE.Text,1,40);

end;

procedure TFrm_FPgto_Comp.FONEExit(Sender: TObject);
begin
if (length(FONE.Text)>19) then
   FONE.Text:=copy(FONE.Text,1,20);

end;

procedure TFrm_FPgto_Comp.RG_TPPESSOAClick(Sender: TObject);
begin
if RG_TPPESSOA.ItemIndex=0 then
   begin
   lbl_fantasia.Visible:=False;
   FANTASIA.Visible    :=False;
   lbl_cnpj.Caption    :='CNPF.:';
   lbl_ie.Caption      :='Identidade.:';
   CNPJ.EditMask       :='000.000.000-00;1; ';
   end
else
   begin
   lbl_fantasia.Visible:=true;
   FANTASIA.Visible    :=true;
   lbl_cnpj.Caption    :='CNPJ.:';
   lbl_ie.Caption      :='IE..:';
   CNPJ.EditMask       :='00.000.000/0000-00;1; ';
   end

end;

procedure TFrm_FPgto_Comp.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_FPgto_Comp',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_FPgto_Comp.NUMCHQKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   DM4.Tb_Leitor.Close;
   DM4.Tb_Leitor.ParamByName('NOMECOMP').AsString:=pNomTer;
   DM4.Tb_Leitor.ParamByName('MARCABAL').AsFloat :=0;
   DM4.Tb_Leitor.Open;
   if DM4.Tb_Leitor.Eof then
      begin
      MessageDlg('Leitor Optico não configurado, para configura-lo entre em'+#13
                +'Sistema->Parametros->Leitor Optico!',mtWarning,[mbOk],0);
      exit;
      end;
   if not flposdoc(0,0,'') then
      begin
      MessageDlg('Campos do Leitor não Configurado, para configura-lo entre em'+#13
                +'Sistema->Parametros->Leitor Optico!',mtWarning,[mbOk],0);
      exit;
      end;
      
   Application.CreateForm(TFrm_LOptica, Frm_LOptica);
   Frm_LOptica.ShowModal;

   if lo_banco>0 then
      BANCO.Text:=FloatToStr(lo_banco);
   if lo_agencia>0 then
      AGENCIA.Text:=FloatToStr(lo_agencia);
//   if lo_compens>0 then
//      COMPENS.Text:=FloatToStr(lo_compens);
   if lo_numchq>0 then
      NUMCHQ.Text:=FloatToStr(lo_numchq);
   if lo_conta>0 then
      CONTA.Text:=FloatToStr(lo_conta);
   valor.SetFocus;
   Frm_LOptica.Free;
   end;
end;

procedure TFrm_FPgto_Comp.NUMCHQEnter(Sender: TObject);
begin
st_leitor.Visible:=True;
end;

procedure TFrm_FPgto_Comp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
