unit S_For;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, db,dbtables, s_Dpto, S_CCU,S_DM1,func,lerarq,S_Ani, S_SelEmp,
  jpeg, ToolEdit, RXDBCtrl, ToolWin, S_VendaBloqueada_Relacao, RxDBComb,
  ADODB;


type
  TFrm_For = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    Label8: TLabel;
    NOMBAI: TDBEdit;
    DBE_cep: TDBEdit;
    Label10: TLabel;
    ESTADO: TDBEdit;
    Label5: TLabel;
    NOMLOC: TDBEdit;
    Label9: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBE_Fax: TDBEdit;
    DBE_Fone: TDBEdit;
    Label21: TLabel;
    DBEdit27: TDBEdit;
    Label26: TLabel;
    gbobs: TGroupBox;
    DBEdit24: TDBEdit;
    DBEdit23: TDBEdit;
    gbcontatos: TGroupBox;
    DBEdit20: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Tab_Ad: TTabSheet;
    GroupBox4: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    GroupBox5: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DB_ALIQ: TDBEdit;
    DB_REDUT: TDBEdit;
    DB_ICMSRET: TDBEdit;
    DB_ICMSCRED: TDBEdit;
    DB_ICMSDEB: TDBEdit;
    CBCB_TPCALC: TDBCheckBox;
    DBCB_RETLIQ: TDBCheckBox;
    CODBAI: TDBEdit;
    CODLOC: TDBEdit;
    DBCB_ICMSR: TDBCheckBox;
    bbAniversariantes: TBitBtn;
    bbBloqVend: TBitBtn;
    Label19: TLabel;
    DB_CFOTRI: TDBEdit;
    Label20: TLabel;
    DB_CFOST: TDBEdit;
    GB_IVA: TGroupBox;
    Label32: TLabel;
    DB_CFOPOS: TDBEdit;
    Label34: TLabel;
    DB_CFOINA: TDBEdit;
    DB_CFONEG: TDBEdit;
    Label33: TLabel;
    DBRG_Restricao: TDBRadioGroup;
    Label23: TLabel;
    DBE_codgfor: TDBEdit;
    DBE_nomgfor: TDBEdit;
    Label44: TLabel;
    gbdadoscompra: TGroupBox;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    CB_TIPOF: TComboBox;
    Label22: TLabel;
    lbl_padrao: TLabel;
    CB_PADRAO: TComboBox;
    Label46: TLabel;
    CB_TDESP: TComboBox;
    tsCodBar: TTabSheet;
    Label47: TLabel;
    DBEdit22: TDBEdit;
    edt_usrinc: TEdit;
    edt_dathorinc: TEdit;
    edt_dathoralt: TEdit;
    edt_usralt: TEdit;
    DBEdit26: TDBEdit;
    Label48: TLabel;
    src_for: TDataSource;
    Label45: TLabel;
    DBE_Tam: TDBEdit;
    Label49: TLabel;
    DBE_POSCOD: TDBEdit;
    Label50: TLabel;
    DBE_TAMCOD: TDBEdit;
    Label51: TLabel;
    DBE_TAMVCT: TDBEdit;
    Label52: TLabel;
    DBE_POSVCT: TDBEdit;
    Label53: TLabel;
    DBE_TAMLOT: TDBEdit;
    Label54: TLabel;
    DBE_POSLOT: TDBEdit;
    Label55: TLabel;
    DBE_TAMQTD: TDBEdit;
    Label56: TLabel;
    DBE_POSQTD: TDBEdit;
    sbPadrao: TSpeedButton;
    TsFluxoCaixa: TTabSheet;
    gb_pgto: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    lbl_obs: TLabel;
    DBE_CodDepD: TDBEdit;
    DBE_CodCCuD: TDBEdit;
    DBE_DescMvD: TDBEdit;
    DBCB_NOMDEPD: TDBComboBox;
    DBCB_NOMCCUD: TDBComboBox;
    DBEdit9: TDBEdit;
    rg_replica: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    lbl_obs2: TLabel;
    DBE_REP_CodDep: TDBEdit;
    DBE_REP_CodCCu: TDBEdit;
    DBE_REP_DescMv: TDBEdit;
    DBCB_REP_NOMDEP: TDBComboBox;
    DBCB_REP_NOMCCU: TDBComboBox;
    FNATDCC: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    gb_receb: TGroupBox;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBE_CodDepC: TDBEdit;
    DBE_CodCCuC: TDBEdit;
    DBE_DescMvC: TDBEdit;
    DBCB_NOMDEPC: TDBComboBox;
    DBCB_NOMCCUC: TDBComboBox;
    DBEdit33: TDBEdit;
    Label61: TLabel;
    DBE_REP_CODIGO: TDBEdit;
    DBEdit35: TDBEdit;
    TIPO: TDBComboBox;
    Label62: TLabel;
    Label63: TLabel;
    DBE_REP_CODBCO: TDBEdit;
    DBEdit37: TDBEdit;
    bbExpCli: TBitBtn;
    gb_forqua: TGroupBox;
    dbrg_codbloq: TDBRadioGroup;
    Label64: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBMemo1: TDBMemo;
    Label65: TLabel;
    ToolBar1: TToolBar;
    btn_novo: TBitBtn;
    btn_alterar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    Panel2: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label66: TLabel;
    DBE_IM: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    edt_cnpj: TMaskEdit;
    DBE_IE: TDBEdit;
    tsconfiguracao: TTabSheet;
    cb_cnpj: TCheckBox;
    bb_master: TBitBtn;
    cb_cep: TCheckBox;
    cb_cidade: TCheckBox;
    cb_telefone: TCheckBox;
    cb_endereco: TCheckBox;
    cb_ver_cnpj: TCheckBox;
    bbProxima: TBitBtn;
    tsContatos: TTabSheet;
    dbgContatos: TDBGrid;
    GroupBox6: TGroupBox;
    dbmContatos: TDBMemo;
    DBRg_situacao: TDBRadioGroup;
    RxDBCB_CST_ICMS_EST_REV: TRxDBComboBox;
    Label16: TLabel;
    Label17: TLabel;
    RxDBCB_OPTSIMPLES: TRxDBComboBox;
    tsImagens: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    sbn_nova: TSpeedButton;
    sbn_alterar: TSpeedButton;
    sbnRenomear: TSpeedButton;
    sbn_excluir: TSpeedButton;
    Src_For_imagem: TDataSource;
    Tb_For_imagem: TADOQuery;
    Tb_For_imagemFI_ROWID: TStringField;
    Tb_For_imagemFI_SEQ: TFloatField;
    Tb_For_imagemFI_OBS: TStringField;
    Tb_For_imagemFI_NOMEORI: TStringField;
    CB_VALCCDEP: TCheckBox;
    sbn_salvarcomo: TSpeedButton;
    SaveDialog1: TSaveDialog;
    Tb_For_imagemFI_ID_FOR: TFloatField;
    gb_alvara: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    DBE_FVSANIT: TDBEdit;
    DB_FDTVSANIT: TDBDateEdit;
    Label18: TLabel;
    DB_FANVISA_NUMERO: TDBEdit;
    Label24: TLabel;
    DB_FANVISA_DTVCTO: TDBDateEdit;
    Label25: TLabel;
    DB_FCERTTECNICO_NUM: TDBEdit;
    Label37: TLabel;
    DB_FCERTTECNICO_DTVCTO: TDBDateEdit;
    btn_alvara_municipal: TBitBtn;
    ColorDialog1: TColorDialog;
    lbl_alvara_municipal: TLabel;
    GroupBox3: TGroupBox;
    st_alvara_municipal: TStaticText;
    procedure DBE_CodDepDExit(Sender: TObject);
    procedure DBE_CodCCuDExit(Sender: TObject);
    procedure DBE_REP_CodDepExit(Sender: TObject);
    procedure DBE_REP_CodCCuExit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAIExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure DBE_CodDepDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CodCCuDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_CodCCuCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11Exit(Sender: TObject);
    procedure bbAniversariantesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure bbBloqVendClick(Sender: TObject);
    procedure DBCB_NOMDEPDEnter(Sender: TObject);
    procedure DBCB_NOMCCUDEnter(Sender: TObject);
    procedure DBCB_REP_NOMDEPEnter(Sender: TObject);
    procedure DBCB_REP_NOMCCUEnter(Sender: TObject);
    procedure DBCB_NOMDEPDExit(Sender: TObject);
    procedure DBCB_NOMCCUDExit(Sender: TObject);
    procedure DBCB_REP_NOMDEPExit(Sender: TObject);
    procedure DBCB_REP_NOMCCUExit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_codgforExit(Sender: TObject);
    procedure DBE_codgforKeyPress(Sender: TObject; var Key: Char);
    procedure spd_atuprazoClick(Sender: TObject);
    procedure spd_descfinClick(Sender: TObject);
    procedure spd_atudesc01Click(Sender: TObject);
    procedure spd_atucomisClick(Sender: TObject);
    procedure src_forDataChange(Sender: TObject; Field: TField);
    procedure bbProximaClick(Sender: TObject);
    procedure CB_TIPOFClick(Sender: TObject);
    procedure CB_PADRAOClick(Sender: TObject);
    procedure CB_TDESPClick(Sender: TObject);
    procedure sbPadraoClick(Sender: TObject);
    procedure DBE_REP_CODIGOEnter(Sender: TObject);
    procedure DBE_REP_CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CodDepCExit(Sender: TObject);
    procedure DBCB_NOMDEPCExit(Sender: TObject);
    procedure DBE_CodCCuCExit(Sender: TObject);
    procedure DBCB_NOMCCUCExit(Sender: TObject);
    procedure DBE_CodDepCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_NOMDEPCEnter(Sender: TObject);
    procedure DBCB_NOMDEPCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_REP_NOMDEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_NOMCCUCEnter(Sender: TObject);
    procedure DBCB_REP_NOMCCUKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_REP_CodCCuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_REP_CODIGOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_REP_CODIGOExit(Sender: TObject);
    procedure DBE_REP_CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_REP_CODBCOExit(Sender: TObject);
    procedure DBE_REP_CodDepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TIPOEnter(Sender: TObject);
    procedure TIPOExit(Sender: TObject);
    procedure bbExpCliClick(Sender: TObject);
    procedure dbrg_codbloqExit(Sender: TObject);
    procedure edt_cnpjExit(Sender: TObject);
    procedure edt_cnpjEnter(Sender: TObject);
    procedure bb_masterClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBE_FoneExit(Sender: TObject);
    procedure DBE_FaxExit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBE_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sbn_novaClick(Sender: TObject);
    procedure sbn_alterarClick(Sender: TObject);
    procedure sbnRenomearClick(Sender: TObject);
    procedure sbn_excluirClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure sbn_salvarcomoClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure PC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_alvara_municipalClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    mCondicao_old: string;
    mChave_Old: Integer;

    tb_Imagem:tAdoQuery;

    midfor_src: real;
    function fFor01lerant(ptipo: Integer):Boolean;

    function RevealHint (Control: TControl): THintWindow;
    procedure RemoveHint (var Hint: THintWindow);


    function fLerCadDapImagem(pIdFor: Real; pSeq: Integer): boolean;

  public
    form_Ani: tFrm_Ani;
    for_ori: String;

    { Public declarations }
    Form_VendaBloqueada_Relacao: TFrm_VendaBloqueada_Relacao;

  end;

var
  Frm_For: TFrm_For;
  Form_SelEmp: TFrm_SelEmp;
  moper: Integer;
  macdep     : Boolean=False;
  macccu     : Boolean=False;
  mcodigo_ant: Real;
  mCodBloq_Ant: Real=0;
  mcodigo    : Real;

implementation

uses S_DM4, S_GFor, Func2, s_Imagem_WebCam, func_excecoes, S_DM1_ADO,
  S_Fig_TelaCheia, S_DM2, S_Agde, s_AssociarDocumentos;

{$R *.dfm}

procedure TFrm_For.DBE_CodDepDExit(Sender: TObject);
begin
  inherited;
macdep:=false;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_ForFNOMDEPD.Value:=' ';
   mDadosRetornoCaixa:=fTestarCADDEP_CX(false,DM1.Tb_ForFCODDEPD.AsString);
   if mDadosRetornoCaixa.pOk = false then
      begin
      DBE_CodDepD.SetFocus;
      end
   else
      begin
      DM1.Tb_ForFNOMDEPD.Value:=mDadosRetornoCaixa.pnome;
      if not DBCB_NOMDEPD.Focused then
         macdep:=true;
      end;
   end;

end;

procedure TFrm_For.DBE_CodCCuDExit(Sender: TObject);
begin
  inherited;
macccu:=false;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_ForFNOMCCD.Value:=' ';
   mDadosRetornoCaixa :=fTestarCADCC(false,DM1.Tb_ForFCODCCD.AsString);

   if mDadosRetornoCaixa.pOk = false then
      begin
      DBE_CodCCuD.SetFocus;
      end
   else
      begin
      DM1.Tb_ForFNATDCD.Value:=mDadosRetornoCaixa.pNatDC;
      DM1.Tb_ForFNOMCCD.Value:=mDadosRetornoCaixa.pnome;
      if not DBCB_NOMCCUD.Focused then
         macccu:=true;
      end;
   end;

end;

procedure TFrm_For.DBE_REP_CodDepExit(Sender: TObject);
begin
  inherited;
macdep:=false;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_ForFREP_NOMDEP.Value:=' ';
   if Trim(DM1.Tb_ForFREP_CODDEP.Value)<>'' then
      begin
      if not flqr2('DNOME','D','CADDEP','C','DCODDEP',DM1.Tb_ForFREP_CODDEP.Value) then
         begin
         verteclado(1);
         fmensagem('Departamento não cadastrado!',0,['0'],0);
         DBE_REP_CodDep.SetFocus;
         end
      else
         begin
         DM1.Tb_ForFREP_NOMDEP.Value:=DM1.Query2.Fields[0].AsString;
         if not DBCB_REP_NOMDEP.Focused then
            macdep:=true;
         end;
      end;
   end;



end;

procedure TFrm_For.DBE_REP_CodCCuExit(Sender: TObject);
begin
  inherited;
macccu:=false;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_ForFREP_NOMCCU.Value:=' ';
   if Trim(DM1.Tb_ForFREP_CODCCU.Value)<>'' then
      begin
      if not flqr2('CCNOME,CCNAT','CC','CADCCU','C','CCCODCCU',DM1.Tb_ForFREP_CODCCU.Value) then
         begin
         verteclado(1);
         fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
         DBE_REP_CodCCu.SetFocus;
         end
      else
         begin
         DM1.Tb_ForFREP_NATDC.Value:=DM1.Query2.Fields[1].AsString;
         DM1.Tb_ForFREP_NOMCCU.Value:=DM1.Query2.Fields[0].AsString;
         if not DBCB_REP_NOMCCU.Focused then
            macccu:=true;
         end;
      end;
   end;
end;

procedure TFrm_For.BBnAtuClick(Sender: TObject);
begin
  inherited;
If DM1.Tb_For.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O Fornecedor click atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: btn_gravar.Click;
      mrNo : btn_cancelar.Click;
      else btn_cancelar.Click;
      end;
   end;

if for_ori='consulta' then
   begin
   ffor01lerant(0);
   end
else
  begin
  flcadfor(CAMPO.ItemIndex,1,Edit1.Text);
  flcadfor_con(1,0,DM1.Tb_ForFCODFOR.AsString);
  end;
end;

procedure TFrm_For.INCLUIRClick(Sender: TObject);
begin
  inherited;
//  DM1.Tb_For.Append;
fGerarEvento('TESTANDO ATIVO 501');

  if not DM1.Tb_For.Active then
     begin
     fGerarEvento('lendo cadfor 505');

     flcadfor(0,0,'-999');
     fGerarEvento('lido o  cadfor 508');
     end;

mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=15;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Incluir Fornecedor Favor Digitar a Senha';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;
     fGerarEvento('validar senha 522');

if fValidaSenha(mValidarSenha)<>0 then
   exit;
     fGerarEvento('validou senha');

  DM1.Tb_For.Insert;
     fGerarEvento('insertir 529');


  moper:=0;

  DM1.Tb_ForFDTCAD.Value:=now;
  mcodigo := DM1.Tb_ForFCODFOR.AsFloat;
  Tab_ad.Enabled      :=True;
  tsCodBar.Enabled    :=true;
  TsFluxoCaixa.Enabled:=true;
  DBEdit1.Enabled:=True;

  DM1.Tb_ForFDTCAD.Value:=pdatasis;
  DM1.Tb_ForFDATHOR_INC.AsDateTime:=now;
  DM1.Tb_ForFCODUSR_INC.AsFloat:=codusr;
  mCodBloq_Ant:=0;
  if for_ori<>'compras_orc_impxml' then 
     Dbedit2.SetFocus;


  dbgContatos.ReadOnly      :=False;
  dbmContatos.ReadOnly      :=False;

  btn_novo.Enabled     := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_gravar.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator2.Enabled := False;
end;

procedure TFrm_For.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ForFCODFOR.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado!',0,['0'],0);
   CANCELARClick(self);
   exit;
   end;
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=15;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Alterar Fornecedor Favor Digitar a Senha';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

mCodBloq_Ant:=DM1.Tb_ForFCODBLOQ.AsFloat;
Tab_ad.Enabled      :=True;
tsCodBar.Enabled    :=true;
TsFluxoCaixa.Enabled:=true;

moper:=8;
DM1.Tb_For.Edit;
DBEdit1.Enabled:=False;
if PC1.ActivePage=tsCad then
   DBEdit2.SetFocus
else if PC1.ActivePage=Tab_Ad then
   CB_TIPOF.SetFocus;
DM1.Tb_ForFDATHOR_ALT.AsDateTime:=now;
DM1.Tb_ForFCODUSR_ALT.AsFloat:=codusr;


dbgContatos.ReadOnly      :=False;
dbmContatos.ReadOnly      :=False;

btn_novo.Enabled    := False;
btn_alterar.Enabled := False;
btn_excluir.Enabled := False;
btn_gravar.Enabled  := True;
DBGrid1.Enabled     := False;
DBNavigator2.Enabled:= False;

end;

procedure TFrm_For.EXCLUIRClick(Sender: TObject);
var
regexits: integer;
begin
inherited;
if DM1.Tb_ForFCODFOR.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['0'],0);
   exit;
   end;
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=15;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Excluir Fornecedor Favor Digitar a Senha';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

regexits:=0;
dm1.Query1.Close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' select COUNT(*) from CADPF1 '
                  +' where PF1CODFOR='+DM1.Tb_ForFCODFOR.AsString
                  +' and '+fla_sqlmp('PF1CODEMP',Form_SelEmp.CLB_EMPRESAS));
dm1.Query1.Open;
if dm1.Query1.Fields[0].AsInteger<1 then
  begin
  dm1.Query1.Close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.Add(' select COUNT(*) from CADDAP '
                  +' where CACODFOR='+DM1.Tb_ForFCODFOR.AsString
                  +' and '+fla_sqlmp('CACODEMP',Form_SelEmp.CLB_EMPRESAS));
  dm1.Query1.Open;
  if dm1.Query1.Fields[0].AsInteger<1 then
    begin
    dm1.Query1.Close;
    dm1.Query1.SQL.Clear;
    dm1.Query1.SQL.Add(' select COUNT(*) from CADNE '
                      +' where NECODFOR='+DM1.Tb_ForFCODFOR.AsString
                      +' and '+fla_sqlmp('NECODEMP',Form_SelEmp.CLB_EMPRESAS));
    dm1.Query1.Open;
    if dm1.Query1.Fields[0].AsInteger>0 then
      begin
      regexits:=1;
      end;
    end
  else
    begin
    regexits:=1;
    end;
  end
else
  begin
  regexits:=1;
  end;

if regexits=0 then
  begin
  if fMensagem('Quer Realmente Excluir este Fornecedor?',0,['1','2'],2)=mrYes then
     begin

     mCondicao_old:=' where FCODEMP='+DM1.Tb_ForFCODEMP.AsString
                  +' and FCODFOR='+DM1.Tb_ForFCODFOR.AsString;

     mChave_Old:=fGerarTabelas_Old(9 //status
                  ,0 //codigo novo valor chave
                  ,'FCODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADFOR' // nome da tabela
                  ,mCondicao_old);


     DM1.Tb_For.Delete;
     Tab_ad.Enabled      :=false;
     tsCodBar.Enabled    :=false;
     TsFluxoCaixa.Enabled:=false;


    dbgContatos.ReadOnly      :=True;
    dbmContatos.ReadOnly      :=True;

     btn_novo.Enabled    := True;
     btn_alterar.Enabled := True;
     btn_excluir.Enabled := True;
     btn_gravar.Enabled  := False;
     end;
  end
else
  begin
  fmensagem('Este fornecedor possui movimentação, e não pode ser excluido!',0,['0'],0);
  end;
end;

procedure TFrm_For.CANCELARClick(Sender: TObject);
begin
  inherited;
  if (DM1.Tb_For.State in [dsInsert]) then begin
     DM1.Query1.close;
     DM1.Query1.SQL.Clear;
     DM1.Query1.SQL.Add('Delete from CADFOR where FCODEMP=0'+IntToStr(codemp)
                       +' and FCODFOR=0'+FloatToStr(mcodigo));
     try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
     except
     end;
     flDesfazerCodigos(0,'CADFOR',mcodigo);
  end;

  Tab_ad.Enabled      :=False;
  tsCodBar.Enabled    :=false;
  TsFluxoCaixa.Enabled:=false;

  DM1.Tb_For.Cancel;


  dbgContatos.ReadOnly      :=True;
  dbmContatos.ReadOnly      :=True;

  btn_novo.Enabled    := True;
  btn_alterar.Enabled := True;
  btn_excluir.Enabled := True;
  btn_gravar.Enabled  := False;
  DBGrid1.Enabled     := True;
  DBNavigator2.Enabled:= True;
  moper:=0;
end;

procedure TFrm_For.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_For.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O fornecedor fechar atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: btn_gravar.Click;
      mrNo : btn_cancelar.Click;
      else CanClose:=False;
      end;
   end;
end;

procedure TFrm_For.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if for_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   btn_alterar.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   for_ori:='';
   end;

end;

procedure TFrm_For.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if for_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      btn_alterar.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      for_ori:='';
      end;
   abort;
   end;
end;

procedure TFrm_For.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM1.Tb_ForFCODFOR.AsFloat then
   begin
   if flqr2('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Tb_ForFCODFOR.AsString) then
      begin
      fMensagem('Este código ja esta cadastrado Nome: '+DM1.Query2.Fields[0].AsString,0,['0'],0);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_For.CODLOCExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if not flcadloc(1,0,DM1.Tb_ForFCODLOC.AsString) then
   begin
   fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   CODLOC.SetFocus;
   end
else
   begin
   DM1.Tb_ForFCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
   DM1.Tb_ForFCIDADE.Value:=DM1.Tb_LocLNOME.Value;
   DM1.Tb_ForFUF.Value    :=DM1.Tb_LocLUF.Value;
   end;

end;

procedure TFrm_For.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ForFCODLOC.Value:=ValFloat(fChamaLoc(0,'frm_For',Key));
      if DM1.Tb_ForFCODLOC.AsFloat>0 then
         CODLOCExit(self);
      DM1.Tb_ForFCIDADE.Value:=DM1.Tb_LocLNOME.Value;
      DM1.Tb_ForFUF.Value    :=DM1.Tb_LocLUF.Value;
      key:=#0;
      end;
   end;

end;

procedure TFrm_For.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ForFCODBAI.Value:=ValFloat(fChamaBai(0,'frm_For',Key));
      if DM1.Tb_ForFCODBAI.AsFloat<>0 then
         CODBAIExit(self);
      DM1.Tb_ForFBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
      key:=#0;
      end;
   end;

end;

procedure TFrm_For.CODBAIExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_ForFCODBAI.Value=0) or (DM1.Tb_ForFCODBAI.IsNull) then
   begin
   DM1.Tb_ForFCODBAI.Value:=0;
   DM1.Tb_ForFBAIRRO.Value:='';
   exit;
   end;

if (CANCELAR.Focused) then
   exit;
if not flcadbai(1,0,DM1.Tb_ForFCODBAI.AsString) then
   begin
   fmensagem('Bairro não Cadastrada.',0,['0'],0);
   CODBAI.SetFocus;
   end
else
   begin
   DM1.Tb_ForFCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
   DM1.Tb_ForFBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
   end;
end;

procedure TFrm_For.FormCreate(Sender: TObject);
var
n : LongInt ;
begin
  inherited;
dm2.Tb_Con_CliCC_FONE01.DisplayLabel:='WhatsApp';

tb_Imagem:=tAdoQuery.create(nil);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;
if flfilpad(0,'_FOR','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CNPJ',[]) then
    cb_cnpj.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
    cb_cnpj.Checked:=DM4.Tb_FilPad2FPVALOR.Value='false';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TELEFONE',[]) then
    cb_telefone.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
    cb_telefone.Checked:=DM4.Tb_FilPad2FPVALOR.Value='false';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ENDERECO',[]) then
    cb_endereco.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
    cb_endereco.Checked:=DM4.Tb_FilPad2FPVALOR.Value='false';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CIDADE',[]) then
    cb_cidade.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
    cb_cidade.Checked:=DM4.Tb_FilPad2FPVALOR.Value='false';
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CEP',[]) then
    cb_cep.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
    cb_cep.Checked:=DM4.Tb_FilPad2FPVALOR.Value='false';
  end;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VER_CNPJ',[]) then
    cb_ver_cnpj.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
    cb_ver_cnpj.Checked:=DM4.Tb_FilPad2FPVALOR.Value='false';

  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VALCCDEP',[]) then
    CB_VALCCDEP.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
  else
    CB_VALCCDEP.Checked:=DM4.Tb_FilPad2FPVALOR.Value='false';

  {
    ROTINA -  IMAGENS
    if DM1.Tb_PargerPUSA_DEGRADE.Value = 1 THEN
    BEGIN
      for n := 0 to ( ComponentCount - 1 ) do
      begin
          if ( components[n].ClassType = TLabel )or( components[n].ClassType = TImage ) then
          begin
                 if ( components[n].ClassType = TImage )           and
                    (TImage (components[n]).Name <> 'imagem_jpg1') and
                    (TImage (components[n]).Name <> 'imagem_jpg2') and
                    (TImage (components[n]).Name <> 'imagem_jpg3') and
                    (TImage (components[n]).Name <> 'imagem_jpg4') then
                 begin
                    TImage (components[n]).Visible := true;
                    TImage (components[n]).Picture.Graphic.LoadFromFile(DM1.Tb_PargerPIMAGEM_DEGRADE.Value);
                    TImage (components[n]).SendToBack;
                 end;
                 TLabel (components[n]).Transparent := TRUE;
          end ;
      end ;
    end else
    begin
      for n := 0 to ( ComponentCount - 1 ) do
      begin
          if ( components[n].ClassType = TLabel )or( components[n].ClassType = TImage ) then
          begin
                 if ( components[n].ClassType = TImage )           and
                    (TImage (components[n]).Name <> 'imagem_jpg1') and
                    (TImage (components[n]).Name <> 'imagem_jpg2') and
                    (TImage (components[n]).Name <> 'imagem_jpg3') and
                    (TImage (components[n]).Name <> 'imagem_jpg4') then
                 begin
                    TImage (components[n]).Visible := false;
//                    TImage (components[n]).Picture.Graphic.LoadFromFile(DM1.Tb_PargerPIMAGEM_DEGRADE.Value);
//                    TImage (components[n]).SendToBack;
                 end;
                 TLabel (components[n]).Transparent := TRUE;
          end ;
      end ;
    end;

}

{
if (valint(copy(mpseg,1,2))<4) or
   (valint(copy(mpseg,1,2))=17) then
   DBRG_PADRAO.Visible:=true;
}
if DM1.Tb_PargerPCODLOC.Value=1 then
   begin
   CODLOC.Visible:=True;
   NOMLOC.Enabled:=False;
   NOMLOC.ParentColor:=True;
   NOMLOC.Ctl3D:=True;
   ESTADO.Enabled:=False;
   ESTADO.ParentColor:=True;
   ESTADO.Ctl3D:=True;
   end
else
   begin
   CODLOC.Visible:=False;
   NOMLOC.Left:=156;
   NOMLOC.Left:=CODLOC.Left;
   NOMLOC.Width:=NOMLOC.Width+CODLOC.Width;

   end;
if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   CODBAI.Visible:=True;
   NOMBAI.Enabled:=False;
   NOMBAI.ParentColor:=True;
   NOMBAI.Ctl3D:=True;
   end
else
   begin
   CODBAI.Visible:=False;
   NOMBAI.Left   :=CODBAI.Left;
   NOMBAI.Visible:=True;
   end;
for_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADFOR') then
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
DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                  +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMDEPD.Items.Clear;
DBCB_NOMDEPC.Items.Clear;
DBCB_REP_NOMDEP.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMDEPD.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DBCB_NOMDEPC.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DBCB_REP_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
   DM1.Query5.Next;
   end;


DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                  +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_NOMCCUD.Items.Clear;
DBCB_NOMCCUC.Items.Clear;
DBCB_REP_NOMCCU.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_NOMCCUD.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DBCB_NOMCCUC.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
   DBCB_REP_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');

   DM1.Query5.Next;
   end;

PC1.TabIndex:=0;
if codusr=1111 then
   begin
   tsconfiguracao.TabVisible:=true;
   end
else
   begin
   TsConfiguracao.TabVisible:=false;
   end;

if flfilpad(-1,'_CLI','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','ALVARA_MUNICIPAL',[]) then
      lbl_alvara_municipal.Color := valint(DM4.Tb_FilPad2FPVALOR.AsString);
   end;

st_alvara_municipal.Color := lbl_alvara_municipal.Color;
end;

procedure TFrm_For.GRAVARClick(Sender: TObject);
begin
  inherited;
  if (DM1.Tb_ForFRAZAO.Value='_') or (DM1.Tb_ForFrazao.IsNull) then begin
      PC1.ActivePage := tsCad;
      verteclado(0);
      fMensagem('Razão social Invalida!',0,['0'],0);
      DBEdit2.SetFocus;
     exit;
  end;
  if DM1.Tb_ForFCODFOR.AsFloat=0 then
     begin
     MessageDlg('Código do Fornecedor inválido!',mtWarning,[mbOk],0);
     PC1.ActivePage:=tsCad;
     DBEdit1.SetFocus;

     exit;
     end;


// INCIO

IF (CB_VALCCDEP.Checked=true) and  (length(trim(DM1.Tb_ForFCODCCC.AsString))<1) then
   begin
   PC1.ActivePage:=TsFluxoCaixa;
   MessageDlg('Centro de Custo para recebimento é obrigatorio!',mtWarning,[mbok],0);
   DBE_CodCCuD.SetFocus;
   exit;
   end;

IF (CB_VALCCDEP.Checked=true) and  (length(trim(DM1.Tb_ForFCODCCD.AsString))<1) then
   begin
   PC1.ActivePage:=TsFluxoCaixa;
   MessageDlg('Centro de Custo para pagamento é obrigatorio!',mtWarning,[mbok],0);
   DBE_CodCCuC.SetFocus;
   exit;
   end;

IF (CB_VALCCDEP.Checked=true) and  (length(trim(DM1.Tb_ForFCODDEPD.AsString))<1) then
   begin
   PC1.ActivePage:=TsFluxoCaixa;
   MessageDlg('Departamento para Pagamento é obrigatorio!',mtWarning,[mbok],0);
   DBE_CodDepD.SetFocus;
   exit;
   end;

IF (CB_VALCCDEP.Checked=true) and  (length(trim(DM1.Tb_ForFCODDEPC.AsString))<1) then
   begin
   PC1.ActivePage:=TsFluxoCaixa;
   MessageDlg('Departamento para Pagamento é obrigatorio!',mtWarning,[mbok],0);
   DBE_CodDepC.SetFocus;
   exit;
   end;


// TERMINO



  if DM1.Tb_ForFCGC.IsNull then
    DM1.Tb_ForFCGC.AsString:='0'; 
  DM1.Tb_ForFTIPOF.AsInteger  := CB_TIPOF.ItemIndex;
  DM1.Tb_ForFPADRAO.AsInteger := CB_PADRAO.ItemIndex;
  DM1.Tb_ForFTDESP.AsInteger  := CB_TDESP.ItemIndex;

  if moper=8 then
     begin

     mCondicao_old:=' where FCODEMP='+DM1.Tb_ForFCODEMP.AsString
                  +' and FCODFOR='+DM1.Tb_ForFCODFOR.AsString;

     mChave_Old:=fGerarTabelas_Old(8 //status
                  ,0 //codigo novo valor chave
                  ,'FCODNOV' //nome do campo do novo valor (chave)
                  ,'' // nome do campo data e hora do evento
                  ,'' // nome do campo do usuario
                  ,'' // nome do campo de status
                  ,'CADFOR' // nome da tabela
                  ,mCondicao_old);




     if mCodBloq_Ant<>DM1.Tb_ForFCODBLOQ.AsFloat then begin
        DM1.Query1.Close;
        DM1.Query1.SQL.Clear;
        DM1.Query1.SQL.Add('Select max(FB_SEQ) from CADFOR_BLOQ where '
                          +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' FB_CODEMP=0'+DM1.Tb_ForFCODEMP.AsString+' and ')
                          +' FB_CODFOR=0'+DM1.Tb_ForFCODFOR.AsString);
        DM1.Query1.Open;

        mcodigo_ant:=DM1.Query1.fields[0].AsFloat+1;

        DM1.Query2.Close;
        DM1.Query2.SQL.Clear;
        DM1.Query2.SQL.add('Insert into CADFOR_BLOQ ('
                          +' FB_CODEMP '
                          +',FB_CODFOR '
                          +',FB_SEQ '
                          +',FB_BLOQUEIO '
                          +',FB_MOTIVO '
                          +',FB_CODUSR '
                          +',FB_DATHOR '
                          +') values ('
                          +' :FB_CODEMP '
                          +',:FB_CODFOR '
                          +',:FB_SEQ '
                          +',:FB_BLOQUEIO '
                          +',:FB_MOTIVO '
                          +',:FB_CODUSR '
                          +',:FB_DATHOR '
                          +')');
        DM1.Query2.ParamByName('FB_CODEMP').AsFloat   :=DM1.Tb_ForFCODEMP.AsFloat;
        DM1.Query2.ParamByName('FB_CODFOR').AsFloat   :=DM1.Tb_ForFCODFOR.AsFloat;
        DM1.Query2.ParamByName('FB_SEQ').AsFloat      :=mcodigo_ant;
        DM1.Query2.ParamByName('FB_BLOQUEIO').AsFloat :=DM1.Tb_ForFCODBLOQ.AsFloat;
        DM1.Query2.ParamByName('FB_MOTIVO').AsString  :=DM1.Tb_ForFMOTBLOQ.AsString;
        DM1.Query2.ParamByName('FB_CODUSR').AsFloat   :=codusr;
        DM1.Query2.ParamByName('FB_DATHOR').AsDateTime:=NOW;

        try
          DM1.Query2.ExecSQL;
          fdm1startCommit;
        except
        end;
     end;
   end;

  dm1.tB_For.Post;

  dbgContatos.ReadOnly      :=True;
  dbmContatos.ReadOnly      :=True;

  btn_novo.Enabled    := True;
  btn_alterar.Enabled := True;
  btn_excluir.Enabled := True;
  btn_gravar.Enabled  := False;
  BBnAtu.Enabled      := True;
  CANCELAR.Click;
end;

function tfrm_For.fFor01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_For.FieldCount-1 do
   begin
   if DM1.Tb_For.Fields[x].FieldKind=fkCalculated then
      Continue;
   if UpperCase(copy(DM1.Tb_For.Fields[x].FieldName,1,2))='ID' then
      minstru:=minstru+v+' ROWID as '+DM1.Tb_For.Fields[x].FieldName
   else
      minstru:=minstru+v+DM1.Tb_For.Fields[x].FieldName;

   v:=',';
   end;
minstru:=minstru+' from OLD_CADFOR where FCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_For.Close;
DM1.Tb_For.SQL.Clear;
DM1.Tb_For.SQL.add(minstru);
DM1.Tb_For.Open;
BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;



procedure TFrm_For.DBE_CodDepDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=113 then
   begin
   DM1.Tb_ForFCODDEPD.Value:=fChamaDeptoCX(0,'frm_For','');
   if DM1.Tb_ForFCODDEPD.AsString<>'' then
      DBE_CodDepDExit(self);
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
               +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
   DM1.Query5.Open;
   DBCB_NOMDEPD.Items.Clear;
   DBCB_NOMDEPC.Items.Clear;
   While not DM1.Query5.Eof do
      begin
      DBCB_NOMDEPD.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
      DBCB_NOMDEPC.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
      DM1.Query5.Next;
      end;

   end;
end;

procedure TFrm_For.DBE_CodCCuDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_ForFCODCCD.Value:=fChamaCCU(0,'frm_For','');
      if DM1.Tb_ForFCODCCD.AsString<>'' then
         DBE_CodCCuDExit(self);

      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMCCUD.Items.Clear;
      DBCB_NOMCCUC.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMCCUD.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DBCB_NOMCCUC.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                        +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                        +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;

end;

procedure TFrm_For.DBE_CodCCuCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
         begin
         DM1.Tb_ForFCODCCC.Value:=fChamaCCU(0,'frm_For','');
         if DM1.Tb_ForFCODCCC.AsString<>'' then
            DBE_CodCCuCExit(Self);
         end;
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_REP_NOMCCU.Items.Clear;
      DBCB_NOMCCUD.Items.Clear;
      DBCB_NOMCCUC.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMCCUD.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DBCB_NOMCCUC.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DBCB_REP_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');

         DM1.Query5.Next;
         end;
      end;
   end;

end;

procedure TFrm_For.DBEdit11Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPCRITCNPJ.Value=1 then
   begin
   if ValFloat(DM1.Tb_ForFCGC.AsString)>0 then
      begin
      if not (FCGC(ValFloat(DM1.Tb_ForFCGC.AsString))) and
         not (FCPF(FORMATFLOAT('00000000000',ValFloat(DM1.Tb_ForFCGC.AsString))))  then
         begin
         fmensagem('CNPJ/CNPF digito não confere!',0,['0'],0);
         edt_cnpj.SetFocus;
         exit;
         end;
      end;
   end;

end;

procedure TFrm_For.bbAniversariantesClick(Sender: TObject);
begin
  inherited;
mTipo_Ani  :='FR';
testeform := TFrm_For(FindGlobalComponent('form_Ani'));
if testeform=nil then
   Application.CreateForm(Tfrm_Ani, form_Ani);
if (DM1.Tb_ForFCODFOR.IsNull) or (DM1.Tb_ForFCODFOR.Value=0) then
   begin
   fmensagem('Favor Selecionar um Fornecedor válido!',0,['0'],0);
   exit;
   end;

flcadani(1,0,mTipo_Ani,DM1.Tb_ForFCODFOR.AsString);
MCodigo_ani:=DM1.Tb_ForFCODFOR.Asinteger;
form_Ani.Label1.Caption:='Aniversariantes da Empresa: '+DM1.Tb_ForFCODFOR.AsString+' '+DM1.Tb_ForFRAZAO.Value;
mani_ori   :='CADFOR';
form_Ani.Show;
end;

procedure TFrm_For.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;


if tb_Imagem<>nil then
   begin
   tb_Imagem.Close;
   freeandnil(tb_imagem);
   end;
  
Tb_For_imagem.Close;

Form_SelEmp.free;
Form_SelEmp:=nil;
mTipo_Ani := '';
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_For.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHANGEFOR.Value=1 then
   begin
   If DM1.Tb_For.State in [dsInsert, dsEdit] then
      begin
      Case fMensagem('O fornecedor change atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes: btn_gravar.Click;
         mrNo : btn_cancelar.Click;
         else btn_cancelar.Click;
         end;
      end;
   if for_ori='consulta' then
      begin
      ffor01lerant(0);
      end
   else
      begin
      if (CAMPO.ItemIndex=1) or (CAMPO.ItemIndex=3) then
         flcadfor(CAMPO.ItemIndex,1,fdeixanum2(Edit1.Text))
      else
         flcadfor(CAMPO.ItemIndex,1,Edit1.Text);
      end
   end;
end;

procedure TFrm_For.SAIRClick(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
  IF for_ori='' THEN
     close;

end;

procedure TFrm_For.bbBloqVendClick(Sender: TObject);
begin
  inherited;
testeform := TFrm_for(FindGlobalComponent('form_Venda_bloqueada_relacao'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_VendaBloqueada_Relacao, Form_VendaBloqueada_Relacao);
Form_VendaBloqueada_Relacao.Ts_Vendedor.TabVisible    :=False;
Form_VendaBloqueada_Relacao.Ts_Fornecedor.TabVisible  :=True;
Form_VendaBloqueada_Relacao.Ts_Estados.TabVisible     :=False;
Form_VendaBloqueada_Relacao.Ts_Cidade.TabVisible      :=False;
Form_VendaBloqueada_Relacao.Ts_Bairros.TabVisible     :=False;
Form_VendaBloqueada_Relacao.Ts_RamoClientes.TabVisible:=False;
Form_VendaBloqueada_Relacao.Ts_Clientes.TabVisible    :=False;
Form_VendaBloqueada_Relacao.Ts_RamoProdutos.TabVisible:=False;
Form_VendaBloqueada_Relacao.Ts_Produtos.TabVisible    :=False;
Form_VendaBloqueada_Relacao.CODIGO.Enabled            :=False;
Form_VendaBloqueada_Relacao.bbAtualizar.Enabled          :=False;
Form_VendaBloqueada_Relacao.St_Nivel.Caption:='NIVEL: FORNECEDOR';
mNivelConsulta:=2;

Form_VendaBloqueada_Relacao.CODIGO.Text:=DM1.Tb_ForFCODFOR.AsString;
Form_VendaBloqueada_Relacao.NOME.Text:=DM1.Tb_ForFRAZAO.AsString;
Form_VendaBloqueada_Relacao.bbAtualizar.Click;
Form_VendaBloqueada_Relacao.Show;

end;

procedure TFrm_For.DBCB_NOMDEPDEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMDEPD do ItemIndex:=Items.IndexOf(DM1.Tb_ForFNOMDEPD.Value
                                    +'['+DM1.Tb_ForFCODDEPD.AsString+']');
   DBCB_NOMDEPD.text:=DBCB_NOMDEPD.Items.Strings[DBCB_NOMDEPD.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macdep then
   DBE_CODCCUD.SetFocus;
macdep:=false;
end;

procedure TFrm_For.DBCB_NOMCCUDEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMCCUD do ItemIndex:=Items.IndexOf(DM1.Tb_ForFNOMCCD.AsString
                                    +'-'+DM1.Tb_ForFNATDCD.AsString
                                    +'['+DM1.Tb_ForFCODCCD.AsString+']');
   DBCB_NOMCCUD.text:=DBCB_NOMCCUD.Items.Strings[DBCB_NOMCCUD.ItemIndex];
   if not lbl_obs.Visible then
      lbl_obs.Visible:=true;
   end;
if macccu then
   DBE_DescMvD.SetFocus;
macccu:=false;


end;

procedure TFrm_For.DBCB_REP_NOMDEPEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   with DBCB_REP_NOMDEP do ItemIndex:=Items.IndexOf(DM1.Tb_ForFREP_NOMDEP.Value
                                    +'['+DM1.Tb_ForFREP_CODDEP.AsString+']');
   DBCB_REP_NOMDEP.text:=DBCB_REP_NOMDEP.Items.Strings[DBCB_REP_NOMDEP.ItemIndex];
   if not lbl_obs2.Visible then
      lbl_obs2.Visible:=true;
   end;
if macdep then
   DBE_REP_CodCCu.SetFocus;
macdep:=false;

end;

procedure TFrm_For.DBCB_REP_NOMCCUEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   with DBCB_REP_NOMCCU do ItemIndex:=Items.IndexOf(DM1.Tb_ForFREP_NOMCCU.AsString
                                    +'-'+DM1.Tb_ForFREP_NATDC.AsString
                                    +'['+DM1.Tb_ForFREP_CODCCU.AsString+']');
   DBCB_REP_NOMCCU.text:=DBCB_REP_NOMCCU.Items.Strings[DBCB_REP_NOMCCU.ItemIndex];
   if not lbl_obs2.Visible then
      lbl_obs2.Visible:=true;
   end;
if macccu then
   DBE_REP_DescMv.SetFocus;
macccu:=false;


end;

procedure TFrm_For.DBCB_NOMDEPDExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsInsert,dsEdit] then
   begin
   if DBCB_NOMDEPD.ItemIndex<0 then
      with DBCB_NOMDEPD do ItemIndex:=Items.IndexOf(DBCB_NOMDEPD.Text);
   DBCB_NOMDEPD.text:=DBCB_NOMDEPD.Items.Strings[DBCB_NOMDEPD.ItemIndex];
   if trim(DBCB_NOMDEPD.Text)='' then
      DM1.Tb_ForFCODDEPD.Value:=''
   else
      begin
      DM1.Tb_ForFCODDEPD.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEPD.Text);
      DBE_CODDEPDExit(Self);
      end;
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;


end;

procedure TFrm_For.DBCB_NOMCCUDExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   if DBCB_NOMCCUD.ItemIndex<0 then
      with DBCB_NOMCCUD do ItemIndex:=Items.IndexOf(DBCB_NOMCCUD.Text);
   DBCB_NOMCCUD.text:=DBCB_NOMCCUD.Items.Strings[DBCB_NOMCCUD.ItemIndex];
   if trim(DBCB_NOMCCUD.Text)='' then
      DM1.Tb_ForFCODCCD.Value:=''
   else
      begin
      DM1.Tb_ForFCODCCD.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCUD.Text);
      DBE_CODCCUDExit(Self);
      end;
   end;
if lbl_obs.Visible then
   lbl_obs.Visible:=false;

end;

procedure TFrm_For.DBCB_REP_NOMDEPExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   if DBCB_REP_NOMDEP.ItemIndex<0 then
      with DBCB_REP_NOMDEP do ItemIndex:=Items.IndexOf(DBCB_REP_NOMDEP.Text);
   DBCB_REP_NOMDEP.text:=DBCB_REP_NOMDEP.Items.Strings[DBCB_REP_NOMDEP.ItemIndex];
   if trim(DBCB_REP_NOMDEP.Text)='' then
      DM1.Tb_ForFREP_CODDEP.Value:=''
   else
      begin
      DM1.Tb_ForFREP_CODDEP.Value:=fExtraiCodigoEntreChaves(DBCB_REP_NOMDEP.Text);
      DBE_REP_CodDepExit(Self);
      end;
   end;
if lbl_obs2.Visible then
   lbl_obs2.Visible:=false;


end;

procedure TFrm_For.DBCB_REP_NOMCCUExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   if DBCB_REP_NOMCCU.ItemIndex<0 then
      with DBCB_REP_NOMCCU do ItemIndex:=Items.IndexOf(DBCB_REP_NOMCCU.Text);
   DBCB_REP_NOMCCU.text:=DBCB_REP_NOMCCU.Items.Strings[DBCB_REP_NOMCCU.ItemIndex];
   if trim(DBCB_REP_NOMCCU.Text)='' then
      DM1.Tb_ForFREP_CODCCU.Value:=''
   else
      begin
      DM1.Tb_ForFREP_CODCCU.Value:=fExtraiCodigoEntreChaves(DBCB_REP_NOMCCU.Text);
      DBE_REP_CodCCuExit(Self);
      end;
   end;
if lbl_obs2.Visible then
   lbl_obs2.Visible:=false;

end;

procedure TFrm_For.Edit1Exit(Sender: TObject);
begin
  inherited;
if (CAMPO.ItemIndex=1) or (CAMPO.ItemIndex=3) then
   Edit1.Text:=fdeixanum2(Edit1.Text);

end;

procedure TFrm_For.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key = vk_F7 then
  begin
  if SalvarGrid('Frm_For',dbgContatos) then
    fmensagem('Salvo novo Grid de Contatos!',0,['0'],0);
  if SalvarGrid('Frm_For',DBGrid1) then
    fmensagem('Salvo novo Grid de Cadastro!',0,['0'],0);
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
  if pTcAtalho_me<>0 then
   begin
   if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
      begin
      if DBRG_Restricao.Visible then
         DBRG_Restricao.Visible:=false
      else
         DBRG_Restricao.Visible:=true;
      end;
   end;
if (codusr=1111) and (key=118) then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Update CADFOR set FCB_TAM=38 '
                     +', FCB_TAMCOD=13 '
                     +', FCB_POSCOD=04 '
                     +', FCB_TAMVCT=06 '
                     +', FCB_POSVCT=19 '
                     +', FCB_TAMQTD=04 '
                     +', FCB_POSQTD=27 '
                     +', FCB_TAMLOT=06 '
                     +', FCB_POSLOT=33 ');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;

end;

procedure TFrm_For.DBE_codgforExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if DM1.Tb_ForFCODGFOR.AsFloat>0 then
   begin
   if flqr2('GFNOME','GF','CADGFOR','N','GFCODGRU',DM1.Tb_ForFCODGFOR.AsString) then
      DM1.Tb_Fornomgfor.Value:=DM1.Query2.Fields[0].AsString
   else
      begin
      fmensagem('Grupo não Cadastrado.',0,['0'],0);
      DBE_codgfor.SetFocus;
      end
   end;


end;

procedure TFrm_For.DBE_codgforKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      dm1.Tb_ForFCODGFOR.AsFloat:=fsonumero(fChamaGFor(0,'frm_cabc',key));
      DBE_codgforExit(self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_For.spd_atuprazoClick(Sender: TObject);
begin
  inherited;
if fmensagem('Quer Realmente Atualizar o Prazo no Cadastro de Produtos?',0,['1','2'],2)=mryes then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Update CADPRO SET PDPRAZO=0'+DM1.Tb_ForFPRAZOV.AsString+' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' PDCODEMP=0'+DM1.Tb_ForFCODEMP.AsString+' and ')
                     +' PDCODFOR=0'+DM1.Tb_ForFCODFOR.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
      end;
   fmensagem('Produtos Atualizados!',0,['0'],0);
   end;
end;

procedure TFrm_For.spd_descfinClick(Sender: TObject);
begin
  inherited;
if fmensagem('Quer Realmente Atualizar o Desconto Financeiro no Cadastro de Produtos?',0,['1','2'],2)=mryes then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Update CADPRO SET PDDESFIN=0'+mudavp(DM1.Tb_ForFDESCFINV.AsString)+' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' PDCODEMP=0'+DM1.Tb_ForFCODEMP.AsString+' and ')
                     +' PDCODFOR=0'+DM1.Tb_ForFCODFOR.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
      end;
   fmensagem('Produtos Atualizados!',0,['0'],0);
   end;

end;

procedure TFrm_For.spd_atudesc01Click(Sender: TObject);
begin
  inherited;
if fmensagem('Quer Realmente Atualizar o Desconto 01 do Cadastro de Produtos?',0,['1','2'],2)=mryes then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Update CADPRO SET PDDESC1=0'+mudavp(DM1.Tb_ForFDESC01V.AsString)+' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' PDCODEMP=0'+DM1.Tb_ForFCODEMP.AsString+' and ')
                     +' PDCODFOR=0'+DM1.Tb_ForFCODFOR.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
      end;
   fmensagem('Produtos Atualizados!',0,['0'],0);
   end;


end;

procedure TFrm_For.spd_atucomisClick(Sender: TObject);
begin
  inherited;
if fmensagem('Quer Realmente Atualizar a Comissão do Cadastro de Produtos?',0,['1','2'],2)=mryes then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Update CADPRO SET PDCOMIS=0'+mudavp(DM1.Tb_ForFCOMIS.AsString)+' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' PDCODEMP=0'+DM1.Tb_ForFCODEMP.AsString+' and ')
                     +' PDCODFOR=0'+DM1.Tb_ForFCODFOR.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
      end;
   fmensagem('Produtos Atualizados!',0,['0'],0);
   end;



end;

procedure TFrm_For.src_forDataChange(Sender: TObject; Field: TField);
begin
  inherited;

if not (DM1.Tb_For.sTate in [dsEdit,dsInsert]) then
   begin
   if Length(DM1.Tb_ForFCGC.AsString)<12 then
      begin
      edt_cnpj.EditMask:='999\.999\.999\-99;0';
      edt_cnpj.Text:=insere(DM1.Tb_ForFCGC.Asstring,'0',11);
      end
   else
      begin
      edt_cnpj.EditMask:='99\.999\.999\/9999\-99;0';
      edt_cnpj.Text:=insere(DM1.Tb_ForFCGC.Asstring,'0',14);
      end;
   edt_usrinc.Text:='';
   edt_dathorinc.Text:='';
   edt_usralt.Text:='';
   edt_dathoralt.Text:='';
   if DM1.Tb_ForFCODUSR_INC.AsFloat>0 then
      begin
      if flqr2('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_ForFCODUSR_INC.AsString) then
         edt_usrinc.Text:=DM1.Query2.fields[0].AsString;
      end;
   if DM1.Tb_ForFDATHOR_INC.AsDateTime>pdatanula then
      edt_dathorinc.Text:=FormatDatetime(fdathor, DM1.Tb_ForFDATHOR_INC.Value);
   if DM1.Tb_ForFCODUSR_ALT.AsFloat>0 then
      begin
      if flqr2('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_ForFCODUSR_ALT.AsString) then
         edt_usralt.Text:=DM1.Query2.fields[0].AsString;
      end;
   if DM1.Tb_ForFDATHOR_ALT.AsDateTime>pdatanula then
      edt_dathoralt.Text:=FormatDatetime(fdathor, DM1.Tb_ForFDATHOR_ALT.Value);
   CB_TIPOF.ItemIndex :=DM1.Tb_ForFTIPOF.AsInteger;
   CB_PADRAO.ItemIndex:=DM1.Tb_ForFPADRAO.AsInteger;
   CB_TDESP.ItemIndex :=DM1.Tb_ForFTDESP.AsInteger;
   end;


if PC1.ActivePageIndex=tsImagens.PageIndex then
   begin
   if not DM1.Tb_ForFCODFOR.isnull then
      begin
{
      if trim(DM1.Tb_ForIDFOR.AsString)='' then
         begin
         if not fLerGenerico01_campos('CADFOR','ROWID',' FCODFOR='+DM1.Tb_ForFCODFOR.AsString,mRowId) then
            begin
            exit;
            end;
         end
      else
         mRowId:=DM1.Tb_ForIDFOR.AsString;
}
      if (midfor_src<>DM1.Tb_ForFCODFOR.AsFloat)  then
         begin
         if DM1_ADO.ADOConnection1.connected=false then
            begin
            DM1_ADO.ADOConnection1.Close;
            DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
            DM1_ADO.ADOConnection1.Open;
            end;

         tb_For_Imagem.close;
         Tb_For_imagem.Connection:=DM1_ADO.ADOConnection1;
         tb_For_Imagem.Parameters.ParamByName('FI_ID_FOR').Value    :=DM1.Tb_ForFCODFOR.AsFloat;
         tb_For_Imagem.open;
         midfor_src :=DM1.Tb_ForFCODFOR.AsFloat;
         end;
      end;
   end;   


end;

procedure TFrm_For.bbProximaClick(Sender: TObject);
begin
  inherited;
PC1.ActivePage:=Tab_Ad;
end;

procedure TFrm_For.CB_TIPOFClick(Sender: TObject);
begin
  inherited;
with CB_TIPOF do ItemIndex:=items.IndexOf(CB_TIPOF.Text);
end;

procedure TFrm_For.CB_PADRAOClick(Sender: TObject);
begin
  inherited;
with CB_PADRAO do ItemIndex:=items.IndexOf(CB_PADRAO.Text);

end;

procedure TFrm_For.CB_TDESPClick(Sender: TObject);
begin
  inherited;
with CB_TDESP do ItemIndex:=items.IndexOf(CB_TDESP.Text);

end;

procedure TFrm_For.sbPadraoClick(Sender: TObject);
begin
  inherited;
DM1.Tb_ForFCB_TAM.Value:=38;
DM1.Tb_ForFCB_TAMCOD.Value:=13;
DM1.Tb_ForFCB_POSCOD.Value:=04;
DM1.Tb_ForFCB_TAMVCT.Value:=06;
DM1.Tb_ForFCB_POSVCT.Value:=19;
DM1.Tb_ForFCB_TAMQTD.Value:=04;
DM1.Tb_ForFCB_POSQTD.Value:=27;
DM1.Tb_ForFCB_TAMLOT.Value:=06;
DM1.Tb_ForFCB_POSLOT.Value:=33;

end;

procedure TFrm_For.DBE_REP_CODIGOEnter(Sender: TObject);
begin
  inherited;
mcodigo_ant:=DM1.Tb_ForFREP_CODIGO.Value;
end;

procedure TFrm_For.DBE_REP_CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) and (DM1.Tb_For.State in [dsEdit,dsInsert]) then
   begin
   if TIPO.Text='FR' then
      begin
      key:=#0;
      end
   else if TIPO.Text='TR' then
      begin
      DM1.Tb_ForFREP_CODIGO.Value:=ValFloat(fChamaTra(0,'frm_for',key));
      if DM1.Tb_ForFREP_CODIGO.AsFloat>0 then
         DBE_REP_CODIGOExit(self);
      end
   else if TIPO.Text='VD' then
      begin
      DM1.Tb_ForFREP_CODIGO.Value:=ValFloat(fChamaVen(0,'frm_for',key));
      if DM1.Tb_ForFREP_CODIGO.AsFloat>0 then
         DBE_REP_CODIGOExit(self);
      key:=#0;
      end
   else if TIPO.Text='US' then
      begin
      DM1.Tb_ForFREP_CODIGO.Value:=ValFloat(fChamaUsr(0,'frm_for',key));
      if DM1.Tb_ForFREP_CODIGO.AsFloat>0 then
         DBE_REP_CODIGOExit(self);
      key:=#0;
      end
   else
      begin
      DM1.Tb_ForFREP_CODIGO.Value:=fSonumero(fChamaCli(0,'Frm_LDR',key));
      DBE_REP_CODIGOExit(self);
      end;
   end;


end;

procedure TFrm_For.DBE_CodDepCExit(Sender: TObject);
begin
  inherited;
macdep:=false;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_ForFNOMDEPC.Value:=' ';
   mDadosRetornoCaixa := fTestarCADDEP_CX(false,DM1.Tb_ForFCODDEPC.AsString);
   if mDadosRetornoCaixa.pOk = false then
      begin
      DBE_CodDepC.SetFocus;
      end
    else
       begin
       DM1.Tb_ForFNOMDEPC.Value:=mDadosRetornoCaixa.pNome;
       if not DBCB_NOMDEPC.Focused then
          macdep:=true;
       end;
   end;


end;

procedure TFrm_For.DBCB_NOMDEPCExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   if DBCB_NOMDEPC.ItemIndex<0 then
      with DBCB_NOMDEPC do ItemIndex:=Items.IndexOf(DBCB_NOMDEPC.Text);
   DBCB_NOMDEPC.text:=DBCB_NOMDEPC.Items.Strings[DBCB_NOMDEPC.ItemIndex];
   if trim(DBCB_NOMDEPC.Text)='' then
      DM1.Tb_ForFCODDEPC.Value:=''
   else
      begin
      DM1.Tb_ForFCODDEPC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMDEPC.Text);
      DBE_CODDEPCExit(Self);
      end;
   end;
if lbl_obs2.Visible then
   lbl_obs2.Visible:=false;



end;

procedure TFrm_For.DBE_CodCCuCExit(Sender: TObject);
begin
  inherited;
macccu:=false;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin

   DM1.Tb_ForFNOMCCC.Value:=' ';
   mDadosRetornoCaixa:=fTestarCADCC(false,DM1.Tb_ForFCODCCC.AsString);
   if mDadosRetornoCaixa.pOk = false then
      begin
      DBE_CodCCuC.SetFocus;
      end
   else
      begin
      DM1.Tb_ForFNATDCC.Value:=mDadosRetornoCaixa.pNatDC;
      DM1.Tb_ForFNOMCCC.Value:=mDadosRetornoCaixa.pNome;
      if not DBCB_NOMCCUC.Focused then
         macccu:=true;
      end;
   end;

end;

procedure TFrm_For.DBCB_NOMCCUCExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   if DBCB_NOMCCUC.ItemIndex<0 then
      with DBCB_NOMCCUC do ItemIndex:=Items.IndexOf(DBCB_NOMCCUC.Text);
   DBCB_NOMCCUC.text:=DBCB_NOMCCUC.Items.Strings[DBCB_NOMCCUC.ItemIndex];
   if trim(DBCB_NOMCCUC.Text)='' then
      DM1.Tb_ForFCODCCC.Value:=''
   else
      begin
      DM1.Tb_ForFCODCCC.Value:=fExtraiCodigoEntreChaves(DBCB_NOMCCUC.Text);
      DBE_CODCCUCExit(Self);
      end;
   end;
if lbl_obs2.Visible then
   lbl_obs2.Visible:=false;

end;

procedure TFrm_For.DBE_CodDepCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_ForFCODDEPC.Value:=fChamaDeptoCX(0,'frm_For','');
      fChamaFor(0,'frm_for','');
      if DM1.Tb_ForFCODDEPC.AsString<>'' then
         DBE_CodDepCExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
               +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMDEPD.Items.Clear;
      DBCB_NOMDEPC.Items.Clear;
      DBCB_REP_NOMDEP.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMDEPD.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DBCB_NOMDEPC.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DBCB_REP_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;



end;

procedure TFrm_For.DBCB_NOMDEPCEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMDEPC do ItemIndex:=Items.IndexOf(DM1.Tb_ForFNOMDEPC.Value
                                    +'['+DM1.Tb_ForFCODDEPC.AsString+']');
   DBCB_NOMDEPC.text:=DBCB_NOMDEPC.Items.Strings[DBCB_NOMDEPC.ItemIndex];
   if not lbl_obs2.Visible then
      lbl_obs2.Visible:=true;
   end;
if macdep then
   DBE_CODCCUC.SetFocus;
macdep:=false;


end;

procedure TFrm_For.DBCB_NOMDEPCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_ForFCODDEPC.Value:=fChamaDeptoCX(0,'frm_for','');
      if DM1.Tb_ForFCODDEPC.AsString<>'' then
         DBE_CodDepCExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
               +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMDEPC.Items.Clear;
      DBCB_NOMDEPC.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMDEPC.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DBCB_NOMDEPC.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;


end;

procedure TFrm_For.DBCB_REP_NOMDEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_ForFREP_CODDEP.Value:=fChamaDeptoCX(0,'frm_for','');
      if DM1.Tb_ForFREP_CODDEP.AsString<>'' then
         DBE_REP_CodDepExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
               +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_REP_NOMDEP.Items.Clear;
      DBCB_REP_NOMDEP.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_REP_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DBCB_REP_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;


end;

procedure TFrm_For.DBCB_NOMCCUCEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_For.State in [dsEdit,dsInsert] then
   begin
   with DBCB_NOMCCUC do ItemIndex:=Items.IndexOf(DM1.Tb_ForFNOMCCC.AsString
                                    +'-'+DM1.Tb_ForFNATDCC.AsString
                                    +'['+DM1.Tb_ForFCODCCC.AsString+']');
   DBCB_NOMCCUC.text:=DBCB_NOMCCUC.Items.Strings[DBCB_NOMCCUC.ItemIndex];
   if not lbl_obs2.Visible then
      lbl_obs2.Visible:=true;
   end;
if macccu then
   DBE_DescMvC.SetFocus;
macccu:=false;



end;

procedure TFrm_For.DBCB_REP_NOMCCUKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin

      DM1.Tb_ForFREP_CODCCU.Value:=fChamaCCU(0,'frm_for','');
      if DM1.Tb_ForFREP_CODCCU.AsString<>'' then
         DBE_REP_CodCCuExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_REP_NOMCCU.Items.Clear;
      DBCB_NOMCCUD.Items.Clear;
      DBCB_NOMCCUC.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMCCUD.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DBCB_NOMCCUC.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DBCB_REP_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');

         DM1.Query5.Next;
         end;

      end;
   end;


end;

procedure TFrm_For.DBE_REP_CodCCuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_ForFREP_CODCCU.Value:=fChamaCCU(0,'frm_for','');
      if DM1.Tb_ForFREP_CODCCU.AsString<>'' then
         DBE_REP_CodCCuExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_REP_NOMCCU.Items.Clear;
      DBCB_NOMCCUD.Items.Clear;
      DBCB_NOMCCUC.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMCCUD.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DBCB_NOMCCUC.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');
         DBCB_REP_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');

         DM1.Query5.Next;
         end;


      end;
   end;


end;

procedure TFrm_For.DBE_REP_CODIGOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//sai
end;

procedure TFrm_For.DBE_REP_CODIGOExit(Sender: TObject);
begin
  inherited;
if (trim(DM1.Tb_ForFREP_CODCCU.AsString)='') or (trim(DM1.Tb_ForFREP_CODDEP.AsString)='') then
   mcodigo_ant:=-1;
if DM1.Tb_ForFREP_CODIGO.Asfloat<>0 then
   begin

   if TIPO.Text='VD' then
      begin
      if not flqr2('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_ForFREP_CODIGO.AsString) then
         Begin
         fmensagem('Vendedor não Cadastrado!',0,['0'],0);
         TIPO.SetFocus;
         end
      else
         DM1.Tb_ForFREP_NOMESAC.Value:=DM1.Query2.Fields[0].AsString;
      end
   else if TIPO.Text='FR' then
      begin
      if not flqr2('FRAZAO,FDENOM,FDESCMVD,FNOMCCD,FNOMDEPD,FCODCCD,FCODDEPD'
         ,'F','CADFOR','N','FCODFOR',DM1.Tb_ForFREP_CODIGO.AsString) then
         Begin
         fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
         DBE_REP_CODIGO.SetFocus;
         end
      else
         begin
         DM1.Tb_ForFREP_NOMESAC.Value:=DM1.Query2.FieldbyName('FRAZAO').AsString;
         if flparldr(0,'CADDAP0') then
            begin
            if (trim(DM1.Query2.FieldbyName('FDESCMVD').AsString)='') or
               (trim(DM1.Query2.FieldbyName('FDESCMVD').AsString)='_') then
               pldr_descmov:=DM1.Par_LDRNOME.Value
            else
               pldr_descmov:=DM1.Query2.FieldbyName('FDESCMVD').AsString;
            if (Trim(DM1.Query2.FieldbyName('FCODCCD').AsString)='') or
               (Trim(DM1.Query2.FieldbyName('FCODCCD').AsString)='_') then
               begin
               DM1.Tb_ForFREP_CODCCU.Value  :=DM1.Par_LDRCODCC.Value;
               end
            else
               begin
               DM1.Tb_ForFREP_CODCCU.Value  :=DM1.Query2.FieldbyName('FCODCCD').AsString;
               DM1.Tb_ForFREP_NOMCCU.Value :=DM1.Query2.FieldbyName('FNOMCCD').AsString;
               end;
            if (trim(DM1.Query2.FieldbyName('FCODDEPD').AsString)='') or
               (trim(DM1.Query2.FieldbyName('FCODDEPD').AsString)='_') then
               begin
               DM1.Tb_ForFREP_CODDEP.Value:=DM1.Par_LDRCODDEP.Value;
               end
            else
               begin
               DM1.Tb_ForFREP_CODDEP.Value:=DM1.Query2.FieldbyName('FCODDEPD').AsString;
               DM1.Tb_ForFREP_NOMDEP.Value:=DM1.Query2.FieldbyName('FNOMDEPD').AsString;
               end;
            DBE_REP_CodCCuExit(self);
            DBE_REP_CodDepExit(Self);
            end;
         end;
      end
   else if TIPO.Text='TR' then
      begin
      if not flqr2('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_ForFREP_CODIGO.AsString) then
         Begin
         fmensagem('Transportadora não Cadastrada!',0,['0'],0);
         TIPO.SetFocus;
         end
      else
         DM1.Tb_ForFREP_NOMESAC.Value:=DM1.Query2.Fields[0].AsString;
      end
   else if TIPO.Text='US' then
      begin
      if not flqr2('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_ForFREP_CODIGO.AsString) then
         Begin
         fmensagem('Usuário não Cadastrado!',0,['0'],0);
         TIPO.SetFocus;
         end
      else
         DM1.Tb_ForFREP_NOMESAC.Value:=DM1.Query2.Fields[0].AsString;
      end
   else
      begin
      if not flcadcli(1,0,DM1.Tb_ForFREP_CODIGO.AsString) then
         Begin
         fmensagem('Cliente não Cadastrado!',0,['0'],0);
         TIPO.SetFocus;
         end
      else
         begin
         DM1.Tb_ForFREP_NOMESAC.Value:=DM1.Tb_CliCRAZAO.Value;
         if mcodigo_ant<>DM1.Tb_ForFREP_CODIGO.Value then
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
                  DM1.Tb_ForFREP_CODCCU.Value :=DM1.Par_LDRCODCC.Value;
                  end
               else
                  begin
                  DM1.Tb_ForFREP_CODCCU.Value :=DM1.Tb_CliCCODCCC.Value;
                  DM1.Tb_ForFREP_NOMCCU.Value :=DM1.Tb_CliCNOMCCC.Value;
                  end;
              if (trim(DM1.Tb_CliCCODDEPC.AsString)='') or
                 (trim(DM1.Tb_CliCCODDEPC.AsString)='_') then
                  begin
                  DM1.Tb_ForFREP_CODDEP.Value:=DM1.Par_LDRCODDEP.Value;
                  end
               else
                  begin
                  DM1.Tb_ForFREP_CODDEP.Value:=DM1.Tb_CliCCODDEPC.Value;
                  DM1.Tb_ForFREP_NOMDEP.Value:=DM1.Tb_CliCNOMDEPC.Value;
                  end;
               end;
            end;
         DBE_REP_CodCCuExit(self);
         DBE_REP_CodDepExit(Self);
         end;
      end;
   end;
end;

procedure TFrm_For.DBE_REP_CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Bco.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_ForFREP_CODBCO.Value:=ValFloat(FCHAMABCO(0,'FRM_FOR',''));
      if DM1.Tb_ForFREP_CODBCO.AsFloat>0 then
         DBE_REP_CODBCOExit(self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_For.DBE_REP_CODBCOExit(Sender: TObject);
begin
  inherited;
DM1.Tb_ForFREP_NOMBCO.Value:='';

if DM1.Tb_ForFREP_CODBCO.AsFloat<>0 then
   begin
   if flqr2('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_ForFREP_CODBCO.AsString) then
      DM1.Tb_ForFREP_NOMBCO.Value:=DM1.Query2.fieldbyName('BCBANCO').AsString
   else
      begin
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      DBE_REP_CODBCO.SetFocus;
      end;
   end
end;

procedure TFrm_For.DBE_REP_CodDepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_For.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin

      DM1.Tb_ForFREP_CODDEP.Value:=fChamaDeptoCX(0,'frm_for','');
      if DM1.Tb_ForFREP_CODDEP.AsString<>'' then
         DBE_CodDepCExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
               +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_NOMDEPD.Items.Clear;
      DBCB_NOMDEPC.Items.Clear;
      DBCB_REP_NOMDEP.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_NOMDEPD.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DBCB_NOMDEPC.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DBCB_REP_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;



end;

procedure TFrm_For.TIPOEnter(Sender: TObject);
begin
  inherited;
if TIPO.ItemIndex=-1 then
   TIPO.ItemIndex:=1;
end;

procedure TFrm_For.TIPOExit(Sender: TObject);
begin
  inherited;
if TIPO.ItemIndex=-1 then
   TIPO.ItemIndex:=1;

end;

procedure TFrm_For.bbExpCliClick(Sender: TObject);
begin
  inherited;
if GRAVAR.Enabled then
   begin
   fmensagem('Click em Gravar para depois Utilizar esta opção!',0,['0'],0);
   exit;
   end;
if DM1.Tb_ForFRAZAO.IsNull then
   begin
   fmensagem('Favor Selecionar um Fornecedor Válido!',0,['0'],0);
   exit;
   end;
if ValFloat(DM1.Tb_ForFCGC.AsString)=0 then
   begin
   fmensagem('Para Utilizar esta opção o CNPJ do Fornecedor tem que estar Preenchido!',0,['0'],0);
   exit;
   end;
if flcadcli(2,0,DM1.Tb_ForFCGC.AsString) then
   begin
   fmensagem('Este CNPJ ja Esta Cadastrado como cliente, o Codigo é: '+DM1.Tb_CliCCODCLI.AsString
            +' Razão Social: '+DM1.Tb_CliCRAZAO.AsString,0,['0'],0);
   exit;
   end;
if fMensagem('Quer Realmente Exportar para o cadastro de Clientes?',0,['1','2'],2)<>mrYes then
   exit;
DM1.Tb_Cli.Append;
DM1.Tb_CliCRAZAO.Value   :=DM1.Tb_ForFRAZAO.Value;
DM1.Tb_CliCDENOM.Value   :=DM1.Tb_ForFDENOM.Value;
DM1.Tb_CliCLOG.Value     :=DM1.Tb_ForFNLOG.Value;
DM1.Tb_CliCENDERC.Value  :=DM1.Tb_ForFNLOG.Value;
DM1.Tb_CliCNUM.Value     :=DM1.Tb_ForFNUM.Value;
DM1.Tb_CliCBAIRRO.Value  :=DM1.Tb_ForFBAIRRO.Value;
DM1.Tb_CliCBAIRROC.Value :=DM1.Tb_ForFBAIRRO.Value;
DM1.Tb_CliCCIDADE.Value  :=DM1.Tb_ForFCIDADE.Value;
DM1.Tb_CliCUF.Value      :=DM1.Tb_ForFUF.Value;
DM1.Tb_CliCCIDADEC.Value :=DM1.Tb_ForFCIDADE.Value;
DM1.Tb_CliCUFC.Value     :=DM1.Tb_ForFUF.Value;
DM1.Tb_CliCCODBAI.Value  :=DM1.Tb_ForFCODBAI.Value;
DM1.Tb_CliCCODBAIC.Value :=DM1.Tb_ForFCODBAI.Value;
DM1.Tb_CliCCODLOC.Value  :=DM1.Tb_ForFCODLOC.Value;
DM1.Tb_CliCCODLOCC.Value :=DM1.Tb_ForFCODLOC.Value;
DM1.Tb_CliCCEP.Value     :=DM1.Tb_ForFCEP.Value;
DM1.Tb_CliCCEPC.Value    :=DM1.Tb_ForFCEP.Value;
DM1.Tb_CliCFONERES.Value :=DM1.Tb_ForFFONE.Value;
DM1.Tb_CliCFONECOM.Value :=DM1.Tb_ForFFONE.Value;
DM1.Tb_CliCCELULAR.Value :=DM1.Tb_ForFFONE.Value;
DM1.Tb_CliCFONE01.Value  :=DM1.Tb_ForFFONEC01.Value;
DM1.Tb_CliCFONE02.Value  :=DM1.Tb_ForFFONEC02.Value;
DM1.Tb_CliCFONE03.Value  :=DM1.Tb_ForFFONEC03.Value;
DM1.Tb_CliCFAX.Value     :=DM1.Tb_ForFFAX.Value;
DM1.Tb_CliCDTCAD.Value   :=date;
DM1.Tb_CliCCNPJ.Value    :=DM1.Tb_ForFCGC.AsFloat;
DM1.Tb_CliCIE.Value      :=DM1.Tb_ForFIE.Value;

if flcaduf(0,0,0,DM1.Tb_ForFUF.Value) then
   begin
   DM1.Tb_CliCALIQA.Value :=DM1.Tb_UFPICMSA.Value;
   DM1.Tb_CliCALIQB.Value :=DM1.Tb_UFPICMSB.Value;
   DM1.Tb_CliCALIQC.Value :=DM1.Tb_UFPICMSNC.Value;
   DM1.Tb_CliCALIQD.Value :=DM1.Tb_UFPICMSND.Value;
   DM1.Tb_CliCALIQE.Value :=DM1.Tb_UFPICMSNE.Value;
   DM1.Tb_CliCALIQF.Value :=DM1.Tb_UFPICMSNF.Value;
   DM1.Tb_CliCALIQG.Value :=DM1.Tb_UFPICMSNG.Value;
   DM1.Tb_CliCALIQH.Value :=DM1.Tb_UFPICMSNH.Value;
   DM1.Tb_CliCALIQI.Value :=DM1.Tb_UFPICMSNI.Value;
   DM1.Tb_CliCICMSTP.Value:=iif(DM1.Tb_UFPBICMS.Value='S',1,0);
   DM1.Tb_CliCUFC.Value   :=DM1.Tb_CliCUF.Value;
   end;

DM1.Tb_CliCEMAIL.Value      :=DM1.Tb_ForFEMAIL.Value;
DM1.Tb_CliCCODUSR.Value     :=codusr;
DM1.Tb_CliCOBS01.Value      :=DM1.Tb_ForFOBS1.Value;
DM1.Tb_CliCOBS02.Value      :=DM1.Tb_ForFOBS2.Value;
DM1.Tb_CliCNIVEL.Value      :=100;
DM1.Tb_CliCDTINC.Value      :=Now;
DM1.Tb_Cli.Post;

FAtualizaBanco(1,'CADCLI','CCODEMP',DM1.Tb_CliCCODEMP.AsString
  ,['CCODCLI'],[DM1.Tb_CliCCODCLI.AsString]
  ,DM1.Tb_Cli);

fmensagem('Cliente Gravado Codigo: '+DM1.Tb_CliCCODCLI.AsString,0,['0'],0);

end;

procedure TFrm_For.dbrg_codbloqExit(Sender: TObject);
begin
  inherited;
  if trunc(mCodBloq_Ant)<>dbrg_codbloq.ItemIndex then
     DM1.Tb_ForFDATHOR_BLOQ.AsDateTime:= Now;
end;

procedure TFrm_For.edt_cnpjExit(Sender: TObject);
begin
  inherited;
if fsonumero(edt_cnpj.Text)<>0 then
   begin
   if FCGC(fsonumero(edt_cnpj.Text)) then
      begin
      edt_cnpj.EditMask:='99\.999\.999\/9999\-99;0';
      DM1.Tb_ForFTPPESSOA.AsFloat:=0;
      end
   else if FCPF(FORMATFLOAT('00000000000',fSonumero(edt_cnpj.Text))) then
      begin
      edt_cnpj.EditMask:='999\.999\.999\-99;0';
      DM1.Tb_ForFTPPESSOA.AsFloat:=1;
      end
   else
      begin
      if length(fdeixanum(edt_cnpj.Text))>11 then
         begin
         edt_cnpj.EditMask:='99\.999\.999\/9999\-99;0';
         Messagedlg('CNPJ '+edt_cnpj.text+' é invalido ',mtwarning,[mbOk],0);
         end
      else
         begin
         edt_cnpj.EditMask:='999\.999\.999\-99;0';
         Messagedlg('CNPJ '+edt_cnpj.text+' é invalido ',mtwarning,[mbOk],0);
         end;
      DM1.Tb_ForFTPPESSOA.AsFloat:=0;
      end;
   end;
DM1.Tb_ForFCGC.AsString:=fdeixanum(edt_cnpj.Text);

if (cb_ver_cnpj.Checked=True) and (fsonumero(edt_cnpj.Text)>0) then
  begin
  dm1.Query1.Close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.Add(' select FCODFOR, FRAZAO, FCGC from cadfor ');
  dm1.Query1.SQL.Add(' where FCGC='+fdeixanum(edt_cnpj.Text));
  dm1.Query4.SQL.Add(' and '+fla_sqlmp('FCODEMP',Form_SelEmp.CLB_EMPRESAS));
  dm1.Query1.Open;
  if not dm1.Query1.IsEmpty then
    begin
    fmensagem(' Ja existe um fornecedor com este codigo '+#13+' Chave..: '
             +dm1.Query1.FieldByName('FCODFOR').AsString+' - '
             +dm1.Query1.FieldByName('FRAZAO').AsString,0,['0'],0);
    edt_cnpj.SetFocus;
    end;
  end;
end;

procedure TFrm_For.edt_cnpjEnter(Sender: TObject);
begin
  inherited;
if edt_cnpj.EditMask='999\.999\.999\-99;0' then
   edt_cnpj.EditMask:='';


end;

procedure TFrm_For.bb_masterClick(Sender: TObject);
begin
fDeletaPadroes(0,'_FOR','');
fGravaPadroes(0,'CB_CNPJ'        ,'checked'   ,'_FOR',iif(cb_cnpj.Checked,'true','false'));
fGravaPadroes(0,'CB_TELEFONE'    ,'checked'   ,'_FOR',iif(cb_telefone.Checked,'true','false'));
fGravaPadroes(0,'CB_ENDERECO'    ,'checked'   ,'_FOR',iif(cb_endereco.Checked,'true','false'));
fGravaPadroes(0,'CB_CIDADE'      ,'checked'   ,'_FOR',iif(cb_cidade.Checked,'true','false'));
fGravaPadroes(0,'CB_CEP'         ,'checked'   ,'_FOR',iif(cb_cep.Checked,'true','false'));
fGravaPadroes(0,'CB_VER_CNPJ'    ,'checked'   ,'_FOR',iif(cb_ver_cnpj.Checked,'true','false'));
fGravaPadroes(0,'CB_VALCCDEP'    ,'checked'   ,'_FOR',iif(CB_VALCCDEP.Checked,'true','false'));
end;

procedure TFrm_For.FormActivate(Sender: TObject);
begin
  inherited;
if codemp<100 then
   begin
   if (DM1.Tb_PargerPTEXTOBAIXO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end
else
   begin
   if (DM1.Tb_PargerPTEXTOALTO.AsString)<>'' then
      begin
      Caption           :=mcaporig+' '+DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
      lbl_emp.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
      end
   else
      begin
      Caption           :=mcaporig;
      lbl_emp.Caption   :='';
      end;
   end;
Caption:='Manutenção no Cadastro de Fornecedores';
end;

procedure TFrm_For.DBE_FoneExit(Sender: TObject);
begin
  inherited;
DM1.Tb_ForFFONE.Value:=MaskFone(DM1.Tb_ForFFONE.Value);
if Myhint<>nil then
   RemoveHint(Myhint)

end;

procedure TFrm_For.DBE_FaxExit(Sender: TObject);
begin
  inherited;
DM1.Tb_ForFFAX.Value:=MaskFone(DM1.Tb_ForFFAX.Value);
if Myhint<>nil then
   RemoveHint(Myhint)


end;

procedure TFrm_For.DBEdit16Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_ForFFONEC01.Value:=MaskFone(DM1.Tb_ForFFONEC01.Value);
if Myhint<>nil then
   RemoveHint(Myhint)


end;

procedure TFrm_For.DBEdit18Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_ForFFONEC02.Value:=MaskFone(DM1.Tb_ForFFONEC02.Value);
if Myhint<>nil then
   RemoveHint(Myhint)


end;

procedure TFrm_For.DBEdit20Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_ForFFONEC03.Value:=MaskFone(DM1.Tb_ForFFONEC03.Value);
if Myhint<>nil then
   RemoveHint(Myhint)

end;



function TFrm_For.RevealHint (Control: TControl): THintWindow;

var
  ShortHint: string;

  AShortHint: array[0..255] of Char;

  HintPos: TPoint;

  HintBox: TRect;

begin
  Result := THintWindow.Create(Control);

  ShortHint := GetShortHint(Control.Hint);

  HintPos := Control.ClientOrigin;

  Inc(HintPos.Y, Control.Height + 6);

  HintBox := Bounds(0, 0, Screen.Width, 0);

  DrawText(Result.Canvas.Handle, StrPCopy(AShortHint, ShortHint), -1, HintBox, DT_CALCRECT or DT_LEFT or DT_WORDBREAK or DT_NOPREFIX);

  OffsetRect(HintBox, HintPos.X, HintPos.Y);

  Inc(HintBox.Right, 6);

  Inc(HintBox.Bottom, 2);

  Result.ActivateHint(HintBox, ShortHint);

end;

//Leia mais em: Dicas - Ativar o Hint http://www.devmedia.com.br/dicas-ativar-o-hint/948#ixzz2GG1H2xhK


procedure TFrm_For.RemoveHint (var Hint: THintWindow);

begin
  Hint.ReleaseHandle;

  Hint.Free;

  Hint := nil;

end;

//ia mais em: Dicas - Ativar o Hint http://www.devmedia.com.br/dicas-ativar-o-hint/948#ixzz2GG1vedi3

procedure TFrm_For.DBE_FoneKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
DBE_Fone.Hint:=MaskFone(DBE_Fone.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(DBE_Fone);

end;

procedure TFrm_For.DBE_FaxKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
DBE_Fax.Hint:=MaskFone(DBE_Fax.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(DBE_Fax);

end;

procedure TFrm_For.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
DBEdit16.Hint:=MaskFone(DBEdit16.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(DBEdit16);

end;

procedure TFrm_For.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
DBEdit18.Hint:=MaskFone(DBEdit18.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(DBEdit18);

end;

procedure TFrm_For.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
DBEdit20.Hint:=MaskFone(DBEdit20.Text+key);
if Myhint<>nil then
   RemoveHint(Myhint);
myhint := RevealHint(DBEdit20);

end;

procedure TFrm_For.FormShow(Sender: TObject);
begin
  inherited;
CarregarGrid('Frm_For',dbgContatos);
CarregarGrid('Frm_For',DBGrid1);
end;

procedure TFrm_For.sbn_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

qr_cont_imagem: TQuery;
mChave: Integer;
mIdFor: String;
begin
  inherited;


if trim(DM1.Tb_ForIDFOR.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADFOR','ROWID',' FCODFOR='+DM1.Tb_ForFCODFOR.AsString,mIdFor) then
      begin
      MessageDlg('Favor Gravar o Fornecedor Primeiro!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdFor:=DM1.Tb_ForIDFOR.AsString;

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
   qr_cont_imagem.SQL.Add('Select max(FI_SEQ) as cod from CADFOR_IMAGEM '
                    +' where FI_ID_FOR=:FI_ID_FOR ');
   qr_cont_imagem.ParamByName('FI_ID_FOR').AsfLOAT     :=dm1.Tb_ForFCODFOR.AsFloat;
   qr_cont_imagem.open;
   mChave:=qr_cont_imagem.fieldbyName('cod').AsInteger+1;


   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Insert into CADFOR_IMAGEM ( '
                    +' FI_ROWID  '
                    +',FI_SEQ    '
                    +',FI_OBS    '
                    +',FI_IMAGEM '
                    +',FI_NOMEORI '
                    +',FI_ID_FOR '
                    +') values ('

                    +' :FI_ROWID  '
                    +',:FI_SEQ    '
                    +',:FI_OBS    '
                    +',:FI_IMAGEM '
                    +',:FI_NOMEORI '
                    +',:FI_ID_FOR '

                    +')');

   qr_cont_imagem.ParamByName('FI_ROWID').AsString      :=mIdFor;
   qr_cont_imagem.ParamByName('FI_SEQ').AsInteger      :=mChave;
   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      qr_cont_imagem.ParamByName('FI_OBS').AsString    :='IMAGEM: '+IntToStr(mChave)
   else
      qr_cont_imagem.ParamByName('FI_OBS').AsString    :=frm_Imagem_WebCam.edt_obs.Text;

   qr_cont_imagem.ParamByName('FI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   qr_cont_imagem.ParamByName('FI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);
   qr_cont_imagem.ParamByName('FI_ID_FOR').AsFloat      :=DM1.Tb_ForFCODFOR.AsFloat;

   try
      qr_cont_imagem.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(qr_cont_imagem,2835,'frm_contrato','CADFOR_IMAGEM');
      end;
   FreeAndNil(qr_cont_imagem);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
midfor_src:=-1;

Src_ForDataChange(DM1.Tb_For,DM1.Tb_ForFCODEMP);



end;

procedure TFrm_For.sbn_alterarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
query_ldr: TQuery;
mIdFor: String;
begin
  inherited;
if (Tb_For_imagem.IsEmpty) or (Tb_For_imagemFI_ID_FOR.IsNull) then
   begin
   MessageDlg('Nao ha registros a serem alterados!',mtWarning,[mbOk],0);
   exit;
   end;

if trim(DM1.Tb_ForIDFOR.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADFOR','ROWID',' FCODFOR='+DM1.Tb_ForFCODFOR.AsString,mIdFor) then
      begin
      MessageDlg('Favor Gravar o Fornecedor Primeiro!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdFor:=DM1.Tb_ForIDFOR.AsString;


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
   query_ldr.SQL.Add('Update CADFOR_IMAGEM set '
                    +' FI_OBS=:FI_OBS '
                    +',FI_IMAGEM=:FI_IMAGEM '
                    +',FI_NOMEORI=:FI_NOMEORI '
                    +' where '
                    +' FI_ID_FOR=:FI_ID_FOR '
                    +' and FI_SEQ=:FI_SEQ'
                    );

   query_ldr.ParamByName('FI_ID_FOR').AsFloat     :=dm1.Tb_ForFCODFOR.AsFloat;
   query_ldr.ParamByName('FI_SEQ').AsInteger      :=Tb_For_ImagemFI_SEQ.AsInteger;




   if (trim(frm_Imagem_WebCam.edt_obs.Text)<>'') then
      query_ldr.ParamByName('FI_OBS').AsString:=trim(frm_Imagem_WebCam.edt_obs.Text)
   else if (trim(Tb_For_imagemFI_OBS.AsString)='') then
      query_ldr.ParamByName('FI_OBS').AsString    :='IMAGEM: '+Tb_For_imagemFI_OBS.AsString
   else
      query_ldr.ParamByName('FI_OBS').AsString    :=Tb_For_imagemFI_OBS.AsString;




   query_ldr.ParamByName('FI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   query_ldr.ParamByName('FI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2926,'frm_contrato','CADFOR_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
midfor_src:=-1;
Src_ForDataChange(DM1.Tb_For,DM1.Tb_ForFCODEMP);



end;

procedure TFrm_For.sbnRenomearClick(Sender: TObject);
var
query_ldr: TQuery;
mNovoNome:String;
mIdFor: String;
begin
  inherited;
if (Tb_For_imagem.IsEmpty) or (Tb_For_imagemFI_ROWID.IsNull) then
   begin
   MessageDlg('Nao ha registros a serem alterados!',mtWarning,[mbOk],0);
   exit;
   end;

if trim(DM1.Tb_ForIDFOR.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADFOR','ROWID',' FCODFOR='+DM1.Tb_ForFCODFOR.AsString,mIdFor) then
      begin
      MessageDlg('Favor Gravar o Fornecedor Primeiro!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdFor:=DM1.Tb_ForIDFOR.AsString;


mNovoNome:=InputBox('Nome Anterior '+Tb_For_ImagemFI_OBS.AsString , 'Informe o Novo Nome','');
if (trim(mNovoNome)<>'') and (mNovoNome<>Tb_For_ImagemFI_OBS.AsString) then
   begin
   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';
   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADFOR_IMAGEM set '
                    +' FI_OBS=:FI_OBS '
                    +' where '
                    +' FI_ID_FOR=:FI_ID_FOR '
                    +' and FI_SEQ=:FI_SEQ'
                    );

   query_ldr.ParamByName('FI_ID_FOR').AsFloat     :=dm1.Tb_ForFCODFOR.AsFloat;
   query_ldr.ParamByName('FI_SEQ').AsInteger      :=Tb_For_ImagemFI_SEQ.AsInteger;

   query_ldr.ParamByName('FI_OBS').AsString       :=mNovoNome;
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2991,'frm_contrato','CADFOR_IMAGEM');
      end;
   FreeAndNil(query_ldr);

   end;
midfor_src:=-1;

Src_ForDataChange(DM1.Tb_For,DM1.Tb_ForFCODEMP);

end;

procedure TFrm_For.sbn_excluirClick(Sender: TObject);
var
query_ldr: TQuery;
//mIdFor: String;
begin
  inherited;
if (Tb_For_imagem.IsEmpty) or (Tb_For_imagemFI_ID_FOR.IsNull) then
   begin
   MessageDlg('Nao ha registros a serem alterados!',mtWarning,[mbOk],0);
   exit;
   end;

{
if trim(DM1.Tb_ForIDFOR.AsString)='' then
   begin
   if not fLerGenerico01_campos('CADFOR','ROWID',' FCODFOR='+DM1.Tb_ForFCODFOR.AsString,mIdFor) then
      begin
      MessageDlg('Favor Gravar o Fornecedor Primeiro!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   mIdFor:=DM1.Tb_ForIDFOR.AsString;

}

if Application.MessageBox(pchar( 'Quer Realmente excluir o registro '+tb_For_ImagemFI_OBS.asstring),'confirmacao',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
query_ldr:=TQuery.create(Nil);
query_ldr.databaseName:='SG_ASSOC';
query_ldr.Close;
query_ldr.SQL.Clear;
query_ldr.SQL.Add('Delete  from CADFOR_IMAGEM '
                 +' where FI_ID_FOR=:FI_ID_FOR '
                 +' and FI_SEQ=:SEQ ');
query_ldr.ParamByName('FI_ID_FOR').AsFloat   :=dm1.Tb_ForFCODFOR.Asfloat;
query_ldr.ParamByName('SEQ').AsInteger       :=tb_For_ImagemFI_SEQ.AsInteger;
try
   query_ldr.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_ldr,3041,'frm_contrato','CADFOR_IMAGEM');
   end;
FreeAndNil(query_ldr);
midfor_src:=-1;

Src_ForDataChange(DM1.Tb_For,DM1.Tb_ForFCODEMP);


end;

procedure TFrm_For.DBGrid3DblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

form_img_agde: tFrm_agde;

   procedure pFechar;
   begin
   if form_img_agde<>nil then
      freeandnil(form_img_agde);
   end;



begin
  inherited;



application.createForm(TFrm_Agde, form_img_agde);
form_img_agde.Label1.Caption:='Aguarde enquanto buscamos o documento no servidor!';
verteclado(0);
form_img_agde.Show;
verteclado(0);
verteclado_02(0);

if fLerCadDapImagem(DM1.Tb_ForFCODFOR.AsFloat, Tb_For_imagemFI_SEQ.AsInteger ) then

   begin

   imagestream:=TMemoryStream.Create;
   (Tb_imagem.fieldbyname('FI_IMAGEM')as TBlobField).SaveToStream(imagestream);
   imagestream.Position := 0;

   if (trim(Tb_For_imagemFI_NOMEORI.asstring)='')  or fEImagem(Tb_For_imagemFI_NOMEORI.asstring) then
      begin
      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( imageStream );
      Application.Createform(TFrm_Fig_TelaCheia, Frm_Fig_TelaCheia);
      Frm_Fig_TelaCheia.Image1.Picture.Bitmap.Assign(jpg);
      pfechar;
      Frm_Fig_TelaCheia.ShowModal;
      freeandnil(Frm_Fig_TelaCheia);
      freeandnil(jpg);
      end
   else
      begin
      try
         if trim(Tb_For_imagemFI_NOMEORI.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Tb_For_imagemFI_NOMEORI.asstring);
            fExecutarArquivo(mcamtmp+'\'+Tb_For_imagemFI_NOMEORI.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Tb_For_imagemFI_NOMEORI.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;

      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Tb_For_imagemFI_NOMEORI.asstring,mtError,[mbOk],0);
         end;
      end;
   freeandnil(imagestream);
   end;

pfechar;

end;

procedure TFrm_For.sbn_salvarcomoClick(Sender: TObject);
var

imagestream:  TMemoryStream;
jpg:TJPEGImage;
mNomeAs: String;
form_img_agde: tFrm_agde;

   procedure pFechar;
   begin
   if form_img_agde<>nil then
      freeandnil(form_img_agde);
   end;



begin
  inherited;



application.createForm(TFrm_Agde, form_img_agde);
form_img_agde.Label1.Caption:='Aguarde enquanto buscamos o documento no servidor!';
verteclado(0);
form_img_agde.Show;
verteclado(0);
verteclado_02(0);

if fLerCadDapImagem(DM1.Tb_ForFCODFOR.AsFloat, Tb_For_imagemFI_SEQ.AsInteger ) then
   begin
   imagestream:=TMemoryStream.Create;
   (Tb_imagem.fieldbyName('FI_IMAGEM') as TBlobField).SaveToStream(imagestream);
   imagestream.Position := 0;
   mNomeAs:=mcamtmp+'\'+Tb_For_imagemFI_NOMEORI.asstring;
   SaveDialog1.FileName:=mNomeAs;
   if SaveDialog1.Execute then
      begin
      imagestream.SaveToFile(SaveDialog1.FileName);
      pFechar;

      MessageDlg('Arquivo salvo como '+SaveDialog1.FileName,mtInformation,[mbOk],0);
      end;
   freeandnil(imagestream);
   end;

pFechar;

end;

procedure TFrm_For.PC1Change(Sender: TObject);
begin
  inherited;
//  ShowMessage('Pagina ativa ' +IntToStr(PC1.ActivePageIndex));
Src_ForDataChange(DM1.Tb_For,DM1.Tb_ForFCODEMP);
end;

procedure TFrm_For.PC1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  inherited;
//  ShowMessage('Pagina ativa changing ' +IntToStr(PC1.ActivePageIndex));

end;


function tFrm_For.fLerCadDapImagem(pIdFor: Real; pSeq: Integer): boolean;
begin
if tb_Imagem=nil then
   tb_Imagem:=TADOQuery.create(nil);
tb_imagem.close;
if DM1_ADO.ADOConnection1.connected=false then
   begin
   DM1_ADO.ADOConnection1.Close;
   DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
   DM1_ADO.ADOConnection1.Open;
   end;
tb_imagem.close;
tb_imagem.Connection:=DM1_ADO.ADOConnection1;
tb_imagem.Sql.clear;
tb_imagem.Sql.Add('Select FI_IMAGEM from CADFOR_IMAGEM '
                 +' where  FI_ID_FOR=:FI_ID_FOR '
                 +' and   FI_SEQ=:FI_SEQ ');
tb_imagem.Parameters.ParamByName('FI_ID_FOR').Value  :=pIdFor;
tb_imagem.Parameters.ParamByName('FI_SEQ').Value     :=pSeq;
try
   tb_imagem.open;
   if tb_Imagem.FieldByName('FI_IMAGEM').IsNull then
      result:=false
   else
      result:=true;
except on e : exception do
   begin
   ex_erroSql_ado(tb_Imagem,3334,'func Erro:'+e.Message ,'CADFOR_IMAGEM');
   result:=false;
   end;
   end;
end;



procedure TFrm_For.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=117) and (DM1.Tb_EmpCGC.AsFloat=02299715000112) then
   begin
   Application.CreateForm(TFrm_AssociarDocumentos, Frm_AssociarDocumentos);
   Frm_AssociarDocumentos.Showmodal;
   FreeAndNil(Frm_AssociarDocumentos);
   end;


end;

procedure TFrm_For.btn_alvara_municipalClick(Sender: TObject);
begin
  inherited;

If ColorDialog1.Execute then
   begin
   lbl_alvara_municipal.Color:=ColorDialog1.Color;
   fDeletaPadroes(-1,'_CLI','ALVARA_MUNICIPAL');
   fGravaPadroes(-1,'ALVARA_MUNICIPAL','text','_CLI',inttosTr(lbl_alvara_municipal.color));
   end;


end;

procedure TFrm_For.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

if ((DM1.Tb_ForFDTVSANIT.AsDateTime>pdatanula) and (DM1.Tb_ForFDTVSANIT.AsDateTime<=Now+30)) or
   ((DM1.Tb_ForFANVISA_DTVCTO.AsDateTime>pdatanula) and (DM1.Tb_ForFANVISA_DTVCTO.AsDateTime<=Now+30)) or
   ((DM1.Tb_ForFCERTTECNICO_DTVCTO.AsDateTime>pdatanula) and (DM1.Tb_ForFCERTTECNICO_DTVCTO.AsDateTime<=Now+30)) then
   begin
   DBGrid1.Canvas.Brush.Color:=lbl_alvara_municipal.Color;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;


end;

end.
