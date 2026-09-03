unit S_Stru2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBDatabase, IBSQL;

type
  TFrm_Stru2 = class(TForm)
    IBSQL1: TIBSQL;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Stru2: TFrm_Stru2;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_Stru2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
