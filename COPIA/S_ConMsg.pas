unit S_ConMsg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,S_DM1,func;

type
  TFrm_ConMsg = class(TForm)
    MENS: TEdit;
    Label1: TLabel;
    RG_MTIPO: TRadioGroup;
    BitBtn10: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ConMsg: TFrm_ConMsg;

implementation

{$R *.dfm}

procedure TFrm_ConMsg.BitBtn1Click(Sender: TObject);
begin
close
end;

procedure TFrm_ConMsg.BitBtn10Click(Sender: TObject);
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

procedure TFrm_ConMsg.FormCreate(Sender: TObject);
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

procedure TFrm_ConMsg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
