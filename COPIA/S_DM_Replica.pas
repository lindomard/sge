unit S_DM_Replica;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM_Replica = class(TDataModule)
    DB_REPLICA: TDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Replica: TDM_Replica;

implementation

{$R *.dfm}

end.
