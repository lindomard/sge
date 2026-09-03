unit S_FatEst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ExtCtrls, CheckLst;

type
  TFrm_FatEst = class(TForm)
    pnl_topo: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1PDCODPRO: TFloatField;
    Query1PDNOME: TStringField;
    Query1PDSALDO: TFloatField;
    Query1P2QTD: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure Validar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    xCHAVEP : INTEGER;
    xFORMACE: INTEGER; // 0 - QTD 1 - VALOR
    xNOMCLI : String;
    xCODEMP : Integer;
  end;

var
  Frm_FatEst: TFrm_FatEst;

implementation

uses flerarq, Func, lerarq, S_DM1;



{$R *.dfm}

procedure TFrm_FatEst.FormActivate(Sender: TObject);
begin
//Validar;
end;

procedure TFrm_FatEst.Validar;
var
  tempor_view: String;
begin
tempor_view:='';
la_Empresas:='( P2CODEMP=0'+IntToStr(xCODEMP);
la_Empresas:=la_Empresas+' or ';
la_Empresas:=la_Empresas+' P2CODEMP=0'+IntToStr(iif(xCODEMP>100,xCODEMP-100,xCODEMP+100));
la_Empresas:=la_Empresas+' ) ';

tempor_view:=CarregaView('TEMPOR_FAT');
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' create or replace view '+tempor_view+' as ');
Query1.SQL.Add(' select PDCODPRO, PDNOME, PDSALDO, ');
if xFORMACE=0 then
  Query1.SQL.Add(' SUM(P2QTD) as P2QTD ')
else
  Query1.SQL.Add(' MAX(P2QTD) as P2QTD ');
Query1.SQL.Add(' from CADP02, CADPRO ');
Query1.SQL.Add(' where P2CODPRO=PDCODPRO ');
Query1.SQL.Add(' and P2CHAVE='+IntToStr(xCHAVEP));
Query1.SQL.Add( iif(la_Empresas='','',' and '+la_Empresas));
Query1.SQL.Add(' group by PDCODPRO, PDNOME, PDSALDO ');
try
  Query1.ExecSQL;
except
  Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
  end;
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select * from '+tempor_view+' where P2QTD>PDSALDO ');
Query1.Open;

pnl_topo.Caption:='Verificação de Estoque -  Pedido Nº'+FormatFloat('00000',xCHAVEP)+' - '+xNOMCLI;
end;

procedure TFrm_FatEst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//if (FormState<>[fsModal]) then
//   Action := caFree;
end;

end.


