{Atualizacao}
unit s_coeficiente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  Tfrm_coefic = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    lbl_juros: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    val_ini: TEdit;
    parc: TEdit;
    juros: TEdit;
    calc: TButton;
    jur_totais: TEdit;
    val_parc: TEdit;
    coef_tot: TEdit;
    perc_juros: TEdit;
    Val_Tot: TEdit;
    TabSheet2: TTabSheet;
    bb_salva_per: TBitBtn;
    edt_n_percentual: TEdit;
    Label10: TLabel;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    edt_password: TEdit;
    bb_liberar: TBitBtn;
    GroupBox2: TGroupBox;
    cb_senha: TCheckBox;
    edt_senha: TEdit;
    Label12: TLabel;
    bb_m_senha: TBitBtn;
    procedure calcClick(Sender: TObject);
    procedure bb_salva_perClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure val_iniExit(Sender: TObject);
    procedure bb_liberarClick(Sender: TObject);
    procedure val_iniEnter(Sender: TObject);
    procedure bb_m_senhaClick(Sender: TObject);
    procedure cb_senhaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_coefic: Tfrm_coefic;

implementation

uses S_DM1, Func, func_bde, lerarq, S_DM4, DB;

{$R *.dfm}

procedure Tfrm_coefic.calcClick(Sender: TObject);
var
  x: integer;
  Saldo: real;
begin
x:=0;
if trim(val_ini.Text)='' then
  val_ini.Text:='1';
saldo:=ValFloat(val_ini.Text);
while x < strtoint(parc.Text) do
  begin
  Saldo:=Saldo*(1+StrToFloat(juros.Text)/100);
  x:=x+1;
  end;
jur_totais.Text:=FormatFloat('###,##0.00',(Saldo-ValFloat(val_ini.Text)));
Val_Tot.Text:=FormatFloat('###,##0.00',Saldo);
val_parc.Text:=FormatFloat('###,##0.00',(Saldo/StrToFloat(parc.Text)));
coef_tot.Text:=FloatToStr(SALDO/ValFloat(val_ini.Text));
perc_juros.Text:=FormatFloat('###,##0.00',(((SALDO-ValFloat(val_ini.Text))*100)/ValFloat(val_ini.Text)));

end;

procedure Tfrm_coefic.bb_salva_perClick(Sender: TObject);
begin
fDeletaPadroes(0,'_COEFICIENTE','_COEF');
fGravaPadroes(0,'_COEF','text' ,'_COEFICIENTE',edt_n_percentual.Text);
juros.Text:=edt_n_percentual.Text;
cb_senha.Enabled:=false;
edt_n_percentual.Enabled:=False;
edt_n_percentual.clear;
edt_password.Clear;
bb_salva_per.Enabled:=False;
if (trim(val_ini.Text)<>'') and (trim(parc.Text)<>'') then
  calcClick(self);
PageControl1.TabIndex:=0;

end;

procedure Tfrm_coefic.FormCreate(Sender: TObject);
begin
if flfilpad(0,'_COEFICIENTE','_COEF') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','_COEF',[]) then
    juros.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
  end
else
  begin
  juros.Text:='3';
  end;
if not flfilpad(0,'_COEFICIENTE','_PSW') then
  begin
  fDeletaPadroes(0,'_COEFICIENTE','_PSW');
  fGravaPadroes(0,'_PSW','text' ,'_COEFICIENTE','359661');
  end;
end;

procedure Tfrm_coefic.val_iniExit(Sender: TObject);
begin
if trim(val_ini.text)<>'' then
  val_ini.Text:=FormatFloat('###,##0.00',StrToFloat(val_ini.Text));
end;

procedure Tfrm_coefic.bb_liberarClick(Sender: TObject);
begin
if flfilpad(0,'_COEFICIENTE','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','_PSW',[]) then
    begin
    if edt_password.Text=DM4.Tb_FilPad2FPVALOR.AsString then
      begin
      edt_n_percentual.Enabled:=True;
      bb_salva_per.Enabled:=True;
      cb_senha.Enabled:=True;
      edt_n_percentual.SetFocus;
      if DM4.Tb_FilPad2.Locate('FPCOMP','_COEF',[]) then
        begin
        edt_n_percentual.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
        end;
      end
    else
      begin
      edt_password.Text:='';
      end;
    end;
  end;
end;

procedure Tfrm_coefic.val_iniEnter(Sender: TObject);
begin
if Trim(val_ini.text)<>'' then
  val_ini.Text:=FloatToStr(ValFloat(val_ini.Text));
end;

procedure Tfrm_coefic.bb_m_senhaClick(Sender: TObject);
begin
fDeletaPadroes(0,'_COEFICIENTE','_PSW');
fGravaPadroes(0,'_PSW','text' ,'_COEFICIENTE',edt_senha.Text);
edt_senha.Clear;
edt_senha.Enabled:=false;
cb_senha.Checked:=false;
bb_m_senha.Enabled:=false;

end;

procedure Tfrm_coefic.cb_senhaClick(Sender: TObject);
begin
if cb_senha.Checked=true then
  begin
  edt_senha.Enabled:=True;
  bb_m_senha.Enabled:=True;
  end
else
  begin
  edt_senha.Enabled:=False;
  bb_m_senha.Enabled:=False;
  end;
end;

procedure Tfrm_coefic.FormShow(Sender: TObject);
begin
PageControl1.TabIndex:=0;
end;

procedure Tfrm_coefic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (FormState<>[fsModal]) then
      Action := caFree;
end;

end.
