unit S_DM_MYSQL;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, Provider, DBClient;

type
  TDM_MYSQL = class(TDataModule)
    Tb_Cep: TSQLQuery;
    Tb_CepCOMPL: TStringField;
    Tb_CepUF: TStringField;
    Tb_CepCID: TStringField;
    Tb_CepDESC02: TStringField;
    Tb_CepBAI: TStringField;
    Tb_CepCEP: TStringField;
    Tb_CepABREV: TStringField;
    Tb_CepDESCRICAO: TStringField;
    Src_CEP: TDataSource;
    CDS_CEP: TClientDataSet;
    dsp_cep: TDataSetProvider;
    CDS_CEPCOMPL: TStringField;
    CDS_CEPUF: TStringField;
    CDS_CEPCID: TStringField;
    CDS_CEPDESC02: TStringField;
    CDS_CEPBAI: TStringField;
    CDS_CEPCEP: TStringField;
    CDS_CEPABREV: TStringField;
    CDS_CEPDESCRICAO: TStringField;
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
    function fAbreCEP(ptipo: Integer): Boolean;


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


function TDM_MYSQL.fAbreCEP(ptipo: Integer): Boolean;
var
x: Integer;
y_conn: integer;
begin
for y_conn:=1 to 4 do
  begin
  if y_conn=1 then
    mCEP_HostName:='187.115.66.177'
//    mCEP_HostName:='intersysnet.com.br'
  else if y_conn=2 then
    mCEP_HostName:='10.1.1.2'
  else if y_conn=3 then
    mCEP_HostName:='www.gerentenet.com.br';
//  else if y_conn=4 then
//    mCEP_HostName:='187.115.66.177';

  SQLConnection_CEP.Connected:=False;
  for x := 0 to DM_MYSQL.SQLConnection_CEP.Params.Count-1 do
    begin
    if uppercase(copy(DM_MYSQL.SQLConnection_CEP.Params[x],1,9))='USER_NAME' then
      DM_MYSQL.SQLConnection_CEP.Params[x]:='User_Name='+mCEP_Usuario_Nome
    else if uppercase(copy(DM_MYSQL.SQLConnection_CEP.Params[x],1,8))='DATABASE' then
      DM_MYSQL.SQLConnection_CEP.Params[x]:='DataBase='+mCEP_Database
    else if uppercase(copy(DM_MYSQL.SQLConnection_CEP.Params[x],1,8))='HOSTNAME' then
      DM_MYSQL.SQLConnection_CEP.Params[x]:='HostName='+mCEP_HostName;
    end;
  try
    DM_MYSQL.SQLConnection_CEP.Connected:=true;
    if DM_MYSQL.SQLConnection_CEP.Connected=true then
      break;
  except
    if DM_MYSQL.SQLConnection_CEP.Connected=true then
      break;
    end;
  end;                

result:=DM_MYSQL.SQLConnection_CEP.Connected;
end;

procedure TDM_MYSQL.fr(Sender: TObject);    
begin
fAbreNFE(0);                                    





if mAbreCep then
  fAbreCEP(0);

end;


end.
