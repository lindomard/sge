unit s_Venda_Pre_Formas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBClient, Grids, DBGrids;

type
  TFrm_Venda_Pre_Formas = class(TForm)
    Panel1: TPanel;
    lbl_dados_pedido_l01: TLabel;
    lbl_dados_pedido_l02: TLabel;
    SAIR: TBitBtn;
    GroupBox1: TGroupBox;
    cds_formas_pagamentos: TClientDataSet;
    cds_formas_pagamentosNOMEPLANO: TStringField;
    cds_formas_pagamentosTABPV: TStringField;
    cds_formas_pagamentosCODPV: TIntegerField;
    cds_formas_pagamentosTOTALPED: TFloatField;
    cds_formas_pagamentosTOTLIQ: TFloatField;
    cds_formas_pagamentosQTDPRAZOS: TIntegerField;
    cds_formas_pagamentosVALPARC: TFloatField;
    cds_formas_pagamentosPERCACRES: TFloatField;
    src_formas_pagamentos: TDataSource;
    DBGrid1: TDBGrid;
    cds_formas_pagamentosP1TABPV: TStringField;
    cds_formas_pagamentosP1CODPV: TIntegerField;
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }

    mNovoTabPv: String;
    mNovoCodPv: Integer;
    function fAtualizarGrid(pChave,pLotSeq,pCodEmp: Integer): boolean;

  end;

var
  Frm_Venda_Pre_Formas: TFrm_Venda_Pre_Formas;

implementation

uses Func, func_emitir_notas;

{$R *.dfm}

procedure TFrm_Venda_Pre_Formas.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Venda_Pre_Formas.FormCreate(Sender: TObject);
begin

cds_formas_pagamentosTOTALPED.DisplayFormat := mcasas;
cds_formas_pagamentosTOTLIQ.DisplayFormat := mcasas;
cds_formas_pagamentosVALPARC.DisplayFormat := mcasas;
cds_formas_pagamentosPERCACRES.DisplayFormat := mcasas_pct;

end;


function TFrm_Venda_Pre_Formas.fAtualizarGrid(pChave,pLotSeq,pCodEmp: Integer): boolean;
var
ParametrosNfce: tParametrosNfce;
begin
if cds_formas_pagamentos.active = false then
   begin
   cds_formas_pagamentos.CreateDataSet;
   cds_formas_pagamentos.open;
   end;


ParametrosNfce.pCodemp := pCodEmp;
ParametrosNfce.pCodemp := pChave;
ParametrosNfce.pCodemp := pLotSeq;

if not fGerarOutrasOpcoesDePagamentos(ParametrosNfce,cds_formas_pagamentos).pOk then
   begin
   MessageDlg('Erro ao Procurar Outras Formas de Pagamentos!',mtWarning,[mbOk],0);
   result:=false;
   end;
result:=true;


end;

procedure TFrm_Venda_Pre_Formas.DBGrid1DblClick(Sender: TObject);
begin
    mNovoTabPv:=cds_formas_pagamentosTABPV.AsString;
    mNovoCodPv:=cds_formas_pagamentosCODPV.AsInteger;
   close;
end;

procedure TFrm_Venda_Pre_Formas.FormShow(Sender: TObject);
begin
    mNovoTabPv:='';
    mNovoCodPv:=0;

end;

procedure TFrm_Venda_Pre_Formas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if (cds_formas_pagamentosTABPV.Value = cds_formas_pagamentosP1TABPV.AsString) and
   (cds_formas_pagamentosCODPV.Value = cds_formas_pagamentosP1CODPV.AsInteger) then
   begin
   DBGrid1.Canvas.Brush.Color := clSkyBlue;
   DBGrid1.Canvas.Font.Color := clBlack;
   DBGrid1.Canvas.FillRect(Rect);
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

end.
