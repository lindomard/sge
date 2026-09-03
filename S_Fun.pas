
unit S_Fun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,db,dbtables,S_DM2,S_bai,S_Dep,S_Funcao,S_EvePref,
  ToolEdit, ToolWin, CurrEdit, RxMemDS, Menus, RXDBCtrl, RxDBComb;

type
  TFrm_Fun = class(TFrm_C)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbl_bairro: TLabel;
    lbl_cidade: TLabel;
    lbl_estado: TLabel;
    lbl_cep: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    GroupBox4: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    bb_Folha: TBitBtn;
    bb_Ferias: TBitBtn;
    bb_13unico: TBitBtn;
    bb_13pp: TBitBtn;
    bb_sp: TBitBtn;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    tlb_funcionario: TToolBar;
    Panel2: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Panel3: TPanel;
    Label43: TLabel;
    Label44: TLabel;
    edt_datavalidade: TLabel;
    Label23: TLabel;
    edt_nomecidadetitulo: TEdit;
    Label45: TLabel;
    Bevel2: TBevel;
    GroupBox7: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    pgc_dados: TPageControl;
    tbs_contrato: TTabSheet;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    lbl_salario: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    edt_coddepartamento: TComboEdit;
    edt_nomedepartamento: TEdit;
    edt_codcargo: TComboEdit;
    edt_nomecargo: TEdit;
    edt_cbo: TEdit;
    edt_datadmissao: TDateEdit;
    edt_salario: TCurrencyEdit;
    edt_status: TEdit;
    edt_gratificacoes: TCurrencyEdit;
    edt_datademissao: TDateEdit;
    tbs_dependentes: TTabSheet;
    tbs_registro: TTabSheet;
    tbs_sindicato: TTabSheet;
    Bevel3: TBevel;
    Label51: TLabel;
    Bevel4: TBevel;
    chk_impostosindicato: TCheckBox;
    Label52: TLabel;
    Label25: TLabel;
    edt_dependentes: TComboEdit;
    Bevel1: TBevel;
    Bevel5: TBevel;
    Src_Registro: TDataSource;
    Label57: TLabel;
    edt_nomedependente: TEdit;
    Label58: TLabel;
    edt_datanasc: TDateEdit;
    Label59: TLabel;
    edt_cartorio: TEdit;
    Label60: TLabel;
    edt_registrocartorio: TEdit;
    Label61: TLabel;
    edt_livro: TEdit;
    Label62: TLabel;
    edt_pagina: TEdit;
    Grid_Dependentes: TDBGrid;
    Ds_Dependentes: TDataSource;
    Src_Fun: TDataSource;
    Label63: TLabel;
    Label64: TLabel;
    edt_codsindicato: TComboEdit;
    edt_nomesindicato: TEdit;
    Label65: TLabel;
    edt_parentesco: TComboBox;
    Bevel6: TBevel;
    btn_gerar: TBitBtn;
    pop_depe: TPopupMenu;
    Excluir1: TMenuItem;
    pop_registro: TPopupMenu;
    Excluir2: TMenuItem;
    tbs_uniforme: TTabSheet;
    Bevel7: TBevel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    edt_altura: TCurrencyEdit;
    edt_peso: TCurrencyEdit;
    edt_calca: TCurrencyEdit;
    edt_camisa: TCurrencyEdit;
    edt_calcado: TCurrencyEdit;
    btn_sair: TBitBtn;
    btn_gravar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_incluir: TBitBtn;
    btn_anterior: TBitBtn;
    btn_proximo: TBitBtn;
    Label71: TLabel;
    codcli: TEdit;
    nomcli: TEdit;
    Label72: TLabel;
    codturno: TEdit;
    nometurno: TEdit;
    Label73: TLabel;
    cb_semana: TComboBox;
    Alterar1: TMenuItem;
    Gravar_depen: TMenuItem;
    Gravar1: TMenuItem;
    Alterar2: TMenuItem;
    dbe_codigo: TDBEdit;
    dbe_nome: TDBEdit;
    dbe_ender: TDBEdit;
    dbe_cep: TDBEdit;
    dbe_nacionalidade: TDBEdit;
    dbe_codbai: TDBEdit;
    dbe_codloc: TDBEdit;
    dbe_nombai: TDBEdit;
    dbe_nomloc: TDBEdit;
    dbe_uf: TDBEdit;
    dbe_naturalidade: TDBEdit;
    dbe_ufnat: TDBEdit;
    dbe_fone: TDBEdit;
    dbe_celular: TDBEdit;
    dbe_conjugue: TDBEdit;
    dbe_datamigracao: TDBDateEdit;
    dbe_dtnas: TDBDateEdit;
    dcb_estadocivil: TRxDBComboBox;
    dcb_sexo: TRxDBComboBox;
    dcb_escola: TRxDBComboBox;
    dbe_nomepai: TDBEdit;
    dbe_nomemae: TDBEdit;
    dbe_pfpj: TDBEdit;
    dbe_registro: TDBEdit;
    dbe_ctps: TDBEdit;
    dbe_orgao: TDBEdit;
    dbe_dtemctps: TDBDateEdit;
    dbe_dtrg: TDBDateEdit;
    dbe_reserv: TDBEdit;
    dbe_catreserv: TDBEdit;
    dbe_pis: TDBEdit;
    dbe_titulo: TDBEdit;
    dbe_titzona: TDBEdit;
    dcb_tipoemp: TRxDBComboBox;
    dbe_secao: TDBEdit;
    dbe_ufctps: TDBEdit;
    dbe_ufrg: TDBEdit;
    dbe_ufreserv: TDBEdit;
    dbe_titloc: TDBEdit;
    dbe_ufdetitulo: TDBEdit;
    dbe_titdtemis: TDBDateEdit;
    dbe_habil: TDBEdit;
    dbe_habcat: TDBEdit;
    dbe_valhab: TDBDateEdit;
    dbe_obs2: TDBEdit;
    dbe_obs1: TDBEdit;
    dbe_obs3: TDBEdit;
    dbe_obs4: TDBEdit;
    Ts_Maquinario: TTabSheet;
    Label46: TLabel;
    edt_numeroregistro: TEdit;
    GridRegistro: TDBGrid;
    edt_orgaoemissor: TEdit;
    Label47: TLabel;
    Label48: TLabel;
    Label53: TLabel;
    edt_datavencimento: TDateEdit;
    edt_dataconclusao: TDateEdit;
    edt_cnv: TEdit;
    Label54: TLabel;
    Label55: TLabel;
    edt_emissaocvn: TDateEdit;
    Label56: TLabel;
    edt_validadecvn: TDateEdit;
    Bevel8: TBevel;
    Src_FImo: TDataSource;
    DBGrid2: TDBGrid;
    popImobilizado: TPopupMenu;
    MenuItem2: TMenuItem;
    Label74: TLabel;
    edt_Codigo: TEdit;
    edt_nomimo: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBnAtuClick(Sender: TObject);
    procedure bb_FolhaClick(Sender: TObject);
    procedure bb_FeriasClick(Sender: TObject);
    procedure bb_13unicoClick(Sender: TObject);
    procedure bb_13ppClick(Sender: TObject);
    procedure bb_spClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure edt_codigoExit(Sender: TObject);
    procedure edt_codnaturalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edt_foneExit(Sender: TObject);
    procedure edt_celularExit(Sender: TObject);
    procedure edt_nomemaeExit(Sender: TObject);
    procedure edt_cepExit(Sender: TObject);
    procedure edt_coddepartamentoExit(Sender: TObject);
    procedure edt_coddepartamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codcargoExit(Sender: TObject);
    procedure edt_codcargoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_obs4Exit(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_pfpjExit(Sender: TObject);
    procedure edt_validadecvnExit(Sender: TObject);
    procedure edt_estadocivilKeyPress(Sender: TObject; var Key: Char);
    procedure edt_dependentesExit(Sender: TObject);
    procedure edt_datadmissaoExit(Sender: TObject);
    procedure edt_datademissaoExit(Sender: TObject);
    procedure edt_datanascExit(Sender: TObject);
    procedure edt_dataconclusaoExit(Sender: TObject);
    procedure edt_datavencimentoExit(Sender: TObject);
    procedure edt_emissaocvnExit(Sender: TObject);
    procedure edt_parentescoExit(Sender: TObject);
    procedure edt_codsindicatoExit(Sender: TObject);
    procedure edt_codsindicatoKeyPress(Sender: TObject; var Key: Char);
    procedure chk_impostosindicatoClick(Sender: TObject);
    procedure btn_gerarClick(Sender: TObject);
    procedure edt_statusExit(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure codcliExit(Sender: TObject);
    procedure codcliKeyPress(Sender: TObject; var Key: Char);
    procedure codturnoExit(Sender: TObject);
    procedure edt_nacionalidadeExit(Sender: TObject);
    procedure Gravar_depenClick(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure Grid_DependentesDblClick(Sender: TObject);
    procedure GridRegistroDblClick(Sender: TObject);
    procedure Src_FunDataChange(Sender: TObject; Field: TField);
    procedure dbe_codbaiExit(Sender: TObject);
    procedure dbe_codlocKeyPress(Sender: TObject; var Key: Char);
    procedure dbe_codbaiKeyPress(Sender: TObject; var Key: Char);
    procedure dbe_codlocExit(Sender: TObject);
    procedure dcb_estadocivilExit(Sender: TObject);
    procedure dbe_titlocExit(Sender: TObject);
    procedure dbe_titlocKeyPress(Sender: TObject; var Key: Char);
    procedure dbe_tituloExit(Sender: TObject);
    procedure edt_CodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_nomimoExit(Sender: TObject);
    procedure codturnoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure CarregaDados;
    procedure LocalizaCidade(pCodigo,pCidade,pCidTitulo: Real);
  public
    { Public declarations }
    fun_ori: string;    
  end;

var
  Frm_Fun : TFrm_Fun;
  mcodigo : Real;

implementation

uses lerarq, S_DM4, func_excecoes, func, S_DM6, ComObj, S_Imo;

{$R *.dfm}

procedure TFrm_Fun.FormCreate(Sender: TObject);
begin
PC1.ActivePage:=tsTab;
pgc_dados.ActivePageIndex:=0;

if DM1.Tb_PargerPCODLOC.Value = 1 then
  begin

  dbe_codloc.Visible     := True;
  dbe_nomloc.Enabled     := False;
  dbe_nomloc.ParentColor := True;
  dbe_nomloc.Ctl3D       := True;
  dbe_uf.ParentColor     := True;
  dbe_uf.Ctl3D           := True;
  dbe_uf.Enabled     := False;



  dbe_titloc.Visible     := True;
  edt_nomecidadetitulo.Enabled     := False;
  edt_nomecidadetitulo.ParentColor := True;
  edt_nomecidadetitulo.Ctl3D       := True;
  dbe_ufdetitulo.ParentColor     := True;
  dbe_ufdetitulo.Ctl3D           := True;
  dbe_ufdetitulo.Enabled     := False;


  end
else
  begin
  dbe_codloc.Visible     := false;
  dbe_nomloc.Ctl3D   := False;
  dbe_nomloc.Left        := dbe_nome.Left;
  dbe_nomloc.Width       := dbe_nome.Width;


  dbe_codloc.Visible     := false;
  edt_nomecidadetitulo.Ctl3D   := False;
  edt_nomecidadetitulo.Left        := dbe_habil.Left;
  edt_nomecidadetitulo.Width       := dbe_habil.Width;

  end;

if DM1.Tb_PargerPCODBAI.Value = 1 then
  begin
  dbe_codbai.Visible     := true;
  dbe_nombai.Enabled     := False;
  dbe_nombai.ParentColor := True;
  dbe_nombai.Ctl3D       := True;
  end
else
  begin
  dbe_codbai.Visible     := false;
  dbe_nombai.Left        := dbe_nome.Left;
  dbe_nombai.Width       := dbe_nome.Width;
  dbe_nombai.Ctl3D      := False;
  end;


if flcadactab(0,0,IntToStr(codcar),'CADFUN') then
  begin
  if DM4.Tb_AcTabAT_INC.Value = 1 then
    bbinc_true := False;
  if DM4.Tb_AcTabAT_ALT.Value = 1 then
    bbalt_true := False;
  if DM4.Tb_AcTabAT_EXC.Value = 1 then
    bbexc_true := False;
  end
else
  begin
  bbinc_true := True;
  bbalt_true := True;
  bbexc_true := True;
  end;

btn_incluir.Enabled := bbinc_true;
btn_alterar.Enabled := bbalt_true;
btn_excluir.Enabled := bbexc_true;
DM6.Tb_Depen.Active:=True;
DM6.Tb_Depen.Close;
DM6.Tb_Depen.SQL.Clear;
DM6.Tb_Depen.SQL.Add(' SELECT                 '+
                     '   TDCODEMP,            '+
                     '   TDCODDEP,            '+
                     '   TPDNOME              '+
                     ' FROM                   '+
                     '   CADTDEP              '+
                     ' WHERE                  '+
                     '   TDCODEMP =:pEmpr     '+
                     ' ORDER BY               '+
                     '   TDCODDEP             ');
DM6.Tb_Depen.ParamByName('pEmpr').AsFloat := codemp;
DM6.Tb_Depen.Open;

DM2.Tb_FImo.Close;
DM2.Tb_FImo.SQL.Clear;
DM2.Tb_FImo.SQL.Add(' select * from CADFIMO ');
DM2.Tb_FImo.SQL.Add(' where CFI_CODEMP is null ');
DM2.Tb_FImo.Open;

if not DM6.Tb_Depen.IsEmpty then
  begin
  edt_parentesco.Items.Clear;
  while not DM6.Tb_Depen.Eof do
    begin
    edt_parentesco.Items.Add(DM6.Tb_Depen.FieldByName('TPDNOME').AsString);
    DM6.Tb_Depen.Next;
    end;
  end;
end;

procedure TFrm_Fun.DBGrid1DblClick(Sender: TObject);
begin

if fun_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   pgc_dados.ActivePageIndex := 0;
   btn_alterar.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   fun_ori := '';
   end;
end;

procedure TFrm_Fun.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 9 then
  begin
  if not (DM2.Tb_Fun.State in [dsedit,dsinsert]) then
    begin
    PC1.ActivePageIndex := 0;
    btn_alterar.SetFocus;
    end
  else
    begin
    ModalResult := MrOk;
    fun_ori := '';
    end;
  abort;
  end;
end;

procedure TFrm_Fun.BBnAtuClick(Sender: TObject);
begin
if DM2.Tb_Fun.State in [dsedit,dsinsert] then
  begin
  case fmensagem('O registro atual não está gravado!'+#13
                +'Deseja gravar agora?',0,['1','2','3'],0) of
    mrYes : btn_gravar.Click;
    mrNo  : btn_cancelar.Click;
    end;
  end
else
  begin
  flcadfun(campo.ItemIndex,1,edit1.Text);
  btn_incluir.Enabled  := True;
  btn_alterar.Enabled  := True;
  btn_gravar.Enabled   := False;
  btn_excluir.Enabled  := True;
  btn_cancelar.Enabled := False;
  end;
end;

procedure TFrm_Fun.bb_FolhaClick(Sender: TObject);
begin
if DM2.Tb_FunCFCODFUN.IsNull then
  exit;
pf_tipo:=0;
pf_codcli:=DM2.Tb_FunCFCODFUN.AsInteger;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;
end;

procedure TFrm_Fun.bb_FeriasClick(Sender: TObject);
begin
if DM2.Tb_FunCFCODFUN.IsNull then
  exit;
pf_tipo:=4;
pf_codcli:=DM2.Tb_FunCFCODFUN.AsInteger;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;
end;

procedure TFrm_Fun.bb_13unicoClick(Sender: TObject);
begin
if DM2.Tb_FunCFCODFUN.IsNull then
  exit;
pf_tipo:=1;
pf_codcli:=DM2.Tb_FunCFCODFUN.AsInteger;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;
end;

procedure TFrm_Fun.bb_13ppClick(Sender: TObject);
begin
if DM2.Tb_FunCFCODFUN.IsNull then
  exit;
pf_tipo:=2;
pf_codcli:=DM2.Tb_FunCFCODFUN.AsInteger;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;
end;

procedure TFrm_Fun.bb_spClick(Sender: TObject);
begin
if DM2.Tb_FunCFCODFUN.IsNull then
  exit;
pf_tipo:=3;
pf_codcli:=DM2.Tb_FunCFCODFUN.AsInteger;
Application.CreateForm(TFrm_EvePref, Frm_EvePref);
Frm_EvePref.ShowModal;
Frm_EvePref.Free;
end;

procedure TFrm_Fun.FormActivate(Sender: TObject);
begin
if not (DM2.Tb_Fun.State in [dsinsert,dsedit]) then
  begin
  pc1.ActivePageIndex:=2;
  if DM1.Tb_PargerPUFOLHA.Value<>1 then
    GroupBox6.Visible:=False;
  BBnAtuClick(self);
  end;
end;

procedure TFrm_Fun.Edit1Change(Sender: TObject);
begin
if DM1.Tb_PargerPONCHANGFUN.Value=1 then
  begin
  if DM2.Tb_Fun.State in [dsInsert, dsEdit] then
    begin
    Case Fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],2) of
      mrYes: btn_gravar.Click;
    else
      btn_cancelar.Click;
      end;
    end;
   flcadfun(campo.ItemIndex,1,edit1.Text);
   btn_incluir.Enabled:=True;
   btn_alterar.Enabled:=True;
   btn_gravar.Enabled :=False;
   btn_excluir.Enabled:=True;
   btn_cancelar.Enabled:=True;
   BBnAtuClick(Self);
   end;
end;

procedure TFrm_Fun.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DM2.Tb_Fun.State in [dsInsert, dsEdit] then
  begin
  Case Fmensagem('O registro atual não está gravado!'+#13
                +'Deseja gravar agora?',0,['1','2','3'],2) of
       mrYes : btn_gravar.Click;
       mrNo  : btn_Cancelar.Click;
  else
    Action:=caNone;
    end;
  end;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Fun.btn_incluirClick(Sender: TObject);
begin
PC1.ActivePageIndex := 0;
pgc_dados.ActivePageIndex := 0;
{while true do
  begin
  mcodigo := flBuscarCodigos(0,'CADFUN');
  DM1.Query1.Close;
  DM1.Query1.Sql.Clear;
  DM1.Query1.Sql.Add('select count(*) from CADFUN where '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADFUN',[]),'','  CFCODEMP=0'+IntToStr(codemp)+' and ')
                    +' CFCODFUN=0'+FloatTostr(mcodigo));
  DM1.Query1.Open;
  if DM1.Query1.Fields[0].AsInteger<=0 then
    break;
  end;}

LimpaEdits(Self);
DM2.Tb_Fun.Insert;
moper := 0;
dbe_codigo.Enabled   := True;
tsCad.Enabled        := True;
TabSheet1.Enabled    := True;
if PC1.ActivePage = tsCad then
  begin
  dbe_codigo.Text := FloatToStr(mcodigo);
  dbe_nome.SetFocus;
  end
else if PC1.ActivePage = TabSheet1 then
  dbe_pfpj.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_anterior.Enabled := False;
btn_proximo.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
DM2.Tb_Fun.Insert;
end;

procedure TFrm_Fun.btn_alterarClick(Sender: TObject);
begin
PC1.ActivePage:=tsCad;
pgc_dados.ActivePageIndex := 0;
if Trim(dbe_codigo.Text) = '' then
  begin
  Fmensagem('Favor Localizar Funcionario para Alteração!',0,['0'],0);
  btn_cancelar.Click;
  btn_incluir.SetFocus;
  exit;
  end;

if DM2.Tb_FunCFCODFUN.IsNull then
  begin
  Fmensagem('Nao ha registro a ser alterado!',0,['0'],0);
  btn_cancelar.Click;
  exit;
  end;

moper                := 8;
dbe_codigo.Enabled   := False;
TabSheet1.Enabled    := True;

tsCad.Enabled        := True;
TabSheet1.Enabled    := True;
if PC1.ActivePage = tsCad then
  begin
  dbe_nome.SetFocus;
  end
else if PC1.ActivePage = TabSheet1 then
  dbe_pfpj.SetFocus;

mcodigo              := StrToInt(dbe_codigo.Text);

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_anterior.Enabled := False;
btn_proximo.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
DM2.Tb_Fun.Edit;
end;

procedure TFrm_Fun.btn_cancelarClick(Sender: TObject);
begin
DM2.Tb_Fun.Cancel;
LimpaEdits(Self);
CarregaDados;

btn_incluir.Enabled  := True;
btn_alterar.Enabled  := True;
btn_excluir.Enabled  := True;
btn_anterior.Enabled := True;
btn_proximo.Enabled  := True;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
end;

procedure TFrm_Fun.btn_gravarClick(Sender: TObject);
begin
if Trim(dbe_nome.Text) = '' then
  begin
  Fmensagem('Nome Inválido!',0,['0'],0);
  PC1.ActivePage := TabSheet1;
  dbe_nome.SetFocus;
  exit;
  end;

DM2.Tb_FunCFN_DEP.AsInteger    :=ValInt(edt_dependentes.Text);
DM2.Tb_FunCFCODCAR.AsFloat     :=ValFloat(edt_codcargo.Text);


DM2.Tb_FunCFCODDEP.AsFloat     :=ValFloat(edt_coddepartamento.Text);
DM2.Tb_FunCFDT_ADM.AsString    :=iif(edt_datadmissao.Text='  /  /    ','',edt_datadmissao.Text);
DM2.Tb_FunCFDT_DEM.AsString    :=iif(edt_datademissao.Text='  /  /    ','',edt_datademissao.Text);
DM2.Tb_FunCFDT_CAD.AsDateTime  :=Date;
DM2.Tb_FunCFDT_UALT.AsDateTime :=Date;
DM2.Tb_FunCFCODUSR.AsInteger   :=codusr;
DM2.Tb_FunCFSALARIO.AsFloat    :=edt_salario.Value;
DM2.Tb_FunCFGRATIF.AsFloat     :=edt_gratificacoes.Value;
DM2.Tb_FunCFSTATUS.AsFloat     :=ValFloat(edt_status.Text);
DM2.Tb_FunCFCBO.AsString       :=Trim(edt_cbo.Text);

DM2.Tb_FunCFDEPTDESC.AsString  :=edt_nomedepartamento.Text;
DM2.Tb_FunCFCRGODESC.AsString  :=edt_nomecargo.Text;
DM2.Tb_FunCFCODSIND.AsFloat    :=ValFloat(edt_codsindicato.Text);
DM2.Tb_FunCFNOMESIND.AsString  :=Trim(edt_nomesindicato.Text);
DM2.Tb_FunCFIMPOSTO.AsString   :=IIF(chk_impostosindicato.Checked = True, 'S','N');
DM2.Tb_FunCFALTURA.AsFloat     :=ValFloat(edt_altura.Text);
DM2.Tb_FunCFPESO.AsFloat       :=ValFloat(edt_peso.Text);
DM2.Tb_FunCFNUMCALCA.AsFloat   :=ValFloat(edt_calca.Text);
DM2.Tb_FunCFNUMCAMISA.AsFloat  :=ValFloat(edt_camisa.Text);
DM2.Tb_FunCFNUMCALCADO.AsFloat :=ValFloat(edt_calcado.Text);
DM2.Tb_FunCFPOSTO.AsFloat      :=ValFloat(codcli.Text);
DM2.Tb_FunCFTURNO.AsFloat      :=ValFloat(codturno.Text);
DM2.Tb_FunCFFOLGA.AsFloat      :=cb_semana.ItemIndex;
try
  DM2.Tb_Fun.Post;
  fdm1StartCommit;
except
  ex_erroSql(2,934,'frm_fun','CADFUN');
end;
btn_incluir.Enabled  := True;
btn_alterar.Enabled  := True;
btn_excluir.Enabled  := True;
btn_anterior.Enabled := True;
btn_proximo.Enabled  := True;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
end;

procedure TFrm_Fun.btn_sairClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Fun.edt_codigoExit(Sender: TObject);
begin
if ValFloat(edt_Codigo.Text)> 0 then
  begin
  flcadimo01(1,1,codemp,trim(edt_Codigo.Text));
  if DM2.Tb_Imo01.IsEmpty then
    begin
    fmensagem('Codigo de Imobilizado Inexistente!',0,['0'],0);
    edt_Codigo.SetFocus;
    end
  else
    edt_nomimo.Text:=DM2.Tb_Imo01IM1NOME.AsString;
  end
else
  edt_nomimo.Text:='';
end;

procedure TFrm_Fun.edt_codnaturalidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if DM2.Tb_Fun.State in [DsEdit, DsInsert] then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    fChamaLoc(0,'frm_Fum',Key);
    DM2.Tb_FunCFNATURAL.AsString := DM1.Tb_LocLNOME.Value;
    key:=#0;
    end;
  end;
end;

procedure TFrm_Fun.edt_foneExit(Sender: TObject);
begin
if Trim(dbe_fone.Text) <> '' then
  begin
  if Length(dbe_fone.Text) = 10 then
    begin
    dbe_fone.Text := MaskFone(dbe_fone.Text);
    end;
  end;
end;

procedure TFrm_Fun.edt_celularExit(Sender: TObject);
begin
if Trim(dbe_celular.Text) <> '' then
  begin
  if Length(dbe_celular.Text) = 10 then
    begin
    dbe_celular.Text := MaskFone(dbe_celular.Text);
    end;
  end;
end;

procedure TFrm_Fun.edt_nomemaeExit(Sender: TObject);
begin
PC1.ActivePage := TabSheet1;
end;

procedure TFrm_Fun.edt_cepExit(Sender: TObject);
begin
if Trim(dbe_cep.Text) <> '' then
  begin
  if Length(dbe_cep.Text) = 8 then
    begin
    dbe_cep.Text := MaskCep(dbe_cep.Text);
    end;
  end;
end;

procedure TFrm_Fun.edt_coddepartamentoExit(Sender: TObject);
begin
edt_coddepartamento.Text := fdeixanum2(edt_coddepartamento.Text);
if Trim(edt_coddepartamento.Text) <> '' then
  begin
  if not flcaddep_folha(1,0,edt_coddepartamento.Text) then
    begin
    if not (DM2.Tb_Fun.State in [dsedit,dsinsert] ) then
      begin
      verteclado(0);
      fMensagem('Código inválido ou não Cadastrado!',0,['0'],0);
      edt_coddepartamento.SetFocus;
      exit;
      end;
    end
  else
    begin
    edt_nomedepartamento.Text := DM2.Tb_Dep_FolhaDPNOME.AsString;
    end;
  end;
end;

procedure TFrm_Fun.edt_coddepartamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
if DM2.Tb_Fun.State in [DsEdit, DsInsert] then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    edt_coddepartamento.Text := fChamaDepFolha(0,'Frm_dep_folha',key);
    key := #0;
    end
  else if not (key in ['0'..'9']) and (key<>#8) then
    key:=#0;
  end;
end;

procedure TFrm_Fun.edt_codcargoExit(Sender: TObject);
begin
if (Trim(edt_codcargo.Text) <> '') and (ValFloat(edt_codcargo.Text) <> 0) then
  begin
  DM1.Query1.Close;
  DM1.Query1.Sql.Clear;
  DM1.Query1.SQL.Add('SELECT CODCAR, NOMCAR, NCBO FROM CADCAR WHERE CODCAR =:pCodg');
  DM1.Query1.ParamByName('pCodg').AsFloat := ValFloat(edt_codcargo.Text);
  DM1.Query1.Open;
  if not DM1.Query1.IsEmpty then
    begin
    edt_codcargo.Text  := FloatToStr(DM1.Query1.FieldByName('CODCAR').AsFloat);
    edt_nomecargo.Text := DM1.Query1.FieldByName('NOMCAR').AsString;
    edt_cbo.Text       := DM1.Query1.FieldByName('NCBO').AsString;
    end
  else
    begin
    Fmensagem('Cargo não Cadastrado.',0,['0'],0);
    edt_codcargo.SetFocus;
    end;
  end
else
  begin
  edt_nomecargo.Clear;
  end;
end;

procedure TFrm_Fun.edt_codcargoKeyPress(Sender: TObject; var Key: Char);
begin
if DM2.Tb_Fun.State in [DsEdit, DsInsert] then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    edt_codcargo.Text:=fChamafuncao(0,'frm_rdev',key);
    if fsonumero(edt_codcargo.text)=0 then
      begin
      edt_nomecargo.Text := DM1.Tb_FuncaoNOMCAR.Value;
      edt_cbo.Text       := DM1.Tb_FuncaoNCBO.Value;
      end;
    key:=#0;
    end;
  end;
end;

procedure TFrm_Fun.edt_obs4Exit(Sender: TObject);
begin
pgc_dados.ActivePage := tbs_contrato;
end;

procedure TFrm_Fun.btn_anteriorClick(Sender: TObject);
begin
DM2.Tb_Fun.Prior;
end;

procedure TFrm_Fun.btn_proximoClick(Sender: TObject);
begin
DM2.Tb_Fun.Next;
end;

procedure TFrm_Fun.CarregaDados;
begin
{---Carrega os Dados da Abra do Cadastro de Continuação---}
edt_coddepartamento.Text   := FloatToStr(DM2.Tb_FunCFCODDEP.AsFloat);
//--Nome do Departamento
edt_codcargo.Text          := FloatToStr(DM2.Tb_FunCFCODCAR.AsFloat);
//--Nome do Cargo
edt_cbo.Text               := DM2.Tb_FunCFCBO.AsString;
edt_datadmissao.Date       := DM2.Tb_FunCFDT_ADM.AsDateTime;
edt_datademissao.Date      := DM2.Tb_FunCFDT_DEM.AsDateTime;
edt_status.Text            := FloatToStr(DM2.Tb_FunCFSTATUS.AsFloat);
edt_salario.Value          := DM2.Tb_FunCFSALARIO.AsFloat;
edt_gratificacoes.Value    := DM2.Tb_FunCFGRATIF.AsFloat;
edt_dependentes.Text       := FloatToStr(DM2.Tb_FunCFN_DEP.AsFloat);
edt_nomedepartamento.Text  := DM2.Tb_FunCFDEPTDESC.AsString;
edt_nomecargo.Text         := DM2.Tb_FunCFCRGODESC.AsString;
edt_codsindicato.Text      := FloatToStr(DM2.Tb_FunCFCODSIND.AsFloat);
edt_nomesindicato.Text     := DM2.Tb_FunCFNOMESIND.AsString;
edt_altura.Value           := DM2.Tb_FunCFALTURA.AsFloat;
edt_peso.Value             := DM2.Tb_FunCFPESO.AsFloat;
edt_calca.Value            := DM2.Tb_FunCFNUMCALCA.AsFloat;
edt_camisa.Value           := DM2.Tb_FunCFNUMCAMISA.AsFloat;
edt_calcado.Value          := DM2.Tb_FunCFNUMCALCADO.AsFloat;
codcli.Text                := FloatToStr(DM2.Tb_FunCFPOSTO.AsFloat);
if (DM2.Tb_FunCFPOSTO.AsFloat > 0) then
  begin
  codcli.OnExit(Self);
  end
else
  begin
  codcli.Text := '';
  nomcli.Text := '';
  end;
codturno.Text              := FloatToStr(DM2.Tb_FunCFTURNO.AsFloat);
if (DM2.Tb_FunCFTURNO.AsFloat > 0) then
  begin
  codturno.OnExit(Self);
  end
else
  begin
  codturno.Text  := '';
  nometurno.Text := '';
  end;

{codimobilizado.Text        := FloatToStr(DM2.Tb_FunCFIMOB.AsFloat);
if (DM2.Tb_FunCFIMOB.AsFloat > 0) then
  begin
  codimobilizadoExit(Self);
  end
else
  begin
  codimobilizado.Text  := '';
  nomeimobilizado.Text := '';
  end;}



cb_semana.ItemIndex        := DM2.Tb_FunCFFOLGA.AsInteger;

if (not DM2.Tb_FunCFCODFUN.IsNull) and (not DM2.Tb_FunCFCODEMP.IsNull) then
  begin
  DM2.TB_DEPEN.Close;
  DM2.TB_DEPEN.SQL.Clear;
  DM2.TB_DEPEN.SQL.Add(' SELECT * FROM CADDPT WHERE DPTCODEMP ='+DM2.Tb_FunCFCODEMP.AsString);
  DM2.TB_DEPEN.SQL.Add(' AND DPTCODFUN ='+DM2.Tb_FunCFCODFUN.AsString);
  DM2.TB_DEPEN.Open;

  IF DM2.TB_DEPEN.ACTIVE=FALSE THEN
    DM2.TB_DEPEN.ACTIVE:=TRUE;

  DM2.Tb_CADDPF.Close;
  DM2.Tb_CADDPF.SQL.Clear;
  DM2.Tb_CADDPF.SQL.Add(' SELECT * FROM CADDPF WHERE DFCODEMP ='+DM2.Tb_FunCFCODEMP.AsString);
  DM2.Tb_CADDPF.SQL.Add(' AND DFCODFUN ='+DM2.Tb_FunCFCODFUN.AsString);
  DM2.Tb_CADDPF.Open;
 end;

if (not DM2.Tb_FunCFCODFUN.IsNull) and (not DM2.Tb_FunCFCODEMP.IsNull) then
  begin
  DM2.Tb_FImo.Close;
  DM2.Tb_FImo.SQL.Clear;
  DM2.Tb_FImo.SQL.Add(' select * from CADFIMO where CFI_CODEMP ='+DM2.Tb_FunCFCODEMP.AsString);
  DM2.Tb_FImo.SQL.Add(' and CFI_CODFUN ='+DM2.Tb_FunCFCODFUN.AsString);
  DM2.Tb_FImo.Open;

  if DM2.Tb_FImo.Active=False then
    DM2.Tb_FImo.Active:=True;
  end;

end;

procedure TFrm_Fun.LocalizaCidade(pCodigo,pCidade,pCidTitulo: Real);
begin
end;

procedure TFrm_Fun.FormShow(Sender: TObject);
begin
BBnAtuClick(Self);
end;

procedure TFrm_Fun.edt_pfpjExit(Sender: TObject);
begin
//  inherited;

end;

procedure TFrm_Fun.edt_validadecvnExit(Sender: TObject);
begin
edt_validadecvn.Text := FormatDateTime('dd/mm/yyyy',edt_validadecvn.Date);
Gravar1Click(self);
end;

procedure TFrm_Fun.edt_estadocivilKeyPress(Sender: TObject; var Key: Char);
begin
case DM2.Tb_FunCFEST_CIV.AsInteger of
    0 : dbe_conjugue.Enabled := False;
    1 : dbe_conjugue.Enabled := False;
    2 : dbe_conjugue.Enabled := False;
    3 : dbe_conjugue.Enabled := False;
else
  dbe_conjugue.Enabled := True;
  end;
end;

procedure TFrm_Fun.edt_dependentesExit(Sender: TObject);
begin
if (not btn_incluir.Enabled) and (not btn_alterar.Enabled) then
  begin
  if Trim(edt_dependentes.Text) <> '0' then
    begin
    if StrToInt(edt_dependentes.Text) > 0 then
      begin
      pgc_dados.ActivePage := tbs_dependentes;
      edt_nomedependente.SetFocus;
      end;
    end
  else
    begin
    btn_gravar.SetFocus;
    end;
  end;
end;


procedure TFrm_Fun.edt_datadmissaoExit(Sender: TObject);
begin
if edt_datadmissao.Text <> '  /  /    ' then
  edt_datadmissao.Text := FormatDateTime('dd/mm/yyyy',edt_datadmissao.Date);
end;

procedure TFrm_Fun.edt_datademissaoExit(Sender: TObject);
begin
if edt_datademissao.Text <> '  /  /    ' then
  edt_datademissao.Text := FormatDateTime('dd/mm/yyyy',edt_datademissao.Date);
end;

procedure TFrm_Fun.edt_datanascExit(Sender: TObject);
begin
if edt_datanasc.Text <> '  /  /    ' then
  edt_datanasc.Text := FormatDateTime('dd/mm/yyyy',edt_datanasc.Date);
end;

procedure TFrm_Fun.edt_dataconclusaoExit(Sender: TObject);
begin
if edt_dataconclusao.Text <> '  /  /    ' then
  edt_dataconclusao.Text := FormatDateTime('dd/mm/yyyy',edt_dataconclusao.Date);
end;

procedure TFrm_Fun.edt_datavencimentoExit(Sender: TObject);
begin
if edt_datavencimento.Text <> '  /  /    ' then
  edt_datavencimento.Text := FormatDateTime('dd/mm/yyyy',edt_datavencimento.Date);
end;

procedure TFrm_Fun.edt_emissaocvnExit(Sender: TObject);
begin
if edt_emissaocvn.Text <> '  /  /    ' then
  edt_emissaocvn.Text := FormatDateTime('dd/mm/yyyy',edt_emissaocvn.Date);
end;

procedure TFrm_Fun.edt_parentescoExit(Sender: TObject);
begin
DM6.Tb_Depen.Close;
DM6.Tb_Depen.SQL.Clear;
DM6.Tb_Depen.SQL.Add(' select * from CADTDEP where TPDNOME='+chr(39)+Trim(edt_parentesco.Text)+chr(39));
DM6.Tb_Depen.Open;
if DM6.Tb_Depen.IsEmpty then
  begin
  DM6.Tb_Depen.Insert;
  DM6.Tb_DepenTPDNOME.AsString:=Trim(edt_parentesco.Text);
  DM6.Tb_Depen.Post;
  end;
Gravar_depenClick(self);
end;

procedure TFrm_Fun.edt_codsindicatoExit(Sender: TObject);
begin
if btn_incluir.Focused then
  exit;
if not flcadsind2(1,0,edt_codsindicato.Text) then
  begin
  Fmensagem('Sindicato não Cadastrado.',0,['0'],0);
  edt_codsindicato.SetFocus;
  end
else
  begin
  edt_codsindicato.Text     := FloatToStr(DM6.Tb_SindSDCODSIND.Value);
  edt_nomesindicato.Text    := DM6.Tb_SindSDNOME.Value;
  end;
end;

procedure TFrm_Fun.edt_codsindicatoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  edt_codsindicato.Text   := FloatToStr(ValFloat(fChamaSind(0,'frm_fun',Key)));
  edt_nomesindicato.Text  := DM6.Tb_SindSDNome.Value;
  key:=#0;
  end;
end;

procedure TFrm_Fun.chk_impostosindicatoClick(Sender: TObject);
begin
  inherited;
  if chk_impostosindicato.Checked then
     edt_codsindicato.SetFocus;
end;

procedure TFrm_Fun.btn_gerarClick(Sender: TObject);
var
  xcoluna, xlinha : Integer;
  xexcel          : variant;
  xvalor          : String;
begin
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.Add('  SELECT                                 '+
                   '   CFCODFUN    AS CODIGO,                '+
                   '   CFNOMFUN    AS NOME,                  '+
                   '   CFENDERECO  AS ENDERECO,              '+
                   '   CFCODBAI    AS CODIGO_BAIRRO,         '+
                   '   CFBAIRRO    AS NOME_BAIRRO,           '+
                   '   CFCODLOC    AS CODIGO_CIDADE,         '+
                   '   CFNOMLOC    AS NOME_CIDADE,           '+
                   '   CFUF        AS UF,                    '+
                   '   CFCEP       AS CEP,                   '+
                   '   CFDTNAS     AS DATA_NASC,             '+
                   '   CFNATURAL   AS NATURALIDADE,          '+
                   '   CFNAT_UF    AS UF_NATURAL,            '+
                   '   CFNACIONAL  AS NACIONALIDADE,         '+
                   '   CFDTMIG     AS DATA_MIGRACAO,         '+
                   '   DECODE(CFNIVEL_ESC,0,''ANALFABETO'',DECODE(CFNIVEL_ESC,1,''1º GRAU INCOMPLETO'', '+
                   '   DECODE(CFNIVEL_ESC,2,''1º GRAU COMPLETO'',DECODE(CFNIVEL_ESC,3,''2º GRAU INCOMPELTO'', '+
                   '   DECODE(CFNIVEL_ESC,4,''2º GRAU INCOMPLETO'',DECODE(CFNIVEL_ESC,5,''SUPERIOR INCOMPLETO'', '+
                   '   DECODE(CFNIVEL_ESC,6,''SUPERIOR COMPLETO'',DECODE(CFNIVEL_ESC,7,''POS GRADUADO'',''BACHARELADO'')))))))) AS NIVEL_ESCOLAR, '+
                   '   CFCNPF      AS CPF,                   '+
                   '   CFRG        AS RG,                    '+
                   '   CFDTRG      AS DATA_RG,               '+
                   '   CFORGAORG   AS ORGAO,                 '+
                   '   CFUFRG      AS UF_RG,                 '+
                   '   CFCTPS      AS CTPS,                  '+
                   '   CFUFCTPS    AS UF_CTPS,               '+
                   '   CFDTEMCTPS  AS DATA_EMISSAO_CTPS,     '+
                   '   CFRESERV    AS NUMERO_RESERVISTA,     '+
                   '   CFCATGRESV  AS CATEGORIA_RESERVISTA,  '+
                   '   CFUFRESV    AS UF_RESERVISTA,         '+
                   '   CFTIT_ELE   AS TITULO,                '+
                   '   CFTITZONA   AS ZONA,                  '+
                   '   CFTITSECAO  AS SECAO,                 '+
                   '   CFTITUF     AS UF,                    '+
                   '   CFTITDTEM   AS DATA_EMISSAO,          '+
                   '   CFHABIL     AS NUMERO_HABILITACAO,    '+
                   '   CFCATGHB    AS CATEGORIA_HABILITACAO, '+
                   '   CFDTVLHB    AS DATA_VALIDADE,         '+
                   '   CFPIS       AS NUMERO_PIS,            '+
                   '   DECODE(CFEST_CIV,0,''SOLTEIRO'',DECODE(CFEST_CIV,1,''DESQUITADO'',DECODE(CFEST_CIV,2,''DIVORCIADO'', '+
                   '   DECODE(CFEST_CIV,3,''VIUVO'',DECODE(CFEST_CIV,4,''CASADO'',''AMAZIADO''))))) AS ESTADO_CIVIL,        '+
                   '   DECODE(CFSEXO,0,''MASCULINO'',''FEMININO'') AS SEXO, '+
                   '   CFCONJUGE   AS NOME_COMPANHEIRA,                     '+
                   '   CFPAI       AS NOME_PAI,                             '+
                   '   CFMAE       AS NOME_MAE,                             '+
                   '   CFN_DEP     AS QTD_DEP,                              '+
                   '   CFCODCAR    AS CODIGO_CARGO,                         '+
                   '   CFCRGODESC  AS NOME_CARGO,                           '+
                   '   CFFONE      AS TELEFONE,                             '+
                   '   CFCELULAR   AS CELULAR,                              '+
                   '   CFCODDEP    AS CODIGO_DEPARTAMENTO,                  '+
                   '   CFDEPTDESC  AS NOME_DEPARTAMENTO,                    '+
                   '   CFDT_ADM    AS DATA_ADMISSAO,                        '+
                   '   CFDT_DEM    AS DATA_DEMISSAO,                        '+
                   '   CFSALARIO   AS SALARIO,                              '+
                   '   CFGRATIF    AS GRATIFICACAO,                         '+
                   '   CFSTATUS    AS STATUS,                               '+
                   '   CFCBO       AS CODIGO_CBO,                           '+
                   '   CFCODSIND   AS CODIGO_SINDICATO,                     '+
                   '   CFNOMESIND  AS NOME_SINDICATO,                       '+
                   '   CFIMPOSTO   AS IMPOSTO_SINDICATO                     '+
                   ' FROM                                                   '+
                   '   CADFUN                                               '+
                   ' WHERE                                                  '+
                   '   CFCODEMP =:pEmp                                      '+
                   ' ORDER BY                                               '+
                   '   CFCODFUN                                             ');
DM1.Query1.ParamByName('pEmp').AsFloat := codemp;
DM1.Query1.Open;
if not DM1.Query1.IsEmpty then
  begin
  try
    xexcel := CreateOleObject('Excel.Application');
    xexcel.Workbooks.Add(1);
  except
    Fmensagem('Versão do Ms-Excel Incompatível!',0,['0'],0);
    end;
   {---Busca o Primeiro Registro---}
  DM1.Query1.First;
  try
    for xlinha := 0 to DM1.Query1.RecordCount - 1 do
      begin
      for xcoluna := 1 to DM1.Query1.FieldCount do
        begin
        xvalor  := DM1.Query1.Fields[xcoluna -1].AsString;
        xexcel.cells[xlinha+2,xcoluna] := xvalor;
        end;
      DM1.Query1.Next;
      end;
    for xcoluna := 1 to DM1.Query1.FieldCount do
      begin
      xvalor  := DM1.Query1.Fields[xcoluna-1].DisplayLabel;
      xexcel.cells[1,xcoluna]  := xvalor;
      end;
    xexcel.columns.AutoFit;
    xexcel.visible :=true;
  except
    Fmensagem('Aconteceu um erro desconhecido durante'+#13+
              ' a conversão da tabela para o  Ms-Excel!',0,['0'],0);
    end;
  end;
end;

procedure TFrm_Fun.edt_statusExit(Sender: TObject);
begin
if (Trim(edt_status.Text) = '1') or (Trim(edt_status.Text) = '2') then
  begin
  edt_datademissao.Enabled := False;
  edt_salario.SetFocus;
  end
else
  begin
  edt_datademissao.Enabled := True;
  edt_datademissao.SetFocus;
  end;
end;

procedure TFrm_Fun.Excluir1Click(Sender: TObject);
begin
if not btn_alterar.Enabled then
  begin
  if fMensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2) = mrYes then
    DM2.Tb_FImo.Delete;
  end;
end;

procedure TFrm_Fun.Excluir2Click(Sender: TObject);
begin
if DM2.Tb_Fun.State in [dsedit] then
  begin
  if fMensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2) = mrYes then
    DM2.Tb_CADDPF.Delete;
  end;
end;

procedure TFrm_Fun.PC1Change(Sender: TObject);
begin
if PC1.ActivePage = tsTab then
  BBnAtuClick(Self);
end;

procedure TFrm_Fun.btn_excluirClick(Sender: TObject);
begin
if DM2.Tb_FunCFCODFUN.IsNull then
  begin
  Fmensagem('Nao ha registro a ser excluido!',0,['0'],0);
  exit;
  end;
if fMensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' DELETE FROM CADDPT WHERE DPTCODEMP='+DM2.Tb_FunCFCODEMP.AsString);
  DM1.Query1.SQL.Add(' AND DPTCODFUN='+DM2.Tb_FunCFCODFUN.AsString);
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.SQL.Add(' DELETE FROM CADDPF WHERE DFCODEMP ='+DM2.Tb_FunCFCODEMP.AsString);
  DM1.Query2.SQL.Add(' AND DFCODFUN ='+DM2.Tb_FunCFCODFUN.AsString);
  try
    DM1.Query1.ExecSQL;
    DM1.Query2.ExecSQL;
    DM2.Tb_Fun.Delete;
  except
    fmensagem('Erro ao Excluir o Funcionario!',0,['0'],0);
    end;
  BBnAtuClick(Self);
  end;
end;

procedure TFrm_Fun.codcliExit(Sender: TObject);
begin
codcli.Text := fdeixanum2(codcli.Text);
if Trim(codcli.Text) <> '' then
  begin
  if not flcadcli(1,0,codcli.Text) then
    begin
    if not ((btn_incluir.Enabled) or (btn_alterar.Enabled)) then
      begin
      verteclado(0);
      fMensagem('Código inválido ou não Cadastrado!',0,['0'],0);
      codcli.SetFocus;
      exit;
      end;
    end
  else
    begin
    nomcli.Text := DM1.Tb_CliCRAZAO.Value;
    pldr_nome   :=DM1.Tb_CliCRAZAO.Value;
    end;
  end;
end;

procedure TFrm_Fun.codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  codcli.Text := fChamaCli(0,'Frm_fun',key);
  key:=#0;
  end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;
end;

procedure TFrm_Fun.codturnoExit(Sender: TObject);
begin
codturno.Text := fdeixanum2(codturno.Text);
if Trim(codturno.Text) <> '' then
  begin
  if not flcadturno(1,0,codturno.Text) then
    begin
    if not ((btn_incluir.Enabled) or (btn_alterar.Enabled)) then
      begin
      verteclado(0);
      fMensagem('Código inválido ou não Cadastrado!',0,['0'],0);
      codturno.SetFocus;
      exit;
      end;
    end
  else
    begin
    nometurno.Text := DM6.Tb_TurnoTR_DESCRICAO.AsString;
    end;
  end;
end;

procedure TFrm_Fun.edt_nacionalidadeExit(Sender: TObject);
begin
if Trim(dbe_nacionalidade.Text) <> '' then
  begin
  if (Trim(dbe_nacionalidade.Text) = 'BRASILEIRO') or (Trim(dbe_nacionalidade.Text) = 'BRASILEIRA') then
    begin
    dbe_datamigracao.Enabled := False;
    dbe_naturalidade.SetFocus;
    end
  else if Trim(dbe_nacionalidade.Text) <> '' then
    begin
    dbe_datamigracao.Enabled := True;
    dbe_datamigracao.SetFocus;
    end;
  end;
end;

procedure TFrm_Fun.Gravar_depenClick(Sender: TObject);
begin
DM2.TB_DEPEN.Close;
DM2.TB_DEPEN.SQL.Clear;
DM2.TB_DEPEN.SQL.Add('select * from CADDPT where DPTCODEMP='+IntToStr(CODEMP));
DM2.TB_DEPEN.SQL.Add(' and DPTCODFUN='+FloatToStr(mcodigo));
DM2.TB_DEPEN.Open;
DM2.TB_DEPEN.Close;

if not DM2.TB_DEPEN.Active then
  DM2.TB_DEPEN.Active:=True;
if DM2.Tb_Fun.State in [dsedit,dsinsert] then
  begin
  if Trim(edt_nomedependente.Text) <> '' then
    begin
    if not (DM2.TB_DEPEN.State in [dsedit]) then
      begin
      DM2.TB_DEPEN.Insert;
      end
    else
      begin
      DM2.TB_DEPENDPTDTUALT.AsDateTime  := Date;
      DM2.TB_DEPENDPTCODUSR.AsFloat     := codusr;
      end;
    DM2.TB_DEPENDPTCODEMP.AsFloat       := codemp;
    DM2.TB_DEPENDPTCODFUN.AsFloat       := mcodigo;
    DM2.TB_DEPENDPTNOME.AsString        := edt_nomedependente.Text;
    DM2.TB_DEPENDPTDTNASC.AsDateTime    := edt_datanasc.Date;
    DM2.TB_DEPENDPTCARTO.AsString       := edt_cartorio.Text;
    DM2.TB_DEPENDPTREG.AsString         := edt_registrocartorio.Text;
    DM2.TB_DEPENDPTLIVRO.AsString       := edt_livro.Text;
    DM2.TB_DEPENDPTPGN.AsString         := edt_pagina.Text;
    DM2.TB_DEPENDPTPARENTESCO.AsString  := edt_parentesco.Text;
    try
      DM2.TB_DEPEN.Post;
      fdm1StartCommit;
    except
      ex_erroSql(1,934,'frm_fun','CADDPF');
      end;
    edt_nomedependente.Clear;
    edt_datanasc.Clear;
    edt_cartorio.Clear;
    edt_registrocartorio.Clear;
    edt_livro.Clear;
    edt_pagina.Clear;
    edt_parentesco.ItemIndex := -1;
    edt_nomedependente.SetFocus;
    end;
  end;
end;

procedure TFrm_Fun.Alterar1Click(Sender: TObject);
begin
DM2.TB_DEPEN.Edit;
edt_nomedependente.Text   := DM2.TB_DEPENDPTNOME.Value;
edt_datanasc.Date         := DM2.TB_DEPENDPTDTNASC.Value;
edt_cartorio.Text         := DM2.TB_DEPENDPTCARTO.Value;
edt_registrocartorio.Text := DM2.TB_DEPENDPTREG.Value;
edt_livro.Text            := DM2.TB_DEPENDPTLIVRO.Value;
edt_pagina.Text           := DM2.TB_DEPENDPTPGN.Value;
edt_parentesco.Text       := DM2.TB_DEPENDPTPARENTESCO.Value;
end;

procedure TFrm_Fun.Gravar1Click(Sender: TObject);
begin
if not DM2.Tb_CADDPF.Active then
  DM2.Tb_CADDPF.Active:=True;
if DM2.Tb_Fun.State in [dsedit, dsinsert] then
  begin
  if not (DM2.Tb_CADDPF.State in [dsedit]) then
    begin
    DM2.Tb_CADDPF.Insert;
    end
  else
    begin
    DM2.Tb_CADDPFDFDTUALT.AsDateTime    :=Date;
    DM2.Tb_CADDPFDFCODUSR.AsFloat       :=codusr;
    end;
  DM2.Tb_CADDPFDFCODEMP.AsFloat       :=codemp;
  DM2.Tb_CADDPFDFCODFUN.AsFloat       :=mcodigo;
  DM2.Tb_CADDPFDFNREG.AsString        :=Trim(edt_numeroregistro.Text);
  DM2.Tb_CADDPFDFORGEM.AsString       :=Trim(edt_orgaoemissor.Text);
  DM2.Tb_CADDPFDFDT_CONC.AsString     :=Iif(edt_dataconclusao.Text='  /  /    ','',edt_dataconclusao.Text);
  DM2.Tb_CADDPFDFDT_VENC.AsString     :=Iif(edt_datavencimento.Text='  /  /    ','',edt_datavencimento.Text);
  DM2.Tb_CADDPFDFCNV.AsString         :=Trim(edt_cnv.Text);
  DM2.Tb_CADDPFDFDT_EMICVN.AsString   :=Iif(edt_emissaocvn.Text='  /  /    ','',edt_emissaocvn.Text);
  DM2.Tb_CADDPFDFDT_VENCVN.AsString   :=Iif(edt_validadecvn.Text='  /  /    ','',edt_validadecvn.Text);
  DM2.Tb_CADDPFDFDTCAD.AsDateTime     :=Date;
  try
    DM2.Tb_CADDPF.Post;
    fdm1StartCommit;
  except
    ex_erroSql(1,934,'frm_fun','CADDPF');
    end;
  end;
end;

procedure TFrm_Fun.Alterar2Click(Sender: TObject);
begin
DM2.Tb_CADDPF.Edit;
edt_numeroregistro.Text      := DM2.Tb_CADDPFDFNREG.Value;
edt_orgaoemissor.Text        := DM2.Tb_CADDPFDFORGEM.Value;
edt_dataconclusao.Date       := DM2.Tb_CADDPFDFDT_CONC.Value;
edt_datavencimento.Date      := DM2.Tb_CADDPFDFDT_VENC.Value;
edt_cnv.Text                 := DM2.Tb_CADDPFDFCNV.Value;
edt_emissaocvn.Date          := DM2.Tb_CADDPFDFDT_EMICVN.Value;
edt_validadecvn.Date         := DM2.Tb_CADDPFDFDT_VENCVN.Value;
end;

procedure TFrm_Fun.Grid_DependentesDblClick(Sender: TObject);
begin
Alterar1Click(self);
end;

procedure TFrm_Fun.GridRegistroDblClick(Sender: TObject);
begin
Alterar2Click(self);
end;

procedure TFrm_Fun.Src_FunDataChange(Sender: TObject; Field: TField);
begin
if not DM2.Tb_FunCFEST_CIV.IsNull then
  begin
  case DM2.Tb_FunCFEST_CIV.AsInteger of
      0,1,2,3 : dbe_conjugue.Enabled := False
    else
      dbe_conjugue.Enabled := True;
    end;
  end;

if not (DM2.Tb_Fun.State in [dsinsert,dsedit]) then
  begin
  CarregaDados;
  end;
end;

procedure TFrm_Fun.dbe_codbaiExit(Sender: TObject);
begin
if (btn_cancelar.Focused) then
  exit;
if not flcadbai(1,0,DM2.Tb_FunCFCODBAI.AsString) then
  begin
  verteclado(1);
  fmensagem('Bairro não Cadastrada.',0,['0'],0);
  dbe_codbai.SetFocus;
  end
else
  begin
  DM2.Tb_FunCFCODBAI.Value := DM1.Tb_BaiBCODBAI.Value;
  DM2.Tb_FunCFBAIRRO.Value := DM1.Tb_BaiBNOME.Value;
  end;
end;

procedure TFrm_Fun.dbe_codlocKeyPress(Sender: TObject; var Key: Char);
begin
if DM2.Tb_Fun.State in [DsEdit, DsInsert] then begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    DM2.Tb_FunCFCODLOC.AsFloat  :=ValFloat(fChamaLoc(0,'frm_fun',Key));
    DM2.Tb_FunCFNOMLOC.AsString := DM1.Tb_LocLNOME.Value;
    DM2.Tb_FunCFUF.AsString     := DM1.Tb_LocLUF.Value;
    key:=#0;
    end;
  end;

end;

procedure TFrm_Fun.dbe_codbaiKeyPress(Sender: TObject; var Key: Char);
begin
if DM2.Tb_Fun.State in [DsEdit, DsInsert] then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    DM2.Tb_FunCFCODBAI.Value   := ValFloat(fChamaBai(0,'frm_Fun',Key));
    DM2.Tb_FunCFBAIRRO.AsString:= DM1.Tb_BaiBNOME.Value;
    if trim(DM2.Tb_FunCFBAIRRO.AsString)<>'' then
       key:=#0;
    end;
  end;
end;

procedure TFrm_Fun.dbe_codlocExit(Sender: TObject);
begin
  inherited;
if (btn_cancelar.Focused) then
  exit;



  if not flcadloc(1,0,DM2.Tb_FunCFCODLOC.AsString) then
  begin
  verteclado(1);
  fmensagem('Cidade não Cadastrada.',0,['0'],0);
  dbe_codloc.SetFocus;
  end
else
  begin
  DM2.Tb_FunCFCODLOC.AsFloat  := DM1.Tb_LocLCODLOC.asFloat;
  DM2.Tb_FunCFNOMLOC.AsString := DM1.Tb_LocLNOME.AsString;
  end;

end;

procedure TFrm_Fun.dcb_estadocivilExit(Sender: TObject);
begin
case DM2.Tb_FunCFEST_CIV.AsInteger of
    0,1,2,3 : dbe_conjugue.Enabled := False
  else
    dbe_conjugue.Enabled := True;
    dbe_conjugue.SetFocus;
  end;
end;

procedure TFrm_Fun.dbe_titlocExit(Sender: TObject);
begin
//  inherited;
if btn_incluir.Focused then
  exit;
if not flcadloc(1,0,DM2.Tb_FunCFTITLOC.AsString) then
  begin
  Fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
  dbe_titloc.SetFocus;
  end
else
  begin
  DM2.Tb_FunCFTITLOC.AsFloat:= DM1.Tb_LocLCODLOC.AsFloat;
//  edt_nomecidadetitulo.Text := DM1.Tb_LocLNOME.Value;
  DM2.Tb_FunCFTITUF.AsString:= DM1.Tb_LocLUF.AsString;
  end;
end;

procedure TFrm_Fun.dbe_titlocKeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;
if DM2.Tb_Fun.State in [DsEdit, DsInsert] then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    DM2.Tb_FunCFTITLOC.AsFloat:= ValFloat(fChamaLoc(0,'frm_fun',Key));
//    DM2.TB_FUNCFTI
//    edt_nomecidadetitulo.Text := DM1.Tb_LocLNOME.Value;7
    DM2.Tb_FunCFTITUF.AsString:= DM1.Tb_LocLUF.Value;
    key:=#0;
    end;
  end;
end;

procedure TFrm_Fun.dbe_tituloExit(Sender: TObject);
begin
if Trim(DM2.Tb_FunCFTIT_ELE.AsString) <> '' then
  begin
  if not ValidaTitulo(DM2.Tb_FunCFTIT_ELE.AsString) then
    begin
    fmensagem('Número do título inválido.',0,['0'],0);
    dbe_titulo.Setfocus;
    Exit;
    end;
  end;

end;

procedure TFrm_Fun.edt_CodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Imo, Frm_Imo);
   Frm_Imo.Edit1.Text:=key;
   Frm_Imo.Edit1.SelStart:=1;
   Frm_Imo.Edit1.SelLength:=1;
   Frm_Imo.PC1.ActivePageIndex:=1;
   imo_ori:='Frm_ManImo';
   Frm_Imo.ShowModal;
   edt_Codigo.Text:=DM2.Tb_Imo01IM1CODIMO.AsString;
   Frm_Imo.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Fun.edt_nomimoExit(Sender: TObject);
begin
  inherited;
if ValFloat(edt_Codigo.Text)>0 then
  begin
  DM2.Tb_FImo.Insert;
  DM2.Tb_FImoCFI_CODEMP.AsInteger:=codemp;
  DM2.Tb_FImoCFI_CODFUN.AsString:=dbe_codigo.Text;
  DM2.Tb_FImoCFI_CODIMO.AsString:=edt_Codigo.Text;
  DM2.Tb_FImo.Post;
  edt_Codigo.Clear;
  edt_nomimo.Clear;
  end;

end;

procedure TFrm_Fun.codturnoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  codturno.Text := fChamaTurno(0,'Frm_fun',key);
  key:=#0;
  end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;

end;

end.


