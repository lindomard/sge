unit S_UF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, ComCtrls, Mask, Buttons, ExtCtrls,
  Grids, DBGrids,S_DM1,db,dbtables,func,lerarq,comobj, ToolWin;

type
  TFrm_UF = class(TFrm_C)
    bbBloqueios: TBitBtn;
    pc_compl: TPageControl;
    ts_prodtrib: TTabSheet;
    db_icmsfrete: TDBCheckBox;
    db_icmsnor: TDBCheckBox;
    db_bicms: TDBCheckBox;
    db_septab: TDBCheckBox;
    db_icmsseg: TDBCheckBox;
    db_icmsoutdesp: TDBCheckBox;
    db_icmsipi: TDBCheckBox;
    ts_dadfisc: TTabSheet;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    DBE_orgao: TDBEdit;
    dbe_ender: TDBEdit;
    DBE_banco: TDBEdit;
    DBE_Dep: TDBEdit;
    DBE_cidade: TDBEdit;
    DBE_iesub: TDBEdit;
    dbe_cuf: TDBEdit;
    ts_precosprat: TTabSheet;
    TIPOPC: TDBRadioGroup;
    TIPOPCO: TDBRadioGroup;
    ts_servicos: TTabSheet;
    DBE_IMP_SER: TDBCheckBox;
    DBE_CFOSER: TDBEdit;
    Label13: TLabel;
    pc_cfopaliq: TPageControl;
    ts_Cfop: TTabSheet;
    ts_AliqRedut: TTabSheet;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label92: TLabel;
    DBEdit46: TDBEdit;
    gb_icmsnormal: TGroupBox;
    Label27: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label28: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label29: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label30: TLabel;
    DBEdit15: TDBEdit;
    DBEdit47: TDBEdit;
    Label31: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label32: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    Label33: TLabel;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    Label34: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    Label35: TLabel;
    DBEdit56: TDBEdit;
    DBEdit67: TDBEdit;
    gb_aliqSt: TGroupBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    gb_iva: TGroupBox;
    DBEdit18: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    dbcb_pmc: TDBCheckBox;
    dbcb_subvlrliq: TDBCheckBox;
    gb_redutst: TGroupBox;
    Label41: TLabel;
    DBEdit13: TDBEdit;
    Label42: TLabel;
    DBEdit19: TDBEdit;
    Label43: TLabel;
    DBEdit43: TDBEdit;
    Label44: TLabel;
    DBEdit44: TDBEdit;
    Label45: TLabel;
    DBEdit57: TDBEdit;
    Label46: TLabel;
    DBEdit58: TDBEdit;
    Label47: TLabel;
    DBEdit70: TDBEdit;
    Label48: TLabel;
    DBEdit71: TDBEdit;
    Label49: TLabel;
    DBEdit72: TDBEdit;
    Label91: TLabel;
    DBE_repas: TDBEdit;
    gb_obsnf: TGroupBox;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label63: TLabel;
    dbe_comis: TDBEdit;
    bbaliqredut: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    tsCst: TTabSheet;
    Tb_CLFISCAL_UF: TQuery;
    Tb_CLFISCAL_UFCFCODEMP: TFloatField;
    Tb_CLFISCAL_UFCFUF: TStringField;
    Tb_CLFISCAL_UFCFCLAS_FISCAL: TStringField;
    Tb_CLFISCAL_UFCFCST_RV: TStringField;
    Tb_CLFISCAL_UFCFCST_CF: TStringField;
    Tb_CLFISCAL_UFCFCODUSR_INC: TFloatField;
    Tb_CLFISCAL_UFCFDATHOR_INC: TDateTimeField;
    Tb_CLFISCAL_UFCFCODUSR_ALT: TFloatField;
    Tb_CLFISCAL_UFCFDATHOR_ALT: TDateTimeField;
    U_CLFISCAL_UF: TUpdateSQL;
    Src_CLFISCAL_UF: TDataSource;
    GroupBox1: TGroupBox;
    DBNvg_CSTCF: TDBNavigator;
    DBGrid_CSTCF: TDBGrid;
    Src_UF: TDataSource;
    sbInserir: TSpeedButton;
    DBE_CFOSER_DEV: TDBEdit;
    Label53: TLabel;
    ts_NFE: TTabSheet;
    Label55: TLabel;
    DBE_coduf: TDBEdit;
    lbl_linkcidade: TLabel;
    Label56: TLabel;
    DBE_codreg: TDBEdit;
    DBEdit96: TDBEdit;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    GB_DENTRO: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    txt_DENTRO_CFOP_RV_ST: TEdit;
    txt_DENTRO_SUBST_CFOP_ST: TEdit;
    txt_DENTRO_CFOP_RV_TRIB: TEdit;
    txt_DENTRO_SUBST_CFOP_TRIB: TEdit;
    txt_DENTRO_CFOP_RV_ISENT: TEdit;
    txt_DENTRO_SUBST_CFOP_ISENT: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    txt_DENTRO_CFOP_RVCP_ST: TEdit;
    txt_DENTRO_CFOP_RVCP_TRIB: TEdit;
    txt_DENTRO_CFOP_RVCP_ISENT: TEdit;
    StaticText3: TStaticText;
    txt_DENTRO_CFOP_CF_ST: TEdit;
    txt_DENTRO_CFOP_CF_TRIB: TEdit;
    txt_DENTRO_CFOP_CF_ISENT: TEdit;
    StaticText4: TStaticText;
    CB_CALCIMP_RV_DENTRO: TCheckBox;
    CB_CALCIMP_RVCP_DENTRO: TCheckBox;
    CB_CALCIMP_CF_DENTRO: TCheckBox;
    Src_CadUF_TPPED: TDataSource;
    ToolBar1: TToolBar;
    btn_novo: TBitBtn;
    btn_alterar: TBitBtn;
    btn_gravar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_cancelar: TBitBtn;
    DBNavigator2: TDBNavigator;
    BitBtn10: TBitBtn;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBE_PALIQ_CBA: TDBEdit;
    DBE_PALIQ_CBB: TDBEdit;
    DBE_PALIQ_CBC: TDBEdit;
    DBE_PALIQ_CBD: TDBEdit;
    DBE_PALIQ_CBE: TDBEdit;
    DBE_PALIQ_CBF: TDBEdit;
    DBE_PALIQ_CBG: TDBEdit;
    DBE_PALIQ_CBH: TDBEdit;
    DBE_PALIQ_CBI: TDBEdit;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit60Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure bbBloqueiosClick(Sender: TObject);
    procedure bbaliqredutClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Tb_CLFISCAL_UFAfterInsert(DataSet: TDataSet);
    procedure Tb_CLFISCAL_UFAfterEdit(DataSet: TDataSet);
    procedure Tb_CLFISCAL_UFBeforeInsert(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure DBGrid_CSTCFExit(Sender: TObject);
    procedure Tb_CLFISCAL_UFBeforeEdit(DataSet: TDataSet);
    procedure Tb_CLFISCAL_UFBeforePost(DataSet: TDataSet);
    procedure Src_UFDataChange(Sender: TObject; Field: TField);
    procedure sbInserirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbl_linkcidadeClick(Sender: TObject);
    procedure DBE_codregKeyPress(Sender: TObject; var Key: Char);
    procedure Src_CadUF_TPPEDDataChange(Sender: TObject; Field: TField);
    procedure txt_DENTRO_CFOP_RV_STExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RV_TRIBExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RV_ISENTExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RVCP_STExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RVCP_TRIBExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RVCP_ISENTExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_CF_STExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_CF_TRIBExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_CF_ISENTExit(Sender: TObject);
    procedure txt_DENTRO_SUBST_CFOP_STExit(Sender: TObject);
    procedure txt_DENTRO_SUBST_CFOP_TRIBExit(Sender: TObject);
    procedure txt_DENTRO_SUBST_CFOP_ISENTExit(Sender: TObject);
    procedure txt_DENTRO_CFOP_RV_STKeyPress(Sender: TObject;
      var Key: Char);
    procedure CB_CALCIMP_RV_DENTROClick(Sender: TObject);
    procedure GB_DENTROExit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure txt_DENTRO_CFOP_RV_STEnter(Sender: TObject);
    procedure txt_DENTRO_CFOP_RV_TRIBEnter(Sender: TObject);
    procedure txt_DENTRO_CFOP_RV_ISENTEnter(Sender: TObject);
    procedure txt_DENTRO_CFOP_CF_STEnter(Sender: TObject);
    procedure txt_DENTRO_CFOP_CF_TRIBEnter(Sender: TObject);
    procedure txt_DENTRO_CFOP_CF_ISENTEnter(Sender: TObject);
    procedure txt_DENTRO_SUBST_CFOP_STEnter(Sender: TObject);
    procedure txt_DENTRO_SUBST_CFOP_TRIBEnter(Sender: TObject);
    procedure txt_DENTRO_SUBST_CFOP_ISENTEnter(Sender: TObject);
  private
    { Private declarations }
    mTexto_Retorno: String;
    ant_DENTRO_CFOP_RV_ST: string;
    ant_DENTRO_CFOP_RV_TRIB: string;
    ant_DENTRO_CFOP_RV_ISENT: string;

    ant_DENTRO_CFOP_CF_ST: string;
    ant_DENTRO_CFOP_CF_TRIB: string;
    ant_DENTRO_CFOP_CF_ISENT: string;

    ant_DENTRO_SUBST_CFOP_ST: string;
    ant_DENTRO_SUBST_CFOP_TRIB: string;
    ant_DENTRO_SUBST_CFOP_ISENT: string;

    function fuf01lerant(ptipo: Integer):Boolean;
    function fuftestacfop(ptipo: Integer;pCodCfo: Real): Boolean;
  public
    { Public declarations }
  end;
function fuf01gant(ptipo: Integer): Boolean;

function fAtualizardadosGerais(pOrigem: Integer): Boolean;

var
  Frm_UF: TFrm_UF;
  uf_ori: String;
  moper: Integer;
  IEApp: Variant;
  mAlterouCFOP: Boolean=false;
  mIncluirEstado: Boolean=false;
  mCodUf_ant: String;
  bbufinc_true  : Boolean = False;
  bbufalt_true  : Boolean = False;
  bbufexc_true  : Boolean = False;
implementation

uses S_DM4, S_VendaBloqueada_Relacao, S_DM6, S_DM2;

{$R *.dfm}

procedure TFrm_UF.BBnAtuClick(Sender: TObject);
begin
  inherited;
if uf_ori='consulta' then
   begin
   fUF01lerant(0);
   end
else
   begin
   If DM1.Tb_UF.State in [dsInsert, dsEdit] then
      begin
      Case fMensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes: btn_gravar.Click;
         mrNo : btn_cancelar.Click;
         else btn_cancelar.Click;
         end;
      end;
   flcaduf(CAMPO.ItemIndex,1,0,Edit1.Text);
   end;
end;

procedure TFrm_UF.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
mIncluirEstado:=false;
DBGrid1.Enabled     :=False;
mcodigo:=DM1.Tb_UFPUF.AsString;
GB_DENTRO.Enabled      :=true;
ts_AliqRedut.Enabled  :=true;

db_icmsnor.Enabled    :=true;
db_bicms.Enabled      :=true;
db_septab.Enabled     :=true;
db_icmsfrete.Enabled  :=true;
db_icmsseg.Enabled    :=true;
db_icmsoutdesp.Enabled:=true;
db_icmsipi.Enabled    :=true;
DBE_coduf.Enabled     :=true;
DBE_codreg.Enabled    :=true;
DBE_orgao.Enabled     :=true;
dbe_ender.Enabled     :=true;
DBE_banco.Enabled     :=true;
DBE_Dep.Enabled       :=true;
DBE_cidade.Enabled    :=true;
DBE_iesub.Enabled     :=true;
dbe_cuf.Enabled       :=true;
TIPOPC.Enabled        :=true;
TIPOPCO.Enabled       :=true;
tsCad.Enabled         :=true;
DBE_CFOSER.Enabled    :=true;
DBE_CFOSER_DEV.Enabled:=true;
DBE_IMP_SER.Enabled   :=true;

DM1.Tb_UF.Append;
DBEdit1.Enabled :=True;
DBEDIT1.SetFocus;
mCodUf_ant:='';

btn_novo.Enabled    := False;
btn_alterar.Enabled := False;
btn_excluir.Enabled := False;
btn_gravar.Enabled  := True;
end;

procedure TFrm_UF.DBEdit1Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_UFPUF.Value:=fRetAspas(DM1.Tb_UFPUF.AsString);
if (Trim(DM1.Tb_UFPUF.Value)='') and (Dbedit2.Focused) then
   begin
   fMensagem('Favor digitar uma sigla válida',0,['0'],0);
   dbedit1.setFocus;
   exit;
   end
else
   begin
   if flqr1('PUF','P','CADUF','C','PUF',DM1.Tb_UFPUF.Value) then
      begin
      fMensagem('Estado já cadastrado.',0,['0'],0);
      dbedit1.SetFocus;
      exit;
      end;
   end;
if (DM1.Tb_UFPCODUF_IBGE.AsFloat=0) and (trim(DM1.Tb_UFPUF.AsString)<>'') then
   begin
   DM1.Tb_UFPCODUF_IBGE.Value:=fCodigoEstado(DM1.Tb_UFPUF.AsString);
   end;

if trim(mCodUf_ant)='' then
   fAtualizardadosGerais(0)
else
   begin
   DM1.Query2.close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADUF_TPPED set UFTP_UF='+chr(39)+DM1.Tb_UFPUF.AsString+chr(39));
   DM1.Query2.SQL.Add(' where  UFTP_UF='+chr(39)+mCodUf_ant+chr(39));
   if not DM1.Qr_TID.Locate('TINOME','CADUF',[]) then
     DM1.Query2.Sql.add(' and (UFTP_CODEMP=0'+DM1.Tb_UFPCODEMP.AsString+' or UFTP_CODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger+ (iif(DM1.Tb_UFPUF.AsInteger>100,-100,100)) )+')')
   else if DM1.Qr_TIDTIQTD.AsInteger=1 then
     DM1.Query2.Sql.add(' and UFTP_CODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger));
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro ao Atualizar os Parametros de Pedidos!',0,['0'],0);
      exit;
      end;
   end;
flcaduf_tpped(0,0,DM1.Tb_UFPCODEMP.AsInteger,DM1.Tb_UFPUF.AsString,'','0');

end;

procedure TFrm_UF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if uf_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   btn_alterar.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   uf_ori := '';
   end;
end;

procedure TFrm_UF.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_UFPUF.IsNull then
   begin
   fMensagem('Nao a registro a ser alterado',0,['0'],0);
   exit;
   end;
mIncluirEstado:=true;
moper:=8;
DM1.Tb_UF.Edit;
GB_DENTRO.Enabled     :=true;
ts_AliqRedut.Enabled  :=true;
db_icmsnor.Enabled    :=true;
db_bicms.Enabled      :=true;
db_septab.Enabled     :=true;
db_icmsfrete.Enabled  :=true;
db_icmsseg.Enabled    :=true;
db_icmsoutdesp.Enabled:=true;
db_icmsipi.Enabled    :=true;
dbe_comis.Enabled     :=true;
DBE_orgao.Enabled     :=true;
dbe_ender.Enabled     :=true;
DBE_banco.Enabled     :=true;
DBE_Dep.Enabled       :=true;
DBE_cidade.Enabled    :=true;
DBE_iesub.Enabled     :=true;
DBE_coduf.Enabled     :=true;
DBE_codreg.Enabled    :=true;
dbe_cuf.Enabled       :=true;
TIPOPC.Enabled        :=true;
TIPOPCO.Enabled       :=true;
tsCad.Enabled         :=true;
DBE_CFOSER.Enabled    :=true;
DBE_CFOSER_DEV.Enabled:=true;
DBE_IMP_SER.Enabled   :=true;

if (DM1.Tb_UFPCODUF_IBGE.AsFloat=0) and (trim(DM1.Tb_UFPUF.AsString)<>'') then
   begin
   DM1.Tb_UFPCODUF_IBGE.Value :=fCodigoEstado(DM1.Tb_UFPUF.AsString);
   if ValFloat(copy(DM1.Tb_UFPCODUF_IBGE.AsString,1,1))>0 then
      DM1.Tb_UFPCODREG_IBGE.Value:=ValFloat(copy(DM1.Tb_UFPCODUF_IBGE.AsString,1,1));
   end;


btn_novo.Enabled    := False;
btn_alterar.Enabled := False;
btn_excluir.Enabled := False;
btn_gravar.Enabled  := True;
   
DBEdit2.SetFocus;

end;

procedure TFrm_UF.GRAVARClick(Sender: TObject);
begin
  inherited;
if Trim(DM1.Tb_UFPUF.Value)='' then
   begin
   fMensagem('Favor digitar uma Sigla Válida!',0,['0'],0);
   DBEDIT1.SetFocus;
   exit;
   end;
if Trim(DM1.Tb_UFPNOM.Value)='' then
   begin
   fMensagem('Favor digitar um nome válido!',0,['0'],0);
   DBEDIT2.SetFocus;
   exit;
   end;

if ( (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) and (DM1.Tb_UFPUF.AsString<>'EX')) then
   begin
   if (DM1.Tb_UFPCODUF_IBGE.AsFloat=0) then
      begin
      fmensagem('Codigo do Estado Junto ao IBGE, campo obrigatorio!',0,['0'],0);
      pc_compl.ActivePage:=ts_NFE;
      DBE_coduf.SetFocus;
      exit;
      end;
   if trim(DM1.Tb_UFPCODREG_IBGE.AsString)='' then
      begin
      fmensagem('Codigo da Regiao Junto ao IBGE, campo obrigatorio!',0,['0'],0);
      pc_compl.ActivePage:=ts_NFE;
      DBE_codreg.SetFocus;
      exit;
      end;


   end;

if moper=8 then
   fuf01gant(moper);
DM1.Tb_UFPCODUSR.Value:=codusr;
DM1.Tb_UFPDTALT.Value :=now;
DM1.Tb_UFPHRALT.Value :=FormatDateTime(fhr, time);
dm1.tB_Uf.Post;
dbedit1.Enabled :=False;
mIncluirEstado  :=false;
btn_cancelar.Click;
end;

procedure TFrm_UF.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_UFPUF.IsNull then
   begin
   fMensagem('Nao ha registro a ser excluido!',0,['0'],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir o Estado?',0,['1','2'],2)=mrYes then
   begin
   fuf01gant(9);
   DM1.Query2.close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Delete from CADUF_TPPED where UFTP_UF='+chr(39)+DM1.Tb_UFPUF.AsString+chr(39));
   if not DM1.Qr_TID.Locate('TINOME','CADUF',[]) then
     DM1.Query2.Sql.add(' and (UFTP_CODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger)+' or UFTP_CODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger+ (iif(DM1.Tb_UFPCODEMP.AsInteger>100,-100,100)) )+')')
   else if DM1.Qr_TIDTIQTD.AsInteger=1 then
     DM1.Query2.Sql.add(' and UFTP_CODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger));

   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro ao Excluir o CADUF_TPPED!',0,['0'],0);
      end;

   DM1.Tb_UF.Delete;

   btn_novo.Enabled    := True;
   btn_alterar.Enabled := True;
   btn_excluir.Enabled := True;
   btn_gravar.Enabled  := False;


   end;
end;

procedure TFrm_UF.CANCELARClick(Sender: TObject);
begin
  inherited;
mAlterouCFOP:=false;  
if (moper=0) and (mIncluirEstado) then
   begin
   DM1.Query2.close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Delete from CADUF_TPPED where UFTP_UF='+chr(39)+DM1.Tb_UFPUF.AsString+chr(39));
   if not DM1.Qr_TID.Locate('TINOME','CADUF',[]) then
     DM1.Query2.Sql.add(' and (UFTP_CODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger)+' or UFTP_CODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger+ (iif(DM1.Tb_UFPCODEMP.AsInteger>100,-100,100)) )+')')
   else if DM1.Qr_TIDTIQTD.AsInteger=1 then
     DM1.Query2.Sql.add(' and UFTP_CODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger));
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro ao Excluir o CADUF_TPPED!',0,['0'],0);
      end;
   end;
moper:=0;
DM1.Tb_UF.Cancel;

GB_DENTRO.Enabled     :=false;
ts_AliqRedut.Enabled  :=false;
db_icmsnor.Enabled    :=false;
db_bicms.Enabled      :=false;
db_septab.Enabled     :=false;
db_icmsfrete.Enabled  :=false;
db_icmsseg.Enabled    :=false;
db_icmsoutdesp.Enabled:=false;
db_icmsipi.Enabled    :=false;
dbe_comis.Enabled     :=false;
DBE_coduf.Enabled     :=false;
DBE_codreg.Enabled    :=false;

DBE_orgao.Enabled     :=false;
dbe_ender.Enabled     :=false;
DBE_banco.Enabled     :=false;
DBE_Dep.Enabled       :=false;
DBE_cidade.Enabled    :=false;
DBE_iesub.Enabled     :=false;
dbe_cuf.Enabled       :=false;
TIPOPC.Enabled        :=false;
TIPOPCO.Enabled       :=false;
tsCad.Enabled         :=true;
DBE_CFOSER.Enabled    :=false;
DBE_CFOSER_DEV.Enabled:=false;
DBE_IMP_SER.Enabled   :=false;
mIncluirEstado        :=false;

btn_novo.Enabled    := True;
btn_alterar.Enabled := True;
btn_excluir.Enabled := True;
btn_gravar.Enabled  := False;
end;

procedure TFrm_UF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  PC1.ActivePage := tsCad;

  If DM1.Tb_UF.State in [dsInsert, dsEdit] then  begin
     Case fMensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
       mrYes: btn_gravar.Click;
       mrNo : btn_cancelar.Click;
     else
       CanClose:=False;
     end;
  end;
end;

procedure TFrm_UF.FormCreate(Sender: TObject);
begin
  inherited;
  DM2.Tb_UF_TPPED.Close;

uf_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADUF') then
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

btn_novo.Enabled    := bbinc_true;
btn_alterar.Enabled := bbalt_true;
btn_excluir.Enabled := bbexc_true;
tsCad.Enabled       := true;
if DBGrid1.DataSource=nil then
   DBGrid1.DataSource:=DM1.Src_UF;
if DBGrid2.DataSource=nil then
   DBGrid2.DataSource:=DM2.Src_UF_TPPED;

end;

procedure TFrm_UF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if uf_ori='' then
      begin
      frm_uf.PC1.ActivePageIndex:=0;
      frm_uf.ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      uf_ori := '';
      end;
   abort;
   end;

end;

function fuf01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru2, minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(PCODNOV) from OLD_CADUF');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADUF (';
minstru2:='';
v:='';
for x:=0 to DM1.Tb_UF.FieldCount-1 do
   begin
   if DM1.Tb_UF.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_UF.Fields[x].FieldName;
   v:=',';
   end;

minstru2:=minstru2+',PCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_UF.FieldCount-1 do
   begin
   if DM1.Tb_UF.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM1.Tb_UF.Fields[x].FieldName='PSTATUS' then
      minstru2:=minstru2+v+FormatFloat('0',ptipo)+' as PSTATUS '
   else if DM1.Tb_UF.Fields[x].FieldName='PCODUSR' then
      minstru2:=minstru2+v+FormatFloat('00000',codusr)+' as PCODUSR '
   else if DM1.Tb_UF.Fields[x].FieldName='PDTALT' then
      minstru2:=minstru2+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as PDTALT '
   else if DM1.Tb_UF.Fields[x].FieldName='PHRALT' then
      minstru2:=minstru2+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as PHRALT '
   else
      minstru2:=minstru2+v+DM1.Tb_UF.Fields[x].FieldName;
   v:=',';
   end;
minstru2:=minstru2+v+FormatFloat('0000000000',mcod)+' as PCODNOV ';
minstru2:=minstru2+' from CADUF where PCODEMP=0'+DM1.Tb_UFPCODEMP.AsString
                +' and PUF='+chr(39)+DM1.Tb_UFPUF.Value+chr(39);
DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
DM1.Query1.SQL.add(minstru2);
Try
   DM1.Query1.ExecSQL;
except
   fMensagem('Erro ao Fazer o Backup da Alteracao UF659. Contactar Suporte',0,['0'],0);
   end;
DM1.SG_ASSOC.Commit;
result:=True;



end;
function tFrm_UF.fuf01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_UF.FieldCount-1 do
   begin
   if DM1.Tb_UF.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_UF.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADUF where PCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_UF.Close;
DM1.Tb_UF.SQL.Clear;
DM1.Tb_UF.SQL.add(minstru);
DM1.Tb_UF.Open;
BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;




function TFrm_UF.fuftestacfop(ptipo: Integer;pCodCfo: Real): Boolean;
var
mtextocfo: String;
begin
if pCodCfo>0 then
   begin
   if not flqr1('CFNOME','CF','CADCFO','N','CFCODCFO',FloatToStr(pCodCfo)) then
      begin
      fMensagem('Código não cadastrado.',0,['0'],0);
      result:=False;
      exit;
      end;
   mtextocfo:=FloatToStr(pcodcfo);
   mtextocfo:=copy(mtextocfo,1,1);
   if DM1.Tb_UFPUF.Value<>DM1.Tb_EmpUF.Value then
      begin
      if (ptipo=0) and (ValInt(mtextocfo)<>6) then
         begin
         fMensagem('Este CFO tem quer ser começado com o digito 6!',0,['0'],0);
         result:=false;
         exit;
         end
      else if (ptipo=1) and (ValInt(mtextocfo)<>2) then
         begin
         fMensagem('Este CFO tem quer ser começado com o digito 2!',0,['0'],0);
         result:=false;
         exit;
         end;
      end
   else
      begin
      if (ptipo=0) and (ValInt(mtextocfo)<>5) then
         begin
         fMensagem('Este CFO tem quer ser começado com o digito 5!',0,['0'],0);
         result:=false;
         exit;
         end
      else if (ptipo=1) and (ValInt(mtextocfo)<>1) then
         begin
         fMensagem('Este CFO tem quer ser começado com o digito 1!',0,['0'],0);
         result:=false;
         exit;
         end;
      end;
   end;

result:=True;
end;

procedure TFrm_UF.DBEdit60Exit(Sender: TObject);
begin
  inherited;

end;

{
definição dos campos da tabela de estado:

PCODEMP  NUMBER(10, 0)    Código da Empresa
PUF      VARCHAR2(2)      Unidade da Federação,
PNOM     VARCHAR2(20)     Nome do Estado,
PORG     VARCHAR2(41)     Orgao Para Recebimento de Documentos,
PDEP     VARCHAR2(41),    Departamento para recebimento de documentos,
PEND     VARCHAR2(41),    Endereco para  recebimento de documentos
PCID     VARCHAR2(41),    Cidade para  recebimento de documentos,
PBAN     VARCHAR2(41),    Banco para recebimento de documentos,
PCUF     VARCHAR2(3),     UF para recebimento de documentos,
PCFOCFN  NUMBER(10, 0),   CFO p/Venda Consumidor Final Normal/outros
PCFOCFR  NUMBER(10, 0),   CFO p/Venda Consumidor Final Retido
PCFORVN  NUMBER(10, 0),   CFO p/Revenda Normal/Outros
PCFORVR  NUMBER(10, 0),   CFO p/Revenda Retido
PCFOSRN  NUMBER(10, 0),   CFO p/Simples Remessa Normal/Outros
PCFOSRR  NUMBER(10, 0),   CFO p/Simples Remessa Retido
PCFODFN  NUMBER(10, 0),   CFO p/Devolução Fornecedor Normal/Outros
PCFODFR  NUMBER(10, 0),   CFO p/Devolução Fornecedor Retido
PCFORTN  NUMBER(10, 0),   CFO p/Remessa para Troca Normal/Outros
PCFORTR  NUMBER(10, 0),   CFO p/Remessa para Troca Retido
PCFOTRN  NUMBER(10, 0),   CFO p/Transferencias Normal/Outros
PCFOTRR  NUMBER(10, 0),   CFO p/Transferencias Retido
PCFODCN  NUMBER(10, 0),   CFO p/Devolução de Cliente Normal
PCFODCR  NUMBER(10, 0),   CFO p/Devolução de Cliente Retido
PCFOBEN  NUMBER(10, 0),   CFO p/Remessa para Beneficiamento Normal/Outros
PCFOBER  NUMBER(10, 0),   CFO p/Remessa para Beneciciamento Retido
PCFOCON  NUMBER(10, 0),   CFO Remessa p/ Consignação Normal/Outras
PCFOCOR  NUMBER(10, 0),   CFO Remessa p/ Consignação Retida/Outras
PCFONCN  NUMBER(10, 0),   CFO p/Notas Complementares Normal/Outros
PCFONCR  NUMBER(10, 0),   CFO p/Notas Complementares Retido
PCFOVFER NUMBER(10, 0),   CFO p/Vendas Fora do Estabelecimento Retido
PCFOVFEO NUMBER(10, 0),   CFO p/Vendas Fora do Estabelecimento Normal/Outros
PCFODVFER NUMBER(10, 0),  CFO p/Devolução de Vendas Fora do Estabelecimento Retido
PCFODVFEO NUMBER(10, 0),  CFO p/Devolução de Vendas Fora do Estabelecimento Outros/Normal
PCFODVCR NUMBER(10, 0),   CFO p/Devolução de Vendas Consignados Retido
PCFODVCO NUMBER(10, 0),   CFO p/Devolução de Vendas Consignados Outros/Normal
PCFOSER  NUMBER(10, 0)    CFO p/Serviços
PICMSFRETE NUMBER(10,0)   Calcular icms Sobre o Frete 1-Sim 0-Nao
PIESUB   VARCHAR2(20),    Inscrição Estadual do Substituto Tributario
PICMSC   NUMBER(10, 3),   Icms de Credito (Destino)
PICMSD   NUMBER(10, 3),   Icms de Débito  (Origem)
PIVAINA  NUMBER(10, 3),   IVA para Produtos Inalterados
PIVANEG  NUMBER(10, 3),   IVA para Produtos Negativos
PIVAPOS  NUMBER(10, 3),   IVA para Produtos Positivos
PREDUTRA NUMBER(10, 3),   Redutor de icms Retido Tabela A
PREDUTRB NUMBER(10, 3),   Redutos de Icms Retido Tabela B
PREDUTNA NUMBER(10, 3),   Redutor de Icms Normal Tabela A
PREDUTNB NUMBER(10, 3),   Redutor de Icms Normal Tabela B
PREPAS   NUMBER(10, 3),   Alíquota de Repasse de Icms
PBICMS   VARCHAR2(1),     Calcular Icms Normal Para Produtos Retidos S_Sim N-Nao
PLIMINA1 VARCHAR2(57),    Liminar1/Obs. para NF linha 01
PLIMINA2 VARCHAR2(57),    Liminar2/Obs. para NF linha 02
PSEPTAB  VARCHAR2(1),     Separar os Produtos da Tabela A e B Quando Faturar
PTIPCAL  VARCHAR2(1),     Tipo de Calculo de Icms: S-Calcula Pelo PMC N-Pelo IVA
PCALCRET NUMBER(1, 0),    Calcular icms Retido Sobre o Valor Liquido: 0-Nao 1-Sim
PTIPOPC  NUMBER(2, 0),    Tipo de Preço Padrao: 0-Preço do &Cadastro
                                                1-Preço &Anterior
                                                2-Preço &Extra
                                                3-Preço &Líquido

PTIPOPCO NUMBER(2, 0),   Tabela de Preço Padrao 0-Preco1, 1-Preco2, 2-Preco3
PALISSQN NUMBER(10, 3),  Alíquota de INSSQN
PCOMIS   NUMBER(10, 3),  Percentual de Comissao do Estado
PICMSA   NUMBER(10, 3),  Aliquota de Icms Para Produtos Tabela A
PICMSB   NUMBER(10, 3),  Alíquota de ICMS Para Produtos Tabela B
PSTATUS  NUMBER(1, 0),   Status
PCODUSR  NUMBER(10, 0),  Código do Usuario
PDTALT   DATE,           Data de Alteração
PHRALT   VARCHAR2(10),   Hora da Alteração
PICMSNOR NUMBER(2, 0),   Calcular Icms para Produtos Tributados

}
procedure TFrm_UF.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHANGEUF.Value=1 then
   begin
   if uf_ori='consulta' then
      begin
      fUF01lerant(0);
      end
   else
      begin
      If DM1.Tb_UF.State in [dsInsert, dsEdit] then
         begin
         Case fMensagem('O registro atual não está gravado!'+#13
                       +'Deseja gravar agora?',0,['1','2','3'],0) of
            mrYes: btn_gravar.Click;
            mrNo : btn_cancelar.Click;
            else btn_cancelar.Click;
            end;
         end;
      end;
   flcaduf(CAMPO.ItemIndex,1,0,Edit1.Text);
   end;

end;

procedure TFrm_UF.SAIRClick(Sender: TObject);
begin
  inherited;

  if uf_ori = '' then  close; 
end;

procedure TFrm_UF.bbBloqueiosClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_VendaBloqueada_Relacao, Frm_VendaBloqueada_Relacao);
Frm_VendaBloqueada_Relacao.Ts_Vendedor.TabVisible    :=False;
Frm_VendaBloqueada_Relacao.Ts_Fornecedor.TabVisible  :=True;
Frm_VendaBloqueada_Relacao.Ts_Estados.TabVisible     :=False;
Frm_VendaBloqueada_Relacao.Ts_Cidade.TabVisible      :=False;
Frm_VendaBloqueada_Relacao.Ts_Bairros.TabVisible     :=False;
Frm_VendaBloqueada_Relacao.Ts_RamoClientes.TabVisible:=False;
Frm_VendaBloqueada_Relacao.Ts_Clientes.TabVisible    :=False;
Frm_VendaBloqueada_Relacao.Ts_RamoProdutos.TabVisible:=False;
Frm_VendaBloqueada_Relacao.Ts_Produtos.TabVisible    :=False;
Frm_VendaBloqueada_Relacao.CODIGO.Enabled            :=False;
Frm_VendaBloqueada_Relacao.bbAtualizar.Enabled          :=False;
Frm_VendaBloqueada_Relacao.St_Nivel.Caption:='NIVEL: ESTADO';
mNivelConsulta:=3;
Frm_VendaBloqueada_Relacao.CODIGO.Text:=DM1.Tb_UFPUF.AsString;
Frm_VendaBloqueada_Relacao.NOME.Text:=DM1.Tb_UFPNOM.AsString;
Frm_VendaBloqueada_Relacao.bbAtualizar.Click;
Frm_VendaBloqueada_Relacao.Show;

end;

procedure TFrm_UF.bbaliqredutClick(Sender: TObject);
begin
  inherited;
pc_cfopaliq.ActivePage:=ts_AliqRedut;
end;

procedure TFrm_UF.BitBtn1Click(Sender: TObject);
begin
  inherited;
pc_compl.ActivePage:=ts_dadfisc;
end;

procedure TFrm_UF.BitBtn2Click(Sender: TObject);
begin
  inherited;
pc_compl.ActivePage:=ts_precosprat;
end;

procedure TFrm_UF.BitBtn3Click(Sender: TObject);
begin
  inherited;
pc_compl.ActivePage:=ts_servicos;
end;

procedure TFrm_UF.Tb_CLFISCAL_UFAfterInsert(DataSet: TDataSet);
begin
  inherited;
if dm1.Tb_UFPUF.AsString='' then
   begin
   fmensagem('Favor Digitar a sigla do estado primeiro!',0,['0'],0);
   Tb_CLFISCAL_UF.Cancel;
   abort;
   end;
Tb_CLFISCAL_UFCFUF.Value             :=DM1.Tb_UFPUF.AsString;
Tb_CLFISCAL_UFCFCODEMP.Value         :=codemp;
Tb_CLFISCAL_UFCFDATHOR_INC.AsDateTime:=Now;
Tb_CLFISCAL_UFCFCODUSR_INC.Value     :=codusr;
end;

procedure TFrm_UF.Tb_CLFISCAL_UFAfterEdit(DataSet: TDataSet);
begin
  inherited;
Tb_CLFISCAL_UFCFDATHOR_ALT.AsDateTime:=Now;
Tb_CLFISCAL_UFCFCODUSR_ALT.Value     :=codusr;

end;

procedure TFrm_UF.Tb_CLFISCAL_UFBeforeInsert(DataSet: TDataSet);
begin
  inherited;
if not (DM1.Tb_UF.State in [dsEdit,dsInsert]) then
   begin
   Tb_CLFISCAL_UF.Cancel;
   abort;
   end;

end;

procedure TFrm_UF.c(DataSet: TDataSet);
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

procedure TFrm_UF.DBGrid_CSTCFExit(Sender: TObject);
begin
  inherited;
if Tb_CLFISCAL_UF.State in [dsEdit,dsInsert] then
   begin
   if (Tb_CLFISCAL_UFCFCLAS_FISCAL.IsNull) or (Tb_CLFISCAL_UFCFCST_RV.IsNull)
      or (Tb_CLFISCAL_UFCFCST_CF.IsNull) then
      Tb_CLFISCAL_UF.Cancel
   else
      Tb_CLFISCAL_UF.Post;
   end;
end;

procedure TFrm_UF.Tb_CLFISCAL_UFBeforeEdit(DataSet: TDataSet);
begin
  inherited;
if not (DM1.Tb_UF.State in [dsEdit,dsInsert]) then
   begin
   Tb_CLFISCAL_UF.Cancel;
   abort;
   end;

end;

procedure TFrm_UF.Tb_CLFISCAL_UFBeforePost(DataSet: TDataSet);
begin
  inherited;
if Tb_CLFISCAL_UF.State in [dsEdit,dsInsert] then
   begin
   if (Tb_CLFISCAL_UFCFCLAS_FISCAL.IsNull) or (Tb_CLFISCAL_UFCFCST_RV.IsNull)
      or (Tb_CLFISCAL_UFCFCST_CF.IsNull) then
      begin
      Tb_CLFISCAL_UF.Cancel;
      abort;
      end;
   end;

end;

procedure TFrm_UF.Src_UFDataChange(Sender: TObject; Field: TField);
begin
  inherited;
if not (DM1.Tb_UF.State in [dsEdit,dsInsert]) then
   begin
   if (not (Tb_CLFISCAL_UF.Active)) or (DM1.Tb_UFPUF.AsString<>Tb_CLFISCAL_UFCFUF.AsString) then
      begin
      Tb_CLFISCAL_UF.Close;
      Tb_CLFISCAL_UF.SQL.Clear;
      Tb_CLFISCAL_UF.SQL.Add('Select * from CADCLFISCAL_UF where CFUF='+chr(39)+DM1.Tb_UFPUF.AsString+chr(39));
      if not DM1.Qr_TID.Locate('TINOME','CADUF',[]) then
        Tb_CLFISCAL_UF.Sql.add(' and (CFCODEMP=0'+DM1.Tb_UFPCODEMP.AsString+' or CFCODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger+(iif(DM1.Tb_UFPCODEMP.AsInteger>100,-100,100)) )+')')
      else if DM1.Qr_TIDTIQTD.AsInteger=1 then
        Tb_CLFISCAL_UF.Sql.add(' and CFCODEMP=0'+DM1.Tb_UFPCODEMP.AsString);
      Tb_CLFISCAL_UF.SQL.Add(' order by CFCLAS_FISCAL');
      Tb_CLFISCAL_UF.Open;
      end;
   if (not (DM2.Tb_UF_TPPED.Active)) or (DM1.Tb_UFPUF.AsString<>DM2.Tb_UF_TPPEDUFTP_UF.AsString) then
      begin
      flcaduf_tpped(0,0,DM1.Tb_UFPCODEMP.AsInteger,DM1.Tb_UFPUF.AsString,'','0');
      end;
   end;
end;

procedure TFrm_UF.sbInserirClick(Sender: TObject);
var
mcst_rv,mcst_cf: string;
begin
  inherited;
if not btn_gravar.Enabled then
   exit;
if DM1.Tb_UFPUF.IsNull then
   begin
   fmensagem('Favor Cadastrar um Estado Valido!',0,['0'],0);
   exit;
   end;

if Tb_CLFISCAL_UF.IsEmpty then
   begin
   mcst_rv:='000';
   mcst_cf:='000';
   end
else
   begin
   if Tb_CLFISCAL_UFCFCST_RV.AsString='' then
      mcst_rv:='010'
   else
      mcst_rv:=Tb_CLFISCAL_UFCFCST_RV.AsString;

   if Tb_CLFISCAL_UFCFCST_CF.AsString='' then
      mcst_cf:='010'
   else
      mcst_cf:=Tb_CLFISCAL_UFCFCST_CF.AsString;
   end;
dm1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Delete from CADCLFISCAL_UF where CFUF='+chr(39)+DM1.Tb_UFPUF.AsString+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADUF',[]) then
  DM1.Query1.Sql.add(' and (CFCODEMP=0'+DM1.Tb_UFPCODEMP.AsString+' or CFCODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger+(iif(DM1.Tb_UFPCODEMP.AsInteger>100,-100,100)) )+')')
else if DM1.Qr_TIDTIQTD.AsInteger=1 then
  DM1.Query1.Sql.add(' and CFCODEMP=0'+DM1.Tb_UFPCODEMP.AsString);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftString,'DATHOR_INC',ptInput);
DM1.Query1.Params.CreateParam(ftString,'DATHOR_ALT',ptInput);
DM1.query1.SQL.Add('Insert into CADCLFISCAL_UF (');
DM1.query1.SQL.Add('  CFCODEMP ');
DM1.query1.SQL.Add(' ,CFUF ');
DM1.query1.SQL.Add(' ,CFCLAS_FISCAL ');
DM1.query1.SQL.Add(' ,CFCST_RV ');
DM1.query1.SQL.Add(' ,CFCST_CF ');
DM1.query1.SQL.Add(' ,CFCODUSR_INC ');
DM1.query1.SQL.Add(' ,CFDATHOR_INC ');
DM1.query1.SQL.Add(' ,CFCODUSR_ALT ');
DM1.query1.SQL.Add(' ,CFDATHOR_ALT ');
DM1.query1.SQL.Add(' ) ');
DM1.query1.SQL.Add(' Select '+IntToStr(codemp));
DM1.query1.SQL.Add(' ,'+chr(39)+DM1.Tb_UFPUF.AsString+chr(39));
DM1.query1.SQL.Add(' ,PDCLAS ');
DM1.query1.SQL.Add(' ,'+chr(39)+mcst_rv+chr(39));
DM1.query1.SQL.Add(' ,'+chr(39)+mcst_cf+chr(39));
DM1.query1.SQL.Add(' ,'+IntToStr(codusr));
DM1.query1.SQL.Add(' ,:DATHOR_INC');
DM1.query1.SQL.Add(' ,'+IntToStr(codusr));
DM1.query1.SQL.Add(' ,:DATHOR_ALT');
DM1.query1.SQL.Add(' from CADPRO ');
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   DM1.query1.SQL.Add(' where PDCODEMP=0'+IntToStr(codemp));
DM1.query1.SQL.Add(' group by PDCLAS ');
DM1.Query1.ParamByName('DATHOR_INC').AsDateTime:=NOW;
DM1.Query1.ParamByName('DATHOR_ALT').AsDateTime:=NOW;

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
Tb_CLFISCAL_UF.Close;
Tb_CLFISCAL_UF.SQL.Clear;
Tb_CLFISCAL_UF.SQL.Add('Select * from CADCLFISCAL_UF where CFUF='+chr(39)+DM1.Tb_UFPUF.AsString+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADUF',[]) then
  Tb_CLFISCAL_UF.Sql.add(' and (CFCODEMP=0'+DM1.Tb_UFPCODEMP.AsString+' or CFCODEMP=0'+IntToStr(DM1.Tb_UFPCODEMP.AsInteger+(iif(DM1.Tb_UFPCODEMP.AsInteger>100,-100,100)) )+')')
else if DM1.Qr_TIDTIQTD.AsInteger=1 then
  Tb_CLFISCAL_UF.Sql.add(' and CFCODEMP=0'+DM1.Tb_UFPCODEMP.AsString);
Tb_CLFISCAL_UF.SQL.Add(' order by CFCLAS_FISCAL');
Tb_CLFISCAL_UF.Open;
fmensagem('Concluido!',0,['0'],0);

end;

procedure TFrm_UF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

function fAtualizardadosGerais(pOrigem: Integer): Boolean;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADUF_TPPED ('
          +' UFTP_CODEMP'
          +',UFTP_UF'
          +',UFTP_CODTPPED'
          +',UFTP_CFOP_RV_ST'
          +',UFTP_CFOP_RV_TRIB'
          +',UFTP_CFOP_RV_ISENTO'
          +',UFTP_CALCIMP_RV'
          +',UFTP_CFOP_RVCP_ST'
          +',UFTP_CFOP_RVCP_TRIB'
          +',UFTP_CFOP_RVCP_ISENTO'
          +',UFTP_CALCIMP_RVCP'
          +',UFTP_CFOP_CF_ST'
          +',UFTP_CFOP_CF_TRIB'
          +',UFTP_CFOP_CF_ISENTO'
          +',UFTP_CALCIMP_CF'
          +',UFTP_SUBST_CFOP_ST'
          +',UFTP_SUBST_CFOP_TRIB'
          +',UFTP_SUBST_CFOP_ISENTO )'
          +' (Select '
          +DM1.Tb_UFPCODEMP.AsString
          +','+chr(39)+DM1.Tb_UFPUF.AsString+chr(39)
          +', TPCODIGO ');
if DM1.Tb_UFPUF.Value=DM1.Tb_EmpUF.Value then
   begin
   DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RV_ST ');
   DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RV_TRIB ');
   DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RV_ISENTO ');
   DM1.Query2.SQL.Add(', TPCALCIMP_RV_DENTRO ');

   DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RVCP_ST ');
   DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RVCP_TRIB ');
   DM1.Query2.SQL.Add(', TPDENTRO_CFOP_RVCP_ISENTO ');
   DM1.Query2.SQL.Add(', TPCALCIMP_RVCP_DENTRO ');

   DM1.Query2.SQL.Add(', TPDENTRO_CFOP_CF_ST ');
   DM1.Query2.SQL.Add(', TPDENTRO_CFOP_CF_TRIB ');
   DM1.Query2.SQL.Add(', TPDENTRO_CFOP_CF_ISENTO ');
   DM1.Query2.SQL.Add(', TPCALCIMP_CF_DENTRO ');

   DM1.Query2.SQL.Add(', TPDENTRO_SUBST_CFOP_ST ');
   DM1.Query2.SQL.Add(', TPDENTRO_SUBST_CFOP_TRIB');
   DM1.Query2.SQL.Add(', TPDENTRO_SUBST_CFOP_ISENTO ');
   end
else
   begin
   DM1.Query2.SQL.Add(', TPFORA_CFOP_RV_ST ');
   DM1.Query2.SQL.Add(', TPFORA_CFOP_RV_TRIB ');
   DM1.Query2.SQL.Add(', TPFORA_CFOP_RV_ISENTO ');
   DM1.Query2.SQL.Add(', TPCALCIMP_RV_FORA ');

   DM1.Query2.SQL.Add(', TPFORA_CFOP_RVCP_ST ');
   DM1.Query2.SQL.Add(', TPFORA_CFOP_RVCP_TRIB ');
   DM1.Query2.SQL.Add(', TPFORA_CFOP_RVCP_ISENTO ');
   DM1.Query2.SQL.Add(', TPCALCIMP_RVCP_FORA ');

   DM1.Query2.SQL.Add(', TPFORA_CFOP_CF_ST ');
   DM1.Query2.SQL.Add(', TPFORA_CFOP_CF_TRIB ');
   DM1.Query2.SQL.Add(', TPFORA_CFOP_CF_ISENTO ');
   DM1.Query2.SQL.Add(', TPCALCIMP_CF_FORA ');

   DM1.Query2.SQL.Add(', TPFORA_SUBST_CFOP_ST ');
   DM1.Query2.SQL.Add(', TPFORA_SUBST_CFOP_TRIB');
   DM1.Query2.SQL.Add(', TPFORA_SUBST_CFOP_ISENTO ');
   end;
DM1.Query2.SQL.Add(' from CADTIPPED )');
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query2.SQL.SaveToFile('c:\sql01.txt');
   fmensagem('Erro ao Carregar dados dos tipos de pedidos!',0,['0'],0);
   end;


result:=true;
end;
procedure TFrm_UF.lbl_linkcidadeClick(Sender: TObject);
begin
  inherited;
IEApp := CreateOLEObject('InternetExplorer.Application');
IEApp.visible := true;
IEApp.Top := 0;
IEApp.Left := 0;
IEApp.width := screen.width;
IEApp.height := screen.height;
IEApp.Navigate(lbl_linkcidade.Caption);

end;

procedure TFrm_UF.DBE_codregKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if DM1.Tb_UF.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_UFPCODREG_IBGE.Value:=ValFloat(fChamareg(0,'frm_nfe_reg',Key));

      key:=#0;
      end;
   end;

end;

procedure TFrm_UF.Src_CadUF_TPPEDDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
if (not DM2.Tb_UF_TPPED.Active) or (DM2.Tb_UF_TPPEDUFTP_UF.IsNull) then
   begin
   GB_DENTRO.Caption:='CFOP para movimentação';
   txt_DENTRO_CFOP_RV_ST.Text       := '';
   txt_DENTRO_CFOP_RV_TRIB.Text     := '';
   txt_DENTRO_CFOP_RV_ISENT.Text    := '';
   CB_CALCIMP_RV_DENTRO.Checked     := true;

   txt_DENTRO_CFOP_RVCP_ST.Text     := '';
   txt_DENTRO_CFOP_RVCP_TRIB.Text   := '';
   txt_DENTRO_CFOP_RVCP_ISENT.Text  := '';
   CB_CALCIMP_RVCP_DENTRO.Checked   := true;

   txt_DENTRO_CFOP_CF_ST.Text       := '';
   txt_DENTRO_CFOP_CF_TRIB.Text     := '';
   txt_DENTRO_CFOP_CF_ISENT.Text    := '';
   CB_CALCIMP_CF_DENTRO.Checked     := true;
   txt_DENTRO_SUBST_CFOP_ST.Text    := '';
   txt_DENTRO_SUBST_CFOP_TRIB.Text  := '';
   txt_DENTRO_SUBST_CFOP_ISENT.Text := '';
   end
else
   begin
   GB_DENTRO.Caption:='CFOP para movimentação. Tipo de Pedido:'+DM2.Tb_UF_TPPEDTPNOME.AsString;
   txt_DENTRO_CFOP_RV_ST.Text       := DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ST.AsString;
   txt_DENTRO_CFOP_RV_TRIB.Text     := DM2.Tb_UF_TPPEDUFTP_CFOP_RV_TRIB.AsString;
   txt_DENTRO_CFOP_RV_ISENT.Text    := DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ISENTO.AsString;
   CB_CALCIMP_RV_DENTRO.Checked     := DM2.Tb_UF_TPPEDUFTP_CALCIMP_RV.AsInteger<>1;

   txt_DENTRO_CFOP_RVCP_ST.Text     := DM2.Tb_UF_TPPEDUFTP_CFOP_RVCP_ST.AsString;
   txt_DENTRO_CFOP_RVCP_TRIB.Text   := DM2.Tb_UF_TPPEDUFTP_CFOP_RVCP_TRIB.AsString;
   txt_DENTRO_CFOP_RVCP_ISENT.Text  := DM2.Tb_UF_TPPEDUFTP_CFOP_RVCP_ISENTO.AsString;
   CB_CALCIMP_RVCP_DENTRO.Checked   := DM2.Tb_UF_TPPEDUFTP_CALCIMP_RVCP.AsInteger<>1;

   txt_DENTRO_CFOP_CF_ST.Text       := DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ST.AsString;
   txt_DENTRO_CFOP_CF_TRIB.Text     := DM2.Tb_UF_TPPEDUFTP_CFOP_CF_TRIB.AsString;
   txt_DENTRO_CFOP_CF_ISENT.Text    := DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ISENTO.AsString;
   CB_CALCIMP_CF_DENTRO.Checked     := DM2.Tb_UF_TPPEDUFTP_CALCIMP_CF.AsInteger<>1;

   txt_DENTRO_SUBST_CFOP_ST.Text    := DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ST.AsString;
   txt_DENTRO_SUBST_CFOP_TRIB.Text  := DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_TRIB.AsString;
   txt_DENTRO_SUBST_CFOP_ISENT.Text := DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ISENTO.AsString;
   end;

end;

procedure TFrm_UF.txt_DENTRO_CFOP_RV_STExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
txt_DENTRO_CFOP_RV_ST.Text:=fdeixanum2(txt_DENTRO_CFOP_RV_ST.Text);
if trim(txt_DENTRO_CFOP_RV_ST.Text)<>'' then
   begin

   if txt_DENTRO_CFOP_RV_ST.Text<>'' then
      begin
      if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
         begin
         if (txt_DENTRO_CFOP_RV_ST.Text[1]<>'1') and (txt_DENTRO_CFOP_RV_ST.Text[1]<>'5') then
            begin
            fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
            txt_DENTRO_CFOP_RV_ST.Text:=ant_DENTRO_CFOP_RV_ST;
            txt_DENTRO_CFOP_RV_ST.SetFocus;
            exit;
            end;
         end
      else if DM1.Tb_UFPUF.AsString='EX' then
         begin
         if (txt_DENTRO_CFOP_RV_ST.Text[1]<>'3') and (txt_DENTRO_CFOP_RV_ST.Text[1]<>'7') then
            begin
            fmensagem('CFOP para operacao Fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
            txt_DENTRO_CFOP_RV_ST.Text:=ant_DENTRO_CFOP_RV_ST;
            txt_DENTRO_CFOP_RV_ST.SetFocus;
            exit;
            end;
         end
      else
         begin
         if (txt_DENTRO_CFOP_RV_ST.Text[1]<>'2') and (txt_DENTRO_CFOP_RV_ST.Text[1]<>'6') then
            begin
            fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
            txt_DENTRO_CFOP_RV_ST.Text:=ant_DENTRO_CFOP_RV_ST;
            txt_DENTRO_CFOP_RV_ST.SetFocus;
            exit;
            end;
         end;


   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_CFOP_RV_ST.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'10' // pCST_CSOSN: String;
//                       ,iif(DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2,'CST','CSOSN') //pTipoCST_CSOSN
//                       ,iif(DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger=2,'10','900') // pCST_CSOSN: String;

                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_CFOP_RV_ST.Text:=ant_DENTRO_CFOP_RV_ST;
       txt_DENTRO_CFOP_RV_ST.SetFocus;
       exit;
       end;



      if trim(txt_DENTRO_CFOP_RVCP_ST.Text)='' then
         txt_DENTRO_CFOP_RVCP_ST.Text :=txt_DENTRO_CFOP_RV_ST.Text;
      if trim(txt_DENTRO_CFOP_CF_ST.Text)='' then
         txt_DENTRO_CFOP_CF_ST.Text   :=txt_DENTRO_CFOP_RV_ST.Text;
      if trim(txt_DENTRO_SUBST_CFOP_ST.Text)='' then
         txt_DENTRO_SUBST_CFOP_ST.Text:=txt_DENTRO_CFOP_RV_ST.Text;
      end;

   end;


end;

procedure TFrm_UF.txt_DENTRO_CFOP_RV_TRIBExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;

txt_DENTRO_CFOP_RV_TRIB.Text:=fdeixanum2(txt_DENTRO_CFOP_RV_TRIB.Text);
if txt_DENTRO_CFOP_RV_TRIB.Text<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_CFOP_RV_TRIB.Text[1]<>'1') and (txt_DENTRO_CFOP_RV_TRIB.Text[1]<>'5') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_CFOP_RV_TRIB.Text:=ant_DENTRO_CFOP_RV_TRIB;
         txt_DENTRO_CFOP_RV_TRIB.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString='EX' then
      begin
      if (txt_DENTRO_CFOP_RV_TRIB.Text[1]<>'3') and (txt_DENTRO_CFOP_RV_TRIB.Text[1]<>'7') then
         begin
         fmensagem('CFOP para operacao Fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_CFOP_RV_TRIB.Text:=ant_DENTRO_CFOP_RV_TRIB;
         txt_DENTRO_CFOP_RV_TRIB.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_CFOP_RV_TRIB.Text[1]<>'2') and (txt_DENTRO_CFOP_RV_TRIB.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_CFOP_RV_TRIB.Text:=ant_DENTRO_CFOP_RV_TRIB;
         txt_DENTRO_CFOP_RV_TRIB.SetFocus;
         exit;
         end;
      end;

   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_CFOP_RV_TRIB.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'00' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_CFOP_RV_TRIB.Text:=ant_DENTRO_CFOP_RV_TRIB;
       txt_DENTRO_CFOP_RV_TRIB.SetFocus;
       exit;
       end;


   if txt_DENTRO_CFOP_RVCP_TRIB.Text='' then
      txt_DENTRO_CFOP_RVCP_TRIB.Text :=txt_DENTRO_CFOP_RV_TRIB.Text;
   if txt_DENTRO_CFOP_CF_TRIB.Text='' then
      txt_DENTRO_CFOP_CF_TRIB.Text   :=txt_DENTRO_CFOP_RV_TRIB.Text;
   if txt_DENTRO_SUBST_CFOP_TRIB.Text='' then
   txt_DENTRO_SUBST_CFOP_TRIB.Text:=txt_DENTRO_CFOP_RV_TRIB.Text;
   if txt_DENTRO_CFOP_RV_ISENT.Text='' then
      begin
      txt_DENTRO_CFOP_RV_ISENT.Text:=txt_DENTRO_CFOP_RV_TRIB.Text;
      txt_DENTRO_CFOP_RV_ISENTExit(Self);
      end;
   end;


end;

procedure TFrm_UF.txt_DENTRO_CFOP_RV_ISENTExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;

txt_DENTRO_CFOP_RV_ISENT.Text:=fdeixanum2(txt_DENTRO_CFOP_RV_ISENT.Text);
if txt_DENTRO_CFOP_RV_ISENT.Text<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_CFOP_RV_ISENT.Text[1]<>'1') and (txt_DENTRO_CFOP_RV_ISENT.Text[1]<>'5') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_CFOP_RV_ISENT.Text:=ant_DENTRO_CFOP_RV_ISENT;
         txt_DENTRO_CFOP_RV_ISENT.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString='EX' then
      begin
      if (txt_DENTRO_CFOP_RV_ISENT.Text[1]<>'3') and (txt_DENTRO_CFOP_RV_ISENT.Text[1]<>'7') then
         begin
         fmensagem('CFOP para operacao Fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_CFOP_RV_ISENT.Text:=ant_DENTRO_CFOP_RV_ISENT;
         txt_DENTRO_CFOP_RV_ISENT.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_CFOP_RV_ISENT.Text[1]<>'2') and (txt_DENTRO_CFOP_RV_ISENT.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_CFOP_RV_ISENT.Text:=ant_DENTRO_CFOP_RV_ISENT;
         txt_DENTRO_CFOP_RV_ISENT.SetFocus;
         exit;
         end;
      end;

   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_CFOP_RV_ISENT.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'40' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_CFOP_RV_ISENT.Text:=ant_DENTRO_CFOP_RV_ISENT;
       txt_DENTRO_CFOP_RV_ISENT.SetFocus;
       exit;
       end;


   if txt_DENTRO_CFOP_RVCP_ISENT.Text='' then
      txt_DENTRO_CFOP_RVCP_ISENT.Text :=txt_DENTRO_CFOP_RV_ISENT.Text;
   if txt_DENTRO_CFOP_CF_ISENT.Text='' then
      txt_DENTRO_CFOP_CF_ISENT.Text   :=txt_DENTRO_CFOP_RV_ISENT.Text;
   if txt_DENTRO_SUBST_CFOP_ISENT.Text='' then
   txt_DENTRO_SUBST_CFOP_ISENT.Text:=txt_DENTRO_CFOP_RV_ISENT.Text;
   end;


end;

procedure TFrm_UF.txt_DENTRO_CFOP_RVCP_STExit(Sender: TObject);
begin
  inherited;

if CANCELAR.Focused then
   exit;

txt_DENTRO_CFOP_RVCP_ST.Text:=fdeixanum2(txt_DENTRO_CFOP_RVCP_ST.Text);
if trim(txt_DENTRO_CFOP_RVCP_ST.Text)<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_CFOP_RVCP_ST.Text[1]<>'1') and (txt_DENTRO_CFOP_RVCP_ST.Text[1]<>'5') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_CFOP_RVCP_ST.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString<>'EX' then
      begin
      if (txt_DENTRO_CFOP_RVCP_ST.Text[1]<>'3') and (txt_DENTRO_CFOP_RVCP_ST.Text[1]<>'7') then
         begin
         fmensagem('CFOP para operacao Fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_CFOP_RVCP_ST.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_CFOP_RVCP_ST.Text[1]<>'2') and (txt_DENTRO_CFOP_RVCP_ST.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_CFOP_RVCP_ST.SetFocus;
         exit;
         end;
      end;

   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_CFOP_RVCP_ST.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'90' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_CFOP_RVCP_ST.SetFocus;
       exit;
       end;


   end;


end;

procedure TFrm_UF.txt_DENTRO_CFOP_RVCP_TRIBExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;

txt_DENTRO_CFOP_RVCP_TRIB.Text:=fdeixanum2(txt_DENTRO_CFOP_RVCP_TRIB.Text);
if trim(txt_DENTRO_CFOP_RVCP_TRIB.Text)<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_CFOP_RVCP_TRIB.Text[1]<>'1') and (txt_DENTRO_CFOP_RVCP_TRIB.Text[1]<>'5') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_CFOP_RVCP_TRIB.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString='EX' then
      begin
      if (txt_DENTRO_CFOP_RVCP_TRIB.Text[1]<>'3') and (txt_DENTRO_CFOP_RVCP_TRIB.Text[1]<>'7') then
         begin
         fmensagem('CFOP para operacao Fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_CFOP_RVCP_TRIB.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_CFOP_RVCP_TRIB.Text[1]<>'2') and (txt_DENTRO_CFOP_RVCP_TRIB.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_CFOP_RVCP_TRIB.SetFocus;
         exit;
         end;
      end;
   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_CFOP_RVCP_TRIB.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'90' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_CFOP_RVCP_TRIB.SetFocus;
       exit;
       end;

   end;


end;

procedure TFrm_UF.txt_DENTRO_CFOP_RVCP_ISENTExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;

txt_DENTRO_CFOP_RVCP_ISENT.Text:=fdeixanum2(txt_DENTRO_CFOP_RVCP_ISENT.Text);
if trim(txt_DENTRO_CFOP_RVCP_ISENT.Text)<>'' then
   begin

   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_CFOP_RVCP_ISENT.Text[1]<>'1') and (txt_DENTRO_CFOP_RVCP_ISENT.Text[1]<>'5') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_CFOP_RVCP_ISENT.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_CFOP_RVCP_ISENT.Text[1]<>'2') and (txt_DENTRO_CFOP_RVCP_ISENT.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_CFOP_RVCP_ISENT.SetFocus;
         exit;
         end;
      end;
   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_CFOP_RVCP_ISENT.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'90' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_CFOP_RVCP_ISENT.SetFocus;
       exit;
       end;

   end;

end;

procedure TFrm_UF.txt_DENTRO_CFOP_CF_STExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;

txt_DENTRO_CFOP_CF_ST.Text:=fdeixanum2(txt_DENTRO_CFOP_CF_ST.Text);
if trim(txt_DENTRO_CFOP_CF_ST.Text)<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_CFOP_CF_ST.Text[1]<>'1') and (txt_DENTRO_CFOP_CF_ST.Text[1]<>'5') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_CFOP_CF_ST.Text:=ant_DENTRO_CFOP_CF_ST;

         txt_DENTRO_CFOP_CF_ST.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString='EX' then
      begin
      if (txt_DENTRO_CFOP_CF_ST.Text[1]<>'3') and (txt_DENTRO_CFOP_CF_ST.Text[1]<>'7') then
         begin
         fmensagem('CFOP para operacao Fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_CFOP_CF_ST.Text:=ant_DENTRO_CFOP_CF_ST;
         txt_DENTRO_CFOP_CF_ST.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_CFOP_CF_ST.Text[1]<>'2') and (txt_DENTRO_CFOP_CF_ST.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_CFOP_CF_ST.Text:=ant_DENTRO_CFOP_CF_ST;
         txt_DENTRO_CFOP_CF_ST.SetFocus;
         exit;
         end;
      end;

   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_CFOP_CF_ST.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'10' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_CFOP_CF_ST.Text:=ant_DENTRO_CFOP_CF_ST;
       txt_DENTRO_CFOP_CF_ST.SetFocus;
       exit;
       end;


   end;


end;

procedure TFrm_UF.txt_DENTRO_CFOP_CF_TRIBExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;

txt_DENTRO_CFOP_CF_TRIB.Text:=fdeixanum2(txt_DENTRO_CFOP_CF_TRIB.Text);
if trim(txt_DENTRO_CFOP_CF_TRIB.Text)<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_CFOP_CF_TRIB.Text[1]<>'1') and (txt_DENTRO_CFOP_CF_TRIB.Text[1]<>'5') then
         begin
         txt_DENTRO_CFOP_CF_TRIB.Text:=ant_DENTRO_CFOP_CF_TRIB;

         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_CFOP_CF_TRIB.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString='EX' then
      begin
      if (txt_DENTRO_CFOP_CF_TRIB.Text[1]<>'3') and (txt_DENTRO_CFOP_CF_TRIB.Text[1]<>'7') then
         begin
         txt_DENTRO_CFOP_CF_TRIB.Text:=ant_DENTRO_CFOP_CF_TRIB;
         fmensagem('CFOP para operacao Fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_CFOP_CF_TRIB.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_CFOP_CF_TRIB.Text[1]<>'2') and (txt_DENTRO_CFOP_CF_TRIB.Text[1]<>'6') then
         begin
         txt_DENTRO_CFOP_CF_TRIB.Text:=ant_DENTRO_CFOP_CF_TRIB;
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_CFOP_CF_TRIB.SetFocus;
         exit;
         end;
      end;

   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_CFOP_CF_TRIB.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'00' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_CFOP_CF_TRIB.Text:=ant_DENTRO_CFOP_CF_TRIB;
       txt_DENTRO_CFOP_CF_TRIB.SetFocus;
       exit;
       end;

   end;


end;

procedure TFrm_UF.txt_DENTRO_CFOP_CF_ISENTExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;

txt_DENTRO_CFOP_CF_ISENT.Text:=fdeixanum2(txt_DENTRO_CFOP_CF_ISENT.Text);
if trim(txt_DENTRO_CFOP_CF_ISENT.Text)<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_CFOP_CF_ISENT.Text[1]<>'1') and (txt_DENTRO_CFOP_CF_ISENT.Text[1]<>'5') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_CFOP_CF_ISENT.Text:=ant_DENTRO_CFOP_CF_ISENT;
         txt_DENTRO_CFOP_CF_ISENT.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString='EX' then
      begin
      if (txt_DENTRO_CFOP_CF_ISENT.Text[1]<>'3') and (txt_DENTRO_CFOP_CF_ISENT.Text[1]<>'7') then
         begin
         fmensagem('CFOP para operacao Fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_CFOP_CF_ISENT.Text:=ant_DENTRO_CFOP_CF_ISENT;
         txt_DENTRO_CFOP_CF_ISENT.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_CFOP_CF_ISENT.Text[1]<>'2') and (txt_DENTRO_CFOP_CF_ISENT.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_CFOP_CF_ISENT.Text:=ant_DENTRO_CFOP_CF_ISENT;
         txt_DENTRO_CFOP_CF_ISENT.SetFocus;
         exit;
         end;
      end;

   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_CFOP_CF_ISENT.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'40' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_CFOP_CF_ISENT.Text:=ant_DENTRO_CFOP_CF_ISENT;
       txt_DENTRO_CFOP_CF_ISENT.SetFocus;
       exit;
       end;

   end;


end;

procedure TFrm_UF.txt_DENTRO_SUBST_CFOP_STExit(Sender: TObject);
begin
  inherited;

if CANCELAR.Focused then
   exit;

txt_DENTRO_SUBST_CFOP_ST.Text:=fdeixanum2(txt_DENTRO_SUBST_CFOP_ST.Text);
if trim(txt_DENTRO_SUBST_CFOP_ST.Text)<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'1') and (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'5') and
         (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'2') and (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_SUBST_CFOP_ST.Text:=ant_DENTRO_SUBST_CFOP_ST;
         txt_DENTRO_SUBST_CFOP_ST.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString='EX' then
      begin
      if (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'3') and (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'7') then
         begin
         fmensagem('CFOP para operacao Fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_SUBST_CFOP_ST.Text:=ant_DENTRO_SUBST_CFOP_ST;
         txt_DENTRO_SUBST_CFOP_ST.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'2') and (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'6') and
         (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'1') and (txt_DENTRO_SUBST_CFOP_ST.Text[1]<>'5') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_SUBST_CFOP_ST.Text:=ant_DENTRO_SUBST_CFOP_ST;
         txt_DENTRO_SUBST_CFOP_ST.SetFocus;
         exit;
         end;
      end;
   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_SUBST_CFOP_ST.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'90' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_SUBST_CFOP_ST.Text:=ant_DENTRO_SUBST_CFOP_ST;
       txt_DENTRO_SUBST_CFOP_ST.SetFocus;
       exit;
       end;


   end;

end;

procedure TFrm_UF.txt_DENTRO_SUBST_CFOP_TRIBExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;

txt_DENTRO_SUBST_CFOP_TRIB.Text:=fdeixanum2(txt_DENTRO_SUBST_CFOP_TRIB.Text);
if trim(txt_DENTRO_SUBST_CFOP_ST.Text)<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'1') and (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'5') and
         (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'2') and (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_SUBST_CFOP_TRIB.Text:=ant_DENTRO_SUBST_CFOP_TRIB;
         txt_DENTRO_SUBST_CFOP_TRIB.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString='EX' then
      begin
      if (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'3') and (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'7') then
         begin
         fmensagem('CFOP para operacao fora do Pais deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_SUBST_CFOP_TRIB.Text:=ant_DENTRO_SUBST_CFOP_TRIB;

         txt_DENTRO_SUBST_CFOP_TRIB.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'2') and (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'6') and
         (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'1') and (txt_DENTRO_SUBST_CFOP_TRIB.Text[1]<>'5') then

         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_SUBST_CFOP_TRIB.SetFocus;
         exit;
         end;
      end;


   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_SUBST_CFOP_TRIB.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'90' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_SUBST_CFOP_TRIB.SetFocus;
       exit;
       end;

   end;


end;

procedure TFrm_UF.txt_DENTRO_SUBST_CFOP_ISENTExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;

txt_DENTRO_SUBST_CFOP_ISENT.Text:=fdeixanum2(txt_DENTRO_SUBST_CFOP_ISENT.Text);
if trim(txt_DENTRO_SUBST_CFOP_ISENT.Text)<>'' then
   begin
   if DM1.Tb_UFPUF.AsString=DM1.Tb_EmpUF.AsString then
      begin
      if (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'1') and (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'5') and
         (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'2') and (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'6') then
         begin
         fmensagem('CFOP para operacao Estadual deve ser comecado com 1 ou 5',0,['0'],0);
         txt_DENTRO_SUBST_CFOP_ISENT.Text:=ant_DENTRO_SUBST_CFOP_ISENT;
         txt_DENTRO_SUBST_CFOP_ISENT.SetFocus;
         exit;
         end;
      end
   else if DM1.Tb_UFPUF.AsString='EX' then
      begin
      if (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'3') and (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'7') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 3 ou 7',0,['0'],0);
         txt_DENTRO_SUBST_CFOP_ISENT.Text:=ant_DENTRO_SUBST_CFOP_ISENT;
         txt_DENTRO_SUBST_CFOP_ISENT.SetFocus;
         exit;
         end;
      end
   else
      begin
      if (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'2') and (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'6') and
         (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'1') and (txt_DENTRO_SUBST_CFOP_ISENT.Text[1]<>'5') then
         begin
         fmensagem('CFOP para operacao Fora do Estado deve ser comecado com 2 ou 6',0,['0'],0);
         txt_DENTRO_SUBST_CFOP_ISENT.Text:=ant_DENTRO_SUBST_CFOP_ISENT;
         txt_DENTRO_SUBST_CFOP_ISENT.SetFocus;
         exit;
         end;
      end;
   if not fValidarCfop(DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsInteger,txt_DENTRO_SUBST_CFOP_ISENT.Text
                       ,DM2.Tb_UF_TPPEDUFTP_UF.AsString
                       ,'0' // pOrigem_Produto
                       ,'CST' //pTipoCST_CSOSN
                       ,'90' // pCST_CSOSN: String;
                       ,mTexto_Retorno) then
       begin
       fmensagem(mTexto_Retorno,0,['0'],0);
       txt_DENTRO_SUBST_CFOP_ISENT.Text:=ant_DENTRO_SUBST_CFOP_ISENT;
       txt_DENTRO_SUBST_CFOP_ISENT.SetFocus;
       exit;
       end;

   end;
end;

procedure TFrm_UF.txt_DENTRO_CFOP_RV_STKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   mAlterouCFOP:=true;

end;

procedure TFrm_UF.CB_CALCIMP_RV_DENTROClick(Sender: TObject);
begin
  inherited;
mAlterouCFOP:=true;

end;

procedure TFrm_UF.GB_DENTROExit(Sender: TObject);
var
mPosReg: TBookmark;

begin
  inherited;
if CANCELAR.Focused then
   exit;
if mAlterouCFOP then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CODEMP',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_UF',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CODTPPED',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RV_ST',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RV_TRIB',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RV_ISENTO',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CALCIMP_RV',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RVCP_ST',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RVCP_TRIB',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_RVCP_ISENTO',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CALCIMP_RVCP',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_CF_ST',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_CF_TRIB',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CFOP_CF_ISENTO',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_CALCIMP_CF',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_SUBST_CFOP_ST',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_SUBST_CFOP_TRIB',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'UFTP_SUBST_CFOP_ISENTO',ptinput);

   DM1.Query2.SQL.Add('Update CADUF_TPPED set '
          +' UFTP_CFOP_RV_ST=:UFTP_CFOP_RV_ST'
          +',UFTP_CFOP_RV_TRIB=:UFTP_CFOP_RV_TRIB'
          +',UFTP_CFOP_RV_ISENTO=:UFTP_CFOP_RV_ISENTO'
          +',UFTP_CALCIMP_RV=:UFTP_CALCIMP_RV'
          +',UFTP_CFOP_RVCP_ST=:UFTP_CFOP_RVCP_ST'
          +',UFTP_CFOP_RVCP_TRIB=:UFTP_CFOP_RVCP_TRIB'
          +',UFTP_CFOP_RVCP_ISENTO=:UFTP_CFOP_RVCP_ISENTO'
          +',UFTP_CALCIMP_RVCP=:UFTP_CALCIMP_RVCP'
          +',UFTP_CFOP_CF_ST=:UFTP_CFOP_CF_ST'
          +',UFTP_CFOP_CF_TRIB=:UFTP_CFOP_CF_TRIB'
          +',UFTP_CFOP_CF_ISENTO=:UFTP_CFOP_CF_ISENTO'
          +',UFTP_CALCIMP_CF=:UFTP_CALCIMP_CF'
          +',UFTP_SUBST_CFOP_ST=:UFTP_SUBST_CFOP_ST'
          +',UFTP_SUBST_CFOP_TRIB=:UFTP_SUBST_CFOP_TRIB'
          +',UFTP_SUBST_CFOP_ISENTO=:UFTP_SUBST_CFOP_ISENTO'
          +' where UFTP_CODEMP=:UFTP_CODEMP'
          +' and UFTP_UF=:UFTP_UF'
          +' and UFTP_CODTPPED=:UFTP_CODTPPED');
   DM1.Query2.ParambyName('UFTP_CODEMP').AsString           :=DM2.Tb_UF_TPPEDUFTP_CODEMP.AsString;
   DM1.Query2.ParambyName('UFTP_UF').AsString               :=DM2.Tb_UF_TPPEDUFTP_UF.AsString;
   DM1.Query2.ParambyName('UFTP_CODTPPED').AsString         :=DM2.Tb_UF_TPPEDUFTP_CODTPPED.AsString;
   DM1.Query2.ParambyName('UFTP_CFOP_RV_ST').AsString       :=txt_DENTRO_CFOP_RV_ST.Text;
   DM1.Query2.ParambyName('UFTP_CFOP_RV_TRIB').AsString     :=txt_DENTRO_CFOP_RV_TRIB.Text;
   DM1.Query2.ParambyName('UFTP_CFOP_RV_ISENTO').AsString   :=txt_DENTRO_CFOP_RV_ISENT.Text;
   DM1.Query2.ParambyName('UFTP_CALCIMP_RV').AsFloat        :=iif(CB_CALCIMP_RV_DENTRO.Checked,0,1);
   DM1.Query2.ParambyName('UFTP_CFOP_RVCP_ST').AsString     :=txt_DENTRO_CFOP_RVCP_ST.Text;
   DM1.Query2.ParambyName('UFTP_CFOP_RVCP_TRIB').AsString   :=txt_DENTRO_CFOP_RVCP_TRIB.Text;
   DM1.Query2.ParambyName('UFTP_CFOP_RVCP_ISENTO').AsString :=txt_DENTRO_CFOP_RVCP_ISENT.Text;
   DM1.Query2.ParambyName('UFTP_CALCIMP_RVCP').AsFloat      :=iif(CB_CALCIMP_RVCP_DENTRO.Checked,0,1);
   DM1.Query2.ParambyName('UFTP_CFOP_CF_ST').AsString       :=txt_DENTRO_CFOP_CF_ST.Text;
   DM1.Query2.ParambyName('UFTP_CFOP_CF_TRIB').AsString     :=txt_DENTRO_CFOP_CF_TRIB.Text;
   DM1.Query2.ParambyName('UFTP_CFOP_CF_ISENTO').AsString   :=txt_DENTRO_CFOP_CF_ISENT.Text;
   DM1.Query2.ParambyName('UFTP_CALCIMP_CF').Asfloat        :=iif(CB_CALCIMP_CF_DENTRO.Checked,0,1);
   DM1.Query2.ParambyName('UFTP_SUBST_CFOP_ST').AsString    :=txt_DENTRO_SUBST_CFOP_ST.Text;
   DM1.Query2.ParambyName('UFTP_SUBST_CFOP_TRIB').AsString  :=txt_DENTRO_SUBST_CFOP_TRIB.Text;
   DM1.Query2.ParambyName('UFTP_SUBST_CFOP_ISENTO').AsString:=txt_DENTRO_SUBST_CFOP_ISENT.Text;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro ao Atualizar o CadUF_tpped',0,['0'],0);
      end;
   mPosReg        :=DM2.Tb_UF_TPPED.GetBookmark;
   flcaduf_tpped(0,0,DM1.Tb_UFPCODEMP.AsInteger,DM1.Tb_UFPUF.AsString,'','0');
   DM2.Tb_UF_TPPED.GotoBookmark(mPosReg);
   mAlterouCFOP:=false;
   end;


end;

procedure TFrm_UF.DBEdit1Enter(Sender: TObject);
begin
  inherited;
mCodUf_ant:=DM1.Tb_UFPUF.AsString;
end;

procedure TFrm_UF.txt_DENTRO_CFOP_RV_STEnter(Sender: TObject);
begin
  inherited;
    ant_DENTRO_CFOP_RV_ST:=txt_DENTRO_CFOP_RV_ST.Text;

end;

procedure TFrm_UF.txt_DENTRO_CFOP_RV_TRIBEnter(Sender: TObject);
begin
  inherited;
ant_DENTRO_CFOP_RV_TRIB:=txt_DENTRO_CFOP_RV_TRIB.Text;
end;

procedure TFrm_UF.txt_DENTRO_CFOP_RV_ISENTEnter(Sender: TObject);
begin
  inherited;
ant_DENTRO_CFOP_RV_ISENT:=txt_DENTRO_CFOP_RV_ISENT.Text;
end;

procedure TFrm_UF.txt_DENTRO_CFOP_CF_STEnter(Sender: TObject);
begin
  inherited;
ant_DENTRO_CFOP_CF_ST:=txt_DENTRO_CFOP_CF_ST.Text;
end;

procedure TFrm_UF.txt_DENTRO_CFOP_CF_TRIBEnter(Sender: TObject);
begin
  inherited;
ant_DENTRO_CFOP_CF_TRIB:=txt_DENTRO_CFOP_CF_TRIB.Text;
end;

procedure TFrm_UF.txt_DENTRO_CFOP_CF_ISENTEnter(Sender: TObject);
begin
  inherited;
ant_DENTRO_CFOP_CF_ISENT:=txt_DENTRO_CFOP_CF_ISENT.Text;
end;

procedure TFrm_UF.txt_DENTRO_SUBST_CFOP_STEnter(Sender: TObject);
begin
  inherited;
ant_DENTRO_SUBST_CFOP_ST:=txt_DENTRO_SUBST_CFOP_ST.Text;
end;

procedure TFrm_UF.txt_DENTRO_SUBST_CFOP_TRIBEnter(Sender: TObject);
begin
  inherited;
ant_DENTRO_SUBST_CFOP_TRIB:=txt_DENTRO_SUBST_CFOP_TRIB.Text;
end;

procedure TFrm_UF.txt_DENTRO_SUBST_CFOP_ISENTEnter(Sender: TObject);
begin
  inherited;
ant_DENTRO_SUBST_CFOP_ISENT:=txt_DENTRO_SUBST_CFOP_ISENT.Text;

end;

end.
