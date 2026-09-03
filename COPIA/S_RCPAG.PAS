unit S_RCpag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, S_DM1, func, db, dbtables,  S_Impres,
  S_DM2,lerarq, Grids, DBGrids, CheckLst, RLReport, ComCtrls, RLHTMLFilter, S_SelEmp,
  RLXLSFilter, RLRichFilter, RLFilters, RLPDFFilter, RLDraftFilter,variants,S_Dap,S_Bco;

type
  TFrm_RCPag = class(TForm)
    Qr_CPag: TQuery;
    Qr_CPagCANUMERO: TFloatField;
    Qr_CPagCADESD: TStringField;
    Qr_CPagCADTEMIS: TDateTimeField;
    Qr_CPagCADTVCTO: TDateTimeField;
    Qr_CPagCADTBX: TDateTimeField;
    Qr_CPagCADESC: TFloatField;
    Qr_CPagCAJUROS: TFloatField;
    Qr_CPagCAVALOR: TFloatField;
    Qr_CPagFRAZAO: TStringField;
    Qr_CPagCALOTE: TFloatField;
    Qr_CPagCACODFOR: TFloatField;
    Qr_CPagCADTPAG: TDateTimeField;
    Qr_CPagCAVALPAG: TFloatField;
    Qr_CPagCASTATUS: TFloatField;
    Qr_CPagCADUP: TFloatField;
    Qr_CPagCACODEMP: TFloatField;
    DBGrid1: TDBGrid;
    Src_Cpag: TDataSource;
    Qr_CPagdtemis: TStringField;
    Qr_CPagdtvcto: TStringField;
    Qr_CPagdtbx: TStringField;
    Qr_CPagatraso: TFloatField;
    Qr_CPagtipdup: TStringField;
    Qr_CPagdtpag: TStringField;
    Qr_CPagsaldodev: TFloatField;
    PageControl1: TPageControl;
    ts_Principais: TTabSheet;
    Label5: TLabel;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    Label4: TLabel;
    clb_tipofor: TCheckListBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    cb_formapag: TCheckBox;
    clb_tipodoc: TCheckListBox;
    Label1: TLabel;
    ts_Relatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    db_grupo: TRLDBText;
    band_cab: TRLBand;
    lbl_cabNumdoc: TRLMemo;
    lbl_cabChave: TRLMemo;
    lbl_cabRazSoc: TRLMemo;
    lbl_cabDtEmis: TRLMemo;
    lbl_cabValDup: TRLMemo;
    lbl_cabValPag: TRLMemo;
    lbl_cabArec: TRLMemo;
    lbl_CabDtVcto: TRLMemo;
    lbl_cabDatPgto: TRLMemo;
    lbl_cabDesc: TRLMemo;
    lbl_CabJuros: TRLMemo;
    lbl_cabdoc: TRLMemo;
    RLBand4: TRLBand;
    lbl_numdoc: TRLDBText;
    lbl_Chave: TRLDBText;
    lbl_RazSoc: TRLDBText;
    lbl_DtEmiss: TRLDBText;
    lbl_ValDup: TRLDBText;
    lbl_ValPag: TRLDBText;
    lbl_Arec: TRLDBText;
    lbl_DtVcto: TRLDBText;
    lbl_DatPgto: TRLDBText;
    lbl_Desc: TRLDBText;
    lbl_Juros: TRLDBText;
    lbl_doc: TRLDBText;
    RLBand6: TRLBand;
    lblg_numdoc: TRLLabel;
    lblg_Chave: TRLLabel;
    lblg_RazSoc: TRLLabel;
    lblg_DtEmis: TRLLabel;
    lblg_ValDup: TRLLabel;
    lblg_ValPag: TRLLabel;
    lblg_Arec: TRLLabel;
    lblg_DtVcto: TRLLabel;
    lblg_DatPgto: TRLLabel;
    lblg_Desc: TRLLabel;
    lblg_Juros: TRLLabel;
    lblg_doc: TRLLabel;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RL_final: TRLBand;
    lblt_numdoc: TRLLabel;
    lblt_RazSoc: TRLLabel;
    lblt_DtEmis: TRLLabel;
    lblt_ValDup: TRLLabel;
    lblt_ValPag: TRLLabel;
    lblt_Arec: TRLLabel;
    lblt_DtVcto: TRLLabel;
    lblt_DatPgto: TRLLabel;
    lblt_Desc: TRLLabel;
    lblt_Juros: TRLLabel;
    lblt_doc: TRLLabel;
    lblt_Chave: TRLLabel;
    Qr_CPagrazao_codigo: TStringField;
    Qr_CPagnumero: TStringField;
    Matricial: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    CB_VISREL: TCheckBox;
    Qr_CPagCODCCU: TStringField;
    Qr_CPagNOMCCU: TStringField;
    Qr_CPagNOMGRU: TStringField;
    CB_MATRICIAL: TCheckBox;
    CB_SEMBORDA: TCheckBox;
    CB_TD: TComboBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    CB_TPP: TComboBox;
    StaticText3: TStaticText;
    CB_ORDEM: TComboBox;
    StaticText4: TStaticText;
    CB_TIPOREL: TComboBox;
    gb_totalizacao: TGroupBox;
    Label13: TLabel;
    Label17: TLabel;
    TOTABRVCT: TStaticText;
    TOTABRAVENC: TStaticText;
    TOTABR: TStaticText;
    DEV_VENCREC: TStaticText;
    SEL_TOTABRAVENC: TStaticText;
    SEL_TOTABRVCT: TStaticText;
    DEV_TOTABRAVENC: TStaticText;
    DEV_TOTABR: TStaticText;
    SEL_DEV_VENCREC: TStaticText;
    SEL_DEV_TOTABRAVENC: TStaticText;
    Label6: TLabel;
    TOTPAG: TStaticText;
    DEV_TOTPAG: TStaticText;
    SEL_TOTABR: TStaticText;
    SEL_DEV_TOTABR: TStaticText;
    SEL_TOTPAG: TStaticText;
    SEL_DEV_TOTPAG: TStaticText;
    Label8: TLabel;
    TOTDUPGER: TStaticText;
    DEV_TOTDUPGER: TStaticText;
    SEL_TOTDUPGER: TStaticText;
    SEL_SALDUPGER: TStaticText;
    SALABRVCT: TStaticText;
    SEL_SALABRVCT: TStaticText;
    SALABRAVENC: TStaticText;
    SEL_SALABRAVENC: TStaticText;
    SALABR: TStaticText;
    SEL_SALABR: TStaticText;
    SEL_SALPAG: TStaticText;
    SALPAG: TStaticText;
    SEL_DEV_TOTDUPGER: TStaticText;
    SALDUPGER: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    Label7: TLabel;
    CB_SEPAR: TComboBox;
    Qr_CPagOK: TStringField;
    tsOutros: TTabSheet;
    Label22: TLabel;
    CODBCO: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    Qr_CPagNOMBCO: TStringField;
    Panel1: TPanel;
    bbAplicar: TBitBtn;
    bbImprimir: TBitBtn;
    sbSalvarPadrao: TSpeedButton;
    bbSair: TBitBtn;
    U_CPAG: TUpdateSQL;
    CB_IMPOBS: TCheckBox;
    rlObs: TRLBand;
    rldb_obs: TRLDBText;
    StaticText5: TStaticText;
    edt_coddep: TEdit;
    lbx_coddep: TListBox;
    OMITIR_DEP: TCheckBox;
    sbn_coddep: TSpeedButton;
    StaticText6: TStaticText;
    edt_codccu: TEdit;
    sbn_codccu: TSpeedButton;
    OMITIR_CCU: TCheckBox;
    lbx_codccu: TListBox;
    Label9: TLabel;
    CB_TDESP: TCheckListBox;
    StaticText7: TStaticText;
    CODGFOR: TEdit;
    OMITIR_GFOR: TCheckBox;
    lbx_codgfor: TListBox;
    BBFORMA: TBitBtn;
    Qr_CPagCALOTSEQ_LB: TFloatField;
    Qr_CPagCACODCTA: TFloatField;
    Qr_CPagnumero_calc: TStringField;
    Qr_CPagCANUMPARC: TFloatField;
    Qr_CPagCAQTDPARC: TFloatField;
    Qr_CPagCAVALDES: TFloatField;
    Qr_CPagCADTDESC: TDateTimeField;
    Qr_CPagdtdescfin: TStringField;
    StaticText8: TStaticText;
    Label10: TLabel;
    edt_Nnum: TMaskEdit;
    edt_Fnum: TMaskEdit;
    Label11: TLabel;
    edt_codbco_cob: TEdit;
    lbx_codbco_cob: TListBox;
    OMITIR_BCO_COB: TCheckBox;
    Qr_CPagOBS: TMemoField;
    cb_impparc: TCheckBox;
    Qr_CPagCAVALOR_ACRES: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure Qr_CPagCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure clb_tipoforClick(Sender: TObject);
    procedure clb_tipodocClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure CB_SEMBORDAClick(Sender: TObject);
    procedure CB_TIPORELClick(Sender: TObject);
    procedure CB_TIPORELExit(Sender: TObject);
    procedure CB_ORDEMExit(Sender: TObject);
    procedure CB_TPPExit(Sender: TObject);
    procedure CB_TDExit(Sender: TObject);
    procedure CB_SEPARExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RL_finalBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edt_coddepExit(Sender: TObject);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codccuExit(Sender: TObject);
    procedure lbx_codccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbn_codccuClick(Sender: TObject);
    procedure sbn_coddepClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_TDESPClick(Sender: TObject);
    procedure CODGFORExit(Sender: TObject);
    procedure CODGFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBFORMAClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure edt_codbco_cobExit(Sender: TObject);
    procedure edt_codbco_cobKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbco_cobKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function flerDap(pMarca: String): Boolean;
    function fTotais: Boolean;
    function fBuscarFiltros: String;



  public
    { Public declarations }
    form_Impres_rcpag: Tfrm_Impres;
    Form_SelEmp : TFrm_SelEmp;
    mtipo       : Integer;
  end;

var
  Frm_RCPag: TFrm_RCPag;
  mTotgDup: Real=0;
  mTotGPag: Real=0;
  mTotGArec: Real=0;
  mTotGDesc: Real=0;
  mTotGJuros: Real=0;
  mQtdGTit: Integer;

  mTotTDup: Real=0;
  mTotTPag: Real=0;
  mTotTArec: Real=0;
  mTotTDesc: Real=0;
  mTotTJuros: Real=0;
  mQtdTTit: Integer;


implementation

uses S_DM4, S_C, S_Dpto, S_CCU, S_GFor, s_FormaPgto, func_excecoes;

{$R *.DFM}

procedure TFrm_RCPag.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RCPag.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
       MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   Except

       fmensagem('Data Invalida!',0,['0'],0);

       MDT1.SetFocus;
       end;
   end;
end;

procedure TFrm_RCPag.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
       MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   Except

       fmensagem('Data Invalida!',0,['0'],0);

       MDT2.SetFocus;
       end;
   end;
end;




procedure TFrm_RCPag.bbImprimirClick(Sender: TObject);
var
mGrupoAnt: String;
x,mlin, mpag: Integer;
mtotjd, mtotjg, mtotdd,mtotdg, mtotgd, mtotpg,mtotpd,mtotad,mtotag,mtotgg: Real;
mlinha,mcomplin,minc:String;
mdtp:String;
mDocumento: String;




{      fImprimirDadosPagamentos(Qr_CPagCANUMERO.asfloat,Qr_CPagCADESD.asstring,
                            Qr_CPagCADUP.asinteger,Qr_CPagCACODFOR.asfloat,
                            Qr_CPagCADTEMIS.Asdatetime);
 }
      procedure fImprimirDadosPagamentos(pNumero: Real; pDesd: String; pCodEmp, pTipo: Integer; pCodfor: real; pDtemis:tDatetime);
      var
      query_lotes: TQuery;
      query_tit: TQuery;
      query_fpag: TQuery;
      mdados_tit: string;
      mdados_doc: string;
      mqtdtit: integer;

         procedure pfechartudo;
         begin
         query_lotes.close;
         freeandnil(query_lotes);
         query_tit.close;
         freeandnil(query_tit);
         query_fpag.close;
         freeandnil(query_fpag);
         end;

      begin
      query_tit:=TQuery.create(nil);
      query_lotes:=TQuery.create(nil);
      query_fpag:=TQuery.Create(nil);
      query_tit.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      query_lotes.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      query_fpag.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


      Query_lotes.sql.add('Select FPLOTSEQ,FPLOTE,FPCODEMP from FPCPDUP where  FPNUMERO=:NUMERO'
                       +' and FPDESD=:DESD'
                       +' and FPTIPO=:TIPO'
                       +' and FPCODFOR=:CODFOR'
                       +' and FPDTEMIS=:DTEMIS'
                       +' and FPDUP_CODEMP=:CODEMP'
                       +' group by FPLOTSEQ,FPLOTE,FPCODEMP ');

      Query_lotes.ParamByName('NUMERO').AsFloat:=pNumero;
      Query_lotes.ParamByName('DESD').AsString :=pDesd;
      Query_lotes.ParamByName('TIPO').AsInteger :=ptipo;
      Query_lotes.ParamByName('CODFOR').AsFloat :=pCodfor;
      Query_lotes.ParamByName('DTEMIS').AsDateTime:=pDtemis;
      Query_lotes.ParamByName('CODEMP').Asinteger:=pCodEmp;
      try
         query_lotes.open;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_lotes,418,'SGE','FPCPDUP');
         pfechartudo;
         exit;
         end;
         end;
      if query_lotes.IsEmpty then
         begin
         fGerarEvento('446 - lote vazio ');
         ex_erroSql_Novo(query_lotes,418,'SGE','FPCPDUP');
         end
      else
         fGerarEvento('450 - quantidade lotes '+Inttostr(query_lotes.RecordCount));

      while not query_lotes.Eof do
         begin
         query_tit.close;
         query_tit.SQL.clear;
         query_tit.sql.add('Select FPDUP_CODEMP,  FPNUMERO,  FPDESD,  FPCODFOR,  FPDTEMIS,  FPTIPO,  FPDUP_VALOR,  FPVALOR, '
                            +'  FPJUROS,  FPDESC,  FPDUP_DTVCTO from FPCPDUP where  FPLOTSEQ=:LOTSEQ'
                          +' and FPLOTE=:LOTE'
                          +' and FPCODEMP=:CODEMP '
                          +' ORDER BY FPDUP_DTVCTO ');
         query_tit.ParamByName('LOTSEQ').AsFloat:=query_lotes.fieldbyname('FPLOTSEQ').AsInteger;
         query_tit.ParamByName('LOTE').AsFloat:=query_lotes.fieldbyname('FPLOTE').AsInteger;
         query_tit.ParamByName('CODEMP').AsFloat:=query_lotes.fieldbyname('FPCODEMP').AsInteger;
         try
            query_tit.open;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_tit,448,'SGE'+E.Message,'FPCPDUP');
            pfechartudo;
            exit;
            end;
            end;
         fGerarEvento('456 - titulos '+Inttostr(query_tit.RecordCount));

         if query_tit.IsEmpty then
            begin
            fGerarEvento('476 - lote vazio ');
            ex_erroSql_Novo(query_tit,476,'SGE','FPCPDUP');
            end;

         mqtdtit:=query_tit.RecordCount;
         query_fpag.close;
         query_fpag.SQL.clear;
         query_fpag.SQL.add('select FPDATA,FPFORMA,FPDESC AS NOMFORMA,FPNUMERO, FPBANCO,FPSERIE,FPVALOR,FPCAIXA,FPCODLDR '
                            +', DATAREAL FROM '
                           +'FPCP,CADFP,CADLDR WHERE FPCODIGO(+)=FPFORMA and  FPLOTSEQ=:LOTSEQ'
                          +' and FPLOTE=:LOTE'
                          +' and FPCODEMP=:CODEMP '
                          +' and CODEMP=FPCODEMP '
                          +' and CODLDR=FPCODLDR '
                          
                          +' ORDER BY FPDATA  ');
         query_fpag.ParamByName('LOTSEQ').AsFloat:=query_lotes.fieldbyname('FPLOTSEQ').AsInteger;
         query_fpag.ParamByName('LOTE').AsFloat:=query_lotes.fieldbyname('FPLOTE').AsInteger;
         query_fpag.ParamByName('CODEMP').AsFloat:=query_lotes.fieldbyname('FPCODEMP').AsInteger;
         try
            query_fpag.open;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_fpag,472,'SGE'+E.Message,'FPCPDUP');
            pfechartudo;
            exit;
            end;
            end;
         if query_fpag.IsEmpty then
            begin
            fGerarEvento('504 - fpagvazio ');
            ex_erroSql_Novo(query_fpag,476,'SGE','FPCPDUP');
            end
         else
             fGerarEvento('513 - documentos '+Inttostr(query_fpag.RecordCount));


         While (not query_tit.eof) and (not query_fpag.eof) do
            begin
            fGerarEvento('511 - esta no while ');

            mdados_tit:='';
            mdados_doc:='';
            if (mqtdtit>1) and (not query_tit.Eof) then
               begin
               mdados_tit:='Titulo: '+insere(query_tit.fieldbyname('FPNUMERO').AsString+'/'+query_tit.fieldbyname('FPDESD').asstring
                           +'-'+query_tit.fieldbyname('FPDUP_CODEMP').asstring ,' ',11)
                           +' Valor: '+insere(formatfloat(mcasas, query_tit.fieldbyname('FPVALOR').asfloat),' ',10)
                           +insere(
                           +iif(query_tit.fieldbyname('FPJUROS').asfloat<>0,
                                 'Juros '+formatfloat(mcasas, query_tit.fieldbyname('FPJUROS').Asfloat)
                                 ,' '),' ',12)
                           +insere(
                           +iif(query_tit.fieldbyname('FPDESC').asfloat<>0,
                                 'Descontos '+formatfloat(mcasas, query_tit.fieldbyname('FPDESC').Asfloat)
                                 ,' '),' ',12);
               query_tit.next;
               end
            else
               query_tit.next;

            if (not query_fpag.Eof) then
               begin
               mdados_doc:='Data: '+formatdatetime(fdt2, query_fpag.fieldbyname('FPDATA').Asdatetime)
                          +' '+insere2(query_fpag.fieldbyname('NOMFORMA').asstring,' ',20)
                          +insere(formatfloat(mcasas, query_fpag.fieldbyname('FPVALOR').asfloat),' ',12)
                          +' Dt.Cx: '+formatdatetime(fdt2, query_fpag.fieldbyname('DATAREAL').Asdatetime)
                          ;

               query_fpag.next;
               end;
            mlinha:=insere2(mdados_tit,' ',60)+' '+insere2(mdados_doc,' ',70);
            mlin:=mlin+1;
            form_Impres_rcpag.rdprint1.impf(mlin,01, mlinha,mreduz);
            fGerarEvento('516 - dados titulo '+mdados_tit+' dados doc' +mdados_doc);
            end;
         query_lotes.next;
         end;
      pfechartudo;
      end;



Begin
if not Qr_CPag.Active then
   bbaplicar.Click;
Qr_CPag.First;
if Qr_CPag.Eof then
  begin
  fmensagem('Não ha nada a ser impresso com estas Condições!',0,['0'],0);
  PageControl1.ActivePageIndex:=0;
  CODFOR.SetFocus;
  exit;
  end;
mtotjd:=0; mtotjg:=0; mtotdd:=0;mtotdg:=0; mtotgd:=0; mtotgg:=0;
mtotpg:=0; mtotpd:=0; mtotag:=0;
if (CB_TIPOREL.ItemIndex=0) OR (CB_TIPOREL.ItemIndex=3) then
  begin
  testeform := TFrm_RcPag(FindGlobalComponent('form_Impres_rcpag'));
  if (testeform=nil)  then
    begin
    Application.CreateForm(Tfrm_Impres, form_Impres_rcpag);
    end;
  form_Impres_rcpag.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
  Qr_CPag.First;
  mlin:=0;
  mpag:=0;
  mGrupoAnt:='';
  While not Qr_CPag.Eof do
    begin
    if trim(Qr_CPagOK.AsString)='' then
      begin
      Qr_CPag.Next;
      Continue;
      end;
    if cb_impparc.Checked=true then
       mDocumento:=FormatFloat('00', Qr_CPagCANUMPARC.asinteger)+'/'+Formatfloat('00', Qr_CPagCAQTDPARC.AsInteger)+' '+ptpdoc[Qr_CPagCADUP.AsInteger]
    else
       mDocumento:=ptpdoc[Qr_CPagCADUP.AsInteger];
    mDocumento:=insere2(mDocumento,' ',09);

    if mlin=0 then
      begin
      if (CB_SEPAR.ItemIndex>=0) and (CB_SEPAR.ItemIndex<>6) then
        mcinst4:='DUPLICATAS A PAGAR. Separado por: '+CB_SEPAR.Text
      else
        mcinst4:='DUPLICATAS A PAGAR.';
      if CB_TD.ItemIndex=3 then
        mcinst4:='Pesquisa Feita de Pagamento. '+mcinst4
      else if CB_TPP.ItemIndex=4 then
        mcinst4:='Pesquisa Feita da inclusao. '+mcinst4
      else if CB_TPP.ItemIndex=0 then
        mcinst4:='Pesquisa Feita por Vencimento.'+mcinst4
      else if CB_TPP.ItemIndex=1 then
        mcinst4:='Pesquisa Feita por Emissao.'+mcinst4
      else
        mcinst4:='Pesquisa Feita por Data de Baixa.'+mcinst4;
      form_Impres_rcpag.fImprimirCabecalho(136,mcinst4);
{

      form_Impres_rcpag.Rdprint1.Impf(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_Impres_rcpag.Rdprint1.Impf(01,64,'Pagina..:   '+FormatFloat('0000',mpag),mnormal);
      form_Impres_rcpag.Rdprint1.Impf(02,01,'DUPLICATAS A PAGAR.',mnormal);
      if (CB_SEPAR.ItemIndex>=0) and (CB_SEPAR.ItemIndex<>6) then
         mcinst4:=' Separado por: '+CB_SEPAR.Text
      else
         mcinst4:='';
      if CB_TD.ItemIndex=3 then
         form_Impres_rcpag.Rdprint1.ImpF(02,20,'Pesquisa Feita de Pagamento. '+mcinst4 ,mnormal)
      else if CB_TPP.ItemIndex=4 then
         form_Impres_rcpag.Rdprint1.ImpF(02,20,'Pesquisa Feita da inclusao. '+mcinst4,mnormal)
      else if CB_TPP.ItemIndex=0 then
         form_Impres_rcpag.Rdprint1.ImpF(02,20,'Pesquisa Feita por Vencimento. '+mcinst4,mnormal)
      else if CB_TPP.ItemIndex=1 then
         form_Impres_rcpag.Rdprint1.ImpF(02,20,'Pesquisa Feita por Emissao. '+mcinst4,mnormal)
      else
         form_Impres_rcpag.Rdprint1.ImpF(02,20,'Pesquisa Feita por Data de Baixa. '+mcinst4,mnormal);

      form_Impres_rcpag.Rdprint1.Impf(02,64,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
}
      if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)='/  /') then
        form_Impres_rcpag.Rdprint1.Impf(03,01,Centra('TODAS AS DATAS.',' ',80),mneg)
      else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
        form_Impres_rcpag.Rdprint1.impf(03,01,Centra('ATE: '+MDT2.Text,' ',80),mneg)
      else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
        form_Impres_rcpag.Rdprint1.impf(03,01,Centra('A PARTIR DE: '+MDT1.Text,' ',80),mneg)
      else
        form_Impres_rcpag.Rdprint1.impf(03,01,Centra('PERIODO DE: '+MDT1.Text+' A '+MDT2.Text,' ',80),mneg);
      mlin:=3;
      if CB_TD.ItemIndex=1 then
        begin
        mlin:=mlin+1;
        form_Impres_rcpag.RDprint1.ImpF(mlin,01,Centra('Somente Duplicatas Pagas',' ',80),mneg);
        end
      else if CB_TD.ItemIndex=2 then
        begin
        mlin:=mlin+1;
        form_Impres_rcpag.RDprint1.ImpF(mlin,01,Centra('Somente Duplicatas em abertas',' ',80),mneg);
        end;
      if CB_SEPAR.ItemIndex<>6 then
        begin
        mlin:=mlin+1;
        form_Impres_rcpag.RDprint1.ImpF(mlin,01,Qr_CPagNOMGRU.AsString,mneg);
        end;
      mlin:=mlin+1;
      if CB_TD.ItemIndex=2 then
        form_Impres_rcpag.Rdprint1.Impf(mlin,01,'Numero       Razao Social                    Dt.Emis. Vlr Titulo Valor Pago Em Aberto Dt.Vcto. Dt Desc. Desc.Fin     '+iif(CB_TIPOREL.itemindex=3,'Vlr.Acrescimos ','Juros Documento'),mreduz)
      else
        form_Impres_rcpag.Rdprint1.Impf(mlin,01,'Numero       Razao Social                    Dt.Emis. Vlr Titulo Valor Pago Em Aberto Dt.Vcto. Dt Pgto. Desconto     '+iif(CB_TIPOREL.itemindex=3,'Vlr.Acrescimos ','Juros Documento'),mreduz);
      end;
    if CB_SEPAR.ItemIndex<>6 then
      begin
      if Trim(mGrupoAnt)='' then
        begin
        mGrupoAnt:=Qr_CPagNOMGRU.AsString;
        end;
      if mGrupoAnt<>Qr_CPagNOMGRU.AsString then
        begin
        mlin:=mlin+1;
        form_Impres_rcpag.Rdprint1.ImpF(mlin,01,'- Total - Titulos '
                                  +insere(FormatFloat(mcasas,mtotgd),' ',13)+'-Pagos '
                                  +insere(FormatFloat(mcasas,mtotpd),' ',13)+'-Abertos '
                                  +insere(FormatFloat(mcasas,mtotad),' ',13)+'-Desc. '
                                  +insere(FormatFloat(mcasas,mtotdd),' ',7)+IIF(CB_TIPOREL.ItemIndeX=3,'-Acres ','-Juros ')
                                  +insere(FormatFloat(mcasas,mtotjd),' ',7),mreduz);
        mtotgd:=0; mtotpd:=0;mtotad:=0;mtotdd:=0; mtotjd:=0;
        mGrupoAnt:=Qr_CPagNOMGRU.Value;
        mlin:=mlin+1;
        form_Impres_rcpag.RDprint1.ImpF(mlin,01,Qr_CPagNOMGRU.AsString,mneg);
        end;
      end;
    if Qr_CPagCADUP.AsInteger=5 then
      begin
      mtotjd:=mtotjd-iif(CB_TIPOREL.itemindex=3, Qr_CPagCAVALOR_ACRES.AsFloat, Qr_CPagCAJUROS.Value);
      mtotjg:=mtotjg-iif(CB_TIPOREL.itemindex=3, Qr_CPagCAVALOR_ACRES.AsFloat, Qr_CPagCAJUROS.Value);
      end
    else
      begin
      mtotjd:=mtotjd+iif(CB_TIPOREL.itemindex=3, Qr_CPagCAVALOR_ACRES.AsFloat, Qr_CPagCAJUROS.Value);
      mtotjg:=mtotjg+iif(CB_TIPOREL.itemindex=3, Qr_CPagCAVALOR_ACRES.AsFloat, Qr_CPagCAJUROS.Value);
      end;
    if CB_TD.ItemIndex=2 then
      begin
      mtotdd:=mtotdd-Qr_CPagCAVALDES.Value;
      mtotdg:=mtotdg-Qr_CPagCAVALDES.Value;
      end
    else
      begin
      mtotdd:=mtotdd+Qr_CPagCADESC.Value;
      mtotdg:=mtotdg+Qr_CPagCADESC.Value;
      end;
    if Qr_CPagCADUP.AsInteger=5 then
      begin
      mtotgd:=mtotgd-Qr_CPagCAVALOR.Value-IIF(CB_TIPOREL.itemindex=3,Qr_cpagCAVALOR_ACRES.AsFloat,0);
      mtotgg:=mtotgg-Qr_CPagCAVALOR.Value-(IIF(CB_TIPOREL.itemindex=3,Qr_cpagCAVALOR_ACRES.AsFloat,0));
      end
    else
      begin
      mtotgd:=mtotgd+Qr_CPagCAVALOR.Value-IIF(CB_TIPOREL.itemindex=3,Qr_cpagCAVALOR_ACRES.AsFloat,0);
      mtotgg:=mtotgg+Qr_CPagCAVALOR.Value-IIF(CB_TIPOREL.itemindex=3,Qr_cpagCAVALOR_ACRES.AsFloat,0);
      end;
    if Qr_CPagCADUP.AsInteger=5 then
      begin
      mtotpd:=mtotpd-Qr_CPagCAVALPAG.Value;
      mtotpg:=mtotpg-Qr_CPagCAVALPAG.Value;
      end
    else
      begin
      mtotpd:=mtotpd+Qr_CPagCAVALPAG.Value;
      mtotpg:=mtotpg+Qr_CPagCAVALPAG.Value;
      end;
    if Qr_CPagCADUP.AsInteger=5 then
      begin
      mtotad:=mtotad-(Qr_CPagCAVALOR.Value)+Qr_CPagCAVALPAG.Value-Qr_CPagCAJUROS.Value+Qr_CPagCADESC.Value;
      mtotag:=mtotag-(Qr_CPagCAVALOR.Value)+Qr_CPagCAVALPAG.Value-Qr_CPagCAJUROS.Value+Qr_CPagCADESC.Value;
      end
    else
      begin
      mtotad:=mtotad+(Qr_CPagCAVALOR.Value)-Qr_CPagCAVALPAG.Value+Qr_CPagCAJUROS.Value-Qr_CPagCADESC.Value;
      mtotag:=mtotag+(Qr_CPagCAVALOR.Value)-Qr_CPagCAVALPAG.Value+Qr_CPagCAJUROS.Value-Qr_CPagCADESC.Value;
      end;
    mlin:=mlin+1;
    mdtp:=' ';
    if CB_TD.ItemIndex=2 then
      mdtp:=Qr_CPagdtdescfin.AsString
    else if CB_TPP.ItemIndex=2 then
      begin
      if (Qr_CPagCADTBX.IsNull) or  (Qr_CPagCADTBX.Value<StrToDate('01/01/1990')) then
        mdtp:=' '
      else
        mdtp:=FormatDateTime(fdt3, Qr_CPagCADTBX.Value);
      end
    else
      begin
      if (Qr_CPagCADTPAG.IsNull) or  (Qr_CPagCADTPAG.Value<StrToDate('01/01/1990')) then
        mdtp:=' '
      else
        mdtp:=FormatDateTime(fdt3, Qr_CPagCADTPAG.Value);
      end;
    mlinha:=insere2(Qr_CPagnumero_calc.AsString,' ',12)+' '
                            +insere2(Trim(Qr_CPagFRAZAO.Value),' ',25)+' '
                            +insere2(FormatFloat('00000',Qr_CPagCACODFOR.Value),' ',05)+' '
                            +FormatDateTime(fdt3,Qr_CPagCADTEMIS.Value);
    if Qr_CPagCADUP.AsInteger=5 then
      mlinha:=mlinha+insere('('+FormatFloat(mcasas,Qr_CPagCAVALOR.Value-(IIF(CB_TIPOREL.itemindex=3,Qr_cpagCAVALOR_ACRES.AsFloat,0)))+')',' ',11)
    else
      mlinha:=mlinha+insere(FormatFloat(mcasas,Qr_CPagCAVALOR.Value-(IIF(CB_TIPOREL.itemindex=3,Qr_cpagCAVALOR_ACRES.AsFloat,0))),' ',11);
    mlinha:=mlinha+insere(FormatFloat(mcasas,Qr_CPagCAVALPAG.Value),' ',11)
                            +insere(FormatFloat(mcasas,Qr_CPagCAVALOR.Value-Qr_CPagCAVALPAG.Value+Qr_CPagCAJUROS.Value-Qr_CPagCADESC.Value),' ',10)+' '
                            +FormatDateTime(fdt3,Qr_CPagCADTVCTO.Value)+' ';
       begin
       mlinha:=mlinha+insere2(mdtp,' ',8);
       if CB_TD.ItemIndex=2 then
          mlinha:=mlinha+insere(FormatFloat(mcasas,Qr_CPagCAVALDES.Value),' ',9)
       else
          mlinha:=mlinha+insere(FormatFloat(mcasas,Qr_CPagCADESC.Value),' ',9);
       mlinha:=mlinha+insere(FormatFloat(mcasas,iif(CB_TIPOREL.itemindex=3, Qr_CPagCAVALOR_ACRES.AsFloat, Qr_CPagCAJUROS.Value)),' ',10)+' ';
       if Qr_CPagCACODEMP.AsInteger>99 then
          mlinha:=mlinha+Insere2(mDocumento,' ',8)+'*'
       else
          mlinha:=mlinha+mDocumento;
       end;
    form_Impres_rcpag.rdprint1.impf(mlin,01,mlinha,mreduz);

    if (cb_formapag.Checked) AND (Qr_CPagCASTATUS.AsInteger>0) then
      begin
      fGerarEvento('735 vai gerar pagamentos');
      fImprimirDadosPagamentos(Qr_CPagCANUMERO.asfloat,Qr_CPagCADESD.asstring,
                            Qr_CPagCACODEMP.AsInteger, 
                            Qr_CPagCADUP.asinteger,Qr_CPagCACODFOR.asfloat,
                            Qr_CPagCADTEMIS.Asdatetime);
      end;

    if (CB_IMPOBS.Checked) and (Trim(Qr_CPagOBS.AsString)<>'') then
       begin
       mlin:=mlin+1;
       form_Impres_rcpag.rdprint1.impf(mlin,01,Qr_CPagOBS.AsString,mreduz);
       end;

    Qr_CPag.Next;
    if not Qr_Cpag.Eof then
       begin
       if mlin>57 then
          begin
          mlin:=mlin+1;
          form_Impres_rcpag.Rdprint1.Impf(mlin,01,'Continua...'+insere('-','-',69),mnormal);
          form_Impres_rcpag.Rdprint1.Novapagina;
          mlin:=0;
          end;
       end;
    end;
  if (mtotgd+mtotpd+mtotad)<>0 then
     begin
     mlin:=mlin+1;
     mlin:=mlin+1;
     form_Impres_rcpag.Rdprint1.ImpF(mlin,01,'- Totalização -Titulos --> '
                             +insere(FormatFloat(mcasas,mtotgd),' ',13)+' -Pagos --> '
                             +insere(FormatFloat(mcasas,mtotpd),' ',13)+' -Abertos --> '
                             +insere(FormatFloat(mcasas,mtotad),' ',13)+' -Desc. Fin. --> '
                             +insere(FormatFloat(mcasas,mtotdd),' ',7)
                             +iif(CB_TIPOREL.itemindex=3, ' -Acres --> ', ' -Juros --> ')
                             +insere(FormatFloat(mcasas,mtotjd),' ',7),mreduz);
     mtotgd:=0; mtotpd:=0;mtotad:=0;mtotdd:=0; mtotjd:=0;
     end;
  mlin:=mlin+1;
  form_Impres_rcpag.Rdprint1.ImpF(mlin,01,'- Total Geral -Titulos --> '
                          +insere(FormatFloat(mcasas,mtotgg),' ',13)+' -Pagos --> '
                          +insere(FormatFloat(mcasas,mtotpg),' ',13)+' -Abertos --> '
                          +insere(FormatFloat(mcasas,mtotag),' ',13)+' -Desc. Fin. --> '
                          +insere(FormatFloat(mcasas,mtotdg),' ',7)
                          +iif(CB_TIPOREL.itemindex=3, ' -Acres --> ', ' -Juros --> ')
                          +insere(FormatFloat(mcasas,mtotjg),' ',7),mreduz);
  mlin:=mlin+1;
  form_Impres_rcpag.Rdprint1.Impf(mlin,01,'Fim'+insere('-','-',77),mnormal);
  if form_Impres_rcpag.RDprint1.Setup then
    form_Impres_rcpag.Rdprint1.Fechar;
  form_Impres_rcpag.Free;
  form_Impres_rcpag:=nil;
  end
else
   begin
   lbl_periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);
   if CB_TPP.ItemIndex=1 then
      lbl_titulo.Caption:='Pesquisa Feita por Emissão.'
   else if CB_TPP.ItemIndex=0 then
      lbl_titulo.Caption:='Pesquisa Feita por  Vencimento.'
   else if CB_TPP.ItemIndex=2 then
      lbl_titulo.Caption:='Pesquisa Feita por Data de Baixa.'
   else if CB_TPP.ItemIndex=3 then
      lbl_titulo.Caption:='Pesquisa Feita por Data de Pagamento.';
   if CB_TD.ItemIndex=1 then
      lbl_titulo.Caption:=lbl_titulo.Caption+'Somente Duplicatas Pagas'
   else if CB_TD.ItemIndex=2 then
      lbl_titulo.Caption:=lbl_titulo.Caption+'Somente Duplicatas em abertas';
   if (CB_SEPAR.ItemIndex>=0) and (CB_SEPAR.ItemIndex<>6) then
      lbl_titulo.Caption:=lbl_titulo.Caption+' Separado por: '+CB_SEPAR.Text;
   if CB_IMPOBS.Checked then
      rlObs.Visible:=true
   else
      rlObs.Visible:=false;

   if CB_VISREL.Checked then
      RLReport1.PreviewModal
   else
      RLReport1.Print;

   end;





{


Numero    Razao Social                       Dt.Emis. Vlr Titulo Valor Pago Em Aberto Dt.Vcto. Dt Pgto. Desconto     Juros Documento
123456-10 1234567890123456789012345679801234 10/09/20zzzz.zz9,99zzzz.zz9,99zzz.zz9,99 15/05/50 10/09/20zz.zz9,99zzz.zz9,99 Nota Prom
- Total do dia......................................zzzzz.zz9,99zzzz.zz9,99zzz.zz9,99                 zzz.zz9,99zzz.zz9,99

 }
end;

procedure TFrm_RCPag.bbAplicarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
  begin
  if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
    begin
    fmensagem('Data Inicial Maior que Final. Invalido!',0,['0'],0);
    PageControl1.ActivePageIndex:=0;
    MDT1.SetFocus;
    exit;
    end;
  end;
flerDap('X');
end;

procedure TFrm_RCPag.Qr_CPagCalcFields(DataSet: TDataSet);
begin
Qr_CPagtipdup.Value:=ptpdoc[Qr_CPagCADUP.AsInteger];

if Qr_CPagCADTEMIS.AsDateTime<=pdatanula then
   Qr_CPagdtemis.Value:='/  /'
else
   Qr_CPagdtemis.Value:=FormatDatetime(fdt2,Qr_CPagCADTEMIS.Value);

if Qr_CPagCADTVCTO.AsDateTime<=pdatanula then
   Qr_CPagdtvcto.Value:='/  /'
else
   Qr_CPagdtvcto.Value:=FormatDatetime(fdt2,Qr_CPagCADTVCTO.Value);

if Qr_CPagCADTBX.AsDateTime<=pdatanula then
   Qr_CPagdtbx.Value:='/  /'
else
   Qr_CPagdtbx.Value:=FormatDatetime(fdt2,Qr_CPagCADTBX.Value);

if Qr_CPagCADTPAG.AsDateTime<=pdatanula then
   Qr_CPagdtpag.Value:='/  /'
else
   Qr_CPagdtpag.Value:=FormatDatetime(fdt2,Qr_CPagCADTPAG.Value);
if Qr_CPagCASTATUS.Value>1 then
   Qr_CPagatraso.Value:=Qr_CPagCADTPAG.AsDateTime-Qr_CPagCADTVCTO.AsDateTime
else
   Qr_CPagatraso.Value:=Date-Qr_CPagCADTVCTO.AsDateTime;
if Qr_CPagatraso.Value<0 then
   Qr_CPagatraso.Value:=0;
Qr_CPagsaldodev.Value:=Qr_CPagCAVALOR.Value
                       -(Qr_CPagCAVALPAG.Value+Qr_CPagCADESC.Value)
                       -Qr_CPagCAJUROS.Value;


Qr_CPagnumero.Value:=Qr_CPagCANUMERO.AsString+'-'+Qr_CPagCADESD.AsString;
Qr_CPagnumero_calc.AsString:=Qr_CPagCANUMERO.AsString+'-'+Qr_CPagCADESD.AsString
                            +' '+Qr_CPagCANUMPARC.AsString+'/'+Qr_CPagCAQTDPARC.AsString;

Qr_CPagrazao_codigo.Value:=Qr_CPagFRAZAO.Value+'-'+Qr_CPagCACODFOR.AsString;

end;

procedure TFrm_RCPag.FormCreate(Sender: TObject);
begin
Qr_CPagCADESC.DisplayFormat:=mcasas;
Qr_CPagCAJUROS.DisplayFormat:=mcasas;
Qr_CPagCAVALOR.DisplayFormat:=mcasas;
Qr_CPagCAVALPAG.DisplayFormat:=mcasas;
Qr_CPagSaldoDev.DisplayFormat:=mcasas;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);


ts_Relatorio.TabVisible:=false;


DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;


DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_FORMAPAG']),[]) then
   cb_formapag.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   cb_formapag.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_TD']),[]) then
   CB_TD.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   CB_TD.itemIndex:=2;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_TPP']),[]) then
   CB_TPP.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   CB_TPP.itemIndex:=2;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_TIPOREL']),[]) then
   CB_TIPOREL.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   CB_TIPOREL.itemIndex:=0;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_ORDEM']),[]) then
   CB_ORDEM.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   CB_ORDEM.itemIndex:=0;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_MATRICIAL']),[]) then
   CB_MATRICIAL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_MATRICIAL.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_VISREL']),[]) then
   CB_VISREL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_VISREL.Checked:=true;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_IMPOBS']),[]) then
   CB_IMPOBS.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_IMPOBS.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_IMPPARC']),[]) then
   cb_impparc.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   cb_impparc.Checked:=false;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_SEMBORDA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCPAG','CB_SEPAR']),[]) then
   CB_SEPAR.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   CB_SEPAR.itemIndex:=6;

end;

procedure TFrm_RCPag.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (Qr_CPagatraso.Value>0) and (Qr_CPagCASTATUS.Value<2) then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if Qr_CPagCASTATUS.Value=1 then
   begin
   DBGrid1.Canvas.Font.Color:=clBlue;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
if (Qr_CPagCADUP.AsInteger=5) then
   begin
   DBGrid1.Canvas.Brush.Color:=clGreen;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;


end;

procedure TFrm_RCPag.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_RCpag',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end;


end;

procedure TFrm_RCPag.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if fLerGenerico_query('CADFOR','FRAZAO','FCODFOR=0'+CODFOR.Text,query_consulta) then
      BEGIN
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+query_consulta.Fields[0].AsString);
      codfor.text := '';
      codfor.SetFocus;
      END
   else
      begin

      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);


      codfor.text := '';
      CODFOR.SetFocus;
      end;
   end;



end;

procedure TFrm_RCPag.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_RCPag.clb_tipoforClick(Sender: TObject);
begin
clb_tipofor:=Valida_CheckList(clb_tipofor);

end;

procedure TFrm_RCPag.clb_tipodocClick(Sender: TObject);
begin
clb_tipodoc:=Valida_CheckList(clb_tipodoc);

end;

procedure TFrm_RCPag.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mTotgDup  :=0;
  mTotGPag  :=0;
  mTotGArec :=0;
  mTotGDesc :=0;
  mTotGJuros:=0;

  mTotTDup  :=0;
  mTotTPag  :=0;
  mTotTArec :=0;
  mTotTDesc :=0;
  mTotTJuros:=0;
  mQtdGTit  :=0;
  mQtdTTit  :=0;

end;

procedure TFrm_RCPag.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Qr_CPagCADUP.AsInteger=5 then
     begin
     mTotgDup  :=mTotgDup+Qr_CPagCAVALOR.Value;
     mTotGPag  :=mTotGPag+Qr_CPagCAVALPAG.Value;
     mTotGArec :=mTotGArec+Qr_CPagsaldodev.Value;
     mTotGDesc :=mTotGDesc+Qr_CPagCADESC.Value;
     mTotGJuros:=mTotGJuros+iif(CB_TIPOREL.itemindex=3, Qr_CPagCAVALOR_ACRES.AsFloat, Qr_CPagCAJUROS.Value);

     mTotTDup  :=mTotTDup+Qr_CPagCAVALOR.Value;
     mTotTPag  :=mTotTPag+Qr_CPagCAVALPAG.Value;
     mTotTArec :=mTotTArec+Qr_CPagsaldodev.Value;
     mTotTDesc :=mTotTDesc+Qr_CPagCADESC.Value;
     mTotTJuros:=mTotTJuros+iif(CB_TIPOREL.itemindex=3, Qr_CPagCAVALOR_ACRES.AsFloat, Qr_CPagCAJUROS.Value);
     RLBand4.Color:=clGreen;
     end
  else
     begin
     mTotgDup  :=mTotgDup-Qr_CPagCAVALOR.Value;
     mTotGPag  :=mTotGPag-Qr_CPagCAVALPAG.Value;
     mTotGArec :=mTotGArec-Qr_CPagsaldodev.Value;
     mTotGDesc :=mTotGDesc-Qr_CPagCADESC.Value;
     mTotGJuros:=mTotGJuros-iif(CB_TIPOREL.itemindex=3, Qr_CPagCAVALOR_ACRES.AsFloat, Qr_CPagCAJUROS.Value);

     mTotTDup  :=mTotTDup-Qr_CPagCAVALOR.Value;
     mTotTPag  :=mTotTPag-Qr_CPagCAVALPAG.Value;
     mTotTArec :=mTotTArec-Qr_CPagsaldodev.Value;
     mTotTDesc :=mTotTDesc-Qr_CPagCADESC.Value;
     mTotTJuros:=mTotTJuros-iif(CB_TIPOREL.itemindex=3, Qr_CPagCAVALOR_ACRES.AsFloat, Qr_CPagCAJUROS.Value);
     RLBand4.Color:=clWhite;

     end;


  mQtdGTit  :=mQtdGTit+1;
  mQtdTTit  :=mQtdTTit+1;


end;

procedure TFrm_RCPag.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblg_ValDup.Caption:=FormatFloat(mcasas, mTotgDup);
lblg_ValPag.Caption:=FormatFloat(mcasas, mTotGPag);
lblg_Arec.Caption  :=FormatFloat(mcasas, mTotGArec);
lblg_Desc.Caption  :=FormatFloat(mcasas, mTotGDesc);
lblg_Juros.Caption :=FormatFloat(mcasas, mTotGJuros);
lblg_numdoc.Caption:='';
lblg_RazSoc.Caption:='Total '+IntToStr(mQtdGTit);

mQtdGTit  :=0;
mTotGDup  :=0;
mTotGPag  :=0;
mTotGArec :=0;
mTotGDesc :=0;
mTotGJuros:=0;

end;

procedure TFrm_RCPag.sbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_RCPAG','');
fGravaPadroes(codusr,'CB_FORMAPAG'   ,'checked'   ,'_RCPAG',iif(cb_formapag.Checked,'true','false'));
fGravaPadroes(codusr,'CB_TD'          ,'itemindex' ,'_RCPAG',IntTostr(CB_TD.ItemIndex));
fGravaPadroes(codusr,'CB_TPP'         ,'itemindex' ,'_RCPAG',IntTostr(CB_TPP.ItemIndex));
fGravaPadroes(codusr,'CB_ORDEM'       ,'itemindex' ,'_RCPAG',IntTostr(CB_ORDEM.ItemIndex));
fGravaPadroes(codusr,'CB_TIPOREL'    ,'itemindex' ,'_RCPAG',IntTostr(CB_TIPOREL.ItemIndex));
fGravaPadroes(codusr,'CB_MATRICIAL'  ,'checked'   ,'_RCPAG',iif(CB_MATRICIAL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_VISREL'     ,'checked'   ,'_RCPAG',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_SEMBORDA'   ,'checked'   ,'_RCPAG',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_SEPAR'      ,'itemindex'   ,'_RCPAG',IntTostr(CB_SEPAR.ItemIndex));
fGravaPadroes(codusr,'CB_IMPOBS'     ,'checked'   ,'_RCPAG',iif(CB_IMPOBS.Checked,'true','false'));
fGravaPadroes(codusr,'CB_IMPPARC'    ,'checked'   ,'_RCPAG',iif(cb_impparc.Checked,'true','false'));
fmensagem('Gravado!',0,['0'],0);



end;

procedure TFrm_RCPag.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   begin
   mboolean:=False;
   lbl_cabNumdoc.Alignment  :=taLeftJustify;
   lbl_cabRazSoc.Alignment  :=taLeftJustify;
   lbl_CabJuros.Alignment  :=taRightJustify;
   end
else
   begin
   mboolean:=true;
   lbl_cabNumdoc.Alignment  :=taCenter;
   lbl_cabRazSoc.Alignment  :=taCenter;
   lbl_CabJuros.Alignment   :=taCenter;
   end;

lbl_cabNumdoc.Borders.DrawRight   :=mboolean;
lbl_Numdoc.Borders.DrawRight      :=mboolean;
lblg_numdoc.Borders.DrawRight     :=mboolean;

lbl_cabRazSoc.Borders.DrawRight   :=mboolean;
lbl_RazSoc.Borders.DrawRight      :=mboolean;
lblg_RazSoc.Borders.DrawRight     :=mboolean;
lblt_RazSoc.Borders.DrawRight     :=mboolean;

lbl_cabDtEmis.Borders.DrawRight   :=mboolean;
lbl_DtEmiss.Borders.DrawRight     :=mboolean;
lblg_DtEmis.Borders.DrawRight     :=mboolean;
lblt_DtEmis.Borders.DrawRight     :=mboolean;

lbl_cabValDup.Borders.DrawRight   :=mboolean;
lbl_ValDup.Borders.DrawRight      :=mboolean;
lblg_ValDup.Borders.DrawRight     :=mboolean;
lblt_ValDup.Borders.DrawRight     :=mboolean;

lbl_cabValPag.Borders.DrawRight   :=mboolean;
lbl_ValPag.Borders.DrawRight      :=mboolean;
lblg_ValPag.Borders.DrawRight     :=mboolean;
lblt_ValPag.Borders.DrawRight     :=mboolean;

lbl_cabArec.Borders.DrawRight     :=mboolean;
lbl_Arec.Borders.DrawRight        :=mboolean;
lblg_Arec.Borders.DrawRight       :=mboolean;
lblt_Arec.Borders.DrawRight       :=mboolean;

lbl_CabDtVcto.Borders.DrawRight   :=mboolean;
lbl_DtVcto.Borders.DrawRight      :=mboolean;
lblg_DtVcto.Borders.DrawRight     :=mboolean;
lblt_DtVcto.Borders.DrawRight     :=mboolean;

lbl_cabDatPgto.Borders.DrawRight  :=mboolean;
lbl_DatPgto.Borders.DrawRight     :=mboolean;
lblg_DatPgto.Borders.DrawRight    :=mboolean;
lblt_DatPgto.Borders.DrawRight    :=mboolean;

lbl_cabDesc.Borders.DrawRight     :=mboolean;
lbl_Desc.Borders.DrawRight        :=mboolean;
lblg_Desc.Borders.DrawRight       :=mboolean;
lblt_Desc.Borders.DrawRight       :=mboolean;

lbl_CabJuros.Borders.DrawRight    :=mboolean;
lbl_Juros.Borders.DrawRight       :=mboolean;
lblg_Juros.Borders.DrawRight      :=mboolean;
lblt_Juros.Borders.DrawRight      :=mboolean;

lbl_cabdoc.Borders.DrawRight      :=mboolean;
lbl_doc.Borders.DrawRight         :=mboolean;
lblg_doc.Borders.DrawRight        :=mboolean;
lblt_doc.Borders.DrawRight        :=mboolean;

lbl_cabChave.Borders.DrawRight    :=mboolean;
lbl_Chave.Borders.DrawRight       :=mboolean;
lblg_Chave.Borders.DrawRight      :=mboolean;
lblt_Chave.Borders.DrawRight      :=mboolean;


RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;

RLband4.Borders.DrawTop          :=mboolean;
RLband4.Borders.DrawBottom       :=mboolean;
RLBand6.Borders.DrawTop          :=mboolean;


end;

procedure TFrm_RCPag.CB_TIPORELClick(Sender: TObject);
begin
if CB_TIPOREL.ItemIndex=2 then
   begin
   lbl_cabValPag.Lines.Clear;
   lbl_cabValPag.Lines.Add('Cod.C.Custo');
   lbl_ValPag.DataField  :='CODCCU';
   lbl_ValPag.Alignment  :=taLeftJustify;
   lblt_ValPag.Visible   :=false;
   lblg_ValPag.Visible   :=false;
   lbl_cabArec.Lines.Clear;
   lbl_cabArec.Lines.Add('Centro de Custo');
   lbl_CabArec.Width      :=200;
   lblt_Arec.Visible   :=false;
   lblg_Arec.Visible   :=false;
   lbl_Arec.DataField  :='NOMCCU';
   lbl_Arec.Alignment  :=taLeftJustify;
   lbl_cabDatPgto.Visible  :=false;
   lbl_DatPgto.Visible     :=false;
   lblg_DatPgto.Visible    :=false;
   lblt_DatPgto.Visible    :=false;
   lbl_cabDesc.Visible  :=false;
   lbl_Desc.Visible     :=false;
   lblg_Desc.Visible    :=false;
   lblt_Desc.Visible    :=false;
   lbl_CabJuros.Visible  :=false;
   lbl_Juros.Visible     :=false;
   lblg_Juros.Visible    :=false;
   lblt_Juros.Visible    :=false;
   lbl_cabChave.Visible  :=false;
   lbl_Chave.Visible     :=false;
   lblg_Chave.Visible    :=false;
   lblt_Chave.Visible    :=false;
   lbl_cabDtvcto.Left    :=650;
   lbl_cabdoc.Left       :=700;
   end
else
   begin
   lbl_cabValPag.Lines.Clear;
   lbl_cabValPag.Lines.Add('Valor Pago');
   lbl_ValPag.DataField  :='CAVALPAG';
   lbl_ValPag.Alignment  :=taRightJustify;
   lblt_ValPag.Visible   :=true;
   lblg_ValPag.Visible   :=true;
   lbl_cabArec.Lines.Clear;
   lbl_cabArec.Lines.Add('Valor Em Aberto');
   lbl_CabArec.Width    :=57;
   lbl_Arec.DataField  :='saldodev';
   lbl_Arec.Alignment  :=taRightJustify;
   lblt_Arec.Visible   :=true;
   lblg_Arec.Visible   :=true;
   lbl_cabDatPgto.Visible  :=true;
   lbl_DatPgto.Visible     :=true;
   lblg_DatPgto.Visible    :=true;
   lblt_DatPgto.Visible    :=true;
   lbl_cabDesc.Visible  :=true;
   lbl_Desc.Visible     :=true;
   lblg_Desc.Visible    :=true;
   lblt_Desc.Visible    :=true;
   lbl_CabJuros.Visible  :=true;
   lbl_Juros.Visible     :=true;
   lblg_Juros.Visible    :=true;
   lblt_Juros.Visible    :=true;
   lbl_cabChave.Visible  :=true;
   lbl_Chave.Visible     :=true;
   lblg_Chave.Visible    :=true;
   lblt_Chave.Visible    :=true;
   lbl_cabDtvcto.Left    :=459;
   lbl_cabdoc.Left       :=661;
   end;
end;

procedure TFrm_RCPag.CB_TIPORELExit(Sender: TObject);
begin
with CB_TIPOREL do ItemIndex:=Items.IndexOf(CB_TIPOREL.Text);
CB_TIPOREL.text:=CB_TIPOREL.Items.Strings[CB_TIPOREL.ItemIndex];
CB_TIPORELClick(Self);
end;

procedure TFrm_RCPag.CB_ORDEMExit(Sender: TObject);
begin
with CB_ORDEM do ItemIndex:=Items.IndexOf(CB_ORDEM.Text);
CB_ORDEM.text:=CB_ORDEM.Items.Strings[CB_ORDEM.ItemIndex];


end;

procedure TFrm_RCPag.CB_TPPExit(Sender: TObject);
begin
with CB_TPP do ItemIndex:=Items.IndexOf(CB_TPP.Text);
CB_TPP.text:=CB_TPP.Items.Strings[CB_TPP.ItemIndex];

end;

procedure TFrm_RCPag.CB_TDExit(Sender: TObject);
begin
with CB_TD do ItemIndex:=Items.IndexOf(CB_TD.Text);
CB_TD.text:=CB_TD.Items.Strings[CB_TD.ItemIndex];

end;

function TFrm_RcPag.flerDap(pMarca: String): Boolean;
var
mCampoGru, mCampoOrdem: String;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR','FCODEMP','CACODEMP','FCODFOR','CACODFOR');
la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);
if CB_SEPAR.ItemIndex=1 then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADBCO','BCCODEMP','CACODEMP','BCCODBCO','CACODCTA');
   mCampoGru:= ' TO_CHAR(CACODCTA) ||'+chr(39)+' - '+chr(39)+' || DECODE(BCBANCO,NULL,'+chr(39)+'CARTEIRA'+chr(39)+', BCBANCO )AS NOMGRU ' ;
   mCampoOrdem:='BCBANCO,CACODCTA,CADTVCTO';
   end
else if CB_SEPAR.ItemIndex=0 then
   begin
   mCampoGru:='FCIDADE ||'+chr(39)+' - '+chr(39)+' || FBAIRRO  AS NOMGRU ' ;
   mCampoOrdem:='FUF,FCIDADE,FBAIRRO,CADTVCTO';
   end
else if CB_SEPAR.ItemIndex=2 then
   begin
   mCampoGru:='FUF ||'+chr(39)+' - '+chr(39)+' || FCIDADE AS NOMGRU ';
   mCampoOrdem:='FUF,FCIDADE,FBAIRRO,CADTVCTO';
   end
else if CB_SEPAR.ItemIndex=3 then
   begin
   mCampoGru  :='TO_CHAR(CADTVCTO, '+chr(39)+fdt2+chr(39)+') AS NOMGRU ';
   mCampoOrdem:='CADTVCTO,FRAZAO';
   end
else if CB_SEPAR.ItemIndex=4 then
   begin
   mCampoGru:='TO_CHAR(CADTEMIS, '+chr(39)+fdt2+chr(39)+') AS NOMGRU ';
   mCampoOrdem:='CADTEMIS,FRAZAO';
   end
else if CB_SEPAR.ItemIndex=5 then
   begin
   mCampoGru:='FRAZAO AS NOMGRU ';
   mCampoOrdem:='FRAZAO,CADTVCTO';
   end
else if CB_SEPAR.ItemIndex=7 then
   begin
   mCampoGru:='TO_CHAR(CADUP) ||'+chr(39)+' - '+chr(39)+' || '
             +' DECODE(CADUP '
             +'       ,0,'+chr(39)+'Normal'+chr(39)
             +'       ,1,'+chr(39)+'Cheque Devolvido'+chr(39)
             +'       ,2,'+chr(39)+'Cheque S/fundos'+chr(39)
             +'       ,3,'+chr(39)+'Juros'+chr(39)
             +'       ,4,'+chr(39)+'Nota Promissoria'+chr(39)
             +'       ,5,'+chr(39)+'Nota de Credito'+chr(39)
             +'       ,6,'+chr(39)+'Cheques Pre-Datado'+chr(39)
             +'       ,7,'+chr(39)+'Outros'+chr(39)
             +'       ,'+chr(39)+'Nao Identificado'+chr(39)+' ) AS NOMGRU ';
   mCampoOrdem:='CADUP,CADTVCTO';
   end
else if CB_SEPAR.ItemIndex=8 then
   begin
   mCampoGru:='FUF AS NOMGRU ' ;
   mCampoOrdem:='FUF,FCIDADE,FRAZAO';
   end
else if CB_SEPAR.ItemIndex=9 then // Grupo de Fornecedores
   begin
   la_instrucao:=la_instrucao+' and ';

   mCampoGru:= ' TO_CHAR(FCODGFOR) || '+QuotedStr('-')+' || GFNOME AS NOMGRU ' ;
   mCampoOrdem:='GFNOME,FRAZAO';
   fInnerJoin(0,'CADGFOR','GFCODEMP','FCODEMP','GFCODGRU','FCODGFOR');

   end
else if CB_SEPAR.ItemIndex=10 then // data de emissao
   begin
   mCampoGru  :='TO_CHAR(CADTEMIS, '+QuotedStr('MM/YYYY')+') AS NOMGRU ';
   mCampoOrdem:='TO_CHAR(CADTEMIS, '+QuotedStr('YYYYMM')+')';
   end
else if CB_SEPAR.ItemIndex=11 then // data de emissao
   begin
   mCampoGru  :='TO_CHAR(CADTVCTO, '+QuotedStr('MM/YYYY')+') AS NOMGRU ';
   mCampoOrdem:='TO_CHAR(CADTVCTO, '+QuotedStr('YYYYMM')+')';
   end
else
   begin
   mCampoGru:=chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMGRU';
   mCampoOrdem:='';
   end;

Qr_CPag.Close;
Qr_CPag.SQL.Clear;
Qr_CPag.SQL.Add('Select CANUMERO, CADESD, CADTEMIS, CADTVCTO, CADTBX, CADTPAG,CADESC,'
               +'       CACODEMP, '
               +'CAVALOR_ACRES,'
               +' CAJUROS, CAVALOR, CALOTE,CACODFOR,CAVALPAG,CADUP,CASTATUS , FRAZAO '
               +', '+mCampoGru+', CACODCC AS CODCCU, CANOMCC AS NOMCCU '
               +','+chr(39)+pMarca+chr(39)+' as OK '
               +', CACODCTA ');
if CB_SEPAR.ItemIndex=1 then
   Qr_CPag.SQL.add(' , BCBANCO AS NOMBCO ')
else
   Qr_CPag.SQL.add(' , '+chr(39)+insere2(' ',' ',40)+chr(39)+' AS NOMBCO ');
Qr_CPag.SQL.add('   ,CAOBS AS OBS,CALOTSEQ_LB ');
Qr_CPag.SQL.add(',CANUMPARC,CAQTDPARC');
Qr_CPag.SQL.Add(',CAVALDES,CADTDESC ');

Qr_CPag.SQL.add(' from CADDAP'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
               +iif(la_empresas='','',la_empresas+' and ')
               +' CASTATUS < 9 ');
Qr_CPag.sql.savetofile('c:\sql01_antes.txt');

Qr_CPag.SQL.add(fBuscarFiltros);
if CB_ORDEM.ItemIndex=0 then
   Qr_Cpag.SQL.Add(' order by '+iif(mCampoOrdem='','',mCampoOrdem+',')+' CADTVCTO, FRAZAO')
else if CB_ORDEM.ItemIndex=1 then
   Qr_Cpag.SQL.Add(' order by '+iif(mCampoOrdem='','',mCampoOrdem+',')+'CADTEMIS, FRAZAO')
else if CB_ORDEM.ItemIndex=2 then
   Qr_Cpag.SQL.Add(' order by '+iif(mCampoOrdem='','',mCampoOrdem+',')+'FRAZAO, CANUMERO')
else if CB_ORDEM.ItemIndex=3 then
   Qr_Cpag.SQL.Add(' order by '+iif(mCampoOrdem='','',mCampoOrdem+',')+'CAVALOR')
else if CB_ORDEM.ItemIndex=4 then
   Qr_Cpag.SQL.Add(' order by '+iif(mCampoOrdem='','',mCampoOrdem+',')+'CAVALOR DESC')
else if CB_ORDEM.ItemIndex=5 then
   Qr_Cpag.SQL.Add(' order by '+iif(mCampoOrdem='','',mCampoOrdem+',')+'CADTPAG');



try
   Qr_CPag.open;
except
   Qr_CPag.sql.savetofile('c:\sql.txt');
   end;
//Qr_CPag.sql.savetofile('c:\sql01.txt');


TOTABRVCT.Caption  :=FormatFloat(mcasas, 0);
TOTABRAVENC.Caption:=FormatFloat(mcasas, 0);
TOTABR.Caption     :=FormatFloat(mcasas, 0);
TOTPAG.Caption     :=FormatFloat(mcasas, 0);
TOTDUPGER.Caption  :=FormatFloat(mcasas, 0);


DEV_VENCREC.Caption    :=FormatFloat(mcasas, 0);
DEV_TOTABRAVENC.Caption:=FormatFloat(mcasas, 0);
DEV_TOTABR.Caption     :=FormatFloat(mcasas, 0);
DEV_TOTPAG.Caption     :=FormatFloat(mcasas, 0);
DEV_TOTDUPGER.Caption  :=FormatFloat(mcasas, 0);


SEL_TOTABRVCT.Caption  :=FormatFloat(mcasas, 0);
SEL_TOTABRAVENC.Caption:=FormatFloat(mcasas, 0);
SEL_TOTABR.Caption     :=FormatFloat(mcasas, 0);
SEL_TOTPAG.Caption     :=FormatFloat(mcasas, 0);
SEL_TOTDUPGER.Caption  :=FormatFloat(mcasas, 0);


SEL_DEV_VENCREC.Caption    :=FormatFloat(mcasas, 0);
SEL_DEV_TOTABRAVENC.Caption:=FormatFloat(mcasas, 0);
SEL_DEV_TOTABR.Caption     :=FormatFloat(mcasas, 0);
SEL_DEV_TOTPAG.Caption     :=FormatFloat(mcasas, 0);
SEL_DEV_TOTDUPGER.Caption  :=FormatFloat(mcasas, 0);





if not Qr_CPag.Eof then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select sum(CAVALOR)  as VALOR, '
               +'       sum(CAVALPAG) as VALPAG, '
               +'       sum(CADEVOL)  as DEVOL, '
               +'       sum(CAJUROS)  as JUROS, '
               +'       sum(CADESC)   as DESCONTO, '
               +'       CASTATUS,CADUP from CADDAP'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
               +iif(la_empresas='','',la_empresas+' and ')
               +' CASTATUS < 9 ');


   DM1.Query1.SQL.add(fBuscarFiltros);

   DM1.Query1.SQL.Add(' and CADTVCTO>'+chr(39)+FormatDateTime(Fdt,Date)+chr(39));
   DM1.Query1.sql.Add(' group by CASTATUS,CADUP ');
   try
      DM1.Query1.open;
   except
      DM1.Query1.sql.savetofile('c:\sql.txt');
      end;
//   DM1.Query1.sql.savetofile('c:\sql02.txt');

   While not DM1.Query1.eof do
      begin
      if DM1.Query1.FieldByName('CADUP').AsInteger=5 then
         begin
         DEV_TOTABRAVENC.Caption:=FormatFloat(mcasas, ValFloat(DEV_TOTABRAVENC.Caption)
                                             +DM1.Query1.fieldbyName('VALOR').AsFloat
                                             -DM1.Query1.fieldbyName('VALPAG').AsFloat);
         DEV_TOTPAG.Caption:=FormatFloat(mcasas, ValFloat(DEV_TOTPAG.Caption)
                                             +DM1.Query1.fieldbyName('VALPAG').AsFloat);

         end
      else
         begin
         TOTABRAVENC.Caption:=FormatFloat(mcasas, ValFloat(TOTABRAVENC.Caption)
                                               +DM1.Query1.fieldbyName('VALOR').AsFloat
                                               -DM1.Query1.fieldbyName('VALPAG').AsFloat);
         TOTPAG.Caption:=FormatFloat(mcasas, ValFloat(TOTPAG.Caption)
                                             +DM1.Query1.fieldbyName('VALPAG').AsFloat);

         end;
      DM1.Query1.Next;
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select sum(CAVALOR)  as VALOR, '
               +'       sum(CAVALPAG) as VALPAG, '
               +'       sum(CADEVOL)  as DEVOL, '
               +'       sum(CAJUROS)  as JUROS, '
               +'       sum(CADESC)   as DESCONTO, '
               +'       CASTATUS,CADUP from CADDAP'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
               +iif(la_empresas='','',la_empresas+' and ')
               +' CASTATUS < 9 ');

   DM1.Query1.SQL.add(fBuscarFiltros);

   DM1.Query1.SQL.Add(' and CADTVCTO<='+chr(39)+FormatDateTime(Fdt,Date)+chr(39));
   DM1.Query1.sql.Add(' group by CASTATUS,CADUP ');
   try
      DM1.Query1.open;
   except
      DM1.Query1.sql.savetofile('c:\sql.txt');
      end;
//   DM1.Query1.sql.savetofile('c:\sql03.txt');
   While not DM1.Query1.eof do
      begin
      if DM1.Query1.FieldByName('CADUP').AsInteger=5 then
         begin
         DEV_VENCREC.Caption:=FormatFloat(mcasas, ValFloat(DEV_VENCREC.Caption)
                                             +DM1.Query1.fieldbyName('VALOR').AsFloat
                                             -DM1.Query1.fieldbyName('VALPAG').AsFloat);
         DEV_TOTPAG.Caption:=FormatFloat(mcasas, ValFloat(DEV_TOTPAG.Caption)
                                             +DM1.Query1.fieldbyName('VALPAG').AsFloat);
         end
      else
         begin
         TOTABRVCT.Caption:=FormatFloat(mcasas, ValFloat(TOTABRVCT.Caption)
                                               +DM1.Query1.fieldbyName('VALOR').AsFloat
                                               -DM1.Query1.fieldbyName('VALPAG').AsFloat);
         TOTPAG.Caption:=FormatFloat(mcasas, ValFloat(TOTPAG.Caption)
                                             +DM1.Query1.fieldbyName('VALPAG').AsFloat);
         end;
      DM1.Query1.Next;
      end;
   end;


// totais
if trim(pMarca)='X' then
   begin
   SEL_DEV_TOTABRAVENC.Caption:=DEV_TOTABRAVENC.Caption;
   SEL_DEV_TOTPAG.Caption     :=DEV_TOTPAG.Caption;
   SEL_TOTABRAVENC.Caption    :=TOTABRAVENC.Caption;
   SEL_TOTPAG.Caption         :=TOTPAG.Caption;

   SEL_DEV_VENCREC.Caption    :=DEV_VENCREC.Caption;
   SEL_DEV_TOTPAG.Caption     :=DEV_TOTPAG.Caption;
   SEL_TOTABRVCT.Caption      :=TOTABRVCT.Caption;
   SEL_TOTPAG.Caption         :=TOTPAG.Caption;
   end;

fTotais;


{

TOTABRVCT.Caption  :=FormatFloat(mcasas, 0);
TOTABRAVENC.Caption:=FormatFloat(mcasas, 0);
TOTPAG.Caption     :=FormatFloat(mcasas, 0);


DEVVENCREC.Caption     :=FormatFloat(mcasas, 0);
DEV_TOTABRAVENC.Caption:=FormatFloat(mcasas, 0);
DEV_TOTPAG.Caption     :=FormatFloat(mcasas, 0);


SEL_TOTABRVCT.Caption  :=FormatFloat(mcasas, 0);
SEL_TOTABRAVENC.Caption:=FormatFloat(mcasas, 0);
SEL_TOTPAG.Caption     :=FormatFloat(mcasas, 0);


SEL_DEVVENCREC.Caption     :=FormatFloat(mcasas, 0);
SEL_DEV_TOTABRAVENC.Caption:=FormatFloat(mcasas, 0);
SEL_DEV_TOTPAG.Caption     :=FormatFloat(mcasas, 0);


}
result:=true;

end;
procedure TFrm_RCPag.CB_SEPARExit(Sender: TObject);
begin
with CB_SEPAR do ItemIndex:=Items.IndexOf(CB_SEPAR.Text);
CB_SEPAR.text:=CB_SEPAR.Items.Strings[CB_SEPAR.ItemIndex];

end;

function TFrm_RcPag.fTotais: Boolean;
begin

SALABRVCT.Caption          :=FormatFloat(mcasas, ValFloat(TOTABRVCT.Caption)
                                        +ValFloat(DEV_VENCREC.Caption));

SALABRAVENC.Caption        :=FormatFloat(mcasas, ValFloat(TOTABRAVENC.Caption)
                                        +ValFloat(DEV_TOTABRAVENC.Caption));

TOTABR.Caption             :=FormatFloat(mcasas, ValFloat(TOTABRVCT.Caption)
                                        +ValFloat(TOTABRAVENC.Caption));

DEV_TOTABR.Caption         :=FormatFloat(mcasas, ValFloat(DEV_VENCREC.Caption)
                                        +ValFloat(DEV_TOTABRAVENC.Caption));


SALABR.Caption             :=FormatFloat(mcasas, ValFloat(TOTABR.Caption)
                                        -ValFloat(DEV_TOTABR.Caption));

SALPAG.Caption             :=FormatFloat(mcasas, ValFloat(TOTPAG.Caption)
                                        +ValFloat(DEV_TOTPAG.Caption));


TOTDUPGER.Caption          :=FormatFloat(mcasas, ValFloat(TOTABR.Caption)
                                        +ValFloat(TOTPAG.Caption));

SALDUPGER.Caption          :=FormatFloat(mcasas, ValFloat(TOTDUPGER.Caption)
                                        +ValFloat(DEV_TOTDUPGER.Caption));

// SELECIONADOS

SEL_SALABRVCT.Caption          :=FormatFloat(mcasas, ValFloat(SEL_TOTABRVCT.Caption)
                                        +ValFloat(SEL_DEV_VENCREC.Caption));

SEL_SALABRAVENC.Caption        :=FormatFloat(mcasas, ValFloat(SEL_TOTABRAVENC.Caption)
                                        +ValFloat(SEL_DEV_TOTABRAVENC.Caption));

SEL_TOTABR.Caption             :=FormatFloat(mcasas, ValFloat(SEL_TOTABRVCT.Caption)
                                        +ValFloat(SEL_TOTABRAVENC.Caption));

SEL_DEV_TOTABR.Caption         :=FormatFloat(mcasas, ValFloat(SEL_DEV_VENCREC.Caption)
                                        +ValFloat(SEL_DEV_TOTABRAVENC.Caption));


SEL_SALABR.Caption             :=FormatFloat(mcasas, ValFloat(SEL_TOTABR.Caption)
                                        -ValFloat(SEL_DEV_TOTABR.Caption));

SEL_SALPAG.Caption             :=FormatFloat(mcasas, ValFloat(SEL_TOTPAG.Caption)
                                        +ValFloat(SEL_DEV_TOTPAG.Caption));


SEL_TOTDUPGER.Caption          :=FormatFloat(mcasas, ValFloat(SEL_TOTABR.Caption)
                                        +ValFloat(SEL_TOTPAG.Caption));

SEL_SALDUPGER.Caption          :=FormatFloat(mcasas, ValFloat(SEL_TOTDUPGER.Caption)
                                        +ValFloat(SEL_DEV_TOTDUPGER.Caption));


result:=true;
end;
procedure TFrm_RCPag.DBGrid1DblClick(Sender: TObject);
var
mant_codemp: Integer;

form_dap    : TFrm_Dap;

begin
//testeform := TFrm_RcPag(FindGlobalComponent('form_dap'));
//if (testeform=nil)  then
   Application.CreateForm(Tfrm_dap, form_dap);

form_dap.FormStyle:=fsNormal;
form_dap.Visible:=False;
if not Qr_CPagCANUMERO.IsNull then
   begin
   mant_codemp:=codemp;
   codemp:=Qr_CPagCACODEMP.AsInteger;
   mtipo:=1;
   form_dap.Edit1.Text:=Qr_CPagCANUMERO.AsString;
   form_dap.edt_datini.clear;
   form_dap.edt_datfin.clear;

   dap_ori := 'frm_cpag';
   if form_dap.flcaddap_local(6,Qr_CPagCACODEMP.AsInteger,0,
                     Qr_CPagCANUMERO.AsString,
                     Qr_CPagCADESD.AsString,
                     Qr_CPagCACODFOR.AsString,
                     FormatDatetime(fdt2, Qr_CPagCADTEMIS.AsDateTime),
                     Qr_CPagCADUP.AsString,'') then
       begin
       form_dap.Tb_CP.Locate('CANUMERO;CADESD;CACODfor;CAVALOR;CADTEMIS',vararrayof([Qr_CPagCANUMERO.AsFloat,
                Qr_CPagCADESD.AsString,Qr_CPagCACODFOR.AsFloat,Qr_CPagCAVALOR.AsFloat
                ,Qr_CPagCADTEMIS.AsDateTime
                ]),[]);

       form_dap.ShowModal;
       end;
   codemp:=mant_codemp;
   mtipo:=0;
   end;
freeandnil(form_dap);
end;

procedure TFrm_RCPag.DBGrid1CellClick(Column: TColumn);
begin
if not Qr_CPagCAVALOR.IsNull then
   begin
   Qr_CPag.Edit;
   if Qr_CPagOK.value='X' then
      begin
      Qr_CPagOK.Value:='';
      if Qr_CPagCADUP.AsInteger=5 then
         begin
         if Qr_CPagCADTVCTO.AsDateTime>date then
            SEL_DEV_TOTABRAVENC.Caption:=FormatFloat(mcasas, ValFloat(SEL_DEV_TOTABRAVENC.Caption)
                                                            -Qr_CPagCAVALOR.Value
                                                            +Qr_CPagCAVALPAG.Value)
         else
            SEL_DEV_VENCREC.Caption:=FormatFloat(mcasas, ValFloat(SEL_DEV_VENCREC.Caption)
                                                            -Qr_CPagCAVALOR.Value
                                                            +Qr_CPagCAVALPAG.Value);

         SEL_DEV_TOTPAG.Caption:=FormatFloat(mcasas, ValFloat(SEL_DEV_TOTPAG.Caption)
                                                            -Qr_CPagCAVALPAG.Value);

         end
      else
         begin
         if Qr_CPagCADTVCTO.AsDateTime>date then
            SEL_TOTABRAVENC.Caption:=FormatFloat(mcasas, ValFloat(SEL_TOTABRAVENC.Caption)
                                                            -Qr_CPagCAVALOR.Value
                                                            +Qr_CPagCAVALPAG.Value)
         else
            SEL_TOTABRVCT.Caption:=FormatFloat(mcasas, ValFloat(SEL_TOTABRVCT.Caption)
                                                            -Qr_CPagCAVALOR.Value
                                                            +Qr_CPagCAVALPAG.Value);

         SEL_TOTPAG.Caption:=FormatFloat(mcasas, ValFloat(SEL_TOTPAG.Caption)
                                                          -Qr_CPagCAVALPAG.Value);

         end;
      end
   else
      begin
      Qr_CPagOK.Value:='X';
      if Qr_CPagCADUP.AsInteger=5 then
         begin
         if Qr_CPagCADTVCTO.AsDateTime>date then
            SEL_DEV_TOTABRAVENC.Caption:=FormatFloat(mcasas, ValFloat(SEL_DEV_TOTABRAVENC.Caption)
                                                            +Qr_CPagCAVALOR.Value
                                                            -Qr_CPagCAVALPAG.Value)
         else
            SEL_DEV_VENCREC.Caption:=FormatFloat(mcasas, ValFloat(SEL_DEV_VENCREC.Caption)
                                                            +Qr_CPagCAVALOR.Value
                                                            -Qr_CPagCAVALPAG.Value);
         SEL_DEV_TOTPAG.Caption:=FormatFloat(mcasas, ValFloat(SEL_DEV_TOTPAG.Caption)
                                                            +Qr_CPagCAVALPAG.Value);

         end
      else
         begin
         if Qr_CPagCADTVCTO.AsDateTime>date then
            SEL_TOTABRAVENC.Caption:=FormatFloat(mcasas, ValFloat(SEL_TOTABRAVENC.Caption)
                                                            +Qr_CPagCAVALOR.Value
                                                            -Qr_CPagCAVALPAG.Value)
         else
            SEL_TOTABRVCT.Caption:=FormatFloat(mcasas, ValFloat(SEL_TOTABRVCT.Caption)
                                                            +Qr_CPagCAVALOR.Value
                                                            -Qr_CPagCAVALPAG.Value);

         SEL_TOTPAG.Caption:=FormatFloat(mcasas, ValFloat(SEL_TOTPAG.Caption)
                                                          +Qr_CPagCAVALPAG.Value);

         end;
      end;
   Qr_CPag.Post;
   fTotais;
   end;

end;

procedure TFrm_RCPag.CODBCOExit(Sender: TObject);
begin

CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if not fLerGenerico_query('CADBCO','BCBANCO','BCCODBCO=0'+codbco.Text,query_consulta) then
      begin
      fmensagem('Banco não cadastrada!',0,['0'],0);
      CODBCO.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.Text))
                                    +' - '+query_consulta.fields[0].AsString);
      CODBCO.text := '';
      CODBCO.SetFocus;
      end;
   end;


end;

procedure TFrm_RCPag.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RCpag',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RCPag.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_RCPag.RL_finalBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_ValDup.Caption:=FormatFloat(mcasas, mTotTDup);
lblt_ValPag.Caption:=FormatFloat(mcasas, mTotTPag);
lblt_Arec.Caption  :=FormatFloat(mcasas, mTotTArec);
lblt_Desc.Caption  :=FormatFloat(mcasas, mTotTDesc);
lblt_Juros.Caption :=FormatFloat(mcasas, mTotTJuros);
lblt_numdoc.Caption:='';
lblt_RazSoc.Caption:='Total '+IntToStr(mQtdTTit);

mQtdTTit  :=0;
mTotTDup  :=0;
mTotTPag  :=0;
mTotTArec :=0;
mTotTDesc :=0;
mTotTJuros:=0;


end;

procedure TFrm_RCPag.edt_coddepExit(Sender: TObject);
begin
if Trim(edt_coddep.Text)<>'' then
   begin
   if fLerGenerico_query('CADDEP','DNOME','DCODDEP='+QuotedStr(edt_coddep.Text),query_consulta) then

   if flqr1('DNOME','D','CADDEP','C','DCODDEP',edt_coddep.Text) then
      begin
      lbx_coddep.Items.Add(edt_coddep.Text
                                    +'-'+query_consulta.Fields[0].AsString);
      edt_coddep.Text := '';
      if (edt_coddep.Visible=true) and (edt_coddep.Enabled=true) then
         edt_coddep.SetFocus;
      end
   else
      begin
      fmensagem('Departamento não Cadastrado!',0,['0'],0);
      edt_coddep.text := '';
      if (edt_coddep.Visible=true) and (edt_coddep.Enabled=true) then
         edt_coddep.SetFocus;
      end;
   end;


end;

procedure TFrm_RCPag.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_RCPag.edt_codccuExit(Sender: TObject);
begin
if Trim(edt_CODCCU.Text)<>'' then
   begin
   if fLerGenerico_query('CADCCU','CCNAT,CCNOME','CCCODCCU='+QuotedStr(edt_codccu.Text),query_consulta) then 
      begin
      lbx_codccu.Items.Add(edt_CODCCU.TEXT
                                    +'-'+query_consulta.Fields[1].AsString);
      edt_CODCCU.text := '';
      edt_CODCCU.SetFocus;
      end
   else
      begin
      fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
      edt_CODCCU.text := '';
      edt_CODCCU.SetFocus;
      end;
   end;


end;

procedure TFrm_RCPag.lbx_codccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codccu.ItemIndex>=0 then
      lbx_codccu.Items.Delete(lbx_codccu.ItemIndex);

end;

procedure TFrm_RCPag.sbn_codccuClick(Sender: TObject);
begin
edt_CODCCU.Text:=fChamaCCU(0,'frm_RCpag','');
if trim(edt_CODCCU.Text)<>'' then
   edt_CODCCUExit(Self);
end;

procedure TFrm_RCPag.sbn_coddepClick(Sender: TObject);
begin
edt_CODDEP.Text :=fChamaDeptoCX(0,'frm_RCpag','');
if trim(edt_CODDEP.Text)<>'' then
   edt_CODDEPExit(Self);
end;

procedure TFrm_RCPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin

freeandnil(Form_SelEmp);

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RCPag.CB_TDESPClick(Sender: TObject);
begin
CB_TDESP:=Valida_CheckList(CB_TDESP);

end;

procedure TFrm_RCPag.CODGFORExit(Sender: TObject);
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

procedure TFrm_RCPag.CODGFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFor(0,'frm_rcpag',key);
   key:=#0;
   end;


end;

procedure TFrm_RCPag.lbx_codgforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codgfor.ItemIndex>=0 then
      lbx_codgfor.Items.Delete(lbx_codgfor.ItemIndex);


end;

procedure TFrm_RCPag.BBFORMAClick(Sender: TObject);
var
mqtdd,mqtdf,mini:Integer;

Form_forma_pag:tFrm_FormaPgto;

begin
if (not Qr_CPag.Active) or (Qr_CPagCANUMERO.IsNull) then
   begin
   fmensagem('Favor Selecionar um Titulo!',0,['0'],0);
   exit;
   end;
if Qr_CPagCASTATUS.AsInteger=0 then
   begin
   fmensagem('Favor Selecionar um Titulo Pago!',0,['0'],0);
   exit;
   end;
Application.CreateForm(TFrm_FormaPgto, Form_Forma_Pag);
Form_forma_pag.lbl_obs.Caption:='Titulo '+Qr_CPagCANUMERO.AsString+'/'+Qr_CPagCADESD.AsString+' Valor: '+formatFloat(mcasas, Qr_CPagCAVALOR.AsFloat)
                              +' Vencimento '+FormatDateTime(fdt2, Qr_CPagCADTVCTO.AsDateTime);
Form_Forma_Pag.fCarregarFormas(1,Qr_CPagCANUMERO.AsFloat,Qr_CPagCACODFOR.AsFloat,Qr_CPagCADESD.Asstring,Qr_CPagCADUP.Asinteger
,Qr_CPagCACODEMP.asinteger,0,Qr_CPagCADTEMIS.AsDateTime);
Form_Forma_Pag.ShowModal;
Freeandnil(Form_Forma_pag);


end;

procedure TFrm_RCPag.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_RCPag.FormActivate(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
if log_coddep_cx=''  then
   begin
   edt_CODDEP.Enabled    :=true;
   lbx_coddep.Enabled:=true;
   OMITIR_DEP.Enabled:=true;
   end
else
   begin
   edt_CODDEP.Enabled    :=false;
   lbx_coddep.Enabled:=false;
   OMITIR_DEP.Enabled:=false;
   edt_CODDEP.Text       :=log_coddep_cx;
   edt_CODDEPExit(self);
   end;


end;

procedure TFrm_RCPag.edt_codbco_cobExit(Sender: TObject);
begin

edt_codbco_cob.Text:=fdeixanum2(edt_codbco_cob.Text);
if Trim(edt_codbco_cob.Text)<>'' then
   begin
   if not fLerGenerico_query('CADBCO','BCBANCO','BCCODBCO=0'+edt_codbco_cob.Text,query_consulta) then
      begin
      fmensagem('Banco '+edt_codbco_cob.Text+' não cadastrada!',0,['0'],0);
      edt_codbco_cob.SetFocus;
      end
   else
      begin
      lbx_codbco_cob.Items.Add(FormatFloat('0000000', fsonumero(edt_codbco_cob.Text) )
                                    +' - '+query_consulta.Fieldbyname('BCBANCO').AsString);
      edt_codbco_cob.text := '';
      edt_codbco_cob.SetFocus;
      end;
   end;

end;

procedure TFrm_RCPag.edt_codbco_cobKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codbco_cob.Text:=fChamaBco(0,'frm_RCpag',Key);
   if trim(edt_codbco_cob.Text)<>'' then
      edt_codbco_cobExit(Self);
   key:=#0;
   end;


end;

function TFrm_RCPag.fBuscarFiltros: String;
var
mFiltros: String;
begin

mFiltros:='';
if ValInt(edt_Nnum.Text) > 0 then
  mFiltros:=mFiltros+' and CANUMERO>='+edt_Nnum.Text;

if ValInt(edt_Fnum.Text) > 0 then
  mFiltros:=mFiltros+' and CANUMERO<='+edt_Fnum.Text;

if Trim(MDT1.Text)<>'/  /' then
   begin
   if CB_TPP.ItemIndex=4 then
      mFiltros:=mFiltros+' and CADTINC>='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT1.Text))+chr(39)
   else if CB_TPP.ItemIndex=0 then
      mFiltros:=mFiltros+' and CADTVCTO>='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT1.Text))+chr(39)
   else if CB_TPP.ItemIndex=1 Then
      mFiltros:=mFiltros+' and CADTEMIS>='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT1.Text))+chr(39)
   else if CB_TPP.ItemIndex=2 then
      mFiltros:=mFiltros+' and CADTBX>='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT1.Text))+chr(39)
   else
      mFiltros:=mFiltros+' and CADTPAG>='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT1.Text))+chr(39);
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   if CB_TPP.ItemIndex=4 then
      mFiltros:=mFiltros+' and CADTINC<='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT1.Text))+chr(39)
   else if CB_TPP.ItemIndex=0 then
      mFiltros:=mFiltros+' and CADTVCTO<='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT2.Text))+chr(39)
   else if CB_TPP.ItemIndex=1 Then
      mFiltros:=mFiltros+' and CADTEMIS<='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT2.Text))+chr(39)
   else if CB_TPP.ItemIndex=2 then
      mFiltros:=mFiltros+' and CADTBX<='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT2.Text))+chr(39)
   else
      mFiltros:=mFiltros+' and CADTPAG<='+chr(39)+FormatDateTime(Fdt,StrtoDate(MDT2.Text))+chr(39);
   end;
if CB_TD.ItemIndex=1 then
   mFiltros:=mFiltros+' and CASTATUS>0'
else if CB_TD.ItemIndex=2 then
   mFiltros:=mFiltros+' and CASTATUS<2';

mcinst4:='';
mcinst :='';
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CACODFOR '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CACODCTA '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codbco_cob,OMITIR_BCO_COB);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CABANCO '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CACODDEP '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CACODCC '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItenstCheckListBox(0,clb_tipofor);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' FTIPOF '+mcinst2;
   mcinst:=' and ';
   end;



mcinst2:=fItenstCheckListBox(0,clb_tipodoc);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CADUP '+mcinst2;
   mcinst:=' and ';
   end;

if trim(mcinst4)<>'' then
   mFiltros:=mFiltros+' and '+mcinst4;

mcinst2:=fItenstCheckListBox(0,CB_TDESP);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' FTDESP '+mcinst2;
   mcinst:=' and ';
   end;
if trim(mcinst4)<>'' then
   mFiltros:=mFiltros+' and '+mcinst4;

mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
if trim(mcinst2)<>'' then
   mFiltros:=mFiltros+' and FCODGFOR '+mcinst2;


result:=mFiltros;
end;


procedure TFrm_RCPag.lbx_codbco_cobKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco_cob.ItemIndex>=0 then
      lbx_codbco_cob.Items.Delete(lbx_codbco_cob.ItemIndex);

end;

end.
