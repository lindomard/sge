unit S_Ind_Fab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, Grids, Buttons,db,dbtables,func,
  lerarq,S_DM1,S_DM3,S_Pro,S_Prod_Loc,S_Impres,S_ImpPed,S_Ind_ForEnv,S_Ind_Comp02,
  RxMemDS, s_lerarq_geral;

type
  TFrm_Ind_Fab = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    MCHAVE: TEdit;
    Label2: TLabel;
    MDATA: TMaskEdit;
    Label3: TLabel;
    MDATAPREV: TMaskEdit;
    Label4: TLabel;
    MNUMLOT: TEdit;
    Label5: TLabel;
    MDATAVEN: TMaskEdit;
    Label6: TLabel;
    MNOME: TEdit;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    MCODPRO: TEdit;
    LGRADE: TLabel;
    MGRADE: TEdit;
    MNOMPRO: TEdit;
    Label9: TLabel;
    MUND: TEdit;
    Label10: TLabel;
    MQTDPREV: TEdit;
    Label11: TLabel;
    MPU: TEdit;
    Label12: TLabel;
    PRO_GRAVAR: TBitBtn;
    PRO_EDITAR: TBitBtn;
    PRO_CANCELAR: TBitBtn;
    PRO_EXCLUIR: TBitBtn;
    STG_MP: TStringGrid;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBCALCULAR: TBitBtn;
    BBCONFIRMAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    STG_PP: TStringGrid;
    MITENSPPREV: TStaticText;
    MQTDPPREV: TStaticText;
    MTOTPPREV: TStaticText;
    MITENSMPPREV: TStaticText;
    MTOTMPPREV: TStaticText;
    MQTDMPPREV: TStaticText;
    MTOTMPREAL: TStaticText;
    MQTDMPREAL: TStaticText;
    MITENSMPREAL: TStaticText;
    MQTDPREAL: TStaticText;
    MITENSPREAL: TStaticText;
    MTOTPREAL: TStaticText;
    MTOTAL: TStaticText;
    GroupBox5: TGroupBox;
    Label25: TLabel;
    ET_NOMETA: TEdit;
    ET_GRAVAR: TBitBtn;
    ET_EDITAR: TBitBtn;
    ET_CANCELAR: TBitBtn;
    ET_EXCLUIR: TBitBtn;
    Label26: TLabel;
    ET_NOME: TEdit;
    Label27: TLabel;
    ET_DATAI: TMaskEdit;
    Label28: TLabel;
    ET_HORAI: TMaskEdit;
    Label29: TLabel;
    ET_DATAF: TMaskEdit;
    Label30: TLabel;
    ET_HORAF: TMaskEdit;
    STG_ETA: TStringGrid;
    MOBS01: TEdit;
    Label31: TLabel;
    MOBS02: TEdit;
    MOBS03: TEdit;
    MOBS04: TEdit;
    MOBS05: TEdit;
    MOBS06: TEdit;
    MOBS07: TEdit;
    MOBS08: TEdit;
    MOBS09: TEdit;
    MOBS10: TEdit;
    bbImportar: TBitBtn;
    GB_ORIGEM_FAB: TGroupBox;
    Label8: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    FAB_MCODPRO: TEdit;
    FAB_MNOMPRO: TEdit;
    FAB_MQTD: TEdit;
    FAB_MPU: TEdit;
    FAB_MTOTAL: TStaticText;
    FAB_MLOTE: TEdit;
    Label32: TLabel;
    Label37: TLabel;
    FAB_MCHAVE: TEdit;
    FAB_MDTFABR: TMaskEdit;
    Label38: TLabel;
    Label39: TLabel;
    FAB_MDTVCTO: TMaskEdit;
    Qr_OrdFab: TQuery;
    Qr_OrdFabOP1_DATAPREV: TDateTimeField;
    Qr_OrdFabOP1_DATAVEN: TDateTimeField;
    Qr_OrdFabOP1_LOTE: TStringField;
    Qr_OrdFabOP2_CODPRO: TFloatField;
    Qr_OrdFabOP2_QTDPROD: TFloatField;
    Qr_OrdFabOP2_PU: TFloatField;
    bbBaixarMP: TBitBtn;
    GB_MANMP: TGroupBox;
    bbExcluirMP: TBitBtn;
    bbCancelarMP: TBitBtn;
    bbEditarMP: TBitBtn;
    bbGravarMP: TBitBtn;
    Label40: TLabel;
    CODIGOMP: TEdit;
    Label41: TLabel;
    GRADEMP: TEdit;
    QTDPREVMP: TEdit;
    Label42: TLabel;
    PCOUNIMP: TEdit;
    TOTALMP: TStaticText;
    Label43: TLabel;
    UNDMP: TEdit;
    Label44: TLabel;
    NOMEMP: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    LOTEMP: TEdit;
    Label47: TLabel;
    DATAVMP: TMaskEdit;
    QTDUTILMP: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    cb_origem: TCheckBox;
    RichEdit1: TRichEdit;
    CB_MATRICIAL: TCheckBox;
    tsConfigMaster: TTabSheet;
    CB_QTDNEG: TCheckBox;
    sbSalvarPadrao: TSpeedButton;
    mem_apuracao: TRxMemoryData;
    mem_apuracaoCODPRO: TFloatField;
    mem_apuracaoUND: TStringField;
    mem_apuracaoNOMPRO: TStringField;
    mem_apuracaoQTDPED: TFloatField;
    mem_apuracaoQTDEST: TFloatField;
    mem_apuracaoQTDSALDO: TFloatField;
    cb_baixagrava: TCheckBox;
    cb_inib_mp: TCheckBox;
    procedure MDATAExit(Sender: TObject);
    procedure MDATAPREVExit(Sender: TObject);
    procedure MNOMEExit(Sender: TObject);
    procedure MNUMLOTExit(Sender: TObject);
    procedure MDATAVENExit(Sender: TObject);
    procedure MCODPROKeyPress(Sender: TObject; var Key: Char);
    procedure MCODPROExit(Sender: TObject);
    procedure MGRADEExit(Sender: TObject);
    procedure MQTDPREVExit(Sender: TObject);
    procedure MPUExit(Sender: TObject);
    procedure PRO_GRAVARClick(Sender: TObject);
    procedure STG_PPDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STG_MPDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure PRO_EDITARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure ET_NOMETAExit(Sender: TObject);
    procedure ET_NOMEExit(Sender: TObject);
    procedure ET_DATAIExit(Sender: TObject);
    procedure ET_DATAFExit(Sender: TObject);
    procedure ET_HORAIExit(Sender: TObject);
    procedure ET_HORAFExit(Sender: TObject);
    procedure ET_EDITARClick(Sender: TObject);
    procedure ET_GRAVARClick(Sender: TObject);
    procedure PRO_CANCELARClick(Sender: TObject);
    procedure PRO_EXCLUIRClick(Sender: TObject);
    procedure ET_CANCELARClick(Sender: TObject);
    procedure ET_EXCLUIRClick(Sender: TObject);
    procedure MOBS01Exit(Sender: TObject);
    procedure MOBS02Exit(Sender: TObject);
    procedure MOBS03Exit(Sender: TObject);
    procedure MOBS04Exit(Sender: TObject);
    procedure MOBS05Exit(Sender: TObject);
    procedure MOBS06Exit(Sender: TObject);
    procedure MOBS07Exit(Sender: TObject);
    procedure MOBS08Exit(Sender: TObject);
    procedure MOBS09Exit(Sender: TObject);
    procedure MOBS10Exit(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure STG_MPKeyPress(Sender: TObject; var Key: Char);
    procedure STG_MPExit(Sender: TObject);
    procedure STG_MPSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure STG_ETAGetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: String);
    procedure STG_ETASelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure STG_ETAExit(Sender: TObject);
    procedure STG_ETAKeyPress(Sender: TObject; var Key: Char);
    procedure STG_ETADrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STG_PPKeyPress(Sender: TObject; var Key: Char);
    procedure STG_PPExit(Sender: TObject);
    procedure STG_PPSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BBCONFIRMARClick(Sender: TObject);
    procedure bbImportarClick(Sender: TObject);
    procedure FAB_MCHAVEExit(Sender: TObject);
    procedure FAB_MDTFABRExit(Sender: TObject);
    procedure FAB_MDTVCTOExit(Sender: TObject);
    procedure FAB_MCODPROExit(Sender: TObject);
    procedure FAB_MQTDExit(Sender: TObject);
    procedure FAB_MPUExit(Sender: TObject);
    procedure FAB_MCHAVEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbBaixarMPClick(Sender: TObject);
    procedure bbExcluirMPClick(Sender: TObject);
    procedure bbCancelarMPClick(Sender: TObject);
    procedure bbEditarMPClick(Sender: TObject);
    procedure bbGravarMPClick(Sender: TObject);
    procedure CODIGOMPExit(Sender: TObject);
    procedure CODIGOMPKeyPress(Sender: TObject; var Key: Char);
    procedure GRADEMPExit(Sender: TObject);
    procedure LOTEMPExit(Sender: TObject);
    procedure LOTEMPKeyPress(Sender: TObject; var Key: Char);
    procedure DATAVMPExit(Sender: TObject);
    procedure QTDPREVMPExit(Sender: TObject);
    procedure QTDUTILMPExit(Sender: TObject);
    procedure PCOUNIMPExit(Sender: TObject);
    procedure LOTEMPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FAB_MCODPROKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FAB_MCHAVEKeyPress(Sender: TObject; var Key: Char);
  private
  mApresentaMensagem:Boolean;


  function fAvalidarMateriasPrimas: boolean;

  function fpmatprima(ptipo: Integer): Boolean;
  function fptotais(ptipo: Integer): Boolean;
  function fptestapag(ptipo: Integer): Boolean;
  function fpfab02testapag(ptipo: Integer): Boolean;
  function fpenvasetestapag(ptipo: Integer): Boolean;
    { Private declarations }
     function fpImprimirFab01(ptipo: Integer): Boolean;
     function fpImprimirFab02(ptipo: Integer): Boolean;
     function fpImprimirEnvase(ptipo: Integer): Boolean;
     function FImprimirTextos(pTexto: String;pcodpro_Empro,pCodPro,pCodemp: Real): Boolean;

     function fTestaEstoqueNegativo(pOrigem: Integer): Boolean;


  public
    { Public declarations }
    form_ind_comp02_indfab: tFrm_ind_Comp02;
    form_impres_ind_fab: TFrm_Impres;
    mjaEfetivou:Boolean;


   function fpexcluir(ptipo: Integer): Boolean;

   function fpconfirmar(ptipo: Integer): Boolean;


  end;

  function fifGravarOp03(ptipo: Integer;
                       pcodemp,pfabenv,plotseq,pcodigo,pseq,pcodmat,
                       pqtdprev,pqtdutil,ppu: Real;
                       pnumero,plote,pdtvcto: String): Boolean;

var
  Frm_Ind_Fab: TFrm_Ind_Fab;
  mInd_Fab_Origem: Integer;

  mlotseq: Integer;
  msitmp: Integer;
  mop_et: Integer=0;
  mop_mp: Integer=0;
  mtamtela: Integer=0;
  mtamtela_mp: Integer=0;
  mop: Integer=0;
  mqtd: Integer;
  mdtv: String='';
  moper: Integer=0;
  mstatus: Integer=0;
  mlin, mpag: Integer;
  meditar: Boolean=False;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  bbrel_true : Boolean=True;
  bbadic_true: Boolean=True;
  mTextoTemp : String;
  f: TextFile;


   mcolmp_codpro: Integer=0;
   mcolmp_grade: Integer=1;
   mcolmp_lote: integer=2;
   mcolmp_dtvcto: integer=3;
   mcolmp_qtdped: integer=4;
   mcolmp_qtdutil: integer=5;
   mcolmp_und: integer=6;
   mcolmp_descricao: integer=7;
   mcolmp_pcouni: integer=8;
   mcolmp_vlrtot: integer=9;

implementation

uses S_DM4, func_excecoes, S_ConsLot, s_Obs_Grid;

{$R *.dfm}

procedure TFrm_Ind_Fab.MDATAExit(Sender: TObject);
begin
if (BBSAIR.Focused) or (BBLIMPAR.Focused) then
   exit;
Try
  MDATA.Text:=FormatDateTime(fdt2, StrToDate(MDATA.Text));
  if StrToDate(MDATA.Text)<> date then
    begin
    fmensagem('Atenção a data preenchida difere a data atual!',0,['0'],0);
    end;
  if FormatDateTime('mmyyyy',StrToDate(MDATA.Text))<>FormatDateTime('mmyyyy',Date) then
    begin
    if (strtoint(FormatDateTime('yyyy',StrToDate(MDATA.Text)))>strtoint(FormatDateTime('yyyy',Date))+1) then
      begin
      Fmensagem('Data Invalida!',0,['0'],0);
      MDATA.SetFocus;
      Exit;
      end;
    end;
except
   Fmensagem('Data Invalida!',0,['0'],0);
   MDATA.SetFocus;
   end;

end;

procedure TFrm_Ind_Fab.MDATAPREVExit(Sender: TObject);
begin
if Trim(MDATAPREV.Text)<>'/  /' then
   begin
   Try
      MDATAPREV.Text:=FormatDateTime(fdt2, StrToDate(MDATAPREV.Text));
      if (StrtoDAte(MDATAPREV.Text)<date-30) or (StrtoDate(MDATAPREV.Text)>date+3650)  then
         begin
         fMensagem('Data '+MDATAPREV.Text+' fora do periodo esperado. Invalido!',0,['0'],0);
         MDATAPREV.Setfocus;
         end;
   Except
      Fmensagem('Data Prevista Invalida!',0,['0'],0);
      MDATAPREV.SetFocus;
      end;
   end;


end;

procedure TFrm_Ind_Fab.MNOMEExit(Sender: TObject);
begin
if not fvertam(MNOME.Text,60) then
   MNOME.SetFocus;
end;

procedure TFrm_Ind_Fab.MNUMLOTExit(Sender: TObject);
begin
if not fvertam(MNUMLOT.Text,20) then
   MNUMLOT.SetFocus;

end;

procedure TFrm_Ind_Fab.MDATAVENExit(Sender: TObject);
begin
if Trim(MDATAVEN.Text)<>'/  /' then
   begin
   Try
      MDATAVEN.Text:=FormatDateTime(fdt2, StrToDate(MDATAVEN.Text));
//      if (StrtoDAte(MDATAVEN.Text)<date-30) or (StrtoDate(MDATAVEN.Text)>date+3650)  then
      if (StrtoDAte(MDATAVEN.Text)<=date) or (StrtoDate(MDATAVEN.Text)>date+3650)  then
         begin
         fMensagem('Data '+MDATAVEN.Text+' fora do periodo esperado. Invalido!',0,['0'],0);
         MDATAVEN.Setfocus;
         end;

   Except
      Fmensagem('Data de Vencimento Invalida!',0,['0'],0);
      MDATAVEN.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_Fab.MCODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODPRO.Text:=fChamaPro(0,'Frm_Ind_Fab',key);
   key:=#0;
   DM1.Tb_Pro.Filtered:=False;
   end;
end;

procedure TFrm_Ind_Fab.MCODPROExit(Sender: TObject);
var
  x: Integer;
  qtd_sol: Real;
begin
if (PRO_CANCELAR.Focused) or (BBSAIR.Focused) or (BBLIMPAR.Focused) or (ValFloat(MCODPRO.Text)=0) then
   exit;
MCODPRO.Text:=fSeparaQtdCodpro(MCODPRO.Text,false);
qtd_sol:=pRet_Qtd;
pRet_Qtd:=1;
if not flcadpro(3,0,0,MCODPRO.Text) then
  begin
  if not flcadpro(1,0,0,MCODPRO.Text) then
     begin
     MCODPRO.Text:=FloatToStr(fAchaCodigoOri(MCODPRO.Text));
     end;
  end;

if not flcadpro(1,0,0,Trim(MCODPRO.Text)) then
   begin
   Fmensagem('Produto não Cadastrado!',0,['0'],0);
   MCODPRO.SetFocus;
   end
else
   begin
   MQTDPREV.Text:=FloatToStr(qtd_sol*pRet_Qtd);
   if mInd_Fab_Origem<>2 then
      begin
      if (DM1.Tb_ProPDNIVEL.Value<>4) and (DM1.Tb_ProPDNIVEL.Value<>3) then
         begin
         Fmensagem('Este não é um produto válido!',0,['0'],0);
         MCODPRO.SetFocus;
         exit;
         end;
      end;
   MNOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
   MUND.Text   :=DM1.Tb_ProPDUND.Value;
   if DM1.Tb_ProPDPCOFAB.Value>0 then
      MPU.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDPCOFAB.Value)
   else if DM1.Tb_ProPDPRECOC.Value>0 then
      MPU.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDPRECOC.Value)
   else
      MPU.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDPRECO1.Value);
   MTOTAL.Caption    :=FormatFloat(mcasas, ValFloat(MPU.Text)*ValFloat(MQTDPREV.Text));

   if ValInt(copy(mpseg,4,2))<>02 then  // grade cores tamanho
      begin
      if mInd_Fab_Origem<>2 then
         begin
         if not flcadcomp(0,-1,Trim(MCODPRO.Text),Trim(MGRADE.Text),'') then
            begin
            Fmensagem('Produto sem Formula de Fabricação, criar formula primeiro!',0,['0'],0);
            MCODPRO.SetFocus;
            exit;
            end;
         end;

      for x:=1 to STG_PP.RowCount-1 do
         begin
         if Trim(STG_PP.Cells[mcolmp_codpro,x])='' then
            continue;
         if (mop=1) and (x=mqtd) then
            Continue;
         if (trim(Mcodpro.Text)=trim(STG_PP.Cells[mcolmp_codpro,x])) then
            begin
            if fmensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
               begin
               STG_PP.Row:=x;
               mop:=1;
               MCODPRO.Text      :=STG_PP.Cells[mcolmp_codpro,STG_PP.Row];
               MGRADE.Text       :=STG_PP.Cells[mcolmp_grade,STG_PP.Row];
               MQTDPREV.Text     :=STG_PP.Cells[mcolmp_lote,STG_PP.Row];
               MUND.Text         :=STG_PP.Cells[mcolmp_dtvcto,STG_PP.Row];
               MNOMPRO.Text      :=STG_PP.Cells[mcolmp_qtdped,STG_PP.Row];
               MPU.Text          :=STG_PP.Cells[mcolmp_qtdutil,STG_PP.Row];
               MTOTAL.Caption    :=STG_PP.Cells[mcolmp_und,STG_PP.Row];
               MQTDPREV.Text     :=STG_PP.Cells[mcolmp_descricao,STG_PP.Row];
               MQTDPREV.Text     :=STG_PP.Cells[mcolmp_descricao,STG_PP.Row];
               FAB_MCHAVE.Text   :=STG_PP.Cells[mcolmp_pcouni,STG_PP.Row];
               FAB_MDTFABR.Text  :=STG_PP.Cells[mcolmp_vlrtot,STG_PP.Row];
               FAB_MLOTE.Text    :=STG_PP.Cells[10,STG_PP.Row];
               FAB_MDTVCTO.Text  :=STG_PP.Cells[11,STG_PP.Row];
               FAB_MCODPRO.Text  :=STG_PP.Cells[12,STG_PP.Row];
               FAB_MNOMPRO.Text  :=STG_PP.Cells[13,STG_PP.Row];
//               FAB_MUND.Text     :=STG_PP.Cells[14,STG_PP.Row];
               FAB_MQTD.Text     :=STG_PP.Cells[15,STG_PP.Row];
               FAB_MPU.Text      :=STG_PP.Cells[16,STG_PP.Row];
               FAB_MTOTAL.Caption:=STG_PP.Cells[17,STG_PP.Row];
               break;
               end
            else
               begin
               MCODPRO.Text:='';
               MCODPRO.SetFocus;
               break
               end;
            end;
         end;
      end;
   if mInd_Fab_Origem=2 then
      begin
      if flcadcomp02(0,fdeixanum(FAB_MCODPRO.Text),fdeixanum(MCODPRO.Text)) then
         begin
         if DM1.Tb_PargerPIND_TPFORMULA.Asinteger>1 then
            begin
            try
               MQTDPREV.Text:=FormatFloat(mcasind,
                                Arredonda(
                                ValFloat(FAB_MQTD.Text)
                                /DM1.Tb_ProPDQTDGRML.Value
                                ,0)
                                );
            except
               MQTDPREV.Text:=FormatFloat(mcasind, 0);
               end
            end
         else
            MQTDPREV.Text:=FormatFloat(mcasind, DM3.Tb_Comp02CP_MEDUND.Value*ValFloat(FAB_MQTD.Text));
         end;
      end;

   end;
end;

procedure TFrm_Ind_Fab.MGRADEExit(Sender: TObject);
var
x: Integer;
begin
if (Mcodpro.Focused) or (PRO_CANCELAR.Focused) then
   exit;

if Valint(copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   if not flcadlgc(0,1,0,Trim(MCODPRO.Text),MGRADE.Text,'') then
      begin
      Fmensagem('Grade não Cadastrada!',0,['0'],0);
      MCODPRO.SetFocus;
      exit;
      end;
   if mInd_Fab_Origem<>2 then
      begin
      if not flcadcomp(0,-1,Trim(MCODPRO.Text),Trim(MGRADE.Text),'') then
         begin
         if fmensagem(pchar('Produto sem Formula de Fabricação. Para Calculos Corretos '+chr(13)
                                  +'é necessário que a formula esteja cadastrada!'+#13
                                  +'Deseja Continuar mesmo assim?'),0,['1','2'],2)<>mrYes then
         MCODPRO.SetFocus;
         exit;
         end;
      end;

   for x:=1 to STG_PP.RowCount-1 do
      begin
      if Trim(STG_PP.Cells[mcolmp_codpro,x])='' then
         continue;
      if (mop=1) and (x=mqtd) then
         Continue;
      if (trim(Mcodpro.Text)=trim(STG_PP.Cells[mcolmp_codpro,x])) and
         (Trim(MGRADE.Text)=Trim(STG_PP.Cells[mcolmp_grade,x])) then
         begin
         if fmensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_PP.Row:=x;
            mop:=1;
            MCODPRO.Text      :=STG_PP.Cells[mcolmp_codpro,STG_PP.Row];
            MGRADE.Text       :=STG_PP.Cells[mcolmp_grade,STG_PP.Row];
            MQTDPREV.Text     :=STG_PP.Cells[mcolmp_lote,STG_PP.Row];
            MUND.Text         :=STG_PP.Cells[mcolmp_dtvcto,STG_PP.Row];
            MNOMPRO.Text      :=STG_PP.Cells[mcolmp_qtdped,STG_PP.Row];
            MPU.Text          :=STG_PP.Cells[mcolmp_qtdutil,STG_PP.Row];
            MTOTAL.Caption    :=STG_PP.Cells[mcolmp_und,STG_PP.Row];
            MQTDPREV.Text     :=STG_PP.Cells[mcolmp_descricao,STG_PP.Row];
            FAB_MCHAVE.Text   :=STG_PP.Cells[mcolmp_pcouni,STG_PP.Row];
            FAB_MDTFABR.Text  :=STG_PP.Cells[mcolmp_vlrtot,STG_PP.Row];
            FAB_MLOTE.Text    :=STG_PP.Cells[10,STG_PP.Row];
            FAB_MDTVCTO.Text  :=STG_PP.Cells[11,STG_PP.Row];
            FAB_MCODPRO.Text  :=STG_PP.Cells[12,STG_PP.Row];
            FAB_MNOMPRO.Text  :=STG_PP.Cells[13,STG_PP.Row];
//            FAB_MUND.Text     :=STG_PP.Cells[14,STG_PP.Row];
            FAB_MQTD.Text     :=STG_PP.Cells[15,STG_PP.Row];
            FAB_MPU.Text      :=STG_PP.Cells[16,STG_PP.Row];
            FAB_MTOTAL.Caption:=STG_PP.Cells[17,STG_PP.Row];
            break;
            end
         else
            begin
            MCODPRO.Text:='';
            MCODPRO.SetFocus;
            break
            end;
         end;
      end;
   end;
end;

procedure TFrm_Ind_Fab.MQTDPREVExit(Sender: TObject);
begin
if (MGRADE.Focused) or (MCODPRO.Focused) or (PRO_CANCELAR.Focused) then
   exit;
if ValFloat(MQTDPREV.Text)<=0 then
   begin
   Fmensagem('Favor digitar uma quantidade válida!',0,['0'],0);
   MQTDPREV.SetFocus;
   exit;
   end;
MQTDPREV.Text:=FormatFloat(mcasind, ValFloat(MQTDPREV.Text));
MTOTAL.Caption    :=FormatFloat(mcasas, ValFloat(MPU.Text)*ValFloat(MQTDPREV.Text));

end;

procedure TFrm_Ind_Fab.MPUExit(Sender: TObject);
begin
MPU.Text       :=FormatFloat(mcaspuind, ValFloat(MPU.Text));
MTOTAL.Caption :=FormatFloat(mcasas, ValFloat(MPU.Text)*ValFloat(MQTDPREV.Text));

end;

procedure TFrm_Ind_Fab.PRO_GRAVARClick(Sender: TObject);
begin
if not flcadpro(1,0,0,Trim(MCODPRO.Text)) then
   begin
   Fmensagem('Produto não Cadastrado!',0,['0'],0);
   MCODPRO.SetFocus;
   end
else
   begin
   if mInd_Fab_Origem<>2 then
      begin
      if (DM1.Tb_ProPDNIVEL.Value<>4) and (DM1.Tb_ProPDNIVEL.Value<>3) then
         begin
         Fmensagem('Este não é um produto válido!',0,['0'],0);
         MCODPRO.SetFocus;
         exit;
         end;
      end;
   end;
if ((mInd_Fab_Origem=1) or  (mInd_Fab_Origem=3)) and (Trim(MNUMLOT.Text)='') then
   begin
   flcadpar01(0,codemp,'1');
   MNUMLOT.Text:=DM4.Tb_Par01PCHAVFAB.AsString;
   if (Trim(MDATAVEN.Text)='/  /') and (DM1.Tb_ProPDPRZVAL.Value>0) then
      begin
      if Trim(MDATAPREV.Text)='/  /' then
         MDATAVEN.Text:=FormatDatetime(fdt2, fdatafinal(DM1.Tb_ProPDPRZVAL.AsInteger, date))
      else
         MDATAVEN.Text:=FormatDatetime(fdt2, fdatafinal(DM1.Tb_ProPDPRZVAL.AsInteger, StrTodate(MDATAPREV.Text)));
      end;
   end
else if (mInd_Fab_Origem=2) and (Trim(MNUMLOT.Text)='') then
   begin
   MDATAVEN.Text:=FAB_MDTVCTO.Text;
   MNUMLOT.Text :=FAB_MLOTE.Text;
   end;

if (ValFloat(MCODPRO.Text)<=0) or (Trim(MNOMPRO.Text)='') then
   begin
   Fmensagem('Favor Digitar um código Valido',0,['0'],0);
   MCODPRO.Text;
   exit;
   end;
if ValFloat(MQTDPREV.Text)<=0 then
   begin
   Fmensagem('Favor Digitar uma Quantidade Valida!',0,['0'],0);
   MQTDPREV.SetFocus;
   exit;
   end;
if mop>0 then
   begin
   mqtd:=STG_PP.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG_PP.RowCount;
   STG_PP.RowCount:=mqtd+1;
   STG_PP.Rows[mqtd+1].Clear;
   STG_PP.Rows[mqtd].Clear;
   end;
STG_PP.Cells[mcolmp_codpro,mqtd-1]:=MCODPRO.Text;
STG_PP.Cells[mcolmp_grade,mqtd-1]:=MGRADE.Text;
STG_PP.Cells[mcolmp_lote,mqtd-1]:=MQTDPREV.Text;
STG_PP.Cells[mcolmp_dtvcto,mqtd-1]:=MUND.Text;
STG_PP.Cells[mcolmp_qtdped,mqtd-1]:=MNOMPRO.Text;
STG_PP.Cells[mcolmp_qtdutil,mqtd-1]:=MPU.Text;
STG_PP.Cells[mcolmp_und,mqtd-1]:=MTOTAL.Caption;
STG_PP.Cells[mcolmp_descricao,mqtd-1]:=MQTDPREV.Text;


if (mInd_Fab_Origem=2)  then
   begin
   if not flcadcomp(0,-1,FAB_MCODPRO.Text,'',MCODPRO.Text) then
      flcadcomp(0,-1,'','',MCODPRO.Text);
   if not DM3.Tb_Comp.isEmpty then
      begin
      if valfloat(FAB_MCODPRO.Text)<>DM3.Tb_CompCPCODPRO.AsFloat then
         begin
         FAB_MCODPRO.Text:=DM3.Tb_CompCPCODPRO.AsString;
         if flqr1('PDNOME,PDUND,PDCODPROC','PD','CADPRO','N','PDCODPRO',DM3.Tb_CompCPCODPRO.AsString) then
            begin
            FAB_MNOMPRO.Text:=DM1.Query1.fields[0].AsString;
//            FAB_MUND.Text   :=DM1.Query1.fields[1].AsString;
            end;
         end;
      end;
   if (not DM1.Tb_Pro.Active) or (valfloat(MCODPRO.Text)<>DM1.Tb_ProPDCODPRO.AsFloat) then
      flcadpro(1,0,0,Trim(MCODPRO.Text));
   FAB_MQTD.Text :=FormatFloat(mcasind, ValFloat(MQTDPREV.Text)*DM1.Tb_ProPDQTDGRML.Asfloat);
   end;


STG_PP.Cells[mcolmp_pcouni,mqtd-1]:=FAB_MCHAVE.Text;
STG_PP.Cells[mcolmp_vlrtot,mqtd-1]:=FAB_MDTFABR.Text;
STG_PP.Cells[10,mqtd-1]:=FAB_MLOTE.Text;
STG_PP.Cells[11,mqtd-1]:=FAB_MDTVCTO.Text;
STG_PP.Cells[12,mqtd-1]:=FAB_MCODPRO.Text;
STG_PP.Cells[13,mqtd-1]:=FAB_MNOMPRO.Text;
//STG_PP.Cells[14,mqtd-1]:=FAB_MUND.Text;
STG_PP.Cells[15,mqtd-1]:=FAB_MQTD.Text;
STG_PP.Cells[16,mqtd-1]:=FAB_MPU.Text;
STG_PP.Cells[17,mqtd-1]:=FAB_MTOTAL.Caption;
if (Trim(MDATAVEN.Text)='/  /') and (Trim(MDATAPREV.Text)<>'/  /') and (DM1.Tb_ProPDPRZVAL.Value>0) then
   MDATAVEN.Text:=FormatDateTime(fdt2, fdatafinal(DM1.Tb_ProPDPRZVAL.AsInteger,StrtoDate(MDATAPREV.Text)));
if (mop=0) and (mqtd>mtamtela) then
   STG_PP.TopRow:=mqtd-(mtamtela-1);
mop:=0;
fpmatprima(0);
fptotais(0);
MCODPRO.Text      :='';
MGRADE.Text       :='';
MQTDPREV.Text     :='';
MUND.Text         :='';
MNOMPRO.Text      :='';
MPU.Text          :='';
MTOTAL.Caption    :='';
MQTDPREV.Text     :='';
FAB_MCHAVE.Text   :='';
FAB_MDTFABR.Text  :='/  /';
FAB_MLOTE.Text    :='';
FAB_MDTVCTO.Text  :='/  /';
FAB_MCODPRO.Text  :='';
FAB_MNOMPRO.Text  :='';
//FAB_MUND.Text     :='';
FAB_MQTD.Text     :='';
FAB_MPU.Text      :='';
FAB_MTOTAL.Caption:='';
MCODPRO.SetFocus;

end;

procedure TFrm_Ind_Fab.STG_PPDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
//  colunas: String;
begin
if (arow>0) and (ACOL=7)  then
   begin
   if valFloat(STG_PP.Cells[mcolmp_codpro,arow])>0 then
      begin
      STG_PP.Canvas.Brush.Color:=clLime;
      STG_PP.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_PP.Cells[acol,arow]);
      end;
   end;
if ((aCol=0) or (Acol=2) or  (Acol=5) or (Acol=6) or (Acol=7) or (Acol=8) or (Acol=12)
   or (Acol=15) or (Acol=16) or (Acol=17))  then
   begin

//Pega o texto da célula
  Texto := STG_PP.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_PP.Canvas.TextWidth(Texto);
  AlturaTexto := STG_PP.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_PP.Canvas.TextRect(Rect, X, Y, Texto);
  end;

end;

procedure TFrm_Ind_Fab.STG_MPDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
//  colunas: String;
begin


if (arow>0) and (ACOL=5)  then
   begin
   if valFloat(STG_MP.Cells[0,arow])>0 then
      begin
      STG_MP.Canvas.Brush.Color:=clLime;
      STG_MP.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_MP.Cells[acol,arow]);
      end;
   end;


if ((aCol=0) or (Acol=4) or  (Acol=8) or (Acol=9) or (Acol=5)) then
   begin

//Pega o texto da célula
  Texto := STG_MP.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_MP.Canvas.TextWidth(Texto);
  AlturaTexto := STG_MP.Canvas.TextHeight(Texto);

// Direita
    X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_MP.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_Ind_Fab.PRO_EDITARClick(Sender: TObject);
begin
mop :=1;
mqtd:=STG_PP.Row;
MCODPRO.Text      :=STG_PP.Cells[mcolmp_codpro,STG_PP.Row];
MGRADE.Text       :=STG_PP.Cells[mcolmp_grade,STG_PP.Row];
MQTDPREV.Text     :=STG_PP.Cells[mcolmp_lote,STG_PP.Row];
MUND.Text         :=STG_PP.Cells[mcolmp_dtvcto,STG_PP.Row];
MNOMPRO.Text      :=STG_PP.Cells[mcolmp_qtdped,STG_PP.Row];
MPU.Text          :=STG_PP.Cells[mcolmp_qtdutil,STG_PP.Row];
MTOTAL.Caption    :=STG_PP.Cells[mcolmp_und,STG_PP.Row];
MQTDPREV.Text     :=STG_PP.Cells[mcolmp_descricao,STG_PP.Row];
FAB_MCHAVE.Text   :=STG_PP.Cells[mcolmp_pcouni,STG_PP.Row];
FAB_MDTFABR.Text  :=STG_PP.Cells[mcolmp_vlrtot,STG_PP.Row];
FAB_MLOTE.Text    :=STG_PP.Cells[10,STG_PP.Row];
FAB_MDTVCTO.Text  :=STG_PP.Cells[11,STG_PP.Row];
FAB_MCODPRO.Text  :=STG_PP.Cells[12,STG_PP.Row];
FAB_MNOMPRO.Text  :=STG_PP.Cells[13,STG_PP.Row];
//FAB_MUND.Text     :=STG_PP.Cells[14,STG_PP.Row];
FAB_MQTD.Text     :=STG_PP.Cells[15,STG_PP.Row];
FAB_MPU.Text      :=STG_PP.Cells[16,STG_PP.Row];
FAB_MTOTAL.Caption:=STG_PP.Cells[17,STG_PP.Row];
MCODPRO.SetFocus;
end;

function TFrm_Ind_Fab.fpmatprima(ptipo: Integer): Boolean;
var
x,y: Integer;
mitem: Integer;
mQtdPad,mqtde, mqtdp: Real;
begin
STG_MP.RowCount:=2;
STG_MP.Rows[1].Clear;
for y:=1 to STG_PP.RowCount do
   begin
   if Trim(STG_PP.Cells[mcolmp_codpro,y])='' then
      Continue;
//   if mInd_Fab_Origem=0 then
   if (mInd_Fab_Origem=0) or (mInd_Fab_Origem=3)  then
      flcadcomp(0,-1,Trim(STG_PP.Cells[mcolmp_codpro,y]),'','')
//      flcadcomp(0,-1,Trim(STG_PP.Cells[mcolmp_codpro,y]),Trim(STG_PP.Cells[mcolmp_grade,y]),'')
   else if (mInd_Fab_Origem=1)  then
//      flcadcomp(0,-1,Trim(STG_PP.Cells[mcolmp_codpro,y]),Trim(STG_PP.Cells[mcolmp_grade,y]),'0')
      flcadcomp(0,-1,Trim(STG_PP.Cells[mcolmp_codpro,y]),'','0')
   else if mInd_Fab_Origem=2 then
      flcadcomp(0,-1,Trim(STG_PP.Cells[12,y]),'',Trim(STG_PP.Cells[mcolmp_codpro,y]));
//      flcadcomp(0,-1,Trim(STG_PP.Cells[12,y]),''Trim(STG_PP.Cells[mcolmp_grade,y]),Trim(STG_PP.Cells[mcolmp_codpro,y]));
   if DM1.Tb_PargerPMPDISP.Value=1 then
      begin
      While not DM3.Tb_Comp.Eof do
         begin
         mitem:=0;
         mqtde:=0;
         flqr2('PDNOME,PDUND,PDPRECO1,PDQTDGRML,PDPCOFAB,PDPRECOC','PD','CADPRO','N','PDCODPRO',DM3.Tb_CompCPCODMAT.AsString);
         if DM3.Tb_CompCPTIPO.Value=2 then
            mqtdp:=Arredonda(
                    (DM3.Tb_CompCPQUANT.Value*(ValFloat(STG_PP.Cells[mcolmp_lote,y])/DM3.Tb_CompCPQTD_PAD.AsFloat))
                              , DM1.Tb_PargerPCASIND.AsInteger)
         else if DM3.Tb_CompCPTIPO.Value=1 then
            mqtdp:=Arredonda( (DM3.Tb_CompCPQUANT.Value*(ValFloat(STG_PP.Cells[mcolmp_lote,y]))), DM1.Tb_PargerPCASIND.AsInteger)
         else if mInd_Fab_Origem=3 then
            begin
            flqr1('PDNOME,PDUND,PDPRECO1,PDQTDGRML,PDPCOFAB,PDPRECOC','PD','CADPRO','N','PDCODPRO',Trim(STG_PP.Cells[mcolmp_codpro,y]));
            mQtdPad:=Arredonda(DM1.Query1.FieldbyName('PDQTDGRML').AsFloat*ValFloat(STG_PP.Cells[mcolmp_lote,y]),DM1.Tb_PargerPCASIND.AsInteger);
            mqtdp:=Arredonda( (mQtdPad*DM3.Tb_CompCPPERCENT_REST.Value/100), DM1.Tb_PargerPCASIND.AsInteger);
            end
         else
            begin
            if DM1.Tb_PargerPIND_TPFORMULA.AsInteger>0 then
               begin
               flqr1('PDNOME,PDUND,PDPRECO1,PDQTDGRML,PDPCOFAB,PDPRECOC','PD','CADPRO','N','PDCODPRO',Trim(STG_PP.Cells[mcolmp_codpro,y]));
               mQtdPad:=Arredonda(DM1.Query1.FieldbyName('PDQTDGRML').AsFloat*ValFloat(STG_PP.Cells[mcolmp_lote,y]),DM1.Tb_PargerPCASIND.AsInteger);
               mqtdp:=Arredonda( (mQtdPad*DM3.Tb_CompCPPERCENT_REST.Value/100), DM1.Tb_PargerPCASIND.AsInteger);
               end
            else
               mqtdp:=(DM3.Tb_CompCPQUANT.Value*ValFloat(STG_PP.Cells[mcolmp_lote,y]));
            end;
         flcadlgc(0,0,codemp,DM3.Tb_CompCPCODMAT.AsString,'','');
         While not (DM1.Tb_LGC.Eof) and (mqtdp>0) do
            begin
            if DM1.Tb_LGCCLQTD.Value<=0 then
               begin
               DM1.Tb_LGC.Next;
               Continue;
               end;
            if DM1.Tb_LGCCLDTVCTO.Value<=pdatanula then
               mdtv:='/  /'
            else
               mdtv:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
            if DM1.Tb_LGCCLQTD.Value<mqtdp then
               mqtde:=DM1.Tb_LGCCLQTD.Value
            else
               mqtde:=mqtdp;
            mitem:=0;
            for x:=1 to STG_MP.RowCount do
               begin
               if (ValFloat(STG_MP.Cells[0,x])=DM1.Tb_LGCCLCODPRO.Value) and
                  (Trim(STG_MP.Cells[2,x])=Trim(DM1.Tb_LGCCLNUMERO.AsString)) and
                  (Trim(STG_MP.Cells[3,x])=Trim(mdtv)) then
                  begin
                  mitem:=x;
                  STG_MP.Cells[00,x]:=DM3.Tb_CompCPCODMAT.AsString;
                  STG_MP.Cells[01,x]:=DM3.Tb_CompCPMPNUM.AsString;
                  STG_MP.Cells[06,x]:=DM1.Query2.FieldbyName('PDUND').AsString;
                  STG_MP.Cells[07,x]:=DM1.Query2.FieldBYnAME('PDNOME').AsString;

                  if DM1.Query2.FieldbyName('PDPCOFAB').AsFloat>0 then
                     STG_MP.Cells[08,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPCOFAB').AsFloat)
                  else if DM1.Query2.FieldbyName('PDPRECOC').AsFloat>0 then
                     STG_MP.Cells[08,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECOC').AsFloat)
                  else
                     STG_MP.Cells[08,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECO1').AsFloat);
                  STG_MP.Cells[02,x]:=DM1.Tb_LGCCLNUMERO.Value;
                  STG_MP.Cells[03,x]:=mdtv;
                  STG_MP.Cells[04,x]:=FormatFloat(mcasind, ValFloat(STG_MP.Cells[04,x])+mqtde);
                  STG_MP.Cells[05,x]:=STG_MP.Cells[04,x];
                  STG_MP.Cells[09,x]:=Formatfloat(mcasas, ValFloat(STG_MP.Cells[04,x])*ValFloat(STG_MP.Cells[08,x]));
                  mqtdp:=mqtdp-mqtde;
                  break;
                  end;
               end;
            if mitem=0 then
               begin
               x:=STG_MP.RowCount;
               STG_MP.RowCount:=x+1;
               STG_MP.Rows[x].Clear;
               STG_MP.Rows[x+1].Clear;
               x:=x-1;
               STG_MP.Cells[00,x]:=DM3.Tb_CompCPCODMAT.AsString;
               STG_MP.Cells[01,x]:=DM3.Tb_CompCPMPNUM.AsString;

               STG_MP.Cells[06,x]:=DM1.Query2.FieldbyName('PDUND').AsString;
               STG_MP.Cells[07,x]:=DM1.Query2.FieldBYnAME('PDNOME').AsString;

               if DM1.Query2.FieldbyName('PDPCOFAB').AsFloat>0 then
                  STG_MP.Cells[08,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPCOFAB').AsFloat)
               else if DM1.Query2.FieldbyName('PDPRECOC').AsFloat>0 then
                  STG_MP.Cells[08,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECOC').AsFloat)
               else
                  STG_MP.Cells[08,x]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECO1').AsFloat);

               STG_MP.Cells[02,x]:=DM1.Tb_LGCCLNUMERO.Value;
               STG_MP.Cells[03,x]:=mdtv;
               STG_MP.Cells[04,x]:=FormatFloat(mcasind, ValFloat(STG_MP.Cells[04,x])+mqtde);
               STG_MP.Cells[05,x]:=STG_MP.Cells[04,x];
               STG_MP.Cells[09,x]:=Formatfloat(mcasas, ValFloat(STG_MP.Cells[04,x])*ValFloat(STG_MP.Cells[08,x]));
               mqtdp:=mqtdp-mqtde;
               end;
            DM1.Tb_LGC.Next;
            end;
         if mqtdp>0 then
            begin
            mqtde:=mqtdp;
            mitem:=STG_MP.RowCount;
            STG_MP.RowCount:=mitem+1;
            STG_MP.Rows[mitem].Clear;
            STG_MP.Rows[mitem+1].Clear;
            STG_MP.Cells[00,mitem-1]:=DM3.Tb_CompCPCODMAT.AsString;
            STG_MP.Cells[01,mitem-1]:=DM3.Tb_CompCPMPNUM.AsString;
            STG_MP.Cells[06,mitem-1]:=DM1.Query2.FieldbyName('PDUND').AsString;
            STG_MP.Cells[07,mitem-1]:=DM1.Query2.FieldBYnAME('PDNOME').AsString;
            if DM1.Query2.FieldbyName('PDPCOFAB').AsFloat>0 then
               STG_MP.Cells[08,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPCOFAB').AsFloat)
            else if DM1.Query2.FieldbyName('PDPRECOC').AsFloat>0 then
               STG_MP.Cells[08,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECOC').AsFloat)
            else
               STG_MP.Cells[08,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECO1').AsFloat);
            STG_MP.Cells[02,mitem-1]:='';
            STG_MP.Cells[03,mitem-1]:='/  /';
            STG_MP.Cells[04,mitem-1]:=FormatFloat(mcasind, ValFloat(STG_MP.Cells[04,mitem-1])+mqtde);
            STG_MP.Cells[05,mitem-1]:=STG_MP.Cells[04,mitem-1];
            STG_MP.Cells[09,mitem-1]:=Formatfloat(mcasas, ValFloat(STG_MP.Cells[04,mitem-1])*ValFloat(STG_MP.Cells[08,mitem-1]));

            mqtdp:=mqtdp-mqtde;
            end;
         DM3.Tb_Comp.Next;
         end;
      end
   else
      begin
      While not DM3.Tb_Comp.Eof do
         begin
         mitem:=0;
         for x:=1 to STG_MP.RowCount do
            begin
            if (ValFloat(STG_MP.Cells[0,x])=DM3.Tb_CompCPCODMAT.Value) and
               (Trim(STG_MP.Cells[1,x])=Trim(DM3.Tb_CompCPMPNUM.AsString)) then
               begin
               mitem:=x;
               break;
               end;
            end;
         if mitem=0 then
            begin
            mitem:=STG_MP.RowCount;
            STG_MP.RowCount:=mitem+1;
            STG_MP.Rows[mitem].Clear;
            STG_MP.Rows[mitem+1].Clear;
            end
         else
            mitem:=mitem+1;
         flqr2('PDNOME,PDUND,PDPRECO1,PDQTDGRML,PDPCOFAB,PDPRECOC','PD','CADPRO','N','PDCODPRO',DM3.Tb_CompCPCODMAT.AsString);

         if DM3.Tb_CompCPTIPO.Value=2 then
            mqtdp:=Arredonda( (DM3.Tb_CompCPQUANT.Value*(ValFloat(STG_PP.Cells[mcolmp_lote,y])/DM3.Tb_CompCPQTD_PAD.AsFloat)), DM1.Tb_PargerPCASIND.AsInteger)
         else if DM3.Tb_CompCPTIPO.Value=1 then
            mqtdp:=Arredonda( (DM3.Tb_CompCPQUANT.Value*(ValFloat(STG_PP.Cells[mcolmp_lote,y]))), DM1.Tb_PargerPCASIND.AsInteger)
         else if mInd_Fab_Origem=3 then
            begin
            mQtdPad:=Arredonda(DM1.Query2.FieldbyName('PDQTDGRML').AsFloat*ValFloat(STG_PP.Cells[mcolmp_lote,y]),DM1.Tb_PargerPCASIND.AsInteger);
            mqtdp:=Arredonda( (mQtdPad*DM3.Tb_CompCPPERCENT_REST.Value/100), DM1.Tb_PargerPCASIND.AsInteger);
            end
         else
            mqtdp:=(DM3.Tb_CompCPQUANT.Value*ValFloat(STG_PP.Cells[mcolmp_lote,y]));
         STG_MP.Cells[00,mitem-1]:=DM3.Tb_CompCPCODMAT.AsString;
         STG_MP.Cells[01,mitem-1]:=DM3.Tb_CompCPMPNUM.AsString;


         STG_MP.Cells[06,mitem-1]:=DM1.Query2.FieldbyName('PDUND').AsString;
         STG_MP.Cells[07,mitem-1]:=DM1.Query2.FieldBYnAME('PDNOME').AsString;

         if DM1.Query2.FieldbyName('PDPCOFAB').AsFloat>0 then
            STG_MP.Cells[08,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPCOFAB').AsFloat)
         else if DM1.Query2.FieldbyName('PDPRECOC').AsFloat>0 then
            STG_MP.Cells[08,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECOC').AsFloat)
         else
            STG_MP.Cells[08,mitem-1]:=FormatFloat(mcaspuind, DM1.Query2.FieldbyName('PDPRECO1').AsFloat);

         STG_MP.Cells[02,mitem-1]:='';
         STG_MP.Cells[03,mitem-1]:='/  /';


         STG_MP.Cells[04,mitem-1]:=FormatFloat(mcasind, ValFloat(STG_MP.Cells[04,mitem-1])
                                  +mqtdp);
         STG_MP.Cells[05,mitem-1]:=STG_MP.Cells[04,mitem-1];
         STG_MP.Cells[09,mitem-1]:=Formatfloat(mcasas, ValFloat(STG_MP.Cells[04,mitem-1])*ValFloat(STG_MP.Cells[08,mitem-1]));
         DM3.Tb_Comp.Next;
         end;
      end;
   end;



result:=True;
end;
procedure TFrm_Ind_Fab.BBSAIRClick(Sender: TObject);
begin
close;
end;

function TFrm_Ind_Fab.fptotais(ptipo: Integer): Boolean;
var
y: Integer;
mqtdp,mqtdr: Real;
mtotalp,mtotalr: Real;
begin
mqtdp:=0;
mqtdr:=0;
mtotalp:=0;
mtotalr:=0;
for y:=1 to STG_PP.RowCount-1 do
   begin
   if Trim(STG_PP.Cells[mcolmp_codpro,y])='' then
      Continue;
   mtotalp:=mtotalp+ValFloat(STG_PP.Cells[mcolmp_und,y]);
   mtotalr:=mtotalr+ValFloat(STG_PP.Cells[mcolmp_descricao,y])*ValFloat(STG_PP.Cells[mcolmp_qtdutil,y]);
   mqtdp:=mqtdp+ValFloat(STG_PP.Cells[mcolmp_lote,y]);
   mqtdr:=mqtdr+ValFloat(STG_PP.Cells[mcolmp_descricao,y]);
   end;
MITENSPPREV.Caption:=IntToStr(STG_PP.RowCount-2);
MQTDPPREV.Caption   :=FormatFloat(mcasind, mqtdp);
MTOTPPREV.Caption  :=FormatFloat(mcasas, mtotalp);
MITENSPREAL.Caption:=MITENSPPREV.Caption;
MQTDPREAL.Caption  :=FormatFloat(mcasind, mqtdr);
MTOTPREAL.Caption  :=FormatFloat(mcasas, mtotalr);

mqtdp:=0;
mqtdr:=0;
mtotalp:=0;
mtotalr:=0;
for y:=1 to STG_MP.RowCount-1 do
   begin
   if Trim(STG_MP.Cells[0,y])='' then
      Continue;
   mtotalp:=mtotalp+ValFloat(STG_MP.cells[9,y]);
   mtotalr:=mtotalr+ValFloat(STG_MP.Cells[5,y])*ValFloat(STG_MP.Cells[8,y]);
   mqtdp:=mqtdp+ValFloat(STG_MP.Cells[4,y]);
   mqtdr:=mqtdr+ValFloat(STG_MP.Cells[5,y]);
   end;
MITENSMPPREV.Caption:=IntToStr(STG_MP.RowCount-2);
MQTDMPPREV.Caption  :=FormatFloat(mcasind, mqtdp);
MTOTMPPREV.Caption  :=FormatFloat(mcasas, mtotalp);
MITENSMPREAL.Caption:=MITENSMPPREV.Caption;
MQTDMPREAL.Caption  :=FormatFloat(mcasind, mqtdr);
MTOTMPREAL.Caption  :=FormatFloat(mcasas, mtotalr);
MTOTMPREAL.Caption  :=TrimRight(MTOTMPREAL.Caption);
result:=true;
end;

procedure TFrm_Ind_Fab.ET_NOMETAExit(Sender: TObject);
begin
if not fvertam(ET_NOMETA.Text,40) then
   ET_NOMETA.SetFocus;

end;

procedure TFrm_Ind_Fab.ET_NOMEExit(Sender: TObject);
begin
if not fvertam(ET_NOME.Text,40) then
   ET_NOME.SetFocus;

end;

procedure TFrm_Ind_Fab.ET_DATAIExit(Sender: TObject);
begin
if Trim(ET_DATAI.Text)<>'/  /' then
   begin
   Try
      ET_DATAI.Text:=FormatDateTime(fdt2, StrToDate(ET_DATAI.Text));
   Except
      Fmensagem('Data Invalida!',0,['0'],0);
      ET_DATAI.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_Fab.ET_DATAFExit(Sender: TObject);
begin
if Trim(ET_DATAF.Text)<>'/  /' then
   begin
   Try
      ET_DATAF.Text:=FormatDateTime(fdt2, StrToDate(ET_DATAF.Text));
   Except
      Fmensagem('Data Invalida!',0,['0'],0);
      ET_DATAF.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_Fab.ET_HORAIExit(Sender: TObject);
begin
if Trim(ET_HORAI.Text)<>':  :' then
   begin
   Try
      ET_HORAI.Text:=FormatDateTime(fhr, StrToTime(ET_HORAI.Text));
   Except
      Fmensagem('Hora Invalida!',0,['0'],0);
      ET_HORAI.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_Fab.ET_HORAFExit(Sender: TObject);
begin
if Trim(ET_HORAF.Text)<>':  :' then
   begin
   Try
      ET_HORAF.Text:=FormatDateTime(fhr, StrToTime(ET_HORAF.Text));
   Except
      Fmensagem('Hora Invalida!',0,['0'],0);
      ET_HORAF.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_Fab.ET_EDITARClick(Sender: TObject);
begin
mop_et:=1;
mqtd :=STG_ETA.Row;

ET_NOMETA.Text:=STG_ETA.Cells[0,mqtd-1];
ET_NOME.Text  :=STG_ETA.Cells[1,mqtd-1];
ET_DATAI.Text :=STG_ETA.Cells[2,mqtd-1];
ET_HORAI.Text :=STG_ETA.Cells[3,mqtd-1];
ET_DATAF.Text :=STG_ETA.Cells[4,mqtd-1];
ET_HORAF.Text :=STG_ETA.Cells[5,mqtd-1];
ET_NOMETA.SetFocus;

end;

procedure TFrm_Ind_Fab.ET_GRAVARClick(Sender: TObject);
begin
if Trim(ET_NOMETA.Text)='' then
   begin
   Fmensagem('Descrição da Etapa campo Obrigatório!',0,['0'],0);
   ET_NOMETA.SetFocus;
   exit;
   end;
if Trim(ET_NOME.Text)='' then
   begin
   Fmensagem('Nome da Pessoa Responsável campo Obrigatório!',0,['0'],0);
   ET_NOME.SetFocus;
   exit;
   end;
if Trim(ET_DATAI.Text)='/  /' then
   begin
   Fmensagem('Data de Inicio do Processo campo Obrigatório!',0,['0'],0);
   ET_DATAI.SetFocus;
   exit;
   end;
if mop>0 then
   begin
   mqtd:=STG_ETA.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG_ETA.RowCount;
   STG_ETA.RowCount:=mqtd+1;
   STG_ETA.Rows[mqtd+1].Clear;
   STG_ETA.Rows[mqtd].Clear;
   end;

STG_ETA.Cells[0,mqtd-1]:=ET_NOMETA.Text;
STG_ETA.Cells[1,mqtd-1]:=ET_NOME.Text;
STG_ETA.Cells[2,mqtd-1]:=ET_DATAI.Text;
STG_ETA.Cells[3,mqtd-1]:=ET_HORAI.Text;
STG_ETA.Cells[4,mqtd-1]:=ET_DATAF.Text;
STG_ETA.Cells[5,mqtd-1]:=ET_HORAF.Text;
if (mop_et=0) and (mqtd>12) then
   STG_ETA.TopRow:=mqtd-11;
mop_et:=0;
ET_NOMETA.Text :='';
ET_NOME.Text   :='';
ET_DATAI.Text  :='';
ET_HORAI.Text  :='';
ET_DATAF.Text  :='';
ET_HORAF.Text  :='';

ET_NOMETA.SetFocus;


end;

procedure TFrm_Ind_Fab.PRO_CANCELARClick(Sender: TObject);
begin
mop:=0;
MCODPRO.Text  :='';
MGRADE.Text   :='';
MQTDPREV.Text :='';
MUND.Text     :='';
MNOMPRO.Text  :='';
MPU.Text      :='';
MTOTAL.Caption:='';
MQTDPREV.Text :='';
FAB_MCHAVE.Text   :='';
FAB_MDTFABR.Text  :='/  /';
FAB_MLOTE.Text    :='';
FAB_MDTVCTO.Text  :='/  /';
FAB_MCODPRO.Text  :='';
FAB_MNOMPRO.Text  :='';
//FAB_MUND.Text     :='';
FAB_MQTD.Text     :='';
FAB_MPU.Text      :='';
FAB_MTOTAL.Caption:='';

end;

procedure TFrm_Ind_Fab.PRO_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG_PP.Row;

if (STG_PP.Cells[mcolmp_codpro,1]='') or (STG_PP.Cells[mcolmp_codpro,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_PP.RowCount=2 then
   STG_PP.Rows[1].Clear
else
   begin
   for x:=STG_PP.Row to STG_PP.RowCount-2 do
      begin
      STG_PP.Cells[mcolmp_codpro,x]:=STG_PP.Cells[mcolmp_codpro,x+1];
      STG_PP.Cells[mcolmp_grade,x]:=STG_PP.Cells[mcolmp_grade,x+1];
      STG_PP.Cells[mcolmp_lote,x]:=STG_PP.Cells[mcolmp_lote,x+1];
      STG_PP.Cells[mcolmp_dtvcto,x]:=STG_PP.Cells[mcolmp_dtvcto,x+1];
      STG_PP.Cells[mcolmp_qtdped,x]:=STG_PP.Cells[mcolmp_qtdped,x+1];
      STG_PP.Cells[mcolmp_qtdutil,x]:=STG_PP.Cells[mcolmp_qtdutil,x+1];
      STG_PP.Cells[mcolmp_und,x]:=STG_PP.Cells[mcolmp_und,x+1];
      STG_PP.Cells[mcolmp_descricao,x]:=STG_PP.Cells[mcolmp_descricao,x+1];

      STG_PP.Cells[mcolmp_pcouni,x]:=STG_PP.Cells[mcolmp_pcouni,x+1];
      STG_PP.Cells[mcolmp_vlrtot,x]:=STG_PP.Cells[mcolmp_vlrtot,x+1];
      STG_PP.Cells[10,x]:=STG_PP.Cells[10,x+1];
      STG_PP.Cells[11,x]:=STG_PP.Cells[11,x+1];
      STG_PP.Cells[12,x]:=STG_PP.Cells[12,x+1];
      STG_PP.Cells[13,x]:=STG_PP.Cells[13,x+1];
      STG_PP.Cells[14,x]:=STG_PP.Cells[14,x+1];
      STG_PP.Cells[15,x]:=STG_PP.Cells[15,x+1];
      STG_PP.Cells[16,x]:=STG_PP.Cells[16,x+1];
      STG_PP.Cells[17,x]:=STG_PP.Cells[17,x+1];

      end;
   STG_PP.RowCount:=STG_PP.RowCount-1;
   end;
mop:=0;
fpmatprima(0);
fptotais(0);
end;

procedure TFrm_Ind_Fab.ET_CANCELARClick(Sender: TObject);
begin
mop_et:=0;
ET_NOMETA.Text:='';
ET_NOME.Text  :='';
ET_DATAI.Text :='';
ET_HORAI.Text :='';
ET_DATAF.Text :='';
ET_HORAF.Text :='';
end;

procedure TFrm_Ind_Fab.ET_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG_ETA.Row;

if (STG_ETA.Cells[0,1]='') or (STG_ETA.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_ETA.RowCount=2 then
   STG_ETA.Rows[1].Clear
else
   begin
   for x:=STG_ETA.Row to STG_ETA.RowCount-2 do
      begin
      STG_ETA.Cells[00,x]:=STG_ETA.Cells[00,x+1];
      STG_ETA.Cells[01,x]:=STG_ETA.Cells[01,x+1];
      STG_ETA.Cells[02,x]:=STG_ETA.Cells[02,x+1];
      STG_ETA.Cells[03,x]:=STG_ETA.Cells[03,x+1];
      STG_ETA.Cells[04,x]:=STG_ETA.Cells[04,x+1];
      STG_ETA.Cells[05,x]:=STG_ETA.Cells[05,x+1];
      end;
   STG_ETA.RowCount:=STG_ETA.RowCount-1;
   end;
mop_et:=0;

end;

procedure TFrm_Ind_Fab.MOBS01Exit(Sender: TObject);
begin
if not fvertam(MOBS01.Text,60) then
   MOBS01.SetFocus;

end;

procedure TFrm_Ind_Fab.MOBS02Exit(Sender: TObject);
begin
if not fvertam(MOBS02.Text,60) then
   MOBS02.SetFocus;

end;

procedure TFrm_Ind_Fab.MOBS03Exit(Sender: TObject);
begin
if not fvertam(MOBS03.Text,60) then
   MOBS03.SetFocus;

end;

procedure TFrm_Ind_Fab.MOBS04Exit(Sender: TObject);
begin
if not fvertam(MOBS04.Text,60) then
   MOBS04.SetFocus;

end;

procedure TFrm_Ind_Fab.MOBS05Exit(Sender: TObject);
begin
if not fvertam(MOBS05.Text,60) then
   MOBS05.SetFocus;

end;

procedure TFrm_Ind_Fab.MOBS06Exit(Sender: TObject);
begin
if not fvertam(MOBS06.Text,60) then
   MOBS06.SetFocus;

end;

procedure TFrm_Ind_Fab.MOBS07Exit(Sender: TObject);
begin
if not fvertam(MOBS07.Text,60) then
   MOBS07.SetFocus;

end;

procedure TFrm_Ind_Fab.MOBS08Exit(Sender: TObject);
begin
if not fvertam(MOBS08.Text,60) then
   MOBS08.SetFocus;

end;

procedure TFrm_Ind_Fab.MOBS09Exit(Sender: TObject);
begin
if not fvertam(MOBS09.Text,60) then
   MOBS09.SetFocus;

end;

procedure TFrm_Ind_Fab.MOBS10Exit(Sender: TObject);
begin
if not fvertam(MOBS10.Text,60) then
   MOBS10.SetFocus;

end;

procedure TFrm_Ind_Fab.BBLIMPARClick(Sender: TObject);
begin
mlotseq             :=ls_lotfab;
MCHAVE.Text         :='';
MDATA.Text          :='/  /';
MDATAPREV.Text      :='/  /';
MNOME.Text          :='';
MNUMLOT.Text        :='';
cb_origem.Checked   :=false;
MDATAVEN.Text       :='/  /';
MCODPRO.Text        :='';
MUND.Text           :='';
MQTDPREV.Text       :='';
MPU.Text            :='';
MTOTAL.Caption      :='';
MITENSPPREV.Caption :='';
MQTDPPREV.Caption   :='';
MTOTPPREV.Caption   :='';
MITENSMPPREV.Caption:='';
MTOTMPPREV.Caption  :='';
MQTDMPPREV.Caption  :='';
MITENSPREAL.Caption :='';
MQTDPREAL.Caption   :='';
MTOTPREAL.Caption   :='';
MITENSMPREAL.Caption:='';
MQTDMPREAL.Caption  :='';
MTOTMPREAL.Caption  :='';
ET_NOMETA.Text      :='';
ET_NOME.Text        :='';
ET_DATAI.Text       :='/  /';
ET_HORAI.Text       :=':  :';
ET_DATAF.Text       :='/  /';
ET_HORAF.Text       :=':  :';
MOBS01.Text         :='';
MOBS02.Text         :='';
MOBS03.Text         :='';
MOBS04.Text         :='';
MOBS05.Text         :='';
MOBS06.Text         :='';
MOBS07.Text         :='';
MOBS08.Text         :='';
MOBS09.Text         :='';
MOBS10.Text         :='';
mstatus             :=0;
STG_PP.RowCount     :=2;
STG_PP.Rows[1].Clear;
STG_MP.RowCount     :=2;
STG_MP.Rows[1].Clear;
STG_ETA.RowCount    :=2;
STG_ETA.Rows[1].Clear;
GB_MANMP.Enabled     :=False;
GroupBox1.Enabled    :=False;
GroupBox3.Enabled    :=False;
GB_ORIGEM_FAB.Enabled:=False;
GroupBox5.Enabled    :=False;
TabSheet4.Enabled    :=False;
BBINCLUIR.Enabled    :=bbinc_true;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBCONFIRMAR.Enabled:=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=False;
meditar            :=False;
bbImportar.Enabled :=False;
end;

procedure TFrm_Ind_Fab.BBINCLUIRClick(Sender: TObject);
begin
msitmp:=0;
BBLIMPAR.Click;
moper:=0;
GroupBox1.Enabled    :=True;
GroupBox3.Enabled    :=True;
GB_ORIGEM_FAB.Enabled:=True;
GroupBox5.Enabled    :=True;
TabSheet4.Enabled    :=True;
GB_MANMP.Enabled     :=True;
BBINCLUIR.Enabled    :=False;
BBLOCALIZAR.Enabled  :=False;
BBALTERAR.Enabled    :=False;
BBEXCLUIR.Enabled    :=False;
BBCONFIRMAR.Enabled  :=False;
BBIMPRIMIR.Enabled   :=False;
BBGRAVAR.Enabled     :=True;
bbImportar.Enabled   :=True;
meditar              :=True;
mdata.Text           :=FormatdateTime(fdt2, date);
MDATAPREV.Text       :=FormatdateTime(fdt2, date);
MDATA.SetFocus;
end;

procedure TFrm_Ind_Fab.BBLOCALIZARClick(Sender: TObject);
begin
mlotseq:=ls_lotfab;
if moper<>3 then
   begin
   Application.CreateForm(TFrm_Prod_Loc, Frm_Prod_loc);
   Frm_Prod_Loc.MDT1.Text:=FormatDateTime(fdt2, date);
   Frm_Prod_Loc.mInd_Fab_Origem_op:=mInd_Fab_Origem;
   Frm_Prod_Loc.ShowModal;
   if Trim(Frm_Prod_Loc.MCHAVEI.Text)<>'' then
      begin
      MCHAVE.Text:=Frm_Prod_Loc.MCHAVEI.Text;
      mlotseq    :=ValInt(Frm_Prod_Loc.LOTSEQ.Text);
      end;
   end;

DM3.Tb_Op01.Close;
DM3.Tb_Op01.SQL.Clear;
DM3.Tb_OP01.SQL.Add('Select * from CADOP01 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP1_FABENV=0'+IntToStr(mInd_Fab_Origem)
                   +' and OP1_LOTSEQ=0'+IntToStr(mlotseq)
                   +' and OP1_CODIGO=0'+Trim(MCHAVE.Text));
try
   DM3.Tb_Op01.Open;
except
   DM3.Tb_Op01.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');
   exit;
   end;
if DM3.Tb_Op01.Eof then
   begin
   Fmensagem('Chave não Encontrada!',0,['0'],0);
   exit;
   end;
DM3.Tb_Op02.Close;
DM3.Tb_Op02.SQL.Clear;
DM3.Tb_Op02.SQL.add('Select OP2_CODEMP, '
                   +'       OP2_CODIGO, '
                   +'       OP2_SEQ, '
                   +'       OP2_CODPRO, '
                   +'       OP2_NUMERO, '
                   +'       OP2_QTDPREV, '
                   +'       OP2_QTDPROD, '
                   +'       OP2_PU, '
                   +'       OP2_LOTSEQ, '
                   +'       OP2_FABENV, '
                   +'       OP2_DTVCTO, '
                   +'       OP2_FAB_CHORI, '
                   +'       OP2_FAB_CODIGO, '
                   +'       OP2_FAB_LOTE, '
                   +'       OP2_FAB_VCTO, '
                   +'       OP2_FAB_DTFAB, '
                   +'       OP2_FAB_QTD, '
                   +'       OP2_FAB_PU, '
                   +'       OP2_SITACAB, '
                   +'       OP2_ORIGEM, '
                   +'       PDNOME '
                   +'       ,PDUND '
                   +'       ,PDMARCA '
                   +'       ,PDQTDGRML,PDPRZVAL,PDREGMS '
                   +'       ,PDCODGRU AS CODGRU '
                   +'       ,PDNOMGRU AS NOMGRU '
                   +' from CADOP02,CADPRO '
                   +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                   ' OP2_CODEMP=0'+IntTostr(codemp)+' and PDCODEMP=OP2_CODEMP and ' )
                   +' OP2_FABENV=0'+IntToStr(mInd_Fab_Origem)+' and '
                   +' OP2_LOTSEQ=0'+IntToStr(ls_lotfab)
                   +' and OP2_CODIGO=0'+Trim(MCHAVE.Text)
                   +' AND PDCODPRO=OP2_CODPRO '
                   +' order by OP2_SEQ');
try
   DM3.Tb_Op02.Open;
//   DM3.Tb_Op02.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');
except
   DM3.Tb_Op02.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');
   exit;
   end;

DM3.Tb_Op03.Close;
DM3.Tb_Op03.SQL.Clear;
DM3.Tb_Op03.SQL.add('Select OP3_CODEMP ,   OP3_CODIGO,  '
                   +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                   +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                   +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, OP3_LOTE_RE, '
                   +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                   +' ,max(PDCODPRO) as PDCODPRO, max(PDNOME) as PDNOME '
                   +' ,max(PDUND) as PDUND '
                   +' ,maX(PDNOME2) as PDNOME2 '
                   +' ,max(PDCODGRU) AS CODGRU '
                   +' ,max(PDNOMGRU) as NOMGRU '
                   +' ,max(PDMARCA) as PDMARCA '
                   +' ,max(CPORDEM) as CPORDEM '
                   +' ,max(CPCODPRO) as CPCODPRO '
                   +' ,MAX(CPNUMERO) as CPNUMERO '
                   +' ,max(CPCODMAT) as CPCODMAT '
                   +' ,max(CPCODPRO_ACAB) as CPCODPRO_ACAB '
                   +' ,max(CPMPNUM) as CPMPNUM '
                   +' ,max(CPQUANT) as CPQUANT '
                   +' ,max(CPPU) as  CPPU '
                   +' ,max(CPVLRINC) as CPVLRINC '
                   +' ,max(CPALIQORI) as CPALIQORI '
                   +' ,max(CPALICMSCRED) as CPALICMSCRED '
                   +' ,max(CPICMSCRED) as  CPICMSCRED'
                   +' ,max(CPTIPO) as CPTIPO '
                   +' ,max(CPQTD_PAD) as CPQTD_PAD '
                   +' ,max(CPPERCENT) as CPPERCENT '
                   +' ,max(CPPERCENT_REST) as CPPERCENT_REST '
                   +' from CADOP03,CADPRO,CADCOMP '
                   +'   where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OP3_LOTSEQ=0'+IntToStr(ls_lotfab)
                   +' and OP3_CODIGO=0'+Trim(MCHAVE.Text)
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                   +' and PDCODPRO=OP3_CODMAT '
                   +' and CPCODEMP=PDCODEMP '
                   +' and CPCODMAT=OP3_CODMAT '
                   +' and OP3_FABENV=0'+IntToStr(mInd_Fab_Origem)
                   +' group by '
                   +' OP3_CODEMP ,   OP3_CODIGO, '
                   +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                   +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                   +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, OP3_LOTE_RE,'
                   +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                   +' order by OP3_SEQ');
//DM3.Tb_Op03.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');


try
   DM3.Tb_Op03.Open;
except
   DM3.Tb_Op03.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');
   exit;
   end;


DM3.Tb_OpET.Close;
DM3.Tb_OpET.SQL.Clear;
DM3.Tb_OpEt.SQL.add('Select * from CADOPET where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OPE_CODEMP=0'+IntTostr(codemp)+' and ')
                   +' OPE_FABENV=0'+IntToStr(mInd_Fab_Origem)
                   +' and OPE_LOTSEQ=0'+IntToStr(mlotseq)
                   +' and OPE_CODIGO=0'+Trim(MCHAVE.Text)
                   +' order by OPE_CODETA');
try
   DM3.Tb_OpET.Open;
except
   DM3.Tb_OpET.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');
   exit;
   end;

BBLIMPAR.Click;
MCHAVE.Text         :=DM3.Tb_Op01OP1_CODIGO.AsString;
MDATA.Text          :=FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATA.Value);
if DM3.Tb_Op01OP1_DATAPREV.Value<pdatanula then
   MDATAPREV.Text   :='/  /'
else
   MDATAPREV.Text      :=FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAPREV.Value);
MNOME.Text          :=DM3.Tb_Op01OP1_NOME.Value;
MNUMLOT.Text        :=DM3.Tb_Op01OP1_LOTE.Value;
cb_origem.Checked   :=DM3.Tb_Op01OP1_ORIGEM.AsInteger=1;
if DM3.Tb_Op01OP1_DATAVEN.Value<=pdatanula then
   MDATAVEN.Text    :='/  /'
else
   MDATAVEN.Text       :=FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAVEN.Value);
if DM3.Tb_Op01OP1_STATUS.IsNull then
   mstatus:=0
else
   mstatus:=DM3.Tb_Op01OP1_STATUS.AsInteger;
MCODPRO.Text        :='';
MUND.Text           :='';
MQTDPREV.Text       :='';
MPU.Text            :='';
MTOTAL.Caption      :='';
MITENSPPREV.Caption :='';
MQTDPPREV.Caption   :='';
MTOTPPREV.Caption   :='';
MITENSMPPREV.Caption:='';
MTOTMPPREV.Caption  :='';
MQTDMPPREV.Caption  :='';
MITENSPREAL.Caption :='';
MQTDPREAL.Caption   :='';
MTOTPREAL.Caption   :='';
MITENSMPREAL.Caption:='';
MQTDMPREAL.Caption  :='';
MTOTMPREAL.Caption  :='';
ET_NOMETA.Text      :='';
ET_NOME.Text        :='';
ET_DATAI.Text       :='/  /';
ET_HORAI.Text       :=':  :';
ET_DATAF.Text       :='/  /';
ET_HORAF.Text       :=':  :';
MOBS01.Text         :=DM3.Tb_Op01OP1_OBS01.Value;
MOBS02.Text         :=DM3.Tb_Op01OP1_OBS02.Value;
MOBS03.Text         :=DM3.Tb_Op01OP1_OBS03.Value;
MOBS04.Text         :=DM3.Tb_Op01OP1_OBS04.Value;
MOBS05.Text         :=DM3.Tb_Op01OP1_OBS05.Value;
MOBS06.Text         :=DM3.Tb_Op01OP1_OBS06.Value;
MOBS07.Text         :=DM3.Tb_Op01OP1_OBS07.Value;
MOBS08.Text         :=DM3.Tb_Op01OP1_OBS08.Value;
MOBS09.Text         :=DM3.Tb_Op01OP1_OBS09.Value;
MOBS10.Text         :=DM3.Tb_Op01OP1_OBS10.Value;

STG_PP.RowCount     :=2;
STG_PP.Rows[1].Clear;
While not DM3.Tb_Op02.Eof do
   begin
   mqtd:=STG_PP.RowCount;
   STG_PP.RowCount:=mqtd+1;
   STG_PP.Rows[mqtd+1].Clear;
   STG_PP.Rows[mqtd].Clear;
   flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op02OP2_CODPRO.AsString);
   STG_PP.Cells[mcolmp_codpro,mqtd-1]:=DM3.Tb_Op02OP2_CODPRO.AsString;
   STG_PP.Cells[mcolmp_grade,mqtd-1]:=DM3.Tb_Op02OP2_NUMERO.Value;
   STG_PP.Cells[mcolmp_lote,mqtd-1]:=FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPREV.Value);
   STG_PP.Cells[mcolmp_dtvcto,mqtd-1]:=DM1.Query1.Fields[1].AsString;
   STG_PP.Cells[mcolmp_qtdped,mqtd-1]:=DM1.Query1.Fields[0].AsString;
   STG_PP.Cells[mcolmp_qtdutil,mqtd-1]:=FormatFloat(mcaspuind, DM3.Tb_Op02OP2_PU.Value);
   STG_PP.Cells[mcolmp_und,mqtd-1]:=FormatFloat(mcasas, DM3.Tb_Op02OP2_QTDPREV.Value*DM3.Tb_Op02OP2_PU.Value);
   STG_PP.Cells[mcolmp_descricao,mqtd-1]:=FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPROD.Value);

   if mInd_Fab_Origem=2 then
      begin
      flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op02OP2_FAB_CODIGO.AsString);
      STG_PP.Cells[mcolmp_pcouni,mqtd-1]:=DM3.Tb_Op02OP2_FAB_CHORI.AsString;
      if (DM3.Tb_Op02OP2_FAB_DTFAB.IsNull) or (DM3.Tb_Op02OP2_FAB_DTFAB.Value<=pdatanula) then
         STG_PP.Cells[mcolmp_vlrtot,mqtd-1]:='/  /'
      else
         STG_PP.Cells[mcolmp_vlrtot,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_Op02OP2_FAB_DTFAB.Value);

      STG_PP.Cells[10,mqtd-1]:=DM3.Tb_Op02OP2_FAB_LOTE.Value;
      if (DM3.Tb_Op02OP2_FAB_VCTO.IsNull) or (DM3.Tb_Op02OP2_FAB_VCTO.Value<=pdatanula) then
         STG_PP.Cells[11,mqtd-1]:='/  /'
      else
         STG_PP.Cells[11,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_Op02OP2_FAB_VCTO.Value);
      STG_PP.Cells[12,mqtd-1]:=DM3.Tb_Op02OP2_FAB_CODIGO.AsString;
      STG_PP.Cells[13,mqtd-1]:=DM1.Query1.Fields[0].AsString;
      STG_PP.Cells[14,mqtd-1]:=DM1.Query1.Fields[1].AsString;
      STG_PP.Cells[15,mqtd-1]:=FormatFloat(mcasind,   DM3.Tb_Op02OP2_FAB_QTD.Value);
      STG_PP.Cells[16,mqtd-1]:=FormatFloat(mcaspuind, DM3.Tb_Op02OP2_FAB_PU.Value);
      STG_PP.Cells[17,mqtd-1]:=FormatFloat(mcasas, DM3.Tb_Op02OP2_FAB_QTD.Value*DM3.Tb_Op02OP2_FAB_PU.Value);
      end;
   DM3.Tb_Op02.Next;
   end;
STG_MP.RowCount     :=2;
STG_MP.Rows[1].Clear;
While not DM3.Tb_Op03.Eof do
   begin
   mqtd:=STG_MP.RowCount;
   STG_MP.RowCount:=mqtd+1;
   STG_MP.Rows[mqtd+1].Clear;
   STG_MP.Rows[mqtd].Clear;
   flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op03OP3_CODMAT.AsString);
   STG_MP.Cells[00,mqtd-1]:=DM3.Tb_Op03OP3_CODMAT.AsString;
   STG_MP.Cells[01,mqtd-1]:=DM3.Tb_Op03OP3_NUMERO.Value;
   STG_MP.Cells[02,mqtd-1]:=DM3.Tb_Op03OP3_LOTE.Value;
   if (DM3.Tb_Op03OP3_DTVCTO.IsNull) or (DM3.Tb_Op03OP3_DTVCTO.Value<=pdatanula) then
      STG_MP.Cells[03,mqtd-1]:='/  /'
   else
      STG_MP.Cells[03,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_Op03OP3_DTVCTO.Value);
   STG_MP.Cells[04,mqtd-1]:=FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDPREV.Value);
   STG_MP.Cells[05,mqtd-1]:=FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDUTIL.Value);
   STG_MP.Cells[06,mqtd-1]:=DM1.Query1.Fields[1].AsString;
   STG_MP.Cells[07,mqtd-1]:=DM1.Query1.Fields[0].AsString;
   STG_MP.Cells[08,mqtd-1]:=FormatFloat(mcaspuind, DM3.Tb_Op03OP3_PU.Value);
   STG_MP.Cells[09,mqtd-1]:=FormatFloat(mcasas, DM3.Tb_Op03OP3_QTDPREV.Value*DM3.Tb_Op03OP3_PU.Value);

   DM3.Tb_Op03.Next;
   end;
// fpmatprima(0);
STG_ETA.RowCount    :=2;
STG_ETA.Rows[1].Clear;

While not DM3.Tb_OpET.Eof do
   begin
   mqtd:=STG_ETA.RowCount;
   STG_ETA.RowCount:=mqtd+1;
   STG_ETA.Rows[mqtd+1].Clear;
   STG_ETA.Rows[mqtd].Clear;
   STG_ETA.Cells[0,mqtd-1]:=DM3.Tb_OpETOPE_NOMETA.Value;
   STG_ETA.Cells[1,mqtd-1]:=DM3.Tb_OpETOPE_NOME.Value;
   if (DM3.Tb_OpETOPE_DATAI.IsNull) or (DM3.Tb_OpETOPE_DATAI.Value<=pdatanula) then
      STG_ETA.Cells[2,mqtd-1]:='/  /'
   else
      STG_ETA.Cells[2,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAI.Value);
   STG_ETA.Cells[3,mqtd-1]:=DM3.Tb_OpETOPE_HORAI.Value;
   if DM3.Tb_OpETOPE_DATAT.IsNull then
      STG_ETA.Cells[4,mqtd-1]:='/  /'
   else
      STG_ETA.Cells[4,mqtd-1]:=FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAT.Value);
   STG_ETA.Cells[5,mqtd-1]:=DM3.Tb_OpETOPE_HORAT.Value;
   DM3.Tb_OPET.Next;
   end;
BBINCLUIR.Enabled  :=bbinc_true;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=bbalt_true;
BBEXCLUIR.Enabled  :=bbexc_true;
BBCONFIRMAR.Enabled:=True;
BBIMPRIMIR.Enabled :=bbrel_true;
BBGRAVAR.Enabled   :=False;
fptotais(0);
if mApresentaMensagem=true then
   fAvalidarMateriasPrimas;

moper:=0;

end;

function TFrm_Ind_Fab.fpexcluir(ptipo: Integer): Boolean;
// ptipo=0 exclui sem movimentar estoque
// ptipo=1 excluir desfazendo o estoque GERAL
// ptipo=2 excluir desfazendo o estoque MP
var
pBaixar: pBaixarLotes;
begin
if (ptipo=1) or (ptipo=2) then
  begin
  DM3.Tb_Op02.Close;
  DM3.Tb_Op02.SQL.Clear;
  DM3.Tb_Op02.SQL.add('Select OP2_CODEMP, '
                     +'       OP2_CODIGO, '
                     +'       OP2_SEQ, '
                     +'       OP2_CODPRO, '
                     +'       OP2_NUMERO, '
                     +'       OP2_QTDPREV, '
                     +'       OP2_QTDPROD, '
                     +'       OP2_PU, '
                     +'       OP2_LOTSEQ, '
                     +'       OP2_FABENV, '
                     +'       OP2_DTVCTO, '
                     +'       OP2_FAB_CHORI, '
                     +'       OP2_FAB_CODIGO, '
                     +'       OP2_FAB_LOTE, '
                     +'       OP2_FAB_VCTO, '
                     +'       OP2_FAB_DTFAB, '
                     +'       OP2_FAB_QTD, '
                     +'       OP2_FAB_PU, '
                     +'       OP2_SITACAB, '
                     +'       OP2_ORIGEM, '
                     +'       PDNOME '
                     +'       ,PDMARCA '
                     +'       ,PDUND '
                     +'       ,PDQTDGRML,PDPRZVAL,PDREGMS '
                     +'       ,PDCODGRU AS CODGRU '
                     +'       ,PDNOMGRU AS NOMGRU '
                     +' from CADOP02,CADPRO '
                     +' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',
                     ' OP2_CODEMP=0'+IntToStr(codemp)+' and PDCODEMP=OP2_CODEMP and ')
                     +' OP2_FABENV=0'+DM3.Tb_Op01OP1_FABENV.AsString
                  +' and OP2_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                  +' and OP2_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString
                  +' and PDCODPRO=OP2_CODPRO ');
  try
    DM3.Tb_Op02.Open;
  except
    DM3.Tb_Op02.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');
    exit;
    end;
  DM3.Tb_Op03.Close;
  DM3.Tb_Op03.SQL.Clear;
  DM3.Tb_Op03.SQL.add('Select OP3_CODEMP ,   OP3_CODIGO,  '
                     +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                     +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                     +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, OP3_LOTE_RE, '
                     +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                     +' ,max(PDCODPRO) as PDCODPRO, max(PDNOME) as PDNOME '
                     +' ,max(PDUND) as PDUND '
                     +' ,maX(PDNOME2) as PDNOME2 '
                     +' ,max(PDCODGRU) AS CODGRU '
                     +' ,max(PDNOMGRU) as NOMGRU '
                     +' ,max(PDMARCA) as PDMARCA '
                     +' ,max(CPORDEM) as CPORDEM '
                     +' ,max(CPCODPRO) as CPCODPRO '
                     +' ,MAX(CPNUMERO) as CPNUMERO '
                     +' ,max(CPCODMAT) as CPCODMAT '
                     +' ,max(CPCODPRO_ACAB) as CPCODPRO_ACAB '
                     +' ,max(CPMPNUM) as CPMPNUM '
                     +' ,max(CPQUANT) as CPQUANT '
                     +' ,max(CPPU) as  CPPU '
                     +' ,max(CPVLRINC) as CPVLRINC '
                     +' ,max(CPALIQORI) as CPALIQORI '
                     +' ,max(CPALICMSCRED) as CPALICMSCRED '
                     +' ,max(CPICMSCRED) as  CPICMSCRED'
                     +' ,max(CPTIPO) as CPTIPO '
                     +' ,max(CPQTD_PAD) as CPQTD_PAD '
                     +' ,max(CPPERCENT) as CPPERCENT '
                     +' ,max(CPPERCENT_REST) as CPPERCENT_REST '
                     +' from CADOP03,CADPRO,CADCOMP '
                     +'   where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' OP3_LOTSEQ=0'+IntToStr(ls_lotfab)
                     +' and OP3_CODIGO=0'+Trim(MCHAVE.Text)
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and OP3_CODEMP=0'+IntTostr(codemp))
                     +' and PDCODPRO=OP3_CODMAT '
                     +' and CPCODEMP=PDCODEMP '
                     +' and CPCODMAT=OP3_CODMAT '
                     +' group by '
                     +' OP3_CODEMP ,   OP3_CODIGO, '
                     +' OP3_SEQ,   OP3_CODMAT,   OP3_NUMERO, '
                     +' OP3_QTDPREV,   OP3_QTDUTIL,   OP3_PU, '
                     +' OP3_LOTSEQ,   OP3_FABENV,   OP3_LOTE, OP3_LOTE_RE, '
                     +' OP3_DTVCTO,   OP3_SITMP,   OP3_ORIGEM '
                     +' order by OP3_SEQ');
  //DM3.Tb_Op03.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');
  try
    DM3.Tb_Op03.Open;
  except
    DM3.Tb_Op03.SQL.SaveToFile(mpastatemp + 'SQLtt.txt');
    exit;
    end;

  While not DM3.Tb_OP03.Eof do
    begin
    mdtv:='';
    if ValInt(copy(mpseg,4,2))>0  then  // se tem grade
       begin
	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := DM3.Tb_Op03OP3_SEQ.AsInteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
	pBaixar.pChave_ano := DM3.Tb_Op03OP3_LOTSEQ.AsInteger;
	pBaixar.pQtd       := DM3.Tb_Op03OP3_QTDUTIL.AsFloat;
	pBaixar.pCodPro    := DM3.Tb_Op03OP3_CODMAT.AsString;
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM3.Tb_Op03OP3_LOTE.AsString;
	pBaixar.pDtFab        := DM3.Tb_Op03OP3_DTFAB.AsDateTime;
	pBaixar.pDtVcto       := DM3.Tb_Op03OP3_DTVCTO.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
	fBaixarMercadorias(pBaixar);

{
       fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op03OP3_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op03OP3_CODIGO.AsFloat
                  ,DM3.Tb_Op03OP3_LOTSEQ.AsFloat
                  ,DM3.Tb_Op03OP3_QTDUTIL.AsFloat
                  ,DM3.Tb_Op03OP3_CODMAT.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op03OP3_LOTE.AsString
                  ,DM3.Tb_Op03OP3_DTVCTO.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );

}
       end
    else
       begin

	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := DM3.Tb_Op03OP3_SEQ.AsInteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
	pBaixar.pChave_ano := DM3.Tb_Op03OP3_LOTSEQ.AsInteger;
	pBaixar.pQtd       := DM3.Tb_Op03OP3_QTDUTIL.AsFloat;
	pBaixar.pCodPro    := DM3.Tb_Op03OP3_CODMAT.AsString;
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab       := 0;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
	fBaixarMercadorias(pBaixar);


{       fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op03OP3_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op03OP3_CODIGO.AsFloat
                  ,DM3.Tb_Op03OP3_LOTSEQ.AsFloat
                  ,DM3.Tb_Op03OP3_QTDUTIL.AsFloat
                  ,DM3.Tb_Op03OP3_CODMAT.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,''
                  ,0
                  ,'' // lote re
                  ,'' // obs

                  );

 }
      end;
    DM3.Tb_Op03.Next;
    end;
  if (ptipo=1) then
    begin
    DM3.Tb_OP02.First;
    While not DM3.Tb_OP02.Eof do
      begin
      mdtv:='';
      if Valint(copy(mpseg,4,2))>0  then  // se tem grade
         begin


	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := DM3.Tb_Op02OP2_SEQ.AsInteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
	pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
	pBaixar.pQtd       := DM3.Tb_Op02OP2_QTDPROD.AsFloat;
	pBaixar.pCodPro    := DM3.Tb_Op02OP2_CODPRO.AsString;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM3.Tb_Op01OP1_LOTE.AsString;
	pBaixar.pDtVcto       := DM3.Tb_Op01OP1_DATAVEN.AsDateTime;
	pBaixar.pDtFab        := DM3.Tb_Op01OP1_DATFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
	fBaixarMercadorias(pBaixar);

  {
         fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,DM3.Tb_Op02OP2_QTDPROD.AsFloat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'S' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op01OP1_LOTE.AsString
                  ,DM3.Tb_Op01OP1_DATAVEN.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
}
         end
      else
         begin

	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := DM3.Tb_Op02OP2_SEQ.AsInteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
	pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
	pBaixar.pQtd       := DM3.Tb_Op02OP2_QTDPROD.AsFloat;
	pBaixar.pCodPro    := DM3.Tb_Op02OP2_CODPRO.AsString;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab        := 0;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
PBaixar.pChaveIdNew   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
	fBaixarMercadorias(pBaixar);
{
         fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,DM3.Tb_Op02OP2_QTDPROD.AsFloat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'S' // estnor
                  ,'N' // estreversado
                  ,''
                  ,0
                  ,'' // lote re
                  ,'' // obs

                  );

}
         end;
//termino
      DM3.Tb_Op02.Next;
      end;
    end;
  end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOPET where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OPE_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OPE_FABENV=0'+DM3.Tb_Op01OP1_FABENV.AsString
                  +' and OPE_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                  +' and OPE_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1636,'Frm_Ped','CADOPET');
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOP03 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP3_FABENV=0'+DM3.Tb_Op01OP1_FABENV.AsString
                  +' and OP3_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                  +' and OP3_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1649,'Frm_Ped','CADOP03');
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP2_FABENV=0'+DM3.Tb_Op01OP1_FABENV.AsString
                  +' and OP2_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                  +' and OP2_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1662,'Frm_Ind_Fab','CADOP02');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADOP01 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP1_FABENV=0'+DM3.Tb_Op01OP1_FABENV.AsString
                  +' and OP1_LOTSEQ=0'+DM3.Tb_Op01OP1_LOTSEQ.AsString
                  +' and OP1_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1676,'Frm_Ind_Fab','CADOP01');
   end;

result:=True;
end;
procedure TFrm_Ind_Fab.BBALTERARClick(Sender: TObject);
begin
if DM3.Tb_Op01OP1_STATUS.Value>1 then
   begin
   Fmensagem('Pedido ja Confirmado!',0,['0'],0);
   exit;
   end;
moper:=1;
GB_MANMP.Enabled :=True;
GroupBox1.Enabled:=True;
GB_ORIGEM_FAB.Enabled:=True;
GroupBox3.Enabled:=True;
GroupBox5.Enabled:=True;
TabSheet4.Enabled:=True;
GB_MANMP.Enabled :=True;
MDATA.SetFocus;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBCONFIRMAR.Enabled:=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=True;
bbImportar.Enabled :=True;
meditar            :=True;
end;

procedure TFrm_Ind_Fab.BBGRAVARClick(Sender: TObject);
var
x: Integer;
begin
if ValFloat(STG_PP.Cells[mcolmp_codpro,1])=0 then
   begin
   Fmensagem('Nada a ser Gravado!',0,['0'],0);
   exit;
   end;

{
if not CB_QTDNEG.Checked then
   fTestaEstoqueNegativo(0);
}
if moper=0 then
   begin
   flcadpar01(0,codemp,'1');
   if (mInd_Fab_Origem<2) or (mInd_Fab_Origem=3) then
      begin
      if (DM4.Tb_Par01PCHAVFAB.IsNull) or (DM4.Tb_Par01PCHAVFAB.Value<=0) then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select max(OP1_CODIGO) from CADOP01 where '
                           +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                           +' OP1_FABENV=0'+IntToStr(mInd_Fab_Origem)+' and OP1_LOTSEQ=0'+InttoStr(ls_lotfab));
         DM1.Query1.Open;
         flcadpar01(0,codemp,'1');
         DM4.Tb_Par01.Edit;
         DM4.Tb_Par01PCHAVFAB.Value   :=DM1.Query1.Fields[0].AsFloat+1;
         DM4.Tb_Par01PCHAVFAB_LS.Value:=ls_lotfab;
         DM4.Tb_Par01.Post;
         fSequenceTestaeAjusta('CHAVFAB_2012',DM1.Query1.Fields[0].AsInteger+1);
         flcadpar01(0,codemp,'1');
         end
      end
   else if mInd_Fab_Origem=2 then
      begin
      if (DM4.Tb_Par01PCHAVENV.IsNull) or (DM4.Tb_Par01PCHAVENV.Value<=0) then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select max(OP1_CODIGO) from CADOP01 where '
                           +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' OP1_CODEMP=0'+IntToStr(codemp)+' and ')
                           +' OP1_FABENV=0'+IntToStr(mInd_Fab_Origem)+' and OP1_LOTSEQ=0'+InttoStr(ls_lotfab));
         DM1.Query1.Open;
         flcadpar01(0,codemp,'1');
         DM4.Tb_Par01.Edit;
         DM4.Tb_Par01PCHAVENV.Value   :=DM1.Query1.Fields[0].AsFloat+1;
         DM4.Tb_Par01PCHAVENV_LS.Value:=ls_lotfab;
         DM4.Tb_Par01.Post;
         fSequenceTestaeAjusta('CHAVENV_2012',DM1.Query1.Fields[0].AsInteger+1);
         flcadpar01(0,codemp,'1');
         end;
      end;
   if (mInd_Fab_Origem<2) or (mInd_Fab_Origem=3) then
      begin
      DM4.Tb_Par01.Edit;
      MCHAVE.Text:=DM4.Tb_Par01PCHAVFAB.AsString;
      DM4.Tb_Par01PCHAVFAB.Value:=DM4.Tb_Par01PCHAVFAB.Value+1;
      DM4.Tb_Par01.Post;
      fBuscarSequencia('CHAVFAB_2012');
      end
   else
      begin
      DM4.Tb_Par01.Edit;
      MCHAVE.Text:=DM4.Tb_Par01PCHAVENV.AsString;
      DM4.Tb_Par01PCHAVENV.Value:=DM4.Tb_Par01PCHAVENV.Value+1;
      DM4.Tb_Par01.Post;
      fBuscarSequencia('CHAVENV_2012');
      end;
   end
else if moper=1 then
   begin
   msitmp:=DM3.Tb_Op01OP1_SITMP.AsInteger;
   fpexcluir(0);
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftstring,'DATA',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'DATAPREV',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'LOTE',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'DATAVEN',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS01',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS02',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS03',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS04',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS05',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS06',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS07',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS08',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS09',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'OBS10',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'NOME',ptinput);

DM1.Query2.SQL.Add('Insert Into CADOP01 ('
                  +' OP1_CODEMP,'
                  +' OP1_FABENV,'
                  +' OP1_LOTSEQ,'
                  +' OP1_CODIGO,'
                  +' OP1_TMPPREV,'
                  +' OP1_TMPUTIL,'
                  +' OP1_TOTPREV,'
                  +' OP1_TOTPROD,'
                  +' OP1_STATUS,'
                  +' OP1_ORIGEM,'
                  +' OP1_SITMP, '
                  +' OP1_SITACAB, '
                  +' OP1_DATA, '
                  +' OP1_DATAPREV, '
                  +' OP1_LOTE, '
                  +' OP1_DATAVEN, '
                  +' OP1_OBS01, '
                  +' OP1_OBS02, '
                  +' OP1_OBS03, '
                  +' OP1_OBS04, '
                  +' OP1_OBS05, '
                  +' OP1_OBS06, '
                  +' OP1_OBS07, '
                  +' OP1_OBS08, '
                  +' OP1_OBS09, '
                  +' OP1_OBS10, '
                  +' OP1_NOME) Values ('
                  +IntToStr(codemp)+','
                  +IntToStr(mInd_Fab_Origem)+','
                  +iif(moper=1,DM3.Tb_Op01OP1_LOTSEQ.AsString,IntToStr(ls_lotfab))+','
                  +Trim(MCHAVE.Text)+','
                  +mudavp(FloatToStr(valfloat(MTOTMPPREV.Caption)))+','
                  +mudavp(FloatToStr(valfloat(MTOTMPREAL.Caption)))+','
                  +mudavp(FloatToStr(valfloat(MTOTPPREV.Caption)))+','
                  +mudavp(FloatToStr(valfloat(MTOTPREAL.Caption)))+','
                  +IntToStr(mstatus)+','
                  +iif(cb_origem.Checked,'1','0')+','
                  +IntToStr(msitmp)+',' // Situacao materia prima
                  +'0'+',' // Situacao do produto acabado
                  +':DATA, '
                  +':DATAPREV, '
                  +':LOTE, '
                  +':DATAVEN, '
                  +':OBS01, '
                  +':OBS02, '
                  +':OBS03, '
                  +':OBS04, '
                  +':OBS05, '
                  +':OBS06, '
                  +':OBS07, '
                  +':OBS08, '
                  +':OBS09, '
                  +':OBS10, '
                  +':NOME)');
if Trim(MDATA.Text)='/  /' then
   MDATA.Text:=FormatDateTime(fdt2, Date);
DM1.Query2.ParamByName('DATA').AsDateTime:=StrToDate(MDATA.Text);
if Trim(MDATAPREV.Text)<>'/  /' then
   DM1.Query2.ParamByName('DATAPREV').AsDateTime:=StrTodate(MDATAPREV.Text)
else
   DM1.Query2.ParamByName('DATAPREV').AsDateTime:=0;

DM1.Query2.ParamByName('LOTE').AsString:=MNUMLOT.Text;
if Trim(MDATAVEN.Text)<>'/  /' then
   DM1.Query2.ParamByName('DATAVEN').AsDateTime:=StrTodate(MDATAVEN.Text)
else
   DM1.Query2.ParamByName('DATAVEN').AsDateTime:=0;

DM1.Query2.ParamByName('OBS01').AsString:=MOBS01.Text;
DM1.Query2.ParamByName('OBS02').AsString:=MOBS02.Text;
DM1.Query2.ParamByName('OBS03').AsString:=MOBS03.Text;
DM1.Query2.ParamByName('OBS04').AsString:=MOBS04.Text;
DM1.Query2.ParamByName('OBS05').AsString:=MOBS05.Text;
DM1.Query2.ParamByName('OBS06').AsString:=MOBS06.Text;
DM1.Query2.ParamByName('OBS07').AsString:=MOBS07.Text;
DM1.Query2.ParamByName('OBS08').AsString:=MOBS08.Text;
DM1.Query2.ParamByName('OBS09').AsString:=MOBS09.Text;
DM1.Query2.ParamByName('OBS10').AsString:=MOBS10.Text;
DM1.Query2.ParamByName('OBS10').AsString:=MOBS10.Text;
DM1.Query2.ParamByName('NOME').AsString :=MNOME.Text;
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except  on e: Exception do
   begin
   ex_erroSql_Novo(DM1.Query2,2462,'lerarq:'+e.message ,'CADOP03');
   end;
   end;


DM1.Query2.Params.Clear;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;

for x:=1 to STG_PP.RowCount-1 do
   begin
   if Trim(STG_PP.Cells[mcolmp_codpro,x])='' then
      continue;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftstring,'NUMERO',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'FAB_DTFAB',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'FAB_VCTO',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'FAB_LOTE',ptinput);

   DM1.Query2.SQL.Add('Insert Into CADOP02 ('
                     +'OP2_CODEMP, '
                     +'OP2_FABENV, '
                     +'OP2_LOTSEQ, '
                     +'OP2_CODIGO, '
                     +'OP2_SEQ, '
                     +'OP2_CODPRO,'
                     +'OP2_QTDPREV, '
                     +'OP2_QTDPROD, '
                     +'OP2_PU, '
                     +'OP2_FAB_CHORI,'
                     +'OP2_FAB_CODIGO,'
                     +'OP2_FAB_QTD,'
                     +'OP2_FAB_PU,'
                     +'OP2_SITACAB,'
                     +'OP2_ORIGEM,'
                     +'OP2_NUMERO,'
                     +'OP2_FAB_DTFAB,'
                     +'OP2_FAB_VCTO,'
                     +'OP2_FAB_LOTE) values ('
                     +IntToStr(codemp)+','
                     +IntToStr(mInd_Fab_Origem)+','
                     +iif(moper=1,DM3.Tb_Op01OP1_LOTSEQ.AsString,IntToStr(ls_lotfab))+','
                     +Trim(MCHAVE.Text)+','
                     +IntToStr(x)+','
                     +Trim(STG_PP.Cells[mcolmp_codpro,x])+','
                     +mudavp(FloatTostr(ValFloat(STG_PP.Cells[mcolmp_lote,x])))+','
                     +mudavp(FloatTostr(ValFloat(STG_PP.Cells[mcolmp_descricao,x])))+','
                     +mudavp(FloatTostr(ValFloat(STG_PP.Cells[mcolmp_qtdutil,x])))+','
                     +mudavp(FloatTostr(ValFloat(STG_PP.Cells[mcolmp_pcouni,x])))+','
                     +mudavp(FloatTostr(ValFloat(STG_PP.cells[12,x])))+','
                     +mudavp(FloatTostr(ValFloat(STG_PP.cells[15,x])))+','
                     +mudavp(FloatTostr(ValFloat(STG_PP.cells[16,x])))+','
                     +iif(cb_origem.Checked,'1','0')+','
                     +'0'+',' // Situacao do produto acabado
                     +':NUMERO, '
                     +':FAB_DTFAB,'
                     +':FAB_VCTO,'
                     +':FAB_LOTE)');
   DM1.Query2.ParamByName('NUMERO').AsString:=STG_PP.Cells[mcolmp_grade,x];
   if (Trim(STG_PP.Cells[mcolmp_vlrtot,X])='/  /') or (Trim(STG_PP.Cells[mcolmp_vlrtot,X])='') then
      DM1.Query2.ParamByName('FAB_DTFAB').AsDateTime:=pdatanula
   else
      DM1.Query2.ParamByName('FAB_DTFAB').AsDateTime:=StrToDate(STG_PP.Cells[mcolmp_vlrtot,x]);
   if (Trim(STG_PP.Cells[11,X])='/  /') or (Trim(STG_PP.Cells[11,X])='') then
      DM1.Query2.ParamByName('FAB_VCTO').AsDateTime:=pdatanula
   else
      DM1.Query2.ParamByName('FAB_VCTO').AsDateTime:=StrToDate(STG_PP.Cells[11,x]);

   DM1.Query2.ParamByName('NUMERO').AsString  :=STG_PP.Cells[mcolmp_grade,x];
   DM1.Query2.ParamByName('FAB_LOTE').AsString:=STG_PP.Cells[10,x];
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except  on e: Exception do
      begin
      ex_erroSql_Novo(DM1.Query2,2538,'lerarq:'+e.message ,'CADOP02');
     end;
      end;

   end;
DM1.Query2.Params.Clear;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;

for x:=1 to STG_MP.RowCount-1 do
   begin
   if Trim(STG_MP.Cells[0,x])='' then
      continue;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftstring,'NUMERO',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'LOTE',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'DTVCTO',ptinput);
   DM1.Query2.SQL.Add('Insert Into CADOP03 ('
                     +'OP3_CODEMP, '
                     +'OP3_FABENV, '
                     +'OP3_LOTSEQ, '
                     +'OP3_CODIGO, '
                     +'OP3_SEQ, '
                     +'OP3_CODMAT,'
                     +'OP3_QTDPREV, '
                     +'OP3_QTDUTIL, '
                     +'OP3_PU, '
                     +'OP3_SITMP,'
                     +'OP3_ORIGEM,'
                     +'OP3_NUMERO,'
                     +'OP3_LOTE, '
                     +'OP3_DTVCTO) values ('
                     +IntToStr(codemp)+','
                     +IntToStr(mInd_Fab_Origem)+','
                     +iif(moper=1,DM3.Tb_Op01OP1_LOTSEQ.AsString,IntToStr(ls_lotfab))+','
                     +Trim(MCHAVE.Text)+','
                     +IntToStr(x)+','
                     +Trim(STG_MP.Cells[0,x])+','
                     +mudavp(FloatTostr(ValFloat(STG_MP.Cells[4,x])))+','
                     +mudavp(FloatTostr(ValFloat(STG_MP.Cells[5,x])))+','
                     +mudavp(FloatTostr(ValFloat(STG_MP.Cells[8,x])))+','
                     +'0'+',' // Situacao do produto acabado
                     +iif(cb_origem.Checked,'1','0')+','
                     +':NUMERO,'
                     +':LOTE,'
                     +':DTVCTO)');
   DM1.Query2.ParamByName('NUMERO').AsString:=STG_MP.Cells[1,x];
   DM1.Query2.ParamByName('LOTE').AsString  :=STG_MP.Cells[2,x];
   if (Trim(STG_MP.Cells[3,x])='/  /') or (Trim(STG_MP.Cells[3,x])='') then
      DM1.Query2.ParamByName('DTVCTO').AsDateTime :=pdatanula
   else
      DM1.Query2.ParamByName('DTVCTO').AsDateTime :=StrToDate(STG_MP.Cells[3,x]);
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
    except  on e: Exception do
       begin
       ex_erroSql_Novo(DM1.Query2,2596,'lerarq:'+e.message ,'CADOP03');
       end;
       end;

   end;

DM1.Query2.Params.Clear;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
for x:=1 to STG_ETA.RowCount-1 do
   begin
   if Trim(STG_ETA.Cells[0,x])='' then
      continue;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftstring,'NOMETA',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'NOME',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'DATAI',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'HORAI',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'DATAT',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'HORAT',ptinput);

   DM1.Query2.SQL.Add('Insert Into CADOPET ('
                     +'OPE_CODEMP,'
                     +'OPE_FABENV,'
                     +'OPE_LOTSEQ,'
                     +'OPE_CODIGO,'
                     +'OPE_CODETA,'
                     +'OPE_NOMETA,'
                     +'OPE_NOME,'
                     +'OPE_DATAI,'
                     +'OPE_HORAI,'
                     +'OPE_DATAT,'
                     +'OPE_HORAT) values ('
                     +IntToStr(codemp)+','
                     +IntToStr(mInd_Fab_Origem)+','
                     +iif(moper=1,DM3.Tb_Op01OP1_LOTSEQ.AsString,IntToStr(ls_lotfab))+','
                     +Trim(MCHAVE.Text)+','
                     +IntToStr(x)+','
                     +':NOMETA,'
                     +':NOME,'
                     +':DATAI,'
                     +':HORAI,'
                     +':DATAT,'
                     +':HORAT)');
   DM1.Query2.ParamByName('NOMETA').AsString:=STG_ETA.Cells[0,x];
   DM1.Query2.ParamByName('NOME').AsString  :=STG_ETA.Cells[1,x];
   if Trim(STG_ETA.Cells[2,x])<>'/  /' then
      DM1.Query2.ParamByName('DATAI').AsDateTime:=StrToDate(STG_ETA.Cells[2,x])
   else
      DM1.Query2.ParamByName('DATAI').AsDateTime:=0;

   DM1.Query2.ParamByName('HORAI').AsString    :=STG_ETA.Cells[3,x];
   if Trim(STG_ETA.Cells[4,x])<>'/  /' then
      DM1.Query2.ParamByName('DATAT').AsDateTime:=StrToDate(STG_ETA.Cells[4,x])
   else
      DM1.Query2.ParamByName('DATAT').AsDateTime:=0;

   DM1.Query2.ParamByName('HORAT').AsString    :=STG_ETA.Cells[5,x];
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except  on e: Exception do
      begin
      ex_erroSql_Novo(DM1.Query2,2660,'lerarq:'+e.message ,'CADOPETA');
      end;
      end;


   end;

DM3.Tb_Op01.Close;
DM3.Tb_Op01.SQL.Clear;
DM3.Tb_Op01.SQL.Add(' SELECT * FROM CADOP01 WHERE OP1_CODIGO='+MCHAVE.Text
                   +' AND OP1_CODEMP='+IntToStr(CODEMP));
DM3.Tb_Op01.Open;

{
if cb_baixagrava.Checked=true then
  bbBaixarMPClick(self);
}
GroupBox1.Enabled:=False;
GroupBox3.Enabled:=False;
GroupBox5.Enabled:=False;
TabSheet4.Enabled:=False;
GB_MANMP.Enabled :=False;
moper:=3;
BBLOCALIZAR.Click;
if mApresentaMensagem=true then
   Fmensagem('Registro Gravado!',0,['0'],0);


end;

procedure TFrm_Ind_Fab.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Confirma a Exclusão?',0,['1','2'],2)<>mrYes then
   exit;
//verificando se existe o lote
DM1.Query1.Close;
DM1.Query1.SQl.Clear;
DM1.Query1.SQL.Add(' CREATE OR REPLACE VIEW TEMPORARIO AS     ');
DM1.Query1.SQL.Add(' select OP2_CODPRO, OP1_LOTE,OP2_QTDPROD, ');
DM1.Query1.SQL.Add('        OP1_DATAVEN, OP1_CODIGO           ');
DM1.Query1.SQL.Add(' from cadop01,cadop02                     ');
DM1.Query1.SQL.Add(' where                                    ');
DM1.Query1.SQL.Add('      op1_codigo=op2_codigo               ');
DM1.Query1.SQL.Add('  and op1_codemp=op2_codemp               ');
DM1.Query1.SQL.Add('  and op1_lotseq=op2_lotseq               ');
DM1.Query1.SQL.Add('  and op1_status=2                        ');
DM1.Query1.SQL.Add(' order by OP2_CODPRO                      ');
try
  DM1.Query1.ExecSQL;
except
  end;
DM1.Query1.Close;
DM1.Query1.SQl.Clear;
DM1.Query1.SQL.Add(' SELECT * FROM TEMPORARIO, CADLGC                          '
                  +' WHERE CLNUMERO(+)=OP1_LOTE AND CLCODPRO(+)=OP2_CODPRO     '
                  +' AND (CLQTD<>OP2_QTDPROD OR CLQTD IS NULL)                 '
                  +' AND OP1_CODIGO='+MCHAVE.Text);
la_Empresas:=trim(fRetInstMECadastro('CADLGC','CLCODEMP',codemp));
  if trim(fRetInstMECadastro('CADOP01','OP1_CODEMP',codemp))<>'' then
    la_Empresas:=la_Empresas+iif(la_empresas<>'',' and ','')+trim(fRetInstMECadastro('CADOP01','OP1_CODEMP',codemp));
if la_Empresas <>'' then
   DM1.Query1.Sql.add(' and '+la_Empresas);
DM1.Query1.Open;

if DM1.Query1.IsEmpty then
  begin
  if (DM3.Tb_Op01OP1_STATUS.Value=2)  then
    fpexcluir(1)
  else if (DM3.Tb_Op01OP1_SITMP.AsInteger=1) and (DM3.Tb_Op01OP1_STATUS.Value<>2) then
    fpexcluir(2)
  else
    fpexcluir(0);

  BBINCLUIR.Enabled  :=bbinc_true;
  BBLOCALIZAR.Enabled:=True;
  BBALTERAR.Enabled  :=False;
  BBEXCLUIR.Enabled  :=False;
  BBCONFIRMAR.Enabled:=False;
  BBIMPRIMIR.Enabled :=False;
  BBGRAVAR.Enabled   :=False;
  bbImportar.Enabled :=False;
  Fmensagem('Registro Excluido!',0,['0'],0);
  BBLIMPAR.Click;
  end
else
  begin
  Fmensagem('Impossivel Excluir OP, já houve venda da mercadoria!',0,['0'],0);
  end;
end;

procedure TFrm_Ind_Fab.BBIMPRIMIRClick(Sender: TObject);
var
y: Integer;
mDataDoc: TDatetime;
begin
if mInd_Fab_Origem=0 then
   fpImprimirFab01(0)
else if mInd_Fab_Origem=1 then
   begin
   if DM1.Tb_PargerPIND_TPFORMULA.Asinteger>0 then
      begin
      Application.CreateForm(TFrm_Ind_Comp02, Frm_Ind_Comp02);
      Frm_Ind_Comp02.Qr_ProdFab.Close;
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Clear;
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('Select PDNOME,   PDQTDGRML,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(':APRESENT AS PDAPRES, ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('PDUND AS UND,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(':LOTE AS LOTE,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, DM3.Tb_Op01OP1_DATA.Value)+chr(39)+') AS DATADOC,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, DM3.Tb_Op01OP1_DATA.Value)+chr(39)+') AS DATAEMI,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_FAB_VCTO AS DATAVEN, ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_QTDPREV AS QTDTEORICA,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_QTDPROD AS QTDREAL,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('PDMARCA AS COORD_PROD,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_QTDPREV AS RENDIMENTO,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('PDMARCA AS COORD_PROD_REND,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('PDMARCA AS GARANTIA_QUAL,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, DM3.Tb_Op01OP1_DATA.Value)+chr(39)+') AS DATAQUAL,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_QTDPREV AS QTDPREV ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(', OP2_CODIGO AS CHAVEOP ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(', PDCODPRO AS CODPRO ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(',PDPRZVAL AS PRZVAL ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(','+DM3.Tb_Op01OP1_STATUS.AsString+' AS OP1_STATUS ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('      FROM CADOP02,CADPRO');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' OP2_CODEMP=0'+IntToStr(codemp)+' and '));
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' OP2_LOTSEQ=0 ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' and OP2_CODIGO=0'+DM3.Tb_Op02OP2_CODIGO.AsString);
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp)));
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' and  PDCODPRO=OP2_CODPRO');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' and  OP2_FABENV=1');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' order by  PDNOME');

      Frm_Ind_Comp02.Qr_ProdFab.ParambyName('APRESENT').asString:=copy(DM3.Tb_Op01OP1_NOME.AsString,1,60);
      Frm_Ind_Comp02.Qr_ProdFab.ParambyName('LOTE').asString    :=DM3.Tb_Op01OP1_LOTE.AsString;
//      Frm_Ind_Comp02.Qr_ProdFab.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));


      try
         Frm_Ind_Comp02.Qr_ProdFab.Open;
      except
         Frm_Ind_Comp02.Qr_ProdFab.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;

      Frm_Ind_Comp02.Tb_Comp_MP.close;
      Frm_Ind_Comp02.Tb_Comp_MP.SQL.Clear;
      Frm_Ind_Comp02.Tb_Comp_MP.SQL.Add('Select OP3_CODEMP AS CPCODEMP, '
                                       +'       CPORDEM,'
                                       +'       CPCODPRO, '
                                       +'       CPCODMAT, '
                                       +'       CPQUANT,'
                                       +'       OP3_PU      AS    CPPU,'
                                       +'       OP3_NUMERO  AS CPNUMERO,'
                                       +'       OP3_LOTE    AS CPMPNUM,'
                                       +'       CPCODPRO_ACAB,'
                                       +'       CPALICMSCRED,'
                                       +'       CPICMSCRED, '
                                       +'        CPVLRINC,'
                                       +'       CPALIQORI, '
                                       +'       CPPERCENT,'
//                                       +'       OP3_PU-OP3_PU AS CPPERCENT,'
                                       +'       CPPERCENT_REST,'
//                                       +'       OP3_PU-OP3_PU AS CPPERCENT_REST,'
                                       +'       OP3_PU-OP3_PU AS CPTIPO,'
                                       +'       OP3_PU-OP3_PU AS CPQTD_PAD,'
                                       +'       PDNOME as NOMPRO,'
                                       +'       PDUND as UNDPRO,'
                                       +'       OP3_QTDPREV as QTDFORM,'
                                       +'       OP3_QTDPREV as QTDUTIL,'
                                       +'       OP3_PU as PCOUNIFORM '
                                       +'  from CADOP03,CADCOMP,CADPRO  where     '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADOP03',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP3_LOTSEQ=0'
                  +' and OP3_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADOP03',[]),'',' and CPCODEMP=OP3_CODEMP ')
                  +' and CPCODMAT=OP3_CODMAT '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OP3_CODEMP ')
                  +' and PDCODPRO=OP3_CODMAT '
                  +' and CPCODPRO=0'+DM3.Tb_Op02OP2_CODPRO.AsString
                  +' and  OP3_FABENV=1');

       Frm_Ind_Comp02.Tb_Comp_MP.SQL.Add(' ORDER BY CPTIPO,CPORDEM, PDNOME');
//       Frm_Ind_Comp02.Tb_Comp_MP.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

//LINDOMAR
      try
         Frm_Ind_Comp02.Tb_Comp_MP.Open;
      except
         Frm_Ind_Comp02.Tb_Comp_MP.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;


      Frm_Ind_Comp02.Tb_FichaPesagem.close;
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Clear;
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('Select ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(':NOMPRO as NOMPRO, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(':LOTE as LOTE, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(' OP3_LOTE as LOTERE, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('TO_DATE('+chr(39)+FormatDatetime(fdt, Frm_Ind_Comp02.Qr_ProdFabDATAEMI.Value)+chr(39)+') as DATADOC, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(' CPCODMAT AS CODMAT, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        OP3_QTDPREV AS QUANT, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        OP3_PU      AS PCOUNI,');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        PDNOME      AS NOMMAT,');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        PDUND       AS NOMUND');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('   from CADOP03,CADCOMP,CADPRO  where     '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADOP03',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP3_LOTSEQ=0'
                  +' and OP3_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADOP03',[]),'',' and CPCODEMP=OP3_CODEMP ')
                  +' and CPCODMAT=OP3_CODMAT '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OP3_CODEMP ')
                  +' and PDCODPRO=OP3_CODMAT '
                  +' and CPCODPRO=0'+DM3.Tb_Op02OP2_CODPRO.AsString
                  +' and  OP3_FABENV=1');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(' ORDER BY CPTIPO,CPORDEM');
      Frm_Ind_Comp02.Tb_FichaPesagem.ParamByName('NOMPRO').AsString:=Frm_Ind_Comp02.Qr_ProdFabPDNOME.Value;
      Frm_Ind_Comp02.Tb_FichaPesagem.ParamByName('LOTE').AsString   :=Frm_Ind_Comp02.Qr_ProdFabLOTE.Value;
      Frm_Ind_Comp02.Tb_FichaPesagem.Open;
      DM3.Tb_Texto.Close;
      DM3.Tb_Texto.SQL.Clear;
      DM3.Tb_Texto.SQL.Add('Select CP_CODEMP,CP_CODPRO, CP_CODPRO_EMPRO,CP_CHAVE, '
                    +'  max(CP_PAGINA) as CP_PAGINA, '
                    +' max(CP_IMPRIME) as CP_IMPRIME '
                    +' ,max(CP_IMPMP) as CP_IMPMP '
                    +' ,max(CP_IMPEMB) as CP_IMPEMB '
                    +' ,max(CP_AVANCPAG) as CP_AVANCPAG '
                    +' from CADPROC02_TEXTO  '
                    +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),''
                    ,' CP_CODEMP=0'+IntToStr(codemp)+' and '));
      DM3.Tb_Texto.SQL.add(' CP_CODPRO=0');
      //DM3.Tb_Texto.SQL.add(' AND CP_CODPRO_EMPRO=0');
      DM3.Tb_Texto.SQL.add(' AND CP_CODPRO_EMPRO=0'+DM3.Tb_Op02OP2_CODPRO.AsString);
      DM3.Tb_Texto.SQL.add(' AND CP_IMPRIME=0');
      DM3.Tb_Texto.SQL.Add(' group by  CP_CODEMP,CP_CODPRO, CP_CODPRO_EMPRO,CP_CHAVE ');
     DM3.Tb_Texto.SQL.Add(' order by CP_CODPRO, CP_CODPRO_EMPRO,CP_PAGINA ');

//      DM3.Tb_Texto.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

      try
         DM3.Tb_Texto.Open;
      except
         DM3.Tb_Texto.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         exit;
         end;

      if DM1.Tb_PargerPIND_TPFORMULA.Asinteger=1 then
         begin
//         Frm_Ind_Comp02.OP_QrCompositeReport1.prepare;
//         Frm_Ind_Comp02.OP_LBLQTDP.Caption:=IntToStr(Frm_Ind_Comp02.Qr_OrdemProducao.PageNumber);
//         Frm_Ind_Comp02.OP_QrCompositeReport1.preview;
//      Frm_Ind_Comp02.Qr_OrdemProducao.Preview;
         end
      else if DM1.Tb_PargerPIND_TPFORMULA.Asinteger=2 then
         begin
{
         if CB_MATRICIAL.Checked then
            begin
            Frm_Ind_Comp02.RLReport_op.Margins.LeftMargin :=5;
            Frm_Ind_Comp02.RLReport_op.Margins.RightMargin:=5;
            Frm_Ind_Comp02.RLReport_op.DefaultFilter:=Frm_Ind_Comp02.matricial;
            end
         else
            begin
            Frm_Ind_Comp02.RLReport_op.Margins.LeftMargin :=5;
            Frm_Ind_Comp02.RLReport_op.Margins.RightMargin:=5;
            end;
}
//         Frm_Ind_Comp02.RLReport_op.PreviewModal;
//      Frm_Ind_Comp02.Qr_OrdemProducao.Preview;

         mQtdPagTot:=form_ind_comp02_indfab.fImprimirOP_RdPrint(0);
         mQtdPagTot:=form_ind_comp02_indfab.fImprimirOP_RdPrint(1);
         end;
      Frm_Ind_Comp02.Free;
      Frm_Ind_Comp02:=nil;
      end
   else
      fpImprimirFab02(0)
   end
else if mInd_Fab_Origem=2 then
   begin
   if DM1.Tb_PargerPIND_TPFORMULA.Asinteger>1 then
      begin
      Application.CreateForm(TFrm_Ind_Comp02, Frm_Ind_Comp02);
      Frm_Ind_Comp02.Qr_ProdFab.Close;
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Clear;
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('Select PDNOME,   PDQTDGRML,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(' :APRESENT AS PDAPRES, ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('PDUND   AS UND,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(' :LOTE AS LOTE,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, DM3.Tb_Op01OP1_DATA.Value)+chr(39)+') AS DATADOC,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, DM3.Tb_Op01OP1_DATA.Value)+chr(39)+') AS DATAEMI,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_FAB_VCTO AS DATAVEN, ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_QTDPREV AS QTDTEORICA,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_QTDPROD AS QTDREAL,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('PDMARCA AS COORD_PROD,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_QTDPREV AS RENDIMENTO,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('PDMARCA AS COORD_PROD_REND,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('PDMARCA AS GARANTIA_QUAL,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, DM3.Tb_Op01OP1_DATA.Value)+chr(39)+') AS DATAQUAL,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('OP2_QTDPREV AS QTDPREV ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(', OP2_CODIGO AS CHAVEOP ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(', PDCODPRO AS CODPRO ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(',PDPRZVAL AS PRZVAL ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(','+DM3.Tb_Op01OP1_STATUS.AsString+' AS OP1_STATUS ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('      FROM CADOP02,CADPRO');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' OP2_CODEMP=0'+IntToStr(codemp)+' and '));
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' OP2_LOTSEQ=0 ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' and OP2_CODIGO=0'+DM3.Tb_Op02OP2_CODIGO.AsString);
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp)));
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' and  PDCODPRO=OP2_CODPRO');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' and  OP2_FABENV=2');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.add(' order by PDNOME');

      Frm_Ind_Comp02.Qr_ProdFab.ParamByName('APRESENT').AsString:=DM3.Tb_Op01OP1_NOME.AsString;
      Frm_Ind_Comp02.Qr_ProdFab.ParamByName('LOTE').AsString    :=DM3.Tb_Op01OP1_LOTE.AsString;

      try
         Frm_Ind_Comp02.Qr_ProdFab.Open;
      except
         Frm_Ind_Comp02.Qr_ProdFab.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;

      Frm_Ind_Comp02.Tb_Comp_MP.close;
      Frm_Ind_Comp02.Tb_Comp_MP.SQL.Clear;
      Frm_Ind_Comp02.Tb_Comp_MP.SQL.Add('Select OP3_CODEMP AS CPCODEMP, '
                                       +'       OP3_SEQ AS CPORDEM, '
                                       +'       OP3_CODMAT AS CPCODPRO, '
                                       +'       OP3_CODMAT AS CPCODMAT, '
                                       +'       OP3_QTDPREV AS       CPQUANT, '
                                       +'       OP3_PU      AS    CPPU, '
                                       +'       OP3_NUMERO  AS CPNUMERO,     '
                                       +'       OP3_LOTE    AS CPMPNUM, '
                                       +'       OP3_CODMAT AS CPCODPRO_ACAB, '
                                       +'       OP3_PU-OP3_PU AS      CPALICMSCRED, '
                                       +'       OP3_PU-OP3_PU AS       CPICMSCRED, '
                                       +'       OP3_PU-OP3_PU AS CPVLRINC, '
                                       +'       OP3_PU-OP3_PU AS CPALIQORI, '
                                       +'       OP3_PU-OP3_PU AS  CPPERCENT, '
                                       +'       OP3_PU-OP3_PU AS CPPERCENT_REST, '
                                       +'       OP3_PU-OP3_PU AS CPTIPO, '
                                       +'       OP3_PU-OP3_PU AS CPQTD_PAD,      '
                                       +'       PDNOME as NOMPRO, '
                                       +'       PDUND as UNDPRO,      '
                                       +'       OP3_QTDPREV as QTDFORM, '
                                       +'       OP3_QTDPREV as QTDUTIL,     '
                                       +'       OP3_PU as PCOUNIFORM '
                                       +'       from CADOP03,CADPRO  where  '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADOP03',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP3_LOTSEQ=0'
                  +' and OP3_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OP3_CODEMP ')
                  +' and PDCODPRO=OP3_CODMAT '
                  +' and  OP3_FABENV=2');


       Frm_Ind_Comp02.Tb_Comp_MP.SQL.Add(' ORDER BY CPORDEM, PDNOME');
//       Frm_Ind_Comp02.Tb_Comp_MP.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

//LINDOMAR
      try
         Frm_Ind_Comp02.Tb_Comp_MP.Open;
      except
         Frm_Ind_Comp02.Tb_Comp_MP.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;

      DM3.Tb_Texto.Close;
      DM3.Tb_Texto.SQL.Clear;
      DM3.Tb_Texto.SQL.Add('Select CP_CODEMP,CP_CODPRO, CP_CODPRO_EMPRO,CP_CHAVE, '
                    +'  max(CP_PAGINA) as CP_PAGINA, '
                    +' max(CP_IMPRIME) as CP_IMPRIME '
                    +' ,max(CP_IMPMP) as CP_IMPMP '
                    +' ,max(CP_IMPEMB) as CP_IMPEMB '
                    +' ,max(CP_AVANCPAG) as CP_AVANCPAG '
                    +' from CADPROC02_TEXTO  '
                    +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),''
                    ,' CP_CODEMP=0'+IntToStr(codemp)+' and '));
      DM3.Tb_Texto.SQL.add(' CP_CODPRO=0'+DM3.Tb_Op02OP2_CODPRO.AsString);
      if DM3.Tb_Op02OP2_FAB_CODIGO.AsFloat>0 then
         DM3.Tb_Texto.SQL.add(' AND CP_CODPRO_EMPRO=0'+DM3.Tb_Op02OP2_FAB_CODIGO.AsString);
      DM3.Tb_Texto.SQL.add(' AND CP_IMPRIME=0');
      DM3.Tb_Texto.SQL.Add(' group by  CP_CODEMP,CP_CODPRO, CP_CODPRO_EMPRO,CP_CHAVE ');
      DM3.Tb_Texto.SQL.Add(' order by CP_CODPRO, CP_CODPRO_EMPRO,CP_PAGINA ');

//      DM3.Tb_Texto.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

      try
         DM3.Tb_Texto.Open;
      except
         DM3.Tb_Texto.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         exit;
         end;
      Frm_Ind_Comp02.Tb_FichaPesagem.close;
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Clear;
      Frm_Ind_Comp02.Tb_FichaPesagem.Params.CreateParam(ftString,'NOMPRO',ptInput);
      Frm_Ind_Comp02.Tb_FichaPesagem.Params.CreateParam(ftString,'LOTE',ptInput);

      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('Select ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(':NOMPRO  as NOMPRO, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(':LOTE  as LOTE, ');

      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(' OP3_LOTE as LOTERE, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('TO_DATE('+chr(39)+FormatDatetime(fdt, Frm_Ind_Comp02.Qr_ProdFabDATAEMI.Value)+chr(39)+') as DATADOC, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(' CPCODMAT AS CODMAT, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        OP3_QTDPREV AS QUANT, ');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        OP3_PU      AS PCOUNI,');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        PDNOME      AS NOMMAT,');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('        PDUND       AS NOMUND');
      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add('   from CADOP03,CADCOMP,CADPRO  where     '
                       +iif(DM1.Qr_TID.Locate('TINOME','CADOP03',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP3_LOTSEQ=0'
                  +' and OP3_CODIGO=0'+DM3.Tb_Op01OP1_CODIGO.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADOP03',[]),'',' and CPCODEMP=OP3_CODEMP ')
                  +' and CPCODMAT=OP3_CODMAT '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OP3_CODEMP ')
                  +' and PDCODPRO=OP3_CODMAT '
                  +' and CPCODPRO_ACAB=0'+DM3.Tb_Op02OP2_CODPRO.AsString
                  +' and  OP3_FABENV=2');

      Frm_Ind_Comp02.Tb_FichaPesagem.SQL.Add(' ORDER BY CPTIPO,CPORDEM, PDNOME');
      Frm_Ind_Comp02.Tb_FichaPesagem.ParamByName('NOMPRO').AsString:=Frm_Ind_Comp02.Qr_ProdFabPDNOME.Value;
      Frm_Ind_Comp02.Tb_FichaPesagem.ParamByName('LOTE').AsString  :=Frm_Ind_Comp02.Qr_ProdFabLOTE.Value;
      try
         Frm_Ind_Comp02.Tb_FichaPesagem.Open
      except
         Frm_Ind_Comp02.Tb_FichaPesagem.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

         end;

      if DM1.Tb_PargerPIND_TPFORMULA.Asinteger=2 then
         begin
{
         if CB_MATRICIAL.Checked then
            begin
            Frm_Ind_Comp02.RLReport_envase.Margins.LeftMargin :=5;
            Frm_Ind_Comp02.RLReport_envase.Margins.RightMargin:=5;
            Frm_Ind_Comp02.RLReport_envase.DefaultFilter:=Frm_Ind_Comp02.matricial;
            end
         else
            begin
            Frm_Ind_Comp02.RLReport_envase.Margins.LeftMargin :=5;
            Frm_Ind_Comp02.RLReport_envase.Margins.RightMargin:=5;
            end;
} //        Frm_Ind_Comp02.RLReport_envase.PreviewModal;
         mQtdPagTot:=form_ind_comp02_indfab.fImprimirEnvase_RdPrint(0);
         form_ind_comp02_indfab.fImprimirEnvase_RdPrint(1);
         end;
//      else
//         Frm_Ind_Comp02.QuickRep2.Preview;
      Frm_Ind_Comp02.Free;
      Frm_Ind_Comp02:=nil;
      end
   else
      fpImprimirEnvase(0);
   end
else if mInd_Fab_Origem=3 then
   //nova impressao
   begin
   Application.CreateForm(TFrm_Ind_ForEnv, Frm_Ind_ForEnv);
   for y:=1 to STG_PP.RowCount do
      begin
      if Trim(STG_PP.Cells[mcolmp_codpro,y])='' then
         Continue;
      mCodigoOP:=fsonumero(MCHAVE.Text);
      Frm_Ind_ForEnv.CODPRO.Text:=Trim(STG_PP.Cells[mcolmp_codpro,y]);
      Frm_Ind_ForEnv.CODPROExit(Self);
      Frm_Ind_ForEnv.Qr_ProdFab.Close;
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Clear;
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('Select PDNOME,   PDQTDGRML,');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(' :APRESENT  AS PDAPRES, ');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add('PDUND   AS UND,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add(':NUMLOT AS LOTE,');
      if trim(MDATA.Text)='/  /' then
         mDataDoc:=pdatanula
      else
         begin
         mDataDoc:=StrtoDate(MDATA.Text);
         end;
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, mDataDoc)+chr(39)+') AS DATADOC,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, mDataDoc)+chr(39)+') AS DATAEMI,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, mDataDoc)+chr(39)+') AS DATAVEN,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add(mudaVP(FloatTostr(ValFloat(STG_PP.Cells[mcolmp_lote,Y])))+' AS QTDTEORICA,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add(mudaVP(FloatTostr(ValFloat(STG_PP.Cells[mcolmp_descricao,Y])))+' AS QTDREAL,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add(chr(39)+insere2(' ',' ',20)+chr(39)+' AS COORD_PROD,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add('PDSALDO-PDSALDO AS RENDIMENTO,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add(chr(39)+insere2(' ',' ',20)+chr(39)+' AS COORD_PROD_REND,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add(chr(39)+insere2(' ',' ',20)+chr(39)+' AS GARANTIA_QUAL,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add('TO_DATE('+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+') AS DATAQUAL,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add(mudaVP(FloatTostr(ValFloat(STG_PP.Cells[mcolmp_lote,Y])))+'*PDQTDGRML  AS QTDPREV,');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add(', PDSALDO-PDSALDO AS CHAVEOP ');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.Add(', PDCODPRO AS CODPRO ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(',PDPRZVAL AS PRZVAL ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add(','+DM3.Tb_Op01OP1_STATUS.AsString+' AS OP1_STATUS ');
      Frm_Ind_Comp02.Qr_ProdFab.SQL.Add('      FROM CADPRO');
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and '));
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.add(' PDCODPRO=0'+fdeixanum2(Frm_Ind_ForEnv.CODPRO.Text));
      Frm_Ind_ForEnv.Qr_ProdFab.SQL.add(' ORDER BY PDNOME ');
      Frm_Ind_Comp02.Qr_ProdFab.ParamByName('APRESENT').AsString :=DM3.Tb_Op01OP1_NOME.AsString;
      Frm_Ind_ForEnv.Qr_ProdFab.ParamByName('NUMLOT').AsString   :=MNUMLOT.Text;
      try
         Frm_Ind_ForEnv.Qr_ProdFab.Open;
      except
         Frm_Ind_ForEnv.Qr_ProdFab.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;
      Frm_Ind_ForEnv.bbImprimir.Click;
      end;
   Frm_Ind_ForEnv.Free;
   Frm_Ind_ForEnv:=nil;
   end;



end;
function TFrm_Ind_Fab.fptestapag(ptipo: Integer): Boolean;
begin
if mlin>58 then
   begin
   if ptipo=0 then
      begin
      if ValInt(copy(mpseg,4,2))=02 then  // grade cores tamanho
         begin
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.Novapagina;
         mlin:=1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                               |Numero/Grade                  |Und|Quant.Prev.  |Quant.Produz.|% Aproveit|',mreduz);
         end
      else
         begin
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.Novapagina;
         mlin:=1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                                                              |Und|Quant.Prev.  |Quant.Produz.|% Aproveit|',mreduz);
         end;
      end
   else if ptipo=1 then
      begin
      if ValInt(copy(mpseg,4,2))=02 then  // grade cores tamanho
         begin
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.Novapagina;
         mlin:=1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                               |Numero/Grade                  |Und|Quant.Prev.  |Quant.Utiliz.|% Aproveit|',mreduz);
         end
      else
         begin
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.Novapagina;
         mlin:=1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                                                              |Und|Quant.Prev.  |Quant.Utiliz.|% Aproveit|',mreduz);
         end;
      end
   else if ptipo=2 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mneg);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mneg);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Nome do Processo                        |Nome do Responsavel                     |Data Inicio |   Horas  |Data Termino|   Horas  |',mreduz);
      end
   else if ptipo=3 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mneg);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mneg);
      end;
   mlin:=mlin+1;
   end;
Result:=True;


end;


procedure TFrm_Ind_Fab.STG_MPKeyPress(Sender: TObject; var Key: Char);
begin
if not meditar then
   key:=#0
else if STG_MP.Col<>5 then
   begin
   Fmensagem('Esta Coluna Não Pode Ser Alterada!',0,['0'],0);
   key:=#0;
   exit;
   end
else if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_Ind_Fab.STG_MPExit(Sender: TObject);
var
Arow,Acol:Integer;
begin
Arow:=STG_MP.Row;
Acol:=STG_MP.Col;
if STG_MP.col=5 then
   STG_MP.Cells[Acol,Arow]:=FormatFloat(mcasind,valfloat(STG_MP.Cells[Acol,Arow]));
fptotais(0);
end;

procedure TFrm_Ind_Fab.STG_MPSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
mlin, mcol: Integer;
begin
mlin:=STG_MP.Row;
mcol:=STG_MP.Col;
if STG_MP.col=5 then
   STG_MP.Cells[mcol,mlin]:=FormatFloat(mcasind,valfloat(STG_MP.Cells[mcol,mlin]));
fptotais(0);
end;

procedure TFrm_Ind_Fab.STG_ETAGetEditMask(Sender: TObject; ACol,
  ARow: Integer; var Value: String);
begin
if acol=4 then
    Value :=  '00/00/0000;1 '
else if acol=5 then
    Value := '00:00:00;1 ';

end;

procedure TFrm_Ind_Fab.STG_ETASelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
mlin, mcol: Integer;
begin
mlin:=STG_ETA.Row;
mcol:=STG_ETA.Col;
if ValFloat(STG_ETA.Cells[mcol,mlin])<=0 then
   exit;
if STG_ETA.col=4 then
   begin
   Try
      STG_ETA.Cells[mcol,mlin]:=FormatdateTime(fdt2, StrToDate(STG_ETA.Cells[mcol,mlin]));
   except
      Fmensagem('Data Invalida!',0,['0'],0);
      abort;
      end;
   end
else if STG_ETA.col=5 then
   begin
   Try
      STG_ETA.Cells[mcol,mlin]:=FormatdateTime(fhr, StrToTime(STG_ETA.Cells[mcol,mlin]));
   except
      Fmensagem('Hora Invalida!',0,['0'],0);
      abort;
      end;
   end;

end;

procedure TFrm_Ind_Fab.STG_ETAExit(Sender: TObject);
var
Arow, Acol: Integer;
begin
Arow:=STG_ETA.Row;
Acol:=STG_ETA.Col;
if ValFloat(STG_ETA.Cells[Acol,ARow])<=0 then
   exit;
if STG_ETA.col=4 then
   begin
   Try
      STG_ETA.Cells[Acol,ARow]:=FormatdateTime(fdt2, StrToDate(STG_ETA.Cells[Acol,ARow]));
   except
      Fmensagem('Data Invalida!',0,['0'],0);
      abort;
      end;
   end
else if STG_ETA.col=5 then
   begin
   Try
      STG_ETA.Cells[Acol,ARow]:=FormatdateTime(fhr, StrToTime(STG_ETA.Cells[Acol,ARow]));
   except
      Fmensagem('Hora Invalida!',0,['0'],0);
      abort;
      end;
   end;

end;


procedure TFrm_Ind_Fab.STG_ETAKeyPress(Sender: TObject; var Key: Char);
begin
if not meditar then
   key:=#0
else if STG_ETA.Col<4 then
   begin
   Fmensagem('Esta Coluna Não Pode Ser Alterada!',0,['0'],0);
   key:=#0;
   exit;
   end

end;

procedure TFrm_Ind_Fab.STG_ETADrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin


if (arow>0) and (ACOL>3) then
   begin
   if Trim(STG_ETA.Cells[0,arow])<>'' then
      begin
      STG_ETA.Canvas.Brush.Color:=clLime;
      STG_ETA.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG_ETA.Cells[acol,arow]);
      end;
   end;


end;

procedure TFrm_Ind_Fab.STG_PPKeyPress(Sender: TObject; var Key: Char);
begin
if not meditar then
   key:=#0
else if STG_PP.Col<>7 then
   begin
   Fmensagem('Esta Coluna Não Pode Ser Alterada!',0,['0'],0);
   key:=#0;
   exit;
   end
else if key in [',','.'] then
   key:=DecimalSeparator;

end;

procedure TFrm_Ind_Fab.STG_PPExit(Sender: TObject);
var
Arow,Acol:Integer;
begin
Arow:=STG_PP.Row;
Acol:=STG_PP.Col;
if STG_PP.col=7 then
   STG_PP.Cells[Acol,Arow]:=FormatFloat(mcasind,valfloat(STG_PP.Cells[Acol,Arow]));
fptotais(0);
end;

procedure TFrm_Ind_Fab.STG_PPSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
mlin, mcol: Integer;
begin
mlin:=STG_PP.Row;
mcol:=STG_PP.Col;
if STG_PP.col=7 then
   STG_PP.Cells[mcol,mlin]:=FormatFloat(mcasind,valfloat(STG_PP.Cells[mcol,mlin]));
fptotais(0);
end;


function TFrm_Ind_Fab.fpconfirmar(ptipo: Integer): Boolean;
var
mqtdgrav,x: Integer;
mfat,mrest: Real;
mdtv: String;
pBaixar: pBaixarLotes;

begin
mqtdgrav:=0;
if (ptipo=3) or (ptipo=2) then // Baixar Materia Prima com lotes de materias primas
   begin
   for x:=1 to STG_MP.RowCount-1 do
      begin
      if Trim(STG_MP.Cells[0,x])='' then
         continue;
      mrest:=ValFloat(STG_MP.Cells[05,x]);
      mfat :=0;
      if mrest>0 then
         begin
         flcadlgc(0,0,0,Trim(STG_MP.Cells[0,x]),' ',' ');
         while not (DM1.Tb_LGC.Eof) and (mrest>0) do
            begin
            if DM1.Tb_LGCCLQTD.Value<=0 then
               begin
               DM1.Tb_LGC.Next;
               Continue;
               end;
            if DM1.Tb_LGCCLQTD.Value<mrest then
               begin
               mfat:=DM1.Tb_LGCCLQTD.Value;
               mrest:=mrest-mfat;
               end
            else
               begin
               mfat:=mrest;
               mrest:=0;
               end;
            if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.AsDateTime<=pdatanula) then
               mdtv:=''
            else
               mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);


pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := 0;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := valint(mchave.Text);
	pBaixar.pChave_ano := ls_lotfab;
	pBaixar.pQtd       := mfat;
	pBaixar.pCodPro    := DM1.Tb_LGCCLCODPRO.AsString;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM1.Tb_LGCCLNUMERO.AsString;
	pBaixar.pDtVcto       := DM1.Tb_LGCCLDTVCTO.AsDateTime;
	pBaixar.pDtVcto       := DM1.Tb_LGCCLDTFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := valint(mchave.text);
	fBaixarMercadorias(pBaixar);

{

            fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,0
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,fsonumero(mchave.Text)
                  ,ls_lotfab
                  ,mfat
                  ,DM1.Tb_LGCCLCODPRO.AsString
                  ,'S' // estnor
                  ,'N' // estreversado
                  ,DM1.Tb_LGCCLNUMERO.AsString
                  ,DM1.Tb_LGCCLDTVCTO.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
}
            DM1.Tb_LGC.Next;
            end;
         if mrest>0 then
            begin
            mfat:=mrest;
            mrest:=0;
            mdtv:='';
            flcadlgc(0,1,0,Trim(STG_MP.Cells[0,x]),' ',' ');
            if DM1.Tb_LGC.Eof then
               begin
               fcrialgc(0,0,codemp,Trim(STG_MP.Cells[0,x]),' ','');
               if not flcadlgc(0,1,0,Trim(STG_MP.Cells[0,x]),'',' ') then
                  Fmensagem('erro ao tentar procurar lotes de mercadorias 2413!',0,['0'],0)
               else
                  begin


pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := 0;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := valint(mchave.Text);
	pBaixar.pChave_ano := ls_lotfab;
	pBaixar.pQtd       := mfat;
	pBaixar.pCodPro    := DM1.Tb_LGCCLCODPRO.AsString;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM1.Tb_LGCCLNUMERO.AsString;
	pBaixar.pDtVcto       := DM1.Tb_LGCCLDTVCTO.AsDateTime;
	pBaixar.pDtFab        := DM1.Tb_LGCCLDTFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := valint(mChave.text);
	fBaixarMercadorias(pBaixar);
{
                  fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,0
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,fsonumero(mchave.Text)
                  ,ls_lotfab
                  ,mfat
                  ,DM1.Tb_LGCCLCODPRO.AsString
                  ,'S' // estnor
                  ,'N' // estreversado
                  ,DM1.Tb_LGCCLNUMERO.AsString
                  ,DM1.Tb_LGCCLDTVCTO.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
}
                  end;
               end
            else
               begin

pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := 0;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := valint(mchave.Text);
	pBaixar.pChave_ano := ls_lotfab;
	pBaixar.pQtd       := mfat;
	pBaixar.pCodPro    := DM1.Tb_LGCCLCODPRO.AsString;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab        := 0;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := valint(mchave.text);
	fBaixarMercadorias(pBaixar);

{               fBaixarMercadorias(codemp
               ,log_filial_padrao
               ,0
               ,04 // docori
               ,codusr
               ,0 //pcontesp
               ,Log_TipoProdPad //ptipoprod
               ,fsonumero(mchave.Text)
               ,ls_lotfab
               ,mfat
               ,DM1.Tb_LGCCLCODPRO.AsString
               ,'S' // estnor
               ,'N' // estreversado
               ,''
               ,0
                  ,'' // lote re
                  ,'' // obs

               );
 }
               end;

            if DM1.Tb_LGCCLDTVCTO.IsNull then
               mdtv:=''
            else
               mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);
            end;
         end;
      end;
   end;


if (ptipo=0) or (ptipo=2) then
   begin
//   lindomar
   if ValInt(copy(mpseg,4,2))=2  then  // se tem grade
      begin
      DM3.Tb_Op03.First;
      While not DM3.Tb_OP03.Eof do //baixando o estoque de matérias primas
         begin
         mdtv:='';


pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := DM3.Tb_Op03OP3_SEQ.AsInteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
	pBaixar.pChave_ano := DM3.Tb_Op03OP3_LOTSEQ.AsInteger;
	pBaixar.pQtd       := DM3.Tb_Op03OP3_QTDUTIL.AsFloat;
	pBaixar.pCodPro    := DM3.Tb_Op03OP3_CODMAT.AsString;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM3.Tb_Op03OP3_LOTE.AsString;
	pBaixar.pDtVcto       := DM3.Tb_Op03OP3_DTVCTO.AsDateTime;
	pBaixar.pDtFab        := DM3.Tb_Op03OP3_DTfab.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := DM3.Tb_Op03OP3_CODIGO.AsInteger;
	fBaixarMercadorias(pBaixar);

  {
         fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op03OP3_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op03OP3_CODIGO.AsFloat
                  ,DM3.Tb_Op03OP3_LOTSEQ.AsFloat
                  ,DM3.Tb_Op03OP3_QTDUTIL.AsFloat
                  ,DM3.Tb_Op03OP3_CODMAT.AsString
                  ,'S' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op03OP3_LOTE.AsString
                  ,DM3.Tb_Op03OP3_DTVCTO.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
}
         DM3.Tb_Op03.Next;
         end;
      end;
   DM3.Tb_Op02.First;
   While not DM3.Tb_OP02.Eof do // Entrada no Estoque de produtos acabado
      begin
      mdtv:='';


pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := DM3.Tb_Op02OP2_SEQ.AsInteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
	pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
	pBaixar.pQtd       := DM3.Tb_Op02OP2_QTDPROD.AsFloat;
	pBaixar.pCodPro    := DM3.Tb_Op02OP2_QTDPROD.AsString;
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM3.Tb_Op01OP1_LOTE.AsString;
	pBaixar.pDtVcto       := DM3.Tb_Op01OP1_DATAVEN.AsDateTime;
	pBaixar.pDtfab        := DM3.Tb_Op01OP1_DATFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
	fBaixarMercadorias(pBaixar);
{
      fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,DM3.Tb_Op02OP2_QTDPROD.AsFloat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op01OP1_LOTE.AsString
                  ,DM3.Tb_Op01OP1_DATAVEN.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
}
      if (mInd_Fab_Origem=2) and (DM3.Tb_Op02OP2_FAB_QTD.Asfloat<>0) then
         begin
// inicio
         mrest:=DM3.Tb_Op02OP2_FAB_QTD.Asfloat;
         mfat :=0;
         if mrest>0 then
            begin


pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := DM3.Tb_Op02OP2_SEQ.AsInteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
	pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
	pBaixar.pQtd       := mfat;
	pBaixar.pCodPro    := DM3.Tb_Op02OP2_CODPRO.AsString;
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM3.Tb_Op01OP1_LOTE.AsString;
	pBaixar.pDtVcto       := DM3.Tb_Op01OP1_DATAVEN.AsDateTime;
	pBaixar.pDtFab        := DM3.Tb_Op01OP1_DATFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
 PBaixar.pChaveIdNew   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
	fBaixarMercadorias(pBaixar);
{
            fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,mfat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op01OP1_LOTE.AsString
                  ,DM3.Tb_Op01OP1_DATAVEN.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
}
            flcadlgc(0,0,0,DM3.Tb_Op02OP2_FAB_CODIGO.AsString,' ',' ');
            while not (DM1.Tb_LGC.Eof) and (mrest>0) do
               begin
               if DM1.Tb_LGCCLQTD.Value<=0 then
                  begin
                  DM1.Tb_LGC.Next;
                  Continue;
                  end;
               if DM1.Tb_LGCCLQTD.Value<mrest then
                  begin
                  mfat:=DM1.Tb_LGCCLQTD.Value;
                  mrest:=mrest-mfat;
                  end
               else
                  begin
                  mfat:=mrest;
                  mrest:=0;
                  end;
               if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.AsDateTime<=pdatanula) then
                  mdtv:=''
               else
                  mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);


pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := DM3.Tb_Op02OP2_SEQ.AsInteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
	pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
	pBaixar.pQtd       := mfat;
	pBaixar.pCodPro    := DM3.Tb_Op02OP2_CODPRO.AsString;
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := DM3.Tb_Op01OP1_LOTE.AsString;
	pBaixar.pDtVcto       := DM3.Tb_Op01OP1_DATAVEN.AsDateTime;
	pBaixar.pDtFab        := DM3.Tb_Op01OP1_DATFAB.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
	fBaixarMercadorias(pBaixar);
{
               fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,mfat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,DM3.Tb_Op01OP1_LOTE.AsString
                  ,DM3.Tb_Op01OP1_DATAVEN.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                  );
 }
               DM1.Tb_LGC.Next;
               end;
            if mrest>0 then
               begin
               mfat:=mrest;
               mrest:=0;
               mdtv:='';
               flcadlgc(0,1,0,DM3.Tb_Op02OP2_FAB_CODIGO.AsString,' ',' ');
               if DM1.Tb_LGC.Eof then
                  begin


pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := DM3.Tb_Op02OP2_SEQ.AsInteger;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
	pBaixar.pChave_ano := DM3.Tb_Op02OP2_LOTSEQ.AsInteger;
	pBaixar.pQtd       := mfat;
	pBaixar.pCodPro    := DM3.Tb_Op02OP2_CODPRO.AsString;
	pBaixar.pEstNor       := 'E'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab        := 0;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := DM3.Tb_Op02OP2_CODIGO.AsInteger;
	fBaixarMercadorias(pBaixar);
{
                  fBaixarMercadorias(codemp
                  ,log_filial_padrao
                  ,DM3.Tb_Op02OP2_SEQ.AsInteger
                  ,04 // docori
                  ,codusr
                  ,0 //pcontesp
                  ,Log_TipoProdPad //ptipoprod
                  ,DM3.Tb_Op02OP2_CODIGO.AsFloat
                  ,DM3.Tb_Op02OP2_LOTSEQ.AsFloat
                  ,mfat
                  ,DM3.Tb_Op02OP2_CODPRO.AsString
                  ,'E' // estnor
                  ,'N' // estreversado
                  ,''
                  ,0
                  ,'' // lote re
                  ,'' // obs

                  );
}
                  end;

               if DM1.Tb_LGCCLDTVCTO.IsNull then
                  mdtv:=''
               else
                  mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);
               end;
            end;
         end;
      DM3.Tb_Op02.Next;
      end;
   end;

result:=True;
end;

procedure TFrm_Ind_Fab.BBCONFIRMARClick(Sender: TObject);
begin
if DM3.Tb_Op01OP1_STATUS.Value>1 then
   begin
   Fmensagem('Este Pedido ja Estava Confirmado!',0,['0'],0);
   exit;
   end;
if (not CB_QTDNEG.Checked) and (DM3.Tb_Op01OP1_SITMP.Asinteger<1) then
   begin
   if not fTestaEstoqueNegativo(1) then
      exit;
   end;

if not mInd_Fab_Origem=2 then
  begin
  if fMensagem('Quer Realmente Confirmar a Produção!',0,['1','2'],0)<>mrYes then
    exit;
  end
else
  begin
  if fMensagem('Quer Realmente Confirmar este Envase!',0,['1','2'],0)<>mrYes then
    exit;

  end;

if fpconfirmar(iif(DM3.Tb_Op01OP1_SITMP.Asinteger=1,0,2)) then
   begin
   DM3.Tb_Op01.Edit;
   DM3.Tb_Op01OP1_STATUS.Value:=2;
   DM3.Tb_Op01OP1_SITMP.Value:=1;
   DM3.Tb_Op01.Post;
   Fmensagem('Confirmado!',0,['0'],0);
   BBLIMPAR.Click;
   end;
end;

procedure TFrm_Ind_Fab.bbImportarClick(Sender: TObject);
begin
Application.Createform(TFrm_ImpPed, Frm_ImpPed);
Frm_ImpPed.ShowModal;
if mimportou then
   begin
   if (mqtd>13) then
      STG_PP.TopRow:=mqtd-12;
   fpmatprima(0);
   fptotais(0);
   MCODPRO.Text  :='';
   MGRADE.Text   :='';
   MQTDPREV.Text :='';
   MUND.Text     :='';
   MNOMPRO.Text  :='';
   MPU.Text      :='';
   MTOTAL.Caption:='';
   MQTDPREV.Text :='';
   FAB_MCHAVE.Text   :='';
   FAB_MDTFABR.Text  :='/  /';
   FAB_MLOTE.Text    :='';
   FAB_MDTVCTO.Text  :='/  /';
   FAB_MCODPRO.Text  :='';
   FAB_MNOMPRO.Text  :='';
//   FAB_MUND.Text     :='';
   FAB_MQTD.Text     :='';
   FAB_MPU.Text      :='';
   FAB_MTOTAL.Caption:='';
   end;
MCODPRO.SetFocus;


Frm_ImpPed.Free;
Frm_ImpPed:=NIL;

end;

function TFrm_ind_Fab.fpImprimirFab01(ptipo: Integer): Boolean;
var
maprov: Real;
mtotprev, mtotreal: Real;
x: Integer;
begin
mlin:=1;
mpag:=1;
testeform := TFrm_Ind_Fab(FindGlobalComponent('form_impres_ind_fab'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_ind_fab);

form_impres_ind_fab.fimpresajustaimp(1,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM1.Tb_EmpRAZAO.Value),' ',80),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM1.Tb_EmpENDERECO.Value)+' '+Trim(DM1.Tb_EmpBAIRRO.Value)+' '+Trim(DM1.Tb_EmpCIDADE.Value)+'-'+Trim(DM1.Tb_EmpUF.Value),' ',132),mreduz);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra('CNPJ.: '+Trim(DM1.Tb_Empcnpj_masc.Value)+' Inscricao Estadual: '+Trim(DM1.Tb_EmpINSCRICAO.Value),' ',132),mreduz);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra('Fone: '+Trim(DM1.Tb_EmpFONE.Value)+' Fax: '+Trim(DM1.Tb_EmpFAX.Value),' ',132),mreduz);
mlin:=mlin+3;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra('ORDEM DE PRODUCAO NUMERO: '+FormatFloat('000000',DM3.Tb_Op01OP1_CODIGO.Value),' ',80),mneg);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM3.Tb_Op01OP1_NOME.Value),' ',80),mneg);
mlin:=mlin+2;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Data: '+iif(DM3.Tb_Op01OP1_DATA.IsNull,'  /  /  ',FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATA.Value))
                        +insere(' ',' ',37)
                        +'Previsto Para..: '+iif(DM3.Tb_Op01OP1_DATAPREV.IsNull,'  /  /  ',FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAPREV.Value)),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Numero do Lote de Fabricacao: '+insere2(DM3.Tb_Op01OP1_LOTE.Value,' ',20)
                        +IIF(DM3.Tb_Op01OP1_DATAVEN.IsNull,'',
                        '   Data Vencimento: '+FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAVEN.Value)),mnormal);
if Trim(DM3.Tb_Op01OP1_OBS01.Value
       +DM3.Tb_Op01OP1_OBS02.Value
       +DM3.Tb_Op01OP1_OBS03.Value
       +DM3.Tb_Op01OP1_OBS04.Value
       +DM3.Tb_Op01OP1_OBS05.Value
       +DM3.Tb_Op01OP1_OBS06.Value
       +DM3.Tb_Op01OP1_OBS07.Value
       +DM3.Tb_Op01OP1_OBS08.Value
       +DM3.Tb_Op01OP1_OBS09.Value
       +DM3.Tb_Op01OP1_OBS10.Value)<>'' then
   begin
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Observacoes.: ',mnormal);
   if Trim(DM3.Tb_Op01OP1_OBS01.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS01.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS02.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS02.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS03.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS03.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS04.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS04.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS05.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS05.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS06.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS06.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS07.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS07.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS08.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS08.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS09.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS09.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS10.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS10.Value,mnormal);
      mlin:=mlin+1;
      end;
   end
else
   mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'PRODUTOS '+iif(DM3.Tb_Op01OP1_STATUS.Value=2,'','A SEREM ')+'PRODUZIDOS',mneg);
mlin:=mlin+1;
if ValInt(copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                               |Numero/Grade                  |Und|Quant.Prev.  |Quant.Fabric |% Aproveit|',mreduz);
   end
else
   begin
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                                                              |Und|Quant.Prev.  |Quant.Fabric |% Aproveit|',mreduz);
   end;
mtotprev:=0;
mtotreal:=0;
DM3.Tb_Op02.First;
While not DM3.Tb_Op02.Eof do
   begin
   flqr1('PDNOME,PDMARCA,PDUND','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op02OP2_CODPRO.AsString);
   mlin:=mlin+1;
   fptestapag(0);
   maprov:=DM3.Tb_Op02OP2_QTDPROD.Value-DM3.Tb_Op02OP2_QTDPREV.Value;
   try
      maprov:=(maprov*100)/DM3.Tb_Op02OP2_QTDPREV.Value;
   except
      maprov:=0;
      end;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|'
                           +insere(DM3.Tb_Op02OP2_CODPRO.AsString,' ',14)
                           +'|'
                           +iif(ValInt(copy(mpseg,4,2))=02,insere2(Trim(DM1.Query1.Fields[0].AsString)+' '+Trim(DM1.Query1.Fields[1].AsString),' ',40)+'|'+insere2(DM3.Tb_Op02OP2_NUMERO.Value,' ',30),
                           insere2(Trim(DM1.Query1.fields[0].AsString)+' '+Trim(DM1.Query1.Fields[1].AsString),' ',71))
                           +'|'+insere2(DM1.Query1.Fields[2].AsString,' ',3)
                           +'|'+insere(FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPREV.Value),' ',13)+'|'
                           +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                           insere(Formatfloat(mcasind, DM3.Tb_Op02OP2_QTDPROD.Value),' ',13)+'|'
                           +insere(FormatFloat(mcasas, maprov),' ',10),
                           '_____________|__________')
                           +'|',mreduz);
   mtotprev:=mtotprev+DM3.Tb_Op02OP2_QTDPREV.Value;
   mtotreal:=mtotreal+DM3.Tb_Op02OP2_QTDPROD.Value;
   DM3.Tb_Op02.Next;
   end;
mlin:=mlin+1;
fptestapag(0);
maprov:=mtotreal-mtotprev;
try
   maprov:=(maprov*100)/mtotprev;
except
   maprov:=0;
   end;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|'
                        +insere2('-Totais','.',14)
                        +'|'
                        +iif(ValInt(copy(mpseg,4,2))=02,insere2('.','.',40)+'|'+insere2('.','.',30),
                        insere2('.','.',71))
                        +'|'+insere2('.',' ',3)
                        +'|'+insere(FormatFloat(mcasind, mtotprev),' ',13)+'|'
                        +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                        insere(Formatfloat(mcasind, mtotreal),' ',13)+'|'
                        +insere(FormatFloat(mcasas, maprov),' ',10),
                        '_____________|__________')
                        +'|',mreduz);
mlin:=mlin+1;
fptestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);


//  inicio das materias primas
if mlin>50 then
   begin
   form_impres_ind_fab.RDprint1.Novapagina;
   mlin:=0;
   end;
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'MATERIAS PRIMAS '+iif(DM3.Tb_Op01OP1_STATUS.Value=2,'','A SEREM ')+'UTILIZADAS',mneg);
mlin:=mlin+1;
if ValInt(copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                               |Numero/Grade                  |Und|Quant.Prev.  |Quant.Utiliz.|% Aproveit|',mreduz);
   end
else
   begin
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+-----------------------------------------------------------------------+---+-------------+-------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Codigo        |Descricao                                                              |Und|Quant.Prev.  |Quant.Utiliz.|% Aproveit|',mreduz);
   end;
mtotprev:=0;
mtotreal:=0;
DM3.Tb_Op03.First;
While not DM3.Tb_Op03.Eof do
   begin
   flqr1('PDNOME,PDMARCA,PDUND','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op03OP3_CODMAT.AsString);
   mlin:=mlin+1;
   fptestapag(1);
   try
      maprov:=(DM3.Tb_Op03OP3_QTDPREV.Value*100)/DM3.Tb_Op03OP3_QTDUTIL.Value;
   except
      maprov:=0;
      end;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|'
                           +insere(DM3.Tb_Op03OP3_CODMAT.AsString,' ',14)
                           +'|'
                           +iif(ValInt(copy(mpseg,4,2))=02,insere2(Trim(DM1.Query1.Fields[0].AsString)+' '+Trim(DM1.Query1.Fields[1].AsString),' ',40)+'|'+insere2(DM3.Tb_Op02OP2_NUMERO.Value,' ',30),
                           insere2(Trim(DM1.Query1.fields[0].AsString)+' '+Trim(DM1.Query1.Fields[1].AsString),' ',71))
                           +'|'+insere2(DM1.Query1.Fields[2].AsString,' ',3)
                           +'|'+insere(FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDPREV.Value),' ',13)+'|'
                           +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                           insere(Formatfloat(mcasind, DM3.Tb_Op03OP3_QTDUTIL.Value),' ',13)+'|'
                           +insere(FormatFloat(mcasas, maprov),' ',10),
                           '_____________|__________')
                           +'|',mreduz);
   mtotprev:=mtotprev+DM3.Tb_Op03OP3_QTDPREV.Value;
   mtotreal:=mtotreal+DM3.Tb_Op03OP3_QTDUTIL.Value;
   DM3.Tb_Op03.Next;
   end;
mlin:=mlin+1;
fptestapag(0);
try
   maprov:=(mtotprev*100)/mtotreal;
except
   maprov:=0;
   end;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|'
                        +insere2('-Totais','.',14)
                        +'|'
                        +iif(ValInt(copy(mpseg,4,2))=02,insere2('.','.',40)+'|'+insere2('.','.',30),
                        insere2('.','.',71))
                        +'|'+insere2('.',' ',3)
                        +'|'+insere(FormatFloat(mcasind, mtotprev),' ',13)+'|'
                        +iif(DM3.Tb_Op01OP1_STATUS.Value=2,
                        insere(Formatfloat(mcasind, mtotreal),' ',13)+'|'
                        +insere(FormatFloat(mcasas, maprov),' ',10),
                        '_____________|__________')
                        +'|',mreduz);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------+----------------------------------------+------------------------------+---+-------------+-------------+----------+',mreduz);


// termino das materias primas

// inicio das fases de produção
DM3.Tb_OpET.First;
if not DM3.Tb_OpET.Eof then
   begin
   if mlin>50 then
      begin
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=0;
      end;
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'FASES DA PRODUCAO',mneg);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Nome do Processo                        |Nome do Responsavel                     |Data Inicio |   Horas  |Data Termino|   Horas  |',mreduz);
//   mlin:=mlin+1;
   While not DM3.Tb_OpEt.Eof do
      begin
      mlin:=mlin+1;
      fptestapag(2);
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|'
                           +insere2(DM3.Tb_OpETOPE_NOMETA.Value,' ',40)
                           +'|'
                           +insere2(DM3.Tb_OpETOPE_NOME.Value,' ',40)
                           +'| '
                           +iif(DM3.Tb_OpETOPE_DATAI.IsNull,'__/__/____',FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAI.Value))
                           +' | '
                           +insere2(DM3.Tb_OpETOPE_HORAI.Value,' ',8)
                           +' | '
                           +iif(DM3.Tb_OpETOPE_DATAT.IsNull,'__/__/____',FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAT.Value))
                           +' | '
                           +insere2(DM3.Tb_OpETOPE_HORAT.Value,' ',8)
                           +' |',mreduz);
      DM3.Tb_OpET.Next;
      end;
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
   end;
// termino das fases de produçao
// inicio das procedencias
DM3.Tb_Op02.First;
While not DM3.Tb_Op02.Eof do
   begin
   flqr1('PDNOME,PDMARCA,PDCODPROC','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op02OP2_CODPRO.AsString);
   if DM1.Query1.Fields[2].AsInteger<=0 then
      begin
      DM3.Tb_Op02.Next;
      Continue;
      end;
   if flcadproc(1,0,0,DM1.Query1.Fields[2].AsString) then
      begin
      if Trim(DM3.Tb_ProcCP_DESCRICAO.Value)<>'' then
         begin
         RichEdit1.Text:=DM3.Tb_ProcCP_DESCRICAO.Value;
         if mlin>50 then
            begin
            mlin:=mlin+1;
            form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
            form_impres_ind_fab.RDprint1.Novapagina;
            mlin:=1;
            form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao..',mnormal);
            end;
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra('PROCEDENCIA DO PRODUTO.: '+Trim(DM1.Query1.Fields[0].AsString),' ',80),mneg);
         for x:=0  to RichEdit1.Lines.Count do
            begin
            mlin:=mlin+1;
            fptestapag(3);
            form_impres_ind_fab.RDprint1.ImpF(mlin,01,RichEdit1.Lines[x],mnormal);
            end;
         end;
     end;
   DM3.Tb_Op02.Next;
   end;
if form_impres_ind_fab.RDprint1.Setup then form_impres_ind_fab.RDprint1.Fechar;
form_impres_ind_fab.free;
form_impres_ind_fab:=nil;

result:=True;
end;
function TFrm_ind_Fab.fpImprimirFab02(ptipo: Integer): Boolean;
var
maprov: Real;
mtotprev, mtotreal: Real;
mtam,mposi,y,x: Integer;
mteste: array[1..10] of string;
mespec: array[1..10] of string;
metodo: array[1..10] of string;
mimprimiu: Boolean;
mTexto: String;
begin
mlin:=1;
mpag:=1;
testeform := TFrm_Ind_Fab(FindGlobalComponent('form_impres_ind_fab'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_ind_fab);
form_impres_ind_fab.fimpresajustaimp(1,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM1.Tb_EmpRAZAO.Value),' ',80),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'FICHA TECNICA DE FABRICACAO: '+FormatFloat('000000', DM3.Tb_Op01OP1_CODIGO.Value),mexp);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'DATA DE EMISSAO: '+FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATA.Value)
                        +insere2(' ',' ',23)
                        +'DATA DE FABRICACAO: '
                        +FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAPREV.Value),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM3.Tb_Op01OP1_NOME.Value),' ',80),mneg);
if Trim(DM3.Tb_Op01OP1_OBS01.Value
       +DM3.Tb_Op01OP1_OBS02.Value
       +DM3.Tb_Op01OP1_OBS03.Value
       +DM3.Tb_Op01OP1_OBS04.Value
       +DM3.Tb_Op01OP1_OBS05.Value
       +DM3.Tb_Op01OP1_OBS06.Value
       +DM3.Tb_Op01OP1_OBS07.Value
       +DM3.Tb_Op01OP1_OBS08.Value
       +DM3.Tb_Op01OP1_OBS09.Value
       +DM3.Tb_Op01OP1_OBS10.Value)<>'' then
   begin
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Observacoes.: ',mnormal);
   if Trim(DM3.Tb_Op01OP1_OBS01.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS01.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS02.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS02.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS03.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS03.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS04.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS04.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS05.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS05.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS06.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS06.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS07.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS07.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS08.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS08.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS09.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS09.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS10.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS10.Value,mnormal);
      mlin:=mlin+1;
      end;
   end;
mtotprev:=0;
mtotreal:=0;
DM3.Tb_Op02.First;
While not DM3.Tb_Op02.Eof do
   begin
   flqr1('PDNOME,PDMARCA,PDUND,PDPRZVAL','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op02OP2_CODPRO.AsString);
   mlin:=mlin+1;
   fpfab02testapag(0);
   maprov:=DM3.Tb_Op02OP2_QTDPROD.Value-DM3.Tb_Op02OP2_QTDPREV.Value;
   try
      maprov:=(maprov*100)/DM3.Tb_Op02OP2_QTDPREV.Value;
   except
      maprov:=0;
      end;
   if DM3.Tb_Op01OP1_STATUS.Value=2 then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Produto: '+insere2(DM3.Tb_Op02OP2_CODPRO.AsString,' ',14)
                              +' '+insere2(DM1.Query1.Fields[0].AsString,' ',40)
                              +'    Unidade: '+DM1.Query1.fields[2].AsString,mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Quant: '+insere(FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPREV.Value),' ',11)
                              +' Produz: '+insere(FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPROD.Value),' ',11)
                              +' Aprov: '+insere(FormatFloat('0.00', maprov),' ',06)+'%',mnormal);
      form_impres_ind_fab.RDprint1.ImpF(mlin,52,'Lote: '+insere2(DM3.Tb_Op01OP1_LOTE.Value,' ',09)
                              +' Val:'+insere(DM1.Query1.Fields[3].AsString,' ',04)
                              +' Meses',mneg);
      end
   else
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Produto: '+DM3.Tb_Op02OP2_CODPRO.AsString
                              +' '+insere2(DM1.Query1.Fields[0].AsString,' ',40),mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Quantidade: '+insere2(FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPREV.Value),' ',11)
                              +' Und.: '+DM1.Query1.Fields[2].AsString,mnormal);
      form_impres_ind_fab.RDprint1.ImpF(mlin,40,'Lote: '+insere2(DM3.Tb_Op01OP1_LOTE.Value,' ',15)
                              +' Validade:'+insere(DM1.Query1.Fields[3].AsString,' ',04)
                              +' Meses',mneg);
      end;
   mtotprev:=mtotprev+DM3.Tb_Op02OP2_QTDPREV.Value;
   mtotreal:=mtotreal+DM3.Tb_Op02OP2_QTDPROD.Value;
   DM3.Tb_Op02.Next;
   end;
mlin:=mlin+1;
fpfab02testapag(0);
maprov:=mtotreal-mtotprev;
try
   maprov:=(maprov*100)/mtotprev;
except
   maprov:=0;
   end;
//  inicio das materias primas
if not  cb_inib_mp.Checked then
  begin
  fpfab02testapag(0);
  form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
  if mlin>50 then
    begin
    form_impres_ind_fab.RDprint1.Novapagina;
    mlin:=0;
    end;
  mlin:=mlin+1;
  //form_impres_ind_fab.RDprint1.ImpF(mlin,01,'MATERIAS PRIMAS '+iif(DM3.Tb_Op01OP1_STATUS.Value<1,'','A SEREM ')+'UTILIZADAS',mneg);
  form_impres_ind_fab.RDprint1.ImpF(mlin,01,'MATERIAS PRIMAS',mneg);
  mlin:=mlin+1;
  if DM3.Tb_Op01OP1_STATUS.Value=2 then
    begin
    form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
    mlin:=mlin+1;
    form_impres_ind_fab.RDprint1.ImpF(mlin,01,' Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada | % Aprov.| Lote (RE)  ',mreduz);
    mlin:=mlin+1;
    form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
    end
  else
    begin
    form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
    mlin:=mlin+1;
    form_impres_ind_fab.RDprint1.ImpF(mlin,01,' Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada |        Lote (RE)     ',mreduz);
    mlin:=mlin+1;
    form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
    end;
  {
  --------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------
   Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada |        Lote (RE)
   123456 | 1234567890123456789012345678901234567890 | UNF | ZZZ.ZZZ.ZZ9,99 | 123456780 | Quantidade utilizada | 123456789012345678901

  --------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------
   Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada | % Aprov.| Lote (RE)
   123456 | 1234567890123456789012345678901234567890 | UNF | ZZZ.ZZZ.ZZ9,99 | 123456780 | Quantidade utilizada | 100.00% | 12345678901
  }

  mtotprev:=0;
  mtotreal:=0;
  DM3.Tb_Op03.First;
  While not DM3.Tb_Op03.Eof do
    begin
    flqr1('PDNOME,PDMARCA,PDUND','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op03OP3_CODMAT.AsString);
    mlin:=mlin+1;
    fpfab02testapag(1);
    try
       maprov:=(DM3.Tb_Op03OP3_QTDPREV.Value*100)/DM3.Tb_Op03OP3_QTDUTIL.Value;
    except
       maprov:=0;
       end;
    if DM3.Tb_Op01OP1_STATUS.Value=2 then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere(Formatfloat('#000000', DM3.Tb_Op03OP3_CODMAT.Value),' ',07)
                           +' | '+insere2(DM1.Query1.Fields[0].AsString,' ',40)
                           +' | '+insere2(DM1.Query1.Fields[2].AsString,' ',03)
                           +' | '+insere(FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDPREV.Value),' ',14)
                           +' | '+insere2(DM3.Tb_Op03OP3_LOTE.Value,' ',09)
                           +' | '
                           +insere(FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDUTIL.Value),' ',20)
                           +' | '+insere(FormatFloat('0.00', maprov),' ',06)+'%'
                           +' | ',mreduz);

      end
    else
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere(Formatfloat('#000000', DM3.Tb_Op03OP3_CODMAT.Value),' ',07)
                           +' | '+insere2(DM1.Query1.Fields[0].AsString,' ',40)
                           +' | '+insere2(DM1.Query1.Fields[2].AsString,' ',03)
                           +' | '+insere(FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDPREV.Value),' ',14)
                           +' | '+insere2(DM3.Tb_Op03OP3_LOTE.Value,' ',09)
                           +' | '
                           +insere2('_','_',20)
                           +' | '
                           +insere2('_','_',21) //ldc
                           ,mreduz);

      end;
    mtotprev:=mtotprev+DM3.Tb_Op03OP3_QTDPREV.Value;
    mtotreal:=mtotreal+DM3.Tb_Op03OP3_QTDUTIL.Value;
    DM3.Tb_Op03.Next;
    end;
  mlin:=mlin+1;
  fpfab02testapag(1);
  try
    maprov:=(mtotprev*100)/mtotreal;
  except
    maprov:=0;
    end;
  end;

if DM3.Tb_Op01OP1_STATUS.Value=2 then
   begin
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2(' ',' ',07)
                           +' | '+insere2('Totais','.',40)
                           +' | '+insere2(' ',' ',03)
                           +' | '+insere(FormatFloat(mcasind, mtotprev),' ',14)
                           +' | '+insere2(' ',' ',09)
                           +' | '+insere(FormatFloat(mcasind, mtotreal),' ',20)
                           +' | '+insere(FormatFloat('0.00', maprov),' ',06)+'%'
                           +' | ',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
   end
else
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
mlin:=mlin+2;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Teor Ativo:__________________ Correcao:____________________ Ass:________________',mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra('ETAPAS DE FABRICACAO',' ',80),mneg);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'#PESAGEM',mneg);
// termino das materias primas

fpfab02testapag(0);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Pesado Por:__________________ Conferido por:________________ ___/___/___ ___:___',mnormal);


{
Pesado Por:__________________ Conferido por:________________ ___/___/___ ___:___
Teor Ativo:__________________ Correcao:____________________ Ass:________________
Pesado Por:__________________ Conferido por:________________ ___/___/___ ___:___
Manipulado por:__________________ Supervisionado por:_______________ ___/___/___
Analista:_____________ Resp.Pela Liberacao:_________________ ___/___/___ ___:___

}
// termino das fases de produçao
// inicio das procedencias

mlin:=mlin+2;
fpfab02testapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'#MANIPULACAO',mneg);


// inicio das fases de produção
DM3.Tb_OpET.First;
if not DM3.Tb_OpET.Eof then
   begin
   if mlin>50 then
      begin
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=0;
      end;
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Nome do Processo                        |Nome do Responsavel                     |Data Inicio |   Horas  |Data Termino|   Horas  |',mreduz);
//   mlin:=mlin+1;
   While not DM3.Tb_OpEt.Eof do
      begin
      mlin:=mlin+1;
      fpfab02testapag(2);
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|'
                           +insere2(DM3.Tb_OpETOPE_NOMETA.Value,' ',40)
                           +'|'
                           +insere2(DM3.Tb_OpETOPE_NOME.Value,' ',40)
                           +'| '
                           +iif(DM3.Tb_OpETOPE_DATAI.IsNull,'__/__/____',FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAI.Value))
                           +' | '
                           +insere2(DM3.Tb_OpETOPE_HORAI.Value,' ',8)
                           +' | '
                           +iif(DM3.Tb_OpETOPE_DATAT.IsNull,'__/__/____',FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAT.Value))
                           +' | '
                           +insere2(DM3.Tb_OpETOPE_HORAT.Value,' ',8)
                           +' |',mreduz);
      DM3.Tb_OpET.Next;
      end;
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
   end;

DM3.Tb_Op02.First;
While not DM3.Tb_Op02.Eof do
   begin

   FImprimirTextos('TEXTO01',DM3.Tb_Op02OP2_CODPRO.AsFloat,0,codemp);
{
   RichEdit1.Lines.Clear;
   DM1.Query3.Close;
   DM1.Query3.sql.clear;
   DM1.Query3.SQL.Add('Select CP_PAGINA,CP_TEXTO from CADPROC02_TEXTO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CP_CODPRO_EMPRO=0'+dm3.Tb_Op02OP2_CODPRO.AsString
                     +' and CP_CODPRO=0' // +DM3.Tb_Comp02CP_CODPRO.AsString
                     +' and CP_CHAVE='+chr(39)+'TEXTO01'+chr(39)
                     +' ORDER BY CP_PAGINA ');
   DM1.Query3.Open;
   if not DM1.Query3.Eof then
      begin
      assignfile(f,mTextoTemp);
      rewrite(f);
      While not DM1.Query3.Eof do
         begin
         While not DM1.Query3.Eof do
            begin
            writeln(f,DM1.Query3.fieldbyName('CP_TEXTO').AsString);
            DM1.Query3.Next;
            end;
         end;
      closefile(f);
      RichEdit1.Lines.LoadFromFile(mTextoTemp);
      end;
   if trim(RichEdit1.Text)='' then
      begin
      if flcadcomp02(0,-1,dm3.Tb_Op02OP2_CODPRO.AsString,'0') then
         begin
         if Trim(DM3.Tb_Comp02CP_DESCRICAO.Value)<>'' then
            begin
            RichEdit1.Text:=DM3.Tb_Comp02CP_DESCRICAO.Value;
            end;
         end;
      end;
   if trim(RichEdit1.Text)<>'' then
      begin
      if mlin>50 then
         begin
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         form_impres_ind_fab.RDprint1.Novapagina;
         mlin:=1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao..',mnormal);
         end;
      mlin:=mlin+1;
      for x:=0  to RichEdit1.Lines.Count do
         begin
         mlin:=mlin+1;
         fpfab02testapag(3);
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,RichEdit1.Lines[x],mreduz);
         end;
     mlin:=mlin+1;
     fpfab02testapag(3);
 }
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Manipulado por:__________________ Supervisionado por:_______________ ___/___/___',mnormal);
   mlin:=mlin+2;
   fpfab02testapag(3);
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'#CONTROLE DE QUALIDADE FISICO QUIMICO',mnormal);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|              Testes            |         Especificacoes         |             Metodo             |            Resultado           |',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);

{
|              Testes            |         Especificacoes         |             Metodo             |            Resultado           |
+--------------------------------+--------------------------------+--------------------------------+--------------------------------+
}

   flcadcq(0,dm3.Tb_Op02OP2_CODPRO.AsString,'0');
   While not DM3.Tb_CQ.Eof do
      begin;
      for x:=1 to 10 do
         begin
         mteste[x]:='';
         mespec[x]:='';
         metodo[x]:='';
         end;
      mposi:=1;
      mtam :=30;
//      Memo1.Text:=centratexto(DM3.Tb_CQCQ_TESTE.Value,1,mtam);
      RichEdit1.Text:=DM3.Tb_CQCQ_TESTE.Value;
      mtexto:='';
      for x:=0 to RichEdit1.Lines.Count do
         begin
         mTexto:=mtexto+RichEdit1.Lines[x];
         end;
      x:=1;
      while true do
         begin
         if length(mtexto)<mposi then
            break;
         mteste[x]:=copy(mtexto,mposi,mtam);
         mposi:=mposi+mtam;
         x:=x+1;
         end;
      mposi:=1;
      mtam :=30;
//        Memo1.Text:=centratexto(DM3.Tb_CQCQ_ESP.Value,1,mtam);
      RichEdit1.Text:=DM3.Tb_CQCQ_ESP.Value;
      mtexto:='';
      for x:=0 to RichEdit1.Lines.Count do
         begin
         mTexto:=mtexto+RichEdit1.Lines[x];
         end;
      x:=1;
      while true do
         begin
         if length(mtexto)<mposi then
            break;
         mespec[x]:=copy(mtexto,mposi,mtam);
         mposi:=mposi+mtam;
         x:=x+1;
         end;


      RichEdit1.Text:=DM3.Tb_CQCQ_MET.Value;
      mtexto:='';
      for x:=0 to RichEdit1.Lines.Count do
         begin
         mTexto:=mtexto+RichEdit1.Lines[x];
         end;
      x:=1;
      mposi:=1;
      while true do
         begin
         if length(mtexto)<mposi then
            break;
         metodo[x]:=copy(mtexto,mposi,mtam);
         mposi:=mposi+mtam;
         x:=x+1;
         end;
      mimprimiu:=False;
      for x:=1 to 10 do
         begin
         if (trim(mteste[x])='') and
            (trim(mespec[x])='') and
            (trim(metodo[x])='') then
            Continue;
         mlin:=mlin+1;
         fpfab02testapag(4);
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|'+Centra(Trim(mteste[x]),' ',32)
                                           +'|'+Centra(trim(mespec[x]),' ',32)
                                           +'|'+Centra(trim(metodo[x]),' ',32)
                                           +'|',mreduz);
         mimprimiu:=True;
         end;
      if mimprimiu then
         begin
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
         end;
      DM3.Tb_CQ.Next;

{
|              Testes            |         Especificacoes         |             Metodo             |            Resultado           |
+--------------------------------+--------------------------------+--------------------------------+--------------------------------+

|123456789012Aspecto1234567890123|123456789Especificacoes123456789|1234567890123Metodo1234567890123|            Resultado           |
|12345678901234567890123456789012 12345678901234567890123456789012 12345678901234567890123456789012

}

      end;
   FImprimirTextos('TEXTO02',DM3.Tb_Op02OP2_CODPRO.AsFloat,0,codemp);
   FImprimirTextos('TEXTO03',DM3.Tb_Op02OP2_CODPRO.AsFloat,0,codemp);
   FImprimirTextos('TEXTO04',DM3.Tb_Op02OP2_CODPRO.AsFloat,0,codemp);
   FImprimirTextos('TEXTO05',DM3.Tb_Op02OP2_CODPRO.AsFloat,0,codemp);
   FImprimirTextos('TEXTO06',DM3.Tb_Op02OP2_CODPRO.AsFloat,0,codemp);

   DM3.Tb_Op02.Next;
   end;







mlin:=mlin+2;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Analista:_____________ Resp.Pela Liberacao:_________________ ___/___/___ ___:___',mnormal);

if form_impres_ind_fab.RDprint1.Setup then form_impres_ind_fab.RDprint1.Fechar;
form_impres_ind_fab.free;
form_impres_ind_fab:=nil;
result:=True;
end;
function TFrm_ind_Fab.fpImprimirEnvase(ptipo: Integer): Boolean;
var
maprov: Real;
mtotprev, mtotreal: Real;
mtam,mposi,y,x: Integer;
mteste: array[1..10] of string;
mespec: array[1..10] of string;
metodo: array[1..10] of string;
mimprimiu: Boolean;
mTexto: String;
mQtdLCQP: Integer;
mEmbPadrao: Integer;

begin
mlin:=1;
mpag:=1;
testeform := TFrm_Ind_Fab(FindGlobalComponent('form_impres_ind_fab'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_ind_fab);
form_impres_ind_fab.fimpresajustaimp(1,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM1.Tb_EmpRAZAO.Value),' ',80),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'ORDEM DE ENVASE NUMERO: '+FormatFloat('000000', DM3.Tb_Op01OP1_CODIGO.Value),mexp);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'DATA DE EMISSAO: '+FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATA.Value)
                        +insere2(' ',' ',23)
                        +'DATA DO ENVASE: '
                        +FormatDateTime(fdt2, DM3.Tb_Op01OP1_DATAPREV.Value),mnormal);
mlin:=mlin+1;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM3.Tb_Op01OP1_NOME.Value),' ',80),mneg);
if Trim(DM3.Tb_Op01OP1_OBS01.Value
       +DM3.Tb_Op01OP1_OBS02.Value
       +DM3.Tb_Op01OP1_OBS03.Value
       +DM3.Tb_Op01OP1_OBS04.Value
       +DM3.Tb_Op01OP1_OBS05.Value
       +DM3.Tb_Op01OP1_OBS06.Value
       +DM3.Tb_Op01OP1_OBS07.Value
       +DM3.Tb_Op01OP1_OBS08.Value
       +DM3.Tb_Op01OP1_OBS09.Value
       +DM3.Tb_Op01OP1_OBS10.Value)<>'' then
   begin
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Observacoes.: ',mnormal);
   if Trim(DM3.Tb_Op01OP1_OBS01.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS01.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS02.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS02.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS03.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS03.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS04.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS04.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS05.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS05.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS06.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS06.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS07.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS07.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS08.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS08.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS09.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS09.Value,mnormal);
      mlin:=mlin+1;
      end;
   if Trim(DM3.Tb_Op01OP1_OBS10.Value)<>'' then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,15,DM3.Tb_Op01OP1_OBS10.Value,mnormal);
      mlin:=mlin+1;
      end;
   end;
mtotprev:=0;
mtotreal:=0;
DM3.Tb_Op02.First;
mEmbPadrao:=0;
While not DM3.Tb_Op02.Eof do
   begin
   flqr1('PDNOME,PDMARCA,PDUND,PDPRZVAL,PDEMBPAD','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op02OP2_CODPRO.AsString);
   if DM1.Query1.FieldByName('PDEMBPAD').AsInteger>mEmbPadrao then
      mEmbPadrao:=DM1.Query1.FieldByName('PDEMBPAD').AsInteger;
   mlin:=mlin+1;
   fpenvasetestapag(0);
   maprov:=DM3.Tb_Op02OP2_QTDPROD.Value-DM3.Tb_Op02OP2_QTDPREV.Value;
   try
      maprov:=(maprov*100)/DM3.Tb_Op02OP2_QTDPREV.Value;
   except
      maprov:=0;
      end;
   if DM3.Tb_Op01OP1_STATUS.Value=2 then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Produto: '+insere2(DM3.Tb_Op02OP2_CODPRO.AsString,' ',14)
                              +' '+insere2(DM1.Query1.Fields[0].AsString,' ',40)
                              +'    Unidade: '+DM1.Query1.fields[2].AsString,mneg);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Quant: '+insere(FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPREV.Value),' ',11)
                              +' Produz: '+insere(FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPROD.Value),' ',11)
                              +' Aprov: '+insere(FormatFloat('0.00', maprov),' ',06)+'%',mneg);
      end
   else
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Produto: '+DM3.Tb_Op02OP2_CODPRO.AsString
                              +' '+insere2(DM1.Query1.Fields[0].AsString,' ',40),mneg);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Quantidade: '+insere2(FormatFloat(mcasind, DM3.Tb_Op02OP2_QTDPREV.Value),' ',11)
                              +' Und.: '+DM1.Query1.Fields[2].AsString,mneg);
      end;
   flqr1('PDNOME,PDMARCA,PDUND,PDPRZVAL','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op02OP2_FAB_CODIGO.AsString);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Pre-producao: '+DM3.Tb_Op02OP2_FAB_CODIGO.AsString
                           +' '+insere2(DM1.Query1.Fields[0].AsString,' ',40),mnormal);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Quantidade: '+insere2(FormatFloat(mcasind, DM3.Tb_Op02OP2_FAB_QTD.Value),' ',11)
                              +' Und.: '+DM1.Query1.Fields[2].AsString,mnormal);
   form_impres_ind_fab.Rdprint1.Impf(mlin,35,'Lote: '+insere2(DM3.Tb_Op02OP2_FAB_LOTE.AsString,' ',20)
                              +' Vencimento: '+FormatDateTime('mm/yyyy', DM3.Tb_Op02OP2_FAB_VCTO.Value)
                              ,mneg);
   mtotprev:=mtotprev+DM3.Tb_Op02OP2_QTDPREV.Value;
   mtotreal:=mtotreal+DM3.Tb_Op02OP2_QTDPROD.Value;
   DM3.Tb_Op02.Next;
   end;
mlin:=mlin+1;
fpenvasetestapag(0);
maprov:=mtotreal-mtotprev;
try
   maprov:=(maprov*100)/mtotprev;
except
   maprov:=0;
   end;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);


//  inicio das materias primas
if mlin>50 then
   begin
   form_impres_ind_fab.RDprint1.Novapagina;
   mlin:=0;
   end;
mlin:=mlin+1;
//form_impres_ind_fab.RDprint1.ImpF(mlin,01,'MATERIAS PRIMAS '+iif(DM3.Tb_Op01OP1_STATUS.Value<1,'','A SEREM ')+'UTILIZADAS',mneg);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra('MATERIAIS DE EMBALAGEM',' ',80),mneg);
mlin:=mlin+1;
if DM3.Tb_Op01OP1_STATUS.Value=2 then
   begin
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,' Codigo | Materiais de Embalagem                   | Und | Quantid.Padrao | Lote      | Quantidade utilizada | % Aprov.| Lote (RE)  ',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
   end
else
   begin
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,' Codigo | Materiais de Embalagem                   | Und | Quantid.Padrao | Lote      | Quantidade utilizada |        Lote (RE)     ',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
   end;
{
--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------
 Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada |        Lote (RE)
 123456 | 1234567890123456789012345678901234567890 | UNF | ZZZ.ZZZ.ZZ9,99 | 123456780 | Quantidade utilizada | 123456789012345678901

--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------
 Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada | % Aprov.| Lote (RE)
 123456 | 1234567890123456789012345678901234567890 | UNF | ZZZ.ZZZ.ZZ9,99 | 123456780 | Quantidade utilizada | 100.00% | 12345678901
}

mtotprev:=0;
mtotreal:=0;
DM3.Tb_Op03.First;
While not DM3.Tb_Op03.Eof do
   begin
   flqr1('PDNOME,PDMARCA,PDUND','PD','CADPRO','N','PDCODPRO',DM3.Tb_Op03OP3_CODMAT.AsString);
   mlin:=mlin+1;
   fpenvasetestapag(1);
   try
      maprov:=(DM3.Tb_Op03OP3_QTDPREV.Value*100)/DM3.Tb_Op03OP3_QTDUTIL.Value;
   except
      maprov:=0;
      end;
   if DM3.Tb_Op01OP1_STATUS.Value=2 then
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere(Formatfloat('#000000', DM3.Tb_Op03OP3_CODMAT.Value),' ',07)
                           +' | '+insere2(DM1.Query1.Fields[0].AsString,' ',40)
                           +' | '+insere2(DM1.Query1.Fields[2].AsString,' ',03)
                           +' | '+insere(FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDPREV.Value),' ',14)
                           +' | '+insere2(DM3.Tb_Op03OP3_LOTE.Value,' ',09)
                           +' | '
                           +insere(FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDUTIL.Value),' ',20)
                           +' | '+insere(FormatFloat('0.00', maprov),' ',06)+'%'
                           +' | ',mreduz);

      end
   else
      begin
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere(Formatfloat('#000000', DM3.Tb_Op03OP3_CODMAT.Value),' ',07)
                           +' | '+insere2(DM1.Query1.Fields[0].AsString,' ',40)
                           +' | '+insere2(DM1.Query1.Fields[2].AsString,' ',03)
                           +' | '+insere(FormatFloat(mcasind, DM3.Tb_Op03OP3_QTDPREV.Value),' ',14)
                           +' | '+insere2(DM3.Tb_Op03OP3_LOTE.Value,' ',09)
                           +' | '
                           +insere2('_','_',20)
                           +' | '
                           +insere2('_','_',21)

                           ,mreduz);

      end;
   mtotprev:=mtotprev+DM3.Tb_Op03OP3_QTDPREV.Value;
   mtotreal:=mtotreal+DM3.Tb_Op03OP3_QTDUTIL.Value;
   DM3.Tb_Op03.Next;
   end;
mlin:=mlin+1;
fpenvasetestapag(1);
try
   maprov:=(mtotprev*100)/mtotreal;
except
   maprov:=0;
   end;

if DM3.Tb_Op01OP1_STATUS.Value=2 then
   begin
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2(' ',' ',07)
                           +' | '+insere2('Totais','.',40)
                           +' | '+insere2(' ',' ',03)
                           +' | '+insere(FormatFloat(mcasind, mtotprev),' ',14)
                           +' | '+insere2(' ',' ',09)
                           +' | '+insere(FormatFloat(mcasind, mtotreal),' ',20)
                           +' | '+insere(FormatFloat('0.00', maprov),' ',06)+'%'
                           +' | ',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
   end
else
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
mlin:=mlin+1;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'# ENVASE',mneg);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Liberado por:______________________ Ass Auxil.:_________________________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Inicio: ____/____/____  ____:_____                  Termino: ___/___/___ ___:___',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'# CONTROLE DE QUALIDADE EM PROCESSO',mneg);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'O Controle de Qualidade recolhe 10 amostras (fr. ou sq) no inicio, meio e fim do',mnormal);
mlin:=mlin+1;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'envase; as amostras sao medidas/pesadas e calculado a media.                    ',mnormal);
mlin:=mlin+1;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+------------------+-----------------------------+-----------------------------+',mnormal);
mlin:=mlin+1;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|     Horario      |         Volume/Peso         |          Analista           |',mnormal);
mlin:=mlin+1;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+------------------+-----------------------------+-----------------------------+',mnormal);
mQtdLCQP:=DM1.Tb_PargerPQTDLCQP.AsInteger;
if mQtdLCQP<3 then
   mQtdLCQP:=3;

for x:=1 to mQtdLCQP do
   begin
   mlin:=mlin+1;
   fpenvasetestapag(0);
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|                  |                             |                             |',mnormal);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+------------------+-----------------------------+-----------------------------+',mnormal);
   end;
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'# GRAVACAO DO LOTE',mneg);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Inicio: ____/____/____  ____:_____                  Termino: ___/___/___ ___:___',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
//m_Impres.RDprint1.ImpF(mlin,01,'Quantidade Gravada:________________ Ass Auxil.:_________________________________',mnormal);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Quantidade Gravada:______________________________________ Ass:__________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Conciliacao:_____________________________________________ Ass:__________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'# REVISAO DE ROTULAGEM',mneg);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Auxiliares:_____________________________________________________________________',mnormal);
if mlin>20 then
   begin
   mlin:=59;
   fpenvasetestapag(0);
   end;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'# EMBALAGEM FINAL',mneg);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Inicio: ____/____/____  ____:_____                  Termino: ___/___/___ ___:___',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Ass. auxiliares envolvidos:_____________________________________________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'___________________________________ Ass. supervisor:____________________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Completado com:____________________ Lote:____________________ Ass:______________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
if mEmbPadrao<=0 then
   mEmbPadrao:=12;
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Restaram: ________________ (fr. ou cart. p/compl.cx c/'+insere2(intTostr(mEmbPadrao),' ',3)+' un) Ass:______________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Retencao: Retirado 03 frasc. cart. em embal. de venda Ass:______________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Cont. Microbiologico: Retirado 1 fras/cart. em embal de Venda Ass:______________',mnormal);

// INICIO
DM3.Tb_Op02.First;
FImprimirTextos('TEXTO01',DM3.Tb_Op02OP2_FAB_CODIGO.AsFloat,dm3.Tb_Op02OP2_CODPRO.Asfloat,codemp);
FImprimirTextos('TEXTO02',DM3.Tb_Op02OP2_FAB_CODIGO.AsFloat,dm3.Tb_Op02OP2_CODPRO.Asfloat,codemp);
FImprimirTextos('TEXTO03',DM3.Tb_Op02OP2_FAB_CODIGO.AsFloat,dm3.Tb_Op02OP2_CODPRO.Asfloat,codemp);
FImprimirTextos('TEXTO04',DM3.Tb_Op02OP2_FAB_CODIGO.AsFloat,dm3.Tb_Op02OP2_CODPRO.Asfloat,codemp);
FImprimirTextos('TEXTO05',DM3.Tb_Op02OP2_FAB_CODIGO.AsFloat,dm3.Tb_Op02OP2_CODPRO.Asfloat,codemp);
FImprimirTextos('TEXTO06',DM3.Tb_Op02OP2_FAB_CODIGO.AsFloat,dm3.Tb_Op02OP2_CODPRO.Asfloat,codemp);

{
if flcadcomp02(0,DM3.Tb_Op02OP2_FAB_CODIGO.AsString,dm3.Tb_Op02OP2_CODPRO.AsString) then
   begin
   if Trim(DM3.Tb_Comp02CP_DESCRICAO.Value)<>'' then
      begin
      RichEdit1.Text:=DM3.Tb_Comp02CP_DESCRICAO.Value;
      mlin:=mlin+1;
      fpenvasetestapag(0);
      LINDOMAR
      mlin:=mlin+1;
      for x:=0  to RichEdit1.Lines.Count do
         begin
         mlin:=mlin+1;
         fpenvasetestapag(0);
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,RichEdit1.Lines[x],mreduz);
         end;
      end;
   end;
// TERMINO
 }
// termino das materias primas

// inicio das fases de produção
DM3.Tb_OpET.First;
if not DM3.Tb_OpET.Eof then
   begin
   if mlin>50 then
      begin
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=0;
      end;
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Nome do Processo                        |Nome do Responsavel                     |Data Inicio |   Horas  |Data Termino|   Horas  |',mreduz);
//   mlin:=mlin+1;
   While not DM3.Tb_OpEt.Eof do
      begin
      mlin:=mlin+1;
      fpenvasetestapag(2);
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|'
                           +insere2(DM3.Tb_OpETOPE_NOMETA.Value,' ',40)
                           +'|'
                           +insere2(DM3.Tb_OpETOPE_NOME.Value,' ',40)
                           +'| '
                           +iif(DM3.Tb_OpETOPE_DATAI.IsNull,'__/__/____',FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAI.Value))
                           +' | '
                           +insere2(DM3.Tb_OpETOPE_HORAI.Value,' ',8)
                           +' | '
                           +iif(DM3.Tb_OpETOPE_DATAT.IsNull,'__/__/____',FormatDateTime(fdt2, DM3.Tb_OpETOPE_DATAT.Value))
                           +' | '
                           +insere2(DM3.Tb_OpETOPE_HORAT.Value,' ',8)
                           +' |',mreduz);
      DM3.Tb_OpET.Next;
      end;
   mlin:=mlin+1;
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
   end;
fpenvasetestapag(0);


{
Liberado por:______________________ Ass Auxil.:_________________________________
Inicio: ____/____/____  ____:_____                  Termino: ___/___/___ ___:___

Teor Ativo:__________________ Correcao:____________________ Ass:________________
Pesado Por:__________________ Conferido por:________________ ___/___/___ ___:___
Manipulado por:__________________ Supervisionado por:_______________ ___/___/___
Analista:_____________ Resp.Pela Liberacao:_________________ ___/___/___ ___:___

}
// termino das fases de produçao
// inicio das procedencias
DM3.Tb_Op02.First;
While not DM3.Tb_Op02.Eof do
   begin
   mlin:=mlin+2;
   fpenvasetestapag(0);
   form_impres_ind_fab.RDprint1.ImpF(mlin,01,'#CONTROLE DE QUALIDADE FINAL',mneg);

   if flcadcq(0,DM3.Tb_Op02OP2_FAB_CODIGO.AsString,dm3.Tb_Op02OP2_CODPRO.AsString) then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|              Testes            |         Especificacoes         |             Metodo             |            Resultado           |',mreduz);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);

{
|              Testes            |         Especificacoes         |             Metodo             |            Resultado           |
+--------------------------------+--------------------------------+--------------------------------+--------------------------------+
}
      While not DM3.Tb_CQ.Eof do
         begin
         mposi:=1;
         mtam :=30;
         for x:=1 to 10 do
            begin
            mteste[x]:='';
            mespec[x]:='';
            metodo[x]:='';
            end;
//         Memo1.Text:=centratexto(DM3.Tb_CQCQ_TESTE.Value,1,mtam);
         RichEdit1.Text:=DM3.Tb_CQCQ_TESTE.Value;
         mtexto:='';
         for x:=0 to RichEdit1.Lines.Count do
            begin
            mTexto:=mtexto+RichEdit1.Lines[x];
            end;
         x:=1;
         while true do
            begin
            if length(mtexto)<mposi then
               break;
            mteste[x]:=copy(mtexto,mposi,mtam);
            mposi:=mposi+mtam;
            x:=x+1;
            end;
         mposi:=1;
         mtam :=30;
//         Memo1.Text:=centratexto(DM3.Tb_CQCQ_ESP.Value,1,mtam);
         RichEdit1.Text:=DM3.Tb_CQCQ_ESP.Value;
         mtexto:='';
         for x:=0 to RichEdit1.Lines.Count do
            begin
            mTexto:=mtexto+RichEdit1.Lines[x];
            end;
         x:=1;
         while true do
            begin
            if length(mtexto)<mposi then
               break;
            mespec[x]:=copy(mtexto,mposi,mtam);
            mposi:=mposi+mtam;
            x:=x+1;
            end;
         RichEdit1.Text:=DM3.Tb_CQCQ_MET.Value;
         mtexto:='';
         for x:=0 to RichEdit1.Lines.Count do
            begin
            mTexto:=mtexto+RichEdit1.Lines[x];
            end;
         x:=1;
         mposi:=1;
         while true do
            begin
            if length(mtexto)<mposi then
               break;
            metodo[x]:=copy(mtexto,mposi,mtam);
            mposi:=mposi+mtam;
            x:=x+1;
            end;
         mimprimiu:=False;
         for x:=1 to 10 do
            begin
            if (trim(mteste[x])='') and
               (trim(mespec[x])='') and
               (trim(metodo[x])='') then
               Continue;
            mlin:=mlin+1;
            fpenvasetestapag(4);
            form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|'+Centra(Trim(mteste[x]),' ',31)
                                           +'|'+Centra(trim(mespec[x]),' ',31)
                                           +'|'+Centra(trim(metodo[x]),' ',31)
                                           +'|',mreduz);
            mimprimiu:=True;
            end;
         if mimprimiu then
            begin
            mlin:=mlin+1;
            form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
            end;
         DM3.Tb_CQ.Next;
         end;
      end;
   DM3.Tb_Op02.Next;
   end;
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'[  ] LIBERADO     [  ] REPROVADO    Data: ___/___/___ Ass. Ger.CQ: _____________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Observacoes:____________________________________________________________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'            ____________________________________________________________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'            ____________________________________________________________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'ALMOXARIFADO DE PRODUTO ACABADO',mneg);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Quantidade:______________________ Data: ___/___/___   Ass:______________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'CONCILIACAO FINAL',mneg);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Qtd.Teorica:_______________(kb/Lt) Qtd.Real:__________(Kg/Lt) Perda:____________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Justificativa / Conclusoes:_____________________________________________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'________________________________________________________________________________',mnormal);
mlin:=mlin+2;
fpenvasetestapag(0);
form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Ass. Gerente de Producao:_____________________________________ Data: ___/___/___',mnormal);
if form_impres_ind_fab.RDprint1.Setup then form_impres_ind_fab.RDprint1.Fechar;
form_impres_ind_fab.free;
form_impres_ind_fab:=nil;
result:=True;
end;


function TFrm_Ind_Fab.fpfab02testapag(ptipo: Integer): Boolean;
begin
if mlin>58 then
   begin
   if ptipo=0 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
      mlin:=mlin+1;
      end
   else if ptipo=1 then
      begin
      if DM3.Tb_Op01OP1_STATUS.Value=2 then
         begin
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         form_impres_ind_fab.RDprint1.Novapagina;
         mlin:=1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,' Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada |        Lote (RE)     ',mreduz);
         end
      else
         begin
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         form_impres_ind_fab.RDprint1.Novapagina;
         mlin:=1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,' Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada | % Aprov.| Lote (RE)  ',mreduz);
         end;
      mlin:=mlin+1;
      end
   else if ptipo=2 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mneg);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mneg);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Nome do Processo                        |Nome do Responsavel                     |Data Inicio |   Horas  |Data Termino|   Horas  |',mreduz);
      mlin:=mlin+1;
      end
   else if ptipo=3 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mneg);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mneg);
      mlin:=mlin+1;
      end
   else if ptipo=4 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+Continua...---------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=0;
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM1.Tb_EmpRAZAO.Value),' ',80),mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'FICHA TECNICA DE FABRICACAO: '+FormatFloat('000000', DM3.Tb_Op01OP1_CODIGO.Value),mexp);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|              Testes            |         Especificacoes         |             Metodo             |            Resultado           |',mreduz);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
      mlin:=mlin+1;
      end;
   end;
Result:=True;


end;

function TFrm_Ind_Fab.fpEnvasetestapag(ptipo: Integer): Boolean;
begin
if mlin>56 then
   begin
   if ptipo=0 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM1.Tb_EmpRAZAO.Value),' ',80),mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'ORDEM DE ENVASE NUMERO: '+FormatFloat('000000', DM3.Tb_Op01OP1_CODIGO.Value),mexp);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      mlin:=mlin+1;
      end
   else if ptipo=1 then
      begin
      if DM3.Tb_Op01OP1_STATUS.Value=2 then
         begin
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         form_impres_ind_fab.RDprint1.Novapagina;
         mlin:=1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+----------------------',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,' Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada |        Lote (RE)     ',mreduz);
         end
      else
         begin
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
         form_impres_ind_fab.RDprint1.Novapagina;
         mlin:=1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mnormal);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,'--------+------------------------------------------+-----+----------------+-----------+----------------------+---------+------------',mreduz);
         mlin:=mlin+1;
         form_impres_ind_fab.RDprint1.ImpF(mlin,01,' Codigo | Materia-prima                            | Und | Quantid.Padrao | Lote      | Quantidade utilizada | % Aprov.| Lote (RE)  ',mreduz);
         end;
      mlin:=mlin+1;
      end
   else if ptipo=2 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mneg);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mneg);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+----------------------------------------+----------------------------------------+------------+----------+------------+----------+',mreduz);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|Nome do Processo                        |Nome do Responsavel                     |Data Inicio |   Horas  |Data Termino|   Horas  |',mreduz);
      mlin:=mlin+1;
      end
   else if ptipo=3 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mneg);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao...',mneg);
      mlin:=mlin+1;
      end
   else if ptipo=4 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+Continua...---------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=0;

      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,Centra(Trim(DM1.Tb_EmpRAZAO.Value),' ',80),mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'ORDEM DE ENVASE NUMERO: '+FormatFloat('000000', DM3.Tb_Op01OP1_CODIGO.Value),mexp);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'|              Testes            |         Especificacoes         |             Metodo             |            Resultado           |',mreduz);
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'+--------------------------------+--------------------------------+--------------------------------+--------------------------------+',mreduz);
      mlin:=mlin+1;
      end;
   end;
Result:=True;


end;

procedure TFrm_Ind_Fab.FAB_MCHAVEExit(Sender: TObject);
begin
FAB_MCHAVE.Text:=fdeixanum(FAB_MCHAVE.Text);
if ValFloat(FAB_MCHAVE.Text)>0 then
   begin
   Qr_OrdFab.Close;
   Qr_OrdFab.ParamByName('CHAVE').AsFloat :=fsonumero(FAB_MCHAVE.Text);
   Qr_OrdFab.ParamByName('FABENV').AsFloat:=1;
   Qr_OrdFab.ParamByName('LOTSEQ').AsFloat:=mlotseq;
   Qr_OrdFab.Open;
   if Qr_OrdFab.Eof then
      begin
      Fmensagem('Ordem de Fabricação de Origem não Encontrada!',0,['0'],0);
      FAB_MCHAVE.SetFocus;
      exit;
      end
   else
      begin
      FAB_MDTFABR.Text  :=FormatDateTime(fdt2, Qr_OrdFabOP1_DATAPREV.Value);
      FAB_MLOTE.Text    :=Qr_OrdFabOP1_LOTE.AsString;
      FAB_MDTVCTO.Text  :=FormatDateTime(fdt2, Qr_OrdFabOP1_DATAVEN.Value);

      MDATAPREV.Text    :=FormatDateTime(fdt2, Qr_OrdFabOP1_DATAPREV.Value);
      MNUMLOT.Text      :=Qr_OrdFabOP1_LOTE.AsString;
      MDATAVEN.Text     :=FormatDateTime(fdt2, Qr_OrdFabOP1_DATAVEN.Value);

      FAB_MCODPRO.Text  :=Qr_OrdFabOP2_CODPRO.AsString;
      FAB_MQTD.Text     :=FormatFloat(mcasind,   Qr_OrdFabOP2_QTDPROD.Value);
      FAB_MPU.Text      :=FormatFloat(mcaspuind, Qr_OrdFabOP2_PU.Value);
      FAB_MTOTAL.Caption:=FormatFloat(mcasas, ValFloat(FAB_MPU.Text)*ValFloat(FAB_MQTD.Text));
      if flcadpro(1,0,0,Trim(FAB_MCODPRO.Text)) then
         begin
         FAB_MNOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
//         FAB_MUND.Text   :=DM1.Tb_ProPDUND.Value;
         end;
      end;
   end;

end;

procedure TFrm_Ind_Fab.FAB_MDTFABRExit(Sender: TObject);
begin
if Trim(FAB_MDTFABR.Text)<>'/  /' then
   begin
   Try
      FAB_MDTFABR.Text:=FormatDateTime(fdt2, StrToDate(FAB_MDTFABR.Text));
   Except
      Fmensagem('Data de Fabricação Inválida!',0,['0'],0);
      FAB_MDTFABR.SetFocus;
      end;
   end;


end;

procedure TFrm_Ind_Fab.FAB_MDTVCTOExit(Sender: TObject);
begin
if Trim(FAB_MDTVCTO.Text)<>'/  /' then
   begin
   Try
      FAB_MDTVCTO.Text:=FormatDateTime(fdt2, StrToDate(FAB_MDTVCTO.Text));
   Except
      Fmensagem('Data de Vencimento Inválida!',0,['0'],0);
      FAB_MDTVCTO.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_Fab.FAB_MCODPROExit(Sender: TObject);
begin
if (PRO_CANCELAR.Focused) or (BBSAIR.Focused) or (ValFloat(FAB_MCODPRO.Text)=0) then
   exit;
FAB_MCODPRO.Text:=fdeixanum(FAB_MCODPRO.Text);
if not flcadpro(1,0,0,Trim(FAB_MCODPRO.Text)) then
   begin
   Fmensagem('Produto não Cadastrado!',0,['0'],0);
   FAB_MCODPRO.SetFocus;
   end
else
   begin
   if (DM1.Tb_ProPDNIVEL.Value<>4) and (DM1.Tb_ProPDNIVEL.Value<>3) then
      begin
      Fmensagem('Este não é um produto válido!',0,['0'],0);
      FAB_MCODPRO.SetFocus;
      exit;
      end
   else
      begin
      FAB_MNOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
      if DM1.Tb_ProPDPCOFAB.AsFloat>0 then
         FAB_MPU.Text:=FormatFloat(mcaspuind, DM1.Tb_ProPDPCOFAB.AsFloat)
      else if DM1.Tb_ProPDPRECOC.AsFloat>0 then
         FAB_MPU.Text:=FormatFloat(mcaspuind, DM1.Tb_ProPDPRECOC.AsFloat)
      else
         FAB_MPU.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDPRECO1.Value);
      end;
   end;
if ValFloat(FAB_MCHAVE.Text)>0 then
   begin
   if not Qr_OrdFab.Locate('OP2_CODPRO',fsonumero(FAB_MCODPRO.Text),[]) then
      begin
      Fmensagem('Este Produto não Foi Encontrado na ordem de fabricação origem!',0,['0'],0);
      exit;
      end;
   end;
end;

procedure TFrm_Ind_Fab.FAB_MQTDExit(Sender: TObject);
begin
if (PRO_CANCELAR.Focused) then
   exit;
if ValFloat(FAB_MQTD.Text)<=0 then
   begin
   Fmensagem('Favor digitar uma quantidade válida!',0,['0'],0);
   FAB_MQTD.SetFocus;
   exit;
   end;
FAB_MQTD.Text     :=FormatFloat(mcasind, ValFloat(FAB_MQTD.Text));
FAB_MTOTAL.Caption:=FormatFloat(mcasas, ValFloat(FAB_MPU.Text)*ValFloat(FAB_MQTD.Text));

end;

procedure TFrm_Ind_Fab.FAB_MPUExit(Sender: TObject);
begin
if (PRO_CANCELAR.Focused) then
   exit;
FAB_MPU.Text      :=FormatFloat(mcaspuind, ValFloat(FAB_MPU.Text));
FAB_MTOTAL.Caption:=FormatFloat(mcasas, ValFloat(FAB_MPU.Text)*ValFloat(FAB_MQTD.Text));

end;

procedure TFrm_Ind_Fab.FAB_MCHAVEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 113 then
   begin
   Application.CreateForm(TFrm_Prod_Loc, Frm_Prod_loc);
   Frm_Prod_Loc.mInd_Fab_Origem_op:=mInd_Fab_Origem;
   Frm_Prod_Loc.ShowModal;
   if Trim(Frm_Prod_Loc.MCHAVEI.Text)<>'' then
      begin
      FAB_MCHAVE.Text:=Frm_Prod_Loc.MCHAVEI.Text;
      end;
   Frm_Prod_Loc.Free;
   end;
end;

procedure TFrm_Ind_Fab.bbBaixarMPClick(Sender: TObject);
begin
if DM3.Tb_Op01OP1_STATUS.Value>1 then
   begin
   Fmensagem('Este Pedido ja Esta Confirmado!',0,['0'],0);
   exit;
   end;
if msitmp=1 then
   begin
   Fmensagem('Este Pedido ja Foi Baixado as Matérias Primas!',0,['0'],0);
   exit;
   end;

if (not CB_QTDNEG.Checked) and (DM3.Tb_Op01OP1_SITMP.Asinteger<1) then
   begin
   if not fTestaEstoqueNegativo(1) then
      exit;
   end;


if fmensagem('Quer Realmente Baixar as Matérias Primas!',0,['1','2'],0)<>mrYes then
   exit;

if fpconfirmar(3) then
   begin
   DM3.Tb_Op01.Edit;
   DM3.Tb_Op01OP1_SITMP.Value:=1;
   DM3.Tb_Op01.Post;
   Fmensagem('Materias Primas Baixadas no Estoque!',0,['0'],0);
   end;

end;


function fifGravarOp03(ptipo: Integer;
                       pcodemp,pfabenv,plotseq,pcodigo,pseq,pcodmat,
                       pqtdprev,pqtdutil,ppu: Real;
                       pnumero,plote,pdtvcto: String): Boolean;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftstring,'NUMERO',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'LOTE',ptinput);
DM1.Query2.Params.CreateParam(ftstring,'DTVCTO',ptinput);
DM1.Query2.SQL.Add('Insert Into CADOP03 ('
                  +'OP3_CODEMP, '
                  +'OP3_FABENV, '
                  +'OP3_LOTSEQ, '
                  +'OP3_CODIGO, '
                  +'OP3_SEQ, '
                  +'OP3_CODMAT,'
                  +'OP3_QTDPREV, '
                  +'OP3_QTDUTIL, '
                  +'OP3_PU, '
                  +'OP3_NUMERO,'
                  +'OP3_LOTE, '
                  +'OP3_DTVCTO) values ('
                  +FloatToStr(pcodemp)+','
                  +FloatTostr(pfabenv)+','
                  +FloatToStr(plotseq)+','
                  +FloatToStr(pcodigo)+','
                  +FloattoStr(pseq)+','
                  +Floattostr(pcodmat)+','
                  +mudavp(FloatToStr(pqtdprev))+','
                  +mudavp(FloatToStr(pqtdutil))+','
                  +mudavp(FloatToStr(ppu))+','
                  +':NUMERO, '
                  +':LOTE, '
                  +':DTVCTO) ');
DM1.Query2.ParamByName('NUMERO').AsString:=pnumero;
DM1.Query2.ParamByName('LOTE').AsString  :=plote;
if (Trim(pdtvcto)='/  /') or (Trim(pdtvcto)='') then
   DM1.Query2.ParamByName('DTVCTO').AsDateTime :=pdatanula
else
   DM1.Query2.ParamByName('DTVCTO').AsDateTime :=StrToDate(pdtvcto);
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
   result:=true;

except  on e: Exception do
   begin
   ex_erroSql_Novo(DM1.Query2,5837,'lerarq:'+e.message ,'CADOP03');
   result:=false;
   end;
   end;

end;
procedure TFrm_Ind_Fab.bbExcluirMPClick(Sender: TObject);
var
x: Integer;
begin
mqtd:=STG_MP.Row;

if (STG_MP.Cells[0,1]='') or (STG_MP.Cells[0,mqtd]='') then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_MP.RowCount=2 then
   STG_MP.Rows[1].Clear
else
   begin
   for x:=STG_MP.Row to STG_MP.RowCount-2 do
      begin
      STG_MP.Cells[00,x]:=STG_MP.Cells[00,x+1];
      STG_MP.Cells[01,x]:=STG_MP.Cells[01,x+1];
      STG_MP.Cells[02,x]:=STG_MP.Cells[02,x+1];
      STG_MP.Cells[03,x]:=STG_MP.Cells[03,x+1];
      STG_MP.Cells[04,x]:=STG_MP.Cells[04,x+1];
      STG_MP.Cells[05,x]:=STG_MP.Cells[05,x+1];
      STG_MP.Cells[06,x]:=STG_MP.Cells[06,x+1];
      STG_MP.Cells[07,x]:=STG_MP.Cells[07,x+1];
      STG_MP.Cells[08,x]:=STG_MP.Cells[08,x+1];
      STG_MP.Cells[09,x]:=STG_MP.Cells[09,x+1];
      end;
   STG_MP.RowCount:=STG_MP.RowCount-1;
   end;
mop_mp:=0;
fptotais(0);

end;

procedure TFrm_Ind_Fab.bbCancelarMPClick(Sender: TObject);
begin
mop_mp:=0;
CODIGOMP.Text  :='';
GRADEMP.Text   :='';
LOTEMP.Text    :='';
DATAVMP.Text   :='/  /';
NOMEMP.Text    :='';
UNDMP.Text     :='';
QTDPREVMP.Text :='';
QTDUTILMP.Text :='';
PCOUNIMP.Text  :='';
TOTALMP.Caption:='';


end;

procedure TFrm_Ind_Fab.bbEditarMPClick(Sender: TObject);
begin
mop_mp :=1;
mqtd:=STG_MP.Row;
CODIGOMP.Text   :=STG_MP.Cells[00,STG_MP.Row];
GRADEMP.Text   :=STG_MP.Cells[01,STG_MP.Row];
LOTEMP.Text    :=STG_MP.Cells[02,STG_MP.Row];
DATAVMP.Text   :=STG_MP.Cells[03,STG_MP.Row];
NOMEMP.Text    :=STG_MP.Cells[07,STG_MP.Row];
UNDMP.Text     :=STG_MP.Cells[06,STG_MP.Row];
QTDPREVMP.Text :=STG_MP.Cells[04,STG_MP.Row];
QTDUTILMP.Text :=STG_MP.Cells[05,STG_MP.Row];
PCOUNIMP.Text  :=STG_MP.Cells[08,STG_MP.Row];
TOTALMP.Caption:=STG_MP.Cells[09,STG_MP.Row];
CODIGOMP.SetFocus;



end;

procedure TFrm_Ind_Fab.bbGravarMPClick(Sender: TObject);
begin
if not flcadpro(1,0,0,Trim(CODIGOMP.Text)) then
   begin
   Fmensagem('Produto não Cadastrado!',0,['0'],0);
   CODIGOMP.SetFocus;
   end
else
   begin
   if DM1.Tb_ProPDNIVEL.Value=0 then
      begin
      Fmensagem('Este não é um produto válido!',0,['0'],0);
      CODIGOMP.SetFocus;
      exit;
      end;
   end;

if ValFloat(QTDPREVMP.Text)<=0 then
   begin
   Fmensagem('Favor Digitar uma Quantidade Valida!',0,['0'],0);
   QTDPREVMP.SetFocus;
   exit;
   end;
if mop_mp>0 then
   begin
   mqtd:=STG_MP.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG_MP.RowCount;
   STG_MP.RowCount:=mqtd+1;
   STG_MP.Rows[mqtd+1].Clear;
   STG_MP.Rows[mqtd].Clear;
   end;

STG_MP.Cells[00,mqtd-1]:=CODIGOMP.Text;
STG_MP.Cells[01,mqtd-1]:=GRADEMP.Text;
STG_MP.Cells[02,mqtd-1]:=LOTEMP.Text;
STG_MP.Cells[03,mqtd-1]:=DATAVMP.Text;
STG_MP.Cells[07,mqtd-1]:=NOMEMP.Text;
STG_MP.Cells[06,mqtd-1]:=UNDMP.Text;
STG_MP.Cells[04,mqtd-1]:=QTDPREVMP.Text;
STG_MP.Cells[05,mqtd-1]:=QTDUTILMP.Text;
STG_MP.Cells[08,mqtd-1]:=PCOUNIMP.Text;
STG_MP.Cells[09,mqtd-1]:=TOTALMP.Caption;

if (mop=0) and (mqtd>mtamtela_mp) then
   STG_PP.TopRow:=mqtd-(mtamtela_mp-1);
mop_mp:=0;
fptotais(0);
bbCancelarMP.Click;
CODIGOMP.SetFocus;
end;

procedure TFrm_Ind_Fab.CODIGOMPExit(Sender: TObject);
var
x: Integer;
begin
if (bbCancelarMP.Focused) or (BBSAIR.Focused) or (BBLIMPAR.Focused) or (ValFloat(CODIGOMP.Text)=0) then
   exit;
CODIGOMP.Text:=FloatToStr(ValFloat(CODIGOMP.Text));
if not flcadpro(1,0,0,Trim(CODIGOMP.Text)) then
   begin
   Fmensagem('Produto não Cadastrado!',0,['0'],0);
   CODIGOMP.SetFocus;
   end
else
   begin
   if (DM1.Tb_ProPDNIVEL.Value=0) then
      begin
      Fmensagem('Este não é um produto válido!',0,['0'],0);
      CODIGOMP.SetFocus;
      exit;
      end;

   NOMEMP.Text  :=DM1.Tb_ProPDNOME.Value;
   UNDMP.Text   :=DM1.Tb_ProPDUND.Value;
   if DM1.Tb_ProPDPCOFAB.Value>0 then
      PCOUNIMP.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDPCOFAB.Value)
   else if DM1.Tb_ProPDPRECOC.Value>0 then
      PCOUNIMP.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDPRECOC.Value)
   else
      PCOUNIMP.Text    :=FormatFloat(mcaspuind, DM1.Tb_ProPDPRECO1.Value);
   TOTALMP.Caption     :=FormatFloat(mcasas, ValFloat(PCOUNIMP.Text)*ValFloat(QTDPREVMP.Text));

   for x:=1 to STG_MP.RowCount-1 do
      begin
      if Trim(STG_MP.Cells[0,x])='' then
         continue;
      if (mop_mp=1) and (x=mqtd) then
         Continue;
      if (trim(CODIGOMP.Text)=trim(STG_PP.Cells[mcolmp_codpro,x])) and
         (trim(LOTEMP.Text)  =trim(STG_PP.Cells[mcolmp_lote,x])) and
         (trim(DATAVMP.Text) =trim(STG_PP.Cells[mcolmp_dtvcto,x])) then
         begin
         if fmensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_PP.Row:=x;
            bbEditarMP.Click;
            break;
            exit;
            end
         else
            begin
            CODIGOMP.Text:='';
            CODIGOMP.SetFocus;
            break
            end;
         end;
      end;
   end;
end;

procedure TFrm_Ind_Fab.CODIGOMPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL<>0';
//   DM1.Tb_Pro.Filtered:=True;
   CODIGOMP.Text:=fChamaPro(0,'Frm_Ind_Fab',key);
   key:=#0;
   DM1.Tb_Pro.Filtered:=False;
   end;

end;

procedure TFrm_Ind_Fab.GRADEMPExit(Sender: TObject);
var
x: Integer;
begin
if (CODIGOMP.Focused) or (bbCancelarMP.Focused) then
   exit;

if Valint(copy(mpseg,4,2))=02 then  // grade cores tamanho
   begin
   if not flcadlgc(0,1,0,Trim(CODIGOMP.Text),GRADEMP.Text,'') then
      begin
      Fmensagem('Grade não Cadastrada!',0,['0'],0);
      CODIGOMP.SetFocus;
      exit;
      end;

   for x:=1 to STG_MP.RowCount-1 do
      begin
      if Trim(STG_MP.Cells[0,x])='' then
         continue;
      if (mop_mp=1) and (x=mqtd) then
         Continue;
      if (trim(CODIGOMP.Text)=trim(STG_PP.Cells[mcolmp_codpro,x])) and
         (Trim(GRADEMP.Text) =Trim(STG_PP.Cells[mcolmp_grade,x])) and
         (Trim(LOTEMP.Text)  =Trim(STG_PP.Cells[mcolmp_lote,x])) and
         (Trim(DATAVMP.Text) =Trim(STG_PP.Cells[mcolmp_dtvcto,x])) then
         begin
         if fmensagem('Produto já digitado quer altera-lo?',0,['1','2'],2)=mrYes then
            begin
            STG_MP.Row:=x;
            mop_mp:=1;
            bbEditarMP.Click;
            break;
            end
         else
            begin
            CODIGOMP.Text:='';
            CODIGOMP.SetFocus;
            break;
            end;
         end;
      end;
   end;

end;

procedure TFrm_Ind_Fab.LOTEMPExit(Sender: TObject);
begin
if not fTestaTam(0,20,LOTEMP.Text,'') then
   LOTEMP.Text:=copy(LOTEMP.Text,1,20);

end;

procedure TFrm_Ind_Fab.LOTEMPKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,20,LOTEMP.Text,key) then
   key:=#0;

end;

procedure TFrm_Ind_Fab.DATAVMPExit(Sender: TObject);
begin
if Trim(DATAVMP.Text)<>'/  /' then
   begin
   Try
      DATAVMP.Text:=FormatDateTime(fdt2, StrToDate(DATAVMP.Text));
   Except
      Fmensagem('Data de Vencimento Invalida!',0,['0'],0);
      DATAVMP.SetFocus;
      end;
   end;

end;

procedure TFrm_Ind_Fab.QTDPREVMPExit(Sender: TObject);
begin
if (GRADEMP.Focused) or (CODIGOMP.Focused) or (bbCancelarMP.Focused) then
   exit;
if ValFloat(QTDPREVMP.Text)<=0 then
   begin
   Fmensagem('Favor digitar uma quantidade válida!',0,['0'],0);
   QTDPREVMP.SetFocus;
   exit;
   end;

if not fTestaTam(0,12,QTDPREVMP.Text,'') then
   QTDPREVMP.Text:=copy(QTDPREVMP.Text,1,12);

QTDPREVMP.Text    :=FormatFloat(mcasind, ValFloat(QTDPREVMP.Text));
TOTALMP.Caption   :=FormatFloat(mcasas, ValFloat(PCOUNIMP.Text)*ValFloat(QTDPREVMP.Text));


end;

procedure TFrm_Ind_Fab.QTDUTILMPExit(Sender: TObject);
begin
if (GRADEMP.Focused) or (QTDPREVMP.Focused) or (CODIGOMP.Focused) or (bbCancelarMP.Focused) then
   exit;
if ValFloat(QTDUTILMP.Text)<=0 then
   begin
   Fmensagem('Favor digitar uma quantidade válida!',0,['0'],0);
   QTDUTILMP.SetFocus;
   exit;
   end;

if not fTestaTam(0,12,QTDUTILMP.Text,'') then
   QTDUTILMP.Text:=copy(QTDUTILMP.Text,1,12);

QTDUTILMP.Text    :=FormatFloat(mcasind, ValFloat(QTDUTILMP.Text));

end;

procedure TFrm_Ind_Fab.PCOUNIMPExit(Sender: TObject);
begin
PCOUNIMP.Text   :=FormatFloat(mcaspuind, ValFloat(PCOUNIMP.Text));
TOTALMP.Caption :=FormatFloat(mcasas, ValFloat(PCOUNIMP.Text)*ValFloat(QTDPREVMP.Text));

end;

procedure TFrm_Ind_Fab.LOTEMPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   Application.CreateForm(TFrm_ConsLot,Frm_ConsLot);
   flcadlgc(0,0,0,DM1.Tb_ProPDCODPRO.AsString,'','');
   Frm_Conslot.CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;
   Frm_ConsLot.NOMPRO.Text:=DM1.Tb_ProPDNOME.AsString;
   Frm_ConsLot.CODPRO.Enabled:=True;
   Frm_ConsLot.mConsLotOrigem:=1;
   Frm_ConsLot.ShowModal;
   if trim(Frm_ConsLot.plote)<>'' then
      LOTEMP.Text:=Frm_ConsLot.plote;
   if Trim(Frm_ConsLot.pdtvcto)<>'' then
      DATAVMP.Text:=Frm_ConsLot.pdtvcto;
   FreeandNil(Frm_Conslot);

   end;

end;

procedure TFrm_Ind_Fab.FAB_MCODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   FAB_MCODPRO.Text:=fChamaPro(0,'Frm_Ind_Fab',key);
   key:=#0;
   DM1.Tb_Pro.Filtered:=False;
   end;
end;

procedure TFrm_Ind_Fab.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree

end;



function TFrm_Ind_Fab.FImprimirTextos(pTexto: String;pcodpro_Empro,pCodPro,pCodemp: Real): Boolean;
var
x: Integer;
begin
// TEXTO 02
RichEdit1.Lines.Clear;
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select CP_PAGINA,CP_TEXTO from CADPROC02_TEXTO where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+FloatTostr(pCodemp)+' and ')
                  +' CP_CODPRO_EMPRO=0'+FloatToStr(pcodpro_Empro)
                  +' and CP_CODPRO=0'+FloatToStr(pcodpro)
                  +' and CP_CHAVE='+chr(39)+pTexto+chr(39)
                  +' ORDER BY CP_PAGINA ');
DM1.Query3.Open;
if not DM1.Query3.Eof then
   begin
   assignfile(f,mTextoTemp);
   rewrite(f);
   While not DM1.Query3.Eof do
      begin
      While not DM1.Query3.Eof do
         begin
         writeln(f,DM1.Query3.fieldbyName('CP_TEXTO').AsString);
         DM1.Query3.Next;
         end;
      end;
   closefile(f);
   RichEdit1.Lines.LoadFromFile(mTextoTemp);
   end;
if (trim(RichEdit1.Text)='') and (pTexto='TEXTO01') then
   begin
   if flcadcomp02(0,FloatToStr(pcodpro_Empro),FloatToStr(pcodpro)) then
      begin
      if Trim(DM3.Tb_Comp02CP_DESCRICAO.Value)<>'' then
         begin
         RichEdit1.Text:=DM3.Tb_Comp02CP_DESCRICAO.Value;
         end;
      end;
   end;
if trim(RichEdit1.Text)<>'' then
   begin
   if mlin>50 then
      begin
      mlin:=mlin+1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
      form_impres_ind_fab.RDprint1.Novapagina;
      mlin:=1;
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,'Continuacao..',mnormal);
      end;
   mlin:=mlin+1;
   for x:=0  to RichEdit1.Lines.Count do
      begin
      mlin:=mlin+1;
      fpfab02testapag(3);
      form_impres_ind_fab.RDprint1.ImpF(mlin,01,RichEdit1.Lines[x],mreduz);
      end;
  mlin:=mlin+1;
  fpfab02testapag(3);
  end;
result:=true;
// TERMINO TEXTO 02


end;

{
+------+-------------------------------------+----------+------------+---------------+---------+
|      |                                     | FORMULA  |  FORMULA   |  QUANTIDADE   |         |
|CÓDIGO|	NOME                         |CENTESIMAL|PADRÃO(Kg/L)|UTILIZADA(Kg/L)|LOTE (RE)|
|------+-------------------------------------+----------+------------+---------------+---------+
|      |Peroxido Hidrogênio (200 vol)	5,0%.|  Sistema |            |P/ preencher ma|         |
|123456|1234567890123456789012345678901234567|          |            |               |         |
|123456|1234567890123456789012345678901234567|          |            |               |         |
+------+-------------------------------------+----------+------------+---------------+---------+
}
procedure TFrm_Ind_Fab.FormActivate(Sender: TObject);
begin
if not mjaEfetivou then
   begin
   
   mTextoTemp:=fProcTemp(24);

   flcadpar01(0,codemp,'1');


   if (mInd_Fab_Origem<2) or (mInd_Fab_Origem=3) then
      begin
      ls_lotfab:=DM4.Tb_Par01PCHAVFAB_LS.AsInteger;
      mtamtela:=13;
      end
   else
      begin
      ls_lotfab:=DM4.Tb_Par01PCHAVENV_LS.AsInteger;
      mtamtela:=05;
      GB_ORIGEM_FAB.Visible:=True;
      end;

    mtamtela_mp:=10;

   mtamtela_mp:=10;
   STG_PP.RowCount:=2;
   STG_PP.rows[1].Clear;
   STG_PP.Cells[mcolmp_codpro,0]:='Código';
   STG_PP.Cells[mcolmp_grade,0]:='Grade';
   STG_PP.Cells[mcolmp_lote,0]:='Quantidade';
   STG_PP.Cells[mcolmp_dtvcto,0]:='Und';
   STG_PP.Cells[mcolmp_qtdped,0]:='Descrição';
   STG_PP.Cells[mcolmp_qtdutil,0]:='Pço Unitário';
   STG_PP.Cells[mcolmp_und,0]:='Vlr.Total';
   STG_PP.Cells[mcolmp_descricao,0]:='Qtd.Prod';
   if mInd_Fab_Origem=2 then
      begin
      STG_PP.Cells[mcolmp_pcouni,0]:='Chave Origem';
      STG_PP.Cells[mcolmp_vlrtot,0]:='Dt.Fabric';
      STG_PP.Cells[10,0]:='Lote Fabric';
      STG_PP.Cells[11,0]:='Dt.Vcto.';
      STG_PP.Cells[12,0]:='Cód.Produto';
      STG_PP.Cells[13,0]:='Descrição';
      STG_PP.Cells[14,0]:='Und';
      STG_PP.Cells[15,0]:='Quant.';
      STG_PP.Cells[16,0]:='Pço.Unitário';
      STG_PP.Cells[17,0]:='Valor Total';
      end
   else
      begin
      STG_PP.ColWidths[08]:=0;
      STG_PP.ColWidths[09]:=0;
      STG_PP.ColWidths[10]:=0;
      STG_PP.ColWidths[11]:=0;
      STG_PP.ColWidths[12]:=0;
      STG_PP.ColWidths[13]:=0;
      STG_PP.ColWidths[14]:=0;
      STG_PP.ColWidths[15]:=0;
      STG_PP.ColWidths[16]:=0;
      STG_PP.ColWidths[17]:=0;
      end;
   STG_MP.RowCount:=2;
   STG_MP.rows[1].Clear;
   STG_MP.Cells[0,0]:='Código';
   STG_MP.Cells[1,0]:='Grade';
   STG_MP.Cells[2,0]:='Lote';
   STG_MP.Cells[3,0]:='Dt.Vcto.';
   STG_MP.Cells[4,0]:='Quantidade';
   STG_MP.Cells[5,0]:='Qtd.Util.';
   STG_MP.Cells[6,0]:='Und';
   STG_MP.Cells[7,0]:='Descrição';
   STG_MP.Cells[8,0]:='Pço Unitário';
   STG_MP.Cells[9,0]:='Vlr.Total';




   STG_ETA.RowCount:=2;
   STG_ETA.Rows[1].Clear;
   STG_ETA.Cells[0,0]:='Descrição da Etapa';
   STG_ETA.Cells[1,0]:='Nome do Responsavel';
   STG_ETA.Cells[2,0]:='Dt.Inicio';
   STG_ETA.Cells[3,0]:='Hr.Inicio';
   STG_ETA.Cells[4,0]:='Dt.Concl.';
   STG_ETA.Cells[5,0]:='Hr.Concl.';
   if ValInt(copy(mpseg,4,2))<>1 then
      begin
      STG_MP.ColWidths[2]:=0;
      STG_MP.ColWidths[3]:=0;
      end;

   if Valint(copy(mpseg,4,2))<>02 then  // grade cores tamanho
      begin
      LGRADE.Visible:=False;
      MGRADE.Visible:=False;
      STG_PP.ColWidths[1]:=0;
      STG_MP.ColWidths[1]:=0;
      end;
   if flcadactab(0,0,IntToStr(codcar),'CADOP') then
      begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbinc_true:=False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbalt_true:=False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbexc_true:=False;
      if DM4.Tb_AcTabAT_REL.Value=1 then
         bbrel_true:=False;
      if DM4.Tb_AcTabAT_ADIC.Value=1 then
         bbadic_true:=False;
      end
   else
      begin
      bbinc_true:=true;
      bbalt_true:=true;
      bbexc_true:=true;
      bbadic_true:=true;
      end;
   if not bbadic_true then
      begin
      MTOTPREAL.Visible:=FALSE;
      MTOTPPREV.Visible:=FALSE;
      MTOTMPPREV.Visible:=FALSE;
      MTOTMPREAL.Visible:=FALSE;
      MPU.Visible       :=false;
      MTOTAL.Visible    :=false;
      STG_MP.ColWidths[8]:=0;
      STG_MP.ColWidths[9]:=0;

      STG_PP.ColWidths[5]:=0;
      STG_PP.ColWidths[6]:=0;

      if mInd_Fab_Origem=2 then
         begin
         STG_PP.ColWidths[16]:=0;
         STG_PP.ColWidths[17]:=0;
         end;
      end;
   { Codigos da origem
   0-Produção Modelo 01 -anterior
   1-Producao Modelo 02 - c/Envase
   2-Envase de Produtos
   }
   if mInd_Fab_Origem=2 then
      begin
      Caption:='Manutenção em Ordem de Envase';
      end;

   BBINCLUIR.Enabled:=bbinc_true;
   mjaEfetivou:=true;

   end;
end;

procedure TFrm_Ind_Fab.sbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_IND_FAB','');
fGravaPadroes(0,'CB_QTDNEG'     ,'checked'       ,'_IND_FAB',iif(CB_QTDNEG.Checked,'true','false'));
fGravaPadroes(0,'CB_BAIXAGRAVA'     ,'checked'       ,'_IND_FAB',iif(cb_baixagrava.Checked,'true','false'));
fGravaPadroes(0,'CB_INIB_MP'     ,'checked'       ,'_IND_FAB',iif(cb_inib_mp.Checked,'true','false'));
fmensagem('Gravado!',0,['0'],0);


end;

procedure TFrm_Ind_Fab.FormCreate(Sender: TObject);
begin


if codusr=1111 then
   tsConfigMaster.TabVisible:=true
else
   tsConfigMaster.TabVisible:=false;

if flfilpad(0,'_IND_FAB','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_QTDNEG',[]) then
      CB_QTDNEG.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_BAIXAGRAVA',[]) then
      cb_baixagrava.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_INIB_MP',[]) then
      cb_inib_mp.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;

mApresentaMensagem:=true;

end;

function tFrm_ind_Fab.fTestaEstoqueNegativo(pOrigem: Integer): Boolean;
// 0-so Aviso
// 1-Erro nao vai Processar
var
mResult:boolean;
x,y: Integer;
mQtdPro: Real;
begin
mem_apuracao.Close;
mem_apuracao.open;

mResult:=true;

for x:=1 to STG_MP.RowCount do
   begin
   if fSonumero(STG_MP.Cells[mcolmp_codpro,x])=0 then
      Continue;
   mQtdPro:=0;
   for y:=1 to STG_MP.RowCount do
      begin
      if fSonumero(STG_MP.Cells[mcolmp_codpro,x])=fSonumero(STG_MP.Cells[mcolmp_codpro,y]) then
         mQtdPro:=mQtdPro+ValFloat(STG_MP.Cells[mcolmp_qtdutil,y]);
      end;
   if flcadpro(1,0,0,STG_MP.Cells[mcolmp_codpro,x]) then
      begin
      if mQtdPro>DM1.Tb_Proestoque.AsFloat then
         begin
         if mem_apuracao.Locate('CODPRO',ValFloat(STG_MP.Cells[mcolmp_codpro,x]),[]) then
            begin
            Continue;
            end;
         mem_apuracao.Append;
         mem_apuracaoCODPRO.AsFloat :=ValFloat(STG_MP.Cells[mcolmp_codpro,x]);
         mem_apuracaoUND.AsString   :=DM1.Tb_ProPDUND.AsString;
         mem_apuracaoNOMPRO.AsString:=DM1.Tb_ProPDNOME.AsString;
         mem_apuracaoQTDPED.AsFloat :=mQtdPro;
         mem_apuracaoQTDEST.AsFloat :=DM1.Tb_Proestoque.AsFloat;
         mem_apuracaoQTDSALDO.AsFloat:=mem_apuracaoQTDEST.AsFloat-mem_apuracaoQTDPED.AsFloat;
         mem_apuracao.Post;
         mResult:=false;
         end;
      end;
   end;

if not mResult then
   begin
   Application.CreateForm(Tfrm_obs_Grid, frm_obs_Grid);
   if pOrigem=0 then
      begin
      frm_obs_Grid.Panel_obs_cab.Caption:='ADVERTENCIA';
      frm_obs_Grid.Label_obs.Caption:='Divergencias Encontradas ao Verificar esta ordem de Produção!';
      end
   else
      begin
      frm_obs_Grid.Panel_obs_cab.Caption:='IRREGULARIDADES';
      frm_obs_Grid.Label_obs.Caption:='Irregularidades Encontradas ao Verificar esta ordem de Produção a Confirmação não Sera Aceita!';
      end;
   frm_obs_Grid.Src_Advert.DataSet:=mem_apuracao;
   frm_obs_Grid.ShowModal;
   frm_obs_Grid.free;
   frm_obs_Grid:=nil;
   end;
result:=mResult;
end;

procedure TFrm_Ind_Fab.FAB_MCHAVEKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  Key:=' ';
  Application.CreateForm(TFrm_Prod_Loc, Frm_Prod_loc);
  Frm_Prod_Loc.mInd_Fab_Origem_op:=mInd_Fab_Origem;
  Frm_Prod_Loc.ShowModal;
  if Trim(Frm_Prod_Loc.MCHAVEI.Text)<>'' then
     begin
     FAB_MCHAVE.Text:=Frm_Prod_Loc.MCHAVEI.Text;
     end;
  FreeAndNil(Frm_Prod_Loc);
  end;
FAB_MCHAVE.Text:=Trim(FAB_MCHAVE.Text);
end;

function TFrm_Ind_Fab.fAvalidarMateriasPrimas: boolean;
var
query_temp: TQuery;

begin

if DM3.Tb_Op01OP1_STATUS.Value>1 then
   begin
   result:=true;
   exit;
   end;
query_temp:=TQuery.Create(nil);
query_temp.databasename:=DM1.SG_ASSOC.DatabaseName;
query_temp.sql.add('Select sum(case when OP3_QTDPREV=OP3_QTDUTIL then 1 else 0 end) as qtdok, count(*) as qtdmp '
                  +', sum(case when length(nvl(OP3_LOTE,'+QuotedStr('')+'))<2 then 1 else 0 end) as semlote '
                  +'  from CADOP03 where OP3_LOTSEQ=:LOTSEQ and OP3_CODIGO=:CODIGO  '
                  +' and OP3_FABENV=:FABENV ');
query_temp.parambyname('LOTSEQ').AsInteger:=ls_lotfab;
query_temp.parambyname('CODIGO').AsInteger:=valint(MCHAVE.Text);
query_temp.parambyname('FABENV').AsInteger:=mInd_Fab_Origem;
try
   query_temp.Open;
except on e : exception do
   ex_erroSql_Novo(query_temp,6285,'func Erro:'+e.Message ,'CADEST');
   end;
if (query_temp.fieldbyname('qtdok').asinteger=query_temp.fieldbyname('qtdmp').asinteger) and
   (query_temp.fieldbyname('semlote').AsInteger>0) then
   begin
   mApresentaMensagem:=false;
   BBALTERARClick(self);
   fpmatprima(0);
   BBGRAVARClick(self);
   mApresentaMensagem:=true;
   end;

query_temp.close;
freeandnil(query_temp);
result:=true;

end;

end.
