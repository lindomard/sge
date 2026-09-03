unit S_LucroCpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, StdCtrls, Grids, DBGrids, RLReport;

type
  TFrm_LucroCpr = class(TForm)
    Panel1: TPanel;
    edt_codemp: TEdit;
    edt_chave: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Src_Lucro: TDataSource;
    DBGrid1: TDBGrid;
    bb_calcula: TButton;
    pnl_buton: TPanel;
    btn_sair: TButton;
    btn_imprimir: TButton;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    rl_codpro: TRLLabel;
    rl_nome: TRLLabel;
    rl_qtd: TRLLabel;
    rl_pcocpr: TRLLabel;
    rl_pcovnd: TRLLabel;
    rl_perc: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    DataSource2: TDataSource;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    procedure FormShow(Sender: TObject);
    procedure bb_calculaClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_LucroCpr: TFrm_LucroCpr;

implementation

uses Func, lerarq, S_DM1, S_Pfor01;

{$R *.dfm}

procedure TFrm_LucroCpr.FormShow(Sender: TObject);
begin
Frm_PFor01.Tb_LucroQTD.DisplayFormat    :=mcasqtd;
Frm_PFor01.Tb_LucroCOMPRA.DisplayFormat :=mcasaspu;
Frm_PFor01.Tb_LucroPRECO.DisplayFormat  :=mcasaspu;

bb_calculaClick(self);
end;

procedure TFrm_LucroCpr.bb_calculaClick(Sender: TObject);
begin
Frm_PFor01.Tb_Lucro.Close;
Frm_PFor01.Tb_Lucro.SQL.Clear;
Frm_PFor01.Tb_Lucro.SQL.Add(' select pf2codpro, NVL(TRIM(PF2NOMPRO),PDNOME) as pf2nompro, round(pf2qtdp,2) as QTD, round(pf2pu,2) as Compra, round(pdpreco1,2) as Preco ,  '
              +' round((pdpreco1-pf2pu)*100/pf2pu+0.01,2) as lucro                                                          '
              +' from cadpf2, cadpro                                                                                        '
              +' where pf2codpro=pdcodpro and pf2chave='+edt_chave.Text+' and pf2codemp='+edt_codemp.Text);
Frm_PFor01.Tb_Lucro.Open;
Frm_PFor01.Query1.Close;
Frm_PFor01.Query1.SQL.Clear;
Frm_PFor01.Query1.SQL.Add(' select * from cadpf1 where pf1chave='+edt_chave.Text);
Frm_PFor01.Query1.SQL.Add(' and pf1codemp='+edt_codemp.Text);
Frm_PFor01.Query1.Open;
end;

procedure TFrm_LucroCpr.btn_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_LucroCpr.btn_imprimirClick(Sender: TObject);
begin
RLReport1.PreviewModal;
end;

procedure TFrm_LucroCpr.Query1CalcFields(DataSet: TDataSet);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select * from cadusr where codusr='+Frm_PFor01.Query1PF1CODUSR.AsString);
try
  DM1.Query1.Open;
  Frm_PFor01.Query1NOMUSR.AsString:=DM1.Query1.FieldByName('NOMUSR').AsString;
except
  Frm_PFor01.Query1NOMUSR.AsString:='Não encontrado!';
  end;
end;

end.
