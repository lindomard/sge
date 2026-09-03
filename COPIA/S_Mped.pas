unit S_Mped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, db, dbtables, func, s_tra, s_dm1,lerarq;

type
  TFrm_MPed = class(TForm)
    Panel1: TPanel;
    panel2: TPanel;
    Label1: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PLACAV: TEdit;
    UFPV: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    QTDVOL: TEdit;
    ESPECIE: TEdit;
    PESOB: TEdit;
    PESOL: TEdit;
    RGFRETEPC: TRadioGroup;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    VALFRE: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure QTDVOLKeyPress(Sender: TObject; var Key: Char);
    procedure PESOBKeyPress(Sender: TObject; var Key: Char);
    procedure PESOLKeyPress(Sender: TObject; var Key: Char);
    procedure PESOBExit(Sender: TObject);
    procedure PESOLExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure VALFREKeyPress(Sender: TObject; var Key: Char);
    procedure VALFREExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MPed: TFrm_MPed;

implementation

{$R *.dfm}

procedure TFrm_MPed.BitBtn1Click(Sender: TObject);
begin
if not (DM1.Tb_Tra.Eof) and (DM1.Tb_TraTRPLACAV.Value<>Trim(PLACAV.Text)) then
   begin
   DM1.Tb_Tra.Edit;
   DM1.Tb_TraTRPLACAV.Value:=PLACAV.Text;
   DM1.Tb_TraTRUF.Value    :=UFPV.Text;
   DM1.Tb_Tra.Post;
   end;
close;
end;

procedure TFrm_MPed.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) then
      begin
      Application.CreateForm(Tfrm_Tra, Frm_Tra);
      Frm_Tra.Edit1.Text:=key;
      Frm_Tra.BBnAtu.Click;
      Frm_tra.Edit1.SelStart:=1;
      Frm_Tra.Edit1.SelLength:=1;
      Frm_Tra.PC1.ActivePageIndex:=1;
      Frm_Tra.ShowModal;
      CODTRA.Text:=DM1.Tb_TraTRCODTRA.AsString;
      Frm_Tra.Free;
      key:='0';
      end;

end;

procedure TFrm_MPed.CODTRAExit(Sender: TObject);
begin
if Trim(CODTRA.Text)='' then
   NOMTRA.Text:=''
else
   begin
   flcadtra(1,0,CODTRA.Text);
   if DM1.Tb_Tra.Eof then
      begin
      ShowMessage('Transportadora nao Cadastrada.');
      CODTRA.SetFocus;
      end
   else
      Begin
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
      if Trim(PLACAV.Text)='' Then
         begin
         PLACAV.Text:=DM1.Tb_TraTRPLACAV.Value;
         UFPV.Text  :=DM1.Tb_TraTRUFPV.Value;
         end;
      end;
   end;
end;

procedure TFrm_MPed.QTDVOLKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_MPed.PESOBKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then key:=DecimalSeparator
else
   if not (key in ['0'..'9']) and (key<>#8) Then
      key:=#8;

end;

procedure TFrm_MPed.PESOLKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then key:=DecimalSeparator
else
   if not (key in ['0'..'9']) and (key<>#8) Then
      key:=#8;

end;

procedure TFrm_MPed.PESOBExit(Sender: TObject);
begin
PESOB.Text:=FormatFloat('###.000',StrToFloat('0'+PESOB.Text));
end;

procedure TFrm_MPed.PESOLExit(Sender: TObject);
begin
PESOL.Text:=FormatFloat('###.000',StrToFloat('0'+PESOL.Text));

end;

procedure TFrm_MPed.FormCreate(Sender: TObject);
begin
if Trim(CODTRA.Text)='' then
   NOMTRA.Text:=''
else
   begin
   flcadtra(1,0,CODTRA.Text);
   if DM1.Tb_Tra.Eof then
      begin
      ShowMessage('Transportadora nao Cadastrada.');
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;

end;

procedure TFrm_MPed.VALFREKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then key:=DecimalSeparator
else
   if not (key in ['0'..'9']) and (key<>#8) Then
      key:=#8;
end;

procedure TFrm_MPed.VALFREExit(Sender: TObject);
begin
VALFRE.Text:=FormatFloat('###.000',StrToFloat('0'+VALFRE.Text));

end;

end.
