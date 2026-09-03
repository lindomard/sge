unit S_CanFdia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,func,S_DM1;

type
  TFrm_CanFDia = class(TForm)
    Label1: TLabel;
    MDATA: TMaskEdit;
    bbCancelar: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CanFDia: TFrm_CanFDia;

implementation

{$R *.dfm}

procedure TFrm_CanFDia.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CanFDia.MDATAExit(Sender: TObject);
begin
if Trim(MDATA.Text)<>'/  /' then
   begin
   try
      MDATA.Text:=FormatDatetime(fdt2, StrToDate(MDATA.Text));
   except
      MessageDlg('Data inválida!',mtWarning,[mbOk],0);
      MDATA.SetFocus;
      end;
   end;
end;

procedure TFrm_CanFDia.bbCancelarClick(Sender: TObject);
begin
if Trim(MDATA.Text)='/  /' then
   begin
   MessageDlg('É necessário que se coloque a data!',mtWarning,[mbOk],0);
   MDATA.SetFocus;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADFDIA where FD_DATA>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDATA.Text))+chr(39));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   close;
except
   MessageDlg('Erro ao Tentar excluir o CADFDIA',mtError,[mbOk],0);
   end;
end;

procedure TFrm_CanFDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
