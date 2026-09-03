unit S_CFG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DefBac,func;

type
  TFrm_CFG = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SEG: TEdit;
    TER: TEdit;
    QUA: TEdit;
    SAB: TEdit;
    SEX: TEdit;
    QUI: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label8: TLabel;
    DOM: TEdit;
    Label9: TLabel;
    NOMBCO: TEdit;
    SB01: TSpeedButton;
    SB02: TSpeedButton;
    SB03: TSpeedButton;
    SB04: TSpeedButton;
    SB05: TSpeedButton;
    SB06: TSpeedButton;
    SB07: TSpeedButton;
    SB08: TSpeedButton;
    OpenDialog1: TOpenDialog;
    ColorDialog1: TColorDialog;
    procedure SEGKeyPress(Sender: TObject; var Key: Char);
    procedure TERKeyPress(Sender: TObject; var Key: Char);
    procedure QUAKeyPress(Sender: TObject; var Key: Char);
    procedure QUIKeyPress(Sender: TObject; var Key: Char);
    procedure SEXKeyPress(Sender: TObject; var Key: Char);
    procedure SABKeyPress(Sender: TObject; var Key: Char);
    procedure DOMKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SB01Click(Sender: TObject);
    procedure SB02Click(Sender: TObject);
    procedure SB03Click(Sender: TObject);
    procedure SB04Click(Sender: TObject);
    procedure SB05Click(Sender: TObject);
    procedure SB06Click(Sender: TObject);
    procedure SB07Click(Sender: TObject);
    procedure SB08Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CFG: TFrm_CFG;
  f: TextFile;
  mlinha:String;

implementation


{$R *.dfm}

procedure TFrm_CFG.SEGKeyPress(Sender: TObject; var Key: Char);
begin
if (length(SEG.Text)>150) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_CFG.TERKeyPress(Sender: TObject; var Key: Char);
begin
if (length(TER.Text)>150) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CFG.QUAKeyPress(Sender: TObject; var Key: Char);
begin
if (length(QUA.Text)>150) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CFG.QUIKeyPress(Sender: TObject; var Key: Char);
begin
if (length(QUI.Text)>150) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CFG.SEXKeyPress(Sender: TObject; var Key: Char);
begin
if (length(SEX.Text)>150) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CFG.SABKeyPress(Sender: TObject; var Key: Char);
begin
if (length(SAB.Text)>150) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CFG.DOMKeyPress(Sender: TObject; var Key: Char);
begin
if (length(DOM.Text)>150) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_CFG.FormCreate(Sender: TObject);
begin
if not fileexists(mcaminho+'\BKP'+Banco_Usuario+'.CF') then
   begin
   SEG.Text:='\BKP';
   TER.Text:='\BKP';
   QUA.Text:='\BKP';
   QUI.Text:='\BKP';
   SEX.Text:='\BKP';
   SAB.Text:='\BKP';
   DOM.Text:='\BKP';
   if pbanco=1 then
      begin
      nombco.Text   :=Banco_usuario;
      SB08.Visible  :=True;
      label9.Visible:=True;
      nombco.Visible:=True;
      end
   else
      begin
      label9.Visible:=False;
      nombco.Visible:=False;
      SB08.Visible  :=False;
      end;
   end
else
   begin
   assignfile(F,mcaminho+'\BKP'+Banco_Usuario+'.CF');
   reset(f);
   readln(f,mlinha);
   DOM.Text:=mlinha;
   readln(f,mlinha);
   SEG.Text:=mlinha;
   readln(f,mlinha);
   TER.Text:=mlinha;
   readln(f,mlinha);
   QUA.Text:=mlinha;
   readln(f,mlinha);
   QUI.Text:=mlinha;
   readln(f,mlinha);
   SEX.Text:=mlinha;
   readln(f,mlinha);
   SAB.Text:=mlinha;
   if pbanco=1 then
      begin
      nombco.Text:=Banco_Caminho;
      label9.Visible:=True;
      nombco.Visible:=True;
      end
   else
      begin
      label9.Visible:=False;
      nombco.Visible:=False;
      end;
   closefile(f);
   end;
end;

procedure TFrm_CFG.BitBtn1Click(Sender: TObject);

begin

If (Trim(DOM.Text)='') or not (DirectoryExists(trim(DOM.Text))) then
   begin
   MessageDlg('O Caminho Especificado para domingo nao existe',mtError,[mbOk],0);
   DOM.SetFocus;
   exit;
   end;

If (Trim(SEG.Text)='') or not (DirectoryExists(trim(SEG.Text))) then
   begin
   MessageDlg('O Caminho Especificado para segunda nao existe',mtError,[mbOk],0);
   SEG.SetFocus;
   exit;
   end;

If (Trim(TER.Text)='') or not (DirectoryExists(trim(TER.Text))) then
   begin
   MessageDlg('O Caminho Especificado para terça feira nao existe',mtError,[mbOk],0);
   TER.SetFocus;
   exit;
   end;

If (Trim(QUA.Text)='') or not (DirectoryExists(trim(QUA.Text))) then
   begin
   MessageDlg('O Caminho Especificado para quarta nao existe',mtError,[mbOk],0);
   QUA.SetFocus;
   exit;
   end;
If (Trim(QUI.Text)='') or not (DirectoryExists(trim(QUI.Text))) then
   begin
   MessageDlg('O Caminho Especificado para quinta feira nao existe',mtError,[mbOk],0);
   QUI.SetFocus;
   exit;
   end;

If (Trim(SEX.Text)='') or not (DirectoryExists(trim(SEX.Text))) then
   begin
   MessageDlg('O Caminho Especificado para segunda nao existe',mtError,[mbOk],0);
   SEG.SetFocus;
   exit;
   end;
if NOMBCO.Visible then
   begin
   If (Trim(NOMBCO.Text)='') or not (DirectoryExists(trim(NOMBCO.Text))) then
      begin
      MessageDlg('O Caminho Especificado para o banco de dados nao existe',mtError,[mbOk],0);
      NOMBCO.SetFocus;
      exit;
      end;
   end;

if fileexists(mcaminho+'\BKP'+Banco_Usuario+'.CF') then
   begin
   DeleteFile(mcaminho+'\BKP'+Banco_Usuario+'.CF');
   end;
assignfile(f,mcaminho+'\BKP'+Banco_Usuario+'.CF');
rewrite(f);
mlinha:=DOM.Text;
writeln(f,mlinha);
mlinha:=SEG.Text;
writeln(f,mlinha);
mlinha:=TER.Text;
writeln(f,mlinha);
mlinha:=QUA.Text;
writeln(f,mlinha);
mlinha:=QUI.Text;
writeln(f,mlinha);
mlinha:=SEX.Text;
writeln(f,mlinha);
mlinha:=SAB.Text;
writeln(f,mlinha);
if nombco.Visible then
   begin
   mlinha:='-B-'+NOMBCO.Text;
   writeln(f,mlinha);
   end;
closefile(f);
verteclado(0);
MessageDlg('Gravado!',mtInformation,[mbOk],0);
end;

procedure TFrm_CFG.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CFG.SB01Click(Sender: TObject);
begin
testeform := TFrm_CFG(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
   Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   DOM.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);


end;

procedure TFrm_CFG.SB02Click(Sender: TObject);
begin
testeform := TFrm_CFG(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   SEG.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_CFG.SB03Click(Sender: TObject);
begin
testeform := TFrm_CFG(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   TER.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_CFG.SB04Click(Sender: TObject);
begin
testeform := TFrm_CFG(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   QUA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_CFG.SB05Click(Sender: TObject);
begin
testeform := TFrm_CFG(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   QUI.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_CFG.SB06Click(Sender: TObject);
begin
testeform := TFrm_CFG(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   SEX.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);


end;

procedure TFrm_CFG.SB07Click(Sender: TObject);
begin
testeform := TFrm_CFG(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   SAB.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_CFG.SB08Click(Sender: TObject);
begin
testeform := TFrm_CFG(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   NOMBCO.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_CFG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
