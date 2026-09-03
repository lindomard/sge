unit S_Fincn_Fpgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, RxMemDS;

type
  TFrm_Fincn_Fpgto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    mem_fpgto: TRxMemoryData;
    src_fpgto: TDataSource;
    DBGrid1: TDBGrid;
    mem_fpgtoDUP_NUMERO: TFloatField;
    mem_fpgtoDUP_DESD: TStringField;
    mem_fpgtoDUP_DTPGTO: TDateField;
    mem_fpgtoDUP_DTVCTO: TDateField;
    mem_fpgtoDUP_CODCLI: TFloatField;
    mem_fpgtoDUP_NOMCLI: TStringField;
    mem_fpgtoDUP_VALOR: TFloatField;
    mem_fpgtoFPG_NOMFPG: TStringField;
    mem_fpgtoFPG_NUMDOC: TStringField;
    mem_fpgtoFPG_VALDOC: TFloatField;
    mem_fpgtoFPG_NUMLOT: TFloatField;
    mem_fpgtoFPG_DTDEP: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Fincn_Fpgto: TFrm_Fincn_Fpgto;

implementation

{$R *.dfm}

end.
