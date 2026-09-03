unit S_RCobL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, db, dbtables, S_DM1, func,
  Grids, DBGrids;

type
  TFrm_RCobL = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    NOME: TMaskEdit;
    BitBtn1: TBitBtn;
    Qr_Rcob: TQuery;
    Src_ComV: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    Qr_RcobCB1CHAVE: TFloatField;
    Qr_RcobCB1DATA: TDateTimeField;
    Qr_RcobCB1JURM: TFloatField;
    Qr_RcobCB1OBS01: TStringField;
    Qr_RcobCB1OBS02: TStringField;
    Qr_RcobCB1CODVEN: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RCobL: TFrm_RCobL;

implementation

{$R *.dfm}

procedure TFrm_RCobL.BitBtn1Click(Sender: TObject);
var
mcomp: String;
begin
mcomp:=' where ';

Qr_RCob.Close;
Qr_RCob.SQL.Clear;
Qr_RCob.SQL.Add('Select CB1CHAVE,CB1DATA,CB1JURM, '
               +'       CB1OBS01,CB1OBS02,CB1CODVEN '
               +'       from CADCB01 ');
if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   Qr_RCob.SQL.Add(' where CB1CODEMP=0'+IntToStr(codemp));
   mcomp:=' and ';
   end;
if CB_TIPO.ItemIndex=0 then
   begin
   if Trim(nome.Text)<>'' then
      Qr_RCob.SQL.Add(mcomp+' CB1CHAVE=0'+Trim(NOME.Text));
   Qr_RCob.SQL.Add(' order by CB1CHAVE');
   end
else
   begin
   if Trim(nome.Text)<>'/  /' then
      Qr_RCob.SQL.Add(mcomp+' CB1DATA='+chr(39)+FormatDatetime(fdt,StrtoDate(NOME.Text))+chr(39));
   Qr_RCob.SQL.Add(' order by CB1DATA');
   end;
Qr_RCob.Open;
end;

procedure TFrm_RCobL.FormActivate(Sender: TObject);
begin
CB_TIPO.ItemIndex:=1;
CB_TIPO.Text:=cb_tipo.Items.Strings[CB_TIPO.itemIndex];
NOME.EditMask:='!99/99/9999;1; ';
NOME.SetFocus;
NOME.Text:=FormatDatetime(fdt2, pdatasis);
BitBtn1.Click;
end;

procedure TFrm_RCobL.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=cb_tipo.Items.Strings[CB_TIPO.itemIndex];
if CB_TIPO.ItemIndex=1 then
   NOME.EditMask:='!99/99/9999;1; '
else
   NOME.EditMask:='';
end;

procedure TFrm_RCobL.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_RCobL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
