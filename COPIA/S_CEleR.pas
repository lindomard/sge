unit S_CEleR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, S_DM1,func,db,dbtables,lerarq;

type
  TFrm_CEleR = class(TForm)
    Panel1: TPanel;
    bbFechar: TBitBtn;
    panel_div: TPanel;
    Label2: TLabel;
    DBGrid_celeres: TDBGrid;
    procedure bbFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CEleR: TFrm_CEleR;
implementation

uses S_CEle;

{$R *.DFM}

procedure TFrm_CEleR.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CEleR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
