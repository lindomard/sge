unit S_SugCpr01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1, DB, DBTables,lerarq,S_For,func,
  S_Impres, ExtCtrls, jpeg, CheckLst, S_SelEmp
  ,s_lerarq_geral, ComCtrls;

type
  TFrm_SugCpr01 = class(TForm)
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    QTDDIAS: TEdit;
    Label4: TLabel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    CB_VDAATU: TCheckBox;
    CB_CUSATU: TCheckBox;
    Label6: TLabel;
    CASASD: TEdit;
    Label7: TLabel;
    CB_COMPRAS: TCheckBox;
    CLBNivel: TCheckListBox;
    Label12: TLabel;
    CB_PROSMOV: TCheckBox;
    CB_EmiDoc: TCheckBox;
    CB_PRINCIPAL: TCheckBox;
    Label15: TLabel;
    CLBEstoque: TCheckListBox;
    CB_ESTMIN: TCheckBox;
    cb_pcocus: TCheckBox;
    cb_pcoven: TCheckBox;
    btn_SalvaPadroes: TBitBtn;
    PC1: TPageControl;
    tsFiltro1: TTabSheet;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    MARCA: TEdit;
    lbx_marca: TListBox;
    OMITIR_MAR: TCheckBox;
    Tb_Vendas: TQuery;
    Tb_VendasQUANT: TFloatField;
    Tb_VendasCODPRO: TFloatField;
    Tb_VendasNOME: TStringField;
    Tb_VendasUND: TStringField;
    Tb_VendasEMBALAGEM: TFloatField;
    Tb_VendasPRECO: TFloatField;
    Tb_VendasPCUSTO: TFloatField;
    Tb_VendasESTOQUE: TFloatField;
    Tb_VendasENTPEN: TFloatField;
    Tb_VendasQTDDIAS: TFloatField;
    Tb_VendasperVda: TFloatField;
    Tb_VendasVALOR: TFloatField;
    Tb_VendasTOTCUS: TFloatField;
    Tb_VendasESTMIN: TFloatField;
    tsFiltro2: TTabSheet;
    Label10: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label11: TLabel;
    Label13: TLabel;
    TabSheet1: TTabSheet;
    Label14: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label16: TLabel;
    cb_ordem: TComboBox;
    Tb_Vendasmedia: TFloatField;
    Tb_Vendasdias_estoque: TFloatField;
    Tb_Vendasvlrvda: TFloatField;
    Tb_Vendasvlrcus: TFloatField;
    Tb_Vendassugestao: TFloatField;
    Tb_VendasCODFOR: TFloatField;
    Tb_VendasNOMFOR: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure Tb_VendasCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_PROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBNivelClick(Sender: TObject);
    procedure MARCAExit(Sender: TObject);
    procedure lbx_marcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_SalvaPadroesClick(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_RAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_GRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_TPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_CONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mlin,mpagina      : Integer;

    function fsugcpr01cab(ptipo: Integer): Boolean;

  public
    { Public declarations }
    form_Impres_SugCpr01: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  end;

var
  Frm_SugCpr01: TFrm_SugCpr01;
    msc01_casasqtd : String='0';
    codigo_for     : string;
    codigo_pro     : string;
    mnomeView: String;
    codfor_ant: real;

implementation

uses S_Pro, S_DM4, func_excecoes;

{$R *.dfm}

procedure TFrm_SugCpr01.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_SugCpr01.bbImprimirClick(Sender: TObject);
var
mpervda,mdifdatas: Real;
mtotund,mtotven,mtotcus,mlucro: Real;
mCampo_Qtd: String;
mAdicionandoCalculados: String;
begin

if valFloat(CASASD.Text)<1 then
   msc01_casasqtd:='###0'
else
   msc01_casasqtd:='###0.'+insere('0','0',StrToInt(CASASD.Text));

if Trim(MDT1.Text)='/  /' then
   begin
   FMensagem('Data Inicial, Campo Obrigatório!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;
if lbx_codfor.items.count<1 then
   begin
   if fmensagem('Quer realmente Emitir esta sugestçao de compra de todos os Fornecedores?',0,['1','2'],2)<>mrYes then
      exit;
   end;

if Trim(MDT2.Text)='/  /' then
   begin
   FMensagem('Data Final, Campo Obrigatório!',0,['0'],0);
   MDT2.SetFocus;
   exit;
   end;
if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
   begin
   FMensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
   MDT1.SetFocus;
    exit;
   end;
mdifdatas:=StrToDate(MDT2.Text)-StrtoDate(MDT1.Text);

mNomeView:=fProcTemp(22);

if CB_COMPRAS.Checked then
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';


   fInnerJoin3(1,'CADPF2','PF1CODEMP','PF2CODEMP','PF1LOTSEQ','PF2LOTSEQ','PF1CHAVE','PF2CHAVE');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADEST','CECODEMP','PF2CODEMP','CECODPRO','PF2CODPRO');

   if not CB_PRINCIPAL.Checked then
      begin
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CODPFOR','PFCODEMP','PF2CODEMP','PFCODPRO','PF2CODPRO');
      end;



   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');

   DM1.Query1.SQL.Add('select SUM(PF2QTDP) AS QUANT, '
                    +'     SUM((PF2QTDP*PF2PU)-PF2TOTDES) AS VALOR, '
                    +'     SUM((PF2QTDP*PF2PU)-PF2TOTDES) AS TOTCUS, '
                    +mudavp(FormatFloat('0.000',mdifdatas))+' as QTDDIAS, '
                    +'       NVL(TRIM(PF2NOMPRO),PDNOME)  AS NOME, '
                    +'       PF2CODPRO  AS CODPRO, '
                    +'       PDUND      AS UND, '
                    +'       PDEMBPAD   AS EMBALAGEM, '
                    +'       PDPRECO1   AS PRECO, '
                    +'       PDPRECOC   AS PCUSTO, '
                    +'       CESALDO    AS ESTOQUE, '
                    +'       PDESTMIN   AS ESTMIN, '
                    +'       CEENTPEN   AS ENTPEN '
                    +'       ,PDCODFOR AS CODFOR '
                    +'       ,case when nvl(PDCODFOR,0)=0 THEN ''00-SEM FORNECEDOR'' else  PDNOMFOR end AS NOMFOR '

                    +' from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +'  (PF1STATUS>0) and (PF1STATUS<>8)');


   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.add(' and PDNIVEL '+mcinst2);
   DM1.Query1.SQL.Add(' and PF1DATA>='+chr(39)+FormatDatetime(fdt2, StrtoDate(MDT1.Text))+chr(39)
                    +' and PF1DATA<='+chr(39)+FormatDateTime(fdt2, StrtoDate(MDT2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then DM1.Query1.SQL.Add(' and PDCODPRO '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' THEN
      begin
      if CB_PRINCIPAL.Checked then
         DM1.Query1.Sql.Add(' and PDCODFOR '+mcinst2)
      else
         DM1.Query1.Sql.Add(' and (PDCODFOR '+mcinst2+' OR PFCODFOR '+mcinst2+')');
      end;
   mcinst2:=fItensListBox(1,lbx_marca,OMITIR_MAR);
   if trim(mcinst2)<>'' then
    DM1.Query1.SQL.Add(' and PDMARCA '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
     DM1.Query1.Sql.Add(' and PDCODGRU '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
     DM1.Query1.Sql.Add(' and PDCODRAM '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
     DM1.Query1.Sql.Add(' and PDCODTIP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
     DM1.Query1.Sql.Add(' and PDCODCON '+mcinst2);



   mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and  '+mcinst2);


   DM1.Query1.SQL.Add(' group by PDNOME, '
                    +'        PF2CODPRO, '
                    +'        NVL(TRIM(PF2NOMPRO),PDNOME), '
                    +'        PDUND, '
                    +'        PDEMBPAD, '
                    +'        PDPRECO1, '
                    +'        PDPRECOC, '
                    +'        CESALDO, '
                    +'        PDESTMIN, '
                    +'        CEENTPEN '
                    +'       ,PDCODFOR '
                    +'       ,case when nvl(PDCODFOR,0)=0 THEN ''00-SEM FORNECEDOR'' else  PDNOMFOR end '

                    );

   if CB_PROSMOV.Checked then
      begin
      DM1.Query1.SQL.Add(' union ');
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);

      if not CB_PRINCIPAL.Checked then
         begin
         fInnerJoin(0,'CODPFOR','PFCODEMP','PDCODEMP','PFCODPRO','PDCODPRO');
         end;


      DM1.Query1.SQL.Add('select PDCODEMP-PDCODEMP AS QUANT, '
                    +'     PDCODEMP-PDCODEMP AS VALOR, '
                    +'     PDCODEMP-PDCODEMP AS TOTCUS, '
                    +mudavp(FormatFloat('0.000',mdifdatas))+' as QTDDIAS, '
                    +'       PDNOME     AS NOME, '
                    +'       PDCODPRO  AS CODPRO, '
                    +'       PDUND      AS UND, '
                    +'       PDEMBPAD   AS EMBALAGEM, '
                    +'       PDPRECO1   AS PRECO, '
                    +'       PDPRECOC   AS PCUSTO, '
                    +'       PDSALDO    AS ESTOQUE, '
                    +'       PDESTMIN   AS ESTMIN, '
                    +'       PDENTPEN   AS ENTPEN '
                    +'       ,PDCODFOR AS CODFOR '
                    +'       ,case when nvl(PDCODFOR,0)=0 THEN ''00-SEM FORNECEDOR'' else  PDNOMFOR end  AS NOMFOR '
                    );
      if not CB_PRINCIPAL.Checked then
         begin
         DM1.Query1.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')+' PDSTATUS<9 ');
         end
      else
         DM1.Query1.SQL.Add(' from CADPRO where PDSTATUS<9 ');

      mcinst:=' and ';
      mcinst2:=fItenstCheckListBox(0,CLBNivel);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.SQL.add(mcinst+' PDNIVEL '+mcinst2);
         mcinst:=' and ';
         end;
      mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.SQL.Add(mcinst+' PDCODPRO '+mcinst2);
         mcinst:=' and ';
         end;

       mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
       if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODGRU '+mcinst2);

       mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
       if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODRAM '+mcinst2);

       mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
       if trim(mcinst2)<>'' then
          DM1.Query1.Sql.Add(' and PDCODTIP '+mcinst2);

      mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODCON '+mcinst2);

      mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
      if trim(mcinst2)<>'' THEN
         begin
         if CB_PRINCIPAL.Checked then
            DM1.Query1.Sql.Add(' and PDCODFOR '+mcinst2)
         else
            DM1.Query1.Sql.Add(' and (PDCODFOR '+mcinst2+' OR PFCODFOR '+mcinst2+')');
         end;
      mcinst2:=fItensListBox(1,lbx_marca,OMITIR_MAR);
      if trim(mcinst2)<>'' then DM1.Query1.SQL.Add(' and PDMARCA '+mcinst2);

      end;
   try
      DM1.Query1.ExecSQL;
   except on e : exception do
      ex_erroSql_Novo(DM1.Query1,430,'func Erro:'+e.Message , mNomeView);
      end;
   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';


   fInnerJoin4(1,'CADP02','P1CODEMP','P2CODEMP','P1LOTSEQ','P2LOTSEQ','P1CHAVE','P2CHAVE','P1ORDEM','P2ORDEM');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin1(1,'CADPRO','PDCODPRO','P2CODPRO');

   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin1(1,'CADEST','CECODPRO','P2CODPRO');

   if not CB_PRINCIPAL.Checked then
      begin
      if pbanco=0 then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CODPFOR','PFCODEMP','P2CODEMP','PFCODPRO','P2CODPRO');
      end;



   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');

   mcampo_qtd:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst4:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);



   DM1.Query1.SQL.Add('select '+mCampo_Qtd+' AS QUANT, '
                    +'     SUM(P2TOTLIQ-P2DESCRAT) AS VALOR, '
                    +'      SUM(P2PCOCUS*'+mcinst4+') AS TOTCUS, '
                    +mudavp(FormatFloat('0.000',mdifdatas))+' as QTDDIAS, '
                    +'       PDNOME     AS NOME, '
                    +'       P2CODPRO   AS CODPRO, '
                    +'       PDUND      AS UND, '
                    +'       PDEMBPAD   AS EMBALAGEM, '
                    +'       PDPRECO1   AS PRECO, '
                    +'       PDPRECOC   AS PCUSTO, '
                    +'       CESALDO    AS ESTOQUE, '
                    +'       PDESTMIN   AS ESTMIN, '
                    +'       CEENTPEN   AS ENTPEN '
                    +'       ,PDCODFOR AS CODFOR '
                    +'       ,case when nvl(PDCODFOR,0)=0 THEN ''00-SEM FORNECEDOR'' else  PDNOMFOR end  AS NOMFOR '

                    +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +'  P1STATUS<'+mstatus_excluido+' ');

   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.add(' and PDNIVEL '+mcinst2);
   DM1.Query1.SQL.Add(' and P1DATDOC>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39)
                    +' and P1DATDOC<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   DM1.Query1.SQL.add(' and P1TIPO=1');
   if CB_EmiDoc.Checked then
     DM1.Query1.SQL.add(' and P1EMIDOC=1');

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then DM1.Query1.Sql.Add(' and PDCODPRO '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
     DM1.Query1.Sql.Add(' and PDCODGRU '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
     DM1.Query1.Sql.Add(' and PDCODRAM '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
     DM1.Query1.Sql.Add(' and PDCODTIP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
     DM1.Query1.Sql.Add(' and PDCODCON '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' THEN
      begin
      if CB_PRINCIPAL.Checked then
         DM1.Query1.Sql.Add(' and PDCODFOR '+mcinst2)
      else
         DM1.Query1.Sql.Add(' and (PDCODFOR '+mcinst2+' OR PFCODFOR '+mcinst2+')');
      end;

   mcinst2:=fItensListBox(1,lbx_marca,OMITIR_MAR);
   if trim(mcinst2)<>'' then DM1.Query1.SQL.Add(' and PDMARCA '+mcinst2);
   mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and  '+mcinst2);


   DM1.Query1.SQL.Add(' group by PDNOME, '
                    +'        P2CODPRO, '
                    +'        PDUND, '
                    +'        PDEMBPAD, '
                    +'        PDPRECO1, '
                    +'        PDPRECOC, '
                    +'        CESALDO, '
                    +'        CEENTPEN, '
                    +'        PDESTMIN '
                    +'       ,PDCODFOR '
                    +'       ,case when nvl(PDCODFOR,0)=0 THEN ''00-SEM FORNECEDOR'' else  PDNOMFOR end '

                    );

   if CB_PROSMOV.Checked then
      begin
      DM1.Query1.SQL.Add(' union ');
      la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      if not CB_PRINCIPAL.Checked then
         begin
         fInnerJoin(0,'CODPFOR','PFCODEMP','PDCODEMP','PFCODPRO','PDCODPRO');
         end;


      DM1.Query1.SQL.Add('select PDCODEMP-PDCODEMP AS QUANT, '
                    +'     PDCODEMP-PDCODEMP AS VALOR, '
                    +'     PDCODEMP-PDCODEMP AS TOTCUS, '
                    +mudavp(FormatFloat('0.000',mdifdatas))+' as QTDDIAS, '
                    +'       PDNOME     AS NOME, '
                    +'       PDCODPRO  AS CODPRO, '
                    +'       PDUND      AS UND, '
                    +'       PDEMBPAD   AS EMBALAGEM, '
                    +'       PDPRECO1   AS PRECO, '
                    +'       PDPRECOC   AS PCUSTO, '
                    +'       PDSALDO    AS ESTOQUE, '
                    +'       PDESTMIN   AS ESTMIN, '
                    +'       PDENTPEN   AS ENTPEN '
                    +'       ,PDCODFOR AS CODFOR '
                    +'       ,case when nvl(PDCODFOR,0)=0 THEN ''00-SEM FORNECEDOR'' else  PDNOMFOR end AS NOMFOR '

                    );

      if not CB_PRINCIPAL.Checked then
         begin
         DM1.Query1.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')+' PDSTATUS<9 ');
         end
      else
         DM1.Query1.SQL.Add(' from CADPRO where PDSTATUS<9 ');
      mcinst:=' and ';
      mcinst2:=fItenstCheckListBox(0,CLBNivel);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.SQL.add(mcinst+' PDNIVEL '+mcinst2);
         mcinst:=' and ';
         end;
      mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
      if trim(mcinst2)<>'' then
         begin
         DM1.Query1.SQL.Add(mcinst+' PDCODPRO '+mcinst2);
         mcinst:=' and ';
         end;

     mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
     if trim(mcinst2)<>'' then
       DM1.Query1.Sql.Add(' and PDCODGRU '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
     if trim(mcinst2)<>'' then
       DM1.Query1.Sql.Add(' and PDCODRAM '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
     if trim(mcinst2)<>'' then
       DM1.Query1.Sql.Add(' and PDCODTIP '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
     if trim(mcinst2)<>'' then
       DM1.Query1.Sql.Add(' and PDCODCON '+mcinst2);

      mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and  '+mcinst2);

      mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
      if trim(mcinst2)<>'' THEN
         begin
         if CB_PRINCIPAL.Checked then
            DM1.Query1.Sql.Add(' and PDCODFOR '+mcinst2)
         else
            DM1.Query1.Sql.Add(' and (PDCODFOR '+mcinst2+' OR PFCODFOR '+mcinst2+')');
         end;
      mcinst2:=fItensListBox(1,lbx_marca,OMITIR_MAR);
      if trim(mcinst2)<>'' then DM1.Query1.SQL.Add(' and PDMARCA '+mcinst2);

      end;


   try
      DM1.Query1.ExecSQL;
   except on e : exception do
      ex_erroSql_Novo(DM1.Query1,430,'func Erro:'+e.Message , mNomeView);
      end;
   end;
//DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

Tb_Vendas.Close;
Tb_Vendas.SQL.Clear;
Tb_Vendas.SQL.Add('Select sum(QUANT)      as QUANT '
                    +'    ,sum(VALOR)     as VALOR '
                    +'    ,sum(TOTCUS)    as TOTCUS '
                    +'    ,max(QTDDIAS)   as QTDDIAS '
                    +'    ,max(EMBALAGEM) as EMBALAGEM '
                    +'    ,max(PRECO)     as PRECO '
                    +'    ,max(PCUSTO)    as PCUSTO '
                    +'    ,max(ESTOQUE)   as ESTOQUE '
                    +'    ,max(ENTPEN)    as ENTPEN '
                    +'    ,max(ESTMIN)    AS ESTMIN '
                    +'    ,NOME '
                    +'    ,CODPRO '
                    +'    ,UND '
                    +'       ,max(CODFOR) AS CODFOR '
                    +'       ,max(NOMFOR) AS NOMFOR '

                    +' from '+mNomeView
                    +' group by NOME,CODPRO,UND ');

// ACICIONANDO OS CAMPOS CALCULADOS


mAdicionandoCalculados:='Select tab.*, '
                       +'case when QUANT=0 OR QTDDIAS=0 then 0 else '
                       +' (QUANT/QTDDIAS)  end as media_diaria '
                       + ' from ( ' + Tb_Vendas.SQL.text
                       +' ) tab ';
tb_vendas.SQL.Text:='Select tab2.*, '
                       +' case when ESTOQUE<=0 or media_diaria<=0 then 0 '
                       +' else round( (ESTOQUE /   (media_diaria*30) ), 0) end as DIAS_ESTOQUE '
                       +', case when ESTOQUE >=  media_diaria * '+fdeixanum(QTDDIAS.Text)+'  then 0 '
                       +' else round( (media_diaria * '+fdeixanum(QTDDIAS.Text)+'),0) - ESTOQUE end as sugestao_temp '
                       +',round( (media_diaria * 30),0) as media ';

if CB_VDAATU.Checked then
   Tb_Vendas.sql.add(',QUANT * PRECO as vlrvda ')
else
   Tb_Vendas.sql.add(',VALOR as vlrvda ');
if CB_VDAATU.Checked then
   Tb_Vendas.sql.add(',QUANT * PCUSTO as vlrcus ')
else
   Tb_Vendas.sql.add(',TOTCUS as vlrcus ');

Tb_Vendas.SQL.add(' from ('+mAdicionandoCalculados+' ) tab2 ');




Tb_Vendas.SQL.text:=' select tab3.*, '
+iif(CB_ESTMIN.Checked=true,' sugestao_temp as sugestao '
,' case when sugestao_temp+estoque < estmin then ESTMIN - (SUGESTAO_TEMP-ESTOQUE) '
+' else sugestao_temp end as sugestao ')
+' from ( '+tb_vendas.sql.text +') tab3 ';

Tb_vendas.sql.add(' order by NOMFOR,CODFOR,  ');

if cb_ordem.ItemIndex=1 then
   Tb_vendas.sql.add(' CODPRO ')
else if cb_ordem.ItemIndex=2 then
   Tb_vendas.sql.add('  media ')
else if cb_ordem.ItemIndex=3 then
   Tb_vendas.sql.add(' media desc ')
else if cb_ordem.ItemIndex=4 then
   Tb_vendas.sql.add('  sugestao')
else if cb_ordem.ItemIndex=5 then
   Tb_vendas.sql.add('  sugestao desc ')
else
   Tb_vendas.sql.add('  nome ');


// TERMINO
try
   Tb_Vendas.Open;
except on e : exception do
   ex_erroSql_Novo(tb_vendas,717,'func Erro:'+e.Message ,'CADEST');
   end;

if Tb_Vendas.Eof then
   begin
   FMensagem('Nada a Ser Impresso!',0,['0'],0);
   exit;
   end;
mpagina:=0;
mlin:=0;
testeform := TFrm_SugCpr01(FindGlobalComponent('form_Impres_SugCpr01'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_SugCpr01);

form_Impres_SugCpr01.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mtotund:=0;
mtotven:=0;
mtotcus:=0;
mlucro :=0;
codfor_ant:=-1;

While not Tb_Vendas.Eof do
   begin
   if (mlin=0) or (codfor_ant<>tb_vendasCODFOR.AsFloat)  then
      begin
      if codfor_ant<>-1 then
         begin
         mlin:=mlin+1;
         form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,insere('-','-',136),mreduz);
         end;
      codfor_ant:=tb_vendasCODFOR.AsFloat;
      fsugcpr01cab(0);
      end;
   mlin:=mlin+1;
   mtotund:=mtotund+Tb_VendasQUANT.Value;
   mtotven:=mtotven+Tb_Vendasvlrvda.Value;
   mtotcus:=mtotcus+Tb_Vendasvlrcus.Value;
   mpervda:=0;
   form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,insere(Tb_VendasCODPRO.AsString,' ',11)+' '
                           +insere2(Tb_VendasNOME.Value,' ',30)+' '
                           +insere2(Tb_VendasUND.Value, ' ',03)+' '
                           +'[_____] '
                           +insere(FormatFloat(msc01_casasqtd,Tb_VendasEMBALAGEM.Value),' ',6)
                           +insere(FormatFloat(msc01_casasqtd,Tb_Vendassugestao.Value),' ',8)
                           +insere(FormatFloat(msc01_casasqtd,Tb_VendasESTOQUE.Value),' ',8)
                           +insere(FormatFloat(msc01_casasqtd,Tb_Vendasmedia.Value),' ',8)
                           +insere(FormatFloat(msc01_casasqtd,Tb_VendasQUANT.Value),' ',8)
                           +insere(FormatFloat(msc01_casasqtd,Tb_Vendasdias_estoque.Value),' ',8)
                           +insere(FormatFloat(msc01_casasqtd,Tb_VendasENTPEN.Value),' ',9)
                           +insere(FormatFloat(mcasas, mpervda),' ',8)
                           +insere(FormatFloat(mcasas,iif(cb_pcocus.Checked,Tb_VendasPCUSTO.Value,0)),' ',09)
                           +insere(FormatFloat(mcasas,iif(cb_pcocus.Checked,Tb_VendasPRECO.Value,0)),' ',09),mreduz);
   Tb_Vendas.Next;
   if Tb_Vendas.Eof then
      begin
      mlin:=mlin+1;
      form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,insere('-','-',136),mreduz);
      if mlin>54 then
         begin
//         form_Impres_SugCpr01.RDprint1.Novapagina;
         fsugcpr01cab(0);
         end;
      mlin:=mlin+1;
      form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,insere2('Totalizacoes do Periodo=====>> ',' ',32)
                              +insere2('Unidades Vendidas','.',20)+':'
                              +insere(FormatFloat(mcasqtd, mtotund),' ',15),mnormal);
      mlin:=mlin+1;
      form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,insere2(' ',' ',32)
                              +insere2('Valor de Venda','.',20)+':'
                              +insere(FormatFloat(mcasas, mtotven),' ',15),mnormal);
      mlin:=mlin+1;
      form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,insere2(' ',' ',32)
                              +insere2('Valor de Custo','.',20)+':'
                              +insere(FormatFloat(mcasas, mtotcus),' ',15),mnormal);
      mtotund:=mtotven-mtotcus;
      if (mtotund=0) or (mtotven=0) then
         mpervda:=0
      else
         begin
         try
            mpervda:=(mtotund*100)/mtotven;
         except
            mpervda:=0;
            end;
         end;
      mlin:=mlin+1;
      form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,insere2(' ',' ',32)
                              +insere2('Valor do lucro','.',20)+':'
                              +insere(FormatFloat(mcasas, mtotund),' ',15)+' .. '+Formatfloat(mcasas,mpervda)+'%',mnormal);
      mlin:=mlin+1;
      form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,insere('Fim.','-',136),mreduz);
      mlin:=mlin+1;
      form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,'Relatorio Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatdateTime(fhr, time),mreduz);
      if form_Impres_SugCpr01.RDprint1.Setup then form_Impres_SugCpr01.RDprint1.Fechar;
      form_Impres_SugCpr01.Free;
      form_Impres_SugCpr01:=nil;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,insere('Continua...','-',136),mreduz);
//      form_Impres_SugCpr01.RDprint1.Novapagina;
      mlin:=0;
      fsugcpr01cab(0);

      end;

{


057029 12345678901234567890123456789012345 123 [_____] 123456 zzz.zzz zzz.zzz zzz.zzz zzz.zzz zzz.zzz  zzz.zzz  zzz.zzzz.zzz,99zz.zz9,99
                                                       Caixa   Sugest Estoque Media M  Vendas estoque  Compras    %       Preco    Preco
Codigo Descricao                           und         Padrao  Compra  Atual   Vendas Periodo p/dias     Pend.  Vendas    Custo    Venda
057029 12345678901234567890123456789012345 123 [_____] 123456 zzz.zzz zzz.zzz zzz.zzz zzz.zzz zzz.zzz  zzz.zzz  zzz.zzzz.zzz,99zz.zz9,99
}
   end;

end;

procedure TFrm_SugCpr01.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_SugCpr01.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_SugCpr01.FormCreate(Sender: TObject);
var
mqtdcasas: Integer;
x: Integer;
mconta: Boolean;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
mconta:=False;
mqtdcasas:=0;
for x:=1 to length(mcasqtd) do
   begin
   if mconta then
      mqtdcasas:=mqtdcasas+1
   else if mcasqtd[x] in ['.'] then
      mconta:=True;
   end;
//CASASD.Text:=InttoStr(mqtdcasas);
MDT1.Text:='01/'+FormatDateTime('mm/yyyy',date-30);

MDT2.Text:=FormatDateTime(fdt2, fdatafinal(0,StrToDate(MDT1.Text)));

if flfilpad(0,'_SUGCPR01','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_COMPRAS',[]) then
    CB_COMPRAS.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VDAATU',[]) then
    CB_VDAATU.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CUSATU',[]) then
    CB_CUSATU.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PROSMOV',[]) then
    CB_PROSMOV.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ESTMIN',[]) then
    CB_ESTMIN.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMIDOC',[]) then
    CB_EmiDoc.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PCOVEN',[]) then
    cb_pcoven.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PCOCUS',[]) then
    cb_pcocus.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
  end;
end;

procedure TFrm_SugCpr01.CODFORExit(Sender: TObject);
begin

if Trim(CODFOR.Text)='' then
   CODFOR.Text:=''
else
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      FMensagem('Vendedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end
   else
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
   end;
end;

procedure TFrm_SugCpr01.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.AsFloat)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
   CODFOR.text := '';
   key:=#0;
   end;

end;

function TFrm_SugCpr01.fsugcpr01cab(ptipo: Integer): Boolean;
begin


mpagina:=mpagina+1;
if mpagina>1 then
   form_Impres_SugCpr01.RDprint1.Novapagina;

form_Impres_SugCpr01.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO_CAB.Value,mreduz);
form_Impres_SugCpr01.RDPrint1.ImpF(01,120,'Data: '+FormatDateTime(fdt2, pdatasis),mreduz);
form_Impres_SugCpr01.RDprint1.ImpF(02,01,'Sugestão de Compras para '+QTDDIAS.Text+' dia'+iif(ValFloat(QTDDIAS.Text)>1,'s','')+' - '+fperiodo(0,MDT1.Text,MDT2.Text)+'.',mreduz);
form_Impres_SugCpr01.RDprint1.ImpF(02,120,'Pagina:     '+FormatFloat('0000',mpagina),mreduz);
form_Impres_SugCpr01.RDprint1.ImpF(03,01,insere('-','-',136),mreduz);
mlin:=3;

if lbx_codfor.Count>0 then
   FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
if lbx_marca.Count>0 then
   FImprimeTitulo('Marca',lbx_marca,OMITIR_MAR);
if lbx_codpro.Count>0 then
   FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);


   flcadfor(1,0,floattostr(codfor_ant));

   mlin:=mlin+1;
   form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,'Fornecedor...: '+FormatFloat('00000',DM1.Tb_ForFCODFOR.Value)+' '+DM1.Tb_ForFRAZAO.Value,mreduz);
   form_Impres_SugCpr01.RDprint1.ImpF(mlin,70,'Telefone.: '+DM1.Tb_ForFFONE.Value,mreduz);
   mlin:=mlin+1;
   form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,'Representante: '+DM1.Tb_ForFCONT01.Value,mreduz);
   form_Impres_SugCpr01.RDprint1.ImpF(mlin,70,'Telefone.: '+DM1.Tb_ForFFONEC01.Value,mreduz);

mlin:=mlin+1;
form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,'                                                       Caixa   Sugest Estoque Media M  Vendas estoque  Compras    %       Preco    Preco',mreduz);
mlin:=mlin+1;
form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,'Codigo      Descricao                      und         Padrao  Compra  Atual   Vendas Periodo p/dias     Pend.  Vendas    Custo    Venda',mreduz);
result:=True;
end;
procedure TFrm_SugCpr01.Tb_VendasCalcFields(DataSet: TDataSet);
{var
mmeddia: Real;
}
begin
{
try
   mmeddia:=Tb_VendasQUANT.Value/Tb_VendasQTDDIAS.Value;
except
   mmeddia:=0;
   end;
Tb_Vendasmedia.Value       :=mmeddia*30;
if (Tb_VendasESTOQUE.Value<=0) or (Tb_Vendasmedia.AsFloat=0) then
   Tb_Vendasdias_estoque.Value:=0
else
   begin
   Try
      Tb_Vendasdias_estoque.Value:=Tb_VendasESTOQUE.Value/mmeddia;
   except
      Tb_Vendasdias_estoque.Value:=0;
      end;
   end;
Tb_Vendassugestao.Value:=mmeddia*ValFloat(QTDDIAS.Text);
if Tb_VendasESTOQUE.Value>=Tb_Vendassugestao.Value then
   Tb_Vendassugestao.Value:=0
else
   Tb_Vendassugestao.Value:=Tb_Vendassugestao.Value-Tb_VendasESTOQUE.Value;
IF CB_ESTMIN.Checked then
   begin
   if (Tb_Vendassugestao.AsFloat+Tb_VendasESTOQUE.AsFloat) < Tb_VendasESTMIN.AsFloat then
      Tb_Vendassugestao.AsFloat:=Tb_VendasESTMIN.AsFloat-(Tb_Vendassugestao.AsFloat+Tb_VendasESTOQUE.AsFloat);
   end;
if CB_VDAATU.Checked then
   Tb_Vendasvlrvda.Value:=Tb_VendasQUANT.Value*Tb_VendasPRECO.Value
else
   Tb_Vendasvlrvda.Value:=Tb_VendasVALOR.Value;
if CB_VDAATU.Checked then
   Tb_Vendasvlrcus.Value:=Tb_VendasQUANT.Value*Tb_VendasPCUSTO.Value
else
   Tb_Vendasvlrcus.Value:=Tb_VendasTOTCUS.Value;
 }
end;

procedure TFrm_SugCpr01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
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

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_SugCpr01.CODFORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_SugCpr01.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_SugCpr01.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;


procedure TFrm_SugCpr01.CODPROExit(Sender: TObject);
begin
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      FMensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end else
      begin
      Lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;

end;

procedure TFrm_SugCpr01.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_SubCpr01',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_SubCpr01',key);
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                 +' - '+DM1.Tb_ProPDNOME.Value);
      codpro.text := '';

      key:=#0;
      end;
   end;

end;

procedure TFrm_SugCpr01.CODPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_SugCpr01.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_SugCpr01.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_SugCpr01.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

function Tfrm_SugCpr01.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      mlin:=mlin+1;
      form_Impres_SugCpr01.RDprint1.ImpF(mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;
end;

procedure TFrm_SugCpr01.MARCAExit(Sender: TObject);
begin
if Trim(MARCA.Text)='' then
   MARCA.Text:=''
else
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   MARCA.Text:=fRetAspas(MARCA.Text);
   DM1.Query2.SQL.Add('Select PDMARCA from CADPRO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PDMARCA like '+chr(39)+MARCA.Text+'%'+chr(39));
   DM1.Query2.Open;
   if DM1.Query2.IsEmpty then
      begin
      fmensagem('Marca nao Encontrada!',0,['0'],0);
      MARCA.SetFocus;
      end
   else
      begin
      lbx_marca.Items.Add(DM1.Query2.Fields[0].AsString);

      MARCA.text := '';
      MARCA.SetFocus;
      end;
   end;

end;

procedure TFrm_SugCpr01.lbx_marcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_marca.ItemIndex>=0 then
      lbx_marca.Items.Delete(lbx_marca.ItemIndex);

end;

procedure TFrm_SugCpr01.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_SugCpr01.FormShow(Sender: TObject);
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

procedure TFrm_SugCpr01.btn_SalvaPadroesClick(Sender: TObject);
begin
fDeletaPadroes(0,'_SUGCPR01','');
fGravaPadroes(0,'CB_COMPRAS'  ,'checked'   ,'_SUGCPR01',iif(CB_COMPRAS.Checked,'true','false'));
fGravaPadroes(0,'CB_VDAATU'   ,'checked'   ,'_SUGCPR01',iif(CB_VDAATU.Checked,'true','false'));
fGravaPadroes(0,'CB_CUSATU'   ,'checked'   ,'_SUGCPR01',iif(CB_CUSATU.Checked,'true','false'));
fGravaPadroes(0,'CB_PROSMOV'  ,'checked'   ,'_SUGCPR01',iif(CB_PROSMOV.Checked,'true','false'));
fGravaPadroes(0,'CB_ESTMIN'   ,'checked'   ,'_SUGCPR01',iif(CB_ESTMIN.Checked,'true','false'));
fGravaPadroes(0,'CB_EMIDOC'   ,'checked'   ,'_SUGCPR01',iif(CB_EmiDoc.Checked,'true','false'));
fGravaPadroes(0,'CB_PCOVEN'   ,'checked'   ,'_SUGCPR01',iif(cb_pcoven.Checked,'true','false'));
fGravaPadroes(0,'CB_PCOCUS'   ,'checked'   ,'_SUGCPR01',iif(cb_pcocus.Checked,'true','false'));
end;

procedure TFrm_SugCpr01.CODTIPExit(Sender: TObject);
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

procedure TFrm_SugCpr01.CODTIPKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_SugCpr01.CODTIPMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';

end;

procedure TFrm_SugCpr01.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codtip.ItemIndex>=0 then
    lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);
end;

procedure TFrm_SugCpr01.CODGRUExit(Sender: TObject);
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

procedure TFrm_SugCpr01.CODGRUKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_SugCpr01.CODGRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_SugCpr01.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codgru.ItemIndex>=0 then
    lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);
end;

procedure TFrm_SugCpr01.CODRAMExit(Sender: TObject);
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

procedure TFrm_SugCpr01.CODRAMKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_SugCpr01.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_SugCpr01.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_SugCpr01.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_SugCpr01.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_TPRO.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_SugCpr01.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codram.ItemIndex>=0 then
    lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_SugCpr01.CODCONExit(Sender: TObject);
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

procedure TFrm_SugCpr01.CODCONKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_SugCpr01.CODCONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';

end;

procedure TFrm_SugCpr01.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_SugCpr01.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codcon.ItemIndex>=0 then
    lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

end.
