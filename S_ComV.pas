unit S_ComV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, db, dbtables, func,S_DM1, S_Impres,
  S_Ven,lerarq;

type
  TFrm_ComV = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ComV: TFrm_ComV;

implementation

{$R *.dfm}

procedure TFrm_ComV.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_ComV.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
CODVEN.Text :=fChamaVen(0,'frm_ComV',Key);
MDT1.SetFocus;
key:=#0;
end;

procedure TFrm_ComV.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   NOMVEN.Text:='Todos...'
else
   begin
   if flcadven(1,0,CODVEN.Text) then
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value
   else
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;
end;
procedure TFrm_ComV.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrtoDate(MDT1.Text));
   Except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_ComV.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrtoDate(MDT2.Text));
   Except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fMensagem('Data inicial maior que final invalido!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_ComV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
