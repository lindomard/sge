unit s_DRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, RLReport, DB,
  DBTables, ComCtrls, S_SelEmp, RLFilters, RLPDFFilter;

type
  Tfrm_DRE = class(TForm)
    PageControl1: TPageControl;
    ts_configuracao: TTabSheet;
    ts_relatorio: TTabSheet;
    dtIni: TDateEdit;
    dtFim: TDateEdit;
    bb_imprimir: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    lbl_periodo: TLabel;
    DataSource1: TDataSource;
    Query1: TQuery;
    RLReport1: TRLReport;
    rl_cabecalho: TRLBand;
    rl_titulo: TRLLabel;
    Query1TPD_DESCRICAO: TStringField;
    Query1NATDC: TStringField;
    Query1VLR_PREVISTO: TFloatField;
    Query1VLR_REAL: TFloatField;
    rl_periodo: TRLLabel;
    Query1TPD_COMPOEM: TFloatField;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    ProgressBar1: TProgressBar;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    rl_totger_P: TRLLabel;
    rl_totger_R: TRLLabel;
    rl_percp: TRLLabel;
    rl_percr: TRLLabel;
    RLGroup2: TRLGroup;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    rl_grup: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    vlr_prev: TRLDBText;
    vlr_real: TRLDBText;
    rl_perp: TRLLabel;
    rl_perr: TRLLabel;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    rl_val_pre: TRLLabel;
    rl_val_rel: TRLLabel;
    Query1TPD_DESPOP: TFloatField;
    RLBand6: TRLBand;
    rl_resultadoop: TRLLabel;
    op_prev: TRLLabel;
    op_real: TRLLabel;
    lbl_emp: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    lbl_patrocinio: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    rlpersubtotr: TRLLabel;
    rlpertotr: TRLLabel;
    rlpersubtotp: TRLLabel;
    rlpertotp: TRLLabel;
    bb_salvar: TBitBtn;
    cb_nome: TComboBox;
    rg_doc: TRadioGroup;
    bb_deletar: TButton;
    RLPDFFilter1: TRLPDFFilter;
    Query1TPD_CHAVE: TStringField;
    tsConfig: TTabSheet;
    Label1: TLabel;
    dtConf: TDateEdit;
    btnSalvar: TButton;
    procedure bb_imprimirClick(Sender: TObject);
    procedure bb_gerarClick(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5AfterPrint(Sender: TObject);
    procedure RLBand6AfterPrint(Sender: TObject);
    procedure RLGroup2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure bb_salvarClick(Sender: TObject);
    procedure rl_cabecalhoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure bb_deletarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function busca_saldo(tabela, soma, data, codpro, status: integer; data_ini, data_fin: String):Real;

var
  frm_DRE: Tfrm_DRE;
  Form_SelEmp: TFrm_SelEmp;
  tempor_view: String;
  sub_tot_parp  : Real = 0;
  sub_tot_parr  : Real = 0;
  sub_total_P   : Real = 0;
  sub_total_R   : Real = 0;
  Total_p       : Real = 0;
  Total_R       : Real = 0;
  EI            : Real = 0;
  COMPRA        : Real = 0;
  PRODUC        : Real = 0;
  AJUSTE        : Real = 0;
  VENDA         : Real = 0;
  DEV           : Real = 0;
  EIP           : Real = 0;
  COMPRAP       : Real = 0;
  PRODUCP       : Real = 0;
  AJUSTEP       : Real = 0;
  DEVP          : Real = 0;
  EF            : Real = 0;
  CPV           : Real = 0;
  CSV           : Real = 0;
  total_vendas_r: Real = 0;
  total_vendas_p: Real = 0;

implementation

uses Func, S_DM1, lerarq, S_DM4, func_excecoes;

{$R *.dfm}
function busca_saldo(tabela, soma, data, codpro, status: integer; data_ini, data_fin: String):Real;
var
  dd,mm,yyyy: String;
  data1, data2: TDate;
  temp: integer;
begin
//***** atenção tabela 4 cadaju o campo data
//***** e usado para saber se e entrada ou
//***** saida pois nele so usamos a data real
//tabela = 0 cadest saldo no dia data_ini
//tabela = 1 cadpro saldo atual
//tabela = 2 cadpf1, cadpf2 saldo de compras entre o dia data_ini e data_fin
//tabela = 3 cadp01, cadp02 saldo de vendas entre o dia data_ini e data_fin
//tabela = 4 cadaju saldo de ajustess entre o dia data_ini e data_fin
//tabela = 5 cadop1 ordem de produção
//tabela = 6 cadp01, cadp02 saldo de devolucoes entre o dia data_ini e data_fin
//soma   = 0 somado valor preco x qtd
//soma   = 1 somado somente qtd
//data   = 0 data real
//data   = 1 data anterior
//codpro = codigo do produto
//status = 0 previsto 1 realizado

if data = 0 then
  begin
  data1:=StrToDate(data_ini);
  data2:=StrToDate(data_fin);
  end
else if data = 1 then
  begin
  data1:=StrToDate(data_ini)-1;
  data2:=StrToDate(data_fin)-1;
  end;
dm1.Query4.Close;
dm1.Query4.SQL.Clear;
la_Empresas:=fEmpresas_Selecionadas('CADEDIA','CED_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if tabela=0 then
  begin
  dd:=FormatDateTime('dd',data1);
  mm:=FormatDateTime('mm',data1);
  yyyy:=FormatDateTime('yyyy',data1);
  if soma=0 then
    begin
    dm1.Query4.SQL.Add(' select sum(CED_QTDDIA'+dd+') from CADEDIA where CED_MES='+mm);
    end
  else if soma=1 then
    begin
    dm1.Query4.SQL.Add(' select sum(CED_QTDDIA'+dd+'*CED_PCOMEDC) from CADEDIA where CED_MES='+mm);
    end;
  dm1.Query4.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
  if codpro>0 then
    begin
    dm1.Query4.SQL.Add(' and CED_ANO='+yyyy+' and CED_CODPRO='+IntToStr(codpro));
    end
  else
    begin
    dm1.Query4.SQL.Add(' and CED_ANO='+yyyy);
    end;
  try
    dm1.Query4.Open;
    if soma=0 then
      begin
      Result:=dm1.Query4.FieldByName('sum(CED_QTDDIA'+dd+')').AsFloat;
      end
    else if soma=1 then
      begin
      Result:=dm1.Query4.FieldByName('sum(CED_QTDDIA'+dd+'*CED_PCOMEDC)').AsFloat;
      end;
  except
    dm1.Query4.SQL.SaveToFile(SALVA_NOME('Errosql\','EX'));
    Result:=0;
    end;
  end
else if tabela=1 then
  begin
  if soma=0 then
    begin
    dm1.Query4.SQL.Add(' select sum(PDSALDO) from CADPRO where PDSTATUS<9 ');
    end
  else if soma=1 then
    begin
    dm1.Query4.SQL.Add(' select sum(PDSALDO*PDPRECOC) from CADPRO where PDSTATUS<9 ');
    end;
  la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
  dm1.Query4.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
  dm1.Query4.SQL.Add('and PDNIVEL=0 ');
  if codpro>0 then
    begin
    dm1.Query4.SQL.Add(' and PDCODPRO='+IntToStr(codpro));
    end;
  try
    dm1.Query4.Open;
    if soma=0 then
      begin
      Result:=dm1.Query4.FieldByName('sum(PDSALDO)').AsFloat;
      end
    else if soma=1 then
      begin
      Result:=dm1.Query4.FieldByName('sum(PDSALDO*PDPRECOC)').AsFloat;
      end;
  except
    dm1.Query4.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
    Result:=0;
    end;
  end
else if tabela=2 then
  begin
  if soma=0 then
    begin
    dm1.Query4.SQL.Add(' select sum(PF2QTDP) from CADPF2, CADPF1 where PF1CHAVE=PF2CHAVE ');
    end
  else if soma=1 then
    begin
    dm1.Query4.SQL.Add(' select sum(PF2QTDP*PF2PU) from CADPF2, CADPF1 where PF1CHAVE=PF2CHAVE ');
    end;
  if status=0 then
    begin
    dm1.Query4.SQL.Add(' and PF1STATUS<=1 ');
    end
  else if status=1 then
    begin
    dm1.Query4.SQL.Add(' and PF1STATUS=1 ');
    end;
  dm1.Query4.SQL.Add(' and PF1CODEMP=PF2CODEMP ');
  la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  dm1.Query4.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
  dm1.Query4.SQL.Add(' and PF1DATAENT>='+chr(39)+data_ini+chr(39));
  dm1.Query4.SQL.Add(' and PF1DATAENT<='+chr(39)+data_fin+chr(39));
  if codpro>0 then
    begin
    dm1.Query4.SQL.Add(' and PF2CODPRO='+IntToStr(codpro));
    end;
  try
    dm1.Query4.Open;
    if soma=0 then
      begin
      Result:=dm1.Query4.FieldByName('sum(PF2QTDP)').AsFloat;
      end
    else if soma=1 then
      begin
      Result:=dm1.Query4.FieldByName('sum(PF2QTDP*PF2PU)').AsFloat;
      end;
  except
    dm1.Query4.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
    Result:=0;
    end;
  end
else if tabela=3 then
  begin
  mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS)+' as QTD';
  if soma=0 then
    begin
    dm1.Query4.SQL.Add(' select '+mcinst4+' from CADP01, CADP02 ');
    end
  else if soma=1 then
    begin
    dm1.Query4.SQL.Add(' select sum('+mcinst4+'*P2PRECO) from CADP01, CADP02 ');
    end;
  dm1.Query4.SQL.Add(' where ');
  if status=0 then
    begin
    dm1.Query4.SQL.Add('   (p1tipo=01 or p1tipo=00 or p1tipo=04 or p1tipo=05 or p1tipo=06 ');
    dm1.Query4.SQL.Add(' or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14 ');
    dm1.Query4.SQL.Add(' or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21 ');
    dm1.Query4.SQL.Add(' or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)');
    dm1.Query4.SQL.Add(' and p1status<=2 and p1emidoc<=1   ');

    dm1.Query4.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(data_ini)));
    dm1.Query4.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(data_fin)));

    end
  else if status=1 then
    begin
    dm1.Query4.SQL.Add('   (p1tipo=01 or p1tipo=04 or p1tipo=05 or p1tipo=06 ');
    dm1.Query4.SQL.Add(' or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14 ');
    dm1.Query4.SQL.Add(' or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21 ');
    dm1.Query4.SQL.Add(' or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)');
    dm1.Query4.SQL.Add(' and p1status=2 and p1emidoc=1   ');
    dm1.Query4.SQL.Add(' and P1DATANF>='+chr(39)+data_ini+chr(39));
    dm1.Query4.SQL.Add(' and P1DATANF<='+chr(39)+data_fin+chr(39));
    end;
  la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  dm1.Query4.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));

  dm1.Query4.SQL.Add(' and P1CODEMP=P2CODEMP and P1CHAVE=P2CHAVE');
  if codpro>0 then
    begin
    dm1.Query4.SQL.Add(' and P2CODPRO='+IntToStr(codpro));
    end;
  try
    dm1.Query4.Open;
    if soma=0 then
      begin
      Result:=dm1.Query4.FieldByName('QTD').AsFloat;
      end
    else if soma=1 then
      begin
      Result:=dm1.Query4.FieldByName('sum('+mcinst4+'*P2PRECO)').AsFloat;
      end;
  except
    dm1.Query4.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
    Result:=0;
    end;
  end
else if tabela=4 then
  begin
  if soma=0 then             //AJTIPOM - 0 = entrada  1 = saida
    begin
    dm1.Query4.SQL.Add(' select sum(AJQTD) from CADAJU ');
    end
  else if soma=1 then
    begin
    dm1.Query4.SQL.Add(' select sum(AJQTD*AJPRECO1) from CADAJU ');
    end;
  dm1.Query4.SQL.Add(' where ');
  if data = 0 then
    begin
    dm1.Query4.SQL.Add(' AJTIPOM=0 ');
    end
  else if data = 1 then
    begin
    dm1.Query4.SQL.Add(' AJTIPOM=1 ');
    end;
  la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
  dm1.Query4.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));

  dm1.Query4.SQL.Add(' and AJDATA>='+chr(39)+data_ini+chr(39));
  dm1.Query4.SQL.Add(' and AJDATA<='+chr(39)+data_fin+chr(39));
  if codpro>0 then
    begin
    dm1.Query4.SQL.Add(' and AJCODPRO='+IntToStr(codpro));
    end;
  try
    dm1.Query4.Open;
    if soma=0 then
      begin
      Result:=dm1.Query4.FieldByName('sum(AJQTD)').AsFloat;
      end
    else if soma=1 then
      begin
      Result:=dm1.Query4.FieldByName('sum(AJQTD*AJPRECO1)').AsFloat;
      end;
  except
    dm1.Query4.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
    Result:=0;
    end;
  end
else if tabela = 5 then
  begin
  dm1.Query4.Close;
  dm1.Query4.SQL.Clear;
  dm1.Query4.SQL.Add(' select op1_codigo as CHAVE, op2_codpro as CODPRO_ACA, sum(op2_qtdprev) as QTDPREV_ACA,  ');
  dm1.Query4.SQL.Add('        sum(op2_qtdprod) as QTDPROD_ACA, ');
  dm1.Query4.SQL.Add('        sum(op2_qtdprod*op2_pu) as TOT_ACA, sum(op2_qtdprev*op2_pu) as TOT_PREV          ');
  dm1.Query4.SQL.Add(' from cadop01, cadop02                                               ');
  dm1.Query4.SQL.Add(' where op1_codemp=op2_codemp                                         ');
  dm1.Query4.SQL.Add('       and op1_codigo=op2_codigo                                     ');
  dm1.Query4.SQL.Add('       and op1_lotseq=op2_lotseq                                     ');
  la_Empresas:=fEmpresas_Selecionadas('CADOP01','OP1_CODIGO',Form_SelEmp.CLB_EMPRESAS);
  dm1.Query4.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
  if codpro>0 then
    begin
    dm1.Query4.SQL.Add(' and OP2_CODPRO='+IntToStr(codpro));
    end;
  if status=0 then
    begin
    dm1.Query4.SQL.Add(' and OP1_STATUS<=2  ');
    dm1.Query4.SQL.Add(' and OP1_DATA>='+chr(39)+data_ini+chr(39));
    dm1.Query4.SQL.Add(' and OP1_DATA<='+chr(39)+data_fin+chr(39));
    end
  else if status=1 then
    begin
    dm1.Query4.SQL.Add(' and OP1_STATUS=2 ');
    dm1.Query4.SQL.Add(' and OP1_DATA>='+chr(39)+data_ini+chr(39));
    dm1.Query4.SQL.Add(' and OP1_DATA<='+chr(39)+data_fin+chr(39));
    end;
  dm1.Query4.SQL.Add(' group by op1_codigo, op2_codpro ');
  try
    dm1.Query4.Open;
    if not dm1.Query4.IsEmpty then
      begin
      if (soma=0) and not (dm1.Query4.FieldByName('QTDPROD_ACA').IsNull) then
        begin
        Result:=dm1.Query4.FieldByName('QTDPROD_ACA').AsFloat;
        end
      else if (soma=1) and not (dm1.Query4.FieldByName('TOT_PREV').IsNull) then
        begin
        Result:=dm1.Query4.FieldByName('TOT_PREV').AsFloat;
        end
      else
        begin
        Result:=0;        
        end;
      end
    else
      begin
      Result:=0;
      end;
    except
    dm1.Query4.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
    Result:=0;
    end;
  end
else if tabela=6 then
  begin
  if soma=0 then
    begin
    dm1.Query4.SQL.Add(' select sum(P2QTD) from CADP01, CADP02 ');
    end
  else if soma=1 then
    begin
    dm1.Query4.SQL.Add(' select sum(P2QTD*P2PCOCUS) from CADP01, CADP02 ');
    end;
  dm1.Query4.SQL.Add(' where ');
    if status=0 then
    begin
    dm1.Query4.SQL.Add('   (p1tipo=02 or p1tipo=03 or p1tipo=08 or p1tipo=10 ');
    dm1.Query4.SQL.Add(' or p1tipo=12 or p1tipo=13 or p1tipo=17 or p1tipo=18 ');
    dm1.Query4.SQL.Add(' or p1tipo=19 )');
    dm1.Query4.SQL.Add(' and p1status<=2 and p1emidoc<=1   ');
    dm1.Query4.SQL.Add('  '+fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(data_ini)));
    dm1.Query4.SQL.Add('  '+fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(data_fin)));
    end
  else if status=1 then
    begin
    dm1.Query4.SQL.Add('   (p1tipo=02 or p1tipo=03 or p1tipo=08 or p1tipo=10 ');
    dm1.Query4.SQL.Add(' or p1tipo=12 or p1tipo=13 or p1tipo=17 or p1tipo=18 ');
    dm1.Query4.SQL.Add(' or p1tipo=19 )');
    dm1.Query4.SQL.Add(' and p1status=2 and p1emidoc=1   ');
    dm1.Query4.SQL.Add(' and P1DATANF>='+chr(39)+data_ini+chr(39));
    dm1.Query4.SQL.Add(' and P1DATANF<='+chr(39)+data_fin+chr(39));
    end;
  la_Empresas:=fEmpresas_Selecionadas('CADOP1','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  dm1.Query4.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
  dm1.Query4.SQL.Add(' and P1CODEMP=P2CODEMP and P1CHAVE=P2CHAVE');
  if codpro>0 then
    begin
    dm1.Query4.SQL.Add(' and P2CODPRO='+IntToStr(codpro));
    end;
  try
    dm1.Query4.Open;
    if soma=0 then
      begin
      Result:=dm1.Query4.FieldByName('sum(P2QTD)').AsFloat;
      end
    else if soma=1 then
      begin
      Result:=dm1.Query4.FieldByName('sum(P2QTD*P2PCOCUS)').AsFloat;
      end;
  except
    dm1.Query4.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
    Result:=0;
    end;
  end;
end;

procedure Tfrm_DRE.bb_gerarClick(Sender: TObject);
var
  tempor_num: integer;
  totalliq_pro_r, totalliq_pro_p,
  totalliq_ser_r, totalliq_ser_p : Real;
  Data: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select * from cademp where codemp='+inttostr(codemp));
DM1.Query1.Open;
lbl_emp.caption:='Empresa..:'+DM1.Query1.FieldByName('RAZAO').AsString;
total_vendas_r:=0;
total_vendas_p:=0;
Total_p:=0;
Total_R:=0;
sub_Total_p:=0;
sub_Total_R:=0;
data:=FormatDateTime('dd/mm/yyyy',Date);
if (trim(dtIni.Text)='/  /') or (trim(dtFim.Text)='/  /') then
  begin
  fmensagem('Favor selecione uma data valida!'+#13+'Não podem ser nulas, iguais ou com termino na data atual.',0,['0'],0);
  exit;
  end
else if (StrToDate(dtIni.Text)>=Date) or (StrToDate(dtFim.Text)>=Date)
or (StrToDate(dtIni.Text)>StrToDate(dtFim.Text))  then
  begin
  fmensagem('Favor selecione uma data valida!'+#13+'Não podem ser nulas, iguais ou com termino na data atual.',0,['0'],0);
  exit;
  end;

// buscando a tabela temporaria

tempor_view:=CarregaView('TEMPOR_DRE');
la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' Create Table '+tempor_view+' as ');

//buscando comparação tpdre com cc

Query1.SQL.Add(' select TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP, NATDC,  '
              +' sum(valorp) as Vlr_Previsto, sum(valorr) as Vlr_Real  '
              +' from cadtpdre, cadccu, cadldr                         '
              +' where tpd_chave=cccoddre and codcc=cccodccu           '
              +codemp2('TPD_CODEMP',codemp)
              +codemp2('CCCODEMP',codemp)
              +iif(la_Empresas='','',' and '+la_Empresas));
//              +' and '+fla_sqlmp('CODEMP',Form_SelEmp.CLB_EMPRESAS)+''
//              +' and NATDC='+chr(39)+'D'+chr(39));


if trim(dtini.Text)<>'/  /' then
   Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('DATAREAL',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('DATAREAL',false,StrToDate(dtfim.text)));
Query1.SQL.Add(' and STATUS<9 and TPD_VINCULO=0 ');
Query1.SQL.Add(' group by TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP,NATDC ');
//              +' order by TPD_COMPOEM, TPD_DESCRICAO                   ');
Query1.SQL.Add(' union                                                                      '
              +' select TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP, CANATDC AS NATDC,'
              +' sum(cavalor) as Vlr_Previsto, sum(cavalpag) as Vlr_Real                    '
              +' from cadtpdre, cadccu, caddap                                              '
              +' where tpd_chave=cccoddre and cacodcc=cccodccu                              '
              +codemp2('TPD_CODEMP',codemp)
              +codemp2('CCCODEMP',codemp));
if trim(dtini.Text)<>'/  /' then
   Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('CADTBX',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('CADTBX',false,StrToDate(dtfim.text)));


Query1.sql.add(' and CASTATUS<9 and TPD_VINCULO=1                                           '
              +' group by TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP, CANATDC        '
              +' union                                                                      '
              +' select TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP, CRNATDC AS NATDC,'
              +' sum(crvalor) as Vlr_Previsto, sum(crvalpag) as Vlr_Real                    '
              +' from cadtpdre, cadccu, caddar                                              '
              +' where tpd_chave=cccoddre and crcodcc=cccodccu                              '
              +codemp2('TPD_CODEMP',codemp)
              +codemp2('CCCODEMP',codemp));
if trim(dtini.Text)<>'/  /' then
   Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('CRDTBX',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('CRDTBX',false,StrToDate(dtfim.text)));

query1.sql.add(' and CRSTATUS<9 and TPD_VINCULO=1                                            '
              +' group by TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP, CRNATDC         ');


try
  Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(QUERY1,586,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;


//************RECEITA OPERACIONAL BRUTA**************

//buscando as previsões dos produtos e serviços
la_Empresas:=fEmpresas_Selecionadas('CADOP1','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1TOTALL),SUM(P1TOTSERLIQ) from cadp01 '
                  +' where P1STATUS<'+mstatus_excluido+' and p1emidoc<=1    '
                  +iif(la_Empresas='','',' and '+la_Empresas));
dm1.Query2.SQL.Add(' and(p1tipo=01 or p1tipo=00 or p1tipo=04 or p1tipo=05 or p1tipo=06 ');
dm1.Query2.SQL.Add('  or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14 ');
dm1.Query2.SQL.Add('  or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21 ');
dm1.Query2.SQL.Add('  or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)');

if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(dtFim.text)));
try
  dm1.Query2.Open;

except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,878,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;


totalliq_pro_p:=dm1.Query2.fieldbyname('sum(p1totall)').AsFloat-dm1.Query2.fieldbyname('sum(p1totserliq)').AsFloat;
totalliq_ser_p:=dm1.Query2.fieldbyname('sum(p1totserliq)').AsFloat;

//buscando as realizações dos produtos e serviços
la_Empresas:=fEmpresas_Selecionadas('CADOP1','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1TOTALL),SUM(P1TOTSERLIQ) from cadp01 '
                  +' where P1STATUS<'+mstatus_excluido+' and p1emidoc=1      '
                  + iif(la_Empresas='','',' and '+la_Empresas));
dm1.Query2.SQL.Add(' and(p1tipo=01 or p1tipo=04 or p1tipo=05 or p1tipo=06 ');
dm1.Query2.SQL.Add('  or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14 ');
dm1.Query2.SQL.Add('  or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21 ');
dm1.Query2.SQL.Add('  or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)');

if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',false,StrToDate(dtfim.text)));
try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,878,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_r:=dm1.Query2.fieldbyname('sum(p1totall)').AsFloat-dm1.Query2.fieldbyname('sum(p1totserliq)').AsFloat;
totalliq_ser_r:=dm1.Query2.fieldbyname('sum(p1totserliq)').AsFloat;

// inserindo produtos

dm1.Query1.close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' insert into '+tempor_view+' values '
                  +' (0,'
                  +'  0,'
                  +  chr(39)+'VENDA DE PRODUTOS'+chr(39)+','
                  +'  0,'
                  +  chr(39)+'C'+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_p)+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_r)+chr(39)
                  +' )');
try
  dm1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,671,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

// inserindo serviços

dm1.Query1.close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' insert into '+tempor_view+' values '
                  +' (0,'
                  +'  1,'
                  +  chr(39)+'PRESTAÇÃO DE SERVIÇOS'+chr(39)+','
                  +'  0,'
                  +  chr(39)+'C'+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_ser_p)+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_ser_r)+chr(39)
                  +' )');
try
  dm1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,694,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

//************DEDUÇÃO DA RECEITA BRUTA**************

//buscando as devoluçoes de produtos
la_Empresas:=fEmpresas_Selecionadas('CADOP1','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1TOTALL),SUM(P1TOTSERLIQ) from cadp01 '
                  +' where p1status<3 and p1emidoc<2      '
                  +iif(la_Empresas='','',' and '+la_Empresas));
dm1.Query2.SQL.Add(' and(p1tipo=03 or p1tipo=08 or p1tipo=12 or p1tipo=13 ');
dm1.Query2.SQL.Add('   or p1tipo=17 or p1tipo=18 or p1tipo=19) ');

if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add('  '+fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(dtini.text)));

if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(dtfiM.text)));
try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,720,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_p:=dm1.Query2.fieldbyname('sum(p1totall)').AsFloat-dm1.Query2.fieldbyname('sum(p1totserliq)').AsFloat;
la_Empresas:=fEmpresas_Selecionadas('CADOP1','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1TOTALL),SUM(P1TOTSERLIQ) from cadp01 '
                  +' where p1status=2 and p1emidoc=1      '
                  +iif(la_Empresas='','',' and '+la_Empresas));
dm1.Query2.SQL.Add(' and(p1tipo=03 or p1tipo=08 or p1tipo=12 or p1tipo=13 ');
dm1.Query2.SQL.Add('  or p1tipo=17 or p1tipo=18 or p1tipo=19) ');

if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',false,StrToDate(dtfim.text)));

try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,740,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_r:=dm1.Query2.fieldbyname('sum(p1totall)').AsFloat-dm1.Query2.fieldbyname('sum(p1totserliq)').AsFloat;

// inserindo devoluções
dm1.Query1.close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' insert into '+tempor_view+' values '
                  +' (1,'
                  +'  0,'
                  +  chr(39)+'DEVOLUÇÕES DE VENDAS'+chr(39)+','
                  +'  0,'
                  +  chr(39)+'D'+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_p)+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_r)+chr(39)
                  +' )');
try
  dm1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,762,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

// buscando os impostos produtos

dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1ICMSN),SUM(P1IPIINA) from cadp01 '
                  +' where p1status<3 and p1emidoc<2  ');
dm1.Query2.SQL.Add(' and(p1tipo=01 or p1tipo=00 or p1tipo=04 or p1tipo=05 or p1tipo=06 ');
dm1.Query2.SQL.Add('  or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14 ');
dm1.Query2.SQL.Add('  or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21 ');
dm1.Query2.SQL.Add('  or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)');

if codemp<100 then
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+IntToStr(codemp));
  end
else
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+copy(IntToStr(codemp),3,1));
  end;

if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(dtfim.text)));
try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,795,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_p:=dm1.Query2.fieldbyname('sum(P1ICMSN)').AsFloat+dm1.Query2.fieldbyname('sum(P1IPIINA)').AsFloat;

//abatendo os cancelamentos produtos

dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1ICMSN),SUM(P1IPIINA) from cadp01 '
                  +' where p1status<3 and p1emidoc<2  ');
dm1.Query2.SQL.Add(' and(p1tipo=03 or p1tipo=08 or p1tipo=12 or p1tipo=13 ');
dm1.Query2.SQL.Add('  or p1tipo=17 or p1tipo=18 or p1tipo=19) ');
if codemp<100 then
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+IntToStr(codemp));
  end
else
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+copy(IntToStr(codemp),3,1));
  end;
if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(dtini.text)));

if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(dtfim.text)));
try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,825,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_p:=totalliq_pro_p-dm1.Query2.fieldbyname('sum(P1ICMSN)').AsFloat-dm1.Query2.fieldbyname('sum(P1IPIINA)').AsFloat;

dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1ICMSN),SUM(P1IPIINA) from cadp01 '
                  +' where P1STATUS=2 and P1EMIDOC=1  ');
dm1.Query2.SQL.Add(' and(p1tipo=01 or p1tipo=04 or p1tipo=05 or p1tipo=06 ');
dm1.Query2.SQL.Add('  or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14 ');
dm1.Query2.SQL.Add('  or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21 ');
dm1.Query2.SQL.Add('  or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)');

if codemp<100 then
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+IntToStr(codemp));
  end
else
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+copy(IntToStr(codemp),3,1));
  end;
if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',false,StrToDate(dtfim.text)));
try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,857,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_r:=dm1.Query2.fieldbyname('sum(P1ICMSN)').AsFloat+dm1.Query2.fieldbyname('sum(P1IPIINA)').AsFloat;

//abatendo as devoluções de produtos

dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1ICMSN),SUM(P1IPIINA) from cadp01 '
                  +' where p1status=2 and p1emidoc=1  ');
dm1.Query2.SQL.Add(' and(p1tipo=03 or p1tipo=08 or p1tipo=12 or p1tipo=13 ');
dm1.Query2.SQL.Add('  or p1tipo=17 or p1tipo=18 or p1tipo=19) ');
if codemp<100 then
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+IntToStr(codemp));
  end
else
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+copy(IntToStr(codemp),3,1));
  end;
if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',false,StrToDate(dtfim.text)));
try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,887,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_r:=totalliq_pro_r-dm1.Query2.fieldbyname('sum(P1ICMSN)').AsFloat-dm1.Query2.fieldbyname('sum(P1IPIINA)').AsFloat;

// inserindo impostos dos produtos
dm1.Query1.close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' insert into '+tempor_view+' values '
                  +' (1,'
                  +'  1,'
                  +  chr(39)+'IMP. E CONT. INCIDENTES SOBRE VENDAS'+chr(39)+','
                  +'  0,'
                  +  chr(39)+'D'+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_p)+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_r)+chr(39)
                  +' )');
try
  dm1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,909,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;



  // buscando os impostos serviços

dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1VISSQN) from cadp01 '
                  +' where p1status<3 and p1emidoc<2  ');
dm1.Query2.SQL.Add(' and(p1tipo=01 or p1tipo=00 or p1tipo=04 or p1tipo=05 or p1tipo=06 ');
dm1.Query2.SQL.Add('  or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14 ');
dm1.Query2.SQL.Add('  or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21 ');
dm1.Query2.SQL.Add('  or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)');

if codemp<100 then
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+IntToStr(codemp));
  end
else
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+copy(IntToStr(codemp),3,1));
  end;

if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(dtfim.text)));
try
 dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,944,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

totalliq_pro_p:=dm1.Query2.fieldbyname('sum(P1VISSQN)').AsFloat;

//abatendo os cancelamentos serviços

la_Empresas:=fEmpresas_Selecionadas('CADOP1','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1VISSQN) from cadp01 '
                  +' where p1status<3 and p1emidoc<2  '
                  +iif(la_Empresas='','',' and '+la_Empresas));
dm1.Query2.SQL.Add(' and(p1tipo=03 or p1tipo=08 or p1tipo=12 or p1tipo=13 ');
dm1.Query2.SQL.Add('  or p1tipo=17 or p1tipo=18 or p1tipo=19) ');
if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(dtfim.text)));
try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,969,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_p:=totalliq_pro_p-dm1.Query2.fieldbyname('sum(P1VISSQN)').AsFloat;

dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1VISSQN) from cadp01 '
                  +' where p1status=2 and p1emidoc=1  ');
dm1.Query2.SQL.Add(' and(p1tipo=01 or p1tipo=04 or p1tipo=05 or p1tipo=06 ');
dm1.Query2.SQL.Add('  or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14 ');
dm1.Query2.SQL.Add('  or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21 ');
dm1.Query2.SQL.Add('  or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)');

if codemp<100 then
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+IntToStr(codemp));
  end
else
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+copy(IntToStr(codemp),3,1));
  end;
if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',false,StrToDate(dtfim.text)));
try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,1000,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_r:=dm1.Query2.fieldbyname('sum(P1VISSQN)').AsFloat;

//abatendo as devoluções

dm1.Query2.Close;
dm1.Query2.SQL.Clear;
dm1.Query2.SQL.Add(' select SUM(P1VISSQN) from cadp01 '
                  +' where p1status=2 and p1emidoc=1  ');
dm1.Query2.SQL.Add(' and(p1tipo=03 or p1tipo=08 or p1tipo=12 or p1tipo=13 ');
dm1.Query2.SQL.Add('  or p1tipo=17 or p1tipo=18 or p1tipo=19) ');
if codemp<100 then
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+IntToStr(codemp));
  end
else
  begin
  dm1.Query2.SQL.Add(' and p1codemp=0'+copy(IntToStr(codemp),3,1));
  end;
if trim(dtIni.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',false,StrToDate(dtfim.text)));
try
  dm1.Query2.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,1030,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
totalliq_pro_r:=totalliq_pro_r-dm1.Query2.fieldbyname('sum(P1VISSQN)').AsFloat;

// inserindo impostos dos produtos
dm1.Query1.close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' insert into '+tempor_view+' values '
                  +' (1,'
                  +'  3,'
                  +  chr(39)+'IMP. E CONT. INCIDENTES SOBRE SERVIÇOS'+chr(39)+','
                  +'  0,'
                  +  chr(39)+'D'+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_p)+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_r)+chr(39)
                  +' )');
try
  dm1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY2,1052,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

//************ CUSTO DAS VENDAS **************

// CUSTOS DOS PRODUTOS VENDIDOS
//realizado
totalliq_pro_r:=0;
EI:=0;
COMPRA:=0;
PRODUC:=0;
AJUSTE:=0;
VENDA:=0;
DEV:=0;
EIP:=0;
COMPRAP:=0;
PRODUCP:=0;
AJUSTEP:=0;
DEVP:=0;
EF:=0;
CPV:=0;
CSV:=0;
la_Empresas:='';
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('  create or replace view temp_dre1 as                         ');
DM1.Query1.SQL.Add('   select ajcodpro as codpro, ajqtd as qtd, ajpreco1 as preco,'+quotedstr('aju')+' as origem  ');
DM1.Query1.SQL.Add('   from cadaju                                                ');
DM1.Query1.SQL.Add('   where ajtipom=0                                            ');

la_Empresas:='';
la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query1.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
DM1.Query1.SQL.Add(' union                                            ');
DM1.Query1.SQL.Add(' select pf2codpro as codpro,                      ');
DM1.Query1.SQL.Add('        pf2qtdp as qtd, pf2pu  as preco,'+quotedstr('pf2')+' as origem  ');
DM1.Query1.SQL.Add(' from cadpf1,cadpf2  where pf1chave=pf2chave      ');

if trim(dtconf.Text)<>'/  /' then
   dm1.Query2.SQL.Add(' '+fFormatdatetimeParaConsulta('PF1DATA',true,StrToDate(dtconf.text)));


DM1.Query1.SQL.Add(' and pf1status=1  and PF2CODEMP=PF1CODEMP         ');

la_Empresas:='';
la_Empresas:=fEmpresas_Selecionadas('CADPF2','PF2CODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query1.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
DM1.Query1.SQL.Add(' union                                                   ');
DM1.Query1.SQL.Add(' select OP2_CODPRO as codpro,                            ');
DM1.Query1.SQL.Add('        OP2_QTDPROD as qtd, OP2_PU as preco,'+quotedstr('op2')+' as origem  ');
DM1.Query1.SQL.Add(' from CADOP01, CADOP02  where OP1_CODIGO=OP2_CODIGO      ');
DM1.Query1.SQL.Add(' and OP1_status=2  and OP1_CODEMP=OP2_CODEMP             ');
if trim(dtconf.Text)<>'/  /' then
   dm1.Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('OP1_DATA',true,StrToDate(dtconf.text)));

la_Empresas:='';
la_Empresas:=fEmpresas_Selecionadas('CADOP01','OP1_CODEMP',Form_SelEmp.CLB_EMPRESAS);
DM1.Query1.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
DM1.Query1.SQL.Add(' order by codpro                                                      ');
//DM1.Query1.SQL.SaveToFile(SALVA_NOME('ErroSql\','Ex'));

try
  DM1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,1114,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' CREATE OR REPLACE VIEW TEMP_DRE AS                      ');
DM1.Query1.SQL.Add(' select CODPRO, sum(qtd*preco)/sum(qtd) AS CUSTOS        ');
DM1.Query1.SQL.Add(' from temp_dre1                                          ');
DM1.Query1.SQL.Add(' WHERE EXISTS (                                          ');
DM1.Query1.SQL.Add('  select distinct p2codpro                               ');
DM1.Query1.SQL.Add('  from cadp02, cadp01                                    ');
DM1.Query1.SQL.Add('  where p1chave=p2chave                                  ');
DM1.Query1.SQL.Add('  and p2lotseq=p1lotseq                                  ');
DM1.Query1.SQL.Add('  and p2ordem=p1ordem                                    ');
DM1.Query1.SQL.Add('  and p2codemp=p1codemp                                  ');
DM1.Query1.SQL.Add('  and p1status=2                                         ');
DM1.Query1.SQL.Add('  and(p1tipo=01 or p1tipo=04 or p1tipo=05 or p1tipo=06   ');
DM1.Query1.SQL.Add('   or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14   ');
DM1.Query1.SQL.Add('   or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21   ');
DM1.Query1.SQL.Add('   or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)  ');
DM1.Query1.SQL.Add('  and p1emidoc=1                                         ');

if trim(dtini.Text)<>'/  /' then
   dm1.Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',false,StrToDate(dtfim.text)));

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
dm1.Query1.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
DM1.Query1.SQL.Add('  and p2codpro=codpro)                                   ');
DM1.Query1.SQL.Add('  GROUP BY CODPRO                                        ');
DM1.Query1.SQL.Add('  ORDER BY CODPRO                                        ');
try
  DM1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,1148,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' Select * from TEMP_DRE ');
DM1.Query1.Open;
dm1.Query1.First;
if not dm1.Query1.IsEmpty then
  begin
  ProgressBar1.Max:=dm1.Query1.RecordCount;
  ProgressBar1.Position:=0;
  while not dm1.Query1.Eof do
    begin
    EI:=busca_saldo(0,0,1,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtIni.Text);
    EIP:=EIP+busca_saldo(0,1,1,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtIni.Text);
    COMPRA:=busca_saldo(2,0,0,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text);
    COMPRAP:=COMPRAP+busca_saldo(2,1,0,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text);
    PRODUC:=busca_saldo(5,0,0,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text);
    PRODUCP:=PRODUCP+busca_saldo(5,1,0,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text);
    AJUSTE:=busca_saldo(4,0,0,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text)-busca_saldo(4,0,1,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text);
    AJUSTEP:=AJUSTEP+busca_saldo(4,1,0,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text)-busca_saldo(4,1,1,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text);
    VENDA:=busca_saldo(3,0,0,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text);
    DEV:=busca_saldo(6,0,0,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text);
    DEVP:=DEVP+busca_saldo(6,1,0,dm1.Query1.FieldByName('codpro').AsInteger,1,dtIni.Text,dtFim.Text);
    EF:=EF+(EI+AJUSTE+COMPRA+PRODUC+DEV-VENDA)*dm1.Query1.FieldByName('custos').AsFloat;
    DM1.Query1.Next;
    ProgressBar1.Position:=ProgressBar1.Position+1;
    end;
  CPV:=EIP+AJUSTEP+COMPRAP+PRODUCP-DEVP-EF;
  totalliq_pro_r:=CPV;
  end;
//previsto
totalliq_pro_p:=0;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' CREATE OR REPLACE VIEW TEMP_DRE AS                      ');
DM1.Query1.SQL.Add(' select CODPRO, sum(qtd*preco)/sum(qtd) AS CUSTOS        ');
DM1.Query1.SQL.Add(' from temp_dre1                                          ');
DM1.Query1.SQL.Add(' WHERE EXISTS (                                          ');
DM1.Query1.SQL.Add('  select distinct p2codpro                               ');
DM1.Query1.SQL.Add('  from cadp02, cadp01                                    ');
DM1.Query1.SQL.Add('  where p1chave=p2chave                                  ');
DM1.Query1.SQL.Add('  and p2lotseq=p1lotseq                                  ');
DM1.Query1.SQL.Add('  and p2ordem=p1ordem                                    ');
DM1.Query1.SQL.Add('  and p2codemp=p1codemp                                  ');
DM1.Query1.SQL.Add('  and p1status<3                                         ');
DM1.Query1.SQL.Add('  and(p1tipo=01 or p1tipo=00 or p1tipo=04 or p1tipo=05 or p1tipo=06   ');
DM1.Query1.SQL.Add('   or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14   ');
DM1.Query1.SQL.Add('   or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21   ');
DM1.Query1.SQL.Add('   or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)  ');
DM1.Query1.SQL.Add('  and p1emidoc<2 ');

if trim(dtini.Text)<>'/  /' then
   dm1.Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(dtfim.text)));



la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
dm1.Query1.SQL.Add(iif(la_Empresas='','',' and '+la_Empresas));
DM1.Query1.SQL.Add('  and p2codpro=codpro)                                   ');
DM1.Query1.SQL.Add('  GROUP BY CODPRO                                        ');
DM1.Query1.SQL.Add('  ORDER BY CODPRO                                        ');
try
  DM1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,1213,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' Select * from TEMP_DRE ');
try
   DM1.Query1.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,1224,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

dm1.Query1.First;
if not dm1.Query1.IsEmpty then
  begin
  ProgressBar1.Max:=dm1.Query1.RecordCount;
  ProgressBar1.Position:=0;
  while not dm1.Query1.Eof do
    begin
    EI:=busca_saldo(0,0,1,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtIni.Text);
    EIP:=EIP+busca_saldo(0,1,1,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtIni.Text);
    COMPRA:=busca_saldo(2,0,0,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text);
    COMPRAP:=COMPRAP+busca_saldo(2,1,0,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text);
    PRODUC:=busca_saldo(5,0,0,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text);
    PRODUCP:=PRODUCP+busca_saldo(5,1,0,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text);
    AJUSTE:=busca_saldo(4,0,0,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text)-busca_saldo(4,0,1,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text);
    AJUSTEP:=AJUSTEP+busca_saldo(4,1,0,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text)-busca_saldo(4,1,1,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text);
    VENDA:=busca_saldo(3,0,0,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text);
    DEV:=busca_saldo(6,0,0,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text);
    DEVP:=DEVP+busca_saldo(6,1,0,dm1.Query1.FieldByName('codpro').AsInteger,0,dtIni.Text,dtFim.Text);
    EF:=EF+(EI+AJUSTE+COMPRA+PRODUC+DEV-VENDA)*dm1.Query1.FieldByName('custos').AsFloat;
    ProgressBar1.Position:=ProgressBar1.Position+1;
    DM1.Query1.Next;
    end;
  CPV:=EIP+AJUSTEP+COMPRAP+PRODUCP-EF;
  totalliq_pro_p:=CPV;
  end
else
  begin
  totalliq_pro_r:=0;
  totalliq_pro_P:=0;
  end;
// inserindo CUSTOS dos produtos
dm1.Query1.close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' insert into '+tempor_view+' values '
                  +' (2,'
                  +'  1,'
                  +  chr(39)+'CUSTOS DOS PRODUTOS VENDIDOS'+chr(39)+','
                  +'  1,'
                  +  chr(39)+'D'+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_p)+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_pro_r)+chr(39)
                  +' )');
try
  dm1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,1275,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

// Custo do Serviço Vendido
// realizado
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('  select sum(p2spcocus) as Total                          ');
DM1.Query1.SQL.Add('  from cadp02s, cadp01                                    ');
DM1.Query1.SQL.Add('  where p1chave=p2schave                                  ');
DM1.Query1.SQL.Add('  and p2slotseq=p1lotseq                                  ');
DM1.Query1.SQL.Add('  and p2sordem=p1ordem                                    ');
DM1.Query1.SQL.Add('  and p2scodemp=p1codemp                                  ');
DM1.Query1.SQL.Add('  and p1status=2                                          ');
DM1.Query1.SQL.Add('  and(p1tipo=01 or p1tipo=04 or p1tipo=05 or p1tipo=06   ');
DM1.Query1.SQL.Add('   or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14   ');
DM1.Query1.SQL.Add('   or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21   ');
DM1.Query1.SQL.Add('   or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)  ');
DM1.Query1.SQL.Add('  and p1emidoc=1                                         ');

if trim(dtini.Text)<>'/  /' then
   dm1.Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',true,StrToDate(dtini.text)));
if trim(dtFim.Text)<>'/  /' then
   dm1.Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATDOC',false,StrToDate(dtfim.text)));

try
   DM1.Query1.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,1302,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

totalliq_ser_r:=DM1.Query1.FieldByName('Total').AsFloat;
// previsto
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('  select sum(p2spcocus) as Total                          ');
DM1.Query1.SQL.Add('  from cadp02s, cadp01                                    ');
DM1.Query1.SQL.Add('  where p1chave=p2schave                                  ');
DM1.Query1.SQL.Add('  and p2slotseq=p1lotseq                                  ');
DM1.Query1.SQL.Add('  and p2sordem=p1ordem                                    ');
DM1.Query1.SQL.Add('  and p2scodemp=p1codemp                                  ');
DM1.Query1.SQL.Add('  and p1status<3                                          ');
DM1.Query1.SQL.Add('  and(p1tipo=01 or p1tipo=00 or p1tipo=04 or p1tipo=05 or p1tipo=06   ');
DM1.Query1.SQL.Add('   or p1tipo=07 or p1tipo=09 or p1tipo=11 or p1tipo=14   ');
DM1.Query1.SQL.Add('   or p1tipo=15 or p1tipo=16 or p1tipo=20 or p1tipo=21   ');
DM1.Query1.SQL.Add('   or p1tipo=22 or p1tipo=23 or p1tipo=24 or p1tipo=25)  ');
DM1.Query1.SQL.Add('  and p1emidoc<2                                         ');
dm1.Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',true,dtIni.DATE));
dm1.Query1.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',false,dtfim.Date));
try
   DM1.Query1.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,1329,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

totalliq_ser_p:=DM1.Query1.FieldByName('Total').AsFloat;
// imprimindo relatorio
// inserindo CUSTOS dos produtos
dm1.Query1.close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' insert into '+tempor_view+' values '
                  +' (2,'
                  +'  1,'
                  +  chr(39)+'CUSTOS DOS SERVIÇOS VENDIDOS'+chr(39)+','
                  +'  1,'
                  +  chr(39)+'D'+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_ser_p)+chr(39)+','
                  +  chr(39)+FloatToStr(totalliq_ser_r)+chr(39)
                  +' )');
try
  dm1.Query1.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.QUERY1,1352,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;


Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select * from '+tempor_view);
Query1.SQL.Add(' where TPD_COMPOEM=0 ');
Query1.SQL.Add(' order by TPD_COMPOEM, TPD_DESCRICAO');
try
  Query1.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(QUERY1,878,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;

while not Query1.Eof do
  begin
  if Query1NATDC.AsString='C' then
    begin
    total_vendas_p:=total_vendas_p+Query1VLR_PREVISTO.AsFloat;
    total_vendas_r:=total_vendas_r+Query1VLR_REAL.AsFloat;
    end
  else if Query1NATDC.AsString='D' then
    begin
    total_vendas_p:=total_vendas_p-Query1VLR_PREVISTO.AsFloat;
    total_vendas_r:=total_vendas_r-Query1VLR_REAL.AsFloat;
    end;
  Query1.Next;
  end;

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select * from '+tempor_view);
Query1.SQL.Add(' order by TPD_COMPOEM, TPD_DESCRICAO');
try
  Query1.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(QUERY1,1395,'func Erro:'+e.Message ,'CADEST');
   exit;
   end;
   end;


while not Query1.Eof do
  begin
  if Query1NATDC.AsString='C' then
    begin
    Total_p:=Total_p+Query1VLR_PREVISTO.AsFloat;
    Total_R:=Total_R+Query1VLR_REAL.AsFloat;
    end
  else if Query1NATDC.AsString='D' then
    begin
    Total_p:=Total_p-Query1VLR_PREVISTO.AsFloat;
    Total_R:=Total_R-Query1VLR_REAL.AsFloat;
    end;
  Query1.Next;
  end;
Query1.First;
end;

procedure Tfrm_DRE.bb_imprimirClick(Sender: TObject);
begin
if rg_doc.ItemIndex=0 then
  begin
  if (trim(dtIni.Text)='/  /') or (trim(dtFim.Text)='/  /') then
    begin
    fmensagem('Favor selecione uma data valida!'+#13+'Não podem ser nulas, iguais ou com termino na data atual.',0,['0'],0);
    exit;
    end
  else if (StrToDate(dtIni.Text)>=Date) or (StrToDate(dtFim.Text)>=Date)
       or (StrToDate(dtIni.Text)>StrToDate(dtFim.Text))  then
    begin
    fmensagem('Favor selecione uma data valida!'+#13+'Não podem ser nulas, iguais ou com termino na data atual.',0,['0'],0);
    exit;
    end;
  bb_gerarClick(Self);
  if (total_vendas_p>0) and (total_vendas_r>0) then
    begin
    RLReport1.PreviewModal;
    end
  else
    begin
    fmensagem('Não há Movimentação na data selecionada!!!',0,['0'],0);
    end;
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('drop table '+tempor_view);
  Query1.ExecSQL;
  end
else if rg_doc.ItemIndex=1 then
  begin
  total_vendas_r:=0;
  total_vendas_p:=0;
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' select IDATREF, TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP, NATDC, VLR_PREVISTO, VLR_REAL ');
  DM1.Query1.SQL.Add(' from CADIDRE where upper(INOMSALV)=upper('+chr(39)+Trim(cb_nome.Text)+chr(39)+')');
  DM1.Query1.SQL.Add(' and TPD_COMPOEM=0 ');
  DM1.Query1.SQL.Add(' order by TPD_COMPOEM, TPD_DESCRICAO');
  try
    DM1.Query1.Open;
  except
    DM1.Query1.SQL.SaveToFile(SALVA_NOME('ErroSql\','Ex'));
    end;
  dtIni.Text:=copy(DM1.Query1.FieldByName('IDATREF').AsString,1,10);
  dtFim.Text:=copy(DM1.Query1.FieldByName('IDATREF').AsString,12,10);
  while not DM1.Query1.Eof do
    begin
    if DM1.Query1.FieldByName('NATDC').AsString='C' then
      begin
      total_vendas_p:=total_vendas_p+DM1.Query1.FieldByName('VLR_PREVISTO').AsFloat;
      total_vendas_r:=total_vendas_r+DM1.Query1.FieldByName('VLR_REAL').AsFloat;
      end
    else if DM1.Query1.FieldByName('NATDC').AsString='D' then
      begin
      total_vendas_p:=total_vendas_p-DM1.Query1.FieldByName('VLR_PREVISTO').AsFloat;
      total_vendas_r:=total_vendas_r-DM1.Query1.FieldByName('VLR_REAL').AsFloat;
      end;
    DM1.Query1.Next;
    end;
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(' select TPD_COMPOEM, TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP, NATDC, VLR_PREVISTO, VLR_REAL ');
  Query1.SQL.Add(' from CADIDRE where upper(INOMSALV)=upper('+chr(39)+Trim(cb_nome.Text)+chr(39)+')');
  Query1.SQL.Add(' order by TPD_COMPOEM, TPD_DESCRICAO');
  Query1.Open;
  if not Query1.IsEmpty then
    RLReport1.PreviewModal
  else
    fmensagem('Não há Movimentação na data selecionada!!!',0,['0'],0);
  end;
end;

procedure Tfrm_DRE.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if Query1NATDC.AsString='D' then
  begin
  vlr_prev.Font.Color:=clRed;
  vlr_real.Font.Color:=clRed;
  end
else
  begin
  vlr_prev.Font.Color:=clBlack;
  vlr_real.Font.Color:=clBlack;
  end;
if Query1VLR_PREVISTO.AsFloat>0 then
  begin
  if Query1VLR_PREVISTO.AsFloat<=total_vendas_p then
    rl_perp.Caption:=FormatFloat('###,##0.00',(iif(Query1VLR_PREVISTO.AsFloat>0,Query1VLR_PREVISTO.AsFloat,Query1VLR_PREVISTO.AsFloat*(-1))/total_vendas_p)*100)
  else
    rl_perp.Caption:=FormatFloat('###,##0.00',(Query1VLR_PREVISTO.AsFloat/total_vendas_p)*100*(-1));
  end
else
  rl_perp.Caption:='0,00';
if Query1VLR_REAL.AsFloat>0 then
  begin
  if Query1VLR_REAL.AsFloat<=total_vendas_r then
    rl_perr.Caption:=FormatFloat('###,##0.00',(iif(Query1VLR_REAL.AsFloat>0,Query1VLR_REAL.AsFloat,Query1VLR_REAL.AsFloat*(-1))/total_vendas_r)*100)
  else
    rl_perr.Caption:=FormatFloat('###,##0.00',(Query1VLR_REAL.AsFloat/total_vendas_r)*100*(-1));
  end
else
  rl_perr.Caption:='0,00';

if Query1NATDC.AsString='C' then
  begin
  sub_total_R:=sub_total_R+Query1VLR_REAL.AsFloat;
  sub_total_P:=sub_total_P+Query1VLR_PREVISTO.AsFloat;
  sub_tot_parp:=sub_tot_parp+Query1VLR_PREVISTO.AsFloat;
  sub_tot_parr:=sub_tot_parr+Query1VLR_REAL.AsFloat;
  end
else if Query1NATDC.AsString='D' then
  begin
  sub_total_R:=sub_total_R-Query1VLR_REAL.AsFloat;
  sub_total_P:=sub_total_P-Query1VLR_PREVISTO.AsFloat;
  sub_tot_parp:=sub_tot_parp-Query1VLR_PREVISTO.AsFloat;
  sub_tot_parr:=sub_tot_parr-Query1VLR_REAL.AsFloat;
  end;
end;

procedure Tfrm_DRE.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if Query1TPD_COMPOEM.AsInteger=0 then
  begin
  rl_grup.Caption:='  Receita Operacional  Bruta';
  end
else if Query1TPD_COMPOEM.AsInteger=1 then
  begin
  rl_grup.Caption:=' (-) Deduções da Receita Bruta';
  end
else if Query1TPD_COMPOEM.AsInteger=2 then
  begin
  rl_grup.Caption:=' (-) Custo das Vendas';
  end
else if Query1TPD_COMPOEM.AsInteger=3 then
  begin
  rl_grup.Caption:=' (-) Despesas Operacionais';
  end
else if Query1TPD_COMPOEM.AsInteger=4 then
  begin
  rl_grup.Caption:=' (-) Despesas Financeiras';
  end
else if Query1TPD_COMPOEM.AsInteger=5 then
  begin
  rl_grup.Caption:=' (+) Receitas Financeiras';
  end
else if Query1TPD_COMPOEM.AsInteger=6 then
  begin
  rl_grup.Caption:=' (+) RECEITAS NÃO OPERACIONAIS';
  end
else if Query1TPD_COMPOEM.AsInteger=7 then
  begin
  rl_grup.Caption:=' (-) DESPESAS NÃO OPERACIONAIS';
  end
else if Query1TPD_COMPOEM.AsInteger=8 then
  begin
  rl_grup.Caption:=' (-) PARTICIPAÇÕES DIVERSAS';
  end;
end;

procedure Tfrm_DRE.FormActivate(Sender: TObject);
begin
PageControl1.ActivePage:=ts_configuracao;
if codusr<>1111 then
  begin
  ts_relatorio.TabVisible:=False;
  end
else
  begin
  ts_relatorio.TabVisible:=True;
  end;
cb_nome.Items.Clear;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select INOMSALV from CADIDRE');
DM1.Query1.SQL.Add(' group by INOMSALV ');
DM1.Query1.Open;
while not DM1.Query1.Eof do
  begin
  cb_nome.Items.Add(DM1.Query1.FieldByName('inomsalv').AsString);
  DM1.Query1.Next;
  end;
cb_nome.ItemIndex:=-1;
end;

procedure Tfrm_DRE.Query1CalcFields(DataSet: TDataSet);
begin
Query1VLR_PREVISTO.DisplayFormat:=mcasaspu;
Query1VLR_REAL.DisplayFormat    :=mcasaspu;
end;

procedure Tfrm_DRE.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_totger_R.Caption   :=FormatFloat('###,##0.00',Total_R);
rl_totger_P.Caption   :=FormatFloat('###,##0.00',Total_P);
if (Total_P<=total_vendas_p) then
  rl_percp.Caption      :=FormatFloat('###,##0.00',(iif(Total_P>0,Total_P,Total_P*(-1))/total_vendas_p)*100)
else
  rl_percp.Caption      :=FormatFloat('###,##0.00',(Total_P/total_vendas_p)*100*(-1));

//rl_percp.Caption      :=FormatFloat('###,##0.00',Total_P/total_vendas_p*100);
if (Total_R<=total_vendas_r) then
  rl_percr.Caption      :=FormatFloat('###,##0.00',(iif(Total_R>0,Total_R,Total_R*(-1))/total_vendas_r)*100)
else
  rl_percr.Caption      :=FormatFloat('###,##0.00',(Total_R/total_vendas_r)*100*(-1));
//rl_percr.Caption      :=FormatFloat('###,##0.00',Total_R/total_vendas_r*100);
end;

procedure Tfrm_DRE.FormCreate(Sender: TObject);
begin
Query1VLR_PREVISTO.DisplayFormat:=mcasaspu;
Query1VLR_REAL.DisplayFormat:=mcasaspu;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
try
  if flfilpad(-1,'_dre','dtConf') then
    if DM4.Tb_FilPad2FPVALOR.AsString<>'/  /' then
      dtConf.Date:=StrToDate(DM4.Tb_FilPad2FPVALOR.AsString);
except
  end;
end;

procedure Tfrm_DRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := CaFree;

end;

procedure Tfrm_DRE.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrm_DRE.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_val_rel.Caption  :=FormatFloat('###,##0.00',sub_total_R);
if (sub_total_R<=total_vendas_r) then
  rlpersubtotr.Caption:=FormatFloat('###,##0.00',(iif(sub_total_R>0,sub_total_R,sub_total_R*(-1))/total_vendas_r)*100)
else
  rlpersubtotr.Caption:=FormatFloat('###,##0.00',(sub_total_R/total_vendas_r)*100*(-1));
rl_val_pre.Caption:=FormatFloat('###,##0.00',sub_total_P);
if (sub_total_P<=total_vendas_p) then
  rlpersubtotp.Caption:=FormatFloat('###,##0.00',(iif(sub_total_P>0,sub_total_P,sub_total_P*(-1))/total_vendas_p)*100)
else
  rlpersubtotp.Caption:=FormatFloat('###,##0.00',(sub_total_P/total_vendas_p)*100*(-1));
end;

procedure Tfrm_DRE.RLBand5AfterPrint(Sender: TObject);
begin
sub_total_R:=0;
sub_total_P:=0;
end;

procedure Tfrm_DRE.RLBand6AfterPrint(Sender: TObject);
begin
if Query1TPD_DESPOP.AsInteger>2 then
  begin
  sub_tot_parp:=0;
  sub_tot_parr:=0;
  end;
end;

procedure Tfrm_DRE.RLGroup2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if Query1TPD_DESPOP.AsInteger=0 then
  begin
  rl_resultadoop.Caption:='(=) Receita Operacional Liquida.';
  end
else if Query1TPD_DESPOP.AsInteger=1 then
  begin
  rl_resultadoop.Caption:='(=) Resultado Bruto.';
  end
else if Query1TPD_DESPOP.AsInteger=2 then
  begin
  rl_resultadoop.Caption:='(=) Resultado Operacional.';
  end
else if Query1TPD_DESPOP.AsInteger=3 then
  begin
  rl_resultadoop.Caption:='(=) Resultado Não Operacional.';
  end;
end;

procedure Tfrm_DRE.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_patrocinio.Caption:=pBanner_Intersys;
end;

procedure Tfrm_DRE.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
op_prev.Caption       :=FormatFloat('###,##0.00',sub_tot_parp);
op_real.Caption       :=FormatFloat('###,##0.00',sub_tot_parr);
if(sub_tot_parp<=total_vendas_p) then
  rlpertotp.Caption:=FormatFloat('###,##0.00',(iif(sub_tot_parp>0,sub_tot_parp,sub_tot_parp*(-1))/total_vendas_p)*100)
else
  rlpertotp.Caption:=FormatFloat('###,##0.00',(sub_tot_parp/total_vendas_p)*100*(-1));
//rlpertotp.Caption:=FormatFloat('###,##0.00',(sub_tot_parp/total_vendas_p)*100);
if (sub_tot_parr<=total_vendas_r) then
  rlpertotr.Caption:=FormatFloat('###,##0.00',(iif(sub_tot_parr>0,sub_tot_parr,sub_tot_parr*(-1))/total_vendas_r)*100)
else
  rlpertotr.Caption:=FormatFloat('###,##0.00',(sub_tot_parr/total_vendas_r)*100*(-1));
//rlpertotr.Caption:=FormatFloat('###,##0.00',(sub_tot_parr/total_vendas_r)*100);
end;

procedure Tfrm_DRE.bb_salvarClick(Sender: TObject);
begin
if (trim(dtIni.Text)='/  /') or (trim(dtFim.Text)='/  /') then
  begin
  fmensagem('Favor selecione uma data valida!'+#13+'Não podem ser nulas, iguais ou com termino na data atual.',0,['0'],0);
  exit;
  end
else if (StrToDate(dtIni.Text)>=Date) or (StrToDate(dtFim.Text)>=Date)
or (StrToDate(dtIni.Text)>StrToDate(dtFim.Text))  then
  begin
  fmensagem('Favor selecione uma data valida!'+#13+'Não podem ser nulas, iguais ou com termino na data atual.',0,['0'],0);
  exit;
  end;

if trim(cb_nome.Text)='' then
  begin
  fmensagem('Favor inserir um nome valido para DRE!',0,['0'],0);
  Exit;
  end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('DELETE FROM CADIDRE WHERE INOMSALV='+CHR(39)+trim(cb_nome.Text)+CHR(39));
DM1.Query1.ExecSQL;

bb_gerarClick(Self);

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select * from '+tempor_view);
Query1.SQL.Add(' order by TPD_COMPOEM, TPD_DESCRICAO');
try
  Query1.Open;
except
  Query1.SQL.SaveToFile(SALVA_NOME('ErroSql\','Ex'));
  end;

Query1.First;
while not Query1.Eof do
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' insert into CADIDRE (ICODEMP, INOMSALV, IDATREF, IDATSALV, TPD_COMPOEM, '
                    +' TPD_CHAVE, TPD_DESCRICAO, TPD_DESPOP, NATDC, VLR_PREVISTO, VLR_REAL)    '
                    +' values ('
                    +chr(39)+IntToStr(codemp)+chr(39)+','
                    +chr(39)+Trim(cb_nome.Text)+chr(39)+','
                    +chr(39)+Trim(dtIni.Text)+'-'+Trim(dtFim.Text)+chr(39)+','
                    +'TO_DATE('+CHR(39)+FormatDateTime('DD/MM/YYYY',Date)+' '+TimeToStr(Time)+CHR(39)+','+CHR(39)+'DD/MM/YYYY HH24:MI:SS'+CHR(39)+'),'
                    +chr(39)+Query1TPD_COMPOEM.AsString+chr(39)+','
                    +chr(39)+Query1TPD_CHAVE.AsString+chr(39)+','
                    +chr(39)+Query1TPD_DESCRICAO.AsString+chr(39)+','
                    +chr(39)+Query1TPD_DESPOP.AsString+chr(39)+','
                    +chr(39)+Query1NATDC.AsString+chr(39)+','
                    +chr(39)+Query1VLR_PREVISTO.AsString+chr(39)+','
                    +chr(39)+Query1VLR_REAL.AsString+chr(39)+')');
  DM1.Query1.ExecSQL;
  Query1.Next;
  end;
fmensagem('Salvo com Sucesso!',0,['0'],0);
ProgressBar1.Position:=0;
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add('drop table '+tempor_view);
Query1.ExecSQL;
end;

procedure Tfrm_DRE.rl_cabecalhoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
// fim do filtro de datas

if (trim(dtIni.Text)<>'/  /')  and (trim(dtFim.Text)<>'/  /') then
  begin
  rl_periodo.Caption:='De '+dtIni.Text+' à '+dtFim.Text;
  end
else if (trim(dtIni.Text)<>'/  /') then
  begin
  rl_periodo.Caption:='Somente no dia '+dtIni.Text;
  end
else if (trim(dtFim.Text)<>'/  /') then
  begin
  rl_periodo.Caption:='Somente no dia '+dtFim.Text;
  end
else
  begin
  rl_periodo.Caption:='Sem data predefinida!!!';
  end;

end;

procedure Tfrm_DRE.bb_deletarClick(Sender: TObject);
begin
if  trim(cb_nome.Text)<>'' then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('DELETE FROM CADIDRE WHERE INOMSALV='+CHR(39)+trim(cb_nome.Text)+CHR(39));
  DM1.Query1.ExecSQL;
  end;
cb_nome.Items.Clear;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' select inomsalv from cadidre ');
DM1.Query1.SQL.Add(' group by inomsalv ');
DM1.Query1.Open;
while not DM1.Query1.Eof do
  begin
  cb_nome.Items.Add(DM1.Query1.FieldByName('inomsalv').AsString);
  DM1.Query1.Next;
  end;
cb_nome.ItemIndex:=-1;
cb_nome.Text:=' ';
end;

procedure Tfrm_DRE.FormShow(Sender: TObject);
begin
if codusr=1111 then
 tsConfig.TabVisible:=True;
end;

procedure Tfrm_DRE.btnSalvarClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_dre','');
fGravaPadroes(-1,'dtConf','DateEdit','_dre',dtConf.Text);
MessageDlg('Gravado!',mtInformation,[mbOk],0);

end;

end.


