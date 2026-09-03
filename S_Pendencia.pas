unit S_Pendencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DB, DBTables,
  ComCtrls;

type
  Tfrm_pendencia = class(TForm)
    pnl_licitacao: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    btn_sair: TBitBtn;
    Label1: TLabel;
    lbl_licitacao: TLabel;
    Label2: TLabel;
    lbl_cliente: TLabel;
    Shape_fatparc: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape_naofat: TShape;
    Qry_Pendencia: TQuery;
    Ds_Pendente: TDataSource;
    Qry_PendenciaPRODUTO: TFloatField;
    Qry_PendenciaNOME: TStringField;
    Qry_PendenciaUNIDADE: TStringField;
    Qry_PendenciaLICITADA: TFloatField;
    Qry_PendenciaENVIADA: TFloatField;
    Qry_PendenciaPENDENTE: TFloatField;
    Label5: TLabel;
    lbl_total: TLabel;
    PageControl1: TPageControl;
    tbs_produtos: TTabSheet;
    tbs_gerados: TTabSheet;
    Grid_Licitacao: TDBGrid;
    Grid_Chave: TDBGrid;
    Qry_Chave: TQuery;
    Ds_Chave: TDataSource;
    Qry_ChaveLP_CHAVEPED: TFloatField;
    Shape_fattotal: TShape;
    Label34: TLabel;
    procedure btn_sairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grid_LicitacaoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pendencia: Tfrm_pendencia;

implementation

uses S_DM1, Func;

{$R *.dfm}

procedure Tfrm_pendencia.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_pendencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_pendencia.Grid_LicitacaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if Qry_PendenciaPENDENTE.Value > 0 then
      begin
      if Qry_PendenciaENVIADA.AsFloat>0 then
         Grid_Licitacao.Canvas.Font.Color:= Shape_fatparc.Brush.Color // coloque aqui a cor desejada
      else
         Grid_Licitacao.Canvas.Font.Color:= Shape_naofat.Brush.Color; // coloque aqui a cor desejada
      end
   else
      Grid_Licitacao.Canvas.Font.Color:= Shape_fattotal.Brush.Color; // coloque aqui a cor desejada

   Grid_Licitacao.DefaultDrawDataCell(Rect, Grid_Licitacao.columns[datacol].field, State);
end;

end.
