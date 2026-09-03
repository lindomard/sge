unit S_AjuCCu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,func,s_DM1,lerarq,S_CCU,S_Agde;

type
  TFrm_AjuCCu = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    Label3: TLabel;
    CODCCU: TEdit;
    NOMCCU: TEdit;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODCCUKeyPress(Sender: TObject; var Key: Char);
    procedure CODCCUExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AjuCCu: TFrm_AjuCCu;

implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_AjuCCu.BitBtn1Click(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrtoDate(MDT1.Text)>StrToDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial Maior que Final!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;



if DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime>pDataNula then
   begin
   if trim(mdt1.text)='/  /' then
      begin
      fmensagem('Manipulação no Caixa Bloqueado até: '+FormatDateTime(fdt2,DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime),0,['0'],0);
      exit;
      end
   else if StrToDate(mdt1.text)<=DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime then
      begin
      fmensagem('Manipulação no Caixa Bloqueado até: '+FormatDateTime(fdt2,DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime),0,['0'],0);
      exit;
      end;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Ajustando o Caixa Aguarde';
Frm_Agde.Show;
Frm_Agde.Update;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('update CADLDR SET NATDC=(Select CCNAT from CADCCU where CCCODCCU=CODCC '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCCU',[]),' ',' and CCCODEMP=CODEMP '));
{
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('update CADLDR SET NATDC=(Select CCNAT from CADCCU where CCCODCCU=CODCC '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCCU',[]),'',' and CCODEMP=CODEMP'+IntTostr(codemp)
                  +' and CODEMP=CCCODEMP '));
}

if Trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and DATADP>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and DATADP<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
if Trim(CODCCU.Text)<>'' THEN
   DM1.Query1.SQL.add(' and CODCC='+chr(39)+Trim(CODCCU.Text)+chr(39));
DM1.Query1.SQL.Add(')');
DM1.Query1.ExecSQL;
Frm_Agde.Free;
MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_AjuCCu.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_AjuCCu.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;
end;

procedure TFrm_AjuCCu.CODCCUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCCU.Text:=fChamaCCU(0,'frm_AjuCCU',Key);
   if trim(CODCCU.Text)<>'' then
      CODCCUExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_AjuCCu.CODCCUExit(Sender: TObject);
begin
if Trim(CODCCU.Text)='' then
   NOMCCU.Text:='Todos...'
else
   begin
   if flcadccu(1,0,Trim(CODCCU.Text)) then
      NOMCCU.Text:=DM1.Tb_CCUCCNOME.Value
   else
      begin
      MessageDlg('Centro de Custo não Cadastrado!',mtWarning,[mbOk],0);
      CODCCU.SetFocus;
      end;
   end;
end;

procedure TFrm_AjuCCu.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_AjuCCu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AjuCCu.FormCreate(Sender: TObject);
begin
if DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime>pDataNula then
   Frm_Ajuccu.Caption:=Frm_AjuCCU.Caption+'. Manipulação Bloqueada até: '+FormatDateTime(fdt2,DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime)+'.';

end;

end.
