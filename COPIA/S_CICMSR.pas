unit S_CICMSR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, Gauges, Mask,func,s_dm1,lerarq,
  ExtCtrls;

type
  TFrm_CICMSR = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_NE: TQuery;
    Qr_NENENUMERO: TFloatField;
    Qr_NENESERIE: TStringField;
    Qr_NENEICMSR: TFloatField;
    Qr_NENEFRETE: TFloatField;
    Qr_NENEOUTRAS: TFloatField;
    Qr_NENETOTNOT: TFloatField;
    Qr_NENECHAVEP: TFloatField;
    Qr_NEPF1NUMNF: TFloatField;
    Qr_NEPF1CHAVE: TFloatField;
    Qr_NEPF1DATA: TDateTimeField;
    Qr_NEPF1TOTLIQ: TFloatField;
    Qr_NEPF1ICMSR: TFloatField;
    Qr_NEPF1TOTBRU: TFloatField;
    Qr_NEPF1TOTDES: TFloatField;
    Qr_NEPF1TOTOUT: TFloatField;
    Qr_NENECODEMP: TFloatField;
    Qr_NENELOTSEQ_CP: TFloatField;
    Qr_NENEBASER: TFloatField;
    RG_TPICMS: TRadioGroup;
    Qr_NENEBASEN: TFloatField;
    Qr_NENEICMSN: TFloatField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CICMSR: TFrm_CICMSR;

implementation

{$R *.dfm}

procedure TFrm_CICMSR.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CICMSR.BitBtn1Click(Sender: TObject);
var
micmsr, mpicmsr: Real;
mtotbru,mbaser, mpbaser: Real;
mtoticmsr,mtotbaser: Real;
mlid, mtot: Integer;
begin
Qr_Ne.Close;
Qr_Ne.Sql.Clear;
Qr_Ne.SQl.Add('SELECT NECODEMP,NENUMERO,NESERIE,NEICMSR,NEBASER,NEBASEN,NEICMSN, '
             +'NEFRETE,NEOUTRAS,NETOTNOT,NELOTSEQ_CP,NECHAVEP, '
             +' pf1numnf,pf1chave,pf1data,pf1totliq, '
             +' pf1icmsr,pf1totbru,pf1totdes,pf1totout from CADNE,CADPF1 '
             +' where PF1CODEMP=NECODEMP and  PF1LOTSEQ=NELOTSEQ_CP and PF1CHAVE=NECHAVEP ');
// if RG_TPICMS.ItemIndex=0 then
//   Qr_NE.SQL.add(' and NEICMSR>0 ')
//else
//   Qr_NE.SQL.add(' and NEICMSR>0 ');

if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Ne.SQL.add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Ne.SQL.add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   end;
Qr_Ne.Open;

mtot:=Qr_Ne.RecordCount;
mlid:=0;
GroupBox1.Visible:=True;
While not Qr_ne.Eof do
   begin
   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mtot;
   if Qr_NENECHAVEP.Value<=0 then
      begin
      Qr_ne.Next;
      Continue;
      end;
{
   if RG_TPICMS.ItemIndex=0 then
      begin
      if Qr_NENEICMSR.Value<=0 then
         begin
         Qr_Ne.Next;
         Continue;
         end;
      end
   else
      begin
      if Qr_NENEICMSN.Value<=0 then
         begin
         Qr_Ne.Next;
         Continue;
         end;
      end;
}
   DM1.Query2.Close;
   DM1.Query2.SQL.clear;
   DM1.Query2.SQL.add('Select sum(PF2QTDP*PF2PU) as TOTAL, PF2SIT from CADPF2 '
                     +' where PF2CODEMP=0'+Qr_NENECODEMP.AsString
                     +' and  PF2LOTSEQ=0'+Qr_NENELOTSEQ_CP.AsString
                     +' and  PF2CHAVE=0'+Qr_NENECHAVEP.AsString
                     +' group by PF2SIT');
   DM1.Query2.Open;
   mbaser:=0;
   mtotbru:=0;
   if RG_TPICMS.ItemIndex=0 then
      begin
      While not DM1.Query2.Eof do
         begin
         try
            if DM1.Query2.FieldByName('PF2SIT').AsString[2] in ['1','6'] then
               begin
               mtotbru:=mtotbru+DM1.Query2.fieldbyName('TOTAL').AsFloat;
              end;
         except
            end;
         DM1.Query2.Next;
         end;
      end
   else
      begin
      While not DM1.Query2.Eof do
         begin
         mtotbru:=mtotbru+DM1.Query2.fieldbyName('TOTAL').AsFloat;
         DM1.Query2.Next;
         end;
      end;


   if RG_TPICMS.ItemIndex=0 then
      begin
      try
         mpicmsr:=(Qr_NENEICMSR.Value*100)/mtotbru;
      except
         mpicmsr:=0;
         end;
      try
         mpbaser:=(Qr_NENEBASER.Value*100)/mtotbru;
      except
         mpbaser:=0;
         end;
      end
   else
      begin
      try
         mpicmsr:=(Qr_NENEICMSN.Value*100)/mtotbru;
      except
         mpicmsr:=0;
         end;
      try
         mpbaser:=(Qr_NENEBASEN.Value*100)/mtotbru;
      except
         mpbaser:=0;
         end;
      end;
   if mpicmsr>0 then
      mpicmsr:=mpicmsr+0.01;

   mpicmsr:=Arredonda(mpicmsr,2);

   if mpbaser>0 then
      mpbaser:=mpbaser+0.01;
   mpbaser:=Arredonda(mpbaser,2);

   if RG_TPICMS.ItemIndex=0 then
      begin
      mtoticmsr:=Qr_NENEICMSR.Value;
      mtotbaser:=Qr_NENEBASER.Value;
      end
   else
      begin
      mtoticmsr:=Qr_NENEICMSN.Value;
      mtotbaser:=Qr_NENEBASEN.Value;
      end;

{   if (mpicmsr<=0) and (mpbaser=0) then
      begin
      Qr_Ne.Next;
      Continue;
      end;
}
   DM1.Tb_PF2.Close;
   DM1.Tb_PF2.Sql.clear;
   DM1.Tb_PF2.Sql.add('Select * from CADPF2 where PF2CODEMP=0'+Qr_NENECODEMP.AsString
                     +' and  PF2LOTSEQ=0'+Qr_NENELOTSEQ_CP.AsString
                     +' and  PF2CHAVE=0'+Qr_NENECHAVEP.AsString);
   DM1.Tb_PF2.open;
   While not DM1.Tb_PF2.Eof do
      begin
      if RG_TPICMS.ItemIndex=0 then
         begin
         try
            if not (DM1.Tb_PF2PF2SIT.Value[2] in ['1','6']) then
               begin
               DM1.Tb_PF2.Next;
               Continue;
               end;
         except
            DM1.Tb_PF2.Next;
            Continue;
            end;
         end;

      mtotbru:=DM1.Tb_PF2PF2PU.Value*DM1.Tb_PF2PF2QTDP.Value;
      micmsr:=(mtotbru*mpicmsr)/100;
      micmsr:=Arredonda(micmsr,2);
      mbaser:=(mtotbru*mpbaser)/100;
      mbaser:=Arredonda(mbaser,2);
      if mbaser>mtotbaser then
         mbaser:=mtotbaser;
      mtotbaser:=mtotbaser-mbaser;
      if micmsr>mtoticmsr then
         micmsr:=mtoticmsr;
      mtoticmsr:=mtoticmsr-micmsr;

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      if RG_TPICMS.ItemIndex=0 then
         begin
         DM1.Query1.SQL.add('Update CADPF2 set PF2BASER=0'+mudavp(FloatToStr(mbaser))
                        +', PF2ICMSR=0'+mudavp(FloatToStr(micmsr)));
         end
      else
         begin
         DM1.Query1.SQL.add('Update CADPF2 set PF2BASEN=0'+mudavp(FloatToStr(mbaser))
                        +', PF2ICMSN=0'+mudavp(FloatToStr(micmsr)));
         end;
     DM1.Query1.SQL.Add('  where PF2CODEMP=0'+Qr_NENECODEMP.AsString
                        +' and  PF2LOTSEQ=0'+Qr_NENELOTSEQ_CP.AsString
                        +' and  PF2CHAVE=0'+Qr_NENECHAVEP.AsString
                        +' and  PF2ITEM=0'+DM1.Tb_PF2PF2ITEM.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      DM1.Tb_PF2.Next;
      end;
   Qr_Ne.Next;
   end;
GroupBox1.Visible:=false;
MessageDlg('Concluido!',mtInformation,[mbOk],0);

end;

procedure TFrm_CICMSR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
