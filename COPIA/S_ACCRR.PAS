unit S_AcCRR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Mask, ExtCtrls, S_DM1, func, S_Impres, S_Cli,
  Lerarq, Grids, DBGrids,S_DM5, RLReport,variants, S_SelEmp, DBClient;

type
  TFrm_AcCRR = class(TForm)
    Qr_FP: TQuery;
    Qr_Lote: TQuery;
    Qr_LoteFPLOTE: TFloatField;
    Qr_Tit: TQuery;
    Qr_FPforma: TStringField;
    Qr_TitFPCODEMP: TFloatField;
    Qr_TitFPSEQ: TFloatField;
    Qr_TitFPLOTE: TFloatField;
    Qr_TitFPNUMERO: TFloatField;
    Qr_TitFPDESD: TStringField;
    Qr_TitFPTIPO: TFloatField;
    Qr_TitFPCODCLI: TFloatField;
    Qr_TitFPDTEMIS: TDateTimeField;
    Qr_TitFPCAIXA: TFloatField;
    Qr_TitFPCODUSR: TFloatField;
    Qr_TitFPVALOR: TFloatField;
    Qr_TitFPJUROS: TFloatField;
    Qr_TitFPDESC: TFloatField;
    Qr_FPFPCODEMP: TFloatField;
    Qr_FPFPSEQ: TFloatField;
    Qr_FPFPDATA: TDateTimeField;
    Qr_FPFPFORMA: TFloatField;
    Qr_FPFPNUMERO: TFloatField;
    Qr_FPFPBANCO: TFloatField;
    Qr_FPFPSERIE: TStringField;
    Qr_FPFPVALOR: TFloatField;
    Qr_FPFPLOTE: TFloatField;
    Qr_FPFPCC: TStringField;
    Qr_FPFPTIPO: TFloatField;
    Qr_FPFPCAIXA: TFloatField;
    Qr_FPFPCODLDR: TFloatField;
    Qr_Titnomcli: TStringField;
    Qr_TitFPLOTSEQ: TFloatField;
    Qr_TitFPCODECF: TFloatField;
    Qr_TitFPNR: TFloatField;
    Qr_TitFPDUP_CODEMP: TFloatField;
    Qr_TitFPCODVEN: TFloatField;
    Qr_TitFPDTBX: TDateTimeField;
    Qr_TitFPLEMAT: TFloatField;
    Qr_TitFPVLRST: TFloatField;
    Qr_TitFPVLRIPI: TFloatField;
    Qr_TitFPVALDUP: TFloatField;
    Qr_FPvinculo: TIntegerField;
    Qr_TitFPDEVOL: TFloatField;
    Qr_TitFPDATPAG: TDateTimeField;
    Qr_TitFPDTVCTO: TDateTimeField;
    Qr_FPFPLOTSEQ: TFloatField;
    Qr_FPFPLOTSEQ_FC: TFloatField;
    Qr_FPFPLEMAT: TFloatField;
    Qr_FPFPVINCULO: TFloatField;
    Qr_FPFPNATUREZA: TFloatField;
    Panel1: TPanel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    NRF: TEdit;
    NRI: TEdit;
    CODCLI: TEdit;
    MDT2: TMaskEdit;
    MDT1: TMaskEdit;
    DBGrid1: TDBGrid;
    Src_Lote: TDataSource;
    Qr_LoteFPLOTSEQ: TFloatField;
    bbAplicar: TBitBtn;
    Qr_LoteDATA: TDateTimeField;
    Qr_LoteCODCLI: TFloatField;
    Qr_Loterazao: TStringField;
    Src_Temp: TDataSource;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLMemo9: TRLMemo;
    RLMemo10: TRLMemo;
    RLMemo11: TRLMemo;
    RLMemo12: TRLMemo;
    RLMemo13: TRLMemo;
    RLMemo14: TRLMemo;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand3: TRLBand;
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
    RLDBText17: TRLDBText;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    Src_ResFP: TDataSource;
    Tb_ResFP: TQuery;
    Tb_ResFPVALREC: TFloatField;
    Tb_ResFPFPFORMA: TFloatField;
    Tb_ResFPFPDESC: TStringField;
    lbl_numlot: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel7: TRLLabel;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLDBResult13: TRLDBResult;
    cb_impgraf: TCheckBox;
    lbl_totdoc: TRLLabel;
    lbl_totgdoc: TRLLabel;
    RLReport2: TRLReport;
    RLBand7: TRLBand;
    RLDBText18: TRLDBText;
    RLLabel8: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel9: TRLLabel;
    lbl_periodo2: TRLLabel;
    RLLabel11: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLBand8: TRLBand;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand9: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    LOTEI: TEdit;
    LOTEF: TEdit;
    CB_INIBIRCHQP: TCheckBox;
    sb_SalvarPadrao: TSpeedButton;
    Qr_FPFPDATDEP: TDateTimeField;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    StaticText6: TStaticText;
    CODFP: TEdit;
    lbx_codfp: TListBox;
    OMITIR_FP: TCheckBox;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    Qr_TitUSUARIO: TStringField;
    Label24: TLabel;
    edt_codbco: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    Label6: TLabel;
    edt_codusr_cx: TEdit;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    bbCorrigir: TBitBtn;
    Tb_Temp: TClientDataSet;
    Tb_TempTP_OBS: TStringField;
    Tb_TempTP_NUMERO: TFloatField;
    Tb_TempTP_DESD: TStringField;
    Tb_TempTP_TIPO: TStringField;
    Tb_TempTP_DTVCTO: TDateTimeField;
    Tb_TempTP_DATPAG: TDateTimeField;
    Tb_TempTP_CODCLI: TFloatField;
    Tb_TempTP_NOMCLI: TStringField;
    Tb_TempTP_VALDUP: TFloatField;
    Tb_TempTP_VLRST: TFloatField;
    Tb_TempTP_VLRIPI: TFloatField;
    Tb_TempTP_FPDESC: TFloatField;
    Tb_TempTP_FPJUROS: TFloatField;
    Tb_TempTP_FPDEVOL: TFloatField;
    Tb_TempTP_FPVLRST: TFloatField;
    Tb_TempTP_FPVALOR: TFloatField;
    Tb_TempTP_IMPDTVCTO: TStringField;
    Tb_TempTP_IMPDATPAG: TStringField;
    Tb_TempTP_IMPCODCLI: TStringField;
    Tb_TempTP_IMPNOMCLI: TStringField;
    Tb_TempTP_IMPVALDUP: TStringField;
    Tb_TempTP_IMPVLRST: TStringField;
    Tb_TempTP_IMPVLRIPI: TStringField;
    Tb_TempTP_IMPFPDESC: TStringField;
    Tb_TempTP_IMPFPJUROS: TStringField;
    Tb_TempTP_IMPFPDEVOL: TStringField;
    Tb_TempTP_IMPFPVLRST: TStringField;
    Tb_TempTP_IMPFPVALOR: TStringField;
    Tb_TempTP_IMPNUMERO: TStringField;
    Tb_TempTP_PGFORMA: TStringField;
    Tb_TempTP_PGDATA: TDateTimeField;
    Tb_TempTP_PGNATUREZA: TFloatField;
    Tb_TempTP_PGNUMERO: TFloatField;
    Tb_TempTP_PGVALOR: TFloatField;
    Tb_TempTP_IMPPGDATA: TStringField;
    Tb_TempTP_IMPPGNUMERO: TStringField;
    Tb_TempTP_IMPPGVALOR: TStringField;
    Tb_TempTP_NUMLOT: TFloatField;
    Tb_TempTP_IFEM: TStringField;
    Tb_TempTP_TIPOCOB: TStringField;
    Tb_TempTP_DTDEP: TStringField;
    Tb_TempUSUARIO: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure Qr_FPCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_TitCalcFields(DataSet: TDataSet);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure NRIExit(Sender: TObject);
    procedure NRFExit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure Qr_LoteCalcFields(DataSet: TDataSet);
    procedure lbl_numlotBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure LOTEIExit(Sender: TObject);
    procedure LOTEFExit(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codfpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFPKeyPress(Sender: TObject; var Key: Char);
    procedure CODFPExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codbcoExit(Sender: TObject);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure edt_codbcoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbCorrigirClick(Sender: TObject);
  private
    { Private declarations }
    function faccrcab(ptipo: Integer): Boolean;
    Function fCarregarTemp(pTipo: Integer): Boolean;
  public
    { Public declarations }
    form_impres_accrr: tfrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    function fCorrigir: Boolean;

  end;

var
  Frm_AcCRR: TFrm_AcCRR;
  la_empfpcr   : String;
  la_empfpcrdup: String;
  mTabTmp: String;
  mtotdoc,mLotAnt,mgtotdoc: Real;

implementation

uses func_excecoes, S_DM4, S_FPag;

{$R *.DFM}

procedure TFrm_AcCRR.bbSairClick(Sender: TObject);
begin

close;
end;

procedure TFrm_AcCRR.bbImprimirClick(Sender: TObject);
var
mtottit,  mtotstipi,  mtotdes, mtotjur, mtotdev, mtotpag: Real;
mgtottit, mgtotstipi, mgtotdes,mgtotjur,mgtotdev,mgtotpag: Real;
mlinha01, mlinha02: String;
begin
bbAplicar.Click;
DM1.Tb_FP.Close;
DM1.Tb_FP.SQL.Clear;
DM1.Tb_FP.sql.add('Select * from CADFP');
DM1.Tb_FP.Open;

if not (Tb_Temp.Active) or (Tb_Temp.IsEmpty) then
   begin
   fmensagem('Nada a ser impresso no período solicitado!',0,['0'],0);
   exit;
   end;

la_empfpcrdup:=fEmpresas_Selecionadas('FPCRDUP','FPCRDUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
la_empfpcr:=fEmpresas_Selecionadas('FPCR','FPCR.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

{
Tb_ResFP.Close;
Tb_ResFP.Sql.Clear;
Tb_ResFP.SQl.Add('Select sum(FPCR.FPVALOR) AS VALREC, FPCR.FPFORMA,CADFP.FPDESC '
                +' from FPCR, FPCRDUP,CADFP where '
               +iif(la_empfpcr='','',la_Empfpcr+' and '));
if Trim(MDT1.Text)<>'/  /' then
   Tb_ResFP.Sql.add(' FPCR.FPDATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39)+' and ');
if Trim(MDT2.Text)<>'/  /' then
   Tb_ResFP.Sql.add(' FPCR.FPDATA<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39)+' and ');
if ValInt(NRI.Text)>0 then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPNR>=0'+Trim(NRI.Text)+' and ');
   end;
if ValInt(NRF.Text)>0 then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPNR<=0'+Trim(NRF.Text)+' and ');
   end;

if ValInt(LOTEI.Text)>0 then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPLOTE>=0'+Trim(LOTEI.Text)+' and ');
   end;
if ValInt(LOTEF.Text)>0 then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPLOTE<=0'+Trim(LOTEF.Text)+' and ');
   end;

if CB_INIBIRCHQP.Checked then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPVINCULO<>14 and ');
   end;


Tb_ResFP.Sql.add(' FPCRDUP.FPCODEMP=FPCR.FPCODEMP '
               +' and FPCRDUP.FPLOTSEQ=FPCR.FPLOTSEQ '
               +' and FPCRDUP.FPLOTE=FPCR.FPLOTE ');





if Trim(CODCLI.Text)<>'' then
   Tb_ResFP.Sql.Add(' and FPCR.FPCODCLI=0'+Trim(CODCLI.Text));

if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('FPCRDUP.FPDUP_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_Empresas)<>'' then
   Tb_ResFP.sql.Add(' and '+la_Empresas);

Tb_ResFP.Sql.Add(' AND (FPCODIGO=FPFORMA) ');

Tb_ResFP.Sql.add('  Group by FPCR.FPFORMA,CADFP.FPDESC');

//Tb_ResFP.Sql.savetofile('c:\sql02.txt');



Tb_ResFP.Open;

Tb_ResFP.First;

}


Tb_ResFP.Close;
Tb_ResFP.Sql.Clear;
Tb_ResFP.SQl.Add('Select sum(FPCR.FPVALOR) AS VALREC, DECODE(FPCR.FPFORMA,-1,1,FPCR.FPFORMA) AS  FPFORMA'
                +' ,DECODE(FPCR.FPFORMA,-1,'+chr(39)+'DINHEIRO'+chr(39)+', CADFP.FPDESC) AS FPDESC '
                +' from FPCR,CADFP where '
               +iif(la_empfpcr='','',la_Empfpcr+' and '));
if Trim(MDT1.Text)<>'/  /' then
   Tb_ResFP.Sql.add(' FPCR.FPDATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39)+' and ');
if Trim(MDT2.Text)<>'/  /' then
   Tb_ResFP.Sql.add(' FPCR.FPDATA<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39)+' and ');
if ValInt(NRI.Text)>0 then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPNR>=0'+Trim(NRI.Text)+' and ');
   end;
if ValInt(NRF.Text)>0 then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPNR<=0'+Trim(NRF.Text)+' and ');
   end;

if ValInt(LOTEI.Text)>0 then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPLOTE>=0'+Trim(LOTEI.Text)+' and ');
   end;
if ValInt(LOTEF.Text)>0 then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPLOTE<=0'+Trim(LOTEF.Text)+' and ');
   end;

if CB_INIBIRCHQP.Checked then
   begin
   Tb_ResFP.SQL.add(' FPCR.FPVINCULO<>14 and ');
   end;




mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Tb_ResFP.Sql.Add(' FPCR.FPCODCLI '+mcinst2+' and ');



Tb_ResFP.Sql.Add(' (FPCODIGO(+)=FPFORMA) ');


mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Tb_ResFP.SQL.Add(' and FPCR.FPCAIXA '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if trim(mcinst2)<>'' then
   Tb_ResFP.SQL.Add(' and FPCR.FPCODUSR_CX '+mcinst2);

Tb_ResFP.Sql.add(' group by DECODE(FPCR.FPFORMA,-1,1,FPCR.FPFORMA) '
                +' ,DECODE(FPCR.FPFORMA,-1,'+chr(39)+'DINHEIRO'+chr(39)+', CADFP.FPDESC) ');
//Tb_ResFP.Sql.add('  Group by FPCR.FPFORMA,CADFP.FPDESC');

//Tb_ResFP.Sql.savetofile('c:\sql02.txt');


try
   Tb_ResFP.Open;
except
   Tb_ResFP.Sql.savetofile('c:\sql02.txt');
   end;

Tb_ResFP.First;

if cb_impgraf.Checked then
   begin
   mtotdoc:=0;
   mgtotdoc:=0;
   mLotAnt:=0;
   lbl_periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);

   RLReport1.PreviewModal;
   end
else
   begin
   mtottit   :=0;
   mtotstipi :=0;
   mtotdes   :=0;
   mtotjur   :=0;
   mtotdev   :=0;
   mtotpag   :=0;
   mtotdoc   :=0;
   mgtottit  :=0;
   mgtotstipi:=0;
   mgtotdes  :=0;
   mgtotjur  :=0;
   mgtotdev  :=0;
   mgtotpag  :=0;
   mgtotdoc  :=0;
   testeform := TFrm_AcCrR(FindGlobalComponent('form_impres_accrr'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(Tfrm_Impres, form_impres_accrr);
      end;

   form_impres_accrr.mlin:=0;
   form_impres_accrr.mpag:=0;
   form_impres_accrr.fimpresajustaimp(3,160,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
   Tb_Temp.First;
   mLotAnt   :=Tb_TempTP_NUMLOT.AsInteger;
   While not Tb_Temp.Eof do
      begin
      if form_impres_accrr.mlin=0 then
         begin
         faccrcab(0);
         end;
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,insere(Tb_TempTP_OBS.Value,' ',1)
                                    +insere(Tb_TempTP_IMPNUMERO.AsString,' ',9)
                                    +' '
                                    +insere2(Tb_TempTP_TIPO.AsString,' ',1)
                                    +' '+insere2(Tb_TempTP_IMPDTVCTO.AsString,' ',08)
                                    +' '+insere2(Tb_TempTP_IMPDATPAG.AsString,' ',08)
                                    +' '+insere2(Tb_TempTP_IMPCODCLI.AsString,' ',06)
                                    +insere2(Tb_TempTP_IFEM.AsString,' ',01)
                                    +insere2(Tb_TempTP_NOMCLI.AsString,' ',23)
                                    +insere(Tb_TempTP_IMPVALDUP.Value,' ',10)
                                    +insere(Tb_TempTP_IMPVLRST.Value,' ',10)
                                    +insere(Tb_TempTP_IMPFPDESC.Value,' ',10)
                                    +insere(Tb_TempTP_IMPFPJUROS.Value,' ',10)
                                    +insere(Tb_TempTP_IMPFPDEVOL.Value,' ',10)
                                    +insere(Tb_TempTP_IMPFPVALOR.Value,' ',10)
                                    +' | '
                                    +insere2(Tb_TempTP_PGFORMA.Value,' ',03)
                                    +' '+Tb_TempTP_DTDEP.Value
                                    +' '+insere2(Tb_TempTP_IMPPGNUMERO.Value,' ',12)
                                    +insere(Tb_TempTP_IMPPGVALOR.Value,' ',11),m20ccp);
            mtottit   :=mtottit+Tb_TempTP_VALDUP.AsFloat;
            mtotstipi :=mtotstipi+Tb_TempTP_VLRST.AsFloat+Tb_TempTP_VLRIPI.AsFloat;
            mtotdes   :=mtotdes+Tb_TempTP_FPDESC.AsFloat;
            mtotjur   :=mtotjur+Tb_TempTP_FPJUROS.AsFloat;
            mtotdev   :=mtotdev+Tb_TempTP_FPDEVOL.AsFloat;
            mtotpag   :=mtotpag+Tb_TempTP_FPVALOR.AsFloat;
            mgtottit  :=mgtottit+Tb_TempTP_VALDUP.AsFloat;
            mgtotstipi:=mgtotstipi+Tb_TempTP_VLRST.AsFloat+Tb_TempTP_VLRIPI.AsFloat;
            mgtotdes  :=mgtotdes+Tb_TempTP_FPDESC.AsFloat;
            mgtotjur  :=mgtotjur+Tb_TempTP_FPJUROS.AsFloat;
            mgtotdev  :=mgtotdev+Tb_TempTP_FPDEVOL.AsFloat;
            mgtotpag  :=mgtotpag+Tb_TempTP_FPVALOR.AsFloat;

      if not Tb_TempTP_PGNATUREZA.IsNull then
         begin
         if Tb_TempTP_PGNATUREZA.Value=1 then
            begin
            mtotdoc :=mtotdoc- Tb_TempTP_PGVALOR.Value;
            mgtotdoc:=mgtotdoc-Tb_TempTP_PGVALOR.Value;
            end
         else
            begin
            mtotdoc:=mtotdoc+Tb_TempTP_PGVALOR.Value;
            mgtotdoc:=mgtotdoc+Tb_TempTP_PGVALOR.Value;
            end;
         end;
      Tb_Temp.Next;
      if (Tb_Temp.Eof) or (Tb_TempTP_NUMLOT.Value<>mLotAnt) then
         begin
         form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
         form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,insere2('Usuario..: '+Tb_TempUSUARIO.AsString,' ',21)
                                 +insere2(' Numero do Lote: '+FloatToStr(mLotAnt),' ',25)
                                 +insere(' Totais..>>> ',' ',15)
                                 +insere(FormatFloat(mcasas,mtottit),' ',10)
                                 +insere(Formatfloat(mcasas,mtotstipi),' ',10)
                                 +insere(FormatFloat(mcasas,mtotdes),' ',10)
                                 +insere(FormatFloat(mcasas,mtotjur),' ',10)
                                 +insere(FormatFloat(mcasas,mtotdev),' ',10)
                                 +insere(FormatFloat(mcasas,mtotpag),' ',10)
                                 +' | '
                                 +insere(FormatFloat(mcasas, mtotdoc), ' ',36),m20ccp);
         form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
         form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'--------------------------------------------------------------------------------------------------------------------------+-------------------------------------',m20ccp);
         mtottit   :=0;
         mtotstipi :=0;
         mtotdes   :=0;
         mtotjur   :=0;
         mtotdev   :=0;
         mtotpag   :=0;
         mtotdoc   :=0;
         mLotAnt   :=Tb_TempTP_NUMLOT.Value;
         if Tb_Temp.Eof then
            begin
            if form_impres_accrr.mlin=0 then
               faccrcab(0);
            form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
            form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'--------------------------------------------------------------------------------------------------------------------------+-------------------------------------',m20ccp);
            form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
            form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,insere2(' ',' ',21)
                                    +insere2(' ',' ',15)
                                    +insere(' Total Geral.>>> ',' ',25)
                                    +insere(FormatFloat(mcasas,mgtottit),' ',10)
                                    +insere(Formatfloat(mcasas,mgtotstipi),' ',10)
                                    +insere(FormatFloat(mcasas,mgtotdes),' ',10)
                                    +insere(FormatFloat(mcasas,mgtotjur),' ',10)
                                    +insere(FormatFloat(mcasas,mgtotdev),' ',10)
                                    +insere(FormatFloat(mcasas,mgtotpag),' ',10)
                                    +' | '
                                    +insere(FormatFloat(mcasas, mgtotdoc), ' ',36),m20ccp);
            form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
            form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'--------------------------------------------------------------------------------------------------------------------------+-------------------------------------',m20ccp);
            end;
         end;
      if form_impres_accrr.mlin>55 then
         begin
         form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
         form_impres_accrr.Rdprint1.ImpF(form_impres_accrr.mlin,01,insere2('Continua...','-',80),mnormal);
         form_impres_accrr.mlin:=0;
         form_impres_accrr.RDprint1.Novapagina;
         end;
      end;
   if form_impres_accrr.mlin>50 then
      begin
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.Rdprint1.ImpF(form_impres_accrr.mlin,01,insere2('Continua...','-',80),mnormal);
      form_impres_accrr.mlin:=0;
      form_impres_accrr.RDprint1.Novapagina;
      end;
   if form_impres_accrr.mlin=0 then
      faccrcab(1)
   else
      faccrcab(2);
   mlinha01:='';
   mlinha02:='';
   While not Tb_ResFP.Eof do
      begin
      mlinha01:=mlinha01+insere(Tb_ResFPFPDESC.AsString,' ',15)+' ';
      mlinha02:=mlinha02+insere(FormatFloat(mcasas, Tb_ResFPVALREC.AsFloat),' ',15)+' ';
      if length(mlinha02)>150 then
         begin
         form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
         form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,mlinha01,m20ccp);
         form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
         form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,mlinha02,m20ccp);
         mlinha01:='';
         mlinha02:='';
         end;
      Tb_ResFP.Next;
      end;
   if trim(mlinha02)<>'' then
      begin
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,mlinha01,m20ccp);
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,mlinha02,m20ccp);
      end;
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   form_impres_accrr.RDprint1.impf(form_impres_accrr.mlin,01,insere2('-','-',80),mnormal);
   if form_impres_accrr.RDprint1.Setup then form_impres_accrr.RDprint1.Fechar;
   form_impres_accrr.free;
   form_impres_accrr:=nil;
   end;


{ relatorio antigo
}
{
Qr_Lote.First;
if Qr_Lote.Eof then
   begin
   fmensagem('Nada a ser impresso no período solicitado!',0,['0'],0);
   exit;
   end;
form_impres_accrr.mlin:=0;
form_impres_accrr.mpag:=0;
mtottit   :=0;
mtotstipi :=0;
mtotdes   :=0;
mtotjur   :=0;
mtotdev   :=0;
mtotpag   :=0;
mtotdoc   :=0;
mgtottit  :=0;
mgtotstipi:=0;
mgtotdes  :=0;
mgtotjur  :=0;
mgtotdev  :=0;
mgtotpag  :=0;
mgtotdoc  :=0;

fimpresajustaimp(4,160,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

Qr_Lote.First;
While not Qr_Lote.Eof do
   begin
   Qr_Tit.Close;
   Qr_Tit.Sql.Clear;
   Qr_Tit.SQl.add('Select * from FPCRDUP where '
                 +iif(la_empfpcrdup='','',la_empfpcrdup+' and ')
                 +' FPLOTSEQ=0'+Qr_LoteFPLOTSEQ.AsString
                 +' and FPLOTE=0'+Qr_LoteFPLOTE.AsString);
   if Trim(la_Empresas)<>'' then
      Qr_Tit.SQL.Add(' and '+la_Empresas);

   Qr_Tit.Open;
   Qr_FP.Close;
   Qr_Fp.Sql.Clear;
   Qr_Fp.SQl.Add(' Select * From FPCR where '
                +iif(la_empfpcr='','',la_empfpcr+' and ')
                +'  FPLOTSEQ=0'+Qr_LoteFPLOTSEQ.AsString
                +' and FPLOTE=0'+Qr_LoteFPLOTE.AsString);
   Qr_FP.Open;
   if form_impres_accrr.mlin<>0 then
      begin
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'--------------------------------------------------------------------------------------------------------------------------+-------------------------------------',m20ccp);
      end;
   While not ((Qr_Tit.Eof) and (Qr_FP.Eof)) do
      begin
      if form_impres_accrr.mlin=0 then
         begin
         faccrcab(0);
         end;
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      if not Qr_Tit.eof then
         begin
         form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,iif(Qr_TitFPDUP_CODEMP.Value>100,'*',' ')
                                 +FormatFloat('000000',Qr_TitFPNUMERO.Value)+'-'
                                 +insere2(Qr_TitFPDESD.Value,' ',2)
                                 +' '
                                 +insere2(Qr_TitFPTIPO.AsString,'0',1)
                                 +' '+FormatDateTime(fdt3,Qr_TitFPDTVCTO.Value)
                                 +' '+FormatDateTime(fdt3,Qr_TitFPDATPAG.Value)
                                 +' '+insere2(FormatFloat('000000',Qr_TitFPCODCLI.Value)
                                 +'-'+Qr_Titnomcli.Value,' ',30)
                                 +insere(FormatFloat(mcasas,Qr_TitFPVALDUP.Value),' ',10)
                                 +insere(Formatfloat(mcasas,Qr_TitFPVLRST.Value+Qr_TitFPVLRIPI.Value),' ',10)
                                 +insere(FormatFloat(mcasas,Qr_TitFPDESC.Value),' ',10)
                                 +insere(FormatFloat(mcasas,Qr_TitFPJUROS.Value),' ',10)
                                 +insere(FormatFloat(mcasas,Qr_TitFPDEVOL.Value),' ',10)
                                 +insere(FormatFloat(mcasas,Qr_TitFPVALOR.Value),' ',10) ,m20ccp);
         mtottit   :=mtottit+Qr_TitFPVALDUP.Value;
         mtotstipi :=mtotstipi+Qr_TitFPVLRST.Value+Qr_TitFPVLRIPI.Value;
         mtotdes   :=mtotdes+Qr_TitFPDESC.Value;
         mtotjur   :=mtotjur+Qr_TitFPJUROS.Value;
         mtotdev   :=mtotdev+Qr_TitFPDEVOL.Value;
         mtotpag   :=mtotpag+Qr_TitFPVALOR.Value;

         mgtottit  :=mgtottit+Qr_TitFPVALDUP.Value;
         mgtotstipi:=mgtotstipi+Qr_TitFPVLRST.Value+Qr_TitFPVLRIPI.Value;
         mgtotdes  :=mgtotdes+Qr_TitFPDESC.Value;
         mgtotjur  :=mgtotjur+Qr_TitFPJUROS.Value;
         mgtotdev  :=mgtotdev+Qr_TitFPDEVOL.Value;
         mgtotpag  :=mgtotpag+Qr_TitFPVALOR.Value;
         Qr_Tit.Next;
         end;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,123,'|',m20ccp);


//Numero       Dt.Vcto. Dt.Pgto. Cliente                          Vlr.Tit    ST+IPI   Vl.Desc    Vl.Jur    Vl.Dev   Vl.Pago : FPG   Data   No.Documento      Valor
//*123456/a /0 12/05/05 12/05/05 007900-12345678901234567890123zzZ.zz9,99zZz.zz9,99Zzz.zz9,99zZZ.zz9,99zzZ.zz9,99zzZ.zz9,99 : 123 13/05/05 123456789012zzz.zzz9,99
//--------------------------------------------------------------------------------------------------------------------------+-------------------------------------

      if not Qr_Fp.eof then
         begin
         form_impres_accrr.Rdprint1.ImpF(form_impres_accrr.mlin,125,insere2(Qr_FPforma.Value,' ',03)
                               +' '+FormatDateTime(fdt3, Qr_FPFPDATA.Value)
                               +' '+insere2(FormatFloat('#', Qr_FPFPNUMERO.Value),' ',12)
                               +insere(FormatFloat(mcasas,Qr_FPFPVALOR.Value),' ',11),m20ccp);
         if Qr_FPFPNATUREZA.Value=1 then
            begin
            mtotdoc :=mtotdoc-Qr_FPFPVALOR.Value;
            mgtotdoc:=mgtotdoc-Qr_FPFPVALOR.Value;
            end
         else
            begin
            mtotdoc:=mtotdoc+Qr_FPFPVALOR.Value;
            mgtotdoc:=mgtotdoc+Qr_FPFPVALOR.Value;
            end;
         Qr_Fp.Next;
         end;
      if form_impres_accrr.mlin>55 then
         begin
         form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
         form_impres_accrr.Rdprint1.ImpF(form_impres_accrr.mlin,01,insere2('Continua...','-',80),mnormal);
         form_impres_accrr.mlin:=0;
         form_impres_accrr.RDprint1.Novapagina;
         end;
      end;
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'--------------------------------------------------------------------------------------------------------------------------+-------------------------------------',m20ccp);
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,insere2(' ',' ',21)
                                 +insere2(' Numero do Lote: '+Qr_LoteFPLOTE.AsString,' ',25)
                                 +insere(' Totais..>>> ',' ',15)
                                 +insere(FormatFloat(mcasas,mtottit),' ',10)
                                 +insere(Formatfloat(mcasas,mtotstipi),' ',10)
                                 +insere(FormatFloat(mcasas,mtotdes),' ',10)
                                 +insere(FormatFloat(mcasas,mtotjur),' ',10)
                                 +insere(FormatFloat(mcasas,mtotdev),' ',10)
                                 +insere(FormatFloat(mcasas,mtotpag),' ',10)
                                 +' | '
                                 +insere(FormatFloat(mcasas, mtotdoc), ' ',36),m20ccp);
   mtottit   :=0;
   mtotstipi :=0;
   mtotdes   :=0;
   mtotjur   :=0;
   mtotdev   :=0;
   mtotpag   :=0;
   mtotdoc   :=0;
   Qr_Lote.Next;
   if Qr_Lote.Eof then
      begin
      if form_impres_accrr.mlin=0 then
         faccrcab(0);
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'--------------------------------------------------------------------------------------------------------------------------+-------------------------------------',m20ccp);
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,insere2(' ',' ',21)
                                 +insere2(' ',' ',15)
                                 +insere(' Total Geral.>>> ',' ',25)
                                 +insere(FormatFloat(mcasas,mgtottit),' ',10)
                                 +insere(Formatfloat(mcasas,mgtotstipi),' ',10)
                                 +insere(FormatFloat(mcasas,mgtotdes),' ',10)
                                 +insere(FormatFloat(mcasas,mgtotjur),' ',10)
                                 +insere(FormatFloat(mcasas,mgtotdev),' ',10)
                                 +insere(FormatFloat(mcasas,mgtotpag),' ',10)
                                 +' | '
                                 +insere(FormatFloat(mcasas, mgtotdoc), ' ',36),m20ccp);
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'--------------------------------------------------------------------------------------------------------------------------+-------------------------------------',m20ccp);
      end;
   end;

if form_impres_accrr.mlin>50 then
   begin
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   form_impres_accrr.Rdprint1.ImpF(form_impres_accrr.mlin,01,insere2('Continua...','-',80),mnormal);
   form_impres_accrr.mlin:=0;
   form_impres_accrr.RDprint1.Novapagina;
   end;
if form_impres_accrr.mlin=0 then
   faccrcab(1)
else
   faccrcab(2);
DM1.Query5.Close;
DM1.Query5.Sql.Clear;
DM1.Query5.SQl.Add('Select sum(FPCR.FPVALOR) AS VALREC, FPCR.FPFORMA '
               +' from FPCR ');
mcinst:=' where ';
if trim(la_empfpcr)<>'' then
   begin
   DM1.Query5.Sql.add(mcinst+la_empfpcr);
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query5.Sql.add(mcinst+' FPDATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query5.Sql.add(mcinst+' FPDATA<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
if ValInt(NRI.Text)>0 then
   begin
   DM1.Query5.SQL.add(mcinst+' FPCR.FPNR>=0'+Trim(NRI.Text));
   mcinst:=' and  ';
   end;
if ValInt(NRF.Text)>0 then
   begin
   DM1.Query5.SQL.add(mcinst+' FPCR.FPNR<=0'+Trim(NRF.Text));
   mcinst:=' and ';
   end;
if Trim(CODCLI.Text)<>'' then
   DM1.Query5.Sql.Add(mcinst+' FPCODCLI=0'+Trim(CODCLI.Text));
DM1.Query5.Sql.add(' Group by FPCR.FPFORMA');
DM1.Query5.Open;


DM1.Qr_FP.First;
mlinha01:='';
mlinha02:='';
While not DM1.Qr_FP.Eof do
   begin
   mlinha01:=mlinha01+insere(DM1.Qr_FPFPDESC.Value,' ',15)+' ';
   if DM1.Query5.Locate('FPFORMA',DM1.Qr_FPFPCODIGO.Value,[]) then
      mlinha02:=mlinha02+insere(FormatFloat(mcasas, DM1.Query5.FieldByName('VALREC').AsFloat),' ',15)+' '
   else
      mlinha02:=mlinha02+insere(FormatFloat(mcasas, 0),' ',15)+' ';
   if length(mlinha02)>150 then
      begin
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,mlinha01,m20ccp);
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,mlinha02,m20ccp);
      mlinha01:='';
      mlinha02:='';
      end;
   DM1.Qr_FP.Next;
   end;
if trim(mlinha02)<>'' then
   begin
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,mlinha01,m20ccp);
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,mlinha02,m20ccp);
   end;
form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
form_impres_accrr.RDprint1.impf(form_impres_accrr.mlin,01,insere2('-','-',80),mnormal);

if form_impres_accrr.RDprint1.Setup then form_impres_accrr.RDprint1.Fechar;
}
end;

procedure TFrm_AcCRR.Qr_FPCalcFields(DataSet: TDataSet);
begin
DM1.Qr_FP.Locate('FPCODIGO',Qr_FPFPFORMA.Value,[]);
Qr_FPforma.Value  :=DM1.Qr_FPFPDESC.Value;
Qr_FPvinculo.Value:=DM1.Qr_FPFPVINCULO.AsInteger;
end;

procedure TFrm_AcCRR.FormCreate(Sender: TObject);
begin
Tb_Temp.CreateDataSet;
bbCorrigir.Visible:=codusr=1111;

DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
MDT1.Text:=FormatDateTime(fdt2, Date);
MDT2.Text:=FormatDateTime(fdt2, Date);

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
//NRI.Text:=FormatDateTime('ddmmyyyy',date);
//NRF.Text:=FormatDateTime('ddmmyyyy',date);


DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_ACCRR','CB_INIBIRCHQP']),[]) then
   CB_INIBIRCHQP.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_INIBIRCHQP.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_ACCRR','CB_IMPGRAF']),[]) then
   cb_impgraf.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   cb_impgraf.Checked:=false;

end;

procedure TFrm_AcCRR.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text := '';
      CODCLI.SetFocus;
      end
   else
      Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
      CODCLI.SetFocus;
   end;
end;

procedure TFrm_AcCRR.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_AcCRR.Qr_TitCalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_TitFPCODCLI.AsString) then
   Qr_Titnomcli.Value:=DM1.Query1.Fields[0].AsString;
if flqr1('NOMUSR','','CADUSR','N','CODUSR',Qr_TitFPCODUSR.AsString) then
   Qr_TitUSUARIO.Value:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_AcCRR.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_AcCRR.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit
      end
   end;


end;

procedure TFrm_AcCRR.NRIExit(Sender: TObject);
begin
NRI.Text:=fdeixanum2(NRI.Text);
end;

procedure TFrm_AcCRR.NRFExit(Sender: TObject);
begin
NRF.Text:=fdeixanum2(NRF.Text);

end;

function TFrm_AcCRR.faccrcab(ptipo: Integer): Boolean;
var
mobs: String;
begin
if ptipo<2 then
   begin
   form_impres_accrr.mpag:=form_impres_accrr.mpag+1;
   if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)='/  /') then
      mobs:='Todos os Periodos'
   else if (Trim(MDT1.Text)='/  /') and (Trim(MDT2.Text)<>'/  /') then
      mobs:='ATE '+MDT2.Text
   else if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)='/  /') then
      mobs:='A PARTIR DE '+MDT1.Text
   else
      mobs:='PERIODO DE '+MDT1.Text+' A '+MDT2.Text;
   form_impres_accrr.mlin:=form_impres_accrr.fImprimirCabecalho(136,'RELATORIO DE RECEBIMENTO DE DUPLICATAS. ');
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   if trim(mobs)='' then
      mobs:=mobs+'. ';
   if (fsonumero(nri.Text)=0) and (fsonumero(NRF.Text)=0) then
      mobs:=mobs
   else if (fsonumero(NRI.Text)=0) and (fsonumero(NRF.Text)<>0) then
      mobs:=mobs+'ATE A NR No.'+NRF.Text
   else if (fsonumero(NRI.Text)<>0) and (fsonumero(NRF.Text)=0) then
     mobs:=mobs+'A PARTIR DA NR No. '+NRI.Text
   else
      mobs:=mobs+'DA NR No. '+NRI.Text+' ATE A NR No. '+NRF.Text;
   form_impres_accrr.mlin:=3;
   if trim(mobs)<>'' then
      begin
      form_impres_accrr.Rdprint1.Impf(form_impres_accrr.mlin,01,centra(mobs,' ',80),mnormal);
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      end;
   form_impres_accrr.RDprint1.impf(form_impres_accrr.mlin,01,insere2('-','-',80),mnormal);
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   if ptipo=0 then
      begin
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'TITULOS                                                                                                                   |FORMA DE PAGAMENTO                   ',m20ccp);
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'--------------------------------------------------------------------------------------------------------------------------+-------------------------------------',m20ccp);
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.Rdprint1.Impf(form_impres_accrr.mlin,01,'Numero       Dt.Vcto. Dt.Pgto. Cliente                          Vlr.Tit    ST+IPI   Vl.Desc    Vl.Jur    Vl.Dev   Vl.Pago | FPG   Data   No.Documento      Valor',m20ccp);
      form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
      form_impres_accrr.RDprint1.ImpF(form_impres_accrr.mlin,01,'--------------------------------------------------------------------------------------------------------------------------+-------------------------------------',m20ccp);
      end
   end;
if ptipo>0 then
   begin
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   form_impres_accrr.RDprint1.impf(form_impres_accrr.mlin,01,'RESUMO GERAL DE FORMA DE PAGAMENTO',mnormal);
   form_impres_accrr.mlin:=form_impres_accrr.mlin+1;
   form_impres_accrr.RDprint1.impf(form_impres_accrr.mlin,01,insere2('-','-',80),mnormal);
   end;
result:=true;
end;
procedure TFrm_AcCRR.bbAplicarClick(Sender: TObject);
    function fRetornarFiltros: string;
    var
    mFiltros: String;
    begin
    mfiltros:='';


    if Trim(MDT1.Text)<>'/  /' then
       mfiltros:=mfiltros+' and  FPCR.FPDATA>='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT1.Text))+chr(39);
    if Trim(MDT2.Text)<>'/  /' then
       mfiltros:=mfiltros+' and FPCR.FPDATA<='+chr(39)+FormatDatetime(fdt,StrtoDate(MDT2.Text))+chr(39);
    if ValInt(NRI.Text)>0 then
       begin
       mfiltros:=mfiltros+' and FPCR.FPNR>=0'+Trim(NRI.Text);
       end;
    if ValInt(NRF.Text)>0 then
       begin
       mfiltros:=mfiltros+' and  FPCR.FPNR<=0'+Trim(NRF.Text);
       end;

    if ValInt(LOTEI.Text)>0 then
       begin
       mfiltros:=mfiltros+' and FPCR.FPLOTE>=0'+Trim(LOTEI.Text);
       end;
    if ValInt(LOTEF.Text)>0 then
       begin
       mfiltros:=mfiltros+' and  FPCR.FPLOTE<=0'+Trim(LOTEF.Text);
       end;

    if CB_INIBIRCHQP.Checked then
       begin
       mfiltros:=mfiltros+' and  FPCR.FPVINCULO<>14 ';
       end;



   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      mfiltros:=mfiltros+' and FPCR.FPCODCLI '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codfp,OMITIR_FP);
   if trim(mcinst2)<>'' then
      mfiltros:=mfiltros+' and FPCR.FPFORMA '+mcinst2;


   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then
      mfiltros:=mfiltros+' and FPCR.FPCAIXA '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
   if trim(mcinst2)<>'' then
      mfiltros:=mfiltros+' and FPCR.FPCODUSR_CX '+mcinst2;

   la_Empresas:=fEmpresas_Selecionadas('FPCR','FPCR.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

   if trim(la_Empresas)<>'' then
      mfiltros:=mfiltros+' and '+la_Empresas;





    result:=mfiltros;
    end;

begin
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if (fsonumero(NRI.Text)<>0) and (fsonumero(NRF.Text)<>0) then
   begin
   if fsonumero(NRI.Text)>fsonumero(NRF.Text) then
      begin
      fmensagem('Número da NR inicial maior que final!',0,['0'],0);
      exit;
      end;
   end;
if (fsonumero(LOTEI.Text)<>0) and (fsonumero(LOTEF.Text)<>0) then
   begin
   if fsonumero(LOTEI.Text)>fsonumero(LOTEF.Text) then
      begin
      fmensagem('Número do Lote inicial maior que final!',0,['0'],0);
      exit;
      end;
   end;


la_empfpcrdup:=fEmpresas_Selecionadas('FPCRDUP','FPCRDUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
la_empfpcr:=fEmpresas_Selecionadas('FPCR','FPCR.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);


Qr_Lote.Close;
Qr_Lote.Sql.Clear;
Qr_Lote.SQl.Add('Select FPCR.FPLOTE,FPCR.FPLOTSEQ, '
               +'       FPCR.FPDATA AS DATA, '
               +'       max(FPCR.FPCODCLI) AS CODCLI '
               +' from FPCR, FPCRDUP where '
               +iif(la_empfpcr='','',la_Empfpcr+' and '));

Qr_Lote.SQL.add(' 1=1 ');
Qr_Lote.SQL.Add(fRetornarFiltros);


Qr_Lote.Sql.add(' and FPCRDUP.FPCODEMP=FPCR.FPCODEMP '
               +' and FPCRDUP.FPLOTSEQ=FPCR.FPLOTSEQ '
               +' and FPCRDUP.FPLOTE=FPCR.FPLOTE ');

Qr_Lote.Sql.add(' Group by FPCR.FPLOTE, FPCR.FPLOTSEQ, FPCR.FPDATA ');
Qr_Lote.SQL.Add(' order by FPCR.FPDATA ');

try
  Qr_Lote.Open;
except
  Qr_Lote.Sql.SaveToFile('C:\sql.txt');
  end;
if Qr_Lote.Eof then
   begin
   Tb_Temp.Close;
   fmensagem('Não ha nada neste Periodo!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;

fcarregarTemp(0);


end;

procedure TFrm_AcCRR.Qr_LoteCalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_LoteCODCLI.AsString) then
   Qr_Loterazao.Value:=DM1.Query1.Fields[0].AsString;
end;
function TFrm_AcCRR.fcarregarTemp(pTipo: Integer): Boolean;
var
  mTotCar: Real;
  mTotBco: Real;
begin
if Tb_Temp.Active=false then
   Tb_temp.Open;
Tb_Temp.EmptyDataSet;

la_Empresas:=fEmpresas_Selecionadas('FPCRDUP','FPCRDUP.FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

if ptipo=0 then
   begin
   Qr_Lote.First;
   While not Qr_Lote.Eof do
      begin
      Qr_Tit.Close;
      Qr_Tit.Sql.Clear;
      Qr_Tit.SQl.add('Select * from FPCRDUP where '
                    +iif(la_empfpcrdup ='','',la_empfpcrdup+' and ')
                    +' FPLOTSEQ=0'+Qr_LoteFPLOTSEQ.AsString
                    +' and FPLOTE=0'+Qr_LoteFPLOTE.AsString);
      if Trim(la_Empresas)<>'' then
         Qr_Tit.SQL.Add(' and '+la_Empresas);
      try
         Qr_Tit.Open;

      except
         Qr_Tit.sql.savetofile('c:\sql.txt');
         end;
      Qr_FP.Close;
      Qr_Fp.Sql.Clear;
      Qr_Fp.SQl.Add(' Select * From FPCR where '
                   +iif(la_empfpcr='','',la_empfpcr+' and ')
                   +'  FPLOTSEQ=0'+Qr_LoteFPLOTSEQ.AsString
                   +' and FPLOTE=0'+Qr_LoteFPLOTE.AsString);
      Qr_FP.Open;
      While not ((Qr_Tit.Eof) and (Qr_FP.Eof)) do
         begin
         Tb_Temp.Append;

         if not Qr_Tit.eof then
            begin
            Tb_TempTP_NUMLOT.Value    :=Qr_TitFPLOTE.Value;
            Tb_TempTP_OBS.Value       :=iif(Qr_TitFPDUP_CODEMP.Value>100,'*',' ');
            Tb_TempTP_NUMERO.Value    :=Qr_TitFPNUMERO.Value;
            Tb_TempTP_DESD.Value      :=Qr_TitFPDESD.Value;
            Tb_TempTP_IFEM.Value      :='-';
            Tb_TempTP_IMPNUMERO.Value :=FormatFloat('000000',Qr_TitFPNUMERO.Value)+'-'
                                      +insere2(Qr_TitFPDESD.Value,' ',2);
            Tb_TempTP_TIPO.Value      :=insere2(Qr_TitFPTIPO.AsString,'0',1);
            Tb_TempTP_DTVCTO.Value    :=Qr_TitFPDTVCTO.Value;
            Tb_TempTP_IMPDTVCTO.Value :=FormatDateTime(fdt3,Qr_TitFPDTVCTO.Value);
            Tb_TempTP_DATPAG.Value    :=Qr_TitFPDATPAG.Value;
            Tb_TempTP_IMPDATPAG.Value :=FormatDateTime(fdt3,Qr_TitFPDATPAG.Value);
            Tb_TempTP_CODCLI.Value    :=Qr_TitFPCODCLI.Value;
            Tb_TempTP_IMPCODCLI.Value :=FormatFloat('000000',Qr_TitFPCODCLI.Value);
            Tb_TempTP_NOMCLI.Value    :=Qr_Titnomcli.Value;
            Tb_TempTP_VALDUP.Value    :=Qr_TitFPVALDUP.Value;
            Tb_TempTP_IMPVALDUP.Value :=FormatFloat(mcasas,Qr_TitFPVALDUP.Value);
            Tb_TempTP_FPVLRST.Value   :=Qr_TitFPVLRST.Value;
            Tb_TempTP_VLRIPI.Value    :=Qr_TitFPVLRIPI.Value;
            Tb_TempTP_IMPVLRST.Value  :=Formatfloat(mcasas,Qr_TitFPVLRST.Value+Qr_TitFPVLRIPI.Value);
            Tb_TempTP_IMPVLRIPI.Value :=Formatfloat(mcasas,Qr_TitFPVLRIPI.Value);
            if  Arredonda( (Qr_TitFPDESC.Value+Qr_TitFPVALDUP.Value),2)=Arredonda(Qr_TitFPVALOR.Value,2) then
               begin
               Tb_TempTP_FPDESC.Value    :=0;
               Tb_TempTP_IMPFPDESC.Value :=FormatFloat(mcasas,0);
               Tb_TempTP_FPVALOR.Value   :=Qr_TitFPVALDUP.Value;
               Tb_TempTP_IMPFPVALOR.Value:=FormatFloat(mcasas,Qr_TitFPVALDUP.Value);
               end
            else
               begin
               Tb_TempTP_FPDESC.Value    :=Qr_TitFPDESC.Value;
               Tb_TempTP_IMPFPDESC.Value :=FormatFloat(mcasas,Qr_TitFPDESC.Value);
               Tb_TempTP_FPVALOR.Value   :=Qr_TitFPVALOR.Value;
               Tb_TempTP_IMPFPVALOR.Value:=FormatFloat(mcasas,Qr_TitFPVALOR.Value);
               end;

            Tb_TempTP_FPJUROS.Value   :=Qr_TitFPJUROS.Value;
            Tb_TempTP_IMPFPJUROS.Value:=FormatFloat(mcasas,Qr_TitFPJUROS.Value);
            Tb_TempTP_FPDEVOL.Value   :=Qr_TitFPDEVOL.Value;
            Tb_TempTP_IMPFPDEVOL.Value:=FormatFloat(mcasas,Qr_TitFPDEVOL.Value);
            Tb_TempUSUARIO.Value      :=Qr_TitUSUARIO.Value;
            Qr_Tit.Next;
            end;
         if not Qr_Fp.eof then
            begin
            if Qr_FPvinculo.AsInteger=14  then
               Tb_TempTP_TIPOCOB.Value    :='Bancaria'
            else
               Tb_TempTP_TIPOCOB.Value    :='Carteira';

            Tb_TempTP_NUMLOT.Value     :=Qr_FPFPLOTE.Value;
            Tb_TempTP_PGFORMA.Value    :=Qr_FPforma.Value;
            Tb_TempTP_PGDATA.Value     :=Qr_FPFPDATA.Value;
            Tb_TempTP_IMPPGDATA.Value  :=FormatDateTime(fdt3, Qr_FPFPDATA.Value);
            Tb_TempTP_PGNUMERO.Value   :=Qr_FPFPNUMERO.Value;
            Tb_TempTP_IMPPGNUMERO.Value:=FormatFloat('#', Qr_FPFPNUMERO.Value);
            Tb_TempTP_PGVALOR.Value    :=Qr_FPFPVALOR.Value;
            Tb_TempTP_IMPPGVALOR.Value :=FormatFloat(mcasas,Qr_FPFPVALOR.Value);
            Tb_TempTP_PGNATUREZA.Value :=Qr_FPFPNATUREZA.Value;
            if Qr_FPFPDATDEP.AsDateTime>pdatanula then
               Tb_TempTP_DTDEP.Value   :=FormatDatetime(fdt3,  Qr_FPFPDATDEP.Value)
            else
               Tb_TempTP_DTDEP.Value   :='';
            Qr_FP.Next;
            end;
         end;
      Qr_lote.Next;
      end;
   end
else
   begin
   Qr_Lote.First;
   While not Qr_Lote.Eof do
      begin
      Qr_Tit.Close;
      Qr_Tit.Sql.Clear;
      Qr_Tit.SQl.add('Select * from FPCRDUP where '
                    +iif(la_empfpcrdup='','',la_empfpcrdup+' and ')
                    +' FPLOTSEQ=0'+Qr_LoteFPLOTSEQ.AsString
                    +' and FPLOTE=0'+Qr_LoteFPLOTE.AsString);
      if Trim(la_Empresas)<>'' then
         Qr_Tit.SQL.Add(' and '+la_Empresas);
      Qr_Tit.Open;
      Qr_FP.Close;
      Qr_Fp.Sql.Clear;
      Qr_Fp.SQl.Add(' Select * From FPCR where '
                   +iif(la_empfpcr='','',la_empfpcr+' and ')
                   +'  FPLOTSEQ=0'+Qr_LoteFPLOTSEQ.AsString
                   +' and FPLOTE=0'+Qr_LoteFPLOTE.AsString);
      Qr_FP.Open;
      mTotCar:=0;
      mTotBco:=0;
      While not Qr_FP.Eof do
         begin
         if Qr_FPvinculo.AsInteger=16  then
            mTotBco:=mTotBco+Qr_FPFPVALOR.Value
         else
            mTotCar:=mTotCar+Qr_FPFPVALOR.Value;
         Qr_FP.Next;
         end;

      While not (Qr_Tit.Eof)do
         begin
         Tb_Temp.Append;
         Tb_TempTP_NUMLOT.Value    :=Qr_TitFPLOTE.Value;
         Tb_TempTP_OBS.Value       :=iif(Qr_TitFPDUP_CODEMP.Value>100,'*',' ');
         Tb_TempTP_NUMERO.Value    :=Qr_TitFPNUMERO.Value;
         Tb_TempTP_DESD.Value      :=Qr_TitFPDESD.Value;
         Tb_TempTP_IFEM.Value      :='-';
         Tb_TempTP_IMPNUMERO.Value :=FormatFloat('000000',Qr_TitFPNUMERO.Value)+'-'
                                   +insere2(Qr_TitFPDESD.Value,' ',2);
         Tb_TempTP_TIPO.Value      :=insere2(Qr_TitFPTIPO.AsString,'0',1);
         Tb_TempTP_DTVCTO.Value    :=Qr_TitFPDTVCTO.Value;
         Tb_TempTP_IMPDTVCTO.Value :=FormatDateTime(fdt3,Qr_TitFPDTVCTO.Value);
         Tb_TempTP_DATPAG.Value    :=Qr_TitFPDATPAG.Value;
         Tb_TempTP_IMPDATPAG.Value :=FormatDateTime(fdt3,Qr_TitFPDATPAG.Value);
         Tb_TempTP_CODCLI.Value    :=Qr_TitFPCODCLI.Value;
         Tb_TempTP_IMPCODCLI.Value :=FormatFloat('000000',Qr_TitFPCODCLI.Value);
         Tb_TempTP_NOMCLI.Value    :=Qr_Titnomcli.Value;
         Tb_TempTP_VALDUP.Value    :=Qr_TitFPVALDUP.Value;
         Tb_TempTP_IMPVALDUP.Value :=FormatFloat(mcasas,Qr_TitFPVALDUP.Value);
         Tb_TempTP_FPVLRST.Value   :=Qr_TitFPVLRST.Value;
         Tb_TempTP_VLRIPI.Value    :=Qr_TitFPVLRIPI.Value;
         Tb_TempTP_IMPVLRST.Value  :=Formatfloat(mcasas,Qr_TitFPVLRST.Value+Qr_TitFPVLRIPI.Value);
         Tb_TempTP_IMPVLRIPI.Value :=Formatfloat(mcasas,Qr_TitFPVLRIPI.Value);
         Tb_TempTP_FPDESC.Value    :=Qr_TitFPDESC.Value;
         Tb_TempTP_IMPFPDESC.Value :=FormatFloat(mcasas,Qr_TitFPDESC.Value);
         Tb_TempTP_FPJUROS.Value   :=Qr_TitFPJUROS.Value;
         Tb_TempTP_IMPFPJUROS.Value:=FormatFloat(mcasas,Qr_TitFPJUROS.Value);
         Tb_TempTP_FPDEVOL.Value   :=Qr_TitFPDEVOL.Value;
         Tb_TempTP_IMPFPDEVOL.Value:=FormatFloat(mcasas,Qr_TitFPDEVOL.Value);
         Tb_TempUSUARIO.Value      :=Qr_TitUSUARIO.Value;
         if mTotCar>=Qr_TitFPVALOR.Value then
            begin
            Tb_TempTP_FPVALOR.Value   :=Qr_TitFPVALOR.Value;
            Tb_TempTP_IMPFPVALOR.Value:=FormatFloat(mcasas,Qr_TitFPVALOR.Value);
            mTotCar:=mTotCar-Qr_TitFPVALOR.Value;
            Tb_TempTP_TIPOCOB.Value    :='Carteira';
            Tb_TempTP_PGVALOR.Value    :=Qr_TitFPVALOR.Value;
            Tb_TempTP_IMPPGVALOR.Value :=FormatFloat(mcasas,Qr_TitFPVALOR.Value);
            end
         else if mTotCar>0 then
            begin
            Tb_TempTP_FPVALOR.Value   :=mTotCar;
            Tb_TempTP_IMPFPVALOR.Value:=FormatFloat(mcasas,mTotCar);
            Tb_TempTP_TIPOCOB.Value    :='Carteira';
            Tb_TempTP_PGVALOR.Value    :=mTotCar;
            Tb_TempTP_IMPPGVALOR.Value :=FormatFloat(mcasas,mTotCar);
            mTotCar:=0;
            end
         else if mTotBco>=Qr_TitFPVALOR.Value then
            begin
            Tb_TempTP_FPVALOR.Value   :=Qr_TitFPVALOR.Value;
            Tb_TempTP_IMPFPVALOR.Value:=FormatFloat(mcasas,Qr_TitFPVALOR.Value);
            mTotBco:=mTotBco-Qr_TitFPVALOR.Value;
            Tb_TempTP_TIPOCOB.Value    :='Banco';
            Tb_TempTP_PGVALOR.Value    :=Qr_TitFPVALOR.Value;
            Tb_TempTP_IMPPGVALOR.Value :=FormatFloat(mcasas,Qr_TitFPVALOR.Value);
            end
         else if mTotCar>0 then
            begin
            Tb_TempTP_FPVALOR.Value   :=mTotBco;
            Tb_TempTP_IMPFPVALOR.Value:=FormatFloat(mcasas,mTotBco);
            Tb_TempTP_TIPOCOB.Value    :='Banco';
            Tb_TempTP_PGVALOR.Value    :=mTotBco;
            Tb_TempTP_IMPPGVALOR.Value :=FormatFloat(mcasas,mTotBco);
            mTotBco:=0;
            end;
         Tb_Temp.Post;
         Qr_Tit.Next;
         end;
      Qr_lote.Next;
      end;
   end;

result:=true;
end;
procedure TFrm_AcCRR.lbl_numlotBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
lbl_numlot.Caption:='Número do Lote: '+FloatToStr(mLotAnt);
end;

procedure TFrm_AcCRR.RLBand3AfterPrint(Sender: TObject);
begin
mLotAnt:=Tb_TempTP_NUMLOT.Value;

end;

procedure TFrm_AcCRR.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if Tb_TempTP_PGNATUREZA.AsInteger=1 then
   begin
   mtotdoc :=mtotdoc- Tb_TempTP_PGVALOR.Value;
   mgtotdoc:=mgtotdoc-Tb_TempTP_PGVALOR.Value;
   end
else
   begin
   mtotdoc:=mtotdoc+Tb_TempTP_PGVALOR.Value;
   mgtotdoc:=mgtotdoc+Tb_TempTP_PGVALOR.Value;
   end;

end;

procedure TFrm_AcCRR.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totdoc.Caption:=Formatfloat(mcasas, mTotDoc);
end;

procedure TFrm_AcCRR.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totgdoc.Caption:=Formatfloat(mcasas, mGTotDoc);
end;

procedure TFrm_AcCRR.LOTEIExit(Sender: TObject);
begin
LOTEI.Text:=fdeixanum(LOTEI.Text);

end;

procedure TFrm_AcCRR.LOTEFExit(Sender: TObject);
begin
LOTEF.Text:=fdeixanum(LOTEF.Text);

end;

procedure TFrm_AcCRR.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_ACCRR','');
fGravaPadroes(codusr,'CB_INIBIRCHQP'   ,'checked'   ,'_ACCRR',iif(CB_INIBIRCHQP.Checked,'true','false'));
fGravaPadroes(codusr,'CB_IMPGRAF'      ,'checked'   ,'_ACCRR',iif(cb_impgraf.Checked,'true','false'));

end;

procedure TFrm_AcCRR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

Tb_Temp.Close;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AcCRR.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if Lbx_codcli.ItemIndex>=0 then
      Lbx_codcli.Items.Delete(Lbx_codcli.ItemIndex);

end;

procedure TFrm_AcCRR.lbx_codfpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfp.ItemIndex>=0 then
      Lbx_codfp.Items.Delete(Lbx_codfp.ItemIndex);

end;

procedure TFrm_AcCRR.CODFPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

   if Frm_FPag=nil then
      Application.CreateForm(TFrm_FPag, Frm_FPag)
   else
      begin
      Frm_FPag.Free;
      Frm_FPag:=nil;
      Application.CreateForm(TFrm_FPag, Frm_FPag);
      end;


   Frm_FPag.Edit1.Text:=key;
   Frm_FPag.BBnAtu.Click;
   Frm_FPag.Edit1.SelStart:=1;
   Frm_FPag.Edit1.SelLength:=1;
   Frm_FPag.PC1.ActivePage:=Frm_FPag.tsTab;
   Frm_FPag.mFPagOri:='Frm_RelPed_FPPed';
   if Frm_FPag.ShowModal=mrok then
      begin
      lbx_codfp.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_FPFPCODIGO.ASSTRING))
                                    +' - '+DM1.Tb_FPFPDESC.Value);
      CODFP.text := '';
      CODFP.SetFocus;
      end;
   Frm_Fpag.Free;
   Frm_FPag:=nil;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_AcCRR.CODFPExit(Sender: TObject);
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

procedure TFrm_AcCRR.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_AcCRR.edt_codbcoExit(Sender: TObject);
begin
edt_codbco.Text:=fdeixanum2(edt_codbco.Text);
if Trim(edt_codbco.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',edt_codbco.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codbco.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(edt_codbco.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codbco.text := '';
      edt_codbco.SetFocus;
      end;
   end;


end;

procedure TFrm_AcCRR.edt_codusr_cxExit(Sender: TObject);
begin
edt_codusr_cx.Text:=fdeixanum2(edt_codusr_cx.Text);
if Trim(edt_codusr_cx.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',edt_codusr_cx.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codusr_cx.SetFocus;
      end
   else
      begin
      lbx_codusr_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codusr_cx.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codusr_cx.text := '';
      edt_codusr_cx.SetFocus;
      end;
   end;


end;

procedure TFrm_AcCRR.edt_codbcoKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codbco.Text:=fChamaBco(0,'frm_RCRec',Key);
   edt_codbcoExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_AcCRR.edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
   edt_codusr_cxExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_AcCRR.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_AcCRR.lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;


function TFrm_AcCRR.fCorrigir: Boolean;
var
query_cor: tQuery;
query_exe: tQuery;
begin
query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';

query_cor:=TQuery.Create(nil);
query_cor.DatabaseName:='SG_ASSOC';
query_cor.Close;
query_cor.Sql.Clear;
query_cor.Sql.Add('select LOTEBX,CODEMP,FPDTEMIS,CRDTEMIS,VALORDUP,CRVALOR,CRVALPAG,CRCODEMP,CRNUMERO,CRDESD,CRNPED,CRLOTSEQ_CP '
                 +' ,(select P1EMIDOC from CADP01 WHERE P1CHAVE=CRNPED AND P1ORDEM=1 AND P1CODEMP=CRCODEMP AND P1LOTSEQ=CRLOTSEQ_CP) AS '
                 +' STATUS_CF_PED '
                 +' from ( '
                 +' select FPLOTE as LOTEBX,FPCODEMP AS CODEMP,CRNUMERO AS NUMDUP,FPDTEMIS,FPNUMERO,FPVALOR as valordup from FPCRDUP,caddar '
                 +' where CRNUMERO(+)=FPNUMERO AND CRDESD(+)=FPDESD '
//                 +' AND CRDUP(+)=FPTIPO '
                 +' AND CRDTEMIS(+)=FPDTEMIS '
                 +' AND FPDTEMIS>'+QuotedStr('01/10/2013')
                 +' AND CRCODEMP(+)=FPDUP_CODEMP '
                 +' AND CRNUMERO IS NULL '
                 +' ),CADDAR WHERE CRLOTE=LOTEBX ');
try
   query_cor.Open;
except on e: exception do
      begin
      MessageDlg('Erro '+e.Message,mtError,[mbOk],0);
      exit;
      end;
   end;


While not query_cor.Eof do
   begin
   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.add('Update FPCRDUP set FPNUMERO=:NUMDUP,FPDUP_CODEMP=:CODEMP_DUP '
                    +' where FPLOTE=:LOTE AND FPCODEMP=:CODEMP_REG ');
   query_exe.parambyName('NUMDUP').asfloat:=Query_Cor.fieldbyName('CRNUMERO').asfloat;
   query_exe.parambyName('CODEMP_DUP').asfloat:=Query_Cor.fieldbyName('CRCODEMP').asfloat;
   query_exe.parambyName('LOTE').asfloat:=Query_Cor.fieldbyName('LOTEBX').asfloat;
   query_exe.parambyName('CODEMP_REG').asfloat:=Query_Cor.fieldbyName('CODEMP').asfloat;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except on e: exception do
         begin
         MessageDlg('Erro '+e.Message,mtError,[mbOk],0);
         exit;
         end;
      end;
   query_cor.next;
   end;

query_cor.Close;
query_cor.Sql.Clear;
query_cor.Sql.Add('SELECT * FROM ( '
                 +' select LOTEBX,FPDTEMIS,CRDTEMIS,VALORDUP,CRVALOR,CRVALPAG,CRCODEMP,CRNUMERO,CRDESD,CRNPED,CRLOTSEQ_CP,CRNUMCUP,CRDATCUP '
                 +',(select P1EMIDOC from CADP01 WHERE P1CHAVE=CRNPED AND P1ORDEM=1 AND P1CODEMP=CRCODEMP AND P1LOTSEQ=CRLOTSEQ_CP) AS '
                 +'STATUS_CF_PED '
                 +'from ( '
                 +' select FPLOTE as LOTEBX,CRNUMERO AS NUMDUP,FPDTEMIS,FPNUMERO,FPVALOR as valordup from FPCRDUP,caddar '
                 +' where CRNUMERO=FPNUMERO AND CRDESD(+)=FPDESD '
                 +' AND  CRDTEMIS=FPDTEMIS '
                 +' AND FPDTEMIS>'+QuotedStr('01/10/2013')
                 +' AND CRCODEMP=FPDUP_CODEMP '
                 +' ),CADDAR WHERE CRLOTE=LOTEBX '
                 +') WHERE STATUS_CF_PED =0 ');
try
   query_cor.Open;
except on e: exception do
      begin
      MessageDlg('Erro '+e.Message,mtError,[mbOk],0);
      exit;
      end;
   end;
While not query_cor.Eof do
   begin
   query_exe.Close;
   query_exe.SQL.Clear;
   Query_Exe.SQL.Add('Update CADP01 set P1EMIDOC=:EMIDOC '
                    +' ,P1NUMCF=:NUMCF, P1DATACF=:DATACF '
                    +' where P1CHAVE=:CHAVE '
                    +' and P1LOTSEQ=:LOTSEQ '
                    +' and P1CODEMP=:CODEMP ');
   query_exe.ParamByName('CHAVE').AsFloat:=query_cor.fieldbyName('CRNPED').AsFloat;
   query_exe.ParamByName('LOTSEQ').AsFloat:=query_cor.fieldbyName('CRLOTSEQ_CP').AsFloat;
   query_exe.ParamByName('CODEMP').AsFloat:=query_cor.fieldbyName('CRCODEMP').AsFloat;
   query_exe.ParamByName('EMIDOC').AsFloat:=1;
   query_exe.ParamByName('NUMCF').AsFloat    :=query_cor.fieldbyName('CRNUMCUP').AsFloat;
   query_exe.ParamByName('DATACF').AsDateTime:=query_cor.fieldbyName('CRDATCUP').AsDateTime;
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except on e: exception do
         begin
         MessageDlg('Erro '+e.Message,mtError,[mbOk],0);
         exit;
         end;
      end;
   query_cor.next;
   end;

freeandnil(query_cor);
freeandnil(query_exe);

                    
result:=true;
end;

procedure TFrm_AcCRR.bbCorrigirClick(Sender: TObject);
begin
fCorrigir;

end;

end.

