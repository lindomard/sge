unit S_contas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, ExtCtrls, StdCtrls, Buttons;

type
  TFrm_Contas = class(TForm)
    panel_cab: TPanel;
    src_contas: TDataSource;
    qr_contas: TQuery;
    DBGrid1: TDBGrid;
    Panel_rodape: TPanel;
    qr_contascta_desd: TStringField;
    qr_contascta_tipo_conta: TStringField;
    qr_contascta_dtvcto: TDateTimeField;
    qr_contascta_dtemis: TDateTimeField;
    qr_contascta_participante: TStringField;
    qr_contascta_valor: TFloatField;
    bbSair: TBitBtn;
    qr_contascta_numero: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Contas: TFrm_Contas;

implementation

uses S_DM1, Func;

{$R *.dfm}

procedure TFrm_Contas.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Contas.FormCreate(Sender: TObject);
begin
qr_contascta_valor.DisplayFormat := mcasas;
qr_contascta_dtemis.DisplayFormat := fdt2;
qr_contascta_dtvcto.DisplayFormat := fdt2;

end;

end.
