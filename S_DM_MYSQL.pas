unit S_DM_MYSQL;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, Provider, DBClient;

type
  TDM_MYSQL = class(TDataModule)
    SQLConnection_NFE: TSQLConnection;
    SQLConnection_CEP: TSQLConnection;
    SQLConnection_PEDELE: TSQLConnection;
    SQLQuery1: TSQLQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    Tb_Cli: TSQLQuery;
    Tb_CliCODCLI: TIntegerField;
    Tb_CliCNPJ_CPF: TStringField;
    Tb_CliRAZAO: TStringField;
    dsp_cli: TDataSetProvider;
    CDS_Cli: TClientDataSet;
    CDS_CliCODCLI: TIntegerField;
    CDS_CliCNPJ_CPF: TStringField;
    CDS_CliRAZAO: TStringField;
    Src_cli: TDataSource;
    Tb_CliTIPOPRECO: TIntegerField;
    CDS_CliTIPOPRECO: TIntegerField;
    procedure fr(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


    function fAbreNFE(ptipo: Integer): Boolean;




  end;

var
  DM_MYSQL: TDM_MYSQL;

implementation

uses Func;

{$R *.dfm}
function TDM_MYSQL.fAbreNFE(ptipo: Integer): Boolean;
var
x: Integer;
y_conn: integer;
begin
{for y_conn:=1 to 3 do
   begin
   if y_conn=1 then
      mNFE_HostName:='187.115.66.177'
   else if y_conn=2 then
      mNFE_HostName:='10.1.1.2'
   else if y_conn=3 then
      mNFE_HostName:='www.gerentenet.com.br'; }
SQLConnection_NFE.Close;
     
SQLConnection_NFE.Connected:=False;
for x := 0 to DM_MYSQL.SQLConnection_NFE.Params.Count-1 do
  begin
  if uppercase(copy(DM_MYSQL.SQLConnection_NFE.Params[x],1,9))='USER_NAME' then
    DM_MYSQL.SQLConnection_NFE.Params[x]:='User_Name='+mNFE_Usuario_Nome
  else if uppercase(copy(DM_MYSQL.SQLConnection_NFE.Params[x],1,8))='DATABASE' then
    DM_MYSQL.SQLConnection_NFE.Params[x]:='DataBase='+mNFE_Database
  else if uppercase(copy(DM_MYSQL.SQLConnection_NFE.Params[x],1,8))='HOSTNAME' then
    DM_MYSQL.SQLConnection_NFE.Params[x]:='HostName='+mNFE_HostName;
  end;
try
  DM_MYSQL.SQLConnection_NFE.Connected:=true;
  if DM_MYSQL.SQLConnection_NFE.Connected=true then
//      break;
except
   end;
    //end;
result:=DM_MYSQL.SQLConnection_NFE.Connected;
end;



procedure TDM_MYSQL.fr(Sender: TObject);
begin
//fAbreNFE(0);
end;

end.
