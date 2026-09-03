{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}
unit s_listarcompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Mask, Grids, DBGrids, StdCtrls, ToolEdit, ExtCtrls, Buttons,
  DBTables, S_SelEmp, RLReport;

type
  TFrm_listarcompras = class(TForm)
    Panel1: TPanel;
    DBG_listacompras: TDBGrid;
    DataSource1: TDataSource;
    edt_nomerazao: TEdit;
    lbl_razao: TLabel;
    lbl_nomfantasia: TLabel;
    edt_nomfantasia: TEdit;
    lbl_ender: TLabel;
    edt_ender: TEdit;
    lbl_bairro: TLabel;
    edt_bairro: TEdit;
    lbl_cep: TLabel;
    edt_cep: TEdit;
    lbl_ptoref: TLabel;
    edt_ptoref: TEdit;
    lbl_cidade: TLabel;
    edt_cidade: TEdit;
    lbl_uf: TLabel;
    edt_uf: TEdit;
    lbl_fone1: TLabel;
    edt_fone1: TEdit;
    edt_fone2: TEdit;
    lbl_fone2: TLabel;
    lbl_fone3: TLabel;
    edt_fone3: TEdit;
    lbl_fone4: TLabel;
    edt_fax: TEdit;
    lbl_email: TLabel;
    edt_email: TEdit;
    lbl_nomcontato: TLabel;
    edt_nomcontato: TEdit;
    lbl_comp: TLabel;
    edt_comp: TEdit;
    lbl_num: TLabel;
    edt_num: TEdit;
    lbl_percompra: TLabel;
    dt_inicial: TDateEdit;
    a: TLabel;
    dt_fim: TDateEdit;
    lbl_CNPJ: TLabel;
    bb_buscar: TBitBtn;
    Lbl_nserie: TLabel;
    edt_numserie: TEdit;
    lbl_numnf: TLabel;
    edt_numNF: TEdit;
    Query1: TQuery;
    edt_cnpf_cnpj: TEdit;
    edt_codcli: TEdit;
    lbl_cliente: TLabel;
    Query1P2CHAVE: TFloatField;
    Query1P2CODPRO: TFloatField;
    Query1P2ITEM: TFloatField;
    Query1P2QTD: TFloatField;
    Query1P2PRECO: TFloatField;
    Query1P2CODEMP: TFloatField;
    Query1P2LOTSEQ: TFloatField;
    Query1P2ORDEM: TFloatField;
    Query1P2CODANT: TFloatField;
    Query1P2QTDDEV: TFloatField;
    Query1P2LOTE: TStringField;
    Query1P2PROMOCAO: TStringField;
    Query1P2DTVCTO: TDateTimeField;
    Query1P2DESC1: TFloatField;
    Query1P2DESC2: TFloatField;
    Query1P2DESC3: TFloatField;
    Query1P2VALDES: TFloatField;
    Query1P2SIT: TStringField;
    Query1P2CODFAB: TFloatField;
    Query1P2BASEN: TFloatField;
    Query1P2ICMSN: TFloatField;
    Query1P2REPAS: TFloatField;
    Query1P2BASER: TFloatField;
    Query1P2ICMSR: TFloatField;
    Query1P2LISTA: TFloatField;
    Query1P2STATUS: TFloatField;
    Query1P2PCOTAB: TFloatField;
    Query1P2UCPR: TFloatField;
    Query1P2PCOCUS: TFloatField;
    Query1P2PCOMAX: TFloatField;
    Query1P2TOTDES: TFloatField;
    Query1P2DESCRAT: TFloatField;
    Query1P2TABELA: TStringField;
    Query1P2ALIPI: TFloatField;
    Query1P2VALIPI: TFloatField;
    Query1P2BCINR: TFloatField;
    Query1P2ICMSNR: TFloatField;
    Query1P2ISENTAS: TFloatField;
    Query1P2TOTOUT: TFloatField;
    Query1P2ALIQ: TFloatField;
    Query1P2ALIQNR: TFloatField;
    Query1P2PCOMIS: TFloatField;
    Query1P2VCOMIS: TFloatField;
    Query1P2VCOM02: TFloatField;
    Query1P2VCOM03: TFloatField;
    Query1P2DESCM: TFloatField;
    Query1P2CFO: TFloatField;
    Query1P2SEMCOM: TFloatField;
    Query1P2TOTLIQ: TFloatField;
    Query1P2PDESCF: TFloatField;
    Query1P2VDESCF: TFloatField;
    Query1P2ACRECONV: TFloatField;
    Query1P2ACREGER: TFloatField;
    Query1P2CODGRU: TFloatField;
    Query1P2VCOM04: TFloatField;
    Query1P2ACRERAT: TFloatField;
    Query1P2CODAGRU: TFloatField;
    Query1P2CONSIG: TFloatField;
    Query1P2QTD_ENTREGUE: TFloatField;
    Query1P2QTD_ENTREGANDO: TFloatField;
    Query1P2AMBIENTE: TStringField;
    Query1P2PCOFPG: TFloatField;
    Query1P2PCOMIS_EXTRA: TFloatField;
    Query1P2VCOMIS_EXTRA: TFloatField;
    Query1P2CFOSUBECF: TFloatField;
    Query1P2STATUS_PED1: TFloatField;
    Query1P2TIPO: TFloatField;
    Query1P2QTD_ATEN: TFloatField;
    Query1P2PCOM02: TFloatField;
    Query1P2PCOM03: TFloatField;
    Query1P2ST_IVA: TFloatField;
    Query1P2ST_REDUT: TFloatField;
    Query1P2ST_ICMCRED: TFloatField;
    Query1P2ST_ICMDEB: TFloatField;
    Query1P2REDUTICM: TFloatField;
    Query1P2PRAZO: TFloatField;
    Query1P2ALPIS: TFloatField;
    Query1P2VALPIS: TFloatField;
    Query1P2ALCOFINS: TFloatField;
    Query1P2COFINS: TFloatField;
    Query1P2CODVEN: TFloatField;
    Query1P2TIPO_PCO: TFloatField;
    Query1P2CONS_PROPRIO: TFloatField;
    Query1P2COMPLEMENTO: TMemoField;
    Query1P2CODPRO_ORI: TStringField;
    Query1P2NOMPRO_ORI: TStringField;
    Query1P2CHAVE_NIVEL: TFloatField;
    Query1P2PCRED_SN: TFloatField;
    Query1P2PCREDSN: TFloatField;
    Query1P2UND: TStringField;
    Query1P2PREPAS: TFloatField;
    Query1P2MODBCST: TFloatField;
    Query1P2KIT_PRO: TStringField;
    Query1P2LOTCT: TFloatField;
    Query1P2CST_PIS: TStringField;
    Query1P2CST_COFINS: TStringField;
    Query1P2CSOSN: TFloatField;
    Query1P2CSOSN_ORI: TFloatField;
    Query1P2ESTNOR: TStringField;
    Query1P2ESTCONS: TStringField;
    Query1P2ESTTERC: TStringField;
    Query1P2ESTREV: TStringField;
    Query1P2VLRICMS_SN: TFloatField;
    Query1P2SITUACAO: TFloatField;
    Query1P2DESC_CAB: TFloatField;
    Query1P2CST_IPI: TStringField;
    Query1P2VSEGRAT: TFloatField;
    Query1P2VDESPACESRAT: TFloatField;
    Query1P2CONTESP: TFloatField;
    Query1P2VICMSDES: TFloatField;
    Query1P2DESCPR: TFloatField;
    Query1NOMPRO: TStringField;
    Query1N_SERIE: TStringField;
    Query1datanf: TDateField;
    Query1n_nf: TIntegerField;
    bbimprimir: TButton;
    Query1venvedor: TStringField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLAngleLabel1: TRLAngleLabel;
    RLAngleLabel2: TRLAngleLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLMemo1: TRLMemo;
    rl_chave: TRLLabel;
    rl_produto: TRLLabel;
    rl_nrserie: TRLLabel;
    rl_preco: TRLLabel;
    rl_datanf: TRLLabel;
    rl_nrnotafiscal: TRLLabel;
    rl_vendedor: TRLLabel;
    RLBand4: TRLBand;
    RLDB_chave: TRLDBText;
    RLDB_produto: TRLDBText;
    RLDB_nrserie: TRLDBText;
    RLDB_preco: TRLDBText;
    RLDB_datanf: TRLDBText;
    RLDB_nrnotafiscal: TRLDBText;
    RLDB_vendedor: TRLDBText;
    RLBand5: TRLBand;
    lbl_patrocinio: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    rl_nome: TRLLabel;
    RLDB_nome: TRLDBText;
    rl_qtd: TRLLabel;
    RLDBText3: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_cnpf_cnpjKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cnpf_cnpjExit(Sender: TObject);
    procedure bb_buscarClick(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure bbimprimirClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_listarcompras: TFrm_listarcompras;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses S_Cli, lerarq, Func, S_DM1, Math;

{$R *.dfm}

procedure TFrm_listarcompras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_listarcompras.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp,Form_SelEmp);
end;

procedure TFrm_listarcompras.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_listarcompras.edt_cnpf_cnpjKeyPress(Sender: TObject;
  var Key: Char);
var
 temp: String;
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  temp:=fChamaCli(0,'Frm_listarcompras',key);
  Key:=' ';
  flcadcli(1,0,temp);
  if not DM1.Tb_Cli.IsEmpty then
    begin
    if DM1.Tb_CliCCNPJ.AsFloat > 0 then
      edt_cnpf_cnpj.Text:=Insere(DM1.Tb_CliCCNPJ.AsString,'0',14)
    else
      edt_cnpf_cnpj.Text:=Insere(DM1.Tb_CliCCPF.AsString,'0',11);
    end;
  if trim(edt_cnpf_cnpj.Text)<>'' then
    edt_cnpf_cnpjExit(Self);
  end;
end;


procedure TFrm_listarcompras.edt_cnpf_cnpjExit(Sender: TObject);
var
  x: Integer;
begin
query1.Close;
edt_cnpf_cnpj.Text:=MaskCPFCNPJ(edt_cnpf_cnpj.Text);
if ValFloat(edt_cnpf_cnpj.Text)<>0 then
  begin
  if length(edt_cnpf_cnpj.Text)=18 then
    flcadcli(2,0,FloatToStr(ValFloat(edt_cnpf_cnpj.Text)))
  else
    flcadcli(3,0,FloatToStr(ValFloat(edt_cnpf_cnpj.Text)));
  if not DM1.Tb_Cli.IsEmpty then
    begin
    edt_codcli.Text     :=dm1.Tb_CliCCODCLI.AsString;
    edt_nomerazao.Text  :=dm1.Tb_CliCRAZAO.AsString;
    edt_nomfantasia.Text:=dm1.Tb_CliCDENOM.AsString;
    edt_ender.Text      :=dm1.Tb_Cliender.AsString;
    edt_bairro.Text     :=dm1.Tb_CliCBAIRRO.AsString;
    edt_cep.Text        :=dm1.Tb_CliCCEP.AsString;
    edt_comp.Text       :=dm1.Tb_CliCCOMPL.AsString;
    edt_num.Text        :=dm1.Tb_CliCNUM.AsString;
    edt_ptoref.Text     :=dm1.Tb_CliCPONTOR.AsString;
    edt_cidade.Text     :=dm1.Tb_CliCCIDADE.AsString;
    edt_uf.Text         :=dm1.Tb_CliCUF.AsString;
    edt_fone1.Text      :=dm1.Tb_CliCFONE01.AsString;
    edt_fone2.Text      :=dm1.Tb_CliCFONE02.AsString;
    edt_fone3.Text      :=dm1.Tb_CliCFONE03.AsString;
    edt_fax.Text        :=dm1.Tb_CliCFAX.AsString;
    edt_email.Text      :=dm1.Tb_CliCEMAIL.AsString;
    edt_nomcontato.Text :=dm1.Tb_CliCNOMCON.AsString;
    edt_numserie.SetFocus;
    end
  else
    begin
    fmensagem('CLIENTE NÃO CADASTRADO!',0,['0'],0);
    edt_cnpf_cnpj.SetFocus;
    end;
  end
else
  begin
  Query1.Close;
  for X:=0 to Screen.ActiveForm.ComponentCount -1 do
    begin
    if (Screen.ActiveForm.Components[x] is TEdit) then
      TEdit(Screen.ActiveForm.Components[x]).Clear;
    end;
  end;
end;

procedure TFrm_listarcompras.bb_buscarClick(Sender: TObject);
var
  emp: String;
begin
if edt_cnpf_cnpj.Text<>'' then
  begin
  if (Trim(dt_inicial.Text)<>'/  /') and (Trim(dt_fim.Text)<>'/  /') then
    if dt_inicial.Date > dt_fim.Date then
      begin
      fmensagem('Data Inicial não pode ser maior'+#13+' que a Data Final!',0,['0'],0);
      Exit;
      end;

  la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  emp:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
  Query1.close;
  Query1.SQL.Clear;
  Query1.SQL.ADD(' select * from CADP02 where P2CHAVE in (select ');
  Query1.SQL.ADD(' P1CHAVE from CADP01 where P1CODCLI='+edt_codcli.Text);
  if trim(dt_inicial.text)<>'/  /' then
    query1.SQL.Add(' and P1DATANF>='+QuotedStr(dt_inicial.Text));
  if trim(dt_fim.text)<>'/  /' then
    query1.SQL.Add(' and P1DATANF<='+QuotedStr(dt_fim.Text));
  if trim(edt_numNF.Text)<>'' then
    query1.SQL.Add(' and P1NUMNF='+QuotedStr(edt_numNF.Text));

  if Trim(la_Empresas)<>'' then
    Query1.SQL.ADD(' and '+la_Empresas);
  Query1.SQL.ADD(' and P1STATUS<'+mstatus_excluido+' and P1EMIDOC=1) ');
  if trim(edt_numserie.Text)<>''then
    Query1.SQL.Add(' and P2COMPLEMENTO like'+ QuotedStr('%' +edt_numserie.Text+'%'));

  if Trim(emp)<>'' then
    Query1.SQL.ADD(' and '+emp);

  try
    Query1.Open;
  if query1.IsEmpty then
    begin
    if trim(edt_numserie.Text)<>''then
      begin
      fmensagem('Numero de serie invalido!',0,['0'],0);
      edt_numserie.SetFocus;
      end
    else if trim(edt_numNF.Text)<>'' then
      begin
      fmensagem('Nota Fiscal não encontrada!',0,['0'],0);
      edt_numNF.SetFocus;
      end
    else
      begin
      fmensagem('Nenhuma compra encontrada!',0,['0'],0);
      end;
    end
  except
    fmensagem('Erro ao Buscar Produtos!',0,['0'],0);
    Query1.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
    Exit;
    end
  end
else
  begin
  fmensagem('Digite o cnpj/cpf ou nome antes de buscar!',0,['0'],0);
  edt_cnpf_cnpj.SetFocus;
  end;
end;

procedure TFrm_listarcompras.Query1CalcFields(DataSet: TDataSet);
begin
flcadpro(1,0,0,Query1P2CODPRO.AsString);
Query1NOMPRO.AsString:=DM1.Tb_ProPDNOME.AsString;
Query1N_SERIE.AsString:=Query1P2COMPLEMENTO.AsString;
DM1.query1.close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add(' select * from CADP01,CADVEN where P1CHAVE = '+Query1P2CHAVE.AsString);
DM1.Query1.sql.Add(' and P1LOTSEQ = '+Query1P2LOTSEQ.AsString);
DM1.Query1.sql.Add(' and P1CODEMP = '+Query1P2CODEMP.AsString);
DM1.Query1.sql.Add(' and P1ORDEM = '+Query1P2ORDEM.AsString);
DM1.Query1.SQL.Add(' and P1CODVEN=VCODVEN ');
DM1.Query1.Open;
Query1datanf.AsDateTime:=dm1.Query1.fieldbyname('p1datanf').AsDateTime;
Query1n_nf.AsInteger:=DM1.Query1.fieldbyname('p1numnf').AsInteger;
Query1venvedor.AsString:=DM1.Query1.fieldbyname('VNOME').AsString;
end;

procedure TFrm_listarcompras.bbimprimirClick(Sender: TObject);
begin
if Query1.IsEmpty then
  begin
  fmensagem('Nada a ser impresso na configuração desejada!',0,['0'],0);
  Exit;
  end;
RLReport1.PreviewModal;
end;

procedure TFrm_listarcompras.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLMemo1.Lines.Clear;
if edt_numserie.Text<>''then
  begin
  RLMemo1.Lines.Add(' NUMERO DE SERIE: '+edt_numserie.Text);
  end;

if edt_numNF.Text<>'' then
  begin
  RLMemo1.Lines.Add(' NUMERO NOTA FISCAL: '+edt_numNF.Text);
  end;

if edt_cnpf_cnpj.Text<>''then
  begin
  RLMemo1.Lines.Add(' CPNJ/CPF: '+edt_cnpf_cnpj.Text);
  end;

if (trim(dt_inicial.Text)<>'/  /') and (trim(dt_fim.Text)<>'/  /') then
  begin
  RLMemo1.Lines.Add(' PERIODO DE '+dt_inicial.Text+' A ' +dt_fim.Text);
  end
else if trim(dt_inicial.Text)<>'/  /' then
  begin
  RLMemo1.Lines.Add(' APARTIR DE '+dt_inicial.Text);
  end
else if trim(dt_fim.text)<>'/  /' then
  begin
  RLMemo1.LINES.Add(' ATE '+dt_fim.text);
  end
else
  begin
  RLMemo1.Lines.Add(' SEM PERIODO SELECIONADO');
  end;

if RLMemo1.Lines.Count = 0 then
  RLBand2.Visible:=False
else
  RLBand2.Visible:=True;
end;

procedure TFrm_listarcompras.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_patrocinio.Caption:=pBanner_Intersys;
end;

end.

