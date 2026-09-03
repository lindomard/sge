unit S_MerDup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls,S_DM1,func, DB, DBTables, Grids,
  DBGrids, Buttons;

type
  TFrm_MerDup = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Panel1: TPanel;
    bbVerificar: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Tb_MerDup: TQuery;
    Src_MerDup: TDataSource;
    Tb_MerDupCRCODEMP: TFloatField;
    Tb_MerDupCRNPED: TFloatField;
    Tb_MerDupCRVALOR: TFloatField;
    Tb_MerDupCRICMSR: TFloatField;
    Tb_MerDupTOTPED: TFloatField;
    Tb_MerDupvlrdup: TFloatField;
    Tb_MerDupvlrped: TFloatField;
    Tb_MerDupdiferenca: TFloatField;
    Tb_MerDupCRLOTSEQ_CP: TFloatField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbVerificarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Tb_MerDupCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MerDup: TFrm_MerDup;

implementation

{$R *.dfm}

procedure TFrm_MerDup.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDatetime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_MerDup.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDatetime(fdt2, StrToDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_MerDup.bbVerificarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and
   (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrtoDate(MDT1.Text)>StrToDate(MDT2.Text) then
      begin
      MessageDlg('Data inicial maior que final invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
Tb_MerDup.Close;
Tb_MerDup.SQL.Clear;
Tb_MerDup.SQL.Add(' SELECT SUM(P2TOTALL- CRVALOR,CRICMSR,sum(P2TOTLIQ) as totped '
                 +' from CADDAR,CADP02  where CRSTATUS<>9 and ');
if Trim(MDT1.Text)<>'/  /' then
   Tb_MerDup.Sql.add(' CRDTEMIS>='+chr(39)+FormatDateTime(Fdt, StrtoDate(MDT1.Text))+chr(39)+' and ');
if Trim(MDT2.Text)<>'/  /' then
   Tb_MerDup.Sql.add(' CRDTEMIS<='+chr(39)+FormatDateTime(Fdt, StrtoDate(MDT2.Text))+chr(39)+' and ');
Tb_MerDup.SQL.Add(' P2CODEMP=CRCODEMP '
                 +' and   P2LOTSEQ =CRLOTSEQ_CP '
                 +' and   P2CHAVE =CRNPED '
                 +' group by CRCODEMP,CRNPED,CRVALOR,CRICMSR '
                 +' having(CRVALOR-CRICMSR<>(sum(P2TOTLIQ))) ');
Tb_MerDup.Open;



end;

procedure TFrm_MerDup.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_MerDup.Tb_MerDupCalcFields(DataSet: TDataSet);
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select sum(P1ICMSR) as TOTICM '
                  +' from CADP01 where P1CODEMP=0'+Tb_MerDupCRCODEMP.AsString
                  +' and P1LOTSEQ=0'+Tb_MerDupCRLOTSEQ_CP.AsString
                  +' and P1CHAVE=0'+Tb_MerDupCRNPED.AsString);
DM1.Query2.Open;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select sum(CRVALOR) as TOTDUP '
                  +' from CADDAR where CRCODEMP=0'+Tb_MerDupCRCODEMP.AsString
                  +' and CRLOTSEQ_CP=0'+Tb_MerDupCRLOTSEQ_CP.AsString
                  +' and CRNPED=0'+Tb_MerDupCRNPED.AsString);
DM1.Query1.Open;
Tb_MerDupvlrdup.Value:=DM1.Query1.Fields[0].AsFloat-DM1.Query2.Fields[0].AsFloat;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select sum(P2TOTLIQ) as TOTPED '
                  +' from CADP02 where P2CODEMP=0'+Tb_MerDupCRCODEMP.AsString
                  +' and P2LOTSEQ=0'+Tb_MerDupCRLOTSEQ_CP.AsString
                  +' and P2CHAVE=0'+Tb_MerDupCRNPED.AsString);
DM1.Query1.Open;
Tb_MerDupvlrped.Value:=DM1.Query1.Fields[0].AsFloat;
Tb_MerDupdiferenca.Value:=Tb_MerDupvlrdup.Value-Tb_MerDupvlrped.Value;

end;

procedure TFrm_MerDup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
