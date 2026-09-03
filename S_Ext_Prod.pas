unit S_Ext_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_Ext_Prod = class(TForm)
    tlb_tipo: TToolBar;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_sair: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    cb_localizar: TComboBox;
    edt_conteudo: TEdit;
    btn_atualizar: TBitBtn;
    PageControl1: TPageControl;
    TsCadastro: TTabSheet;
    TsLista: TTabSheet;
    Grid: TDBGrid;
    Panel_Edicao: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edt_codtp: TDBEdit;
    db_ln01: TDBEdit;
    db_ln02: TDBEdit;
    db_ln03: TDBEdit;
    db_ln04: TDBEdit;
    db_ln05: TDBEdit;
    db_Nome: TDBMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure edt_conteudoChange(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    extpro_ori: String;
  end;

var
  Frm_Ext_Prod: TFrm_Ext_Prod;
  mcodproext_ant : Real;
  bbtpinc_true: Boolean = True;
  bbtpalt_true: Boolean = True;
  bbtpexc_true: Boolean = True;
  moper_tp    : Integer;


implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure TFrm_Ext_Prod.btn_incluirClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Departamentos de Produtos - [Inclusão]';
DM6.Tb_Pro_Ext.Append;
mcodproext_ant := DM6.Tb_Pro_ExtPROEXT_CODEXT.AsFloat;
mOper_tp    := 0;
panel_edicao.enabled  :=true;
edt_codtp.Enabled     := True;
edt_codtp.SetFocus;
btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure TFrm_Ext_Prod.btn_alterarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Departamentos de Produtos - [Alteração]';
if DM6.Tb_Pro_ExtPROEXT_CODEXT.IsNull then
  begin
  Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
  Exit;
  end;

DM6.Tb_Pro_Ext.Edit;
mcodproext_ant := DM6.Tb_Pro_ExtPROEXT_CODEXT.AsFloat;
panel_edicao.enabled:=true;
mOper_tp    :=1;
edt_codtp.Enabled    := False;
db_nome.SetFocus;
btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure TFrm_Ext_Prod.btn_cancelarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Departamentos de Produtos';
if (mOper_tp=0) and (btn_gravar.Enabled) then
  begin
  FAtualizaBanco(2,'CADPRO_EXT','PROEXT_CODEMP',DM6.Tb_Pro_ExtPROEXT_CODEMP.AsString
  ,['PROEXT_CODEXT'],[FloatToStr(mcodproext_ant)]
   ,DM6.Tb_Pro_Ext);
  end;
if DM6.Tb_Pro_Ext.State in [dsEdit,dsInsert] then
  DM6.Tb_Pro_Ext.Cancel;
btn_incluir.Enabled  := bbtpinc_true;
btn_alterar.Enabled  := bbtpalt_true;
btn_excluir.Enabled  := bbtpexc_true;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
Grid.Enabled         := True;
btn_atualizar.Enabled:= true;
Panel_Edicao.Enabled := false;
mOper_tp:=-1;
end;

procedure TFrm_Ext_Prod.btn_excluirClick(Sender: TObject);
begin
if DM6.Tb_Pro_ExtPROEXT_CODEXT.IsNull then
  begin
  fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
  Exit;
  end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
  begin
  FGerarAntes(9,'CADPRO_EXT','PROEXT_CODEMP',DM6.Tb_Pro_ExtPROEXT_CODEMP.Asstring,
             'PROEXT_CODNOV','PROEXT_DATHOR_EVE','PROEXT_CODUSR_EVE',
             'PROEXT_TIPEVE',['PROEXT_CODEXT'],[DM6.Tb_Pro_ExtPROEXT_CODEXT.AsString]
             ,DM6.Tb_Pro_Ext);
  FAtualizaBanco(2,'CADPRO_EXT','PROEXT_CODEMP',DM6.Tb_Pro_ExtPROEXT_CODEMP.AsString
  ,['PROEXT_CODEXT'],[FloatToStr(DM6.Tb_Pro_ExtPROEXT_CODEXT.AsFloat)]
  ,DM6.Tb_Pro_Ext);
  DM6.Tb_Pro_Ext.Delete;
  end;
end;

procedure TFrm_Ext_Prod.btn_gravarClick(Sender: TObject);
begin
if (DM6.Tb_Pro_ExtPROEXT_CODEXT.IsNull) then
  begin
  fmensagem('Favor informar o Código do Extra do Produto!',0,['0'],0);
  edt_codtp.Setfocus;
  Exit;
  end;

if (DM6.Tb_Pro_ExtPROEXT_NOME.Isnull) then
  begin
  fmensagem('Nome Invalido!',0,['0'],0);
  db_nome.SetFocus;
  exit;
  end;

DM6.Tb_Pro_Ext.Post;

if moper_tp=1 then
  begin

  FGerarAntes(8,'CADPRO_EXT','PROEXT_CODEMP',DM6.Tb_Pro_ExtPROEXT_CODEMP.Asstring,
             'PROEXT_CODNOV','PROEXT_DATHOR_EVE','PROEXT_CODUSR_EVE',
             'PROEXT_TIPEVE',['PROEXT_CODEXT'],[FloatToStr(mcodproext_ant)]
             ,DM6.Tb_Pro_Ext);

  end;
//DM6.Tb_Prod_DepPRODEP_CODDEP.AsString

FAtualizaBanco(1,'CADPRO_EXT','PROEXT_CODEMP',DM6.Tb_Pro_ExtPROEXT_CODEMP.AsString
   ,['PROEXT_CODEXT'],[FloatToStr(mcodproext_ant)]
    ,DM6.Tb_Pro_Ext);


mOper_tp:=-1;
btn_cancelarClick(self);
end;

procedure TFrm_Ext_Prod.btn_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ext_Prod.btn_atualizarClick(Sender: TObject);
begin
if btn_gravar.Enabled then
  begin
  Case fmensagem('O registro atual não está gravado!'+#13
                +'Deseja gravar agora?',0,['1','2','3'],0) of
    mrYes : btn_gravar.Click;
  else
    btn_cancelar.Click;
    end;
  end;
flcadpro_ext(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_Ext_Prod.edt_conteudoChange(Sender: TObject);
begin
btn_atualizar.Click;
end;

procedure TFrm_Ext_Prod.GridDblClick(Sender: TObject);
begin
if extpro_ori = '' then
  begin
  if not btn_incluir.Enabled = True then
    btn_incluir.SetFocus;
  end
else
  begin
  ModalResult := MrOk;
  extpro_ori  := '';
  end;
end;

procedure TFrm_Ext_Prod.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = 9) or (key = 27) then
  begin
  if extpro_ori <> '' then
    begin
    ModalResult := MrOk;
    extpro_ori     := '';
    end;
   Abort;
  end;
end;

procedure TFrm_Ext_Prod.FormShow(Sender: TObject);
begin
btn_atualizarClick(self);
end;

end.
