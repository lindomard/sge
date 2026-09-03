unit S_Fin_RelCob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, S_DM1, func, db, dbtables, s_Cli, S_Impres,
  S_Ven,S_Sup,S_USR,lerarq, Grids, DBGrids,S_Red,S_Con,S_Loc,S_Bco,variants,
  S_SitCre, ComCtrls, CheckLst, s_dar, s_c, S_SelEmp;

type
  TFrm_Fin_RelCob = class(TForm)
    Qr_CRec: TQuery;
    Qr_CRecCRNUMERO: TFloatField;
    Qr_CRecCRDESD: TStringField;
    Qr_CRecCRDTEMIS: TDateTimeField;
    Qr_CRecCRDTVCTO: TDateTimeField;
    Qr_CRecCRDTBX: TDateTimeField;
    Qr_CRecCRDESC: TFloatField;
    Qr_CRecCRJUROS: TFloatField;
    Qr_CRecCRVALOR: TFloatField;
    Qr_CRecCRCODCLI: TFloatField;
    Qr_CRecCRAZAO: TStringField;
    Qr_CRecCRLOTE: TFloatField;
    Qr_CRecVCODVEN: TFloatField;
    Qr_CRecVNOME: TStringField;
    Qr_CRecCRVALPAG: TFloatField;
    Qr_CRecCRDUP: TFloatField;
    Qr_CRecCRDTPAG: TDateTimeField;
    Qr_CRecCRNPED: TFloatField;
    Qr_CRecCRORDEM: TFloatField;
    Qr_CRecCRCODEMP: TFloatField;
    Qr_CRecCRLOTSEQ_LB: TFloatField;
    Src_CRec: TDataSource;
    Qr_CRecCRCODBCO: TFloatField;
    Qr_CRecnombco: TStringField;
    Qr_CRecCCODLOC: TFloatField;
    Qr_CRecCCIDADE: TStringField;
    Qr_CRecCUF: TStringField;
    Qr_CRecCCODBAI: TFloatField;
    Qr_CRecCBAIRRO: TStringField;
    Qr_CRectipdup: TStringField;
    Qr_CRecdtemis: TStringField;
    Qr_CRecdtvcto: TStringField;
    Qr_CRecdtbx: TStringField;
    Qr_CRecdtpag: TStringField;
    Qr_CRecatraso: TFloatField;
    Qr_CRecCRSTATUS: TFloatField;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    CODRED: TEdit;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    Label23: TLabel;
    CODCV: TEdit;
    OMITIR_CV: TCheckBox;
    lbx_codcv: TListBox;
    Label4: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    tsTipoPed: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Panel1: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    bbAplicar: TBitBtn;
    bbSitCli: TBitBtn;
    bbImprimir: TBitBtn;
    bbSalvarPadrao: TBitBtn;
    bbSair: TBitBtn;
    CB_TPP: TComboBox;
    Label6: TLabel;
    lbl_cheio: TLabel;
    RGTD: TRadioGroup;
    StaticText12: TStaticText;
    clb_simples: TCheckListBox;
    StaticText11: TStaticText;
    CLB_TIPOCOB: TCheckListBox;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    CODBCO: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    CLB_TIPODOC: TCheckListBox;
    StaticText10: TStaticText;
    Qr_CRecNOMGRU: TStringField;
    Qr_CRecCODCCU: TStringField;
    Qr_CRecNOMCCU: TStringField;
    Qr_CRecnumdoc: TStringField;
    Qr_CRecrazao_codigo: TStringField;
    Qr_CRecvalapagar: TFloatField;
    Qr_CRecCRCODFPGTO: TFloatField;
    Qr_CRecCRNOMFPGTO: TStringField;
    ts_outrosfiltros: TTabSheet;
    Label24: TLabel;
    CODTEL: TEdit;
    lbx_codtel: TListBox;
    OMITIR_TEL: TCheckBox;
    Label27: TLabel;
    CODSUP: TEdit;
    lbx_codsup: TListBox;
    OMITIR_SUP: TCheckBox;
    Label12: TLabel;
    FILTRO: TEdit;
    CODFP: TEdit;
    OMITIR_FP: TCheckBox;
    lbx_codfp: TListBox;
    Label7: TLabel;
    bbMedPgVcto: TBitBtn;
    Qr_CRecCRJURD: TFloatField;
    Qr_CRecCRICMSR: TFloatField;
    Qr_CRecCRTOTIPI: TFloatField;
    Qr_CRecCRDESCF: TFloatField;
    Qr_CRecCRDTDESCF: TDateTimeField;
    Qr_CRecCRDESCD: TFloatField;
    Qr_CRecCRMULTA: TFloatField;
    Qr_CRecCRDEVOL: TFloatField;
    Qr_CRecvalorjuros: TFloatField;
    lbl_datapgto: TLabel;
    DATAPGTO: TMaskEdit;
    cb_ordem: TComboBox;
    CB_FORCAR: TCheckBox;
    Qr_CRecCDENOM: TStringField;
    Qr_CRecCFONE01: TStringField;
    Qr_CRecCOBS01: TStringField;
    Qr_CRecCOBS02: TStringField;
    Qr_CRecCOBS03: TStringField;
    Qr_CRecCOBS04: TStringField;
    Qr_CRecCOBS05: TStringField;
    CB_OBSCLI: TCheckBox;
    Qr_CRecvalormora: TFloatField;
    Qr_CRecvalordescfin: TFloatField;
    Qr_CRecvalordescant: TFloatField;
    Qr_CRectotliqapagar: TFloatField;
    Qr_CRecCLOG: TStringField;
    Qr_CRecCNUM: TStringField;
    Qr_CRecCCOMPL: TStringField;
    Qr_CRecender_compl: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure Qr_CRecCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSitCliClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODTELExit(Sender: TObject);
    procedure CODTELKeyPress(Sender: TObject; var Key: Char);
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODREDExit(Sender: TObject);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVExit(Sender: TObject);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLB_TIPODOCClick(Sender: TObject);
    procedure CLB_TIPOCOBClick(Sender: TObject);
    procedure clb_simplesClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CODFPExit(Sender: TObject);
    procedure lbx_codfpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bbMedPgVctoClick(Sender: TObject);
    procedure DATAPGTOExit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fAtualizaPadrao(pTipo: Integer): Boolean;
    function fImpResumido_Cab(pTipo: Integer): Boolean;
    function fImpResumido_CabCli(pTipo: Integer): Boolean;
    function Imprimetotais(pTipo: Integer): Boolean;

  public
    { Public declarations }
    form_impres_fin_relcob: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
  end;

var
  Frm_Fin_RelCob: TFrm_Fin_RelCob;
  mDataPesq: String;
  mDataPag: TDateTime;

  mTC_TotDup: Real;
  mTc_TotPag: Real;
  mTc_TotJur: Real;
  mTc_TotMora: Real;
  mTc_TotDFin: Real;
  mTc_TotDAnt: Real;
  mTc_TotApag: Real;

  mTG_TotDup: Real;
  mTG_TotPag: Real;
  mTG_TotJur: Real;
  mTG_TotMora: Real;
  mTG_TotDFin: Real;
  mTG_TotDAnt: Real;
  mTG_TotApag: Real;

implementation

uses S_SQL, S_DM4, S_DM2;

{$R *.DFM}

procedure TFrm_Fin_RelCob.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Fin_RelCob.MDT1Exit(Sender: TObject);
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

procedure TFrm_Fin_RelCob.bbImprimirClick(Sender: TObject);
var
mGrupoAnt: String;
Begin
   bbAplicar.Click;
if Qr_CRec.IsEmpty then
   begin
   fmensagem('Nada a ser impresso na condição solicitada!',0,['0'],0);
   exit;
   end;
Qr_CRec.First;

testeform := TFrm_Fin_RelCob(FindGlobalComponent('form_impres_fin_relcob'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_fin_relcob);
form_impres_fin_relcob.mlin:=0;
form_impres_fin_relcob.mpag:=0;
form_impres_fin_relcob.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mGrupoAnt:=Qr_CRecNOMGRU.Value;
mTC_TotDup :=0;
mTc_TotPag :=0;
mTc_TotJur :=0;
mTc_TotMora:=0;
mTc_TotDFin:=0;
mTc_TotDAnt:=0;
mTc_TotApag:=0;

mTG_TotDup :=0;
mTG_TotPag :=0;
mTG_TotJur :=0;
mTG_TotMora:=0;
mTG_TotDFin:=0;
mTG_TotDAnt:=0;
mTG_TotApag:=0;

While not Qr_CRec.Eof do
   begin
   if form_impres_fin_relcob.mlin=0 then
      begin
      fImpResumido_Cab(0);
      end;
   form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
   if Qr_CRecCRDTPAG.AsDateTime<=pdatanula then
      mcinst2:=''
   else
      mcinst2:=FormatDatetime(fdt3, Qr_CRecCRDTPAG.Value);
   if (Qr_CRecCRDTDESCF.AsDateTime<=pdatanula) or (Qr_CRecCRDESCF.Value=0) then
      mcinst3:=''
   else
      mcinst3:=FormatDatetime(fdt3, Qr_CRecCRDTDESCF.Value);

   if Qr_CRecCRCODBCO.AsFloat=0 then
      mcinst4:='Car'
   else
      mcinst4:=FormatFloat('000', Qr_CRecCRCODBCO.Value);

   form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,iif(Qr_CRecCRCODEMP.AsInteger>100,'*',' ')
                           +insere2(FormatFloat('0000000',Qr_CRecCRNUMERO.Value),' ',07)
                           +'-'+insere2(Qr_CRecCRDESD.Value,' ',02)
                           +'/'+Insere(Qr_CRecCRDUP.AsString,'0',1)
                           +' '+insere2(formatDateTime(fdt3, Qr_CRecCRDTEMIS.Value),' ',08)
                           +' '+insere2(formatDateTime(fdt3, Qr_CRecCRDTVCTO.Value),' ',08)
                           +' '+insere2(mcinst2,' ',08)
                           +insere(mcinst4,' ',04) // codigo do banco
                           +insere(FormatFloat(mcasas, Qr_CRecCRVALOR.Value),' ',11)
                           +insere(FormatFloat(mcasas, Qr_CRecCRVALPAG.Value),' ',11)
                           +insere(FormatFloat(mcasas, Qr_CRecCRJURD.Value),' ',08)
                           +insere(FormatFloat(mcasas, (Qr_CRecCRMULTA.Value*100)/Qr_CRecCRVALOR.Value),' ',06)
                           +insere(FormatFloat(mcasas, Qr_CRecCRDESCF.Value),' ',08)
                           +' '+insere2(mcinst3,' ',08)
                           +insere(FormatFloat(mcasas, Qr_CRecCRDESCD.Value),' ',09)
                           +insere(Qr_CRecatraso.AsString,' ',05)
                           +insere(FormatFloat(mcasas, Qr_CRecvalorjuros.Value),' ',09)
                           +insere(FormatFloat(mcasas, Qr_CRecvalormora.Value),' ',08)
                           +insere(FormatFloat(mcasas, Qr_CRecvalordescfin.Value),' ',11)
                           +insere(FormatFloat(mcasas, Qr_CRecvalordescant.Value),' ',09)
                           +insere(FormatFloat(mcasas, Qr_CRectotliqapagar.Value),' ',11),m20ccp);
{
Titulo        Dt.Emis. Dt.Vcto. Dt.Pgto. Bco Vlr.titulo   Vlr.Pago   Juros Mora   ----Desc.fin.--- Desconto --------Dados para pagamento ate 17/07/2007--------
                                                                    diario   %    Valor   p/Pg.Ate  Antec.   Atr Tot.Jur Jr.Mora Desc.Fin   Desc.Ant    A Pagar
*1234567/01/0 28/05/27 15/01/27 15/05/07 123 zzz.zz9,99 zzz.zz9,99 zzzz.zz zzz.zz zzz9,99 13/06/20 z.zz9,99 1234zzzz9,99zzzz9,99 zzz.zz9,99 zzz.z,99zzz.zzz9,99

lindomar
}


   mTC_TotDup :=mTC_TotDup+Qr_CRecCRVALOR.Value; ;
   mTc_TotPag :=mTc_TotPag+Qr_CRecCRVALPAG.Value;
   mTc_TotJur :=mTc_TotJur+Qr_CRecvalorjuros.Value;
   mTc_TotMora:=mTc_TotMora+Qr_CRecvalormora.Value;
   mTc_TotDFin:=mTc_TotDFin+Qr_CRecvalordescfin.Value ;
   mTc_TotDAnt:=mTc_TotDAnt+Qr_CRecvalordescant.Value;
   mTc_TotApag:=mTc_TotApag+Qr_CRectotliqapagar.Value;

   mTg_TotDup :=mTg_TotDup+Qr_CRecCRVALOR.Value; ;
   mTg_TotPag :=mTg_TotPag+Qr_CRecCRVALPAG.Value;
   mTg_TotJur :=mTg_TotJur+Qr_CRecvalorjuros.Value;
   mTg_TotMora:=mTg_TotMora+Qr_CRecvalormora.Value;
   mTg_TotDFin:=mTg_TotDFin+Qr_CRecvalordescfin.Value ;
   mTg_TotDAnt:=mTg_TotDAnt+Qr_CRecvalordescant.Value;
   mTg_TotApag:=mTg_TotApag+Qr_CRectotliqapagar.Value;


   Qr_CRec.Next;
   if Qr_CRec.Eof then
      begin
      Imprimetotais(0);
      Imprimetotais(1);
      form_impres_fin_relcob.Rdprint1.Impf(form_impres_fin_relcob.mlin,01,'Fim'+insere('-','-',77),mnormal);
      IF form_impres_fin_relcob.RDprint1.Setup then form_impres_fin_relcob.RDprint1.Fechar;
      form_impres_fin_relcob.Free;
      form_impres_fin_relcob:=nil;
      break;
      end;
   if mGrupoAnt<>Qr_CRecNOMGRU.Value then
      begin
      Imprimetotais(0);
      if form_impres_fin_relcob.mlin>57 then
         begin
         form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
         form_impres_fin_relcob.Rdprint1.Impf(form_impres_fin_relcob.mlin,01,insere2('Continua...','-',80),mnormal);
         form_impres_fin_relcob.RDprint1.Novapagina;
         form_impres_fin_relcob.mlin:=0;
         end
      else
         fImpResumido_CabCli(0);
      mGrupoAnt:=Qr_CRecNOMGRU.Value;
      end;
   if form_impres_fin_relcob.mlin>57 then
      begin
      form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
      form_impres_fin_relcob.Rdprint1.Impf(form_impres_fin_relcob.mlin,01,'Continua...'+insere('-','-',69),mnormal);
      form_impres_fin_relcob.Rdprint1.Novapagina;
      form_impres_fin_relcob.mlin:=0;
      end;
   end;

end;

procedure TFrm_Fin_RelCob.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

CLB_TIPODOC.Items.Clear;
for x:=0 to high(ptpdoc) do
   begin
   CLB_TIPODOC.Items.Add(ptpdoc[x]);
   end;
//CLB_TIPODOC.Items.Add('Cheque Balcão');
CLB_TIPODOC.Checked[x-1]:=true;
RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

Qr_CRecCRDTEMIS.DisplayFormat :=fdt3;
Qr_CRecCRDTVCTO.DisplayFormat :=fdt3;
Qr_CRecCRDTBX.DisplayFormat   :=fdt3;
Qr_CRecCRDTPAG.DisplayFormat  :=fdt3;
Qr_CRecCRDESC.DisplayFormat   :=mcasas;
Qr_CRecCRJUROS.DisplayFormat  :=mcasas;
Qr_CRecCRVALOR.DisplayFormat  :=mcasas;
Qr_CRecCRVALPAG.DisplayFormat :=mcasas;
Qr_CRecvalapagar.DisplayFormat:=mcasas;

fAtualizaPadrao(0);
if not CLB_TIPOCOB.Checked[CLB_TIPOCOB.Items.Count-1] then
   begin
   mboolean:=true;
   for x:=0 to CLB_TIPOCOB.Items.Count-1 do
      begin
      if CLB_TIPOCOB.Checked[x] then
         mboolean:=false;
      end;
   if mboolean then
      CLB_TIPOCOB.Checked[CLB_TIPOCOB.Items.Count-1]:=true;
   end;
mDataPag:=date;
DATAPGTO.Text:=FormatDatetime(fdt2, mDataPag);
   
end;

procedure TFrm_Fin_RelCob.bbAplicarClick(Sender: TObject);
var
mCampoGrupo: String;
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
if cb_tpp.ItemIndex=4 then
   mDataPesq:='CRDATPED'
else if cb_tpp.ItemIndex=3 then
   mDataPesq:='CRDTPAG'
else if cb_tpp.ItemIndex=2 then
   mDataPesq:='CRDTBX'
else if cb_tpp.ItemIndex=1 then
   mDataPesq:='CRDTVCTO'
else
   mDataPesq:='CRDTEMIS';
mCampoGrupo:='CRAZAO ||'+chr(39)+' '+chr(39)+'|| CRCODCLI ' ;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN' ,'VCODEMP','CRCODEMP' ,'VCODVEN' ,'CRCODVEN');

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_CRec.Close;
Qr_CRec.SQL.Clear;
Qr_CRec.SQL.Add('Select CRNUMERO, CRDESD, CRDTEMIS, CRDTVCTO, '
               +'       CRDTBX, CRDESC, CRJUROS, CRVALOR,CRCODCLI, '
               +'       CRJURD,  cricmsr,crtotipi, '
               +'       CRAZAO, CDENOM, '
               +'       CFONE01,  COBS01,COBS02,COBS03,COBS04,COBS05, '
               +'       CCODLOC,CCIDADE,CUF, '
               +'       CCODBAI,CBAIRRO, '
               +'       CRLOTE,CRVALPAG,CRDUP,CRDTPAG, '
               +'       CRNPED,CRORDEM,CRLOTSEQ_LB, '
               +'       CRCODEMP,CRCODBCO,CRSTATUS, '
               +'       '+mCampoGrupo+' AS NOMGRU,'
               +'       VCODVEN,VNOME, '
               +'        CRCODCC AS CODCCU, '
               +'       CRCODFPGTO,CRNOMFPGTO, '
               +'       CRNOMCC AS NOMCCU '
               +'       ,CRDESCF '
               +'       ,CRDTDESCF,CRDESCD,CRMULTA,CRDEVOL '
               +'      ,CLOG,CNUM,CCOMPL '
               +'  from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CRSTATUS<9 ');
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODRED '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODCV '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODBCO '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfp,OMITIR_FP);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODFPGTO '+mcinst2);


if trim(MDT1.Text)<>'/  /' then
   Qr_CRec.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_CRec.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
if RGTD.ItemIndex=1 then
   Qr_CRec.SQL.Add(' and CRSTATUS=2')
else if RGTD.ItemIndex=2 then
   Qr_CRec.SQL.Add(' and CRSTATUS<>2');
if Trim(FILTRO.Text)<>'' then
   begin
   Qr_CRec.SQL.Add(' and '+FILTRO.Text);
   end;


if not (CLB_TIPOCOB.Checked[CLB_TIPOCOB.Items.Count-1]) then
   begin
   mcinst:=' and ( ';
   mcinst2:='';
   if CLB_TIPOCOB.Checked[0]=true then
      begin
      mcinst2:=mcinst2+mcinst+' (CRCODBCO=0) ';
      mcinst:= ' or ';
      end;
   if CLB_TIPOCOB.Checked[1]=true then
      begin
      mcinst2:=mcinst2+mcinst+' (CRCODBCO<>0) ';
      mcinst:=' or ';
      end;

   if CLB_TIPOCOB.Checked[2]=true then
      begin
      mcinst2:=mcinst2+mcinst+' (CRTCB=2) ';
      mcinst:=' or ';
      end;

   if CLB_TIPOCOB.Checked[3] then
      begin
      mcinst2:=mcinst2+mcinst+' (CRTCB=3) ';
      mcinst:=' or ';
      end;
   if trim(mcinst)='or' then
      mcinst2:=mcinst2+' )';
   Qr_CRec.SQL.Add(mcinst2);

   end;




mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODORI '+mcinst2);


mcinst2:=fItenstCheckListBox(0,CLB_TIPODOC);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRDUP '+mcinst2);

mcinst2:=fItenstCheckListBox(0,clb_simples);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRTIPCOB '+mcinst2);

if cb_ordem.ItemIndex=0 then
   Qr_CRec.SQL.Add(' order by NOMGRU, CRDTVCTO, CRAZAO')
else if CB_ORDEM.ItemIndex=1 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRDTEMIS, CRNUMERO')
else if CB_ORDEM.ItemIndex=2 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRAZAO, CRNUMERO')
else if CB_ORDEM.ItemIndex=3 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRVALOR')
else if CB_ORDEM.ItemIndex=4 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRVALOR DESC')
else if CB_ORDEM.ItemIndex=5 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRDTBX,CRAZAO')
else if CB_ORDEM.ItemIndex=6 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRDTPAG,CRAZAO')
else if CB_ORDEM.ItemIndex=7 then
   Qr_CRec.SQL.Add(' order by NOMGRU,VCODVEN,CRDTVCTO,CRAZAO')
else if CB_ORDEM.ItemIndex=8 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRCODEMP,CRDTEMIS,CRAZAO')
else if CB_ORDEM.ItemIndex=9 then
  Qr_CRec.SQL.Add(' order by NOMGRU,CRCODEMP,CRDTVCTO,CRAZAO');
try
   Qr_CRec.Open
except
   Qr_CRec.SQL.SaveToFile(mpastatemp +'sql2.txt');
   end;


end;

procedure TFrm_Fin_RelCob.Qr_CRecCalcFields(DataSet: TDataSet);
begin
Qr_CRectipdup.Value:=ptpdoc[Qr_CRecCRDUP.AsInteger];

if Qr_CRecCRDTEMIS.AsDateTime<=pdatanula then
   Qr_CRecdtemis.Value:='/  /'
else
   Qr_CRecdtemis.Value:=FormatDatetime(fdt3,Qr_CRecCRDTEMIS.Value);

if Qr_CRecCRDTVCTO.AsDateTime<=pdatanula then
   Qr_CRecdtvcto.Value:='/  /'
else
   Qr_CRecdtvcto.Value:=FormatDatetime(fdt3,Qr_CRecCRDTVCTO.Value);

if Qr_CRecCRDTBX.AsDateTime<=pdatanula then
   Qr_CRecdtbx.Value:='/  /'
else
   Qr_CRecdtbx.Value:=FormatDatetime(fdt3,Qr_CRecCRDTBX.Value);

if Qr_CRecCRDTPAG.AsDateTime<=pdatanula then
   Qr_CRecdtpag.Value:='/  /'
else
   Qr_CRecdtpag.Value:=FormatDatetime(fdt3,Qr_CRecCRDTPAG.Value);
if Qr_CRecCRSTATUS.Value>1 then
   Qr_CRecatraso.Value:=Qr_CRecCRDTPAG.AsDateTime-Qr_CRecCRDTVCTO.AsDateTime
else
   Qr_CRecatraso.Value:=mDataPag-Qr_CRecCRDTVCTO.AsDateTime;
Qr_CRecvalordescant.Value:=0;
if (Qr_CRecCRDESCD.Value>0) and (Qr_CRecCRSTATUS.AsInteger<2) and (Qr_CRecatraso.Value<0) then
   Qr_CRecvalordescant.Value:=Qr_CRecCRDESCD.Value*(Qr_CRecatraso.Value*-1);

if Qr_CRecatraso.Value<0 then
   Qr_CRecatraso.Value:=0;
Qr_CRecvalorjuros.Value:=0;
Qr_CRecvalormora.Value :=0;
Qr_CRecvalordescfin.Value:=0;

if Qr_CRecCRSTATUS.AsFloat<2 then
   begin
    if (Qr_CRecatraso.Value>0) and (Qr_CRecCRJURD.AsFloat<>0) then
      Qr_CRecvalorjuros.Value:=Qr_CRecCRJURD.Value*Qr_CRecatraso.Value;
   if Qr_CRecCRMULTA.AsFloat<>0 then
      Qr_CRecvalormora.Value:=Qr_CRecCRMULTA.Value;
   if Qr_CRecCRDESCF.AsFloat>0 then
      begin
      if Qr_CRecCRDTDESCF.AsDateTime>=mDataPag then
         Qr_CRecvalordescfin.Value:=Qr_CRecCRDESCF.Value;
      end;
   end;

Qr_CRecnumdoc.Value:=Qr_CRecCRNUMERO.AsString+'-'+Qr_CRecCRDESD.AsString;
Qr_CRecrazao_codigo.Value:=Qr_CRecCRAZAO.Value+'-'+Qr_CRecCRCODCLI.AsString;
Qr_CRecvalapagar.Value:=Qr_CRecCRVALOR.Value
                       -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value);
Qr_CRectotliqapagar.Value:=Qr_CRecCRVALOR.Value
                       -(Qr_CRecCRVALPAG.Value-Qr_CRecCRJUROS.Value+Qr_CRecCRDESC.Value)
                       +Qr_CRecvalorjuros.Value+Qr_CRecvalormora.Value
                       -(Qr_CRecvalordescfin.Value+Qr_CRecvalordescant.Value);

Qr_CRecender_compl.value:=Qr_CRecCLOG.AsString;
if trim(Qr_CRecCNUM.asstring)='' then
   Qr_CRecender_compl.value:=Qr_CRecender_compl.value+' S/N'
else
   Qr_CRecender_compl.value:=Qr_CRecender_compl.value+' No'+Qr_CRecCNUM.asstring;

Qr_CRecender_compl.value:=Qr_CRecender_compl.value+' '+Qr_CRecCCOMPL.Asstring+' '+Qr_CRecCBAIRRO.asstring;


end;

procedure TFrm_Fin_RelCob.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (Qr_CRecatraso.Value>0) and (Qr_CRecCRSTATUS.Value<2) then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if Qr_CRecCRSTATUS.Value=1 then
   begin
   DBGrid1.Canvas.Font.Color:=clBlue;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

if (Qr_CRecCRDUP.Value=6) then
   begin
   DBGrid1.Canvas.Brush.Color:=$00EBEBEB;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_Fin_RelCob.bbSalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin

fDeletaPadroes(codusr,'_FIN_RELCOB','');
fGravaPadroes(codusr,'CB_TPP'        ,'itemindex' ,'_FIN_RELCOB',IntTostr(cb_tpp.ItemIndex));
fGravaPadroes(codusr,'CB_ORDEM'      ,'itemindex' ,'_FIN_RELCOB',IntTostr(cb_ordem.ItemIndex));
fGravaPadroes(codusr,'RGTD'          ,'itemindex' ,'_FIN_RELCOB',IntTostr(RGTD.ItemIndex));
fGravaPadroes(codusr,'CB_OBSCLI'     ,'checked'   ,'_FIN_RELCOB',iif(CB_OBSCLI.Checked,'true','false'));
mcinst2:='';
for x:=0 to CLB_TIPODOC.Items.Count-1 do
   begin
   if CLB_TIPODOC.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_TIPODOC'          ,'itemindex' ,'_FIN_RELCOB',mcinst2);


mcinst2:='';
for x:=0 to CLB_TIPOCOB.Items.Count-1 do
   begin
   if CLB_TIPOCOB.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_TIPOCOB'          ,'itemindex' ,'_FIN_RELCOB',mcinst2);
mcinst2:='';
for x:=0 to clb_simples.Items.Count-1 do
   begin
   if clb_simples.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_SIMPLES'          ,'itemindex' ,'_FIN_RELCOB',mcinst2);

mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_FIN_RELCOB',mcinst2);

fmensagem('Gravado!',0,['0'],0);

end;

function TFrm_Fin_RelCob.fAtualizaPadrao(pTipo: Integer): Boolean;
var
mform: String;
x: Integer;
begin
{
if flfilpad(codusr,'_FIN_RELCOB','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','FILTRO',[]) then
      RG_TIPOREL.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMIREC',[]) then
      CB_EMIREC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_EMIREC.Checked:=false;
   end;

mform:='_RCREC';
DM4.Tb_FilPad2.First;
if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'FILTRO']),[]) then
   FILTRO.Text:=DM4.Tb_FilPad2FPVALOR.Value;

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_ORDEM']),[]) then
   CB_ORDEM.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);


if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'RGTD']),[]) then
   RGTD.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_TPP']),[]) then
   cb_tpp.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);


if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_TIPODOC']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
      begin
      if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
         begin
         CLB_TIPODOC.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLB_TIPODOC.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLB_TIPODOC.Items.Count-1 do
      begin
      CLB_TIPODOC.Checked[x]:=True;
      end;
   CLB_TIPODOC.Checked[6]:=false;
   end;


if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_TIPOCOB']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
      begin
      if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
         begin
         CLB_TIPOCOB.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLB_TIPOCOB.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLB_TIPOCOB.Items.Count-1 do
      begin
      CLB_TIPOCOB.Checked[x]:=True;
      end;
   end;

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_SIMPLES']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
      begin
      if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
         begin
         clb_simples.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      clb_simples.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to clb_simples.Items.Count-1 do
      begin
      clb_simples.Checked[x]:=True;
      end;
   end;
   }
result:=True;
end;

procedure TFrm_Fin_RelCob.FormKeyDown(Sender: TObject; var Key: Word;
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
if pTcAtalho_ce<>0 then
   begin
   if (Shift=pSfAtalho_ce) and (pTcAtalho_ce=key) then
      begin
{      if ce_qtdemp<2 then
         begin
         lbl_cheio.Visible:=true;
         end
      else
         begin
         lbl_cheio.Visible:=false;
         end;                     }
      end;
   end;
end;

procedure TFrm_Fin_RelCob.bbSitCliClick(Sender: TObject);
begin
CODCLI.Text:=Qr_CRecCRCODCLI.AsString;
if trim(CODCLI.Text)='' then
   begin
   fmensagem('Favor Selecionar um Cliente!',0,['0'],0);
   exit;
   end;
Application.Createform(TFrm_SitCre,Frm_SitCre);

Frm_SitCre.CODCLI.Text:=Trim(CODCLI.text);
Frm_Sitcre.BBAPLICAR.Click;
Frm_SitCre.ShowModal;
Frm_SitCre.Free;
CODCLI.Text:='';
end;

procedure TFrm_Fin_RelCob.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
{   if lbx_codcli.Items.Count>1 then
      bbSitCli.Enabled:=False
   else
      bbSitCli.Enabled:=true;
}   end;
if trim(MDT1.Text)<>'/  /' then
   begin
   if StrtoDate(MDT1.Text)=date-7 then
      MDT1.Text:='/  /';
   end;

end;

procedure TFrm_Fin_RelCob.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Fin_RelCob.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      begin
      fmensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_Fin_RelCob.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_Fin_RelCob',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Fin_RelCob.CODTELExit(Sender: TObject);
begin
CODTEL.Text:=fdeixanum2(CODTEL.Text);
if Trim(CODTEL.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',CODTEL.Text) then
      begin
      fmensagem('Televendas não cadastrado!',0,['0'],0);
      CODTEL.SetFocus;
      end
   else
      begin
      lbx_codtel.Items.Add(FormatFloat('0000000',StrToFloat(CODTEL.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTEL.text := '';
      CODTEL.SetFocus;
      end;
   end;
end;

procedure TFrm_Fin_RelCob.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_Fin_RelCob',Key);
   if trim(CODTEL.Text)<>'' then
      CODTELExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_Fin_RelCob.CODSUPExit(Sender: TObject);
begin

CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flqr1('SNOME','S','CADSUP','N','SCODSUP',CODSUP.Text) then
      begin
      fmensagem('Supervidor não Cadastrado cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(CODSUP.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODSUP.text := '';
      CODSUP.SetFocus;
      end;
   end;
end;

procedure TFrm_Fin_RelCob.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_Fin_RelCod',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Fin_RelCob.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
   begin
   if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      begin
      fmensagem('Rede não cadastrada!',0,['0'],0);
      CODRED.SetFocus;
      end
   else
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODRED.text := '';
      CODRED.SetFocus;
      end;
   end;


end;

procedure TFrm_Fin_RelCob.CODREDKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'Frm_DestPro',key);
   key:=#0;
   end;


end;

procedure TFrm_Fin_RelCob.CODCVExit(Sender: TObject);
begin
CODCV.Text:=fdeixanum2(CODCV.Text);

if Trim(CODCV.Text)<>'' then
   begin
   if not flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCV.Text) then
      begin
      fmensagem('Convênio não cadastrada!',0,['0'],0);
      CODCV.SetFocus;
      end
   else
      begin
      lbx_codcv.Items.Add(FormatFloat('0000000',StrToFloat(CODCV.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCV.text := '';
      CODCV.SetFocus;
      end;
   end;

end;

procedure TFrm_Fin_RelCob.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.Text:=fChamaCv(0,'Frm_PLDR',key);
   CODCVExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Fin_RelCob.CODBCOExit(Sender: TObject);
begin

CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      fmensagem('Banco não cadastrada!',0,['0'],0);
      CODBCO.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODBCO.text := '';
      CODBCO.SetFocus;
      end;
   end;


end;

procedure TFrm_Fin_RelCob.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_Fin_RelCob',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Fin_RelCob.CODLOCExit(Sender: TObject);
begin

CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      fmensagem('Localidade não cadastrada!',0,['0'],0);
      CODLOC.SetFocus;
      end
   else
      begin
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;


end;

procedure TFrm_Fin_RelCob.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Fin_RelCob',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Fin_RelCob.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   begin
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
   if lbx_codcli.Count<=0 then
      MDT1.Text:=FormatDatetime(fdt2, date-7);
   end;
end;

procedure TFrm_Fin_RelCob.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_Fin_RelCob.lbx_codtelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_Fin_RelCob.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_Fin_RelCob.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_Fin_RelCob.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_Fin_RelCob.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_Fin_RelCob.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Fin_RelCob.CLB_TIPODOCClick(Sender: TObject);
begin
CLB_TIPODOC:=Valida_CheckList(CLB_TIPODOC);

end;

procedure TFrm_Fin_RelCob.CLB_TIPOCOBClick(Sender: TObject);
begin
CLB_TIPOCOB:=Valida_CheckList(CLB_TIPOCOB);

end;

procedure TFrm_Fin_RelCob.clb_simplesClick(Sender: TObject);
begin
clb_simples:=Valida_CheckList(clb_simples);

end;

procedure TFrm_Fin_RelCob.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_Fin_RelCob.CODFPExit(Sender: TObject);
begin
CODFP.Text:=fdeixanum2(CODFP.Text);
if Trim(CODFP.Text)<>'' then
   begin
   DM1.Tb_FP.Close;
   DM1.Tb_FP.SQL.Clear;
   DM1.Tb_FP.SQL.add('Select * from CADFP ');
   if trim(CODFP.Text)<>'' then
      DM1.Tb_FP.SQL.Add(' where FPCODIGO=0'+Trim(CODFP.Text));
   DM1.Tb_FP.Open;
   if DM1.Tb_FP.Eof then
      begin
      fmensagem('Forma de Pagamento não Cadastrado!',0,['0'],0);
      CODFP.SetFocus;
      end
   else
      begin
      lbx_codfp.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_FPFPCODIGO.ASSTRING))
                                    +' - '+DM1.Tb_FPFPDESC.Value);

      CODFP.text := '';
      CODFP.SetFocus;
      end;
   end;


end;

procedure TFrm_Fin_RelCob.lbx_codfpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfp.ItemIndex>=0 then
      lbx_codfp.Items.Delete(lbx_codfp.ItemIndex);

end;

procedure TFrm_Fin_RelCob.DBGrid1DblClick(Sender: TObject);
var
mant_codemp: Integer;
begin
if not Qr_CRecCRNUMERO.IsNull then
   begin
   mant_codemp:=codemp;
   codemp:=Qr_CRecCRCODEMP.AsInteger;
   Application.CreateForm(TFrm_Dar, Frm_Dar);
   mtipo:=1;
   Frm_Dar.Edit1.Text:=Qr_CRecCRNUMERO.AsString;
   if flcaddar(8,Qr_CRecCRCODEMP.AsInteger,0,0,0,Qr_CRecCRNUMERO.AsString,
                     Qr_CRecCRDESD.AsString
                     ,'0',
                     Qr_CRecCRDTEMIS.AsDateTime,'') then

   Frm_Dar.ShowModal;
   Frm_Dar.Free;
   Frm_Dar:=nil;
   if DM1.Tb_Dar.Filtered then
      begin
      DM1.Tb_Dar.Filter:='';
      DM1.Tb_Dar.Filtered:=false;
      end;
   codemp:=mant_codemp;
   mtipo:=0;
   end;

end;

procedure TFrm_Fin_RelCob.bbMedPgVctoClick(Sender: TObject);
begin

{
Application.CreateForm(TFrm_MedVenPgt, Frm_MedVenPgt);
Frm_MedVenPgt.Tb_Titulos.Close;
Frm_MedVenPgt.Tb_Titulos.Open;
if (Qr_CRec.Active) and not (Qr_CRec.IsEmpty) then
   begin
   While not Qr_CRec.Eof do
      begin
      if Qr_CRecCRSTATUS.Value>1 then
         begin
         Qr_CRec.Next;
         continue;
         end;

      Frm_MedVenPgt.Tb_Titulos.Append;
      Frm_MedVenPgt.Tb_TitulosVALOR.Value   :=Qr_CRecvalapagar.Value;
      Frm_MedVenPgt.Tb_TitulosDATA_DOC.Value:=Qr_CRecCRDTVCTO.Value;
      Frm_MedVenPgt.Tb_Titulos.Post;
      Qr_CRec.Next;
      end;
   end;

Frm_MedVenPgt.Tb_Documentos.Close;
Frm_MedVenPgt.Tb_Documentos.Open;
Qr_CRec.First;
Frm_MedVenPgt.OBS.Text:=Qr_CRecCRCODCLI.AsString+' - '+Qr_CRecCRAZAO.AsString;
Frm_MedVenPgt.ShowModal;
Frm_MedVenPgt.Free;
Frm_MedVenPgt:=nil;
}
end;



procedure TFrm_Fin_RelCob.DATAPGTOExit(Sender: TObject);
begin

if trim(DATAPGTO.Text)='/  /' then
   begin
   mDataPag:=date;
   DATAPGTO.Text:=FormatDatetime(fdt2, mDataPag);
   end;
if Trim(DATAPGTO.Text)<>'/  /' then
   begin
   Try
      DATAPGTO.Text:=FormatDateTime(fdt2,StrtoDate(DATAPGTO.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATAPGTO.SetFocus;
      end;
   end;

end;


function TFrm_Fin_RelCob.fImpResumido_Cab(pTipo: Integer): Boolean;
begin

form_impres_fin_relcob.mpag:=form_impres_fin_relcob.mpag+1;
form_impres_fin_relcob.RDprint1.ImpF(01,01,FormatDatetime(fdt2, date)+centra(DM1.Tb_EmpRAZAO_CAB.Value,' ',62)+FormatDateTime(fhr, time),mnormal);
if RGTD.ItemIndex=0 then
   mcinst2:='Aberto'
else if RGTD.ItemIndex=1 then
   mcinst2:='Pagos'
else
   mcinst2:='Aberto/Pagos';
form_impres_fin_relcob.RDprint1.ImpF(02,01,insere2('Relatorio de Cobranca. -'+mcinst2+'-'+fperiodo(0,MDT1.Text,MDT2.Text),' ',125)+'Pagina: '+FormatFloat('0000',form_impres_fin_relcob.mpag),mreduz);
form_impres_fin_relcob.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
form_impres_fin_relcob.mlin:=03;

if lbx_codcli.Count>0 then
   FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
if lbx_codven.Count>0 then
   FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
if lbx_codbco.Count>0 then
   FImprimeTitulo('Banco',lbx_codbco,OMITIR_BCO);
if lbx_codfp.Count>0 then
   FImprimeTitulo('Forma Pgto',lbx_codfp,OMITIR_FP);
if lbx_codred.Count>0 then
   FImprimeTitulo('Rede de Cliente',lbx_codred,OMITIR_RED);
if lbx_codcv.Count>0 then
   FImprimeTitulo('Convenio',lbx_codcv,OMITIR_CV);
if lbx_codloc.Count>0 then
   FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
if lbx_codtel.Count>0 then
   FImprimeTitulo('Televendas',lbx_codtel,OMITIR_TEL);
if lbx_codsup.Count>0 then
   FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);

fImpResumido_CabCli(0);


{
Cliente: 123456-123456789012345678901234568901234567890 - 1234657890123465789012346578901234657
         (0062) 3251-2515 - 12345679801234567890-GO
-------------
Titulo        Dt.Emis. Dt.Vcto. Dt.Pgto. Bco Vlr.titulo   Vlr.Pago   Juros Mora   ----Desc.fin.--- Desconto --------Dados para pagamento ate 17/07/2007--------
                                                                    diario   %    Valor   p/Pg.Ate  Antec.   Atr Tot.Jur Jr.Mora Desc.Fin   Desc.Ant    A Pagar
*1234567/01/0 28/05/27 15/01/27 15/05/07 123 zzz.zz9,99 zzz.zz9,99 zzzz.zz zzz.zz zzz9,99 13/06/20 z.zz9,99 1234zzzz9,99zzzz9,99 zzz.zz9,99 zzz.z,99zzz.zzz9,99

result:=true;
}
result:=true;

end;

function TFrm_Fin_RelCob.fImpResumido_CabCli(pTipo: Integer): Boolean;
begin
form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,'Cliente: '+FormatFloat('000000',Qr_CRecCRCODCLI.Value)
                                            +'-'+Qr_CRecCRAZAO.Value
                                            +' - '+Qr_CRecCDENOM.Value,m12ccp);
form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,'         '+Qr_CRecCFONE01.Value+' - '+Qr_CRecCCIDADE.Value+'-'+Qr_CRecCUF.Value,m12ccp);
form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,'         '+Qr_CRecender_compl.Value,m12ccp);


form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
form_impres_fin_relcob.Rdprint1.Impf(form_impres_fin_relcob.mlin,01,insere('-','-',80),mnormal);

if CB_OBSCLI.Checked then
   begin
   form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
   form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,Centra('Observacao do Cliente','-',80),mnormal);
   if trim(Qr_CRecCOBS01.Text)<>'' then
      begin
      form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
      form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,Centra(Qr_CRecCOBS01.Value,' ',80),mnormal);
      end;
   if trim(Qr_CRecCOBS02.Text)<>'' then
      begin
      form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
      form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,Centra(Qr_CRecCOBS03.Value,' ',80),mnormal);
      end;
   if trim(Qr_CRecCOBS04.Text)<>'' then
      begin
      form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
      form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,Centra(Qr_CRecCOBS04.Value,' ',80),mnormal);
      end;
   if trim(Qr_CRecCOBS05.Text)<>'' then
      begin
      form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
      form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,Centra(Qr_CRecCOBS05.Value,' ',80),mnormal);
      end;
   form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
   form_impres_fin_relcob.Rdprint1.Impf(form_impres_fin_relcob.mlin,01,insere('-','-',80),mnormal);

   end;


form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,'Titulo        Dt.Emis. Dt.Vcto. Dt.Pgto. Bco Vlr.titulo   Vlr.Pago   Juros Mora   ----Desc.fin.--- Desconto --------Dados para pagamento ate '+DATAPGTO.Text+'--------',m20ccp);
form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,'                                                                    diario   %    Valor   p/Pg.Ate  Antec.   Atr Tot.Jur Jr.Mora Desc.Fin   Desc.Ant    A Pagar',m20ccp);

result:=true;
end;

function TFrm_Fin_RelCob.Imprimetotais(pTipo: Integer): Boolean;
//ptipo=0 do cliente
//     =1 Geral
begin
if ptipo=0 then
   begin
   form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
   form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,insere2('---Total do Cliente..>>> ',' ',44)
                        +insere(FormatFloat(mcasas, mTC_TotDup),' ',11)
                        +insere(FormatFloat(mcasas, mTc_TotPag),' ',11)
                        +insere(' ',' ',08)
                        +insere(' ',' ',08)
                        +insere(' ',' ',08)
                        +' '+insere2(' ',' ',08)
                        +insere(' ',' ',12)
                        +insere(FormatFloat(mcasas, mTc_TotJur),' ',09)
                        +insere(FormatFloat(mcasas, mTc_TotMora),' ',08)
                        +insere(FormatFloat(mcasas, mTc_TotDFin),' ',11)
                        +insere(FormatFloat(mcasas, mTc_TotDAnt),' ',09)
                        +insere(FormatFloat(mcasas, mTc_TotApag),' ',11),m20ccp);


   mTC_TotDup :=0;
   mTc_TotPag :=0;
   mTc_TotJur :=0;
   mTc_TotMora:=0;
   mTc_TotDFin:=0;
   mTc_TotDAnt:=0;
   mTc_TotApag:=0;
   end
else
   begin
   form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
   form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,insere2('---Total Geral......>>> ',' ',44)
                        +insere(FormatFloat(mcasas, mTG_TotDup),' ',11)
                        +insere(FormatFloat(mcasas, mTG_TotPag),' ',11)
                        +insere(' ',' ',08)
                        +insere(' ',' ',08)
                        +insere(' ',' ',08)
                        +' '+insere2(' ',' ',08)
                        +insere(' ',' ',12)
                        +insere(FormatFloat(mcasas, mTG_TotJur),' ',09)
                        +insere(FormatFloat(mcasas, mTG_TotMora),' ',08)
                        +insere(FormatFloat(mcasas, mTG_TotDFin),' ',11)
                        +insere(FormatFloat(mcasas, mTG_TotDAnt),' ',09)
                        +insere(FormatFloat(mcasas, mTG_TotApag),' ',11),m20ccp);


   mTG_TotDup :=0;
   mTG_TotPag :=0;
   mTG_TotJur :=0;
   mTG_TotMora:=0;
   mTG_TotDFin:=0;
   mTG_TotDAnt:=0;
   mTG_TotApag:=0;
   end;
form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
form_impres_fin_relcob.Rdprint1.Impf(form_impres_fin_relcob.mlin,01,insere('-','-',80),mnormal);

result:=true;

end;

procedure TFrm_Fin_RelCob.MDT2Exit(Sender: TObject);
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

function TFrm_Fin_RelCob.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin

if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_fin_relcob.mlin:=form_impres_fin_relcob.mlin+1;
      form_impres_fin_relcob.RDprint1.ImpF(form_impres_fin_relcob.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_Fin_RelCob.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

