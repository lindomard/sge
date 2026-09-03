unit S_CPB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, ExtCtrls, Buttons, S_DM1, func;

type
  TFrm_CPB = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    NUMDUP: TEdit;
    CODFOR: TEdit;
    DESD: TEdit;
    DTEMIS: TMaskEdit;
    Label5: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    VALOR: TEdit;
    MCODBCO: TEdit;
    MSTATUS: TEdit;
    MVALDES: TEdit;
    MDATAV: TMaskEdit;
    MDATAD: TMaskEdit;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    MDATAP: TMaskEdit;
    MJUROSP: TEdit;
    MDESCC: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    NOMFOR: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure NUMDUPExit(Sender: TObject);
    procedure NUMDUPKeyPress(Sender: TObject; var Key: Char);
    procedure DESDExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure DTEMISExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MDATAPExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CPB: TFrm_CPB;

implementation

{$R *.DFM}

procedure TFrm_CPB.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CPB.NUMDUPExit(Sender: TObject);
begin
if not BitBtn3.Focused then
   begin
   DM1.Tb_CP.Close;
   DM1.Tb_CP.ParamByName('EMPRESA').AsString:=IntToStr(Codemp);
   DM1.Tb_CP.ParamByName('NUMERO').AsString :=Trim(NUMDUP.Text);
   DM1.Tb_CP.ParamByName('DESD').AsString   :='%';
   DM1.Tb_CP.ParamByName('CODFOR').AsString :='%';
   DM1.Tb_CP.ParamByName('DTEMIS').AsString :='%';
   DM1.Tb_CP.Open;
   if DM1.Tb_cp.Eof then
      begin
      ShowMessage('Numero não Encontrado');
      NUMDUP.SetFocus;
      end
   else
      begin
      DESD.Text:=DM1.Tb_CPCADESD.Value;
      CODFOR.Text:=DM1.Tb_ForFCODFOR.AsString;
      DTEMIS.Text:=FormatDateTime('dd/mm/yyyy',DM1.Tb_CPCADTEMIS.Value);
      VALOR.Text :=FormatFloat('###,##0.00',DM1.Tb_CPCAVALOR.Value);
      MDATAV.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCADTVCTO.Value);
      MCODBCO.Text:=DM1.Tb_CPCABANCO.AsString;
      MSTATUS.Text:=DM1.Tb_CPCASTATUS.AsString;
      MVALDES.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCAVALDES.Value);
      MDATAD.Text :=FormatDateTime('dd/mm/yyyy',DM1.Tb_CPCADTDESC.Value);
      MDATAP.Text :=FormatDateTime('dd/mm/yyyy',date);
      end;
   end;
end;

procedure TFrm_CPB.NUMDUPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_CPB.DESDExit(Sender: TObject);
begin
if not BitBtn3.Focused then
   begin
   DM1.Tb_CP.Close;
   DM1.Tb_CP.ParamByName('EMPRESA').AsString:=IntToStr(Codemp);
   DM1.Tb_CP.ParamByName('NUMERO').AsString :=Trim(NUMDUP.Text);
   DM1.Tb_CP.ParamByName('DESD').AsString   :=Trim(DESD.Text);
   DM1.Tb_CP.ParamByName('CODFOR').AsString :='%';
   DM1.Tb_CP.ParamByName('DTEMIS').AsString :='%';
   DM1.Tb_CP.Open;
   if DM1.Tb_cp.Eof then
      begin
      ShowMessage('Registro não Encontrado');
      DESD.SetFocus;
      end
   else
      begin
      DESD.Text:=DM1.Tb_CPCADESD.Value;
      CODFOR.Text:=DM1.Tb_ForFCODFOR.AsString;
      DTEMIS.Text:=FormatDateTime('dd/mm/yyyy',DM1.Tb_CPCADTEMIS.Value);
      VALOR.Text :=FormatFloat('###,##0.00',DM1.Tb_CPCAVALOR.Value);
      MDATAV.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCADTVCTO.Value);
      MCODBCO.Text:=DM1.Tb_CPCABANCO.AsString;
      MSTATUS.Text:=DM1.Tb_CPCASTATUS.AsString;
      MVALDES.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCAVALDES.Value);
      MDATAD.Text :=FormatDateTime('dd/mm/yyyy',DM1.Tb_CPCADTDESC.Value);
      MDATAP.Text :=FormatDateTime('dd/mm/yyyy',date);
      end;
   end;

end;

procedure TFrm_CPB.CODFORExit(Sender: TObject);
begin
if not BitBtn3.Focused then
   begin
   DM1.Tb_CP.Close;
   DM1.Tb_CP.ParamByName('EMPRESA').AsString:=IntToStr(Codemp);
   DM1.Tb_CP.ParamByName('NUMERO').AsString :=Trim(NUMDUP.Text);
   DM1.Tb_CP.ParamByName('DESD').AsString   :=Trim(DESD.Text);
   DM1.Tb_CP.ParamByName('CODFOR').AsString :=Trim(CODFOR.Text);
   DM1.Tb_CP.ParamByName('DTEMIS').AsString :='%';
   DM1.Tb_CP.Open;
   if DM1.Tb_cp.Eof then
      begin
      ShowMessage('Registro não Encontrado');
      CODFOR.SetFocus;
      end
   else
      begin
      DESD.Text:=DM1.Tb_CPCADESD.Value;
      CODFOR.Text:=DM1.Tb_ForFCODFOR.AsString;
      DTEMIS.Text:=FormatDateTime('dd/mm/yyyy',DM1.Tb_CPCADTEMIS.Value);
      VALOR.Text :=FormatFloat('###,##0.00',DM1.Tb_CPCAVALOR.Value);
      MDATAV.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCADTVCTO.Value);
      MCODBCO.Text:=DM1.Tb_CPCABANCO.AsString;
      MSTATUS.Text:=DM1.Tb_CPCASTATUS.AsString;
      MVALDES.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCAVALDES.Value);
      MDATAD.Text :=FormatDateTime('dd/mm/yyyy',DM1.Tb_CPCADTDESC.Value);
      MDATAP.Text :=FormatDateTime('dd/mm/yyyy',date);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select FRAZAO from CADFOR where '
                        +' FCODEMP='+IntToStr(codemp)
                        +' and FCODFOR=0'+Trim(CODFOR.Text));
      DM1.Query1.Open;
      NOMFOR.Caption:=DM1.Query1.Fields[0].AsString;
      end;
   end;


end;

procedure TFrm_CPB.DTEMISExit(Sender: TObject);
begin
if not BitBtn3.Focused then
   begin
   DTEMIS.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(DTEMIS.Text));
   DM1.Tb_CP.Close;
   DM1.Tb_CP.ParamByName('EMPRESA').AsString:=IntToStr(Codemp);
   DM1.Tb_CP.ParamByName('NUMERO').AsString :=Trim(NUMDUP.Text);
   DM1.Tb_CP.ParamByName('DESD').AsString   :=Trim(DESD.Text);
   DM1.Tb_CP.ParamByName('CODFOR').AsString :=Trim(CODFOR.Text);
   DM1.Tb_CP.ParamByName('DTEMIS').AsString :=Trim(DTEMIS.Text);
   DM1.Tb_CP.Open;
   if DM1.Tb_cp.Eof then
      begin
      ShowMessage('Registro não Encontrado');
      DTEMIS.SetFocus;
      end
   else
      begin
      DESD.Text:=DM1.Tb_CPCADESD.Value;
      CODFOR.Text:=DM1.Tb_ForFCODFOR.AsString;
      DTEMIS.Text:=FormatDateTime('dd/mm/yyyy',DM1.Tb_CPCADTEMIS.Value);
      VALOR.Text :=FormatFloat('###,##0.00',DM1.Tb_CPCAVALOR.Value);
      MDATAV.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCADTVCTO.Value);
      MCODBCO.Text:=DM1.Tb_CPCABANCO.AsString;
      MSTATUS.Text:=DM1.Tb_CPCASTATUS.AsString;
      MVALDES.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCAVALDES.Value);
      MDATAD.Text :=FormatDateTime('dd/mm/yyyy',DM1.Tb_CPCADTDESC.Value);
      MDATAP.Text :=FormatDateTime('dd/mm/yyyy',date);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select FRAZAO from CADFOR where '
                        +' FCODEMP='+IntToStr(codemp)
                        +' and FCODFOR=0'+Trim(CODFOR.Text));
      DM1.Query1.Open;
      NOMFOR.Caption:=DM1.Query1.Fields[0].AsString;
      if DM1.Tb_CPCASTATUS.Value=2 then
         begin
         MJUROSP.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCAJUROS.Value);
         MDESCC.Text:=FormatFloat('###,##0.00',DM1.Tb_CPCADESC.Value);
         ShowMessage('Registro Ja Baixado');
         BitBtn1.Enabled:=False;
         BitBtn2.Enabled:=True;
         end
      else
         begin
         BitBtn2.Enabled:=False;
         BitBtn1.Enabled:=True;
         end;
      end;
   end;


end;

procedure TFrm_CPB.BitBtn1Click(Sender: TObject);
begin
DM1.Tb_CP.Edit;
DM1.Tb_CPCADTBX.Value:=date;
DM1.Tb_CPCADTPAG.Value:=StrToDate(MDATAP.Text);
DM1.Tb_CPCADESC.Value :=StrToFloat('0'+MDESCC.Text);
dm1.Tb_CPCAJUROS.Value:=StrToFloat('0'+MJUROSP.Text);
dm1.Tb_CPCASTATUS.Value:=2;
DM1.Tb_CP.Post;
ShowMessage('Registro Baixado!');
VALOR.Text:='';
MDATAV.Text:='/  /';
MCODBCO.Text:='';
MSTATUS.Text:='';
MVALDES.Text:='';
MDATAD.Text :='/  /';
MDATAP.Text :='/  /';
MJUROSP.Text:='';
MDESCC.Text :='';
NUMDUP.Text :='';
DESD.Text   :='';
CODFOR.Text :='';
DTEMIS.Text :='';
NUMDUP.SetFocus;
end;

procedure TFrm_CPB.MDATAPExit(Sender: TObject);
begin
MDATAP.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDATAP.Text));
end;

procedure TFrm_CPB.BitBtn2Click(Sender: TObject);
begin
if Application.MessageBox('Duplicata ja Baixada. Quer Realmente Cancelar a Baixa?',' ',MB_YESNO+MB_DEFBUTTON2)=mrYES then
   begin
   DM1.Tb_CP.Edit;
   DM1.Tb_CPCADTBX.Value:=StrToDate('01/01/1900');
   DM1.Tb_CPCASTATUS.Value:=0;
   DM1.Tb_CPCADTPAG.Value:=StrToDate('01/01/1900');
   DM1.Tb_CPCADESC.Value :=0;
   dm1.Tb_CPCAJUROS.Value:=0;
   DM1.Tb_CP.Post;
   ShowMessage('Baixa Cancelada!');
   VALOR.Text:='';
   MDATAV.Text:='/  /';
   MCODBCO.Text:='';
   MSTATUS.Text:='';
   MVALDES.Text:='';
   MDATAD.Text :='/  /';
   MDATAP.Text :='/  /';
   MJUROSP.Text:='';
   MDESCC.Text :='';
   NUMDUP.Text :='';
   DESD.Text   :='';
   CODFOR.Text :='';
   DTEMIS.Text :='';
   NUMDUP.SetFocus;
   end;
end;

end.
