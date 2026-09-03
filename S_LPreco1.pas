unit S_LPreco1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,lerarq,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls, ComCtrls, RLReport,func,S_DM1,
  RLXLSFilter, RLPDFFilter, RLFilters, RLHTMLFilter, RLDraftFilter, jpeg,
  CheckLst, Mask,S_Regiao,S_DM6, RLRichFilter,s_lerarq_geral;

type
  TFrm_LPreco1 = class(TForm)
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
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
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
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lbl_pag: TRLLabel;
    RLGroup1: TRLGroup;
    rl_cabgru: TRLBand;
    db_grupo: TRLDBText;
    rl_cabregiao: TRLBand;
    produtoLOTE: TStringField;
    produtoDTVCTO: TDateTimeField;
    RLBand5: TRLBand;
    lbl_codpro: TRLLabel;
    lbl_nompro: TRLLabel;
    lbl_und: TRLLabel;
    lbl_lote: TRLLabel;
    lbl_dtvcto: TRLLabel;
    lbl_colpco01: TRLLabel;
    lbl_colpco02: TRLLabel;
    lbl_marca: TRLLabel;
    lbl_desc: TRLLabel;
    produtoDESC01: TFloatField;
    produtoESTOQUE: TFloatField;
    produtoPDNOME2: TStringField;
    lbl_estoque: TRLLabel;
    lbl_nome2: TRLLabel;
    produtocalc_estoque: TStringField;
    RLBand1: TRLBand;
    memo_regiao: TRLMemo;
    RLSystemInfo3: TRLSystemInfo;
    lbl_emitido: TRLLabel;
    lbl_cab: TRLLabel;
    RLLabel1: TRLLabel;
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    CLB_STATUS: TCheckListBox;
    StaticText1: TStaticText;
    CLB_Precos: TCheckListBox;
    StaticText3: TStaticText;
    VENDA1: TEdit;
    VENDA2: TEdit;
    VENDA3: TEdit;
    PRECOC: TEdit;
    PCOFAB: TEdit;
    PMC: TEdit;
    OMITIR_STATUS: TCheckBox;
    GB_VCTO: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    MDT2: TMaskEdit;
    MDT1: TMaskEdit;
    CB_LOTE: TCheckBox;
    CB_DTVCTO: TCheckBox;
    CB_SEMBORDA: TCheckBox;
    CB_MATRICIAL: TCheckBox;
    CB_DESC: TCheckBox;
    CB_NOME2: TCheckBox;
    CB_EST: TCheckBox;
    CB_MASC: TCheckBox;
    Label9: TLabel;
    TITREL: TEdit;
    bbImprimir: TBitBtn;
    sb_SalvarPadrao: TSpeedButton;
    bbSair: TBitBtn;
    lbl_codbar: TRLLabel;
    produtoCODBAR: TFloatField;
    CB_CODBAR: TCheckBox;
    Label11: TLabel;
    CB_QDEC_PCO: TComboBox;
    RLGroup2: TRLGroup;
    rl_cabitens: TRLBand;
    db_codpro: TRLDBText;
    db_nompro: TRLDBText;
    db_und: TRLDBText;
    db_pco01: TRLDBText;
    db_pco02: TRLDBText;
    db_lote: TRLDBText;
    db_dtvcto: TRLDBText;
    db_marca: TRLDBText;
    db_desc: TRLDBText;
    db_estoque: TRLDBText;
    db_nome2: TRLDBText;
    db_codbar: TRLDBText;
    rl_cabsubgru: TRLBand;
    db_cabsubgru: TRLDBText;
    produtoSUBGRU: TStringField;
    RLRichFilter1: TRLRichFilter;
    CLBEstoque: TCheckListBox;
    Label15: TLabel;
    CB_LINHA_LQ: TCheckBox;
    produtocalc_dtvcto: TDateField;
    CB_SEPPAG: TCheckBox;
    Label12: TLabel;
    TAMFONTE: TEdit;
    GB_AJUSTAR: TGroupBox;
    AJUSTARPCO: TEdit;
    CB_DIMINUIR: TCheckBox;
    UPC: TEdit;
    CB_BORDASWORD: TCheckBox;
    StaticText4: TStaticText;
    CLB_LISTARPRECO: TCheckListBox;
    tsOutFil: TTabSheet;
    Label3: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label10: TLabel;
    CODREG: TEdit;
    NOMREG: TEdit;
    RG_ORDEM: TRadioGroup;
    chkDiminuir: TCheckBox;
    QTDXPCO: TEdit;
    rltotal: TRLBand;
    RLLabel2: TRLLabel;
    lbl_totitens: TRLLabel;
    RLLabel3: TRLLabel;
    lbl_totund: TRLLabel;
    lbl_valortot_caption: TRLLabel;
    lbl_valortot: TRLLabel;
    Label13: TLabel;
    edt_marca: TEdit;
    lbx_coddep: TListBox;
    CODDEP: TEdit;
    Label14: TLabel;
    OMITIR_DEP: TCheckBox;
    CB_EXIBIR_MARCA: TCheckBox;
    cb_apresen: TCheckBox;
    produtoPDAPRES: TStringField;
    bb_exportar: TBitBtn;
    lbl_colpco03: TRLLabel;
    db_pco03: TRLDBText;
    produtoPDPRECO3: TFloatField;
    lbl_referencia: TRLLabel;
    RLD_PDREFER: TRLDBText;
    produtoPDREFER: TStringField;
    CB_REFER: TCheckBox;
    edt_venda1menosdesc1: TEdit;
    CB_EST_MULTIPLO: TCheckBox;
    lbl_estoque_multiplo: TRLLabel;
    db_estoque_multiplo: TRLDBText;
    produtoPDEMBMUL: TFloatField;
    edt_estoque_minimo: TEdit;
    produtoPDESTMIN: TFloatField;
    produtoPDNOMTIP: TStringField;
    produtoPDSALDO: TFloatField;
    produtoPDDTULTSAI: TDateTimeField;
    lbl_lozalizacao: TRLLabel;
    DB_LOCALIZACAO: TRLDBText;
    produtoLOCALIZACAO: TStringField;
    CB_ENDERECO: TCheckBox;
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
    procedure Nao_Imp_grade;
    procedure Imp_grade;
    procedure fAbrirBanco;
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
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure produtoCalcFields(DataSet: TDataSet);
    procedure rl_cabgruBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODREGKeyPress(Sender: TObject; var Key: Char);
    procedure CODREGExit(Sender: TObject);
    procedure CB_QDEC_PCOClick(Sender: TObject);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure RLGroup1AfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AJUSTARPCOExit(Sender: TObject);
    procedure CLB_STATUSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CLB_LISTARPRECOClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_cabitensAfterPrint(Sender: TObject);
    procedure rltotalBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODDEPExit(Sender: TObject);
    procedure CODDEPKeyPress(Sender: TObject; var Key: Char);
    procedure CODDEPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bb_exportarClick(Sender: TObject);
  private
    { Private declarations }



    procedure SetarVisible(pVisible: boolean);

    function AjustaCampos(ptipo: Integer): Boolean;
    function fMudaTam(pCampo,pTamanho: Integer): Boolean;

    procedure fAjustarColunas;

  public
    { Public declarations }
    mValorTot: Real;
    mQtdItens: Integer;
    mTotUnd: Real;
  end;

var
  Frm_LPreco1: TFrm_LPreco1;
  musatablot: boolean;
  mEmitiuPrimeiro: Boolean=false;
  mPerAcreDes: real;
  mPrecoLiq: string;
  mEstoqueMinimo: string;

{
  mtamc_codpro : integer;
  mtamc_codbar : integer;
  mtamc_und    : integer;
  mtamc_nompro : integer;
  mtamc_marca  : Integer;
  mtamc_refer  : Integer;
  mtamc_lote   : Integer;
  mtamc_dtvcto : integer;
  mtamc_desc   : integer;
  mtamc_pco01  : integer;
  mtamc_pco02  : integer;
  mtamc_pco03  : integer;
  mtamc_estoque: integer;
  mtamc_estoque_multiplo: integer;
  mtamc_nome2  : integer;


  mleft_codpro : integer;
  mleft_codbar : integer;
  mleft_und    : integer;
  mleft_nompro : integer;
  mleft_marca  : Integer;
  mleft_refer  : Integer;
  mleft_lote   : Integer;
  mleft_dtvcto : integer;
  mleft_desc   : integer;

  mleft_pco01  : integer;
  mleft_pco02  : integer;
  mleft_pco03  : integer;
  mleft_estoque: integer;
  mleft_estoque_multiplo: integer;
  mleft_nome2  : integer;
  }
const
   mColCodpro = 50;
   mColNomPro = 100;
   mColUnd = 20;
   mColMarca = 25;
   mColReferencia = 25;
   mColCodBar = 40;
   mColLote = 58;
   mColDtVcto = 46;
   mColDesc = 28;
   mColPreco1 = 50;
   mColPreco2 = 50;
   mColPreco3 = 50;
   mColEstoque = 45;
   mcolEstMultiplo = 45;
   mcolNome2 = 35;
   mcolLocalizacao = 65;
   mTamanhoGeral = 715;






implementation

uses S_Pro, S_For, s_tipPro, S_GPro, S_TCon, S_Ram, S_DM4, Math, Func2;

{$R *.dfm}
procedure TFrm_LPreco1.fAbrirBanco;
var
  x: Integer;
  mqtdpco: Integer;
  mcol01: Integer;
  mcol02: Integer;
  mcol03: Integer;
  mNomcol01, mNomcol02, mNomcol03: String;
  mColEstoque,mColLote, mColDtvcto: String;
  mCampoGrupo,mCampoSub:String;
  function fOrdemExtra(): String;
  begin
  if RG_ORDEM.ItemIndex=2 then
     result :=  'DTVCTO nulls first, '
  else if RG_ORDEM.ItemIndex=3 then
     result := 'DTVCTO ,'

  end;
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
mqtdpco:=0;
for x:=0 to CLB_Precos.Items.Count-1 do
   begin
   if CLB_Precos.Checked[x] then
      mqtdpco:=mqtdpco+1;
   end;
if mqtdpco>3 then
   begin
   fmensagem('a Quantidade Maxima de Precos é 3!',0,['0'],0);
   exit;
   end;

mNomcol01:='PDPRECO1';
mNomcol02:='PDPRECO2';
mNomcol03:='PDPRECO3';
musatablot:=false;
mEmitiuPrimeiro:=false;
mPerAcreDes:=0;
if CB_BORDASWORD.Checked then
   begin
   RLReport1.Margins.LeftMargin:=10;
   RLReport1.Margins.RightMargin:=10;
   RLReport1.Margins.TopMargin:=10;
   RLReport1.Margins.BottomMargin:=10;
   end
else
   begin
   RLReport1.Margins.LeftMargin:=8;
   RLReport1.Margins.RightMargin:=10;
   RLReport1.Margins.TopMargin:=2;
   RLReport1.Margins.BottomMargin:=0;
   end;



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

mColLote  :=chr(39)+insere2(' ',' ',10)+chr(39);
mColDtvcto:=' PDDTULTSAI';
mColEstoque:='PDSALDO';
if CB_LOTE.Checked then
   begin
   lbl_lote.Visible  :=true;
   db_lote.Visible   :=true;
   musatablot        :=true;
   mColLote          :='CLNUMERO';
   mColDtvcto        :='CLDTVCTO';
   mColEstoque       :='CLQTD';
   end
else
   begin
   lbl_lote.Visible  :=false;
   db_lote.Visible   :=false;
   end;
lbl_nompro.Width:=122;
lbl_marca.Width:=41;
lbl_referencia.Width:=39;


mEstoqueMinimo:='PDESTMIN';

mPrecoLiq:='PDPRECO1';

mPrecoLiq:='round(('+mPrecoLiq+'-('+mPrecoLiq+'*PDDESC1/100)),'+DM1.Tb_PargerPCASASPU.AsString+')';

if CB_EXIBIR_MARCA.Checked then
   begin
   lbl_marca.Visible:=true;
   db_marca.Visible:=true;
//   lbl_und.Left    :=201;
   end
else
   begin
   lbl_marca.Visible:=false;
   db_marca.Visible:=false;
   lbl_nompro.Width:=lbl_nompro.Width+lbl_marca.Width;
//   lbl_und.Left    :=267;

   end;

if CB_REFER.Checked=true then
   begin
   lbl_referencia.Visible:=true;
   RLD_PDREFER.Visible:=true;
   end
else
   begin
   lbl_referencia.Visible:=false;
   RLD_PDREFER.Visible:=false;
   lbl_nompro.Width:=lbl_nompro.Width+lbl_referencia.Width;
   end;



if CB_DTVCTO.Checked=true then
   begin
   lbl_dtvcto.Visible:=True;
   db_dtvcto.Visible :=True;
   musatablot        :=true;
   mColDtvcto        :='CLDTVCTO';
   mColDtvcto        :='CLDTVCTO';
   mColEstoque       :='CLQTD';
   end
else
   begin
   lbl_dtvcto.Visible:=false;
   db_dtvcto.Visible :=false;
   end;
rltotal.Visible:=false;


if RG_ORDEM.ItemIndex>1 then
   begin
   musatablot        :=true;
   end;



if mqtdpco=0 then
   begin
   lbl_colpco01.Visible:=false;
   lbl_colpco02.Visible:=false;
   lbl_colpco03.Visible:=false;
   db_pco01.Visible:=false;
   db_pco02.Visible:=false;
   db_pco03.Visible:=false;
   end
else if mqtdpco>0 then
   begin
   lbl_colpco01.Visible:=true;
   lbl_colpco02.Visible:=false;
   lbl_colpco03.Visible:=false;

   db_pco01.Visible:=true;
   db_pco02.Visible:=false;
   db_pco03.Visible:=false;

   if CLB_Precos.Checked[0] then
      begin
      mcol01:=0;
      lbl_colpco01.Caption:=VENDA1.Text;
      mNomcol01:='PDPRECO1';
      end
   else if CLB_Precos.Checked[1] then
      begin
      mcol01:=1;
      lbl_colpco01.Caption:=VENDA2.Text;
      mNomcol01:='PDPRECO2';
      end
   else if CLB_Precos.Checked[2] then
      begin
      mcol01:=2;
      lbl_colpco01.Caption:=VENDA3.Text;
      mNomcol01:='PDPRECO3';
      end
   else if CLB_Precos.Checked[3] then
      begin
      mcol01:=3;
      lbl_colpco01.Caption:=PRECOC.Text;
      mNomcol01:='PDPRECOC';
      end
   else if CLB_Precos.Checked[4] then
      begin
      mcol01:=4;
      lbl_colpco01.Caption:=PCOFAB.Text;
      mNomcol01:='PDPCOFAB';
      end
   else if CLB_Precos.Checked[5] then
      begin
      mcol01:=5;
      lbl_colpco01.Caption:=PMC.Text;
      mNomcol01:='PDPMC';
      end
   else if CLB_Precos.Checked[6] then
      begin
      mcol01:=6;
      lbl_colpco01.Caption:=UPC.Text;
      mNomcol01:='PDUCPR';
      end
   else if CLB_Precos.Checked[7] then
      begin
      mcol01:=7;
      lbl_colpco01.Caption:=QTDXPCO.Text;
      mNomcol01:='PDPRECO1*'+mColEstoque;
      rltotal.Visible:=true;
      end
   else if CLB_Precos.Checked[8] then
      begin
      mcol01:=8;
      lbl_colpco01.Caption:=edt_venda1menosdesc1.Text;
      mNomcol01:=mPrecoLiq;
      rltotal.Visible:=true;
      end
   else if CLB_Precos.Checked[9] then
      begin
      mcol01:=9;
      lbl_colpco01.Caption:=edt_estoque_minimo.Text;
      mNomcol01:=mEstoqueMinimo;
      rltotal.Visible:=true;
      end;




   if mqtdpco>1 then
      begin
      lbl_colpco01.Visible:=true;
      lbl_colpco02.Visible:=true;
      db_pco01.Visible    :=true;
      db_pco02.Visible    :=true;

      if (CLB_Precos.Checked[0]) and (mcol01<>0) then
         begin
         mcol02:=0;
         lbl_colpco02.Caption:=VENDA1.Text;
         mNomcol02:='PDPRECO1';
         end
      else if (CLB_Precos.Checked[1]) and (mcol01<>1) then
         begin
         mcol02:=1;
         lbl_colpco02.Caption:=VENDA2.Text;
         mNomcol02:='PDPRECO2';
         end
      else if (CLB_Precos.Checked[2]) and (mcol01<>2) then
         begin
         mcol02:=2;
         lbl_colpco02.Caption:=VENDA3.Text;
         mNomcol02:='PDPRECO3';
         end
      else if (CLB_Precos.Checked[3]) and (mcol01<>3) then
         begin
         mcol02:=3;
         lbl_colpco02.Caption:=PRECOC.Text;
         mNomcol02:='PDPRECOC';

         end
      else if (CLB_Precos.Checked[4]) and (mcol01<>4) then
         begin
         mcol02:=4;
         lbl_colpco02.Caption:=PCOFAB.Text;
         mNomcol02:='PDPCOFAB';

         end
      else if (CLB_Precos.Checked[5]) and (mcol01<>5) then
         begin
         mcol02:=5;
         lbl_colpco02.Caption:=PMC.Text;
         mNomcol02:='PDPMC';
         end
      else if (CLB_Precos.Checked[6]) and (mcol01<>6) then
         begin
         mcol02:=6;
         lbl_colpco02.Caption:=PMC.Text;
         mNomcol02:='PDUCPR';
         end
      else if (CLB_Precos.Checked[7]) and (mcol01<>7) then
         begin
         mcol02:=7;
         lbl_colpco02.Caption:=QTDXPCO.Text;
         mNomcol02:=mNomcol01+'*'+mColEstoque;
         rltotal.Visible:=true;
         end
      else if CLB_Precos.Checked[8] then
         begin
         mcol02:=8;
         lbl_colpco02.Caption:=edt_venda1menosdesc1.Text;
         mNomcol02:=mPrecoLiq;
         rltotal.Visible:=true;
         end
      else if CLB_Precos.Checked[9] then
         begin
         mcol02:=9;
         lbl_colpco02.Caption:=edt_estoque_minimo.Text;
         mNomcol02:=mEstoqueMinimo;
         rltotal.Visible:=true;
         end;


      end;
// TERCEIRA


   if mqtdpco>2 then
      begin
      lbl_colpco03.Visible:=true;
      db_pco03.Visible    :=true;

      if (CLB_Precos.Checked[0]) and (mcol02<>0)  and (mcol01<>0) then
         begin
         mcol03:=0;
         lbl_colpco03.Caption:=VENDA1.Text;
         mNomcol03:='PDPRECO1';
         end
      else if (CLB_Precos.Checked[1]) and (mcol01<>1) and (mcol02<>1) then
         begin
         mcol03:=1;
         lbl_colpco03.Caption:=VENDA3.Text;
         mNomcol02:='PDPRECO3';
         end
      else if (CLB_Precos.Checked[2]) and (mcol01<>2) and (mcol02<>2) then
         begin
         mcol03:=2;
         lbl_colpco03.Caption:=VENDA3.Text;
         mNomcol03:='PDPRECO3';
         end
      else if (CLB_Precos.Checked[3]) and (mcol01<>3) and (mcol02<>3) then
         begin
         mcol03:=3;
         lbl_colpco02.Caption:=PRECOC.Text;
         mNomcol03:='PDPRECOC';

         end
      else if (CLB_Precos.Checked[4]) and (mcol01<>4) and (mcol02<>4) then
         begin
         mcol03:=4;
         lbl_colpco03.Caption:=PCOFAB.Text;
         mNomcol03:='PDPCOFAB';

         end
      else if (CLB_Precos.Checked[5]) and (mcol01<>5) and (mcol02<>5) then
         begin
         mcol03:=5;
         lbl_colpco03.Caption:=PMC.Text;
         mNomcol03:='PDPMC';
         end
      else if (CLB_Precos.Checked[6]) and (mcol01<>6) and (mcol02<>6) then
         begin
         mcol03:=6;
         lbl_colpco03.Caption:=PMC.Text;
         mNomcol03:='PDUCPR';
         end
      else if (CLB_Precos.Checked[7]) and (mcol01<>7) and (mcol02<>7) then
         begin
         mcol03:=7;
         lbl_colpco03.Caption:=QTDXPCO.Text;
         mNomcol03:=mNomcol01+'*'+mColEstoque;
         rltotal.Visible:=true;
         end
      else if CLB_Precos.Checked[8] then
         begin
         mcol03:=8;
         lbl_colpco03.Caption:=edt_venda1menosdesc1.Text;
         mNomcol03:=mPrecoLiq;
         rltotal.Visible:=true;
         end
      else if CLB_Precos.Checked[9] then
         begin
         mcol03:=9;
         lbl_colpco03.Caption:=edt_estoque_minimo.Text;
         mNomcol03:=mEstoqueMinimo;
         rltotal.Visible:=true;
         end;


      end;

// TERMINO TERCEIRA
   end;

if CB_DESC.Checked=true then
   begin
   lbl_desc.Visible:=True;
   db_desc.Visible :=True;
   end
else
   begin
   lbl_desc.Visible:=false;
   db_desc.Visible :=false;
   end;

if (CB_NOME2.Checked=true) or (cb_apresen.Checked=True)  then
   begin
   lbl_nome2.Visible:=True;
   db_nome2.Visible :=True;
   if CB_NOME2.Checked then
     begin
     lbl_nome2.Caption:='Nome Generico';
     db_nome2.DataField:='PDNOME2';
     end
   else
     begin
     lbl_nome2.Caption:='Apresentação';
     db_nome2.DataField:='PDAPRES';
     end;
   end
else
   begin
   lbl_nome2.Visible:=false;
   db_nome2.Visible :=false;
   end;


if CB_EST.Checked=true then
   begin
   lbl_estoque.Visible:=True;
   db_estoque.Visible :=True;
   end
else
   begin
   lbl_estoque.Visible:=false;
   db_estoque.Visible :=false;
   end;


if CB_EST_MULTIPLO.Checked=true then
   begin
   lbl_estoque_multiplo.Visible:=True;
   db_estoque_multiplo.Visible :=True;
   end
else
   begin
   lbl_estoque_multiplo.Visible:=false;
   db_estoque_multiplo.Visible :=false;
   end;

if CB_CODBAR.Checked=true then
   begin
   lbl_codbar.Visible:=True;
   db_codbar.Visible :=True;
   end
else
   begin
   lbl_codbar.Visible:=false;
   db_codbar.Visible :=false;
   end;

AjustaCampos(0);



mColDtvcto:=' case when ' + mColDtvcto+' <= '+QuotedStr(FormatDateTime(fdt2, pdatanula))+' then null else '+mColDtvcto+' end ';


bbImprimir.Enabled := false;
produto.close;
produto.sql.clear;
produto.sql.add('select pdcodemp,pdcodpro,pdnome,PDESTMIN, round('+mNomcol01+'+'+mNomcol01+'*'+mudavp(floattostr(mPerAcreDes))+'/100,'+IntToStr(mQtdCas_arredpu)+') as  pdpreco1,'
               +'round('+mNomcol02+'+'+mNomcol02+'*'+mudavp(floattostr(mPerAcreDes))+'/100,'+IntToStr(mQtdCas_arredpu)+') as  pdpreco2,'
               +'round('+mNomcol03+'+'+mNomcol03+'*'+mudavp(floattostr(mPerAcreDes))+'/100,'+IntToStr(mQtdCas_arredpu)+') as  pdpreco3,');
produto.sql.add(' pdund,pdmarca,PDREFER,pdnomfor,pdcodtip,pdcodcon,pdcodgru,PDCODBAR AS CODBAR');

//if musatablot then
//   produto.sql.add('        ,min('+mColLote+') AS LOTE, min(' +mColDtvcto+') AS DTVCTO ')
//else

   produto.sql.add('        ,'+mColLote+' AS LOTE, '+mColDtvcto+' AS DTVCTO ');

produto.sql.add('      ,PDDESC1 AS DESC01, '
               +'       '+mColEstoque+' AS ESTOQUE, '
               +'       PDEMBMUL*'+mColEstoque+' AS PDEMBMUL, '


               +'       PDNOME2, PDAPRES, '
               + QuotedStr(' Prat: ')+' || PDPRAT '
               +'  || '+QuotedStr(' Lado: ')+' || PDLADO'
               +'  || '+QuotedStr(' Rua: ')+' || PDRUA'
               +'  || '+QuotedStr(' Seção: ')+' || PDSECAO '
               +'   as LOCALIZACAO'
               );

produto.sql.add(', PDNOMTIP ');
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
   mCampoGrupo:='PDNOMDEP';
   mCampoSub  :='PDNOMDEP';
   end
else if RG_QUEBRA.ItemIndex = 7 then
   begin
   mCampoGrupo:='PDMARCA';
   mCampoSub  :='PDMARCA';
   end
else if RG_QUEBRA.ItemIndex = 8 then
   begin
   mCampoGrupo:='PDNOMGRU ' ;
   mCampoSub  :='PDNOMRAM';
   end
else if RG_QUEBRA.ItemIndex = 9 then
   begin
   mCampoGrupo:='PDNOMGRU || '+QuotedStr(' ')+' || PDNOMRAM '  ;
   mCampoSub  :='PDNOMTIP';
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
if (RG_QUEBRA.ItemIndex=8) or (RG_QUEBRA.ItemIndex=9) then
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


produto.sql.add(','+mcampoGrupo+' as NOMGRU ');
produto.sql.add(','+mCampoSub+' as SUBGRU ');

produto.sql.add(',PDDTULTSAI,PDSALDO ');


produto.sql.add(' from cadpro ');
if musatablot then
   produto.sql.add(' ,CADLGC where '
                 +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'', ' CLCODEMP=PDCODEMP and ')
                 +' CLCODPRO(+)=PDCODPRO ')
else
   produto.sql.add(' where pdSTATUS<>99');

if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   produto.sql.add(' and pdcodemp ='+IntToStr(codemp) );

if trim(edt_marca.Text)<>'' then
  begin
  produto.SQL.Add(' and trim(upper(pdmarca)) like :MARCA');
  produto.ParamByName('MARCA').AsString:='%'+trim(edt_marca.Text)+'%';
  end;

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

mcinst2:=fItensListBox(0,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODDEP '+mcinst2);

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
if musatablot then
   begin
   if trim(MDT1.Text)<>'/  /' then
      produto.SQL.add(' and CLDTVCTO>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if trim(MDT2.Text)<>'/  /' then
      produto.SQL.add(' and CLDTVCTO<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
{
   produto.sql.add('Group by  pdcodemp,pdcodpro,pdnome,'+mNomcol01+' ,'
                  +mNomcol02+',');
   produto.sql.add(' pdund,pdmarca,pdnomfor,pdcodtip,pdcodcon,pdcodgru');
   produto.sql.add('      ,PDDESC1, '
               +'       PDSALDO, '
               +'       PDNOME2,PDCODBAR ');
   if trim(mCampoGrupo)<>'' then
      produto.sql.Add(','+mCampoGrupo);
}
   end;

   if not((CLB_LISTARPRECO.Checked[0]) and (CLB_LISTARPRECO.Checked[1]) and (CLB_LISTARPRECO.Checked[2])) then begin
       if CLB_ListarPreco.checked[0] then begin
         if CLB_Precos.Checked[0] then
            produto.SQL.add(' and '+mNomcol01+' > 0 ')
         else if CLB_Precos.Checked[1] then
            produto.SQL.Add(' and '+mNomcol01+' > 0 ')
         else if CLB_Precos.Checked[2] then
            produto.SQL.Add(' and '+mNomcol01+' > 0 ')
         else if CLB_Precos.Checked[3] then
            produto.SQL.Add(' and '+mNomcol01+' > 0 ')
         else if CLB_Precos.Checked[4] then
            produto.SQL.Add(' and '+mNomcol01+' > 0 ')
         else if CLB_Precos.Checked[5] then
            produto.SQL.Add(' and '+mNomcol01+' > 0 ')
         else if CLB_Precos.Checked[6] then
            produto.SQL.Add(' and '+mNomcol01+' > 0 ');
         if mqtdpco>1 then
            begin

            if (CLB_Precos.Checked[0]) and (mcol01<>0) then
               produto.SQL.Add(' and '+mNomcol02+' > 0 ')
            else if (CLB_Precos.Checked[1]) and (mcol01<>1) then
               produto.SQL.Add(' and '+mNomcol02+' > 0 ')
            else if (CLB_Precos.Checked[2]) and (mcol01<>2) then
               produto.SQL.Add(' and '+mNomcol02+' > 0 ')
            else if (CLB_Precos.Checked[3]) and (mcol01<>3) then
               produto.SQL.Add(' and '+mNomcol02+' > 0 ')
            else if (CLB_Precos.Checked[4]) and (mcol01<>4) then
               produto.SQL.Add(' and '+mNomcol02+' > 0 ')
            else if (CLB_Precos.Checked[5]) and (mcol01<>5) then
               produto.SQL.Add(' and '+mNomcol02+' > 0 ')
            else if (CLB_Precos.Checked[6]) and (mcol01<>6) then
               produto.SQL.Add(' and '+mNomcol02+' > 0 ');
         end;
       end else if CLB_ListarPreco.Checked[1] then begin
         if CLB_Precos.Checked[0] then
            produto.SQL.add(' and '+mNomcol01+' = 0 ')
         else if CLB_Precos.Checked[1] then
            produto.SQL.Add(' and '+mNomcol01+' = 0 ')
         else if CLB_Precos.Checked[2] then
            produto.SQL.Add(' and '+mNomcol01+' = 0 ')
         else if CLB_Precos.Checked[3] then
            produto.SQL.Add(' and '+mNomcol01+' = 0 ')
         else if CLB_Precos.Checked[4] then
            produto.SQL.Add(' and '+mNomcol01+' = 0 ')
         else if CLB_Precos.Checked[5] then
            produto.SQL.Add(' and '+mNomcol01+' = 0 ')
         else if CLB_Precos.Checked[6] then
            produto.SQL.Add(' and '+mNomcol01+' = 0 ');
         if mqtdpco>1 then
            begin

            if (CLB_Precos.Checked[0]) and (mcol01<>0) then
               produto.SQL.Add(' and '+mNomcol02+' = 0 ')
            else if (CLB_Precos.Checked[1]) and (mcol01<>1) then
               produto.SQL.Add(' and '+mNomcol02+' = 0 ')
            else if (CLB_Precos.Checked[2]) and (mcol01<>2) then
               produto.SQL.Add(' and '+mNomcol02+' = 0 ')
            else if (CLB_Precos.Checked[3]) and (mcol01<>3) then
               produto.SQL.Add(' and '+mNomcol02+' = 0 ')
            else if (CLB_Precos.Checked[4]) and (mcol01<>4) then
               produto.SQL.Add(' and '+mNomcol02+' = 0 ')
            else if (CLB_Precos.Checked[5]) and (mcol01<>5) then
               produto.SQL.Add(' and '+mNomcol02+' = 0 ')
            else if (CLB_Precos.Checked[6]) and (mcol01<>6) then
               produto.SQL.Add(' and '+mNomcol02+' = 0 ');
         end;
       end;
    end;

IF RG_ORDEM.ItemIndex = 0 THEN
   PRODUTO.SQL.ADD('ORDER BY NOMGRU,SUBGRU,PDNOME,PDCODPRO ')
ELSE
   PRODUTO.SQL.ADD('ORDER BY '+fOrdemExtra()+'NOMGRU,SUBGRU,PDCODPRO ');
//PRODUTO.SQL.SaveToFile(mpastatemp + 'sqllp.TXT');
TRY
   produto.open;
except
   PRODUTO.SQL.SaveToFile(mpastatemp + 'sqllp.TXT');
   end;
end;

procedure TFrm_LPreco1.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_LPreco1.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_LPreco1.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco1.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco1.CODPROExit(Sender: TObject);
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
      CODpro.SetFocus;
      end;
   end;
end;

procedure TFrm_LPreco1.CODFORExit(Sender: TObject);
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
      end;
   end;
end;

procedure TFrm_LPreco1.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Lpreco1',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_lpreco1',key);
      flqr1('PDCODPRO,PDNOME','PD','CADPRO','N','PDCODPRO',trim(CODPRO.Text));
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Query1.Fields[0].ASSTRING))
                                 +' - '+DM1.Query1.Fields[1].Value);
      codpro.text := '';
      codpro.setfocus;
      key:=#0;
      end;
   end;

end;

procedure TFrm_LPreco1.CODFORKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_LPreco1.CODPROMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco1.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco1.bbSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrm_LPreco1.bbImprimirClick(Sender: TObject);
begin
SetarVisible(true);

fAbrirBanco;
if produto.IsEmpty then
   begin
   fmensagem('Nao Foi Encontrado Registro(s) P/ Parametro(s) Selecionado(s)',0,['0'],0);
   bbImprimir.Enabled:=true;
   exit;
   end;

if CB_SEMBORDA.Checked then
   Nao_imp_grade
else
   Imp_grade;


lbl_emitido.Caption:=fEmitido(0);
{if musatablot then
   begin
   lbl_cab.Font.Size:=12;
   lbl_cab.Caption:='Lista de Precos c/Vencimentos dos Produtos. '+fperiodo(0,MDT1.Text,MDT2.Text)

   end
else
   begin
   lbl_cab.Font.Size:=15;
   lbl_cab.Caption:=TITREL.Text;
   end;
 }


if trim(TITREL.Text)<>'' then
   begin
   lbl_cab.Font.Size:=15;
   lbl_cab.Caption:=TITREL.Text;
   end
else
   lbl_cab.Font.Size:=15;




if mPerAcreDes>0 then
   lbl_cab.Caption:=lbl_cab.Caption+'.+'
else if mPerAcreDes<0 then
   lbl_cab.Caption:=lbl_cab.Caption+'.-';

if CB_LINHA_LQ.Checked then
   matricial.PrinterFamily:=fmESCP2
else
   matricial.PrinterFamily:=fmEpsonLike;
lbl_lozalizacao.Visible:=CB_ENDERECO.Checked;
DB_LOCALIZACAO.Visible :=lbl_lozalizacao.Visible;
fAjustarColunas();

RLReport1.PreviewModal;
verteclado(0);
bbImprimir.Enabled := true;
end;


procedure TFrm_LPreco1.FormCreate(Sender: TObject);
var
x: Integer;
  n: Integer;
  nivel  : TNivPro;

begin
Pagecontrol1.activePageIndex:=0;

CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');


ts_relatorio.TabVisible:=false;

produtoPDPRECO1.DisplayFormat := mcasaspu;
produtoPDPRECO2.DisplayFormat := mcasaspu;
produtoPDPRECO3.DisplayFormat := mcasaspu;
produtoDESC01.DisplayFormat   := mcasaspu;
produtoDTVCTO.DisplayFormat   := fdt2;
CB_QDEC_PCO.ItemIndex:=DM1.Tb_PargerPCASASPU.AsInteger;

if flfilpad(codusr,'_LPRECO1','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_QUEBRA',[]) then
      RG_QUEBRA.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEPPAG',[]) then
      CB_SEPPAG.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_SEPPAG.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','VENDA1',[]) then
      VENDA1.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','VENDA2',[]) then
      VENDA2.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','VENDA3',[]) then
      VENDA3.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','PRECOC',[]) then
      PRECOC.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','PCOFAB',[]) then
      PCOFAB.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','PMC',[]) then
      PMC.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','UPC',[]) then
      UPC.Text:=DM4.Tb_FilPad2FPVALOR.Text;
   if DM4.Tb_FilPad2.Locate('FPCOMP','QTDXPCO',[]) then
      QTDXPCO.Text:=DM4.Tb_FilPad2FPVALOR.Text;

   if DM4.Tb_FilPad2.Locate('FPCOMP','VENDA1MENOSDESC1',[]) then
      edt_venda1menosdesc1.Text:=DM4.Tb_FilPad2FPVALOR.Text;


   if DM4.Tb_FilPad2.Locate('FPCOMP','TITREL',[]) then
      TITREL.Text:=DM4.Tb_FilPad2FPVALOR.Text;

   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_ORDEM',[]) then
      RG_ORDEM.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_QDEC_PCO',[]) then
      CB_QDEC_PCO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CLB_PRECOS',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLB_PRECOS.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLB_PRECOS.Checked[ValInt(mcinst)]:=true;
      end;

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

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LINHA_LQ',[]) then
      CB_LINHA_LQ.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_LINHA_LQ.Checked:=FALSE;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MATRICIAL',[]) then
      CB_MATRICIAL.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_MATRICIAL.Checked:=true;


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LOTE',[]) then
      CB_LOTE.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_LOTE.Checked:=false;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DTVCTO',[]) then
      CB_DTVCTO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_DTVCTO.Checked:=false;


   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DESC',[]) then
      CB_DESC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_DESC.Checked:=true;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EXIBIR_MARCA',[]) then
      CB_EXIBIR_MARCA.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_EXIBIR_MARCA.Checked:=true;


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

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EST',[]) then
      CB_EST.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_EST.Checked:=false;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EST_MULTIPLO',[]) then
      CB_EST_MULTIPLO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_EST_MULTIPLO.Checked:=false;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CODBAR',[]) then
      CB_CODBAR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_CODBAR.Checked:=false;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MASC',[]) then
      CB_MASC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_MASC.Checked:=false;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CLB_LISTARPRECO',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLB_LISTARPRECO.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLB_LISTARPRECO.Checked[ValInt(mcinst)]:=true;
      end;


   end
else
   begin
   CLB_Precos.Checked[0]:=true;
   CLBNivel.Checked[0]  :=true;
   end;


{
mtamc_codpro :=lbl_codpro.Width;
mtamc_codbar :=lbl_codbar.Width;
mtamc_und    :=lbl_und.width;
mtamc_nompro :=lbl_nompro.Width;
mtamc_marca  :=lbl_marca.Width;
mtamc_refer  :=lbl_referencia.Width;
mtamc_lote   :=lbl_lote.Width;
mtamc_dtvcto :=lbl_dtvcto.Width;
mtamc_desc   :=lbl_desc.Width;
mtamc_pco01  :=lbl_colpco01.Width;
mtamc_pco02  :=lbl_colpco02.Width;
mtamc_pco03  :=lbl_colpco03.Width;
mtamc_estoque:=lbl_estoque.Width;
mtamc_estoque_multiplo:=lbl_estoque_multiplo.Width;
mtamc_nome2  :=lbl_nome2.Width;


mleft_codpro :=lbl_codpro.Left;
mleft_codbar :=lbl_codbar.Left;
mleft_und    :=lbl_und.Left;
mleft_nompro :=lbl_nompro.Left;
mleft_marca  :=lbl_marca.Left;
mleft_refer  :=lbl_referencia.Left;
mleft_lote   :=lbl_lote.Left;
mleft_dtvcto :=lbl_dtvcto.Left;
mleft_pco01  :=lbl_colpco01.Left;
mleft_pco02  :=lbl_colpco02.Left;
mleft_pco03  :=lbl_colpco03.Left;
mleft_estoque:=lbl_estoque.Left;
mleft_estoque_multiplo:=lbl_estoque_multiplo.Left;
mleft_nome2  :=lbl_nome2.Left;
}
end;

procedure TFrm_LPreco1.Nao_Imp_grade;
var n:integer;
begin

  for n := 0 to ( ComponentCount - 1 ) do
  begin
      if ( components[n].ClassType = TRLReport ) then
      begin
          TRLReport (components[n]).Borders.DrawBottom    := false;
          TRLReport (components[n]).Borders.DrawLeft      := false;
          TRLReport (components[n]).Borders.DrawRight     := false;
          TRLReport (components[n]).Borders.DrawTop       := false;

          TRLReport (components[n]).Margins.BottomMargin  := 0;
          TRLReport (components[n]).MARGINS.LeftMargin    := 8;
          TRLReport (components[n]).Margins.RightMargin   := 10;
          TRLReport (components[n]).Margins.TopMargin     := 2;
      end;

      if ( components[n].ClassType = TRLBand ) then
      begin
          TRLBand (components[n]).Borders.DrawBottom      := false;
          TRLBand (components[n]).Borders.DrawLeft        := false;
          TRLBand (components[n]).Borders.DrawRight       := false;
          TRLBand (components[n]).Borders.DrawTop         := false;
      end;

      if ( components[n].ClassType = TRLDBText ) then
      begin
          TRLDBText (components[n]).Borders.DrawBottom    := false;
          TRLDBText (components[n]).Borders.DrawLeft      := false;
          TRLDBText (components[n]).Borders.DrawRight     := false;
          TRLDBText (components[n]).Borders.DrawTop       := false;
      end;

      if ( components[n].ClassType = TRLLabel ) then
      begin
          TRLDBText (components[n]).Borders.DrawBottom    := false;
          TRLDBText (components[n]).Borders.DrawLeft      := false;
          TRLDBText (components[n]).Borders.DrawRight     := false;
          TRLDBText (components[n]).Borders.DrawTop       := false;
      end;

  end ;

  rl_cabger.Borders.DrawBottom := true;

end;

procedure TFrm_LPreco1.Imp_grade;
var n:integer;
begin
  for n := 0 to ( ComponentCount - 1 ) do
  begin
      if ( components[n].ClassType = TRLReport ) then
      begin
          TRLReport (components[n]).Borders.DrawBottom    := true;
          TRLReport (components[n]).Borders.DrawLeft      := true;
          TRLReport (components[n]).Borders.DrawRight     := true;
          TRLReport (components[n]).Borders.DrawTop       := true;

          TRLReport (components[n]).Margins.BottomMargin  := 10;
          TRLReport (components[n]).MARGINS.LeftMargin    := 10;
          TRLReport (components[n]).Margins.RightMargin   := 10;
          TRLReport (components[n]).Margins.TopMargin     := 10;
      end;

      if ( components[n].ClassType = TRLBand ) then
      begin
          TRLBand (components[n]).Borders.DrawBottom      := true;
          TRLBand (components[n]).Borders.DrawLeft        := false;
          TRLBand (components[n]).Borders.DrawRight       := false;
          TRLBand (components[n]).Borders.DrawTop         := false;
      end;

      if ( components[n].ClassType = TRLDBText ) then
      begin
          TRLDBText (components[n]).Borders.DrawBottom    := false;
          TRLDBText (components[n]).Borders.DrawLeft      := false;
          TRLDBText (components[n]).Borders.DrawRight     := true;
          TRLDBText (components[n]).Borders.DrawTop       := false;
      end;

      if ( components[n].ClassType = TRLLabel ) then
      begin
          TRLLabel (components[n]).Borders.DrawBottom    := false;
          TRLLabel (components[n]).Borders.DrawLeft      := false;
          TRLLabel (components[n]).Borders.DrawRight     := true;
          TRLLabel (components[n]).Borders.DrawTop       := false;
      end;

  end ;

  lbl_cab.Borders.DrawRight    :=false;
  lbl_pag.Borders.DrawRight    :=false;
  lbl_emitido.Borders.DrawRight:=false;
  rl_cabger.Borders.DrawBottom := true;
  db_grupo.Borders.DrawRight   :=false;


end;

procedure TFrm_LPreco1.CODTIPExit(Sender: TObject);
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

procedure TFrm_LPreco1.CODTIPKeyPress(Sender: TObject; var Key: Char);
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
//else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_LPreco1.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco1.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_LPreco1.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco1.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
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

procedure TFrm_LPreco1.CODGRUExit(Sender: TObject);
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
      codgru.setfocus;
      end;
   end;
end;

procedure TFrm_LPreco1.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_lpreco1',key);
   if valfloat(CODGRU.Text)<>0 then
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_GproGRCODGRU.AsString))
                                   +' - '+DM1.Tb_GproGRNOME.AsString);
      CODGRU.text := '';
      end;
   key:=#0;
   end;

end;
procedure TFrm_LPreco1.CODCONKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_LPreco1.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco1.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_LPreco1.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco1.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco1.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco1.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
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

procedure TFrm_LPreco1.CODRAMKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_LPreco1.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco1.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_LPreco1.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_LPreco1.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_LPreco1.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_LPreco1.MDT1Exit(Sender: TObject);
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

procedure TFrm_LPreco1.MDT2Exit(Sender: TObject);
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

procedure TFrm_LPreco1.sb_SalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(codusr,'_LPRECO1','');
fGravaPadroes(codusr,'VENDA1'    ,'text' ,'_LPRECO1',VENDA1.Text);
fGravaPadroes(codusr,'VENDA2'    ,'text' ,'_LPRECO1',VENDA2.Text);
fGravaPadroes(codusr,'VENDA3'    ,'text' ,'_LPRECO1',VENDA3.Text);
fGravaPadroes(codusr,'PRECOC'    ,'text' ,'_LPRECO1',PRECOC.Text);
fGravaPadroes(codusr,'PCOFAB'    ,'text' ,'_LPRECO1',PCOFAB.Text);
fGravaPadroes(codusr,'PMC'       ,'text' ,'_LPRECO1',PMC.Text);
fGravaPadroes(codusr,'UPC'       ,'text' ,'_LPRECO1',UPC.Text);
fGravaPadroes(codusr,'TITREL'    ,'text' ,'_LPRECO1',TITREL.Text);
fGravaPadroes(codusr,'QTDXPCO'            ,'text' ,'_LPRECO1',QTDXPCO.Text);
fGravaPadroes(codusr,'VENDA1MENOSDESC1'   ,'text' ,'_LPRECO1',edt_venda1menosdesc1.Text);

fGravaPadroes(codusr,'RG_QUEBRA'     ,'itemindex' ,'_LPRECO1',IntTostr(RG_QUEBRA.ItemIndex));
fGravaPadroes(codusr,'RG_ORDEM'      ,'itemindex' ,'_LPRECO1',IntTostr(RG_ORDEM.ItemIndex));
fGravaPadroes(codusr,'CB_SEPPAG'     ,'checked'   ,'_LPRECO1',iif(CB_SEPPAG.Checked,'true','false'));
fGravaPadroes(codusr,'CB_QDEC_PCO'   ,'itemindex' ,'_LPRECO1',IntTostr(CB_QDEC_PCO.ItemIndex));

mcinst2:='';
for x:=0 to CLB_Precos.Items.Count-1 do
   begin
   if CLB_Precos.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_PRECOS'          ,'itemindex' ,'_LPRECO1',mcinst2);

mcinst2:='';
for x:=0 to CLB_STATUS.Items.Count-1 do
   begin
   if CLB_STATUS.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_STATUS'          ,'itemindex' ,'_LPRECO1',mcinst2);

fGravaPadroes(codusr,'OMITIR_STATUS'      ,'checked'   ,'_LPRECO1',iif(OMITIR_STATUS.Checked,'true','false'));
fGravaPadroes(codusr,'CB_SEMBORDA'        ,'checked'   ,'_LPRECO1',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_LINHA_LQ'        ,'checked'   ,'_LPRECO1',iif(CB_LINHA_LQ.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATRICIAL'       ,'checked'   ,'_LPRECO1',iif(CB_MATRICIAL.Checked,'true','false'));

fGravaPadroes(codusr,'CB_LOTE'            ,'checked'   ,'_LPRECO1',iif(CB_LOTE.Checked,'true','false'));
fGravaPadroes(codusr,'CB_DTVCTO'          ,'checked'   ,'_LPRECO1',iif(CB_DTVCTO.Checked,'true','false'));
fGravaPadroes(codusr,'CB_DESC'            ,'checked'   ,'_LPRECO1',iif(CB_DESC.Checked,'true','false'));
fGravaPadroes(codusr,'CB_EXIBIR_MARCA'    ,'checked'   ,'_LPRECO1',iif(CB_EXIBIR_MARCA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_NOME2'           ,'checked'   ,'_LPRECO1',iif(CB_NOME2.Checked,'true','false'));
fGravaPadroes(codusr,'CB_EST'             ,'checked'   ,'_LPRECO1',iif(CB_EST.Checked,'true','false'));
fGravaPadroes(codusr,'CB_EST_MULTIPLO'    ,'checked'   ,'_LPRECO1',iif(CB_EST_MULTIPLO.Checked,'true','false'));
fGravaPadroes(codusr,'CB_CODBAR'          ,'checked'   ,'_LPRECO1',iif(CB_CODBAR.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MASC'            ,'checked'   ,'_LPRECO1',iif(CB_MASC.Checked,'true','false'));

mcinst2:='';
for x:=0 to CLBNivel.Items.Count-1 do
   begin
   if CLBNivel.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBNIVEL'          ,'itemindex' ,'_LPRECO1',mcinst2);

mcinst2:='';
for x:=0 to CLB_LISTARPRECO.Items.Count-1 do
   begin
   if CLB_LISTARPRECO.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_LISTARPRECO'          ,'itemindex' ,'_LPRECO1',mcinst2);

mcinst2:='';
for x:=0 to CLBEstoque.Items.Count-1 do
   begin
   if CLBEstoque.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBESTOQUE'          ,'itemindex' ,'_LPRECO1',mcinst2);


fmensagem('Gravado!',0,['0'],0);
end;

function TFrm_Lpreco1.AjustaCampos(ptipo: Integer): Boolean;
var
mtamred: Integer;
mqtdvis: Integer;
mAjusteUn: Integer;
mdifaju: Integer;
mleft: Integer;
mleftAcum: Integer;
mqtdlist: Integer;
mTamLin: Integer;
mCampoAnt:Integer;
begin
{
lbl_codpro.Width  :=mtamc_codpro;
lbl_codbar.Width  :=mtamc_codbar;
lbl_und.width     :=mtamc_und   ;
lbl_nompro.Width  :=mtamc_nompro;
lbl_marca.Width   :=mtamc_marca;
lbl_referencia.width:=mtamc_refer;
lbl_lote.Width    :=mtamc_lote  ;
lbl_dtvcto.Width  :=mtamc_dtvcto;
lbl_desc.Width    :=mtamc_desc;
lbl_colpco01.Width:=mtamc_pco01 ;
lbl_colpco02.Width:=mtamc_pco02;
lbl_colpco03.Width:=mtamc_pco03;
lbl_estoque.Width :=mtamc_estoque;
lbl_estoque_multiplo.Width :=mtamc_estoque_multiplo;
lbl_nome2.Width   :=mtamc_nome2;

mqtdvis:=15;
mtamred:=0;
if not lbl_codpro.Visible then
   begin
   mtamred:=mtamred+mtamc_codpro;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_und.Visible then
   begin
   mtamred:=mtamred+mtamc_und;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_nompro.Visible then
   begin
   mtamred:=mtamred+mtamc_nompro;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_marca.Visible then
   begin
   mtamred:=mtamred+mtamc_marca;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_referencia.Visible then
   begin
   mtamred:=mtamred+mtamc_refer;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_codbar.Visible then
   begin
   mtamred:=mtamred+mtamc_codbar;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_lote.Visible then
   begin
   mtamred:=mtamred+mtamc_lote;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_dtvcto.Visible then
   begin
   mtamred:=mtamred+mtamc_dtvcto;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_desc.Visible then
   begin
   mtamred:=mtamred+mtamc_desc;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_colpco01.Visible then
   begin
   mtamred:=mtamred+mtamc_pco01;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_colpco02.Visible then
   begin
   mtamred:=mtamred+mtamc_pco02;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_colpco03.Visible then
   begin
   mtamred:=mtamred+mtamc_pco03;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_estoque.Visible then
   begin
   mtamred:=mtamred+mtamc_estoque;
   mqtdvis:=mqtdvis-1;
   end;

if not lbl_estoque_multiplo.Visible then
   begin
   mtamred:=mtamred+mtamc_estoque_multiplo;
   mqtdvis:=mqtdvis-1;
   end;


if not lbl_nome2.Visible then
   begin
   mtamred:=mtamred+mtamc_nome2;
   mqtdvis:=mqtdvis-1;
   end;
if CB_SEMBORDA.Checked then
   mTamLin:=720
else
   mTamLin:=712;
mdifaju:=0;
if mtamred<>0 then
   begin
   mqtdlist:=0;
   mAjusteUn:=round(mtamred/mqtdvis);
   if (mAjusteUn*mqtdvis)<>mtamred then
      mdifaju:=(mAjusteUn*mqtdvis)-mtamred;
   mleft:=0;
   if lbl_codpro.Visible then
      begin
      lbl_codpro.Left:=mleft;
      lbl_codpro.Width:=mtamc_codpro+(mAjusteUn+mdifaju);
      mleft:=mleft+lbl_codpro.Width;
//      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_codpro.Width:=lbl_codpro.Width+
                           (mTamLin-(lbl_codpro.Left+lbl_codpro.Width));
      end;


   if lbl_nompro.Visible then
      begin
      lbl_nompro.Left:=mleft+mdifaju+1;
      lbl_nompro.Width:=mtamc_nompro+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_nompro.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_nompro.Width:=lbl_nompro.Width+(mTamLin-(lbl_nompro.Left+lbl_nompro.Width));
      end;

   if lbl_und.Visible then
      begin
      lbl_und.Left:=mleft+mdifaju+1;
      lbl_und.Width:=mtamc_und+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_und.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_und.Width:=lbl_und.Width+
                        (mTamLin-(lbl_und.Left+lbl_und.Width));

      end;

   if lbl_marca.Visible then
      begin
      lbl_marca.Left:=mleft+mdifaju+1;
      lbl_marca.Width:=mtamc_marca+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_marca.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_marca.Width:=lbl_marca.Width+(mTamLin-(lbl_marca.left+lbl_marca.Width));
      end;

   if lbl_referencia.Visible then
      begin
      lbl_referencia.Left:=mleft+mdifaju+1;
      lbl_referencia.Width:=mtamc_refer+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_referencia.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_referencia.Width:=lbl_referencia.Width+(mTamLin-(lbl_referencia.left+lbl_referencia.Width));
      end;


   if lbl_codbar.Visible then
      begin
      lbl_codbar.Left:=mleft+mdifaju+1;
      lbl_codbar.Width:=mtamc_codbar+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_codbar.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_codbar.Width:=lbl_codbar.Width+
                        (mTamLin-(lbl_codbar.Left+lbl_codbar.Width));

      end;

   if lbl_lote.Visible then
      begin
      lbl_lote.Left:=mleft+mdifaju+1;
      lbl_lote.Width:=mtamc_lote+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_lote.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_lote.Width:=lbl_lote.Width+(mTamLin-(lbl_lote.left+lbl_lote.Width));

      end;
   if lbl_dtvcto.Visible then
      begin
      lbl_dtvcto.Left:=mleft+mdifaju+1;
      lbl_dtvcto.Width:=mtamc_dtvcto+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_dtvcto.Width;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_dtvcto.Width:=lbl_dtvcto.Width+(mTamLin-(lbl_dtvcto.left+lbl_dtvcto.Width));

      mdifaju        :=0;
      end;
   if lbl_desc.Visible then
      begin
      lbl_desc.Left:=mleft+mdifaju+1;
      lbl_desc.Width:=mtamc_desc+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_desc.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_desc.Width:=lbl_desc.Width+(mTamLin-(lbl_desc.left+lbl_desc.Width));

      end;
   if lbl_colpco01.Visible then
      begin
      lbl_colpco01.Left:=mleft+mdifaju+1;
      lbl_colpco01.Width:=mtamc_pco01+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_colpco01.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_colpco01.Width:=lbl_colpco01.Width+
                             (mTamLin-(lbl_colpco01.left+lbl_colpco01.Width));

      end;
   if lbl_colpco02.Visible then
      begin
      lbl_colpco02.Left:=mleft+mdifaju+1;
      lbl_colpco02.Width:=mtamc_pco02+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_colpco02.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_colpco02.Width:=lbl_colpco02.Width+(mTamLin-(lbl_colpco02.left+lbl_colpco02.Width));

      end;

   if lbl_colpco03.Visible then
      begin
      lbl_colpco03.Left:=mleft+mdifaju+1;
      lbl_colpco03.Width:=mtamc_pco03+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_colpco03.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_colpco03.Width:=lbl_colpco03.Width+(mTamLin-(lbl_colpco03.left+lbl_colpco03.Width));

      end;

   if lbl_estoque.Visible then
      begin
      lbl_estoque.Left:=mleft+mdifaju+1;
      lbl_estoque.Width:=mtamc_estoque+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_estoque.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_estoque.Width:=lbl_estoque.Width+(mTamLin-(lbl_estoque.left+lbl_estoque.Width));

      end;

   if lbl_estoque_multiplo.Visible then
      begin
      lbl_estoque_multiplo.Left:=mleft+mdifaju+1;
      lbl_estoque_multiplo.Width:=mtamc_estoque_multiplo+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_estoque_multiplo.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_estoque_multiplo.Width:=lbl_estoque_multiplo.Width+(mTamLin-(lbl_estoque_multiplo.left+lbl_estoque_multiplo.Width));

      end;

   if lbl_nome2.Visible then
      begin
      lbl_nome2.Left:=mleft+mdifaju+1;
      lbl_nome2.Width:=mtamc_nome2+(mAjusteUn+mdifaju);
      mleft:=mleft+mdifaju+lbl_nome2.Width;
      mdifaju        :=0;
      mqtdlist:=mqtdlist+1;
      if mqtdlist=mqtdvis then
         lbl_nome2.Width:=lbl_nome2.Width+(mTamLin-(lbl_nome2.left+lbl_nome2.Width));

      end;
   end;
mleft  :=0;
mTamLin:=0;
mCampoAnt:=0; {0-codpro,1-und,2-nompro,3-marca,4-lote,5-dtvcto,6-desc,7-preco1,8-preco2,9-estoque,10-nome2}
{
if lbl_codpro.Visible then
   begin
   mleft     :=lbl_codpro.Left;
   mTamLin  :=lbl_codpro.Width;
   mCampoAnt:=0;
   end;

if lbl_nompro.Visible then
   begin
   if lbl_nompro.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_nompro.left-(mleft+mTamLin+1));
   mleft     :=lbl_nompro.Left;
   mTamLin   :=lbl_nompro.Width;
   mCampoAnt :=2;
   end;

if lbl_und.Visible then
   begin
   if lbl_und.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_und.left-(mleft+mTamLin+1));
   mleft     :=lbl_und.Left;
   mTamLin   :=lbl_und.Width;
   mCampoAnt :=1;
   end;


if lbl_marca.Visible then
   begin
   if lbl_marca.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_marca.left-(mleft+mTamLin+1));
   mleft     :=lbl_marca.Left;
   mTamLin   :=lbl_marca.Width;
   mCampoAnt :=3;
   end;

if lbl_codbar.Visible then
   begin
   if lbl_codbar.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_codbar.left-(mleft+mTamLin+1));
   mleft     :=lbl_codbar.Left;
   mTamLin   :=lbl_codbar.Width;
   mCampoAnt :=11;
   end;



if lbl_lote.Visible then
   begin
   if lbl_lote.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_lote.left-(mleft+mTamLin+1));
   mleft     :=lbl_lote.Left;
   mTamLin   :=lbl_lote.Width;
   mCampoAnt :=4;

   end;
if lbl_dtvcto.Visible then
   begin
   if lbl_dtvcto.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_dtvcto.left-(mleft+mTamLin+1));
   mleft     :=lbl_dtvcto.Left;
   mTamLin   :=lbl_dtvcto.Width;
   mCampoAnt :=5;
   end;
if lbl_desc.Visible then
   begin
   if lbl_desc.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_desc.left-(mleft+mTamLin+1));
   mleft     :=lbl_desc.Left;
   mTamLin   :=lbl_desc.Width;
   mCampoAnt :=6;

   end;
if lbl_colpco01.Visible then
   begin
   if lbl_colpco01.Left<(mleft+mTamLin+3) then
      fMudaTam(mCampoAnt,lbl_colpco01.left-(mleft+mTamLin+3));
   mleft     :=lbl_colpco01.Left;
   mTamLin   :=lbl_colpco01.Width;
   mCampoAnt :=7;
   end;
if lbl_colpco02.Visible then
   begin
   if lbl_colpco02.Left<(mleft+mTamLin+3) then
      fMudaTam(mCampoAnt,lbl_colpco02.left-(mleft+mTamLin+3));
   mleft     :=lbl_colpco02.Left;
   mTamLin   :=lbl_colpco02.Width;
   mCampoAnt :=8;
   end;

if lbl_colpco03.Visible then
   begin
   if lbl_colpco03.Left<(mleft+mTamLin+3) then
      fMudaTam(mCampoAnt,lbl_colpco03.left-(mleft+mTamLin+3));
   mleft     :=lbl_colpco03.Left;
   mTamLin   :=lbl_colpco03.Width;
   mCampoAnt :=9;
   end;

if lbl_estoque.Visible then
   begin
   if lbl_estoque.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_estoque.left-(mleft+mTamLin+1));
   mleft     :=lbl_estoque.Left;
   mTamLin   :=lbl_estoque.Width;
   mCampoAnt :=10;
   end;

if lbl_estoque_multiplo.Visible then
   begin
   if lbl_estoque_multiplo.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_estoque_multiplo.left-(mleft+mTamLin+1));
   mleft     :=lbl_estoque_multiplo.Left;
   mTamLin   :=lbl_estoque_multiplo.Width;
   mCampoAnt :=11;
   end;

if lbl_nome2.Visible then
   begin
   if lbl_nome2.Left<(mleft+mTamLin+1) then
      fMudaTam(mCampoAnt,lbl_nome2.left-(mleft+mTamLin+1));
   mleft     :=lbl_nome2.Left;
   mTamLin   :=lbl_nome2.Width;
   mCampoAnt :=12;
   end;
}
result:=true;

end;

procedure TFrm_LPreco1.produtoCalcFields(DataSet: TDataSet);
begin
if CB_MASC.Checked then
   begin
   if produtoESTOQUE.Value<=0 then
      produtocalc_estoque.Value:=''
   else
      begin
      produtocalc_estoque.Value:=insere('*','*',length(produtoESTOQUE.AsString));
      end;
   end
else
   produtocalc_estoque.Value:=FormatFloat(mcasqtd,produtoESTOQUE.Value);
if produtoDTVCTO.AsDateTime>pdatanula then
   produtocalc_dtvcto.AsDateTime:=produtoDTVCTO.AsDateTime;
end;

procedure TFrm_LPreco1.rl_cabgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
{
if (CB_SEPPAG.Checked) and (mEmitiuPrimeiro) then
   RLReport1.NewPage;
mEmitiuPrimeiro:=true;
}
end;

procedure TFrm_LPreco1.CODREGKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODREG.Text:=fChamaRegiao(0,'frm_LPreco1',Key);
   if trim(CODREG.Text)<>'' then
      CODREGexit(Self);
   key:=#0;
   end;
end;

procedure TFrm_LPreco1.CODREGExit(Sender: TObject);
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

function TFrm_LPreco1.fMudaTam(pCampo,pTamanho: Integer): Boolean;
begin
{pCampo = 0-codpro,1-und,2-nompro,3-marca,4-lote,5-dtvcto,6-desc,7-preco1,8-preco2,9-estoque,10-nome2}
if pCampo=0 then
   lbl_codpro.Width:=lbl_codpro.Width-pTamanho
else if pCampo=1 then
   lbl_und.Width:=lbl_und.Width-pTamanho
else if pCampo=2 then
   lbl_nompro.Width:=lbl_nompro.Width-pTamanho
else if pCampo=3 then
   lbl_marca.Width:=lbl_marca.Width-pTamanho
else if pCampo=4 then
   lbl_lote.Width:=lbl_lote.Width-pTamanho
else if pCampo=5 then
   lbl_dtvcto.Width:=lbl_dtvcto.Width-pTamanho
else if pCampo=6 then
   lbl_desc.Width:=lbl_desc.Width-pTamanho
else if pCampo=7 then
   lbl_colpco01.Width:=lbl_colpco01.Width-pTamanho
else if pCampo=8 then
   lbl_colpco02.Width:=lbl_colpco02.Width-pTamanho
else if pCampo=9 then
   lbl_estoque.Width:=lbl_estoque.Width-pTamanho
else if pCampo=10 then
   lbl_estoque_multiplo.Width:=lbl_estoque_multiplo.Width-pTamanho
else if pCampo=11 then
   lbl_nome2.Width:=lbl_nome2.Width-pTamanho
else if pCampo=12 then
   lbl_codbar.Width:=lbl_codbar.Width-pTamanho;







result:=true;
end;
procedure TFrm_LPreco1.CB_QDEC_PCOClick(Sender: TObject);
begin

produtoPDPRECO1.DisplayFormat:='#,##0'+iif(CB_QDEC_PCO.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PCO.ItemIndex),'');
produtoPDPRECO2.DisplayFormat:='#,##0'+iif(CB_QDEC_PCO.ItemIndex>0,'.'+insere2('0','0',CB_QDEC_PCO.ItemIndex),'');

end;

procedure TFrm_LPreco1.CLBEstoqueClick(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);

end;

procedure TFrm_LPreco1.RLGroup1AfterPrint(Sender: TObject);
begin
if (RG_QUEBRA.ItemIndex>0) and
   (CB_SEPPAG.Checked) then
   RLReport1.NewPage; 
end;

procedure TFrm_LPreco1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_LPreco1.AJUSTARPCOExit(Sender: TObject);
begin
if ValFloat(AJUSTARPCO.Text)<0 then
   AJUSTARPCO.Text:=FormatFloat(mcasas_pct, ValFloat(AJUSTARPCO.Text)*-1)
else
   AJUSTARPCO.Text:=FormatFloat(mcasas_pct, ValFloat(AJUSTARPCO.Text));
end;

procedure TFrm_LPreco1.CLB_STATUSClick(Sender: TObject);
begin
   CLB_STATUS:=Valida_CheckList(CLB_STATUS);
end;

procedure TFrm_LPreco1.FormShow(Sender: TObject);
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
   Ts_Relatorio.TabVisible := False;
end;

procedure TFrm_LPreco1.CLB_LISTARPRECOClick(Sender: TObject);
begin
  CLB_ListarPreco := Valida_CheckList(CLB_ListarPreco);
end;

procedure TFrm_LPreco1.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mValorTot:=0;
    mQtdItens:=0;
    mTotUnd:=0;

end;

procedure TFrm_LPreco1.rl_cabitensAfterPrint(Sender: TObject);
begin
    mValorTot:=mValorTot+produtoPDPRECO2.AsFloat;
    mQtdItens:=mQtdItens+1;
    mTotUnd:=mTotUnd+produtoESTOQUE.AsFloat;

end;

procedure TFrm_LPreco1.rltotalBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totitens.Caption:=InttoStr(mQtdItens);
lbl_totund.Caption:=FloatToStr(mTotUnd);
lbl_valortot.Caption:= FormatFloat(mcasas, mValorTot);
mValorTot:=0;
mQtdItens:=0;
mTotUnd:=0;

end;

procedure TFrm_LPreco1.CODDEPExit(Sender: TObject);
begin
CODDEP.Text:=fdeixanum2(CODDEP.Text);
if Trim(CODDEP.Text)<>'' then
  begin
  if not flcadpro_dpto(1,0,CODDEP.Text) then
    begin
    fmensagem('Departamento não Cadastrado!',0,['0'],0);
    if lbx_coddep.Focused then
      CODDEP.SetFocus;
    end
  else
    begin
    lbx_coddep.Items.Add(FormatFloat('0000000', DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat)
                             +' - '+DM6.Tb_Prod_DepPRODEP_NOME.AsString);
    CODDEP.text := '';
    if lbx_coddep.Focused then
      CODDEP.SetFocus;
    end;
  end;
end;

procedure TFrm_LPreco1.CODDEPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODDEP.Text:= fChamaDepto(0,'frm_LPreco1',key);
   key:=#0;
   CODDEPExit(Self);
   end;
end;

procedure TFrm_LPreco1.CODDEPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
codram.Hint := 'Informe Codigo do Departamento ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LPreco1.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_LPreco1.bb_exportarClick(Sender: TObject);
begin
fAbrirBanco;
fGerarPlanilhaExcel([],dsproduto);
end;

procedure TFrm_LPreco1.fAjustarColunas;
var

mQtdVisivel: integer;
mTotalWidthVisivel: integer;

mWidthRestante: integer;
mWidthRatearDif: integer;
mWidthRatear: integer;
mQtdFixo: Integer;
mTamanhoFixo: Integer;

mLeft: integer;


    procedure SomarVisivel(pCampo: TRLLabel);
    begin
    if (pCampo.Visible=true) then
       begin
       mTotalWidthVisivel := mTotalWidthVisivel + pCampo.Width;
       mQtdVisivel        := mQtdVisivel +1;
       end
    end;

    procedure qtdFixoNaoAjustar(pCampo: TRLLabel);
    begin
    if (pCampo.Visible=true) then
       begin
       mQtdFixo:=mQtdFixo+1;
       mTamanhoFixo:=mTamanhoFixo+pCampo.Width;
       end
    end;


    function fAjustarTamanho(pCampoEntra: TRLLabel): integer ;
    begin
    if (pCampoEntra.Visible=true) then
       begin
       result:= pCampoEntra.Width +   mWidthRatear   + mWidthRatearDif;
       mWidthRatearDif :=0;
       end
    else
       result:=0;
    end;

    function fAjustarLeft(pCampoEntra: TRLLabel): integer ;
    begin
    if (pCampoEntra.Visible=true) then
       begin
       result :=mLeft;
       mLeft:=mLeft+pCampoEntra.Width;
       end
    else
       result:=0;
    end;


begin
lbl_codpro.Width             := mColCodpro;
lbl_nompro.Width             := mColNomPro;
lbl_und.Width                := mColUnd;
lbl_marca.Width              := mColMarca;
lbl_referencia.Width         := mColReferencia;
lbl_codbar.Width             := mColCodBar;
lbl_lote.Width               := mColLote;
lbl_dtvcto.Width             := mColDtVcto;
lbl_desc.Width               := mColDesc;
lbl_colpco01.Width           := mColPreco1;
lbl_colpco02.Width           := mColPreco2;
lbl_colpco03.Width           := mColPreco3;
lbl_estoque.Width            := mColEstoque;
lbl_estoque_multiplo.Width   := mcolEstMultiplo;
lbl_nome2.Width              := mcolNome2;
lbl_lozalizacao.Width        := mcolLocalizacao;

mQtdVisivel       :=0;
mTamanhoFixo        :=0;

mTotalWidthVisivel:=0;
mLeft:=0;
mQtdFixo          :=0;
SomarVisivel(lbl_codpro);
SomarVisivel(lbl_nompro);
SomarVisivel(lbl_und);
SomarVisivel(lbl_marca);
SomarVisivel(lbl_referencia);
SomarVisivel(lbl_codbar);
SomarVisivel(lbl_lote);
SomarVisivel(lbl_dtvcto);
SomarVisivel(lbl_desc);
SomarVisivel(lbl_colpco01);
SomarVisivel(lbl_colpco02);
SomarVisivel(lbl_colpco03);
SomarVisivel(lbl_estoque);
SomarVisivel(lbl_estoque_multiplo);
SomarVisivel(lbl_nome2);
SomarVisivel(lbl_lozalizacao);

qtdFixoNaoAjustar(lbl_codpro);
qtdFixoNaoAjustar(lbl_und);
qtdFixoNaoAjustar(lbl_colpco01);
qtdFixoNaoAjustar(lbl_colpco02);
qtdFixoNaoAjustar(lbl_colpco03);
qtdFixoNaoAjustar(lbl_desc);
qtdFixoNaoAjustar(lbl_lote);
qtdFixoNaoAjustar(lbl_dtvcto);
qtdFixoNaoAjustar(lbl_estoque);
qtdFixoNaoAjustar(lbl_estoque_multiplo);
mQtdVisivel := mQtdVisivel-mQtdFixo;
//mTotalWidthVisivel := mTotalWidthVisivel-mTamanhoFixo;
mWidthRestante := (mTamanhoGeral) - mTotalWidthVisivel;
mWidthRatear   := trunc(mWidthRestante / mQtdVisivel);
mWidthRatearDif:= (mWidthRestante)- (mWidthRatear*mQtdVisivel);


//lbl_codpro.width           := fAjustarTamanho(lbl_codpro);
lbl_nompro.width           := fAjustarTamanho(lbl_nompro);
//lbl_und.width              := fAjustarTamanho(lbl_und);
lbl_marca.width            := fAjustarTamanho(lbl_marca);
lbl_referencia.width       := fAjustarTamanho(lbl_referencia);
lbl_codbar.width           := fAjustarTamanho(lbl_codbar);
//lbl_lote.width             := fAjustarTamanho(lbl_lote);
//lbl_dtvcto.width           := fAjustarTamanho(lbl_dtvcto);
//lbl_desc.width             := fAjustarTamanho(lbl_desc);
//lbl_colpco01.width         := fAjustarTamanho(lbl_colpco01);
//lbl_colpco02.width         := fAjustarTamanho(lbl_colpco02);
//lbl_colpco03.width         := fAjustarTamanho(lbl_colpco03);
//lbl_estoque.width          := fAjustarTamanho(lbl_estoque);
//lbl_estoque_multiplo.width := fAjustarTamanho(lbl_estoque_multiplo);
lbl_nome2.width            := fAjustarTamanho(lbl_nome2);
lbl_lozalizacao.width      := fAjustarTamanho(lbl_lozalizacao);




lbl_codpro.left           := fAjustarLeft(lbl_codpro);
lbl_nompro.left           := fAjustarLeft(lbl_nompro);
lbl_und.left              := fAjustarLeft(lbl_und);
lbl_marca.left            := fAjustarLeft(lbl_marca);
lbl_referencia.left       := fAjustarLeft(lbl_referencia);
lbl_codbar.left           := fAjustarLeft(lbl_codbar);
lbl_lote.left             := fAjustarLeft(lbl_lote);
lbl_dtvcto.left           := fAjustarLeft(lbl_dtvcto);
lbl_desc.left             := fAjustarLeft(lbl_desc);
lbl_colpco01.left         := fAjustarLeft(lbl_colpco01);
lbl_colpco02.left         := fAjustarLeft(lbl_colpco02);
lbl_colpco03.left         := fAjustarLeft(lbl_colpco03);
lbl_estoque.left          := fAjustarLeft(lbl_estoque);
lbl_estoque_multiplo.left := fAjustarLeft(lbl_estoque_multiplo);
lbl_nome2.left            := fAjustarLeft(lbl_nome2);
lbl_lozalizacao.left      := fAjustarLeft(lbl_lozalizacao);






end;



procedure TFrm_LPreco1.SetarVisible(pVisible: boolean);
begin
lbl_codpro.visible             := pVisible;
lbl_nompro.visible             := pVisible;
lbl_und.visible                := pVisible;
lbl_marca.visible              := pVisible;
lbl_referencia.visible         := pVisible;
lbl_codbar.visible             := pVisible;
lbl_lote.visible               := pVisible;
lbl_dtvcto.visible             := pVisible;
lbl_desc.visible               := pVisible;
lbl_colpco01.visible           := pVisible;
lbl_colpco02.visible           := pVisible;
lbl_colpco03.visible           := pVisible;
lbl_estoque.visible            := pVisible;
lbl_estoque_multiplo.visible   := pVisible;
lbl_nome2.visible              := pVisible;

end;



end.
