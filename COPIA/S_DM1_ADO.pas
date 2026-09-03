unit S_DM1_ADO;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM1_ADO = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }

    procedure fConectarAdo;

  end;

var
  DM1_ADO: TDM1_ADO;

implementation

uses Func;

{$R *.dfm}



procedure tDM1_ADO.fConectarAdo;
begin
if DM1_ADO.ADOConnection1.connected=false then
   begin
   DM1_ADO.ADOConnection1.Close;
   DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
   DM1_ADO.ADOConnection1.Open;
   end;
end;
end.
