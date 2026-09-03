unit S_Demonstativo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ToolEdit, Mask, Buttons, Grids, DBGrids, DB,
  DBTables, RLReport, RLFilters, RLXLSFilter, RLRichFilter, RLPDFFilter,
  CurrEdit, ComCtrls, S_ComRV, S_SelEmp;

type
  Tfrm_demonstrativo = class(TForm)
    Qr_Comis: TQuery;
    Src_Comis: TDataSource;
    Qr_ComisVALTIT: TFloatField;
    Qr_ComisTOTCOM: TFloatField;
    Qr_ComisTOTPARC: TFloatField;
    Qr_ComisCODEMP: TFloatField;
    Qr_ComisVLR_ENTRADA: TFloatField;
    Qr_ComisVLR_PARC01: TFloatField;
    Qr_ComisVLR_PARC02: TFloatField;
    Qr_ComisVLR_PARC03: TFloatField;
    Qr_ComisVLR_PARC04: TFloatField;
    Qr_ComisVLR_PARC05: TFloatField;
    Qr_ComisVLR_PARC06: TFloatField;
    Qr_ComisVLR_PARC07: TFloatField;
    Qr_ComisVLR_PARC08: TFloatField;
    Qr_ComisVLR_PARC09: TFloatField;
    Qr_ComisVLR_PARC10: TFloatField;
    Qr_ComisVLR_PARC11: TFloatField;
    Qr_ComisCOMIS_ENT: TFloatField;
    Qr_ComisCOMIS_P01: TFloatField;
    Qr_ComisCOMIS_P02: TFloatField;
    Qr_ComisCOMIS_P03: TFloatField;
    Qr_ComisCOMIS_P04: TFloatField;
    Qr_ComisCOMIS_P05: TFloatField;
    Qr_ComisCOMIS_P06: TFloatField;
    Qr_ComisCOMIS_P07: TFloatField;
    Qr_ComisCOMIS_P08: TFloatField;
    Qr_ComisCOMIS_P09: TFloatField;
    Qr_ComisCOMIS_P10: TFloatField;
    Qr_ComisCOMIS_P11: TFloatField;
    Qr_ComisLOTCOM_ENT: TFloatField;
    Qr_ComisLOTCOM_P01: TFloatField;
    Qr_ComisLOTCOM_P02: TFloatField;
    Qr_ComisLOTCOM_P03: TFloatField;
    Qr_ComisLOTCOM_P04: TFloatField;
    Qr_ComisLOTCOM_P05: TFloatField;
    Qr_ComisLOTCOM_P06: TFloatField;
    Qr_ComisLOTCOM_P07: TFloatField;
    Qr_ComisLOTCOM_P08: TFloatField;
    Qr_ComisLOTCOM_P09: TFloatField;
    Qr_ComisLOTCOM_P10: TFloatField;
    Qr_ComisLOTCOM_P11: TFloatField;
    Qr_ComisCODCLI: TFloatField;
    Qr_ComisCODVEN: TFloatField;
    Qr_ComisNUMNF: TFloatField;
    Qr_ComisDATANF: TDateTimeField;
    Qr_ComisCHAVEPED: TFloatField;
    Qr_ComisORDEMPED: TFloatField;
    Qr_ComisCRAZAO: TStringField;
    Qr_ComisCCIDADE: TStringField;
    Qr_ComisCUF: TStringField;
    Qr_Comisperc_comis: TFloatField;
    Qr_Comisvlrparcelado: TFloatField;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    Qr_ComisSEL_ENT: TStringField;
    Qr_ComisSEL_P01: TStringField;
    Qr_ComisSEL_P02: TStringField;
    Qr_ComisSEL_P03: TStringField;
    Qr_ComisSEL_P04: TStringField;
    Qr_ComisSEL_P05: TStringField;
    Qr_ComisSEL_P06: TStringField;
    Qr_ComisSEL_P07: TStringField;
    Qr_ComisSEL_P08: TStringField;
    Qr_ComisSEL_P09: TStringField;
    Qr_ComisSEL_P10: TStringField;
    Qr_ComisSEL_P11: TStringField;
    U_Comis: TUpdateSQL;
    Qr_Comistotalpacela: TIntegerField;
    PageControl1: TPageControl;
    ts_filtros: TTabSheet;
    pnl_demonstrativo: TPanel;
    btn_relcomissao: TBitBtn;
    BtnSair: TBitBtn;
    BtnImprimir: TBitBtn;
    GroupBox2: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    parc1: TStaticText;
    parc2: TStaticText;
    parc3: TStaticText;
    parc4: TStaticText;
    parc5: TStaticText;
    parc6: TStaticText;
    StaticText11: TStaticText;
    st_vlrtotal: TStaticText;
    st_vlrentrada: TStaticText;
    st_vlrparcelado: TStaticText;
    st_vlrcomissao: TStaticText;
    st_vlrparcela1: TStaticText;
    st_vlrparcela2: TStaticText;
    st_vlrparcela3: TStaticText;
    st_vlrparcela4: TStaticText;
    st_vlrparcela5: TStaticText;
    st_vlrparcela6: TStaticText;
    st_vlrtotalcomissao: TStaticText;
    DBGrid1: TDBGrid;
    ts_relatorio: TTabSheet;
    rl_comissao: TRLReport;
    RLBand2: TRLBand;
    lbl_total: TRLLabel;
    lbl_entrada: TRLLabel;
    lbl_parcelamento: TRLLabel;
    lbl_perc: TRLLabel;
    lbl_comissaoent: TRLLabel;
    lbl_qtde: TRLLabel;
    lbl_parcela1: TRLLabel;
    lbl_parcela2: TRLLabel;
    lbl_parcela3: TRLLabel;
    lbl_parcela6: TRLLabel;
    lbl_parcela5: TRLLabel;
    lbl_parcela4: TRLLabel;
    lbl_comissao: TRLLabel;
    lbl_codigo: TRLLabel;
    lbl_nome: TRLLabel;
    lbl_pedido: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    tot_perc: TRLLabel;
    RLLabel10: TRLLabel;
    tot_qtde: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    st_totalizacao: TRLLabel;
    st_entrada: TRLLabel;
    st_parcelado: TRLLabel;
    st_comissaoent: TRLLabel;
    st_parcela1: TRLLabel;
    st_parcela2: TRLLabel;
    st_parcela3: TRLLabel;
    st_parcela4: TRLLabel;
    st_parcela5: TRLLabel;
    st_parcela6: TRLLabel;
    st_totalcomissao: TRLLabel;
    RLBand6: TRLBand;
    RLLabel5: TRLLabel;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel4: TRLLabel;
    rl_vendedor: TRLLabel;
    rl_periodo: TRLLabel;
    rlb_recibo: TRLBand;
    rl_recebi: TRLLabel;
    RLLabel19: TRLLabel;
    lbl_nomevendedor: TRLLabel;
    rl_valorparc6: TRLLabel;
    rl_parcela6: TRLLabel;
    rl_parcela5: TRLLabel;
    rl_valorparc5: TRLLabel;
    rl_valorparc4: TRLLabel;
    rl_parcela4: TRLLabel;
    rl_parcela3: TRLLabel;
    rl_valorparc3: TRLLabel;
    rl_valorparc2: TRLLabel;
    rl_parcela2: TRLLabel;
    rl_parcela1: TRLLabel;
    rl_valorparc1: TRLLabel;
    rank_nome: TRLMemo;
    rank_valor: TRLMemo;
    rank_Perc: TRLMemo;
    NOMEVEN: TEdit;
    DATAIN: TDateEdit;
    chk_comissao: TCheckBox;
    DATAFIN: TDateEdit;
    edtComissao: TCurrencyEdit;
    bbCalcular: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    RLLabel11: TRLLabel;
    CODVEN: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSairClick(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure DATAINExit(Sender: TObject);
    procedure DATAFINExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbCalcularClick(Sender: TObject);
    procedure Qr_ComisCalcFields(DataSet: TDataSet);
    procedure BtnImprimirClick(Sender: TObject);
    procedure rl_comissaoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_relcomissaoClick(Sender: TObject);
    procedure RLDBText5BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText7BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText8BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText9BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText10BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText11BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText12BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure chk_comissaoClick(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlb_reciboBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fVerificaParcela(pNumParcela: Integer): Boolean;
    function fDispararDuplicata: Boolean;
  public
    form_ComRv_Demo: TFrm_ComRV;
    Form_SelEmp: TFrm_SelEmp;
    { Public declarations }
  end;

var
  frm_demonstrativo : Tfrm_demonstrativo;
  mNomeView1        : String;
  vlrTotal          : Real = 0;
  vlrEntrada        : Real = 0;
  vlrParcelado      : Real = 0;
  vlrComissao       : Real = 0;
  vlrParcela1       : Real = 0;
  vlrParcela2       : Real = 0;
  vlrParcela3       : Real = 0;
  vlrParcela4       : Real = 0;
  vlrParcela5       : Real = 0;
  vlrParcela6       : Real = 0;
  vlrTotalComissao  : Real = 0;
  vlrQtde           : Real = 0;
  xComisVend        : Real = 0;
  vlr_totger        : Real = 0;

implementation

uses S_DM1, Func, lerarq, func_excecoes;

{$R *.dfm}

procedure Tfrm_demonstrativo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if mNomeView1<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add(' Drop view '+mNomeView1);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.sql.savetofile(mpastatemp +'sql.txt');
      end;
   end;

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
   
end;

procedure Tfrm_demonstrativo.BtnSairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_demonstrativo.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      NOMEVEN.Text := DM1.Query1.Fields[0].AsString;
      if flqr1('VCOMIS','V','CADVEN','N','VCODVEN',CODVEN.Text) then
         xComisVend := DM1.Query1.Fields[0].AsFloat;
      end
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN.Text  := '';
      NOMEVEN.Text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end
else
   begin
   CODVEN.Clear;
   NOMEVEN.Clear;
   end;
end;

procedure Tfrm_demonstrativo.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_RelVendaComis',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure Tfrm_demonstrativo.DATAINExit(Sender: TObject);
begin
   if Trim(DATAIN.Text) <> '/  /' then
      DATAIN.Text := FormatDateTime('DD/MM/YYYY',DATAIN.Date)
end;

procedure Tfrm_demonstrativo.DATAFINExit(Sender: TObject);
begin
   if (Trim(DATAFIN.Text) <> '/  /') then begin
      DATAFIN.Text := FormatDateTime('DD/MM/YYYY',DATAFIN.Date);

      if DATAIN.Date > DATAFIN.Date then begin
         fmensagem('Data Inicial maior que a Data Final!',0,['0'],0);
         DATAIN.SetFocus;
         Exit;
      end;
   end;
end;

procedure Tfrm_demonstrativo.FormShow(Sender: TObject);
begin
   LimpaEdits(Self);

   if not chk_comissao.Checked then begin
      edtComissao.value    := 0;
      edtComissao.Enabled  := False;
   end;
   
if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   end
else
   begin
   CODVEN.Enabled    :=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;

if CODVEN.Enabled then
   CODVEN.SetFocus
else
  DATAIN.SetFocus;

end;

procedure Tfrm_demonstrativo.FormCreate(Sender: TObject);
begin
Height := 555;
Width  := 796;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
Qr_ComisVALTIT.DisplayFormat       := mcasas;
Qr_ComisVLR_ENTRADA.DisplayFormat  := mcasas;
Qr_Comisvlrparcelado.DisplayFormat := mcasas;
Qr_Comisperc_comis.DisplayFormat   := mcasas;
Qr_ComisCOMIS_ENT.DisplayFormat    := mcasas;
Qr_Comistotalpacela.DisplayFormat  := mcasas;
Qr_ComisCOMIS_P01.DisplayFormat    := mcasas;
Qr_ComisCOMIS_P02.DisplayFormat    := mcasas;
Qr_ComisCOMIS_P03.DisplayFormat    := mcasas;
Qr_ComisCOMIS_P04.DisplayFormat    := mcasas;
Qr_ComisCOMIS_P05.DisplayFormat    := mcasas;
Qr_ComisCOMIS_P06.DisplayFormat    := mcasas;

end;

procedure Tfrm_demonstrativo.bbCalcularClick(Sender: TObject);
var
  xCont      : Integer;
  xData_Venc : TDate;
  xCont2     : Integer;
begin
if Trim(DATAIN.Text) = '/  /' then
  begin
  fmensagem('Favor informar um Período para Calculo de Comissões!',0,['0'],0);
  DATAIN.SetFocus;
  Exit;
  end;
xCont := 0;
if Trim(CODVEN.Text) = '' then
  begin
  NOMEVEN.Clear;
  CODVEN.Clear;
end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if trim(mNomeView1)='' then
  mNomeView1:=fProcTemp(22);

fInnerJoin4(1,'CADP01','P1CODEMP','P1VCODEMP','P1LOTSEQ','P1VLOTSEQ','P1CHAVE','P1VCHAVE'
             ,'P1ORDEM','P1VORDEM');

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(' create or replace view '+mNomeView1+' AS '
                  +' select P1TOTALL AS VALTIT '
                  +'       ,P1COMIS AS TOTCOM '
                  +'       ,P1VSEQ AS CRQTDPARC, P1CODCLI AS CRCODCLI, P1CODVEN AS CRCODVEN '
                  +'       ,P1NUMNF AS CRNUMERO, P1DATANF AS CRDTEMIS '
                  +'       ,P1CHAVE AS CRNPED,P1ORDEM AS CRORDEM,P1CODEMP AS CRCODEMP,0 AS CRSTATUS, 0 AS CRDUP '
                  +'       ,DECODE(P1VSEQ,0,P1VVALOR,1,P1VVALOR,0) AS ENTRADA '
                  +'       ,DECODE(P1VSEQ,2,P1VVALOR,0) AS PARCELA01 '
                  +'       ,DECODE(P1VSEQ,3,P1VVALOR,0) AS PARCELA02 '
                  +'       ,DECODE(P1VSEQ,4,P1VVALOR,0) AS PARCELA03 '
                  +'       ,DECODE(P1VSEQ,5,P1VVALOR,0) AS PARCELA04 '
                  +'       ,DECODE(P1VSEQ,6,P1VVALOR,0) AS PARCELA05 '
                  +'       ,DECODE(P1VSEQ,7,P1VVALOR,0) AS PARCELA06 '
                  +'       ,DECODE(P1VSEQ,8,P1VVALOR,0) AS PARCELA07 '
                  +'       ,DECODE(P1VSEQ,9,P1VVALOR,0) AS PARCELA08 '
                  +'       ,DECODE(P1VSEQ,10,P1VVALOR,0) AS PARCELA09 '
                  +'       ,DECODE(P1VSEQ,11,P1VVALOR,0) AS PARCELA10 '
                  +'       ,DECODE(P1VSEQ,12,P1VVALOR,0) AS PARCELA11 '
                  +'       ,DECODE(P1VSEQ,0,P1VCOMISV,1,P1VCOMISV,0) AS COMIS_ENT '
                  +'       ,DECODE(P1VSEQ,2,P1VCOMISV,0) AS COMIS_P01 '
                  +'       ,DECODE(P1VSEQ,3,P1VCOMISV,0) AS COMIS_P02 '
                  +'       ,DECODE(P1VSEQ,4,P1VCOMISV,0) AS COMIS_P03 '
                  +'       ,DECODE(P1VSEQ,5,P1VCOMISV,0) AS COMIS_P04 '
                  +'       ,DECODE(P1VSEQ,6,P1VCOMISV,0) AS COMIS_P05 '
                  +'       ,DECODE(P1VSEQ,7,P1VCOMISV,0) AS COMIS_P06 '
                  +'       ,DECODE(P1VSEQ,8,P1VCOMISV,0) AS COMIS_P07 '
                  +'       ,DECODE(P1VSEQ,9,P1VCOMISV,0) AS COMIS_P08 '
                  +'       ,DECODE(P1VSEQ,10,P1VCOMISV,0) AS COMIS_P09 '
                  +'       ,DECODE(P1VSEQ,11,P1VCOMISV,0) AS COMIS_P10 '
                  +'       ,DECODE(P1VSEQ,12,P1VCOMISV,0) AS COMIS_P11 '
                  +'       ,0 AS LOTCOM_ENT  '
                  +'       ,0 AS LOTCOM_P01  '
                  +'       ,0 AS LOTCOM_P02  '
                  +'       ,0 AS LOTCOM_P03  '
                  +'       ,0 AS LOTCOM_P04  '
                  +'       ,0 AS LOTCOM_P05  '
                  +'       ,0 AS LOTCOM_P06  '
                  +'       ,0 AS LOTCOM_P07  '
                  +'       ,0 AS LOTCOM_P08  '
                  +'       ,0 AS LOTCOM_P09  '
                  +'       ,0 AS LOTCOM_P10  '
                  +'       ,0 AS LOTCOM_P11  '
                  +' FROM CADP01V DAR1 '
                  +iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'       '+     iif(la_instrucao='','',la_instrucao+' and ')
                  +' P1STATUS<'+mstatus_excluido+' ');


if trim(CODVEN.Text)<>'' then
  DM1.Query1.Sql.add(' and P1CODVEN=0'+TRIM(CODVEN.Text));
if trim(DATAFIN.Text)<>'/  /' then
  begin
  DM1.Query1.SQL.Add(' AND P1DATENT>='+chr(39)+FormatDateTime(fdt, StrToDAte(DATAIN.Text))+chr(39));
  DM1.Query1.SQL.Add(' AND P1DATENT<='+chr(39)+FormatDateTime(fdt, StrToDAte(DATAFIN.Text))+chr(39));
  end;

try
  DM1.Query1.ExecSQL;
except
  ex_erroSql_Novo(DM1.Query1,162,'frm_demonstrativo','CADDAR');
  exit;
  end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');

Qr_Comis.Close;
Qr_Comis.SQL.Clear;
Qr_Comis.SQL.Add('Select max(VALTIT) AS VALTIT          '
                +'       ,max(TOTCOM) AS TOTCOM         '
                +'       ,max(CRQTDPARC) AS TOTPARC     '
                +'       ,min(CRCODEMP) AS CODEMP       '
                +'       ,sum(ENTRADA) AS VLR_ENTRADA   '
                +'       ,sum(PARCELA01) AS VLR_PARC01  '
                +'       ,sum(PARCELA02) AS VLR_PARC02  '
                +'       ,sum(PARCELA03) AS VLR_PARC03  '
                +'       ,sum(PARCELA04) AS VLR_PARC04  '
                +'       ,sum(PARCELA05) AS VLR_PARC05  '
                +'       ,sum(PARCELA06) AS VLR_PARC06  '
                +'       ,sum(PARCELA07) AS VLR_PARC07  '
                +'       ,sum(PARCELA08) AS VLR_PARC08  '
                +'       ,sum(PARCELA09) AS VLR_PARC09  '
                +'       ,sum(PARCELA10) AS VLR_PARC10  '
                +'       ,sum(PARCELA11) AS VLR_PARC11  '
                +'       ,sum(COMIS_ENT) AS COMIS_ENT   '
                +'       ,sum(COMIS_P01) AS COMIS_P01   '
                +'       ,sum(COMIS_P02) AS COMIS_P02   '
                +'       ,sum(COMIS_P03) AS COMIS_P03   '
                +'       ,sum(COMIS_P04) AS COMIS_P04   '
                +'       ,sum(COMIS_P05) AS COMIS_P05   '
                +'       ,sum(COMIS_P06) AS COMIS_P06   '
                +'       ,sum(COMIS_P07) AS COMIS_P07   '
                +'       ,sum(COMIS_P08) AS COMIS_P08   '
                +'       ,sum(COMIS_P09) AS COMIS_P09   '
                +'       ,sum(COMIS_P10) AS COMIS_P10   '
                +'       ,sum(COMIS_P11) AS COMIS_P11   '
                +'       ,max(LOTCOM_ENT) AS LOTCOM_ENT '
                +'       ,max(LOTCOM_P01) AS LOTCOM_P01 '
                +'       ,max(LOTCOM_P02) AS LOTCOM_P02 '
                +'       ,max(LOTCOM_P03) AS LOTCOM_P03 '
                +'       ,max(LOTCOM_P04) AS LOTCOM_P04 '
                +'       ,max(LOTCOM_P05) AS LOTCOM_P05 '
                +'       ,max(LOTCOM_P06) AS LOTCOM_P06 '
                +'       ,max(LOTCOM_P07) AS LOTCOM_P07 '
                +'       ,max(LOTCOM_P08) AS LOTCOM_P08 '
                +'       ,max(LOTCOM_P09) AS LOTCOM_P09 '
                +'       ,max(LOTCOM_P10) AS LOTCOM_P10 '
                +'       ,max(LOTCOM_P11) AS LOTCOM_P11 '
                +'       ,CRCODCLI AS CODCLI            '
                +'       ,CRCODVEN AS CODVEN            '
                +'       ,CRNUMERO AS NUMNF             '
                +'       ,CRDTEMIS AS DATANF            '
                +'       ,CRNPED AS CHAVEPED            '
                +'       ,CRORDEM AS ORDEMPED           '
                +'       ,CRAZAO                        '
                +'       ,CRDUP                         '
                +'       ,CCIDADE,CUF                   '
                +'       ,:P1 AS SEL_ENT                '
                +'       ,:P1 AS SEL_P01                '
                +'       ,:P1 AS SEL_P02                '
                +'       ,:P1 AS SEL_P03                '
                +'       ,:P1 AS SEL_P04                '
                +'       ,:P1 AS SEL_P05                '
                +'       ,:P1 AS SEL_P06                '
                +'       ,:P1 AS SEL_P07                '
                +'       ,:P1 AS SEL_P08                '
                +'       ,:P1 AS SEL_P09                '
                +'       ,:P1 AS SEL_P10                '
                +'       ,:P1 AS SEL_P11                '
                +'       FROM '+mNomeView1++iif(la_tabelas='','',',')+la_tabelas
                +'       '+la_Join
                +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                +'       CRNPED <> 0 and              '
                +'       CRDUP = 0   and              '
                +'       CRSTATUS<9                   ');
if trim(CODVEN.Text)<>'' then
  Qr_Comis.Sql.add(' and CRCODVEN=0'+TRIM(CODVEN.Text));
Qr_Comis.Sql.add('       group by                     '
                +'       CRCODCLI                     '
                +'       ,CRCODVEN                    '
                +'       ,CRNUMERO                    '
                +'       ,CRDTEMIS                    '
                +'       ,CRNPED                      '
                +'       ,CRORDEM                     '
                +'       ,CRAZAO                      '
                +'       ,CRDUP                       '
                +'       ,CCIDADE                     '
                +'       ,CUF                         ');
Qr_Comis.ParamByName('P1').AsString := ' ';
Qr_Comis.SQL.Add('ORDER BY CRCODCLI,CRNPED');

try
  Qr_Comis.Open;

  vlr_totger:=0;
  if chk_comissao.Checked then
    begin
    while not Qr_Comis.Eof do
      begin
      Qr_Comis.Edit;
      Qr_ComisCOMIS_ENT.Value    := (Qr_Comisperc_comis.AsFloat/100)*Qr_ComisVLR_ENTRADA.Value;
      for xCont := 1 to Qr_Comistotalpacela.Value do
        begin
        Qr_Comis.FieldByName('COMIS_P0'+IntToStr(xCont)).Value := ((Qr_Comisperc_comis.AsFloat/100)*Qr_Comisvlrparcelado.Value)/Qr_Comistotalpacela.Value;
        Qr_ComisTOTCOM.Value := (Qr_ComisTOTCOM.AsFloat + ((Qr_Comisperc_comis.AsFloat/100)*Qr_Comisvlrparcelado.Value)/Qr_Comistotalpacela.Value);
        end;
      Qr_Comis.Post;
      Qr_Comis.Next;
      end;
    end
  else
    begin
    while not Qr_Comis.Eof do
      begin
      Qr_Comis.Edit;
      Qr_ComisCOMIS_ENT.Value    := (Qr_Comisperc_comis.AsFloat/100)*Qr_ComisVLR_ENTRADA.Value;
      for xCont := 1 to Qr_Comistotalpacela.Value do
        begin
        Qr_Comis.FieldByName('COMIS_P0'+IntToStr(xCont)).Value := ((Qr_Comisperc_comis.AsFloat/100)*Qr_Comisvlrparcelado.Value)/Qr_Comistotalpacela.Value;
        Qr_ComisTOTCOM.Value := (Qr_ComisTOTCOM.AsFloat + ((Qr_Comisperc_comis.AsFloat/100)*Qr_Comisvlrparcelado.Value)/Qr_Comistotalpacela.Value);
        end;
      Qr_Comis.Post;
      Qr_Comis.Next;
      end;
    end;
except
  Qr_Comis.SQL.SaveToFile(mpastatemp +'sql.txt');
  end;
vlrtotal          := 0;
vlrentrada        := 0;
vlrparcelado      := 0;
vlrcomissao       := 0;
vlrparcela1       := 0;
vlrparcela2       := 0;
vlrparcela3       := 0;
vlrparcela4       := 0;
vlrparcela5       := 0;
vlrparcela6       := 0;
vlrTotalComissao  := 0;
st_vlrTotal.Caption     := FormatFloat(mcasas,0);
st_vlrentrada.Caption   := FormatFloat(mcasas,0);
st_vlrparcelado.Caption := FormatFloat(mcasas,0);
st_vlrcomissao.Caption  := FormatFloat(mcasas,0);
st_vlrparcela1.Caption  := FormatFloat(mcasas,0);
st_vlrparcela2.Caption  := FormatFloat(mcasas,0);
st_vlrparcela3.Caption  := FormatFloat(mcasas,0);
st_vlrparcela4.Caption  := FormatFloat(mcasas,0);
st_vlrparcela5.Caption  := FormatFloat(mcasas,0);
st_vlrparcela6.Caption  := FormatFloat(mcasas,0);
st_vlrtotalcomissao.Caption:= FormatFloat(mcasas,vlrtotalcomissao);
parc1.Caption :='Parcela 1 Dia: 20/'+FormatDateTime('mm/yy',Qr_ComisDATANF.AsDateTime+30);
parc2.Caption :='Parcela 2 Dia: 10/'+FormatDateTime('mm/yy',Qr_ComisDATANF.AsDateTime+60);
parc3.Caption :='Parcela 3 Dia: 10/'+FormatDateTime('mm/yy',Qr_ComisDATANF.AsDateTime+90);
parc4.Caption :='Parcela 4 Dia: 10/'+FormatDateTime('mm/yy',Qr_ComisDATANF.AsDateTime+120);
parc5.Caption :='Parcela 5 Dia: 10/'+FormatDateTime('mm/yy',Qr_ComisDATANF.AsDateTime+150);
parc6.Caption :='Parcela 6 Dia: 10/'+FormatDateTime('mm/yy',Qr_ComisDATANF.AsDateTime+180);
Qr_Comis.First;
xData_Venc := Date;
while not Qr_Comis.Eof do
  begin
  vlrparcela1       := vlrparcela1  + Qr_ComisCOMIS_P01.AsFloat;
  vlrparcela2       := vlrparcela2  + Qr_ComisCOMIS_P02.AsFloat;
  vlrparcela3       := vlrparcela3  + Qr_ComisCOMIS_P03.AsFloat;
  vlrparcela4       := vlrparcela4  + Qr_ComisCOMIS_P04.AsFloat;
  vlrparcela5       := vlrparcela5  + Qr_ComisCOMIS_P05.AsFloat;
  vlrparcela6       := vlrparcela6  + Qr_ComisCOMIS_P06.AsFloat;
  vlrtotal          := vlrTotal     + Qr_ComisVALTIT.AsFloat;
  vlrentrada        := vlrentrada   + Qr_ComisVLR_ENTRADA.AsFloat;
  vlrparcelado      := vlrparcelado + Qr_Comisvlrparcelado.AsFloat;
  vlrcomissao       := vlrcomissao  + Qr_ComisCOMIS_ENT.AsFloat;
  vlrTotalComissao  := vlrtotalcomissao+ Qr_ComisTOTCOM.AsFloat;
  Qr_Comis.Next;
  end;
st_vlrTotal.Caption     := FormatFloat(mcasas,vlrTotal);
st_vlrentrada.Caption   := FormatFloat(mcasas,vlrentrada);
st_vlrparcelado.Caption := FormatFloat(mcasas,vlrparcelado);
st_vlrcomissao.Caption  := FormatFloat(mcasas,vlrcomissao);
st_vlrparcela1.Caption  := FormatFloat(mcasas,vlrparcela1);
st_vlrparcela2.Caption  := FormatFloat(mcasas,vlrparcela2);
st_vlrparcela3.Caption  := FormatFloat(mcasas,vlrparcela3);
st_vlrparcela4.Caption  := FormatFloat(mcasas,vlrparcela4);
st_vlrparcela5.Caption  := FormatFloat(mcasas,vlrparcela5);
st_vlrparcela6.Caption  := FormatFloat(mcasas,vlrparcela6);
st_vlrtotalcomissao.Caption:= FormatFloat(mcasas,vlrtotalcomissao);
end;

procedure Tfrm_demonstrativo.Qr_ComisCalcFields(DataSet: TDataSet);
begin
if (Qr_ComisTOTCOM.AsFloat=0) or (Qr_ComisVALTIT.AsFloat=0) then begin
   if chk_comissao.Checked then
      Qr_Comisperc_comis.AsFloat := edtComissao.Value
   else if xComisVend > 0 then
      Qr_Comisperc_comis.AsFloat := xComisVend
   else
      Qr_Comisperc_comis.AsFloat :=0;
end else begin
   if chk_comissao.Checked then
      Qr_Comisperc_comis.AsFloat := edtComissao.Value
   else if xComisVend > 0 then
      Qr_Comisperc_comis.AsFloat := xComisVend;
   //Qr_Comisperc_comis.AsFloat := edtComissao.Value;
   //Qr_Comisperc_comis.AsFloat := (Qr_ComisTOTCOM.AsFloat*100)  / Qr_ComisVALTIT.AsFloat;
end;

Qr_Comisvlrparcelado.AsFloat  := Qr_ComisVALTIT.AsFloat - Qr_ComisVLR_ENTRADA.AsFloat;

Qr_Comistotalpacela.Value     := Qr_ComisTOTPARC.AsInteger - 1;
end;

procedure Tfrm_demonstrativo.BtnImprimirClick(Sender: TObject);
begin
if not Qr_Comis.IsEmpty then
  begin
  rl_comissao.Prepare;
  rl_comissao.PreviewModal;
  end
else
  begin
  fMensagem('Não existe Comissão Gerada para o Vendedor!',0,['0'],0);
  if CODVEN.Enabled then
     CODVEN.SetFocus;
  Exit;
  end;
if Trim(CODVEN.Text)<>''  then
  begin
  end
else
  begin
  end;
end;

procedure Tfrm_demonstrativo.rl_comissaoBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
   vlrTotal          := 0;
   vlrEntrada        := 0;
   vlrParcelado      := 0;
   vlrComissao       := 0;
   vlrParcela1       := 0;
   vlrParcela2       := 0;
   vlrParcela3       := 0;
   vlrParcela4       := 0;
   vlrParcela5       := 0;
   vlrParcela6       := 0;
   vlrTotalComissao  := 0;

   tot_perc.Caption  := '';
   tot_qtde.Caption  := ''; 

   if not QR_Comis.IsEmpty then begin
      rl_vendedor.Caption := CODVEN.Text+' - '+NOMEVEN.Text;
      rl_periodo.Caption  := DATAIN.Text+' a '+DATAFIN.Text;
   end;

   if (Trim(CODVEN.Text) <> '') and (Trim(NOMEVEN.Text) <> '') then
      begin
      rlb_recibo.Visible       := True;
      rl_recebi.Visible:=True;
      RLLabel19.Visible:=True;
      rank_nome.Visible:=False;
      rank_valor.Visible:=False;
      rank_Perc.Visible:=False;
      lbl_nomevendedor.Caption := NOMEVEN.Text;
      end
   else
      begin
//      rlb_recibo.Visible       := False;
      rl_recebi.Visible:=False;
      RLLabel19.Visible:=False;
      rank_nome.Visible:=True;
      rank_valor.Visible:=True;
      rank_Perc.Visible:=True;
      lbl_nomevendedor.Caption := '';
      end;

   rl_parcela1.Caption        := parc1.Caption;
   rl_parcela2.Caption        := parc2.Caption;
   rl_parcela3.Caption        := parc3.Caption;
   rl_parcela4.Caption        := parc4.Caption;
   rl_parcela5.Caption        := parc5.Caption;
   rl_parcela6.Caption        := parc6.Caption;

   rl_valorparc1.Caption      := st_vlrparcela1.Caption;
   rl_valorparc2.Caption      := st_vlrparcela2.Caption;
   rl_valorparc3.Caption      := st_vlrparcela3.Caption;
   rl_valorparc4.Caption      := st_vlrparcela4.Caption;
   rl_valorparc5.Caption      := st_vlrparcela5.Caption;
   rl_valorparc6.Caption      := st_vlrparcela6.Caption;


end;

procedure Tfrm_demonstrativo.RLBand3AfterPrint(Sender: TObject);
begin
  vlrtotal          := vlrTotal     + Qr_ComisVALTIT.AsFloat;
  vlrentrada        := vlrentrada   + Qr_ComisVLR_ENTRADA.AsFloat;
  vlrparcelado      := vlrparcelado + Qr_Comisvlrparcelado.AsFloat;
  vlrcomissao       := vlrcomissao  + Qr_ComisCOMIS_ENT.AsFloat;

  vlrparcela1       := vlrparcela1  + Qr_ComisCOMIS_P01.AsFloat;
  vlrparcela2       := vlrparcela2  + Qr_ComisCOMIS_P02.AsFloat;
  vlrparcela3       := vlrparcela3  + Qr_ComisCOMIS_P03.AsFloat;
  vlrparcela4       := vlrparcela4  + Qr_ComisCOMIS_P04.AsFloat;
  vlrparcela5       := vlrparcela5  + Qr_ComisCOMIS_P05.AsFloat;
  vlrparcela6       := vlrparcela6  + Qr_ComisCOMIS_P06.AsFloat;

  vlrTotalComissao  := vlrtotalcomissao+ Qr_ComisTOTCOM.AsFloat;

end;

procedure Tfrm_demonstrativo.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  st_totalizacao.Caption  := FormatFloat(mcasas,vlrTotal);
  st_entrada.Caption      := FormatFloat(mcasas,vlrentrada);
  st_parcelado.Caption    := FormatFloat(mcasas,vlrparcelado);
  st_comissaoent.Caption  := FormatFloat(mcasas,vlrcomissao);
  st_parcela1.Caption     := FormatFloat(mcasas,vlrparcela1);
  st_parcela2.Caption     := FormatFloat(mcasas,vlrparcela2);
  st_parcela3.Caption     := FormatFloat(mcasas,vlrparcela3);
  st_parcela4.Caption     := FormatFloat(mcasas,vlrparcela4);
  st_parcela5.Caption     := FormatFloat(mcasas,vlrparcela5);
  st_parcela6.Caption     := FormatFloat(mcasas,vlrparcela6);

  st_totalcomissao.Caption:= FormatFloat(mcasas,vlrtotalcomissao);
end;

procedure Tfrm_demonstrativo.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if DataCol = 5 then begin
      if (Qr_ComisLOTCOM_ENT.Value > 0) then begin
         if not (Qr_ComisLOTCOM_ENT.IsNull) and (Qr_ComisLOTCOM_ENT.Value > 0) then begin
            DBGrid1.Canvas.Brush.Color:=clRed;
            DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
      end;
   end;

   if DataCol = 6 then begin
      if Qr_ComisSEL_ENT.AsString = 'X' then begin
         DBGrid1.Canvas.Brush.Color:=clGreen;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
   end;

   if DataCol = 7 then begin
       if Qr_ComisSEL_P01.AsString = 'X' then begin
         DBGrid1.Canvas.Brush.Color:=clGreen;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end else if (Qr_ComisLOTCOM_P01.Value > 0) then begin
         if not (Qr_ComisLOTCOM_P01.IsNull) and (Qr_ComisLOTCOM_P01.Value>0) then begin
            DBGrid1.Canvas.Brush.Color:=clRed;
            DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
      end;
   end;

   if DataCol = 8 then begin
      if Qr_ComisSEL_P02.AsString = 'X' then begin
         DBGrid1.Canvas.Brush.Color:=clGreen;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end else if (Qr_ComisLOTCOM_P02.Value > 0) then begin
         if not (Qr_ComisLOTCOM_P02.IsNull) and (Qr_ComisLOTCOM_P02.Value>0) then begin
            DBGrid1.Canvas.Brush.Color:=clRed;
            DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
      end;
   end;

   if DataCol = 9 then begin
       if Qr_ComisSEL_P03.AsString = 'X' then begin
         DBGrid1.Canvas.Brush.Color:=clGreen;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end else if (Qr_ComisLOTCOM_P03.Value > 0) then begin
         if not (Qr_ComisLOTCOM_P03.IsNull) and (Qr_ComisLOTCOM_P03.Value>0) then begin
            DBGrid1.Canvas.Brush.Color:=clRed;
            DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
      end;
   end;

   if DataCol = 10 then begin
       if Qr_ComisSEL_P04.AsString = 'X' then begin
         DBGrid1.Canvas.Brush.Color:=clGreen;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end else if (Qr_ComisLOTCOM_P04.Value > 0) then begin
         if not (Qr_ComisLOTCOM_P04.IsNull) and (Qr_ComisLOTCOM_P04.Value>0) then begin
            DBGrid1.Canvas.Brush.Color:=clRed;
            DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
      end;
   end;

   if DataCol = 11 then begin
       if Qr_ComisSEL_P05.AsString = 'X' then begin
         DBGrid1.Canvas.Brush.Color:=clGreen;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end else if (Qr_ComisLOTCOM_P05.Value > 0) then begin
         if not (Qr_ComisLOTCOM_P05.IsNull) and (Qr_ComisLOTCOM_P05.Value>0) then begin
            DBGrid1.Canvas.Brush.Color:=clRed;
            DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
      end;
   end;

   if DataCol = 12 then begin
      if Qr_ComisSEL_P06.AsString = 'X' then begin
         DBGrid1.Canvas.Brush.Color:=clGreen;
         DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end else if (Qr_ComisLOTCOM_P06.Value > 0) then begin
         if not (Qr_ComisLOTCOM_P06.IsNull) and (Qr_ComisLOTCOM_P06.Value>0) then begin
            DBGrid1.Canvas.Brush.Color:=clRed;
            DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
         end;
      end;
   end;
end;

procedure Tfrm_demonstrativo.DBGrid1DblClick(Sender: TObject);
begin
   if DBGrid1.SelectedField = Qr_ComisCOMIS_ENT then begin
      if Qr_ComisLOTCOM_ENT.AsFloat = 0 then begin
         Qr_Comis.Edit;
         if Qr_ComisSEL_ENT.AsString = 'X' then
            Qr_ComisSEL_ENT.AsString := ' '
         else
            Qr_ComisSEL_ENT.AsString := 'X';

         Qr_Comis.Post;
      end;
   end else if DBGrid1.SelectedField = Qr_ComisCOMIS_P01 then begin
      if Qr_ComisLOTCOM_P01.AsFloat = 0 then begin
         Qr_Comis.Edit;
         if Qr_ComisSEL_P01.AsString = 'X' then
            Qr_ComisSEL_P01.AsString := ' '
         else
            Qr_ComisSEL_P01.AsString := 'X';

         Qr_Comis.Post;
      end;
   end else if DBGrid1.SelectedField = Qr_ComisCOMIS_P02 then begin
      if Qr_ComisLOTCOM_P02.AsFloat = 0 then begin
         Qr_Comis.Edit;
         if Qr_ComisSEL_P02.AsString = 'X' then
            Qr_ComisSEL_P02.AsString := ' '
         else
            Qr_ComisSEL_P02.AsString := 'X';

         Qr_Comis.Post;
      end;
   end else if DBGrid1.SelectedField = Qr_ComisCOMIS_P03 then begin
      if Qr_ComisLOTCOM_P03.AsFloat = 0 then begin
         Qr_Comis.Edit;
         if Qr_ComisSEL_P03.AsString = 'X' then
            Qr_ComisSEL_P03.AsString := ' '
         else
            Qr_ComisSEL_P03.AsString := 'X';

         Qr_Comis.Post;
      end;
   end else if DBGrid1.SelectedField = Qr_ComisCOMIS_P04 then begin
      if Qr_ComisLOTCOM_P04.AsFloat = 0 then begin
         Qr_Comis.Edit;
         if Qr_ComisSEL_P04.AsString = 'X' then
            Qr_ComisSEL_P04.AsString := ' '
         else
            Qr_ComisSEL_P04.AsString := 'X';

         Qr_Comis.Post;
      end;
   end else if DBGrid1.SelectedField = Qr_ComisCOMIS_P05 then begin
      if Qr_ComisLOTCOM_P05.AsFloat = 0 then begin
         Qr_Comis.Edit;
         if Qr_ComisSEL_P05.AsString = 'X' then
            Qr_ComisSEL_P05.AsString := ' '
         else
            Qr_ComisSEL_P05.AsString := 'X';

         Qr_Comis.Post;
      end;
   end else if DBGrid1.SelectedField = Qr_ComisCOMIS_P06 then begin
      if Qr_ComisLOTCOM_P06.AsFloat = 0 then begin
         Qr_Comis.Edit;
         if Qr_ComisSEL_P06.AsString = 'X' then
            Qr_ComisSEL_P06.AsString := ' '
         else
            Qr_ComisSEL_P06.AsString := 'X';

         Qr_Comis.Post;
      end;
   end;
end;

procedure Tfrm_demonstrativo.btn_relcomissaoClick(Sender: TObject);
begin
  if valfloat(CODVEN.Text)=0 then
     begin
     fmensagem('Favor Digitar um vendedor!',0,['0'],0);
     if CODVEN.Enabled then
        CODVEn.SetFocus;
     exit;
     end;
  testeform := Tfrm_demonstrativo(FindGlobalComponent('form_comrv_evento'));
  if (testeform=nil)  then
     Application.CreateForm(Tfrm_ComRv, form_ComRv_Demo);

  mori_comrv := 'frm_demonstrativo';

  form_ComRv_Demo.BBINCLUIR.Click;

  form_ComRv_Demo.CODVEN.Text := FloatToStr(Qr_ComisCODVEN.AsFloat);
  form_ComRv_Demo.CODVENExit(Self);
  form_ComRv_Demo.MDATAI.Text := DATAIN.Text;
  form_ComRv_Demo.MDATAF.Text := DATAFIN.Text;

  form_ComRv_Demo.OBS1.Text   := 'Relatório Gerado automaticamente através do demostrativo';
  form_ComRv_Demo.OBS2.Text   := 'de vendas';

  Qr_Comis.First;

   while not Qr_Comis.Eof do begin
     if Qr_ComisSEL_ENT.AsString = 'X' then begin

        if fVerificaParcela(1) then
           fDispararDuplicata
     end;

     if Qr_ComisSEL_P01.AsString = 'X' then begin
        if fVerificaParcela(2) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P02.AsString = 'X' then begin
        if fVerificaParcela(3) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P03.AsString = 'X' then begin
        if fVerificaParcela(4) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P04.AsString = 'X' then begin
        if fVerificaParcela(5) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P05.AsString = 'X' then begin
        if fVerificaParcela(6) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P06.AsString = 'X' then begin
        if fVerificaParcela(7) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P07.AsString = 'X' then begin
        if fVerificaParcela(8) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P08.AsString = 'X' then begin
        if fVerificaParcela(9) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P09.AsString = 'X' then begin
        if fVerificaParcela(10) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P10.AsString = 'X' then begin
        if fVerificaParcela(11) then
           fDispararDuplicata;
     end;

     if Qr_ComisSEL_P11.AsString = 'X' then begin
        if fVerificaParcela(12) then
           fDispararDuplicata;
     end;

     Qr_Comis.Next;
   end;
form_ComRv_Demo.Show;
bbCalcularClick(self);
end;

function Tfrm_demonstrativo.fVerificaParcela(pNumParcela: Integer): Boolean;
begin

  Result := False;

  la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' SELECT                        '+
                     '  CRNUMERO,                    '+
                     '  CRDESD,                      '+
                     '  CRDUP,                       '+
                     '  CRDTEMIS,                    '+
                     '  CRCODECF,                    '+
                     '  CRCODEMP,                    '+
                     '  CRDTVCTO,                    '+
                     '  CRDTBX,                      '+
                     '  CRVALOR,                      '+
                     '  CRCOMVEN                      '+
                     ' FROM                          '+
                     '  CADDAR                       '+
                     ' WHERE                         '+
                     iif(la_Empresas='','',la_Empresas+' and ')+
                     '  CRCODCLI  =:pClie AND        '+
                     '  CRNUMERO  =:pNum  AND        '+
                     '  CRDTEMIS  =:pEmis AND        '+
                     '  CRNUMPARC =:pParc            ');

 DM1.Query1.ParamByName('pClie').AsFloat    := Qr_ComisCODCLI.AsFloat;
 DM1.Query1.ParamByName('pNum').AsFloat     := Qr_ComisNUMNF.AsFloat;
 DM1.Query1.ParamByName('pEmis').AsDateTime := Qr_ComisDATANF.AsFloat;
 DM1.Query1.ParamByName('pParc').AsInteger  := pNumParcela;
 DM1.Query1.Open;

 if not DM1.Query1.IsEmpty then
    Result := True;
end;

function Tfrm_demonstrativo.fDispararDuplicata: Boolean;
begin
   form_ComRv_Demo.NUMDUP.Text  := DM1.Query1.FieldByName('CRNUMERO').AsString;
   form_ComRv_Demo.DESD.Text    := DM1.Query1.FieldByName('CRDESD').AsString;
   form_ComRv_Demo.DUP.Text     := DM1.Query1.FieldByName('CRDUP').AsString;
   form_ComRv_Demo.MDTEMIS.Text := DM1.Query1.FieldByName('CRDTEMIS').AsString;
   form_ComRv_Demo.MCODECF.Text := DM1.Query1.FieldByName('CRCODECF').AsString;
   form_ComRv_Demo.MCODEMP.Text := DM1.Query1.FieldByName('CRCODEMP').AsString;
   form_ComRv_Demo.DTVCTO.Text  := DM1.Query1.FieldByName('CRDTVCTO').AsString;
   form_ComRv_Demo.DTBX.Text    := DM1.Query1.FieldByName('CRDTBX').AsString;
   form_ComRv_Demo.VALOR.Text   := FormatFloat(mcasas,DM1.Query1.FieldByName('CRVALOR').AsFloat);
   form_ComRv_Demo.VALCOM.Text  := FormatFloat(mcasas,DM1.Query1.FieldByName('CRCOMVEN').AsFloat);
   form_ComRv_Demo.ITEM_GRAVAR.Click;
   Result := True;
end;

procedure Tfrm_demonstrativo.RLDBText5BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if Qr_ComisLOTCOM_ENT.AsFloat > 0 then
     RLDBText5.Color := clRed
  else
    if Qr_ComisSEL_ENT.AsString = 'X' then
       RLDBText5.Color := clGreen
    else
       RLDBText5.Color := clWindow;
end;

procedure Tfrm_demonstrativo.RLDBText7BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if Qr_ComisLOTCOM_P01.AsFloat > 0 then
     RLDBText7.Color := clRed
  else
    if Qr_ComisSEL_P02.AsString = 'X' then
       RLDBText7.Color := clGreen
    else
       RLDBText7.Color := clWindow;

end;

procedure Tfrm_demonstrativo.RLDBText8BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if Qr_ComisLOTCOM_P02.AsFloat > 0 then
     RLDBText8.Color := clRed
  else
    if Qr_ComisSEL_P02.AsString = 'X' then
       RLDBText8.Color := clGreen
    else
       RLDBText8.Color := clWindow;
end;

procedure Tfrm_demonstrativo.RLDBText9BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if Qr_ComisLOTCOM_P03.AsFloat > 0 then
     RLDBText9.Color := clRed
  else
    if Qr_ComisSEL_P03.AsString = 'X' then
       RLDBText9.Color := clGreen
    else
       RLDBText9.Color := clWindow;
end;

procedure Tfrm_demonstrativo.RLDBText10BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if Qr_ComisLOTCOM_P04.AsFloat > 0 then
     RLDBText10.Color := clRed
  else
    if Qr_ComisSEL_P04.AsString = 'X' then
       RLDBText10.Color := clGreen
    else
       RLDBText10.Color := clWindow;
end;

procedure Tfrm_demonstrativo.RLDBText11BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if Qr_ComisLOTCOM_P05.AsFloat > 0 then
     RLDBText11.Color := clRed
  else
    if Qr_ComisSEL_P05.AsString = 'X' then
       RLDBText11.Color := clGreen
    else
       RLDBText11.Color := clWindow;
end;

procedure Tfrm_demonstrativo.RLDBText12BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if Qr_ComisLOTCOM_P06.AsFloat > 0 then
     RLDBText12.Color := clRed
  else
    if Qr_ComisSEL_P06.AsString = 'X' then
       RLDBText12.Color := clGreen
    else
       RLDBText12.Color := clWindow;
end;

procedure Tfrm_demonstrativo.chk_comissaoClick(Sender: TObject);
begin
  if chk_comissao.Checked then begin
     edtComissao.value    := 0;
     edtComissao.Enabled  := True;
     edtComissao.SetFocus;
  end else begin
     edtComissao.value    := 0;
     edtComissao.Enabled  := False;
  end;
end;

procedure Tfrm_demonstrativo.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
vlr_totger:=vlr_totger + Qr_ComisVALTIT.AsFloat;
end;

procedure Tfrm_demonstrativo.rlb_reciboBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
dm1.Query3.Close;
dm1.Query3.SQL.Clear;
dm1.Query3.SQL.Add(' create or replace view tempcomis as     ');
dm1.Query3.SQL.Add(' select                                  ');
dm1.Query3.SQL.Add('   CRCODVEN as CODVEN,                   ');
dm1.Query3.SQL.Add('   VNOME as NOME,                        ');
dm1.Query3.SQL.Add('   sum(valtit)/max(crqtdparc) as TOTAL   ');
dm1.Query3.SQL.Add(' from                                    ');
dm1.Query3.SQL.Add('  '+mNomeView1+', CADVEN                 ');
dm1.Query3.SQL.Add(' where                                   ');
dm1.Query3.SQL.Add('     CRNPED<>0                           ');
dm1.Query3.SQL.Add(' and CRDUP=0                             ');
dm1.Query3.SQL.Add(' and CRSTATUS<9                          ');
dm1.Query3.SQL.Add(' and VCODVEN=CRCODVEN                    ');
dm1.Query3.SQL.Add(' group by CRCODVEN, VNOME,CRNPED         ');
//dm1.Query3.SQL.Add(' order by TOTAL desc                     ');
try
  dm1.Query3.ExecSQL;
  DM1.Query4.Close;
  dm1.Query4.SQL.Clear;
  dm1.Query4.SQL.Add(' select                             ');
  dm1.Query4.SQL.Add('    CODVEN, NOME, SUM(TOTAL) AS TOT ');
  dm1.Query4.SQL.Add(' from                               ');
  dm1.Query4.SQL.Add('    TEMPCOMIS                       ');
  dm1.Query4.SQL.Add(' group by                           ');
  dm1.Query4.SQL.Add('    CODVEN, NOME                    ');
  dm1.Query4.SQL.Add(' order by                           ');
  dm1.Query4.SQL.Add('    TOT DESC                        ');
  try
    dm1.Query4.Open;
    dm1.Query4.First;
    rank_nome.Lines.Clear;
    rank_valor.Lines.Clear;
    rank_Perc.Lines.Clear;
    while not dm1.Query4.Eof do
      begin
      rank_nome .Lines.Add(dm1.Query4.FieldByName('NOME').AsString);
      rank_valor.Lines.Add(FormatFloat('#,##0.00',DM1.Query4.FieldByName('TOT').AsFloat));
      if (dm1.Query4.FieldByName('TOT').AsFloat=0) or (ValFloat(st_totalizacao.Caption)=0) then
          rank_Perc .Lines.Add(insere(' ',' ',10))
      else
         rank_Perc .Lines.Add(FormatFloat('#,##0.00',dm1.Query4.FieldByName('TOT').AsFloat/ValFloat(st_totalizacao.Caption)*100)+'%');
      dm1.Query4.Next;
      end;
  except
    dm1.Query4.SQL.SaveToFile(mpastatemp +'sql.txt');
    end;
except
  dm1.Query3.SQL.SaveToFile('c:\errosql.txt');
  end;
end;

procedure Tfrm_demonstrativo.FormActivate(Sender: TObject);
begin
if codusr=1111 then
  begin
  ts_relatorio.TabVisible:=true;
  end
else
  begin
  ts_relatorio.TabVisible:=False;
  end;
end;

procedure Tfrm_demonstrativo.FormKeyDown(Sender: TObject; var Key: Word;
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
