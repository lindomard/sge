unit S_Funcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_Funcao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cb_localizar: TComboBox;
    edt_conteudo: TEdit;
    btn_atualizar: TBitBtn;
    Sr_Funcao: TDataSource;
    Panel_Edicao: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Grid: TDBGrid;
    edt_codfunc: TDBEdit;
    edt_nome: TDBEdit;
    edt_cbo: TDBEdit;
    DBR_TipoAcesso: TDBRadioGroup;
    DB_Privilegio: TDBCheckBox;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_sair: TBitBtn;
    Label5: TLabel;
    DBCB_CG_NIVEL_LIBERACAO: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn_sairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridDblClick(Sender: TObject);
    procedure GridExit(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaDados;
  public
    { Public declarations }
  end;

var
  Frm_Funcao  : TFrm_Funcao;
  mcodfc_ant  : Real;
  moper       : Integer;
  funcao_ori  : String;
  STATUS      : Integer;
  bbfcinc_true: Boolean = True;
  bbfcalt_true: Boolean = True;
  bbfcexc_true: Boolean = True;
  moper_fc    : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure TFrm_Funcao.FormCreate(Sender: TObject);
begin
    Self.Caption := 'Manutenção no Cadastro de Cargos/Funções';
    cb_localizar.ItemIndex := 0;

    moper_fc:=0;

    if flcadactab(0,0,IntToStr(codcar),'CADCAR') then
       begin
       if DM4.Tb_AcTabAT_INC.Value=1 then
          bbfcinc_true := False;
       if DM4.Tb_AcTabAT_ALT.Value=1 then
          bbfcalt_true := False;
       if DM4.Tb_AcTabAT_EXC.Value=1 then
          bbfcexc_true := False;
       end
    else
       begin
       bbfcinc_true:=true;
       bbfcalt_true:=true;
       bbfcexc_true:=true;
       end;

    btn_incluir.Enabled := bbfcinc_true;
    btn_alterar.Enabled := bbfcalt_true;
    btn_excluir.Enabled := bbfcexc_true;
    btn_atualizarClick(self);
end;

procedure TFrm_Funcao.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Cargos/Funções - [Inclusão]';
   DM1.Tb_Funcao.Append;
   mCodfc_Ant := DM1.Tb_FuncaoCODCAR.AsFloat;
   DM1.Tb_FuncaoCG_DATHOR_INC.AsDateTime:=now;
   DM1.Tb_FuncaoCG_CODUSR_INC.AsFloat   :=codusr;

   DM1.Tb_FuncaoTIPACE.Value  := 0;
   DBR_TipoAcesso.ItemIndex   :=0;
   mOper_fc                  :=0;
   panel_edicao.enabled  :=true;
   edt_codfunc.Enabled := True;
   edt_codfunc.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_Funcao.btn_alterarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Cargos/Funções - [Alteração]';
 if DM1.Tb_FuncaoCODCAR.IsNull then
    begin
    Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
    Exit;
    end;

DM1.Tb_Funcao.Edit;
mCodfc_Ant := DM1.Tb_FuncaoCODCAR.AsFloat;
DM1.Tb_FuncaoCG_CODUSR_ALT.AsFloat   :=codusr;
panel_edicao.enabled:=true;
mOper_fc    :=1;
edt_codfunc.Enabled   := False;
edt_nome.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure TFrm_Funcao.btn_excluirClick(Sender: TObject);
begin
if DM1.Tb_FuncaoCODCAR.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADCAR','CODEMP',DM1.Tb_FuncaoCODEMP.Asstring,
              'FCODNOV','FDATHOR','FCODUSR',
              'FSTATUS',['CODCAR'],[DM1.Tb_FuncaoCODCAR.AsString]
              ,DM1.Tb_Funcao);
   FAtualizaBanco(2,'CADCAR','CODEMP',DM1.Tb_FuncaoCODEMP.AsString
   ,['CODCAR'],[FloatToStr(DM1.Tb_FuncaoCODCAR.AsFloat)]
    ,DM1.Tb_Funcao);
   DM1.Tb_Funcao.Delete;
   end;
end;

procedure TFrm_Funcao.btn_cancelarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Cargos/Função';

if (mOper_fc=0) and (btn_gravar.Enabled) then
   begin
   FAtualizaBanco(2,'CADCAR','CODEMP',DM1.Tb_FuncaoCODEMP.AsString
   ,['CODCAR'],[FloatToStr(mcodfc_ant)]
    ,DM1.Tb_Funcao);
   end;
if DM1.Tb_Funcao.State in [dsEdit,dsInsert] then
   DM1.Tb_Funcao.Cancel;
btn_incluir.Enabled  := bbfcinc_true;
btn_alterar.Enabled  := bbfcalt_true;
btn_excluir.Enabled  := bbfcexc_true;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
Grid.Enabled         := True;
btn_atualizar.Enabled:= true;
Panel_Edicao.Enabled := false;
mOper_fc:=-1;
end;

procedure TFrm_Funcao.btn_atualizarClick(Sender: TObject);
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
   flcadcar(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_Funcao.btn_gravarClick(Sender: TObject);
begin
if (DM1.Tb_FuncaoCODCAR.Isnull) then
   begin
   fmensagem('Favor informar Código Cargos/Função!',0,['0'],0);
   edt_codfunc.SetFocus;
   exit;
   end;

if (DM1.Tb_FuncaoNOMCAR.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;


if moper_fc=1 then
   begin
   FGerarAntes(8,'CADCAR','CODEMP',DM1.Tb_FuncaoCODEMP.Asstring,
              'FCODNOV','FDATHOR','FCODUSR',
              'FSTATUS',['CODCAR'],[FloatToStr(mCodfc_Ant)]
              ,DM1.Tb_Funcao);

   end;

DM1.Tb_FuncaoCG_DATHOR_ALT.AsDateTime:=now;
FAtualizaBanco(1,'CADCAR','CODEMP',DM1.Tb_FuncaoCODEMP.AsString
,['CODCAR'],[FloatToStr(mCodfc_Ant)]
 ,DM1.Tb_Funcao);
DM1.Tb_Funcao.Post;
mOper_fc:=-1;
btn_cancelarClick(self);
end;

procedure TFrm_Funcao.CarregaDados;
begin
end;

procedure TFrm_Funcao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Funcao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if btn_gravar.enabled then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: btn_gravar.Click;
      mrNo : btn_cancelar.Click;
   else
      CanClose := False;
      end;
   end;
end;

procedure TFrm_Funcao.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_Funcao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = vk_insert then
      btn_incluir.Click;
   if key = vk_F2 then
      btn_alterar.Click;
   if key = vk_F3 then
      btn_cancelar.Click;
   if key = vk_F9 then
      btn_excluir.Click;
   if key = vk_F10 then
      btn_gravar.Click;
end;

procedure TFrm_Funcao.GridDblClick(Sender: TObject);
begin
   if funcao_ori = '' then begin
      if not btn_incluir.Enabled = True then
         btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
      funcao_ori     := '';
   end;
end;

procedure TFrm_Funcao.GridExit(Sender: TObject);
begin
{
   if funcao_ori = '' then begin
      ModalResult := MrOk;
      funcao_ori     := '';
   end;
}   
end;

end.
