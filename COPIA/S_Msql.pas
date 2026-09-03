unit S_Msql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids;

type
  TFrm_msql = class(TForm)
    STG_SQL: TStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Function fmontasql(ptipo: Integer):String;
var
  Frm_msql: TFrm_msql;

implementation

{$R *.dfm}
Function fmontasql(ptipo: Integer):String;
begin

end;
end.
