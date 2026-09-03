unit S_Fontes_Ajusta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,S_DM1,func;

type
  TFrm_Fontes_Ajusta = class(TForm)
    Panel1: TPanel;
    bbGravar: TBitBtn;
    bbRestaurar: TBitBtn;
    bbCancelar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    bbFontes: TBitBtn;
    bbFundos: TBitBtn;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    procedure bbSairClick(Sender: TObject);
    procedure bbFontesClick(Sender: TObject);
    procedure bbFundosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbRestaurarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Fontes_Ajusta: TFrm_Fontes_Ajusta;
  pNomTer: String;
  pNomFor: String;
  pNomCom: String;
implementation

{$R *.dfm}

procedure TFrm_Fontes_Ajusta.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Fontes_Ajusta.bbFontesClick(Sender: TObject);
begin

If FontDialog1.Execute then
   Memo1.Font:=FontDialog1.Font;

end;

procedure TFrm_Fontes_Ajusta.bbFundosClick(Sender: TObject);
begin

If ColorDialog1.Execute then
   Memo1.Color:=ColorDialog1.Color;

end;

procedure TFrm_Fontes_Ajusta.FormCreate(Sender: TObject);
begin
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+PNomTer+chr(39)
                     +' and PFNOMFOR='+chr(39)+pNomFor+chr(39)
                     +' and PFNOMCOM='+chr(39)+pNomCom+chr(39));
DM1.Tb_ParFon.Open;

if DM1.Tb_Parfon.Eof then
   begin
   DM1.Tb_ParFon.Append;
   DM1.Tb_ParFonPFCODEMP.Value:=codemp;
   DM1.Tb_ParFonPFNOMTER.Value:=PNomTer;
   DM1.Tb_ParFonPFNOMFOR.Value:=pNomFor;
   DM1.Tb_ParFonPFNOMCOM.Value:=pNomCom;
   DM1.Tb_ParFonPFNOMFON.Value:='MS Sans Serif';
   DM1.Tb_ParFonPFTAMFON.Value:=8;
   DM1.Tb_ParFonPFCORFON.Value:=Frm_Fontes_Ajusta.Font.Color;
   DM1.Tb_ParFonPFCORFUN.Value:=Frm_Fontes_Ajusta.Color;

   DM1.Tb_ParFon.Post;
   end;
Memo1.Font.Name  :=DM1.Tb_ParFonPFNOMFON.Value;
Memo1.Font.Size  :=DM1.Tb_ParFonPFTAMFON.AsInteger;
Memo1.Font.Color :=DM1.Tb_ParFonPFCORFON.AsInteger;
Memo1.Color      :=DM1.Tb_ParFonPFCORFUN.AsInteger;

end;

procedure TFrm_Fontes_Ajusta.bbGravarClick(Sender: TObject);
begin
if not (DM1.Tb_Parfon.Eof) and not (DM1.Tb_ParFonPFNOMTER.IsNull) then
   begin
   DM1.Tb_ParFon.Edit;
   DM1.Tb_ParFonPFNOMFON.Value:=Memo1.Font.Name;
   DM1.Tb_ParFonPFTAMFON.Value:=Memo1.Font.Size;
   DM1.Tb_ParFonPFCORFON.Value:=Memo1.Font.Color;
   DM1.Tb_ParFonPFCORFUN.Value:=Memo1.Color;
   DM1.Tb_ParFon.Post;
   end;

end;

procedure TFrm_Fontes_Ajusta.bbRestaurarClick(Sender: TObject);
begin
if not (DM1.Tb_Parfon.Eof) and not (DM1.Tb_ParFonPFNOMTER.IsNull) then
   begin
   DM1.Tb_ParFon.Edit;
   DM1.Tb_ParFonPFNOMFON.Value:='MS Sans Serif';
   DM1.Tb_ParFonPFTAMFON.Value:=8;
   DM1.Tb_ParFonPFCORFON.Value:=Frm_Fontes_Ajusta.Font.Color;
   DM1.Tb_ParFonPFCORFUN.Value:=Frm_Fontes_Ajusta.Color;
   DM1.Tb_ParFon.Post;
   Memo1.Font.Name  :=DM1.Tb_ParFonPFNOMFON.Value;
   Memo1.Font.Size  :=DM1.Tb_ParFonPFTAMFON.AsInteger;
   Memo1.Font.Color :=DM1.Tb_ParFonPFCORFON.AsInteger;
   Memo1.Color      :=DM1.Tb_ParFonPFCORFUN.AsInteger;
   end;

end;

procedure TFrm_Fontes_Ajusta.bbCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Fontes_Ajusta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
