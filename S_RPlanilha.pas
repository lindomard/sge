unit S_RPlanilha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ToolEdit, Mask, Buttons, RLReport;

type
  Tfrm_RPlanilha = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    lb_qtdfunc: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand3: TRLBand;
    lbl_funcionario: TRLDBText;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    lblDestino: TRLLabel;
    lblAssunto: TRLLabel;
    RLLabel8: TRLLabel;
    lblDiaria: TRLLabel;
    lblQtdeDias: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    lblDataSaida: TRLLabel;
    lblRetorno: TRLLabel;
    RLLabel16: TRLLabel;
    lblDiaSaida: TRLLabel;
    lblDiaRetorno: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    lblHoraSaida: TRLLabel;
    lblHoraRetorno: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    lblAviao: TRLLabel;
    lblHotel: TRLLabel;
    lblAlimentacao: TRLLabel;
    lblCombustivel: TRLLabel;
    lblOutros: TRLLabel;
    RLLabel37: TRLLabel;
    lblTotalDespesas: TRLLabel;
    RLLabel39: TRLLabel;
    lblGastoCombustivel: TRLLabel;
    RLLabel41: TRLLabel;
    lblQtdeLitros: TRLLabel;
    RLLabel43: TRLLabel;
    lblVeiculo: TRLLabel;
    RLLabel45: TRLLabel;
    lblValorGastos: TRLLabel;
    RLLabel47: TRLLabel;
    lblInicial: TRLLabel;
    RLLabel49: TRLLabel;
    lblFinal: TRLLabel;
    RLLabel51: TRLLabel;
    lblRodados: TRLLabel;
    RLLabel53: TRLLabel;
    lblMedia: TRLLabel;
    RLLabel55: TRLLabel;
    lblLitros: TRLLabel;
    RLLabel57: TRLLabel;
    lblCredito: TRLLabel;
    RLLabel59: TRLLabel;
    lblrequisicao: TRLLabel;
    RLLabel61: TRLLabel;
    lblDepositos: TRLLabel;
    RLLabel63: TRLLabel;
    lblVlrDestino: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    lblVlrGastos: TRLLabel;
    lblTotal: TRLLabel;
    RLLabel69: TRLLabel;
    lblRestituicao: TRLLabel;
    DiaSemana: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_RPlanilha: Tfrm_RPlanilha;

implementation

uses S_DM1, Func, lerarq, S_DM4, S_Planilha;

{$R *.dfm}

procedure Tfrm_RPlanilha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
