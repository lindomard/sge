unit S_LMF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask,func;

type
  TFrm_LMF = class(TForm)
    op1: TRadioGroup;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    INT1: TEdit;
    INT2: TEdit;
    BnOk: TButton;
    BnCancela: TButton;
    procedure INT2KeyPress(Sender: TObject; var Key: Char);
    procedure BnCancelaClick(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure BnOkClick(Sender: TObject);
    procedure INT1Exit(Sender: TObject);
    procedure INT2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_LMF: TFrm_LMF;

implementation



{$R *.DFM}

procedure TFrm_LMF.INT2KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0
end;

procedure TFrm_LMF.BnCancelaClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_LMF.op1Click(Sender: TObject);
begin
If Op1.ItemIndex<2 then
   begin
   MDT1.Visible:=True;
   MDT2.Visible:=True;
   Label1.Caption:='Período:';
   INT1.Visible:=False;
   INT2.Visible:=False;
   end
else
   begin
   MDT1.Visible:=False;
   MDT2.Visible:=False;
   Label1.Caption:='Intervalo:';
   INT1.Visible:=True;
   INT2.Visible:=True;
   end;
end;

procedure TFrm_LMF.BnOkClick(Sender: TObject);
begin
If Op1.ItemIndex<2 then
   begin
   if (Trim(MDT1.Text)='/  /') or (Trim(MDT2.Text)='/  /') then
      begin
      MessageDlg('As datas são Obrigatórias!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   If StrToDate(MDT2.Text)<StrTodate(MDT1.Text) then
      begin
      MessageDlg('A segunda data deve ser maior ou igual a primeira!',mtError,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end
   else
      begin
//      mI1:=FormatDateTime('ddmmyyyy',StrtoDate(MDT1.Text));
//      mI2:=FormatDateTime('ddmmyyyy',StrtoDate(MDT2.Text));
      Close;
      end;
   end
else
   begin
   int1.Text:=FormatFloat('0000',(ValFloat(INT1.Text)));
   int2.Text:=FormatFloat('0000',(ValFloat(INT2.Text)));
   if ValFloat(INT1.Text)<1 then
      begin
      MessageDlg('Primeiro Intervalo tem que ser um valor positivo!',mtWarning,[mbOk],0);
      Int1.SetFocus;
      exit;
      end;


   If ValFloat(INT2.Text)<ValFloat(INT1.Text) then
      begin
      MessageDlg('O segundo intervalo deve ser maior ou igual ao primeiro!',mtError,[mbOk],0);
      INT2.SetFocus;
      exit;
      end
   else
      begin
//      mI1:=INT1.Text;
//      mI2:=INT2.Text;
      Close;
      end;
   end;
end;

procedure TFrm_LMF.INT1Exit(Sender: TObject);
begin
Int1.Text:=fdeixanum(INT1.Text);
end;

procedure TFrm_LMF.INT2Exit(Sender: TObject);
begin
Int2.Text:=fdeixanum(INT2.Text);

end;

procedure TFrm_LMF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
