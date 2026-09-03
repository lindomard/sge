unit S_TestarProcedure;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TFrm_TestarProcedure = class(TForm)
    strProc: TADOStoredProc;
    strProcCODPRO: TFloatField;
    strProcLOTE: TStringField;
    strProcDTVCTO: TDateTimeField;
    strProcQTD: TFloatField;
    strProcTIPO_PROD: TFloatField;
    strProctipo_produto: TStringField;
    strProcpdnome: TStringField;
    strProcpdund: TStringField;
    strProcpdmarca: TStringField;
    strProcop3_pu: TFloatField;
    strProcop3_sitmp: TFloatField;
    bbExecutar: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Memo_saida: TMemo;
    procedure bbExecutarClick(Sender: TObject);
  private
    { Private declarations }

    procedure fAbrirStoredProcedure;

  public
    { Public declarations }
  end;

var
  Frm_TestarProcedure: TFrm_TestarProcedure;

implementation

uses S_DM1, S_DM1_ADO;

{$R *.dfm}

procedure TFrm_TestarProcedure.bbExecutarClick(Sender: TObject);
begin
fAbrirStoredProcedure;

end;


procedure TFrm_TestarProcedure.fAbrirStoredProcedure;
var
strProc: tAdoStoredproc;
begin



strProc := TADOStoredProc.Create(self);
try
  strProc.Connection:= DM1_ADO.ADOConnection1;
  try
     strProc.Close;
     strProc.ProcedureName:= 'FGERAROLD';
     strProc.Parameters.CreateParameter('ptabela',ftString,pdInput,SizeOf(String), 'PECADP01');
     strProc.Parameters.CreateParameter('pcondicao',ftString,pdInput,SizeOf(String), 'p1chave=18 and p1chave_ano=2019');
     strProc.Parameters.CreateParameter('pcodnov',ftString,pdOutput,SizeOf(String),null);
     strProc.Open; //<--Error: Parameter 'Abbr' not found.

     DataSource1.DataSet:=strProc;
     memo_saida.lines.text:=strProc.Parameters.parambyname('pcodnov').value;
  finally
     end;
  finally
  end;

end;
end.
