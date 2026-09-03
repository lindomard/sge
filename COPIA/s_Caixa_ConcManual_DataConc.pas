unit s_Caixa_ConcManual_DataConc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons;

type
  TFrm_Caixa_ConcManual_DataConc = class(TForm)
    Label1: TLabel;
    edt_datini: TDateEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure edt_datiniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mAcatou_Data: Boolean;
  end;

var
  Frm_Caixa_ConcManual_DataConc: TFrm_Caixa_ConcManual_DataConc;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_Caixa_ConcManual_DataConc.FormShow(Sender: TObject);
begin
    mAcatou_Data:=false;

end;

procedure TFrm_Caixa_ConcManual_DataConc.bbAtualizarClick(Sender: TObject);
begin
    mAcatou_Data:=true;
end;

procedure TFrm_Caixa_ConcManual_DataConc.bbSairClick(Sender: TObject);
begin
    mAcatou_Data:=false;

end;

procedure TFrm_Caixa_ConcManual_DataConc.edt_datiniExit(Sender: TObject);
begin
if fsonumero(edt_datini.Text)=0 then
   edt_datini.Text:='/  /'
else
   begin
   try
      edt_datini.Text:=FormatDateTime(fdt2, StrtoDate(edt_datini.text));
   except
      MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      end;
   end
end;

end.
