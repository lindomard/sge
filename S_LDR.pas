unit S_LDR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DbTables, S_DM1, Func, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids,
  DBGrids, Buttons, S_Dpto, S_Bco, S_CCu, S_Cli, S_For, S_Sbco,
  S_Pldr, func2, S_Impres, S_Tra, S_Ven,lerarq,RDPrint,S_DM4,S_Usr,
  ToolEdit, RXDBCtrl,jpeg, ADODB, RxDBComb;

type
  TFrm_LDR = class(TForm)
    Panel_dig: TPanel;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    DBE_CodBco: TDBEdit;
    Label9: TLabel;
    DBE_NumDoc: TDBEdit;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    Label12: TLabel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BBPESQ: TBitBtn;
    BBREPETIR: TBitBtn;
    BBSALDO: TBitBtn;
    sbn_nomdep: TSpeedButton;
    spn_nomccu: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label13: TLabel;
    TIPO: TDBComboBox;
    Label14: TLabel;
    DBE_Codigo: TDBEdit;
    SpeedButton5: TSpeedButton;
    DBEdit17: TDBEdit;
    BBIMPR: TBitBtn;
    U_TmChq: TUpdateSQL;
    Qr_TMChq: TQuery;
    Qr_TMChqforma: TStringField;
    Qr_TMChqCHCODEMP: TFloatField;
    Qr_TMChqCHSEQ: TFloatField;
    Qr_TMChqCHNUMERO: TFloatField;
    Qr_TMChqCHBANCO: TFloatField;
    Qr_TMChqCHSERIE: TStringField;
    Qr_TMChqCHCODASS: TFloatField;
    Qr_TMChqCHEMIT: TStringField;
    Qr_TMChqCHCPF: TFloatField;
    Qr_TMChqCHRG: TStringField;
    Qr_TMChqCHCC: TStringField;
    Qr_TMChqCHDTNAS: TDateTimeField;
    Qr_TMChqCHVALOR: TFloatField;
    Qr_TMChqCHDTEMIS: TDateTimeField;
    Qr_TMChqCHDTDEP: TDateTimeField;
    Qr_TMChqCHAGENCIA: TStringField;
    Qr_TMChqCHFORMA: TFloatField;
    Qr_TMChqCHCODTAX: TFloatField;
    Qr_TMChqCHNUMPED: TFloatField;
    Qr_TMChqCHCAIXA: TFloatField;
    Qr_TMChqCHTIPO: TStringField;
    Src_TmChq: TDataSource;
    Qr_Chq: TQuery;
    Qr_ChqCHCODEMP: TFloatField;
    Qr_ChqCHSEQ: TFloatField;
    Qr_ChqCHNUMERO: TFloatField;
    Qr_ChqCHBANCO: TFloatField;
    Qr_ChqCHSERIE: TStringField;
    Qr_ChqCHCODASS: TFloatField;
    Qr_ChqCHEMIT: TStringField;
    Qr_ChqCHCPF: TFloatField;
    Qr_ChqCHRG: TStringField;
    Qr_ChqCHCC: TStringField;
    Qr_ChqCHDTNAS: TDateTimeField;
    Qr_ChqCHVALOR: TFloatField;
    Qr_ChqCHDTEMIS: TDateTimeField;
    Qr_ChqCHDTDEP: TDateTimeField;
    Qr_ChqCHAGENCIA: TStringField;
    Qr_ChqCHLOTE: TFloatField;
    Qr_ChqCHTIPO: TFloatField;
    Qr_ChqCHSTATUS: TFloatField;
    Qr_ChqCHDTBX: TDateTimeField;
    Qr_ChqCHUSRBX: TFloatField;
    Qr_ChqCHCAIXA: TFloatField;
    Tb_Ldr: TQuery;
    Src_LDR: TDataSource;
    DBCheckBox1: TDBCheckBox;
    Label15: TLabel;
    DBE_CodDep: TDBEdit;
    DBCB_NOMDEP: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBCb_Compens: TDBCheckBox;
    StaticText1: TStaticText;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label16: TLabel;
    DBE_CodCCu: TDBEdit;
    DBCB_NOMCCU: TDBComboBox;
    DBCB_NOMBCO: TDBComboBox;
    lbl_obs: TLabel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    EXCLUIR: TBitBtn;
    CANCELAR: TBitBtn;
    DBNavigator2: TDBNavigator;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBEdit1: TDBDateEdit;
    DATAREAL: TDBDateEdit;
    DBEdit3: TDBDateEdit;
    cb_2x_recibo: TCheckBox;
    GroupBox1: TGroupBox;
    src_ldr_imagem: TDataSource;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    sbn_nova: TSpeedButton;
    sbn_alterar: TSpeedButton;
    sbn_excluir: TSpeedButton;
    Qr_Ldr_Imagem: TADOQuery;
    Qr_Ldr_ImagemLI_CODEMP: TBCDField;
    Qr_Ldr_ImagemLI_CODLDR: TFloatField;
    Qr_Ldr_ImagemLI_CODLDR_LS: TFloatField;
    Qr_Ldr_ImagemLI_SEQ: TBCDField;
    Qr_Ldr_ImagemLI_OBS: TStringField;
    Qr_Ldr_ImagemLI_FOTO: TBlobField;
    Qr_Ldr_ImagemLI_NOMEORI: TStringField;
    Label17: TLabel;
    DB_CACOMPETENCIA_TIPO: TRxDBComboBox;
    DBText1: TDBText;
    edt_competencia_mes: TEdit;
    lbl_competencia_barra: TLabel;
    edt_competencia_ano: TEdit;
    Label7: TLabel;
    DBDateEdit1: TDBDateEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBE_CodBcoExit(Sender: TObject);
    procedure sbn_nomdepClick(Sender: TObject);
    procedure spn_nomccuClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBE_CodigoExit(Sender: TObject);
    procedure BBSALDOClick(Sender: TObject);
    procedure BBREPETIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBPESQClick(Sender: TObject);
    procedure BBIMPRClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure Qr_TMChqCalcFields(DataSet: TDataSet);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBE_CodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DATAREALExit(Sender: TObject);
    procedure Src_LDRDataChange(Sender: TObject; Field: TField);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBCb_CompensExit(Sender: TObject);
    procedure DBE_CodDepExit(Sender: TObject);
    procedure DBE_CodCCuExit(Sender: TObject);
    procedure DBCB_NOMBCOExit(Sender: TObject);
    procedure DBCB_NOMDEPExit(Sender: TObject);
    procedure DBCB_NOMCCUExit(Sender: TObject);
    procedure DBCB_NOMBCOEnter(Sender: TObject);
    procedure DBCB_NOMDEPEnter(Sender: TObject);
    procedure DBCB_NOMCCUEnter(Sender: TObject);
    procedure TIPOEnter(Sender: TObject);
    procedure DBE_CodigoEnter(Sender: TObject);
    procedure DBE_NumDocExit(Sender: TObject);
    procedure DBEdit15Change(Sender: TObject);
    procedure DBE_CodBcoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb_2x_reciboClick(Sender: TObject);
    procedure sbn_novaClick(Sender: TObject);
    procedure sbn_alterarClick(Sender: TObject);
    procedure sbn_excluirClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure TIPOExit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure edt_competencia_mesExit(Sender: TObject);
    procedure edt_competencia_anoExit(Sender: TObject);
    procedure DB_CACOMPETENCIA_TIPOExit(Sender: TObject);
  private
    { Private declarations }
    mcodldr_image:Integer;

    mdtemis_ant: tDateTime;


    function fldr01lerant(ptipo: Integer):Boolean;

    function fLiberaCampos(pLibera: Boolean): Boolean;

    function fAtualizarDataCompetencia: Boolean;

    function fAceitaManipular(pDatDoc: tDateTime): boolean;

  public
    { Public declarations }
    form_impres_ldr: tFrm_Impres;
    form_sbco: tFrm_sbco;
    form_pldr: tFrm_pldr;

  end;
function fldr01gant(ptipo,pcodemp: Integer; pcodldr: Real): Boolean;
function fldrDescMv(ptipo: Integer): Boolean;

var
  Frm_LDR: TFrm_LDR;
  mnat,mdatareal : String;
  mvalorr    : Real;
  mcodbco    : Integer;
  vaDATAP    : TDateTime;
  vaDATAREAL : TdateTime;
  vaDATAREF  : TdateTime;
  vaVALORP   : Real;
  vaVALORR   : Real;
  vaCODBCO   : Integer;
  vaCODCC    : String;
  vaCODDEP   : String;
  vaNATDC    : String;
  vaDESCMV   : String;
  vaNUMDOC   : String;
  vaNUMDOC2  : String;
  vaCODIGO   : Real;
  vaTIPO     : String;
  mincluir   : Boolean;
  mqtdd      : Real;
  moper      : Integer = 11;
  ldr_ori    : String;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  bbrel_true : Boolean=True;
  macbanco   : Boolean=False;
  macdep     : Boolean=False;
  macccu     : Boolean=False;
  mcodigo_ant: Real;
  mManDesc: boolean=false;
  mDataReal_ant,mDatSaldo_Ant: TDateTime;

implementation

uses func_excecoes, s_Imagem_WebCam, S_Fig_TelaCheia, S_DM1_ADO, Variants;

{$R *.DFM}

procedure TFrm_LDR.INCLUIRClick(Sender: TObject);
begin
if not DM1.Tb_LDR.Active then
   begin
   DM1.Tb_LDR.Close;
   DM1.Tb_LDR.SQL.Clear;
   DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR ');
   if not DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
      DM1.Tb_LDR.SQL.Add(' where CODEMP=0'+IntToStr(Codemp));
   DM1.Tb_LDR.SQL.Add(' order by DATADP');
   DM1.Tb_LDR.Open;
   end;
moper:=0;
mincluir:=True;
DM1.Tb_LDR.Append;
fLiberaCampos(true);

INCLUIR.Enabled:=False;
BBPESQ.Enabled :=False;
BBIMPR.Enabled :=False;
ALTERAR.Enabled:=False;
GRAVAR.Enabled :=True;
EXCLUIR.Enabled:=False;
CANCELAR.Enabled:=True;
DM1.Tb_LDRDATADP.Value:=pdatasis;
DM1.Tb_LDRDATAREF.Value:=pdatasis;
DM1.Tb_LDRDTCOMP.Value :=pdatasis;
mvalorr:=0;
mdatareal:='/  /';
mcodbco  :=0;
mnat     :=' ';
BBIMPR.Enabled := False;
 DBNavigator2.Enabled:=False;
 DBGrid1.Enabled     :=False;
mManDesc :=false;

edt_competencia_mes.Text         :=FormatDatetime('mm', DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.AsDateTime);
edt_competencia_ano.Text         :=FormatDatetime('yyyy', DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.AsDateTime);

DBEDIT1.SetFocus;


end;

procedure TFrm_LDR.ALTERARClick(Sender: TObject);
begin
if (DM1.Tb_LDRCODLDR.IsNull) or (DM1.Tb_LDRSTATUS.Value=9) then
   begin
   fmensagem('Não há registro a ser alterado!',0,['0'],0);
   exit;
   end;

if not (DM1.Tb_LDRDATAREAL.IsNull) and (DM1.Tb_LDRDATAREAL.Value>pdatanula) then
   begin
   flcadpar01(0,0,'1');
   end
else if DM1.Tb_LDRORIGEM.Value>0  Then
   begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=0;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=0;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Lancamento Feito Automatico para Altera-lo Favor Digitar a Senha';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;
   if fValidaSenha(mValidarSenha)<>0 then
      exit;
   end;

if (DM1.Tb_LDRDATAREAL.IsNull) or (DM1.Tb_LDRDATAREAL.Value<=pdatanula) Then
   begin
   mdatareal:='/  /';
   mvalorr  :=0;
   mnat:=' ';
   end
else
   Begin

   if not fAceitaManipular(DM1.Tb_LDRDATAREAL.AsDateTime) then
      begin
      exit;
      end;
   mdatareal:=FormatDateTime('dd/mm/yyyy',DM1.Tb_LDRDATAREAL.Value);
   mvalorr  :=DM1.Tb_LDRVALORR.Value;
   mnat     :=DM1.Tb_LDRNATDC.Value;
   end;
mcodbco:=DM1.Tb_LDRCODBCO.AsInteger;
moper:=8;
DM1.Tb_LDR.edit;
mDatSaldo_Ant:=DM1.Tb_LDRDTSALDO.AsDateTime;
mDataReal_ant:=DM1.Tb_LDRDATAREAL.AsDateTime;
INCLUIR.Enabled    :=False;
ALTERAR.Enabled    :=False;
GRAVAR.Enabled     :=True;
EXCLUIR.Enabled    :=False;
CANCELAR.Enabled   :=True;
BBPESQ.Enabled :=False;
fLiberaCampos(true);
BBIMPR.Enabled := False;
  DBNavigator2.Enabled:=False;
  DBGrid1.Enabled     :=False;
mManDesc:=true;
DBEdit1.SetFocus;

end;

procedure TFrm_LDR.GRAVARClick(Sender: TObject);
begin
{
IF (TRIM(DBE_Codigo.Text)='') or (trim(DBE_Codigo.Text)='0') or (trim(DBEdit17.Text)='') then
  begin
  DBE_Codigo.SetFocus;
  end
else
  begin
}
  if DM1.Tb_LDRDATADP.IsNull then
     Begin
     fmensagem('Data Prevista tem que ser Preenchida!',0,['0'],0);
     dbedit1.SetFocus;
     exit;
     end;
  if DM1.Tb_LDRDATAREF.IsNull Then
     Begin
     fmensagem('Data de Referencia tem que ser Preenchida!',0,['0'],0);
     dbedit3.SetFocus;
     exit;
     end;
  if (DM1.Tb_LDRVALORP.Value=0) or (DM1.Tb_LDRVALORP.IsNull) then
     Begin
     fmensagem('Valor Previsto tem que ser Preenchida!',0,['0'],0);
     dbedit4.SetFocus;
     exit;
     end;
  if Trim(DM1.Tb_LDRCODCC.Value)='' then
     Begin
     fmensagem('Centro de Custo  tem que ser Preenchida!',0,['0'],0);
     DBE_CodCCu.SetFocus;
     exit;
     end;
  if Trim(DM1.Tb_LDRNATDC.Value)='' then
     Begin
     fmensagem('Natureza do Lançamento Inexistente.'+#13
               +'Selecione um Centro de Custo Válido!',0,['0'],0);
     DBE_CodCCu.SetFocus;
     exit;
     end;
  if Trim(DM1.Tb_LDRNUMDOC.Value)='' then
     Begin
     fmensagem('Documento tem que ser Preenchida!',0,['0'],0);
     DBE_NumDoc.SetFocus;
     exit;
     end;
  if not (DM1.Tb_LDRDATAREAL.IsNull) and (DM1.Tb_LDRDATAREAL.Value>pdatanula) then
     begin
     if (DM1.Tb_LDRVALORR.Value=0) or (DM1.Tb_LDRVALORR.IsNull) Then
        Begin
        fmensagem('Valor Real tem que ser Preenchida!',0,['0'],0);
        dbedit5.SetFocus;
        exit;
        end;
     if (DM1.Tb_LDRCODBCO.Value=0) or (DM1.Tb_LDRCODBCO.IsNull) Then
        Begin
        fmensagem('Banco Tem que ser Preenchido!',0,['0'],0);
        DBE_CodBco.SetFocus;
        exit;
        end;
     end;
  if (DM1.Tb_LDRVALORR.Value>0) and ((DM1.Tb_LDRDATAREAL.IsNull) or (DM1.Tb_LDRDATAREAL.Value<=pdatanula)) then
     begin
     fmensagem('Valor Real Preenchido e Data Real Em branco. Invalido!',0,['0'],0);
     DATAREAL.SetFocus;
     exit;
     end;
  if (DM1.Tb_LDRDATAREAL.AsDateTime>pdatanula) and (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
     begin
     if DM1.Tb_LDRDATAREAL.AsDateTime<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
        begin
        fmensagem('Registro Não pode ser Alterado. Caixa Bloqueado para Movimento até: '
                 +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime),0,['0'],0);
         exit;
         end;
     end;

  if moper=8 then
     begin
     if (mDataReal_ant<=pdatanula) and (DM1.Tb_LDRDATAREAL.AsDateTime>=pdatanula) then
        DM1.Tb_LDRDTSALDO.AsDateTime:=pdatasis
     else if DM1.Tb_LDRDATAREAL.AsDateTime<=pdatanula then
        begin
        if mDatSaldo_Ant=DM1.Tb_LDRDATAREAL.AsDateTime then
           DM1.Tb_LDRDTSALDO.Value:=pdatanula;
        end;
     fldr01gant(moper,DM1.Tb_LDRCODEMP.AsInteger,DM1.Tb_LDRCODLDR.Value);
     end;
  DM1.Tb_LDRHRALT.Value:=FormatDateTime(fhr, time);
  DM1.Tb_LDRUSRALT.Value:=codusr;
  DM1.Tb_LDRDTALT.Value:=pdatasis;
  vaDATAP   :=DM1.Tb_LDRDATADP.Value;
  vaDATAREAL:=DM1.Tb_LDRDATAREAL.Value;
  vaDATAREF :=DM1.Tb_LDRDATAREF.Value;
  vaVALORP  :=DM1.Tb_LDRVALORP.Value;
  vaVALORR  :=DM1.Tb_LDRVALORR.Value;
  vaCODBCO  :=DM1.Tb_LDRCODBCO.AsInteger;
  vaCODCC   :=DM1.Tb_LDRCODCC.Value;
  vaCODDEP  :=DM1.Tb_LDRCODDEP.Value;
  vaNATDC   :=DM1.Tb_LDRNATDC.Value;
  vaDESCMV  :=DM1.Tb_LDRDESCMV.Value;
  vaNUMDOC  :=DM1.Tb_LDRNUMDOC.Value;
  vaNUMDOC2 :=DM1.Tb_LDRNUMDOC2.Value;
  vaCODIGO  :=DM1.Tb_LDRCODIGO.Value;
  vaTIPO    :=DM1.Tb_LDRTIPO.Value;
  DM1.Tb_LDRLOTMOV.Value:=lotmov;
  DM1.Tb_LDR.Post;
{
  if (mincluir) and (moper=0) and (DM1.Tb_ForFREPLICARCX.AsFloat=1) then
     begin
     mcodldr:=fCriarLDR_Replica(1,DM1.Tb_LDRCODEMP.AsInteger
                      ,DM1.Tb_LDRVALORP.AsFloat
                      ,DM1.Tb_LDRVALORR.AsFloat
                      ,DM1.Tb_ForFREP_CODIGO.AsFloat
                      ,DM1.Qr_FPFPVINCULO.AsFloat
                      ,DM1.Tb_LDRDATADP.AsDateTime
                      ,DM1.Tb_LDRDATAREAL.AsDateTime
                      ,DM1.Tb_LDRDATAREF.AsFloat
                      ,DM1.Tb_LDRDTALT.AsDateTime
                      ,DM1.Tb_ForFREP_CODCCU.AsString
                      ,DM1.Tb_ForFREP_CODDEP.AsString
                      ,DM1.Tb_ForFREP_NATDC.AsString
                      ,DM1.Tb_ForFREP_DESCMV.AsString
                      ,DM1.Tb_LDRNUMDOC.AsString
                      ,DM1.Tb_LDRNUMDOC2.AsString
                      ,DM1.Tb_ForFREP_TIPO.AsString
                      ,DM1.Tb_ForFREP_NOMBCO.AsString
                      ,DM1.Tb_ForFREP_NOMDEP.AsString
                      ,DM1.Tb_ForFREP_NOMCCU.AsString
                      ,DM1.Tb_ForFREP_NOMESAC.AsString
                      ,DM1.Tb_LDRLOCDEP.AsInteger
                      ,DM1.Tb_ForFREP_CODBCO.AsInteger
                      ,DM1.Tb_LDRLOTMOV.AsInteger
                      ,DM1.Tb_LDRSTATUS.AsInteger
                      ,DM1.Tb_LDRORIGEM.AsInteger
// inicio valores anteriores
                      ,DM1.Tb_LDRCODBCO.AsFloat
                      ,DM1.Tb_ldrCODIGO.AsFloat

                      ,DM1.Tb_LDRCODCC.AsString
                      ,DM1.Tb_LDRNOMCCU.AsString
                      ,DM1.Tb_LDRNATDC.AsString
                      ,DM1.Tb_LDRCODDEP.AsString
                      ,DM1.Tb_LDRNOMDEP.AsString
                      ,DM1.Tb_LDRNOME.AsString
                      ,DM1.Tb_LDRTIPO.AsString
                      ,DM1.Tb_LDRNOMBCO.AsString
                      ,DM1.Tb_LDRDESCMV.AsString
                      ); // origem


     end;
}
  if (mincluir) and (moper=0) and (DM1.Tb_BcoBCREPLICARCX.AsFloat=1) then
     begin
     mChaveIdLdr:=fCriarLDR_Replica(1,DM1.Tb_LDRCODEMP.AsInteger
                      ,DM1.Tb_LDRVALORP.AsFloat
                      ,DM1.Tb_LDRVALORR.AsFloat
                      ,DM1.Tb_BcoBCREP_CODIGO.AsFloat
                      ,DM1.Qr_FPFPVINCULO.AsFloat
                      ,DM1.Tb_LDRDATADP.AsDateTime
                      ,DM1.Tb_LDRDATAREAL.AsDateTime
                      ,DM1.Tb_LDRDATAREF.AsFloat
                      ,DM1.Tb_LDRDTALT.AsDateTime
                      ,DM1.Tb_BcoBCREP_CODCCU.AsString
                      ,DM1.Tb_BcoBCREP_CODDEP.AsString
                      ,DM1.Tb_BcoBCREP_NATDC.AsString
                      ,DM1.Tb_BcoBCREP_DESCMV.AsString
                      ,DM1.Tb_LDRNUMDOC.AsString
                      ,DM1.Tb_LDRNUMDOC2.AsString
                      ,DM1.Tb_BcoBCREP_TIPO.AsString
                      ,DM1.Tb_BcoBCREP_NOMBCO.AsString
                      ,DM1.Tb_BcoBCREP_NOMDEP.AsString
                      ,DM1.Tb_BcoBCREP_NOMCCU.AsString
                      ,DM1.Tb_BcoBCREP_NOMESAC.AsString
                      ,' '
                      ,DM1.Tb_LDRLOCDEP.AsInteger
                      ,DM1.Tb_BcoBCREP_CODBCO.AsInteger
                      ,DM1.Tb_LDRLOTMOV.AsInteger
                      ,DM1.Tb_LDRSTATUS.AsInteger
                      ,DM1.Tb_LDRORIGEM.AsInteger
// inicio valores anteriores
                      ,DM1.Tb_LDRCODBCO.AsFloat
                      ,DM1.Tb_ldrCODIGO.AsFloat
                      ,DM1.Tb_LDRCODLDR.AsFloat
                      ,DM1.Tb_LDRCODCC.AsString
                      ,DM1.Tb_LDRNOMCCU.AsString
                      ,DM1.Tb_LDRNATDC.AsString
                      ,DM1.Tb_LDRCODDEP.AsString
                      ,DM1.Tb_LDRNOMDEP.AsString
                      ,DM1.Tb_LDRNOME.AsString
                      ,DM1.Tb_LDRTIPO.AsString
                      ,DM1.Tb_LDRNOMBCO.AsString
                      ,DM1.Tb_LDRDESCMV.AsString
                      ,mChaveIdLdr.idNew
                      ); // origem
     end;


  mincluir:=False;

  INCLUIR.Enabled    :=bbinc_true;
  ALTERAR.Enabled    :=bbalt_true;
  GRAVAR.Enabled     :=False;
  EXCLUIR.Enabled    :=bbexc_true;
  CANCELAR.Enabled   :=True;
  BBPESQ.Enabled     :=True;
  fLiberaCampos(false);
  BBREPETIR.Enabled  :=True;
  BBIMPR.Enabled     :=bbrel_true;
  DBNavigator2.Enabled:=True;
  DBGrid1.Enabled     :=True;
  moper              := 11;
  mManDesc:=false;
  {
     DM1.Tb_LDR.Close;
     DM1.Tb_LDR.SQL.Clear;
     DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR Where ');
     if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
        DM1.Tb_LDR.SQL.add(' STATUS<>9 and (DATAREAL>='+chr(39)+FormatDateTime(fdt, date)+chr(39)+') or ('
                       +'DATADP='+chr(39)+FormatDateTime(fdt,date)+chr(39)+')'
                       +' order by CODEMP,DATAREAL')
     else
        DM1.Tb_LDR.SQL.add(' CODEMP=0'+IntTostr(codemp)
                       + ' and STATUS<>9 and ((DATAREAL>='+chr(39)+FormatDateTime(fdt, date)+chr(39)+') or ('
                       +'DATADP='+chr(39)+FormatDateTime(fdt,date)+chr(39)+'))'
                       +' order by CODEMP,DATAREAL');

     DM1.Tb_LDR.Open;
}
  if (incluir.enabled=true) and (incluir.visible=true) then
     INCLUIR.SetFocus;
//  end;
end;

procedure TFrm_LDR.EXCLUIRClick(Sender: TObject);
begin
{ORIGEM
00-Digitado
01-Pedido Associado em aberto
02-Pedido Associado pago
03-Pedido de Compra em aberto
04-Contas a Pagar Pagas
05-Taxa Inscricao a Receber
06-Taxa Inscricao Paga
07-Comissao Voluntario a pagar
08-Comissao de Voluntario Pagas
09-Taxa de Entrega a Pagar
10-Taxa de Entrega Pagas
11-Devolucao a Fornecedor a Receber
12-Devolucao a Fornecedor recebidas
13-Contas a Pagar Lancado Direto em Aberto
}
if (DM1.Tb_LDRCODLDR.IsNull) or (DM1.Tb_LDRSTATUS.Value=9) then
   begin
   fmensagem('Não há registro a ser excluido!',0,['0'],0);
   abort;
   end;
if not (DM1.Tb_LDRDATAREAL.IsNull) and (DM1.Tb_LDRDATAREAL.Value>pdatanula) then
   begin
   if not fAceitaManipular(DM1.Tb_LDRDATAREAL.AsDateTime) then
      begin
      exit;
      end;
   end;


if not (DM1.Tb_LDRDATAREAL.IsNull) and (DM1.Tb_LDRDATAREAL.Value>pdatanula) then
   begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=51;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=0;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Lancamento Feito Automatico para Exclui-lo Favor Digitar a Senha';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;
   if fValidaSenha(mValidarSenha)<>0 then
      exit;
   end
else if DM1.Tb_LDRORIGEM.Value>0  Then
   begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=51;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=0;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Lancamento Feito Automatico para Exclui-lo Favor Digitar a Senha';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;
   if fValidaSenha(mValidarSenha)<>0 then
      exit;
   end;


if fMensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   fldr01gant(9,DM1.Tb_LDRCODEMP.AsInteger,DM1.Tb_LDRCODLDR.Value);
   DM1.Tb_LDR.Edit;
   DM1.Tb_LDRSTATUS.Value:=9;
   DM1.Tb_LDRUSREXC.Value:=codusr;
   DM1.Tb_LDRDTHREXC.Value:=pdatasis;
   DM1.Tb_LDR.Post;
   INCLUIR.Enabled    :=bbinc_true;
   ALTERAR.Enabled    :=bbalt_true;
   GRAVAR.Enabled     :=False;
   EXCLUIR.Enabled    :=bbexc_true;
   CANCELAR.Enabled   :=True;
   end;


end;

procedure TFrm_LDR.CANCELARClick(Sender: TObject);
begin
  {if ((DM1.Tb_LDRVALORP.IsNull) and (DM1.Tb_LDRVALORR.IsNull) and not (DM1.Tb_LDR.Eof) ) THEN}
  if moper = 0 then
     DM1.Tb_LDR.Delete
  else
     DM1.Tb_LDR.Cancel;

  INCLUIR.Enabled    :=bbinc_true;
  ALTERAR.Enabled    :=bbalt_true;
  GRAVAR.Enabled     :=False;
  EXCLUIR.Enabled    :=bbexc_true;
  CANCELAR.Enabled   :=True;
  BBIMPR.Enabled     :=bbrel_true;
  BBPESQ.Enabled     :=True;
  mincluir:=False;
  fLiberaCampos(false);
  DBNavigator2.Enabled:=False;
  DBGrid1.Enabled     :=False;
  DBNavigator2.Enabled:=True;
  mManDesc:=false;
  DBGrid1.Enabled     :=True;
end;

procedure TFrm_LDR.DBE_CodBcoExit(Sender: TObject);
begin
macbanco:=false;
if DM1.Tb_LDR.State in [DsInsert, DsEdit] then
   begin
   if DM1.Tb_LDRCODBCO.AsFloat<>0 then
      begin
      mDadosRetornoCaixa := fTestarCADBCO(false,DM1.Tb_LDRCODBCO.AsString);
      if mDadosRetornoCaixa.pOk=false then
         begin
         DBE_CodBco.Setfocus;
         end
      else
         begin
         DM1.Tb_LDRNOMBCO.Value:=mDadosRetornoCaixa.pNome;
          end;
       if not DBCB_NOMBCO.Focused then
         macbanco:=true;
      end;
   end;
end;

procedure TFrm_LDR.sbn_nomdepClick(Sender: TObject);
begin
DM1.Tb_LDRCODDEP.Value:=fChamaDeptoCX(0,'Frm_LDR','');
DBE_CodDepExit(self);
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMDEP.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;

end;

procedure TFrm_LDR.spn_nomccuClick(Sender: TObject);
begin
DM1.Tb_LDRCODCC.Value:=fChamaCCU(0,'Frm_LDR','');
DM1.Tb_LDRNATDC.Value:=DM1.Tb_CCUCCNAT.Value;
DBE_CodCCuExit(SELF);


DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;



DBCB_NOMCCU.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DM1.Query5.Next;
   end;



end;

procedure TFrm_LDR.SpeedButton4Click(Sender: TObject);
begin
DM1.Tb_LDRCODBCO.Value:=valfloat(fChamaBco(0,'Frm_LDR',''));
DBE_CodBcoExit(sELF);

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO '
                  +iif(DM1.Qr_TID.locate('TINOME','CADBCO',[]),'',' where BCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMBCO.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
   DM1.Query5.Next;
   end;


end;

procedure TFrm_LDR.DBEdit1Exit(Sender: TObject);
begin
   if DM1.Tb_LDR.State in [dsInsert, dsEdit] then begin
      if Trim(DM1.Tb_LDRDATADP.AsString) = '/  /' then Begin
         ShowMessage('Data Obrigatoria!');
         DBEdit1.SetFocus;
         exit;
      end;

      mqtdd:=pdatasis-DM1.Tb_LDRDATADP.Value;

      if (mqtdd<-30) then
        fmensagem('lançamento com data inferior a 30 dias',0,['0'],0)
      else if mqtdd>360 then
        fmensagem('lançamento com data superior a 360 dias',0,['0'],0)
      else if (mqtdd>30) then
        fmensagem('lançamento com data superior a 30 dias',0,['0'],0);

     if (Trim(DM1.Tb_LDRDATAREF.AsString) = '/  /') or (DM1.Tb_LDRDATAREF.isNull) then
        DM1.Tb_LDRDATAREF.Value:=DM1.Tb_LDRDATADP.Value;

      if DM1.Tb_LDR.State in [dsedit,dsinsert] then
         begin
         if mdtemis_ant<>DM1.Tb_LDRDATADP.AsDateTime then
            begin
            if mdtemis_ant=DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.AsDateTime THEN
               begin
               DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.AsDateTime:=DM1.Tb_LDRDATADP.AsDateTime;
               edt_competencia_mes.Text         :=FormatDatetime('mm', DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.AsDateTime);
               edt_competencia_ano.Text         :=FormatDatetime('yyyy', DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.AsDateTime);

               end;
            end;
         end;

   end;
end;

procedure TFrm_LDR.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_LDR.SpeedButton5Click(Sender: TObject);
begin
if TIPO.Text='FR' then
   begin
   DM1.Tb_LDRCODIGO.Value:=ValFloat(fChamaFor(0,'frm_LDR',''));
   DBE_CodigoExit(SELF);
   end
else if TIPO.Text='TR' then
   begin
   DM1.Tb_LDRCODIGO.Value:=ValFloat(fChamaTra(0,'frm_LDR',''));
   DBE_CodigoExit(SELF);
   end
else if TIPO.Text='VD' then
   begin
   DM1.Tb_LDRCODIGO.Value:=ValFloat(fChamaVen(0,'Frm_LDR',''));
   DBE_CodigoExit(SELF);
   end
else if TIPO.Text='US' then
   begin
   DM1.Tb_LDRCODIGO.Value:=ValFloat(fchamausr(0,'frm_ldr',''));
   DBE_CodigoExit(SELF);
   end
else
   begin
   DM1.Tb_LDRCODIGO.Value:=fSonumero(fChamaCli(0,'Frm_LDR',''));
   DBE_CodigoExit(SELF);
   end;
end;

procedure TFrm_LDR.DBE_CodigoExit(Sender: TObject);
begin
if (trim(DM1.Tb_LDRCODCC.AsString)='') or (trim(DM1.Tb_LDRCODDEP.AsString)='') then
   mcodigo_ant:=-1;

if TIPO.Text='VD' then
   begin
   if not flqr2('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_LDRCODIGO.AsString) then
      Begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      end
   else
      begin
      if DM1.Tb_LDR.State in [dsInsert,dsEdit] then
         DM1.Tb_LDRNOME.Value:=DM1.Query2.Fields[0].AsString;
      end;
   end
else if TIPO.Text='FR' then
   begin
   if not flcadfor(1,0,DM1.Tb_LDRCODIGO.AsString) then
      Begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      end
   else
      begin
      if DM1.Tb_LDR.State in [dsEdit,dsInsert] then
         begin
          DM1.Tb_LDRNOME.Value:=DM1.Tb_ForFRAZAO.Value;
          if mcodigo_ant<>DM1.Tb_LDRCODIGO.Value then
             begin
             if flparldr(0,'CADDAP0') then
                begin


                if (trim(DM1.Tb_ForFDESCMVD.AsString)='') or
                   (trim(DM1.Tb_ForFDESCMVD.AsString)='_') then
                   pldr_descmov:=DM1.Par_LDRNOME.Value
                else
                   pldr_descmov:=DM1.Tb_ForFDESCMVD.Value;
                if (Trim(DM1.Tb_ForFCODCCD.AsString)='') or
                   (Trim(DM1.Tb_ForFCODCCD.AsString)='_') then
                   begin
                   DM1.Tb_LDRCODCC.Value  :=DM1.Par_LDRCODCC.Value;
                   DBE_CodCCuExit(self);
                   end
                else
                   begin
                   DM1.Tb_LDRCODCC.Value  :=DM1.Tb_ForFCODCCD.Value;
                   DM1.Tb_LDRNOMCCU.Value :=DM1.Tb_ForFNOMCCD.Value;
                   DBE_CodCCuExit(Self);
                   end;
                if (trim(DM1.Tb_ForFCODDEPD.AsString)='') or
                   (trim(DM1.Tb_ForFCODDEPD.AsString)='_') then
                   begin
                   DM1.Tb_LDRCODDEP.Value:=DM1.Par_LDRCODDEP.Value;
                   DBE_CodDepExit(Self);
                   end
                else
                   begin
                   DM1.Tb_LDRCODDEP.Value:=DM1.Tb_ForFCODDEPD.Value;
                   DM1.Tb_LDRNOMDEP.Value:=DM1.Tb_ForFNOMDEPD.Value;
                   end;
                end;
             end;
         end;
      end;
   end
else if TIPO.Text='TR' then
   begin
   if not flqr2('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_LDRCODIGO.AsString) then
      Begin
      fmensagem('Transportadora não Cadastrada!',0,['0'],0);
      end
   else
      DM1.Tb_LDRNOME.Value:=DM1.Query2.Fields[0].AsString;
   end
else if TIPO.Text='US' then
   begin
   mDadosRetornoCaixa:=fTestarCADUSR(false,DM1.Tb_LDRCODIGO.AsString);
   if mDadosRetornoCaixa.pOk=false then
      Begin
      fmensagem('Usuário não Cadastrado!',0,['0'],0);
      end
   else
      begin
      DM1.Tb_LDRNOME.Value:=mDadosRetornoCaixa.pNome;
      end;
   end
else
   begin
   if not flcadcli(1,0,DM1.Tb_LDRCODIGO.AsString) then
      Begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      end
   else
      begin
      DM1.Tb_LDRNOME.Value:=DM1.Tb_CliCRAZAO.Value;

      if mcodigo_ant<>DM1.Tb_LDRCODIGO.Value then
         begin
         if flparldr(0,'CADDAR0') then
            begin
            if (trim(DM1.Tb_CliCDESCMVC.AsString)='') or
               (trim(DM1.Tb_CliCDESCMVC.AsString)='_') then
               pldr_descmov:=DM1.Par_LDRNOME.Value
            else
               pldr_descmov:=DM1.Tb_CliCDESCMVC.Value;
            if (Trim(DM1.Tb_CliCCODCCC.AsString)='') or
               (Trim(DM1.Tb_CliCCODCCC.AsString)='_') then
               begin
               DM1.Tb_LDRCODCC.Value :=DM1.Par_LDRCODCC.Value;
               DBE_CodCCuExit(self);
               end
            else
               begin
               DM1.Tb_LDRCODCC.Value :=DM1.Tb_CliCCODCCC.Value;
               DM1.Tb_LDRNOMCCU.Value :=DM1.Tb_CliCNOMCCC.Value;
               DBE_CodCCuExit(self);
               end;
           if (trim(DM1.Tb_CliCCODDEPC.AsString)='') or
              (trim(DM1.Tb_CliCCODDEPC.AsString)='_') then
               begin
               DM1.Tb_LDRCODDEP.Value:=DM1.Par_LDRCODDEP.Value;
               DBE_CodDepExit(Self);
               end
            else
               begin
               DM1.Tb_LDRCODDEP.Value:=DM1.Tb_CliCCODDEPC.Value;
               DM1.Tb_LDRNOMDEP.Value:=DM1.Tb_CliCNOMDEPC.Value;
               end;
            end;
         end;
      end;
   end;
if not  mManDesc then
   fldrDescMv(0);
end;

procedure TFrm_LDR.BBSALDOClick(Sender: TObject);
begin

mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=71;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Lancamento Feito Automatico para Altera-lo Favor Digitar a Senha';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;
if fValidaSenha(mValidarSenha)<>0 then
   exit;


testeform := TFrm_LDR(FindGlobalComponent('form_sbco'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_sbco, form_sbco);

if form_sbco.WindowState=WsMinimized then
   form_sbco.WindowState:=WsNormal
else
   form_sbco.Show;
end;

procedure TFrm_LDR.BBREPETIRClick(Sender: TObject);
begin
if DM1.Tb_LDR.State in [dsEdit,DsInsert] then
   begin
   DM1.Tb_LDRDATADP.Value  :=vaDATAP;
   DM1.Tb_LDRDATAREAL.Value:=vaDATAREAL;
   DM1.Tb_LDRDATAREF.Value :=vaDATAREF;
   DM1.Tb_LDRVALORP.Value  :=vaVALORP;
   DM1.Tb_LDRVALORR.Value  :=vaVALORR;
   DM1.Tb_LDRCODIGO.Value  :=vaCODIGO;
   DM1.Tb_LDRTIPO.Value    :=vaTIPO;

   DM1.Tb_LDRCODBCO.Value  :=vaCODBCO;
   DM1.Tb_LDRCODCC.Value   :=vaCODCC;
   DM1.Tb_LDRCODDEP.Value  :=vaCODDEP;
   DM1.Tb_LDRNATDC.Value   :=vaNATDC;
   DM1.Tb_LDRDESCMV.Value  :=vaDESCMV;
   DM1.Tb_LDRNUMDOC.Value  :=vaNUMDOC;
   DM1.Tb_LDRNUMDOC2.Value :=vaNUMDOC2;
   end
else
   begin
   if DM1.Tb_LDRDATADP.IsNull then
      begin
      fmensagem('Favor Selecionar um Registro para ser repetido!',0,['0'],0);
      exit;
      end;


   vaDATAP   :=DM1.Tb_LDRDATADP.Value;
   vaDATAREAL:=DM1.Tb_LDRDATAREAL.Value;
   vaDATAREF :=DM1.Tb_LDRDATAREF.Value;
   vaVALORP  :=DM1.Tb_LDRVALORP.Value;
   vaVALORR  :=DM1.Tb_LDRVALORR.Value;
   vaCODIGO  :=DM1.Tb_LDRCODIGO.Value;
   vaTIPO    :=DM1.Tb_LDRTIPO.Value;
   vaCODBCO  :=DM1.Tb_LDRCODBCO.AsInteger;
   vaCODCC   :=DM1.Tb_LDRCODCC.Value;
   vaCODDEP  :=DM1.Tb_LDRCODDEP.Value;
   vaNATDC   :=DM1.Tb_LDRNATDC.Value;
   vaDESCMV  :=DM1.Tb_LDRDESCMV.Value;
   vaNUMDOC  :=DM1.Tb_LDRNUMDOC.Value;
   vaNUMDOC2 :=DM1.Tb_LDRNUMDOC2.Value;
   DM1.Tb_LDR.Insert;
   moper:=0;
   mincluir:=True;
   fLiberaCampos(true);
   INCLUIR.Enabled:=False;
   BBPESQ.Enabled :=False;
   BBIMPR.Enabled :=False;
   ALTERAR.Enabled:=False;
   GRAVAR.Enabled :=True;
   EXCLUIR.Enabled:=False;
   CANCELAR.Enabled:=True;
   mvalorr:=0;
   mdatareal:='/  /';
   mcodbco  :=0;
   mnat     :=' ';
   BBIMPR.Enabled := False;
   DBNavigator2.Enabled:=False;
   DBGrid1.Enabled     :=False;
   mManDesc :=false;
   DM1.Tb_LDRDATADP.Value  :=vaDATAP;
   DM1.Tb_LDRDATAREAL.Value:=vaDATAREAL;
   DM1.Tb_LDRDATAREF.Value :=vaDATAREF;
   DM1.Tb_LDRVALORP.Value  :=vaVALORP;
   DM1.Tb_LDRVALORR.Value  :=vaVALORR;
   DM1.Tb_LDRCODIGO.Value  :=vaCODIGO;
   DM1.Tb_LDRTIPO.Value    :=vaTIPO;

   DM1.Tb_LDRCODBCO.Value  :=vaCODBCO;
   DM1.Tb_LDRCODCC.Value   :=vaCODCC;
   DM1.Tb_LDRCODDEP.Value  :=vaCODDEP;
   DM1.Tb_LDRNATDC.Value   :=vaNATDC;
   DM1.Tb_LDRDESCMV.Value  :=vaDESCMV;
   DM1.Tb_LDRNUMDOC.Value  :=vaNUMDOC;
   DM1.Tb_LDRNUMDOC2.Value :=vaNUMDOC2;
   end;
DBE_CodigoExit(self);
DBE_CodBcoExit(self);
DBE_CodDepExit(self);
DBE_CodCCuExit(self);
DBEdit1.SetFocus;

end;

procedure TFrm_LDR.FormCreate(Sender: TObject);
begin
    mcodldr_image:=-1;
fLiberaCampos(false);
flparger02(0,0,'1');

ldr_ori:='';
   mincluir:=False;
if flcadactab(0,0,IntToStr(codcar),'CADLDR') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   if DM4.Tb_AcTabAT_REL.Value=1 then
      bbrel_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   bbrel_true:=true;
   end;

   DM1.Tb_LDR.Close;
   DM1.Tb_LDR.SQL.Clear;
   DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR Where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                      +' STATUS<> 9 and  (DATAREAL>='
                      +chr(39)+FormatDateTime(fdt, date)+chr(39)+
                      ' or DATADP='+chr(39)+FormatDateTime(fdt,date)+chr(39)+')');

   DM1.Tb_LDR.Open;


  DM1.Query5.Close;
  DM1.Query5.SQL.Clear;
  DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
  DM1.Query5.Open;
  DBCB_NOMDEP.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO '
                  +iif(DM1.Qr_TID.locate('TINOME','CADBCO',[]),'',' where BCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMBCO.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMCCU.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DM1.Query5.Next;
   end;
if codemp>100 then
   Panel_dig.Color:=$007171FF
else
   Panel_dig.Color:=$00FFD7D7;
if DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime>pDataNula then
   Frm_Ldr.Caption:=Frm_ldr.Caption+'. Manipulação Bloqueada até: '+FormatDateTime(fdt2,DM4.Tb_ParGer02PG2DTBLOQCX.asDateTime)+'.';


INCLUIR.Enabled    :=bbinc_true;
ALTERAR.Enabled    :=bbalt_true;
GRAVAR.Enabled     :=False;
EXCLUIR.Enabled    :=bbexc_true;
CANCELAR.Enabled   :=True;
BBPESQ.Enabled     :=True;
fLiberaCampos(false);
BBREPETIR.Enabled  :=True;
BBIMPR.Enabled     :=bbrel_true;
DBNavigator2.Enabled:=True;
DBGrid1.Enabled     :=True;

end;

procedure TFrm_LDR.BBPESQClick(Sender: TObject);
begin
testeform := TFrm_LDR(FindGlobalComponent('form_pldr'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_pldr, form_pldr)
else
   begin
   form_pldr.Free;
   form_pldr:=nil;
   Application.CreateForm(Tfrm_pldr, form_pldr)
   end;
form_pldr.ShowModal;
form_pldr.Free;
form_pldr:=nil;

end;

procedure TFrm_LDR.BBIMPRClick(Sender: TObject);
var
mextenso: String;
mnome,mnome2: String;
mvalor: Real;
begin

{if DM1.Tb_LDRVALORR.IsNull then
   begin
   ShowMessage('Lancamento ainda nao Realizado. '+#13
              +'Não é Permitido a Emissão');
   abort;
   end;}
if DM1.Tb_LDRVALORR.IsNull then
   mvalor:=DM1.Tb_LDRVALORP.Value
else
   mvalor:=DM1.Tb_LDRVALORR.Value;
if cb_2x_recibo.checked=True then
  begin
  testeform := TFrm_Ldr(FindGlobalComponent('form_impres_ldr'));
  if (testeform=nil)  then
     begin
     Application.CreateForm(Tfrm_Impres, form_impres_ldr);
     end;

  form_impres_ldr.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
  form_impres_ldr.Rdprint1.Impf(01,36,'R E C I B O',mneg);
  if DM1.Tb_LDRNATDC.Value='D' then
    begin
    form_impres_ldr.Rdprint1.ImpF(05,14,'Recebi da '+insere2(DM1.Tb_EmpRAZAO.Value,'*',40)
                            +' a importancia de ',mnormal);
    mnome:=DM1.Tb_EmpRAZAO.Value;
    mnome2:=DM1.Tb_LDRnome.Value;
    end
  else
    begin
    mnome:=DM1.Tb_LDRnome.Value;
    mnome2:=DM1.Tb_EmpRAZAO.Value;
    if DM1.Tb_LDRTIPO.Value='FR' then
      form_impres_ldr.Rdprint1.ImpF(05,14,'Recebemos de(a) '+insere2(DM1.Tb_LDRnome.Value,'*',40)
                              +' a importancia de ',mnormal)
    else
      form_impres_ldr.Rdprint1.ImpF(05,14,'Recebemos do(a) Sr(a) '+copy(insere2(DM1.Tb_LDRnome.Value,'*',40),1,28)
                              +' a importancia de ',mnormal);
    end;
  mextenso:=Extenso(mvalor);
  if length(mextenso)>64 then
     mextenso:=copy(mextenso,1,64);
  form_impres_ldr.Rdprint1.ImpF(07,01,'R$'+insere(FormatFloat('###,##0.00',mvalor),'*',10)
                          +' ('+insere2(mextenso,'*',64)+'),',mnormal);
  form_impres_ldr.RDprint1.ImpF(09,01,'Proveniente à '+DM1.Tb_LDRDESCMV.Value+'.',mnormal);
  form_impres_ldr.Rdprint1.impf(13,14,DM1.Tb_EmpCIDADE.Value+','
                             +FormatDateTime('dd',DM1.Tb_LDRDATAREF.Value)
                             +' de '+NMes(DM1.Tb_LDRDATAREF.Value)
                             +' de '+FormatDateTime('yyyy',DM1.Tb_LDRDATAREF.Value)+'.',mnormal);
  form_impres_ldr.Rdprint1.ImpF(17,14,insere2('_','_',length(mnome2)),mnormal);
  form_impres_ldr.Rdprint1.Impf(18,14,mnome2,mnormal);
  form_impres_ldr.RDprint1.impf(22,01,'Número Sequencia: '+DM1.Tb_LDRCODLDR.AsString,mnormal);
  if DM1.Tb_LDRVALORR.IsNull then
    form_impres_ldr.RDprint1.ImpF(23,01,'Conta Pendente',mneg);
//  if form_impres_ldr.Rdprint1.Setup then
//    form_impres_ldr.Rdprint1.Fechar;

// segunda via

  form_impres_ldr.Rdprint1.Impf(33,36,'R E C I B O',mneg);
  if DM1.Tb_LDRNATDC.Value='D' then
    begin
    form_impres_ldr.Rdprint1.ImpF(38,14,'Recebi da '+insere2(DM1.Tb_EmpRAZAO.Value,'*',40)
                            +' a importancia de ',mnormal);
    mnome:=DM1.Tb_EmpRAZAO.Value;
    mnome2:=DM1.Tb_LDRnome.Value;
    end
  else
    begin
    mnome:=DM1.Tb_LDRnome.Value;
    mnome2:=DM1.Tb_EmpRAZAO.Value;
    if DM1.Tb_LDRTIPO.Value='FR' then
      form_impres_ldr.Rdprint1.ImpF(38,14,'Recebemos de(a) '+insere2(DM1.Tb_LDRnome.Value,'*',40)
                              +' a importancia de ',mnormal)
    else
      form_impres_ldr.Rdprint1.ImpF(38,14,'Recebemos do(a) Sr(a) '+copy(insere2(DM1.Tb_LDRnome.Value,'*',40),1,28)
                              +' a importancia de ',mnormal);
    end;
  mextenso:=Extenso(mvalor);
  if length(mextenso)>64 then
     mextenso:=copy(mextenso,1,64);
  form_impres_ldr.Rdprint1.ImpF(40,01,'R$'+insere(FormatFloat('###,##0.00',mvalor),'*',10)
                          +' ('+insere2(mextenso,'*',64)+'),',mnormal);
  form_impres_ldr.RDprint1.ImpF(41,01,'Proveniente à '+DM1.Tb_LDRDESCMV.Value+'.',mnormal);
  form_impres_ldr.Rdprint1.impf(46,14,DM1.Tb_EmpCIDADE.Value+','
                             +FormatDateTime('dd',DM1.Tb_LDRDATAREF.Value)
                             +' de '+NMes(DM1.Tb_LDRDATAREF.Value)
                             +' de '+FormatDateTime('yyyy',DM1.Tb_LDRDATAREF.Value)+'.',mnormal);
  form_impres_ldr.Rdprint1.ImpF(50,14,insere2('_','_',length(mnome2)),mnormal);
  form_impres_ldr.Rdprint1.Impf(51,14,mnome2,mnormal);
  form_impres_ldr.RDprint1.impf(55,01,'Número Sequencia: '+DM1.Tb_LDRCODLDR.AsString,mnormal);
  if DM1.Tb_LDRVALORR.IsNull then
    form_impres_ldr.RDprint1.ImpF(56,01,'Conta Pendente',mneg);
  if form_impres_ldr.Rdprint1.Setup then
    form_impres_ldr.Rdprint1.Fechar;

  form_impres_ldr.free;
  form_impres_ldr:=nil;
  end
else
  begin
  testeform := TFrm_Ldr(FindGlobalComponent('form_impres_ldr'));
  if (testeform=nil)  then
     begin
     Application.CreateForm(Tfrm_Impres, form_impres_ldr);
     end;

  form_impres_ldr.fimpresajustaimp(3,136,30,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
  form_impres_ldr.Rdprint1.Impf(01,36,'R E C I B O',mneg);
  if DM1.Tb_LDRNATDC.Value='D' then
    begin
    form_impres_ldr.Rdprint1.ImpF(05,14,'Recebi da '+insere2(DM1.Tb_EmpRAZAO.Value,'*',40)
                            +' a importancia de ',mnormal);
    mnome:=DM1.Tb_EmpRAZAO.Value;
    mnome2:=DM1.Tb_LDRnome.Value;
    end
  else
    begin
    mnome:=DM1.Tb_LDRnome.Value;
    mnome2:=DM1.Tb_EmpRAZAO.Value;
    if DM1.Tb_LDRTIPO.Value='FR' then
      form_impres_ldr.Rdprint1.ImpF(05,14,'Recebemos de(a) '+insere2(DM1.Tb_LDRnome.Value,'*',40)
                              +' a importancia de ',mnormal)
    else
      form_impres_ldr.Rdprint1.ImpF(05,14,'Recebemos do(a) Sr(a) '+copy(insere2(DM1.Tb_LDRnome.Value,'*',40),1,28)
                              +' a importancia de ',mnormal);
    end;
  mextenso:=Extenso(mvalor);
  if length(mextenso)>64 then
     mextenso:=copy(mextenso,1,64);
  form_impres_ldr.Rdprint1.ImpF(07,01,'R$'+insere(FormatFloat('###,##0.00',mvalor),'*',10)
                          +' ('+insere2(mextenso,'*',64)+'),',mnormal);
  form_impres_ldr.RDprint1.ImpF(09,01,'Proveniente à '+DM1.Tb_LDRDESCMV.Value+'.',mnormal);
  form_impres_ldr.Rdprint1.impf(13,14,DM1.Tb_EmpCIDADE.Value+','
                             +FormatDateTime('dd',DM1.Tb_LDRDATAREF.Value)
                             +' de '+NMes(DM1.Tb_LDRDATAREF.Value)
                             +' de '+FormatDateTime('yyyy',DM1.Tb_LDRDATAREF.Value)+'.',mnormal);
  form_impres_ldr.Rdprint1.ImpF(17,14,insere2('_','_',length(mnome2)),mnormal);
  form_impres_ldr.Rdprint1.Impf(18,14,mnome2,mnormal);
  form_impres_ldr.RDprint1.impf(22,01,'Número Sequencia: '+DM1.Tb_LDRCODLDR.AsString,mnormal);
  if DM1.Tb_LDRVALORR.IsNull then
    form_impres_ldr.RDprint1.ImpF(23,01,'Conta Pendente',mneg);
  if form_impres_ldr.Rdprint1.Setup then
    form_impres_ldr.Rdprint1.Fechar;
  form_impres_ldr.free;
  form_impres_ldr:=nil;
  end;
end;

procedure TFrm_LDR.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
{if not (key in ['0'..'9']) then
   begin
   if Trim(DBEdit2.Text)='/  /' then
      begin
      DM1.Tb_LDRDATAREAL.EditMask:=''
      end
   else if DM1.Tb_LDRDATAREAL.EditMask<>'' then
      DM1.Tb_LDRDATAREAL.EditMask:='!99/99/9999;1';
   end
else if DM1.Tb_LDRDATAREAL.EditMask='' then
   DM1.Tb_LDRDATAREAL.EditMask:='!99/99/9999;1';
}

end;

procedure TFrm_LDR.DBEdit2Enter(Sender: TObject);
begin
//DM1.Tb_LDRDATAREAL.EditMask:='!99/99/9999;1';

end;

procedure TFrm_LDR.Qr_TMChqCalcFields(DataSet: TDataSet);
begin
if Qr_TMChqCHFORMA.Value=0 then
   Qr_TMChqforma.Value:='Dinheiro'
else  if Qr_TMChqCHFORMA.Value=1 then
   Qr_TMChqforma.Value:='Cheque'
else  if Qr_TMChqCHFORMA.Value=2 then
   Qr_TMChqforma.Value:='Cartão'
else  if Qr_TMChqCHFORMA.Value=3 then
   Qr_TMChqforma.Value:='Deposito C/C'
else  if Qr_TMChqCHFORMA.Value=4 then
   Qr_TMChqforma.Value:='Ordem Pgto'
else  if Qr_TMChqCHFORMA.Value=5 then
   Qr_TMChqforma.Value:='Desconto'
else  if Qr_TMChqCHFORMA.Value=6 then
   Qr_TMChqforma.Value:='Acrescimo'
else if Qr_TMChqCHFORMA.Value=7 then
   Qr_TMChqforma.Value:='Cred.Pgto.Antec'
else if Qr_TMChqCHFORMA.Value=8 then
   Qr_TMChqforma.Value:='Cred.Devolucoes';


end;

procedure TFrm_LDR.DBEdit5Exit(Sender: TObject);
var
mtipo: String;
begin

mtipo:=copy(DM1.Tb_LDRNUMDOC.Value,1,3);
end;

procedure TFrm_LDR.DBE_CodigoKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') and (DM1.Tb_LDR.State in [dsEdit,dsInsert]) then
   begin
   if TIPO.Text='FR' then
      begin
      DM1.Tb_LDRCODIGO.Value:=ValFloat(fChamaFor(0,'frm_ldr',Key));
      DBE_CodigoExit(self);
      key:=#0;
      end
   else if TIPO.Text='TR' then
      begin
      DM1.Tb_LDRCODIGO.Value:=ValFloat(fChamaTra(0,'frm_tra',key));
      DBE_CodigoExit(self);
      key:=#0;
      end
   else if TIPO.Text='VD' then
      begin
      DM1.Tb_LDRCODIGO.Value:=valfloat(fchamaven(0,'frm_ldr',key));
      key:=#0;
      end
   else if TIPO.Text='US' then
      begin
      DM1.Tb_LDRCODIGO.Value:=valfloat(fChamaUsr(0,'frm_ldr',key));
      DBE_CodigoExit(self);
      key:=#0;
      end

   else
      begin
      DM1.Tb_LDRCODIGO.Value:=fSonumero(fChamaCli(0,'Frm_LDR',key));
      DBE_CodigoExit(self);
      end;
   end;
end;

procedure TFrm_LDR.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
if DM1.Tb_Ldr.State in [dsEdit, DsInsert] then
   begin
   if fmensagem('O Registro Anterior esta em Modo de Alteração Deseja Grava-lo?',0,['1','2'],1)=mrYes then
      GRAVAR.Click
   else
      CANCELAR.Click;
   end;
end;

procedure TFrm_LDR.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator;
end;

procedure TFrm_LDR.DBEdit2Exit(Sender: TObject);
begin
{if not (DM1.Tb_LDRDATAREAL.IsNull) and (Trim(DM1.Tb_LDRDATAREAL.AsString)<>'/  /') then
   begin
   mqtdd:=pdatasis-DM1.Tb_LDRDATAREAL.Value;
   if (mqtdd<-30) then
      fmensagem('lançamento com data inferior a 30 dias',mtWarning,mbOKCancel,MB_OK)
   else if mqtdd>360 then
      fmensagem('lançamento com data superior a 360 dias',mtWarning,mbOKCancel,MB_OK)
   else if (mqtdd>30) then
      fmensagem('lançamento com data superior a 30 dias',mtWarning,mbOKCancel,MB_OK)
   end;
}end;

procedure TFrm_LDR.DBEdit3Exit(Sender: TObject);
begin
mqtdd:=pdatasis-DM1.Tb_LDRDATAREF.Value;
if (mqtdd<-30) then
   fmensagem('lançamento com data inferior a 30 dias',0,['0'],0)
else if mqtdd>360 then
   fmensagem('lançamento com data superior a 360 dias',0,['0'],0)
else if (mqtdd>30) then
   fmensagem('lançamento com data superior a 30 dias',0,['0'],0);
end;

function fldr01gant(ptipo,pcodemp: Integer; pcodldr: Real): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(CODNOV) from OLD_CADLDR');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADLDR (';
v:='';
for x:=0 to DM1.Tb_Ldr.FieldCount-1 do
   begin
   if DM1.Tb_Ldr.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ldr.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CODNOV';
minstru:=minstru+',CODUSR_ALTEXC';
minstru:=minstru+',DATHOR_ALTEXC';
minstru:=minstru+',TIPEVE';

minstru:=minstru+') Select ';



v:='';
for x:=0 to DM1.Tb_Ldr.FieldCount-1 do
   begin
   if DM1.Tb_Ldr.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ldr.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CODNOV ';
minstru:=minstru+v+InttoStr(codusr)+' as CODUSR_ALTEXC';
minstru:=minstru+v+' SYSDATE as DATHOR_ALTEXC';
minstru:=minstru+v+InttoStr(ptipo)+' as TIPEVE ';
minstru:=minstru+' from CADLDR where CODEMP=0'+IntToStr(pcodemp)
                +' and CODLDR=0'+FloatToStr(pcodldr);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1120,'Frm_PECF','CADLDR');
   end;
result:=True;



end;

function tfrm_LDR.fldr01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_LDR.FieldCount-1 do
   begin
   if DM1.Tb_LDR.Fields[x].FieldKind=fkCalculated then
      Continue;
   if UpperCase(copy(DM1.Tb_LDR.Fields[x].FieldName,1,2))='ID' then
      minstru:=minstru+v+' ROWID as '+DM1.Tb_Ldr.Fields[x].FieldName
   else
      minstru:=minstru+v+DM1.Tb_LDR.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADLDR where CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_LDR.Close;
DM1.Tb_LDR.SQL.Clear;
DM1.Tb_LDR.SQL.add(minstru);
DM1.Tb_LDR.Open;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select * from CADLDR where CODEMP=0'+DM1.Tb_LDRCODEMP.AsString
                  +' and CODLDR=0'+DM1.Tb_LDRCODLDR.AsString);
DM1.Query1.Open;

if not (DM1.Query1.FieldByName(DM1.Tb_LDRDATADP.FieldName).IsNull) and
   not (DM1.Tb_LDRDATADP.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRDATADP.FieldName).Value<>DM1.Tb_LDRDATADP.Value then
      DBEDIT1.Color:=clRed;
   end;   
if not (DM1.Query1.FieldByName(DM1.Tb_LDRDATAREAL.FieldName).IsNull) and
   not (DM1.Tb_LDRDATAREAL.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRDATAREAL.FieldName).Value<>DM1.Tb_LDRDATAREAL.Value then
      DATAREAL.Color:=clRed;
   end;
if not (DM1.Query1.FieldByName(DM1.Tb_LDRDATAREF.FieldName).IsNull) and
   not (DM1.Tb_LDRDATAREF.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRDATAREF.FieldName).Value<>DM1.Tb_LDRDATAREF.Value then
      DBEdit3.Color:=clRed;
   end;

if not (DM1.Query1.FieldByName(DM1.Tb_LDRVALORP.FieldName).IsNull) and
   not (DM1.Tb_LDRVALORP.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRVALORP.FieldName).Value<>DM1.Tb_LDRVALORP.Value then
      DBEdit4.Color:=clRed;
   end;
if not (DM1.Query1.FieldByName(DM1.Tb_LDRVALORR.FieldName).IsNull) and
   not (DM1.Tb_LDRVALORR.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRVALORR.FieldName).Value<>DM1.Tb_LDRVALORR.Value then
      DBEdit5.Color:=clRed;
   end;


if not (DM1.Query1.FieldByName(DM1.Tb_LDRNOMCCU.FieldName).IsNull) and
   not (DM1.Tb_LDRNOMCCU.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRNOMCCU.FieldName).Value<>DM1.Tb_LDRNOMCCU.Value then
      DBE_CodCCu.Color:=clRed;
   end;

if not (DM1.Query1.FieldByName(DM1.Tb_LDRNATDC.FieldName).IsNull) and
   not (DM1.Tb_LDRNATDC.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRNATDC.FieldName).Value<>DM1.Tb_LDRNATDC.Value then
      DBEdit10.Color:=clRed;
   end;
if not (DM1.Query1.FieldByName(DM1.Tb_LDRCODBCO.FieldName).IsNull) and
   not (DM1.Tb_LDRCODBCO.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRCODBCO.FieldName).Value<>DM1.Tb_LDRCODBCO.Value then
      DBE_CodBco.Color:=clRed;
   end;

if not (DM1.Query1.FieldByName(DM1.Tb_LDRNOMBCO.FieldName).IsNull) and
   not (DM1.Tb_LDRNOMBCO.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRNOMBCO.FieldName).Value<>DM1.Tb_LDRNOMBCO.Value then
      DBCB_NOMBCO.Color:=clRed;
   end;

if not (DM1.Query1.FieldByName(DM1.Tb_LDRTIPO.FieldName).IsNull) and
   not (DM1.Tb_LDRTIPO.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRTIPO.FieldName).Value<>DM1.Tb_LDRTIPO.Value then
      TIPO.Color:=clRed;
   end;
if not (DM1.Query1.FieldByName(DM1.Tb_LDRCODIGO.FieldName).IsNull) and
   not (DM1.Tb_LDRCODIGO.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRCODIGO.FieldName).Value<>DM1.Tb_LDRCODIGO.Value then
      DBE_Codigo.Color:=clRed;
   end;
if not (DM1.Query1.FieldByName(DM1.Tb_LDRNOME.FieldName).IsNull) and
   not (DM1.Tb_LDRNOME.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRNOME.FieldName).Value<>DM1.Tb_LDRNOME.Value then
      DBEdit17.Color:=clRed;
   end;
if not (DM1.Query1.FieldByName(DM1.Tb_LDRNUMDOC.FieldName).IsNull) and
   not (DM1.Tb_LDRNUMDOC.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRNUMDOC.FieldName).Value<>DM1.Tb_LDRNUMDOC.Value then
      DBE_NumDoc.Color:=clRed;
   end;

if not (DM1.Query1.FieldByName(DM1.Tb_LDRNUMDOC2.FieldName).IsNull) and
   not (DM1.Tb_LDRNUMDOC2.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRNUMDOC2.FieldName).Value<>DM1.Tb_LDRNUMDOC2.Value then
      DBEdit14.Color:=clRed;
   end;

if not (DM1.Query1.FieldByName(DM1.Tb_LDRDESCMV.FieldName).IsNull) and
   not (DM1.Tb_LDRDESCMV.IsNull) then
   begin
   if DM1.Query1.FieldByName(DM1.Tb_LDRDESCMV.FieldName).Value<>DM1.Tb_LDRDESCMV.Value then
      DBEdit15.Color:=clRed;
   end;

BBPESQ.Enabled      :=False;
BBREPETIR.Enabled   :=False;
BBIMPR.Enabled      :=False;
BBSALDO.Enabled     :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator2.Enabled:=False;
DBGrid1.Enabled     :=False;
end;





procedure TFrm_LDR.FormActivate(Sender: TObject);
begin
  if ldr_ori='consulta' then
     fldr01lerant(0);

if flfilpad(0,'_LDR','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_2X_RECIBO',[]) then
      cb_2x_recibo.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;
end;

procedure TFrm_LDR.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   If (DM1.Tb_LDR.State in [dsInsert, dsEdit]) then  begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
        mrNo : CANCELAR.Click;
        mrYes: GRAVAR.Click;
      else
        CanClose:=False;
      end;
   end;
end;

procedure TFrm_LDR.DATAREALExit(Sender: TObject);
begin
if DM1.Tb_LDR.State in [dsInsert, dsEdit] then
   begin
   if Trim(DATAREAL.Text) <> '/  /' then
      begin
      Try
         DATAREAL.Text:=FormatDatetime(fdt2, StrtoDate(DATAREAL.Text));
      except
         fmensagem('Data Invalida!',0,['0'],0);
         DATAREAL.SetFocus;
         exit;
         end;
      mqtdd:=pdatasis-StrToDate(DATAREAL.Text);

      if (mqtdd<-30) then
         fmensagem('lançamento com data inferior a 30 dias',0,['0'],0)
      else if mqtdd>360 then
         fmensagem('lançamento com data superior a 360 dias',0,['0'],0)
      else if (mqtdd>30) then
         fmensagem('lançamento com data superior a 30 dias',0,['0'],0);
      DM1.Tb_LDRDATAREAL.Value:=StrToDate(DATAREAL.Text);
      end
   else
      DM1.Tb_LDRDATAREAL.Value:=0;
   end;

if not (DM1.Tb_LDRDATAREAL.IsNull) and (DM1.Tb_LDRDATAREAL.Value>pdatanula) then
   begin
   if not fAceitaManipular(DM1.Tb_LDRDATAREAL.AsDateTime) then
      begin
      DM1.Tb_LDRDATAREAL.Value := Null;
      DATAREAL.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_LDR.Src_LDRDataChange(Sender: TObject; Field: TField);
begin
DATAREAL.Text:=DM1.Tb_LDRcdatareal.Value;
if mcodldr_image<>DM1.Tb_LDRCODLDR.asinteger then
   begin
   if DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.AsDateTime>pdatanula then
      begin
      edt_competencia_mes.Text         :=FormatDatetime('mm', DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.AsDateTime);
      edt_competencia_ano.Text         :=FormatDatetime('yyyy', DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.AsDateTime);
      end
   else
      begin
      edt_competencia_mes.Clear;
      edt_competencia_ano.Clear;
      end;

  if DM1.Tb_LDRFC_COMPETENCIA_TIPO.asinteger=1 then
     begin
     edt_competencia_mes.Visible  :=false;
     lbl_competencia_barra.Visible:=false;
     end
  else
     begin
     edt_competencia_mes.Visible  :=true;
     lbl_competencia_barra.Visible:=true;
     end;


   if DM1_ADO.ADOConnection1.connected=false then
      begin
      DM1_ADO.ADOConnection1.Close;
      DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
      DM1_ADO.ADOConnection1.Open;
      end;

   Qr_Ldr_Imagem.close;
   Qr_Ldr_Imagem.Connection:=DM1_ADO.ADOConnection1;

//   Qr_Ldr_Imagem.Parameters.Clear;
//   Qr_Ldr_Imagem.SQL.clear;
//   Qr_Ldr_Imagem.SQL.add('Select * from CADLDR_IMAGEM '
//                        +' where LI_CODEMP=:CODEMP '
//                        +' and LI_CODLDR_LS=:CODLDR_LS '
//                         +' and LI_CODLDR=:CODLDR '
//                         +' order by LI_SEQ ');
   qr_ldr_Imagem.Parameters.ParamByName('CODEMP').Value   :=DM1.Tb_LDRCODEMP.Asinteger;
   qr_ldr_Imagem.Parameters.ParamByName('CODLDR_LS').Value:=DM1.Tb_LDRLOTSEQ.AsInteger;
   qr_ldr_Imagem.Parameters.ParamByName('CODLDR').Value   :=DM1.Tb_LDRCODLDR.AsInteger;
   qr_ldr_Imagem.open;
   mcodldr_image:=DM1.Tb_LDRCODLDR.asinteger;
   end;
end;

procedure TFrm_LDR.DBCheckBox1Click(Sender: TObject);
begin

  if DBCheckBox1.Checked then
     DBCheckBox1.Caption := 'Sim'
  else
     DBCheckBox1.Caption := 'Nao';

end;

procedure TFrm_LDR.DBGrid1ColExit(Sender: TObject);
begin
{
  if DBGrid1.SelectedField.FieldName = DBCheckBox1.DataField then
    DBCheckBox1.Visible := False
}
end;

procedure TFrm_LDR.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  const IsChecked : array[Boolean] of Integer =
      (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin

if Rect.Left<600 then
   begin
if (gdFocused in State) then
   begin
   if (Column.Field.FieldName = DBCheckBox1.DataField) then
      begin
      DBCheckBox1.Left := Rect.Left + DBGrid1.Left + 2;
      DBCheckBox1.Top := Rect.Top + DBGrid1.top + 2;
      DBCheckBox1.Width := Rect.Right - Rect.Left;
      DBCheckBox1.Height := Rect.Bottom - Rect.Top;
      DBCheckBox1.Visible := True;
      end
   end
else
   begin
   if (Column.Field.FieldName = DBCheckBox1.DataField) then
      begin
      DrawRect:=Rect;
      InflateRect(DrawRect,-1,-1);
      DrawState := ISChecked[Column.Field.AsInteger=0];
      DBGrid1.Canvas.FillRect(Rect);
      DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect,
                      DFC_BUTTON, DrawState);
      end;
   end;
   end;
end;

procedure TFrm_LDR.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = Chr(9)) then Exit;

  if (DBGrid1.SelectedField.FieldName = DBCheckBox1.DataField) then
  begin
    DBCheckBox1.SetFocus;
    SendMessage(DBCheckBox1.Handle, WM_Char, word(Key), 0);
  end;

end;

procedure TFrm_LDR.DBCb_CompensExit(Sender: TObject);
begin
if (DM1.Tb_LDRCOMPENS.Value=0) and (DM1.Tb_LDRDTCOMP.Value<=pdatanula) then
   DM1.Tb_LDRDTCOMP.Value:=pdatasis
else
   DM1.Tb_LDRDTCOMP.Value:=pdatanula;

end;

procedure TFrm_LDR.DBE_CodDepExit(Sender: TObject);
begin
macdep:=false;
if DM1.Tb_LDR.State in [DsInsert, DsEdit] then
   begin
   if trim(DM1.Tb_LDRCODDEP.AsString)<>'' Then
      begin
      mDadosRetornoCaixa:=fTestarCADDEP_CX(false,DM1.Tb_LDRCODDEP.AsString);
      if mDadosRetornoCaixa.pOk=false then
         begin
         DBE_CodDep.SetFocus;
         end
      else
         begin
         DM1.Tb_LDRNOMDEP.Value:=mDadosRetornoCaixa.pNome;
         if not DBCB_NOMDEP.Focused then
            macdep:=true;
         end;
      end;
   end;
end;

procedure TFrm_LDR.DBE_CodCCuExit(Sender: TObject);
begin
macccu:=false;
if DM1.Tb_LDR.State in [DsInsert, DsEdit] then
   begin
   if Trim(DM1.Tb_LDRCODCC.AsString)<>'' then
      begin
      mDadosRetornoCaixa :=fTestarCADCC(false,DM1.Tb_LDRCODCC.AsString);
      if mDadosRetornoCaixa.pOk=false then
         begin
         DBE_CodCCu.SetFocus;
         end
      else
         begin
         DM1.Tb_LDRNATDC.Value  := mDadosRetornoCaixa.pNatDC;
         DM1.Tb_LDRNOMCCU.Value := mDadosRetornoCaixa.pNome;
         if not DBCB_NOMCCU.Focused then
            macccu:=true;
         end;
      end;
   end;
end;

procedure TFrm_LDR.DBCB_NOMBCOExit(Sender: TObject);
begin
if DM1.Tb_LDR.State in [DsInsert, DsEdit] then
   begin
   if DBCB_NOMBCO.ItemIndex<0 then
      with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(DBCB_NOMBCO.Text);
   DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
   if trim(DBCB_NOMBCO.Text)='' then
      DM1.Tb_LDRCODBCO.Value:=0
   else
      begin
      DM1.Tb_LDRCODBCO.Value:=fsonumero(fExtraiCodigoEntreChaves(DBCB_NOMBCO.Text));
      DBE_CodBcoExit(Self);
      end;
   if lbl_obs.Visible then
      lbl_obs.Visible:=false;
   end;

end;

procedure TFrm_LDR.DBCB_NOMDEPExit(Sender: TObject);
begin
if DM1.Tb_LDR.State in [DsInsert, DsEdit] then
   begin
   if DBCB_NOMDEP.ItemIndex<0 then
      with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(DBCB_NOMDEP.Text);
   DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
   if trim(DBCB_NOMDEP.Text)='' then
      DM1.Tb_LDRCODDEP.Value:=''
   else
      begin
      DM1.Tb_LDRCODDEP.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEP.Text);
      DBE_CodDepExit(Self);
      end;
   if lbl_obs.Visible then
      lbl_obs.Visible:=false;
   end;
end;

procedure TFrm_LDR.DBCB_NOMCCUExit(Sender: TObject);
begin
if DM1.Tb_LDR.state in [dsEdit,dsInsert] then
   begin
   if DBCB_NOMCCU.ItemIndex<0 then
      with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(DBCB_NOMCCU.Text);
   DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
   if trim(DBCB_NOMCCU.Text)='' then
      DM1.Tb_LDRCODCC.Value:=''
   else
      begin
      DM1.Tb_LDRCODCC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCU.Text);
      DBE_CodCCuExit(Self);
      end;
   if lbl_obs.Visible then
      lbl_obs.Visible:=false;
   end;

end;

procedure TFrm_LDR.DBCB_NOMBCOEnter(Sender: TObject);
begin
if DM1.Tb_LDR.State in [DsInsert, DsEdit] then
   begin
   with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(DM1.Tb_LDRNOMBCO.Value
                                 +'['+DM1.Tb_LDRCODBCO.AsString+']');
   DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
   lbl_obs.Top:=69;
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macbanco then
   DBE_CodDep.SetFocus;
macbanco:=false;

end;

procedure TFrm_LDR.DBCB_NOMDEPEnter(Sender: TObject);
begin
if DM1.Tb_LDR.State in [DsInsert, DsEdit] then
   begin
   with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(DM1.Tb_LDRNOMDEP.Value
                                    +'['+DM1.Tb_LDRCODDEP.AsString+']');
   DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
   lbl_obs.Top:=91;
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macdep then
   DBE_CodCCu.SetFocus;
macdep:=false;

end;

procedure TFrm_LDR.DBCB_NOMCCUEnter(Sender: TObject);
begin

if DM1.Tb_LDR.State in [DsInsert, DsEdit] then
   begin
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(DM1.Tb_LDRNOMCCU.AsString
                                    +'-'+DM1.Tb_LDRNATDC.AsString
                                    +'['+DM1.Tb_LDRCODCC.AsString+']');
   DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
   lbl_obs.Top:=112;
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macccu then
   DBE_NumDoc.SetFocus;
macccu:=false;

end;

procedure TFrm_LDR.TIPOEnter(Sender: TObject);
begin
lbl_obs.Top:=134;
if not lbl_obs.Visible then
   lbl_obs.Visible:=true;

end;
procedure TFrm_LDR.DBE_CodigoEnter(Sender: TObject);
begin
mcodigo_ant:=DM1.Tb_LDRCODIGO.Value;

end;

function fldrDescMv(ptipo: Integer): Boolean;
begin
if (moper<>8) OR (mcodigo_ant<>DM1.Tb_LDRCODIGO.Value) then
   begin
   DM1.Tb_LDRDESCMV.Value:=pldr_descmov;
   if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
      DM1.Tb_LDRDESCMV.Value:=DM1.Tb_LDRDESCMV.Value+' No.'+DM1.Tb_LDRNUMDOC.Value;
   if length(DM1.Tb_LDRNOME.Value)>1 then
      DM1.Tb_LDRDESCMV.Value:=DM1.Tb_LDRDESCMV.Value+'/'+DM1.Tb_LDRNOME.Value;

   end;
result:=true;



end;

procedure TFrm_LDR.DBE_NumDocExit(Sender: TObject);
begin
if not  mManDesc then
   fldrDescMv(0);
end;

procedure TFrm_LDR.DBEdit15Change(Sender: TObject);
begin
if DBEdit15.Modified then  mManDesc:=true;
end;

procedure TFrm_LDR.DBE_CodBcoKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_LDRCODBCO.Value:=ValFloat(fChamaBco(0,'frm_ldr',key));
   DBE_CodBcoExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_LDR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_LDR.cb_2x_reciboClick(Sender: TObject);
begin
fDeletaPadroes(0,'_LDR','');
fGravaPadroes(0,'CB_2X_RECIBO','checked','_LDR',iif(cb_2x_recibo.Checked,'true','false'));
end;

procedure TFrm_LDR.sbn_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

query_ldr: TQuery;
mChave: Integer;
begin
if (not DM1.Tb_LDR.Active) or (DM1.Tb_LDRCODLDR.IsNull)  then
   exit;

Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin
   imagestream:=TMemoryStream.Create;
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      begin
      with TJPEGImage.Create do
          begin
          Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
          SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
          Free;
          end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;

   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';
   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Select max(LI_SEQ) as cod from CADLDR_IMAGEM '
                    +' where LI_CODEMP=:CODEMP '
                    +' and LI_CODLDR_LS=:CODLDR_LS '
                    +' and LI_CODLDR=:CODLDR ');
   query_ldr.ParamByName('CODEMP').AsInteger   :=codemp;
   query_ldr.ParamByName('CODLDR_LS').AsInteger:=DM1.Tb_LDRLOTSEQ.AsInteger;
   query_ldr.ParamByName('CODLDR').AsInteger   :=DM1.Tb_LDRCODLDR.AsInteger;
   query_ldr.open;
   mChave:=query_Ldr.fieldbyName('cod').AsInteger+1;


   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Insert into CADLDR_IMAGEM ( '
                    +'  LI_CODEMP '
                    +' ,LI_CODLDR_LS'
                    +' ,LI_CODLDR'
                    +' ,LI_SEQ'
                    +' ,LI_OBS'
                    +' ,LI_FOTO'
                    +' ,LI_NOMEORI '
                    +') values ('
                    +'  :LI_CODEMP '
                    +' ,:LI_CODLDR_LS'
                    +' ,:LI_CODLDR'
                    +' ,:LI_SEQ'
                    +' ,:LI_OBS'
                    +' ,:LI_FOTO'
                    +' ,:LI_NOMEORI '

                    +')');

   query_ldr.ParamByName('LI_CODEMP').AsInteger   :=DM1.Tb_LDRCODEMP.AsInteger;
   query_ldr.ParamByName('LI_CODLDR_LS').AsInteger:=DM1.Tb_LDRLOTSEQ.AsInteger;
   query_ldr.ParamByName('LI_CODLDR').AsInteger   :=DM1.Tb_LDRCODLDR.AsInteger;
   query_ldr.ParamByName('LI_SEQ').AsInteger      :=mChave;
   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      query_ldr.ParamByName('LI_OBS').AsString    :='IMAGEM: '+IntToStr(mChave)
   else
      query_ldr.ParamByName('LI_OBS').AsString    :=frm_Imagem_WebCam.edt_obs.Text;

   query_ldr.ParamByName('LI_FOTO').LoadFromStream(imagestream, ftBlob);
   query_ldr.ParamByName('LI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2048,'frm_ldr','CADLDR_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
Freeandnil(frm_imagem_WebCam);
mcodldr_image:=-1;
Src_LDRDataChange(DM1.Tb_LDR,DM1.Tb_LDRCODEMP);

end;

procedure TFrm_LDR.sbn_alterarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

query_ldr: TQuery;
begin
if (Qr_Ldr_Imagem.IsEmpty) or (Qr_Ldr_ImagemLI_CODLDR.IsNull) then
   begin
   MessageDlg('Nao ha registros a serem alterados!',mtWarning,[mbOk],0);
   exit;
   end;

Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin
   imagestream:=TMemoryStream.Create;
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      begin
      with TJPEGImage.Create do
          begin
          Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
          SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
          Free;
          end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;

   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';

   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADLDR_IMAGEM set '
                    +' LI_OBS=:LI_OBS '
                    +',LI_FOTO=:LI_FOTO '
                    +',LI_NOMEORI=:LI_NOMEORI '
                    +' where '
                    +' LI_CODEMP=:LI_CODEMP '
                    +' and LI_CODLDR_LS=:LI_CODLDR_LS'
                    +' and LI_CODLDR=:LI_CODLDR'
                    +' and LI_SEQ=:LI_SEQ'
                    );

   query_ldr.ParamByName('LI_CODEMP').AsInteger   :=DM1.Tb_LDRCODEMP.AsInteger;
   query_ldr.ParamByName('LI_CODLDR_LS').AsInteger:=DM1.Tb_LDRLOTSEQ.AsInteger;
   query_ldr.ParamByName('LI_CODLDR').AsInteger   :=DM1.Tb_LDRCODLDR.AsInteger;
   query_ldr.ParamByName('LI_SEQ').AsInteger      :=Qr_Ldr_ImagemLI_SEQ.AsInteger;



   if (trim(frm_Imagem_WebCam.edt_obs.Text)<>'') then
      query_ldr.ParamByName('LI_OBS').AsString:=trim(frm_Imagem_WebCam.edt_obs.Text)
   else if (trim(Qr_Ldr_ImagemLI_OBS.AsString)='') then
      query_ldr.ParamByName('LI_OBS').AsString    :='IMAGEM: '+Qr_Ldr_ImagemLI_OBS.AsString
   else
      query_ldr.ParamByName('LI_OBS').AsString    :=Qr_Ldr_ImagemLI_OBS.AsString;



   query_ldr.ParamByName('LI_FOTO').LoadFromStream(imagestream, ftBlob);
   query_ldr.ParamByName('LI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2048,'frm_ldr','CADLDR_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
mcodldr_image:=-1;
Src_LDRDataChange(DM1.Tb_LDR,DM1.Tb_LDRCODEMP);


end;

procedure TFrm_LDR.sbn_excluirClick(Sender: TObject);
var
query_ldr: TQuery;

begin
if (Qr_Ldr_Imagem.IsEmpty) or (Qr_Ldr_ImagemLI_CODLDR.IsNull) then
   begin
   MessageDlg('Nao ha registros a serem excluidos!',mtWarning,[mbOk],0);
   exit;
   end;
if Application.MessageBox(pchar( 'Quer Realmente excluir o registro '+Qr_Ldr_ImagemLI_OBS.asstring),'confirmacao',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
query_ldr:=TQuery.create(Nil);
query_ldr.databaseName:='SG_ASSOC';
query_ldr.Close;
query_ldr.SQL.Clear;
query_ldr.SQL.Add('Delete  from CADLDR_IMAGEM '
                 +' where LI_CODEMP=:CODEMP '
                 +' and LI_CODLDR_LS=:CODLDR_LS '
                 +' and LI_CODLDR=:CODLDR '
                 +' and LI_SEQ=:SEQ ');
query_ldr.ParamByName('CODEMP').AsInteger   :=codemp;
query_ldr.ParamByName('CODLDR_LS').AsInteger:=DM1.Tb_LDRLOTSEQ.AsInteger;
query_ldr.ParamByName('CODLDR').AsInteger   :=DM1.Tb_LDRCODLDR.AsInteger;
query_ldr.ParamByName('SEQ').AsInteger      :=qr_lDR_iMAGEMLI_SEQ.AsInteger;
try
   query_ldr.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_ldr,2183,'frm_ldr','CADLDR_IMAGEM');
   end;
FreeAndNil(query_ldr);
mcodldr_image:=-1;
Src_LDRDataChange(DM1.Tb_LDR,DM1.Tb_LDRCODEMP);



end;

procedure TFrm_LDR.DBGrid2DblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

begin
if not Qr_Ldr_ImagemLI_FOTO.IsNull then
   begin
   imagestream:=TMemoryStream.Create;
   Qr_Ldr_ImagemLI_FOTO.SaveToStream(imagestream);
   imagestream.Position := 0;

   if (trim(Qr_Ldr_ImagemLI_NOMEORI.asstring)='')  or fEImagem(Qr_Ldr_ImagemLI_NOMEORI.asstring) then
      begin
      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( imageStream );
      Application.Createform(TFrm_Fig_TelaCheia, Frm_Fig_TelaCheia);
      Frm_Fig_TelaCheia.Image1.Picture.Bitmap.Assign(jpg);
      Frm_Fig_TelaCheia.ShowModal;
      freeandnil(Frm_Fig_TelaCheia);
      freeandnil(jpg);
      end
   else
      begin
      try
         if trim(Qr_Ldr_ImagemLI_NOMEORI.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Qr_Ldr_ImagemLI_NOMEORI.asstring);
            fExecutarArquivo(mcamtmp+'\'+Qr_Ldr_ImagemLI_NOMEORI.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Qr_Ldr_ImagemLI_NOMEORI.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;

      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Qr_Ldr_ImagemLI_NOMEORI.asstring,mtError,[mbOk],0);
         end;
      end;
   freeandnil(imagestream);

   end;



end;

function TFrm_LDR.fLiberaCampos(pLibera: Boolean): Boolean;
begin
DBEdit1.Enabled      :=pLibera;
DATAREAL.Enabled     :=pLibera;
DBEdit3.Enabled      :=pLibera;
DBCb_Compens.Enabled :=pLibera;
DBEdit4.Enabled      :=pLibera;
DBEdit5.Enabled      :=pLibera;
TIPO.Enabled         :=pLibera;
DBE_Codigo.Enabled   :=pLibera;
SpeedButton5.Enabled  :=pLibera;

DBE_CodBco.Enabled      :=pLibera;
DBCB_NOMBCO.Enabled     :=pLibera;
SpeedButton4.Enabled    :=pLibera;

DBE_CodDep.Enabled      :=pLibera;
DBCB_NOMDEP.Enabled     :=pLibera;
sbn_nomdep.Enabled      :=pLibera;

DBE_CodCCu.Enabled      :=pLibera;
DBCB_NOMCCU.Enabled     :=pLibera;
spn_nomccu.Enabled      :=pLibera;

DBE_NumDoc.Enabled      :=pLibera;
DBEdit14.Enabled     :=pLibera;
DBEdit15.Enabled      :=pLibera;
DBEdit6.Enabled      :=pLibera;
result:=true;






end;

procedure TFrm_LDR.TIPOExit(Sender: TObject);
begin
if TIPO.ItemIndex<0 then
   with TIPO do ItemIndex:=Items.IndexOf(TIPO.Text);
TIPO.Text:=TIPO.items.Strings[TIPO.itemindex];
DM1.Tb_LDRTIPO.Value:=TIPO.Text;
if Trim(TIPO.Text)='' then
   TIPO.Text:='CL';
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_LDR.DBEdit1Enter(Sender: TObject);
begin
mdtemis_ant:=DM1.Tb_LDRDATADP.AsDateTime;

end;

procedure TFrm_LDR.edt_competencia_mesExit(Sender: TObject);
begin
if (valint(edt_competencia_mes.Text)<1) or (valint(edt_competencia_mes.Text)>12) then
   begin
   MessageDlg('mês '+edt_competencia_mes.Text+' não é um mes valido!',mtWarning,[mbOk],0);
   edt_competencia_mes.SelectAll;
   edt_competencia_mes.SetFocus;
   end
else
   begin
   fAtualizarDataCompetencia;
   end;

end;

procedure TFrm_LDR.edt_competencia_anoExit(Sender: TObject);
begin
if (valint(edt_competencia_ano.Text)<1) or (valint(edt_competencia_ano.Text)>valint(FormatDateTime('yyyy', date))+150 )
   or (valint(edt_competencia_ano.Text)<valint(FormatDateTime('yyyy', date))-150 ) then
   begin
   MessageDlg('Ano '+edt_competencia_ano.Text+' não é um ano valido!',mtWarning,[mbOk],0);
   edt_competencia_ano.SelectAll;
   edt_competencia_ano.SetFocus;
   end
else
   begin
   fAtualizarDataCompetencia;
   end;

end;


function TFrm_LDR.fAtualizarDataCompetencia: Boolean;
begin
if (valint(edt_competencia_mes.Text)>0) and (ValInt(edt_competencia_ano.text)>0) and (DM1.Tb_Ldr.State in [dsedit,dsinsert]) then
   begin
   DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.Value:=StrToDatetime('01/'
                                     +formatfloat('00', valint(edt_competencia_mes.text))
                                     +'/'+formatfloat('0000', valint(edt_competencia_ano.text))
                                     );
   end
else if (ValInt(edt_competencia_ano.text)>0) and (DM1.Tb_Ldr.State in [dsedit,dsinsert]) then
   begin
   DM1.Tb_LDRFC_COMPETENCIA_DTINICIO.Value:=StrToDatetime('01/'
                                     +'01'
                                     +'/'+formatfloat('0000', valint(edt_competencia_ano.text))
                                     );
   end;

result:=true;
end;


procedure TFrm_LDR.DB_CACOMPETENCIA_TIPOExit(Sender: TObject);
begin
  if DM1.Tb_LDRFC_COMPETENCIA_TIPO.asinteger=1 then
     begin
     edt_competencia_mes.Visible  :=false;
     lbl_competencia_barra.Visible:=false;
     end
  else
     begin
     edt_competencia_mes.Visible  :=true;
     lbl_competencia_barra.Visible:=true;
     end;

end;


function TFrm_LDR.fAceitaManipular(pDatDoc: tDateTime): boolean;
begin
flparger02(0,0,'1');
if pDatDoc<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
   begin
   fmensagem('Caixa Bloqueado para Movimento até: '
               +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime)
               +'. Este Documento é de '
               +FormatDateTime(fdt2, pDatDoc)
               ,0,['0'],0);
   result:=false;
   end
else
   result:=true;
end;


end.
