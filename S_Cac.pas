unit S_Cac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, db, dbtables, S_DM1, func, S_Usr,
  Mask, Grids, DBGrids,lerarq;

type
  TFrm_Cac = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    MCODUSR: TEdit;
    SpeedButton1: TSpeedButton;
    NOMUSR: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure MCODUSRExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MCODUSREnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cac: TFrm_Cac;

implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_Cac.SpeedButton1Click(Sender: TObject);
begin
MCODUSR.Text:=FChamaUsr(0,'Frm_cac','');
end;

procedure TFrm_Cac.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODUSR.Text:=FChamaUsr(0,'Frm_rdevs',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Cac.MCODUSRExit(Sender: TObject);
begin
if Trim(MCODUSR.Text)='' then
   NOMUSR.Text:='Todos...'
else
   begin
   flcadusr(1,0,MCODUSR.Text);
   if DM4.Tb_Usr.Eof then
      begin
      ShowMessage('Usuário nao Cadastrado.');
      MCODUSR.SetFocus;
      end
   else
      NOMUSR.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;
end;

procedure TFrm_Cac.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrtoDate(MDT1.Text));
   except
      ShowMessage('Data Inicial Invalida!');
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_Cac.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrtoDate(MDT2.Text));
   except
      ShowMessage('Data Inicial Invalida!');
      MDT2.SetFocus;
      end;
   end;
if (Trim(MDT1.text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrtoDate(MDT1.Text) then
      begin
      ShowMessage('Data inicial Maior que Final. Invalido');
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_Cac.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Cac.BitBtn1Click(Sender: TObject);
var
mincrem: String;
begin
mincrem:=' where ';
DM1.Tb_Cac.Close;
DM1.Tb_cac.SQL.clear;
DM1.Tb_Cac.SQL.Add('Select * from CADCAC ');
if Trim(MCODUSR.Text)<>'' then
   begin
   DM1.Tb_Cac.SQL.Add(mincrem+' CACODUSR=0'+Trim(MCODUSR.Text));
   mincrem:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Tb_Cac.SQL.Add(mincrem+' CADATAI>='+chr(39)+FormatDatetime(fdt,StrToDate(MDT1.Text))+chr(39));
   mincrem:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Tb_Cac.SQL.Add(mincrem+' CADATAI<='+chr(39)+FormatDatetime(fdt,StrToDate(MDT2.Text))+chr(39));
   mincrem:=' and ';
   end;
DM1.Tb_Cac.SQL.Add('order by CANOMUSR,CADATAI,CASEQ');
DM1.Tb_cAC.Open;
if DM1.Tb_Cac.Eof then
   BitBtn2.Enabled:=False
else
   begin
   BitBtn2.Enabled:=True;
   BitBtn2.SetFocus;
   end;

end;

procedure TFrm_Cac.MCODUSREnter(Sender: TObject);
begin
DM1.Tb_Cac.Close;
end;

procedure TFrm_Cac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
