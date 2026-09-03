unit S_Inc_ECF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func,S_DM1;

type
  TFrm_Inc_ECF = class(TForm)
    Tb_IncECF: TTable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Inc_ECF: TFrm_Inc_ECF;

implementation

{$R *.dfm}

procedure TFrm_Inc_ECF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
