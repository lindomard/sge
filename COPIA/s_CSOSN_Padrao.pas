unit s_CSOSN_Padrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrm_CSOSN_Padrao = class(TForm)
    Label1: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label2: TLabel;
    bbSalvar: TBitBtn;
    bbSair: TBitBtn;
    cb_csosntrib_sn: TComboBox;
    cb_csosntrib_rn: TComboBox;
    cb_csosnst_sn: TComboBox;
    cb_csosnst_rn: TComboBox;
    procedure bbSairClick(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cb_csosntrib_snClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CSOSN_Padrao: TFrm_CSOSN_Padrao;

implementation

uses Func, lerarq, S_DM4;

{$R *.dfm}

procedure TFrm_CSOSN_Padrao.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CSOSN_Padrao.bbSalvarClick(Sender: TObject);
begin
   bbSalvar.Enabled:=false;
   fDeletaPadroes(-1,'_parcsosn','');
   fGravaPadroes(-1,LowerCase( cb_csosntrib_sn.Name)    ,'text'   ,'_parcsosn',cb_csosntrib_sn.Text);
   fGravaPadroes(-1,LowerCase(cb_csosntrib_sn.Name)    ,'text'   ,'_parcsosn',cb_csosntrib_sn.Text);

   fGravaPadroes(-1,LowerCase(cb_csosnst_sn.Name)    ,'text'   ,'_parcsosn',cb_csosnst_sn.Text);
   fGravaPadroes(-1,LowerCase(cb_csosnst_sn.Name)    ,'text'   ,'_parcsosn',cb_csosnst_sn.Text);

end;

procedure TFrm_CSOSN_Padrao.FormActivate(Sender: TObject);
begin
if flfilpad(-1,'_parcsosn',cb_csosntrib_sn.Name) then
   cb_csosntrib_sn.Text:=DM4.Tb_FilPad2FPVALOR.AsString
else
   begin
   cb_csosntrib_sn.Text:='102';
   bbSalvarClick(self);
   end;

if flfilpad(-1,'_parcsosn',cb_csosntrib_rn.Name) then
   cb_csosntrib_rn.Text:=DM4.Tb_FilPad2FPVALOR.AsString
else
   begin
   cb_csosntrib_rn.Text:='101';
   bbSalvarClick(self);
   end;


if flfilpad(-1,'_parcsosn',cb_csosnst_sn.Name) then
   cb_csosnst_sn.Text:=DM4.Tb_FilPad2FPVALOR.AsString
else
   begin
   cb_csosnst_sn.Text:='202';
   bbSalvarClick(self);
   end;


if flfilpad(-1,'_parcsosn',cb_csosnst_rn.Name) then
   cb_csosnst_rn.Text:=DM4.Tb_FilPad2FPVALOR.AsString
else
   begin
   cb_csosnst_rn.Text:='201';
   bbSalvarClick(self);
   end;

end;

procedure TFrm_CSOSN_Padrao.cb_csosntrib_snClick(Sender: TObject);
begin
bbSalvar.Enabled:=true;

end;

procedure TFrm_CSOSN_Padrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
