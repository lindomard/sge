unit S_Color;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ColorGrd, ExtCtrls, StdCtrls, Buttons, db, dbtables, S_DM1,func;

type
  TFrm_Color = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    MENS: TEdit;
    RG_MTIPO: TRadioGroup;
    BitBtn10: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Color: TFrm_Color;

implementation

uses S_PonVen;

{$R *.dfm}

procedure TFrm_Color.BitBtn2Click(Sender: TObject);
var
mfonte: TColor;
nome : string;
mval : Real;
begin

If FontDialog1.Execute then
   panel2.Font:=FontDialog1.Font;
end;

procedure TFrm_Color.BitBtn3Click(Sender: TObject);
begin

If ColorDialog1.Execute then
   Panel2.Color:=ColorDialog1.Color;

end;

procedure TFrm_Color.BitBtn1Click(Sender: TObject);
begin
GroupBox1.Caption:='Fontes do Primeiro Painel';

DM1.Tb_ParFon.Close;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+PNomTer+chr(39)
                     +' and PFNOMFOR='+chr(39)+'PONVEN'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'LABEL3'+chr(39));
DM1.Tb_ParFon.Open;

if DM1.Tb_Parfon.Eof then
   begin
   DM1.Tb_ParFon.Append;
   DM1.Tb_ParFonPFCODEMP.Value:=codemp;
   DM1.Tb_ParFonPFNOMTER.Value:=PNomTer;
   DM1.Tb_ParFonPFNOMFOR.Value:='PONVEN';
   DM1.Tb_ParFonPFNOMCOM.Value:='LABEL3';
   DM1.Tb_ParFon.Post;
   end;
Panel2.Font.Name :=DM1.Tb_ParFonPFNOMFON.Value;
Panel2.Font.Size :=DM1.Tb_ParFonPFTAMFON.AsInteger;
Panel2.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
//Panel2.Color     :=DM1.Tb_ParFonPFCORFUN.AsInteger; lindomar

end;

procedure TFrm_Color.BitBtn8Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Color.BitBtn4Click(Sender: TObject);
begin

if not (DM1.Tb_Parfon.Eof) and not (DM1.Tb_ParFonPFNOMTER.IsNull) then
   begin
   DM1.Tb_ParFon.Edit;
   DM1.Tb_ParFonPFNOMFON.Value:=panel2.Font.Name;
   DM1.Tb_ParFonPFTAMFON.Value:=Panel2.Font.Size;
   DM1.Tb_ParFonPFCORFON.Value:=panel2.Font.Color;
//   DM1.Tb_ParFonPFCORFUN.Value:=Panel2.Color; lindomar
   DM1.Tb_ParFon.Post;
   end;

end;

procedure TFrm_Color.BitBtn5Click(Sender: TObject);
begin
GroupBox1.Caption:='Mensagem de caixa livre';

DM1.Tb_ParFon.Close;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+PNomTer+chr(39)
                     +' and PFNOMFOR='+chr(39)+'PONVEN'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'PANEL4'+chr(39));
DM1.Tb_ParFon.Open;
if DM1.Tb_Parfon.Eof then
   begin
   DM1.Tb_ParFon.Append;
   DM1.Tb_ParFonPFCODEMP.Value:=codemp;
   DM1.Tb_ParFonPFNOMTER.Value:=PNomTer;
   DM1.Tb_ParFonPFNOMFOR.Value:='PONVEN';
   DM1.Tb_ParFonPFNOMCOM.Value:='PANEL4';
   DM1.Tb_ParFon.Post;
   end;
Panel2.Font.Name :=DM1.Tb_ParFonPFNOMFON.Value;
Panel2.Font.Size :=DM1.Tb_ParFonPFTAMFON.AsInteger;
Panel2.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
// Panel2.Color     :=DM1.Tb_ParFonPFCORFUN.AsInteger; lindomar

end;

procedure TFrm_Color.BitBtn6Click(Sender: TObject);
begin

GroupBox1.Caption:='Último item Efetivado';
DM1.Tb_ParFon.Close;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+PNomTer+chr(39)
                     +' and PFNOMFOR='+chr(39)+'PONVEN'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'PANEL5'+chr(39));
DM1.Tb_ParFon.Open;
if DM1.Tb_Parfon.Eof then
   begin
   DM1.Tb_ParFon.Append;
   DM1.Tb_ParFonPFCODEMP.Value:=codemp;
   DM1.Tb_ParFonPFNOMTER.Value:=PNomTer;
   DM1.Tb_ParFonPFNOMFOR.Value:='PONVEN';
   DM1.Tb_ParFonPFNOMCOM.Value:='PANEL5';
   DM1.Tb_ParFon.Post;
   end;
Panel2.Font.Name :=DM1.Tb_ParFonPFNOMFON.Value;
Panel2.Font.Size :=DM1.Tb_ParFonPFTAMFON.AsInteger;
Panel2.Font.Color:=DM1.Tb_ParFonPFCORFON.AsInteger;
// Panel2.Color     :=DM1.Tb_ParFonPFCORFUN.AsInteger; lindomar


end;

procedure TFrm_Color.BitBtn9Click(Sender: TObject);
begin

if fmensagem('Confirma a Restauração para as fontes padrões',0,['1','2'],2)=mrYes then
   begin
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from PARFON where '
                        +' PFCODEMP=0'+IntTostr(codemp)
                        +' and PFNOMTER='+chr(39)+PNomTer+chr(39)
                        +' and PFNOMFOR='+chr(39)+'PONVEN'+chr(39)
                        +' and PFNOMCOM<>'+chr(39)+'PARAM'+chr(39));

   DM1.Query1.Execsql;
   DM1.SG_ASSOC.Commit;
   end;

end;

procedure TFrm_Color.FormCreate(Sender: TObject);
begin

DM1.Tb_ParFon.Close;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+PNomTer+chr(39)
                     +' and PFNOMFOR='+chr(39)+'PONVEN'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'PARAM'+chr(39));
DM1.Tb_ParFon.Open;
if DM1.Tb_Parfon.Eof then
   begin
   DM1.Tb_ParFon.Append;
   DM1.Tb_ParFonPFCODEMP.Value:=codemp;
   DM1.Tb_ParFonPFNOMTER.Value:=PNomTer;
   DM1.Tb_ParFonPFNOMFOR.Value:='PONVEN';
   DM1.Tb_ParFonPFNOMCOM.Value:='PARAM';
   DM1.Tb_ParFonPFMENS.Value  :='';
   DM1.Tb_ParFonPFMTIPO.Value :=3;
   DM1.Tb_ParFon.Post;
   end;
MENS.Text:=DM1.Tb_ParFonPFMENS.Value;
RG_MTIPO.ItemIndex:=DM1.Tb_ParFonPFMTIPO.AsInteger;

end;

procedure TFrm_Color.BitBtn10Click(Sender: TObject);
begin

DM1.Tb_ParFon.Close;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+PNomTer+chr(39)
                     +' and PFNOMFOR='+chr(39)+'PONVEN'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'PARAM'+chr(39));
DM1.Tb_ParFon.Open;
if DM1.Tb_Parfon.Eof then
   begin
   DM1.Tb_ParFon.Append;
   DM1.Tb_ParFonPFCODEMP.Value:=codemp;
   DM1.Tb_ParFonPFNOMTER.Value:=PNomTer;
   DM1.Tb_ParFonPFNOMFOR.Value:='PONVEN';
   DM1.Tb_ParFonPFNOMCOM.Value:='PARAM';
   DM1.Tb_ParFonPFMENS.Value  :='';
   DM1.Tb_ParFonPFMTIPO.Value :=3;
   DM1.Tb_ParFon.Post;
   end;
DM1.Tb_Parfon.Edit;
DM1.Tb_ParFonPFMENS.Value := MENS.Text;
DM1.Tb_ParFonPFMTIPO.Value:= RG_MTIPO.ItemIndex;
DM1.tb_ParFon.Post;

MessageDlg('Registro Gravado!',mtWarning,[mbOk],0);
end;

procedure TFrm_Color.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
  Action := caFree;
end;

end.
