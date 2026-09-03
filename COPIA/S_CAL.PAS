unit S_Cal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Mask, Buttons,func;

type
  TFrm_Cal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    MC1: TMonthCalendar;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    DIAS: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BBnDias: TBitBtn;
    BBnData: TBitBtn;
    procedure DIASKeyPress(Sender: TObject; var Key: Char);
    procedure BBnDiasClick(Sender: TObject);
    procedure BBnDataClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cal: TFrm_Cal;

implementation

{$R *.DFM}

procedure TFrm_Cal.DIASKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9','-',#8]) then Key:=#0;
end;

procedure TFrm_Cal.BBnDiasClick(Sender: TObject);
begin
   try
      mdt1.Text:=FormatDateTime('dd/mm/YYYY',StrToDate(mdt1.Text))
   Except
      ShowMessage('Coloque uma data válida em DATA INICIAL!');
      mdt1.Clear;
      mdt1.SetFocus;
      Exit;
   end;
   try
      mdt2.Text:=FormatDateTime('dd/mm/YYYY',StrToDate(mdt2.Text))
   Except
      ShowMessage('Coloque uma data válida em DATA FINAL!');
      mdt2.Clear;
      mdt2.SetFocus;
      Exit;
   end;
   DIAS.Text:=FloatToStr(StrToDate(MDT2.Text)-StrToDate(MDT1.Text));
   MC1.Date :=StrToDate(MDT2.Text);
end;

procedure TFrm_Cal.BBnDataClick(Sender: TObject);
Begin
   try
      mdt1.Text:=FormatDateTime('dd/mm/YYYY',StrToDate(mdt1.Text))
   Except
      ShowMessage('Coloque uma data válida em DATA INICIAL!');
      mdt1.Clear;
      mdt1.SetFocus;
      Exit;
   end;
   try
      DIAS.Text:=FloatToStr((StrToFloat(DIAS.Text)));
   Except
      ShowMessage('Coloque um número inteiro em DIAS PARA CALCULO!');
      DIAS.Clear;
      DIAS.SetFocus;
      Exit;
   end;
   MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text)+StrToFloat(DIAS.Text));
   MC1.Date := StrToDate(MDT1.Text)+StrToFloat(DIAS.Text);
end;

procedure TFrm_Cal.FormCreate(Sender: TObject);
begin
   MC1.Date :=Date;
end;

procedure TFrm_Cal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Cal.FormDeactivate(Sender: TObject);
begin
ShowMessage('deactivate');
end;

end.
