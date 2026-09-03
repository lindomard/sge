unit S_LRS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, Mask, ExtCtrls, Db, DBTables, S_DM1,
  S_Impres, S_DM5, func, MaskUtils, variants,RdPrint,S_Stru,lerarq,S_Sintegra_Advert,
  RLReport, ComCtrls, RxMemDS,adodb, ToolEdit;
type
  TFrm_LRS = class(TForm)
    temp: TQuery;
    temp1: TQuery;
    temp2: TQuery;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    TsRelator: TTabSheet;
    tsCompar: TTabSheet;
    rlmod04: TRLReport;
    RLBand8: TRLBand;
    RLDBText2: TRLDBText;
    rl_cab: TRLLabel;
    rl_Cliente: TRLLabel;
    rl_NFECF: TRLLabel;
    rl_pedido: TRLLabel;
    rl_emissao: TRLLabel;
    rl_total: TRLLabel;
    rl_tipo: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel1: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLLabel7: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo6: TRLSystemInfo;
    RLGroup2: TRLGroup;
    RLBand9: TRLBand;
    rl_data: TRLLabel;
    RLBand10: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText15: TRLDBText;
    RLBand11: TRLBand;
    RLLabel11: TRLLabel;
    TotGAberto: TRLLabel;
    RLBand12: TRLBand;
    rl_banner: TRLLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    UF: TComboBox;
    LN: TEdit;
    TIPO: TRadioGroup;
    PGI: TEdit;
    PG1: TEdit;
    PG2: TEdit;
    TERMO: TRadioGroup;
    DTTERM1: TMaskEdit;
    DTTERM2: TMaskEdit;
    TPGTERM: TEdit;
    CB_ICMSROBS: TCheckBox;
    RG_MODELO: TRadioGroup;
    CB_PISCOF: TCheckBox;
    RG_DOC: TRadioGroup;
    cb_antigo: TCheckBox;
    rg_oper: TRadioGroup;
    CheckBox1: TCheckBox;
    NUMNF: TEdit;
    RG_NFCANC: TRadioGroup;
    CB_RETIDO_SEPAR: TCheckBox;
    MCFOP: TEdit;
    Panel4: TPanel;
    sbSalvarPadrao: TSpeedButton;
    BImprimir: TBitBtn;
    BBnFechar: TBitBtn;
    bbComparar: TBitBtn;
    Memo_comparacoes: TMemo;
    CB_USACUPOM: TCheckBox;
    bbECFCat52: TBitBtn;
    mem_ecfcat52: TRxMemoryData;
    mem_ecfcat52ecf_datacup: TDateField;
    mem_ecfcat52ecf_numcup: TIntegerField;
    mem_ecfcat52ecf_totliq: TFloatField;
    mem_ecfcat52ecf_item: TIntegerField;
    mem_ecfcat52ecf_codpro: TStringField;
    mem_ecfcat52ecf_pu: TFloatField;
    mem_ecfcat52ecf_qtd: TFloatField;
    mem_ecfcat52ecf_totdes: TFloatField;
    mem_ecfcat52ecf_totacre: TFloatField;
    mem_ecfcat52ecf_sitaliq: TStringField;
    mem_ecfcat52cat52_codpro: TStringField;
    mem_ecfcat52cat52_pu: TFloatField;
    mem_ecfcat52cat52_qtd: TFloatField;
    mem_ecfcat52cat52_totdes: TFloatField;
    mem_ecfcat52cat52_totacre: TFloatField;
    mem_ecfcat52cat52_sitaliq: TStringField;
    mem_ecfcat52cat52_basen: TFloatField;
    mem_ecfcat52cat52_icmsn: TFloatField;
    mem_ecfcat52ecf_basen: TFloatField;
    mem_ecfcat52ecf_icmsn: TFloatField;
    tsEcfCat52: TTabSheet;
    Panel5: TPanel;
    src_ecfcat52: TDataSource;
    DBGrid_ecfcart52: TDBGrid;
    mem_ecfcat52ecf_codecf: TIntegerField;
    mem_ecfcat52ecf_totcupliq: TFloatField;
    mem_ecfcat52cat52_totliqcup: TFloatField;
    mem_ecfcat52ecf_cancelado: TStringField;
    mem_ecfcat52cat52_cancelado: TStringField;
    mem_ecfcat52cat52_nompro: TStringField;
    mem_ecfcat52cat52_und: TStringField;
    mem_ecfcat52cat52_totliq: TFloatField;
    mem_ecfcat52cat52_decpu: TIntegerField;
    mem_ecfcat52cat52_decqtd: TIntegerField;
    mem_ecfcat52cat52_ger_peracre: TFloatField;
    mem_ecfcat52cat52_ger_valacre: TFloatField;
    mem_ecfcat52cat52_ger_perdes: TFloatField;
    mem_ecfcat52cat52_ger_valdes: TFloatField;
    bbcompredz: TBitBtn;
    MDT1: TDateEdit;
    MDT2: TDateEdit;
    Label15: TLabel;
    cb_protocolo: TComboBox;
    bbCompararNFSComXML: TBitBtn;
    procedure UFKeyPress(Sender: TObject; var Key: Char);
    procedure BBnFecharClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure LNKeyPress(Sender: TObject; var Key: Char);
    procedure LNExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PGIKeyPress(Sender: TObject; var Key: Char);
    procedure PG1KeyPress(Sender: TObject; var Key: Char);
    procedure PG2KeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DTTERM2Exit(Sender: TObject);
    procedure DTTERM1Exit(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure bbCompararClick(Sender: TObject);
    procedure bbECFCat52Click(Sender: TObject);
    procedure bbcompredzClick(Sender: TObject);
    procedure bbCompararNFSComXMLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mTabelaItens_Cupom: String;
    form_impres_lrs: tfrm_impres;

    function termos(ptipo,pNumLiv,pPagIni:Integer;pDatIni,pDatFin:TDateTime): Boolean;



    function FAbrirBanco_NS(pNumNF,pDoc,pOper,pCanc:Integer; pDataIni,pDataFin: TDatetime;pUf: String; pProcolo: String):Boolean;





    function GeraLFS(PTipo,Pmodelo,PDoc,Pobs: Integer; pdt1,pdt2: TDateTime;pSeparaIcmsR: Boolean; pCFo: String): Boolean;

    function fVerificaReducaoZ(pDataIni,pDataFin: Tdatetime): Boolean;

    function fRatearBematech(pDataIni,pDataFin: tdatetime):Boolean;


  end;
  function fGravarTipo75(pCodPro: Real;pDt1,pDt2: TDateTime): Boolean;

  function flrsgravalrs(pEntSai,pparam,pTipo,pMod,PFretePc: Integer; paliq,pnumero,pstatus,pvlrliv,pvlrcont,picmsn,pisentas,poutras,pbasen,ppiscof,pchave,pordem: Real; pcfo,pesp,picmipi,puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs,px,pCodCont: String; pdtemis,pdtent: TDateTime): Boolean;


  function flrsgrava5475(pparam,pItem: Integer; paliq,pnumero,pCodPro,pQtd,PPreco,pTotDes,picmsn,pbasen,picmsr,pBaser,pVlrIpi: Real; pcfo,pserie,psubser,pmodelo,pcnpj,pie,pCst: String; pdtemis,pdt1,pdt2: TDateTime;pCodPro_Ori,pNome_Ori: String): Boolean;

  function flrsgrava53(pparam,pTipo: Integer;pnumero,pstatus,picmsr,pDespAce,pbaser: Real; pcfo,puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;
  function flrsgrava50(pparam,pTipo: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;
  function flrsgrava51(pparam,pTipo: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;

  function flrsgrava55(pTipo: Integer;pValGNR: Real; pCnpj,puf,pUFST,Pie,PBancoGNR,pAgenciaGNR,PNumeroGNR,pMes,PAno,PNConvenio: String; pDataGNR,pDataVcto: TDateTime): Boolean;
  function flrsgrava60M(pTipo,pNEcf: Integer;pNInicial,PNFinal,PRedZ,PCRO,pVlVB,pVlGt: Real; pNsEcf,pModelo: String; pDataDoc: TDateTime): Boolean;
  function flrsgrava60A(pTipo: Integer;pVlTp: Real; pNsEcf,pNECF,pSitAliq: String; pDataDoc: TDateTime): Boolean;
  function flrsgrava60D(pTipo: Integer;pQuant,pVlBruto,pVlBcIcms,pVlCICMS: Real; pNsEcf,pSitAliq,pCodPro: String; pDataDoc: TDateTime): Boolean;
  function flrsgrava60I(pTipo,pItem: Integer;pQuant,pVlUnit,pTotal,pBCICMS,pVLICMS,pNumDoc: Real; pNsEcf,pModelo,pSitAliq,pCodPro: String; pDataDoc: TDateTime): Boolean;
  function flrsgrava60R(pTipo: Integer;pQuant,pVlTotal,pBcIcms: Real; pSitAliq,pCodPro,pMes,pAno: String): Boolean;
  function flrsgrava61(pparam,pTipo: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;

  function flrsgrava70(pparam,pTipo,PfretePc: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;


  function flrsgrava71(pparam,pTipo: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;
  function flrsgrava74(pparam,pTipo: Integer;




 pQtd,pTotal,pCnpj: Real;
 pCodProd,pCodPos,pIE,pUF: String; pDt1,pDt2: TDateTime): Boolean;





var
  Frm_LRS: TFrm_LRS;
  numpag,mcont: Integer;
  par_ordement: Integer=0;

  mdia: string;
  mprim: boolean=True;
  mPgIni: Integer;
  mtmp_RsCfo: String;
  mtmp_R10: String;
  mtmp_R11: String;
  mtmp_R50: String;
  mtmp_R51: String;
  mtmp_R61: String;
  mtmp_R61r: String;
  mtmp_R53: String;
  mtmp_R54: String;
  mtmp_R55: String;
  mtmp_R70: String;
  mtmp_R71: String;
  mtmp_R74: String;
  mtmp_R75: String;

  mtmp_R60M: String;
  mtmp_R60A: String;
  mtmp_R60D: String;
  mtmp_R60I: String;
  mtmp_R60R: String;

  mtmp_RS,
  mtmp_RS2,
  mtmp_RS3 : String;

  mlivro_ant: Boolean=False;
  mNNumnf_Irreg: string;
  mOrigem_Integer: integer=0; // 0-livro 1-Apuracao 2-Sintegra

implementation

uses S_Sintegra, S_LRE, S_Apur, func_excecoes, S_DM4, S_DM1_ADO,
  S_LRS_Cat52, s_CAT52xPedido, S_NFSxXML;


{$R *.DFM}

procedure TFrm_LRS.UFKeyPress(Sender: TObject; var Key: Char);
begin
Key:=UpperCase(Key)[1];
end;

procedure TFrm_LRS.BBnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_LRS.BImprimirClick(Sender: TObject);
var
  mdia: string;
  mtot011  , mtot012  , mtot013  , mtot014  , mtot015  , mtot016 , mtot017  , mtot018  : real;
  mtot021  , mtot022  , mtot023  , mtot024  , mtot025  , mtot026  : real;
  mtot031  , mtot032  , mtot033  , mtot034  , mtot035  , mtot036  : real;
  mtot041  , mtot042  , mtot043  , mtot044  , mtot045  , mtot046  : real;
  mtot051  , mtot052  , mtot053  , mtot054  , mtot055  , mtot056  : real;

  mtotg011  , mtotg012  , mtotg013  , mtotg014  , mtotg015  , mtotg016  : real;
  mtotg021  , mtotg022  , mtotg023  , mtotg024  , mtotg025  , mtotg026  : real;
  mtotg031  , mtotg032  , mtotg033  , mtotg034  , mtotg035  , mtotg036  : real;
  mtotg041  , mtotg042  , mtotg043  , mtotg044  , mtotg045  , mtotg046  : real;
  mtotg051  , mtotg052  , mtotg053  , mtotg054  , mtotg055  , mtotg056  : real;

  mnumant: String;
  mesp, mserie,mnumero,mdia_at,muf,mvlr_cont,mvlr_cont1: String;
  mcfoant: String;
  x: Integer;
  query_exe: tquery;
  mprocessa:boolean;

begin

If Trim(MDT1.Text)='/  /' then
   begin
   FMensagem('Digite a data inicial!',0,['0'],0);
   MDT1.SetFocus;
   Exit;
   end;
If Trim(MDT2.Text)='/  /' then
   begin
   FMensagem('Digite a data final!',0,['0'],0);
   MDT2.SetFocus;
   Exit;
   end;
if Strtodate(MDT2.Text)<StrToDate(MDT1.Text) then
   begin
   FMensagem('Data inicial maior que final. Invalido!',0,['0'],0);
   exit;
   end;

mNNumnf_Irreg:='';


if CB_USACUPOM.Checked then
   mTabelaItens_Cupom:='CADP02_VDACF'
else
   mTabelaItens_Cupom:='CADP02';
{
if NomeComputador='LINDOMAR-PC' then

   begin
   fVerificaReducaoZ(Strtodate(MDT1.Text),Strtodate(MDT2.Text));
   exit;
   end;
}


FAbrirBanco_ns(valint(NUMNF.Text),RG_DOC.ItemIndex,rg_oper.ItemIndex,RG_NFCANC.ItemIndex,MDT1.Date,MDT2.Date,uf.Text,cb_protocolo.Text);



DM5.Qr_NS.First;
fAbrirClientDataSet(DM5.tb_rcfop);


fAbrirClientDataSet(DM5.TB_RUF);

fAbrirClientDataSet(DM5.TB_LRS);


if cb_antigo.Checked then
   mlivro_ant:=true
else
   mlivro_ant:=False;

if (RG_DOC.ItemIndex=0) or (RG_DOC.ItemIndex=2) or (RG_DOC.ItemIndex=3) then
   begin
   mprocessa:=false;
   if not flfilpad(-2,'_lrs','MAPARES') then
      mprocessa:=true
   else
      if DM4.Tb_FilPad2FPVALOR.AsString<>'SIM' then
         mprocessa:=true;

   if mprocessa=true then
      begin
      if not fVerificaReducaoZ(Strtodate(MDT1.Text),Strtodate(MDT2.Text)) then
         begin
         if Application.MessageBox('Ha Erros Entre o Livro Fiscal e o Mapa Resumo, Continuar mesmo assim?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
            exit;
         end
      else
         begin
         fDeletaPadroes(-2,'_lrs','MAPARES');
         fGravaPadroes(-2,'MAPARES'    ,'text'   ,'_lrs','SIM');
         end;
      end;
   end;





geraLFS(0,RG_MODELO.ItemIndex,RG_DOC.ItemIndex,iif(CB_ICMSROBS.Checked,1,0),StrToDate(MDT1.Text),StrToDate(MDT2.Text),CB_RETIDO_SEPAR.Checked,MCFOP.Text);


if DM5.TB_LRS.RecordCount<=0 then
   begin
   FMensagem('Nada foi Selecionado para Impressão!',0,['0'],0);
   Exit;
   end;


If TERMO.ItemIndex=0 then
   begin
   If (Trim(DTTERM1.Text)='/  /') then
      begin
      FMensagem('Nada foi Selecionado para Impressão!',0,['0'],0);
      Exit;
      end;
   If (Trim(DTTERM2.Text)='/  /') then
      begin
      FMensagem('Nada foi Selecionado para Impressão!',0,['0'],0);
      Exit;
      end;
   end;
testeform := TFrm_LRS(FindGlobalComponent('form_impres_lrs'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_lrs);
   end;


form_impres_lrs.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

mtot011:=0; mtot012:=0; mtot013:=0; mtot014:=0; mtot015:=0; mtot016:=0;
mtot017:=0; mtot018:=0;
mtot021:=0; mtot022:=0; mtot023:=0; mtot024:=0; mtot025:=0; mtot026:=0;
mtot031:=0; mtot032:=0; mtot033:=0; mtot034:=0; mtot035:=0; mtot036:=0;
mtot041:=0; mtot042:=0; mtot043:=0; mtot044:=0; mtot045:=0; mtot046:=0;
mtot051:=0; mtot052:=0; mtot053:=0; mtot054:=0; mtot055:=0; mtot056:=0;

mtotg011:=0; mtotg012:=0; mtotg013:=0; mtotg014:=0; mtotg015:=0; mtotg016:=0;
mtotg021:=0; mtotg022:=0; mtotg023:=0; mtotg024:=0; mtotg025:=0; mtotg026:=0;
mtotg031:=0; mtotg032:=0; mtotg033:=0; mtotg034:=0; mtotg035:=0; mtotg036:=0;
mtotg041:=0; mtotg042:=0; mtotg043:=0; mtotg044:=0; mtotg045:=0; mtotg046:=0;
mtotg051:=0; mtotg052:=0; mtotg053:=0; mtotg054:=0; mtotg055:=0; mtotg056:=0;

mlin:=0;
mpag:=ValInt(PGI.Text);
if TERMO.ItemIndex=1 then
    mpag:=mpag-1;
if (ValInt(PGI.Text)<>1) and not (ValInt(PGI.Text)=0) then
   mpag:=mpag-1;
mdia:=DM5.tb_lrslrs_dia.Value;
while not DM5.Tb_LRS.Eof do
   begin


   if (trim(MCFOP.Text)<>'')  then
       begin
         if (DM5.tb_lrslrs_CFO.AsString <> Trim(MCFOP.Text)) then //(DM5.Qr_NSNSCFO2.AsString <> Trim(MCFOP.Text)) then  //(DM5.tb_lrslrs_CFO.AsString <> Trim(MCFOP.Text)) then
         begin
           DM5.tb_lrs.Next;
           Continue;
         end;
       end;

   If mlin=0 then
      begin
      if tipo.ItemIndex<2 then
         begin
         if ((mpag+1>=ValInt(PG1.Text)) and (ValInt(PG1.Text)=0))or
            ((mpag+1>=ValInt(PG1.Text)) and (mpag+1<=ValInt(PG2.Text))) then
            begin
            mpag:=mpag+1;
            form_impres_lrs.RDprint1.ImpF(01,01,'LIVRO REGISTRO DE SAIDAS No. '+LN.Text,mneg);
            form_impres_lrs.RDprint1.ImpF(02,01,Insere2('+','-',157)+'+',m20ccp);
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.Impf(03,01,'| Empresa.................: '+Insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+'CNPJ.....: '
            +FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value)
            +Insere('|',' ',41),m20ccp);
            form_impres_lrs.RDprint1.Impf(04,01,'| Inscricao Estadual......: '+Insere(DM1.Tb_EmpINSCRICAO.Value,' ',20)
            +Insere('|',' ',110),m20ccp);
            form_impres_lrs.RDprint1.Impf(05,01,'| Folha...................: '
            +Insere2(FormatFloat('0000',mpag),' ',60)+'Periodo..: '
            +Insere2(Trim(MDT1.Text)+' a '+Trim(MDT2.Text),' ',25)
            +Insere('|',' ',34),m20ccp);
            if CB_PISCOF.Checked then
               begin
               form_impres_lrs.RDprint1.impf(06,01,'+-------------------------+--+--------------+-----+------+----------------------------------------------------------------------+--------------+-------------+',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(07,01,'|   Documentos Fiscais    |  |              | Co- | Co-  |                  V a l o r e s      F i s c a i s                    |              |             |',m20ccp);
               form_impres_lrs.RDprint1.impf(08,01,'+-----+-----+---------+---|  |    Valor     | di- | digo |----+-----------------------------------+-----------------------------|--------------|-------------|',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(09,01,'| Es- |Serie|         | D |UF|              | go  | Con- |ICMS|  Operacoes com debito do Imposto  | Oper. sem Debito do Imposto |    Base      | Observacoes |',m20ccp);
               form_impres_lrs.RDprint1.Impf(10,01,'| pe- |Sub- |Numero(s)| i |  |  Contabil    | fis-| ta-  |RET.|--------------+------+-------------+--------------+--------------+   Calculo    |             |',m20ccp);
               form_impres_lrs.RDprint1.Impf(11,01,'| cie |Serie|         | a |  |              | cal | bil  |IPI |Base de Calc. | Aliq.|Imp. Debitado|Isenta/N. Trb.|     Outras   |  Pis/Cofins  |             |',m20ccp);
               form_impres_lrs.RDprint1.Impf(12,01,'+-----+-----+---------+---+--+--------------+-----+------+----+--------------+------+-------------+--------------+--------------+--------------+-------------+',m20ccp);
               end
            else
               begin
               form_impres_lrs.RDprint1.impf(06,01,'+-------------------------+--+--------------+-----+------+----------------------------------------------------------------------+----------------------------+',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(07,01,'|   Documentos Fiscais    |  |              | Co- | Co-  |                  V a l o r e s      F i s c a i s                    |                            |',m20ccp);
               form_impres_lrs.RDprint1.impf(08,01,'+-----+-----+---------+---|  |    Valor     | di- | digo |----+-----------------------------------+-----------------------------|----------------------------|',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(09,01,'| Es- |Serie|         | D |UF|              | go  | Con- |ICMS|  Operacoes com debito do Imposto  | Oper. sem Debito do Imposto |    O b s e r v a c o e s   |',m20ccp);
               form_impres_lrs.RDprint1.Impf(10,01,'| pe- |Sub- |Numero(s)| i |  |  Contabil    | fis-| ta-  |RET.|--------------+------+-------------+--------------+--------------+                            |',m20ccp);
               form_impres_lrs.RDprint1.Impf(11,01,'| cie |Serie|         | a |  |              | cal | bil  |IPI |Base de Calc. | Aliq.|Imp. Debitado|Isenta/N. Trb.|     Outras   |                            |',m20ccp);
               form_impres_lrs.RDprint1.Impf(12,01,'+-----+-----+---------+---+--+--------------+-----+------+----+--------------+------+-------------+--------------+--------------+----------------------------+',m20ccp);
               end;
            mlin:=12;
            end
         else
            begin
            mpag:=mpag+1;
            mlin:=12;
            end;
         end;
      end;
   mlin:=mlin+1;
   if tipo.ItemIndex<2 then
      if (mpag>=ValInt(PG1.Text)) and (ValInt(PG1.Text)=0) or
         (mpag>=ValInt(PG1.Text)) and (mpag<=ValInt(PG2.Text)) then
         begin
         if RG_MODELO.ItemIndex=1 then
            begin
            if mnumant<>DM5.tb_lrslrs_NUMERO.Value then
               begin
               mnumant  :=DM5.tb_lrslrs_NUMERO.Value;
               mesp     :=DM5.tb_lrslrs_ESP.Value;
               mserie   :=DM5.tb_lrslrs_SERIE.Value;
               mnumero  :=DM5.tb_lrslrs_NUMERO.Value;
               mdia_at  :=DM5.tb_lrslrs_DIA.Value;
               muf      :=DM5.tb_lrslrs_UF.Value;
               mvlr_cont:=Formatfloat(mcasas, DM5.tb_lrslrs_VLRCONTABIL.Value);
               end
            else
               begin
               mesp      :='';
               mserie    :='';
               mnumero   :=Insere2(' ',' ',6);
               mdia_at   :=Insere2(' ',' ',2);
               muf       :='';
               mvlr_cont :='';
               mvlr_cont1:='';
               end;
            end
         else
            begin
            mnumant  :=DM5.tb_lrslrs_NUMERO.Value;
            mesp     :=DM5.tb_lrslrs_ESP.Value;
            mserie   :=DM5.tb_lrslrs_SERIE.Value;
            mnumero  :=DM5.tb_lrslrs_NUMERO.Value;
            mdia_at  :=DM5.tb_lrslrs_DIA.Value;
            muf      :=DM5.tb_lrslrs_UF.Value;
            mvlr_cont:=Formatfloat(mcasas, DM5.tb_lrslrs_VLRCONTABIL.Value);
            end;

         if (RG_MODELO.ItemIndex=0)or(RG_MODELO.ItemIndex=1) then
            begin
               form_impres_lrs.RDprint1.Impf(mlin,01,'| ' +Insere2(mesp,' ',04)
                  +'|'  +Insere2(mserie,' ',05)
                  +'| ' +mnumero
                  +'  |'  +mdia_at+' '
                  +'|'  +Insere2(muf,' ',02)
                  +'|'  +Insere(mvlr_cont,' ',13)
                  +' |'+Insere2(DM5.tb_lrslrs_CFO.Value,' ',05)
                  +'|'+Insere2(' ',' ',06)
                  +'|' +Insere2(DM5.tb_lrslrs_ICMIPI.Value,' ',04)
                  +'|'  +Insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_BASEN.Value   ),' ',13)
                  +' | ' +Insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_ALIQ.Value   ),' ',05)
                  +'|'  +Insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_ICMSN.Value ),' ',12)
                  +' |' +Insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_ISENTAS.Value),' ',13)
                  +' |'+insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_OUTRAS.Value ),' ',13)
                  +' |'
                  +iif(CB_PISCOF.Checked,Insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_PIS_COF.Value ),' ',13)
                     +' |' +Insere2(DM5.tb_lrslrs_OBSERV.Value,' ',13),
                     insere2(DM5.tb_lrslrs_OBSERV.Value,' ',28))
                  +'|',m20ccp);
            end else
         if (RG_MODELO.ItemIndex=2) then
            begin

               temp.Close;
               temp.sql.clear;
               temp.sql.add('select nscodcli from cadns where ');
               temp.sql.add('     nscodemp = '+inttostr(codemp));
               temp.sql.add(' and nsnumero = '+DM5.tb_lrslrs_NUMERO.Value);
               temp.open;

               temp1.Close;
               temp1.sql.clear;
               temp1.sql.add('select cicmsnor,cicmstp,cicmsr from cadcli where ');
               temp1.sql.add('     ccodemp = '+inttostr(codemp));
               temp1.sql.add(' and ccodcli = '+temp.fieldbyname('nscodcli').asstring);
               temp1.Open;

               if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
                  (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
                  (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
                   mvlr_cont1:=Formatfloat(mcasas, DM5.tb_lrslrs_VLRCONTABIL.Value)
                   else mvlr_cont1:=Formatfloat(mcasas, DM5.tb_lrslrs_ISENTAS.Value);

               form_impres_lrs.RDprint1.Impf(mlin,01,'| ' +Insere2(mesp,' ',04)
                  +'|'  +Insere2(mserie,' ',05)
                  +'| ' +mnumero
                  +'  |'  +mdia_at+' '
                  +'|'  +Insere2(muf,' ',02)
                  +'|'  +Insere(mvlr_cont,' ',13)
                  +' |'+Insere2(DM5.tb_lrslrs_CFO.Value,' ',05)
                  +'|'+Insere2(' ',' ',06)
                  +'|' +Insere2(DM5.tb_lrslrs_ICMIPI.Value,' ',04)
                  +'|'  +Insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_BASEN.Value   ),' ',13)
                  +' | ' +Insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_ALIQ.Value   ),' ',05)
                  +'|'  +Insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_ICMSN.Value ),' ',12)
                  +' |' +Insere(mvlr_cont1,' ',13)
                  +' |'+insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_OUTRAS.Value ),' ',13)
                  +' |'
                  +iif(CB_PISCOF.Checked,Insere(FormatFloat('#,##0.00',DM5.tb_lrslrs_PIS_COF.Value ),' ',13)
                     +' |' +Insere2(DM5.tb_lrslrs_OBSERV.Value,' ',13),
                     insere2(DM5.tb_lrslrs_OBSERV.Value,' ',28))
                  +'|',m20ccp);
            end;
          end;


   If DM5.tb_lrslrs_TIPO.Value=1 then
      begin
      mtot011:=mtot011+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtot012:=mtot012+DM5.tb_lrslrs_BASEN.Value;
      mtot013:=mtot013+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtot014:=mtot014+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtot014:=mtot014+DM5.tb_lrslrs_ISENTAS.Value;

//      mtot014:=mtot014+DM5.tb_lrslrs_ISENTAS.Value;

      mtot015:=mtot015+DM5.tb_lrslrs_OUTRAS.Value;
      mtot016:=mtot016+DM5.tb_lrslrs_PIS_COF.Value;

      mtotg011:=mtotg011+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtotg012:=mtotg012+DM5.tb_lrslrs_BASEN.Value;
      mtotg013:=mtotg013+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtotg014:=mtotg014+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtotg014:=mtotg014+DM5.tb_lrslrs_ISENTAS.Value;

//      mtotg014:=mtotg014+DM5.tb_lrslrs_ISENTAS.Value;
      mtotg015:=mtotg015+DM5.tb_lrslrs_OUTRAS.Value;
      mtotg016:=mtotg016+DM5.tb_lrslrs_PIS_COF.Value;
      end
   else if DM5.tb_lrslrs_TIPO.Value=2 then
      begin
      mtot021:=mtot021+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtot022:=mtot022+DM5.tb_lrslrs_BASEN.Value;
      mtot023:=mtot023+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtot024:=mtot024+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtot024:=mtot024+DM5.tb_lrslrs_ISENTAS.Value;

//      mtot024:=mtot024+DM5.tb_lrslrs_ISENTAS.Value;
      mtot025:=mtot025+DM5.tb_lrslrs_OUTRAS.Value;
      mtot026:=mtot026+DM5.tb_lrslrs_PIS_COF.Value;

      mtotg021:=mtotg021+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtotg022:=mtotg022+DM5.tb_lrslrs_BASEN.Value;
      mtotg023:=mtotg023+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtotg024:=mtotg024+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtotg024:=mtotg024+DM5.tb_lrslrs_ISENTAS.Value;

//      mtotg024:=mtotg024+DM5.tb_lrslrs_ISENTAS.Value;
      mtotg025:=mtotg025+DM5.tb_lrslrs_OUTRAS.Value;
      mtotg026:=mtotg026+DM5.tb_lrslrs_PIS_COF.Value;
      end
   else if DM5.tb_lrslrs_TIPO.Value=3 then
      begin
      mtot031:=mtot031+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtot032:=mtot032+DM5.tb_lrslrs_BASEN.Value;
      mtot033:=mtot033+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtot034:=mtot034+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtot034:=mtot034+DM5.tb_lrslrs_ISENTAS.Value;

//      mtot034:=mtot034+DM5.tb_lrslrs_ISENTAS.Value;
      mtot035:=mtot035+DM5.tb_lrslrs_OUTRAS.Value;
      mtot036:=mtot036+DM5.tb_lrslrs_PIS_COF.Value;

      mtotg031:=mtotg031+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtotg032:=mtotg032+DM5.tb_lrslrs_BASEN.Value;
      mtotg033:=mtotg033+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtotg034:=mtotg034+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtotg034:=mtotg034+DM5.tb_lrslrs_ISENTAS.Value;

//      mtotg034:=mtotg034+DM5.tb_lrslrs_ISENTAS.Value;
      mtotg035:=mtotg035+DM5.tb_lrslrs_OUTRAS.Value;
      mtotg036:=mtotg036+DM5.tb_lrslrs_PIS_COF.Value;
      end
   else if DM5.tb_lrslrs_TIPO.Value=4 then
      begin
      mtot041:=mtot041+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtot042:=mtot042+DM5.tb_lrslrs_BASEN.Value;
      mtot043:=mtot043+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtot044:=mtot044+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtot044:=mtot044+DM5.tb_lrslrs_ISENTAS.Value;

//      mtot044:=mtot044+DM5.tb_lrslrs_ISENTAS.Value;
      mtot045:=mtot045+DM5.tb_lrslrs_OUTRAS.Value;
      mtot046:=mtot046+DM5.tb_lrslrs_PIS_COF.Value;

      mtotg041:=mtotg041+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtotg042:=mtotg042+DM5.tb_lrslrs_BASEN.Value;
      mtotg043:=mtotg043+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtotg044:=mtotg044+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtotg044:=mtotg044+DM5.tb_lrslrs_ISENTAS.Value;

//      mtotg044:=mtotg044+DM5.tb_lrslrs_ISENTAS.Value;
      mtotg045:=mtotg045+DM5.tb_lrslrs_OUTRAS.Value;
      mtotg046:=mtotg046+DM5.tb_lrslrs_PIS_COF.Value;
      end
   else if DM5.tb_lrslrs_TIPO.Value=5 then
      begin
      mtot051:=mtot051+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtot052:=mtot052+DM5.tb_lrslrs_BASEN.Value;
      mtot053:=mtot053+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtot054:=mtot054+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtot054:=mtot054+DM5.tb_lrslrs_ISENTAS.Value;

//      mtot054:=mtot054+DM5.tb_lrslrs_ISENTAS.Value;
      mtot055:=mtot055+DM5.tb_lrslrs_OUTRAS.Value;
      mtot056:=mtot056+DM5.tb_lrslrs_PIS_COF.Value;

      mtotg051:=mtotg051+DM5.tb_lrslrs_VLRCONTABIL.Value;
      mtotg052:=mtotg052+DM5.tb_lrslrs_BASEN.Value;
      mtotg053:=mtotg053+DM5.tb_lrslrs_ICMSN.Value;
      if (RG_MODELO.ItemIndex=2) then
      begin
      if (temp1.fieldbyname('cicmsnor').AsInteger = 1) and
         (temp1.fieldbyname('cicmstp').AsInteger  = 0) and
         (temp1.fieldbyname('cicmsr').AsInteger   = 0) then
          mtotg054:=mtotg054+DM5.tb_lrslrs_VLRCONTABIL.Value;
      end else mtotg054:=mtotg054+DM5.tb_lrslrs_ISENTAS.Value;

//      mtotg054:=mtotg054+DM5.tb_lrslrs_ISENTAS.Value;
      mtotg055:=mtotg055+DM5.tb_lrslrs_OUTRAS.Value;
      mtotg056:=mtotg056+DM5.tb_lrslrs_PIS_COF.Value;
      end
   else
      begin
      FMensagem('Erro no Arquivo 410!. Entrar em contato com o suporte',0,['0'],0)
      end;
//   mlin:=mlin+1;
   DM5.tb_lrs.Next; //
/// somente quando for filtrado por cfop

   if (trim(MCFOP.Text)<>'')  then

   while not DM5.tb_lrs.Eof do
      begin
      if (DM5.tb_lrslrs_CFO.AsString <> Trim(MCFOP.Text)) then //(DM5.Qr_NSNSCFO2.AsString <> Trim(MCFOP.Text)) then  //(DM5.tb_lrslrs_CFO.AsString <> Trim(MCFOP.Text)) then
         begin
         DM5.tb_lrs.Next;
         Continue;
         end
       else
         break;
       end;


/// termino filtrado por cfop



   If ( (RG_MODELO.ItemIndex=0)or(RG_MODELO.ItemIndex=2) ) and (DM5.tb_lrslrs_Dia.Value<>mdia) then
      begin
      If mlin>54 then
         begin
         if tipo.ItemIndex<2 then
            begin
            if (mpag>=ValInt(PG1.Text)) and (ValInt(PG2.Text)=0) or
               (mpag>=ValInt(PG1.Text)) and (mpag<=ValInt(PG2.Text)) then
               begin
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,'|Subtotal ->ICMS          |  |'
                      +insere(formatFloat('##,##0.00',mtotg011+mtotg021+mtotg031+mtotg041),' ',13)+' |     |      |    |'
                      +insere(Formatfloat('#,##0.00',mtotg012+mtotg022+mtotg032+mtotg042),' ',13)+' |      |'
                      +insere(FormatFloat('#,##0.00',mtotg013+mtotg023+mtotg033+mtotg043),' ',12)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg014+mtotg024+mtotg034+mtotg044),' ',13)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg015+mtotg025+mtotg035+mtotg045),' ',13)+' |'
                      +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg016+mtotg026+mtotg036+mtotg046),' ',13)+' |',
                                             insere2(' ',' ',15))
                      +'             |',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,'|Subtotal ->ICMS Retido   |  |'
                      +insere(formatFloat('##,##0.00',mtotg051),' ',13)+' |     |      |    |'
                      +insere(Formatfloat('#,##0.00',mtotg052),' ',13)+' |      |'
                      +insere(FormatFloat('#,##0.00',mtotg053),' ',12)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg054),' ',13)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg055),' ',13)+' |'
                      +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg056),' ',13)+' |',
                                             insere2(' ',' ',15))
                      +'             |',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,Insere2('Continua','-',157)+'+',m20ccp);
               form_impres_lrs.RDprint1.NovaPagina;
               mlin:=0;
               Continue;
               end;
            end;
         mlin:=0;
         end;
      mdia :=DM5.tb_lrslrs_Dia.Value;
      mlin:=mlin+1;
      if tipo.ItemIndex<2 then
         begin
         if (mpag>=ValInt(PG1.Text)) and  (ValInt(PG1.Text)=0) or
            (mpag>=ValInt(PG1.Text)) and (mpag<=ValInt(PG2.Text)) then
            begin
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.Impf(mlin,01,'|Total do dia:            |  |'
                      +insere(formatFloat('##,##0.00',mtot011+mtot021+mtot031+mtot041),' ',13)+' |     |      |    |'
                      +insere(Formatfloat('#,##0.00',mtot012+mtot022+mtot032+mtot042),' ',13)+' |      |'
                      +insere(FormatFloat('#,##0.00',mtot013+mtot023+mtot033+mtot043),' ',12)+' |'
                      +insere(FormatFloat('#,##0.00',mtot014+mtot024+mtot034+mtot044),' ',13)+' |'
                      +insere(FormatFloat('#,##0.00',mtot015+mtot025+mtot035+mtot045),' ',13)+' |'
                      +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg016+mtot026+mtot036+mtot046),' ',13)+' |',
                                             insere2(' ',' ',15))
                      +'             |',m20ccp);
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.Impf(mlin,01,'|Total do Retido dia:     |  |'
                      +insere(formatFloat('##,##0.00',mtot051),' ',13)+' |     |      |    |'
                      +insere(Formatfloat('#,##0.00',mtot052),' ',13)+' |      |'
                      +insere(FormatFloat('#,##0.00',mtot053),' ',12)+' |'
                      +insere(FormatFloat('#,##0.00',mtot054),' ',13)+' |'
                      +insere(FormatFloat('#,##0.00',mtot055),' ',13)+' |'
                      +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtot056),' ',13)+' |',
                                             insere2(' ',' ',15))
                      +'             |',m20ccp);
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.Impf(mlin,01,'|     |     |             |  |              |     |      |    |              |      |             |              |              |              '+iif(CB_PISCOF.Checked,'|             |',''),m20ccp);
            mlin:=mlin+1;
            end;
         end;
      mtot011:=0; mtot012:=0; mtot013:=0; mtot014:=0; mtot015:=0; mtot016:=0;
      mtot021:=0; mtot022:=0; mtot023:=0; mtot024:=0; mtot025:=0; mtot026:=0;
      mtot031:=0; mtot032:=0; mtot033:=0; mtot034:=0; mtot035:=0; mtot036:=0;
      mtot041:=0; mtot042:=0; mtot043:=0; mtot044:=0; mtot045:=0; mtot046:=0;
      mtot051:=0; mtot052:=0; mtot053:=0; mtot054:=0; mtot055:=0; mtot056:=0;
      end;
   If mlin>53 then
      begin
      if (RG_MODELO.ItemIndex=0)or(RG_MODELO.ItemIndex=2) then
         begin
         if tipo.ItemIndex<2 then
            if (mpag>=ValInt(PG1.Text)) and  (ValInt(PG1.Text)=0) or
               (mpag>=ValInt(PG1.Text)) and (mpag<=ValInt(PG2.Text)) then
               begin
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,'|Subtotal ->ICMS          |  |'
                      +insere(formatFloat('##,##0.00',mtotg011+mtotg021+mtotg031+mtotg041),' ',13)+' |     |      |    |'
                      +insere(Formatfloat('#,##0.00',mtotg012+mtotg022+mtotg032+mtotg042),' ',13)+' |      |'
                      +insere(FormatFloat('#,##0.00',mtotg013+mtotg023+mtotg033+mtotg043),' ',12)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg014+mtotg024+mtotg034+mtotg044),' ',13)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg015+mtotg025+mtotg035+mtotg045),' ',13)+' |'
                      +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg016+mtotg026+mtotg036+mtotg046),' ',13)+' |',
                                             insere2(' ',' ',15))
                      +'             |',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,'|Subtotal ->ICMS Retido   |  |'
                      +insere(formatFloat('##,##0.00',mtotg051),' ',13)+' |     |      |    |'
                      +insere(Formatfloat('#,##0.00',mtotg052),' ',13)+' |      |'
                      +insere(FormatFloat('#,##0.00',mtotg053),' ',12)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg054),' ',13)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg055),' ',13)+' |'
                      +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg056),' ',13)+' |',
                                             insere2(' ',' ',15))
                      +'             |',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,Insere2('Continua','-',157)+'+',m20ccp);
               form_impres_lrs.RDprint1.NovaPagina;
               end;
         mlin:=0;
         end
      else
         begin
         if tipo.ItemIndex<2 then
            begin
            if (mpag>=ValInt(PG1.Text)) and (ValInt(PG2.Text)=0) or
               (mpag>=ValInt(PG1.Text)) and (mpag<=ValInt(PG2.Text)) then
               begin
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,'|SUB_TOTAL.........>>>>   |  |'
                         +insere(formatFloat('##,##0.00',mtotg011+mtotg021+mtotg031+mtotg041+mtotg051),' ',13)+' |     |      |ICMS|'
                         +insere(Formatfloat('#,##0.00' ,mtotg012),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00' ,mtotg013),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg014),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg015),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg016),' ',13)+' |',
                                                    insere2(' ',' ',15))
                         +'             |',m20ccp);

               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,'|                         |  |'
                         +insere(' ',' ',13)+' |     |      |IPI |'
                         +insere(Formatfloat('#,##0.00' ,mtotg022),' ',13)+' |      |'
                          +insere(FormatFloat('#,##0.00' ,mtotg023),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg024),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg025),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg026),' ',13)+' |',
                                               insere2(' ',' ',15))
                         +'             |',m20ccp);

               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,'|                         |  |'
                         +insere(' ',' ',13)+' |     |      |ICMS|'
                         +insere(Formatfloat('#,##0.00' ,mtotg032),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00' ,mtotg033),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg034),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg035),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg036),' ',13)+' |',
                                                insere2(' ',' ',15))
                         +'             |',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,'|                         |  |'
                         +insere(' ',' ',13)+' |     |      |IPI |'
                         +insere(Formatfloat('#,##0.00' ,mtotg042),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00' ,mtotg043),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg044),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg045),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg046),' ',13)+' |',
                                             insere2(' ',' ',15))
                          +'             |',m20ccp);

               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,'|                         |  |'
                         +insere(' ',' ',13)+' |     |      |ST  |'
                         +insere(Formatfloat('#,##0.00' ,mtotg052),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00' ,mtotg053),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg054),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg055),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg056),' ',13)+' |',
                                             insere2(' ',' ',15))
                         +'             |',m20ccp);
               mlin:=mlin+1;
               form_impres_lrs.RDprint1.Impf(mlin,01,Insere2('Continua','-',157)+'+',m20ccp);
               form_impres_lrs.RDprint1.NovaPagina;
               mlin:=0;
               mtot011:=0; mtot012:=0; mtot013:=0; mtot014:=0; mtot015:=0; mtot016:=0;
               mtot021:=0; mtot022:=0; mtot023:=0; mtot024:=0; mtot025:=0; mtot026:=0;
               mtot031:=0; mtot032:=0; mtot033:=0; mtot034:=0; mtot035:=0; mtot036:=0;
               mtot041:=0; mtot042:=0; mtot043:=0; mtot044:=0; mtot045:=0; mtot046:=0;
               mtot051:=0; mtot052:=0; mtot053:=0; mtot054:=0; mtot055:=0; mtot056:=0;
               end;
             end;
         end;
      end;

//   DM5.tb_lrs.Next;
   end;
//Total do ultimo dia
if (RG_MODELO.ItemIndex=0)or(RG_MODELO.ItemIndex=2) then
   begin
   if tipo.ItemIndex<2 then
      begin
      if (mpag>=ValInt(PG1.Text)) and (ValInt(PG1.Text)=0) or
         (mpag>=ValInt(PG1.Text)) and (mpag<=ValInt(PG2.Text)) then
         begin
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.Impf(mlin,01,'|Total do dia:            |  |'
                         +insere(formatFloat('##,##0.00',mtot011+mtot021+mtot031+mtot041),' ',13)+' |     |      |    |'
                         +insere(Formatfloat('#,##0.00',mtot012+mtot022+mtot032+mtot042),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00',mtot013+mtot023+mtot033+mtot043),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00',mtot014+mtot024+mtot034+mtot044),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00',mtot015+mtot025+mtot035+mtot045),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtot016+mtot026+mtot036+mtot046),' ',13)+' |',
                                              insere2(' ',' ',15))
                         +'             |',m20ccp);
          mlin:=mlin+1;
          form_impres_lrs.RDprint1.Impf(mlin,01,'|Total do Retido dia:     |  |'
                         +insere(formatFloat('##,##0.00',mtot051),' ',13)+' |     |      |    |'
                         +insere(Formatfloat('#,##0.00',mtot052),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00',mtot053),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00',mtot054),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00',mtot055),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtot056),' ',13)+' |',
                                                insere2(' ',' ',15))
                         +'             |',m20ccp);
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.Impf(mlin,01,'|     |     |             |  |              |     |      |    |              |      |             |              |              |              |             |',m20ccp);
      //Total Final

         mlin:=mlin+1;
         form_impres_lrs.RDprint1.Impf(mlin,01,'|Total Geral.:            |  |'
                      +insere(formatFloat('##,##0.00',mtotg011+mtotg021+mtotg031+mtotg041),' ',13)+' |     |      |    |'
                      +insere(Formatfloat('#,##0.00',mtotg012+mtotg022+mtotg032+mtotg042),' ',13)+' |      |'
                      +insere(FormatFloat('#,##0.00',mtotg013+mtotg023+mtotg033+mtotg043),' ',12)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg014+mtotg024+mtotg034+mtotg044),' ',13)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg015+mtotg025+mtotg035+mtotg045),' ',13)+' |'
                      +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg016+mtotg026+mtotg036+mtotg046),' ',13)+' |',
                                             insere2(' ',' ',15))
                      +'             |',m20ccp);
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.Impf(mlin,01,'|Total Retido Geral.:     |  |'
                      +insere(formatFloat('##,##0.00',mtotg051),' ',13)+' |     |      |    |'
                      +insere(Formatfloat('#,##0.00',mtotg052),' ',13)+' |      |'
                      +insere(FormatFloat('#,##0.00',mtotg053),' ',12)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg054),' ',13)+' |'
                      +insere(FormatFloat('#,##0.00',mtotg055),' ',13)+' |'
                      +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg016+mtotg026+mtotg036+mtotg046),' ',13)+' |',
                                             insere2(' ',' ',15))
                      +'             |',m20ccp);
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.Impf(mlin,01,'|     |     |             |  |              |     |      |    |              |      |             |              |              |              |             |',m20ccp);
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.Impf(mlin,01,'Fim---+-----+---------+---+--+--------------+-----+------+----+--------------+------+-------------+--------------+--------------+--------------+-------------+',m20ccp);
         form_impres_lrs.RDprint1.NovaPagina;
         end
      end
   end
else
   begin
   if tipo.ItemIndex<2 then
      begin
      if (mpag>=ValInt(PG1.Text)) and (ValInt(PG1.Text)=0) or
         (mpag>=ValInt(PG1.Text)) and (mpag<=ValInt(PG2.Text)) then
         begin
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.Impf(mlin,01,'|TOTAL GERAL.......>>>>   |  |'
                         +insere(formatFloat('##,##0.00',mtotg011+mtotg021+mtotg031+mtotg041+mtotg051),' ',13)+' |     |      |ICMS|'
                         +insere(Formatfloat('#,##0.00' ,mtotg012),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00' ,mtotg013),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg014),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg015),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg016),' ',13)+' |',
                                             insere2(' ',' ',15))
                         +'             |',m20ccp);
          mlin:=mlin+1;
          form_impres_lrs.RDprint1.Impf(mlin,01,'|                         |  |'
                         +insere(' ',' ',13)+' |     |      |IPI |'
                         +insere(Formatfloat('#,##0.00' ,mtotg022),' ',13)+' |      |'
                          +insere(FormatFloat('#,##0.00',mtotg023),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg024),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg025),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg026),' ',13)+' |',
                                             insere2(' ',' ',15))
                         +'             |',m20ccp);
          mlin:=mlin+1;
          form_impres_lrs.RDprint1.Impf(mlin,01,'|                         |  |'
                         +insere(' ',' ',13)+' |     |      |ICMS|'
                         +insere(Formatfloat('#,##0.00' ,mtotg032),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00' ,mtotg033),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg034),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg035),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg036),' ',13)+' |',
                                                insere2(' ',' ',15))
                         +'             |',m20ccp);
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.Impf(mlin,01,'|                         |  |'
                         +insere(' ',' ',13)+' |     |      |IPI |'
                         +insere(Formatfloat('#,##0.00' ,mtotg042),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00' ,mtotg043),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg044),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg045),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg046),' ',13)+' |',
                                                insere2(' ',' ',15))
                         +'             |',m20ccp);
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.Impf(mlin,01,'|                         |  |'
                         +insere(' ',' ',13)+' |     |      |ST  |'
                         +insere(Formatfloat('#,##0.00' ,mtotg052),' ',13)+' |      |'
                         +insere(FormatFloat('#,##0.00' ,mtotg053),' ',12)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg054),' ',13)+' |'
                         +insere(FormatFloat('#,##0.00' ,mtotg055),' ',13)+' |'
                         +iif(CB_PISCOF.Checked,insere(FormatFloat('#,##0.00',mtotg056),' ',13)+' |',
                                                insere2(' ',' ',15))
                          +'             |',m20ccp);
          mlin:=mlin+1;
          form_impres_lrs.RDprint1.Impf(mlin,01,Insere2('FIM.....','-',157)+'+',m20ccp);
          form_impres_lrs.RDprint1.NovaPagina;
          mlin:=0;
          mtotg011:=0; mtotg012:=0; mtotg013:=0; mtotg014:=0; mtotg015:=0; mtotg016:=0;
          mtotg021:=0; mtotg022:=0; mtotg023:=0; mtotg024:=0; mtotg025:=0; mtotg026:=0;
          mtotg031:=0; mtotg032:=0; mtotg033:=0; mtotg034:=0; mtotg035:=0; mtotg036:=0;
          mtotg041:=0; mtotg042:=0; mtotg043:=0; mtotg044:=0; mtotg045:=0; mtotg046:=0;
          mtotg051:=0; mtotg052:=0; mtotg053:=0; mtotg054:=0; mtotg055:=0; mtotg056:=0;
          end;
       end;
   end;
mtot011:=0; mtot012:=0;
mtot013:=0; mtot014:=0;
mtot015:=0; mtot016:=0;
mtot017:=0; mtot018:=0;

if (tipo.ItemIndex=0) or (tipo.ItemIndex=2) then
   begin
   mlin:=0;
//  Sumario por CFO
   mtot011:=0; mtot012:=0; mtot013:=0; mtot014:=0; mtot015:=0; mtot016:=0;
   if (RG_MODELO.ItemIndex=0)or(RG_MODELO.ItemIndex=2) then
      begin
      DM5.Tb_RCFOp.First;
      while not DM5.Tb_RCFOP.Eof do
         begin
         if mlin=0 then
            begin
            mpag:=mpag+1;
            if (mpag>=ValInt(PG1.Text)) and (ValInt(PG1.Text)=0) or
               (mpag>=ValInt(PG1.Text)) and (mpag<=ValInt(PG2.Text)) then
                begin
                form_impres_lrs.RDprint1.Impf(01,01,'RESUMO DAS SAIDAS. PERIODO: '+MDT1.Text+' A '+MDT2.Text,mneg);
                form_impres_lrs.RDprint1.ImpF(01,100,'Pagina: '+Formatfloat('00000',mpag),m20ccp);
                if CB_PISCOF.Checked then
                   begin
                   form_impres_lrs.RDprint1.Impf(02,01,'+------+-----+----------------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+',m20ccp);
                   form_impres_lrs.RDprint1.Impf(03,01,'|Codigo|Aliq.|                      |   Valores    |    Base de   |    Imposto   | Base Calculo |     ICMS     |   Isentas /  |              |     Base     |',m20ccp);
                   form_impres_lrs.RDprint1.Impf(04,01,'|Fiscal|     | Natureza da Operacao |  Contabeis   |    Calculo   |    Debitado  |    Retido    |    Retido    |   Nao Trib.  |    Outras    |  PIS/Cofins  |',m20ccp);
                   form_impres_lrs.RDprint1.Impf(05,01,'+------+-----+----------------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+',m20ccp);
                   end
                else
                   begin
                   form_impres_lrs.RDprint1.Impf(02,01,'+------+-----+----------------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+',m20ccp);
                   form_impres_lrs.RDprint1.Impf(03,01,'|Codigo|Aliq.|                      |   Valores    |    Base de   |    Imposto   | Base Calculo |     ICMS     |   Isentas /  |              |',m20ccp);
                   form_impres_lrs.RDprint1.Impf(04,01,'|Fiscal|     | Natureza da Operacao |  Contabeis   |    Calculo   |    Debitado  |    Retido    |    Retido    |   Nao Trib.  |    Outras    |',m20ccp);
                   form_impres_lrs.RDprint1.Impf(05,01,'+------+-----+----------------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+',m20ccp);
                   end;
                mlin:=6
                end
             else
                mlin:=6;
             end;
       if (RG_MODELO.ItemIndex=0) then
          begin
           mtot011 := mtot011 +DM5.Tb_RCFOPRCFOP_VlrContabil.Value;
           mtot012 := mtot012 +DM5.Tb_RCFOPRCFOP_Base.Value       ;
           mtot013 := mtot013 +DM5.Tb_RCFOPRCFOP_Icms.Value       ;
           mtot014 := mtot014 +DM5.Tb_RCFOPRCFOP_Baser.Value      ;
           mtot015 := mtot015 +DM5.Tb_RCFOPRCFOP_Icmsr.Value      ;
           mtot016 := mtot016 +DM5.Tb_RCFOPRCFOP_Isentas.Value    ;
           mtot017 := mtot017 +DM5.Tb_RCFOPRCFOP_Outras.Value     ;
           mtot018 := mtot018 +DM5.Tb_RCFOPRCFOP_PIS.Value        ;
           form_impres_lrs.RDprint1.Impf(mlin,01,'| '+Insere2(DM5.Tb_RCFOPRCFOP_CFO.Value,' ',4)+' | '
           +FormatFloat('00',DM5.Tb_RCFOPRCFOP_Aliq.Value)+'% | '+Insere2(DM5.Tb_RCFOPRCFOP_CFONOME.Value,' ',21)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_VlrContabil.Value),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Base.Value       ),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Icms.Value       ),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Baser.Value      ),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Icmsr.Value      ),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Isentas.Value    ),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Outras.Value     ),' ',14)+'|'
           +iif(CB_PISCOF.Checked,Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_PIS.Value        ),' ',14)+'|','')
           ,m20ccp);
       end else
       begin
           mtot011 := mtot011 +DM5.Tb_RCFOPRCFOP_VlrContabil.Value;
           mtot012 := mtot012 +DM5.Tb_RCFOPRCFOP_Base.Value       ;
           mtot013 := mtot013 +DM5.Tb_RCFOPRCFOP_Icms.Value       ;
           mtot014 := mtot014 +DM5.Tb_RCFOPRCFOP_Baser.Value      ;
           mtot015 := mtot015 +DM5.Tb_RCFOPRCFOP_Icmsr.Value      ;
           mvlr_cont := '';
           if (RG_MODELO.ItemIndex=2) then
           begin
           if DM5.Tb_RCFOPRCFOP_ICMS.Value = 0 then
               mtot016 := mtot016 +DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value;
           end else mtot016 := mtot016 +DM5.Tb_RCFOPRCFOP_Isentas.Value;

//           mtot016 := mtot016 +DM5.Tb_RCFOPRCFOP_Isentas.Value    ;
           mtot017 := mtot017 +DM5.Tb_RCFOPRCFOP_Outras.Value     ;
           mtot018 := mtot018 +DM5.Tb_RCFOPRCFOP_PIS.Value        ;

           if (RG_MODELO.ItemIndex=2) then
           begin
           if DM5.Tb_RCFOPRCFOP_ICMS.Value = 0 then
               mvlr_cont:=Formatfloat(mcasas, DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value)
           end else mvlr_cont:=Formatfloat(mcasas, DM5.Tb_RCFOPRCFOP_Isentas.Value);

           form_impres_lrs.RDprint1.Impf(mlin,01,'| '+Insere2(DM5.Tb_RCFOPRCFOP_CFO.Value,' ',4)+' | '
           +FormatFloat('00',DM5.Tb_RCFOPRCFOP_Aliq.Value)+'% | '+Insere2(DM5.Tb_RCFOPRCFOP_CFONOME.Value,' ',21)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_VlrContabil.Value),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Base.Value       ),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Icms.Value       ),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Baser.Value      ),' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Icmsr.Value      ),' ',14)+'|'
           +Insere(mvlr_cont,' ',14)+'|'
           +Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_Outras.Value     ),' ',14)+'|'
           +iif(CB_PISCOF.Checked,Insere(FormatFloat('#,##0.00',DM5.Tb_RCFOPRCFOP_PIS.Value        ),' ',14)+'|','')
           ,m20ccp);
       end;
         DM5.Tb_RCFOP.Next;
         mlin:=mlin+1;
         if DM5.Tb_RCFOP.Eof then
            begin
            form_impres_lrs.RDprint1.Impf(mlin,01,'| Totais........................... |'
            +Insere(FormatFloat('#,##0.00',mtot011 ),' ',14)+'|'
            +Insere(FormatFloat('#,##0.00',mtot012 ),' ',14)+'|'
            +Insere(FormatFloat('#,##0.00',mtot013 ),' ',14)+'|'
            +Insere(FormatFloat('#,##0.00',mtot014),' ',14)+'|'
            +Insere(FormatFloat('#,##0.00',mtot015),' ',14)+'|'
            +Insere(FormatFloat('#,##0.00',mtot016 ),' ',14)+'|'
            +Insere(FormatFloat('#,##0.00',mtot017 ),' ',14)+'|'
            +iif(CB_PISCOF.Checked,Insere(FormatFloat('#,##0.00',mtot018 ),' ',14)+'|','')
            ,m20ccp);
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.Impf(mlin,01,'Fim...-------+----------------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+'+iif(CB_PISCOF.Checked,'--------------+',''),m20ccp);
            mlin:=0;
            form_impres_lrs.RDprint1.Novapagina;
            end
         else if mlin>59 then
            begin
            form_impres_lrs.RDprint1.Impf(mlin,01,'Continua...--+----------------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+'+iif(CB_PISCOF.Checked,'--------------+',''),m20ccp);
            form_impres_lrs.RDprint1.NovaPagina;
            mlin:=0;
            end;
         end;
      mtot011:=0; mtot012:=0;
      mtot013:=0; mtot014:=0;
      mtot015:=0; mtot016:=0;
      mtot017:=0; mtot018:=0;
      DM5.Tb_RUF.First;
      while not DM5.Tb_RUF.Eof do
         begin
         if mlin=0 then
            begin
            mpag:=mpag+1;
            form_impres_lrs.RDprint1.Impf(01,01,'RESUMO DAS SAIDAS POR ESTADO. LIVRO No. '+LN.Text,mneg);
            form_impres_lrs.RDprint1.ImpF(01,100,'Pagina: '+Formatfloat('00000',mpag),m20ccp);
            if CB_PISCOF.Checked then
               begin
               form_impres_lrs.RDprint1.Impf(02,01,'+------+---------------+---------------+---------------+---------------+'
               +'---------------+---------------+--------------+--------------+',m20ccp);
               form_impres_lrs.RDprint1.Impf(03,01,'|Sigla |    Valores    |    Base de    |    Imposto    |'
               +' Base Calculo  |     ICMS      |   Isentas /   |              |              |',m20ccp);
               form_impres_lrs.RDprint1.Impf(04,01,'|Estado|   Contabeis   |    Calculo    |    Debitado   |'
               +'    Retido     |    Retido     |   Nao Trib.   |    Outras    |   Pis/Cofins |',m20ccp);
               form_impres_lrs.RDprint1.impf(05,01,'+------+---------------+---------------+---------------+---------------+'
               +'---------------+---------------+--------------+--------------+',m20ccp);
               end
            else
               begin
               form_impres_lrs.RDprint1.Impf(02,01,'+------+---------------+---------------+---------------+---------------+'
               +'---------------+---------------+--------------+',m20ccp);
               form_impres_lrs.RDprint1.Impf(03,01,'|Sigla |    Valores    |    Base de    |    Imposto    |'
               +' Base Calculo  |     ICMS      |   Isentas /   |              |              |',m20ccp);
               form_impres_lrs.RDprint1.Impf(04,01,'|Estado|   Contabeis   |    Calculo    |    Debitado   |'
               +'    Retido     |    Retido     |   Nao Trib.   |    Outras    |',m20ccp);
               form_impres_lrs.RDprint1.impf(05,01,'+------+---------------+---------------+---------------+---------------+'
               +'---------------+---------------+--------------+',m20ccp);
               end;
            mlin:=6;
            end;
         mtot011 := mtot011+DM5.Tb_RUFruf_VlrContabil.Value;
         mtot012 := mtot012+DM5.Tb_RUFruf_Base.Value       ;
         mtot013 := mtot013+DM5.Tb_RUFruf_Icms.Value       ;
         mtot014 := mtot014+DM5.Tb_RUFruf_Baser.Value      ;
         mtot015 := mtot015+DM5.Tb_RUFruf_Icmsr.Value      ;
{
         mvlr_cont := '';
         mvlr_cont := copy(mtmp_LRS,11,18);
         if (RG_MODELO.ItemIndex=2) then
         begin
             temp2.close;
             temp2.sql.clear;
             temp2.sql.add('SELECT UF,SUM(VLRCONTABIL)VLRCONTABIL FROM '+copy(mtmp_LRS,11,18));
             temp2.sql.add('WHERE ');
             temp2.sql.add('     ICMSN = 0 ');
             temp2.sql.add(' and UF    = '+''''+DM5.Tb_RUFruf_UF.Value+'''');
             temp2.sql.add('GROUP BY UF ');
             temp2.open;
             mtot016  := mtot016 +TEMP2.FIELDBYNAME('VLRCONTABIL').AsFloat;
             mvlr_cont:=Formatfloat(mcasas, TEMP2.FIELDBYNAME('VLRCONTABIL').AsFloat);
         END ELSE
         BEGIN
             mtot016 := mtot016+DM5.Tb_RUFruf_Isentas.AsFloat;
             mvlr_cont:=Formatfloat(mcasas, DM5.Tb_RUFruf_ISENTAS.AsFloat);
         END;
}
//         mtot016 := mtot016+DM5.Tb_RUFruf_Isentas.Value    ;
         mtot017 := mtot017+DM5.Tb_RUFruf_Outras.Value     ;
         mtot018 := mtot018+DM5.Tb_RUFruf_PIS.Value        ;
         form_impres_lrs.RDprint1.Impf(mlin,01,'|  '+DM5.Tb_RUFruf_UF.Value+'  |'
         +Insere(FormatFloat('#,##0.00',DM5.Tb_RUFruf_VlrContabil.Value),' ',14)+' |'
         +Insere(FormatFloat('#,##0.00',DM5.Tb_RUFruf_Base.Value       ),' ',14)+' |'
         +Insere(FormatFloat('#,##0.00',DM5.Tb_RUFruf_Icms.Value       ),' ',14)+' |'
         +Insere(FormatFloat('#,##0.00',DM5.Tb_RUFruf_Baser.Value      ),' ',14)+' |'
         +Insere(FormatFloat('#,##0.00',DM5.Tb_RUFruf_Icmsr.Value      ),' ',14)+' |'
         +Insere(mvlr_cont,' ',14)+' |'
//         +Insere(FormatFloat('#,##0.00',DM5.Tb_RUFruf_Isentas.Value    ),' ',14)+' |'
         +Insere(FormatFloat('#,##0.00',DM5.Tb_RUFruf_Outras.Value     ),' ',13)+' |'
         +iif(CB_PISCOF.Checked,Insere(FormatFloat('#,##0.00',DM5.Tb_RUFruf_PIS.Value        ),' ',13)+' |','')
         ,m20ccp);

         mlin:=mlin+1;
         DM5.Tb_RUF.Next;
         if DM5.Tb_RUF.Eof then
            begin
            form_impres_lrs.RDprint1.Impf(mlin,01,'|Totais|'
            +Insere(FormatFloat('#,##0.00',mtot011 ),' ',14)+' |'
            +Insere(FormatFloat('#,##0.00',mtot012 ),' ',14)+' |'
            +Insere(FormatFloat('#,##0.00',mtot013 ),' ',14)+' |'
            +Insere(FormatFloat('#,##0.00',mtot014),' ',14)+' |'
            +Insere(FormatFloat('#,##0.00',mtot015),' ',14)+' |'
            +Insere(FormatFloat('#,##0.00',mtot016 ),' ',14)+' |'
            +Insere(FormatFloat('#,##0.00',mtot017 ),' ',13)+' |'
            +iif(CB_PISCOF.Checked,Insere(FormatFloat('#,##0.00',mtot018 ),' ',13)+' |','')
            ,m20ccp);
            mlin:=mlin+1;
            if CB_PISCOF.Checked then
               form_impres_lrs.RDprint1.Impf(mlin,01,'Fim----+---------------+---------------+'
               +'---------------+---------------+---------------+---------------+--------------+--------------+',m20ccp)
            else
               form_impres_lrs.RDprint1.Impf(mlin,01,'Fim----+---------------+---------------+'
               +'---------------+---------------+---------------+---------------+--------------+',m20ccp)
            end
         else
            begin
            if mlin>59 then
               begin
               form_impres_lrs.RDprint1.Impf(mlin,01,'Continua...------------+---------------+---------------+---------------+'
               +'---------------+---------------+--------------+'+IIF(CB_PISCOF.Checked,'--------------+','') ,m20ccp);
               form_impres_lrs.RDprint1.NovaPagina;
               mlin:=0;
               end;
            end;
         end;
      end
   else
      begin
      mlin:=0;
      mtot011:=0;
      mtot012:=0;
      mtot013:=0;
      DM5.Tb_RUF.First;
      while not DM5.Tb_RUF.Eof do
         begin
         if mlin=0 then
            begin
            mpag:=mpag+1;
            form_impres_lrs.RDprint1.ImpF(01,66,'Pagina: '+Formatfloat('00000',mpag),mnormal);
            form_impres_lrs.RDprint1.Impf(02,01,'Demonstrativo p/ UF de Destino da Mercadoria e/ou inicio da Prestacao do Servico',mnormal);
            form_impres_lrs.RDprint1.ImpF(04,11,'UF        Vl Contabil    Base de Calculo            ICMS ST',mnormal);
            form_impres_lrs.RDprint1.ImpF(06,11,'Operacoes Realizadas com Contribuintes',mnormal);
            mlin:=7;
            end;
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.ImpF(mlin,11,insere2(DM5.Tb_RUFruf_UF.Value,' ',2)
                                 +insere2(' ',' ',05)
                                 +insere(FormatFloat(mcasas,DM5.Tb_RUFruf_VLRCONTABIL.Value),' ',14)
                                 +insere2(' ',' ',05)
                                 +insere(FormatFloat(mcasas,DM5.Tb_RUFruf_BASE.Value),' ',14)
                                 +insere2(' ',' ',05)
                                 +insere(FormatFloat(mcasas,DM5.Tb_RUFruf_ICMSR.Value),' ',14),mnormal);


         mtot011:=mtot011+DM5.Tb_RUFruf_VLRCONTABIL.Value;
         mtot012:=mtot012+DM5.Tb_RUFruf_BASE.Value;
         mtot013:=mtot013+DM5.Tb_RUFruf_ICMSR.Value;
         DM5.Tb_RUF.Next;
         if DM5.Tb_RUF.Eof then
            begin
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.Impf(mlin,11,'tt'
                                 +insere2(' ',' ',05)
                                 +insere(FormatFloat(mcasas,mtot011),' ',14)
                                 +insere2(' ',' ',05)
                                 +insere(FormatFloat(mcasas,mtot012),' ',14)
                                 +insere2(' ',' ',05)
                                 +insere(FormatFloat(mcasas,mtot013),' ',14),mnormal);
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
            end
         else if mlin>57 then
            begin
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
            form_impres_lrs.RDprint1.Novapagina;
            mlin:=0;
            end;
         end;
      mlin:=mlin+1;
      if mlin>55 then
         begin
         form_impres_lrs.RDprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
         form_impres_lrs.RDprint1.Novapagina;
         mlin:=0;
         end
      else
         begin
         mlin:=mlin+2;
         form_impres_lrs.RDprint1.Impf(mlin,01,Centra('RESUMO MENSAL DE OPERACOES E PRESTACAO DE SERVICOS POR CFO',' ',80),mnormal);
         mlin:=mlin+2;
         form_impres_lrs.RDprint1.ImpF(mlin,01,'CFO   Aliquota   Vl Contabil Base Calculo      VL ICMS   Vl Isentas    Vl Outras',mnormal);
         end;
      mtot011:=0; mtot021:=0;
      mtot012:=0; mtot022:=0;
      mtot013:=0; mtot023:=0;
      mtot014:=0; mtot024:=0;
      mtot015:=0; mtot025:=0;
      DM5.Tb_RCFOP.First;
      mcfoant:='';
      while not DM5.Tb_RCFOP.Eof do
         begin
         if mlin=0 then
            begin
            mpag:=mpag+1;
            if (mpag>=ValInt(PG1.Text)) and (ValInt(PG1.Text)=0) or
               (mpag>=ValInt(PG1.Text)) and (mpag<=ValInt(PG2.Text)) then
                begin
                mlin:=1;
                form_impres_lrs.RDprint1.Impf(mlin,01,Centra('RESUMO MENSAL DE OPERACOES E PRESTACAO DE SERVICOS POR CFO',' ',80),mnormal);
                mlin:=mlin+2;
                form_impres_lrs.RDprint1.ImpF(mlin,01,'CFO   Aliquota   Vl Contabil Base Calculo      VL ICMS   Vl Isentas    Vl Outras',mnormal);
                end;
            mlin:=3;
            end;
         if mcfoant='' then
            begin
            mlin:=mlin+1;
            mcfoant:=DM5.Tb_RCFOPRCFOP_CFO.Value[1];
            if ValInt(mcfoant)<6 then
               form_impres_lrs.RDprint1.Impf(mlin,01,'5000-SAIDAS E/OU PRESTACOES DE SERVICOS PARA O ESTADO',mnormal)
            else
               form_impres_lrs.RDprint1.Impf(mlin,01,'6000-SAIDAS E/OU PRESTACOES DE SERVICOS PARA OUTRO ESTADO',mnormal);
            mlin:=mlin+1;
            end
         else if mcfoant<>DM5.Tb_RCFOPRCFOP_CFO.Value[1] then
            begin
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.ImpF(mlin,01,insere2('Sub_Total','.',9)
                                 +insere2(' ',' ',6)
                                 +insere(FormatFloat(mcasas, mtot011), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot012), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot013), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot014), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot015), ' ',13),mnormal);
            mtot011:=0;
            mtot012:=0;
            mtot013:=0;
            mtot014:=0;
            mtot015:=0;

            mlin:=mlin+1;
            mcfoant:=DM5.Tb_RCFOPRCFOP_CFO.Value[1];
            if ValInt(mcfoant)<6 then
               form_impres_lrs.RDprint1.Impf(mlin,01,'5000-SAIDAS E/OU PRESTACOES DE SERVICOS PARA O ESTADO',mnormal)
            else
               form_impres_lrs.RDprint1.Impf(mlin,01,'6000-SAIDAS E/OU PRESTACOES DE SERVICOS PARA OUTRO ESTADO',mnormal);
            end;
         mlin:=mlin+1;
         form_impres_lrs.RDprint1.ImpF(mlin,01,insere2(FormatFloat('#,###',DM5.Tb_RCFOPRCFOP_CFO.AsFloat*1000),' ',5)
                                 +insere2(' ',' ',4)
                                 +insere(FormatFloat('#0', DM5.Tb_RCFOPRCFOP_ALIQ.Value),' ',2)
                                 +insere2(' ',' ',4)
                                 +insere(FormatFloat(mcasas, DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value), ' ',13)
                                 +insere(FormatFloat(mcasas, DM5.Tb_RCFOPRCFOP_BASE.Value), ' ',13)
                                 +insere(FormatFloat(mcasas, DM5.Tb_RCFOPRCFOP_ICMS.Value), ' ',13)
                                 +insere(FormatFloat(mcasas, DM5.Tb_RCFOPRCFOP_ISENTAS.Value), ' ',13)
                                 +insere(FormatFloat(mcasas, DM5.Tb_RCFOPRCFOP_OUTRAS.Value), ' ',13),mnormal);
         mtot011:=mtot011+DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value;
         mtot012:=mtot012+DM5.Tb_RCFOPRCFOP_BASE.Value;
         mtot013:=mtot013+DM5.Tb_RCFOPRCFOP_ICMS.Value;
         mtot014:=mtot014+DM5.Tb_RCFOPRCFOP_ISENTAS.Value;
         mtot015:=mtot015+DM5.Tb_RCFOPRCFOP_OUTRAS.Value;
         mtot021:=mtot021+DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value;
         mtot022:=mtot022+DM5.Tb_RCFOPRCFOP_BASE.Value;
         mtot023:=mtot023+DM5.Tb_RCFOPRCFOP_ICMS.Value;
         mtot024:=mtot024+DM5.Tb_RCFOPRCFOP_ISENTAS.Value;
         mtot025:=mtot025+DM5.Tb_RCFOPRCFOP_OUTRAS.Value;
         DM5.Tb_RCFOP.Next;
         if DM5.Tb_RCFOP.Eof then
            begin
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.ImpF(mlin,01,insere2('Sub_Total','.',9)
                                 +insere2(' ',' ',6)
                                 +insere(FormatFloat(mcasas, mtot011), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot012), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot013), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot014), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot015), ' ',13),mnormal);
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.ImpF(mlin,01,insere2('Total','.',9)
                                 +insere2(' ',' ',6)
                                 +insere(FormatFloat(mcasas, mtot021), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot022), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot023), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot024), ' ',13)
                                 +insere(FormatFloat(mcasas, mtot025), ' ',13),mnormal);
            mlin:=mlin+1;
            end
         else if mlin>57 then
            begin
            mlin:=mlin+1;
            form_impres_lrs.RDprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
            form_impres_lrs.RDprint1.Novapagina;
            mlin:=0;
            end;
         end;
      end;
   if TERMO.ItemIndex=0 then
      termos(1,valint(LN.Text),valint(pgi.Text),StrToDate(MDT1.Text),StrToDate(MDT2.Text));
   end;
if form_impres_lrs.Rdprint1.Setup then form_impres_lrs.Rdprint1.Fechar;
form_impres_lrs.free;
form_impres_lrs:=nil;

{
if trim(mNNumnf_irreg)<>'' then
   begin
   Application.CreateForm(TFrm_Sintegra_Advert,Frm_Sintegra_Advert);
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(mNNumnf_Irreg);
   Frm_Sintegra_Advert.ShowModal;
   Frm_Sintegra_Advert.Free;
   Frm_Sintegra_Advert:=nil;
   mNNumnf_Irreg:='';
   end;
}


end;

procedure TFrm_LRS.LNKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;
end;

procedure TFrm_LRS.LNExit(Sender: TObject);
begin
LN.Text:=FormatFloat('000',ValInt(LN.Text));
end;

procedure TFrm_LRS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
If DM5.tb_lrs.Active then DM5.tb_lrs.Close;

if (FormState<>[fsModal]) then
   Action := caFree;


end;

procedure TFrm_LRS.PGIKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;
end;

procedure TFrm_LRS.PG1KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;
end;

procedure TFrm_LRS.PG2KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;
end;


function tFrm_LRS.termos(ptipo,pNumLiv,pPagIni:Integer;pDatIni,pDatFin:TDateTime): Boolean;

{
mtipo=1-saida
      2-entrada
      3-apuracao
}
var
mTermo: Integer;
begin
mpag:=mpag+1;
for mTermo:=1 to 2 do
   begin
   form_impres_lrs.RDprint1.Novapagina;
   if mTermo=1 then
      form_impres_lrs.RDprint1.Impf(03,01,insere('Folha....: 0001 ',' ',70),mnormal)
   else
      form_impres_lrs.RDprint1.Impf(03,01,insere('Folha....: '+FormatFloat('0000',mpag),' ',70),mnormal);
   if ptipo=1 then
      form_impres_lrs.RDprint1.Impf(06,01,Centra('REGISTRO DE SAIDAS',' ',80),mneg)
   else if ptipo=2 then
      form_impres_lrs.RDprint1.Impf(06,01,Centra('REGISTRO DE ENTRADAS',' ',80),mneg)
   else
      form_impres_lrs.RDprint1.Impf(06,01,Centra('REGISTRO DE APURACAO DE ICMS',' ',80),mneg);
   mdia:=UpperCase(Extenso2(pNumLiv));
   form_impres_lrs.RDprint1.Impf(08,01,insere('Livro No. '+formatFloat('000', pNumLiv)+' ('+Trim(mdia)+')',' ',45),mnormal);

   if mTermo=1 then
      begin
      mcinst:=Centra('TERMO DE ABERTURA',' ',80);
      form_impres_lrs.RDprint1.Impf(10,01,mcinst,mneg)
      end
   else
      begin
      mcinst:=Centra('TERMO DE ENCERRAMENTO',' ',80);
      form_impres_lrs.RDprint1.Impf(10,01,mcinst,mneg);
      end;
   mdia:=copy(UpperCase(Extenso2(mpag)),1,34);
   form_impres_lrs.RDprint1.Impf(14,01,'Este livro contem '+FormatFloat('0000',mpag)+
   ' ('+insere2(mdia,'*',34)+') folhas numeradas',mnormal);
   form_impres_lrs.RDprint1.Impf(15,01,'por processamento  eletronico de dados e seguidamente  do  No. '+
   FormatFloat('0000',pPagIni)+'  ao  No.',mnormal);
   if mTermo=1 then
      form_impres_lrs.RDprint1.Impf(16,01,FormatFloat('0000',mpag)+' e servira para  o  registro  das  operacoes  proprias  do  contribuinte',mnormal)
   else
      form_impres_lrs.RDprint1.Impf(16,01,FormatFloat('0000',mpag)+' e serviu  para  o  registro  das  operacoes  proprias  do  contribuinte',mnormal);
   form_impres_lrs.RDprint1.Impf(17,01,'abaixo identificado:',mnormal);
   form_impres_lrs.RDprint1.Impf(19,01,'Nome.........: '+DM1.Tb_EmpRAZAO.Value,mnormal);
   form_impres_lrs.RDprint1.Impf(20,01,'Endereco.....: '+DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,mnormal);
   form_impres_lrs.RDprint1.Impf(21,01,'Cidade.......: '+DM1.Tb_EmpCIDADE.Value,mnormal);
   form_impres_lrs.RDprint1.Impf(22,01,'Inscricao Estadual No. '+DM1.Tb_EmpINSCRICAO.Value+'       CGC(MF) No. '
   +Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),' ',21),mnormal);
//***
   If mTermo=1  then mdia:=Data(pDatIni,0)
   else mdia:=Data(pDatFin,0);
   form_impres_lrs.RDprint1.Impf(25,01,insere(DM1.Tb_EmpCIDADE.Value,' ',20)+','+mdia,mnormal);
   form_impres_lrs.RDprint1.Impf(30,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',54)+DM1.Tb_EmpCONTADOR.Value,mnormal);
   form_impres_lrs.RDprint1.Impf(31,01,'                  - Diretor -                        Contador - CRC'+DM1.Tb_EmpCRC_CONTADOR.Value,mnormal);
   end;
result:=true;
end;




{+-------------------------+--+--------------+-----+------+----------------------------------------------------------------------+--------------+-------------+
|   Documentos Fiscais    |  |              | Co- | Co-  |                  V a l o r e s      F i s c a i s                    |              |             |
+-----+-----+---------+---|  |    Valor     | di- | digo |----+-----------------------------------+-----------------------------|--------------|-------------|
| Es- |Serie|         | D |UF|              | go  | Con- |ICMS|  Operacoes com debito do Imposto  | Oper. sem Debito do Imposto |    Base      | Observacoes |
| pe- |Sub- |Numero(s)| i |  |  Contabil    | fis-| ta-  |RET.|--------------+------+-------------+--------------+--------------+   Calculo    |             |
| cie |Serie|         | a |  |              | cal | bil  |IPI |Base de Calc. | Aliq.|Imp. Debitado|Isenta/N. Trb.|     Outras   |  Pis/Cofins  |             |
+-----+-----+---------+---+--+--------------+-----+------+----+--------------+------+-------------+--------------+--------------+--------------+-------------+
| NF  |UNI  | 123456  |01 |GO|ZZ.ZZZ.ZZ9,99 | 5,12|310101|ICMS|ZZ.ZZZ.ZZ9,99 | 10,11|ZZZZZ.ZZ9,99 |ZZZZZZ.ZZ9,99 |ZZZZZZ.ZZ9,99 |ZZZZZZ.ZZ9,99 | 123456789012|
|Subtotal ->ICMS      |   |  |##,###,##0.00 |     |      |    |##,###,###.## |      |#####,###,## |######.###,99 |######.###,## |######.###;## |             |

|     |     |         |   |  |              |     |      |    |              |      |             |              |              |              |             |




RESUMO DAS SAIDAS. PERIODO: 10/09/90 a 10/09/90
+------+-----+----------------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+
|Codigo|Aliq.|                      |   Valores    |    Base de   |    Imposto   | Base Calculo |     ICMS     |   Isentas /  |              |     Base     |
|Fiscal|     | Natureza da Operacao |  Contabeis   |    Calculo   |    Debitado  |    Retido    |    Retido    |   Nao Trib.  |    Outras    |  PIS/Cofins  |
| 5.73 | 17% | 12345678901234567890 |zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|zzz.zzz.zz9,99|
+------+-----+----------------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+}
procedure TFrm_LRS.MDT1Exit(Sender: TObject);
begin
DTTERM1.Text:=MDT1.Text;
DTTERM1.Update;
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      FMensagem('Data invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_LRS.MDT2Exit(Sender: TObject);
begin
DTTERM2.Text:=MDT2.Text;
DTTERM2.Update;
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      FMensagem('Data invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;

end;
function TFrm_LRS.GeraLFS(PTipo,Pmodelo,PDoc,Pobs: Integer; pdt1,pdt2: TDateTime;pSeparaIcmsR:Boolean; pCfo: String): Boolean;
var
  mbase: Real;
  mredut, miva, mbaser: Real;
  mNumItem,mqtd: Integer;
  mSerieECF,mie,mcfonf: String;
  mvlrcontres, mvlrcont: Real;
  mbasen,mAliq,micmsn,moutras,misentas,micmsr,mfrete: Real;
  mtotalnota,mdifArred: Real;
  mNumcup_Ant: Real;
//  mnumdoc: real;
//  mdatadoc: tdatetime;
  mstatus_doc: real;
  mnumero_doc: real;
  mtipo_doc: string;
  mserie_doc: string;
  mmodelo_doc: string;
  mdata_doc: tdatetime;
Begin
{DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('Update CADP02 set P2TOTOUT=P2TOTOUT+P2BASEN, P2BASEN=0 '
                  +' where P2BASEN>0 AND P2ALIQ=0  ');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;}



// inicio do novo calculo com o sintegra
mNumcup_Ant:=0;
par_ordement:=1;


if not mlivro_ant then
   begin
   While not DM5.Qr_NS.Eof do
      begin
{
      if DM5.Qr_NSNSCHAVEP.AsFloat=211970 THEN
         sHOWmESSAGE('aCHOU');
}
{
      if (DM5.Qr_NSNSCFO1.AsString<>pCFo) and (trim(pCFo)<>'')then
        Begin
        DM5.Qr_NS.Next;
        Continue;
        end;
}

      if DM5.Qr_NSNSNFCE_NUMERO.AsFloat>0  then
         begin
         mdata_doc   :=DM5.Qr_NSNSNFCE_DATA.AsDateTime;
         mnumero_doc :=DM5.Qr_NSNSNFCE_NUMERO.AsInteger;
         mserie_doc :=DM5.Qr_NSNSNFCE_SERIE.AsString;
         mstatus_doc    :=DM5.Qr_NSNSNFCE_SITUACAO.AsInteger;
         mmodelo_doc:=DM5.Qr_NSNSNFCE_MODELO.AsString;
         mtipo_doc  :='NFCE';
         end
      else if DM5.Qr_NSNUMECF.AsFloat>0 then
         begin
         mdata_doc   :=DM5.Qr_NSNSDATCUP.AsDateTime;
         mnumero_doc :=DM5.Qr_NSNUMECF.AsInteger;
         mserie_doc :=DM5.Qr_NSNSSERIE.AsString;
         mstatus_doc    :=DM5.Qr_NSNSSITCUP.AsInteger;
         mmodelo_doc:=DM5.Qr_NSNSMODECF.AsString;
         if trim(mmodelo_doc)='' then
            mmodelo_doc:='2D';
         mtipo_doc  :='CF';
         end
      else
         begin
         mdata_doc   :=DM5.Qr_NSNSDTEMIS.AsDateTime;
         mnumero_doc :=DM5.Qr_NSNSNUMERO.AsInteger;
         mserie_doc :=DM5.Qr_NSNSSERIE.AsString;
         mmodelo_doc:=DM5.Qr_NSNSMODELO.AsString;
         mstatus_doc    :=DM5.Qr_NSNSSTATUS.AsInteger;
         mTipo_Doc  :=mtipo_nfe;

         end;




//      if (DM5.qR_nsnsnumero.asfloat>0) OR ((DM5.Qr_NSNSCHAVEP.Value=0) ) then
//      if (DM5.qR_nsnsnumcup.asfloat>0) OR (DM5.Qr_NSNSNFCE_NUMERO.Value>0) OR ((DM5.Qr_NSNSCHAVEP.Value=0) ) then
      if (mnumero_doc>0) OR  ((DM5.Qr_NSNSCHAVEP.Value=0) ) then
         begin
         DM5.Qr_ProSoma.close;
         if DM5.Qr_NSNSCHAVEP.Value>0 then
            begin
            DM5.Qr_ProSoma.Close;
            DM5.Qr_ProSoma.SQL.Clear;
            DM5.Qr_ProSoma.SQL.Add('Select sum(P2TOTDES)  AS TOTDES ');
{
            if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) then
               begin
               DM5.Qr_ProSoma.SQL.Add('       ,0  AS BASEN '
                                     +'       ,0  AS ICMSN ');
               end
            else
               begin
}
               DM5.Qr_ProSoma.SQL.Add('       ,sum(P2BASEN)  AS BASEN '
                                     +',sum(P2ICMSN)  AS ICMSN ');
//               end;
            if pSeparaIcmsR then
               begin
               DM5.Qr_ProSoma.SQL.Add('       ,sum(P2BASER)  AS BASER '
                                     +'       ,sum(P2ICMSR)  AS ICMSR '
                                     +'       ,SUM(DECODE(P2TOTOUT,0,( '
                                     +'ROUND( ( ((P2QTD*P2PRECO))-P2TOTDES),2)  -');
               if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) then
                  DM5.Qr_ProSoma.SQL.Add(' 0-0) ')
               else
                  DM5.Qr_ProSoma.SQL.Add('(P2BASEN) -P2BCINR)');
//               DM5.Qr_ProSoma.SQL.Add(',P2TOTOUT+P2VALIPI)) AS OUTRAS '
//                                     +'       ,0  AS VALIPI ');
               DM5.Qr_ProSoma.SQL.Add(',P2TOTOUT)) AS OUTRAS '    //2
                                     +'       ,sum(P2VALIPI)  AS VALIPI ');
               end
            else
               begin
               DM5.Qr_ProSoma.SQL.Add('       ,0  AS BASER '
                                     +'       ,0 AS ICMSR '
                                     +'       , sum(DECODE(P2TOTOUT,0,(ROUND( ( ((P2QTD*P2PRECO)+P2VALIPI) -P2TOTDES),2)-');
               if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) then
                  DM5.Qr_ProSoma.SQL.Add(' 0-0) ')
               else
                  DM5.Qr_ProSoma.SQL.Add('(P2BASEN)-P2BCINR)');
//               DM5.Qr_ProSoma.SQL.Add(',P2TOTOUT+P2ICMSR))  AS OUTRAS '
//                                    +'       ,sum(P2VALIPI)  AS VALIPI ');
               DM5.Qr_ProSoma.SQL.Add(',P2TOTOUT+P2ICMSR+P2VALIPI))  AS OUTRAS '
                                     +'       ,0  AS VALIPI ');

               end;
            DM5.Qr_ProSoma.SQL.Add('        ,sum(P2ICMSNR) AS ICMSNR '
                                  +'       ,sum(P2BCINR)  AS BCINR '
                                  +'       ,sum(P2ISENTAS) AS ISENTAS '
//                                  +'       ,sum( ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2)+P2VALIPI ) AS TOTLIQ ');
                                  +'       ,sum( ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2)) AS TOTLIQ ');
//                                  +'       ,sum(P2TOTLIQ-P2DESCRAT) AS TOTLIQ ');
            if (DM5.Qr_nsNUMERO_NF.asfloat>0) AND  ( (DM5.Qr_NSNUMECF.AsFloat>0) or (DM5.Qr_NSNSNFCE_NUMERO.asfloat>0)) then//luiz
               begin
               if DM1.Tb_EmpCGC.Value=2777589000164 then
                  begin
                  DM5.Qr_ProSoma.SQL.Add('        ,P2CFO ');
//                 DM5.Qr_ProSoma.SQL.Add(',case when substr(max(p2sit),2,1) in ('+QuotedStr('1')+','+QuotedStr('3')+','+QuotedStr('6')+','+QuotedStr('7')+') then 5405 else 5102 end as P2CFO ');
//                 DM5.Qr_ProSoma.SQL.Add(',DECODE(SUBSTR(TO_CHAR(P2CFO),1,1),:P1,P2CFO-1000,P2CFO) AS P2CFO ');
//                 DM5.Qr_ProSoma.ParamByName('P1').AsString:='6';
                  end
               else
                  DM5.Qr_ProSoma.SQL.Add('        ,P2CFO ');
               DM5.Qr_ProSoma.SQL.Add(',P2CFOSUBECF AS CFONF ');
               end
           else
              begin
              DM5.Qr_ProSoma.SQL.Add('        ,P2CFO ');
              DM5.Qr_ProSoma.SQL.Add(',P2CFO AS CFONF ');
              end;
           DM5.Qr_ProSoma.SQL.Add(',P2ALIQ,max(P2ALIQNR) as P2ALIQNR,P2ALIPI AS ALIPI ');
           if DM5.Qr_NSNUMECF.AsInteger>0 then
              DM5.Qr_ProSoma.SQL.Add(' from '+mTabelaItens_Cupom)
           else
              DM5.Qr_ProSoma.SQL.Add(' from CADP02');
           DM5.Qr_ProSoma.SQL.Add(' where P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                                  +' and   P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                                  +' and   P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                                  +' and   P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                                  +' and   P2PRECO<>0');
            if DM5.Qr_NSNUMECF.AsInteger>0 then
               begin
{               if pCfo <> '' then
                  DM5.Qr_ProSoma.SQL.add(' and P2CFO =0'+pCfo);
}
               DM5.Qr_ProSoma.SQL.add(' group by P2CFOSUBECF,P2CFO,P2ALIQ,P2ALIPI') //,P2ALIPI
               end
            else begin
{
               if pCfo <> '' then
                  DM5.Qr_ProSoma.SQL.add(' and (P2CFO =0'+pCfo+' OR P2CFOSUBECF=0'+pCFo+')' );
}
               DM5.Qr_ProSoma.SQL.add(' group by P2CFO,P2CFOSUBECF,P2ALIQ,P2ALIPI'); //,P2ALIPI
            end;

            DM5.Qr_ProSoma.SQL.Add(' union all ');
            DM5.Qr_ProSoma.SQL.Add(' Select sum(P2STOTDES)  AS TOTDES ');
            DM5.Qr_ProSoma.SQL.Add('     ,sum(P2SBCISSQN)  AS BASEN ');
            DM5.Qr_ProSoma.SQL.Add('       ,0  AS BASER ');
            DM5.Qr_ProSoma.SQL.Add('       ,0  AS ICMSR ');
            DM5.Qr_ProSoma.SQL.Add('       ,0  AS OUTRAS ');
            DM5.Qr_ProSoma.SQL.Add('       ,0  AS VALIPI ');
            DM5.Qr_ProSoma.SQL.Add('       ,sum(P2SVISSQN)  AS ICMSN ');
            DM5.Qr_ProSoma.SQL.Add('       ,sum(P2SVISSQN-P2SVISSQN) AS ICMSNR ');
            DM5.Qr_ProSoma.SQL.Add('       ,0  AS BCINR ');
            DM5.Qr_ProSoma.SQL.Add('       ,0 AS ISENTAS ');
            DM5.Qr_ProSoma.SQL.Add('       ,sum((P2SQTD*P2SPRECO)-(P2STOTDES+P2SDESCRAT)) AS TOTLIQ ');
            DM5.Qr_ProSoma.SQL.Add('       ,P2SCFO AS P2CFO,P2SCFO AS CFONF, P2SALIQ,0 as P2ALIQNR,0 AS ALIPI ');
            DM5.Qr_ProSoma.SQL.Add(' from CADP02S ');
            DM5.Qr_ProSoma.SQL.Add(' where P2SCODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                                  +' and   P2SLOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                                  +' and   P2SCHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                                  +' and   P2SORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                                  +' and   P2SPRECO<>0');
{             if pCfo <> '' then
                DM5.Qr_ProSoma.SQL.add(' and P2SCFO =0'+pCfo);
}
            DM5.Qr_ProSoma.SQL.Add(' group by P2SCFO,P2SALIQ ');
            try
               DM5.Qr_ProSoma.Open;
            except
               DM5.Qr_ProSoma.sql.savetofile('c:\sql.txt');
               end;
//          DM5.Qr_ProSoma.sql.savetofile('c:\sql.txt');

            if DM5.Qr_ProSoma.isEmpty then
               begin
{
                if pCfo <> '' then
                   begin
                   DM5.Qr_Ns.next;
                   Continue;
                   end;
}
               DM5.Qr_ProSoma.Close;
               end;
            end;
//         if (DM5.Qr_NSNSCHAVEP.Value=0) or (not (DM5.Qr_ProSoma.Active) and (DM5.Qr_NSNSSTATUS.Value=9))   then

         if (DM5.Qr_NSNSCHAVEP.Value=0) or (not (DM5.Qr_ProSoma.Active))    then
            begin
//            DM5.Qr_NS.Next;
//            Continue;
            mvlrcont:=DM5.Qr_NSNSTOTNOTA.Value;
            if mvlrcont=DM5.Qr_NSNSTOTISEN.Value then
               mAliq:=0
            else
               mAliq:=DM5.Qr_NSNSALIQ.Value;
            if maliq<>0 then
               begin
               if (DM5.Qr_NSNSBASENI.Value+DM5.Qr_NSNSBASENP.Value+DM5.Qr_NSNSBASENN.Value
                   +DM5.Qr_NSNSICMS_BCFRE.Value+DM5.Qr_NSNSICMS_BCSEG.Value+DM5.Qr_NSNSICMS_BCOUTD.Value
                   +DM5.Qr_NSNSICMS_BCIPI.Value
                  +DM5.Qr_NSNSBASENRI.Value+DM5.Qr_NSNSBASENRP.Value+DM5.Qr_NSNSBASENRN.Value )=0 then
               maliq:=0;
               end;



            if (DM5.Qr_NSNSTOTNOR.Value+DM5.Qr_NSNSTOTISEN.Value+DM5.Qr_NSNSFRETE.Value+DM5.Qr_NSNSICMSN.Value+DM5.Qr_NSNSBASEN.Value)>0 then
               begin
               if (DM5.Qr_NSNSCHAVEP.Value=0) or (not (DM5.Qr_ProSoma.Active)) then
                  begin
                  mcfonf:=IIF(DM5.Qr_NSNSCFO1.IsNull,
                             FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO2.Value),
                             FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO1.Value));
                  end;
               mcfonf:=fdeixanum(mcfonf);
               if ValInt(mcfonf)<5000 then
                  begin
                  FMensagem('Existe nota de Saida com CFO de Nota de Entrada'+#13
                            +'CFOP da Nota: '+mcfonf+' Numero da Nota Fiscal: '+DM5.Qr_NSNSNUMERO.AsString+' Cupom: '+DM5.Qr_NSNSNUMCUP.AsString+#13

                            +' nfce: '+DM5.Qr_NSNSNFCE_NUMERO.AsString+#13
                            +'Data: '+FormatDatetime(fdt2, DM5.Qr_NSNSDTEMIS.Value)+' Chave: '+DM5.Qr_NSNSCHAVEP.AsString,0,['0'],0);
                  end;
               if Pmodelo=1 then
                  begin
                  mbase:=DM5.Qr_NSNSBASENI.Value+DM5.Qr_NSNSBASENP.Value+DM5.Qr_NSNSBASENN.Value
                       +DM5.Qr_NSNSICMS_BCFRE.Value+DM5.Qr_NSNSICMS_BCSEG.Value
                       +DM5.Qr_NSNSICMS_BCOUTD.Value+DM5.Qr_NSNSICMS_BCIPI.Value;
{                  if DM5.Qr_NSNSNFCE_NUMERO.asfloat>0 then
                     begin
                     mnumdoc:=DM5.Qr_NSNSNFCE_NUMERO.asfloat;
                     mstatus_doc:=DM5.Qr_NSNSNFCE_SITUACAO.AsInteger;
                     mdatadoc:=DM5.qr_nsnsnfce_DATA.asdatetime;
                     end
                  else if DM5.Qr_NSNSNUMCUP.asfloat>0 then
                     begin
                     mnumdoc:=DM5.Qr_NSNSNUMCUP.asfloat;
                     mstatus_doc:=DM5.Qr_NSNSSITCUP.AsInteger;
                     mdatadoc:=DM5.qr_nsnsDATCUP.asdatetime;
                     end
                  else
                     begin
                     mnumdoc:=DM5.Qr_NSNSNUMERO.asfloat;
                     mstatus_doc:=DM5.Qr_NSNSSTATUS.AsInteger;
                     mdatadoc:=DM5.qr_nsnsDTEMIS.asdatetime;
                      end;
 }
                  flrsgravalrs(1,PTipo,01,Pmodelo ,DM5.Qr_NSnsfretepc.AsInteger, mAliq,
                  mnumero_doc,
                  mstatus_doc,
                  mvlrcont,
                  mvlrcont,
                  DM5.Qr_NSNSICMSNI.Value+DM5.Qr_NSNSICMSNP.Value+DM5.Qr_NSNSICMSNP.Value
                  +DM5.Qr_NSNSICMS_VLFRE.Value+DM5.Qr_NSNSICMS_VLSEG.Value
                  +DM5.Qr_NSNSICMS_VLOUTD.Value+DM5.Qr_NSNSICMS_VLIPI.Value,
                  DM5.Qr_NSNSTOTISEN.Value,
                  DM5.Qr_NSNSTOTOUT.Value,
                  mbase,
                  DM5.Qr_NSNSPISCOFN.Value,
                  DM5.Qr_NSNSCHAVEP.Value,
                  DM5.Qr_NSNSORDEMP.Value,
                  mcfonf,
                  mtipo_doc,
                  'ICMS',
                  DM5.Qr_NSuf.Value,
                  mserie_doc,
                  DM5.Qr_NSNSSUBSER.Value,
                  mmodelo_doc,
                  'P',
                  DM5.Qr_NScgc.Value,
                  DM5.Qr_NSinscricao.Value,
                  ' ', // observaçoes
                  ' ', // x usado somente em entradas
                  ' ', // Codigo Contabil
                  mdata_doc,
                  mdata_doc
                  );
                  mvlrcont                :=0;
                  end
               else
                  begin
                  flrsgravalrs(1,Ptipo,01,Pmodelo,DM5.Qr_NSnsfretepc.AsInteger,mAliq,

                  mnumero_doc,
                  mstatus_doc,
                  DM5.Qr_NSNSTOTISEN.Value+DM5.Qr_NSNSTOTNOR.Value+DM5.Qr_NSNSFRETE.Value
                  +DM5.Qr_NSNSTARBAN.Value+DM5.Qr_NSNSTOTOUT.Value
                  +DM5.Qr_NSNSIPII.Value+DM5.Qr_NSNSIPIP.Value+DM5.Qr_NSNSIPIN.Value,
                  DM5.Qr_NSNSTOTISEN.Value+DM5.Qr_NSNSTOTNOR.Value+DM5.Qr_NSNSFRETE.Value
                  +DM5.Qr_NSNSTARBAN.Value+DM5.Qr_NSNSTOTOUT.Value
                  +DM5.Qr_NSNSIPII.Value+DM5.Qr_NSNSIPIP.Value+DM5.Qr_NSNSIPIN.Value,
                  DM5.Qr_NSNSICMSN.Value,
                  DM5.Qr_NSNSTOTISEN.Value,
                  DM5.Qr_NSNSTOTOUT.Value,
                  DM5.Qr_NSNSBASEN.Value,
                  DM5.Qr_NSNSPISCOFN.Value,
                  DM5.Qr_NSNSCHAVEP.Value,
                  DM5.Qr_NSNSORDEMP.Value,
                  mcfonf,
                  mtipo_doc,
                  'ICMS',
                  DM5.Qr_NSuf.Value,
                  mserie_doc,
                  DM5.Qr_NSNSSUBSER.Value,
                  mmodelo_doc,
                  'P',
                  DM5.Qr_NScgc.Value,
                  DM5.Qr_NSinscricao.Value,
                  ' ', // observaçoes
                  ' ', // x usado somente em entradas
                  ' ', // Codigo Contabil
                  mdata_doc,
                  mdata_doc);
                  end;
               end;
            mvlrcontres:=DM5.Qr_NSNSTOTNOTA.Value-(DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value)
                                              -(DM5.Qr_NSNSTOTRET.Value);
//
            if DM5.Qr_NSNSTOTRET.Value>0 then
               begin
               mcfonf:=IIF(DM5.Qr_NSNSCFO2.IsNull,
                             FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO1.Value),
                             FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO2.Value));
               mcfonf:=fdeixanum(mcfonf);
               mvlrcont:=0;
               if PModelo=1 then
                  begin
                  flrsgravalrs(1,Ptipo,03,Pmodelo,DM5.Qr_NSnsfretepc.AsInteger,DM5.Qr_NsNSALIQ2.Value,
                  mnumero_doc,
                  mstatus_doc,
                  mvlrcont,
                  mvlrcont,
                  DM5.Qr_NSNSICMSNRI.Value+DM5.Qr_NSNSICMSNRP.Value+DM5.Qr_NSNSICMSNRN.Value,
                  0, // Isentas,
                  0, // outras,
                  DM5.Qr_NSNSBASENRI.Value+DM5.Qr_NSNSBASENRP.Value+DM5.Qr_NSNSBASENRN.Value,
                  DM5.Qr_NSNSPISCOFR.Value,
                  DM5.Qr_NSNSCHAVEP.Value,
                  DM5.Qr_NSNSORDEMP.Value,
                  mcfonf,
                  mtipo_doc,
                  'ICMS',
                  DM5.Qr_NSuf.Value,
                  mserie_doc,
                  DM5.Qr_NSNSSUBSER.Value,
                  mmodelo_doc,
                  'P',
                  DM5.Qr_NScgc.Value,
                  DM5.Qr_NSinscricao.Value,
                  ' ', // observaçoes
                  ' ', // x usado somente em entradas
                  ' ', // Codigo Contabil
                  mdata_doc,
                  mdata_doc);
                  mvlrcont                :=0;
                  end
               else
                  begin
                  flrsgravalrs(1,Ptipo,03,Pmodelo,DM5.Qr_NSnsfretepc.AsInteger,DM5.Qr_NsNSALIQ2.Value,
                  mnumero_doc,
                  mstatus_doc,
                  DM5.Qr_NSNSTOTRET.Value,
                  DM5.Qr_NSNSTOTRET.Value,
                  DM5.Qr_NSNSICMSNRI.Value+DM5.Qr_NSNSICMSNRP.Value+DM5.Qr_NSNSICMSNRN.Value,
                  0, // Isentas,
                  0, // outras,
                  DM5.Qr_NSNSBASENRI.Value+DM5.Qr_NSNSBASENRP.Value+DM5.Qr_NSNSBASENRN.Value,
                  DM5.Qr_NSNSPISCOFR.Value,
                  DM5.Qr_NSNSCHAVEP.Value,
                  DM5.Qr_NSNSORDEMP.Value,
                  mcfonf,
                  mtipo_doc,
                  'ICMS',
                  DM5.Qr_NSuf.Value,
                  mserie_doc,
                  DM5.Qr_NSNSSUBSER.Value,
                  mmodelo_doc,
                  'P',
                  DM5.Qr_NScgc.Value,
                  DM5.Qr_NSinscricao.Value,
                  ' ', // observaçoes
                  ' ', // x usado somente em entradas
                  ' ', // Codigo Contabil
                  mdata_doc,
                  mdata_doc);

                  mvlrcontres:=DM5.Qr_NSNSTOTRET.Value;
                  mvlrcont                :=0;
                  end;
               if Pmodelo=1 then
                  begin
                  mvlrcont:=0;
                  flrsgravalrs(1,Ptipo,04,Pmodelo,
                             0,
                             DM5.Qr_NSnsfretepc.AsInteger,
                            mnumero_doc,
                            mstatus_doc,
                             mvlrcont,
                             mvlrcont,
                             0, // icms normal
                             DM5.Qr_NSNSBASENRI.Value+DM5.Qr_NSNSBASENRP.Value+DM5.Qr_NSNSBASENRN.Value, // isentas
                             0, // outras
                             0, // base icms normal
                             0, // pis cofins
                             DM5.Qr_NSNSCHAVEP.Value,
                             DM5.Qr_NSNSORDEMP.Value,
                             mcfonf,
                             mtipo_nfe,
                             'IPI',
                             DM5.Qr_NSuf.Value,
                             mserie_doc,
                             DM5.Qr_NSNSSUBSER.Value,
                             mmodelo_doc,
                             'P',
                             DM5.Qr_NScgc.Value,
                             DM5.Qr_NSinscricao.Value,
                             ' ', // observaçoes
                             ' ', // x usado somente em entradas
                             ' ', // Codigo Contabil
                            mdata_doc,
                            mdata_doc);
                             mvlrcont:=0;
                  end;
               end;
            if (DM5.Qr_NSNSBASERI.Value+DM5.Qr_NSNSBASERP.Value+DM5.Qr_NSNSBASERP.Value+DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRN.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value )>0 then
               begin
               mcfonf:=IIF(DM5.Qr_NSNSCFO2.IsNull,
                            FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO1.Value),
                            FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO2.Value));
               mcfonf:=fdeixanum(mcfonf);
               if ((DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value)>0) and (pobs=1) then  //  icms normal maior que zero
                  mcinst:='Ret:'+FormatFloat(mcasas, DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value)
               else
                  mcinst:=' ';
               if Pmodelo=1 then
                  begin
                  mvlrcont:=0;
                  flrsgravalrs(1,pTipo,05,Pmodelo,
                               DM5.Qr_NSnsfretepc.AsInteger,

                               0, // aliquota
                              mnumero_doc,
                             mstatus_doc,
                               mvlrcont,
                               mvlrcont,
                               DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value, //  icms normal
                               0,  // isentos
                               0,  // outras
                               (DM5.Qr_NSNSBASERI.Value+DM5.Qr_NSNSBASERP.Value+DM5.Qr_NSNSBASERN.Value), // Base icms Normal
                               0, // Pis Cofins
                               DM5.Qr_NSNSCHAVEP.Value,
                               DM5.Qr_NSNSORDEMP.Value,
                               mcfonf,
                               mtipo_doc,
                               'ST',
                               DM5.Qr_NSuf.Value,
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               'P',
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSinscricao.Value,
                               mcinst, // observaçoes
                               ' ', // x usado somente em entradas
                               ' ', // Codigo Contabil
                               mdata_doc,
                               mdata_doc);
                  end
               else
                  begin
                  flrsgravalrs(1,pTipo,05,Pmodelo,
                               DM5.Qr_NSnsfretepc.AsInteger,
                               0, // aliquota
                               mnumero_doc,
                               mstatus_doc,
                               DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value, // Valor Contabil
                               DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value, // Valor Contabil
                               DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value, //  icms normal
                               0,  // isentos
                               0,  // outras
                               (DM5.Qr_NSNSBASERI.Value+DM5.Qr_NSNSBASERP.Value+DM5.Qr_NSNSBASERN.Value), // Base icms Normal
                               0, // Pis Cofins
                               DM5.Qr_NSNSCHAVEP.Value,
                               DM5.Qr_NSNSORDEMP.Value,
                               mcfonf,
                               mtipo_doc,
                               'RETI',
                               DM5.Qr_NSuf.Value,
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               'P',
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSinscricao.Value,
                               mcinst, // observaçoes
                               ' ', // x usado somente em entradas
                               ' ', // Codigo Contabil
                               mdata_doc,
                               mdata_doc);
                  end;
               mvlrcontres  :=DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value;
               if PTipo=1 then
                  begin
                  if mtipo_doc=mtipo_nfe then
                      begin

                      flrsgrava53(0,0,
                            mnumero_doc,
                            mstatus_doc,
                            DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value, // icms retido
                            0, // Despesas Acessorias
                            (DM5.Qr_NSNSBASERI.Value+DM5.Qr_NSNSBASERP.Value+DM5.Qr_NSNSBASERN.Value), // Base icms retido
                            mcfonf,
                            DM5.Qr_NSuf.Value,
                            mserie_doc,
                            DM5.Qr_NSNSSUBSER.Value,
                            mmodelo_doc,
                            'P',
                            DM5.Qr_NScgc.Value,
                            DM5.Qr_NSinscricao.Value,
                            ' ',

                            mdata_doc);
                      end;
                  end;
               end;
            end
         else // nota fiscal normal com pedidos
            begin
            mfrete:=DM5.Qr_NSNSFRETE.Value;
            mvlrcont:=0;
            misentas:=0;
            moutras :=DM5.Qr_ProSomaVALIPI.Value;
            if pmodelo=1 then
               begin
               moutras:=0;
               mtotalnota:=0;
               While not DM5.Qr_ProSoma.Eof do
                  begin
                  mvlrcont:=mvlrcont+DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaICMSR.Value;
                  misentas:=misentas+DM5.Qr_ProSomaISENTAS.Value;
                  moutras :=moutras +DM5.Qr_ProSomaOUTRAS.Value+DM5.Qr_ProSomaVALIPI.Value-DM5.Qr_ProSomaISENTAS.Value;
                  mtotalnota:=mtotalnota+DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaICMSR.Value;
                  DM5.Qr_ProSoma.Next;
                  end;
               DM5.Qr_ProSoma.First;
               mdifArred:=(mtotalnota+DM5.Qr_NSNSFRETE.Value+DM5.Qr_NSNSTARBAN.Value
                          +DM5.Qr_NSNSIPII.Value+DM5.Qr_NSNSIPIP.Value+DM5.Qr_NSNSIPIN.Value)
                          -DM5.Qr_NSNSTOTNOTA.Value;
               end
            else
               begin
               mtotalnota:=0;
               While not DM5.Qr_ProSoma.Eof do
                  begin
                  mtotalnota:=mtotalnota+DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaICMSR.Value;
                  misentas:=misentas+DM5.Qr_ProSomaISENTAS.Value;
                  DM5.Qr_ProSoma.Next;
                  end;
               DM5.Qr_ProSoma.First;
//               if pcfo='' then
//                  mdifArred:=(mtotalnota+DM5.Qr_NSNSFRETE.Value+DM5.Qr_NSNSTARBAN.Value+DM5.Qr_NSNSIPII.Value+DM5.Qr_NSNSIPIP.Value+DM5.Qr_NSNSIPIN.Value)-DM5.Qr_NSNSTOTNOTA.Value
                  mdifArred:=(mtotalnota+DM5.Qr_NSNSFRETE.Value+DM5.Qr_NSNSTARBAN.Value)-DM5.Qr_NSNSTOTNOTA.Value
//               else
//                  mdifArred:=0;
               end;
            mqtd:=0;
            While not DM5.Qr_ProSoma.Eof do
               begin
//cfopalterado
               mcfonf:=DM5.Qr_ProSomaCFONF.AsString;
               mcfonf:=insere(mcfonf,'0',4);
               mqtd:=mqtd+1;
               if Pmodelo<>1 then
                  begin
                  if pSeparaIcmsR then
                     mvlrcont:=DM5.Qr_ProSomaTOTLIQ.Value //- DM5.Qr_ProSomaVALIPI.AsFloat
                  else
                     mvlrcont:=DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaICMSR.Value;
                  end;
               if DM5.Qr_ProSomaBCINR.Value>0 then
                  mqtd:=3
               else
                  mqtd:=1;
               mvlrcont:=mvlrcont+mfrete+DM5.Qr_NSNSTARBAN.Value; //+DM5.Qr_NSNSTOTOUT.Value;
               if (mvlrcont>0) and (mvlrcont=DM5.Qr_ProSomaISENTAS.Value) and (pModelo<>1) then
                  mAliq:=0
               else
                  begin
                  if DM5.Qr_ProSomaP2ALIQ.Value>0 then
                     mAliq:=DM5.Qr_ProSomaP2ALIQ.Value
                  else
                     mAliq:=DM5.Qr_ProSomaP2ALIQNR.Value;
                  end;
               if (mvlrcont>0) and
                  (mvlrcont=DM5.Qr_ProSomaISENTAS.Value) then
                  mAliq:=0;
               if maliq<>0 then
                  begin
                  if (DM5.Qr_ProSomaBASEN.Value+DM5.Qr_ProSomaBCINR.Value
                     +DM5.Qr_NSNSICMS_BCFRE.Value+DM5.Qr_NSNSICMS_BCSEG.Value
                     +DM5.Qr_NSNSICMS_BCOUTD.Value+DM5.Qr_NSNSICMS_BCIPI.Value)=0 then
                      maliq:=0;
                  end;

//               if ((mvlrcont-mdifArred)>misentas) and (mAliq<>0) or (DM5.Qr_ProSomaOUTRAS.Asfloat>0) then
//                  begin
                  if pSeparaIcmsR then
                    begin
                    flrsgravalrs(1,pTipo,mqtd,Pmodelo,DM5.Qr_NSnsfretepc.AsInteger,mAliq,
                               mnumero_doc,
                               mstatus_doc,
                               mvlrcont-iif(maliq=0,0,misentas), // Valor Contabil
//                               mvlrcont-mdifArred-iif(maliq=0,0,misentas), // Valor Contabil
//                               DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaICMSR.Value, // Valor Contabil
//                               (DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaVALIPI.Value)-misentas, // Valor Contabil
                               (DM5.Qr_ProSomaTOTLIQ.Value)-misentas, // Valor Contabil
                               DM5.Qr_ProSomaICMSN.Value+DM5.Qr_ProSomaICMSNR.Value
                               +DM5.Qr_NSNSICMS_VLFRE.Value+DM5.Qr_NSNSICMS_VLSEG.Value
                               +DM5.Qr_NSNSICMS_VLOUTD.Value+DM5.Qr_NSNSICMS_VLIPI.Value,
                               iif(maliq=0,misentas,0), // isentas
//                               DM5.Qr_ProSomaISENTAS.Value,
//                               moutras,
                               DM5.Qr_ProSomaOUTRAS.Value-misentas,  // outras
                               DM5.Qr_ProSomaBASEN.Value+DM5.Qr_ProSomaBCINR.Value
                               +DM5.Qr_NSNSICMS_BCFRE.Value+DM5.Qr_NSNSICMS_BCSEG.Value
                               +DM5.Qr_NSNSICMS_BCOUTD.Value+DM5.Qr_NSNSICMS_BCIPI.Value,
                               DM5.Qr_ProSomaTOTLIQ.Value, // pis cofins
                               DM5.Qr_NSNSCHAVEP.Value,
                               DM5.Qr_NSNSORDEMP.Value,
                               mcfonf,
                               mtipo_doc,
                               'ICMS',
                               DM5.Qr_NSuf.Value,
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               'P',
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSinscricao.Value,
                               ' ', // observaçoes
                               ' ', // x usado somente em entradas
                               ' ', // Codigo Contabil
                               mdata_doc,
                               mdata_doc);
                    end
                  else
                    begin


                    flrsgravalrs(1,pTipo,mqtd,Pmodelo,DM5.Qr_NSnsfretepc.AsInteger,mAliq,
                               mnumero_doc,
                               mstatus_doc,
                               mvlrcont-mdifArred-iif(maliq=0,0,misentas), // Valor Contabil
//                               DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaICMSR.Value, // Valor Contabil
//                               (DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaVALIPI.Value)-misentas, // Valor Contabil
                               (DM5.Qr_ProSomaTOTLIQ.Value)-misentas, // Valor Contabil
                               DM5.Qr_ProSomaICMSN.Value+DM5.Qr_ProSomaICMSNR.Value
                               +DM5.Qr_NSNSICMS_VLFRE.Value+DM5.Qr_NSNSICMS_VLSEG.Value
                               +DM5.Qr_NSNSICMS_VLOUTD.Value+DM5.Qr_NSNSICMS_VLIPI.Value,
                               iif(maliq=0,misentas,0), // isentas
//                               DM5.Qr_ProSomaISENTAS.Value,
//                               moutras,
                               DM5.Qr_ProSomaOUTRAS.Value-misentas,  // outras
                               DM5.Qr_ProSomaBASEN.Value+DM5.Qr_ProSomaBCINR.Value
                               +DM5.Qr_NSNSICMS_BCFRE.Value+DM5.Qr_NSNSICMS_BCSEG.Value
                               +DM5.Qr_NSNSICMS_BCOUTD.Value+DM5.Qr_NSNSICMS_BCIPI.Value,
                               DM5.Qr_ProSomaTOTLIQ.Value, // pis cofins
                               DM5.Qr_NSNSCHAVEP.Value,
                               DM5.Qr_NSNSORDEMP.Value,
                               mcfonf,
                               mtipo_doc,
                               'ICMS',
                               DM5.Qr_NSuf.Value,
                               mserie_doc,


                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               'P',
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSinscricao.Value,
                               ' ', // observaçoes
                               ' ', // x usado somente em entradas
                               ' ', // Codigo Contabil
                               mdata_doc,
                               mdata_doc);
                    end;
                   if mAliq=0 then
                     misentas:=0;
                  mdifArred:=0;
//                  if DM5.Qr_NSNSSTATUS.Value=9 then
//                     break;
//                  end;
// inicio isentas
               if (misentas>0) then
                  begin
                  flrsgravalrs(1,pTipo,mqtd,Pmodelo,DM5.Qr_NSnsfretepc.AsInteger,
                               0, // aliquota
                               mnumero_doc,
                               mstatus_doc,
                               misentas, // Valor Contabil
                               misentas, // Valor Contabil
                               0, // valor do icms
                               misentas, // isentas
                               0,  // outras
                               0, // base de icms
                               DM5.Qr_ProSomaTOTLIQ.Value, // pis cofins
                               DM5.Qr_NSNSCHAVEP.Value,
                               DM5.Qr_NSNSORDEMP.Value,
                               mcfonf,
                               mtipo_doc,
                               'ICMS',
                               DM5.Qr_NSuf.Value,
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               'P',
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSinscricao.Value,
                               ' ', // observaçoes
                               ' ', // x usado somente em entradas
                               ' ', // Codigo Contabil
                               mdata_doc,
                               mdata_doc);
                  misentas:=0;
                  end;

//termnino isentas



               if Pmodelo=1 then
                  begin
                  mqtd:=mqtd+1;
                  mvlrcont:=0;
                  if DM5.Qr_ProSomaBCINR.Value>0 then
                     mqtd:=4
                  else
                     mqtd:=2;
                  flrsgravalrs(1,pTipo,mqtd,DM5.Qr_NSnsfretepc.AsInteger,Pmodelo,
                               0,
                               mnumero_doc,
                               mstatus_doc,
                               mvlrcont, // Valor Contabil
                               mvlrcont, // Valor Contabil
                               0,  // valor do icms
                               DM5.Qr_ProSomaBASEN.Value+DM5.Qr_ProSomaBCINR.Value+misentas+moutras
                               +DM5.Qr_NSNSFRETE.Value+DM5.Qr_NSNSTARBAN.Value, // isentas
                               0,  // outras
                               0,
                               0, // pis cofins
                               DM5.Qr_NSNSCHAVEP.Value,
                               DM5.Qr_NSNSORDEMP.Value,
                               mcfonf,
                               mtipo_doc,
                               'IPI',
                               DM5.Qr_NSuf.Value,
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               'P',
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSinscricao.Value,
                               ' ', // observaçoes
                               ' ', // x usado somente em entradas
                               ' ', // Codigo Contabil
                               mdata_doc,
                               mdata_doc);
                  misentas:=0;
                  moutras :=0;
                  end;
// lindomar
               if Pmodelo<>1 then
                  mvlrcont:=DM5.Qr_ProSomaICMSR.Value
               else
                  mvlrcont:=0;
               if DM5.Qr_ProSomaICMSR.Value>0 then
                  begin
                  if Pobs=1 then
                     mcinst:='Ret:'+FormatFloat(mcasas,DM5.Qr_ProSomaICMSR.Value)
                  else
                     mcinst:='';

                  mqtd:=05;
                  flrsgravalrs(1,pTipo,mqtd,Pmodelo,DM5.Qr_NSnsfretepc.AsInteger,
                               0,
                               mnumero_doc,
                               mstatus_doc,
                               mvlrcont, // Valor Contabil
                               DM5.Qr_ProSomaICMSR.Value,
//lindomar agora                               mvlrcont, // Valor Contabil
//                               0, // Valor Contabil
                               DM5.Qr_ProSomaICMSR.Value, //  icms normal
                               0,
                               0,  // outras
                               DM5.Qr_ProSomaBASER.Value,
                               0, // pis cofins
                               DM5.Qr_NSNSCHAVEP.Value,
                               DM5.Qr_NSNSORDEMP.Value,
                               mcfonf,
                               mtipo_doc,
                               iif(Pmodelo=1,'ST','RETI'),
                               DM5.Qr_NSuf.Value,
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               'P',
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSinscricao.Value,
                               mcinst, // observaçoes
                               ' ', // x usado somente em entradas
                               ' ', // Codigo Contabil
                               mdata_doc,
                               mdata_doc);
                  end;
// INICIO
               if (Pmodelo<>1) and (DM5.Qr_ProSomaVALIPI.AsFloat<>0)  then
                  begin
                  mcinst:='';
                  mqtd:=02;
                  flrsgravalrs(1,pTipo,mqtd,Pmodelo,DM5.Qr_NSnsfretepc.AsInteger,
                               0,
                               mnumero_doc,
                               mstatus_doc,
                               DM5.Qr_ProSomaVALIPI.AsFloat, // Valor Contabil
                               DM5.Qr_ProSomaVALIPI.AsFloat, // Valor Contabil
                               DM5.Qr_ProSomaVALIPI.Value, //  icms normal
                               0,
                               0,  // outras
                               0, //DM5.Qr_ProSomaBASER.Value,
                               0, // pis cofins
                               DM5.Qr_NSNSCHAVEP.Value,
                               DM5.Qr_NSNSORDEMP.Value,
                               mcfonf,
                               mtipo_doc,
                               'IPI',
                               DM5.Qr_NSuf.Value,
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               'P',
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSinscricao.Value,
                               mcinst, // observaçoes
                               ' ', // x usado somente em entradas
                               ' ', // Codigo Contabil
                               mdata_doc,
                               mdata_doc);
                  end;


// TERMINO


               mvlrcont:=0;
               mfrete  :=0;
               DM5.Qr_ProSoma.Next;
               end;
// inicio lindomar
            if PTipo=1 then
               begin
               DM5.Qr_Pro.Close;
               DM5.Qr_Pro.SQL.Clear;

               la_tabelas  :='';
               la_Join     :='';
               la_instrucao:='';
               fInnerJoin(1,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');
               DM5.Qr_Pro.SQL.Add('Select  P2ITEM    AS ITEM '
                           +'       ,P2QTD     AS QTD '
                           +'       ,P2PRECO   AS PCOUNIT '
                           +'       ,P2CODPRO  AS CODPRO '
                           +'        ,P2TOTDES  AS TOTDES ');
               if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) then
                   DM5.Qr_Pro.SQL.Add(', case when P2CFO>4999 THEN 0 ELSE P2BASEN END AS BASEN '
                                    +', case when P2CFO>4999 THEN 0 ELSE P2ICMSN END AS ICMSN ')
               else
                   DM5.Qr_Pro.SQL.Add(',P2BASEN AS BASEN '
                                     +',P2ICMSN   AS ICMSN ');
               DM5.Qr_Pro.SQL.Add('        ,P2BASER   AS BASER '
                           +'        ,P2ICMSNR  AS ICMSNR '
                           +'        ,P2BCINR   AS BCINR '
                           +'        ,P2ICMSR   AS ICMSR '
                           +'        ,P2ALIPI   AS ALIPI '
                           +'        ,P2VALIPI  AS VALIPI '
                           +'        ,P2ISENTAS AS ISENTAS '
                           +'        ,P2TOTOUT  AS OUTRAS '
                           +'        ,(ROUND( ( ((P2QTD*P2PRECO)+P2VALIPI)-P2TOTDES),2)) AS TOTLIQ, ');
//                           +'        ,(P2TOTLIQ-P2DESCRAT) AS TOTLIQ '
               if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
                  DM5.Qr_Pro.SQL.Add('TO_CHAR(P2CSOSN) AS SITTRI')
               else
                 DM5.Qr_Pro.SQL.Add('P2SIT AS SITTRI');


           if (DM5.Qr_NSNUMECF.AsFloat>0) or (DM5.Qr_NSNSNFCE_NUMERO.Asfloat>0) then
              begin
              if DM1.Tb_EmpCGC.Value=2777589000164 then
                 begin
                 DM5.Qr_Pro.SQL.Add(',case when substr(p2sit,2,1) in ('+QuotedStr('1')+','+QuotedStr('3')+','+QuotedStr('6')+','+QuotedStr('7')+') then 5405 else 5102 end as P2CFO ');

//                 DM5.Qr_Pro.SQL.Add(',DECODE(SUBSTR(TO_CHAR(P2CFO),1,1),:P1,P2CFO-1000,P2CFO) AS P2CFO ');
//                 DM5.Qr_Pro.ParamByName('P1').AsString:='6';
                 end
              else
                 DM5.Qr_Pro.SQL.Add('        ,P2CFO ');
              DM5.Qr_Pro.SQL.Add(',P2CFOSUBECF AS CFONF ')
              end
           else
              begin
              DM5.Qr_Pro.SQL.Add(',P2CFO AS P2CFO ');
               DM5.Qr_Pro.SQL.Add('        ,P2CFO AS CFONF ')
              end;
           DM5.Qr_Pro.SQL.Add(',P2ALIQ,P2ALIQNR '
                           +'       ,PDCODPRO AS PDCODPRO '
                           +'       ,PDNOME   AS PDNOME '
                           +'       ,PDCLAS   AS PDCLAS'
                           +'       ,PDUND    AS PDUND'
                           +'       ,PDSIT    AS PDSIT'
                           +'       ,PDTABICM AS PDTABICM'
                           +'       ,PDPRECO1 AS PDPRECO1'
                           +'       ,PDIPI   AS PDIPI'
                           +'       ,PDMARCA AS PDMARCA'
                           +'       ,PDCODNCM AS PDCODNCM');
          DM5.Qr_Pro.Sql.add(',case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end as NOMPRO_ORI '
                       +'       ,DECODE(P2CODPRO_ORI,null,to_char(PDCODPRO),'+chr(39)+' '+chr(39)+',to_char(PDCODPRO),'
                       +' P2CODPRO_ORI) as CODPRO_ORI ');

          if DM5.Qr_NSNUMECF.AsInteger>0 then
             DM5.Qr_Pro.Sql.Add(' from '+mTabelaItens_Cupom)
          else
             DM5.Qr_Pro.Sql.Add(' from CADP02');

          DM5.Qr_Pro.Sql.add(iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                           +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +' P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                           +' and   P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                           +' and   P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                           +' and   P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                           +' and   P2PRECO<>0');
{               if pCfo <> '' then
                  DM5.Qr_ProSoma.SQL.add(' and P2CFO ='+pCfo);
}

               DM5.Qr_ProSoma.SQL.add(' Order by P2ITEM ');

//                  DM5.Qr_Pro.sql.savetofile('c:\sql.txt');

               try
                  DM5.Qr_Pro.Open;
               except

                  DM5.Qr_Pro.sql.savetofile('c:\sql.txt');
                  fMensagem('Campo Inexistente: '+FTestarCampos(DM5.Qr_ProSoma,['CADP02','CADPRO']),0,['0'],0);

                  end;

//               if DM5.Qr_ProCODPRO.Value=0 then
//                  begin
//                  showmessage('[e esse');
//                  end;
               mNumItem:=0;
               While not DM5.Qr_Pro.Eof do
                  begin
                  mbasen:=0;
                  micmsn:=0;
                  maliq :=0;
                  if DM5.Qr_ProBASEN.Value>0 then
                     begin
                     maliq :=DM5.Qr_ProP2ALIQ.Value;
                     mbasen:=DM5.Qr_ProBASEN.Value;
                     micmsn:=DM5.Qr_ProICMSN.Value;
                     end
                  else if DM5.Qr_ProBCINR.Value>0 then
                     begin
                     if DM5.Qr_ProP2ALIQNR.Value=0 then
                        maliq:=DM5.Qr_ProP2ALIQ.Value
                     else
                        maliq :=DM5.Qr_ProP2ALIQNR.Value;
                     mbasen:=DM5.Qr_ProBCINR.Value;
                     micmsn:=DM5.Qr_ProICMSNR.Value;
                     end
                  else if DM5.Qr_ProSITTRI.Value[2] in ['1','6'] then
                     begin
                     maliq :=0;
                     mbasen:=0;
                     micmsn:=0;
                     end
                  else if DM5.Qr_ProSITTRI.Value[2] in ['4'] then
                     begin
                     maliq :=0;
                     mbasen:=0;
                     micmsn:=0;
                     end
                  else
                     begin
                     maliq :=0;
                     mbasen:=0;
                     micmsn:=0;
                     end;
                  if mstatus_doc<>9 then
                     begin
                     if mtipo_doc=mtipo_nfe then
                        begin
                        mNumItem:=mNumItem+1;
                        if not flrsgrava5475(0,mNumItem
//                     DM5.Qr_ProITEM.AsInteger
                               ,maliq,
                               mnumero_doc,
                               DM5.Qr_ProCODPRO .Value,
                               DM5.Qr_ProQTD.Value,
                               DM5.Qr_ProPCOUNIT.Value,
                               DM5.Qr_ProTOTDES.Value,
                               DM5.Qr_ProICMSN.Value,
                               DM5.Qr_ProBASEN.Value,
                               DM5.Qr_ProICMSR.Value,
                               DM5.Qr_ProBASER.Value,
                               DM5.Qr_ProVALIPI.Value,
                               Formatfloat('0000',DM5.Qr_ProCFONF.Value),
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSNSIE.Value,
                               DM5.Qr_ProSITTRI.Value,
                               mdata_doc,
                               pdt1,
                               pdt2,
                               DM5.Qr_ProCODPRO_ORI.AsString,
                               DM5.Qr_ProNOMPRO_ORI.AsString
                               ) then
                         mNumItem:=mNumItem-1;
                         end;
                     end;
                  DM5.Qr_Pro.Next;
                  end;
               end;
// fim
            end;
         end;
{
              lindomar

      if (DM5.Qr_NSNSNUMCUP.Value>0) and (pTipo<>1) and (mnumcup_ant<>DM5.Qr_NSNSNUMCUP.AsFloat) and (DM5.Qr_NSNSCHAVEP.Asfloat>0)  then
         begin
         mNumcup_Ant:=DM5.Qr_NSNSNUMCUP.AsFloat;
         DM5.Qr_ProSoma.Close;
         DM5.Qr_ProSoma.SQL.Clear;
         DM5.Qr_ProSoma.SQL.Add('Select sum(P2TOTDES)  AS TOTDES '
                               +'       ,sum(P2BASEN)  AS BASEN ');
         if pSeparaIcmsR then
            begin
            DM5.Qr_ProSoma.SQL.Add('       ,sum(P2BASER)  AS BASER '
                                  +'       ,sum(P2ICMSR)  AS ICMSR '
                                  +'       ,sum(P2TOTOUT+P2VALIPI)  AS OUTRAS '
                                  +'       ,0  AS VALIPI ');
//                                  +'       ,sum(P2VALIPI)  AS VALIPI ');
            end
         else
            begin
            DM5.Qr_ProSoma.SQL.Add('       ,0  AS BASER '
                                  +'       ,0  AS ICMSR '
                                  +'       ,sum(P2TOTOUT+P2ICMSR+P2VALIPI)  AS OUTRAS '
                                  +'       ,0  AS VALIPI ');
            end;
         DM5.Qr_ProSoma.SQL.Add('       ,sum(P2ICMSN)  AS ICMSN '
//                               +'       ,sum(P2ICMSN)  AS ICMSN '
                               +'       ,sum(P2ICMSNR) AS ICMSNR '
                               +'       ,sum(P2BCINR)  AS BCINR '
                               +'       ,sum(P2ISENTAS) AS ISENTAS '
                               +'       ,sum(ROUND( ( ((P2QTD*P2PRECO)+P2VALIPI)-P2TOTDES),2)) AS TOTLIQ ');
//                               +'       ,sum(P2TOTLIQ-P2DESCRAT) AS TOTLIQ ');

         if DM5.Qr_NSNUMECF.AsFloat>0 then
            begin
            if DM1.Tb_EmpCGC.Value=2777589000164 then
               begin
               DM5.Qr_ProSoma.SQL.Add('        ,P2CFO ');

//               DM5.Qr_ProSoma.SQL.Add(',case when substr(max(p2sit),2,1) in ('+QuotedStr('1')+','+QuotedStr('3')+','+QuotedStr('6')+','+QuotedStr('7')+') then 5405 else 5102 end as P2CFO ');

 //              DM5.Qr_ProSoma.SQL.Add(',DECODE(SUBSTR(TO_CHAR(P2CFO),1,1),:P1,P2CFO-1000,P2CFO) AS P2CFO ');
//               DM5.Qr_ProSoma.ParamByName('P1').AsString:='6';
                end
            else
               DM5.Qr_ProSoma.SQL.Add('        ,P2CFO ');
            DM5.Qr_ProSoma.SQL.Add(',P2CFOSUBECF AS CFONF ')
            end
         else
            begin
            DM5.Qr_ProSoma.SQL.Add(',P2CFO  ');
            DM5.Qr_ProSoma.SQL.Add(',P2CFOSUBECF AS CFONF ')
            end;


         DM5.Qr_ProSoma.SQL.Add(',P2ALIQ,max(P2ALIQNR) P2ALIQNR,P2ALIPI AS ALIPI ');
          if DM5.Qr_NSNUMECF.AsInteger>0 then
             DM5.Qr_ProSoma.Sql.Add(' from '+mTabelaItens_Cupom)
          else
             DM5.Qr_ProSoma.Sql.Add(' from CADP02');
          DM5.Qr_ProSoma.Sql.Add(' where P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                               +' and   P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                               +' and   P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
//                               +' and   P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                               +' and   P2PRECO<>0');

         if DM5.Qr_NSNUMECF.AsFloat>0 then
            DM5.Qr_ProSoma.SQL.Add(' group by P2CFOSUBECF,P2CFO,P2ALIQ,P2ALIPI ') //,P2ALIPI
         else
            DM5.Qr_ProSoma.SQL.Add(' group by P2CFOSUBECF,P2CFO,P2ALIQ,P2ALIPI ');

         DM5.Qr_ProSoma.SQL.Add(' union all ');
         DM5.Qr_ProSoma.SQL.Add(' Select sum(P2STOTDES)  AS TOTDES ');
         DM5.Qr_ProSoma.SQL.Add('     ,sum(P2SBCISSQN)  AS BASEN ');
         DM5.Qr_ProSoma.SQL.Add('       ,0  AS BASER ');
         DM5.Qr_ProSoma.SQL.Add('       ,0  AS ICMSR ');
         DM5.Qr_ProSoma.SQL.Add('       ,0  AS OUTRAS ');
         DM5.Qr_ProSoma.SQL.Add('       ,0  AS VALIPI ');
         DM5.Qr_ProSoma.SQL.Add('       ,sum(P2SVISSQN)  AS ICMSN ');
         DM5.Qr_ProSoma.SQL.Add('       ,sum(P2SVISSQN-P2SVISSQN) AS ICMSNR ');
         DM5.Qr_ProSoma.SQL.Add('       ,0  AS BCINR ');
         DM5.Qr_ProSoma.SQL.Add('       ,0 AS ISENTAS ');
         DM5.Qr_ProSoma.SQL.Add('       ,sum((P2SQTD*P2SPRECO)-(P2STOTDES+P2SDESCRAT)) AS TOTLIQ ');
         DM5.Qr_ProSoma.SQL.Add('       ,P2SCFO,P2SALIQ,0 as P2ALIQNR,0 AS ALIPI ');
         DM5.Qr_ProSoma.Sql.Add('       ,P2SCFO AS CFONF ');

         DM5.Qr_ProSoma.SQL.Add(' from CADP02S ');
         DM5.Qr_ProSoma.SQL.Add(' where P2SCODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                               +' and   P2SLOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                               +' and   P2SCHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                               +' and   P2SORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                               +' and   P2SPRECO<>0');
         DM5.Qr_ProSoma.SQL.Add(' group by P2SCFO,P2SALIQ ');
         TRY
            DM5.Qr_ProSoma.Open;
         except
           DM5.Qr_ProSoma.sql.savetofile('c:\sql02.txt');
           end;

         mtotalnota:=0;
         While not DM5.Qr_ProSoma.Eof do
            begin
            mtotalnota:=mtotalnota+DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaICMSR.Value;
            DM5.Qr_ProSoma.Next;
            end;
         DM5.Qr_ProSoma.First;
         if DM5.Qr_NSNSNUMERO.AsFloat<>0 then
            mdifArred:=mtotalnota-DM5.Qr_NSNSTOTNOTA.Value
         else
            mdifArred:=0;

         mfrete:=DM5.Qr_NSNSFRETE.Value;
         mvlrcont:=0;
         misentas:=0;
         moutras :=0;
         mqtd:=0;
         While not DM5.Qr_ProSoma.Eof do
            begin
            if DM5.Qr_ProSomaP2CFO.AsString='5404' then
              mcfonf:='5405'
            else
              mcfonf:=DM5.Qr_ProSomaP2CFO.AsString;
            mcfonf:=insere(mcfonf,'0',4);
            if ( (ValInt(mcfonf)<5000) and (valint(mcfonf)>1000) ) then
               begin
               FMensagem('Existe nota de Saida com CFO de Nota de Entrada'+#13
                         +'CFOP da Nota: '+mcfonf+' Numero da Nota Fiscal: '+DM5.Qr_NSNSNUMERO.AsString+' Cupom: '+DM5.Qr_NSNSNUMCUP.AsString+#13
                         +'Data: '+FormatDatetime(fdt2, DM5.Qr_NSNSDTEMIS.Value)+' Chave: '+DM5.Qr_NSNSCHAVEP.AsString,0,['0'],0);
               end;

            mqtd:=mqtd+1;
            mvlrcont:=DM5.Qr_ProSomaTOTLIQ.Value;
            mvlrcont:=mvlrcont+mfrete;
// novo lindomar
            if DM5.Qr_ProSomaP2ALIQ.Value>0 then
               mAliq:=DM5.Qr_ProSomaP2ALIQ.Value
             else
               mAliq:=DM5.Qr_ProSomaP2ALIQNR.Value;
            if (mvlrcont>0) and (mvlrcont=DM5.Qr_ProSomaISENTAS.Value) then
               mAliq:=0;
            if maliq<>0 then
               begin
               if DM5.Qr_ProSomaICMSN.Value=0 then
                  maliq:=0;
               end;
// fim do novo

            mqtd:=1; // alterado lindomar
            flrsgravalrs(1,pTipo,mqtd,Pmodelo,DM5.Qr_NSnsfretepc.AsInteger,
                               mAliq,
                               mnumero_doc,
                               mstatus_doc,
                               mvlrcont-mdifArred, // Valor Contabil
                               DM5.Qr_ProSomaTOTLIQ.Value, // Valor Contabil
                               DM5.Qr_ProSomaICMSN.Value+DM5.Qr_ProSomaICMSNR.Value,
                               DM5.Qr_ProSomaISENTAS.Value,
                               DM5.Qr_ProSomaOUTRAS.Value,  // outras
                               DM5.Qr_ProSomaBASEN.Value+DM5.Qr_ProSomaBCINR.Value,
                               DM5.Qr_ProSomaTOTLIQ.Value, // pis cofins
                               DM5.Qr_NSNSCHAVEP.Value,
                               DM5.Qr_NSNSORDEMP.Value,
                               mcfonf,
                               mtipo_doc,
                               'ICMS',
                               DM5.Qr_NSuf.Value,
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               'P',
                               DM5.Qr_NScgc.Value,
                               DM5.Qr_NSinscricao.Value,
                               ' ', // observaçoes
                               ' ', // x usado somente em entradas
                               ' ', // Codigo Contabil
                               mdata_doc,
                               mdata_doc);
            mdifArred:=0;
            if DM5.Qr_NSNSSITCUP.Value=9 then
               break;
            mvlrcont:=0;
            mfrete  :=0;
            DM5.Qr_ProSoma.Next;
            end;
         if PTipo=1 then
            begin
            DM5.Qr_Pro.Close;
            DM5.Qr_Pro.SQL.Clear;
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(1,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');

            DM5.Qr_Pro.SQL.Add('Select  P2ITEM    AS ITEM '
                           +'       ,P2QTD     AS QTD '
                           +'       ,P2PRECO   AS PCOUNIT '
                           +'       ,P2CODPRO  AS CODPRO '
                           +'        ,P2TOTDES  AS TOTDES ');

            if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2) and (DM5.Qr_NSNSNUMERO.AsFloat>0) then
               begin
               DM5.Qr_Pro.SQL.Add('       ,0  AS BASEN '
                                 +'       ,0  AS ICMSN ');
               end
            else
               begin
               DM5.Qr_Pro.SQL.Add('       ,sum(P2BASEN)  AS BASEN '
                                 +'       ,sum(P2ICMSN)  AS ICMSN ');
               end;
            DM5.Qr_Pro.SQL.Add('        ,P2BASER   AS BASER '
                           +'        ,P2ICMSNR  AS ICMSNR '
                           +'        ,P2BCINR   AS BCINR '
                           +'        ,P2ICMSR   AS ICMSR '
                           +'        ,P2ALIPI   AS ALIPI '
                           +'        ,0  AS VALIPI '
//                           +'        ,P2VALIPI  AS VALIPI '
                           +'        ,P2ISENTAS AS ISENTAS '
                           +'        ,DECODE(P2TOTOUT,0,(ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2)-');
            if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)  and (DM5.Qr_NSNSNUMERO.AsFloat>0) then
                DM5.Qr_Pro.SQL.Add('0 ')
            else
                DM5.Qr_Pro.SQL.Add('P2BASEN');
            DM5.Qr_Pro.SQL.Add('-P2BCINR),P2TOTOUT) AS OUTRAS '
                           +'        ,(ROUND( ( ((P2QTD*P2PRECO)+P2VALIPI)-P2TOTDES),2)) AS TOTLIQ, ');
//                           +'        ,(P2TOTLIQ-P2DESCRAT) AS TOTLIQ '

            if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
               DM5.Qr_Pro.SQL.Add('TO_CHAR(P2CSOSN) AS SITTRI')
            else
              DM5.Qr_Pro.SQL.Add('P2SIT AS SITTRI');




           if DM5.Qr_NSNUMECF.AsFloat>0 then
              begin
              if DM1.Tb_EmpCGC.Value=2777589000164 then
                 begin
                 DM5.Qr_Pro.SQL.Add(',case when substr(p2sit,2,1) in ('+QuotedStr('1')+','+QuotedStr('3')+','+QuotedStr('6')+','+QuotedStr('7')+') then 5405 else 5102 end as P2CFO ');

//                 DM5.Qr_Pro.SQL.Add(',DECODE(SUBSTR(TO_CHAR(P2CFO),1,1),'+QuotedStr('6')+':P1,P2CFO-1000,P2CFO) AS P2CFO ');
//                 DM5.Qr_Pro.ParamByName('P1').AsString:='6';
                 end
              else
                 DM5.Qr_Pro.SQL.Add('        ,P2CFO ');
              DM5.Qr_Pro.SQL.Add(',P2CFOSUBECF AS CFONF ')
              end
           else
              begin
              DM5.Qr_Pro.SQL.Add(',P2CFO AS CFONF ');
              DM5.Qr_Pro.SQL.Add(',P2CFOSUBECF AS CFONF ')
              end;

         DM5.Qr_Pro.SQL.Add(',P2ALIQ,P2ALIQNR '
                           +'       ,PDCODPRO AS PDCODPRO '
                           +'       ,PDNOME   AS PDNOME '
                           +'       ,PDCLAS   AS PDCLAS'
                           +'       ,PDUND    AS PDUND'
                           +'       ,PDSIT    AS PDSIT'
                           +'       ,PDTABICM AS PDTABICM'
                           +'       ,PDPRECO1 AS PDPRECO1'
                           +'       ,PDIPI   AS PDIPI'
                           +'       ,PDMARCA AS PDMARCA'
                           +'       ,PDCODNCM AS PDCODNCM');
         DM5.Qr_Pro.Sql.add(',case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end as NOMPRO_ORI '
                       +'       ,DECODE(P2CODPRO_ORI,null,to_char(PDCODPRO),'+chr(39)+' '+chr(39)+',to_char(PDCODPRO),'
                      +' P2CODPRO_ORI) as CODPRO_ORI ');
        if DM5.Qr_NSNUMECF.AsInteger>0 then
           DM5.Qr_Pro.SQL.Add(' from '+mTabelaItens_Cupom)
         else
           DM5.Qr_Pro.SQL.Add(' from CADP02');

         DM5.Qr_Pro.SQL.add(iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                           +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +'   P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                           +' and   P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                           +' and   P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
//                           +' and   P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                           +' and   P2PRECO<>0'
                           +' Order by P2ITEM ');
            try
               DM5.Qr_Pro.Open;
            except
               DM5.Qr_Pro.sql.savetofile('c:\sql.txt');
               end;

            if flqr1('CFSERIE','CF','CADECF','N','CFCAIXA',DM5.Qr_NSNSCODECF.AsString) then
               mSerieECF:=DM1.Query1.Fields[0].AsString
            else
               mSerieECF:=' ';
            While not DM5.Qr_Pro.Eof do
               begin
               mbasen:=0;
               micmsn:=0;
               if DM5.Qr_ProICMSN.Value>0 then
                  begin
                  mcinst:=Formatfloat('0000',DM5.Qr_ProP2ALIQ.Value*100);
                  mbasen:=DM5.Qr_ProBASEN.Value;
                  micmsn:=DM5.Qr_ProICMSN.Value;
                  end
               else if DM5.Qr_ProICMSNR.Value>0 then
                  begin
                  mcinst:=Formatfloat('0000',DM5.Qr_ProP2ALIQNR.Value*100);
                  mbasen:=DM5.Qr_ProBCINR.Value;
                  micmsn:=DM5.Qr_ProICMSNR.Value;
                  end
               else if DM5.Qr_ProSITTRI.Value[2] in ['1','6'] then
                  begin
                  mcinst:='F';
                  mbasen:=0;
                  micmsn:=0;
                  end
               else if DM5.Qr_ProSITTRI.Value[2] in ['4'] then
                  begin
                  mcinst:='I';
                  mbasen:=0;
                  micmsn:=0;
                  end
               else
                  begin
                  mcinst:='N';
                  mbasen:=0;
                  micmsn:=0;
                  end;
               DM5.Qr_Pro.Next;
               end;
            end;
         end;
}        
      DM5.Qr_NS.Next;

      end;

   end

else  // calculo antigo sem o sintegra novo
   begin
   While not DM5.Qr_NS.Eof do
      begin


      if (fsonumero(DM5.Qr_NSNSCFO1.Value)=0) and (fsonumero(DM5.Qr_NSNSCFO2.Value)=0) then
         begin
         DM5.Qr_NS.Next;
         Continue;
         end;


      if DM5.Qr_NSNSNFCE_NUMERO.AsFloat>0  then
         begin
         mdata_doc   :=DM5.Qr_NSNSNFCE_DATA.AsDateTime;
         mnumero_doc :=DM5.Qr_NSNSNFCE_NUMERO.AsInteger;
         mserie_doc :=DM5.Qr_NSNSNFCE_SERIE.AsString;
         mstatus_doc    :=DM5.Qr_NSNSNFCE_SITUACAO.AsInteger;
         mmodelo_doc:=DM5.Qr_NSNSNFCE_MODELO.AsString;
         mtipo_doc  :='NFCE';
         end
      else if DM5.Qr_NSNUMECF.AsInteger>0 then
         begin
         mdata_doc   :=DM5.Qr_NSNSDATCUP.AsDateTime;
         mnumero_doc :=DM5.Qr_NSNUMECF.AsInteger;
         mserie_doc :=DM5.Qr_NSNSSERIE.AsString;
         mstatus_doc    :=DM5.Qr_NSNSSITCUP.AsInteger;
         mmodelo_doc:=DM5.Qr_NSNSMODECF.AsString;
         mtipo_doc  :='CF';
         end
      else
         begin
         mdata_doc   :=DM5.Qr_NSNSDTEMIS.AsDateTime;
         mnumero_doc :=DM5.Qr_NSNSNUMERO.AsInteger;
         mserie_doc :=DM5.Qr_NSNSSERIE.AsString;
         mmodelo_doc:=DM5.Qr_NSNSMODELO.AsString;
         mstatus_doc    :=DM5.Qr_NSNSSTATUS.AsInteger;
         mTipo_Doc  :=mtipo_nfe;

         end;




      mvlrcont:=DM5.Qr_NSNSTOTNOTA.Value;
      if (DM5.Qr_NSNSTOTNOR.Value+DM5.Qr_NSNSTOTISEN.Value+DM5.Qr_NSNSFRETE.Value
         +DM5.Qr_NSNSICMS_BCFRE.Value+DM5.Qr_NSNSICMS_BCSEG.Value
         +DM5.Qr_NSNSICMS_BCOUTD.Value+DM5.Qr_NSNSICMS_BCIPI.Value)>0 then
         begin
         mvlrcont:=(DM5.Qr_NSNSTOTNOR.Value+DM5.Qr_NSNSTOTISEN.Value+DM5.Qr_NSNSFRETE.Value
                  +DM5.Qr_NSNSTARBAN.Value);

         mcfonf:=IIF(DM5.Qr_NSNSCFO1.IsNull,
                             FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO2.Value),
                          FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO1.Value));
         mcfonf:=fdeixanum(mcfonf);
         DM5.tb_lrs.Append;
         DM5.tb_lrslrs_TIPO.Value   :=01;
         DM5.tb_lrslrs_ALIQ.Value   :=DM5.Qr_NSNSALIQ.Value;
         DM5.tb_lrslrs_CFO.Value    :=FormatFloat('0', ValFloat(mcfonf));
         DM5.tb_lrslrs_Dia.Value    :=FormatDateTime('dd',mdata_doc);
         DM5.tb_lrslrs_ESP.Value    :='NF';
         DM5.tb_lrslrs_ICMIPI.Value :='ICMS';
         DM5.tb_lrslrs_UF.Value     :=DM5.Qr_NSuf.Value;
         DM5.tb_lrslrs_Numero.Value :=FormatFloat('000000',mnumero_doc);
         DM5.tb_lrslrs_SERIE.Value  :=mserie_doc;
         DM5.tb_lrslrs_STATUS.Value :=mstatus_doc;
         if Pmodelo=1 then
            begin
            DM5.tb_lrslrs_VlrContabil.Value:=mvlrcont;
            mbase:=DM5.Qr_NSNSBASENI.Value+DM5.Qr_NSNSBASENP.Value+DM5.Qr_NSNSBASENN.Value
                  +DM5.Qr_NSNSICMS_BCFRE.Value+DM5.Qr_NSNSICMS_BCSEG.Value
                  +DM5.Qr_NSNSICMS_BCOUTD.Value+DM5.Qr_NSNSICMS_BCIPI.Value;
            DM5.tb_lrslrs_ICMSN.Value   :=DM5.Qr_NSNSICMSNI.Value+DM5.Qr_NSNSICMSNP.Value+DM5.Qr_NSNSICMSNP.Value
                 +DM5.Qr_NSNSICMS_VLFRE.Value+DM5.Qr_NSNSICMS_VLSEG.Value
                 +DM5.Qr_NSNSICMS_VLOUTD.Value+DM5.Qr_NSNSICMS_VLIPI.Value;
            DM5.tb_lrslrs_ISENTAS.Value :=DM5.Qr_NSNSTOTISEN.Value;
            DM5.tb_lrslrs_OUTRAS.Value  :=DM5.Qr_NSNSTOTOUT.Value;
            mvlrcont                :=0;

            mvlrcont:=DM5.Qr_NSNSTOTNOTA.Value-(DM5.Qr_NSNSTOTNOR.Value+DM5.Qr_NSNSTOTISEN.Value+DM5.Qr_NSNSFRETE.Value
                     +DM5.Qr_NSNSICMS_BCFRE.Value+DM5.Qr_NSNSICMS_BCSEG.Value
                     +DM5.Qr_NSNSICMS_BCOUTD.Value+DM5.Qr_NSNSICMS_BCIPI.Value);


            end
         else
            begin
            DM5.tb_lrslrs_VlrContabil.Value:=DM5.Qr_NSNSTOTISEN.Value+DM5.Qr_NSNSTOTNOR.Value+DM5.Qr_NSNSFRETE.Value
                                        +DM5.Qr_NSNSTARBAN.Value;
            mbase:=DM5.Qr_NSNSBASEN.Value;
            DM5.tb_lrslrs_ICMSN.Value   :=DM5.Qr_NSNSICMSN.Value;
            DM5.tb_lrslrs_ISENTAS.Value:=DM5.Qr_NSNSTOTISEN.Value;
            DM5.tb_lrslrs_OUTRAS.Value  :=DM5.Qr_NSNSTOTOUT.Value;
            end;

         mvlrcontres:=DM5.Qr_NSNSTOTISEN.Value+DM5.Qr_NSNSTOTNOR.Value+DM5.Qr_NSNSFRETE.Value+DM5.Qr_NSNSTARBAN.Value;
         mvlrcontres:=DM5.Qr_NSNSTOTNOTA.Value-(DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value)
                                              -(DM5.Qr_NSNSTOTRET.Value);

//lindomaragora
//         mvlrcont   :=DM5.Qr_NSNSTOTNOTA.Value-(DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value)
//                                              -(DM5.Qr_NSNSTOTRET.Value);
         DM5.tb_lrslrs_BASEN.Value:=mbase;
         DM5.tb_lrslrs_PIS_COF.Value :=DM5.Qr_NSNSPISCOFN.Value;
         if ptipo=1 then
            begin
           if ((valfloat(mcfonf)>1349) and (valfloat(mcfonf)<1400)) or
              ((valfloat(mcfonf)>2349) and (valfloat(mcfonf)<2400)) then
               begin
               flrsgrava70(0,0,DM5.Qr_NSNSFRETEPC.AsInteger,DM5.tb_lrslrs_NUMERO.AsFloat,
                       mstatus_doc,
                       DM5.tb_lrslrs_VLRCONTABIL.Value,
                       DM5.tb_lrslrs_BASEN.Value,
                       DM5.tb_lrslrs_ICMSN.Value,
                       DM5.tb_lrslrs_ISENTAS.Value,
                       DM5.tb_lrslrs_OUTRAS.Value,
                       DM5.tb_lrslrs_ALIQ.Value,
                       ValFloat(mcfonf),
                       DM5.tb_lrslrs_UF.Value,
                       mserie_doc,
                       DM5.Qr_NSNSSUBSER.Value,
                       mmodelo_doc,
                       'P',
                       fdeixanum(DM5.Qr_NScgc.Value),
                       DM5.Qr_NSinscricao.Value,
                       ' ',
                       mdata_doc);
               end
           else  if mmodelo_doc='65' then
               begin
               flrsgrava61(0,0,mnumero_doc,
                       mstatus_doc,
                       DM5.tb_lrslrs_VLRCONTABIL.Value,
                       DM5.tb_lrslrs_BASEN.Value,
                       DM5.tb_lrslrs_ICMSN.Value,
                       DM5.tb_lrslrs_ISENTAS.Value,
                       DM5.tb_lrslrs_OUTRAS.Value,
                       DM5.tb_lrslrs_ALIQ.Value,
                       ValFloat(mcfonf),
                       DM5.tb_lrslrs_UF.Value,
                       mserie_doc,
                       DM5.Qr_NSNSSUBSER.Value,
                       mmodelo_doc,
                       'P',
                       fdeixanum(DM5.Qr_NScgc.Value),
                       DM5.Qr_NSinscricao.Value,
                       ' ',
                      mdata_doc);
               end

           else
               begin
               if mtipo_doc=mtipo_nfe then

                  begin
                  flrsgrava50(0,0,mnumero_doc,
                       mstatus_doc,
                       DM5.tb_lrslrs_VLRCONTABIL.Value,
                       DM5.tb_lrslrs_BASEN.Value,
                       DM5.tb_lrslrs_ICMSN.Value,
                       DM5.tb_lrslrs_ISENTAS.Value,
                       DM5.tb_lrslrs_OUTRAS.Value,
                       DM5.tb_lrslrs_ALIQ.Value,
                       ValFloat(mcfonf),
                       DM5.tb_lrslrs_UF.Value,
                       mserie_doc,
                       DM5.Qr_NSNSSUBSER.Value,
                       mmodelo_doc,
                       'P',
                       fdeixanum(DM5.Qr_NScgc.Value),
                       DM5.Qr_NSinscricao.Value,
                       ' ',
                       mdata_doc);
                   end;
               end;

            end;
         if mstatus_doc=9 then
            begin
            DM5.tb_lrslrs_ALIQ.Value   :=0;
            DM5.tb_lrslrs_BASEN.Value  :=0;
            DM5.tb_lrslrs_CFO.Value    :='0';
            DM5.tb_lrslrs_ICMSN.Value  :=0;
            DM5.tb_lrslrs_ISENTAS.Value:=0;
            DM5.tb_lrslrs_OUTRAS.Value :=0;
            DM5.tb_lrslrs_VlrContabil.Value:=0;
            DM5.tb_lrslrs_STATUS.Value :=9;
            DM5.tb_lrslrs_PIS_COF.Value:=0;
            DM5.tb_lrslrs_OBSERV.Value :='Cancelada';
            DM5.tb_lrs.Post;
            DM5.Qr_NS.Next;
            Continue;
            end;
         if mstatus_doc=8 then
            begin
            DM5.tb_lrslrs_ALIQ.Value   :=0;
            DM5.tb_lrslrs_BASEN.Value  :=0;
            DM5.tb_lrslrs_CFO.Value    :='0';
            DM5.tb_lrslrs_ICMSN.Value  :=0;
            DM5.tb_lrslrs_ISENTAS.Value:=0;
            DM5.tb_lrslrs_OUTRAS.Value :=0;
            DM5.tb_lrslrs_VlrContabil.Value:=0;
            DM5.tb_lrslrs_STATUS.Value :=8;
            DM5.tb_lrslrs_PIS_COF.Value:=0;
            DM5.tb_lrslrs_OBSERV.Value :='Inutilizada';
            DM5.tb_lrs.Post;
            DM5.Qr_NS.Next;
            Continue;
            end;

      //Sumario cfo
         if (ptipo=0) or (ptipo=1) then
            begin
            if DM5.Tb_RCFOP.FindKey([mcfonf,DM5.tb_lrslrs_ALIQ.Value]) then
//         if flcadrcfo(0,mtmp_RCfo,mcfo,DM5.tb_lrslrs_ALIQ.Value) then
               DM5.Tb_RCFOP.Edit
            else
               begin
               flcadcfo(1,0,mcfonf);
               DM5.Tb_RCFOP.Append;
               DM5.Tb_RCFOPRCFOP_CFO.Value        :=FormatFloat('0000',fsonumero(mcfonf));
               DM5.Tb_RCFOPRCFOP_ALIQ.Value       :=DM5.tb_lrslrs_ALIQ.Value;
               DM5.Tb_RCFOPRCFOP_CFONOME.Value    :=DM1.Tb_CfoCFNOME.Value;
               DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value:=0;
               DM5.Tb_RCFOPRCFOP_BASE.Value       :=0;
               DM5.Tb_RCFOPRCFOP_ICMS.Value       :=0;
               DM5.Tb_RCFOPRCFOP_BASER.Value      :=0;
               DM5.Tb_RCFOPRCFOP_ICMSR.Value      :=0;
               DM5.Tb_RCFOPRCFOP_ISENTAS.Value    :=0;
               DM5.Tb_RCFOPRCFOP_OUTRAS.Value     :=0;
               DM5.Tb_RCFOPRCFOP_PIS.Value        :=0;
               end;
            DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value:=DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value+DM5.tb_lrslrs_VlrContabil.Value;
//            DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value:=DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value+mvlrcontres;
            DM5.Tb_RCFOPRCFOP_BASE.Value       :=DM5.Tb_RCFOPRCFOP_Base.Value       +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RCFOPRCFOP_Icms.Value       :=DM5.Tb_RCFOPRCFOP_ICMS.Value       +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RCFOPRCFOP_ISENTAS.Value    :=DM5.Tb_RCFOPRCFOP_Isentas.Value    +DM5.tb_lrslrs_ISENTAS.Value;
            DM5.Tb_RCFOPRCFOP_OUTRAS.Value     :=DM5.Tb_RCFOPRCFOP_OUTRAS.Value     +DM5.tb_lrslrs_OUTRAS.Value;
            DM5.Tb_RCFOPRCFOP_PIS.Value        :=DM5.Tb_RCFOPRCFOP_PIS.Value        +DM5.tb_lrslrs_PIS_COF.Value;
            DM5.Tb_RCFOP.Post;
      // Sumario uf
            if DM5.Tb_RUF.FindKey([DM5.tb_lrslrs_UF.Value]) then
//         if flcadruf(0,mtmp_RUF,DM5.tb_lrslrs_UF.Value) then
               DM5.Tb_RUF.Edit
            else
               begin
               DM5.Tb_RUF.Append;
               DM5.Tb_RUFruf_UF.Value         :=DM5.tb_lrslrs_UF.Value;
               DM5.Tb_RUFruf_VlrContabil.Value:=0;
               DM5.Tb_RUFruf_Base.Value       :=0;
               DM5.Tb_RUFruf_Icms.Value       :=0;
               DM5.Tb_RUFruf_Baser.Value      :=0;
               DM5.Tb_RUFruf_Icmsr.Value      :=0;
               DM5.Tb_RUFruf_Isentas.Value    :=0;
               DM5.Tb_RUFruf_Outras.Value     :=0;
               DM5.Tb_RUFruf_PIS.Value        :=0;
               end;
            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+DM5.tb_lrslrs_VLRCONTABIL.Value;
//            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+mvlrcontres;
            DM5.Tb_RUFruf_Base.Value       :=DM5.Tb_RUFruf_Base.Value       +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RUFruf_Icms.Value       :=DM5.Tb_RUFruf_Icms.Value       +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RUFruf_Isentas.Value    :=DM5.Tb_RUFruf_Isentas.Value    +DM5.tb_lrslrs_Isentas.Value;
            DM5.Tb_RUFruf_Outras.Value     :=DM5.Tb_RUFruf_Outras.Value     +DM5.tb_lrslrs_Outras.Value;
            DM5.Tb_RUFruf_PIS.Value        :=DM5.Tb_RUFruf_PIS.Value        +DM5.tb_lrslrs_PIS_COF.Value;
            DM5.Tb_RUF.Post;
            end
         else if ptipo=2 then
            begin

            if DM5.Tb_RsCFO.FindKey([valint(mcfonf)]) then
//        if flcadrscfo(0,mtmp_RsCfo,mcfo) then
               DM5.Tb_RsCFO.Edit
            else
               begin

               flcadcfo(1,0,mcfonf);
               DM5.Tb_RSCFO.Append;
               DM5.Tb_RsCFOCFO.Value    :=ValInt(mcfonf);
               DM5.Tb_RsCFOTOTNOTA.Value:=0;
               DM5.Tb_RsCFOBASEN.Value  :=0;
               DM5.Tb_RsCFOICMSN.Value  :=0;
               DM5.Tb_RsCFOBASER.Value  :=0;
               DM5.Tb_RsCFOICMSR.Value  :=0;
               DM5.Tb_RsCFOISENTAS.Value:=0;
               DM5.Tb_RsCFOOUTRAS.Value :=0;
               DM5.Tb_RsCFOIPI.Value    :=0;
               end;
            DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+DM5.tb_lrslrs_VLRCONTABIL.Value;
            DM5.Tb_RsCFOBASEN.Value  :=DM5.Tb_RsCFOBASEN.Value  +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RsCFOICMSN.Value  :=DM5.Tb_RsCFOICMSN.Value  +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RsCFOISENTAS.Value:=DM5.Tb_RsCFOISENTAS.Value+DM5.tb_lrslrs_OUTRAS.Value;
            DM5.Tb_RsCFO.Post;

      // Sumario por data
            if DM5.Tb_RSint.FindKey([mdata_doc]) then
//         if flcadrsint(0,mtmp_RSint,DM5.Qr_NSNSDTEMIS.Value) then
               DM5.Tb_RSint.Edit
            else
               begin
               DM5.Tb_RSint.Append;
               DM5.Tb_RSintRS_DATA.Value:=mdata_doc;
               DM5.Tb_RSintRS_TIPO.Value:='A';
               DM5.Tb_RSintRS_TOTNOTA.Value:=0;
               DM5.Tb_RSintRS_BASEN.Value  :=0;
               DM5.Tb_RSintRS_ICMSN.Value  :=0;
               DM5.Tb_RSintrs_BASER.Value  :=0;
               DM5.Tb_RSintrS_icmsr.Value  :=0;
               DM5.Tb_RSintRS_ISENTAS.Value:=0;
               DM5.Tb_RSintRS_OUTRAS.Value :=0;
               DM5.Tb_RSintRS_IPI.Value    :=0;
               end;
            DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+DM5.tb_lrslrs_VLRCONTABIL.Value;
            DM5.Tb_RSintRS_BASEN.Value  :=DM5.Tb_RSintRS_BASEN.Value  +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RSintRS_ICMSN.Value  :=DM5.Tb_RSintRS_ICMSN.Value  +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RSintRS_ISENTAS.Value:=DM5.Tb_RSintRS_ISENTAS.Value+DM5.tb_lrslrs_ISENTAS.Value;
            DM5.Tb_RSintRS_OUTRAS.Value :=DM5.Tb_RSintRS_OUTRAS.Value +DM5.tb_lrslrs_OUTRAS.Value;
            DM5.Tb_RSint.Post;
      // Registro tipo 54 e 75 para sintegra;
            if mstatus_doc<>9 then
               begin
               DM5.Qr_PSint.Close;
               DM5.Qr_Psint.SQL.Clear;
               DM5.Qr_PSint.SQL.Add('Select P2ITEM,P2CODPRO,P2QTD,P2PRECO,P2TOTDES,');

               if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)  and (DM5.Qr_NSNSNUMERO.AsFloat>0) then
                  DM5.Qr_PSint.SQL.Add('0 ')
               else
                  DM5.Qr_PSint.SQL.Add('P2BASEN');
               DM5.Qr_PSint.SQL.Add(',P2BASER,P2ALIQ,P2ALIPI,P2ALIQNR,P2LISTA,P2TABELA');
               if (DM5.Qr_NSNUMECF.AsFloat>0) or (DM5.Qr_NSNSNFCE_NUMERO.Asfloat>0) then

//               if DM5.Qr_NSNUMECF.AsFloat>0 then
                  begin
                  if DM1.Tb_EmpCGC.Value=2777589000164 then
                     begin
                     DM5.Qr_PSint.SQL.Add(',case when substr(p2sit,2,1) in ('+QuotedStr('1')+','+QuotedStr('3')+','+QuotedStr('6')+','+QuotedStr('7')+') then 5405 else 5102 end as P2CFO ');

//                     DM5.Qr_PSint.SQL.Add(',DECODE(SUBSTR(TO_CHAR(P2CFO),1,1),:P1,P2CFO-1000,P2CFO) AS P2CFO ');
//                     DM5.Qr_PSint.ParamByName('P1').AsString:='6';
                     end
                  else
                     DM5.Qr_PSint.SQL.Add('        ,P2CFO ');
                  DM5.Qr_PSint.SQL.Add(',P2CFOSUBECF AS CFONF ')
                  end
               else
                  begin
                  DM5.Qr_PSint.SQL.Add(',P2CFO AS CFONF ');
                  DM5.Qr_PSint.SQL.Add(',P2CFOSUBECF AS CFONF ')
                  end;


               DM5.Qr_PSint.Sql.add(',case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end as NOMPRO_ORI '
                       +'       ,DECODE(P2CODPRO_ORI,null,to_char(PDCODPRO),'+chr(39)+' '+chr(39)+',to_char(PDCODPRO),'
                       +' P2CODPRO_ORI) as CODPRO_ORI ');


               DM5.Qr_PSint.SQL.add(' ,P2ICMSN,P2ICMSNR,P2ICMSR,P2VALIPI, '
                                  +' P2SIT, PDNOME,PDUND ');
               if DM5.Qr_NSNUMECF.AsInteger>0 then
                  DM5.Qr_PSint.SQL.Add(' from '+mTabelaItens_Cupom)
               else
                  DM5.Qr_PSint.SQL.Add(' from CADP02');
               DM5.Qr_PSint.SQL.Add(',CADPRO where ');
               if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
                  DM5.Qr_PSint.SQL.Add(' P2CODEMP='+IntTostr(codemp)+' and ');
               IF NOT dm1.Qr_TID.Locate('TINOME','CADPRO',[]) then
                  DM5.Qr_Psint.SQL.Add(' PDCODEMP=P2CODEMP and');
               DM5.Qr_Psint.SQL.Add(' P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                                   +' and P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                                   +' and P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                                   +' and P2CFO=0'+IntToStr(ValInt(mcfonf))
                                   +' and   P2PRECO<>0'
                                   +' and PDCODPRO=P2CODPRO ');
               try
                  DM5.Qr_PSint.Open;
               except
                  DM5.Qr_PSint.sql.savetofile('c:\sql.txt');
                  end;


               mNumItem:=0;
               While not DM5.Qr_Psint.Eof do
                  begin
                  if mtipo_doc=mtipo_nfe then
                      begin
                     mNumItem:=mNumItem+1;
                     if not flrsgrava5475(0,
                               mNumItem,
//                  DM5.Qr_PSintP2ITEM.AsInteger,
                               DM5.Qr_PSintP2ALIQ.Value,
                               mnumero_doc,
                               DM5.Qr_PSintP2CODPRO.Value,
                               DM5.Qr_PSintP2QTD.Value,
                               DM5.Qr_PSintP2PRECO.Value,
                               DM5.Qr_PSintP2TOTDES.Value,
                               DM5.Qr_PSintP2ICMSN.Value,
                               DM5.Qr_PSintP2BASEN.Value,
                               DM5.Qr_PSintP2ICMSR.Value,
                               DM5.Qr_PSintP2BASER.Value,
                               DM5.Qr_PSintP2VALIPI.Value,
                               FormatFloat('0000',valFloat(mcfonf)),
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               fdeixanum(DM5.Qr_NScgc.Value),
                               DM5.Qr_NSinscricao.Value,
                               dm5.Qr_PSintP2SIT.Value,
                               mdata_doc,
                               pdt1,
                               pdt2,
                               DM5.Qr_PSintCODPRO_ORI.AsString,
                               DM5.Qr_PSintNOMPRO_ORI.AsString
                               ) then
                      mNumItem:=mNumItem-1;
                   end;

                  DM5.Qr_PSint.Next;
                  end;
               end;
            end;
         if Pmodelo=1 then
            begin
            DM5.tb_lrs.Append;
            DM5.tb_lrslrs_TIPO.Value   :=02;
            DM5.tb_lrslrs_ALIQ.Value   :=0;
            DM5.tb_lrslrs_CFO.Value    :=Formatfloat('0',ValFloat(mcfonf));
            DM5.tb_lrslrs_Dia.Value    :=FormatDateTime('dd',mdata_doc);
            DM5.tb_lrslrs_ESP.Value    :='NF';
            DM5.tb_lrslrs_ICMIPI.Value :='IPI';
            DM5.tb_lrslrs_UF.Value     :=DM5.Qr_NSuf.Value;
            DM5.tb_lrslrs_Numero.Value :=FormatFloat('000000',mnumero_doc);
            DM5.tb_lrslrs_SERIE.Value  :=mserie_doc;
            DM5.tb_lrslrs_STATUS.Value :=mstatus_doc;
            DM5.tb_lrslrs_VlrContabil.Value:=mvlrcont;
//            DM5.tb_lrslrs_VlrContabil.Value:=0;
            mvlrcont                 :=0;
            DM5.tb_lrslrs_BASEN.Value    :=0;
            DM5.tb_lrslrs_ICMSN.Value    :=0;
            DM5.tb_lrslrs_OUTRAS.Value   :=0;
            DM5.tb_lrslrs_ISENTAS.Value  :=DM5.Qr_NSNSBASENI.Value
                                      +DM5.Qr_NSNSBASENP.Value
                                     +DM5.Qr_NSNSBASENN.Value
                                     +DM5.Qr_NSNSTOTISEN.Value
                                     +DM5.Qr_NSNSTOTOUT.Value
                                     +DM5.Qr_NSNSTARBAN.Value
                                     +DM5.Qr_NSNSFRETE.Value;

            DM5.tb_lrslrs_PIS_COF.Value :=0;
            DM5.tb_lrs.Post;
            end;
         end;



// fim do icms normal

// Produtos Retidos
//   if (DM5.Qr_NSNSBASERI.Value+DM5.Qr_NSNSBASERP.Value+DM5.Qr_NSNSBASERP.Value)>0 then
      if DM5.Qr_NSNSTOTRET.Value>0 then
         begin
         mcfonf:=IIF(DM5.Qr_NSNSCFO2.IsNull,
                             FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO1.Value),
                          FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO2.Value));
         mcfonf:=fdeixanum(mcfonf);

         DM5.tb_lrs.Append;
         DM5.tb_lrslrs_TIPO.Value   :=03;
         DM5.tb_lrslrs_UF.Value     :=DM5.Qr_NSuf.Value;
         DM5.tb_lrslrs_ALIQ.Value   :=DM5.Qr_NSNSALIQ2.Value;
         DM5.tb_lrslrs_PIS_COF.Value:=DM5.Qr_NSNSPISCOFR.Value;
         DM5.tb_lrslrs_OUTRAS.Value :=0;
         DM5.tb_lrslrs_BASEN.Value  := DM5.Qr_NSNSBASENRI.Value+DM5.Qr_NSNSBASENRP.Value+DM5.Qr_NSNSBASENRN.Value;
         DM5.tb_lrslrs_ICMSN.Value  :=DM5.Qr_NSNSICMSNRI.Value+DM5.Qr_NSNSICMSNRP.Value+DM5.Qr_NSNSICMSNRN.Value;
         DM5.tb_lrslrs_CFO.Value    :=Formatfloat('0',ValFloat(mcfonf));
         DM5.tb_lrslrs_DIA.Value    :=FormatDateTime('dd',mdata_doc);
         DM5.tb_lrslrs_ESP.Value    :='NF';
         DM5.tb_lrslrs_ICMIPI.Value :='ICMS';
         DM5.tb_lrslrs_PIS_COF.Value:=DM5.Qr_NSNSPISCOFR.Value;
         DM5.tb_lrslrs_ISENTAS.Value:=0;
         DM5.tb_lrslrs_NUMERO.Value :=FormatFloat('000000',mnumero_doc);
         DM5.tb_lrslrs_SERIE.Value  :=mserie_doc;
         DM5.tb_lrslrs_STATUS.Value :=0;
         if pModelo=1 then
            begin
            DM5.tb_lrslrs_VLRCONTABIL.Value:=mvlrcont;
            mvlrcont                :=0;
            end
         else
            DM5.tb_lrslrs_VLRCONTABIL.Value:=DM5.Qr_NSNSTOTRET.Value;
         mvlrcontres:=DM5.Qr_NSNSTOTRET.Value;
         if ptipo=1 then
            begin
           if ((valfloat(mcfonf)>1349) and (valfloat(mcfonf)<1400)) or
              ((valfloat(mcfonf)>2349) and (valfloat(mcfonf)<2400)) then
               begin
               flrsgrava70(0,0,DM5.Qr_NSNSFRETEPC.AsInteger,mnumero_doc,
                       mstatus_doc,
                       DM5.tb_lrslrs_VLRCONTABIL.Value,
                       DM5.tb_lrslrs_BASEN.Value,
                       DM5.tb_lrslrs_ICMSN.Value,
                       DM5.tb_lrslrs_ISENTAS.Value,
                       DM5.tb_lrslrs_OUTRAS.Value,
                       DM5.tb_lrslrs_ALIQ.Value,
                       ValFloat(mcfonf),
                       DM5.tb_lrslrs_UF.Value,
                       mserie_doc,
                       DM5.Qr_NSNSSUBSER.Value,
                       mmodelo_doc,
                       'P',
                       fdeixanum(DM5.Qr_NScgc.Value),
                       DM5.Qr_NSinscricao.Value,
                       ' ',

                       mdata_doc);
               end
           else
               begin
               if mtipo_doc=mtipo_nfe then
                  begin
                  flrsgrava50(0,0,mnumero_doc,
                       mstatus_doc,
                       DM5.tb_lrslrs_VLRCONTABIL.Value,
                       DM5.tb_lrslrs_BASEN.Value,
                       DM5.tb_lrslrs_ICMSN.Value,
                       DM5.tb_lrslrs_ISENTAS.Value,
                       DM5.tb_lrslrs_OUTRAS.Value,
                       DM5.tb_lrslrs_ALIQ.Value,
                       ValFloat(mcfonf),
                       DM5.tb_lrslrs_UF.Value,
                       mserie_doc,
                       DM5.Qr_NSNSSUBSER.Value,
                       mmodelo_doc,
                       'P',
                       fdeixanum(DM5.Qr_NScgc.Value),
                       DM5.Qr_NSinscricao.Value,
                       ' ',
                       mdata_doc);
                  end;
               end;
            end;
         if mstatus_doc=9 then
            begin
            DM5.tb_lrslrs_Aliq.Value    :=0;
            DM5.tb_lrslrs_BASEN.Value   :=0;
            DM5.tb_lrslrs_CFO.Value     :='0';
            DM5.tb_lrslrs_ICMSN.Value   :=0;
            DM5.tb_lrslrs_ISENTAS.Value :=0;
            DM5.tb_lrslrs_OUTRAS.Value  :=0;
            DM5.tb_lrslrs_VLRCONTABIL.Value:=0;
            DM5.tb_lrslrs_Status.Value  :=9;
            DM5.tb_lrslrs_OBSERV.Value  :='Cancelada';
            DM5.tb_lrslrs_PIS_COF.Value :=0;
            DM5.tb_lrs.Post;
            DM5.QR_NS.Next;
            Continue;
            end;
         if mdata_doc=8 then
            begin
            DM5.tb_lrslrs_Aliq.Value    :=0;
            DM5.tb_lrslrs_BASEN.Value   :=0;
            DM5.tb_lrslrs_CFO.Value     :='0';
            DM5.tb_lrslrs_ICMSN.Value   :=0;
            DM5.tb_lrslrs_ISENTAS.Value :=0;
            DM5.tb_lrslrs_OUTRAS.Value  :=0;
            DM5.tb_lrslrs_VLRCONTABIL.Value:=0;
            DM5.tb_lrslrs_Status.Value  :=8;
            DM5.tb_lrslrs_OBSERV.Value  :='Inutilizada';
            DM5.tb_lrslrs_PIS_COF.Value :=0;
            DM5.tb_lrs.Post;
            DM5.QR_NS.Next;
            Continue;
            end;
         DM5.tb_lrs.Post;
      //Sumario cfo
         if (ptipo=0) or (ptipo=1) then
            begin
            if DM5.Tb_RCFOP.FindKey([mcfonf,DM5.tb_lrslrs_ALIQ.Value]) then
               DM5.Tb_RCFOP.Edit
            else
               begin
               flcadcfo(1,0,mcfonf);
               DM5.Tb_RCFOP.Append;
               DM5.Tb_RCFOPRCFOP_CFO.Value        :=Formatfloat('0',ValFloat(mcfonf));
               DM5.Tb_RCFOPRCFOP_Aliq.Value       :=DM5.tb_lrslrs_ALIQ.Value;
               DM5.Tb_RCFOPRCFOP_CFONOME.Value    :=DM1.Tb_CfoCFNOME.Value;
               DM5.Tb_RCFOPRCFOP_VlrContabil.Value:=0;
               DM5.Tb_RCFOPRCFOP_Base.Value       :=0;
               DM5.Tb_RCFOPRCFOP_Icms.Value       :=0;
               DM5.Tb_RCFOPRCFOP_Baser.Value      :=0;
               DM5.Tb_RCFOPRCFOP_Icmsr.Value      :=0;
               DM5.Tb_RCFOPRCFOP_Isentas.Value    :=0;
               DM5.Tb_RCFOPRCFOP_Outras.Value     :=0;
               DM5.Tb_RCFOPRCFOP_PIS.Value        :=0;
               end;
            DM5.Tb_RCFOPRCFOP_VlrContabil.Value:=DM5.Tb_RCFOPRCFOP_VlrContabil.Value+DM5.tb_lrslrs_VlrContabil.Value;
//            DM5.Tb_RCFOPRCFOP_VlrContabil.Value:=DM5.Tb_RCFOPRCFOP_VlrContabil.Value+mvlrcontres;
            DM5.Tb_RCFOPRCFOP_Base.Value       :=DM5.Tb_RCFOPRCFOP_Base.Value       +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RCFOPRCFOP_Icms.Value       :=DM5.Tb_RCFOPRCFOP_Icms.Value       +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RCFOPRCFOP_Isentas.Value    :=DM5.Tb_RCFOPRCFOP_Isentas.Value    +DM5.tb_lrslrs_ISENTAS.Value;
            DM5.Tb_RCFOPRCFOP_Outras.Value     :=DM5.Tb_RCFOPRCFOP_Outras.Value     +DM5.tb_lrslrs_OUTRAS.Value;
            DM5.Tb_RCFOPRCFOP_PIS.Value        :=DM5.Tb_RCFOPRCFOP_PIS.Value        +DM5.tb_lrslrs_PIS_COF.Value;
            DM5.Tb_RCFOP.Post;
        // Sumario uf
            if DM5.Tb_RUF.FindKey([DM5.tb_lrslrs_UF.Value]) then
//         if flcadruf(0,mtmp_RUF,DM5.tb_lrslrs_UF.Value) then
               DM5.Tb_RUF.Edit
            else
               begin
               DM5.Tb_RUF.Append;
               DM5.Tb_RUFruf_UF.Value         :=DM5.tb_lrslrs_UF.Value;
               DM5.Tb_RUFruf_VlrContabil.Value:=0;
               DM5.Tb_RUFruf_Base.Value       :=0;
               DM5.Tb_RUFruf_Icms.Value       :=0;
               DM5.Tb_RUFruf_Baser.Value      :=0;
               DM5.Tb_RUFruf_Icmsr.Value      :=0;
               DM5.Tb_RUFruf_Isentas.Value    :=0;
               DM5.Tb_RUFruf_Outras.Value     :=0;
               DM5.Tb_RUFruf_PIS.Value        :=0;
               end;
            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+DM5.tb_lrslrs_VlrContabil.Value;
//            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+mvlrcontres;
            DM5.Tb_RUFruf_Base.Value       :=DM5.Tb_RUFruf_Base.Value       +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RUFruf_Icms.Value       :=DM5.Tb_RUFruf_Icms.Value       +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RUFruf_Isentas.Value    :=DM5.Tb_RUFruf_Isentas.Value    +DM5.tb_lrslrs_Isentas.Value;
            DM5.Tb_RUFruf_Outras.Value     :=DM5.Tb_RUFruf_Outras.Value     +DM5.tb_lrslrs_Outras.Value;
            DM5.Tb_RUFruf_PIS.Value        :=DM5.Tb_RUFruf_PIS.Value        +DM5.tb_lrslrs_PIS_COF.Value;
            DM5.Tb_RUF.Post;
            end
         else if ptipo=2 then
            begin

            if DM5.Tb_RsCFO.FindKey([valint(mcfonf)]) then
//         if flcadrscfo(0,mtmp_RsCfo,mcfo) then
               DM5.Tb_RsCFO.Edit
            else
               begin
               flcadcfo(1,0,mcfonf);
               DM5.Tb_RSCFO.Append;
               DM5.Tb_RsCFOCFO.Value    :=ValInt(mcfonf);
               DM5.Tb_RsCFOTOTNOTA.Value:=0;
               DM5.Tb_RsCFOBASEN.Value  :=0;
               DM5.Tb_RsCFOICMSN.Value  :=0;
               DM5.Tb_RsCFOBASER.Value  :=0;
               DM5.Tb_RsCFOICMSR.Value  :=0;
               DM5.Tb_RsCFOISENTAS.Value:=0;
               DM5.Tb_RsCFOOUTRAS.Value :=0;
               DM5.Tb_RsCFOIPI.Value    :=0;
               end;
            DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+DM5.tb_lrslrs_VLRCONTABIL.Value;
            DM5.Tb_RsCFOBASEN.Value  :=DM5.Tb_RsCFOBASEN.Value  +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RsCFOICMSN.Value  :=DM5.Tb_RsCFOICMSN.Value  +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RsCFOISENTAS.Value:=DM5.Tb_RsCFOISENTAS.Value+DM5.tb_lrslrs_OUTRAS.Value;
            DM5.Tb_RsCFO.Post;

      // Sumario por data
            if DM5.Tb_RSint.FindKey([mdata_doc]) then
               DM5.Tb_RSint.Edit
            else
               begin
               DM5.Tb_RSint.Append;
               DM5.Tb_RSintRS_DATA.Value:=mdata_doc;
               DM5.Tb_RSintRS_TIPO.Value:='A';
               DM5.Tb_RSintRS_TOTNOTA.Value:=0;
               DM5.Tb_RSintRS_BASEN.Value  :=0;
               DM5.Tb_RSintRS_ICMSN.Value  :=0;
               DM5.Tb_RSintrs_BASER.Value  :=0;
               DM5.Tb_RSintrS_icmsr.Value  :=0;
               DM5.Tb_RSintRS_ISENTAS.Value:=0;
               DM5.Tb_RSintRS_OUTRAS.Value :=0;
               DM5.Tb_RSintRS_IPI.Value    :=0;
               end;
            DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+DM5.tb_lrslrs_VLRCONTABIL.Value;
            DM5.Tb_RSintRS_BASEN.Value  :=DM5.Tb_RSintRS_BASEN.Value  +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RSintRS_ICMSN.Value  :=DM5.Tb_RSintRS_ICMSN.Value  +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RSintRS_ISENTAS.Value:=DM5.Tb_RSintRS_ISENTAS.Value+DM5.tb_lrslrs_ISENTAS.Value;
            DM5.Tb_RSintRS_OUTRAS.Value :=DM5.Tb_RSintRS_OUTRAS.Value +DM5.tb_lrslrs_OUTRAS.Value;
            DM5.Tb_RSint.Post;
      // Registro tipo 54 e 75 para sintegra;
            iF mstatus_doc<>9 then
               begin
               DM5.Qr_PSint.Close;
               DM5.Qr_Psint.SQL.Clear;
               DM5.Qr_PSint.SQL.Add('Select P2ITEM,P2CODPRO,P2QTD,P2PRECO,P2TOTDES,');
               if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2)  and (mnumero_doc>0) then
                  DM5.Qr_PSint.SQL.Add('0 ')
               else
                  DM5.Qr_PSint.SQL.Add('P2BASEN');
               DM5.Qr_PSint.SQL.Add(',P2BASER,P2ALIQ,P2ALIPI,P2ALIQNR,P2LISTA,P2TABELA');

               if (DM5.Qr_NSNUMECF.AsFloat>0) or (DM5.Qr_NSNSNFCE_NUMERO.Asfloat>0) then

//               if DM5.Qr_NSNUMECF.AsFloat>0 then
                  begin
                  if DM1.Tb_EmpCGC.Value=2777589000164 then
                     begin
                     DM5.Qr_PSint.SQL.Add(',case when substr(p2sit,2,1) in ('+QuotedStr('1')+','+QuotedStr('3')+','+QuotedStr('6')+','+QuotedStr('7')+') then 5405 else 5102 end as P2CFO ');

//                     DM5.Qr_PSint.SQL.Add(',DECODE(SUBSTR(TO_CHAR(P2CFO),1,1),:P1,P2CFO-1000,P2CFO) AS P2CFO ');

//                     DM5.Qr_PSint.ParamByName('P1').AsString:='6';
                     end
                  else
                     DM5.Qr_PSint.SQL.Add('        ,P2CFO ');
                  DM5.Qr_PSint.SQL.Add(',P2CFOSUBECF AS CFONF ')
                  end
               else
                  begin
                  DM5.Qr_PSint.SQL.Add(',P2CFO AS CFONF ');
                  DM5.Qr_PSint.SQL.Add(',P2CFOSUBECF AS CFONF ')
                  end;

               DM5.Qr_PSint.Sql.add(',case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end as NOMPRO_ORI '
                       +'       ,DECODE(P2CODPRO_ORI,null,to_char(PDCODPRO),'+chr(39)+' '+chr(39)+',to_char(PDCODPRO),'
                       +' P2CODPRO_ORI) as CODPRO_ORI ');

               DM5.Qr_PSint.SQL.Add(',P2ICMSN,P2ICMSNR,P2ICMSR, P2VALIPI,'
                                    +' P2SIT, PDNOME,PDUND ');
               if DM5.Qr_NSNUMECF.AsInteger>0 then
                  DM5.Qr_PSint.SQL.Add(' from '+mTabelaItens_Cupom)
               else
                  DM5.Qr_PSint.SQL.Add(' from CADP02');


               DM5.Qr_PSint.SQL.Add(',CADPRO where ');
               if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
                  DM5.Qr_PSint.SQL.Add(' P2CODEMP='+IntTostr(codemp)+' and ');
               IF NOT dm1.Qr_TID.Locate('TINOME','CADPRO',[]) then
                  DM5.Qr_Psint.SQL.Add(' PDCODEMP=P2CODEMP and ');
               DM5.Qr_Psint.SQl.add(' PDCODPRO=P2CODPRO and ');
               DM5.Qr_Psint.SQL.Add(' P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                                   +' and P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                                   +' and P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                                   +' and (P2CFO=0'+IntToStr(ValInt(mcfonf))
                                   +' or P2CFOSUBECF=0'+IntToStr(ValInt(mcfonf))+')'
                                   +' and P2PRECO<>0');
               try
                  DM5.Qr_PSint.Open;
               except
                  DM5.Qr_PSint.sql.savetofile('c:\sql.txt');
                  end;


               mNumItem:=0;
               While not DM5.Qr_Psint.Eof do
                  begin
                  if mtipo_doc=mtipo_nfe then
                     begin
                     mNumItem:=mNumItem+1;

                    if not flrsgrava5475(0,mNumItem,
//                  DM5.Qr_PSintP2ITEM.AsInteger,
                               DM5.Qr_PSintP2ALIQ.Value,
                               mnumero_doc,
                               DM5.Qr_PSintP2CODPRO.Value,
                               DM5.Qr_PSintP2QTD.Value,
                               DM5.Qr_PSintP2PRECO.Value,
                               DM5.Qr_PSintP2TOTDES.Value,
                               DM5.Qr_PSintP2ICMSN.Value,
                               DM5.Qr_PSintP2BASEN.Value,
                               DM5.Qr_PSintP2ICMSR.Value,
                               DM5.Qr_PSintP2BASER.Value,
                               DM5.Qr_PSintP2VALIPI.Value,
                               FormatFloat('0000',valFloat(mcfonf)),
                               mserie_doc,
                               DM5.Qr_NSNSSUBSER.Value,
                               mmodelo_doc,
                               fdeixanum(DM5.Qr_NScgc.Value),
                               DM5.Qr_NSinscricao.Value,
                               DM5.Qr_PSintP2SIT.Value,
                               mdata_doc,
                               pdt1,
                               pdt2,
                               DM5.Qr_PSintCODPRO_ORI.AsString,
                               DM5.Qr_PSintNOMPRO_ORI.AsString
                               ) then
                      mNumItem:=mNumItem-1;
                      end;

                  DM5.Qr_PSint.Next;
                  end;
               end;
            end;
         if Pmodelo=1 then
            begin
            DM5.tb_lrs.Append;
            DM5.tb_lrslrs_TIPO.Value   :=04;
            DM5.tb_lrslrs_ALIQ.Value    :=0;
            DM5.tb_lrslrs_CFO.Value     :=Formatfloat('0',ValFloat(mcfonf));
            DM5.tb_lrslrs_Dia.Value     :=FormatDateTime('dd',mdata_doc);
            DM5.tb_lrslrs_ESP.Value     :='NF';
            DM5.tb_lrslrs_ICMIPI.Value  :='IPI';
            DM5.tb_lrslrs_UF.Value      :=DM5.Qr_NSuf.Value;
            DM5.tb_lrslrs_Numero.Value  :=FormatFloat('000000',mnumero_doc);
            DM5.tb_lrslrs_SERIE.Value   :=mserie_doc;
            DM5.tb_lrslrs_STATUS.Value  :=mstatus_doc;
            DM5.tb_lrslrs_VlrContabil.Value:=mvlrcont;
            mvlrcont                 :=0;
            DM5.tb_lrslrs_BASEN.Value    :=0;
            DM5.tb_lrslrs_ICMSN.Value    :=0;
            DM5.tb_lrslrs_OUTRAS.Value   :=0;
            DM5.tb_lrslrs_ISENTAS.Value  :=DM5.Qr_NSNSBASENRI.Value
                                     +DM5.Qr_NSNSBASENRP.Value
                                     +DM5.Qr_NSNSBASENRN.Value;
            DM5.tb_lrslrs_PIS_COF.Value :=0;
            DM5.tb_lrs.Post;
            end;
         end;


// icms retido
      if (DM5.Qr_NSNSBASERI.Value+DM5.Qr_NSNSBASERP.Value+DM5.Qr_NSNSBASERP.Value)>0 then
         begin
         mcfonf:=IIF(DM5.Qr_NSNSCFO2.IsNull,
                             FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO1.Value),
                          FormatMaskText('9.999;0; ',DM5.Qr_NSNSCFO2.Value));
         mcfonf:=fdeixanum(mcfonf);
         DM5.tb_lrs.Append;
         DM5.tb_lrslrs_TIPO.Value   :=05;
         DM5.tb_lrslrs_UF.Value     :=DM5.Qr_NSuf.Value;
         DM5.tb_lrslrs_Aliq.Value   :=0;
         DM5.tb_lrslrs_BaseN.Value  :=(DM5.Qr_NSNSBASERI.Value+DM5.Qr_NSNSBASERP.Value+DM5.Qr_NSNSBASERN.Value);
         DM5.tb_lrslrs_CFO.Value    :=Formatfloat('0',ValFloat(mcfonf));
         DM5.tb_lrslrs_DIA.Value    :=FormatDateTime('dd',mdata_doc);
         DM5.tb_lrslrs_ESP.Value    :='NF';
         if pModelo=1 then
            begin
            DM5.tb_lrslrs_ICMIPI.Value     :='ST';
            DM5.tb_lrslrs_VlrContabil.Value:=mvlrcont;
            mvlrcont                   :=0;
            end
         else
            begin
            DM5.tb_lrslrs_ICMIPI.Value :='RETI';
            DM5.tb_lrslrs_VlrContabil.Value:=DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value;
            end;
         mvlrcontres  :=DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value;
         DM5.tb_lrslrs_ICMSN.Value  :=DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value;
         DM5.tb_lrslrs_ISENTAS.Value:=0;
         DM5.tb_lrslrs_Outras.Value :=0;
         DM5.tb_lrslrs_Numero.Value :=FormatFloat('000000',mnumero_doc);
         DM5.tb_lrslrs_SERIE.Value  :=mserie_doc;
         DM5.tb_lrslrs_Status.Value :=0;
         if (DM5.tb_lrslrs_ICMSN.Value>0) and (pobs=1) then
            DM5.tb_lrslrs_OBSERV.Value:='Ret:'+FormatFloat(mcasas, DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value);
//lindomar  DM5.tb_lrslrs_VlrContabil.Value:=0;
         if ptipo=2 then
            begin
            if mtipo_doc=mtipo_nfe then
               begin
               flrsgrava53(0,0,DM5.tb_lrslrs_NUMERO.AsFloat,
                       DM5.tb_lrslrs_STATUS.Value,
                       DM5.tb_lrslrs_ICMSN.Value,
                       0,
                       DM5.tb_lrslrs_BASEN.Value,
                       DM5.tb_lrslrs_CFO.Value,
                       DM5.Qr_NSuf.Value,
                       mserie_doc,
                       DM5.Qr_NSNSSUBSER.Value,
                       mmodelo_doc,
                       'P',
                       fdeixanum(DM5.Qr_NScgc.Value),
                       DM5.Qr_NSinscricao.Value,
                       ' ',
                       mnumero_doc);
              end;
            end;
         if mstatus_doc=9 then
            begin
            DM5.tb_lrslrs_Aliq.Value   :=0;
            DM5.tb_lrslrs_BASEN.Value   :=0;
            DM5.tb_lrslrs_CFO.Value    :='0';
            DM5.tb_lrslrs_ICMSN.Value  :=0;
            DM5.tb_lrslrs_Isentas.Value:=0;
            DM5.tb_lrslrs_Outras.Value :=0;
            DM5.tb_lrslrs_VlrContabil.Value:=0;
            DM5.tb_lrslrs_Status.Value :=1;
            DM5.tb_lrslrs_OBSERV.Value :='Cancelada';
            DM5.tb_lrslrs_PIS_COF.Value:=0;
            DM5.QR_NS.Next;
            Continue;
            end;
         if mstatus_doc=8 then
            begin
            DM5.tb_lrslrs_Aliq.Value   :=0;
            DM5.tb_lrslrs_BASEN.Value   :=0;
            DM5.tb_lrslrs_CFO.Value    :='0';
            DM5.tb_lrslrs_ICMSN.Value  :=0;
            DM5.tb_lrslrs_Isentas.Value:=0;
            DM5.tb_lrslrs_Outras.Value :=0;
            DM5.tb_lrslrs_VlrContabil.Value:=0;
            DM5.tb_lrslrs_Status.Value :=8;
            DM5.tb_lrslrs_OBSERV.Value :='Inutilizada';
            DM5.tb_lrslrs_PIS_COF.Value:=0;
            DM5.QR_NS.Next;
            Continue;
            end;

         if (ptipo=0) or (ptipo=1) then
            begin
      //Sumario cfo
            if DM5.Tb_RCFOP.FindKey([mcfonf,DM5.tb_lrslrs_ALIQ.Value]) then
               DM5.Tb_RCFOP.Edit
            else
               begin
               flcadcfo(1,0,mcfonf);
               DM5.Tb_RCFOP.Append;
               DM5.Tb_RCFOPRCFOP_CFO.Value        :=Formatfloat('0',ValFloat(mcfonf));
               DM5.Tb_RCFOPRCFOP_Aliq.Value       :=DM5.tb_lrslrs_Aliq.Value;
               DM5.Tb_RCFOPRCFOP_CFONOME.Value    :=DM1.Tb_CFOCFNOME.Value;
               DM5.Tb_RCFOPRCFOP_VlrContabil.Value:=0;
               DM5.Tb_RCFOPRCFOP_BASE.Value       :=0;
               DM5.Tb_RCFOPRCFOP_ICMS.Value       :=0;
               DM5.Tb_RCFOPRCFOP_Baser.Value      :=0;
               DM5.Tb_RCFOPRCFOP_Icmsr.Value      :=0;
               DM5.Tb_RCFOPRCFOP_Isentas.Value    :=0;
               DM5.Tb_RCFOPRCFOP_Outras.Value     :=0;
               DM5.Tb_RCFOPRCFOP_PIS.Value        :=0;
               end;

            DM5.Tb_RCFOPRCFOP_VlrContabil.Value:=DM5.Tb_RCFOPRCFOP_VlrContabil.Value+DM5.tb_lrslrs_VlrContabil.Value;
  //          DM5.Tb_RCFOPRCFOP_VlrContabil.Value:=DM5.Tb_RCFOPRCFOP_VlrContabil.Value+mvlrcontres;
            DM5.Tb_RCFOPRCFOP_Baser.Value      :=DM5.Tb_RCFOPRCFOP_Baser.Value      +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RCFOPRCFOP_Icmsr.Value      :=DM5.Tb_RCFOPRCFOP_Icmsr.Value      +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RCFOPRCFOP_Isentas.Value    :=DM5.Tb_RCFOPRCFOP_Isentas.Value    +DM5.tb_lrslrs_Isentas.Value;
            DM5.Tb_RCFOPRCFOP_Outras.Value     :=DM5.Tb_RCFOPRCFOP_Outras.Value     +DM5.tb_lrslrs_OUTRAS.Value;
            DM5.Tb_RCFOPRCFOP_PIS.Value        :=DM5.Tb_RCFOPRCFOP_PIS.Value        +DM5.tb_lrslrs_PIS_COF.Value;
            DM5.Tb_RCFOP.Post;
      //    Sumario uf
            if DM5.Tb_RUF.FindKey([DM5.tb_lrslrs_UF.Value]) then
//         if flcadruf(0,mtmp_RUF,DM5.tb_lrslrs_UF.Value) then
               DM5.Tb_RUF.Edit
            else
               begin
               DM5.Tb_RUF.Append;
               DM5.Tb_RUFruf_UF.Value         :=DM5.tb_lrslrs_UF.Value;
               DM5.Tb_RUFruf_VlrContabil.Value:=0;
               DM5.Tb_RUFruf_Base.Value       :=0;
               DM5.Tb_RUFruf_Icms.Value       :=0;
               DM5.Tb_RUFruf_Baser.Value      :=0;
               DM5.Tb_RUFruf_Icmsr.Value      :=0;
               DM5.Tb_RUFruf_Isentas.Value    :=0;
               DM5.Tb_RUFruf_Outras.Value     :=0;
               end;
            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+DM5.tb_lrslrs_VlrContabil.Value;
//            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+mvlrcontres;
            DM5.Tb_RUFruf_Baser.Value      :=DM5.Tb_RUFruf_Baser.Value      +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RUFruf_Icmsr.Value      :=DM5.Tb_RUFruf_Icmsr.Value      +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RUFruf_Isentas.Value    :=DM5.Tb_RUFruf_Isentas.Value    +DM5.tb_lrslrs_Isentas.Value;
            DM5.Tb_RUFruf_Outras.Value     :=DM5.Tb_RUFruf_Outras.Value     +DM5.tb_lrslrs_Outras.Value;
            DM5.Tb_RUF.Post;
            end
         else if ptipo=2 then
            begin


            if DM5.Tb_RsCFO.FindKey([valint(mcfonf)]) then
//         if flcadrscfo(0,mtmp_RsCfo,mcfo) then
               DM5.Tb_RsCFO.Edit
            else
               begin
               flcadcfo(1,0,mcfonf);
               DM5.Tb_RSCFO.Append;
               DM5.Tb_RsCFOCFO.Value    :=ValInt(mcfonf);
               DM5.Tb_RsCFOTOTNOTA.Value:=0;
               DM5.Tb_RsCFOBASEN.Value  :=0;
               DM5.Tb_RsCFOICMSN.Value  :=0;
               DM5.Tb_RsCFOBASER.Value  :=0;
               DM5.Tb_RsCFOICMSR.Value  :=0;
               DM5.Tb_RsCFOISENTAS.Value:=0;
               DM5.Tb_RsCFOOUTRAS.Value :=0;
               DM5.Tb_RsCFOIPI.Value    :=0;
               end;
            DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+DM5.tb_lrslrs_VLRCONTABIL.Value;
            DM5.Tb_RsCFOBASER.Value  :=DM5.Tb_RsCFOBASER.Value  +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RsCFOICMSR.Value  :=DM5.Tb_RsCFOICMSR.Value  +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RsCFO.Post;
      // Sumario por data
            if DM5.Tb_RSint.FindKey([mdata_doc]) then
               DM5.Tb_RSint.Edit
            else
               begin
               DM5.Tb_RSint.Append;
               DM5.Tb_RSintRS_DATA.Value:=mdata_doc;
               DM5.Tb_RSintRS_TIPO.Value:='A';
               DM5.Tb_RSintRS_TOTNOTA.Value:=0;
               DM5.Tb_RSintRS_BASEN.Value  :=0;
               DM5.Tb_RSintRS_ICMSN.Value  :=0;
               DM5.Tb_RSintrs_BASER.Value  :=0;
               DM5.Tb_RSintrS_icmsr.Value  :=0;
               DM5.Tb_RSintRS_ISENTAS.Value:=0;
               DM5.Tb_RSintRS_OUTRAS.Value :=0;
               DM5.Tb_RSintRS_IPI.Value    :=0;
               end;
            DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+DM5.tb_lrslrs_VLRCONTABIL.Value;
            DM5.Tb_RSintRS_BASER.Value  :=DM5.Tb_RSintRS_BASER.Value  +DM5.tb_lrslrs_BASEN.Value;
            DM5.Tb_RSintRS_ICMSR.Value  :=DM5.Tb_RSintRS_ICMSR.Value  +DM5.tb_lrslrs_ICMSN.Value;
            DM5.Tb_RSint.Post;
            end;
         end;
         DM5.QR_NS.Next;
      end;
   end;


DM5.tb_lrs.First;
Result:=True;
end;

procedure TFrm_LRS.FormCreate(Sender: TObject);
{var
mdatai: TDateTime;
var
Query_temp: TQuery;}
begin
{Query_temp:=TQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';

Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('UPDATE CADP02 SET P2TOTLIQ=ROUND( ((P2QTD*P2PRECO)-P2TOTDES),2) '
                  +' WHERE ROUND( ( (((P2QTD*P2PRECO)-P2TOTDES)-P2TOTLIQ)),2)<>0 ');

try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
FreeAndNil(Query_temp);}
if codusr=1111 then
   bbcompredz.visible:=true
else
   bbcompredz.Visible:=true;


PageControl1.ActivePage:=tsGeral;
TsRelator.TabVisible:=false;
tsCompar.TabVisible :=false;
if codusr<>1111 then
   bbComparar.Visible  :=false;

if Frm_Stru=nil then
   Application.CreateForm(TFrm_Stru, Frm_Stru);

if ValInt(FormatDateTime('dd', pdatasis))>20 then
   mdatai:=pdatasis
else
   mdatai:=fdatafinal(1,pdatasis-28);
mdatai:=StrtodAte('01/'+FormatDatetime('mm/yyyy',mdatai));
MDT1.Text   :=FormatDatetime(fdt2, mdatai);
DTTERM1.Text:=FormatDatetime(fdt2, mdatai);
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(mdatai));
DTTERM2.Text:=FormatDatetime(fdt2, fultdiames(mdatai));

if flfilpad(0,'_LRS','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_MODELO',[]) then
      RG_MODELO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','TERMO',[]) then
      TERMO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PISCOF',[]) then
      CB_PISCOF.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ICMSROBS',[]) then
      CB_ICMSROBS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ANTIGO',[]) then
      cb_antigo.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_RETIDO_SEPAR',[]) then
      CB_RETIDO_SEPAR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   end;



end;

procedure TFrm_LRS.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
DM5.Qr_NS.Close;
Frm_Stru.Free;
Frm_Stru:=nil;
end;


function flrsgravalrs(pEntSai,pparam,pTipo,pMod,pFretePc: Integer; paliq,pnumero,pstatus,pvlrliv,pvlrcont,picmsn,pisentas,poutras,pbasen,ppiscof,pchave,pordem: Real; pcfo,pesp,picmipi,puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs,px,pCodCont: String; pdtemis,pdtent: TDateTime): Boolean;
//PEntSai 0-Entrada
//        1-Saida NF
//        2-Saida ECF

// param 0-So Livro
//       1-Sintegra
//       2-Apuração

// ptipo : Tipo de Registro
//       1,2,3,4,5
// PModelo=Modelo do Livro de Saida
//       0-Modelo 1
//       1-Modelo 2

begin
{
if (pvlrliv=0) and (pvlrcont=0) and (picmsn=0) and (pisentas=0) and (poutras=0) and (pbasen=0) then
   begin
   result:=true;
   exit;
   end;
}

if pstatus=9 then
   begin
   paliq   :=0;
   pvlrcont:=0;
   picmsn  :=0;
   pisentas:=0;
   poutras :=0;
   pbasen  :=0;
   ppiscof :=0;
   end;
if copy(pcfo,2,3)='929' then
   begin
   if (pparam=0) or (pparam=2) then
      begin
      picmsn      :=0;
      pisentas    :=0;
      poutras     :=0;
      pbasen      :=0;
      paliq       :=0;
      ppiscof     :=0;
      end;
{
   if pparam=2 then
      begin
      pvlrliv    :=0;
      pvlrcont   :=0;
      end;
}
   end;


if pparam=0 then
   begin
   if (pEntSai=1) or (pEntSai=2) then
      begin
      DM5.tb_lrs.Append;
      DM5.tb_lrslrs_TIPO.Value       :=ptipo;
      DM5.tb_lrslrs_ALIQ.Value       :=paliq;
      DM5.tb_lrslrs_CFO.Value        :=pcfo;
      DM5.tb_lrslrs_Dia.Value        :=FormatDateTime('dd',pdtemis);
      DM5.tb_lrslrs_ESP.Value        :=pesp;
      DM5.tb_lrslrs_ICMIPI.Value     :=picmipi;
      DM5.tb_lrslrs_UF.Value         :=puf;
      DM5.tb_lrslrs_Numero.Value     :=FormatFloat('000000',pnumero);
      if trim(pserie)='' then
         DM5.tb_lrslrs_SERIE.Value      :='01'
      else
         DM5.tb_lrslrs_SERIE.Value      :=pserie;
      DM5.tb_lrslrs_STATUS.Value     :=pstatus;
      DM5.tb_lrslrs_VLRCONTABIL.Value:=pvlrliv;
      DM5.tb_lrslrs_ICMSN.Value      :=picmsn;
      DM5.tb_lrslrs_ISENTAS.Value    :=pisentas;
      DM5.tb_lrslrs_OUTRAS.Value     :=poutras;
      DM5.tb_lrslrs_BASEN.Value      :=pbasen;

      DM5.tb_lrslrs_PIS_COF.Value    :=ppiscof;
      DM5.tb_lrslrs_OBSERV.Value     :=pObs;
      if pstatus=9 then
         begin
         DM5.tb_lrslrs_ALIQ.Value       :=0;
         DM5.tb_lrslrs_BASEN.Value      :=0;
         DM5.tb_lrslrs_CFO.Value        :='0';
         DM5.tb_lrslrs_ICMSN.Value      :=0;
         DM5.tb_lrslrs_ISENTAS.Value    :=0;
         DM5.tb_lrslrs_OUTRAS.Value     :=0;
         DM5.tb_lrslrs_VlrContabil.Value:=0;
         DM5.tb_lrslrs_STATUS.Value     :=9;
         DM5.tb_lrslrs_PIS_COF.Value    :=0;
         DM5.tb_lrslrs_OBSERV.Value     :='Cancelada';
        end
      else if pstatus=8 then
         begin
         DM5.tb_lrslrs_ALIQ.Value       :=0;
         DM5.tb_lrslrs_BASEN.Value      :=0;
         DM5.tb_lrslrs_CFO.Value        :='0';
         DM5.tb_lrslrs_ICMSN.Value      :=0;
         DM5.tb_lrslrs_ISENTAS.Value    :=0;
         DM5.tb_lrslrs_OUTRAS.Value     :=0;
         DM5.tb_lrslrs_VlrContabil.Value:=0;
         DM5.tb_lrslrs_STATUS.Value     :=8;
         DM5.tb_lrslrs_PIS_COF.Value    :=0;
         DM5.tb_lrslrs_OBSERV.Value     :='Inutilizada';
        end

      else
        begin
        if (picmipi<>'RETI') and  (Arredonda( (pvlrliv)-(pisentas+poutras+pbasen), DM1.Tb_PargerPCASAS.AsInteger)<>0)
        and (Arredonda( (pvlrcont)-(pisentas+poutras+pbasen), DM1.Tb_PargerPCASAS.AsInteger)<>0) then
           mNNumnf_Irreg:=mNNumnf_Irreg+'Numero: '+FormatFloat('000000',pnumero)+' Data: '
                         +FormatDateTime('dd/mm/yyyy',pdtemis)+' cfop: '+pcfo
                         +' Valor Contabil: '+FormatFloat(mcasas, pvlrcont)
                         +' Isentas: '+FormatFloat(mcasas, pisentas)
                         +' Outras: '+FormatFloat(mcasas, pOutras)
                         +' Basen: '+FormatFloat(mcasas, pBasen)+chr(13);
        end;
      DM5.tb_lrs.Post;
      end
   else
      begin
      DM5.TB_RE.Append;
      DM5.Tb_REORDEM.Value       :=par_ordement;
      DM5.TB_REEntrada.Value     :=FormatDateTime('dd',pdtent);
      DM5.TB_REEsp.Value         :=pesp;
      if trim(pserie)='' then
         DM5.Tb_RESERIE.Value      :='01'
      else
         DM5.Tb_RESERIE.Value      :=pserie;
      DM5.TB_RENumero.Value      :=FormatFloat('000000',pnumero);
      DM5.TB_REData.Value        :=fStringtodate(Formatdatetime(fdt2, pdtemis));
      DM5.TB_REEmitente.Value    :=FormatFloat('00"."000"."000/0000-00',ValFloat(pcnpj));
      DM5.TB_REUF.Value          :=puf;
      DM5.TB_REVlrContabil.Value :=pvlrliv;
      DM5.TB_RECODC.Value        :=' ';
      DM5.TB_RECFO.Value         :=pcfo;
      DM5.TB_RETIPO.Value        :=picmipi;
      DM5.TB_REX.Value           :=px;
      if (px='3') and (picmipi='ICMS') then
         DM5.TB_REBase.Value        :=poutras
      else if px='2' then
         DM5.TB_REBase.Value        :=pisentas

      else
         DM5.TB_REBase.Value        :=pbasen;

      DM5.TB_REAliq.Value        :=paliq;
      DM5.TB_REImposto.Value     :=picmsn;
      DM5.TB_REChave.Value       :=pchave;
      DM5.Tb_REISENTAS.Value     :=pisentas;
      DM5.Tb_REOUTRAS.Value      :=poutras;
      DM5.Tb_RESTATUS.Value      :=pstatus;

      DM5.TB_RE.Post;
      end;
   end;
if (pparam=1) and (pEntSai<>2) then
   begin
   if (ptipo<>5) and (picmipi<>'ST')  then
      begin
      if ((valfloat(pcfo)>1349) and (valfloat(pcfo)<1400)) or
         ((valfloat(pcfo)>2349) and (valfloat(pcfo)<2400)) then
         begin
          flrsgrava70(0,0,pFretePc,pnumero,
                   pstatus,
                   pvlrcont,
                   pbasen,
                   picmsn,
                   pisentas,
                   poutras,
                   paliq,
                   ValFloat(pcfo),
                   puf,
                   pserie,
                   psubser,
                   pmodelo,
                   pemitente,
                   fdeixanum(pcnpj),
                   pie,
                   ' ',
                   pdtent);

{
          flrsgrava71(0,0,pnumero,
                   pstatus,
                   pvlrcont,
                   pbasen,
                   picmsn,
                   pisentas,
                   poutras,
                   paliq,
                   ValFloat(pcfo),
                   puf,
                   pserie,
                   psubser,
                   pmodelo,
                   pemitente,
                   fdeixanum(pcnpj),
                   pie,
                   ' ',
                   pdtent);
 }        end
      else if copy(UpperCase(trim(picmipi)),1,3)='IPI' then
          begin
         if pesp=mtipo_nfe then
            begin
            flrsgrava51(0,0,pnumero,
                   pstatus,
                   pvlrcont,
                   pbasen,
                   picmsn,
                   pisentas,
                   poutras,
                   paliq,
                   ValFloat(pcfo),
                   puf,
                   pserie,
                   psubser,
                   pmodelo,
                   pemitente,
                   fdeixanum(pcnpj),
                   pie,
                   ' ',
                   pdtent);
            end;
         end
      else
         begin
         if par_ordement>1 then
            begin
            if (pesp=mtipo_nfe) OR (valint(pcfo)<5000) then
               begin
               flrsgrava50(0,0,pnumero,
                   pstatus,
//                   0,
                   pvlrcont,
                   pbasen,
                   picmsn,
                   pisentas,
                   poutras,
                   paliq,
                   ValFloat(pcfo),
                   puf,
                   pserie,
                   psubser,
                   pmodelo,
                   pemitente,
                   fdeixanum(pcnpj),
                   pie,
                   ' ',
                   pdtent);
                end;
              end
          else
             begin
             if pmodelo='65' then
                begin
                flrsgrava61(0,0,pnumero,
                   pstatus,
                   iif(pvlrcont=0,pisentas,pvlrcont),
//                   pvlrcont,
                   pbasen,
                   picmsn,
                   pisentas,
                   poutras,
                   paliq,
                   ValFloat(pcfo),
                   puf,
                   pserie,
                   psubser,
                   pmodelo,
                   pemitente,
                   fdeixanum(pcnpj),
                   pie,
                   ' ',
                   pdtent);
                end
             else
                begin
                if (pesp=mtipo_nfe) OR (valint(pcfo)<5000) then
                   begin
                  flrsgrava50(0,0,pnumero,
                   pstatus,
                   iif(pvlrcont=0,pisentas,pvlrcont),
//                   pvlrcont,
                   pbasen,
                   picmsn,
                   pisentas,
                   poutras,
                   paliq,
                   ValFloat(pcfo),
                   puf,
                   pserie,
                   psubser,
                   pmodelo,
                   pemitente,
                   fdeixanum(pcnpj),
                   pie,
                   ' ',
                   pdtent);
                   end;
                end;
             end;

         end;
      end
   else
      begin
       if pesp=mtipo_nfe then
         begin
         flrsgrava53(0,0,pnumero,
                   pstatus,
                   pvlrcont,
                   0,
                   pbasen,
                   trim(pcfo),
                   puf,
                   pserie,
                   psubser,
                   pmodelo,
                   pemitente,
                   fdeixanum(pcnpj),
                   pie,
                   'P',
                   pdtent);
          end;
      end;

   end;

//if qualquer coisa
//if (mtipo=1) or (mtipo=3) then
if (pparam=0) and (ptipo<>2) and (ptipo<>4)  and (pstatus<>8) and (pstatus<>9) then
   begin
   if Trim(pcfo)='' then
      pcfo:='0';
//   if not ((pmod=1) and (ptipo<>1) and (ptipo<>3)) then
//   if not ((pmod=1) and (paliq=0)) then
//      begin

      if DM5.Tb_RCFOP.FindKey([pcfo,paliq]) then
         DM5.Tb_RCFOP.Edit
      else
         begin
         flcadcfo(1,0,pcfo);
         DM5.Tb_RCFOP.Append;
         DM5.Tb_RCFOPRCFOP_CFO.Value        :=pcfo;
         DM5.Tb_RCFOPRCFOP_ALIQ.Value       :=paliq;
         DM5.Tb_RCFOPRCFOP_CFONOME.Value    :=DM1.Tb_CfoCFNOME.Value;
         DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value:=0;
         DM5.Tb_RCFOPRCFOP_BASE.Value       :=0;
         DM5.Tb_RCFOPRCFOP_ICMS.Value       :=0;
         DM5.Tb_RCFOPRCFOP_BASER.Value      :=0;
         DM5.Tb_RCFOPRCFOP_ICMSR.Value      :=0;
         DM5.Tb_RCFOPRCFOP_ISENTAS.Value    :=0;
         DM5.Tb_RCFOPRCFOP_OUTRAS.Value     :=0;
         DM5.Tb_RCFOPRCFOP_PIS.Value        :=0;
         end;
  //    if (pmod=1) then
//         DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value:=DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value+pvlrliv
//      else
      if (pMod<>1) and (ptipo=5) then
         DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value:=DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value+pvlrcont
//      else if (par_ordement<2) then
//      else if (px<>'3') or ((px='3') and (pvlrcont=poutras)) then
      else if par_ordement<2 then
         begin
//         DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value:=DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value+pvlrcont;
         DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value:=DM5.Tb_RCFOPRCFOP_VLRCONTABIL.Value+pvlrliv;
         end;
      if (pMod=1) and (paliq=0) then
         begin
         DM5.Tb_RCFOPRCFOP_ICMSR.Value      :=DM5.Tb_RCFOPRCFOP_ICMSR.Value      +picmsn;
         DM5.Tb_RCFOPRCFOP_BASER.Value       :=DM5.Tb_RCFOPRCFOP_BASER.Value      +pbasen;
         DM5.Tb_RCFOPRCFOP_ISENTAS.Value     :=DM5.Tb_RCFOPRCFOP_Isentas.Value    +pisentas;
         DM5.Tb_RCFOPRCFOP_OUTRAS.Value      :=DM5.Tb_RCFOPRCFOP_OUTRAS.Value     +poutras;
         DM5.Tb_RCFOPRCFOP_PIS.Value         :=DM5.Tb_RCFOPRCFOP_PIS.Value        +ppiscof;
         end
      else if par_ordement<2 then
         begin
         DM5.Tb_RCFOPRCFOP_BASER.Value       :=DM5.Tb_RCFOPRCFOP_BASER.Value      +pbasen;
         DM5.Tb_RCFOPRCFOP_ICMSR.Value       :=DM5.Tb_RCFOPRCFOP_ICMSR.Value      +picmsn;
         DM5.Tb_RCFOPRCFOP_ISENTAS.Value     :=DM5.Tb_RCFOPRCFOP_Isentas.Value    +pisentas;
         DM5.Tb_RCFOPRCFOP_OUTRAS.Value      :=DM5.Tb_RCFOPRCFOP_OUTRAS.Value     +poutras;
         DM5.Tb_RCFOPRCFOP_PIS.Value         :=DM5.Tb_RCFOPRCFOP_PIS.Value        +ppiscof;
         end
      else
         begin
         if (pMod<>1) and (ptipo=5) then
            begin
            DM5.Tb_RCFOPRCFOP_BASER.Value       :=DM5.Tb_RCFOPRCFOP_BASER.Value      +pbasen;
            DM5.Tb_RCFOPRCFOP_ICMSR.Value       :=DM5.Tb_RCFOPRCFOP_ICMSR.Value      +picmsn;
            DM5.Tb_RCFOPRCFOP_ISENTAS.Value     :=DM5.Tb_RCFOPRCFOP_Isentas.Value    +pisentas;
            DM5.Tb_RCFOPRCFOP_OUTRAS.Value      :=DM5.Tb_RCFOPRCFOP_OUTRAS.Value     +poutras;
            DM5.Tb_RCFOPRCFOP_PIS.Value         :=DM5.Tb_RCFOPRCFOP_PIS.Value        +ppiscof;
            end
         else
            begin
            if px<>'3' then
               DM5.Tb_RCFOPRCFOP_BASE.Value       :=DM5.Tb_RCFOPRCFOP_Base.Value       +pbasen;
//            if pcfo='2407' then
//               showmessage('2407');
               DM5.Tb_RCFOPRCFOP_BASE.Value       :=DM5.Tb_RCFOPRCFOP_Base.Value       +pbasen;

            DM5.Tb_RCFOPRCFOP_Icms.Value       :=DM5.Tb_RCFOPRCFOP_ICMS.Value       +picmsn;
            DM5.Tb_RCFOPRCFOP_ISENTAS.Value    :=DM5.Tb_RCFOPRCFOP_Isentas.Value    +pisentas;
            DM5.Tb_RCFOPRCFOP_OUTRAS.Value     :=DM5.Tb_RCFOPRCFOP_OUTRAS.Value     +poutras;
            DM5.Tb_RCFOPRCFOP_PIS.Value        :=DM5.Tb_RCFOPRCFOP_PIS.Value        +ppiscof;
            end;
        end;
        DM5.Tb_RCFOP.Post;
//        end;
   if Trim(puf)='' then
      puf:=DM1.Tb_EmpUF.Value;

   if DM5.Tb_RUF.FindKey([puf]) then
      DM5.Tb_RUF.Edit
   else
      begin
      DM5.Tb_RUF.Append;
      DM5.Tb_RUFruf_UF.Value         :=puf;
      DM5.Tb_RUFruf_VlrContabil.Value:=0;
      DM5.Tb_RUFruf_Base.Value       :=0;
      DM5.Tb_RUFruf_Icms.Value       :=0;
      DM5.Tb_RUFruf_Baser.Value      :=0;
      DM5.Tb_RUFruf_Icmsr.Value      :=0;
      DM5.Tb_RUFruf_Isentas.Value    :=0;
      DM5.Tb_RUFruf_Outras.Value     :=0;
      DM5.Tb_RUFruf_PIS.Value        :=0;
      end;
   if (pMod<>1) and (ptipo=5) then
      begin
      if copy(pcfo,2,3)='929' then
         begin
//         if (pparam=1) then
//            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+pvlrliv;
            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+pvlrcont;
         end
      else
//         DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+pvlrliv;
         DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+pvlrcont;
      end
   else if (par_ordement<2) then
      begin
      if copy(pcfo,2,3)='929' then
         begin
//         if (pparam=1) then
//            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+pvlrliv;
            DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+pvlrcont;
         end
      else
//         DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+pvlrliv;
         DM5.Tb_RUFruf_VlrContabil.Value:=DM5.Tb_RUFruf_VlrContabil.Value+pvlrcont;
      end;

   if (pMod=1) and (paliq=0) then
      DM5.Tb_RUFruf_ICMSR.Value      :=DM5.Tb_RUFruf_ICMSR.Value      +picmsn
   else
      begin
      if (pMod<>1) and (ptipo=5) then
         begin
         DM5.Tb_RUFruf_BASER.Value       :=DM5.Tb_RUFruf_BASER.Value     +pbasen;
         DM5.Tb_RUFruf_ICMSR.Value       :=DM5.Tb_RUFruf_ICMSR.Value     +picmsn;
         DM5.Tb_RUFruf_Isentas.Value    :=DM5.Tb_RUFruf_Isentas.Value    +pisentas;
         DM5.Tb_RUFruf_Outras.Value     :=DM5.Tb_RUFruf_Outras.Value     +poutras;
         DM5.Tb_RUFruf_PIS.Value        :=DM5.Tb_RUFruf_PIS.Value        +ppiscof;
         end
      else
         begin
         if px<>'3' then
            DM5.Tb_RUFruf_BASE.Value       :=DM5.Tb_RUFruf_BASE.Value       +pbasen;
         DM5.Tb_RUFruf_ICMS.Value       :=DM5.Tb_RUFruf_ICMS.Value       +picmsn;
         DM5.Tb_RUFruf_Isentas.Value    :=DM5.Tb_RUFruf_Isentas.Value    +pisentas;
         DM5.Tb_RUFruf_Outras.Value     :=DM5.Tb_RUFruf_Outras.Value     +poutras;
         DM5.Tb_RUFruf_PIS.Value        :=DM5.Tb_RUFruf_PIS.Value        +ppiscof;
         end;


      end;
   DM5.Tb_RUF.Post;
   end
else if ((pparam=1) or (pparam=2))  and (pstatus<>9) then
   begin
{   if pcfo='6202' then
      ShowMessage('achou!!! '+DM5.Qr_NSNSCHAVEP.AsString+' nota '+DM5.Qr_NSNSNUMERO.AsString+' cupom '+DM5.Qr_NSNSNUMCUP.AsString );
 }
   if DM5.Tb_RsCFO.FindKey([valint(pcfo)]) then
      DM5.Tb_RsCFO.Edit
   else
      begin
      flcadcfo(1,0,pcfo);
      DM5.Tb_RSCFO.Append;
      DM5.Tb_RsCFOCFO.Value    :=ValInt(pcfo);
      DM5.Tb_RsCFOTOTNOTA.Value:=0;
      DM5.Tb_RsCFOBASEN.Value  :=0;
      DM5.Tb_RsCFOICMSN.Value  :=0;
      DM5.Tb_RsCFOBASER.Value  :=0;
      DM5.Tb_RsCFOICMSR.Value  :=0;
      DM5.Tb_RsCFOISENTAS.Value:=0;
      DM5.Tb_RsCFOOUTRAS.Value :=0;
      DM5.Tb_RsCFOIPI.Value    :=0;
      end;
    if (pMod<>1) and (ptipo=5) then

      begin
      if copy(pcfo,2,3)='929' then
         begin
//         if (pparam=1) then
//            DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+pvlrliv;
            DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+pvlrcont;
         end
      else
//         DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+pvlrliv;
         DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+pvlrcont;
      end
//  else if (px<>'3') or ((px='3') and (par_ordement<2) then
    else if (par_ordement<2) then
      begin
      if copy(pcfo,2,3)='929' then
         begin
//         if (pparam=1) then
//            DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+pvlrliv;
            DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+pvlrcont;
         end
      else
//         DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+pvlrliv;
         DM5.Tb_RsCFOTOTNOTA.Value:=DM5.Tb_RsCFOTOTNOTA.Value+pvlrcont;
      end;

   if (pMod=1) and (paliq=0) then
      DM5.Tb_RsCFOICMSR.Value  :=DM5.Tb_RsCFOICMSR.Value  +picmsn
   else
      begin
      if (pMod<>1) and (ptipo=5) then
         begin
         DM5.Tb_RsCFOBASER.Value  :=DM5.Tb_RsCFOBASER.Value  +pbasen;
         DM5.Tb_RsCFOICMSR.Value  :=DM5.Tb_RsCFOICMSR.Value  +picmsn;
         DM5.Tb_RsCFOOUTRAS.Value:=DM5.Tb_RsCFOOUTRAS.Value+poutras;
         DM5.Tb_RsCFOISENTAS.Value:=DM5.Tb_RsCFOISENTAS.Value+pIsentas;
         end
      else
         begin
//            if pcfo='2407' then
//               showmessage('2407');


         if px<>'3' then
            DM5.Tb_RsCFOBASEN.Value  :=DM5.Tb_RsCFOBASEN.Value  +pbasen;
         DM5.Tb_RsCFOICMSN.Value  :=DM5.Tb_RsCFOICMSN.Value  +picmsn;
         DM5.Tb_RsCFOOUTRAS.Value:=DM5.Tb_RsCFOOUTRAS.Value+poutras;
         DM5.Tb_RsCFOISENTAS.Value:=DM5.Tb_RsCFOISENTAS.Value+pIsentas;
         end;


      end;
   DM5.Tb_RsCFO.Post;
   if DM5.Tb_RSint.FindKey([fStringtodate(Formatdatetime(fdt2, pdtemis))]) then
      DM5.Tb_RSint.Edit
   else
      begin
      DM5.Tb_RSint.Append;
      DM5.Tb_RSintRS_DATA.Value:=fStringtodate(Formatdatetime(fdt2, pdtemis));
      DM5.Tb_RSintRS_TIPO.Value:='A';
      DM5.Tb_RSintRS_TOTNOTA.Value:=0;
      DM5.Tb_RSintRS_BASEN.Value  :=0;
      DM5.Tb_RSintRS_ICMSN.Value  :=0;
      DM5.Tb_RSintrs_BASER.Value  :=0;
      DM5.Tb_RSintrS_icmsr.Value  :=0;
      DM5.Tb_RSintRS_ISENTAS.Value:=0;
      DM5.Tb_RSintRS_OUTRAS.Value :=0;
      DM5.Tb_RSintRS_IPI.Value    :=0;
      end;
   if (pMod<>1) and (ptipo=5) then
      begin
      if copy(pcfo,2,3)='929' then
         begin
//         if (pparam=1) then
//            DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+pvlrliv;
            DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+pvlrcont;
         end
      else
//         DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+pvlrliv;
         DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+pvlrcont;
      end
   else if (par_ordement<2) then
      begin
      if copy(pcfo,2,3)='929' then
         begin
//         if (pparam=1) then
//            DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+pvlrliv;
            DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+pvlrcont;
         end
      else
//         DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+pvlrliv;
         DM5.Tb_RSintRS_TOTNOTA.Value:=DM5.Tb_RSintRS_TOTNOTA.Value+pvlrcont;
      end;

   if (pMod=1) and (paliq=0) then
      DM5.Tb_RSintRS_ICMSR.Value  :=DM5.Tb_RSintRS_ICMSR.Value  +picmsn
   else
      begin
      if (pMod<>1) and (ptipo=5) then
         begin
         DM5.Tb_RSintRS_BASEN.Value  :=DM5.Tb_RSintRS_BASER.Value  +pbasen;
         DM5.Tb_RSintRS_ICMSN.Value  :=DM5.Tb_RSintRS_ICMSR.Value  +picmsn;
         DM5.Tb_RSintRS_ISENTAS.Value:=DM5.Tb_RSintRS_ISENTAS.Value+pisentas;
         DM5.Tb_RSintRS_OUTRAS.Value :=DM5.Tb_RSintRS_OUTRAS.Value +poutras;
         end
      else
         begin
         if px<>'3' then
            DM5.Tb_RSintRS_BASEN.Value  :=DM5.Tb_RSintRS_BASEN.Value  +pbasen;
         DM5.Tb_RSintRS_ICMSN.Value  :=DM5.Tb_RSintRS_ICMSN.Value  +picmsn;
         DM5.Tb_RSintRS_ISENTAS.Value:=DM5.Tb_RSintRS_ISENTAS.Value+pisentas;
         DM5.Tb_RSintRS_OUTRAS.Value :=DM5.Tb_RSintRS_OUTRAS.Value +poutras;
         end;
      end;
   DM5.Tb_RSint.Post;
   end;
result:=true;
end;

function flrsgrava5475(pparam,pItem: Integer; paliq,pnumero,pCodPro,pQtd,PPreco,pTotDes,picmsn,pbasen,picmsr,pBaser,pVlrIpi: Real; pcfo,pserie,psubser,pmodelo,pcnpj,pie,pCst: String; pdtemis,pdt1,pdt2: TDateTime;pCodPro_Ori,pNome_Ori: String): Boolean;

var
miva, mbase, mredut: Real;
mmesano: string;
begin

{
if pcodpro=0 then
   begin
   showmessage('e esse');
   end;
}
if (PPreco*pQtd)<0.0001 then
   begin
   Result:=false;
   exit;
   end;

if pparam<>1 then
   begin
   if pmodelo='65' then
      begin
      mmesano:=formatdatetime('mmyyyy', pdtemis);
      if DM5.cds_tipo61r.FindKey([mmesano,pCodPro]) then
         begin
         DM5.cds_tipo61r.Edit;
         end
      else
         begin
         DM5.cds_tipo61r.Append;
         DM5.cds_tipo61rt61r_tipo.Value:='61R';
         DM5.cds_tipo61rt61r_mesano.Value:=mmesano;
         DM5.cds_tipo61rt61r_cod_item.Value:=floattostr(pCodPro);
         DM5.cds_tipo61rt61r_quant.Value  :=0;
         DM5.cds_tipo61rt61r_vlbruto.Value:=0;
         DM5.cds_tipo61rt61r_bcicms.Value :=0;
         DM5.cds_tipo61rt61r_aliq.Value   :=0;
         end;

      DM5.cds_tipo61rt61r_quant.Value  :=DM5.cds_tipo61rt61r_quant.Value+pQtd;
      DM5.cds_tipo61rt61r_vlbruto.Value:=DM5.cds_tipo61rt61r_vlbruto.Value+ arredonda( (PPreco*pQtd) ,2) - pTotDes;
      if pbasen=0 then
         DM5.cds_tipo61rt61r_bcicms.Value:=DM5.cds_tipo61rt61r_bcicms.Value+ arredonda( (PPreco*pQtd) ,2) - pTotDes
      else
         DM5.cds_tipo61rt61r_bcicms.Value :=DM5.cds_tipo61rt61r_bcicms.Value+pbasen;
      DM5.cds_tipo61rt61r_aliq.Value   :=paliq;
      DM5.cds_tipo61r.Post;
      end
   else
      begin
      DM5.Tb_R54.Append;
      DM5.Tb_R54T54_TIPO.Value       :='54';
      DM5.Tb_R54T54_DATA.Value       :=fStringtodate(Formatdatetime(fdt2, pdtemis));
      DM5.Tb_R54T54_DATA_REF.Value   :=fStringtodate(Formatdatetime(fdt2, pdtemis));
      DM5.Tb_R54T54_ITEM.Value       :=Formatfloat('000',pitem);
      DM5.Tb_R54T54_CNPJ.Value       :=pcnpj;
      DM5.Tb_R54T54_NUMERO.Value     :=pnumero;
      DM5.Tb_R54T54_MODELO.Value     :=pmodelo;
      if trim(pserie)='' then
         DM5.Tb_R54T54_SERIE.Value   :='01'
      else
         DM5.Tb_R54T54_SERIE.Value   :=pserie;
      DM5.Tb_R54T54_SUBSERIE.Value   :=psubser;
      DM5.Tb_R54T54_CFOP.Value       :=ValFloat(pcfo);
      if pitem>990 then
         begin
         DM5.Tb_R54T54_CODPROD.Value    :='';
         DM5.Tb_R54T54_CST.Value        :='';
         end
      else
         begin
         DM5.Tb_R54T54_CODPROD.Value    :=pCodPro_Ori;
         DM5.Tb_R54T54_CST.Value        :=pCst;
         end;
      DM5.Tb_R54T54_QUANTIDADE.Value :=pQtd;
      DM5.Tb_R54T54_VLPRODUTO.Value  :=(PPreco*pQtd)+pVlrIpi;
      DM5.Tb_R54T54_VLDESCONTO.Value :=pTotDes;
      DM5.Tb_R54T54_BCICMS.Value     :=pbasen;
      DM5.Tb_R54T54_BCICMSST.Value   :=pBaser;
      DM5.Tb_R54T54_ALIQ.Value       :=paliq;
      DM5.Tb_R54T54_VLIPI.Value      :=0;
    //   DM5.Tb_R54T54_VLIPI.Value      :=pVlrIpi;
      DM5.Tb_R54.Post;
      end;
   end;   
if pItem<991 then
   begin

   if not DM5.Tb_R75.FindKey([pcodpro_ori]) then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.Sql.Add('Select PREDUTNA,PREDUTNB,PREDUTRA,PREDUTRB,'
                        +' PIVAINA,PIVAPOS,PIVANEG,PICMSA,PICMSB from CADUF where ');
      if not DM1.Qr_Tid.Locate('TINOME','CADUF',[]) then
         DM1.Query2.SQL.Add(' PCODEMP='+IntToStr(codemp)+' and ');
      DM1.Query2.SQL.Add(' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
      DM1.Query2.Open;
{
      if pcodpro_ori='7897714333707' then
         showmessage('achei');
}
      flqr1('PDNOME,PDUND,PDSIT,PDCLAS,PDIPI,PDTABICM,PDLISTA','PD','CADPRO','N','PDCODPRO',pcodpro_ori);

      if DM1.Query1.FieldbyName('PDLISTA').AsInteger=2 then
         miva:=DM1.Query2.fieldbyName('PIVANEG').asFloat
      else if DM1.Query1.Fields[6].AsInteger=1 then
         miva:=DM1.Query2.Fields[5].AsFloat
      else
         miva:=DM1.Query2.Fields[4].AsFloat;
      if DM1.Query1.Fields[5].AsString='B' then
         begin
         mredut:=DM1.Query2.Fields[1].AsFloat;
         mbase :=DM1.Query2.Fields[3].AsFloat;
         end
      else
         begin
         mredut:=DM1.Query2.Fields[0].asfloat;
         mbase :=DM1.Query2.Fields[2].AsFloat;
         end;
      mbaser:=PPreco+(PPreco*miva/100);
      mbaser:=mbaser-(mbaser*mbase/100);

      fGravarTipo75(valfloat(pcodpro_ori),pDt1,pDt2);
      end;
   end;
result:=true;
end;



function fGravarTipo75(pCodPro: Real;pDt1,pDt2: TDateTime): Boolean;
var
query_uf: tquery;
pPreco:real;
begin


if pcodpro=0 then
//   showmessage(' e esse lindomaragora');
  begin
  result:=true;
  exit;
  end;

if not DM5.Tb_R75.FindKey([pcodpro]) then
   begin
   query_uf:=tquery.create(nil);
   query_uf.DatabaseName:='SG_ASSOC';
   query_uf.Close;
   query_uf.SQL.Clear;
   query_uf.Sql.Add('Select PREDUTNA,PREDUTNB,PREDUTRA,PREDUTRB,'
                     +' PIVAINA,PIVAPOS,PIVANEG,PICMSA,PICMSB from CADUF where ');
   if not DM1.Qr_Tid.Locate('TINOME','CADUF',[]) then
      query_uf.SQL.Add(' PCODEMP='+IntToStr(codemp)+' and ');
   query_uf.SQL.Add(' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
   query_uf.Open;
   fLerGenerico_query('CADPRO','PDNOME,PDUND,PDSIT,PDCLAS,PDIPI,PDTABICM,PDLISTA,PDPRECO1,PDPRECOC','PDCODPRO=0'+Floattostr(pcodpro),query_consulta);
   if query_consulta.isempty=true then
      begin
      fLerGenerico_query('OLD_CADPRO','PDNOME,PDUND,PDSIT,PDCLAS,PDIPI,PDTABICM,PDLISTA,PDPRECO1,PDPRECOC','PDCODPRO=0'+Floattostr(pcodpro),query_consulta);
      end;



   if query_consulta.FieldbyName('PDLISTA').AsInteger=2 then
      miva:=query_uf.fieldbyName('PIVANEG').asFloat
   else if query_consulta.Fields[6].AsInteger=1 then
      miva:=query_uf.Fields[5].AsFloat
   else
      miva:=query_uf.Fields[4].AsFloat;
   if query_consulta.Fields[5].AsString='B' then
      begin
      mredut:=query_uf.Fields[1].AsFloat;
      mbase :=query_uf.Fields[3].AsFloat;
      end
   else
      begin
      mredut:=query_uf.Fields[0].asfloat;
      mbase :=query_uf.Fields[2].AsFloat;
      end;
   ppreco:=query_consulta.fieldbyname('PDPRECOC').asfloat;
   if ppreco=0 then
      ppreco:=query_consulta.fieldbyname('PDPRECO1').asfloat;

   mbaser:=PPreco+(PPreco*miva/100);
   mbaser:=mbaser-(mbaser*mbase/100);
//   if pCodPro=237027 then
//     showmessage('achou lindomaragora');

   DM5.Tb_R75.Append;
   DM5.Tb_R75T75_TIPO.Value:='75';
   DM5.Tb_R75T75_CODPROD.Value       :=floattostr(pcodpro);
   DM5.Tb_R75T75_DATAINICIAL.Value   :=pdt1;
   DM5.Tb_R75T75_DATAFINAL.Value     :=pdt2;
   if fdeixanum2(query_consulta.Fields[3].AsString)='' then
      DM5.Tb_R75T75_CODNCM.Value        :='00000001'
   else
      DM5.Tb_R75T75_CODNCM.Value        :=trim(query_consulta.Fields[3].AsString);

   DM5.Tb_R75T75_DESCRICAO.Value     :=query_consulta.Fields[0].AsString;
   DM5.Tb_R75T75_UNID.Value          :=query_consulta.Fields[1].AsString;
   DM5.Tb_R75T75_SITTRI.Value        :=query_consulta.Fields[2].AsString;
   DM5.Tb_R75T75_ALIQUOTAIPI.Value   :=query_consulta.Fields[4].AsFloat;
   if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2 then
      begin
      if query_consulta.Fields[5].AsString='B' then
         DM5.Tb_R75T75_ALIQUOTAICMS.Value  :=query_uf.Fields[8].AsFloat
      else
         DM5.Tb_R75T75_ALIQUOTAICMS.Value  :=query_uf.Fields[7].AsFloat;
      DM5.Tb_R75T75_REDBCICMS.Value     :=mredut;
      DM5.Tb_R75T75_BCICMSST.Value      :=mbaser;
      end
   else
      begin
      DM5.Tb_R75T75_ALIQUOTAICMS.Value  :=0;
      DM5.Tb_R75T75_REDBCICMS.Value     :=0;
      DM5.Tb_R75T75_BCICMSST.Value      :=0;
      end;

   DM5.Tb_R75.Post;
   freeandnil(query_uf);

   end;

end;


function flrsgrava53(pparam,pTipo: Integer; pnumero,pstatus,picmsr,pDespAce,pbaser: Real; pcfo,puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;
// param 0-So Livro
//       1-Sintegra
begin
if DM5.Tb_r53.Locate('T53_NUMERO;T53_CFOP;T53_CNPJ;T53_IE;T53_DATA',vararrayof([pnumero,valfloat(pcfo),pcnpj,pie,fStringtodate(Formatdatetime(fdt2, pdtemis))]),[]) then
   DM5.Tb_R53.edit
else
  begin
   DM5.Tb_R53.Append;
  DM5.Tb_R53T53_NUMERO.Value       :=pnumero;
  DM5.Tb_R53T53_CFOP.Value         :=ValFloat(pcfo);
  DM5.Tb_R53T53_CNPJ.Value         :=pcnpj;
  DM5.Tb_R53T53_IE.Value           :=pie;
  DM5.Tb_R53T53_DATA.Value         :=fStringtodate(Formatdatetime(fdt2, pdtemis));
  DM5.Tb_R53T53_UF.Value           :=puf;
  DM5.Tb_R53T53_MODELO.Value       :=pmodelo;
  DM5.Tb_R53T53_BCICMSST.Value     :=0;
  DM5.Tb_R53T53_ICMSRETIDO.Value   :=0;
  DM5.Tb_R53T53_DESPACES.Value     :=0;
  DM5.Tb_R53T53_EMITENTE.Value     :=pEmitente;

  end;

DM5.Tb_R53T53_TIPO.Value         :='53';
DM5.Tb_R53T53_DATA_REF.Value     :=fStringtodate(Formatdatetime(fdt2, pdtemis));
if trim(pserie)='' then
   DM5.Tb_R53T53_SERIE.Value      :='01'
else
   DM5.Tb_R53T53_SERIE.Value      :=pserie;

DM5.Tb_R53T53_BCICMSST.Value     :=DM5.Tb_R53T53_BCICMSST.Value+pbaser;
DM5.Tb_R53T53_ICMSRETIDO.Value   :=DM5.Tb_R53T53_ICMSRETIDO.Value+picmsr;
DM5.Tb_R53T53_DESPACES.Value     :=DM5.Tb_R53T53_DESPACES.Value+pDespAce;

if pstatus=9 then
   DM5.Tb_R53T53_SITUACAO.Value  :='S'
else
   DM5.Tb_R53T53_SITUACAO.Value  :='N';
DM5.Tb_R53.Post;



{
DM5.Tb_R53.Append;
DM5.Tb_R53T53_TIPO.Value         :='53';
DM5.Tb_R53T53_DATA_REF.Value     :=pdtemis;
DM5.Tb_R53T53_NUMERO.Value       :=pnumero;
DM5.Tb_R53T53_CFOP.Value         :=ValFloat(pcfo);
DM5.Tb_R53T53_CNPJ.Value         :=pcnpj;
DM5.Tb_R53T53_IE.Value           :=pie;
DM5.Tb_R53T53_DATA.Value         :=pdtemis;
DM5.Tb_R53T53_UF.Value           :=puf;
DM5.Tb_R53T53_MODELO.Value       :=pmodelo;
if trim(pserie)='' then
   DM5.Tb_R53T53_SERIE.Value      :='01'
else
   DM5.Tb_R53T53_SERIE.Value      :=pserie;
DM5.Tb_R53T53_BCICMSST.Value     :=pbaser;
DM5.Tb_R53T53_ICMSRETIDO.Value   :=picmsr;
DM5.Tb_R53T53_DESPACES.Value     :=pDespAce;
DM5.Tb_R53T53_SUBSERIE.Value     :=psubser;
DM5.Tb_R53T53_EMITENTE.Value     :=pemitente;
if pstatus=9 then
   DM5.Tb_R53T53_SITUACAO.Value  :='S'
else
   DM5.Tb_R53T53_SITUACAO.Value  :='N';
DM5.Tb_R53.Post;
}
result:=true;
end;


function flrsgrava50(pparam,pTipo: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;
// param 0-So Livro
//       1-Sintegra
var
mdata_teste: string;
begin
mdata_teste:=formatdatetime(fdt2,pdtemis);
DM5.Tb_R50.Append;

DM5.Tb_R50T50_TIPO.Value        :='50';
DM5.Tb_R50T50_DATA_REF.Value    :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.Tb_R50T50_NUMERO.Value      :=pnumero;
DM5.Tb_R50T50_EMITENTE.Value    :=pemitente;
DM5.Tb_R50T50_SEQUENCIA.Value   :=0;
DM5.Tb_R50T50_CFOP.Value        :=pcfo;
DM5.Tb_R50T50_CNPJ.Value        :=pcnpj;
DM5.Tb_R50T50_IE.Value          :=pie;
DM5.Tb_R50T50_DATA.Value        :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.Tb_R50T50_UF.Value          :=puf;
DM5.Tb_R50T50_MODELO.Value      :=pmodelo;
if trim(pserie)='' then
   DM5.Tb_R50T50_SERIE.Value    :='01'
else
   DM5.Tb_R50T50_SERIE.Value    :=pserie;
DM5.Tb_R50T50_SUBSERIE.Value    :=psubser;
DM5.Tb_R50T50_VLTOTAL.Value     :=pVlTotal;
if (pbcicms>0) and (picms>0) and (pAliq=0) then
   paliq:=trunc( (pbcicms / picms));


if (DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=1) and (pcfo>4999)  then
   begin
   DM5.Tb_R50T50_BCICMS.Value      :=0;
   DM5.Tb_R50T50_ICMS.Value        :=0;
   DM5.Tb_R50T50_ALIQUOTA.Value    :=0;

   end
else
   begin
   DM5.Tb_R50T50_BCICMS.Value      :=pbcicms;
   DM5.Tb_R50T50_ICMS.Value        :=pIcms;
   DM5.Tb_R50T50_ALIQUOTA.Value    :=pAliq;

   end;

DM5.Tb_R50T50_ISENTAS.Value     :=pIsentas;
DM5.Tb_R50T50_OUTRAS.Value      :=pVlTotal-(pbcicms+pIsentas);
if DM5.Tb_R50T50_OUTRAS.Value<0 then
   DM5.Tb_R50T50_OUTRAS.Value:=0;

//DM5.Tb_R50T50_OUTRAS.Value      :=pOutras;


if pstatus>6 then
   DM5.Tb_R50T50_SITUACAO.Value :='S'
else
   DM5.Tb_R50T50_SITUACAO.Value :='N';
DM5.Tb_R50.Post;
result:=true;
end;




function flrsgrava61(pparam,pTipo: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;
// param 0-So Livro
//       1-Sintegra
begin
DM5.cds_tipo61.Append;
DM5.cds_tipo61t61_tipo.Value     :='61';
DM5.cds_tipo61t61_brancos.Value  :=' ';
DM5.cds_tipo61t61_brancos1.Value :=' ';
DM5.cds_tipo61t61_data.Value     :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.cds_tipo61t61_data_ref.Value :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.cds_tipo61t61_modelo.Value   :=pmodelo;
//DM5.cds_tipo61t61_serie.Value    :=pserie;
DM5.cds_tipo61t61_serie.Value    :='U';
DM5.cds_tipo61t61_subserie.Value :=psubser;

DM5.cds_tipo61t61_ninicial.Value :=trunc(pnumero);
DM5.cds_tipo61t61_nfinal.Value   :=trunc(pnumero);
DM5.cds_tipo61t61_vltotal.Value  :=pVlTotal;
DM5.cds_tipo61t61_bcicms.Value   :=pbcicms;
DM5.cds_tipo61t61_vlicms.Value   :=pIcms;
DM5.cds_tipo61t61_isentas.Value  :=pIsentas;
DM5.cds_tipo61t61_outras.Value   :=pOutras;
DM5.cds_tipo61t61_aliquota.Value :=pAliq;
DM5.cds_tipo61t61_brancos2.Value :=' ';
DM5.cds_tipo61.Post;

result:=true;
end;



function flrsgrava51(pparam,pTipo: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;
// param 0-So Livro
//       1-Sintegra
begin
if picms=0 then
   picms:=pbcicms;
DM5.Tb_R51.Append;

DM5.Tb_R51T51_TIPO.Value        :='51';
DM5.Tb_R51T51_DATA_REF.Value    :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.Tb_R51T51_NUMERO.Value      :=pnumero;
DM5.Tb_R51T51_CFOP.Value        :=pcfo;
DM5.Tb_R51T51_CNPJ.Value        :=pcnpj;
DM5.Tb_R51T51_IE.Value          :=pie;
DM5.Tb_R51T51_DATA.Value        :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.Tb_R51T51_UF.Value          :=puf;
if trim(pserie)='' then
   DM5.Tb_R51T51_SERIE.Value    :='01'
else
   DM5.Tb_R51T51_SERIE.Value    :=pserie;
DM5.Tb_R51T51_SUBSERIE.Value    :=psubser;
DM5.Tb_R51T51_VLTOTAL.Value     :=pIcms;
DM5.Tb_R51T51_VLIPI.Value       :=pIcms;
DM5.Tb_R51T51_ISENTAS.Value     :=pIsentas;
DM5.Tb_R51T51_OUTRAS.Value      :=pOutras;
if pstatus=9 then
   DM5.Tb_R51T51_SITUACAO.Value :='S'
else
   DM5.Tb_R51T51_SITUACAO.Value :='N';
DM5.Tb_R51.Post;
result:=true;
end;


function flrsgrava55(pTipo: Integer;pValGNR: Real; pCnpj,puf,pUFST,Pie,PBancoGNR,pAgenciaGNR,PNumeroGNR,pMes,PAno,PNConvenio: String; pDataGNR,pDataVcto: TDateTime): Boolean;
begin
DM5.Tb_R55.Append;
DM5.Tb_R55T55_TIPO.Value      :='55';
DM5.Tb_R55T55_CNPJST.Value    :=pCnpj;
DM5.Tb_R55T55_IEST.Value      :=Pie;
DM5.Tb_R55T55_DATAGNR.Value   :=pDataGNR;
DM5.Tb_R55T55_DATAVENCTO.Value:=pDataVcto;
DM5.Tb_R55T55_UF.Value        :=puf;
DM5.Tb_R55T55_UFST.Value      :=pUFST;
DM5.Tb_R55T55_BANCOGNR.Value  :=PBancoGNR;
DM5.Tb_R55T55_AGENCIAGNR.Value:=pAgenciaGNR;
DM5.Tb_R55T55_NUMEROGNR.Value :=PNumeroGNR;
DM5.Tb_R55T55_VLGNR.Value     :=pValGNR;
DM5.Tb_R55T55_MESANOREF.Value :=pMes+PAno;
DM5.Tb_R55T55_NCONVENIO.Value :=PNConvenio;
DM5.Tb_R55T55_BRANCOS.Value   :=' ';
DM5.Tb_R55.Post;
result:=true;
end;

function flrsgrava60M(pTipo,pNEcf: Integer;pNInicial,PNFinal,PRedZ,PCRO,pVlVB,pVlGt: Real; pNsEcf,pModelo: String; pDataDoc: TDateTime): Boolean;
begin
DM5.Tb_R60M.Append;
DM5.Tb_R60MT60M_TIPO.Value    :='60';
DM5.Tb_R60MT60M_MA.Value      :='M';
DM5.Tb_R60MT60M_DATA.Value    :=pDataDoc;
DM5.Tb_R60MT60M_DATA_REF.Value:=pDataDoc;
DM5.Tb_R60MT60M_NECF.Value    :=FormatFloat('000',pNEcf);
DM5.Tb_R60MT60M_NSECF.Value   :=pNsEcf;
DM5.Tb_R60MT60M_MODELO.Value  :=pModelo;
if trim(DM5.Tb_R60MT60M_MODELO.AsString)='' then
   DM5.Tb_R60MT60M_MODELO.Value:='2D';
DM5.Tb_R60MT60M_NINICIAL.Value:=pNInicial;
DM5.Tb_R60MT60M_NFINAL.Value  :=PNFinal;
DM5.Tb_R60MT60M_NREDZ.Value   :=PRedZ;
DM5.Tb_R60MT60M_CRO.Value     :=PCRO;
DM5.Tb_R60MT60M_VLVB.Value    :=pVlVB;
DM5.Tb_R60MT60M_VLGT.Value    :=pVlGt;
DM5.Tb_R60MT60M_BRANCOS.Value :=' ';
DM5.Tb_R60M.Post;
result:=true;
end;

function flrsgrava60A(pTipo: Integer;pVlTp: Real; pNsEcf,pNECF,pSitAliq: String; pDataDoc: TDateTime): Boolean;
begin
DM5.Tb_R60A.Append;
DM5.Tb_R60AT60A_TIPO.Value    :='60';
DM5.Tb_R60AT60A_MA.Value      :='A';
DM5.Tb_R60AT60A_DATA.Value    :=pDataDoc;
DM5.Tb_R60AT60A_DATA_REF.Value:=pDataDoc;
DM5.Tb_R60AT60A_NSECF.Value   :=pNsEcf;
DM5.Tb_R60AT60A_NECF.Value    :=pNECF;
DM5.Tb_R60AT60A_SITALIQ.Value :=PSitAliq;
DM5.Tb_R60AT60A_VLTP.Value    :=pVlTp;
DM5.Tb_R60AT60A_BRANCOS.Value :=' ';
DM5.Tb_R60A.Post;
result:=true;
end;

function flrsgrava60D(pTipo: Integer;pQuant,pVlBruto,pVlBcIcms,pVlCICMS: Real; pNsEcf,pSitAliq,pCodPro: String; pDataDoc: TDateTime): Boolean;
begin
DM5.Tb_R60D.Append;
DM5.Tb_R60DT60D_TIPO.Value    :='60';
DM5.Tb_R60DT60D_MA.Value      :='D';
DM5.Tb_R60DT60D_DATA.Value    :=pDataDoc;
DM5.Tb_R60DT60D_DATA_REF.Value:=pDataDoc;
DM5.Tb_R60DT60D_NSECF.Value   :=pNsEcf;
DM5.Tb_R60DT60D_CODPRO.Value  :=pCodpro;
DM5.Tb_R60DT60D_SITALIQ.Value :=pSitAliq;
DM5.Tb_R60DT60D_QUANT.Value   :=pQuant;
DM5.Tb_R60DT60D_VLBRUTO.Value :=pVlBruto;
DM5.Tb_R60DT60D_VLBCICMS.Value:=pVlBcIcms;
DM5.Tb_R60DT60D_VLCICMS.Value :=pVlCICMS;
DM5.Tb_R60DT60D_BRANCOS.Value :=' ';
DM5.Tb_R60D.Post;
result:=true;
end;

function flrsgrava60I(pTipo,pItem: Integer;pQuant,pVlUnit,pTotal,pBCICMS,pVLICMS,pNumDoc: Real; pNsEcf,pModelo,pSitAliq,pCodPro: String; pDataDoc: TDateTime): Boolean;
begin
if pTotal<0 then
   pTotal:=0;
if pVlUnit<0 then
   pVlUnit:=0;
if pBCICMS<0 then
   pBCICMS:=0;
if pVLICMS<0 then
   pVLICMS:=0;

DM5.Tb_R60I.Append;
DM5.Tb_R60IT60I_TIPO.Value    :='60';
DM5.Tb_R60IT60I_SUBTIPO.Value :='I';
DM5.Tb_R60IT60I_DATA.Value    :=pDataDoc;
DM5.Tb_R60IT60I_DATA_REF.Value:=pDataDoc;
DM5.Tb_R60IT60I_NSECF.Value   :=pNsEcf;
DM5.Tb_R60IT60I_MODELO.Value  :=pModelo;
if trim(DM5.Tb_R60IT60I_MODELO.AsString)='' then
   DM5.Tb_R60IT60I_MODELO.Value:='2D';

DM5.Tb_R60IT60I_SITALIQ.Value :=pSitAliq;
DM5.Tb_R60IT60I_CODPRO.Value  :=pCodPro;
DM5.Tb_R60IT60I_NUMDOC.Value  :=pNumDoc;
DM5.Tb_R60IT60I_ITEM.Value    :=pItem;
DM5.Tb_R60IT60I_QUANT.Value   :=pQuant;
DM5.Tb_R60IT60I_VLUNIT.Value  :=pVlUnit;
DM5.Tb_R60IT60I_TOTAL.Value   :=pTotal;
DM5.Tb_R60IT60I_BCICMS.Value  :=pBCICMS;
DM5.Tb_R60IT60I_VLICMS.Value  :=pVLICMS;
DM5.Tb_R60IT60I_BRANCOS.Value :=' ';
DM5.Tb_R60I.Post;

fGravarTipo75(valfloat(pCodPro),strtodate('01/'+formatdatetime('mm/yyyy', pDataDoc)),fultdiames(pdatadoc));

result:=true;
end;

function flrsgrava60R(pTipo: Integer;pQuant,pVlTotal,pBcIcms: Real; pSitAliq,pCodPro,pMes,pAno: String): Boolean;
begin
DM5.Tb_R60R.Append;
DM5.Tb_R60RT60R_TIPO.Value    :='60';
DM5.Tb_R60RT60R_SUBTIPO.Value :='R';
DM5.Tb_R60RT60R_SITALI.Value  :=pSitAliq;
DM5.Tb_R60RT60R_MESANO.Value  :=pMes+pAno;
DM5.Tb_R60RT60R_CODPRO.Value  :=pCodPro;
DM5.Tb_R60RT60R_QUANT.Value   :=pQuant;
DM5.Tb_R60RT60R_VLTOTAL.Value :=pVlTotal;
DM5.Tb_R60RT60R_BCICMS.Value  :=pBcIcms;
DM5.Tb_R60RT60R_BRANCOS.Value :=' ';
DM5.Tb_R60R.Post;
result:=true;
end;


function flrsgrava70(pparam,pTipo,PfretePc: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;
// param 0-So Livro
//       1-Sintegra
begin
DM5.Tb_R70.Append;

DM5.Tb_R70T70_TIPO.Value        :='70';
DM5.Tb_R70T70_DATA_REF.Value    :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.Tb_R70T70_NUMERO.Value      :=pnumero;
DM5.Tb_R70T70_CFOP.Value        :=pcfo;
DM5.Tb_R70T70_CNPJ.Value        :=pcnpj;
DM5.Tb_R70T70_IE.Value          :=pie;
DM5.Tb_R70T70_DATA.Value        :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.Tb_R70T70_UF.Value          :=puf;
//MODELOS VALIDOS 08 OU 11
if (trim(pmodelo)='8') or (trim(pmodelo)='11') then
   DM5.Tb_R70T70_MODELO.Value      :=pmodelo
else
   DM5.Tb_R70T70_MODELO.Value      :='11';

if (trim(pserie)='B') OR (trim(pserie)='C') OR (trim(pserie)='U')  then
   DM5.Tb_R70T70_SERIE.Value    :=pserie
else
   DM5.Tb_R70T70_SERIE.Value    :='U';
DM5.Tb_R70T70_SUBSERIE.Value    :=psubser;
DM5.Tb_R70T70_VLTOTAL.Value     :=pVlTotal;
DM5.Tb_R70T70_BCICMS.Value      :=pbcicms;
DM5.Tb_R70T70_VLICMS.Value      :=pIcms;
DM5.Tb_R70T70_ISENTAS.Value     :=pIsentas;
DM5.Tb_R70T70_OUTRAS.Value      :=pOutras;
if pFretePc=0 then
   DM5.Tb_R70T70_CIFFOB.Value   :='1'
else if pFretePc=3 then
   DM5.Tb_R70T70_CIFFOB.Value   :='0'
else   
   DM5.Tb_R70T70_CIFFOB.Value   :=IntToStr(pFretePc);

if pstatus=9 then
   DM5.Tb_R70T70_SITUACAO.Value :='S'
else
   DM5.Tb_R70T70_SITUACAO.Value :='N';
DM5.Tb_R70.Post;
result:=true;
end;


function flrsgrava71(pparam,pTipo: Integer; pnumero,pstatus,pVlTotal,pbcicms,pIcms,pIsentas,pOutras,pAliq,pcfo: Real; puf,pserie,psubser,pmodelo,pemitente,pcnpj,pie,pobs: String; pdtemis: TDateTime): Boolean;
// param 0-So Livro
//       1-Sintegra
begin
DM5.Tb_R71.Append;

DM5.Tb_R71T71_TIPO.Value        :='71';
DM5.Tb_R71T71_DATA_REF.Value    :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.Tb_R71T71_NUMERO.Value      :=pnumero;
DM5.Tb_R71T71_CNPJTOMADOR.Value :=pcnpj;
DM5.Tb_R71T71_CNPJNF.Value      :=pcnpj;
DM5.Tb_R71T71_IETOMADOR.Value   :=pie;
DM5.Tb_R71T71_IENF.Value        :=pie;
DM5.Tb_R71T71_DATA.Value        :=fStringtodate(Formatdatetime(fdt2, pdtemis));
DM5.Tb_R71T71_UF.Value          :=puf;
DM5.Tb_R71T71_UFNF.Value        :=puf;
DM5.Tb_R71T71_MODELO.Value      :=pmodelo;
DM5.Tb_R71T71_MODELONF.Value    :=pmodelo;
if trim(pserie)='' then
   begin
   DM5.Tb_R71T71_SERIE.Value    :='01';
   DM5.Tb_R71T71_SERIENF.Value  :='01';
   end
else
   begin
   DM5.Tb_R71T71_SERIE.Value    :=pserie;
   DM5.Tb_R71T71_SERIENF.Value  :=pserie;
   end;
DM5.Tb_R71T71_SUBSERIE.Value    :=psubser;
DM5.Tb_R71T71_SUBSERIENF.Value  :=psubser;
DM5.Tb_R71T71_VLNF.Value        :=pVlTotal;
DM5.Tb_R71.Post;
result:=true;
end;


function flrsgrava74(pparam,pTipo: Integer;
pQtd,pTotal,pCnpj: Real;
pCodProd,pCodPos,pIE,pUF: String; pDt1,pDt2: TDateTime): Boolean;
// param 0-So Livro
//       1-Sintegra
var
mPreco: Real;
begin
if not DM5.Tb_R74.Locate('T74_CODPRO',fdeixanum(pcodprod),[]) then
   begin
   DM5.Tb_R74.Append;
   DM5.Tb_R74T74_TIPO.Value        :=74;
   DM5.Tb_R74T74_DATA.Value        :=pDt2;
   DM5.Tb_R74T74_CODPRO.Value      :=fdeixanum(pCodProd);
   //DM5.Tb_R74T74_CODPRO.Value      :=Formatfloat('00000000000000',ValFloat(pCodProd));
   DM5.Tb_R74T74_QTD.Value         :=pQtd;
   DM5.Tb_R74T74_TOTAL.Value       :=pTotal;
   DM5.Tb_R74T74_CODPOS.Value      :=pCodPos;
   DM5.Tb_R74T74_CNPJ.Value        :=pCnpj;
   //DM5.Tb_R74T74_IE.Value          :=pIE;
   //DM5.Tb_R74T74_IE.Value          :='ISENTO';
   DM5.Tb_R74T74_IE.Value          :='';
   DM5.Tb_R74T74_UF.Value          :=pUF;
   DM5.Tb_R74T74_BRANCOS.Value     :=' ';
   DM5.Tb_R74.Post;
   fGravarTipo75(valfloat(pcodprod),pDt1,pDt2);
   end;



result:=true;
end;


procedure TFrm_LRS.DTTERM2Exit(Sender: TObject);
begin
if Trim(DTTERM2.Text)<>'/  /' then
   begin
   try
      DTTERM2.Text:=FormatDateTime(fdt2, StrToDate(DTTERM2.Text));
   except
      FMensagem('Data invalida!',0,['0'],0);
      DTTERM2.SetFocus;
      end;
   end;

end;

procedure TFrm_LRS.DTTERM1Exit(Sender: TObject);
begin
if Trim(DTTERM1.Text)<>'/  /' then
   begin
   try
      DTTERM1.Text:=FormatDateTime(fdt2, StrToDate(DTTERM1.Text));
   except
      FMensagem('Data invalida!',0,['0'],0);
      DTTERM1.SetFocus;
      end;
   end;

end;

procedure TFrm_LRS.sbSalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(0,'_LRS','');
fGravaPadroes(0,'RG_MODELO'          ,'itemindex' ,'_LRS',IntTostr(RG_MODELO.ItemIndex));
fGravaPadroes(0,'TERMO'              ,'itemindex' ,'_LRS',IntTostr(TERMO.ItemIndex));
fGravaPadroes(0,'CB_PISCOF'          ,'checked'   ,'_LRS',iif(CB_PISCOF.Checked,'true','false'));
fGravaPadroes(0,'CB_ICMSROBS'        ,'checked'   ,'_LRS',iif(CB_ICMSROBS.Checked,'true','false'));
fGravaPadroes(0,'CB_ANTIGO'          ,'checked'   ,'_LRS',iif(cb_antigo.Checked,'true','false'));
fGravaPadroes(0,'CB_RETIDO_SEPAR'    ,'checked'   ,'_LRS',iif(CB_RETIDO_SEPAR.Checked,'true','false'));

fmensagem('Gravado!',0,['0'],0);




end;

procedure TFrm_LRS.bbCompararClick(Sender: TObject);
begin
if (not DM5.Qr_NS.Active) or (DM5.Qr_NS.IsEmpty) then
   FAbrirBanco_ns(valint(NUMNF.Text),RG_DOC.ItemIndex,rg_oper.ItemIndex,RG_NFCANC.ItemIndex,MDT1.Date,MDT2.Date,uf.Text,cb_protocolo.Text);
Memo_comparacoes.Lines.clear;
DM5.Qr_NS.First;
While not DM5.Qr_NS.Eof do
   begin
   if DM5.Qr_NSNSMODELO.AsString<>'55' then
      begin
      DM5.Qr_NS.Next;
      Continue;
      end;
   if DM5.Qr_NSNSNUMERO.AsFloat=0 then
      begin
      DM5.Qr_NS.Next;
      Continue;
      end;

   DM1.Query2.Close;

   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select IDECNF,IDENNF,CHAVE_ACESSO,TOTALICMSTOTVNF,CHAVE from NFE_CADCAB '
                     +'       WHERE  IDENNF='+DM5.Qr_NSNSNUMERO.AsString);
   DM1.Query2.Open;
   if DM1.Query2.IsEmpty then
      Memo_comparacoes.Lines.Add('Nota Fiscal: '+insere(DM5.Qr_NSNSNUMERO.AsString,' ',09)+' Data: '+FormatDateTime(fdt2, DM5.Qr_NSNSDTEMIS.AsDateTime)+' Valor: '+FormatFloat(mcasas, DM5.Qr_NSNSTOTNOTA.Value)+' Não Encontrado no Arquivo de NFE' )
   else if DM1.Query2.FieldByName('TOTALICMSTOTVNF').AsFloat<>DM5.Qr_NSNSTOTNOTA.AsFloat then
      Memo_comparacoes.Lines.Add('Nota Fiscal: '+insere(DM5.Qr_NSNSNUMERO.AsString,' ',09)+' Data: '+FormatDateTime(fdt2, DM5.Qr_NSNSDTEMIS.AsDateTime)+' Valor: '+FormatFloat(mcasas, DM5.Qr_NSNSTOTNOTA.Value)+' Valor não Confere com o NFE. Valor NFE: '+FormatFloat(mcasas, DM1.Query2.fieldbyName('TOTALICMSTOTVNF').AsFloat));
   DM5.Qr_NS.Next;
   end;
if trim(Memo_comparacoes.Text)='' then
   Memo_comparacoes.Lines.Add('Não ha divergencias');
PageControl1.ActivePage:=tsCompar;
end;



function TFrm_LRS.FAbrirBanco_NS(pNumNF,pDoc,pOper,pCanc:Integer; pDataIni,pDataFin: TDatetime;pUf: String; pProcolo: String):Boolean;
var
Query_temp: TQuery;
minstrucao_qrns: string;
begin
Query_temp:=TQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';

{
if DM1.Tb_EmpCGC.Value=2777589000164 then
   begin
   Query_temp.Close;
   Query_temp.SQL.clear;
   Query_temp.SQL.Add('update cadp02 set p2cfo=5102 where (p2cfo=5105 or p2cfo=5002 or p2cfo=5402) and p2aliq>0');

   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;


   Query_temp.Close;
   Query_temp.SQL.clear;
   Query_temp.SQL.Add('UPDATE CADP02 SET  P2CFO'
                     +'=CASE WHEN P2CFO>=6400 THEN 5405 ELSE 5102 END '
                     +' WHERE P2CODEMP=1 AND P2CFO>5999 '
                     +' AND EXISTS( SELECT P1NUMCF FROM CADP01 WHERE P1CHAVE=P2CHAVE '
                     +' AND P1ORDEM=P2ORDEM AND P1LOTSEQ=P2LOTSEQ AND P1CODEMP=P2CODEMP '
                     +' AND P1STATUS<>9 AND P1NUMCF>0) ');

   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;






   Query_temp.Close;
   Query_temp.SQL.clear;
   Query_temp.SQL.Add('update cadp02 set p2cfo=5405 where (p2cfo=5105 or p2cfo=5402) and p2aliq=0');

   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;


   Query_temp.Close;
   Query_temp.SQL.clear;
   Query_temp.SQL.Add('update cadp02 set p2basen=p2totliq where p2aliq>0 and p2basen<>p2totliq and p2codemp=1 '
                     +' and exists (select p1chave from cadp01 where p1chave=p2chave and p1ordem=p2ordem '
                     +' and p1lotseq=p2lotseq and p1codemp=p2codemp and p1numcf>0) ');

   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;

   end;

Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('update cadp02 set p2sit='+QuotedStr('0')+'||p2sit where length(p2sit)<3');

try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
]
Query_temp.Close;


Query_temp.SQL.clear;

Query_temp.SQL.Add('update CADNS set NSCFO1 '
                  +' = (select min(P2CFO) from CADP02 where P2CHAVE=NSCHAVEP AND P2ORDEM=NSORDEMP AND P2CODEMP=NSCODEMP AND P2LOTSEQ=NSLOTSEQ_CP) '
                  +' where NSCFO1 is null '
                  +' AND nschavep>0 '
                  +' AND NSDTEMIS>'+QuotedStr('01/05/2012'));
try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
{
Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('update CADP02 set P2CFO=SUBSTR(P2CFO,1,1) ||'+QuotedStr('1')+'|| substr(p2cfo,3,2) '
                  +',p2sit=substr(p2sit,1,1) ||'+QuotedStr('0')+'||substr(p2sit,3,1) '
                  +'where  ((p2basen>0 and substr(p2cfo,2,1)='+QuotedStr('4')+') ) ');

try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;

Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('update CADP02 set P2CFO=SUBSTR(P2CFO,1,1) ||'+QuotedStr('4')+'|| substr(p2cfo,3,2) '
                  +',p2sit=substr(p2sit,1,1) ||'+QuotedStr('6')+'||substr(p2sit,3,1) '
                  +'where (p2basen=0 and ((substr(p2cfo,2,1)='+QuotedStr('6')+') or  (substr(p2cfo,2,1)='+QuotedStr('1')+') ) ) ');

try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
}
freeandNil(query_temp);

DM5.Qr_Ns.Close;
DM5.Qr_Ns.SQL.Clear;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
minstrucao_qrns:='';
if (pDoc=1) or (pdoc=0) then // notas fiscais
   begin
   minstrucao_qrns:=
   fLerdm5qrns(iif(pdoc=1,true,false),minstrucao_qrns, pOper,1,pcanc,pNumNF,pDataIni,pDataFin,pUf);
   end;


if (pDoc=2) or (pdoc=0) then // cupom fiscal
   begin
   if pDoc=0 then
      minstrucao_qrns:=minstrucao_qrns+' union all ';
   minstrucao_qrns:=
   fLerdm5qrns(iif(pdoc=2,true,false),minstrucao_qrns, pOper,2,pcanc,pNumNF,pDataIni,pDataFin,pUf);
   end;

if (pDoc=3) or (pdoc=0) then // nfce
   begin
   if pDoc=0 then
      minstrucao_qrns:=minstrucao_qrns+' union all ';
   minstrucao_qrns:=
   fLerdm5qrns(true,minstrucao_qrns, pOper,3,pcanc,pNumNF,pDataIni,pDataFin,pUf);
   end;

result:=true;
end;
procedure TFrm_LRS.bbECFCat52Click(Sender: TObject);
var
Query_Cons: TQuery;
Adoquery: TADOQuery;
mDataCat: TDatetime;
mDadosECF: TStrings;
mNumCup_Ant: Integer;
mCodECF_Ant: Integer;
mDataECF_Ant: tDateTime;
xLin: Integer;
mCat52_Totliq: Real;
mCat52_cancelado: string;
mCat52_Dtemis: TDate;
mCat52_ger_valdes: Real;
mE15_Processou: Boolean;

mTotalNF_Ant:Real;
mSitCup_ant: Integer;

mCat52_qtddecpu: Integer;
mCat52_qtddecqtd: Integer;

begin
  inherited;
if mem_ecfcat52.Active then
   mem_ecfcat52.Close;
mem_ecfcat52.EmptyTable;
mem_ecfcat52.Open;

mDataCat:=pdatanula;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
Adoquery:=TADOQuery.Create(nil);
Adoquery.Connection:=DM1_ADO.ADOConnection1;
mDadosECF:=TStringList.Create;

fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');

query_Cons := TQuery.Create(nil);
query_Cons.DatabaseName:='SG_ASSOC';
query_Cons.SQL.Clear;
query_Cons.SQL.Add('Select NSNUMERO,NSCODEMP,NSCODECF,NSDATCUP,NSCODCLI,NSNUMCUP,NSTOTNOTA,NSSITCUP,P2ITEM,P2CODPRO,P2PRECO,P2QTD,P2TOTDES,P2TOTLIQ,P2SIT,P2CFO,P2ALIQ,P2BASEN,P2ICMSN '
                  +' FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                  +' NSCODEMP='+IntToStr(codemp));
if fsonumero(MDT1.Text)<>0 then
   Query_Cons.SQL.Add(' and NSDATCUP>='+QuotedStr(FormatDatetime(fdt, StrToDate(MDT1.Text))));
if fsonumero(MDT2.Text)<>0 then
   Query_Cons.SQL.Add(' and NSDATCUP<='+QuotedStr(FormatDatetime(fdt, StrToDate(MDT2.Text))));
Query_Cons.SQL.Add(' and NSNUMCUP>0 ');
Query_Cons.SQL.Add(' order by NSCODECF,NSDATCUP,NSNUMCUP ');
try
   Query_Cons.Open;
except
   Query_Cons.SQL.SaveToFile('c:\sql.txt');
   end;
mDadosECF.Text:='';
mCat52_qtddecpu :=2;
mCat52_qtddecqtd:=3;

While not Query_Cons.Eof do
   begin
   mCat52_Totliq   :=0;
   mCat52_cancelado:='N';
   mCat52_Dtemis   :=pdatanula;
   if mDataCat<>Query_cons.FieldByName('NSDATCUP').AsDateTime then
      begin
      mDataCat:=Query_cons.FieldByName('NSDATCUP').AsDateTime;
      Adoquery.Close;
      Adoquery.SQL.Clear;
      Adoquery.SQL.Add('Select CT52_DADOS_CAT52 from CADECF_CAT52 where '
                +' CT52_CODEMP='+Query_cons.FieldByName('NSCODEMP').AsString
                +' and CT52_CODECF='+Query_cons.FieldByName('NSCODECF').AsString
                +' and CT52_DATA='+QuotedStr(formatDatetime(fdt2,  Query_cons.FieldByName('NSDATCUP').AsDateTime))
                +' and not CT52_DADOS_CAT52 is null '
                );
      try
         Adoquery.Open;
      except
         Adoquery.SQL.SaveToFile('c:\sql.txt');
         end;
      if not Adoquery.IsEmpty then
         mDadosECF.Text:=Adoquery.fieldbyName('CT52_DADOS_CAT52').AsString;
      end;

   mNumCup_Ant:=Query_Cons.FieldByName('NSNUMCUP').AsInteger;
   mCodEcf_Ant:=Query_Cons.FieldByName('NSCODECF').AsInteger;
   mDataECF_Ant:=Query_Cons.FieldByName('NSDATCUP').AsDateTime;
   mTotalNF_Ant:=Query_Cons.FieldByName('NSTOTNOTA').AsFloat;
   mSitCup_ant:=Query_Cons.FieldByName('NSSITCUP').AsInteger;


   While (not Query_Cons.Eof) and (mNumCup_Ant=Query_Cons.FieldByName('NSNUMCUP').AsInteger)
      and (mCodECF_Ant=Query_Cons.FieldByName('NSCODECF').AsInteger)
      and (mDataECF_Ant=Query_Cons.FieldByName('NSDATCUP').AsDateTime)   do
      begin
      mem_ecfcat52.Append;
      mem_ecfcat52ecf_datacup.Value:=Query_cons.FieldByName('NSDATCUP').AsDateTime;
      mem_ecfcat52ecf_numcup.Value :=Query_cons.FieldByName('NSNUMCUP').AsInteger;
      mem_ecfcat52ecf_totliq.Value :=Query_cons.FieldByName('P2TOTLIQ').AsFloat;
      mem_ecfcat52ecf_item.Value   :=Query_cons.FieldByName('P2ITEM').AsInteger;
      mem_ecfcat52ecf_codecf.Value :=Query_cons.FieldByName('NSCODECF').AsInteger;
      mem_ecfcat52ecf_codpro.Value :=Query_cons.FieldByName('P2CODPRO').AsString;
      mem_ecfcat52ecf_pu.Value     :=Query_cons.FieldByName('P2PRECO').AsFloat;
      mem_ecfcat52ecf_qtd.Value    :=Query_cons.FieldByName('P2QTD').AsFloat;
      mem_ecfcat52ecf_totdes.Value :=Query_cons.FieldByName('P2TOTDES').AsFloat;
      mem_ecfcat52ecf_totcupliq.Value :=Query_cons.FieldByName('NSTOTNOTA').AsFloat;
      if Query_cons.FieldByName('NSSITCUP').AsInteger=1 then
         mem_ecfcat52ecf_cancelado.Value :='S'
      else
         mem_ecfcat52ecf_cancelado.Value :='N';
      mem_ecfcat52ecf_totacre.Value:=0;
      if Query_cons.FieldByName('P2ALIQ').AsFloat=0 then
         begin
         if copy(Query_cons.FieldByName('P2SIT').AsString,2,1)='4' then
            mem_ecfcat52ecf_sitaliq.Value:='II'
         else
            mem_ecfcat52ecf_sitaliq.Value:='FF';
         end
      else
         mem_ecfcat52ecf_sitaliq.Value:=Formatfloat(mcasas, Query_cons.FieldByName('P2ALIQ').AsFloat);
      mem_ecfcat52ecf_basen.Value :=Query_cons.FieldByName('P2BASEN').AsFloat;
      mem_ecfcat52ecf_icmsn.Value :=Query_cons.FieldByName('P2ICMSN').AsFloat;
      mem_ecfcat52.Post;
      Query_Cons.Next;
      end;
   if trim(mDadosECF.Text)<>'' then
      begin
      for xlin:=0 to mDadosECF.Count-1 do
         begin
         mcinst:=mDadosECF[xLin];
{
         if copy(mDadosECF[xLin],1,3)='E01' then
            begin
            mCat52_qtddecpu:=valint(copy(mDadosECF[xLin],114,1));
            mCat52_qtddecqtd:=valint(copy(mDadosECF[xLin],113,1));
            end
         else
}         if copy(mDadosECF[xLin],1,3)='E14' then
            begin
            if valint(copy(mDadosECF[xLin],53,6))=mNumCup_Ant then
               begin
               mCat52_Totliq    :=fFormataReal2Dec(copy(mDadosECF[xLin],109,14));
               mCat52_cancelado :=copy(mDadosECF[xLin],123,01);
               mCat52_Dtemis    :=fTransformaemDataAno4Mesdia(copy(mDadosECF[xLin],59,08) );
               mCat52_ger_valdes:=fFormataReal2Dec(copy(mDadosECF[xLin],81,13));

               mE15_Processou:=false;
               end
            else
               continue;
            end
         else if copy(mDadosECF[xLin],1,3)='E15' then
            begin
            if valint(copy(mDadosECF[xLin],47,6))=mNumCup_Ant then
               begin
               if mem_ecfcat52.Locate('ecf_codecf;ecf_datacup;ecf_numcup;ecf_item'
                                     ,vararrayof([mCodECF_Ant
                                     ,mDataECF_Ant
                                     ,mNumCup_Ant
                                     ,valint(copy(mDadosECF[xLin],59,03))]),[]) then
                  begin
                  mem_ecfcat52.Edit;
                  end
               else
                  begin
                  mem_ecfcat52.Append;
                  mem_ecfcat52ecf_datacup.Value:=mDataECF_Ant;
                  mem_ecfcat52ecf_numcup.Value :=mNumCup_Ant;
                  mem_ecfcat52ecf_totliq.Value :=0;
                  mem_ecfcat52ecf_item.Value   :=0;
                  mem_ecfcat52ecf_codecf.Value :=mCodECF_Ant;
                  mem_ecfcat52ecf_codpro.Value :='';
                  mem_ecfcat52ecf_pu.Value     :=0;
                  mem_ecfcat52ecf_qtd.Value    :=0;
                  mem_ecfcat52ecf_totdes.Value :=0;
                  mem_ecfcat52ecf_totcupliq.Value :=mTotalNF_Ant;
                  if mSitCup_ant=1 then
                     mem_ecfcat52ecf_cancelado.Value :='S'
                  else
                     mem_ecfcat52ecf_cancelado.Value :='N';
                  mem_ecfcat52ecf_totacre.Value:=0;
                  mem_ecfcat52ecf_sitaliq.Value:='';
                  mem_ecfcat52ecf_basen.Value  :=0;
                  mem_ecfcat52ecf_icmsn.Value  :=0;
                  end;
               mem_ecfcat52cat52_codpro.Value:=copy(mDadosECF[xLin],62,14); // codigo
               mem_ecfcat52cat52_codpro.Value:=copy(mDadosECF[xLin],62,14); // codigo
               mem_ecfcat52cat52_nompro.Value:=copy(mDadosECF[xLin],76,60); // descricao
               mCat52_qtddecpu:=valint(copy(mDadosECF[xLin],267,1));
               mCat52_qtddecqtd:=valint(copy(mDadosECF[xLin],266,1));
               mem_ecfcat52cat52_decqtd.Value :=mCat52_qtddecqtd; // qtd decimais para quantidade
               mem_ecfcat52cat52_decpu.Value :=mCat52_qtddecpu; // qtd decimais para precos unitarios

               mem_ecfcat52cat52_ger_peracre.Value  :=0; // percentual de acrescimos
               mem_ecfcat52cat52_ger_valacre.Value  :=0; // valor do acrescimos
               mem_ecfcat52cat52_ger_perdes.Value   :=0; // percentual de desconto
               mem_ecfcat52cat52_ger_valdes.Value  :=mCat52_ger_valdes; // qtd decimais para precos unitarios

               if mem_ecfcat52cat52_decqtd.AsInteger=3 then
                  mem_ecfcat52cat52_qtd.Value   :=fFormataReal3Dec(copy(mDadosECF[xLin],176,07))
               else
                  mem_ecfcat52cat52_qtd.Value   :=fFormataReal2Dec(copy(mDadosECF[xLin],176,07));


               mem_ecfcat52cat52_und.Value   :=copy(mDadosECF[xLin],183,03); // unidade
               if mem_ecfcat52cat52_decpu.AsInteger=3 then
                  mem_ecfcat52cat52_pu.value    :=fFormataReal3Dec(copy(mDadosECF[xLin],186,08))
               else
                  mem_ecfcat52cat52_pu.value    :=fFormataReal2Dec(copy(mDadosECF[xLin],186,08));

               mem_ecfcat52cat52_totdes.value   :=fFormataReal2Dec(copy(mDadosECF[xLin],194,08));
               mem_ecfcat52cat52_totacre.value  :=fFormataReal2Dec(copy(mDadosECF[xLin],202,08));
               mem_ecfcat52cat52_totliq.value   :=fFormataReal2Dec(copy(mDadosECF[xLin],210,14));
               mem_ecfcat52cat52_sitaliq.value  :=copy(mDadosECF[xLin],224,07);
               mem_ecfcat52cat52_totliqcup.Value:=mCat52_Totliq;

               mem_ecfcat52.Post;
               mE15_Processou:=true;
               end
            else if mE15_Processou then
               break;
            end
         else if mE15_Processou then
            break;
         end;
      end;
   mE15_Processou:=false;
   if mNumCup_Ant=Query_Cons.FieldByName('NSNUMCUP').AsInteger then
      Query_Cons.Next;
   end;
FreeAndNil(query_cons);
FreeAndNil(Adoquery);
PageControl1.ActivePage:=tsEcfCat52;

end;

function tFrm_LRS.fVerificaReducaoZ(pDataIni,pDataFin: Tdatetime): Boolean;
var
mErros:String;
mDifMPLivro: Boolean;
Query_Cons: tQuery;
mprocessa: Boolean;
query_exe: tQuery;


   function fAbreMapaResumo: boolean;
   begin
   Frm_LRS_Cat52.qr_cat52.close;
   Frm_LRS_Cat52.qr_cat52.SQL.Clear;
   Frm_LRS_Cat52.qr_cat52.SQL.Add('Select * from (');
   Frm_LRS_Cat52.qr_cat52.SQL.Add('SELECT CMCODEMP,CMCODIMP,CMDATA '
                     +'       ,sum(MP_VDALIQ)  AS MP_VDALIQ '
                     +'       ,SUM(MP_CANCELADOS) AS MP_CANCELADOS '
                     +'       ,sum(MP_ACREC) AS MP_ACREC '
                     +'       ,sum(MP_DESC)  AS MP_DESC'
                     +'       ,sum(MP_ISENTAS) AS MP_ISENTAS '
                     +'       ,sum(MP_NAOINC) AS MP_NAOINC '
                     +'       ,sum(MP_SUBTRI)  AS MP_SUBTRI '
                     +'       ,SUM(MP_TOTTRIB) AS MP_TOTTRIB '
                     +'       ,max(ORIGEMINF) AS ORIGEMINF '
                     +'       ,sum(CAT52_VDALIQ) AS CAT52_VDALIQ'
                     +'       ,sum(MP_VDALIQ-CAT52_VDALIQ) AS DIFMP_CAT52_VDALIQ '
                     +'       ,sum(CAT52_CANCELADOS) AS CAT52_CANCELADOS '
                     +'       ,sum(CAT52_ACREC) AS CAT52_ACREC '
                     +'       ,sum(CAT52_DESC) AS CAT52_DESC '
                     +'       ,sum(CAT52_ISENTAS) AS CAT52_ISENTAS '
                     +'       ,sum(MP_ISENTAS-CAT52_ISENTAS) AS DIFMP_CAT52_ISENTAS '
                     +'       ,sum(CAT52_NAOINC) AS CAT52_NAOINC '
                     +'       ,sum(MP_NAOINC-CAT52_NAOINC) AS DIFMP_CAT52_NAOINC '
                     +'       ,sum(CAT52_SUBTRI) AS CAT52_SUBTRI '
                     +'       ,sum(MP_SUBTRI-CAT52_SUBTRI) AS DIFMP_CAT52_SUBTRI '
                     +'       ,sum(CAT52_TOTTRIB) AS CAT52_TOTTRIB '
                     +'       ,sum(MP_TOTTRIB-CAT52_TOTTRIB) AS DIFMP_CAT52_TOTTRIB '
                     +'       ,sum(PED2_VDALIQ) AS PED2_VDALIQ '
                     +'       ,sum(MP_VDALIQ-PED2_VDALIQ) AS DIFMP_PED2_VDALIQ '
                     +'       ,sum(PED2_CANCELADOS) AS PED2_CANCELADOS '
                     +'       ,sum(PED2_ACREC) AS PED2_ACREC '
                     +'       ,sum(PED2_DESC) AS PED2_DESC '
                     +'       ,sum(PED2_ISENTAS) AS PED2_ISENTAS '
                     +'       ,sum(MP_ISENTAS-PED2_ISENTAS) AS DIFMP_PED2_ISENTAS '
                     +'       ,sum(PED2_NAOINC) AS PED2_NAOINC '
                     +'       ,sum(MP_NAOINC-PED2_NAOINC) AS DIFMP_PED2_NAOINC '
                     +'       ,sum(PED2_SUBTRI) AS PED2_SUBTRI '
                     +'       ,sum(MP_SUBTRI-PED2_SUBTRI) AS DIFMP_PED2_SUBTRI '
                     +'       ,sum(PED2_TOTTRIB) AS PED2_TOTTRIB '
                     +'       ,sum(MP_TOTTRIB-PED2_TOTTRIB) AS DIFMP_PED2_TOTTRIB '
                     +' from ( ');

   Frm_LRS_Cat52.qr_cat52.SQL.Add('SELECT CMCODEMP,CMCODIMP,CMDATA '
                     +'       ,CMVDALIQ AS MP_VDALIQ '
                     +'       ,CMCUPCAN AS MP_CANCELADOS '
                     +'       ,CMACRECUP AS MP_ACREC '
                     +'       ,CMDESCUP AS MP_DESC'
                     +'       ,CMISENTAS AS MP_ISENTAS '
                     +'       ,CMNAOINC AS MP_NAOINC '
                     +'       ,CMSUBTRI AS MP_SUBTRI '
                     +'       ,SUM(NVL(CM2VALOR,0)) AS MP_TOTTRIB '
                     +'       ,'+QuotedStr('MP')+' AS ORIGEMINF '
                     +'       ,0 AS CAT52_VDALIQ'
                     +'       ,0 AS CAT52_CANCELADOS '
                     +'       ,0 AS CAT52_ACREC '
                     +'       ,0 AS CAT52_DESC '
                     +'       ,0 AS CAT52_ISENTAS '
                     +'       ,0 AS CAT52_NAOINC '
                     +'       ,0 AS CAT52_SUBTRI '
                     +'       ,0 AS CAT52_TOTTRIB '
                     +'       ,0 AS PED2_VDALIQ '
                     +'       ,0 AS PED2_CANCELADOS '
                     +'       ,0 AS PED2_ACREC '
                     +'       ,0 AS PED2_DESC '
                     +'       ,0 AS PED2_ISENTAS '
                     +'       ,0 AS PED2_NAOINC '
                     +'       ,0 AS PED2_SUBTRI '
                     +'       ,0 AS PED2_TOTTRIB '
                     +'       ,'+QuotedStr('MI01')+' as ORIGEM '
                     +'        FROM CADMI01,CADMI02 '
                     +'       WHERE CM2CODEMP(+)=CMCODEMP AND CM2CODIMP(+)=CMCODIMP AND CM2DATA(+)=CMDATA '
                     +'       AND CMDATA>=:DATAINI and CMDATA<=:DATAFIN '
                     +' AND CMCODEMP=:CODEMP '
                     +' GROUP BY '
                     +' CMCODEMP,CMCODIMP,CMDATA '
                     +'       ,CMVDALIQ '
                     +'       ,CMCUPCAN '
                     +'       ,CMACRECUP '
                     +'       ,CMDESCUP '
                     +'       ,CMISENTAS '
                     +'       ,CMNAOINC '
                     +'       ,CMSUBTRI '
                     +' union all '
                     +' SELECT CT52I_CODEMP AS CMCODEMP '
                     +'       ,CT52I_CODECF AS CMCODIMP '
                     +'       ,CT52I_DATACF AS CMDATA '
                     +'       ,0 AS MP_VDALIQ '
                     +'       ,0 AS MP_CANCELADOS '
                     +'       ,0 AS MP_ACREC '
                     +'       ,0 AS MP_DESC '
                     +'       ,0 AS MP_ISENTAS '
                     +'       ,0 AS MP_NAOINC '
                     +'       ,0 AS MP_SUBTRI '
                     +'       ,0 AS MP_TOTTRIB '
                     +'       ,'+QuotedStr('CAT52')+' AS ORIGEMINF '
                     +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 ELSE CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) END) AS CAT52_VDALIQ '
                     +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS CAT52_CANCELADOS '
                     +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 ELSE CT52I_VALACRE_GER END) AS  CAT52_ACREC '
                     +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 ELSE CT52I_VALDES_GER END) AS  CAT52_DESC '
                     +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 WHEN SUBSTR(CT52I_TOTPARC,1,1)='+QuotedStr('I')
                     +' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS  CAT52_ISENTAS '
                     +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 WHEN SUBSTR(CT52I_TOTPARC,1,1)='+QuotedStr('N')+' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS  CAT52_NAOINC '
                     +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 WHEN SUBSTR(CT52I_TOTPARC,1,1)='+QuotedStr('F')+' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS  CAT52_SUBTRI '
                     +'       ,sum(CASE WHEN CT52I_INDCANC='+QuotedStr('S')+' THEN 0 WHEN SUBSTR(CT52I_TOTPARC,3,1)='+QuotedStr('T')+' THEN CT52I_TOTLIQ-NVL(CT52I_VALDES_GER,0) ELSE 0 END) AS  CAT52_TOTTRIB '
                     +'       ,0 AS PED2_VDALIQ '
                     +'       ,0 AS PED2_CANCELADOS '
                     +'       ,0 AS PED2_ACREC '
                     +'       ,0 AS PED2_DESC '
                     +'       ,0 AS PED2_ISENTAS '
                     +'       ,0 AS PED2_NAOINC '
                     +'       ,0 AS PED2_SUBTRI '
                     +'       ,0 AS PED2_TOTTRIB '
                     +'       ,'+QuotedStr('CAT52')+' as ORIGEM '

                     +'        FROM CADECF_CAT52_ITENS '
                     +'       WHERE CT52I_CODEMP=:CODEMP  '
                     +'       AND CT52I_DATACF>=:DATAINI AND CT52I_DATACF<=:DATAFIN '


                     +' GROUP BY CT52I_CODEMP '
                     +'       ,CT52I_CODECF '
                     +'       ,CT52I_DATACF '
                     +' union all '
                     +' SELECT P1CODEMP AS CMCODEMP '
                     +'       ,P1CODECF AS CMCODIMP '
                     +'       ,P1DATACF AS CMDATA '
                     +'       ,0 AS MP_VDALIQ '
                     +'       ,0 AS MP_CANCELADOS '
                     +'       ,0 AS MP_ACREC '
                     +'       ,0 AS MP_DESC '
                     +'       ,0 AS MP_ISENTAS '
                     +'       ,0 AS MP_NAOINC '
                     +'       ,0 AS MP_SUBTRI '
                     +'       ,0 AS MP_TOTTRIB '
                     +'       ,'+QuotedStr('PED2')+' AS ORIGEMINF '
                     +'       ,0 AS CAT52_VDALIQ '
                     +'       ,0 AS CAT52_CANCELADOS '
                     +'       ,0 AS CAT52_ACREC '
                     +'       ,0 AS CAT52_DESC '
                     +'       ,0 AS CAT52_ISENTAS '
                     +'       ,0 AS CAT52_NAOINC '
                     +'       ,0 AS CAT52_SUBTRI '
                     +'       ,0 AS CAT52_TOTTRIB '
                     +'       ,sum(CASE WHEN P1STATUS>='+mstatus_excluido+' THEN 0 ELSE P2TOTLIQ END) AS PED2_VDALIQ '
                     +'       ,sum(CASE WHEN P1STATUS='+mstatus_excluido+' THEN P2TOTLIQ ELSE 0 END) AS PED2_CANCELADOS '
                     +'       ,sum(CASE WHEN P1STATUS>='+mstatus_excluido+' THEN 0 ELSE 0 END) AS  PED2_ACREC '
                     +'       ,sum(CASE WHEN P1STATUS>='+mstatus_excluido+' THEN 0 ELSE P2TOTDES END) AS  PED2_DESC'
                     +'       ,sum(CASE WHEN P1STATUS>='+mstatus_excluido+' THEN 0 WHEN SUBSTR(P2SIT,2,2)='+QuotedStr('40')+' THEN P2TOTLIQ ELSE 0 END) AS  CAT52_ISENTAS '
                     +'       ,sum(CASE WHEN P1STATUS>='+mstatus_excluido+' THEN 0 WHEN SUBSTR(P2SIT,2,2)='+QuotedStr('41')+' THEN P2TOTLIQ ELSE 0 END) AS  CAT52_NAOINC '
                     +'       ,sum(CASE WHEN P1STATUS>='+mstatus_excluido+' THEN 0 WHEN SUBSTR(P2SIT,2,1) in ('+QuotedStr('1')+','+QuotedStr('3')+','+QuotedStr('7')+','+QuotedStr('6')+') THEN P2TOTLIQ ELSE 0 END) AS  CAT52_SUBTRI '
                     +'       ,sum(CASE WHEN P1STATUS>='+mstatus_excluido+' THEN 0 WHEN P2ALIQ>0 THEN P2TOTLIQ ELSE 0 END) AS  CAT52_TOTTRIB '
                     +'       ,'+QuotedStr('PED02')+' as ORIGEM '
                     +'       FROM CADP01,CADP02 WHERE'
                     +'       P2CODEMP=P1CODEMP AND P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ '
                     +'       AND P1CODEMP=:CODEMP '
                     +'       AND P1DATACF>=:DATAINI AND P1DATACF<=:DATAFIN '
                     +'       AND P1CUPOM=1 '


                     +' GROUP BY  P1CODEMP '
                     +'       ,P1CODECF '
                     +'       ,P1DATACF ');

   Frm_LRS_Cat52.qr_cat52.parambyname('CODEMP').asinteger:=codemp;
   Frm_LRS_Cat52.qr_cat52.parambyname('DATAINI').asDateTime:=pDataini;
   Frm_LRS_Cat52.qr_cat52.parambyname('DATAFIN').asDateTime:=pDatafin;

   Frm_LRS_Cat52.qr_cat52.SQL.add(' ) ');
   Frm_LRS_Cat52.qr_cat52.SQL.add(' group by CMCODEMP,CMCODIMP,CMDATA ');
   Frm_LRS_Cat52.qr_cat52.SQL.add(' ) where  (round(MP_VDALIQ,2)<>round(PED2_VDALIQ,2))');
   Frm_LRS_Cat52.qr_cat52.SQL.add('      or  (round(MP_ISENTAS,2)<>round(PED2_ISENTAS,2))');
   Frm_LRS_Cat52.qr_cat52.SQL.add('      or  (round(MP_NAOINC,2)<>round(PED2_NAOINC,2))');
   Frm_LRS_Cat52.qr_cat52.SQL.add('      or  (round(MP_SUBTRI,2)<>round(PED2_SUBTRI,2))');
   Frm_LRS_Cat52.qr_cat52.SQL.add('      or  (round(MP_TOTTRIB,2)<>round(PED2_TOTTRIB,2))');
   Frm_LRS_Cat52.qr_cat52.SQL.add('  order by CMDATA,CMCODIMP ');

//   Frm_LRS_Cat52.qr_cat52.sql.savetofile('c:\sqlcat52.txt');

   try
      Frm_LRS_Cat52.qr_cat52.open;
   except on e : exception do
      begin
      ex_erroSql_Novo(Frm_LRS_Cat52.qr_cat52,5958,'frm lrs'+e.Message ,'CADEST');
      result:=false;
      exit;
      end;
      end;
   result:=true;
   end;

begin

Query_Cons:=tQuery.create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
Query_Cons.sql.add('Select count(*) from CADECF where CFCODEMP=1 ');
Query_Cons.open;
if Query_Cons.Fields[0].AsInteger<1 then
   begin
   freeandnil(query_cons);
   result:=true;
   exit;
   end;



Application.CreateForm(TFrm_LRS_Cat52,Frm_LRS_Cat52);
mErros:='';
if not fAbreMapaResumo then
   begin
   exit;
   end;
if Frm_LRS_Cat52.qr_cat52.RecordCount<1 then
   mErros:='';

Frm_LRS_Cat52.qr_cat52.First;
While not Frm_LRS_Cat52.qr_cat52.Eof do
   begin

   if Arredonda(Frm_LRS_Cat52.qr_cat52.FieldByName('MP_VDALIQ').AsFloat ,2)<>Arredonda( Frm_LRS_Cat52.qr_cat52.FieldByName('PED2_VDALIQ').ASFLOat,2) then
      begin
      mErros:=mErros+'Dia '+FormatDatetime(fdt2, Frm_LRS_Cat52.qr_cat52.FieldByName('CMDATA').AsDateTime)+' Mapa Resumo: '
                   +FormatFloat(mcasas, Frm_LRS_Cat52.qr_cat52.FieldByName('MP_VDALIQ').AsFloat)
                   +' Cupons: '+FormatFloat(mcasas, Frm_LRS_Cat52.qr_cat52.FieldByName('PED2_VDALIQ').AsFloat)
                   +' Diferenca '+FormatFloat(mcasas, Frm_LRS_Cat52.qr_cat52.FieldByName('MP_VDALIQ').AsFloat-
                    Frm_LRS_Cat52.qr_cat52.FieldByName('PED2_VDALIQ').AsFloat)+' é invalido '+chr(13);
      end;

   if (Frm_LRS_Cat52.qr_cat52.FieldByName('DIFMP_PED2_ISENTAS').Asfloat<>0) or
      (Frm_LRS_Cat52.qr_cat52.FieldByName('DIFMP_PED2_NAOINC').Asfloat<>0) or
      (Frm_LRS_Cat52.qr_cat52.FieldByName('DIFMP_PED2_SUBTRI').Asfloat<>0) or
      (Frm_LRS_Cat52.qr_cat52.FieldByName('DIFMP_PED2_TOTTRIB').Asfloat<>0) then
      mDifMPLivro:=true;
   Frm_LRS_Cat52.qr_cat52.Next;
   end;


if (trim(mErros)='') and (mDifMPLivro=true) then
   begin
   fRatearBematech(pDataini,pDatafin);
   if not fAbreMapaResumo then
      begin
      exit;
      end;
   if Frm_LRS_Cat52.qr_cat52.RecordCount<1 then
      begin
      mErros:='';
      end;
   mDifMPLivro:=false;


   Frm_LRS_Cat52.qr_cat52.First;
   While not Frm_LRS_Cat52.qr_cat52.Eof do
      begin

      if Arredonda(Frm_LRS_Cat52.qr_cat52.FieldByName('MP_VDALIQ').AsFloat ,2)<>Arredonda( Frm_LRS_Cat52.qr_cat52.FieldByName('PED2_VDALIQ').ASFLOat,2) then
         begin
         mErros:=mErros+'Dia '+FormatDatetime(fdt2, Frm_LRS_Cat52.qr_cat52.FieldByName('CMDATA').AsDateTime)+' Mapa Resumo: '
                      +FormatFloat(mcasas, Frm_LRS_Cat52.qr_cat52.FieldByName('MP_VDALIQ').AsFloat)
                      +' Cupons: '+FormatFloat(mcasas, Frm_LRS_Cat52.qr_cat52.FieldByName('PED2_VDALIQ').AsFloat)
                      +' Diferenca '+FormatFloat(mcasas, Frm_LRS_Cat52.qr_cat52.FieldByName('MP_VDALIQ').AsFloat-
                       Frm_LRS_Cat52.qr_cat52.FieldByName('PED2_VDALIQ').AsFloat)+' é invalido '+chr(13);
         end;

      if ((Frm_LRS_Cat52.qr_cat52.FieldByName('DIFMP_PED2_SUBTRI').Asfloat<>0) or (Frm_LRS_Cat52.qr_cat52.FieldByName('DIFMP_PED2_TOTTRIB').Asfloat<>0)) and
          (Arredonda((Frm_LRS_Cat52.qr_cat52.FieldByName('DIFMP_PED2_SUBTRI').Asfloat+Frm_LRS_Cat52.qr_cat52.FieldByName('DIFMP_PED2_TOTTRIB').Asfloat),2)=0) then
          fAjustaTributacoesPed52(Frm_LRS_Cat52.qr_cat52.FieldByName('CMDATA').AsDateTime,
                                  Frm_LRS_Cat52.qr_cat52.FieldByName('CMDATA').AsDateTime,
                                  Frm_LRS_Cat52.qr_cat52.FieldByName('CMCODIMP').AsInteger);
      Frm_LRS_Cat52.qr_cat52.Next;
      end;
   end;

if (trim(mErros)<>'')  then
   begin
   Application.createform(TFrm_CAT52xPedido,Frm_CAT52xPedido);
   Frm_CAT52xPedido.edt_dataini.Date:=pDataIni;
   Frm_CAT52xPedido.edt_datafin.Date:=pDataFin;

   if not Frm_CAT52xPedido.fMapaResumoxCat52(pDataIni,pDataFin) then
      begin
      mErros:='O Mapa Resumo não confere com o CAT52. Faça o Download do Cat52 e/ou Confere os Mapas Resumos!';
      end
   else
      begin
      Frm_CAT52xPedido.edt_dataini.Date:=pDataIni;
      Frm_CAT52xPedido.edt_datafin.Date:=pDataFin;
      Frm_CAT52xPedido.bbSelecionarClick(self);
      While not Frm_CAT52xPedido.Qr_Div01.Eof do
         begin
         Frm_CAT52xPedido.fIncluirPED52(Frm_CAT52xPedido.Qr_Div01CT52I_NUMCF.AsInteger
                      ,Frm_CAT52xPedido.Qr_Div01CT52I_CODECF.AsInteger
                      ,Frm_CAT52xPedido.Qr_Div01CT52I_SERIE.AsString
                      ,Frm_CAT52xPedido.Qr_Div01CT52I_DATACF.AsDateTime);
         Frm_CAT52xPedido.Qr_Div01.Next;
         end;
      if not fAbreMapaResumo then
         begin
         exit;
         end;
      if Frm_LRS_Cat52.qr_cat52.RecordCount<1 then
         begin
         mErros:='';
         end;
      end;
   Freeandnil(Frm_CAT52xPedido);
   end;


if DM1.tb_EmpCGC.Asfloat=2777589000164 then
   begin
   mprocessa:=false;
   if not flfilpad(-2,'_lrs','AJCFOPE') then
      mprocessa:=true
   else
      if DM4.Tb_FilPad2FPVALOR.AsString<>'SIM' then
         mprocessa:=true;
   if mprocessa=true then
      begin
      query_exe:=tquery.create(nil);
      query_exe.DatabaseName:='SG_ASSOC';
      query_exe.Sql.add('Update CADP02 set P2CFO=CASE WHEN substr(P2SIT,2,1) in ('+QuotedStr('1')+','+QuotedStr('3')+','+QuotedStr('7')+','+QuotedStr('6')+') THEN 5405'
                       +' else 5102 END '
                       +' where P2CFO=0 ');
      try
         Query_exe.execsql;
         fdm1startcommit;
      except
         Query_exe.sql.savetofile('c:\sqlcfop.txt');
         end;
      query_exe.close;
      query_exe.sql.clear;
      query_exe.Sql.add('Update CADP02 set P2CFO=5102 '
                       +' where P2CFO=5105 ');
      try
         Query_exe.execsql;
         fdm1startcommit;
      except
         Query_exe.sql.savetofile('c:\sqlcfop.txt');
         end;

      query_exe.close;
      query_exe.sql.clear;
      query_exe.Sql.add('Update CADP02 set P2CFO=5405 '
                       +' where P2CFO=5402 ');
      try
         Query_exe.execsql;
         fdm1startcommit;
      except
         Query_exe.sql.savetofile('c:\sqlcfop.txt');
         end;

      query_exe.close;
      query_exe.sql.clear;
      query_exe.Sql.add('Update CADP02 set P2CFO=CASE WHEN substr(P2SIT,2,1) in ('+QuotedStr('1')+','+QuotedStr('3')+','+QuotedStr('7')+','+QuotedStr('6')+') THEN 5405'
                       +' else 5102 END '
                       +' where P2CFO=6929  ');
      try
         Query_exe.execsql;
         fdm1startcommit;
      except
         Query_exe.sql.savetofile('c:\sqlcfop.txt');
         end;
      freeandnil(query_exe);
      fDeletaPadroes(-2,'_lrs','AJCFOP');
      fGravaPadroes(-2,'AJCFOP'    ,'text'   ,'_lrs','SIM');
      end;
   end;




result:=true;
if trim(merros)<>'' then
   begin
   Frm_LRS_Cat52.Panel1.Caption:='Quantidade de Registros: '+IntToStr(Frm_LRS_Cat52.qr_cat52.RecordCount);
   Frm_LRS_Cat52.memo_erros_graves.Lines.Clear;
   Frm_LRS_Cat52.memo_erros_graves.Lines.Add(mErros);
   if trim(mErros)='' then
      Frm_LRS_Cat52.PageControl1.ActivePage:=Frm_LRS_Cat52.tsResumo
   else
      Frm_LRS_Cat52.PageControl1.ActivePage:=Frm_LRS_Cat52.tsErrosGraves;


   Frm_LRS_Cat52.ShowModal;
   result:=false;
   end;
if DM1.tb_EmpCGC.Asfloat=2777589000164 then
   begin
   Query_Cons.Close;
   Query_Cons.SQL.clear;
   Query_Cons.sql.add('Update CADP02 set P2CFO=5102 WHERE P2CFO=5405 and P2ALIQ>0');
   try
      Query_Cons.execsql;
      fdm1startcommit;
   except
      Query_Cons.sql.savetofile('c:\sqlfp.txt');
      end;
   end;


freeandnil(query_cons);


freeandnil(Frm_LRS_Cat52);

end;
function TFrm_LRS.fRatearBematech(pDataIni,pDataFin: tdatetime): Boolean;
var
query_ped01: tQuery;
query_ECF: tQuery;

mImpressoras: String;

begin

Query_ped01:=TQuery.Create(nil);
Query_ped01.DatabaseName:='SG_ASSOC';
Query_ped01.Sql.Clear;
Query_ped01.Sql.Add('Select CFCAIXA from CADECF where CFCODEMP=:CODEMP and CFMODELO<2 ');
Query_ped01.ParamByName('CODEMP').AsInteger:=codemp;
query_ped01.Open;
mImpressoras:='';
While not query_ped01.eof do
   begin
   if mimpressoras='' then
      mImpressoras:=Query_ped01.fieldbyname('CFCAIXA').asstring
   else
      mImpressoras:=mImpressoras+','+Query_ped01.fieldbyname('CFCAIXA').asstring;
   query_ped01.Next;
   end;



Query_ped01:=TQuery.Create(nil);
Query_ped01.DatabaseName:='SG_ASSOC';
Query_ped01.Sql.Clear;
Query_ped01.Sql.Add('select p1chave,p1lotseq,p1ordem,p1codemp,p1codecf,P1VLRDES,P1VLRDES+P1TOTALL AS TOTALBRU from cadp01 '
                   +' where P1CODEMP=:CODEMP  '
                   +' and P1DATACF>=:DATACF_INI '
                   +' and P1DATACF<=:DATACF_FIN '
                   +' and P1STATUS<'+mstatus_excluido+' AND P1CUPOM=1 '
                   +' and P1VLRDES>0 '
                   +' and P1CODECF in ('+mImpressoras+')'
                   );
query_ped01.parambyname('CODEMP').asinteger:=codemp;
query_ped01.parambyname('DATACF_INI').asDateTime:=pDataIni;
query_ped01.parambyname('DATACF_FIN').asDateTime:=pDataFin;
try
   query_ped01.Open;
except
   query_ped01.sql.savetofile('c:\sqlliv.sql');
   end;

While not query_ped01.Eof do
   begin
   fRaterDescontosBematechCadp02(query_ped01.fieldbyName('P1CHAVE').AsFloat
                                ,query_ped01.fieldbyName('P1ORDEM').AsFloat
                                ,query_ped01.fieldbyName('P1CODEMP').AsFloat
                                ,query_ped01.fieldbyName('P1LOTSEQ').AsFloat
                                ,query_ped01.fieldbyName('P1VLRDES').AsFloat
                                ,query_ped01.fieldbyName('TOTALBRU').AsFloat);
   query_ped01.next;
   end;

freeandnil(query_ped01);
freeandnil(query_ecf);

result:=true;
end;


procedure TFrm_LRS.bbcompredzClick(Sender: TObject);
begin
   fVerificaReducaoZ(Strtodate(MDT1.Text),Strtodate(MDT2.Text));
end;

procedure TFrm_LRS.bbCompararNFSComXMLClick(Sender: TObject);
begin
Application.createform(TFrm_NFSxXML, Frm_NFSxXML);
Frm_NFSxXML.edt_datini.Text:=MDT1.Text;
Frm_NFSxXML.edt_datfin.Text:=MDT2.Text;

Frm_NFSxXML.ShowModal;
freeandnil(Frm_NFSxXML);

end;

end.


