unit S_CVVP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, Mask, ExtCtrls;

type
  TFrm_CVVP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    NOME: TMaskEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    Qr_ComV: TQuery;
    Qr_ComVCL1CHAVE: TFloatField;
    Qr_ComVCL1DATA: TDateTimeField;
    Qr_ComVCL1CODIGO: TFloatField;
    Qr_ComVCL1DATAI: TDateTimeField;
    Qr_ComVCL1DATAF: TDateTimeField;
    Qr_ComVCL1OBS01: TStringField;
    Qr_ComVCL1OBS02: TStringField;
    Qr_ComVnome: TStringField;
    Src_ComV: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Qr_ComVCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CVVP: TFrm_CVVP;

implementation

uses S_ComVP, S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_CVVP.BitBtn1Click(Sender: TObject);
begin
Qr_ComV.Close;
Qr_ComV.SQL.Clear;
Qr_ComV.SQL.Add('Select CL1CHAVE,CL1DATA,CL1CODIGO,'
       +' CL1DATAI,CL1DATAF,CL1OBS01, '
       +' CL1OBS02 from '
       +' CADCL01 where '
       +' CL1TIPO=9 '
       +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and CL1CODEMP=0'+IntTostr(codemp)));

if CB_TIPO.ItemIndex=0 then
   begin
   if Trim(nome.Text)<>'' then
      Qr_ComV.SQL.Add(' and CL1CHAVE=0'+Trim(NOME.Text));
   Qr_ComV.SQL.Add(' order by CL1CHAVE');
   end
else if CB_TIPO.ItemIndex=1 then
   begin
   if Trim(nome.Text)<>'/  /' then
      Qr_ComV.SQL.Add(' and CL1DATA='+chr(39)+FormatDatetime(fdt,StrtoDate(NOME.Text))+chr(39));
   Qr_ComV.SQL.Add(' order by CL1DATA');
   end
else if CB_TIPO.ItemIndex=2 then
   begin
   if Trim(nome.Text)<>'/  /' then
      Qr_ComV.SQL.Add(' and CL1CODIGO=0'+Trim(NOME.Text));
   Qr_ComV.SQL.Add(' order by CL1CODIGO');
   end;
Qr_ComV.Open;
end;

procedure TFrm_CVVP.FormActivate(Sender: TObject);
begin
CB_TIPO.ItemIndex:=1;
CB_TIPO.Text:=cb_tipo.Items.Strings[CB_TIPO.itemIndex];
NOME.EditMask:='!99/99/9999;1; ';
NOME.SetFocus;
NOME.Text:=FormatDatetime(fdt2, pdatasis);
BitBtn1.Click;
end;

procedure TFrm_CVVP.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=cb_tipo.Items.Strings[CB_TIPO.itemIndex];
if CB_TIPO.ItemIndex=1 then
   NOME.EditMask:='!99/99/9999;1; '
else
   NOME.EditMask:='';
end;

procedure TFrm_CVVP.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CVVP.Qr_ComVCalcFields(DataSet: TDataSet);
begin
if flqr1('VNOME','V','CADVEN','N','VCODVEN',Qr_ComVCL1CODIGO.AsString) then
  Qr_ComVnome.Value:=DM1.Query1.fields[0].AsString
end;

procedure TFrm_CVVP.DBGrid1DblClick(Sender: TObject);
begin
if not Qr_ComVCL1CHAVE.isnull then
   bitbtn2.Click;
end;

procedure TFrm_CVVP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
