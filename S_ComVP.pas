unit S_ComVP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls, Grids, Mask, ComCtrls,
  S_IMPRES, S_SELEMP, RLReport, RLFilters, RLXLSFilter, RLRichFilter;

type
  TFrm_ComVP = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbl_nome: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    NUMLOT: TEdit;
    MDATA: TMaskEdit;
    OBS1: TEdit;
    OBS2: TEdit;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    MDATAI: TMaskEdit;
    MDATAF: TMaskEdit;
    PCOMIS: TEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    TARBAN: TEdit;
    OUTDESP: TEdit;
    gb_itens: TGroupBox;
    Panel_itens: TPanel;
    ITEM_GRAVAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    item_excluir: TBitBtn;
    item_pesquisar: TBitBtn;
    edt_chavep: TEdit;
    edt_datanf: TMaskEdit;
    edt_razsoc: TEdit;
    edt_total: TEdit;
    STG1: TStringGrid;
    Panel6: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    CB_EMIREC: TCheckBox;
    ts_recibo: TTabSheet;
    Label4: TLabel;
    gb_creditos: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    MTEXTOC01: TEdit;
    MVALC01: TEdit;
    MTEXTOC02: TEdit;
    MTEXTOC03: TEdit;
    MTEXTOC04: TEdit;
    MTEXTOC05: TEdit;
    MTEXTOC06: TEdit;
    MTEXTOC07: TEdit;
    MTEXTOC08: TEdit;
    MTEXTOC09: TEdit;
    MTEXTOC10: TEdit;
    MVALC02: TEdit;
    MVALC03: TEdit;
    MVALC04: TEdit;
    MVALC08: TEdit;
    MVALC06: TEdit;
    MVALC05: TEdit;
    MVALC07: TEdit;
    MVALC09: TEdit;
    MVALC10: TEdit;
    Memo_cred: TMemo;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    MTEXTOD01: TEdit;
    MVALD01: TEdit;
    MTEXTOD02: TEdit;
    MTEXTOD03: TEdit;
    MTEXTOD04: TEdit;
    MTEXTOD05: TEdit;
    MTEXTOD06: TEdit;
    MTEXTOD07: TEdit;
    MTEXTOD08: TEdit;
    MTEXTOD09: TEdit;
    MTEXTOD10: TEdit;
    MVALD02: TEdit;
    MVALD03: TEdit;
    MVALD04: TEdit;
    MVALD08: TEdit;
    MVALD06: TEdit;
    MVALD05: TEdit;
    MVALD07: TEdit;
    MVALD09: TEdit;
    MVALD10: TEdit;
    Memo_deb: TMemo;
    tsConfiguracao: TTabSheet;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    sb_SalvarPadrao: TSpeedButton;
    QTDDOC: TStaticText;
    TOTDOC: TStaticText;
    TOTCOM: TStaticText;
    TOTTARBAN: TStaticText;
    TOTOUTDESP: TStaticText;
    TOTLIQ: TStaticText;
    TOTOUTCRED: TStaticText;
    TOTDEBITOS: TStaticText;
    Qr_CL01: TQuery;
    Qr_CL01CL1CODEMP: TFloatField;
    Qr_CL01CL1CHAVE: TFloatField;
    Qr_CL01CL1DATA: TDateTimeField;
    Qr_CL01CL1TIPO: TFloatField;
    Qr_CL01CL1CODIGO: TFloatField;
    Qr_CL01CL1DATAI: TDateTimeField;
    Qr_CL01CL1DATAF: TDateTimeField;
    Qr_CL01CL1OBS01: TStringField;
    Qr_CL01CL1OBS02: TStringField;
    Qr_CL01CL1PCOMIS: TFloatField;
    Qr_CL01CL1QTDDOC: TFloatField;
    Qr_CL01CL1TOTDOC: TFloatField;
    Qr_CL01CL1TOTCOM: TFloatField;
    Qr_CL01CL1LOTSEQ: TFloatField;
    Qr_CL01CL1TARBAN: TFloatField;
    Qr_CL01CL1OUTDESP: TFloatField;
    Qr_CL01CL1TOTTARBAN: TFloatField;
    Qr_CL01CL1TOTOUTDESP: TFloatField;
    Qr_CL02: TQuery;
    Qr_CL02CL2CODEMP: TFloatField;
    Qr_CL02CL2CHAVE: TFloatField;
    Qr_CL02CL2SEQ: TFloatField;
    Qr_CL02CL2DOC: TFloatField;
    Qr_CL02CL2NUMERO: TFloatField;
    Qr_CL02CL2DESD: TStringField;
    Qr_CL02CL2DUP: TFloatField;
    Qr_CL02CL2CHAVEP: TFloatField;
    Qr_CL02CL2ORDEMP: TFloatField;
    Qr_CL02CL2CODEMPD: TFloatField;
    Qr_CL02CL2VALCOM: TFloatField;
    Qr_CL02CL2VALDOC: TFloatField;
    Qr_CL02CL2VALFRE: TFloatField;
    Qr_CL02CL2VALICMSR: TFloatField;
    Qr_CL02CL2SEMCOM: TFloatField;
    Qr_CL02CL2VALACRE: TFloatField;
    Qr_CL02CL2VALCTL: TFloatField;
    Qr_CL02CL2LOTSEQ: TFloatField;
    Qr_CL02CL2LOTSEQ_DC: TFloatField;
    Qr_CL02CL2DTEMIS: TDateTimeField;
    Qr_CL02CL2CODECF: TFloatField;
    Qr_CL02CL2DTVCTO: TDateTimeField;
    Qr_CL02CL2DTBX: TDateTimeField;
    Qr_CL02CL2CODCLI: TFloatField;
    Qr_CL02CL2TARBAN: TFloatField;
    Qr_CL02CL2OUTDESP: TFloatField;
    Qr_CL02CL2CODBCO: TFloatField;
    Qr_CL02CL2VALDESC: TFloatField;
    Qr_CL02CL2DTPAG: TDateTimeField;
    Qr_CL02CL2JUROS: TFloatField;
    Qr_CL02CL2JURD: TFloatField;
    Qr_CL02CL2MULTA: TFloatField;
    Qr_CL02CL2VALREC: TFloatField;
    Qr_CL02CL2LOTSEQ_BX: TFloatField;
    Qr_CL02CL2LOTE_BX: TFloatField;
    Qr_CL03: TQuery;
    Qr_CL03CL3CODEMP: TFloatField;
    Qr_CL03CL3LOTSEQ: TFloatField;
    Qr_CL03CL3CHAVE: TFloatField;
    Qr_CL03CL3NAT: TFloatField;
    Qr_CL03CL3ORDEM: TFloatField;
    Qr_CL03CL3TEXTO: TStringField;
    Qr_CL03CL3VALOR: TFloatField;
    GroupBox1: TGroupBox;
    CB_EXTCRED_NC: TCheckBox;
    Qr_CL02NOMCLI: TStringField;
    Qr_CL02CLCHAVE_NIVEL: TFloatField;
    Ts_Relatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RL_EMPRESA: TRLLabel;
    RL_VENDEDOR: TRLLabel;
    RL_CAB: TRLLabel;
    RLBand2: TRLBand;
    RL_CODIGO: TRLLabel;
    Src_CL02: TDataSource;
    RLDBText1: TRLDBText;
    RL_CLIENTE: TRLLabel;
    RLDBText2: TRLDBText;
    RL_PERIODO: TRLLabel;
    RL_VALOR: TRLLabel;
    RLDBText3: TRLDBText;
    RL_PERCENT: TRLLabel;
    RLDBText4: TRLDBText;
    RL_VALORCOMIS: TRLLabel;
    PERCENT: TRLLabel;
    RLDBText5: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    rl_TotalGeral: TRLLabel;
    rl_TotalComiss: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    Label30: TLabel;
    cb_tipo_data: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure sb_SalvarPadrao_MasterClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENEnter(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure MDATAIEnter(Sender: TObject);
    procedure MDATAIExit(Sender: TObject);
    procedure MDATAFEnter(Sender: TObject);
    procedure MDATAFExit(Sender: TObject);
    procedure PCOMISExit(Sender: TObject);
    procedure PCOMISKeyPress(Sender: TObject; var Key: Char);
    procedure OBS1Exit(Sender: TObject);
    procedure OBS1KeyPress(Sender: TObject; var Key: Char);
    procedure OBS2Exit(Sender: TObject);
    procedure OBS2KeyPress(Sender: TObject; var Key: Char);
    procedure TARBANExit(Sender: TObject);
    procedure TARBANKeyPress(Sender: TObject; var Key: Char);
    procedure TARBANEnter(Sender: TObject);
    procedure OUTDESPEnter(Sender: TObject);
    procedure OUTDESPExit(Sender: TObject);
    procedure OUTDESPKeyPress(Sender: TObject; var Key: Char);
    procedure item_pesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fcalccomClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure Qr_CL02CalcFields(DataSet: TDataSet);
    procedure MVALC01Enter(Sender: TObject);
    procedure MVALC01Exit(Sender: TObject);
    procedure MVALC02Exit(Sender: TObject);
    procedure MVALC03Exit(Sender: TObject);
    procedure MVALC04Exit(Sender: TObject);
    procedure MVALC05Exit(Sender: TObject);
    procedure MVALC06Exit(Sender: TObject);
    procedure MVALC07Exit(Sender: TObject);
    procedure MVALC08Exit(Sender: TObject);
    procedure MVALC09Exit(Sender: TObject);
    procedure MVALC10Exit(Sender: TObject);
    procedure MVALC02Enter(Sender: TObject);
    procedure MVALC03Enter(Sender: TObject);
    procedure MVALC04Enter(Sender: TObject);
    procedure MVALC05Enter(Sender: TObject);
    procedure MVALC06Enter(Sender: TObject);
    procedure MVALC07Enter(Sender: TObject);
    procedure MVALC08Enter(Sender: TObject);
    procedure MVALC09Enter(Sender: TObject);
    procedure MVALC10Enter(Sender: TObject);
    procedure MVALD01Exit(Sender: TObject);
    procedure MVALD02Exit(Sender: TObject);
    procedure MVALD03Exit(Sender: TObject);
    procedure MVALD04Exit(Sender: TObject);
    procedure MVALD05Exit(Sender: TObject);
    procedure MVALD06Exit(Sender: TObject);
    procedure MVALD07Exit(Sender: TObject);
    procedure MVALD08Exit(Sender: TObject);
    procedure MVALD09Exit(Sender: TObject);
    procedure MVALD10Exit(Sender: TObject);
    procedure MVALD01Enter(Sender: TObject);
    procedure MVALD02Enter(Sender: TObject);
    procedure MVALD03Enter(Sender: TObject);
    procedure MVALD04Enter(Sender: TObject);
    procedure MVALD05Enter(Sender: TObject);
    procedure MVALD06Enter(Sender: TObject);
    procedure MVALD07Enter(Sender: TObject);
    procedure MVALD08Enter(Sender: TObject);
    procedure MVALD09Enter(Sender: TObject);
    procedure MVALD10Enter(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1AfterPrint(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure item_excluirClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure edt_chavepExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    moper: Integer;
    mnumlot: Integer;
    mTotalGeral: Real;
    mTotalComis: Real;
  public
    form_impres_comvv: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    pVOrigem: Integer;
    function fexcluir(Op: Integer): Boolean;
    function FTotalPadrao(pTipo: Integer): Boolean;    
    { Public declarations }
  end;


var
  Frm_ComVP: TFrm_ComVP;
  mcodven_ant: Real;


//mcol_numeronf: Integer = 0;
//mcol_datavcto: Integer = 4;
//mcol_datapgto: Integer = 5;

mcol_chave : Integer = 0;
mcol_codcli: Integer = 1;
mcol_razsoc: Integer = 2;
mcol_datanf: Integer = 3;


mcol_totliq: Integer = 4;
mcol_percen: Integer = 5;
mcol_valcom: Integer = 6;
mcol_codemp: Integer = 7;
mcol_lotseq: Integer = 8;
mcol_ordem : Integer = 9;

mTextoCred: array [0..9] of string;
mValCred:   array [0..9] of Real;
mTextoDeb: array [0..9] of string;
mValDeb:   array [0..9] of Real;
mtip_ant: Integer;
mpos_cred, mpos_deb: Integer;



implementation

uses lerarq, Func, S_DM1, S_PComVP, S_Agde, func_excecoes, S_CVVP, Math;

{$R *.dfm}

function TFrm_ComVP.FTotalPadrao(pTipo: Integer): Boolean;
var
  mTotal: Real;
begin
mTotal:=       ValFloat(MVALC01.Text)
              +ValFloat(MVALC02.Text)
              +ValFloat(MVALC03.Text)
              +ValFloat(MVALC04.Text)
              +ValFloat(MVALC05.Text)
              +ValFloat(MVALC06.Text)
              +ValFloat(MVALC07.Text)
              +ValFloat(MVALC08.Text)
              +ValFloat(MVALC09.Text)
              +ValFloat(MVALC10.Text);
TOTOUTCRED.Caption:=FormatFloat(mcasas, mTotal);

mTotal:=       ValFloat(MVALD01.Text)
              +ValFloat(MVALD02.Text)
              +ValFloat(MVALD03.Text)
              +ValFloat(MVALD04.Text)
              +ValFloat(MVALD05.Text)
              +ValFloat(MVALD06.Text)
              +ValFloat(MVALD07.Text)
              +ValFloat(MVALD08.Text)
              +ValFloat(MVALD09.Text)
              +ValFloat(MVALD10.Text);
TOTDEBITOS.Caption:=FormatFloat(mcasas, mTotal);
TOTLIQ.Caption    :=FormatFloat(mcasas, valfloat(TOTCOM.Caption)-(ValFloat(TOTOUTDESP.Caption)+ValFloat(TOTTARBAN.Caption)+ValFloat(TOTDEBITOS.Caption))+ValFloat(TOTOUTCRED.Caption));
Memo_cred.Lines.Clear;
Memo_cred.Lines.Add('Valor da Comissao');
Memo_cred.Lines.Add('Liquida:');
Memo_cred.Lines.Add(TOTCOM.Caption);
Memo_cred.Lines.Add('Total de Outros Creditos');
Memo_cred.Lines.Add(TOTOUTCRED.Caption);
Memo_cred.Lines.Add('Total Geral dos Creditos');
Memo_cred.Lines.Add(TOTLIQ.Caption);
Memo_deb.Lines.Clear;
Memo_deb.Lines.Add('Total Geral dos Debitos');
Memo_deb.Lines.Add(TOTDEBITOS.Caption);
result:=true;
end;


function TFrm_ComVP.fexcluir(Op: Integer): Boolean;
begin
//
if Op=1 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' update CL1STATUS=9  set cadcl01 where cl1codemp='+IntToStr(codemp)
                    +' and CL1CHAVE='+Frm_ComVP.NUMLOT.Text);
  DM1.Query1.ExecSQL;
  end
else if Op=0 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' delete from cadcl01 where CL1CHAVE='+Frm_ComVP.NUMLOT.Text);
  DM1.Query1.ExecSQL;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' delete from cadcl02 where CL2CHAVE='+Frm_ComVP.NUMLOT.Text);
  DM1.Query1.ExecSQL;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' delete from cadcl03 where CL3CHAVE='+Frm_ComVP.NUMLOT.Text);
  DM1.Query1.ExecSQL;

  end;

end;

procedure TFrm_ComVP.fcalccomClick(Sender: TObject);
var
  Cont: Integer;
  xTotalLiq: Real;
  xTotalCom: Real;
begin
for Cont:=1 to STG1.RowCount - 1 do
  begin
  Frm_ComVP.STG1.Cells[mcol_percen,Cont]:=FormatFloat('#,##0.00',ValFloat(PCOMIS.Text));
  Frm_ComVP.STG1.Cells[mcol_valcom,Cont]:=FormatFloat('#,##0.00',
                                                     +ValFloat(Frm_ComVP.STG1.Cells[mcol_percen,Cont])
                                                     *ValFloat(Frm_ComVP.STG1.Cells[mcol_totliq,Cont])/100 );
  xTotalLiq:=ValFloat(Frm_ComVP.STG1.Cells[mcol_totliq,Cont])+xTotalLiq;
  xTotalCom:=ValFloat(Frm_ComVP.STG1.Cells[mcol_valcom,Cont])+xTotalCom;
  end;
TOTTARBAN.Caption :=FormatFloat('#,##0.00',ValFloat(TARBAN.Text)*(stg1.RowCount-2));
TOTOUTDESP.Caption:=FormatFloat('#,##0.00',ValFloat(OUTDESP.Text)*(stg1.RowCount-2));
TOTDOC.Caption:=FormatFloat('#,##0.00',xTotalLiq);
TOTCOM.Caption:=FormatFloat('#,##0.00',xTotalCom);
TOTLIQ.Caption:=FormatFloat('#,##0.00',xTotalCom+ValFloat(TOTOUTCRED.Caption)
                                      -ValFloat(TOTOUTDESP.Caption)
                                      -ValFloat(TOTTARBAN.Caption)
                                      -ValFloat(TOTDEBITOS.Caption));
QTDDOC.Caption:=IntToStr(STG1.RowCount-1);
FTotalPadrao(0);
end;

procedure TFrm_ComVP.FormCreate(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet1;
Frm_ComVP.STG1.Cells[mcol_chave,0] :='Chave';
Frm_ComVP.STG1.Cells[mcol_codcli,0]:='Cod. Cliente';
Frm_ComVP.STG1.Cells[mcol_razsoc,0]:='Razão Social';
Frm_ComVP.STG1.Cells[mcol_datanf,0]:='Data NF';
Frm_ComVP.STG1.Cells[mcol_totliq,0]:='Total Liquido';
Frm_ComVP.STG1.Cells[mcol_percen,0]:='% Comis';
Frm_ComVP.STG1.Cells[mcol_valcom,0]:='Valor Comissão';
Frm_ComVP.STG1.Cells[mcol_codemp,0]:='Codemp';
Frm_ComVP.STG1.Cells[mcol_lotseq,0]:='Lotseq';
Frm_ComVP.STG1.Cells[mcol_ordem,0] :='Ordem';
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Qr_CL02CL2VALCOM.DisplayFormat:='#,##0.00';
Qr_CL02CL2VALCOM.DisplayFormat:='#,##0.00';
end;

procedure TFrm_ComVP.BBINCLUIRClick(Sender: TObject);
begin
if BBGRAVAR.Enabled then
  begin
  Case fmensagem('O registro atual não está gravado!'+#13
                +'Deseja gravar agora?',0,['1','2'],0) of
    mrYes: BBGRAVAR.Click;
    end;
  end;
BBLIMPAR.Click;
ITEM_CANCELAR.Click;
Panel4.Enabled      :=True;
Panel_itens.Enabled :=True;
ts_recibo.Enabled   :=true;
BBINCLUIR.Enabled   :=False;
BBLOCALIZAR.Enabled :=False;
BBALTERAR.Enabled   :=False;
BBEXCLUIR.Enabled   :=False;
BBGRAVAR.Enabled    :=True;
BBIMPRIMIR.Enabled  :=False;
MDATA.Text          :=FormatDateTime(Fdt2,pdatasis);
MDATAI.Text         :=FormatDateTime(fdt2,pdatasis-30);
MDATAF.Text         :=FormatDateTime(fdt2,pdatasis);
moper:=0;
CODVEN.SetFocus;
end;

procedure TFrm_ComVP.BBALTERARClick(Sender: TObject);
begin
Panel4.Enabled   :=True;
Panel_itens.Enabled:=True;
ts_recibo.Enabled:=true;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
ITEM_CANCELAR.Click;
MDATA.SetFocus;
moper:=2;
end;

procedure TFrm_ComVP.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer realmente excluir este Lote?',0,['1','2'],2)<>mrYes then
   exit;
if True then
  begin
  Qr_CL02.First;
  while not Qr_CL02.Eof do
    begin
    //
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('Update CADP02 set P2LOTCT=0'
                       +' where P2CHAVE=0'+Qr_CL02CL2CHAVEP.AsString
                       +' and P2ORDEM=0'+Qr_CL02CL2ORDEMP.AsString
                       +' and P2CODVEN='+CODVEN.Text);
    try
      DM1.Query2.ExecSQL;
    except
      DM1.Query2.SQL.SaveToFile(mpastatemp +'sql.txt');
      fmensagem('Erro ao excluir lote!',0,['0'],0);
      Exit;
      end;
    Qr_CL02.Next;
    end;
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add(' delete from CADCL03 where ');
  DM1.Query2.SQL.Add(' CL3CODEMP='+Qr_CL01CL1CODEMP.AsString
                    +' and CL3CHAVE=0'+Qr_CL01CL1CHAVE.AsString);
  try
    DM1.Query2.ExecSQL;
  except
    DM1.Query2.SQL.SaveToFile(mpastatemp +'sql.txt');
    fmensagem('Erro ao excluir lote!',0,['0'],0);
    end;

  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add(' delete from CADCL02 where ');
  DM1.Query2.SQL.Add(' CL2CODEMP='+Qr_CL01CL1CODEMP.AsString
                    +' and CL2CHAVE=0'+Qr_CL01CL1CHAVE.AsString);
  try
    DM1.Query2.ExecSQL;
  except
    DM1.Query2.SQL.SaveToFile(mpastatemp +'sql.txt');
    fmensagem('Erro ao excluir lote!',0,['0'],0);
    Exit;
    end;
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add(' delete from CADCL01 where ');
  DM1.Query2.SQL.Add(' CL1CODEMP='+Qr_CL01CL1CODEMP.AsString
                    +' and CL1CHAVE=0'+Qr_CL01CL1CHAVE.AsString);
  try
    DM1.Query2.ExecSQL;
  except
    DM1.Query2.SQL.SaveToFile(mpastatemp +'sql.txt');
    fmensagem('Erro ao excluir lote!',0,['0'],0);
    Exit;
    end;
  end;
BBLIMPAR.Click;  
fmensagem('Lote Excluido!',0,['0'],0);
end;

procedure TFrm_ComVP.BBLIMPARClick(Sender: TObject);
begin
NUMLOT.Text:='';
MDATA.Text :='/  /';
CODVEN.Text:='';
NOMVEN.Text:='';
PCOMIS.Text:='';
MDATAI.Text:='';
MDATAF.Text:='';
OBS1.Text  :='';
OBS2.Text  :='';
edt_chavep.Text:='';
edt_datanf.Text  :='/  /';
edt_razsoc.Text   :='';
edt_total.Text:='';
Memo_cred.Lines.Clear;
Memo_deb.Lines.Clear;
MVALC01.Text :='';
MVALC02.Text :='';
MVALC03.Text :='';
MVALC04.Text :='';
MVALC05.Text :='';
MVALC06.Text :='';
MVALC07.Text :='';
MVALC08.Text :='';
MVALC09.Text :='';
MVALC10.Text :='';

MVALD01.Text :='';
MVALD02.Text :='';
MVALD03.Text :='';
MVALD04.Text :='';
MVALD05.Text :='';
MVALD06.Text :='';
MVALD07.Text :='';
MVALD08.Text :='';
MVALD09.Text :='';
MVALD10.Text :='';



stg1.RowCount:=2;
STG1.Rows[1].Clear;
Panel4.Enabled   :=False;
Panel_itens.Enabled:=False;
ts_recibo.Enabled:=false;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
end;

procedure TFrm_ComVP.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ComVP.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_COMVP','');
if Trim(MTEXTOC01.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC01'     ,'text'      ,'_COMVP',MTEXTOC01.Text);
if Trim(MTEXTOC02.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC02'     ,'text'      ,'_COMVP',MTEXTOC02.Text);
if Trim(MTEXTOC03.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC03'     ,'text'      ,'_COMVP',MTEXTOC03.Text);
if Trim(MTEXTOC04.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC04'     ,'text'      ,'_COMVP',MTEXTOC04.Text);
if Trim(MTEXTOC05.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC05'     ,'text'      ,'_COMVP',MTEXTOC05.Text);
if Trim(MTEXTOC06.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC06'     ,'text'      ,'_COMVP',MTEXTOC06.Text);
if Trim(MTEXTOC07.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC07'     ,'text'      ,'_COMVP',MTEXTOC07.Text);
if Trim(MTEXTOC08.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC08'     ,'text'      ,'_COMVP',MTEXTOC08.Text);
if Trim(MTEXTOC09.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC09'     ,'text'      ,'_COMVP',MTEXTOC09.Text);
if Trim(MTEXTOC10.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOC10'     ,'text'      ,'_COMVP',MTEXTOC10.Text);
if Trim(MTEXTOD01.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD01'     ,'text'      ,'_COMVP',MTEXTOD01.Text);
if Trim(MTEXTOD02.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD02'     ,'text'      ,'_COMVP',MTEXTOD02.Text);
if Trim(MTEXTOD03.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD03'     ,'text'      ,'_COMVP',MTEXTOD03.Text);
if Trim(MTEXTOD04.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD04'     ,'text'      ,'_COMVP',MTEXTOD04.Text);
if Trim(MTEXTOD05.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD05'     ,'text'      ,'_COMVP',MTEXTOD05.Text);
if Trim(MTEXTOD06.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD06'     ,'text'      ,'_COMVP',MTEXTOD06.Text);
if Trim(MTEXTOD07.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD07'     ,'text'      ,'_COMVP',MTEXTOD07.Text);
if Trim(MTEXTOD08.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD08'     ,'text'      ,'_COMVP',MTEXTOD08.Text);
if Trim(MTEXTOD09.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD09'     ,'text'      ,'_COMVP',MTEXTOD09.Text);
if Trim(MTEXTOD10.Text)<>'' then
   fGravaPadroes(codusr,'MTEXTOD10'     ,'text'      ,'_COMVP',MTEXTOD10.Text);
fGravaPadroes(codusr,'CB_EMIREC'        ,'checked'   ,'_COMVP',iif(CB_EMIREC.Checked,'true','false'));
fDeletaPadroes(0,'_COMVP','');
fGravaPadroes(0,'CB_EXTCRED'        ,'checked'      ,'_COMVP',iif(CB_EXTCRED_NC.Checked,'true','false'));
fmensagem('Gravado!',0,['0'],0);
end;

procedure TFrm_ComVP.sb_SalvarPadrao_MasterClick(Sender: TObject);
begin
fmensagem('Gravado!',0,['0'],0);
end;

procedure TFrm_ComVP.BBGRAVARClick(Sender: TObject);
var
  mcod,x: Integer;
begin
if Trim(MDATA.Text)='/  /' then
  begin
  fmensagem('Data Campo Obrigatório!',0,['0'],0);
  MDATA.SetFocus;
  exit;
  end;
if Trim(MDATAI.Text)='/  /' then
  begin
  fmensagem('Data inicial Campo Obrigatório!',0,['0'],0);
  MDATAI.SetFocus;
  exit;
  end;
if Trim(MDATAF.Text)='/  /' then
  begin
  fmensagem('Data final Campo Obrigatório!',0,['0'],0);
  MDATAF.SetFocus;
  exit;
  end;
if Trim(CODVEN.Text)='' then
  begin
  fmensagem('Código Campo Obrigatório!',0,['0'],0);
  if CODVEN.Enabled then
     CODVEN.SetFocus;
  exit;
  end;
if Trim(OBS1.Text)='' then
  begin
  fmensagem('A primeira linha da descrição é obrigatória!',0,['0'],0);
  OBS1.SetFocus;
  exit;
  end;
if STG1.RowCount<1 then
  begin
  fmensagem('Não há Pedidos selecionadas!',0,['0'],0);
  edt_chavep.SetFocus;
  exit;
  end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Label1.Caption:='Gravando Relatório de Comissão! Aguarde...';
Frm_Agde.Show;
if moper=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select max(CL1CHAVE) from CADCL01 ');
   if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query1.Sql.add(' where CL1CODEMP=0'+IntTostr(codemp)
                        +' order by CL1CODEMP,CL1CHAVE')
   else
      DM1.Query1.SQL.add(' order by CL1CHAVE ');
   DM1.Query1.Open;
   mnumlot:=DM1.Query1.Fields[0].AsInteger+1;
   end
else
   begin
   fexcluir(0);
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('Insert into CADCL01 ('
                  +'CL1CODEMP,CL1CHAVE,CL1DATA,'
                  +'CL1TIPO,CL1CODIGO,CL1DATAI,CL1DATAF,'
                  +'CL1QTDDOC,CL1TOTDOC,CL1TOTCOM,CL1TARBAN, CL1OUTDESP,'
                  +'CL1TOTTARBAN, CL1TOTOUTDESP,'
                  +'CL1OBS01,CL1OBS02,CL1DATHOR_EVE,CL1PCOMIS,CL1LOTSEQ) values ('
                  +intTostr(codemp)+','
                  +IntTostr(mnumlot)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATA.Text))+chr(39)+','
                  +IntToStr(pVOrigem)+','
                  +Trim(CODVEN.Text)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATAI.Text))+chr(39)+','
                  +chr(39)+FormatDateTime(fdt, StrtoDate(MDATAF.Text))+chr(39)+','
                  +mudaVP(FloatToStr(ValFloat(QTDDOC.Caption)))+','
                  +mudaVP(FloatToStr(ValFloat(TOTDOC.Caption)))+','
                  +mudaVP(FloatToStr(ValFloat(TOTCOM.Caption)))+','
                  +mudaVP(FloatToStr(ValFloat(TARBAN.Text)))+','
                  +mudaVP(FloatToStr(ValFloat(OUTDESP.Text)))+','
                  +mudaVP(FloatToStr(ValFloat(TOTTARBAN.Caption)))+','
                  +mudaVP(FloatToStr(ValFloat(TOTOUTDESP.Caption)))+','
                  +':OBS1, :OBS2,:CL1DATHOR_EVE,:PCOMIS  '
                  +',0)');
DM1.Query1.ParamByName('OBS1').AsString:=OBS1.Text;
DM1.Query1.ParamByName('OBS2').AsString:=OBS2.Text;
DM1.Query1.ParamByName('CL1DATHOR_EVE').AsDateTime:=Now;
DM1.Query1.ParamByName('PCOMIS').AsString:=PCOMIS.Text;
DM1.Query1.ExecSQL;
DM1.Query1.Params.Clear;
DM1.Query1.Close;
DM1.Query1.Sql.Clear;

mcod:=0;
mplid:=0;
mpqtd:=STG1.RowCount;
for x:=1 to STG1.RowCount-1 do
  begin
  mplid:=mplid+1;
  Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
  verteclado(0);
  if Trim(STG1.Cells[mcol_chave,x])='' then
    Continue;
  DM1.Tb_Ped02.Close;
  DM1.Tb_Ped02.SQL.Clear;
  DM1.Tb_Ped02.SQL.Add('select * from cadp02 '
                    +' where P2CHAVE ='+STG1.Cells[mcol_chave,x]
                    +'   and P2CODEMP='+STG1.Cells[mcol_codemp,x]
                    +'   and P2LOTSEQ='+STG1.Cells[mcol_lotseq,x]
                    +'   and P2CODVEN='+CODVEN.TEXT
                    +'   and P2ORDEM ='+STG1.Cells[mcol_ordem,x]);
  DM1.Tb_Ped02.Open;
  if DM1.Tb_Ped02.IsEmpty then
    begin
    fmensagem('Chave não encontrada!',0,['0'],0);
    Continue;
    end;

   flcadp01(0,DM1.Tb_Ped02P2CODEMP.AsInteger,DM1.Tb_Ped02P2LOTSEQ.AsInteger,DM1.Tb_Ped02P2CHAVE.AsString,DM1.Tb_Ped02P2ORDEM.AsString);

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADP02 set P2LOTCT=0'+IntTostr(mnumlot)
                     +' where P2LOTSEQ=0'+DM1.Tb_Ped02P2LOTSEQ.AsString
                     +' and P2CODEMP=0'+DM1.Tb_Ped02P2CODEMP.AsString
                     +' and P2CHAVE=0'+DM1.Tb_Ped02P2CHAVE.AsString
                     +' and P2ORDEM=0'+DM1.Tb_Ped02P2ORDEM.AsString
                     +' and P2CODVEN='+CODVEN.Text);
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,573,'Frm_ComVP','CADP02');
      end;

   mcod:=mcod+1;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Params.CreateParam(ftstring,'DESD',ptinput);
   DM1.Query1.Params.CreateParam(ftstring,'DTEMIS',ptinput);
   DM1.Query1.Params.CreateParam(ftstring,'DTVCTO',ptinput);
   DM1.Query1.Params.CreateParam(ftstring,'DTBX',ptinput);

   DM1.Query1.Sql.add('Insert into CADCL02 ('
                     +'CL2CODEMP,'
                     +'CL2LOTSEQ,'
                     +'CL2CHAVE,'
                     +'CL2SEQ,'
                     +'CL2DOC,'
                     +'CL2NUMERO,'
                     +'CL2DUP,'
                     +'CL2LOTSEQ_DC,'
                     +'CL2CHAVEP,'
                     +'CL2ORDEMP,'
                     +'CL2CODEMPD,'
                     +'CL2VALCOM,'
                     +'CL2VALDOC,'
                     +'CL2VALFRE,'
                     +'CL2VALICMSR,'
                     +'CL2SEMCOM,'
                     +'CL2VALACRE,'
                     +'CL2VALCTL,'
                     +'CL2VALDESC,'
                     +'CL2CODECF,'
                     +'CL2CODCLI,'
                     +'CL2DESD,'
                     +'CL2DTEMIS,'
                     +'CL2DTVCTO,'
                     +'CL2DTBX) values ('
                     +IntToStr(codemp)+','
                     +'0'+',' // Lote de Sequencia
                     +IntTostr(mnumlot)+','
                     +IntTostr(mcod)+','
                     +'0'+',' // documento
                     +DM1.Tb_Ped01P1NUMNF.AsString+',' // numero
                     +DM1.Tb_Ped01P1TIPO.AsString+','
                     +DM1.Tb_Ped02P2LOTSEQ.AsString+','
                     +DM1.Tb_Ped02P2CHAVE.AsString+','
                     +DM1.Tb_Ped02P2ORDEM.AsString+','
                     +DM1.Tb_Ped02P2CODEMP.AsString+','
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_valcom,x])))+',' // valor da comissão
                     +mudavp(FloatToStr(ValFloat(STG1.Cells[mcol_totliq,x])))+',' // valor do documento
                     +'0'+',' // valor do frete
                     +'0'+',' // valor do Icms Retido
                     +'0'+',' // valor dos produtos sem comissão
                     +'0'+',' // valor dos Acrescimos dos produtos
                     +'0'+',' // valor da comissão do televendas
                     +'0'+',' // desconto financeiro
                     +DM1.Tb_Ped02P2ITEM.AsString+',' // Código do ECF
                     +DM1.Tb_Ped01P1CODCLI.AsString+','
                     +':DESD,:DTEMIS,:DTVCTO,:DTBX)');
   DM1.Query1.Params[0].AsString:=' ';
   DM1.Query1.Params[1].AsDateTime:=DM1.Tb_Ped01P1DATANF.AsDateTime;
   DM1.Query1.Params[2].AsDateTime:=pdatanula;
   DM1.Query1.Params[3].AsDateTime:=pdatanula;
   try
     DM1.Query1.ExecSQL;
   except
     DM1.Query1.Sql.SaveToFile('c:\teste.txt');
     end;
   end;


// incio texto
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query1.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query1.Params.CreateParam(ftString,'CHAVE',ptInput);
DM1.Query1.Params.CreateParam(ftString,'NAT',ptInput);
DM1.Query1.Params.CreateParam(ftString,'ORDEM',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TEXTO',ptInput);
DM1.Query1.Params.CreateParam(ftString,'VALOR',ptInput);
DM1.Query1.Sql.add('Insert into CADCL03 ('
                  +' CL3CODEMP '
                  +',CL3LOTSEQ '
                  +',CL3CHAVE '
                  +',CL3NAT '
                  +',CL3ORDEM '
                  +',CL3TEXTO '
                  +',CL3VALOR '
                  +') values ('
                  +' :CODEMP '
                  +',:LOTSEQ '
                  +',:CHAVE '
                  +',:NAT '
                  +',:ORDEM '
                  +',:TEXTO '
                  +',:VALOR '
                  +')');
DM1.Query1.ParamByName('CODEMP').AsFloat:=codemp;
DM1.Query1.ParamByName('LOTSEQ').AsFloat:=ls_comrec;
DM1.Query1.ParamByName('CHAVE').AsFloat :=mnumlot;
DM1.Query1.ParamByName('NAT').AsFloat   :=0;
DM1.Query1.ParamByName('ORDEM').AsFloat :=1;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC01.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC01.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;
DM1.Query1.ParamByName('ORDEM').AsFloat :=2;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC02.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC02.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=3;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC03.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC03.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=4;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC04.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC04.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=5;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC05.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC05.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=6;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC06.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC06.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=7;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC07.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC07.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=8;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC08.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC08.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=9;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC09.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC09.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=10;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOC10.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALC10.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('NAT').AsFloat   :=1;
DM1.Query1.ParamByName('ORDEM').AsFloat :=1;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD01.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD01.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=2;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD02.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD02.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=3;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD03.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD03.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=4;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD04.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD04.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=5;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD05.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD05.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=6;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD06.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD06.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=7;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD07.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD07.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=8;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD08.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD08.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=9;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD09.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD09.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

DM1.Query1.ParamByName('ORDEM').AsFloat :=10;
DM1.Query1.ParamByName('TEXTO').AsString:=copy(MTEXTOD10.Text,1,48);
DM1.Query1.ParamByName('VALOR').AsFloat :=ValFloat(MVALD10.Text);
DM1.Query1.ExecSQL;
fdm1StartCommit;

// termino texto


moper:=2;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBLOCALIZAR.Click;
Frm_Agde.Free;
end;

procedure TFrm_ComVP.MDATAExit(Sender: TObject);
begin
try
   MDATA.Text:=FormatDatetime(fdt2, StrtoDate(MDATA.Text));
except
   if CODVEN.Focused then
      begin
      fmensagem('Data Invalida!',0,['0'],0);
      MDATA.SetFocus;
      end
   else
      MDATA.Text:=FormatDatetime(fdt2, date);
   end;

end;

procedure TFrm_ComVP.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODVEN.Text:=fChamaVen(0,'frm_ComVP',Key);
  CODVENExit(self);
  key:=#0;
  end;
end;

procedure TFrm_ComVP.CODVENEnter(Sender: TObject);
begin
mcodven_ant:=ValFloat(CODVEN.Text)
end;

procedure TFrm_ComVP.CODVENExit(Sender: TObject);
begin
if (STG1.RowCount>2) and (mcodven_ant<>ValFloat(CODVEN.Text)) then
  begin
  mcinst:='Esta mudança de Código apagara os registros selecionados.'+#13
         +'Deseja Continuar?';
  if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
    begin
    CODVEN.Text:=FloatToStr(mcodven_ant);
    if CODVEN.Enabled then
       CODVEN.SetFocus;
    exit;
    end
  else
    begin
    STG1.RowCount:=2;
    STG1.Rows[1].Clear;
    end;
  end;
if flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
  NOMVEN.Text:=DM1.Query1.fields[0].AsString
else
  begin
  fmensagem('Vendedor não cadastrado!',0,['0'],0);
  if CODVEN.Enabled then
    CODVEN.SetFocus;
  exit;
  end;
end;

procedure TFrm_ComVP.MDATAIEnter(Sender: TObject);
begin
//mdt1_ant:=MDATAI.Text;
end;

procedure TFrm_ComVP.MDATAIExit(Sender: TObject);
begin
Try
  MDATAI.Text:=FormatDateTime(fdt2,Strtodate(MDATAI.Text));
except
  fmensagem('Data Invalida!',0,['0'],0);
  MDATAI.SetFocus;
  exit;
  end;
end;

procedure TFrm_ComVP.MDATAFEnter(Sender: TObject);
begin
//mdt2_ant:=MDATAF.Text;
end;

procedure TFrm_ComVP.MDATAFExit(Sender: TObject);
begin
Try
   MDATAF.Text:=FormatDateTime(fdt2,Strtodate(MDATAF.Text));
except
   fmensagem('Data Invalida!',0,['0'],0);
   MDATAF.SetFocus;
   exit;
   end;
end;

procedure TFrm_ComVP.PCOMISExit(Sender: TObject);
begin
PCOMIS.Text:=Formatfloat(mcasas, ValFloat(PCOMIS.Text));
if ValFloat(PCOMIS.Text)<0 then
   begin
   fmensagem('Comissão não pode ser menor que zero!',0,['0'],0);
   PCOMIS.SetFocus;
   exit;
   end;
if not fTestaTam(0,6,PCOMIS.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   PCOMIS.SetFocus;
   exit;
   end;
//mpcomis:=ValFloat(PCOMIS.Text);
fcalccomClick(self);
end;

procedure TFrm_ComVP.PCOMISKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator;
if not fTestaTam(1,5,PCOMIS.Text,key) then
   key:=#0;
end;

procedure TFrm_ComVP.OBS1Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS1.Text,'') then
   OBS1.Text:=copy(OBS1.Text,1,60);
end;

procedure TFrm_ComVP.OBS1KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,60,OBS1.Text,key) then
   key:=#0;
end;

procedure TFrm_ComVP.OBS2Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS2.Text,'') then
   OBS2.Text:=copy(OBS2.Text,1,60);

end;

procedure TFrm_ComVP.OBS2KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(0,60,OBS2.Text,'') then
   OBS2.Text:=copy(OBS2.Text,1,60);
end;

procedure TFrm_ComVP.TARBANExit(Sender: TObject);
begin
TARBAN.Text:=Formatfloat(mcasas, ValFloat(TARBAN.Text));
if ValFloat(TARBAN.Text)<0 then
   begin
   fmensagem('Tarifa Bancaria não pode ser menor que zero!',0,['0'],0);
   TARBAN.SetFocus;
   exit;
   end;
if not fTestaTam(0,10,TARBAN.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   TARBAN.SetFocus;
   exit;
   end;
fcalccomClick(self);   
end;

procedure TFrm_ComVP.TARBANKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator;

if not fTestaTam(1,10,TARBAN.Text,key) then
   key:=#0;
end;

procedure TFrm_ComVP.TARBANEnter(Sender: TObject);
begin
TARBAN.SelectAll;
end;

procedure TFrm_ComVP.OUTDESPEnter(Sender: TObject);
begin
OUTDESP.SelectAll;
end;

procedure TFrm_ComVP.OUTDESPExit(Sender: TObject);
begin
OUTDESP.Text:=Formatfloat(mcasas, ValFloat(OUTDESP.Text));
if ValFloat(OUTDESP.Text)<0 then
   begin
   fmensagem('Outras Despesas não pode ser menor que zero!',0,['0'],0);
   TARBAN.SetFocus;
   exit;
   end;
if not fTestaTam(0,10,OUTDESP.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   OUTDESP.SetFocus;
   exit;
   end;
fcalccomClick(self);   
end;

procedure TFrm_ComVP.OUTDESPKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator;
if not fTestaTam(1,10,OUTDESP.Text,key) then
   key:=#0;
end;

procedure TFrm_ComVP.item_pesquisarClick(Sender: TObject);
begin
if Frm_PComVP=nil then
   Application.CreateForm(TFrm_PComVP, Frm_PComVP)
else
   begin
   Frm_PComVP.Free;
   Frm_PComVP:=nil;
   Application.CreateForm(TFrm_PComVP, Frm_PComVP);
   end;
if cb_tipo_data.ItemIndex=2 then
   Frm_PComVP.mDataPesq:='CRDTPAG'
else if cb_tipo_data.ItemIndex=3 then
   Frm_PComVP.mDataPesq:='CRDTVCTO'
else if cb_tipo_data.ItemIndex=2 then
   Frm_PComVP.mDataPesq:='P1DATENT'
else if cb_tipo_data.ItemIndex=1 then
   Frm_PComVP.mDataPesq:='P1DATAP'
else
   Frm_PComVP.mDataPesq:='P1DATDOC';
{
Data documento
Data do Pedido
Data da Entrega
Data do Pagamento
Data do Vencimento
}

Frm_PComVP.ShowModal;
Frm_PComVP.Free;
Frm_PComVP:=nil;
fcalccomClick(self);
end;

procedure TFrm_ComVP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
  Action := caFree;
end;

procedure TFrm_ComVP.BBLOCALIZARClick(Sender: TObject);
begin
if moper<>2 then
  begin
  Application.CreateForm(TFrm_CVVP, Frm_CVVP);
  Frm_CVVP.ShowModal;
  mnumlot:=Frm_CVVP.Qr_ComVCL1CHAVE.AsInteger;
  Frm_CVVP.Free;
  Frm_CVVP:=nil;
  end;
BBLIMPAR.Click;
Qr_CL01.Close;
Qr_CL01.SQL.Clear;
Qr_CL01.SQL.Add('Select * from CADCL01 where CL1TIPO=9 and ');
if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Qr_CL01.SQL.add(' CL1CHAVE=0'+IntToStr(mnumlot)
                   +' order by CL1CHAVE')
else
   Qr_CL01.SQL.add(' CL1CODEMP=0'+IntTostr(codemp)
                   +' and CL1CHAVE=0'+IntToStr(mnumlot)
                   +' order by CL1CHAVE');
Qr_CL01.Open;
if Qr_CL01.Eof then
   begin
   fMensagem('Lote não Encontrado',0,['0'],0);
   exit;
   end;
Qr_CL02.Close;
Qr_CL02.SQL.Clear;
Qr_CL02.SQL.Add('Select * from CADCL02 where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CL2CODEMP=0'+IntToStr(codemp)+' and ')
               +' CL2CHAVE=0'+IntToStr(mnumlot)
               +' order by CL2CHAVE');
try
  Qr_CL02.Open;
except
  Qr_CL02.SQL.SaveToFile(mpastatemp +'sql.txt');
  Exit;
  end;

Qr_CL03.Close;
Qr_CL03.SQL.Clear;
Qr_CL03.SQL.Add('Select * from CADCL03 where ');
if DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Qr_CL03.SQL.add(' CL3CHAVE=0'+IntToStr(mnumlot)
                   +' order by CL3CHAVE,CL3NAT,CL3ORDEM')
else
   Qr_CL03.SQL.add(' CL3CODEMP=0'+intTostr(codemp)
                  +' and CL3CHAVE=0'+IntToStr(mnumlot)
                  +' order by CL3CHAVE,CL3NAT,CL3ORDEM');
Qr_CL03.Open;


NUMLOT.Text :=Qr_CL01CL1CHAVE.AsString;
MDATA.Text  :=FormatDatetime(fdt2, Qr_CL01CL1DATA.Value);
CODVEN.Text :=Qr_CL01CL1CODIGO.AsString;
flqr1('VNOME','V','CADVEN','N','VCODVEN',QR_CL01CL1CODIGO.AsString);
NOMVEN.Text :=DM1.Query1.Fields[0].AsString;
MDATAI.Text :=FormatDateTime(fdt2,Qr_CL01CL1DATAI.Value);
MDATAF.Text :=FormatDateTime(fdt2,Qr_CL01CL1DATAF.Value);
PCOMIS.Text :=Formatfloat(mcasas, Qr_CL01CL1PCOMIS.Value);
TARBAN.Text :=Formatfloat(mcasas, Qr_CL01CL1TARBAN.Value);
OUTDESP.Text:=Formatfloat(mcasas, Qr_CL01CL1OUTDESP.Value);
OBS1.Text   :=Qr_CL01CL1OBS01.Value;
OBS2.Text   :=Qr_CL01CL1OBS02.Value;
Qr_CL02.First;
STG1.RowCount:=2;
STG1.Rows[1].Clear;
While not Qr_CL02.Eof do
  begin
  STG1.Cells[mcol_chave ,STG1.RowCount-1] :=Qr_CL02CL2CHAVEP.AsString;
  STG1.Cells[mcol_codcli,STG1.RowCount-1] :=Qr_CL02CL2CODCLI.AsString;
  STG1.Cells[mcol_razsoc,STG1.RowCount-1] :=Qr_CL02NOMCLI.AsString;
  STG1.Cells[mcol_datanf,STG1.RowCount-1] :=Qr_CL02CL2DTEMIS.AsString;
  STG1.Cells[mcol_totliq,STG1.RowCount-1] :=formatfloat('#,##0.00',Qr_CL02CL2VALDOC.AsFloat);
  STG1.Cells[mcol_percen,STG1.RowCount-1] :=formatfloat('#,##0.00',(Qr_CL02CL2VALCOM.AsFloat/Qr_CL02CL2VALDOC.AsFloat)*100);
  STG1.Cells[mcol_valcom,STG1.RowCount-1] :=formatfloat('#,##0.00',Qr_CL02CL2VALCOM.AsFloat);
  STG1.Cells[mcol_codemp,STG1.RowCount-1] :=Qr_CL02CL2CODEMPD.AsString;
  STG1.Cells[mcol_lotseq,STG1.RowCount-1] :=Qr_CL02CL2LOTSEQ.AsString;
  STG1.Cells[mcol_ordem ,STG1.RowCount-1] :=Qr_CL02CL2ORDEMP.AsString;
  STG1.RowCount:=STG1.RowCount+1;
  Qr_CL02.Next;
  end;
  STG1.RowCount:=STG1.RowCount-1;
while not Qr_CL03.Eof do
  begin
  if Qr_CL03CL3NAT.Value=1 then // debitos
    begin
    if Qr_CL03CL3ORDEM.Value=1 then
      begin
      MTEXTOD01.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD01.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=2 then
      begin
      MTEXTOD02.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD02.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=3 then
      begin
      MTEXTOD03.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD03.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=4 then
      begin
      MTEXTOD04.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD04.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=5 then
      begin
      MTEXTOD05.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD05.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=6 then
      begin
      MTEXTOD06.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD06.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=7 then
      begin
      MTEXTOD07.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD07.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=8 then
      begin
      MTEXTOD08.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD08.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=9 then
      begin
      MTEXTOD09.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD09.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=10 then
      begin
      MTEXTOD10.Text:=Qr_CL03CL3TEXTO.Value;
      MVALD10.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end;
    end
  else
    begin
    if Qr_CL03CL3ORDEM.Value=1 then
      begin
      MTEXTOC01.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC01.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=2 then
      begin
      MTEXTOC02.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC02.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=3 then
      begin
      MTEXTOC03.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC03.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=4 then
      begin
      MTEXTOC04.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC04.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=5 then
      begin
      MTEXTOC05.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC05.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=6 then
      begin
      MTEXTOC06.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC06.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=7 then
      begin
      MTEXTOC07.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC07.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=8 then
      begin
      MTEXTOC08.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC08.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=9 then
      begin
      MTEXTOC09.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC09.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end
    else if Qr_CL03CL3ORDEM.Value=10 then
      begin
      MTEXTOC10.Text:=Qr_CL03CL3TEXTO.Value;
      MVALC10.Text  :=FormatFloat(mcasas, Qr_CL03CL3VALOR.Value);
      end;
    end;
  Qr_CL03.Next;
  end;

fcalccomClick(self);
  
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=True;
BBEXCLUIR.Enabled  :=True;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=True;
end;

procedure TFrm_ComVP.Qr_CL02CalcFields(DataSet: TDataSet);
begin
if not (Qr_CL02.State in [dsInsert,dsEdit]) then
  begin
  flcadcli(1,0,Qr_CL02CL2CODCLI.AsString);
  if not DM1.Tb_Cli.IsEmpty then
    Qr_CL02NOMCLI.AsString:=DM1.Tb_CliCRAZAO.AsString
  else
    Qr_CL02NOMCLI.AsString:='Não Encontrado!';
  end;
end;

procedure TFrm_ComVP.MVALC01Enter(Sender: TObject);
begin
MVALC01.SelectAll;
end;

procedure TFrm_ComVP.MVALC01Exit(Sender: TObject);
begin
MVALC01.Text:=Formatfloat(mcasas, ValFloat(MVALC01.Text));
if ValFloat(MVALC01.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC01.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC01.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC01.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC02Exit(Sender: TObject);
begin
MVALC02.Text:=Formatfloat(mcasas, ValFloat(MVALC02.Text));
if ValFloat(MVALC02.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC02.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC02.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC02.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC03Exit(Sender: TObject);
begin
MVALC03.Text:=Formatfloat(mcasas, ValFloat(MVALC03.Text));
if ValFloat(MVALC03.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC03.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC03.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC03.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC04Exit(Sender: TObject);
begin
MVALC04.Text:=Formatfloat(mcasas, ValFloat(MVALC04.Text));
if ValFloat(MVALC04.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC04.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC04.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC04.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC05Exit(Sender: TObject);
begin
MVALC05.Text:=Formatfloat(mcasas, ValFloat(MVALC05.Text));
if ValFloat(MVALC05.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC05.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC05.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC05.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC06Exit(Sender: TObject);
begin
MVALC06.Text:=Formatfloat(mcasas, ValFloat(MVALC06.Text));
if ValFloat(MVALC06.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC06.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC06.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC06.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC07Exit(Sender: TObject);
begin
MVALC07.Text:=Formatfloat(mcasas, ValFloat(MVALC07.Text));
if ValFloat(MVALC07.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC07.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC07.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC07.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC08Exit(Sender: TObject);
begin
MVALC08.Text:=Formatfloat(mcasas, ValFloat(MVALC08.Text));
if ValFloat(MVALC08.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC08.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC08.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC08.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC09Exit(Sender: TObject);
begin
MVALC09.Text:=Formatfloat(mcasas, ValFloat(MVALC09.Text));
if ValFloat(MVALC09.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC09.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC09.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC09.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC10Exit(Sender: TObject);
begin
MVALC10.Text:=Formatfloat(mcasas, ValFloat(MVALC10.Text));
if ValFloat(MVALC10.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALC10.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALC10.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALC10.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALC02Enter(Sender: TObject);
begin
MVALC02.SelectAll;
end;

procedure TFrm_ComVP.MVALC03Enter(Sender: TObject);
begin
MVALC03.SelectAll;
end;

procedure TFrm_ComVP.MVALC04Enter(Sender: TObject);
begin
MVALC04.SelectAll;
end;

procedure TFrm_ComVP.MVALC05Enter(Sender: TObject);
begin
MVALC05.SelectAll;
end;

procedure TFrm_ComVP.MVALC06Enter(Sender: TObject);
begin
MVALC06.SelectAll;
end;

procedure TFrm_ComVP.MVALC07Enter(Sender: TObject);
begin
MVALC07.SelectAll;
end;

procedure TFrm_ComVP.MVALC08Enter(Sender: TObject);
begin
MVALC08.SelectAll;
end;

procedure TFrm_ComVP.MVALC09Enter(Sender: TObject);
begin
MVALC09.SelectAll;
end;

procedure TFrm_ComVP.MVALC10Enter(Sender: TObject);
begin
MVALC10.SelectAll;
end;

procedure TFrm_ComVP.MVALD01Exit(Sender: TObject);
begin
MVALD01.Text:=Formatfloat(mcasas, ValFloat(MVALD01.Text));
if ValFloat(MVALD01.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD01.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD01.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD01.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVP.MVALD02Exit(Sender: TObject);
begin
MVALD02.Text:=Formatfloat(mcasas, ValFloat(MVALD02.Text));
if ValFloat(MVALD02.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD02.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD02.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD02.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALD03Exit(Sender: TObject);
begin
MVALD03.Text:=Formatfloat(mcasas, ValFloat(MVALD03.Text));
if ValFloat(MVALD03.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD03.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD03.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD03.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALD04Exit(Sender: TObject);
begin
MVALD04.Text:=Formatfloat(mcasas, ValFloat(MVALD04.Text));
if ValFloat(MVALD04.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD04.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD04.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD04.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVP.MVALD05Exit(Sender: TObject);
begin
MVALD05.Text:=Formatfloat(mcasas, ValFloat(MVALD05.Text));
if ValFloat(MVALD05.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD05.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD05.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD05.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVP.MVALD06Exit(Sender: TObject);
begin
MVALD06.Text:=Formatfloat(mcasas, ValFloat(MVALD06.Text));
if ValFloat(MVALD06.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD06.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD06.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD06.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALD07Exit(Sender: TObject);
begin
MVALD07.Text:=Formatfloat(mcasas, ValFloat(MVALD07.Text));
if ValFloat(MVALD07.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD07.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD07.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD07.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVP.MVALD08Exit(Sender: TObject);
begin
MVALD08.Text:=Formatfloat(mcasas, ValFloat(MVALD08.Text));
if ValFloat(MVALD08.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD08.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD08.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD08.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVP.MVALD09Exit(Sender: TObject);
begin
MVALD09.Text:=Formatfloat(mcasas, ValFloat(MVALD09.Text));
if ValFloat(MVALD09.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD09.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD09.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD09.SetFocus;
   exit;
   end;
FTotalPadrao(0);
end;

procedure TFrm_ComVP.MVALD10Exit(Sender: TObject);
begin
MVALD10.Text:=Formatfloat(mcasas, ValFloat(MVALD10.Text));
if ValFloat(MVALD10.Text)<0 then
   begin
   fmensagem('Valor não pode ser menor que zero!',0,['0'],0);
   MVALD10.SetFocus;
   exit;
   end;
if not fTestaTam(0,12,MVALD10.Text,'') then
   begin
   fmensagem('Valor muito grande para este Campo!',0,['0'],0);
   MVALD10.SetFocus;
   exit;
   end;
FTotalPadrao(0);

end;

procedure TFrm_ComVP.MVALD01Enter(Sender: TObject);
begin
MVALD01.SelectAll;
end;

procedure TFrm_ComVP.MVALD02Enter(Sender: TObject);
begin
MVALD02.SelectAll;
end;

procedure TFrm_ComVP.MVALD03Enter(Sender: TObject);
begin
MVALD03.SelectAll;
end;

procedure TFrm_ComVP.MVALD04Enter(Sender: TObject);
begin
MVALD04.SelectAll;
end;

procedure TFrm_ComVP.MVALD05Enter(Sender: TObject);
begin
MVALD05.SelectAll;
end;

procedure TFrm_ComVP.MVALD06Enter(Sender: TObject);
begin
MVALD06.SelectAll;
end;

procedure TFrm_ComVP.MVALD07Enter(Sender: TObject);
begin
MVALD07.SelectAll;
end;

procedure TFrm_ComVP.MVALD08Enter(Sender: TObject);
begin
MVALD08.SelectAll;
end;

procedure TFrm_ComVP.MVALD09Enter(Sender: TObject);
begin
MVALD09.SelectAll;
end;

procedure TFrm_ComVP.MVALD10Enter(Sender: TObject);
begin
MVALD10.SelectAll;
end;

procedure TFrm_ComVP.BBIMPRIMIRClick(Sender: TObject);
begin
RL_PERIODO.Caption:='Periodo..: '+MDATAI.Text+' à ' +MDATAF.Text;
RLReport1.PreviewModal;
end;

procedure TFrm_ComVP.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if (Qr_CL02CL2DUP.AsFloat<>8) and (Qr_CL02CL2DUP.AsFloat<>17)  then
   begin
   mTotalGeral:=mTotalGeral+Qr_CL02CL2VALDOC.AsFloat;
   mTotalComis:=mTotalComis+Qr_CL02CL2VALCOM.AsFloat;
   end
else
   begin
   mTotalGeral:=mTotalGeral-Qr_CL02CL2VALDOC.AsFloat;
   mTotalComis:=mTotalComis-Qr_CL02CL2VALCOM.AsFloat;
   end;

PERCENT.Caption:=FormatFloat('#,##0.00',Qr_CL02CL2VALCOM.AsFloat/Qr_CL02CL2VALDOC.AsFloat*100);
end;

procedure TFrm_ComVP.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RL_VENDEDOR.Caption:='Vendedor..: '+NOMVEN.Text;
end;

procedure TFrm_ComVP.RLReport1AfterPrint(Sender: TObject);
begin
mTotalGeral:=0;
mTotalComis:=0;
end;

procedure TFrm_ComVP.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_TotalGeral.Caption:='R$ '+FormatFloat('#,##0.00',mTotalGeral);
rl_TotalComiss.Caption:='R$ '+FormatFloat('#,##0.00',mTotalComis);
end;

procedure TFrm_ComVP.ITEM_GRAVARClick(Sender: TObject);
var
  x: Integer;
begin
if (ValFloat(edt_chavep.Text)=0) or (trim(edt_datanf.Text)='/  /') then
  Exit;

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('  Select P2CODEMP,P2CHAVE, P2ORDEM,P2LOTSEQ,P1CODCLI,CRAZAO,P1DATANF,sum(P2TOTLIQ) as P2TOTLIQ,'
                  +'  P2CODVEN, P1EMIDOC, P2LOTCT '
                  +'  from CADP02, CADP01, CADCLI, CADVEN                                  '
                  +'  where P2CODVEN is not null and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM       '
                  +'  and P1CODEMP=P2CODEMP and P1LOTSEQ=P2LOTSEQ     '
                  +'   and  P1STATUS <'+mstatus_excluido+' and P1EMIDOC=1 '
                  +iif(la_Empresas='','',' and '+la_Empresas)
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                  +'  and CCODCLI=P1CODCLI                                                '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADVEN',[]),'',' and VCODEMP=P1CODEMP ')
                  +'  and VCODVEN=P2CODVEN ');
DM1.Query2.SQL.Add(' and ((P2CODVEN=0'+Frm_ComVP.CODVEN.Text+') and (P2LOTCT=0 or P2LOTCT is null))');
DM1.Query2.SQL.Add(' and P1CHAVE='+edt_chavep.Text);
DM1.Query2.SQL.Add(' and P1DATANF='+QuotedStr(edt_datanf.Text));
if trim(la_Empresas)<>'' then
  DM1.Query2.SQL.Add(' and '+la_Empresas);
DM1.Query2.SQL.Add(' GROUP BY P2CODEMP, P2CHAVE, P2ORDEM, P2LOTSEQ, P1CODCLI, CRAZAO, P1DATANF ');
DM1.Query2.SQL.Add(' ,P2CODVEN,P1EMIDOC, P2LOTCT ');
DM1.Query2.SQL.Add(' order by P2CHAVE ');
try
  DM1.Query2.Open;
except
  DM1.Query2.sql.SaveToFile(mpastatemp +'sql.TXT');
  end;

if DM1.Query2.IsEmpty then
  begin
  fmensagem('Chave não encontrada!',0,['0'],0);
  edt_chavep.SetFocus;
  exit;
  end;

if (DM1.Query2.FieldByName('P1EMIDOC').Value<1) then
  begin
  fmensagem('Este pedido ainda esta pendente!',0,['0'],0);
  edt_chavep.SetFocus;
  Exit;
  end;


if DM1.Query2.FieldByName('P2CODVEN').Value=ValFloat(CODVEN.Text) then
  begin
  if (DM1.Query2.FieldByName('P2LOTCT').Value>0) and not
     ((moper=1) and (DM1.Query2.FieldByName('P2LOTCT').Value=ValFloat(NUMLOT.Text))) then
     begin
     fmensagem('Este pedido ja esta no relatorio: '+DM1.Query2.FieldByName('P2LOTCT').AsString,0,['0'],0);
     edt_chavep.SetFocus;
     exit;
     end;
   end;
if fExistemOutraComissaodeVendas(DM1.query2.fieldbyname('P2CHAVE').AsInteger,DM1.Query2.fieldbyname('P2LOTSEQ').AsInteger,
                                 DM1.query2.fieldbyname('P2CODEMP').AsInteger
                                 ,valint(NUMLOT.Text),valint(CODVEN.text)) then
   begin
   edt_chavep.SetFocus;
   exit;
   end;




for x:=0 to STG1.RowCount -1 do
  begin
  if Trim(STG1.Cells[0,x])='' then
    continue;
  if (DM1.Query2.FieldByName('P2LOTSEQ').AsFloat=valfloat(STG1.Cells[mcol_lotseq,x])) and
     (DM1.Query2.FieldByName('P2CHAVE').AsFloat =valfloat(STG1.Cells[mcol_chave,x])) and
     (DM1.Query2.FieldByName('P2ORDEM').AsFloat =valFloat(STG1.Cells[mcol_ordem,x])) and
     (DM1.Query2.FieldByName('P2CODEMP').AsFloat=valFloat(STG1.Cells[mcol_codemp,x])) then
    begin
    fmensagem('Pedido já digitado.',0,['0'],0);
    edt_chavep.SetFocus;
    exit;
    end;
  end;

if ValFloat(STG1.Cells[mcol_chave,STG1.RowCount-1])>0 then
  STG1.RowCount:=STG1.RowCount+1;
STG1.Cells[mcol_chave,STG1.RowCount-1]  :=DM1.Query2.FieldByName('P2CHAVE').AsString;
STG1.Cells[mcol_codcli,STG1.RowCount-1] :=DM1.Query2.FieldByName('P1CODCLI').AsString;
STG1.Cells[mcol_razsoc,STG1.RowCount-1] :=DM1.Query2.FieldByName('CRAZAO').AsString;
STG1.Cells[mcol_datanf,STG1.RowCount-1] :=DM1.Query2.FieldByName('P1DATANF').AsString;
STG1.Cells[mcol_totliq,STG1.RowCount-1] :=formatfloat('#,##0.00',DM1.Query2.FieldByName('P2TOTLIQ').AsFloat);
STG1.Cells[mcol_percen,STG1.RowCount-1] :=Frm_ComVP.PCOMIS.Text;
STG1.Cells[mcol_valcom,STG1.RowCount-1] :=formatfloat('#,##0.00',DM1.Query2.FieldByName('P2TOTLIQ').AsFloat*ValFloat(Frm_ComVP.PCOMIS.Text)/100);
STG1.Cells[mcol_codemp,STG1.RowCount-1] :=DM1.Query2.FieldByName('P2CODEMP').AsString;
STG1.Cells[mcol_lotseq,STG1.RowCount-1] :=DM1.Query2.FieldByName('P2LOTSEQ').AsString;
STG1.Cells[mcol_ordem,STG1.RowCount-1]  :=DM1.Query2.FieldByName('P2ORDEM').AsString;
STG1.RowCount:=STG1.RowCount+1;
fcalccomClick(self);
end;


procedure TFrm_ComVP.item_excluirClick(Sender: TObject);
var
  x: Integer;
begin
if (STG1.Cells[mcol_chave,STG1.Row]='') then
  exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],0)<>mrYes then
  exit;

if STG1.RowCount=2 then
  STG1.Rows[1].Clear
else
  begin
  for x:=STG1.Row to STG1.RowCount-2 do
    begin
    STG1.Cells[mcol_chave,x]  :=STG1.Cells[mcol_chave,x+1];
    STG1.Cells[mcol_codcli,x] :=STG1.Cells[mcol_codcli,x+1];
    STG1.Cells[mcol_razsoc,x] :=STG1.Cells[mcol_razsoc,x+1];
    STG1.Cells[mcol_datanf,x] :=STG1.Cells[mcol_datanf,x+1];
    STG1.Cells[mcol_totliq,x] :=STG1.Cells[mcol_totliq,x+1];
    STG1.Cells[mcol_percen,x] :=STG1.Cells[mcol_percen,x+1];
    STG1.Cells[mcol_valcom,x] :=STG1.Cells[mcol_valcom,x+1];
    STG1.Cells[mcol_codemp,x] :=STG1.Cells[mcol_codemp,x+1];
    STG1.Cells[mcol_lotseq,x] :=STG1.Cells[mcol_lotseq,x+1];
    STG1.Cells[mcol_ordem,x]  :=STG1.Cells[mcol_ordem,x+1];
    end;
  STG1.RowCount:=STG1.RowCount-1;
  end;
fcalccomClick(self);
end;

procedure TFrm_ComVP.ITEM_CANCELARClick(Sender: TObject);
begin
edt_chavep.Text:='';
edt_datanf.Text:='  /  /    ';
edt_razsoc.Text:='';
edt_total.Text :='';
end;

procedure TFrm_ComVP.edt_chavepExit(Sender: TObject);
begin
if ValFloat(edt_chavep.Text)>0 then
  begin
  la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.add('  Select P2CHAVE, P1DATANF, CRAZAO, '
              +' (SELECT SUM(P2TOTLIQ) from CADP02 DENTRO WHERE DENTRO.P2CHAVE=FORA.P2CHAVE '
              +' AND DENTRO.P2CODVEN=FORA.P2CODVEN '
              +' AND DENTRO.P2CODEMP=FORA.P2CODEMP '
              +' AND DENTRO.P2LOTSEQ=FORA.P2LOTSEQ) AS  Total '
              +'    ,(select sum(ROUND(CRVALOR,2)) from caddar where CRNPED=P2CHAVE AND CRORDEM=P2ORDEM AND CRLOTSEQ_CP=P2LOTSEQ AND CRCODEMP=P2CODEMP) AS TOTDUP '
              +'  ,(select sum(ROUND(CRVALPAG+CRDESC,2)) from caddar where CRNPED=P2CHAVE AND CRORDEM=P2ORDEM AND CRLOTSEQ_CP=P2LOTSEQ AND CRCODEMP=P2CODEMP) AS TOTDUP_PAG '
              +'  from CADP01, CADP02 FORA, CADCLI where P1STATUS <'+mstatus_excluido+' and P1EMIDOC=1 ');
  DM1.Query2.SQL.add(' and P1CHAVE=P2CHAVE and P1CODEMP=P2CODEMP and P1LOTSEQ=P2LOTSEQ ');
  DM1.Query2.SQL.add(' and P1CODCLI=CCODCLI and P2CODVEN='+CODVEN.Text);
  DM1.Query2.SQL.Add(' and P1ORDEM=P2ORDEM and P1CHAVE='+edt_chavep.Text);
  DM1.Query2.SQL.Add(' and (P2LOTCT=0 or P2LOTCT is null) ');
  if trim(la_Empresas)<>'' then
    DM1.Query2.SQL.Add(' and '+la_Empresas);
    DM1.Query2.SQL.Add(' GROUP BY P2CHAVE, P2ORDEM,P2LOTSEQ,P2CODEMP, P1DATANF, CRAZAO, P2CODVEN ');
   DM1.Query2.sql.Text:='Select tab02.* from ('
                +DM1.Query2.SQL.Text
                +') tab02 '
//                +' where NVL(TOTDUP,0)<=NVL(TOTDUP_PAG,0) '
                +' order by P2CHAVE ';
//  DM1.Query2.sql.savetofile(mpastatemp +'sqlcom.txt');

  try
    DM1.Query2.Open;
  except
    DM1.Query2.sql.savetofile(mpastatemp +'sqlcom.txt');
    end;
  if not DM1.Query2.IsEmpty then
    begin
    edt_datanf.Text:=FormatDateTime('DD/MM/YYYY',DM1.Query2.FieldByName('P1DATANF').AsDateTime);
    edt_razsoc.Text:=DM1.Query2.FieldByName('CRAZAO').AsString;
    edt_total.text :=FormatFloat('#,##0.00',DM1.Query2.FieldByName('Total').AsFloat);
    end
  else
    begin
    fmensagem('Pedido inexistente ou não emitido!',0,['0'],0);
    edt_chavep.SetFocus;
    end;
  end;
end;

procedure TFrm_ComVP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.

