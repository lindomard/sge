unit S_MUsar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, S_DM1, db, dbtables, FUNC, DBCtrls,lerarq,S_Impres;

type
  TFrm_Musar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    NOMCLI: TEdit;
    MOD1: TEdit;
    MOD2: TEdit;
    MOD3: TEdit;
    MOD4: TEdit;
    MOD5: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    MOD6: TEdit;
    NOMPRO: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NOMCLIKeyPress(Sender: TObject; var Key: Char);
    procedure NOMPROKeyPress(Sender: TObject; var Key: Char);
    procedure MOD1KeyPress(Sender: TObject; var Key: Char);
    procedure MOD2KeyPress(Sender: TObject; var Key: Char);
    procedure MOD3KeyPress(Sender: TObject; var Key: Char);
    procedure MOD4KeyPress(Sender: TObject; var Key: Char);
    procedure MOD5KeyPress(Sender: TObject; var Key: Char);
    procedure MOD6KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_musar: TFrm_Impres;
  end;

var
  Frm_Musar: TFrm_Musar;

implementation

{$R *.DFM}

procedure TFrm_Musar.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Musar.BitBtn2Click(Sender: TObject);
begin
NOMCLI.Text:='';
NOMPRO.Text:='';
MOD1.Text  :='';
MOD2.Text  :='';
MOD3.Text  :='';
MOD4.Text  :='';
MOD5.Text  :='';
MOD6.Text  :='';

end;

procedure TFrm_Musar.BitBtn1Click(Sender: TObject);
var
F: TextFile;
mlin: Integer;
begin
testeform := TFrm_Musar(FindGlobalComponent('form_impres_musar'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_musar);

form_impres_musar.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=1;
form_impres_musar.RDprint1.ImpF(mlin,01,Centra(Trim(NOMCLI.Text),' ',60),mneg);
mlin:=mlin+1;
form_impres_musar.RDprint1.ImpF(mlin,01,Centra(Trim(NOMPRO.Text),' ',60),mneg);
mlin:=mlin+1;
form_impres_musar.RDprint1.ImpF(mlin,01,Centra(Trim(mod1.Text),' ',60),mreduz);
mlin:=mlin+1;
form_impres_musar.RDprint1.ImpF(mlin,01,Centra(Trim(mod2.Text),' ',60),mreduz);
mlin:=mlin+1;
form_impres_musar.RDprint1.ImpF(mlin,01,Centra(Trim(mod3.Text),' ',60),mreduz);
mlin:=mlin+1;
form_impres_musar.RDprint1.ImpF(mlin,01,Centra(Trim(mod4.Text),' ',60),mreduz);
mlin:=mlin+1;
form_impres_musar.RDprint1.ImpF(mlin,01,Centra(Trim(mod5.Text),' ',60),mreduz);
mlin:=mlin+1;
form_impres_musar.RDprint1.ImpF(mlin,01,Centra(Trim(mod5.Text),' ',60),mreduz);
if form_impres_musar.RDprint1.Setup then form_impres_musar.RDprint1.Fechar;
form_impres_musar.free;
form_impres_musar:=nil;


end;

procedure TFrm_Musar.NOMCLIKeyPress(Sender: TObject; var Key: Char);
begin
if length(NOMCLI.Text)>30 then
   key:=#0;

end;

procedure TFrm_Musar.NOMPROKeyPress(Sender: TObject; var Key: Char);
begin
if length(NOMPRO.Text)>30 then
   key:=#0;

end;

procedure TFrm_Musar.MOD1KeyPress(Sender: TObject; var Key: Char);
begin
if length(MOD1.Text)>60 then
   key:=#0;

end;

procedure TFrm_Musar.MOD2KeyPress(Sender: TObject; var Key: Char);
begin
if length(MOD2.Text)>60 then
   key:=#0;

end;

procedure TFrm_Musar.MOD3KeyPress(Sender: TObject; var Key: Char);
begin
if length(MOD3.Text)>60 then
   key:=#0;

end;

procedure TFrm_Musar.MOD4KeyPress(Sender: TObject; var Key: Char);
begin
if length(MOD4.Text)>60 then
   key:=#0;

end;

procedure TFrm_Musar.MOD5KeyPress(Sender: TObject; var Key: Char);
begin
if length(MOD5.Text)>60 then
   key:=#0;

end;

procedure TFrm_Musar.MOD6KeyPress(Sender: TObject; var Key: Char);
begin
if length(MOD6.Text)>60 then
   key:=#0;

end;

procedure TFrm_Musar.FormCreate(Sender: TObject);
begin
flcadpro(0,0,1,'9999');

end;

procedure TFrm_Musar.FormActivate(Sender: TObject);
begin
NOMCLI.SetFocus;
end;

procedure TFrm_Musar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
