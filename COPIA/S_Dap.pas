unit S_Dap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, db, dbtables, func, S_DM1, S_C, Grids, DBGrids, Mask, DBCtrls,
  StdCtrls, ComCtrls, Buttons, ExtCtrls,S_For, S_Bco,lerarq,
  S_LOptica,S_Dpto,s_CCU, ToolEdit, RXDBCtrl, RxDBComb, CheckLst
  ,S_SelEmp, ADODB,JPEG, Gauges
  ;

type
  TFrm_Dap = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBE_NOMFOR: TDBEdit;
    DBE_codfor: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBE_valor: TDBEdit;
    Label5: TLabel;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    dbe_status: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBE_valdes: TDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit16: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBE_denom: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    st_leitor: TStaticText;
    Label21: TLabel;
    dbe_valpag: TDBEdit;
    dbcbcombol: TDBCheckBox;
    Panel2: TPanel;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    GroupBox10: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label25: TLabel;
    DBEdit28: TDBEdit;
    DBCB_NOMBCO: TDBComboBox;
    DBCB_NOMDEP: TDBComboBox;
    DBCB_NOMCCU: TDBComboBox;
    lbl_obs: TLabel;
    DBEdit9: TDBEdit;
    DBCB_EXTRA: TDBCheckBox;
    SB_DIVIDE: TSpeedButton;
    Label53: TLabel;
    cb_listar: TComboBox;
    Label54: TLabel;
    cb_ordem: TComboBox;
    Label50: TLabel;
    CB_DUP: TComboBox;
    Src_Dap: TDataSource;
    Label20: TLabel;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    DBEdit7: TDBEdit;
    sbnforma: TSpeedButton;
    sbRestaurar: TSpeedButton;
    Label27: TLabel;
    Label55: TLabel;
    DBE_numparc: TDBEdit;
    Label56: TLabel;
    DBE_CRQTDPARC: TDBEdit;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    rg_dadosne: TGroupBox;
    Label28: TLabel;
    dbe_serie: TDBEdit;
    Label29: TLabel;
    DBE_Modelo: TDBEdit;
    Label30: TLabel;
    DBE_cfop: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label31: TLabel;
    DBE_DTPAG: TDBDateEdit;
    Label32: TLabel;
    DBE_base: TDBEdit;
    Label33: TLabel;
    DBEdit3: TDBEdit;
    DBE_ICMS: TDBEdit;
    Label34: TLabel;
    Label35: TLabel;
    DBE_VALORNF: TDBEdit;
    dbe_datadesc: TDBDateEdit;
    dbe_dtvcto: TDBDateEdit;
    dbe_dtemis: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label36: TLabel;
    Label37: TLabel;
    DBE_NUMNF: TDBEdit;
    sbt_emitirrecibo: TSpeedButton;
    sbt_salva_conf: TSpeedButton;
    sbnDocumento: TSpeedButton;
    tsImagem: TTabSheet;
    Tb_CP_imagem: TADOQuery;
    Src_Dap_imagem: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    sbn_nova: TSpeedButton;
    sbn_alterar: TSpeedButton;
    sbnRenomear: TSpeedButton;
    sbn_excluir: TSpeedButton;
    Tb_CP_imagemPI_ROWID: TStringField;
    Tb_CP_imagemPI_SEQ: TFloatField;
    Tb_CP_imagemPI_OBS: TStringField;
    Tb_CP_imagemPI_IMAGEM: TBlobField;
    Label39: TLabel;
    DBE_CAVALOR_ACRES: TDBEdit;
    gb_obs: TGroupBox;
    DBMEMO_CAOBS: TDBMemo;
    Label38: TLabel;
    DBEdit4: TDBEdit;
    Tb_CP_imagemPI_NOMEORI: TStringField;
    Tb_CP: TQuery;
    Tb_CPCACODEMP: TFloatField;
    Tb_CPCANUMERO: TFloatField;
    Tb_CPCACODFOR: TFloatField;
    Tb_CPCADTEMIS: TDateTimeField;
    Tb_CPCADESD: TStringField;
    Tb_CPCAVALOR: TFloatField;
    Tb_CPCADTVCTO: TDateTimeField;
    Tb_CPCAVALDES: TFloatField;
    Tb_CPCADTDESC: TDateTimeField;
    Tb_CPCADESC: TFloatField;
    Tb_CPCAJUROS: TFloatField;
    Tb_CPCABANCO: TFloatField;
    Tb_CPCALOTE: TFloatField;
    Tb_CPnomefor: TStringField;
    Tb_CPCACHAVEP: TFloatField;
    Tb_CPCADTBX: TDateTimeField;
    Tb_CPCADTPAG: TDateTimeField;
    Tb_CPCAUSRBAI: TFloatField;
    Tb_CPsituacao: TStringField;
    Tb_CPCACAIXA: TFloatField;
    Tb_CPCACODLDR: TFloatField;
    Tb_CPCASTATUS: TFloatField;
    Tb_CPCAVALPAG: TFloatField;
    Tb_CPnombco: TStringField;
    Tb_CPCADUP: TFloatField;
    Tb_CPCADEVOL: TFloatField;
    Tb_CPCACODUSR: TFloatField;
    Tb_CPCADTALT: TDateTimeField;
    Tb_CPCAHRALT: TStringField;
    Tb_CPdenom: TStringField;
    Tb_CPCANOSNUM: TStringField;
    Tb_CPCALOTSEQ_CP: TFloatField;
    Tb_CPCALOTSEQ_LB: TFloatField;
    Tb_CPCALOTSEQ_FC: TFloatField;
    Tb_CPCATEMBOL: TFloatField;
    Tb_CPCALEMAT: TFloatField;
    Tb_CPtipodoc: TStringField;
    Tb_CPCACODCTA: TFloatField;
    Tb_CPCACODCC: TStringField;
    Tb_CPCACODDEP: TStringField;
    Tb_CPCADESCMV: TStringField;
    Tb_CPCANOMCTA: TStringField;
    Tb_CPCANOMCC: TStringField;
    Tb_CPCANOMDEP: TStringField;
    Tb_CPdatadesc: TStringField;
    Tb_CPCANATDC: TStringField;
    Tb_CPCASEQ: TFloatField;
    Tb_CPCADTINC: TDateTimeField;
    Tb_CPvaldev: TFloatField;
    Tb_CPdtPag: TStringField;
    Tb_CPCAQTDPARC: TFloatField;
    Tb_CPCANUMPARC: TFloatField;
    Tb_CPCASERIE: TStringField;
    Tb_CPCAMODELO: TStringField;
    Tb_CPCACFO: TFloatField;
    Tb_CPCADTENT: TDateTimeField;
    Tb_CPCAVALORNF: TFloatField;
    Tb_CPCABASEN: TFloatField;
    Tb_CPCAALIQ: TFloatField;
    Tb_CPCAICMSN: TFloatField;
    Tb_CPCANETIPO: TFloatField;
    Tb_CPCANUMERONF: TFloatField;
    Tb_CPcnpj: TStringField;
    Tb_CPIDDAP: TStringField;
    Tb_CPCAVALOR_ACRES: TFloatField;
    U_CP: TUpdateSQL;
    Src_CP: TDataSource;
    Tb_CP_Obs: TQuery;
    U_CP_Obs: TUpdateSQL;
    Src_CP_Obs: TDataSource;
    Tb_CP_ObsCAOBS: TMemoField;
    DBDateEdit2: TDBDateEdit;
    Label17: TLabel;
    Tb_CPCACOMPETENCIA_DTINICIO: TDateTimeField;
    DB_CACOMPETENCIA_TIPO: TRxDBComboBox;
    DBText1: TDBText;
    edt_competencia_mes: TEdit;
    edt_competencia_ano: TEdit;
    lbl_competencia_barra: TLabel;
    Tb_CPcompetencia_obs: TStringField;
    Tb_CPCACOMPETENCIA_TIPO: TFloatField;
    Label40: TLabel;
    edt_datini: TDateEdit;
    Label41: TLabel;
    edt_datfin: TDateEdit;
    Label42: TLabel;
    cb_tipopesq: TComboBox;
    Label67: TLabel;
    DBText2: TDBText;
    Label68: TLabel;
    DBText3: TDBText;
    Tb_CPCACHAVE_ID: TFloatField;
    Tb_CPCACHAVE_ID_ANO: TFloatField;
    tsEspeciaisMaster: TTabSheet;
    Label43: TLabel;
    edt_valacres: TEdit;
    bbAplicar: TBitBtn;
    gbProgresso: TGroupBox;
    Gauge1: TGauge;
    Tb_CPCADATAINCLUSAO: TDateTimeField;
    Tb_CPCAQTDAJUSTE: TFloatField;
    procedure DBE_codforExit(Sender: TObject);
    procedure DBE_codforKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBE_valorKeyPress(Sender: TObject; var Key: Char);
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CAMPOExit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit24KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DBEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBCB_NOMBCOEnter(Sender: TObject);
    procedure DBCB_NOMDEPEnter(Sender: TObject);
    procedure DBCB_NOMCCUEnter(Sender: TObject);
    procedure DBCB_NOMBCOExit(Sender: TObject);
    procedure DBCB_NOMDEPExit(Sender: TObject);
    procedure DBCB_NOMCCUExit(Sender: TObject);
    procedure dbrg_dupExit(Sender: TObject);
    procedure DBCB_NOMBCOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SB_DIVIDEClick(Sender: TObject);
    procedure Src_DapDataChange(Sender: TObject; Field: TField);
    procedure cb_listarClick(Sender: TObject);
    procedure sbnformaClick(Sender: TObject);
    procedure sbRestaurarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbe_dtemisExit(Sender: TObject);
    procedure dbe_serieExit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBE_NUMNFEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbt_emitirreciboClick(Sender: TObject);
    procedure cb_listarChange(Sender: TObject);
    procedure cb_ordemChange(Sender: TObject);
    procedure sbt_salva_confClick(Sender: TObject);
    procedure sbnDocumentoClick(Sender: TObject);
    procedure sbn_novaClick(Sender: TObject);
    procedure sbn_alterarClick(Sender: TObject);
    procedure sbnRenomearClick(Sender: TObject);
    procedure sbn_excluirClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBE_CAVALOR_ACRESEnter(Sender: TObject);
    procedure DBE_CAVALOR_ACRESExit(Sender: TObject);
    procedure Tb_CPCalcFields(DataSet: TDataSet);
    procedure Tb_CPBeforePost(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_CPAfterInsert(DataSet: TDataSet);
    procedure DBMEMO_CAOBSChange(Sender: TObject);
    procedure Tb_CPAfterPost(DataSet: TDataSet);
    procedure Tb_CPAfterEdit(DataSet: TDataSet);
    procedure edt_competencia_mesExit(Sender: TObject);
    procedure edt_competencia_anoExit(Sender: TObject);
    procedure DB_CACOMPETENCIA_TIPOExit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure edt_valacresExit(Sender: TObject);
  private
    { Private declarations }
    middap_src: string;
    mvalor_acres_ant: Real;
    mAlterouObs: boolean;

    mdtemis_ant: Tdatetime;

    function fdap01lerant(ptipo: Integer):Boolean;


    function fIncluirCADNE(pTipo: Integer): Boolean;

    function fAtualizarDataCompetencia: Boolean;

    function fGerarAnt(pTipoEve: Integer): Boolean;
    procedure fLercadobsdap;

    procedure fAplicarAjuste;


  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;

    function flcaddap_local(ptipo,pcodemp,pOrdem: Integer; pvalor1,pvalor2,pvalor3,pvalor4,pvalor5,pEmpresa: String): Boolean;

  end;

var
  Frm_Dap: TFrm_Dap;
  dap_ori: String;
  moper:   Integer;
  macbanco   : Boolean=False;
  macdep     : Boolean=False;
  macccu     : Boolean=False;
  mdap_codemp: Real=0;
  mdap_numero: real=0;
  mdap_desd  : String='';
  mdap_dup   : Real=0;
  mdap_codfor: real=0;
  mdap_dtemis: Tdatetime;

  mAntNe_codfor: Real;
  mAntNe_Numero: Real;
  mAntNe_Modelo: String;
  mAntNe_Serie:  String;
  mAntNe_Dtemis: TDateTime;
  mAntNe_CFOP  : Real;
  mAntNe_Valor : Real;
  mAntNe_Codemp: Real;



implementation

uses S_DM4, func_excecoes, S_DivTit_Pagar, Func2, S_Recibo, S_IMPRES,
  s_FormaPgto, s_Imagem_WebCam, S_Fig_TelaCheia, S_DM1_ADO;

{$R *.dfm}

procedure TFrm_Dap.DBE_codforExit(Sender: TObject);
begin
  inherited;
if Tb_CPCACODFOR.AsFloat=0 then
   exit;

if not flcadfor(1,0,Tb_CPCACODFOR.AsString) then
   begin
   fmensagem('Fornecedor Não Cadastrado!',0,['0'],0);
   DBE_codfor.SetFocus;
   end
else
   begin
   if Tb_CPCADUP.Value=5 then
      begin
      flparldr(0,'CADDAPC');
      if trim(DM1.Tb_ForFDESCMVC.AsString)<>'' then
         Tb_CPCADESCMV.Value:=DM1.Tb_ForFDESCMVC.AsString
      else
         Tb_CPCADESCMV.Value:=DM1.Par_LDRNOME.Value;
      if Trim(DM1.Tb_ForFCODCCC.AsString)<>'' then
         begin
         Tb_CPCACODCC.Value :=DM1.Tb_ForFCODCCC.AsString;
         Tb_CPCANOMCC.Value :=DM1.Tb_ForFNOMCCC.AsString;
         if (DM1.Tb_ForFNATDCC.AsString)='' then
            Tb_CPCANATDC.Value :='C'
         else
            Tb_CPCANATDC.Value :=DM1.Tb_ForFNATDCC.AsString;
         end
      else
         begin
         if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
            begin
            Tb_CPCANOMCC.Value:=DM1.Tb_CCUCCNOME.Value;
            Tb_CPCACODCC.Value:=DM1.Tb_CCUCCCODCCU.Value;
            Tb_CPCANATDC.Value:=DM1.Tb_CCUCCNAT.Value;
            end
         else
            begin
            Tb_CPCACODCC.Value  :=pldr_codccu;
            Tb_CPCANOMCC.Value  :=pldr_nomccu;
            Tb_CPCANATDC.Value  :=pldr_natdc;
            end;
         end;
      if trim(DM1.Tb_ForFCODDEPC.AsString)<>'' then
         begin
         Tb_CPCACODDEP.Value:=DM1.Tb_Dep_LdrDCODDEP.Value;
         Tb_CPCANOMDEP.Value:=DM1.Tb_Dep_LdrDNOME.Value;
         end
      else
         begin
         if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
            begin
            Tb_CPCANOMDEP.Value:=DM1.Tb_Dep_LdrDNOME.Value;
            Tb_CPCACODDEP.Value:=DM1.Tb_Dep_LdrDCODDEP.Value;
            end
         else
            begin
            Tb_CPCACODDEP.Value:= pldr_coddep;
            Tb_CPCANOMDEP.Value:= pldr_nomdep;
            end;
         end;
      end
   else
      begin
      if trim(DM1.Tb_ForFDESCMVD.AsString)='' then
         Tb_CPCADESCMV.Value:=pldr_descmov
      else
         Tb_CPCADESCMV.Value:=DM1.Tb_ForFDESCMVD.Value;
      if Trim(DM1.Tb_ForFCODCCD.AsString)='' then
         begin
         Tb_CPCACODCC.Value :=pldr_codccu;
         Tb_CPCANOMCC.Value :=pldr_nomccu;
         Tb_CPCANATDC.Value :=pldr_natdc;

         end
      else
         begin
         Tb_CPCACODCC.Value :=DM1.Tb_ForFCODCCD.Value;
         Tb_CPCANOMCC.Value :=DM1.Tb_ForFNOMCCD.Value;
         if (DM1.Tb_ForFNATDCD.AsString)='' then
            Tb_CPCANATDC.Value :='D'
         else
            Tb_CPCANATDC.Value :=DM1.Tb_ForFNATDCD.AsString;
         end;
      if trim(DM1.Tb_ForFCODDEPD.AsString)='' then
         begin
         Tb_CPCACODDEP.Value:=pldr_coddep;
         Tb_CPCANOMDEP.Value:=pldr_nomdep;
         end
      else
         begin
         Tb_CPCACODDEP.Value:=DM1.Tb_ForFCODDEPD.Value;
         Tb_CPCANOMDEP.Value:=DM1.Tb_ForFNOMDEPD.Value;
         end;
      end;
   end;


end;

procedure TFrm_Dap.DBE_codforKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_CPCACODFOR.Value:=ValFloat(fChamaFor(0,'frm_Dap',Key));
   DBE_codforExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_Dap.DBEdit14Exit(Sender: TObject);
begin
  inherited;
if Tb_CPCABANCO.AsFloat=0 then
   exit;
if (Tb_CPCABANCO.IsNull) or (Tb_CPCABANCO.Value=0) then
   exit;
if not fTestarCADBCO(false,Tb_CPCABANCO.AsString) then
   begin
   DBEdit14.SetFocus;
   end;

end;

procedure TFrm_Dap.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_CPCABANCO.Value:=ValFloat(fChamaBco(0,'frm_Dap',Key));
   key:=#0;
   end;

end;

procedure TFrm_Dap.DBE_valorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_Dap.BBnAtuClick(Sender: TObject);
begin
  inherited;
{
if dap_ori='consulta' then
   begin
   fdap01lerant(0);
   end
else
}
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);

   if (dap_ori<>'frm_cpag') and (dap_ori<>'frm_accp')then
      flcaddap_local(iif(CAMPO.itemIndex>3,3,0)+CAMPO.ItemIndex,0,cb_ordem.ItemIndex,Trim(Edit1.Text),pvazio,pvazio,pvazio,pvazio,la_empresas);
   end;


end;

procedure TFrm_Dap.INCLUIRClick(Sender: TObject);
begin
  inherited;
Tb_CP.Insert;
Tb_CPCATEMBOL.Value:=0;
Tb_CPCADUP.Value   :=0;
Tb_CPCANETIPO.Value:=0;

if codcai=0 then
   Tb_CPCACODCTA.Value:=1
else
   Tb_CPCACODCTA.Value:=codcai;

Tb_CPCADESCMV.Value:=pldr_descmov;
Tb_CPCACODCC.Value :=pldr_codccu;
Tb_CPCACODDEP.Value:=pldr_coddep;
Tb_CPCANOMCTA.Value:=pldr_nombco;
Tb_CPCANOMDEP.Value:=pldr_nomdep;
Tb_CPCANOMCC.Value :=pldr_nomccu;
Tb_CPCADTALT.Value :=now;
Tb_CPCADTINC.Value :=now;
Tb_CPCACODEMP.Value:=codemp;
Tb_CPCAQTDPARC.Value:=1;
Tb_CPCANUMPARC.Value:=1;
Tb_CPCADATAINCLUSAO.AsDateTime:=now;

mAntNe_codfor:=0;
mAntNe_Numero:=0;
mAntNe_Modelo:='';
mAntNe_Serie :='';
mAntNe_Dtemis:=pdatanula;
mAntNe_CFOP  :=0;
mAntNe_Valor :=0;
mAntNe_Codemp:=0;


mdap_codemp:=0;
mdap_numero:=0;
mdap_desd  :='';
mdap_dup   :=0;
mdap_codfor:=0;
mdap_dtemis:=date;

CB_DUP.ItemIndex:=Tb_CPCADUP.AsInteger;

DBEdit1.SetFocus;
moper:=0;


end;

procedure TFrm_Dap.ALTERARClick(Sender: TObject);
begin
  inherited;
if Tb_CPCANUMERO.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['0'],0);
   CANCELAR.Click;
   EXIT;
   end;
if (Tb_CPCASTATUS.Value>1) then // and (codusr<>1111) then
   begin
   fmensagem('Alteração não permitida. Excluir primeiro o(s) pagamento(s)',0,['0'],0);
   CANCELAR.Click;
   exit;
   end;
moper:=8;
Tb_CP.Edit;
if DM1.Tb_PargerPMANDUPPAG_AUT.AsInteger<>1 then
   begin
   if Tb_CPCACHAVEP.Value>0 then
      begin
      fmensagem('Lançamento automático. Será Permitido alterar somente '+#13
                +'alguns campos',0,['0'],0);
      DBEdit1.Enabled      :=False;
      DBEdit2.Enabled      :=False;
      CB_DUP.Enabled     :=False;
      DBE_codfor.Enabled      :=False;
      dbe_dtemis.Enabled      :=False;
      DBE_valor.Enabled      :=False;
      dbe_dtvcto.SetFocus;
      end
   else
      begin
      DBEdit1.Enabled      :=True;
      DBEdit2.Enabled      :=True;
      cb_dup.Enabled     :=True;
      DBE_codfor.Enabled      :=True;
      dbe_dtemis.Enabled      :=True;
      DBE_valor.Enabled      :=True;
      DBEdit1.SetFocus;
      end;
   end;
mdap_codemp:=Tb_CPCACODEMP.AsFloat;
mdap_numero:=Tb_CPCANUMERO.AsFloat;
mdap_desd  :=Tb_CPCADESD.AsString;
mdap_codfor:=Tb_CPCACODFOR.AsFloat;
mdap_dtemis:=Tb_CPCADTEMIS.AsFloat;
mdap_dup   :=Tb_CPCADUP.AsFloat;



mAntNe_codfor :=Tb_CPCACODFOR.AsFloat;
mAntNe_Numero :=Tb_CPCANUMERO.AsFloat;
mAntNe_Modelo :=Tb_CPCAMODELO.AsString;
mAntNe_Serie  :=Tb_CPCASERIE.AsString;
mAntNe_Dtemis :=Tb_CPCADTEMIS.AsDateTime;
mAntNe_CFOP   :=Tb_CPCACFO.AsFloat;
mAntNe_Valor  :=Tb_CPCAVALORNF.AsFloat;
mAntNe_Codemp :=Tb_CPCACODEMP.AsFloat;

Tb_CPCAQTDAJUSTE.Value:=Tb_CPCAQTDAJUSTE.AsInteger+1;

CB_DUP.ItemIndex:=Tb_CPCADUP.AsInteger;

end;

procedure TFrm_Dap.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if Tb_CPCANUMERO.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['0'],0);
   abort;
   end;
{
if codusr<>1111 then
   begin
   if Tb_CPCACHAVEP.Value>0 then
      begin
      fmensagem('Exclusão não permitida lançamento feito através de pedido',0,['0'],0);
      exit;
      end;
   end;
}
if Tb_CPCASTATUS.Value>0 then
   begin
   fmensagem('Exclusão não permitida. Excluir primeiro o(s) pagamento(s)',0,['0'],0);
   exit;
   end;


if fMensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   if Tb_CPCACHAVEP.Value>0 then
      begin
      mValidarSenha.pTipo:=0;
      mValidarSenha.pCodusr:=codusr;
      mValidarSenha.pCodSen:=50;
      mValidarSenha.pCodEmp:=0;
      mValidarSenha.pCodCli:=0;
      mValidarSenha.pLotSeq:=0;
      mValidarSenha.pChave :=0;
      mValidarSenha.pOrdem :=0;
      mValidarSenha.pTexto :='Senha para alterar Excluir Titulo Gerados Automaticamente';
      mValidarSenha.pChave_St:='';
      mValidarSenha.pDesc_requisitado :=0;
      if fValidaSenha(mValidarSenha)<>0 then
         exit;
      end;

   if Tb_CPCACODLDR.Value>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.add('Delete From CADLDR where ');
      if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
         begin
         DM1.Query1.SQL.add(' LOTSEQ=0'+Tb_CPCALOTSEQ_FC.AsString
                           +' and CODLDR=0'+Tb_CPCACODLDR.AsString);
         end
      else
         begin
         DM1.Query1.SQL.add(' CODEMP=0'+Tb_CPCACODEMP.AsString
                           +' and LOTSEQ=0'+Tb_CPCALOTSEQ_FC.AsString
                           +' and CODLDR=0'+Tb_CPCACODLDR.AsString);
         end;
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
      end;





   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select CACODEMP,CANUMERO,CADESD,CADUP,CACODFOR,'
                     +'  CADTEMIS,CALOTSEQ_FC,CACODLDR from CADDAP where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+Tb_CPCACODEMP.AsString+' and ' )
                     +' CANUMERO=0'+Tb_CPCANUMERO.AsString
                     +' and CADESD='+chr(39)+Tb_CPCADESD.AsString+chr(39)
                     +' and CADUP=0'+Tb_CPCADUP.AsString
                     +' and CACODFOR=0'+Tb_CPCACODFOR.AsString
                     +' and CADTEMIS='+chr(39)+FormatDateTime(fdt, Tb_CPCADTEMIS.AsDateTime)+chr(39));
   try
      DM1.Query2.Open;
   except
      DM1.Query2.SQL.SaveToFile('c:\sql.txt');
      end;
   While not DM1.Query2.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.add('Delete From CADLDR where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+DM1.Query2.fieldbyName('CACODEMP').AsString+' and ')
                        +' LOTSEQ=0'+DM1.Query2.fieldByName('CALOTSEQ_FC').AsString
                        +' and CODLDR=0'+DM1.Query2.FieldByName('CACODLDR').AsString);
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
      fGerarAnt(9);

      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.Add('Delete from CADDAP where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+DM1.Query2.fieldbyName('CACODEMP').AsString+' and ' )
                        +' CANUMERO=0'+DM1.Query2.fieldbyName('CANUMERO').AsString
                        +' and CADESD='+chr(39)+DM1.Query2.fieldbyName('CADESD').AsString+chr(39)
                        +' and CADUP=0'+DM1.Query2.fieldbyName('CADUP').AsString
                        +' and CACODFOR=0'+DM1.Query2.fieldbyName('CACODFOR').AsString
                       +' and CADTEMIS='+chr(39)+FormatDateTime(fdt, DM1.Query2.fieldbyName('CADTEMIS').AsDateTime)+chr(39));
       try
          DM1.Query3.execsql;
          fdm1StartCommit;
       except
          DM1.Query3.SQL.SaveToFile('c:\sql.txt');
          end;
      DM1.Query2.Next;
      end;
   if Tb_CPCAVALORNF.AsFloat>0 then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Delete from CADNE where '
                        +' NECODEMP=0'+Tb_CPCACODEMP.AsString
                        +' and NECODFOR=0'+Tb_CPCACODFOR.AsString
                        +' and NEMODELO=:MODELO'
                        +' and NESERIE=:SERIE'
                        +' and NESUBSER=:SUBSER'
                        +' and NEDTEMIS=:DTEMIS'
                        +' and NECFO=:CFO');


      DM1.Query2.ParamByName('MODELO').AsString  :=Tb_CPCAMODELO.AsString;
      DM1.Query2.ParamByName('SERIE').AsString   :=Tb_CPCASERIE.AsString;
      DM1.Query2.ParamByName('SUBSER').AsString  :='01';
      DM1.Query2.ParamByName('DTEMIS').AsDateTime:=Tb_CPCADTEMIS.AsDateTime;
      DM1.Query2.ParamByName('CFO').AsFloat      :=Tb_CPCACFO.AsFloat;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql_Novo(DM1.Query2,919,'frm_dap','CADNE');
         end;
      end;
   BBnAtuClick(Self);
//      end;


   end;


end;

procedure TFrm_Dap.GRAVARClick(Sender: TObject);
begin
  inherited;
if Tb_CPCANUMERO.Value<=0 then
   begin
   fmensagem('Número invalido.',0,['0'],0);
   DBEdit1.SetFocus;
   exit;
   end;
if Tb_CPCADTEMIS.IsNull then
   begin
   fmensagem('data de emissão campo obrigatório!',0,['0'],0);
   dbe_dtemis.SetFocus;
   exit;
   end;
if Tb_CPCADESD.IsNull then
   begin
   fmensagem('Desdobramento/Parcela tem que ter valor.',0,['0'],0);
   DBEdit2.SetFocus;
   exit;
   end;

if Tb_CPCADTVCTO.IsNull then
   begin
   fmensagem('data de vencimento campo obrigatório!',0,['0'],0);
   dbe_dtvcto.SetFocus;
   exit;
   end;
if Tb_CPCAVALOR.Value<=0 then
   begin
   fmensagem('valor campo de preenchimento campo obrigatório!',0,['0'],0);
   DBE_valor.SetFocus;
   exit;
   end;

if Tb_CPCACODFOR.AsFloat=0 then
   begin
   MessageDlg('Código do Fornecedor inválido!',mtWarning,[mbOk],0);
   PC1.ActivePage:=tsCad;
   DBE_codfor.SetFocus;
   exit;
   end;

if Tb_CPCAQTDPARC.AsInteger<=0 then
   Tb_CPCAQTDPARC.Value:=1;
if Tb_CPCANUMPARC.AsInteger<=0 then
   Tb_CPCANUMPARC.Value:=1;
if Tb_CPCANUMPARC.AsInteger>Tb_CPCAQTDPARC.AsInteger then
   begin
   fmensagem('Numero da Parcela Maior que o a Quantidade, invalido!',0,['0'],0);
   DBE_numparc.SetFocus;
   exit;
   end;


Tb_CPCADUP.Value   := CB_DUP.ItemIndex;
if moper=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADDAP where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+Tb_CPCACODEMP.AsString+' and ' )
                     +' CANUMERO=0'+Tb_CPCANUMERO.AsString
                     +' and CADESD='+chr(39)+Tb_CPCADESD.AsString+chr(39)
                     +' and CADUP=0'+Tb_CPCADUP.AsString
                     +' and CACODFOR=0'+Tb_CPCACODFOR.AsString
                     +' and CADTEMIS='+chr(39)+FormatDateTime(fdt, Tb_CPCADTEMIS.AsDateTime)+chr(39));
//  DM1.Query1.Sql.SaveToFile('C:\SQL.TXT');

   try
      DM1.Query1.Open;
   except
      DM1.Query1.Sql.SaveToFile('C:\SQL.TXT');
      end;
   if DM1.Query1.Fields[0].AsInteger>0 then
      begin
      fmensagem('Ja Existe uma duplicata com as mesmas caracteristicas '
                 +'mude alguma informacao tipo o numero,desdobramento, '
                 +'tipo de documento, etc!',0,['0'],0);
      exit;
      end;
   end
else
   begin
   if (Tb_CPCACODEMP.AsFloat<>mdap_codemp) or
      (Tb_CPCANUMERO.AsFloat<>mdap_numero) or
      (Tb_CPCADESD.AsString<>mdap_desd) or
      (Tb_CPCADUP.AsFloat<>mdap_dup) or
      (Tb_CPCACODFOR.AsFloat<>mdap_codfor) or
      (Tb_CPCADTEMIS.AsDateTime<>mdap_dtemis) then
      begin

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select count(*) from CADDAP where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+Tb_CPCACODEMP.AsString+' and ' )
                        +' CANUMERO=0'+Tb_CPCANUMERO.AsString
                        +' and CADESD='+chr(39)+Tb_CPCADESD.AsString+chr(39)
                        +' and CADUP=0'+Tb_CPCADUP.AsString
                        +' and CACODFOR=0'+Tb_CPCACODFOR.AsString
                        +' and CADTEMIS='+chr(39)+FormatDateTime(fdt, Tb_CPCADTEMIS.AsDateTime)+chr(39));
      try
         DM1.Query1.Open;
      except
         DM1.Query1.Sql.SaveToFile('C:\SQL.TXT');
         end;
      if DM1.Query1.Fields[0].AsInteger>0 then
         begin
         fmensagem('Ja Existe uma duplicata com as mesmas caracteristicas '
                  +'mude alguma informacao tipo o numero,desdobramento, '
                  +'tipo de documento, etc!',0,['0'],0);
         exit;
         end;
      end;
   end;



if Tb_CPCASTATUS.AsInteger<>2 then
   begin
   if Tb_CPCACODLDR.Value>0 then
      begin
      if not flcadldr(0,Tb_CPCACODEMP.AsInteger,Tb_CPCALOTSEQ_FC.AsInteger,Tb_CPCACODLDR.AsString) then
         begin
         if (Tb_CPCASTATUS.Value=2) and (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
            begin
            if Tb_CPCADTBX.AsDateTime<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
               begin
               fmensagem('Registro Não pode ser Alterado. Caixa Bloqueado para Movimento até: '
                  +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime),0,['0'],0);
               exit;
               end;
            end;
         DM1.Tb_LDR.Append;
         if Tb_CPCASTATUS.Value=2 then
            begin
            DM1.Tb_LDRDATAREAL.Value:=Tb_CPCADTBX.Value;
            DM1.Tb_LDRVALORR.Value  :=Tb_CPCAVALPAG.Value;
            DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALPAG.Value; // valor
            if DM1.Tb_LDRDATAREAL.Value>pdatanula then
               DM1.Tb_LDRDTSALDO.AsDateTime  := DM1.Tb_LDRDATAREAL.Value
            else
               DM1.Tb_LDRDTSALDO.AsDateTime  := pdatanula;
            end
         else
            begin
            DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALOR.Value-Tb_CPCAVALPAG.Value; // valor
            end;
         end
      else
         begin
         if (Tb_CPCASTATUS.Value=2) and (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
            begin
            if (DM1.Tb_LDRDATAREAL.AsDateTime<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime) AND
               (Arredonda(DM1.Tb_LDRVALORR.Value,DM1.Tb_PargerPCASAS.AsInteger)<>
               Arredonda(Tb_CPCAVALPAG.Value,DM1.Tb_PargerPCASAS.AsInteger) )then
               fmensagem('Registro Não pode ser Alterado. Caixa Bloqueado para Movimento até: '
                  +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime)
                  +'. Data do Movimento deste: '+formatDateTime(fdt2, DM1.Tb_LDRDATAREAL.AsDateTime)
                  ,0,['0'],0);
            exit;
            end;
         DM1.Tb_LDR.Edit;
         if Tb_CPCASTATUS.Value=2 then
            begin
            DM1.Tb_LDRVALORR.Value  :=Tb_CPCAVALPAG.Value;
            DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALPAG.Value; // valor
            end
         else
            begin
            DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALOR.Value-Tb_CPCAVALPAG.Value; // valor
            end;
         end;
      end
   else
      begin
      if moper=8 then
         begin
         if not flcadldr(0,Tb_CPCACODEMP.AsInteger,Tb_CPCALOTSEQ_FC.AsInteger,'0'+Trim(Tb_CPCACODLDR.AsString)) then
            begin
            if (Tb_CPCASTATUS.Value=2) and (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
               begin
               if Tb_CPCADTBX.AsDateTime<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
                  begin
                  fmensagem('Registro Não pode ser Alterado. Caixa Bloqueado para Movimento até: '
                     +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime),0,['0'],0);
                  exit;
                  end;
               end;
            DM1.Tb_LDR.Append;
            if Tb_CPCASTATUS.Value=2 then
               begin
               DM1.Tb_LDRDATAREAL.Value:=Tb_CPCADTBX.Value;
               DM1.Tb_LDRVALORR.Value  :=Tb_CPCAVALPAG.Value;
               DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALPAG.Value; // valor
               if DM1.Tb_LDRDATAREAL.Value>pdatanula then
                  DM1.Tb_LDRDTSALDO.AsDateTime  := DM1.Tb_LDRDATAREAL.Value
               else
                  DM1.Tb_LDRDTSALDO.AsDateTime  := pdatanula;
               end
            else
               begin
               DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALOR.Value-Tb_CPCAVALPAG.Value; // valor
               end;
            end
         else
            begin
            if (Tb_CPCASTATUS.Value=2) and (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
               begin
               if (DM1.Tb_LDRDATAREAL.AsDateTime<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime) AND
                  (Arredonda(DM1.Tb_LDRVALORR.Value,DM1.Tb_PargerPCASAS.AsInteger)<>
                  Arredonda(Tb_CPCAVALPAG.Value,DM1.Tb_PargerPCASAS.AsInteger)) then
                  fmensagem('Registro Não pode ser Alterado. Caixa Bloqueado para Movimento até: '
                     +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime)
                     +'. Data do Movimento deste: '+formatDateTime(fdt2, DM1.Tb_LDRDATAREAL.AsDateTime)
                     ,0,['0'],0);
                  exit;
               end;
            DM1.Tb_LDR.Edit;
            if Tb_CPCASTATUS.Value=2 then
               begin
               DM1.Tb_LDRVALORR.Value  :=Tb_CPCAVALPAG.Value;
               DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALPAG.Value; // valor
               end
            else
               begin
               DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALOR.Value-Tb_CPCAVALPAG.Value; // valor
               end;
            end;
         end
      else
         begin
         if (Tb_CPCASTATUS.Value=2) and (DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime>pDataNula) then
            begin
            if Tb_CPCADTBX.AsDateTime<=DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime then
               begin
               fmensagem('Registro Não pode ser Alterado. Caixa Bloqueado para Movimento até: '
                  +FormatDateTime(fdt2, DM4.Tb_ParGer02PG2DTBLOQCX.AsDateTime),0,['0'],0);
               exit;
               end;
            end;
         if not DM1.Tb_LDR.Active then
            flcadldr(0,Tb_CPCACODEMP.AsInteger,0,'9999999');
         DM1.Tb_LDR.Append;
         if Tb_CPCASTATUS.Value=2 then
            begin
            DM1.Tb_LDRDATAREAL.Value:=Tb_CPCADTBX.Value;
            DM1.Tb_LDRVALORR.Value  :=Tb_CPCAVALPAG.Value;
            DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALPAG.Value; // valor
            if DM1.Tb_LDRDATAREAL.Value>pdatanula then
               DM1.Tb_LDRDTSALDO.AsDateTime  := DM1.Tb_LDRDATAREAL.Value
            else
               DM1.Tb_LDRDTSALDO.AsDateTime  := pdatanula;
            end
         else
            begin
            DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALOR.Value-Tb_CPCAVALPAG.Value; // valor
            end;
         end;
      end;
   if Tb_CPCACODCTA.AsInteger<>0 then
      DM1.Tb_LDRCODBCO.Value  :=Tb_CPCACODCTA.AsInteger
   else
      DM1.Tb_LDRCODBCO.Value  :=codcai;
   if Tb_CPCACODEMP.AsInteger>0 then
      DM1.Tb_LDRCODEMP.Value  :=Tb_CPCACODEMP.Value
   else
      DM1.Tb_LDRCODEMP.Value  :=codemp;
   DM1.Tb_LDRDATADP.Value  :=Tb_CPCADTVCTO.Value;
   DM1.Tb_LDRDATAREF.Value :=Tb_CPCADTEMIS.Value;
   DM1.Tb_LDRNUMDOC.Value  :=Copy(CB_DUP.Text,1,3)+'-'+FormatFloat('000000',Tb_CPCANUMERO.Value)+'-'+Tb_CPCADESD.Value;
   DM1.Tb_LDRSTATUS.Value:=0;
   DM1.Tb_LDRORIGEM.Value:=03;
   DM1.Tb_LDRTIPO.Value  :='FR';
   DM1.Tb_LDRNOME.Value  :=Tb_CPnomefor.Value;

   if Tb_CPCACHAVEP.Value>0 then
      DM1.Tb_LDRLOCDEP.Value:=1
   else
      DM1.Tb_LDRLOCDEP.Value:=2;
   DM1.Tb_LDRCODIGO.Value:=Tb_CPCACODFOR.Value;
   DM1.Tb_LDRDESCMV.Value:=Tb_CPCADESCMV.Value;
   DM1.Tb_LDRCODCC.Value :=Tb_CPCACODCC.Value;
   DM1.Tb_LDRCODDEP.Value:=Tb_CPCACODDEP.Value;
   DM1.Tb_LDRNOMBCO.Value:=Tb_CPCANOMCTA.Value;
   DM1.Tb_LDRNOMDEP.Value:=Tb_CPCANOMDEP.Value;
   DM1.Tb_LDRNOMCCU.Value:=Tb_CPCANOMCC.Value;
   DM1.Tb_LDRNATDC.Value :=Tb_CPCANATDC.Value;
   DM1.Tb_LDRLOTMOV.Value:=lotmov;


   if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
      DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value)+' No.'+DM1.Tb_LDRNUMDOC.Value
   else
      DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value);
   DM1.Tb_LDRDESCMV.Value:=Trim(DM1.Tb_LDRDESCMV.Value)+' '+DM1.Tb_LDRNOME.Value;
   if length(DM1.Tb_LDRDESCMV.Value)>50 then
      DM1.Tb_LDRDESCMV.Value:=copy(DM1.Tb_LDRDESCMV.Value,1,50);
   DM1.Tb_LDRDESCMV.Value  :=DM1.Tb_LDRDESCMV.Value;

   if Tb_CPCADUP.AsInteger=5 then
      begin
      DM1.Tb_LDRDATAREAL.Value:=Tb_CPCADTEMIS.Value;
      DM1.Tb_LDRVALORR.Value  :=Tb_CPCAVALOR.Value;
      DM1.Tb_LDRVALORP.Value  :=Tb_CPCAVALOR.Value; // valor
      end;

   DM1.Tb_LDR.Post;
   Tb_CPCACODLDR.Value:=DM1.Tb_LDRCODLDR.Value;
   end;
fGerarAnt(mOper);

Tb_CPCADUP.Value   := CB_DUP.ItemIndex;

Tb_CPCACODUSR.Value:=codusr;
Tb_CPCADTALT.Value :=now;
Tb_CPCAHRALT.Value :=FormatDateTime(fhr, time);
Tb_CP.Post;
//if (moper=8) and (mAntNe_Valor>0) or (Tb_CPCAVALORNF.AsFloat<>0) then
if (moper=8) and (mAntNe_Valor>0) then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('Delete from CADNE where '
                     +' NECODEMP=0'+FloattoStr(mAntNe_Codemp)
                     +' and NECODFOR=0'+FloattoStr(mAntNe_codfor)
                     +' and NEMODELO=:MODELO'
                     +' and NESERIE=:SERIE'
                     +' and NESUBSER=:SUBSER'
                     +' and NEDTEMIS=:DTEMIS'
                     +' and NECFO=:CFO');


   DM1.Query2.ParamByName('MODELO').AsString  :=mAntNe_Modelo;
   DM1.Query2.ParamByName('SERIE').AsString   :=mAntNe_Serie;
   DM1.Query2.ParamByName('SUBSER').AsString  :='01';
   DM1.Query2.ParamByName('DTEMIS').AsDateTime:=mAntNe_Dtemis;
   DM1.Query2.ParamByName('CFO').AsFloat      :=mAntNe_CFOP;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query2,919,'frm_dap','CADNE');
      end;
   end;
if (Tb_CPCAVALORNF.AsFloat<>0) then
   fIncluirCADNE(0);



CANCELAR.Click;


end;

procedure TFrm_Dap.CANCELARClick(Sender: TObject);
begin
  inherited;
Tb_CP.Cancel;
DBEdit1.Enabled      :=true;
DBEdit2.Enabled      :=true;
cb_dup.Enabled     :=true;
DBE_codfor.Enabled      :=true;
dbe_dtemis.Enabled      :=true;
DBE_valor.Enabled      :=true;
end;

procedure TFrm_Dap.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If Tb_CP.State in [dsInsert, dsEdit] then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: Tb_CP.Post;
      mrNo : Tb_CP.Cancel;
      else CanClose:=False;
      end;
   end;

if dap_ori='' then
   begin
   if Tb_CP.Filtered then
      begin
      Tb_CP.Filter:='';
      Tb_CP.Filtered:=false;
      end;
   end;
dap_ori := '';
end;

procedure TFrm_Dap.FormCreate(Sender: TObject);
var
x: Integer;
begin
  inherited;
tsEspeciaisMaster.TabVisible:=false;

Tb_CPCAVALORNF.DisplayFormat   :=mcasas;
Tb_CPCAALIQ.DisplayFormat      :=mcasas;
Tb_CPCABASEN.DisplayFormat     :=mcasas;
Tb_CPCAICMSN.DisplayFormat     :=mcasas;
Tb_CPCADTENT.DisplayFormat     :=fdt2;

Tb_CPCAVALOR.DisplayFormat   :=mcasas;
Tb_CPCAVALOR_ACRES.DisplayFormat   :=mcasas;
Tb_CPCAVALDES.DisplayFormat  :=mcasas;
Tb_CPCADESC.DisplayFormat    :=mcasas;
Tb_CPCAJUROS.DisplayFormat   :=mcasas;
Tb_CPCAVALPAG.DisplayFormat  :=mcasas;
Tb_CPvaldev.DisplayFormat    :=mcasas;

middap_src:='';

edt_datini.Text:='01/'+formatdatetime('mm/yyy', date-7);
edt_datfin.Text:=formatdatetime(fdt2, date);

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

flcadldr(0,0,0,'99999999');
dap_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADDAP') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP where 1=1 '
                  + fFiltrosMultiEmpresa('DPCODEMP','CADDEP',codemp)
                   );
DM1.Query5.Open;
DBCB_NOMDEP.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO where 1=1 '
                     + fFiltrosMultiEmpresa('BCCODEMP','CADBCO',codemp)
                       );

DM1.Query5.Open;
DBCB_NOMBCO.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
   DM1.Query5.Next;
   end;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU WHERE 1=1 '
                      + fFiltrosMultiEmpresa('CCCODEMP','CADCCU',codemp)
                      );
DM1.Query5.Open;
DBCB_NOMCCU.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DM1.Query5.Next;
   end;
fCarregaDadosCaixa('CADDAP0');

cb_dup.Items.Clear;
for x:=0 to high(ptpdoc)-1 do
   begin
   cb_dup.Items.Add(ptpdoc[x]);
   end;

if codemp>99 then
   begin
   DBCB_EXTRA.ValueChecked:=IntToStr(codemp);
   DBCB_EXTRA.ValueUnchecked:=IntToStr(codemp-100);
   end
else
   begin
   DBCB_EXTRA.ValueChecked:=IntToStr(codemp+100);
   DBCB_EXTRA.ValueUnchecked:=IntToStr(codemp);
   end;
if codusr=1111 then
   begin
   dbe_status.Enabled:=true;
   dbe_valpag.Enabled:=true;
   end
else
   begin
   dbe_status.Enabled:=false;
   dbe_valpag.Enabled:=false;
   end;
PC1.ActivePageIndex:=0;
end;

procedure TFrm_Dap.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if dap_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;

procedure TFrm_Dap.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if dap_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      dap_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Dap.CAMPOExit(Sender: TObject);
begin
  inherited;
if (CAMPO.ItemIndex>1) and (CAMPO.ItemIndex<4) then
   begin
   Edit1.Text:='/  /';
   Edit1.EditMask:='!99/99/9999;1; ';
   end
else
//   edit1.EditMask:='##############;1; ';
   edit1.EditMask:='';

end;




function tfrm_Dap.fdap01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to Tb_CP.FieldCount-1 do
   begin
   if Tb_CP.Fields[x].FieldKind=fkCalculated then
      Continue;
   if UpperCase(copy(Tb_CP.Fields[x].FieldName,1,2))='ID' then
      minstru:=minstru+v+' ROWID as '+Tb_CP.Fields[x].FieldName
   else
      minstru:=minstru+v+Tb_CP.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADDAP where CACODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
Tb_CP.Close;
Tb_CP.SQL.Clear;
Tb_CP.SQL.add(minstru);
Tb_CP.Open;

BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBNavigator2.Enabled:=False; 
DBGrid1.Enabled     :=False;
end;




procedure TFrm_Dap.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=114 then
   begin
   DM4.Tb_Leitor.Close;
   DM4.Tb_Leitor.ParamByName('NOMECOMP').AsString:=pNomTer;
   DM4.Tb_Leitor.ParamByName('MARCABAL').AsFloat :=0;
   DM4.Tb_Leitor.Open;
   if DM4.Tb_Leitor.Eof then
      begin
      fmensagem('Leitor Optico não configurado, para configura-lo entre em'+#13
                +'Sistema->Parametros->Leitor Optico!',0,['0'],0);
      exit;
      end;
   if not flposdoc(0,0,'') then
      begin
      fmensagem('Campos do Leitor não Configurado, para configura-lo entre em'+#13
                +'Sistema->Parametros->Leitor Optico!',0,['0'],0);
      exit;
      end;
   if Frm_LOptica=nil then
      Application.CreateForm(TFrm_LOptica, Frm_LOptica)
   else
      begin
      Frm_LOptica.Free;
      Frm_LOptica:=nil;
      Application.CreateForm(TFrm_LOptica, Frm_LOptica);
      end;
   Frm_LOptica.ShowModal;
   if lo_banco>0 then
      Tb_CPCABANCO.Value:=lo_banco;
   if lo_dtvcto>pdatanula then
      Tb_CPCADTVCTO.Value:=lo_dtvcto;
   if lo_valor>0 then
      Tb_CPCAVALOR.Value:=lo_valor;
   if Trim(lo_nosnum)<>'' then
      Tb_CPCANOSNUM.Value:=lo_nosnum;
   if lo_numero>0 then
      Tb_CPCANUMERO.Value:=lo_numero;
   DBEdit1.SetFocus;
   Frm_LOptica.Free;
   Frm_LOptica:=nil;
   end;

end;

procedure TFrm_Dap.Edit1Exit(Sender: TObject);
begin
  inherited;
if CAMPO.ItemIndex=4 then
   Edit1.Text:=Formatfloat(mcasas, ValFloat(Edit1.Text))
else if CAMPO.ItemIndex<2 then
   begin
   if fsonumero(EDIT1.Text)<=0 then
      Edit1.Text:=''
   else
      edit1.Text:=fdeixanum(EDIT1.Text);
   end;


end;

procedure TFrm_Dap.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
if (Tb_CPCASTATUS.Value=1) then
   begin
   DBGrid1.Canvas.Font.Color:=clBlue;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if (Tb_CPCASTATUS.Value=0) and (Tb_CPCADTVCTO.Value<=Date)
   and (Tb_CPCADUP.AsInteger<>5) then
   begin
   DBGrid1.Canvas.Font.Color:=clRed;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
if (Tb_CPCADUP.AsInteger=5) then
   begin
   DBGrid1.Canvas.Brush.Color:=clGreen;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

if Tb_CPCASTATUS.Value=2 then
   begin
   DBGrid1.Canvas.Brush.Color:=$00EBEBEB;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;


end;

procedure TFrm_Dap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 Tb_CP_imagem.Close;

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Dap.DBEdit24KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Tb_CP.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      Tb_CPCACODCC.Value:=fChamaCCU(0,'frm_Dap','');
      Tb_CPCANATDC.Value:=DM1.Tb_CCUCCNAT.Value;
      DBEdit24Exit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU WHERE 1=1 '
                      + fFiltrosMultiEmpresa('CCCODEMP','CADCCU',codemp)
                      );

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
   end;


end;

procedure TFrm_Dap.DBEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Tb_CP.State in [DsEdit, DsInsert] then
   begin
   if key=114 then
      begin
      Tb_CPCACODDEP.Value:=fChamaDeptoCX(0,'frm_Dap','');
      DBEdit21Exit(Self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP where 1=1 '
                      + fFiltrosMultiEmpresa('DCODEMP','CADDEP',codemp)        );
      DM1.Query5.Open;
      DBCB_NOMDEP.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;

      end;
   end;


end;

procedure TFrm_Dap.DBEdit28Exit(Sender: TObject);
begin
  inherited;
macbanco:=false;
Tb_CPCANOMCTA.Value:=' ';

if (Tb_CPCACODCTA.IsNull) or (Tb_CPCACODCTA.Value=0) then
   exit;
if Tb_CP.State in [dsEdit,dsInsert] then
   begin
   if not fTestarCADBCO(false,Tb_CPCACODCTA.AsString) then
      begin
      DBEdit28.SetFocus;
      end
   else
      begin
      Tb_CPCANOMCTA.Value:=mtemp_nome;
      if not DBCB_NOMBCO.Focused then
         macbanco:=true;
      end;
   end;
end;

procedure TFrm_Dap.DBEdit28KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_CPCACODCTA.Value:=ValFloat(fChamaBco(0,'frm_Dap',Key));
   DBEdit28Exit(self);
   key:=#0;
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO where 1=1 '
                      + fFiltrosMultiEmpresa('BCCODEMP','CADBCO',codemp)
                       );
   DM1.Query5.Open;
   DBCB_NOMBCO.Items.Clear;
   While not DM1.Query5.Eof do
      begin
      DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
      DM1.Query5.Next;
      end;
   end;

end;

procedure TFrm_Dap.DBEdit21Exit(Sender: TObject);
begin
  inherited;
macdep:=false;
if Tb_CP.State in [dsEdit,dsInsert] then
   begin
   Tb_CPCANOMDEP.Value:=' ';

   if Trim(Tb_CPCACODDEP.Value)<>'' then
      begin
      if not fTestarCADDEP_CX(false,Tb_CPCACODDEP.AsString) then
         DBEdit21.SetFocus
      else
         begin
         Tb_CPCANOMDEP.Value:=mtemp_nome;
         if not DBCB_NOMDEP.Focused then
            macdep:=true;
         end;
      end;
   end;
end;

procedure TFrm_Dap.DBEdit24Exit(Sender: TObject);
begin
  inherited;
macccu:=false;
if Tb_CP.State in [dsEdit,dsInsert] then
   begin
   Tb_CPCANOMCC.Value:=' ';
   if Trim(Tb_CPCACODCC.Value)<>'' then
      begin
      if not fTestarCADCC(false,Tb_CPCACODCC.AsString) then
         begin
         DBEdit24.SetFocus;
         end
      else
         begin
         Tb_CPCANATDC.Value:=mtemp_natdc;
         Tb_CPCANOMCC.Value:=mtemp_nome;
         if not DBCB_NOMCCU.Focused then
            macccu:=true;
         end;
      end;
   end;

end;

procedure TFrm_Dap.DBCB_NOMBCOEnter(Sender: TObject);
begin
  inherited;
if Tb_CP.State in [dsInsert,DsEdit] then
   begin
   with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(Tb_CPCANOMCTA.Value
                                 +'['+Tb_CPCACODCTA.AsString+']');
   DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
   lbl_obs.Top:=15;
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macbanco then
   DBEdit21.SetFocus;
macbanco:=false;


end;

procedure TFrm_Dap.DBCB_NOMDEPEnter(Sender: TObject);
begin
  inherited;
if Tb_CP.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(Tb_CPCANOMDEP.Value
                                    +'['+Tb_CPCACODDEP.AsString+']');
   DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
   lbl_obs.Top:=35;
   if not lbl_obs.Visible then
     lbl_obs.Visible:=true;
   end;
if macdep then
   DBEdit24.SetFocus;
macdep:=false;


end;

procedure TFrm_Dap.DBCB_NOMCCUEnter(Sender: TObject);
begin
  inherited;
if Tb_CP.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(Tb_CPCANOMCC.AsString
                                    +'-'+Tb_CPCANATDC.AsString
                                    +'['+Tb_CPCACODCC.AsString+']');
   DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
   lbl_obs.Top:=55;
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macccu then
   dbEdit25.SetFocus;
macccu:=false;


end;

procedure TFrm_Dap.DBCB_NOMBCOExit(Sender: TObject);
begin
  inherited;
//if DBCB_NOMBCO.ItemIndex<0 then
   with DBCB_NOMBCO do ItemIndex:=Items.IndexOf(DBCB_NOMBCO.Text);
DBCB_NOMBCO.text:=DBCB_NOMBCO.Items.Strings[DBCB_NOMBCO.ItemIndex];
if trim(DBCB_NOMBCO.Text)='' then
   Tb_CPCACODCTA.Value:=0
else
   begin
   Tb_CPCACODCTA.Value:=fsonumero(fExtraiCodigoEntreChaves(DBCB_NOMBCO.Text));
   DBEdit28Exit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_Dap.DBCB_NOMDEPExit(Sender: TObject);
begin
  inherited;
//if DBCB_NOMDEP.ItemIndex<0 then
   with DBCB_NOMDEP do ItemIndex:=Items.IndexOf(DBCB_NOMDEP.Text);
DBCB_NOMDEP.text:=DBCB_NOMDEP.Items.Strings[DBCB_NOMDEP.ItemIndex];
if trim(DBCB_NOMDEP.Text)='' then
   Tb_CPCACODDEP.Value:=''
else
   begin
   Tb_CPCACODDEP.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEP.Text);
   DBEdit21Exit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_Dap.DBCB_NOMCCUExit(Sender: TObject);
begin
  inherited;
//if DBCB_NOMCCU.ItemIndex<0 then
   with DBCB_NOMCCU do ItemIndex:=Items.IndexOf(DBCB_NOMCCU.Text);
DBCB_NOMCCU.text:=DBCB_NOMCCU.Items.Strings[DBCB_NOMCCU.ItemIndex];
if trim(DBCB_NOMCCU.Text)='' then
   Tb_CPCACODCC.Value:=''
else
   begin
   Tb_CPCACODCC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCU.Text);
   DBEdit24Exit(Self);
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_Dap.dbrg_dupExit(Sender: TObject);
begin
  inherited;
if Tb_CPCACODFOR.AsFloat<>0 then
   DBE_codforExit(Self);
end;

procedure TFrm_Dap.DBCB_NOMBCOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Tb_CP.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      Tb_CPCABANCO.Value:=ValFloat(fChamaBco(0,'frm_Dap',''));
      DBCB_NOMBCOExit(self);
      key:=0;

      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO where 1=1 '
                      + fFiltrosMultiEmpresa('BCCODEMP','CADBCO',codemp)
                       );

      DM1.Query5.Open;
      DBCB_NOMBCO.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;


end;

procedure TFrm_Dap.SB_DIVIDEClick(Sender: TObject);
begin
  inherited;
if Tb_CP.State in [dsedit,dsInsert] then
   begin
   fmensagem('O Titulo Esta em modo de alteração Favor Grava-lo Primeiro!',0,['0'],0);
   exit;
   end;

if Tb_CPCASTATUS.AsInteger>0 then
   begin
   fmensagem('Valido somente para títulos em aberto!',0,['0'],0);
   exit;
   end;

if Frm_DivTit_Pagar=nil then
   Application.CreateForm(TFrm_DivTit_Pagar, Frm_DivTit_Pagar)
else
   begin
   Frm_DivTit_Pagar.Free;
   Frm_DivTit_Pagar:=nil;
   Application.CreateForm(TFrm_DivTit_Pagar, Frm_DivTit_Pagar);
   end;
Frm_DivTit_Pagar.CODBCO.Text:=Tb_CPCABANCO.AsString;
Frm_DivTit_Pagar.NOMBCO.Text:=Tb_CPnombco.AsString;
Frm_DivTit_Pagar.edt_dtprimvcto.Date:=Tb_CPCADTVCTO.AsDateTime;

if flcaddap(6,Tb_CPCACODEMP.AsInteger,0,Tb_CPCANUMERO.AsString
  ,Tb_CPCADESD.AsString
  ,Tb_CPCACODFOR.AsString
  ,FormatDateTime(fdt2,Tb_CPCADTEMIS.AsDateTime),'0','') then
  begin
  Frm_DivTit_Pagar.ShowModal;
  end;

mdap_codemp:=Tb_CPCACODEMP.AsFloat;
mdap_codfor:=Tb_CPCACODFOR.AsFloat;

mdap_numero:=Tb_CPCANUMERO.AsFloat;
mdap_desd  :=Tb_CPCADESD.asString;
mdap_dup   :=Tb_CPCADUP.AsFloat;
mdap_dtemis:=Tb_CPCADTEMIS.AsDatetime;

// inicio
Tb_CP.close;
Tb_CP.SQL.clear;
Tb_CP.SQL.Add('Select CADDAP.*,ROWID AS IDDAP from CADDAP '
             +' where ');
if la_Empresas<>'' then
   begin
   Tb_CP.SQL.Add(la_Empresas+' and ');
   end;
Tb_CP.SQL.Add('  CANUMERO=0'+floattostr(mdap_numero));
Tb_CP.SQL.Add(' and CACODFOR=0'+FloatToStr(mdap_codfor));
Tb_CP.SQL.Add(' and CADTEMIS='+chr(39)+FormatDateTime(fdt,mdap_dtemis)+chr(39));
Tb_CP.SQL.Add(' order by CANUMERO,CADESD ');
Tb_CP.Open;
Frm_DivTit_Pagar.Free;
Frm_DivTit_Pagar:=NIL;

{
Alterar.Click;
if Tb_CP.State in [dsEdit,dsInsert] then
   begin
   moper:=1;
   mdap_codemp:=Tb_CPCACODEMP.AsFloat;
   mdap_numero:=Tb_CPCANUMERO.AsFloat;
   mdap_desd  :=Tb_CPCADESD.asString;
   mdap_dup   :=Tb_CPCADUP.AsFloat;
   mdap_dtemis:=Tb_CPCADTEMIS.AsDatetime;
   GRAVARClick(Self);
   CAMPO.ItemIndex:=0;
   CAMPOExit(Self);
   Edit1.Text:=Tb_CPCANUMERO.AsString;
   BBnAtuClick(Self);
   end;
}
end;

procedure TFrm_Dap.Src_DapDataChange(Sender: TObject; Field: TField);
var
mIdDap: string;
begin
  inherited;
if not (Tb_CP.State in [dsEdit,dsInsert]) then
   begin
   CB_DUP.ItemIndex:=Tb_CPCADUP.AsInteger;
   end;


if (moper=0) and (Tb_CP.State in [dsEdit,dsInsert]) then
else
   begin
   if Tb_CPCACOMPETENCIA_DTINICIO.AsDateTime>pdatanula then
      begin
      edt_competencia_mes.Text         :=FormatDatetime('mm', Tb_CPCACOMPETENCIA_DTINICIO.AsDateTime);
      edt_competencia_ano.Text         :=FormatDatetime('yyyy', Tb_CPCACOMPETENCIA_DTINICIO.AsDateTime);
      end
   else
      begin
      edt_competencia_mes.Clear;
      edt_competencia_ano.Clear;
      end;
  if Tb_CPCACOMPETENCIA_TIPO.asinteger=1 then
     begin
     edt_competencia_mes.Visible  :=false;
     lbl_competencia_barra.Visible:=false;
     end
  else
     begin
     edt_competencia_mes.Visible  :=true;
     lbl_competencia_barra.Visible:=true;
     end;





   if trim(Tb_CPIDDAP.AsString)='' then
      begin
      if not fLerGenerico01_campos('CADDAP','ROWID',' CANUMERO='+fdeixanum(Tb_CPCANUMERO.AsString)
         +' and CADESD='+QuotedStr(Tb_CPCADESD.AsString)+' and CACODFOR='+fdeixanum(Tb_CPCACODFOR.AsString)
         +' and CADTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_CPCADTEMIS.asdatetime))
         +' and CADUP='+fdeixanum(Tb_CPCADUP.AsString)
         +' and CACODEMP='+fdeixanum(Tb_CPCACODEMP.AsString)  ,mIdDap) then
         begin
//         MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
         exit;
         end;
      end
   else
      mIdDap:=Tb_CPIDDAP.AsString;

   if (mAlterouObs=false) AND  (midDap_src<>mIdDap)  then
      begin
      flercadobsdap;


      if DM1_ADO.ADOConnection1.connected=false then
         begin
         DM1_ADO.ADOConnection1.Close;
         DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
         DM1_ADO.ADOConnection1.Open;
         end;
      Tb_CP_Imagem.close;
      Tb_CP_imagem.Connection:=DM1_ADO.ADOConnection1;
      Tb_CP_Imagem.Parameters.ParamByName('ROWID').Value    :=mIdDap;
      Tb_CP_Imagem.open;
      middap_src :=mIdDap;
      end;
   end;



end;
procedure TFrm_Dap.fLercadobsdap;
begin

Tb_CP_Obs.close;
Tb_CP_Obs.SQL.Clear;
Tb_CP_obs.Sql.Add('Select CAOBS from CADDAP where CANUMERO=:NUMERO '
                 +' and CADESD=:DESD '
                 +' and CACODEMP=:CODEMP '
                 +' and CACODFOR=:CODFOR '
//                 +' and CASEQ=:SEQ '
                 +' and CADTEMIS=:DTEMIS ');
Tb_CP_Obs.ParamByName('NUMERO').AsFloat   :=Tb_CPCANUMERO.AsFloat;
Tb_CP_Obs.ParamByName('DESD').AsString    :=Tb_CPCADESD.AsString;
Tb_CP_Obs.ParamByName('CODEMP').AsFloat   :=Tb_CPCACODEMP.AsFloat;
Tb_CP_Obs.ParamByName('CODFOR').AsFloat   :=Tb_CPCACODFOR.AsFloat;
//Tb_CP_Obs.ParamByName('SEQ').AsFloat      :=Tb_CPCASEQ.AsFloat;
Tb_CP_Obs.ParamByName('DTEMIS').AsDateTime:=Tb_CPCADTEMIS.AsFloat;
try
   Tb_CP_Obs.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Tb_CP_obs,1870,'SGE '+e.message,'CADDAP');
   end;
   end;
{
if Tb_CP_Obs.IsEmpty then
   Showmessage('nao encontrado')
else
   ShowMessage('tITULO '+Tb_CP_ObsCAOBS.AsString);
}   
end;

procedure TFrm_Dap.cb_listarClick(Sender: TObject);
begin
  inherited;
if cb_listar.ItemIndex=1 then
   begin
   Tb_CP.Filter:='CASTATUS<2';
   Tb_CP.Filtered:=true;
   end
else if cb_listar.ItemIndex=2 then
   begin
   Tb_CP.Filter:='CASTATUS>1';
   Tb_CP.Filtered:=true;
   end
else
   begin
   Tb_CP.Filter:='';
   Tb_CP.Filtered:=false;
   end;

end;

procedure TFrm_Dap.sbnformaClick(Sender: TObject);
var
mqtdd,mqtdf,mini:Integer;
Form_forma_pag:tFrm_FormaPgto;

begin
  inherited;
if not Tb_CP.Active then
   begin
   fmensagem('Favor Aplicar a Seleção!',0,['0'],0);
   exit;
   end;
if Tb_CPCASTATUS.Value<1 then
   begin
   fmensagem('Título Em Aberto!',0,['0'],0);
   exit;
   end;
Application.CreateForm(TFrm_FormaPgto, Form_Forma_Pag);
Form_forma_pag.lbl_obs.Caption:='Titulo '+Tb_CPCANUMERO.AsString+'/'+Tb_CPCADESD.AsString+' Valor: '+formatFloat(mcasas, Tb_CPCAVALOR.AsFloat)
                              +' Vencimento '+FormatDateTime(fdt2, Tb_CPCADTVCTO.AsDateTime);
Form_Forma_Pag.fCarregarFormas(1,Tb_CPCANUMERO.AsFloat,Tb_CPCACODFOR.AsFloat,Tb_CPCADESD.Asstring,Tb_CPCADUP.Asinteger
,Tb_CPCACODEMP.asinteger,0,Tb_CPCADTEMIS.AsDateTime);
Form_Forma_Pag.ShowModal;
Freeandnil(Form_Forma_pag);

end;

procedure TFrm_Dap.sbRestaurarClick(Sender: TObject);
begin
  inherited;
if fMensagem('Quer Realmente Retornar Este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CADDAP '
                      +'( '
                     +' CACODEMP  '
                     +',CANUMERO  '
                     +',CADESD '
                     +',CACODFOR '
                     +',CADTEMIS '
                     +',CASEQ '
                     +',CAVALOR  '
                     +'  ,CADUP '
                     +'  ,CADTVCTO '
                     +'  ,CASTATUS '
                     +'  ,CAVALDES '
                     +'  ,CADTDESC  '
                     +'  ,CADESC     '
                     +'  ,CADEVOL     '
                     +'  ,CAJUROS     '
                     +'  ,CABANCO     '
                     +'  ,CALOTSEQ_LB '
                     +'  ,CALOTE      '
                     +'  ,CALOTSEQ_CP '
                     +'  ,CACHAVEP    '
                     +'  ,CADTBX      '
                     +'  ,CADTPAG     '
                     +'  ,CAVALPAG    '
                     +'  ,CAUSRBAI    '
                     +'  ,CACAIXA     '
                     +'  ,CALOTSEQ_FC '
                     +'  ,CACODLDR    '
                     +'  ,CAOBS       '
                     +'  ,CACODUSR    '
                     +'  ,CADTINC     '
                     +'  ,CADTALT     '
                     +'  ,CAHRALT     '
                     +'  ,CANOSNUM    '
                     +'  ,CATEMBOL    '
                     +'  ,CALEMAT     '
                     +'  ,CACODCTA    '
                     +'  ,CANOMCTA    '
                     +'  ,CACODCC     '
                     +'  ,CANOMCC     '
                     +'  ,CANATDC     '
                     +'  ,CACODDEP    '
                     +'  ,CANOMDEP    '
                     +'  ,CADESCMV    '
                     +') '
                     +' Select '
                     +' CACODEMP  '
                     +',CANUMERO  '
                     +',CADESD '
                     +',CACODFOR '
                     +',CADTEMIS '
                     +',CASEQ '
                     +',CAVALOR  '
                     +'  ,CADUP '
                     +'  ,CADTVCTO '
                     +'  ,0 as CASTATUS '
                     +'  ,CAVALDES '
                     +'  ,CADTDESC  '
                     +'  ,CADESC     '
                     +'  ,CADEVOL     '
                     +'  ,CAJUROS     '
                     +'  ,CABANCO     '
                     +'  ,CALOTSEQ_LB '
                     +'  ,CALOTE      '
                     +'  ,CALOTSEQ_CP '
                     +'  ,CACHAVEP    '
                     +'  ,CADTBX      '
                     +'  ,CADTPAG     '
                     +'  ,CAVALPAG    '
                     +'  ,CAUSRBAI    '
                     +'  ,CACAIXA     '
                     +'  ,CALOTSEQ_FC '
                     +'  ,CACODLDR    '
                     +'  ,CAOBS       '
                     +'  ,CACODUSR    '
                     +'  ,CADTINC     '
                     +'  ,CADTALT     '
                     +'  ,CAHRALT     '
                     +'  ,CANOSNUM    '
                     +'  ,CATEMBOL    '
                     +'  ,CALEMAT     '
                     +'  ,CACODCTA    '
                     +'  ,CANOMCTA    '
                     +'  ,CACODCC     '
                     +'  ,CANOMCC     '
                     +'  ,CANATDC     '
                     +'  ,CACODDEP    '
                     +'  ,CANOMDEP    '
                     +'  ,CADESCMV    '
                     +' from OLD_CADDAP where CACODNOV=0'+DM1.Qr_EventoCODNOV.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.sql.savetofile('c:\sql.txt');
      exit;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from OLD_CADDAP where CACODNOV=0'+DM1.Qr_EventoCODNOV.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      exit;
      end;
   fmensagem('Concluido!',0,['0'],0);
   SAIR.Click;
   end;

end;

procedure TFrm_Dap.BitBtn1Click(Sender: TObject);
begin
  inherited;
//  if  (dap_ori = '') then close else close;
   close;
end;

procedure TFrm_Dap.FormActivate(Sender: TObject);
begin
  if frm_dap = nil then
     inherited;

end;

procedure TFrm_Dap.FormShow(Sender: TObject);
begin
  inherited;
  if flfilpad(0,'_DAP','') then
    begin
    if DM4.Tb_FilPad2.Locate('FPCOMP','CB_LISTAR',[]) then
      cb_listar.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
    if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ORDEM',[]) then
      cb_ordem.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

    cb_listarClick(self);

    end;
  BBnAtu.Click;
  edt_datini.Clear;
  edt_datfin.Clear;

end;

procedure TFrm_Dap.dbe_dtemisExit(Sender: TObject);
begin
  inherited;
if (Tb_CPCADTEMIS.AsDateTime>pdatanula) and
   (Tb_CPCADTVCTO.AsDateTime<=pdatanula) then
   Tb_CPCADTVCTO.AsDateTime:=Tb_CPCADTEMIS.AsDateTime;


if Tb_CP.State in [dsedit,dsinsert] then
   begin
   if mdtemis_ant<>Tb_CPCADTEMIS.AsDateTime then
      begin
      if mdtemis_ant=Tb_CPCACOMPETENCIA_DTINICIO.AsDateTime THEN
         begin
         Tb_CPCACOMPETENCIA_DTINICIO.AsDateTime:=Tb_CPCADTEMIS.AsDateTime;
         edt_competencia_mes.Text         :=FormatDatetime('mm', Tb_CPCACOMPETENCIA_DTINICIO.AsDateTime);
         edt_competencia_ano.Text         :=FormatDatetime('yyyy', Tb_CPCACOMPETENCIA_DTINICIO.AsDateTime);

         end
      end;
   end;

end;

procedure TFrm_Dap.dbe_serieExit(Sender: TObject);
begin
  inherited;
if trim(Tb_CPCASERIE.AsString)<>'' then
   begin
   if trim(Tb_CPCAMODELO.AsString)='' then
      Tb_CPCAMODELO.AsString:='01';
   if Tb_CPCADTENT.AsDateTime<=pdatanula then
      Tb_CPCADTENT.AsDateTime:=Tb_CPCADTEMIS.AsDateTime;
   if Tb_CPCAQTDPARC.AsFloat<1 then
      Tb_CPCAQTDPARC.AsFloat:=1;
   if Tb_CPCAVALORNF.AsFloat=0 then
      Tb_CPCAVALORNF.AsFloat:=Arredonda( Tb_CPCAVALOR.AsFloat*Tb_CPCAQTDPARC.AsFloat
                                 ,DM1.Tb_PargerPCASAS.AsInteger) ;


   if (Tb_CPCACFO.AsFloat=0) or (Tb_CPCAALIQ.AsFloat=0) then
      begin
      DM1.Query2.close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select NEALIQ,NECFO from CADNE where '
                        +' NECODEMP=0'+FloatToStr(codemp)
                        +' and NECODFOR=0'+Tb_CPCACODFOR.AsString
                        +' and NEALIQ<>0 OR NECFO<>0');
      try
         DM1.Query2.Open;
      except
         end;
      if not DM1.Query2.IsEmpty then
         begin
         if (Tb_CPCACFO.AsFloat=0) then
            Tb_CPCACFO.AsFloat:=DM1.Query2.fieldbyName('NECFO').AsFloat;
         if (Tb_CPCAALIQ.AsFloat=0) then
            Tb_CPCAALIQ.AsFloat:=DM1.Query2.fieldbyName('NEALIQ').AsFloat;
         end;

      end;
   if (Tb_CPCAALIQ.AsFloat>0) and (Tb_CPCABASEN.AsFloat=0) then
      Tb_CPCABASEN.AsFloat:=Tb_CPCAVALORNF.AsFloat;
   if (Tb_CPCAALIQ.AsFloat>0) and (Tb_CPCABASEN.AsFloat>0) and (Tb_CPCAICMSN.AsFloat=0) then
      Tb_CPCAICMSN.AsFloat:=Arredonda(
                                (( Tb_CPCABASEN.AsFloat*Tb_CPCAALIQ.AsFloat)/100)
                                ,DM1.Tb_PargerPCASAS.AsInteger);
   end;
end;

procedure TFrm_Dap.DBEdit3Exit(Sender: TObject);
begin
  inherited;
if (Tb_CPCAALIQ.AsFloat>0) and (Tb_CPCABASEN.AsFloat>0) and (Tb_CPCAICMSN.AsFloat=0) then
    Tb_CPCAICMSN.AsFloat:=Arredonda(
                              (( Tb_CPCABASEN.AsFloat*Tb_CPCAALIQ.AsFloat)/100)
                              ,DM1.Tb_PargerPCASAS.AsInteger)
else if ((Tb_CPCAALIQ.AsFloat=0) or (Tb_CPCABASEN.AsFloat>0))  and (Tb_CPCAICMSN.AsFloat>0) then
   Tb_CPCAICMSN.AsFloat:=0;
end;

function tFrm_Dap.fIncluirCADNE(pTipo: Integer): Boolean;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('delete from CADNE where NECODEMP=:NECODEMP and '
          +' NECODFOR=:NECODFOR and NENUMERO=:NENUMERO and NESERIE=:NESERIE   '
          +' and NESUBSER=:NESUBSER and NEMODELO=:NEMODELO and NECFO=:NECFO   '
          +' and NEDTENT=:NEDTENT and NEDTEMIS=:NEDTEMIS and NEBASEN=:NEBASEN '
          +' and NEICMSN=:NEICMSN and NEBASER=:NEBASER and NEICMSR=:NEICMSR   '
          +' and NEFRETE=:NEFRETE and NEALIQ_FRETE=:NEALIQ_FRETE and NEICMS_FRETE=:NEICMS_FRETE '
          +' and NESEG=:NESEG and NEOUTRAS=:NEOUTRAS and NEIPI=:NEIPI      '
          +' and NETOTMER=:NETOTMER and NETOTNOT=:NETOTNOT and NETOTDES=:NETOTDES '
          +' and NETOTPOS=:NETOTPOS and NETOTNEG=:NETOTNEG and NETOTINA=:NETOTINA '
          +' and NECHAVEP=:NECHAVEP and NEALIQ=:NEALIQ and NETIPO=:NETIPO '
          +' and NECODUSR=:NECODUSR and NESTATUS=:NESTATUS and NEIPIFRETE=:NEIPIFRETE '
          +' and NELOTSEQ_CP=:NELOTSEQ_CP and NEISENTAS=:NEISENTAS and NEFRETEPC=:NEFRETEPC '
          +' and NELEMAT=:NELEMAT and NEOUTNINC=:NEOUTNINC and NEOUTDESP=:NEOUTDESP '
          +' and NEAVAP=:NEAVAP and NESIV_FRETE=:NESIV_FRETE and NESIV_DARE=:NESIV_DARE '
          +' and NESIV_OUTROS=:NESIV_OUTROS and NECFOP_COMP=:NECFOP_COMP '
          +' and NEOUTRAS_ALIQ=:NEOUTRAS_ALIQ and NEOUTRAS_IMP=:NEOUTRAS_IMP');

DM1.Query2.ParambyName('NECODEMP').AsFloat     :=Tb_CPCACODEMP.AsFloat;
DM1.Query2.ParambyName('NECODFOR').AsFloat     :=Tb_CPCACODFOR.AsFloat;
DM1.Query2.ParambyName('NENUMERO').AsFloat     :=Tb_CPCANUMERO.AsFloat;
DM1.Query2.ParambyName('NESERIE').AsString     :=Tb_CPCASERIE.AsString;
DM1.Query2.ParambyName('NESUBSER').AsString    :='01';
DM1.Query2.ParambyName('NEMODELO').AsString    :=Tb_CPCAMODELO.AsString;
DM1.Query2.ParambyName('NECFO').AsFloat        :=Tb_CPCACFO.AsFloat;
DM1.Query2.ParambyName('NEDTENT').AsDateTime   :=Tb_CPCADTENT.AsDateTime;
DM1.Query2.ParambyName('NEDTEMIS').AsDateTime  :=Tb_CPCADTEMIS.AsDateTime;
DM1.Query2.ParambyName('NEBASEN').AsFloat      :=Tb_CPCABASEN.AsFloat;
DM1.Query2.ParambyName('NEICMSN').AsFloat      :=Tb_CPCAICMSN.AsFloat;
DM1.Query2.ParambyName('NEBASER').AsFloat      :=0;
DM1.Query2.ParambyName('NEICMSR').AsFloat      :=0;
DM1.Query2.ParambyName('NEFRETE').AsFloat      :=0;
DM1.Query2.ParambyName('NEALIQ_FRETE').AsFloat :=0;
DM1.Query2.ParambyName('NEICMS_FRETE').AsFloat :=0;

DM1.Query2.ParambyName('NESEG').AsFloat        :=0;
DM1.Query2.ParambyName('NEOUTRAS').AsFloat     :=0;
DM1.Query2.ParambyName('NEIPI').AsFloat        :=0;
DM1.Query2.ParambyName('NETOTMER').AsFloat     :=Tb_CPCAVALORNF.AsFloat;
DM1.Query2.ParambyName('NETOTNOT').AsFloat     :=Tb_CPCAVALORNF.AsFloat;
DM1.Query2.ParambyName('NETOTDES').AsFloat     :=0;
DM1.Query2.ParambyName('NETOTPOS').AsFloat     :=0;
DM1.Query2.ParambyName('NETOTNEG').AsFloat     :=0;
DM1.Query2.ParambyName('NETOTINA').AsFloat     :=Tb_CPCAVALORNF.AsFloat;
DM1.Query2.ParambyName('NECHAVEP').AsFloat     :=0;
DM1.Query2.ParambyName('NEALIQ').AsFloat       :=Tb_CPCAALIQ.AsFloat;
DM1.Query2.ParambyName('NETIPO').AsFloat       :=Tb_CPCANETIPO.AsFloat;
DM1.Query2.ParambyName('NECODUSR').AsFloat     :=Tb_CPCACODUSR.AsFloat;
//DM1.Query2.ParambyName('NEDTALT').AsFloat      :=
//DM1.Query2.ParambyName('NEHRALT').AsFloat      :=
DM1.Query2.ParambyName('NESTATUS').AsFloat     :=0;
DM1.Query2.ParambyName('NEIPIFRETE').AsFloat   :=0;
DM1.Query2.ParambyName('NELOTSEQ_CP').AsFloat  :=0;
DM1.Query2.ParambyName('NEISENTAS').AsFloat    :=0;
DM1.Query2.ParambyName('NEFRETEPC').AsFloat    :=0;
DM1.Query2.ParambyName('NELEMAT').AsFloat      :=0;
if Tb_CPCAVALORNF.AsFloat>Tb_CPCABASEN.AsFloat then
   DM1.Query2.ParambyName('NEOUTNINC').AsFloat    :=Tb_CPCAVALORNF.AsFloat-
                                                    Tb_CPCABASEN.AsFloat
else
   DM1.Query2.ParambyName('NEOUTNINC').AsFloat    :=0;


DM1.Query2.ParambyName('NEOUTDESP').AsFloat    :=0;
DM1.Query2.ParambyName('NEAVAP').AsFloat       :=0;
DM1.Query2.ParambyName('NESIV_FRETE').AsFloat  :=0;
DM1.Query2.ParambyName('NESIV_DARE').AsFloat   :=0;
DM1.Query2.ParambyName('NESIV_OUTROS').AsFloat :=0;
DM1.Query2.ParambyName('NECFOP_COMP').AsFloat  :=0;
DM1.Query2.ParambyName('NEOUTRAS_ALIQ').AsFloat:=0;
DM1.Query2.ParambyName('NEOUTRAS_IMP').AsFloat :=0;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query2,31,'frm_CP','CADNE');
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADNE ('
          +'NECODEMP'
          +',NECODFOR'
          +',NENUMERO'
          +',NESERIE'
          +',NESUBSER'
          +',NEMODELO'
          +',NECFO'
          +',NEDTENT'
          +',NEDTEMIS'
          +',NEBASEN'
          +',NEICMSN'
          +',NEBASER'
          +',NEICMSR'
          +',NEFRETE'
          +',NEALIQ_FRETE'
          +',NEICMS_FRETE'
          +',NESEG'
          +',NEOUTRAS'
          +',NEIPI'
          +',NETOTMER'
          +',NETOTNOT'
          +',NETOTDES'
          +',NETOTPOS'
          +',NETOTNEG'
          +',NETOTINA'
          +',NECHAVEP'
          +',NEALIQ'
          +',NETIPO'
          +',NECODUSR'
//          +',NEDTALT'
//          +',NEHRALT'
          +',NESTATUS'
          +',NEIPIFRETE'
          +',NELOTSEQ_CP'
          +',NEISENTAS'
          +',NEFRETEPC'
          +',NELEMAT'
          +',NEOUTNINC'
          +',NEOUTDESP'
          +',NEAVAP'
          +',NESIV_FRETE'
          +',NESIV_DARE'
          +',NESIV_OUTROS'
          +',NECFOP_COMP'
          +',NEOUTRAS_ALIQ'
          +',NEOUTRAS_IMP'
          +') Values  ('
          +':NECODEMP'
          +',:NECODFOR'
          +',:NENUMERO'
          +',:NESERIE'
          +',:NESUBSER'
          +',:NEMODELO'
          +',:NECFO'
          +',:NEDTENT'
          +',:NEDTEMIS'
          +',:NEBASEN'
          +',:NEICMSN'
          +',:NEBASER'
          +',:NEICMSR'
          +',:NEFRETE'
          +',:NEALIQ_FRETE'
          +',:NEICMS_FRETE'
          +',:NESEG'
          +',:NEOUTRAS'
          +',:NEIPI'
          +',:NETOTMER'
          +',:NETOTNOT'
          +',:NETOTDES'
          +',:NETOTPOS'
          +',:NETOTNEG'
          +',:NETOTINA'
          +',:NECHAVEP'
          +',:NEALIQ'
          +',:NETIPO'
          +',:NECODUSR'
//          +',:NEDTALT'
//          +',:NEHRALT'
          +',:NESTATUS'
          +',:NEIPIFRETE'
          +',:NELOTSEQ_CP'
          +',:NEISENTAS'
          +',:NEFRETEPC'
          +',:NELEMAT'
          +',:NEOUTNINC'
          +',:NEOUTDESP'
          +',:NEAVAP'
          +',:NESIV_FRETE'
          +',:NESIV_DARE'
          +',:NESIV_OUTROS'
          +',:NECFOP_COMP'
          +',:NEOUTRAS_ALIQ'
          +',:NEOUTRAS_IMP'
          +')'
          );

DM1.Query2.ParambyName('NECODEMP').AsFloat     :=Tb_CPCACODEMP.AsFloat;
DM1.Query2.ParambyName('NECODFOR').AsFloat     :=Tb_CPCACODFOR.AsFloat;
DM1.Query2.ParambyName('NENUMERO').AsFloat     :=Tb_CPCANUMERO.AsFloat;
DM1.Query2.ParambyName('NESERIE').AsString     :=Tb_CPCASERIE.AsString;
DM1.Query2.ParambyName('NESUBSER').AsString    :='01';
DM1.Query2.ParambyName('NEMODELO').AsString    :=Tb_CPCAMODELO.AsString;
DM1.Query2.ParambyName('NECFO').AsFloat        :=Tb_CPCACFO.AsFloat;
DM1.Query2.ParambyName('NEDTENT').AsDateTime   :=Tb_CPCADTENT.AsDateTime;
DM1.Query2.ParambyName('NEDTEMIS').AsDateTime  :=Tb_CPCADTEMIS.AsDateTime;
DM1.Query2.ParambyName('NEBASEN').AsFloat      :=Tb_CPCABASEN.AsFloat;
DM1.Query2.ParambyName('NEICMSN').AsFloat      :=Tb_CPCAICMSN.AsFloat;
DM1.Query2.ParambyName('NEBASER').AsFloat      :=0;
DM1.Query2.ParambyName('NEICMSR').AsFloat      :=0;
DM1.Query2.ParambyName('NEFRETE').AsFloat      :=0;
DM1.Query2.ParambyName('NEALIQ_FRETE').AsFloat :=0;
DM1.Query2.ParambyName('NEICMS_FRETE').AsFloat :=0;

DM1.Query2.ParambyName('NESEG').AsFloat        :=0;
DM1.Query2.ParambyName('NEOUTRAS').AsFloat     :=0;
DM1.Query2.ParambyName('NEIPI').AsFloat        :=0;
DM1.Query2.ParambyName('NETOTMER').AsFloat     :=Tb_CPCAVALORNF.AsFloat;
DM1.Query2.ParambyName('NETOTNOT').AsFloat     :=Tb_CPCAVALORNF.AsFloat;
DM1.Query2.ParambyName('NETOTDES').AsFloat     :=0;
DM1.Query2.ParambyName('NETOTPOS').AsFloat     :=0;
DM1.Query2.ParambyName('NETOTNEG').AsFloat     :=0;
DM1.Query2.ParambyName('NETOTINA').AsFloat     :=Tb_CPCAVALORNF.AsFloat;
DM1.Query2.ParambyName('NECHAVEP').AsFloat     :=0;
DM1.Query2.ParambyName('NEALIQ').AsFloat       :=Tb_CPCAALIQ.AsFloat;
DM1.Query2.ParambyName('NETIPO').AsFloat       :=Tb_CPCANETIPO.AsFloat;
DM1.Query2.ParambyName('NECODUSR').AsFloat     :=Tb_CPCACODUSR.AsFloat;
//DM1.Query2.ParambyName('NEDTALT').AsFloat      :=
//DM1.Query2.ParambyName('NEHRALT').AsFloat      :=
DM1.Query2.ParambyName('NESTATUS').AsFloat     :=0;
DM1.Query2.ParambyName('NEIPIFRETE').AsFloat   :=0;
DM1.Query2.ParambyName('NELOTSEQ_CP').AsFloat  :=0;
DM1.Query2.ParambyName('NEISENTAS').AsFloat    :=0;
DM1.Query2.ParambyName('NEFRETEPC').AsFloat    :=0;
DM1.Query2.ParambyName('NELEMAT').AsFloat      :=0;
if Tb_CPCAVALORNF.AsFloat>Tb_CPCABASEN.AsFloat then
   DM1.Query2.ParambyName('NEOUTNINC').AsFloat    :=Tb_CPCAVALORNF.AsFloat-
                                                    Tb_CPCABASEN.AsFloat
else
   DM1.Query2.ParambyName('NEOUTNINC').AsFloat    :=0;


DM1.Query2.ParambyName('NEOUTDESP').AsFloat    :=0;
DM1.Query2.ParambyName('NEAVAP').AsFloat       :=0;
DM1.Query2.ParambyName('NESIV_FRETE').AsFloat  :=0;
DM1.Query2.ParambyName('NESIV_DARE').AsFloat   :=0;
DM1.Query2.ParambyName('NESIV_OUTROS').AsFloat :=0;
DM1.Query2.ParambyName('NECFOP_COMP').AsFloat  :=0;
DM1.Query2.ParambyName('NEOUTRAS_ALIQ').AsFloat:=0;
DM1.Query2.ParambyName('NEOUTRAS_IMP').AsFloat :=0;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query2,31,'frm_CP','CADNE');
   end;
result:=true;

end;
procedure TFrm_Dap.DBE_NUMNFEnter(Sender: TObject);
begin
  inherited;
IF  Tb_CPCANUMERONF.AsFloat=0 then
    Tb_CPCANUMERONF.AsFloat:=Tb_CPCANUMERO.AsFloat;
end;

procedure TFrm_Dap.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

If (Key=120) and (Shift=[ssCtrl]) then // ctrl-f9
   begin
   tsEspeciaisMaster.TabVisible:=tsEspeciaisMaster.TabVisible=false;
   end;

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

if ((key=118) and (codcar=1111) and ( (Tb_CPCASTATUS.Value>0) or (Tb_CPCADEVOL.AsFloat>0)) ) then
   begin
   if fmensagem(pchar('Esta opção é Coloca a Duplicata no Estado de Em Aberta!'+#13
                                  +'Quer Continuar mesmo asssim?'),0,['1','2'],2)<>mrYes then
      exit;
   if Tb_CPCALOTE.Value>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete from FPCP where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADDAP',[]),'',' FPCODEMP=0'+IntTostr(codemp)+' and ')
                        +' FPLOTSEQ=0'+Tb_CPCALOTSEQ_LB.AsString
                        +' and FPLOTE=0'+Tb_CPCALOTE.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,735,'Frm_Dap','FPCP');
         end;

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete from FPCPDUP where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+IntTostr(codemp)+' and ')
                        +' FPLOTSEQ=0'+Tb_CPCALOTSEQ_LB.AsString
                        +' and FPLOTE=0'+Tb_CPCALOTE.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,748,'Frm_Dap','FPCPDUP');
         end;
      end;
   if Tb_CPCACODLDR.Value>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Update CADLDR set DATAREAL='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                        +',   DTSALDO='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                        +', VALORR=0  where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntTostr(codemp)+' and ')
                        +' LOTSEQ=0'+Tb_CPCALOTSEQ_FC.AsString
                        +' and CODLDR=0'+Tb_CPCACODLDR.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,764,'Frm_Dap','CADLDR');
         end;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADDAP set CAVALPAG=0, '
                     +' CADTBX='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                     +', CADTPAG='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
                     +', CAJUROS=0, CADESC=0, CADEVOL=0, CALOTE=0, CASTATUS=0 '
                     +' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+Tb_CPCACODEMP.AsString+' and ')
                     +' CANUMERO=0'+Tb_CPCANUMERO.AsString
                     +' and CADESD='+chr(39)+Tb_CPCADESD.Value+chr(39)
                     +' and CADUP=0'+Tb_CPCADUP.AsString
                     +' and CADTEMIS='+chr(39)+FormatDatetime(fdt, Tb_CPCADTEMIS.Value)+chr(39));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,764,'Frm_Dap','CADDAP');
      end;
   BBnAtu.Click;
   fmensagem('Concluido!',0,['0'],0);
   end;


end;

procedure TFrm_Dap.sbt_emitirreciboClick(Sender: TObject);
var
form_Recibo: tFrm_Recibo;
begin
  inherited;
if Tb_CPCANUMERO.IsNull=false then
   begin
    Application.CreateForm(Tfrm_Recibo, form_Recibo);
  with form_Recibo do
    begin
    FormStyle      :=fsNormal;
    Visible        :=False;
    MDATA.Text     :=formatdatetime(fdt2, date);
    if Tb_CPCAVALPAG.AsFloat>0 then
       VALOR_REC.Text := Formatfloat(mcasas, Tb_CPCAVALPAG.AsFloat)
    else
       VALOR_REC.Text := Formatfloat(mcasas, Tb_CPCAVALOR.AsFloat);
    NOMSACADO.Text :=DBE_NOMFOR.Text;
    MREFER.Text    :=Tb_CP_ObsCAOBS.AsString;
    end;
  form_Recibo.bbImprimir.Click;
  //form_Recibo.ShowModal;
  FreeAndNil(form_Recibo);
  end;
end;

procedure TFrm_Dap.cb_listarChange(Sender: TObject);
begin
  inherited;
BBnAtuClick(self);
end;

procedure TFrm_Dap.cb_ordemChange(Sender: TObject);
begin
  inherited;
BBnAtuClick(self);
end;

procedure TFrm_Dap.sbt_salva_confClick(Sender: TObject);
begin
  inherited;
fDeletaPadroes(0,'_DAP','');
fGravaPadroes(0,'CB_LISTAR'    ,'ITEMINDEX' ,'_DAP',IntToStr(cb_listar.ItemIndex));
fGravaPadroes(0,'CB_ORDEM'    ,'ITEMINDEX' ,'_DAP',IntToStr(cb_ordem.ItemIndex));

end;

procedure TFrm_Dap.sbnDocumentoClick(Sender: TObject);
var
form_doc: TFrm_Impres;
mLin_doc: Integer;
mLinha: string;
begin
  inherited;
if (not Tb_CP.Active) or (Tb_CPCAVALOR.IsNull) then
   exit;

testeform := TFrm_Dap(FindGlobalComponent('form_doc'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_doc);
   end;
mLin_doc:=0;

form_doc.fimpresajustaimp(1,80,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

flcadfor(1,1,Tb_CPCACODFOR.AsString);


mLin_doc:=1;

form_doc.RDprint1.ImpF(mlin_doc,01,'+'+insere('-','-',78)+'+',mnormal);
mlin_doc:=mlin_doc+1;
form_doc.RDprint1.ImpF(mlin_doc,01,'|'+centra('DOCUMENTO DE CONTA A PAGAR',' ',78)+'|',mnormal);
mlin_doc:=mlin_doc+1;
form_doc.RDprint1.ImpF(mlin_doc,01,'+'+insere('-','-',78)+'+',mnormal);
mLinha:=insere('Fornecedor.: ',' ',14);
mlin_doc:=mlin_doc+1;
mLinha:=mlinha+insere(Tb_CPCACODFOR.AsString,'0',05)+' - '+Tb_CPnomefor.AsString;
form_doc.RDprint1.ImpF(mlin_doc,01,'|'+insere2(mLinha,' ',78)+'|',mnormal);
mLinha:=insere2(' ',' ',21)+DM1.Tb_ForFDENOM.AsString;
mlin_doc:=mlin_doc+1;
form_doc.RDprint1.ImpF(mlin_doc,01,'|'+insere2(mLinha,' ',78)+'|',mnormal);


mlin_doc:=mlin_doc+1;
mLinha:=insere('Numero.....: ',' ',14);
mLinha:=mlinha+insere(Tb_CPCANUMERO.AsString,'0',10);
mLinha:=mlinha+insere(' ',' ',10);
mLinha:=mlinha+insere('Desdobramento...: ',' ',20)+Tb_CPCADESD.AsString;
form_doc.RDprint1.ImpF(mlin_doc,01,'|'+insere2(mLinha,' ',78)+'|',mnormal);


mlin_doc:=mlin_doc+1;
mLinha:=insere('Emissao....: ',' ',14);
mLinha:=mlinha+insere(Formatdatetime(fdt2, Tb_CPCADTEMIS.AsDateTime),' ',10);

mLinha:=mlinha+insere(' ',' ',10);
mLinha:=mlinha+insere('Vencimento...: ',' ',20)+formatDatetime(fdt2, Tb_CPCADTVCTO.AsDateTime);
form_doc.RDprint1.ImpF(mlin_doc,01,'|'+insere2(mLinha,' ',78)+'|',mnormal);

mlin_doc:=mlin_doc+1;
mLinha:=insere('Valor......: ',' ',14);
mLinha:=mlinha+insere(FormatFloat(mCasas, Tb_CPCAVALOR.AsFloat),' ',15);
mLinha:=mlinha+insere(' ',' ',5);
mLinha:=mlinha+insere(' ',' ',20);
form_doc.RDprint1.ImpF(mlin_doc,01,'|'+insere2(mLinha,' ',78)+'|',mnormal);

mlin_doc:=mlin_doc+1;
mLinha:=insere('Observacao.: ',' ',14);
mLinha:=mlinha+insere(Tb_CP_ObsCAOBS.AsString,' ',40);
form_doc.RDprint1.ImpF(mlin_doc,01,'|'+insere2(mLinha,' ',78)+'|',mnormal);
mlin_doc:=mlin_doc+1;
form_doc.RDprint1.ImpF(mlin_doc,01,'|'+insere2(' ',' ',78)+'|',mnormal);
mlin_doc:=mlin_doc+1;
form_doc.RDprint1.ImpF(mlin_doc,01,'+'+insere2('-','-',78)+'+',mnormal);
if form_doc.RDprint1.Setup then form_doc.RDprint1.Fechar;
FreeAndNil(form_doc);

end;

procedure TFrm_Dap.sbn_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

qr_cont_imagem: TQuery;
mChave: Integer;
mIdDap: String;
begin
  inherited;


if trim(Tb_CPIDDAP.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADDAP','ROWID',' CANUMERO='+Tb_CPCANUMERO.AsString
      +' and CADESD='+QuotedStr(Tb_CPCADESD.AsString)+' and CACODFOR='+Tb_CPCACODFOR.AsString
      +' and CADTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_CPCADTEMIS.asdatetime))
      +' and CADUP='+Tb_CPCADUP.AsString
      +' and CACODDEMP=0'+Tb_CPCACODEMP.AsString,mIdDap) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdDap:=Tb_CPIDDAP.AsString;
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

   qr_cont_imagem:=TQuery.create(Nil);
   qr_cont_imagem.databaseName:='SG_ASSOC';
   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Select max(PI_SEQ) as cod from CADDAP_IMAGEM '
                    +' where PI_ROWID=:IDDAP ');
   qr_cont_imagem.ParamByName('IDDAP').AsString     :=mIdDap;
   qr_cont_imagem.open;
   mChave:=qr_cont_imagem.fieldbyName('cod').AsInteger+1;


   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Insert into CADDAP_IMAGEM ( '
                    +' PI_ROWID  '
                    +',PI_SEQ    '
                    +',PI_OBS    '
                    +',PI_IMAGEM '
                    +',PI_NOMEORI '
                    +') values ('
                    +' :PI_ROWID  '
                    +',:PI_SEQ    '
                    +',:PI_OBS    '
                    +',:PI_IMAGEM '
                    +',:PI_NOMEORI '
                    +')');

   qr_cont_imagem.ParamByName('PI_ROWID').AsString      :=mIdDap;
   qr_cont_imagem.ParamByName('PI_SEQ').AsInteger      :=mChave;
   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      qr_cont_imagem.ParamByName('PI_OBS').AsString    :='IMAGEM: '+IntToStr(mChave)
   else
      qr_cont_imagem.ParamByName('PI_OBS').AsString    :=frm_Imagem_WebCam.edt_obs.Text;

   qr_cont_imagem.ParamByName('PI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   qr_cont_imagem.ParamByName('PI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      qr_cont_imagem.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(qr_cont_imagem,2555,'frm_dap '+e.message,'CADDAP_IMAGEM');
      end;
      end;
   FreeAndNil(qr_cont_imagem);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
middap_src:='-1';

Src_DapDataChange(Tb_CP,Tb_CPCACODEMP);




end;

procedure TFrm_Dap.sbn_alterarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mIdDap: String;
begin
  inherited;


if trim(Tb_CPIDDAP.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADDAP','ROWID',' CANUMERO='+Tb_CPCANUMERO.AsString
      +' and CADESD='+QuotedStr(Tb_CPCADESD.AsString)+' and CACODFOR='+Tb_CPCACODFOR.AsString
      +' and CADTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_CPCADTEMIS.asdatetime))
      +' and CADUP='+Tb_CPCADUP.AsString
      +' and CACODDEMP=0'+Tb_CPCACODEMP.AsString,mIdDap) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdDap:=Tb_CPIDDAP.AsString;

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
       end;

   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';

   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADDAP_IMAGEM set '
                    +' PI_OBS=:PI_OBS '
                    +',PI_IMAGEM=:PI_IMAGEM '
                    +',PI_NOMEORI=:PI_NOMEORI '
                    +' where '
                    +' PI_ROWID=:PI_ROWID '
                    +' and PI_SEQ=:PI_SEQ'
                    );

   query_ldr.ParamByName('PI_ROWID').AsString      :=midDap;
   query_ldr.ParamByName('PI_SEQ').AsInteger      :=Tb_CP_ImagemPI_SEQ.AsInteger;



   if (trim(frm_Imagem_WebCam.edt_obs.Text)<>'') then
      query_ldr.ParamByName('PI_OBS').AsString:=trim(frm_Imagem_WebCam.edt_obs.Text)
   else if (trim(Tb_CP_imagemPI_OBS.AsString)='') then
      query_ldr.ParamByName('PI_OBS').AsString    :='IMAGEM: '+Tb_CP_imagemPI_OBS.AsString
   else
      query_ldr.ParamByName('PI_OBS').AsString    :=Tb_CP_imagemPI_OBS.AsString;


   query_ldr.ParamByName('PI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);


   query_ldr.ParamByName('PI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2926,'frm_contrato','CADDAP_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
midDap_src:='-1';

Src_DapDataChange(Tb_CP,Tb_CPCACODEMP);



end;

procedure TFrm_Dap.sbnRenomearClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mIdDap: String;
mNovoNome: String;
begin
  inherited;


if trim(Tb_CPIDDAP.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADDAP','ROWID',' CANUMERO='+Tb_CPCANUMERO.AsString
      +' and CADESD='+QuotedStr(Tb_CPCADESD.AsString)+' and CACODFOR='+Tb_CPCACODFOR.AsString
      +' and CADTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_CPCADTEMIS.asdatetime))
      +' and CADUP='+Tb_CPCADUP.AsString
      +' and CACODDEMP=0'+Tb_CPCACODEMP.AsString,mIdDap) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdDap:=Tb_CPIDDAP.AsString;


mNovoNome:=InputBox('Nome Anterior '+Tb_CP_ImagemPI_OBS.AsString , 'Informe o Novo Nome','');
if (trim(mNovoNome)<>'') and (mNovoNome<>Tb_CP_ImagemPI_OBS.AsString) then
   begin
   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';
   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADDAP_IMAGEM set '
                    +' PI_OBS=:PI_OBS '
                    +' where '
                    +' PI_ROWID=:PI_ROWID '
                    +' and PI_SEQ=:PI_SEQ'
                    );

   query_ldr.ParamByName('PI_ROWID').AsString      :=mIdDap;
   query_ldr.ParamByName('PI_SEQ').AsInteger      :=Tb_CP_ImagemPI_SEQ.AsInteger;

   query_ldr.ParamByName('PI_OBS').AsString       :=mNovoNome;
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2991,'frm_contrato','CADDAP_IMAGEM');
      end;
   FreeAndNil(query_ldr);

   end;
mIdDap_src:='-1';

Src_DapDataChange(Tb_CP,Tb_CPCACODEMP);


end;

procedure TFrm_Dap.sbn_excluirClick(Sender: TObject);
var
query_ldr: TQuery;
mIdDap: String;
begin
  inherited;
if trim(Tb_CPIDDAP.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADDAP','ROWID',' CANUMERO='+Tb_CPCANUMERO.AsString
      +' and CADESD='+QuotedStr(Tb_CPCADESD.AsString)+' and CACODFOR='+Tb_CPCACODFOR.AsString
      +' and CADTEMIS='+QuotedStr(FormatDateTime(fdt2, Tb_CPCADTEMIS.asdatetime))
      +' and CADUP='+Tb_CPCADUP.AsString
      +' and CACODDEMP=0'+Tb_CPCACODEMP.AsString,mIdDap) then
      begin
      MessageDlg('Favor Gravar o registro atual!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdDap:=Tb_CPIDDAP.AsString;

if Application.MessageBox(pchar( 'Quer Realmente excluir o registro '+Tb_CP_ImagemPI_OBS.asstring),'confirmacao',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
query_ldr:=TQuery.create(Nil);
query_ldr.databaseName:='SG_ASSOC';
query_ldr.Close;
query_ldr.SQL.Clear;
query_ldr.SQL.Add('Delete  from CADDAP_IMAGEM '
                 +' where PI_ROWID=:PI_ROWID '
                 +' and PI_SEQ=:SEQ ');
query_ldr.ParamByName('PI_ROWID').Asstring   :=mIdDap;
query_ldr.ParamByName('SEQ').AsInteger     :=Tb_CP_ImagemPI_SEQ.AsInteger;
try
   query_ldr.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_ldr,2757,'frm_contrato','CADDAP_IMAGEM');
   end;
FreeAndNil(query_ldr);
middap_src:='-1';

Src_DapDataChange(Tb_CP,Tb_CPCACODEMP);


end;

procedure TFrm_Dap.DBGrid3DblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

begin
  inherited;



if not Tb_CP_imagemPI_IMAGEM.IsNull then
   begin
   imagestream:=TMemoryStream.Create;
   jpg:=TJPEGImage.Create;
   Tb_CP_imagemPI_IMAGEM.SaveToStream(imagestream);
   imagestream.Position := 0;

   if (trim(Tb_CP_imagemPI_NOMEORI.asstring)='') then
//   if (trim(Tb_CP_imagemPI_NOMEORI.asstring)='')  or fEImagem(Tb_CP_imagemPI_NOMEORI.asstring) then
      begin
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
         if trim(Tb_CP_imagemPI_NOMEORI.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Tb_CP_imagemPI_NOMEORI.asstring);
            fExecutarArquivo(mcamtmp+'\'+Tb_CP_imagemPI_NOMEORI.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Tb_CP_imagemPI_NOMEORI.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;
      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Tb_CP_imagemPI_NOMEORI.asstring,mtError,[mbOk],0);
         end;
      end;


   freeandnil(imagestream);
   end;





end;

procedure TFrm_Dap.DBE_CAVALOR_ACRESEnter(Sender: TObject);
begin
  inherited;
mvalor_acres_ant:=Tb_CPCAVALOR_ACRES.asfloat;

end;

procedure TFrm_Dap.DBE_CAVALOR_ACRESExit(Sender: TObject);
begin
  inherited;
if mvalor_acres_ant<>Tb_CPCAVALOR_ACRES.asfloat then
   begin
   Tb_CPCAVALOR.AsFloat:=(Tb_CPCAVALOR.AsFloat-mvalor_acres_ant)+Tb_CPCAVALOR_ACRES.AsFloat;
   mvalor_acres_ant:=0;
   end;

end;




function tFrm_Dap.flcaddap_local(ptipo,pcodemp,pOrdem: Integer; pvalor1,pvalor2,pvalor3,pvalor4,pvalor5,pEmpresa: String): Boolean;
var
mDataPesq: String;
begin
{
 PARAMETRO PTIPO:
 ptipo=0 numero
 ptipo=1 codigo do fornecedor
 ptipo=2 data de emissao
 ptipo=3 data de vencimento
 ptipo=4 chave do pedido
 ptipo=5 numero, desdobramento
 ptipo=6 numero, desdobramento, codigo fornecedor e data de emissao
 ptipo=7 Valor


}
//if (DM1.Tb_PargerPMTE.AsInteger<>2) then
//   begin

if (edt_datini.Date>pdatanula) and (edt_datfin.Date>pdatanula) then
   begin
   if edt_datini.Date>edt_datfin.date then
      edt_datfin.Date:=edt_datini.Date;
   end;
if cb_tipopesq.Text='Baixa' then
   mDataPesq:='CADTBX'
else if cb_tipopesq.Text='Emissao' then
   mDataPesq:='CADTEMIS'
else if cb_tipopesq.Text='Pagamento' then
   mDataPesq:='CADTPAG'
else
   mDataPesq:='CADTVCTO';


la_empresas:=pEmpresa;
if trim(la_empresas)='' then
   begin
   if pcodemp<>0 then
      la_Empresas:=' CACODEMP=0'+IntTostr(pcodemp);
   end;
mcinst2:='';
if pOrdem<>0 then
   begin
   if pOrdem=1 then
      mcinst2:='CADTEMIS,CANUMERO'
   else if pOrdem=2 then
      mcinst2:='CANUMERO'
   else
      mcinst2:='CADTVCTO,CANUMERO';

   end;


if ptipo=8 then
   begin
   if trim(mcinst2)<>'' then
      mcinst2:=mcinst2+',';
   Tb_CP.Close;
   Tb_CP.Sql.clear;
   Tb_CP.Params.CreateParam(ftString,'RAZAO',ptInput);
   Tb_CP.Sql.add('Select CADDAP.*,CADDAP.ROWID AS IDDAP from CADDAP,CADFOR where ');
   if la_Empresas<>'' then
      Tb_CP.SQL.Add(la_Empresas+' and ');
   Tb_CP.Sql.add(iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'','  FCODEMP=CACODEMP AND ')
                    +' FCODFOR=CACODFOR '
                    +' and FRAZAO like :RAZAO');

   if (edt_datini.Date>pdatanula) then
      begin
      Tb_CP.Sql.add(' and '+mDataPesq+'>=:DATINI ');
      Tb_CP.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
      end;
   if (edt_datfin.Date>pdatanula) then
      begin
      Tb_CP.Sql.add(' and '+mDataPesq+'<=:DATFIN ');
      Tb_CP.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
      end;


   Tb_CP.Sql.add(' order by '+mcinst2+'FRAZAO ');
   Tb_CP.ParambyName('RAZAO').AsString:=pvalor1+'%';
   Tb_CP.Open;
   end
else
   begin
   Tb_CP.Close;
   Tb_CP.Sql.clear;
   Tb_CP.Sql.add('Select CADDAP.*,ROWID AS IDDAP from CADDAP ');
   mcinst:=' where ';
   if la_Empresas<>'' then
      begin
      Tb_CP.SQL.Add(mcinst+la_Empresas);
      mcinst:=' and ';
      end;
   if PTIPO<1 then
      begin
      if Trim(pvalor1)<>'' then
         begin
         Tb_CP.SQL.Add(mcinst+'CANUMERO=0'+pvalor1 );
         mcinst:=' and ';
         end;

       if (edt_datini.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'>=:DATINI ');
          Tb_CP.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
          end;

       if (edt_datfin.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'<=:DATFIN ');
          Tb_CP.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
          end;

      if trim(mcinst2)<>'' then
         Tb_CP.SQL.Add(' order by '+mcinst2);
      end
   else if ptipo=1 then
      begin
      if Trim(pvalor1)<>'' then
         begin
         if trim(mcinst2)<>'' then
            mcinst2:=mcinst2+',';


         Tb_CP.SQL.Add(mcinst+' CACODFOR=0'+pvalor1 );
         mcinst:=' and ';

       if (edt_datini.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'>=:DATINI ');
          Tb_CP.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
          end;

       if (edt_datfin.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'<=:DATFIN ');
          Tb_CP.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
          end;


         Tb_CP.SQL.Add(' order by '+mcinst2+'CACODFOR');
         end
      else if trim(mcinst2)<>'' then
         Tb_CP.SQL.Add(' order by '+mcinst2);
      end
   else if ptipo=2 then
      begin
      if trim(mcinst2)<>'' then
         mcinst2:=mcinst2+',';

      if Trim(pvalor1)<>'' then
         begin
         Try
            Tb_CP.SQL.Add(mcinst+' CADTEMIS='+chr(39)+FormatDateTime(fdt,StrToDate(pvalor1))+chr(39));
            mcinst:=' and ';
         except
            fmensagem('Data Invalida. Favor digitar no formato dd/mm/aaaa com as barras',0,['0'],0);
            end;
         end;

       if (edt_datini.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'>=:DATINI ');
          Tb_CP.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
          end;

       if (edt_datfin.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'<=:DATFIN ');
          Tb_CP.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
          end;


      Tb_CP.SQL.Add(' order by '+mcinst2+'CADTEMIS');
      end
   else if ptipo=3 then
      begin
      if trim(mcinst2)<>'' then
         mcinst2:=mcinst2+',';

      if Trim(pvalor1)<>'' then
         begin
         Try
            Tb_CP.SQL.Add(mcinst+' CADTVCTO='+chr(39)+FormatDateTime(fdt,StrToDate(pvalor1))+chr(39));
            mcinst:=' and '
         except
            fmensagem('Data Invalida. Favor digitar no formato dd/mm/aaaa com as barras',0,['0'],0);
            end;
         end;
       if (edt_datini.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'>=:DATINI ');
          Tb_CP.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
          end;

       if (edt_datfin.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'<=:DATFIN ');
          Tb_CP.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
          end;


      Tb_CP.SQL.Add(' order by '+mcinst2+'CADTVCTO');
      end
   else if ptipo=6 then
      begin
      Tb_CP.SQL.Add(mcinst+'CANUMERO=0'+pvalor1
                       +' and CADESD='+chr(39)+pvalor2+chr(39)
                       +' and CADUP=0'+pvalor5
                       +' and CACODFOR=0'+pvalor3
                       +' and CADTEMIS='+chr(39)+FormatDateTime(fdt,StrtoDate(pvalor4))+chr(39));
       if (edt_datini.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'>=:DATINI ');
          Tb_CP.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
          end;

       if (edt_datfin.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'<=:DATFIN ');
          Tb_CP.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
          end;


      if trim(mcinst2)<>'' then
         Tb_CP.SQL.Add(' order by '+mcinst2);
     end
  else if ptipo=4 then
     begin
     Tb_CP.SQL.Add(mcinst+' CALOTSEQ_CP=0'+pvalor2
                      +' and CACHAVEP=0'+pvalor1);
       if (edt_datini.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'>=:DATINI ');
          Tb_CP.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
          end;

       if (edt_datfin.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'<=:DATFIN ');
          Tb_CP.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
          end;

     if trim(mcinst2)<>'' then
        Tb_CP.SQL.Add(' order by '+mcinst2);
     mcinst:=' and ';
     end
  else if ptipo=5 then
     begin
     Tb_CP.SQL.Add(mcinst+' CANUMERO=0'+pvalor1
                       +' and CADESD='+chr(39)+pvalor2+chr(39));
       if (edt_datini.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'>=:DATINI ');
          Tb_CP.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
          end;

       if (edt_datfin.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'<=:DATFIN ');
          Tb_CP.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
          end;

     if trim(mcinst2)<>'' then
        Tb_CP.SQL.Add(' order by '+mcinst2);

     end
  else if ptipo=7 then
     begin
     if trim(pvalor1)='' then
        pvalor1:='0';
     Tb_CP.SQL.Add(mcinst+' CAVALOR='+mudavp(FloatToStr(ValFloat(pvalor1))));
       if (edt_datini.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'>=:DATINI ');
          Tb_CP.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
          end;

       if (edt_datfin.Date>pdatanula) then
          begin
          Tb_CP.Sql.add(' and '+mDataPesq+'<=:DATFIN ');
          Tb_CP.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
          end;

     if trim(mcinst2)<>'' then
        Tb_CP.SQL.Add(' order by '+mcinst2);
     end
 end;
try
   Tb_CP.Open
except
   Tb_CP.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
   end;
if Tb_CP.Eof then
   Result:=False
else
   Result:=True;

end;


procedure TFrm_Dap.Tb_CPCalcFields(DataSet: TDataSet);
begin
  inherited;

   if (Tb_CPCACOMPETENCIA_TIPO.AsInteger=4) or
      (Tb_CPCACOMPETENCIA_TIPO.AsInteger=3) or
      (Tb_CPCACOMPETENCIA_TIPO.AsInteger=2) then
      begin
{      edt_competencia_mes.Visible      :=false;
      edt_competencia_ano.Visible      :=false;
      lbl_competencia_barra.Visible    :=false;
      DB_CACOMPETENCIA_DTINICIO.Visible:=false;
}
      Tb_CPcompetencia_obs.Value:='Inicio mês/Ano: ';
       end
   else if (Tb_CPCACOMPETENCIA_TIPO.AsInteger=1) then
      begin
      Tb_CPcompetencia_obs.Value:='Ano: ';
      end
   else
      begin
      Tb_CPcompetencia_obs.Value:='mês/Ano: ';
      end;

if not Tb_CPCACODFOR.IsNull then
  begin
  flqr1('FRAZAO,FDENOM,FCGC','F','CADFOR','N','FCODFOR',Tb_CPCACODFOR.AsString);
  Tb_CPnomefor.Value:=DM1.Query1.Fields[0].AsString;
  Tb_CPdenom.Value  :=DM1.Query1.Fields[1].AsString;
  Tb_CPcnpj.AsString    :=DM1.Query1.Fields[2].AsString;
  end;
if Tb_CPCASTATUS.Value=2 then
  Tb_CPsituacao.Value:='Pago'
else if Tb_CPCASTATUS.Value=1 then
  Tb_CPsituacao.Value:='Pago Parcial'
else
  Tb_CPsituacao.Value:='A Pagar';
if Tb_CPCABANCO.Value>0 then
  begin
  flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',Tb_CPCABANCO.AsString);
  Tb_CPnombco.Value:=DM1.Query1.Fields[0].AsString;
  end
else
  Tb_CPnombco.Value:='Carteira';
Tb_CPtipodoc.Value:=ptpdoc[Tb_CPCADUP.AsInteger];
if (Tb_CPCADTDESC.IsNull) or (Tb_CPCADTDESC.Value<=pdatanula) then
   Tb_CPdatadesc.Value:='/  /'
else
   Tb_CPdatadesc.Value:=FormatDatetime(fdt2, Tb_CPCADTDESC.Value);

Tb_CPvaldev.Value:=(Tb_CPCAVALOR.AsFloat+Tb_CPCAJUROS.AsFloat) -
                    (Tb_CPCAVALPAG.AsFloat+Tb_CPCADESC.AsFloat)
                      ;
if Tb_CPvaldev.AsFloat<0 then
   Tb_CPvaldev.Value:=0;

if (Tb_CPCADTPAG.IsNull) or (Tb_CPCADTPAG.Value<=pdatanula) then
   Tb_CPdtPag.Value:='/  /'
else
   Tb_CPdtPag.Value:=FormatDatetime(fdt2, Tb_CPCADTPAG.Value);


{
if Trim(Tb_CPCACODCC.Value)<>'' then
   begin
   if flqr1('CCNOME','CC','CADCCFRU','C','CCCODCCU',Tb_CPCACODCC.Value) then
      Tb_CPnomccu.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Trim(Tb_CPCACODDEP.Value)<>'' then
   begin
   if flqr1('DNOME','D','CADDEP','C','DCODDEP',Tb_CPCACODDEP.Value) then
      Tb_CPnomdep.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Tb_CPCACODCTA.AsFloat>0 then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',Tb_CPCACODCTA.AsString) then
      Tb_CPnomcta.Value:=DM1.Query1.Fields[0].AsString;
   end
else
   Tb_CPnomcta.Value:='';
}



end;

procedure TFrm_Dap.Tb_CPBeforePost(DataSet: TDataSet);
var
i: Integer;

begin
  inherited;
if Tb_CPCACODEMP.IsNull then
   Tb_CPCACODEMP.Value:=codemp;


Tb_CPCADESD.Value:=Trim(Tb_CPCADESD.Value);

if Tb_CPCADESD.Value='' then
   begin
   fmensagem('Desdobramento da Duplicata Campo Obrigatório!',0,['0'],0);

   abort;
   end;

For i:=0 to Tb_CP.FieldCount-1 do
   begin
   if not Tb_CP.Fields[i].IsNull then
      Continue;
   if Tb_CP.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,ftdate,ftdatetime] then
      Tb_CP.Fields[i].Value:=0
//   else if Tb_CP.fields[i].DataType in [ftDate,ftDateTime] then
//      Tb_CP.Fields[i].Value:=0
   else if Tb_CP.Fields[i].DataType in [ftString,ftMemo] then
      Tb_CP.Fields[i].Value:=' ';
   end;



end;

procedure TFrm_Dap.c(DataSet: TDataSet);
begin
  inherited;
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;

end;

procedure TFrm_Dap.Tb_CPAfterInsert(DataSet: TDataSet);
begin
  inherited;
Tb_CPCACODEMP.Value:=codemp;
Tb_CPCANUMERO.Value:=0;
Tb_CPCADESD.Value  :='A';
Tb_CPCACODFOR.Value:=0;
Tb_CPCADTEMIS.Value:=date;
Tb_CPCACOMPETENCIA_DTINICIO.Value:=Date;

Tb_CPCACOMPETENCIA_TIPO.Value    :=0;
edt_competencia_mes.Text         :=FormatDatetime('mm', Tb_CPCACOMPETENCIA_DTINICIO.AsDateTime);
edt_competencia_ano.Text         :=FormatDatetime('yyyy', Tb_CPCACOMPETENCIA_DTINICIO.AsDateTime);
Tb_CPCACHAVE_ID_ANO.AsInteger:=valint(formatdatetime('yyyy',pdatasis));
Tb_CPCACHAVE_ID.AsInteger:=fBuscareTestarID('CADDAR_'+Tb_CPCACHAVE_ID_ANO.AsString);

Tb_CPCADATAINCLUSAO.AsDateTime:=now;
Tb_CPCAQTDAJUSTE.Value        :=0;
Tb_CP_Obs.Append;

end;

procedure TFrm_Dap.DBMEMO_CAOBSChange(Sender: TObject);
begin
  inherited;
if DBMEMO_CAOBS.Modified then
   mAlterouObs:=True;
end;

procedure TFrm_Dap.Tb_CPAfterPost(DataSet: TDataSet);
var
query_obs: TQuery;
begin
  inherited;
c(tb_cp);
if mAlterouObs then
   begin
   query_obs:=TQuery.create(nil);
   query_obs.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

   query_obs.close;
   query_obs.SQL.Clear;
   query_obs.Sql.Add('Update CADDAP set CAOBS=:OBS  where CANUMERO=:NUMERO '
                       +' and CADESD=:DESD '
                       +' and CACODEMP=:CODEMP '
                       +' and CASEQ=:SEQ '
                       +' and CADTEMIS=:DTEMIS ');
   query_obs.ParamByName('OBS').AsMemo       :=Tb_CP_ObsCAOBS.AsString;
   query_obs.ParamByName('NUMERO').AsFloat   :=Tb_CPCANUMERO.AsFloat;
   query_obs.ParamByName('DESD').AsString    :=Tb_CPCADESD.AsString;
   query_obs.ParamByName('CODEMP').AsFloat   :=Tb_CPCACODEMP.AsFloat;
   query_obs.ParamByName('SEQ').AsFloat      :=Tb_CPCASEQ.AsFloat;
   query_obs.ParamByName('DTEMIS').AsDateTime:=Tb_CPCADTEMIS.AsFloat;
   try
      query_obs.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_obs,33390,'SGE '+e.message,'CADDAP');
      end;
      end;
   query_obs.Close;
   freeandnil(query_obs);
   mAlterouObs:=false;
   fLercadobsdap;
   end;

end;

procedure TFrm_Dap.Tb_CPAfterEdit(DataSet: TDataSet);
begin
  inherited;
Tb_CP_Obs.Edit;
end;

procedure TFrm_Dap.edt_competencia_mesExit(Sender: TObject);
begin
  inherited;
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

function TFrm_Dap.fAtualizarDataCompetencia: Boolean;
begin
if (valint(edt_competencia_mes.Text)>0) and (ValInt(edt_competencia_ano.text)>0) and (tb_CP.State in [dsedit,dsinsert]) then
   begin
   Tb_CPCACOMPETENCIA_DTINICIO.Value:=StrToDatetime('01/'
                                     +formatfloat('00', valint(edt_competencia_mes.text))
                                     +'/'+formatfloat('0000', valint(edt_competencia_ano.text))
                                     );
   end
else if (ValInt(edt_competencia_ano.text)>0) and (tb_CP.State in [dsedit,dsinsert]) then
   begin
   Tb_CPCACOMPETENCIA_DTINICIO.Value:=StrToDatetime('01/'
                                     +'01'
                                     +'/'+formatfloat('0000', valint(edt_competencia_ano.text))
                                     );
   end;

result:=true;
end;


procedure TFrm_Dap.edt_competencia_anoExit(Sender: TObject);
begin
  inherited;
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


procedure TFrm_Dap.DB_CACOMPETENCIA_TIPOExit(Sender: TObject);
begin
  inherited;
  if Tb_CPCACOMPETENCIA_TIPO.asinteger=1 then
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

procedure TFrm_Dap.bbAplicarClick(Sender: TObject);
begin
  inherited;
if Tb_CP.IsEmpty then
   exit;
if Application.MessageBox(pchar('Quer Realmente aplicar o Ajuste de '+edt_valacres.text+' nos titulos selecionados?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
fAplicarAjuste;

end;

procedure TFrm_Dap.fAplicarAjuste;
var
query_aju: TQuery;
mqtdaju: integer;
mqtdreg: integer;
begin
mqtdreg:=Tb_CP.RecordCount;
gbProgresso.Visible:=true;
Gauge1.MaxValue:=mqtdreg;
mqtdaju:=0;
query_aju:=TQuery.Create(nil);
query_aju.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_aju.SQL.add('Update CADDAP set CAVALOR=(CAVALOR-CAVALOR_ACRES) + :NOVOACRES  '
                 +', CAVALOR_ACRES = :NOVOACRES '
                 +' where cachave_id =:chave_id '
                 +' and cachave_id_ano =:chave_id_ano '
                 +' and CASTATUS < 2');



Tb_CP.First;
While not Tb_CP.Eof do
   begin
   query_aju.close;
   query_aju.parambyname('NOVOACRES').AsFloat :=ValFloat(edt_valacres.Text);
   query_aju.parambyname('chave_id').AsInteger:=Tb_CPCACHAVE_ID.AsInteger;
   query_aju.parambyname('chave_id_ano').AsInteger:=Tb_CPCACHAVE_ID_ANO.AsInteger;
   try
      query_aju.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_aju,3787,'SGE','CADVER');
      break;
      end;
      end;
   mqtdaju:=mqtdaju+1;
   Gauge1.Progress:=mqtdaju*100 div mqtdreg;
   Gauge1.Update;
   Tb_CP.Next;
   end;
BBnAtuClick(SELF);
MessageDlg('Concluido!',mtInformation,[mbOk],0);
gbProgresso.Visible:=false;
end;

procedure TFrm_Dap.edt_valacresExit(Sender: TObject);
begin
  inherited;
edt_valacres.Text:=formatfloat(mcasas, valfloat(edt_valacres.Text));
end;


function TFrm_Dap.fGerarAnt(pTipoEve: Integer): Boolean;
var
mCondicao_Old: String;
mChave_Old: Real;
begin

mCondicao_old:=' where CACODEMP='+Tb_CPCACODEMP.AsString
                  +' and CANUMERO='+Tb_CPCANUMERO.AsString
                  +' and CADESD='+QuotedStr(Tb_CPCADESD.AsString)
                  +' and CADUP='+Tb_CPCADUP.AsString
                  +' and CACODFOR='+Tb_CPCACODFOR.AsString;

mChave_Old:=fGerarTabelas_Old(9 //status
                  ,0 //codigo novo valor chave
                  ,'CACODNOV' //nome do campo do novo valor (chave)
                  ,'CADATHOR_EVE' // nome do campo data e hora do evento
                  ,'CACODUSR_EVE' // nome do campo do usuario
                  ,'CATIPEVE' // nome do campo de status
                  ,'CADDAP' // nome da tabela
                  ,mCondicao_old);

end;
end.
