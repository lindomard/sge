unit S_LPreco2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,lerarq,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls, ComCtrls, RLReport,func,S_DM1,
  RLXLSFilter, RLPDFFilter, RLFilters, RLHTMLFilter, RLDraftFilter, jpeg,
  CheckLst, Mask,S_Regiao,S_DM6, RLRichFilter, ExtDlgs, ToolEdit, CurrEdit,s_lerarq_geral;

type
  TFrm_LPreco2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    lbx_codfor: TListBox;
    CODFOR: TEdit;
    Label5: TLabel;
    OMITIR_FOR: TCheckBox;
    OMITIR_PRO: TCheckBox;
    Label1: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    TsSegundarios: TTabSheet;
    RG_ORDEM: TRadioGroup;
    produto: TQuery;
    dsproduto: TDataSource;
    matricial: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    produtoPDPRECO1: TFloatField;
    produtoPDPRECO2: TFloatField;
    RG_QUEBRA: TRadioGroup;
    produtoPDCODEMP: TFloatField;
    produtoPDCODPRO: TFloatField;
    produtoPDNOME: TStringField;
    produtoPDUND: TStringField;
    produtoPDMARCA: TStringField;
    produtoPDNOMFOR: TStringField;
    produtoNOMGRU: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    CODCON: TEdit;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    produtoPDCODTIP: TFloatField;
    produtoPDCODCON: TFloatField;
    produtoPDCODGRU: TFloatField;
    Label4: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label6: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    StaticText10: TStaticText;
    CLBNivel: TCheckListBox;
    Ts_Relatorio: TTabSheet;
    RLReport1: TRLReport;
    rl_cabger: TRLBand;
    RLGroup1: TRLGroup;
    rl_cabgru: TRLBand;
    db_grupo: TRLDBText;
    rl_cabregiao: TRLBand;
    rl_cabpro: TRLBand;
    lbl_codpro: TRLLabel;
    lbl_nompro: TRLLabel;
    lbl_colpco01: TRLLabel;
    lbl_colpco02: TRLLabel;
    lbl_apresentacao: TRLLabel;
    lbl_cxcom: TRLLabel;
    produtoDESC01: TFloatField;
    produtoESTOQUE: TFloatField;
    produtoPDNOME2: TStringField;
    Label10: TLabel;
    CODREG: TEdit;
    NOMREG: TEdit;
    rl_rodape: TRLBand;
    memo_regiao: TRLMemo;
    lbl_cab01: TRLLabel;
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    CLB_STATUS: TCheckListBox;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    VENDA1: TEdit;
    OMITIR_STATUS: TCheckBox;
    CB_SEMBORDA: TCheckBox;
    CB_NOME2: TCheckBox;
    bbImprimir: TBitBtn;
    sb_SalvarPadrao: TSpeedButton;
    bbSair: TBitBtn;
    produtoCODBAR: TFloatField;
    Label11: TLabel;
    CB_QDEC_PCO: TComboBox;
    RLGroup2: TRLGroup;
    rl_cabitens: TRLBand;
    db_codpro: TRLDBText;
    db_nompro: TRLDBText;
    db_pco01: TRLDBText;
    db_pco02: TRLDBText;
    db_apres: TRLDBText;
    db_cxcom: TRLDBText;
    rl_cabsubgru: TRLBand;
    db_cabsubgru: TRLDBText;
    produtoSUBGRU: TStringField;
    RLRichFilter1: TRLRichFilter;
    CLBEstoque: TCheckListBox;
    Label15: TLabel;
    CB_SEPPAG: TCheckBox;
    GB_AJUSTAR: TGroupBox;
    AJUSTARPCO: TEdit;
    CB_DIMINUIR: TCheckBox;
    tsLogotipos: TTabSheet;
    logolpreco: TImage;
    bbAdquirir: TBitBtn;
    bbExcImagem: TBitBtn;
    opd1: TOpenPictureDialog;
    tsCabecalho: TTabSheet;
    tsRodape: TTabSheet;
    Label9: TLabel;
    TITREL: TEdit;
    Label12: TLabel;
    TAMFONTE01: TEdit;
    CB_PRECO: TComboBox;
    rlcablog: TRLBand;
    RLImage1: TRLImage;
    produtoPDAPRES: TStringField;
    produtoPDEMBMUL: TFloatField;
    produtopreco_uni: TFloatField;
    produtoqtdund: TStringField;
    lbl_cab02: TRLLabel;
    TITREL02: TEdit;
    Label8: TLabel;
    TAMFONTE02: TEdit;
    Label7: TLabel;
    LINHAROD01: TEdit;
    LINHAROD02: TEdit;
    Label13: TLabel;
    MTAMFR01: TEdit;
    MTAMFR02: TEdit;
    Label14: TLabel;
    LINHAROD03: TEdit;
    LINHAROD04: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    MTAMFR03: TEdit;
    MTAMFR04: TEdit;
    LINHAROD05: TEdit;
    LINHAROD06: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    MTAMFR05: TEdit;
    MTAMFR06: TEdit;
    RLBand1: TRLBand;
    lbl_emitido: TRLLabel;
    produtoapres01: TStringField;
    produtoapres02: TStringField;
    db_apres02: TRLDBText;
    produtodescricao: TStringField;
    produtoPDSIT: TStringField;
    CB_IMPCLAS: TCheckBox;
    produtocodpro_calc: TStringField;
    lbl_clas: TRLLabel;
    db_clas: TRLDBText;
    produtoPDCLAS: TStringField;
    TsWord: TTabSheet;
    CB_MODWORD: TCheckBox;
    RLDocWord: TRLReport;
    RLCabGer: TRLBand;
    lbl_datasis: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    pagina: TRLSystemInfo;
    qtdpagina: TRLSystemInfo;
    RLBand2: TRLBand;
    lblw_codpro: TRLLabel;
    lblw_nompro: TRLLabel;
    lblw_marca: TRLLabel;
    lblw_preco: TRLLabel;
    lblw_und: TRLLabel;
    RLBand3: TRLBand;
    txtw_marca: TRLDBText;
    txtw_nompro: TRLDBText;
    txtw_codpro: TRLDBText;
    txtw_und: TRLDBText;
    txtw_preco: TRLDBText;
    RLBand4: TRLBand;
    GB_PAGE: TGroupBox;
    BTN_PAGE: TButton;
    Label20: TLabel;
    alt_page: TCurrencyEdit;
    Label21: TLabel;
    lar_page: TCurrencyEdit;
    rlRodape: TRLMemo;
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_PROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODPROExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_TPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure OMITIR_CONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_GRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_RAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBNivelClick(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure rl_cabgruBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODREGKeyPress(Sender: TObject; var Key: Char);
    procedure CODREGExit(Sender: TObject);
    procedure CB_QDEC_PCOClick(Sender: TObject);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure RLGroup1AfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AJUSTARPCOExit(Sender: TObject);
    procedure CLB_STATUSClick(Sender: TObject);
    procedure bbAdquirirClick(Sender: TObject);
    procedure bbExcImagemClick(Sender: TObject);
    procedure produtoCalcFields(DataSet: TDataSet);
    procedure TAMFONTE01Exit(Sender: TObject);
    procedure TAMFONTE02Exit(Sender: TObject);
    procedure MTAMFR01Exit(Sender: TObject);
    procedure MTAMFR02Exit(Sender: TObject);
    procedure MTAMFR03Exit(Sender: TObject);
    procedure MTAMFR04Exit(Sender: TObject);
    procedure MTAMFR05Exit(Sender: TObject);
    procedure MTAMFR06Exit(Sender: TObject);
    procedure CB_MODWORDClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTN_PAGEClick(Sender: TObject);
  private
    { Private declarations }
     function Imp_grade(pTipo: Boolean): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_LPreco2: TFrm_LPreco2;

implementation

uses S_Pro, S_For, s_tipPro, S_GPro, S_TCon, S_Ram, S_DM4, S_Funcao, Math;

{$R *.dfm}

procedure TFrm_LPreco2.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_LPreco2.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_LPreco2.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco2.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco2.CODPROExit(Sender: TObject);
begin

//if Trim(CODPRO.Text)='' then
//   CODPRO.Text:='Todos...'
   if Trim(CODPRO.Text)<>'' then
   begin
   flcadpro(1,0,0,CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;
end;

procedure TFrm_LPreco2.CODFORExit(Sender: TObject);
begin

CODFOR.Text:=fdeixanum(CODFOR.Text);
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
      end;
   end;
end;

procedure TFrm_LPreco2.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Lpreco2',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_lpreco2',key);
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                 +' - '+DM1.Tb_ProPDNOME.Value);
      codpro.text := '';
      codpro.setfocus;
      key:=#0;
      end;
   end;

end;

procedure TFrm_LPreco2.CODFORKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_LPreco2.CODPROMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco2.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco2.bbSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrm_LPreco2.bbImprimirClick(Sender: TObject);
var
x: Integer;
mcol01: Integer;
mNomcol01, mNomcol02: String;
mCampoGrupo,mCampoSub:String;
mPerAcreDes: real;
begin
mNomcol01:='PDPRECO1';
mNomcol02:='PDPRECO2';
mPerAcreDes:=0;

if CB_PRECO.ItemIndex=5 then
   mNomcol01:='PDPMC'
else if CB_PRECO.ItemIndex=4 then
   mNomcol01:='PDPCOFAB'
else if CB_PRECO.ItemIndex=3 then
   mNomcol01:='PDPRECOC'
else if CB_PRECO.ItemIndex=2 then
   mNomcol01:='PDPRECO3'
else if CB_PRECO.ItemIndex=1 then
   mNomcol01:='PDPRECO2'
else
   mNomcol01:='PDPRECO1';


if CODREG.Text<>'' then
   begin
   if not flqr1('CR_NOMREG,CR_ACREREG,CR_DESREG','CR_','CADREGIAO','N','CR_CODREG',trim(CODREG.Text)) then
      begin
      fmensagem('Regiao nao Cadastrada!',0,['0'],0);
      CODREG.SetFocus;
      end;
   if DM1.Query1.FieldByName('CR_ACREREG').AsFloat>0 then
      mPerAcreDes:=DM1.query1.FieldbyName('CR_ACREREG').Asfloat
   else
      mPerAcreDes:=DM1.query1.FieldbyName('CR_DESREG').Asfloat*-1;


   rl_cabregiao.Visible:=true;
   memo_regiao.Lines.Clear;
   memo_regiao.Lines.Add('Regiao: ' +CODREG.Text+' '+NOMREG.Text);
   end
else
   rl_cabregiao.Visible:=false;
//rl_cabitens.Font.Size:=StrToInt(TAMFONTE.Text);

if ValFloat(AJUSTARPCO.Text)<>0  then
   begin
   if CB_DIMINUIR.Checked then
      mPerAcreDes:=ValFloat(AJUSTARPCO.Text)*-1
   else
      mPerAcreDes:=ValFloat(AJUSTARPCO.Text);
   end;





bbImprimir.Enabled := false;
produto.close;
produto.sql.clear;
produto.sql.add('select pdcodemp,pdcodpro,');
//if CB_MODWORD.Checked then
   produto.sql.add(' PDNOME ');
//else
//  begin
//    produto.sql.add('DECODE(PDNOME2,null,pdnome,PDNOME2) as PDNOME ');
//  end;
produto.sql.add(' , round('+mNomcol01+'+'+mNomcol01+'*'+mudavp(floattostr(mPerAcreDes))+'/100,'+InttoStr(mQtdCas_arredpu)+') as  pdpreco1,'
               +'round('+mNomcol02+'+'+mNomcol02+'*'+mudavp(floattostr(mPerAcreDes))+'/100,'+InttoStr(mQtdCas_arredpu)+') as  pdpreco2,');
produto.sql.add(' pdund,pdmarca,pdnomfor,pdcodtip,pdcodcon,pdcodgru,PDCODBAR AS CODBAR');

produto.sql.add('      ,PDDESC1 AS DESC01, '
               +'       PDSALDO AS ESTOQUE, '
               +'       case WHEN LENGTH(PDNOME2)<2 THEN PDNOME ELSE PDNOME2 END AS PDNOME2  '
               +' ,PDAPRES ,PDEMBMUL,PDCLAS '
               +' ,PDFIS_CST_ICMS_INT_REV as PDSIT');
if RG_QUEBRA.ItemIndex = 0 then
   begin
   mCampoGrupo:=chr(39)+insere2(' ',' ',40)+chr(39);
   mCampoSub  :=chr(39)+insere2(' ',' ',40)+chr(39);
   end
else if RG_QUEBRA.ItemIndex = 1 then
   begin
   mCampoGrupo:='PDNOMFOR';
   mCampoSub  :='PDNOMFOR';
//   mCampoSub  :=chr(39)+insere2(' ',' ',40)+chr(39);
   end
else if RG_QUEBRA.ItemIndex = 2 then
   begin
   mCampoGrupo:='PDNOMGRU';
   mCampoSub  :='PDNOMGRU';
//   mCampoSub  :=chr(39)+insere2(' ',' ',40)+chr(39);
   end
else if RG_QUEBRA.ItemIndex = 3 then
   begin
   mCampoGrupo:='PDNOMRAM';
   mCampoSub  :='PDNOMRAM';

//   mCampoSub  :=chr(39)+insere2(' ',' ',40)+chr(39);
   end
else if RG_QUEBRA.ItemIndex = 4 then
   begin
   mCampoGrupo:='PDNOMCON';
   mCampoSub  :='PDNOMCON';
//   mCampoSub  :=chr(39)+insere2(' ',' ',40)+chr(39);
   end
else if RG_QUEBRA.ItemIndex = 5 then
   begin
   mCampoGrupo:='PDNOMTIP';
   mCampoSub  :='PDNOMTIP';
//   mCampoSub  :=chr(39)+insere2(' ',' ',40)+chr(39);
   end
else if RG_QUEBRA.ItemIndex = 6 then
   begin
   mCampoGrupo:='PDNOMGRU';
   mCampoSub  :='PDNOMRAM';
   end;


if RG_QUEBRA.ItemIndex<>0 then
   begin
   rl_cabgru.Visible := true;
   rl_cabgru.Height  := 28;
   end
else
   begin
   rl_cabgru.Visible := false;
   rl_cabgru.Height  := 0;
   end;
if RG_QUEBRA.ItemIndex=6 then
   begin
   rl_cabsubgru.Visible := true;
   rl_cabsubgru.Height  := 28;
//   rl_cabitens.Top      := 28;
   end
else
   begin
   rl_cabsubgru.Visible := false;
   rl_cabsubgru.Height  := 0;
//   rl_cabitens.Top      :=0;
   end;

lbl_colpco01.Caption:=VENDA1.Text;
produto.sql.add(','+mcampoGrupo+' as NOMGRU ');
produto.sql.add(','+mCampoSub+' as SUBGRU ');

produto.sql.add(' from cadpro ');
produto.sql.add(' where pdcodemp =0'+IntToStr(codemp) );


mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and  PDCODPRO '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODFOR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODTIP '+mcinst2);

mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and  '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODCON '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODGRU '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODRAM '+mcinst2);


mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDNIVEL '+mcinst2);




mcinst2:=fItenstCheckListBox(0,CLB_STATUS);
if trim(mcinst2)<>'' then
   begin
   if OMITIR_STATUS.Checked then
      produto.SQL.Add(' and PDSTATUS not '+mcinst2)
   else
      produto.SQL.Add(' and PDSTATUS '+mcinst2);
   end;

IF RG_ORDEM.ItemIndex = 0 THEN
   begin
   if CB_NOME2.Checked then
      PRODUTO.SQL.ADD('ORDER BY SUBGRU,NOMGRU,PDNOME2,PDAPRES,PDCODPRO ')
   else
      PRODUTO.SQL.ADD('ORDER BY SUBGRU,NOMGRU,PDNOME,PDAPRES,PDCODPRO ');
   end
ELSE
   PRODUTO.SQL.ADD('ORDER BY SUBGRU,NOMGRU,PDAPRES,PDCODPRO ');
//PRODUTO.SQL.SaveToFile(mpastatemp +'sqllp.TXT');

TRY
   produto.open;
except
   PRODUTO.SQL.SaveToFile(mpastatemp +'sqllp.TXT');
   end;
if produto.IsEmpty then
   begin
   fmensagem('Nao Foi Encontrado Registro(s) P/ Parametro(s) Selecionado(s)',0,['0'],0);
   bbImprimir.Enabled:=true;
   exit;
   end;

if CB_SEMBORDA.Checked then
   Imp_grade(false)
else
   Imp_grade(true);


lbl_emitido.Caption:=fEmitido(0);
lbl_cab01.Caption:=TITREL.Text;
lbl_cab02.Caption:=TITREL02.Text;
if mPerAcreDes>0 then
   lbl_cab01.Caption:=lbl_cab01.Caption+'.+'
else if mPerAcreDes<0 then
   lbl_cab01.Caption:=lbl_cab01.Caption+'.-';
lbl_cab01.Font.Size:=ValInt2(TAMFONTE01.Text);
lbl_cab02.Font.Size:=ValInt2(TAMFONTE02.Text);
rlRodape.Lines.Clear;
if trim(LINHAROD01.Text)<>'' then
   rlRodape.Lines.Add(LINHAROD01.Text);

if trim(LINHAROD02.Text)<>'' then
   rlRodape.Lines.Add(LINHAROD02.Text);

if trim(LINHAROD03.Text)<>'' then
   rlRodape.Lines.Add(LINHAROD03.Text);

if trim(LINHAROD04.Text)<>'' then
   rlRodape.Lines.Add(LINHAROD04.Text);

if trim(LINHAROD05.Text)<>'' then
   rlRodape.Lines.Add(LINHAROD05.Text);

if trim(LINHAROD06.Text)<>'' then
   rlRodape.Lines.Add(LINHAROD06.Text);



{
rlRod01.Font.Size:=ValInt2(MTAMFR01.Text);
rlRod02.Font.Size:=ValInt2(MTAMFR02.Text);
rlRod03.Font.Size:=ValInt2(MTAMFR03.Text);
rlRod04.Font.Size:=ValInt2(MTAMFR04.Text);
rlRod05.Font.Size:=ValInt2(MTAMFR05.Text);
rlRod06.Font.Size:=ValInt2(MTAMFR06.Text);
 }

 
if CB_IMPCLAS.Checked then
   begin
   lbl_clas.Visible      :=true;
   db_clas.Visible       :=true;
   lbl_codpro.Left       :=0;
   lbl_codpro.Width      :=59;
   lbl_nompro.Left       :=61;
   lbl_nompro.Width      :=245;
   lbl_clas.Left         :=306;
   lbl_clas.Width        :=84;
   lbl_apresentacao.Left :=390;
   lbl_apresentacao.Width:=112;
   lbl_cxcom.Left         :=502;
   lbl_cxcom.Width        :=50;
   lbl_colpco01.Left         :=552;
   lbl_colpco01.Width        :=085;
   lbl_colpco02.Left         :=636;
   lbl_colpco02.Width        :=085;
   db_apres.Left             :=390;
   db_apres.Width            :=059;
   db_apres02.Left           :=449;
   db_apres02.Width          :=053;
   end
else
   begin
   lbl_clas.Visible      :=False;
   db_clas.Visible       :=False;
   lbl_codpro.Left       :=0;
   lbl_codpro.Width      :=82;
   lbl_nompro.Left       :=87;
   lbl_nompro.Width      :=290;
   lbl_clas.Left         :=376;
   lbl_clas.Width        :=112;
   lbl_apresentacao.Left :=380;
   lbl_apresentacao.Width:=112;
   lbl_cxcom.Left         :=489;
   lbl_cxcom.Width        :=050;
   lbl_colpco01.Left      :=542;
   lbl_colpco01.Width     :=094;
   lbl_colpco02.Left      :=638;
   lbl_colpco02.Width     :=085;

   db_apres.Left             :=380;
   db_apres.Width            :=059;

   db_apres02.Left           :=439;
   db_apres02.Width          :=053;

   end;





fSalvarImagem('LPRECO02','C:\SGE\LPRECO02.JPG');
if FileExists('C:\SGE\LPRECO02.JPG') then
   begin
   RLImage1.Picture.LoadFromFile('C:\SGE\LPRECO02.JPG');
   end
else
   RLImage1.Picture:=nil;

if CB_MODWORD.Checked then
   begin
   RLDocWord.PreviewModal;
   end
else
   begin
   RLReport1.PageSetup.PaperWidth:=lar_page.Value;
   RLReport1.PageSetup.PaperHeight:=alt_page.Value;
   RLReport1.PreviewModal;
   end;
verteclado(0);
bbImprimir.Enabled := true;
end;


procedure TFrm_LPreco2.FormCreate(Sender: TObject);
var
x: Integer;
begin
ts_relatorio.TabVisible:=false;
pagecontrol1.activepageindex:=0;
produtoPDPRECO1.DisplayFormat := mcasaspu;
produtoPDPRECO2.DisplayFormat := mcasaspu;
produtoDESC01.DisplayFormat   := mcasaspu;
produtopreco_uni.DisplayFormat := mcasaspu;

CB_QDEC_PCO.ItemIndex:=DM1.Tb_PargerPCASASPU.AsInteger;

if flfilpad(0,'_LPRECO2','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_QUEBRA',[]) then
      RG_QUEBRA.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMPCLAS',[]) then
      CB_IMPCLAS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MODWORD',[]) then
      CB_MODWORD.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEPPAG',[]) then
      CB_SEPPAG.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_SEPPAG.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','VENDA1',[]) then
      VENDA1.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PRECO',[]) then
      CB_PRECO.ItemIndex:=Valint(DM4.Tb_FilPad2FPVALOR.Value);


   if DM4.Tb_FilPad2.Locate('FPCOMP','TITREL',[]) then
      TITREL.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','TAMFONTE01',[]) then
      TAMFONTE01.Text:=DM4.Tb_FilPad2FPVALOR.Text;

   if DM4.Tb_FilPad2.Locate('FPCOMP','TITREL02',[]) then
      TITREL02.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','TAMFONTE02',[]) then
      TAMFONTE02.Text:=DM4.Tb_FilPad2FPVALOR.Text;

   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHAROD01',[]) then
      LINHAROD01.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTAMFR01',[]) then
      MTAMFR01.Text:=DM4.Tb_FilPad2FPVALOR.Text;


   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHAROD02',[]) then
      LINHAROD02.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTAMFR02',[]) then
      MTAMFR02.Text:=DM4.Tb_FilPad2FPVALOR.Text;

   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHAROD03',[]) then
      LINHAROD03.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTAMFR03',[]) then
      MTAMFR03.Text:=DM4.Tb_FilPad2FPVALOR.Text;


   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHAROD04',[]) then
      LINHAROD04.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTAMFR04',[]) then
      MTAMFR04.Text:=DM4.Tb_FilPad2FPVALOR.Text;

   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHAROD05',[]) then
      LINHAROD05.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTAMFR05',[]) then
      MTAMFR05.Text:=DM4.Tb_FilPad2FPVALOR.Text;

   if DM4.Tb_FilPad2.Locate('FPCOMP','LINHAROD06',[]) then
      LINHAROD06.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','MTAMFR06',[]) then
      MTAMFR06.Text:=DM4.Tb_FilPad2FPVALOR.Text;


   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_ORDEM',[]) then
      RG_ORDEM.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_QDEC_PCO',[]) then
      CB_QDEC_PCO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);


   if DM4.Tb_FilPad2.Locate('FPCOMP','CLB_STATUS',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLB_STATUS.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLB_STATUS.Checked[ValInt(mcinst)]:=true;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_STATUS',[]) then
      OMITIR_STATUS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      OMITIR_STATUS.Checked:=false;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEMBORDA',[]) then
      CB_SEMBORDA.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_SEMBORDA.Checked:=true;




   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_NOME2',[]) then
      CB_NOME2.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_NOME2.Checked:=false;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBNIVEL',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBNivel.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBNivel.Checked[ValInt(mcinst)]:=true;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBESTOQUE',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBEstoque.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBEstoque.Checked[ValInt(mcinst)]:=true;
      end;
   end
else
   begin
   CLBNivel.Checked[0]  :=true;
   end;

if codusr=1111 then
  GB_PAGE.Visible:=True
else
  GB_PAGE.Visible:=False;



if flfilpad(0,'_LPRECO2_PAGE','') then
  begin
  if (DM4.Tb_FilPad2.Locate('FPCOMP','ALT_PAGE',[])) and (DM4.Tb_FilPad2FPVALOR.AsFloat>0) then
    alt_page.Value:=DM4.Tb_FilPad2FPVALOR.AsFloat
  else
    alt_page.Value:=RLReport1.PageSetup.PaperHeight;
  if (DM4.Tb_FilPad2.Locate('FPCOMP','LAR_PAGE',[])) and (DM4.Tb_FilPad2FPVALOR.AsFloat>0) then
    lar_page.Value:=DM4.Tb_FilPad2FPVALOR.AsFloat
  else
    lar_page.Value:=RLReport1.PageSetup.PaperWidth;
  end
else
  begin
  alt_page.Value:=RLReport1.PageSetup.PaperHeight;
  lar_page.Value:=RLReport1.PageSetup.PaperWidth;
  end;


fSalvarImagem('LPRECO02','C:\SGE\LPRECO02.JPG');
if FileExists('C:\SGE\LPRECO02.JPG') then
   begin
   logolpreco.Picture.LoadFromFile('C:\SGE\LPRECO02.JPG');
   end
else
   logolpreco.Picture:=nil;



end;


function TFrm_LPreco2.Imp_grade(pTipo: Boolean):Boolean;
begin
{
rl_cabger.Borders.DrawTop  :=pTipo;
rl_cabger.Borders.DrawLeft :=pTipo;
rl_cabger.Borders.DrawRight:=pTipo;
}
rl_cabpro.Borders.DrawTop  :=pTipo;
rl_cabpro.Borders.DrawLeft :=pTipo;
rl_cabpro.Borders.DrawRight:=pTipo;

rl_cabgru.Borders.DrawTop  :=pTipo;
rl_cabgru.Borders.DrawLeft :=pTipo;
rl_cabgru.Borders.DrawRight:=pTipo;

rl_cabsubgru.Borders.DrawTop  :=pTipo;
rl_cabsubgru.Borders.DrawLeft :=pTipo;
rl_cabsubgru.Borders.DrawRight:=pTipo;

rl_cabitens.Borders.DrawTop  :=pTipo;
rl_cabitens.Borders.DrawLeft :=pTipo;
rl_cabitens.Borders.DrawRight:=pTipo;

rl_rodape.Borders.DrawTop    :=pTipo;

lbl_codpro.Borders.DrawRight      :=pTipo;
lbl_nompro.Borders.DrawRight      :=pTipo;
lbl_clas.Borders.DrawRight        :=pTipo;

lbl_apresentacao.Borders.DrawRight:=pTipo;
lbl_cxcom.Borders.DrawRight       :=pTipo;
lbl_colpco01.Borders.DrawRight    :=pTipo;

db_codpro.Borders.DrawRight       :=pTipo;
db_nompro.Borders.DrawRight       :=pTipo;
db_clas.Borders.DrawRight         :=pTipo;
db_apres02.Borders.DrawRight      :=pTipo;
db_cxcom.Borders.DrawRight        :=pTipo;
db_pco01.Borders.DrawRight        :=pTipo;



end;

procedure TFrm_LPreco2.CODTIPExit(Sender: TObject);
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

procedure TFrm_LPreco2.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_lpreco2',key);
   if valfloat(CODTIP.Text)<>0 then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TproTCODTIP.AsString))
                                    +' - '+DM1.Tb_TproTNOME.AsString);
      CODTIP.text := '';
      end;
   key:=#0;
   end;
//else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_LPreco2.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco2.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_LPreco2.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco2.CODCONExit(Sender: TObject);
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

procedure TFrm_LPreco2.CODGRUExit(Sender: TObject);
begin
//if Trim(CODGRU.Text)='' then
//   CODGRU.Text:='Todos...'
//else
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

procedure TFrm_LPreco2.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_lpreco2',key);
   if valfloat(CODGRU.Text)<>0 then
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_GproGRCODGRU.AsString))
                                   +' - '+DM1.Tb_GproGRNOME.AsString);
      CODGRU.text := '';
      end;
   key:=#0;
   end;

end;
procedure TFrm_LPreco2.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_lpreco2',key);
   if valfloat(CODCON.Text)<>0 then
      begin
      lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TconCCODCON.AsString))
                                        +' - '+DM1.Tb_TconCNOME.AsString);
      CODCON.text := '';
      end;
   key:=#0;
   end;

end;

procedure TFrm_LPreco2.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco2.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_LPreco2.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco2.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco2.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco2.CODRAMExit(Sender: TObject);
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

procedure TFrm_LPreco2.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

   CODRAM.Text:=fChamaRamPro(0,'frm_ram',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_LPreco2.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco2.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_LPreco2.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_LPreco2.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco2.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_LPreco2.sb_SalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(0,'_LPRECO2','');
fGravaPadroes(0,'VENDA1'    ,'text' ,'_LPRECO2',VENDA1.Text);
fGravaPadroes(0,'CB_PRECO'  ,'itemindex'   ,'_LPRECO2',IntTostr(CB_PRECO.ItemIndex));

fGravaPadroes(0,'TITREL'    ,'text' ,'_LPRECO2',TITREL.Text);
fGravaPadroes(0,'TAMFONTE01','text' ,'_LPRECO2',TAMFONTE01.Text);
fGravaPadroes(0,'TITREL02'  ,'text' ,'_LPRECO2',TITREL02.Text);
fGravaPadroes(0,'TAMFONTE02','text' ,'_LPRECO2',TAMFONTE02.Text);

fGravaPadroes(0,'LINHAROD01'    ,'text' ,'_LPRECO2',LINHAROD01.Text);
fGravaPadroes(0,'MTAMFR01'      ,'text' ,'_LPRECO2',MTAMFR01.Text);

fGravaPadroes(0,'LINHAROD02'    ,'text' ,'_LPRECO2',LINHAROD02.Text);
fGravaPadroes(0,'MTAMFR02'      ,'text' ,'_LPRECO2',MTAMFR02.Text);
fGravaPadroes(0,'LINHAROD03'    ,'text' ,'_LPRECO2',LINHAROD03.Text);
fGravaPadroes(0,'MTAMFR03'      ,'text' ,'_LPRECO2',MTAMFR03.Text);

fGravaPadroes(0,'LINHAROD04'    ,'text' ,'_LPRECO2',LINHAROD04.Text);
fGravaPadroes(0,'MTAMFR04'      ,'text' ,'_LPRECO2',MTAMFR04.Text);
fGravaPadroes(0,'LINHAROD05'    ,'text' ,'_LPRECO2',LINHAROD05.Text);
fGravaPadroes(0,'MTAMFR05'      ,'text' ,'_LPRECO2',MTAMFR05.Text);
fGravaPadroes(0,'LINHAROD06'    ,'text' ,'_LPRECO2',LINHAROD06.Text);
fGravaPadroes(0,'MTAMFR06'      ,'text' ,'_LPRECO2',MTAMFR06.Text);





fGravaPadroes(0,'RG_QUEBRA'     ,'itemindex' ,'_LPRECO2',IntTostr(RG_QUEBRA.ItemIndex));
fGravaPadroes(0,'RG_ORDEM'      ,'itemindex' ,'_LPRECO2',IntTostr(RG_ORDEM.ItemIndex));
fGravaPadroes(0,'CB_SEPPAG'     ,'checked'   ,'_LPRECO2',iif(CB_SEPPAG.Checked,'true','false'));
fGravaPadroes(0,'CB_QDEC_PCO'   ,'itemindex' ,'_LPRECO2',IntTostr(CB_QDEC_PCO.ItemIndex));
fGravaPadroes(0,'CB_IMPCLAS'    ,'checked'   ,'_LPRECO2',iif(CB_IMPCLAS.Checked,'true','false'));

fGravaPadroes(0,'CB_MODWORD'    ,'checked'   ,'_LPRECO2',iif(CB_MODWORD.Checked,'true','false'));

mcinst2:='';
for x:=0 to CLB_STATUS.Items.Count-1 do
   begin
   if CLB_STATUS.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'CLB_STATUS'          ,'itemindex' ,'_LPRECO2',mcinst2);

fGravaPadroes(0,'OMITIR_STATUS'      ,'checked'   ,'_LPRECO2',iif(OMITIR_STATUS.Checked,'true','false'));
fGravaPadroes(0,'CB_SEMBORDA'        ,'checked'   ,'_LPRECO2',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(0,'CB_NOME2'           ,'checked'   ,'_LPRECO2',iif(CB_NOME2.Checked,'true','false'));

mcinst2:='';
for x:=0 to CLBNivel.Items.Count-1 do
   begin
   if CLBNivel.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'CLBNIVEL'          ,'itemindex' ,'_LPRECO2',mcinst2);

mcinst2:='';
for x:=0 to CLBEstoque.Items.Count-1 do
   begin
   if CLBEstoque.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'CLBESTOQUE'          ,'itemindex' ,'_LPRECO2',mcinst2);


fmensagem('Gravado!',0,['0'],0);
end;


procedure TFrm_LPreco2.rl_cabgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{
if (CB_SEPPAG.Checked) and (mEmitiuPrimeiro) then
   RLReport1.NewPage;
mEmitiuPrimeiro:=true;
}
end;

procedure TFrm_LPreco2.CODREGKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODREG.Text:=fChamaRegiao(0,'frm_LPreco2',Key);
   if trim(CODREG.Text)<>'' then
      CODREGexit(Self);
   key:=#0;
   end;
end;

procedure TFrm_LPreco2.CODREGExit(Sender: TObject);
begin
CODREG.Text:=fdeixanum2(codreg.Text);
if trim(codreg.Text)='' then
   NOMREG.Text:='Normal(Sem Regiao)'
else
   begin
   if flqr1('CR_NOMREG,CR_ACREREG,CR_DESREG','CR_','CADREGIAO','N','CR_CODREG',trim(CODREG.Text)) then
      NOMREG.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fmensagem('Regiao nao Cadastrada!',0,['0'],0);
      CODREG.SetFocus;
      end;
   end;
end;

procedure TFrm_LPreco2.CB_QDEC_PCOClick(Sender: TObject);
begin

produtoPDPRECO1.DisplayFormat  :='#,##0'+iif(CB_QDEC_PCO.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PCO.ItemIndex),'');
produtoPDPRECO2.DisplayFormat  :='#,##0'+iif(CB_QDEC_PCO.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PCO.ItemIndex),'');
produtopreco_uni.DisplayFormat :='#,##0'+iif(CB_QDEC_PCO.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PCO.ItemIndex),'');

end;

procedure TFrm_LPreco2.CLBEstoqueClick(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);

end;

procedure TFrm_LPreco2.RLGroup1AfterPrint(Sender: TObject);
begin
if (RG_QUEBRA.ItemIndex>0) and
   (CB_SEPPAG.Checked) then
   RLReport1.NewPage;
end;

procedure TFrm_LPreco2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_LPreco2.AJUSTARPCOExit(Sender: TObject);
begin
if ValFloat(AJUSTARPCO.Text)<0 then
   AJUSTARPCO.Text:=FormatFloat(mcasas_pct, ValFloat(AJUSTARPCO.Text)*-1)
else
   AJUSTARPCO.Text:=FormatFloat(mcasas_pct, ValFloat(AJUSTARPCO.Text));
end;

procedure TFrm_LPreco2.CLB_STATUSClick(Sender: TObject);
begin
CLB_STATUS:=Valida_CheckList(CLB_STATUS);

end;

procedure TFrm_LPreco2.bbAdquirirClick(Sender: TObject);
var
mTam: Integer;
begin
If Opd1.Execute then
   begin
   mtam:=length(Opd1.FileName);
   if UpperCase(copy(Opd1.FileName,mtam-3,4))<>'.JPG' then
      begin
      fmensagem('Nao é uma Figura Valida.',0,['0'],0);
      end
   else
      begin
      logolpreco.Picture.LoadFromFile(opd1.filename);
      fGravarImagemBanco(opd1.filename,'LPRECO02','Lista de Precos 2' );
      end;
   end;



end;

procedure TFrm_LPreco2.bbExcImagemClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftString,'CHAVE',ptinput);
DM1.Query1.Params.CreateParam(ftString,'LSCODEMP',ptinput);
DM1.Query1.SQL.Add('Update CADLOGSIS set LSLOGO=null,LSCODEMP=:LSCODEMP');
DM1.Query1.SQL.Add(' where LSCHAVE=:CHAVE');
DM1.Query1.ParamByName('LSCODEMP').Asfloat:=iif(codemp>100,codemp-100,codemp);
DM1.Query1.ParamByName('CHAVE').AsString:='LPRECO02';

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Atualizar o Logotipo!',0,['0'],0);
   end;
DM4.Tb_LogoSis.Close;
DM4.Tb_LogoSis.SQL.Clear;
DM4.Tb_LogoSis.Sql.add('Select * from CADLOGSIS '
                      +' where LSCHAVE='+chr(39)+'LPRECO02'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM4.Tb_LogoSis.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');

DM4.Tb_LogoSis.Open;
logolpreco.Picture:=nil;


end;

procedure TFrm_LPreco2.produtoCalcFields(DataSet: TDataSet);
var
  x,mtam: Integer;
begin
if produtoPDEMBMUL.asfloat<=0 then
   begin
   produtopreco_uni.Value:=produtoPDPRECO1.AsFloat;
   produtoqtdund.Value   :='01 un';
   end
else
   begin
   if produtoPDPRECO1.AsFloat=0 then
      produtopreco_uni.Value:=produtoPDPRECO1.AsFloat
   else
      produtopreco_uni.Value:=Arredonda( produtoPDPRECO1.AsFloat/produtoPDEMBMUL.AsFloat , CB_QDEC_PCO.ItemIndex+1);
   produtoqtdund.Value   :=FormatFloat('00', produtoPDEMBMUL.Value)+' un';
   end;
if trim(produtoPDAPRES.AsString)<>'' then
   begin
   mtam:=length(produtoPDAPRES.Value);
   if mtam<2 then
      produtoapres01.Value:=trim(produtoPDAPRES.Value)
   else
      begin
      for x:=2 to mtam do
         begin
         mcinst:=produtoPDAPRES.Value[x];
         if mcinst=' ' then
            begin
            produtoapres01.Value:=trim(copy(produtoPDAPRES.Value,1,x));
            produtoapres02.Value:=trim(copy(produtoPDAPRES.Value,x+1,(mtam-x)+1));
            break;
            end;
         end;
      if x=(mtam+1) then
         produtoapres01.Value:=trim(produtoPDAPRES.Value);

      end;
   end;

if CB_NOME2.Checked then
   begin
   if length(produtoPDNOME2.AsString)>1 then
      produtodescricao.Value:=produtoPDNOME2.AsString
   else
      produtodescricao.Value:=produtoPDNOME.AsString;
   end
else
   produtodescricao.Value:=produtoPDNOME.AsString;
mcinst:=FormatFloat('000', valint(produto.FieldByName('PDSIT').AsString));
if  mcinst[2]  in ['6','1'] then
   produtocodpro_calc.Text:=Formatfloat('0000', produtoPDCODPRO.AsFloat)+' *'
else
   produtocodpro_calc.Text:=Formatfloat('0000', produtoPDCODPRO.AsFloat)+'  ';



end;

procedure TFrm_LPreco2.TAMFONTE01Exit(Sender: TObject);
begin
TAMFONTE01.Text:=IntToStr(ValInt2(TAMFONTE01.Text));
end;

procedure TFrm_LPreco2.TAMFONTE02Exit(Sender: TObject);
begin
TAMFONTE02.Text:=IntToStr(ValInt2(TAMFONTE02.Text));

end;

procedure TFrm_LPreco2.MTAMFR01Exit(Sender: TObject);
begin
MTAMFR01.Text:=IntToStr(ValInt2(MTAMFR01.Text));

end;

procedure TFrm_LPreco2.MTAMFR02Exit(Sender: TObject);
begin
MTAMFR02.Text:=IntToStr(ValInt2(MTAMFR02.Text));

end;

procedure TFrm_LPreco2.MTAMFR03Exit(Sender: TObject);
begin
MTAMFR03.Text:=IntToStr(ValInt2(MTAMFR03.Text));

end;

procedure TFrm_LPreco2.MTAMFR04Exit(Sender: TObject);
begin
MTAMFR04.Text:=IntToStr(ValInt2(MTAMFR04.Text));

end;

procedure TFrm_LPreco2.MTAMFR05Exit(Sender: TObject);
begin
MTAMFR05.Text:=IntToStr(ValInt2(MTAMFR05.Text));

end;

procedure TFrm_LPreco2.MTAMFR06Exit(Sender: TObject);
begin
MTAMFR06.Text:=IntToStr(ValInt2(MTAMFR06.Text));

end;

procedure TFrm_LPreco2.CB_MODWORDClick(Sender: TObject);
begin
if CB_MODWORD.Checked then
   begin
   RG_QUEBRA.ItemIndex:=0;
   RG_ORDEM.Visible   :=false;
   CB_SEMBORDA.Visible:=false;
   CB_NOME2.Visible   :=false;
   CB_IMPCLAS.Visible :=false;
   StaticText3.Visible:=false;
   VENDA1.Visible     :=false;
   end
else
   begin
   RG_ORDEM.Visible   :=true;
   CB_SEMBORDA.Visible:=true;
   CB_NOME2.Visible   :=true;
   CB_IMPCLAS.Visible :=true;
   StaticText3.Visible:=true;
   VENDA1.Visible     :=true;
   end;

end;

procedure TFrm_LPreco2.FormShow(Sender: TObject);
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

procedure TFrm_LPreco2.BTN_PAGEClick(Sender: TObject);
begin
fDeletaPadroes(0,'_LPRECO2_PAGE','');
fGravaPadroes(0,'ALT_PAGE'    ,'text' ,'_LPRECO2_PAGE',FloatToStr(alt_page.Value));
fGravaPadroes(0,'LAR_PAGE'    ,'text' ,'_LPRECO2_PAGE',FloatToStr(lar_page.Value));
end;

end.
