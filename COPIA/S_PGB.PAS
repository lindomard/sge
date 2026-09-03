unit S_Pgb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, func, Gauges, StdCtrls;

type
  TFrm_Pgb = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    GB_ATUAL: TGroupBox;
    Gauge1: TGauge;
    GB_GERAL: TGroupBox;
    Gauge2: TGauge;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pgb: TFrm_Pgb;
  mlid, mqtd: Integer;
  mlidg, mqtdg: Integer;

implementation

{$R *.DFM}

procedure TFrm_Pgb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
