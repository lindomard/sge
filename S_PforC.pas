unit S_PforC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, Buttons,
  func, S_DM1,lerarq;

type
  TFrm_PforC = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    NUMNF: TEdit;
    SERIE: TEdit;
    SUBSERIE: TEdit;
    CFO: TEdit;
    MBASEN: TEdit;
    ALIQ: TEdit;
    ICMSN: TEdit;
    MBASER: TEdit;
    MICMSR: TEdit;
    TOTMER: TEdit;
    TOTNOT: TEdit;
    OUTRAS: TEdit;
    FRETE: TEdit;
    IPI: TEdit;
    SEGURO: TEdit;
    DESC: TEdit;
    TOTPOS: TEdit;
    TOTNEG: TEdit;
    TOTINA: TEdit;
    DATAE: TMaskEdit;
    Qr_CP: TQuery;
    U_CP: TUpdateSQL;
    Src_CP: TDataSource;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    QTDD: TEdit;
    Label13: TLabel;
    TOTAL: TEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Qr_CPCACODEMP: TFloatField;
    Qr_CPCANUMERO: TFloatField;
    Qr_CPCADESD: TStringField;
    Qr_CPCACODFOR: TFloatField;
    Qr_CPCADTEMIS: TDateTimeField;
    Qr_CPCAVALOR: TFloatField;
    Qr_CPCADTVCTO: TDateTimeField;
    Qr_CPCASTATUS: TFloatField;
    Qr_CPCAVALDES: TFloatField;
    Qr_CPCADTDESC: TDateTimeField;
    Qr_CPCADESC: TFloatField;
    Qr_CPCAJUROS: TFloatField;
    Qr_CPCABANCO: TFloatField;
    Qr_CPCALOTE: TFloatField;
    Qr_CPCACHAVEP: TFloatField;
    Qr_CPCADTBX: TDateTimeField;
    Qr_CPCADTPAG: TDateTimeField;
    Qr_CPCAUSRBAI: TFloatField;
    Qr_CPCACAIXA: TFloatField;
    Qr_CPCACODLDR: TFloatField;
    procedure Qr_CPAfterInsert(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_CPAfterPost(DataSet: TDataSet);
    procedure TOTINAExit(Sender: TObject);
    procedure NUMNFExit(Sender: TObject);
    procedure SERIEExit(Sender: TObject);
    procedure CFOExit(Sender: TObject);
    procedure DATAEExit(Sender: TObject);
    procedure MBASENKeyPress(Sender: TObject; var Key: Char);
    procedure MBASENExit(Sender: TObject);
    procedure ALIQExit(Sender: TObject);
    procedure ICMSNExit(Sender: TObject);
    procedure MBASERExit(Sender: TObject);
    procedure MICMSRExit(Sender: TObject);
    procedure TOTMERExit(Sender: TObject);
    procedure OUTRASExit(Sender: TObject);
    procedure FRETEExit(Sender: TObject);
    procedure IPIExit(Sender: TObject);
    procedure SEGUROExit(Sender: TObject);
    procedure DESCExit(Sender: TObject);
    procedure TOTPOSExit(Sender: TObject);
    procedure TOTNEGExit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TOTNOTExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PforC: TFrm_PforC;

implementation

uses S_Pfor, S_DM4;

{$R *.DFM}

procedure TFrm_PforC.Qr_CPAfterInsert(DataSet: TDataSet);
begin
Qr_CPCANUMERO.Value:=StrToFloat('0'+NUMNF.Text);
Qr_CPCACODFOR.Value:=Frm_Pfor.Tb_PF1PF1CODFOR.Value;
Qr_CPCADESD.Value  :=' ';
Qr_CPCAVALOR.Value :=StrToFloat('0'+TOTNOT.Text)-StrToFloat('0'+TOTAL.Text);
Qr_CPCADTVCTO.Value:=pdatasis;
Qr_CPCADTEMIS.Value:=StrToDate(DATAE.Text);
end;

procedure TFrm_PforC.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_PforC.FormCreate(Sender: TObject);
begin
Qr_CP.Close;
if DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   Qr_CP.ParamByName('EMPRESA').AsString:='%'
else
   Qr_CP.ParamByName('EMPRESA').AsFloat:=codemp;

Qr_CP.ParamByName('NUMERO').AsString:='9999999';
Qr_CP.ParamByName('DESD').AsString  :='99';
Qr_CP.ParamByName('CODFOR').AsString:='99999';
Qr_CP.ParamByName('DTEMIS').AsString:='31/12/1998';
Qr_cp.Open;

end;

procedure TFrm_PforC.Qr_CPAfterPost(DataSet: TDataSet);
var
mqtdd: Integer;
mtotal: Real;
begin
mtotal:=0;
mqtdd :=0;
Qr_CP.First;
While not Qr_cp.Eof do
   begin
   mtotal:=mtotal+Qr_CPCAVALOR.Value;
   mqtdd:=mqtdd+1;
   Qr_cp.Next;
   end;
QTDD.Text:=IntToStr(mqtdd);
Total.Text:=FormatFloat('#####0.00',mtotal);
end;

procedure TFrm_PforC.TOTINAExit(Sender: TObject);
begin
TOTINA.Text:=FormatFloat('#####0.00',StrToFloat('0'+TOTINA.Text));
if DBGrid1.Focused then
   Qr_CP.Insert;
end;

procedure TFrm_PforC.NUMNFExit(Sender: TObject);
begin
if not (BitBtn2.Focused) and not (BitBtn3.Focused) then
   begin
   if StrToFloat('0'+NUMNF.Text)<=0 then
      begin
      ShowMessage('Favor Digitar um Numero Valido!');
      NUMNF.SetFocus;
      end;
   end;
end;

procedure TFrm_PforC.SERIEExit(Sender: TObject);
begin
if not (BitBtn2.Focused) and not (BitBtn3.Focused) then
   begin
   if Trim(SERIE.Text)='' then
      begin
      ShowMessage('Favor Digitar uma Serie Valida!');
      SERIE.SetFocus;
      end;
   end;

end;

procedure TFrm_PforC.CFOExit(Sender: TObject);
begin
if not (BitBtn2.Focused) and not (BitBtn3.Focused) then
   begin
   if StrToFloat('0'+CFO.Text)<=0 then
      begin
      ShowMessage('Favor Digitar um CFO Valido!');
      CFO.SetFocus;
      end;
   end;

end;

procedure TFrm_PforC.DATAEExit(Sender: TObject);
begin
if not (BitBtn2.Focused) and not (BitBtn3.Focused) then
   begin
   if Trim(DATAE.Text)='/  /' then
      begin
      ShowMessage('Favor Digitar uma data Valida!');
      DATAE.SetFocus;
      end
   else
      try
         DATAE.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(DATAE.Text));
      except
         begin
         ShowMessage('Favor Digitar uma data Valida!');
         DATAE.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_PforC.MBASENKeyPress(Sender: TObject; var Key: Char);
begin
If Key in ['.',','] then Key:=DecimalSeparator
else If (Key<>#8) and not (Key in ['0'..'9']) then Key:=#0;
end;

procedure TFrm_PforC.MBASENExit(Sender: TObject);
begin
MBASEN.Text:=FormatFloat('####0.00',StrToFloat('0'+MBASEN.Text));
end;

procedure TFrm_PforC.ALIQExit(Sender: TObject);
begin
ALIQ.Text:=FormatFloat('##0.00',StrtoFloat('0'+ALIQ.Text));
if Trim(ICMSN.Text)='' then
   ICMSN.Text:=FormatFloat('#####0.00',(StrToFloat('0'+MBASEN.Text)*StrToFloat('0'+ICMSN.Text)/100));
end;

procedure TFrm_PforC.ICMSNExit(Sender: TObject);
begin
ICMSN.Text:=FormatFloat('#####0.00',StrToFloat('0'+ICMSN.Text));

end;

procedure TFrm_PforC.MBASERExit(Sender: TObject);
begin
MBASER.Text:=FormatFloat('#####0.00',StrToFloat('0'+MBASER.Text));
end;

procedure TFrm_PforC.MICMSRExit(Sender: TObject);
begin
MICMSR.Text:=Formatfloat('#####0.00',StrToFloat('0'+MICMSR.Text));

end;

procedure TFrm_PforC.TOTMERExit(Sender: TObject);
begin
TOTMER.Text:=Formatfloat('#####0.00',StrToFloat('0'+TOTMER.Text));

end;

procedure TFrm_PforC.OUTRASExit(Sender: TObject);
begin
OUTRAS.Text:=FormatFloat('#####0.00',StrToFloat('0'+OUTRAS.Text));

end;

procedure TFrm_PforC.FRETEExit(Sender: TObject);
begin
FRETE.Text:=FormatFloat('#####0.00',StrToFloat('0'+FRETE.Text));

end;

procedure TFrm_PforC.IPIExit(Sender: TObject);
begin
ipi.Text:=FormatFloat('#####0.00',StrToFloat('0'+IPI.Text));
end;

procedure TFrm_PforC.SEGUROExit(Sender: TObject);
begin
SEGURO.text:=FormatFloat('#####0.00',StrToFloat('0'+SEGURO.Text));

end;

procedure TFrm_PforC.DESCExit(Sender: TObject);
begin
DESC.Text:=FormatFloat('#####0.00',StrtoFloat('0'+DESC.Text));

end;

procedure TFrm_PforC.TOTPOSExit(Sender: TObject);
begin
TOTPOS.Text:=FormatFloat('#####0.00',StrToFloat('0'+TOTPOS.Text));

end;

procedure TFrm_PforC.TOTNEGExit(Sender: TObject);
begin
TOTNEG.Text:=Formatfloat('#####0.00',StrToFloat('0'+TOTNEG.text));
end;

procedure TFrm_PforC.DBGrid1Exit(Sender: TObject);
begin
if Qr_CP.State in [DsEdit, DsInsert] then
   begin
   if Qr_CPCAVALOR.Value<=0 then
      Qr_CP.Delete;
   end;   
end;

procedure TFrm_PforC.DBGrid1ColExit(Sender: TObject);
begin
if Qr_CP.State in [DsEdit, DsInsert] then
   begin
   if (DBGrid1.SelectedField=Qr_CPCANUMERO) and (Qr_CPCANUMERO.Value<=0) then
      Begin
      ShowMessage('Favor Digitar um Numero Valido!');
      Abort;
      end;
   if (DBGrid1.SelectedField=Qr_CPCANUMERO) and (Qr_CPCANUMERO.Value<=0) then
      Begin
      ShowMessage('Favor Digitar um Numero Valido!');
      Abort;
      end;
   if (DBGrid1.SelectedField=Qr_CPCADTVCTO) and (Qr_CPCADTVCTO.IsNull) then
      Begin
      ShowMessage('Favor Digitar uma Data de Vencimento Valida!');
      Abort;
      end;
   end;

end;

procedure TFrm_PforC.BitBtn1Click(Sender: TObject);
var
mvalor: Real;
begin
mvalor:=0;
if Qr_Cp.RecordCount<=0 then
   Begin
   ShowMessage('Favor Digitar dados sobre Contas a Pagar');
   DBGrid1.SetFocus;
   abort;
   end;
Qr_CP.First;
While not Qr_Cp.Eof do
   begin
   mvalor:=mvalor+Qr_CPCAVALOR.Value;
   Qr_Cp.Next;
   end;
if FormatFloat('#####0.00',mvalor)<>TOTNOT.Text then
   begin
   ShowMessage('Total Nota..: '+totnot.Text+' Total Contas a Pagar: '+FormatFloat('#####0.00',mvalor)+#13
              +'Invalido');
   NUMNF.SetFocus;
   abort;
   end;
flcadne(3,Frm_Pfor.Tb_PF1PF1CODFOR.AsString,NUMNF.text,SERIE.Text,CFO.Text,CFO.Text,FormatDateTime('dd/mm/yyyy',StrToDate(DATAE.Text)));
if not DM1.Tb_Ne.Eof then
   Begin
   ShowMessage('Ja Existe Nota de Entradas c/Mesmas Caracteristicas');
   NUMNF.SetFocus;
   abort;
   end;
DM1.Tb_PF2.First;
While not DM1.Tb_Pf2.Eof do
   begin
   flbaiest(0,0,DM1.Tb_PF2PF2CODPRO.AsString,DM1.Tb_PF2PF2QTDP.Value);
   DM1.Tb_pf2.Next;
   end;
Qr_Cp.First;
flcaddap(6,Qr_CPCANUMERO.AsString,Qr_CPCADESD.Value,Frm_Pfor.Tb_PF1PF1CODFOR.AsString,FormatDateTime('dd/mm/yyyy',Qr_CPCADTEMIS.Value));
DM1.Tb_Cp.Open;
if not DM1.Tb_CP.Eof then
   begin
   ShowMessage('Foi Encontrado uma Duplicata com as Mesmas Caracteristicas');
   DBGrid1.SetFocus;
   abort;
   end;

DM1.Tb_NE.Append;
DM1.Tb_NENECODEMP.Value:=codemp;
DM1.Tb_NENECODFOR.Value:=Frm_Pfor.Tb_PF1PF1CODFOR.Value;
DM1.Tb_NENEALIQ.Value  :=DM1.Tb_ForFALIQ.Value;
DM1.Tb_NENENUMERO.Value:=StrToFloat('0'+NUMNF.Text);
DM1.Tb_NENESERIE.Value :=SERIE.Text;
DM1.Tb_NENECFO.Value   :=StrToInt('0'+CFO.Text);
DM1.Tb_NENEDTEMIS.Value:=StrToDate(DATAE.Text);
DM1.Tb_NENEDTENT.Value :=pdatasis;
DM1.Tb_NENESUBSER.Value:=SUBSERIE.Text;
DM1.Tb_NENEBASEN.Value :=StrToFloat('0'+MBASEN.Text);
DM1.Tb_NENEICMSN.Value :=StrToFloat('0'+ICMSN.Text);
DM1.Tb_NENEBASER.Value :=StrToFloat('0'+MBASER.Text);
DM1.Tb_NENEICMSR.Value :=StrToFloat('0'+MICMSR.Text);
DM1.Tb_NENEFRETE.Value :=StrToFloat('0'+FRETE.Text);
DM1.Tb_NENESEG.Value   :=StrtoFloat('0'+SEGURO.Text);
DM1.Tb_NENEOUTRAS.Value:=StrToFloat('0'+OUTRAS.Text);
DM1.Tb_NENEIPI.Value   :=StrToFloat('0'+IPI.Text);
DM1.Tb_NENETOTMER.Value:=StrToFloat('0'+TOTMER.Text);
DM1.Tb_NENETOTNOT.Value:=StrToFloat('0'+TOTNOT.Text);
DM1.Tb_NENETOTDES.Value:=StrToFloat('0'+DESC.Text);
DM1.Tb_NENETOTPOS.Value:=StrToFloat('0'+TOTPOS.Text);
DM1.Tb_NENETOTNEG.Value:=StrToFloat('0'+TOTNEG.Text);
DM1.Tb_NENETOTINA.Value:=StrToFloat('0'+TOTINA.Text);
DM1.Tb_NENECHAVEP.Value:=Frm_PFOR.Tb_PF1PF1CHAVE.Value;
DM1.Tb_NENEALIQ.Value  :=StrToint('0'+CFO.Text);
DM1.Tb_NE.Post;
Qr_CP.First;
While not Qr_cP.Eof do
   begin
   DM1.Tb_CP.Append;
   DM1.Tb_CPCACODEMP.Value:=codemp;
   DM1.Tb_CPCANUMERO.Value:=Qr_CPCANUMERO.Value;
   DM1.Tb_CPCADESD.Value  :=Qr_CPCADESD.Value;
   DM1.Tb_CPCACODFOR.Value:=Qr_CPCACODFOR.Value;
   DM1.Tb_CPCADTEMIS.Value:=Qr_CPCADTEMIS.Value;
   DM1.Tb_CPCAVALOR.Value :=Qr_CPCAVALOR.Value;
   DM1.Tb_CPCADTVCTO.Value:=Qr_CPCADTVCTO.Value;
   DM1.Tb_CPCASTATUS.Value:=0;
   DM1.Tb_CPCAVALDES.Value:=Qr_CPCAVALDES.Value;
   if not Qr_CPCADTDESC.IsNull Then
      DM1.Tb_CPCADTDESC.Value:=Qr_CPCADTDESC.Value;
   DM1.Tb_CPCADESC.Value  :=Qr_CPCADESC.Value;
   DM1.Tb_CPCAJUROS.Value :=Qr_CPCAJUROS.Value;
   DM1.Tb_CPCABANCO.Value :=Qr_CPCABANCO.Value;
   DM1.Tb_CPCALOTE.Value  :=Qr_CPCALOTE.Value;
   DM1.Tb_CPCACHAVEP.Value:=Frm_Pfor.Tb_PF1PF1CHAVE.Value;
   if DM4.Tb_Par01PCXAUTO.Value=0 then
      begin
      flcadldr(0,'0');
      DM1.Tb_LDR.Append;
      DM1.Tb_LDRCODEMP.Value :=codemp;
      DM1.Tb_LDRDATADP.Value :=DM1.Tb_CPCADTVCTO.Value;
      DM1.Tb_LDRDATAREF.Value:=DM1.Tb_CPCADTEMIS.Value;
      DM1.Tb_LDRVALORP.Value :=DM1.Tb_CPCAVALOR.Value;
      flparldr(0,'CADDAP0');
      flcadccu(1,0,DM1.Par_LDRCODCC.AsString);
      DM1.Tb_LDRNATDC.Value   :=DM1.Tb_CCuCCNAT.Value;
      DM1.Tb_LDRCODCC.Value :=DM1.Par_LDRCODCC.Value;
      DM1.Tb_LDRCODDEP.Value:=DM1.Par_LDRCODDEP.Value;
      DM1.Tb_LDRDESCMV.Value:=DM1.Par_LDRNOME.Value;
      DM1.Tb_LDRNUMDOC.Value:='PC-'+FormatFloat('0000000',Qr_CPCANUMERO.Value)+'-'+Qr_CPCADESD.Value;
      DM1.Tb_LDRSTATUS.Value:=0;
      DM1.Tb_LDRORIGEM.Value:=03;
      DM1.Tb_LDRTIPO.Value  :='FR';
      DM1.Tb_LDRCODIGO.Value:=Qr_CPCACODFOR.Value;
      DM1.Tb_LDR.Post;
      DM1.Tb_CPCACODLDR.Value:=DM1.Tb_LDRCODLDR.Value;
      end
   else
      DM1.Tb_CPCACODLDR.Value:=0;
   DM1.Tb_CP.Post;
   Qr_CP.Next;
   end;
flcadpf1(0,Frm_Pfor.Tb_PF1PF1CHAVE.AsString);
DM1.Tb_PF1.Edit;
DM1.Tb_PF1PF1STATUS.Value  :=1;
DM1.Tb_PF1PF1CODLDR.Value  :=0;
DM1.Tb_PF1.Post;

Frm_Pfor.BBLIMPAR.click;
Close;
end;

procedure TFrm_PforC.TOTNOTExit(Sender: TObject);
begin
TOTNOT.Text:=FormatFloat('#####0.00',StrToFloat('0'+totnot.Text));
end;

procedure TFrm_PforC.BitBtn2Click(Sender: TObject);
begin
qr_cp.close;
close;
end;

end.
