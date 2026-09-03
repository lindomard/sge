unit S_Pro_Farma_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_Pro_Farma, DB, DBTables, ImgList, StdCtrls, DBCtrls, ComCtrls,
  Buttons, Mask, ExtCtrls, ToolWin, Grids, DBGrids, RxDBComb;

type
  TFrm_Pro_Farma_Menu = class(TFrm_Pro_Farma)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pro_Farma_Menu: TFrm_Pro_Farma_Menu;

implementation

{$R *.dfm}

procedure TFrm_Pro_Farma_Menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
