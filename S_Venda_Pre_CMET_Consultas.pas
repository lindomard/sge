unit S_Venda_Pre_CMET_Consultas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons;

type
  TFrm_Venda_Pre_CMET_Consultas = class(TForm)
    Panel_item: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    DBGrid_cmet: TDBGrid;
    src_pro_cmet: TDataSource;
    tb_cmet: TQuery;
    tb_cmetCMET_CODEMP: TFloatField;
    tb_cmetCMET_CODPRO: TFloatField;
    tb_cmetCMET_CODIGO: TFloatField;
    tb_cmetCMET_NOME: TStringField;
    tb_cmetCMET_PRECO: TFloatField;
    bbcmet_sair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure bbcmet_sairClick(Sender: TObject);
    procedure DBGrid_cmetDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mcodcmet: Integer;
  end;

var
  Frm_Venda_Pre_CMET_Consultas: TFrm_Venda_Pre_CMET_Consultas;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_Venda_Pre_CMET_Consultas.FormShow(Sender: TObject);
begin
    mcodcmet:=0;

end;

procedure TFrm_Venda_Pre_CMET_Consultas.bbcmet_sairClick(Sender: TObject);
begin
mcodcmet:=0;
close;
end;

procedure TFrm_Venda_Pre_CMET_Consultas.DBGrid_cmetDblClick(
  Sender: TObject);
begin
if not tb_cmetCMET_CODIGO.IsNull then
   begin
   mcodcmet:=tb_cmetCMET_CODIGO.AsInteger;
   close;
   end;
end;

end.
