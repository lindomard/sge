unit S_ProdProduz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, ComCtrls, RLReport, DB,
  DBTables, Grids, DBGrids, RLFilters, RLPDFFilter,s_lerarq_geral;

type
  TFrm_ProdProduz = class(TForm)
    PC1: TPageControl;
    Ts_Filtros2: TTabSheet;
    Ts_Filtros1: TTabSheet;
    bb_Aplicar_e_Imprimir: TButton;
    cb_datapesq: TComboBox;
    Label3: TLabel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    rg_modelo: TRadioGroup;
    lbl_codpro1: TLabel;
    codpro1: TEdit;
    lbx_codpro1: TListBox;
    lbl_codpro2: TLabel;
    codpro2: TEdit;
    lbx_codpro2: TListBox;
    Ds1: TDataSource;
    DBGrid1: TDBGrid;
    Qr1: TQuery;
    Ts_Relatorio: TTabSheet;
    RLReport1: TRLReport;
    Qr1OP: TFloatField;
    Qr1CODPRO: TFloatField;
    Qr1NOME: TStringField;
    Qr1QTD_PREV: TFloatField;
    Qr1QTD_REAL: TFloatField;
    Qr1DATA: TDateTimeField;
    Qr1DATAPREV: TDateTimeField;
    cb_somentes: TCheckBox;
    RLBand1: TRLBand;
    rl_empresa: TRLLabel;
    rl_modelo: TRLLabel;
    Rl_periodo: TRLLabel;
    rl_chave_op: TRLLabel;
    rl_codigo: TRLLabel;
    rl_descricao: TRLLabel;
    rl_qtd_real: TRLLabel;
    rl_data_prev: TRLLabel;
    rl_data_real: TRLLabel;
    RLBand2: TRLBand;
    rl_chave_opi: TRLDBText;
    rl_codigoi: TRLDBText;
    rl_descricaoi: TRLDBText;
    rl_qtd_reali: TRLDBText;
    rl_data_previ: TRLDBText;
    rl_data_reali: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    cb_omitir1: TCheckBox;
    cb_omitir2: TCheckBox;
    Qr1TOTAL_PRE: TFloatField;
    Qr1TOTAL_PRO: TFloatField;
    rl_qtd_previ: TRLDBText;
    rl_qtd_prev: TRLLabel;
    rl_val_prev: TRLLabel;
    rl_val_previ: TRLDBText;
    rl_val_real: TRLLabel;
    rl_val_reali: TRLDBText;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    rlTotQtdPrev: TRLLabel;
    rlTotQtdReal: TRLLabel;
    rlTotValPrev: TRLLabel;
    rlTotValReal: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure bb_Aplicar_e_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure codpro1Exit(Sender: TObject);
    procedure codpro1KeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codpro1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure codpro2Exit(Sender: TObject);
    procedure codpro2KeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codpro2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ProdProduz: TFrm_ProdProduz;
  xTotQtdPrev, xTotQtdReal, xTotValPrev, xTotValReal: Real;

implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_ProdProduz.FormCreate(Sender: TObject);
begin
if codusr<>1111 then
  Ts_Relatorio.TabVisible:=False;
end;

procedure TFrm_ProdProduz.bb_Aplicar_e_ImprimirClick(Sender: TObject);
var
  tabela: String;
begin
xTotQtdPrev:=0;
xTotQtdReal:=0;
xTotValPrev:=0;
xTotValReal:=0;
tabela:=CarregaView('TEMPOR_PRODPRODUZ');
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' create or replace view '+tabela+' as (                  ');
DM1.Query1.SQL.Add(' select *                                                ');
DM1.Query1.SQL.Add(' from  CADOP01, CADOP02, CADOP03, CADPRO                 ');
DM1.Query1.SQL.Add(' where OP2_CODPRO=PDCODPRO  and  OP1_CODEMP=OP2_CODEMP   ');
DM1.Query1.SQL.Add('  and OP1_CODEMP=OP3_CODEMP and OP1_CODIGO=OP2_CODIGO    ');
DM1.Query1.SQL.Add('  and OP1_CODIGO=OP3_CODIGO and OP1_STATUS<9             ');
if cb_datapesq.ItemIndex=0 then
  begin
  if trim(DateEdit1.Text)<>'/  /' then
    DM1.Query1.SQL.Add(' and OP1_DATA>='+chr(39)+DateEdit1.Text+chr(39));
  if trim(DateEdit2.Text)<>'/  /' then
    DM1.Query1.SQL.Add(' and OP1_DATA<='+chr(39)+DateEdit2.Text+chr(39));
  end
else
  begin
  if trim(DateEdit1.Text)<>'/  /' then
    DM1.Query1.SQL.Add(' and OP1_DATAPREV>='+chr(39)+DateEdit1.Text+chr(39));
  if trim(DateEdit2.Text)<>'/  /' then
    DM1.Query1.SQL.Add(' and OP1_DATAPREV<='+chr(39)+DateEdit2.Text+chr(39));
  end;

mcinst2:=fItensListBox(0,lbx_codpro1,CB_OMITIR1);
if trim(mcinst2)<>'' then
  begin
  DM1.Query1.SQL.Add(' and OP2_CODPRO '+mcinst2);
  mcinst2:='';
  end;

mcinst2:=fItensListBox(0,lbx_codpro2,CB_OMITIR2);
if trim(mcinst2)<>'' then
  begin
  DM1.Query1.SQL.Add(' and OP3_CODMAT '+mcinst2);
  mcinst2:='';
  end;

if cb_somentes.Checked then
  DM1.Query1.SQL.Add(' and OP1_STATUS=2 ');

DM1.Query1.SQL.Add(')');

try
  DM1.Query1.ExecSQL;
except
  Fmensagem('Erro ao criar tabela temporaria ',0,['0'],0);
  DM1.Query1.SQL.SaveToFile(SALVA_NOME('ErroSql\','Ex'));
  end;

Qr1.Close;
Qr1.SQL.Clear;
if rg_modelo.ItemIndex=0 then
  begin
  Qr1.SQL.Add(' select                                                         ');
  Qr1.SQL.Add(' 0  as OP,                                                      ');
  Qr1.SQL.Add(' OP2_CODPRO  as CODPRO,                                         ');
  Qr1.SQL.Add(' max(PDNOME) as NOME,                                           ');
  Qr1.SQL.Add('   (select sum(OP2_QTDPREV) as OP2_QTDPREV from (               ');
  Qr1.SQL.Add('      select OP2_CODPRO, max(OP2_QTDPREV) as OP2_QTDPREV        ');
  Qr1.SQL.Add('         from TEMPOR_PRODPRODUZ1 T                              ');
  Qr1.SQL.Add('           where T.OP2_CODEMP=X.OP2_CODEMP                      ');
  Qr1.SQL.Add('    and T.OP2_CODIGO=X.OP2_CODIGO and T.OP2_LOTSEQ=X.OP2_LOTSEQ ');
  Qr1.SQL.Add('           GROUP BY OP2_CODIGO, OP2_CODPRO)                     ');
  Qr1.SQL.Add('          where OP2_CODPRO=X.OP2_CODPRO                         ');
  Qr1.SQL.Add('       group by OP2_CODPRO) AS QTD_PREV,                        ');
  Qr1.SQL.Add('   (select sum(OP2_QTDPROD) as OP2_QTDPROD from (               ');
  Qr1.SQL.Add('      select OP2_CODPRO, max(OP2_QTDPROD) as OP2_QTDPROD        ');
  Qr1.SQL.Add('         from TEMPOR_PRODPRODUZ1 T                              ');
  Qr1.SQL.Add('           where T.OP2_CODEMP=X.OP2_CODEMP                      ');
  Qr1.SQL.Add('    and T.OP2_CODIGO=X.OP2_CODIGO and T.OP2_LOTSEQ=X.OP2_LOTSEQ ');
  Qr1.SQL.Add('           GROUP BY OP2_CODIGO, OP2_CODPRO)                     ');
  Qr1.SQL.Add('          where OP2_CODPRO=X.OP2_CODPRO                         ');
  Qr1.SQL.Add('       group by OP2_CODPRO) AS QTD_REAL,                        ');
  Qr1.SQL.Add(' max(To_Date('+chr(39)+DateToStr(Now)+chr(39)+')) as Data,      ');
  Qr1.SQL.Add(' max(To_Date('+chr(39)+DateToStr(Now)+chr(39)+')) as DataPrev,  ');
  Qr1.SQL.Add(' sum(OP3_QTDPREV*OP3_PU) as Total_Pre,                          ');
  Qr1.SQL.Add(' sum(OP3_QTDUTIL*OP3_PU) as Total_Pro                           ');
  Qr1.SQL.Add(' from '+tabela+' X ');
  Qr1.SQL.Add(' Group By OP2_CODPRO                                            ');
  Qr1.SQL.Add(' Order By NOME                                                  ');
  end
else if rg_modelo.ItemIndex=1 then
  begin
  Qr1.Close;
  Qr1.SQL.Clear;
  Qr1.SQL.Add(' select                              ');
  Qr1.SQL.Add(' OP2_CODIGO  as OP,                  ');
  Qr1.SQL.Add(' OP2_CODPRO  as CODPRO,              ');
  Qr1.SQL.Add(' PDNOME as NOME,                     ');
  Qr1.SQL.Add(' OP2_QTDPREV as QTD_PREV,            ');
  Qr1.SQL.Add(' OP2_QTDPROD as QTD_REAL,            ');
  Qr1.SQL.Add(' OP1_DATA as Data,                   ');
  Qr1.SQL.Add(' OP1_DATAPREV as DataPrev,           ');
  Qr1.SQL.Add(' sum(OP3_QTDPREV*OP3_PU) as Total_Pre,    ');
  Qr1.SQL.Add(' sum(OP3_QTDUTIL*OP3_PU) as Total_Pro     ');
  Qr1.SQL.Add(' from '+tabela);
  Qr1.SQL.Add(' Group By  OP2_CODIGO, OP2_CODPRO,   ');
  Qr1.SQL.Add('           PDNOME, OP2_QTDPREV,      ');
  Qr1.SQL.Add('           OP2_QTDPROD, OP1_DATA,    ');
  Qr1.SQL.Add('           OP1_DATAPREV              ');
  Qr1.SQL.Add(' Order By NOME, OP2_CODIGO ');
  end
else if rg_modelo.ItemIndex=2 then
  begin
  Qr1.SQL.Add(' select                           ');
  Qr1.SQL.Add(' 0  as OP,                        ');
  Qr1.SQL.Add(' OP3_CODMAT  as CODPRO,           ');
  Qr1.SQL.Add(' max(CADPRO.PDNOME) as NOME,      ');
  Qr1.SQL.Add(' sum(OP3_QTDPREV) as QTD_PREV,    ');
  Qr1.SQL.Add(' sum(OP3_QTDUTIL) as QTD_REAL,    ');
  Qr1.SQL.Add(' max(To_Date('+chr(39)+DateToStr(Now)+chr(39)+')) as Data,      ');
  Qr1.SQL.Add(' max(To_Date('+chr(39)+DateToStr(Now)+chr(39)+')) as DataPrev,  ');
  Qr1.SQL.Add(' sum(OP3_QTDPREV*OP3_PU) as Total_Pre,                          ');
  Qr1.SQL.Add(' sum(OP3_QTDUTIL*OP3_PU) as Total_Pro                           ');
  Qr1.SQL.Add(' from CADPRO, '+tabela);
  Qr1.SQL.Add(' where CADPRO.PDCODPRO=OP3_CODMAT ');
  Qr1.SQL.Add('Group By OP3_CODMAT               ');
  Qr1.SQL.Add('Order By NOME                     ');
  end
else if rg_modelo.ItemIndex=3 then
  begin
  Qr1.SQL.Add(' select                             ');
  Qr1.SQL.Add(' OP3_CODIGO  as OP,                 ');
  Qr1.SQL.Add(' OP3_CODMAT  as CODPRO,             ');
  Qr1.SQL.Add(' CADPRO.PDNOME as NOME,             ');
  Qr1.SQL.Add(' OP3_QTDPREV as QTD_PREV,           ');
  Qr1.SQL.Add(' OP3_QTDUTIL as QTD_REAL,           ');
  Qr1.SQL.Add(' OP1_DATA as Data,                  ');
  Qr1.SQL.Add(' OP1_DATAPREV as DataPrev,          ');
  Qr1.SQL.Add(' OP3_QTDPREV*OP3_PU as Total_Pre,   ');
  Qr1.SQL.Add(' OP3_QTDUTIL*OP3_PU as Total_Pro    ');
  Qr1.SQL.Add(' from CADPRO, '+tabela);
  Qr1.SQL.Add(' where CADPRO.PDCODPRO=OP3_CODMAT   ');
  Qr1.SQL.Add(' Order By NOME, OP3_CODIGO          ');
  end;
try
  Qr1.Open;
except
  Qr1.SQL.SaveToFile(SALVA_NOME('ErroSql\','Ex'));
  Exit;
  end;

if (rg_modelo.ItemIndex=0) or (rg_modelo.ItemIndex=2) then
  begin
  rl_chave_op.Visible :=False;
  rl_chave_opi.Visible:=False;

  rl_codigo.Left :=0;
  rl_codigo.Width:=152;

  rl_codigoi.Left:=0;
  rl_codigoi.Width:=152;

  rl_descricao.Left :=rl_codigo.Left+rl_codigo.Width;
  rl_descricao.Width:=320+180;

  rl_descricaoi.Left:=rl_codigoi.Left+rl_codigoi.Width;
  rl_descricaoi.Width:=320+180;

  rl_qtd_prev.Left:=rl_descricao.Left+rl_descricao.Width;
  rl_qtd_prev.Width:=90;

  rl_qtd_previ.Left:=rl_descricaoi.Left+rl_descricaoi.Width;
  rl_qtd_previ.Width:=90;

  rl_val_prev.Left:=rl_qtd_prev.Left+rl_qtd_prev.Width;
  rl_val_prev.Width:=106;

  rl_val_previ.Left:=rl_qtd_previ.Left+rl_qtd_previ.Width;
  rl_val_previ.Width:=106;

  rl_qtd_real.Left:=rl_val_prev.Left+rl_val_prev.Width;
  rl_qtd_real.Width:=90;

  rl_qtd_reali.Left:=rl_val_previ.Left+rl_val_previ.Width;
  rl_qtd_reali.Width:=90;

  rl_val_real.Left:=rl_qtd_real.Left+rl_qtd_real.Width;
  rl_val_real.Width:=106;

  rl_val_reali.Left:=rl_qtd_reali.Left+rl_qtd_reali.Width;
  rl_val_reali.Width:=106;

  rl_data_prev.Visible :=False;
  rl_data_previ.Visible:=False;

  rl_data_real.Visible :=False;
  rl_data_reali.Visible:=False;
  end
else
  begin
  rl_chave_op.Visible :=True;
  rl_chave_opi.Visible:=True;

  rl_codigo.Left :=rl_chave_op.Width;
  rl_codigo.Width:=76;

  rl_codigoi.Left:=rl_chave_opi.Width;
  rl_codigo.Width:=76;

  rl_descricao.Left :=rl_codigo.Left+rl_codigo.Width;
  rl_descricao.Width:=320;

  rl_descricaoi.Left:=rl_codigoi.Left+rl_codigoi.Width;
  rl_descricaoi.Width:=320;

  rl_qtd_prev.Left:=rl_descricao.Left+rl_descricao.Width;
  rl_qtd_prev.Width:=90;

  rl_qtd_previ.Left:=rl_descricaoi.Left+rl_descricaoi.Width;
  rl_qtd_previ.Width:=90;

  rl_val_prev.Left:=rl_qtd_prev.Left+rl_qtd_prev.Width;
  rl_val_prev.Width:=106;

  rl_val_previ.Left:=rl_qtd_previ.Left+rl_qtd_previ.Width;
  rl_val_previ.Width:=106;

  rl_qtd_real.Left:=rl_val_prev.Left+rl_val_prev.Width;
  rl_qtd_real.Width:=90;

  rl_qtd_reali.Left:=rl_val_previ.Left+rl_val_previ.Width;
  rl_qtd_reali.Width:=90;

  rl_val_real.Left:=rl_qtd_real.Left+rl_qtd_real.Width;
  rl_val_real.Width:=106;

  rl_val_reali.Left:=rl_qtd_reali.Left+rl_qtd_reali.Width;
  rl_val_reali.Width:=106;

  rl_data_prev.Visible:=True;
  rl_data_previ.Visible:=True;

  rl_data_real.Visible:=True;
  rl_data_reali.Visible:=True;
  end;
RLReport1.PreviewModal;
end;

procedure TFrm_ProdProduz.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ProdProduz.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_empresa.Caption:='Empresa..: '+DM1.Tb_EmpRAZAO.AsString;
rl_modelo.Caption :='Modelo...: '+rg_modelo.Items[rg_modelo.ItemIndex];
Rl_periodo.Caption:='Periodo..: '+DateEdit1.Text+' à '+DateEdit2.Text;
end;

procedure TFrm_ProdProduz.codpro1Exit(Sender: TObject);
begin
codpro1.Text:=fdeixanum2(codpro1.Text);
if Trim(codpro1.Text)<>'' then
   begin
   if not flcadpro(1,0,0,codpro1.Text) then
      begin
      fmensagem('Produto Acabado não Cadastrado!',0,['0'],0);
      codpro1.SetFocus;
      end
   else
      begin
      lbx_codpro1.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro1.text := '';
      codpro1.setfocus;
      end;
   end;
end;

procedure TFrm_ProdProduz.codpro1KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   codpro1.Text:=fChamaPro(0,'ProdProduz',key);
   key:=#0;
   codpro1Exit(Self);
   end;
end;

procedure TFrm_ProdProduz.lbx_codpro1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
  if lbx_codpro1.ItemIndex>=0 then
    lbx_codpro1.Items.Delete(lbx_codpro1.ItemIndex);

end;

procedure TFrm_ProdProduz.codpro2Exit(Sender: TObject);
begin
codpro2.Text:=fdeixanum2(codpro2.Text);
if Trim(codpro2.Text)<>'' then
   begin
   if not flcadpro(1,0,0,codpro2.Text) then
      begin
      fmensagem('Produto Materia-Prima não Cadastrado!',0,['0'],0);
      codpro2.SetFocus;
      end
   else
      begin
      lbx_codpro2.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro2.text := '';
      codpro2.setfocus;
      end;
   end;
end;

procedure TFrm_ProdProduz.codpro2KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   codpro2.Text:=fChamaPro(0,'ProdProduz',key);
   key:=#0;
   codpro2Exit(Self);
   end;

end;

procedure TFrm_ProdProduz.lbx_codpro2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codpro2.ItemIndex>=0 then
    lbx_codpro2.Items.Delete(lbx_codpro2.ItemIndex);

end;

procedure TFrm_ProdProduz.FormShow(Sender: TObject);
begin
PC1.ActivePage:=Ts_Filtros1;
end;

procedure TFrm_ProdProduz.RLBand2AfterPrint(Sender: TObject);
begin
xTotQtdPrev:=xTotQtdPrev+Qr1QTD_PREV.AsFloat;
xTotQtdReal:=xTotQtdReal+Qr1QTD_REAL.AsFloat;
xTotValPrev:=xTotValPrev+Qr1TOTAL_PRE.AsFloat;
xTotValReal:=xTotValReal+Qr1TOTAL_PRO.AsFloat;
end;

procedure TFrm_ProdProduz.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlTotQtdPrev.Caption:=FormatFloat(mcasqtd,xTotQtdPrev);
rlTotQtdReal.Caption:=FormatFloat(mcasqtd,xTotQtdReal);
rlTotValPrev.Caption:=FormatFloat(mcasaspu,xTotValPrev);
rlTotValReal.Caption:=FormatFloat(mcasaspu,xTotValReal);

end;

end.
