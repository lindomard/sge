unit S_Ind_RegInv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, CheckLst, Buttons, RLReport, DB,
  DBTables;

type
  TFrm_Ind_RegInv = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    CODGFOR: TEdit;
    lbx_codgfor: TListBox;
    OMITIR_GFOR: TCheckBox;
    StaticText10: TStaticText;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label2: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    TsFiltros2: TTabSheet;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label6: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    GroupBox3: TGroupBox;
    RG_CODGRU: TCheckListBox;
    GroupBox4: TGroupBox;
    CLBNivel: TCheckListBox;
    Label7: TLabel;
    MDT1: TMaskEdit;
    Label8: TLabel;
    MDT2: TMaskEdit;
    Label1: TLabel;
    CB_SEPAR: TComboBox;
    GroupBox5: TGroupBox;
    CLBEstoque: TCheckListBox;
    CB_PLANOFUNDO: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    GroupBox6: TGroupBox;
    CLB_Bloqueios: TCheckListBox;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    Src_Inv: TDataSource;
    Qr_Inv: TQuery;
    Qr_InvNOMPRO: TStringField;
    Qr_InvUND: TStringField;
    Qr_InvMARCA: TStringField;
    Qr_InvESTOQUE: TFloatField;
    Qr_InvQTDANA: TFloatField;
    Qr_InvQTDBLQ: TFloatField;
    Qr_InvLOTEFOR: TStringField;
    Qr_InvDTVCTO: TDateTimeField;
    Qr_InvLOTE_RE: TStringField;
    Qr_InvGRUPO: TStringField;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand_filtros: TRLBand;
    filtros: TRLMemo;
    RLGroup1: TRLGroup;
    RLBand_grupo: TRLBand;
    RLDBText2: TRLDBText;
    rlband_cabgru: TRLBand;
    Qr_InvCODPRO: TFloatField;
    lbl_codpro: TRLMemo;
    lbl_nompro: TRLMemo;
    lbl_und: TRLMemo;
    lbl_esttot: TRLMemo;
    lbl_estAna: TRLMemo;
    lbl_bloqueados: TRLMemo;
    lbl_loteFab: TRLMemo;
    lbl_Dtvcto: TRLMemo;
    lbl_Lote_RE: TRLMemo;
    lbl_dtEntrada: TRLMemo;
    lbl_est_disp: TRLMemo;
    band_det: TRLBand;
    txt_codpro: TRLDBText;
    txt_nompro: TRLDBText;
    txt_und: TRLDBText;
    txt_esttot: TRLDBText;
    txt_est_disp: TRLDBText;
    Qr_Invest_disp: TFloatField;
    txt_estAna: TRLDBText;
    txt_bloqueados: TRLDBText;
    txt_loteFab: TRLDBText;
    txt_Lote_RE: TRLDBText;
    txt_Dtvcto: TRLDBText;
    txt_dtEntrada: TRLDBText;
    Qr_InvDTENTRADA: TDateTimeField;
    CB_BORDAS: TCheckBox;
    Qr_InvCONDARMAZ: TMemoField;
    rl_condicao: TRLMemo;
    txt_condicao: TRLDBMemo;
    rl_bruta: TRLMemo;
    rl_liquida: TRLMemo;
    Qr_InvPESOBRUTO: TFloatField;
    Qr_InvPESOLIQUIDO: TFloatField;
    txt_bruta: TRLDBText;
    txt_liquido: TRLDBText;
    rl_padrao: TRLMemo;
    txt_padrao: TRLDBText;
    Qr_InvEMBPADRAO: TStringField;
    rl_referencia: TRLMemo;
    txt_referencia: TRLDBText;
    Qr_InvREFERENCIA: TStringField;
    rl_fornecedor: TRLMemo;
    txt_fornecedor: TRLDBText;
    Qr_InvFORNECEDOR: TStringField;
    procedure CODGFORExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODGFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure RG_CODGRUClick(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CLB_BloqueiosClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure CB_BORDASClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_InvCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbSairClick(Sender: TObject);
    procedure band_detBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function Func_Filtros(pTipo: Integer): String;

  public
    { Public declarations }
  end;

var
  Frm_Ind_RegInv     : TFrm_Ind_RegInv;
  mnomeView          : String;
  IndRegInv_ori      : String;
implementation

uses S_DM1, S_DM4, S_GFor, Func, lerarq;

{$R *.dfm}

procedure TFrm_Ind_RegInv.CODGFORExit(Sender: TObject);
begin
CODGFOR.Text:=fdeixanum2(CODGFOR.Text);
if Trim(CODGFOR.Text)<>'' then
   begin
   if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR.Text) then
      begin
      lbx_codgfor.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codgfor.ItemIndex:=lbx_codgfor.Items.Count-1;
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end
   else
      begin
      fmensagem('Grupo de Fornecedor não Cadastrado!',0,['0'],0);
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_RegInv.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codfor.ItemIndex:=lbx_codfor.Items.Count-1;
      CODFOR.text := '';
      CODFOR.SetFocus;
      end
   else
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_Ind_RegInv.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if trim(codtip.Text)<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
      codtip.text := '';
      end
   else
      begin
      fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
      CODTIP.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_RegInv.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   EXIT;
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

procedure TFrm_Ind_RegInv.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   EXIT;
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

procedure TFrm_Ind_RegInv.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_Ind_RegInv.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_lpreco1',key);
   if valfloat(CODCON.Text)<>0 then
      begin
      lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TconCCODCON.AsString))
                                        +' - '+DM1.Tb_TconCNOME.AsString);
      CODCON.text := '';
      end;
   key:=#0;
   end;


end;

procedure TFrm_Ind_RegInv.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_lpreco1',key);
   if valfloat(CODTIP.Text)<>0 then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TproTCODTIP.AsString))
                                    +' - '+DM1.Tb_TproTNOME.AsString);
      CODTIP.text := '';
      end;
   key:=#0;
   end;

end;

procedure TFrm_Ind_RegInv.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.text := fchamafor(0,'frm_lpreco',key);
   if valfloat(CODFOR.Text)<>0 then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
      end;
   CODFOR.Text:='';
   key:=#0;
   end;


end;

procedure TFrm_Ind_RegInv.CODGFORKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFor(0,'frm_cabc',key);
   CODGFORExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Ind_RegInv.lbx_codgforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=46 then
   if lbx_codgfor.ItemIndex>=0 then
      lbx_codgfor.Items.Delete(lbx_codgfor.ItemIndex);

end;

procedure TFrm_Ind_RegInv.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Ind_RegInv.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_Ind_RegInv.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_Ind_RegInv.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_Ind_RegInv.CLBEstoqueClick(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);

end;

procedure TFrm_Ind_RegInv.RG_CODGRUClick(Sender: TObject);
begin
RG_CODGRU:=Valida_CheckList(RG_CODGRU);

end;

procedure TFrm_Ind_RegInv.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_Ind_RegInv.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_RegInv.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_RegInv.CLB_BloqueiosClick(Sender: TObject);
begin
CLB_Bloqueios:=Valida_CheckList(CLB_Bloqueios);
end;

procedure TFrm_Ind_RegInv.bbImprimirClick(Sender: TObject);
var
mNomGru: String;

begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if trim(mnomeView)='' then
   mNomeView:=fProcTemp(22);
if CB_SEPAR.ItemIndex=0 then
   mNomGru:='PDNOMCON ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODCON)'
else if CB_SEPAR.ItemIndex=1 then
   mNomGru:='PDNOMFOR ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODFOR)'
else if CB_SEPAR.ItemIndex=2 then
   mNomGru:='PDNOMGRU ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODGRU)'
else if CB_SEPAR.ItemIndex=3 then
   mNomGru:='PDMARCA'
else if CB_SEPAR.ItemIndex=4 then
   mNomGru:='PDNOMRAM ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODRAM)'
else if CB_SEPAR.ItemIndex=6 then
   mNomGru:='PDNOMTIP ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODTIP)'
else
   mNomGru:=chr(39)+' '+chr(39);


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADLGC','CLCODEMP','PDCODEMP','CLCODPRO','PDCODPRO');

if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADPRO_CIN','CIN_CODEMP','PDCODEMP','CIN_CODPRO','PDCODPRO');

if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');

{if lbx_codgfor.Items.Count>0 then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADFOR','PDCODEMP','FCODEMP','PDCODFOR','FCODFOR');
   end;}
   
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Create or replace view '+mnomeView+' as ');
DM1.Query2.SQL.Add('Select PDCODPRO AS CODPRO,PDNOME AS NOMPRO,PDUND AS UND, PDMARCA AS MARCA,'
                  +'       PDPESOB AS PESOBRUTO, PDPESOL AS PESOLIQUIDO, PDEMBPAD2 AS EMBPADRAO,'
                  +'       PDMARCA AS REFERENCIA, '
                  +'       FRAZAO AS FORNECEDOR,  ' 
                  +'       CLQTD AS ESTOQUE '
                  +'       ,0 AS QTDANA '
                  +'       ,0 AS QTDBLQ '
                  +'       ,CLNUMERO AS LOTEFOR '
                  +'       ,CLDTVCTO AS DTVCTO '
                  +'       ,CLNUMERO AS LOTE_RE '
                  +'       ,'+mNomGru+' AS GRUPO '
                  +'       ,CLDTENTRADA AS DTENTRADA '
                  +'       ,CIN_CONDARMAZ AS CONDARMAZ '
                  +' FROM CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '
                  +fChecaMultiEmpresa('PDCODEMP','CADPRO')
                  +la_instrucao);
DM1.Query2.SQL.Add(Func_Filtros(0));


DM1.Query2.SQL.Add(' union ');
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','CPB_CODEMP','PDCODEMP','CPB_CODPRO','PDCODPRO');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADPRO_CIN','PDCODEMP','CIN_CODEMP','PDCODPRO','CIN_CODPRO');

if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');

{if lbx_codgfor.Items.Count>0 then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADFOR','PDCODEMP','FCODEMP','PDCODFOR','FCODFOR');
   end;}


DM1.Query2.SQL.Add('Select PDCODPRO AS CODPRO, PDNOME AS NOMPRO,PDUND AS UND, PDMARCA AS MARCA,'
              +'       PDPESOB AS PESOBRUTO, PDPESOL AS PESOLIQUIDO, PDEMBPAD2 AS EMBPADRAO,'
              +'       PDMARCA AS REFERENCIA, '
              +'       FRAZAO AS FORNECEDOR,  '
              +'       0 AS ESTOQUE '
              +'       ,DECODE(CPB_ORIBLOQ,0,CPB_QTD,0) AS  QTDANA '
              +'       ,DECODE(CPB_ORIBLOQ,0,0,CPB_QTD) AS  QTDBLQ '
              +'       ,CPB_LOTE AS LOTEFOR '
              +'       ,CPB_DTVCTO AS  DTVCTO '
              +'       ,CPB_LOTE_RE AS  LOTE_RE '
              +'       ,'+mNomGru+' AS GRUPO '
              +'       ,CPB_DTENTRADA AS DTENTRADA '
              +'       ,CIN_CONDARMAZ AS CONDARMAZ '
              +' FROM CADPRO_BLOQ '+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '
              +fChecaMultiEmpresa('CPB_CODEMP','CADPRO')
              +la_instrucao);
DM1.Query2.SQL.Add(Func_Filtros(0));
try
   DM1.Query2.execsql;
except
   DM1.Query2.sql.savetofile(mpastatemp +'sql.txt');
   end;

Qr_Inv.Close;
Qr_Inv.SQL.Clear;
Qr_Inv.SQL.add('Select  CODPRO,max(NOMPRO) AS NOMPRO'
              +'       ,max(PESOBRUTO) AS PESOBRUTO '
              +'       ,max(PESOLIQUIDO) AS PESOLIQUIDO '
              +'       ,max(EMBPADRAO) AS EMBPADRAO '
              +'       ,max(REFERENCIA) AS REFERENCIA '
              +'       ,max(FORNECEDOR) AS FORNECEDOR '
              +'       ,max(UND) as UND '
              +'       ,max(MARCA) as MARCA '
              +'       ,sum(ESTOQUE) as ESTOQUE '
              +'       ,sum(QTDANA) as QTDANA '
              +'       ,sum(QTDBLQ) as QTDBLQ '
              +'       ,LOTEFOR '
              +'       ,DTVCTO '
              +'       ,max(LOTE_RE) as LOTE_RE '
              +'       ,max(GRUPO) as GRUPO '
              +'       ,max(DTENTRADA) as DTENTRADA '
              +'       ,max(CONDARMAZ) as CONDARMAZ '
              +' FROM '+mnomeView);
mcinst:=' where ';
mcinst2:=fInstrucaoEstoque(CLBEstoque,'ESTOQUE');
if trim(mcinst2)<>'' then
   begin
   Qr_Inv.SQL.Add(mcinst+mcinst2);
   mcinst:=' and ';
   end;
mcinst2:='';
if CLB_Bloqueios.Checked[CLB_Bloqueios.Items.Count-1]=false then
   begin
   if CLB_Bloqueios.Checked[0] then
      begin
      if mcinst2<>'' then
         mcinst2:=mcinst2+' or ';
      mcinst2:=mcinst2+' QTDANA>0 ';
      end;

   if CLB_Bloqueios.Checked[1] then
      begin
      if mcinst2<>'' then
         mcinst2:=mcinst2+' or ';
      mcinst2:=mcinst2+' QTDBLQ>0 ';
      end;
   if CLB_Bloqueios.Checked[2] then
      begin
      if mcinst2<>'' then
         mcinst2:=mcinst2+' or ';
      mcinst2:=mcinst2+' QTDANA=0 and QTDBLQ=0 ';
      end;
   end;
if trim(mcinst2)<>'' then
   begin
   mcinst2:='('+mcinst2+')';
   Qr_Inv.SQL.Add(mcinst+mcinst2);
   end;


Qr_Inv.Sql.add(' group by CODPRO,LOTEFOR,DTVCTO ');
Qr_Inv.Sql.add(' order by GRUPO,NOMPRO,CODPRO,LOTEFOR,DTVCTO');
Qr_Inv.Open;
if CB_PLANOFUNDO.Checked then
   begin
   DM4.Tb_LogoSis.Close;
   DM4.Tb_LogoSis.SQL.Clear;
   DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS where LSCHAVE='+chr(39)+'LOGO_PF'+chr(39));
   if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
      DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                            +' or LSCODEMP is null )');

   DM4.Tb_LogoSis.Open;
   if not DM4.Tb_LogoSis.IsEmpty then
      begin
      try
         DM4.Tb_LogoSisLSLOGO.SaveToFile('C:\SGE\LOGPF.JPG');
      except
         end;
      end;
   if FileExists('C:\SGE\LOGPF.JPG') then
      begin
      RLReport1.Background.Picture.LoadFromFile('C:\SGE\LOGPF.JPG');
      end;
   end
else
   RLReport1.Background.Picture:=nil;
RLReport1.PreviewModal;
end;

procedure TFrm_Ind_RegInv.CB_BORDASClick(Sender: TObject);
begin
if CB_BORDAS.Checked then
   mboolean:=false
else
   mboolean:=true;
RLReport1.Borders.DrawTop        :=mboolean;
RLReport1.Borders.DrawBottom     :=mboolean;
RLReport1.Borders.DrawRight      :=mboolean;
RLReport1.Borders.DrawLeft       :=mboolean;
RLBand_cab.Borders.DrawBottom    :=mboolean;
RLBand_filtros.Borders.DrawBottom:=mboolean;
rlband_cabgru.Borders.DrawBottom :=mboolean;
rlband_grupo.Borders.DrawBottom  :=mboolean;
rlGroup1.Borders.DrawBottom      :=mboolean;
lbl_codpro.Borders.DrawRight     :=mboolean;
lbl_nompro.Borders.DrawRight     :=mboolean;
lbl_und.Borders.DrawRight        :=mboolean;
lbl_esttot.Borders.DrawRight     :=mboolean;
lbl_estAna.Borders.DrawRight     :=mboolean;
lbl_bloqueados.Borders.DrawRight :=mboolean;
lbl_est_disp.Borders.DrawRight   :=mboolean;
lbl_loteFab.Borders.DrawRight    :=mboolean;
lbl_Dtvcto.Borders.DrawRight     :=mboolean;
lbl_Lote_RE.Borders.DrawRight    :=mboolean;
lbl_dtEntrada.Borders.DrawRight  :=mboolean;

txt_codpro.Borders.DrawRight     :=mboolean;
txt_nompro.Borders.DrawRight     :=mboolean;
txt_und.Borders.DrawRight        :=mboolean;
txt_esttot.Borders.DrawRight     :=mboolean;
txt_estAna.Borders.DrawRight     :=mboolean;
txt_bloqueados.Borders.DrawRight :=mboolean;
txt_est_disp.Borders.DrawRight   :=mboolean;
txt_loteFab.Borders.DrawRight    :=mboolean;
txt_Dtvcto.Borders.DrawRight     :=mboolean;
txt_Lote_RE.Borders.DrawRight    :=mboolean;
txt_dtEntrada.Borders.DrawRight  :=mboolean;
txt_bruta.Borders.DrawRight      :=mboolean;
txt_liquido.Borders.DrawRight    :=mboolean;
txt_condicao.Borders.DrawRight   :=mboolean;
txt_padrao.Borders.DrawRight     :=mboolean;
txt_referencia.Borders.DrawRight :=mboolean;

rl_condicao.Borders.DrawRight    :=mboolean;
rl_bruta.Borders.DrawRight       :=mboolean;
rl_liquida.Borders.DrawRight     :=mboolean;
rl_padrao.Borders.DrawRight      :=mboolean;
rl_referencia.Borders.DrawRight  :=mboolean;




end;

procedure TFrm_Ind_RegInv.FormCreate(Sender: TObject);
begin
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('SELECT GRCODGRU,GRNOME FROM CADGRU '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' where CRCODEMP=0'+IntToStr(codemp))
                  +' order by GRNOME ');
DM1.Query3.Open;
RG_CODGRU.Items.Clear;
While not DM1.Query3.Eof do
   begin
   RG_CODGRU.Items.Add(DM1.Query3.fieldbyName('GRNOME').AsString);
   DM1.Query3.Next;
   end;
RG_CODGRU.Items.Add('Todos');

CB_BORDASClick(Self);

Qr_InvESTOQUE.DisplayFormat    :=mcasind;
Qr_InvQTDANA.DisplayFormat     :=mcasind;
Qr_InvQTDBLQ.DisplayFormat     :=mcasind;
Qr_Invest_disp.DisplayFormat   :=mcasind;
Qr_InvPESOBRUTO.DisplayFormat  :=mcasind;
Qr_InvPESOLIQUIDO.DisplayFormat:=mcasind;
Qr_InvDTVCTO.DisplayFormat     :=fdt2;
Qr_InvDTENTRADA.DisplayFormat  :=fdt2;
CLB_Bloqueios.Checked[CLB_Bloqueios.Items.Count-1]:=true;
CLB_Bloqueios.ItemIndex:=CLB_Bloqueios.Items.Count-1;
CLB_Bloqueios:=Valida_CheckList(CLB_Bloqueios);

end;

procedure TFrm_Ind_RegInv.Qr_InvCalcFields(DataSet: TDataSet);
begin
Qr_Invest_disp.AsFloat:=Qr_InvESTOQUE.AsFloat
                       -(Qr_InvQTDANA.AsFloat+Qr_InvQTDBLQ.AsFloat);

end;

procedure TFrm_Ind_RegInv.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
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

end;

procedure TFrm_Ind_RegInv.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ind_RegInv.band_detBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if Qr_InvQTDBLQ.AsFloat<>0 then
   band_det.Color:=$008080FF
else if Qr_InvQTDANA.AsFloat<>0 then
   band_det.Color:=$00FFAAD5
else
  band_det.Color:=clWhite;
end;

function tFrm_Ind_RegInv.Func_Filtros(pTipo: Integer): String;
var
mResult:String;
x: Integer;
begin
mResult:='';
mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
if trim(mcinst2)<>'' then
   mResult:=mResult+' and FCODGFOR '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   mResult:=mResult+' and PDCODFOR '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   mResult:=mResult+' and PDCODTIP '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
   mResult:=mResult+' and PDCODCON '+mcinst2;
mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
   mResult:=mResult+' and PDCODRAM '+mcinst2;
mcinst2:='';
if not RG_CODGRU.Checked[RG_CODGRU.Items.Count-1] then
   begin
   mboolean:=false;
   for x:=0 to RG_CODGRU.Items.Count-1 do
      begin
      if RG_CODGRU.Checked[x] then
         begin
         mboolean:=true;
         break;
         end;
      end;
   if mboolean then
      begin
      DM1.Query3.First;
      mcinst2:='';
      for x:=0 to RG_CODGRU.Items.Count-1 do
         begin
         if RG_CODGRU.Checked[x] then
            begin
            if trim(mcinst2)<>'' then
               mcinst2:=mcinst2+',';
            if DM1.Query3.Locate('GRNOME',RG_CODGRU.Items[x],[]) then
               mcinst2:=mcinst2+DM1.Query3.fieldbyName('GRCODGRU').Asstring;
            end;
         end;
      end;
   end;

if trim(mcinst2)<>'' then
   mResult:=mResult+' and  PDCODGRU in ('+mcinst2+')';
mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   mResult:=mResult+' and PDNIVEL '+mcinst2;
result:=mResult;
end;
procedure TFrm_Ind_RegInv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Ind_RegInv.FormShow(Sender: TObject);
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

end.
