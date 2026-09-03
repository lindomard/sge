unit S_CarCor2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, StdCtrls;

type
  TQr_carcor2 = class(TForm)
    RL_CARCOR2: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    X01: TRLLabel;
    rl_01_razsoc: TRLLabel;
    rl_razsoc: TRLLabel;
    rl_endereco: TRLLabel;
    rl_02_endereco: TRLLabel;
    X02: TRLLabel;
    rl_municipio: TRLLabel;
    rl_03_municipio: TRLLabel;
    X03: TRLLabel;
    rl_inscricao_cnpj: TRLLabel;
    RLLabel19: TRLLabel;
    X05: TRLLabel;
    rl_inscricao_estadual: TRLLabel;
    RLLabel22: TRLLabel;
    X06: TRLLabel;
    rl_natureza: TRLLabel;
    RLLabel25: TRLLabel;
    X07: TRLLabel;
    rl_cfop: TRLLabel;
    RLLabel28: TRLLabel;
    X08: TRLLabel;
    rl_via_transporte: TRLLabel;
    RLLabel31: TRLLabel;
    X09: TRLLabel;
    rl_data_emissao: TRLLabel;
    RLLabel34: TRLLabel;
    X10: TRLLabel;
    rl_data_saida: TRLLabel;
    RLLabel37: TRLLabel;
    X11: TRLLabel;
    rl_unidade: TRLLabel;
    RLLabel40: TRLLabel;
    X12: TRLLabel;
    rl_estado: TRLLabel;
    RLLabel43: TRLLabel;
    X04: TRLLabel;
    X24: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    X23: TRLLabel;
    X22: TRLLabel;
    X21: TRLLabel;
    X20: TRLLabel;
    X18: TRLLabel;
    X19: TRLLabel;
    X17: TRLLabel;
    X16: TRLLabel;
    X15: TRLLabel;
    X13: TRLLabel;
    X14: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    X36: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    X35: TRLLabel;
    X34: TRLLabel;
    X33: TRLLabel;
    X32: TRLLabel;
    X30: TRLLabel;
    X31: TRLLabel;
    X29: TRLLabel;
    X28: TRLLabel;
    X27: TRLLabel;
    X25: TRLLabel;
    X26: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLLabel79: TRLLabel;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLLabel84: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLLabel88: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    rl_codigo: TRLMemo;
    rl_corretos: TRLMemo;
    QRLbl_data: TRLLabel;
    RLBand2: TRLBand;
    RLDBText7: TRLDBText;
    RLBand3: TRLBand;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLLabel10: TRLLabel;
    RLMemo5: TRLMemo;
    RLMemo2: TRLMemo;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText4: TRLDBText;
    qr_denossa: TRLLabel;
    Qr_desua: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Qr_carcor2: TQr_carcor2;

implementation

uses S_CarCor;

{$R *.dfm}

end.
