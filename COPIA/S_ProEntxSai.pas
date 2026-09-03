unit S_ProEntxSai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Sup,S_Cli,lerarq, CheckLst, ComCtrls, S_SelEmp, RLReport,s_lerarq_geral;

type
  TFrm_ProEntxSai = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    TabSheet3: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Label12: TLabel;
    bbImprimir: TBitBtn;
    sb_SalvarPadrao: TSpeedButton;
    bbSair: TBitBtn;
    CB_EmiDoc: TCheckBox;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label8: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label7: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label9: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    CB_QDEC_QTD: TComboBox;
    Label6: TLabel;
    Label16: TLabel;
    CB_TIPOPESQ: TComboBox;
    CB_SEMMOV: TCheckBox;
    tsRelatorio: TTabSheet;
    Qr_For: TQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_PRO: TCheckBox;
    OMITIR_FOR: TCheckBox;
    Qr_ForPDNOME: TStringField;
    Qr_ForPDUND: TStringField;
    Qr_ForPDCODPRO: TFloatField;
    Qr_ForGRADE: TStringField;
    Qr_ForVENDAS: TFloatField;
    Qr_ForDEVOL_CLIENTE: TFloatField;
    Qr_ForCOMPRAS: TFloatField;
    Qr_ForENTRADA_AJUSTE: TFloatField;
    Qr_ForSAIDA_AJUSTE: TFloatField;
    Qr_ForENTRADAS: TFloatField;
    Qr_ForSAIDAS: TFloatField;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    rl_obscab: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand_cabgru: TRLBand;
    lbl_codpro: TRLLabel;
    lbl_descricao: TRLLabel;
    lbl_und: TRLLabel;
    lbl_entradas: TRLLabel;
    lbl_saidas: TRLLabel;
    lbl_saldo: TRLLabel;
    RLBand_detail: TRLBand;
    edt_codpro: TRLDBText;
    Src_for: TDataSource;
    edt_descricao: TRLDBText;
    edt_und: TRLDBText;
    edt_entradas: TRLDBText;
    edt_saidas: TRLDBText;
    edt_saldo: TRLDBText;
    Qr_Forsaldo: TFloatField;
    RL_Rodape: TRLBand;
    lbl_emitido: TRLLabel;
    RLRodPag: TRLBand;
    CB_AJUSTE: TCheckBox;
    CB_PEDCOMPRA: TCheckBox;
    CB_PEDVDA: TCheckBox;
    StaticText8: TStaticText;
    CODUSR: TEdit;
    lbx_codusr: TListBox;
    OMITIR_USR: TCheckBox;
    RLBand1: TRLBand;
    lblrod_codpro: TRLLabel;
    lblRod_descricao: TRLLabel;
    lblRod_und: TRLLabel;
    lblRod_entradas: TRLLabel;
    lblRod_saidas: TRLLabel;
    lblRod_saldo: TRLLabel;
    RG_ORDEM: TRadioGroup;
    Qr_ForVENDAS_VALOR: TFloatField;
    Qr_ForDEVOL_CLIENTE_VALOR: TFloatField;
    Qr_ForCOMPRAS_VALOR: TFloatField;
    Qr_ForENTRADA_AJUSTE_VALOR: TFloatField;
    Qr_ForSAIDA_AJUSTE_VALOR: TFloatField;
    Qr_ForENTRADAS_VALOR: TFloatField;
    Qr_ForSAIDAS_VALOR: TFloatField;
    Qr_Forsaldo_valor: TFloatField;
    lbl_entradas_vlr: TRLLabel;
    edt_entradas_vlr: TRLDBText;
    lblrod_entradas_vlr: TRLLabel;
    lbl_saidas_vlr: TRLLabel;
    edt_saidas_vlr: TRLDBText;
    lblrod_saidas_vlr: TRLLabel;
    lbl_saldo_vlr: TRLLabel;
    edt_saldo_vlr: TRLDBText;
    lblrod_saldo_vlr: TRLLabel;
    Label11: TLabel;
    CLBNivel: TCheckListBox;
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_PROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_TPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_GRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_CONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_RAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RL_RodapeBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Qr_ForCalcFields(DataSet: TDataSet);
    procedure CODUSRExit(Sender: TObject);
    procedure CODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand_detailBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function FImprimeMod01(pTipo: Integer): Boolean;
    function FImprimeMod02_Cota(pTipo: Integer): Boolean;
  end;

var
  Frm_ProEntxSai: TFrm_ProEntxSai;
  mcasas_abc : String;
  mTotEnt,mTotSai: Real;
  mTotEnt_valor,mTotSai_valor: Real;

implementation

uses s_tipPro, S_GPro, S_TCon, S_For, S_Ram, S_UF, S_DM4, S_C;


{$R *.dfm}

procedure TFrm_ProEntxSai.bbImprimirClick(Sender: TObject);
var
mNomeView: String;
mNomeView2: String;

begin
if (not CB_AJUSTE.Checked) and (not CB_PEDCOMPRA.Checked) and (not CB_PEDVDA.Checked) then
   begin
   fmensagem('Pelo Menos um tipo de Pesquisa tem que ser selecionado!!!',0,['0'],0);
   exit;
   end;
mcasas_abc:='0';
if CB_QDEC_QTD.ItemIndex>0 then
   mcasas_abc :=mcasas_abc+'.'+insere('0','0',CB_QDEC_QTD.ItemIndex);
Qr_ForENTRADAS.DisplayFormat:=mcasas_abc;
Qr_ForSAIDAS.DisplayFormat:=mcasas_abc;
Qr_Forsaldo.DisplayFormat:=mcasas_abc;


Qr_ForENTRADAS_VALOR.DisplayFormat:=mcasas;
Qr_ForSAIDAS_VALOR.DisplayFormat:=mcasas;
Qr_Forsaldo_valor.DisplayFormat:=mcasas;

mNomeView:='PRODENTSAI';
mNomeView2:='PRODENTSAI2';

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
mcinst2:='';

if CB_AJUSTE.Checked then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query1.SQL.add(mcinst2);
   DM1.Query1.SQL.add('Select AJCODPRO AS CODPRO '
                            +iif(Log_TipoLote=2,',AJLOTE',',AJLOTE')+' as GRADE '
                            +', 0 AS VENDAS'
                            +', 0 AS VENDAS_VALOR'
                            +', 0 AS DEVOL_CLIENTE'
                            +', 0 AS DEVOL_CLIENTE_VALOR'
                            +', 0 AS COMPRAS'
                            +', 0 AS COMPRAS_VALOR'
                            +', DECODE(AJTIPOM,0,AJQTD '
                                          +' ,30,AJQTD '
                                          +' ,22,AJQTD '
                                          +' ,12,AJQTD '
                                          +' ,0) AS ENTRADA_AJUSTE'
                            +', DECODE(AJTIPOM,0,0 '
                                          +',30,0 '
                                          +',22,0 '
                                          +',12,0 '
                                          +',AJQTD) AS SAIDA_AJUSTE '
                           +','+chr(39)+'AJUSTE'+chr(39)+' as LOCAL '
                           +',ROWNUM AS COLUNA'
                           +' from CADAJU where 1=1 ');
    mcinst:=' and ';

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('AJDATA',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('AJDATA',false,strtodate(mdt2.text)));


    if trim(la_Empresas)<>'' then
       DM1.Query1.SQL.add(mcinst+la_Empresas);

    mcinst2:=' union ';
    end;
if CB_PEDCOMPRA.Checked then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
   DM1.Query1.SQL.add(mcinst2);
   DM1.Query1.SQL.add('Select PF2CODPRO AS CODPRO '
                            +iif(Log_TipoLote=2,',PF2LOTE',',PF2LOTE')+' as GRADE '
                            +', 0 AS VENDAS'
                            +', 0 AS VENDAS_VALOR'
                            +', 0 AS DEVOL_CLIENTE'
                            +', 0 AS DEVOL_CLIENTE_VALOR'
                            +', PF2QTDP AS COMPRAS'
                            +', NVL(PF2TOTLIQ,(PF2QTDP*PF2PU)-PF2TOTDES) AS COMPRAS_VALOR'
                            +', 0 AS ENTRADA_AJUSTE'
                            +', 0 AS SAIDA_AJUSTE '
                            +','+chr(39)+'PEDFOR'+chr(39)+' as LOCAL '
                            +',ROWNUM AS COLUNA'
                            +' from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                            +'       '+la_Join
                            +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                            +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                            +' PF1STATUS>0 ');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

    mcinst2:=' union ';
    end;


if CB_PEDVDA.Checked then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   mcinst3:=fItenstCheckListBox(0,RG_TIPOPED);

   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
   DM1.Query1.SQL.add(mcinst2);
   DM1.Query1.SQL.add('Select P2CODPRO AS CODPRO '
                            +iif(Log_TipoLote=2,',P2LOTE',',P2LOTE')+' as GRADE '
                            +', P2QTD AS VENDAS'
                            +', P2TOTLIQ AS VENDAS_VALOR'
                            +', 0 AS DEVOL_CLIENTE'
                            +', 0 AS DEVOL_CLIENTE_VALOR'
                            +', 0 AS COMPRAS'
                            +', 0 AS COMPRAS_VALOR'
                            +', 0 AS ENTRADA_AJUSTE'
                            +', 0 AS SAIDA_AJUSTE '
                            +','+chr(39)+'PEDVDA'+chr(39)+' as LOCAL '
                            +',ROWNUM AS COLUNA'
                            +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                             +' P1STATUS<'+mstatus_excluido+' ');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,strtodate(mdt2.text)));

   DM1.Query1.SQL.add(' and ('
      +'     (P1TIPO=01) or (P1TIPO=02) or '
      +'     (P1TIPO=04) or (P1TIPO=05) or '
      +'     (P1TIPO=06) or (P1TIPO=07) or '
      +'     (P1TIPO=09) or (P1TIPO=11) or (P1TIPO=16) or (P1TIPO>=18) ) ');
   if trim(mcinst3)<>'' then
      DM1.Query1.SQL.Add(' and  P1TIPO '+mcinst3);

   mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and P1CODTLV '+mcinst2);
      DM1.Query1.SQL.Add(' and P1ORIGEM=1');
      end;


   mcinst2:=' union ';

   DM1.Query1.SQL.add(mcinst2);
   DM1.Query1.SQL.add('Select P2CODPRO AS CODPRO '
                            +iif(Log_TipoLote=2,',P2LOTE',',P2LOTE')+' as GRADE '
                            +', 0 AS VENDAS'
                            +', 0 AS VENDAS_VALOR'
                            +', P2QTD AS DEVOL_CLIENTE'
                            +', P2TOTLIQ AS DEVOL_CLIENTE_VALOR'
                            +', 0 AS COMPRAS'
                            +', 0 AS COMPRAS_VALOR'
                            +', 0 AS ENTRADA_AJUSTE'
                            +', 0 AS SAIDA_AJUSTE '
                            +','+chr(39)+'PEDVDA_DEV'+chr(39)+' as LOCAL '
                            +',ROWNUM AS COLUNA'
                            +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                             +' P1STATUS<'+mstatus_excluido+' ');

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,strtodate(mdt2.text)));
   DM1.Query1.SQL.add(' and   ( (P1TIPO=08) or (P1TIPO=12) or '
                        +'     (P1TIPO=13) or (P1TIPO=17) or (P1TIPO=18) )');
   if trim(mcinst3)<>'' then
      DM1.Query1.SQL.Add(' and  P1TIPO '+mcinst3);
   mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and P1CODTLV '+mcinst2);
      DM1.Query1.SQL.Add(' and P1ORIGEM=1');
      end;
   mcinst2:=' union ';
   end;

//DM1.Query1.SQL.SaveToFile('c:\sqlentsai.txt');
try
   DM1.Query1.ExecSQL;
except
   DM1.Query1.SQL.SaveToFile('c:\sqlentsai.txt');
   end;

dm1.QUERY1.Close;
dm1.QUERY1.SQL.Clear;
dm1.QUERY1.SQL.Add('create or replace view '+mNomeView2+' as '
                  +' Select max(PDNOME) as PDNOME,max(PDUND) AS PDUND,MAX(PDPRECO1) AS PRECO1, PDCODPRO ,CLNUMERO  '
                  +' from CADPRO,CADLGC '
                  +' where CLCODPRO(+)=PDCODPRO ');

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.sql.Add(' and PDCODPRO '+mcinst2);
mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDNIVEL '+mcinst2);;



mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   DM1.Query1.sql.Add(' and PDCODFOR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   DM1.Query1.sql.Add(' and PDCODTIP'+mcinst2);


mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
   DM1.Query1.sql.Add(' and PDCODCON '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   DM1.Query1.sql.Add(' and PDCODGRU '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
   DM1.Query1.sql.Add(' and PDCODRAM '+mcinst2);
DM1.Query1.sql.Add('group by PDCODPRO,CLNUMERO');
try
   DM1.query1.ExecSQL;
except
   DM1.query1.SQL.SAVETOFILE('C:\SQL3.TXT');
   exit;

   end;



Qr_For.Close;
Qr_For.sql.Clear;
Qr_For.sql.Add('Select PDNOME,PDUND,PDCODPRO '
              +iif(Log_TipoLote=2,',CLNUMERO',',max(GRADE)')+' as GRADE '
              +', sum(decode(VENDAS,NULL,0,VENDAS)) as VENDAS '
              +', sum(decode(VENDAS_VALOR,NULL,0,VENDAS_VALOR)) as VENDAS_VALOR '
              +',  sum(decode(DEVOL_CLIENTE,NULL,0,DEVOL_CLIENTE)) as DEVOL_CLIENTE'
              +',  sum(decode(DEVOL_CLIENTE_VALOR,NULL,0,DEVOL_CLIENTE_VALOR)) as DEVOL_CLIENTE_VALOR'
              +', sum(decode(COMPRAS,null,0,COMPRAS)) as COMPRAS '
              +' ,sum(decode(COMPRAS_VALOR,null,0,COMPRAS_VALOR)) as COMPRAS_VALOR '
              +', sum(DECODE(ENTRADA_AJUSTE,null,0,ENTRADA_AJUSTE)) as ENTRADA_AJUSTE '
              +', sum(DECODE(ENTRADA_AJUSTE*PRECO1,null,0,ENTRADA_AJUSTE*PRECO1)) as ENTRADA_AJUSTE_VALOR '
              +', sum(DECODE(SAIDA_AJUSTE,null,0,SAIDA_AJUSTE)) as SAIDA_AJUSTE  '
              +', sum(DECODE(SAIDA_AJUSTE*PRECO1,null,0,SAIDA_AJUSTE*PRECO1)) as SAIDA_AJUSTE_VALOR  '

              +', sum(NVL(DEVOL_CLIENTE,0)+NVL(COMPRAS,0)+NVL(ENTRADA_AJUSTE,0))'
              +'  as ENTRADAS '

              +', sum( NVL(DEVOL_CLIENTE_VALOR,0)+NVL(COMPRAS_VALOR,0)+NVL(ENTRADA_AJUSTE*PRECO1,0)) '
              +'  as ENTRADAS_VALOR '

              +', sum(DECODE(VENDAS,NULL,0,VENDAS)+decode(SAIDA_AJUSTE,null,0,SAIDA_AJUSTE)) as SAIDAS '
              +', sum(DECODE(VENDAS_VALOR,NULL,0,VENDAS_VALOR)+decode(SAIDA_AJUSTE*PRECO1,null,0,SAIDA_AJUSTE*PRECO1)) as SAIDAS_VALOR '

              +'from '+mNomeView2+','+mNomeView
              +' where PDCODPRO=CODPRO ');
if Log_TipoLote=2 then
   Qr_For.sql.Add(' and CLNUMERO=GRADE ');

if not CB_SEMMOV.Checked then
   begin
   Qr_For.SQL.Add(' and (decode(VENDAS,null,0,VENDAS)+decode(DEVOL_CLIENTE,null,0,DEVOL_CLIENTE)'
                 +' +decode(COMPRAS,null,0,COMPRAS)+decode(ENTRADA_AJUSTE,null,0,ENTRADA_AJUSTE) '
                 +' +decode(ENTRADA_AJUSTE,null,0,ENTRADA_AJUSTE))>0 ');
   end;
Qr_For.sql.Add('Group by  PDNOME,PDUND,PDCODPRO ');
if Log_TipoLote=2 then
   Qr_For.SQL.add(',CLNUMERO');
if RG_ORDEM.ItemIndex=1 then
   Qr_for.Sql.add(' Order by PDCODPRO,GRADE')
else
   Qr_for.Sql.add(' Order by PDNOME,GRADE');

//Qr_For.Sql.SaveToFile('c:\SQL2.TXT');

try
   Qr_For.OPen;
except
   Qr_For.Sql.SaveToFile('c:\SQL.TXT');
   end;
mTotEnt:=0;
mTotSai:=0;
mTotEnt_valor:=0;
mTotSai_valor:=0;

mboolean:=true;
RLBand_cab.Borders.DrawLeft     :=mboolean;
RLBand_cab.Borders.DrawRight    :=mboolean;
RLBand_cab.Borders.DrawTop      :=mboolean;
RLBand_cab.Borders.DrawBottom   :=mboolean;
RLBand_cabgru.Borders.DrawLeft  :=mboolean;
RLBand_cabgru.Borders.DrawRight :=mboolean;
RLBand_cabgru.Borders.DrawBottom:=mboolean;

RLBand_detail.Borders.DrawLeft  :=mboolean;
RLBand_detail.Borders.DrawRight :=mboolean;

lbl_codpro.Borders.DrawRight    :=mboolean;
lbl_descricao.Borders.DrawRight :=mboolean;
lbl_und.Borders.DrawRight       :=mboolean;
lbl_entradas.Borders.DrawRight  :=mboolean;
lbl_saidas.Borders.DrawRight    :=mboolean;
lbl_saldo.Borders.DrawRight    :=mboolean;
lbl_entradas_vlr.Borders.DrawRight  :=mboolean;
lbl_saidas_vlr.Borders.DrawRight    :=mboolean;

edt_codpro.Borders.DrawRight    :=mboolean;
edt_descricao.Borders.DrawRight :=mboolean;
edt_und.Borders.DrawRight       :=mboolean;
edt_entradas.Borders.DrawRight  :=mboolean;
edt_saldo.Borders.DrawRight    :=mboolean;
edt_entradas_vlr.Borders.DrawRight  :=mboolean;
edt_saidas_vlr.Borders.DrawRight    :=mboolean;


lblrod_codpro.Borders.DrawRight    :=mboolean;
lblrod_descricao.Borders.DrawRight :=mboolean;
lblrod_und.Borders.DrawRight       :=mboolean;
lblrod_entradas.Borders.DrawRight  :=mboolean;
lblrod_saldo.Borders.DrawRight    :=mboolean;
lblrod_entradas_vlr.Borders.DrawRight  :=mboolean;
lblrod_saidas_vlr.Borders.DrawRight    :=mboolean;

edt_saidas.Borders.DrawRight    :=mboolean;
RLRodPag.Borders.DrawTop        :=mboolean;



if Qr_For.IsEmpty then
   fmensagem('Nada a Ser Impresso na Condição Solicitada!',0,['0'],0)
else
   RLReport1.PreviewModal;


if Trim(mnomeView)<>'' then
   begin
   DM1.Query2.Close;
   DM1.Query2.Sql.Clear;
   DM1.Query2.SQL.Add('drop view '+mnomeView);
   try
      DM1.Query2.ExecSQL;
   except
      end;
   end;
mNOmeView:='';

end;

procedure TFrm_ProEntxSai.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_ProEntxSai.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_ProEntxSai.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

tsRelatorio.Visible:=false;
RG_TIPOPED.Checked[1] := TRUE;

//for x:=0 to clbestoque.count -1 do clbestoque.Checked[x] := true;
//for x:=0 to CLBStatus.count -1  do CLBStatus.Checked[x]  := true;


RG_TIPOPED.Checked[1]:=true;

if flfilpad(0,'_PROENTXSAI','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPOPED',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMIDOC',[]) then
      CB_EmiDoc.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_QDEC_QTD',[]) then
      CB_QDEC_QTD.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_SEMMOV',[]) then
      CB_SEMMOV.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   END;


if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));

end;

procedure TFrm_ProEntxSai.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ProEntxSai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ProEntxSai.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      codpro.setfocus;
      end;

   end;
end;

procedure TFrm_ProEntxSai.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_ProEntxSai.CODPROMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProEntxSai.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProEntxSai.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);

if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      codfor.setfocus;
      end;
   end;

end;

procedure TFrm_ProEntxSai.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      CODFORExit(self);
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ProEntxSai.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProEntxSai.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_ProEntxSai.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProEntxSai.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_ProEntxSai.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_ProEntxSai.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if ValFloat(CODTIP.Text)<=0 then
   exit;
if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   BEGIN
   lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
   codtip.text := '';
   END
else
   begin
   fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_ProEntxSai.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_medtpro',key);
   if valfloat(CODTIP.Text)<>0 then
      CODTIPExit(self);
   CODTIP.text := '';
   key:=#0;
   end;


end;

procedure TFrm_ProEntxSai.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProEntxSai.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProEntxSai.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;

end;

procedure TFrm_ProEntxSai.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      CODGRUExit(self);
   CODGRU.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ProEntxSai.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProEntxSai.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProEntxSai.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   exit;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   BEGIN
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   END
else
   begin
   fmensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_ProEntxSai.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      CODCONExit(self);
   CODCON.text := '';
   key:=#0;
   end;


end;

procedure TFrm_ProEntxSai.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProEntxSai.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProEntxSai.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   exit;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   END
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_ProEntxSai.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      CODRAMExit(self);
   CODRAM.text := '';
   key:=#0;
   end;
end;

procedure TFrm_ProEntxSai.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProEntxSai.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProEntxSai.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_ProEntxSai.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_ProEntxSai.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_ProEntxSai.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_ProEntxSai.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_ProEntxSai.sb_SalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(0,'_PROENTXSAI','');
mcinst2:='';
fGravaPadroes(0,'CLBESTOQUE'          ,'itemindex' ,'_PROENTXSAI',mcinst2);


if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'CLBSTATUS'          ,'itemindex' ,'_PROENTXSAI',mcinst2);

mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'RG_TIPOPED'          ,'itemindex' ,'_PROENTXSAI',mcinst2);
fGravaPadroes(0,'CB_EMIDOC'      ,'checked'    ,'_PROENTXSAI',iif(CB_EmiDoc.Checked,'true','false'));
fGravaPadroes(0,'CB_QDEC_QTD'    ,'itemindex'  ,'_PROENTXSAI',IntToStr(CB_QDEC_QTD.ItemIndex));
fGravaPadroes(0,'CB_SEMMOV'      ,'checked'    ,'_PROENTXSAI',iif(CB_SEMMOV.Checked,'true','false'));




end;

function tFrm_ProEntxSai.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
begin

end;

function TFrm_ProEntxSai.FImprimeMod01(pTipo: Integer): Boolean;
begin

end;


function TFrm_ProEntxSai.FImprimeMod02_cota(pTipo: Integer): Boolean;
begin



end;

procedure TFrm_ProEntxSai.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_ProEntxSai.RL_RodapeBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_emitido.Caption:='Relatório emitido em '+formatDateTime(fdt2, date)+' as '+FormatDatetime('hh:nn:ss', time);

end;

procedure TFrm_ProEntxSai.Qr_ForCalcFields(DataSet: TDataSet);
begin
Qr_Forsaldo.AsFloat:=Qr_ForENTRADAS.AsFloat-Qr_ForSAIDAS.AsFloat;
Qr_Forsaldo_valor.AsFloat:=Qr_ForENTRADAS_valor.AsFloat-Qr_ForSAIDAS_valor.AsFloat;
end;

procedure TFrm_ProEntxSai.CODUSRExit(Sender: TObject);
begin
CODUSR.Text:=fdeixanum2(CODUSR.Text);
if Trim(CODUSR.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',CODUSR.Text) then
      begin
      lbx_codusr.Items.Add(FormatFloat('0000000',StrToFloat(CODUSR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODUSR.text := '';
      CODUSR.SetFocus;
      end
   else
      begin
      fmensagem('Televendas não Cadastrado!',0,['0'],0);
      CODUSR.text := '';
      CODUSR.SetFocus;
      end;
   end;

end;

procedure TFrm_ProEntxSai.CODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODUSR.Text:=fChamaUsr(0,'frm_PLdr',Key);
if trim(CODUSR.Text)<>'' then
   CODUSRExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ProEntxSai.lbx_codusrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr.ItemIndex>=0 then
      lbx_codusr.Items.Delete(lbx_codusr.ItemIndex);

end;

procedure TFrm_ProEntxSai.RLBand_detailBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTotEnt:=mTotEnt+Qr_ForENTRADAS.AsFloat;
mTotSai:=mTotSai+Qr_ForSAIDAS.AsFloat;

mTotEnt_valor:=mTotEnt_valor+Qr_ForENTRADAS_valor.AsFloat;
mTotSai_valor:=mTotSai_valor+Qr_ForSAIDAS_valor.AsFloat;

end;

procedure TFrm_ProEntxSai.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblRod_saidas.Caption:=FormatFloat(mcasqtd,mTotSai);
lblRod_entradas.Caption:=FormatFloat(mcasqtd,mTotEnt);
lblRod_saldo.Caption:=FormatFloat(mcasqtd,mTotEnt-mTotSai);

lblRod_saidas_vlr.Caption   :=FormatFloat(mcasqtd,mTotSai_valor);
lblRod_entradas_vlr.Caption :=FormatFloat(mcasqtd,mTotEnt_valor);
lblRod_saldo_vlr.Caption    :=FormatFloat(mcasqtd,mTotEnt_valor-mTotSai_valor);

mTotEnt:=0;
mTotSai:=0;
mTotEnt_valor:=0;
mTotSai_valor:=0;

end;


procedure TFrm_ProEntxSai.FormShow(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin
CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');  

end;

procedure TFrm_ProEntxSai.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

end.
