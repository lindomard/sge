unit S_GFor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_GFor = class(TForm)
    tlb_grupo: TToolBar;
    Panel1: TPanel;
    Label1: TLabel;
    cb_localizar: TComboBox;
    edt_conteudo: TEdit;
    btn_atualizar: TBitBtn;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_sair: TBitBtn;
    btn_cancelar: TBitBtn;
    Panel_Edicao: TPanel;
    Label2: TLabel;
    edt_codgrupo: TDBEdit;
    edt_nomegrupo: TDBEdit;
    Label3: TLabel;
    Grid: TDBGrid;
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
    procedure edt_codgrupoExit(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_conteudoChange(Sender: TObject);
    procedure edt_freteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_GFor     : TFrm_GFor;
  mcodfor_ant  : Real;
  gfor_ori     : String;
  moper_for    : Integer;
  bbfrinc_true : Boolean = True;
  bbfralt_true : Boolean = True;
  bbfrexc_true : Boolean = True;


implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4, S_Agde;

{$R *.dfm}

procedure TFrm_GFor.FormCreate(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro no Grupo de Fornecedores';
   cb_localizar.ItemIndex := 0;

   moper_for:=0;

   if flcadactab(0,0,IntToStr(codcar),'CADGFOR') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbfrinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbfralt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbfrexc_true := False;
   end else begin
      bbfrinc_true:=true;
      bbfralt_true:=true;
      bbfrexc_true:=true;
   end;

   btn_incluir.Enabled := bbfrinc_true;
   btn_alterar.Enabled := bbfralt_true;
   btn_excluir.Enabled := bbfrexc_true;
   btn_cancelar.Enabled:= False;

   btn_atualizarClick(self);
end;

procedure TFrm_GFor.btn_incluirClick(Sender: TObject);
begin
  Self.Caption := 'Manutenção no Cadastro no Grupo de Fornecedores - [Inclusão]';
  DM4.Tb_GFor.Append;
  mCodfor_Ant := DM4.Tb_GForGFCODGRU.AsFloat;
  mOper_for   := 0;
  panel_edicao.enabled  :=true;
  edt_codgrupo.Enabled := True;
  edt_codgrupo.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  Grid.Enabled         := False;
  btn_atualizar.Enabled:= false;
end;

procedure TFrm_GFor.btn_alterarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro no Grupo de Fornecedores - [Alteração]';

   if DM4.Tb_GForGFCODGRU.IsNull then begin
      Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
      Exit;
   end;

   DM4.Tb_GFor.Edit;
   mCodfor_Ant := DM4.Tb_GForGFCODGRU.AsFloat;
   panel_edicao.enabled:=true;
   mOper_for   := 1;
   edt_codgrupo.Enabled   := False;
   edt_nomegrupo.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_GFor.btn_excluirClick(Sender: TObject);
begin
   if DM4.Tb_GForGFCODGRU.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
       FGerarAntes(9,'CADGFOR','GFCODEMP',DM4.Tb_GForGFCODEMP.Asstring,
                  'GFRCODNOV','GFRDATHOR','GFRCODUSR',
                  'GFRSTATUS',['GFCODGRU'],[FloatToStr(DM4.Tb_GForGFCODGRU.AsFloat)]
                  ,DM4.Tb_GFor);
       FAtualizaBanco(2,'CADGFOR','GFCODEMP',DM4.Tb_GForGFCODEMP.AsString
       ,['GFCODGRU'],[FloatToStr(DM4.Tb_GForGFCODGRU.AsFloat)]
       ,DM4.Tb_GFor);
       DM4.Tb_GFor.Delete;
   end;
end;

procedure TFrm_GFor.btn_cancelarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro no Grupo de Fornecedores';

   if (mOper_for = 0) and (btn_gravar.Enabled) then begin
      FAtualizaBanco(2,'CADGFOR','GFCODEMP',DM4.Tb_GForGFCODEMP.AsString
      ,['GFCODGRU'],[FloatToStr(mcodfor_ant)]
      ,DM4.Tb_GFor);
   end;

   if DM4.Tb_GFor.State in [dsEdit,dsInsert] then
      DM4.Tb_GFor.Cancel;

   btn_incluir.Enabled  := bbfrinc_true;
   btn_alterar.Enabled  := bbfralt_true;
   btn_excluir.Enabled  := bbfrexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   Grid.Enabled         := True;
   btn_atualizar.Enabled:= true;
   Panel_Edicao.Enabled := false;
   mOper_for := -1;
end;

procedure TFrm_GFor.btn_atualizarClick(Sender: TObject);
begin
   if btn_gravar.Enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes : btn_gravar.Click;
      else
         btn_cancelar.Click;
      end;
   end;

   flcadGfor(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_GFor.btn_gravarClick(Sender: TObject);
begin
if (DM4.Tb_GForGFCODGRU.IsNull) then
   begin
   fmensagem('Favor informar Código do Grupo de Fornecedor!',0,['0'],0);
   edt_codgrupo.SetFocus;
   Exit;
   end;

if (DM4.Tb_GForGFNOME.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nomegrupo.SetFocus;
   exit;
   end;


if moper_for=1 then
   begin
   FGerarAntes(8,'CADGFOR','GFCODEMP',DM4.Tb_GForGFCODEMP.Asstring,
                 'GFRCODNOV','GFRDATHOR','GFRCODUSR',
                 'GFRSTATUS',['GFCODGRU'],[FloatToStr(mCodfor_Ant)]
                 ,DM4.Tb_GFor);
   end;

FAtualizaBanco(1,'CADGFOR','GFCODEMP',DM4.Tb_GForGFCODEMP.AsString
  ,['GFCODGRU'],[FloatToStr(mCodfor_Ant)]
  ,DM4.Tb_GFor);
DM4.Tb_GFor.Post;

mOper_for:=-1;
btn_cancelarClick(self);
end;

procedure TFrm_GFor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_GFor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if btn_gravar.enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes: btn_gravar.Click;
         mrNo : btn_cancelar.Click;
      else
         CanClose := False;
      end;
   end;
end;

procedure TFrm_GFor.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_GFor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
{
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
}
end;

procedure TFrm_GFor.GridDblClick(Sender: TObject);
begin
   if gfor_ori = '' then begin
      btn_alterar.SetFocus;
   end else begin
      ModalResult:=MrOk;
      gfor_ori:='';
   end;
end;

procedure TFrm_GFor.edt_codgrupoExit(Sender: TObject);
begin
   if btn_cancelar.Focused then begin
      DM4.Tb_GForGFCODGRU.Value := 0;
      Exit;
   end;

   if DM4.Tb_GForGFCODGRU.Isnull then
      Exit;

   if (mOPer_for = 0) and (DM4.Tb_GForGFCODGRU.AsFloat <> mCodfor_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select GFNOME from CADGFOR where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADGFOR',[]),'',' GFCODEMP=0'+IntToStr(codemp)+' and ')
                        +' GFCODGRU=:CODGRU ');
      DM1.Query1.ParambyName('CODGRU').AsFloat := DM4.Tb_GForGFCODGRU.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('GFNOME').AsString,0,['0'],0);
         edt_codgrupo.setFocus;
         exit;
      end;

   end;
end;

procedure TFrm_GFor.GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (key = 9) or (key = 27) then begin
      if gfor_ori <> '' then begin
         ModalResult:=MrOk;
         gfor_ori:='';
      end;
      abort;
   end;
end;

procedure TFrm_GFor.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

procedure TFrm_GFor.edt_freteKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator;
end;

end.
