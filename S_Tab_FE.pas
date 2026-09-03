unit S_Tab_FE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, func, StdCtrls, Buttons, S_SelEmp;

type
  TFrm_Tab_FE = class(TForm)
    Memo1: TMemo;
    bbSair: TBitBtn;
    bbLimpar: TBitBtn;
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Memo1Exit(Sender: TObject);
    procedure bbLimparClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Tab_FE: TFrm_Tab_FE;

implementation

{$R *.dfm}

procedure TFrm_Tab_FE.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
if Length(memo1.Text)>499 then
   key:=#0;


end;

procedure TFrm_Tab_FE.Memo1Exit(Sender: TObject);
begin
if Length(memo1.Text)>499 then
   Memo1.Text:=copy(memo1.Text,1,499);

end;

procedure TFrm_Tab_FE.bbLimparClick(Sender: TObject);
begin
Memo1.Text:='';
end;

procedure TFrm_Tab_FE.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Tab_FE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Tab_FE.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_Tab_FE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.
