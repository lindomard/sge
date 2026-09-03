unit S_Dpto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls, RxDBComb;

type
  TFrm_Dpto = class(TForm)
    tlb_departamento: TToolBar;
    Panel1: TPanel;
    Label1: TLabel;
    cb_localizar: TComboBox;
    edt_conteudo: TEdit;
    btn_atualizar: TBitBtn;
    btn_sair: TBitBtn;
    btn_gravar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_incluir: TBitBtn;
    painel_edicao: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edt_coddep: TDBEdit;
    edt_nome: TDBEdit;
    Grid: TDBGrid;
    GroupBox10: TGroupBox;
    RxDBCB_SITCAD: TRxDBComboBox;
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
    procedure edt_coddepartamentoKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure edt_conteudoChange(Sender: TObject);
    procedure edt_coddepExit(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_nomeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Dpto : TFrm_Dpto;
  mcoddep_ant : String;
  depto_ori   : String;
  bbdpinc_true: Boolean = True;
  bbdpalt_true: Boolean = True;
  bbdpexc_true: Boolean = True;
  moper_dep   : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure TFrm_Dpto.FormCreate(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Departamentos Caixa';
   cb_localizar.ItemIndex := 1;

   moper_dep:=0;

   if flcadactab(0,0,IntToStr(codcar),'CADDEP') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbdpinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbdpalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbdpexc_true := False;
   end else begin
      bbdpinc_true:=true;
      bbdpalt_true:=true;
      bbdpexc_true:=true;
   end;

   btn_incluir.Enabled := bbdpinc_true;
   btn_alterar.Enabled := bbdpalt_true;
   btn_excluir.Enabled := bbdpexc_true;
   btn_cancelar.Enabled:= False;
   btn_atualizarClick(self);
end;

procedure TFrm_Dpto.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Departamentos Caixa - [Inclusão]';
   DM1.Tb_Dep_Ldr.Append;
   mCodDep_Ant := DM1.Tb_Dep_LdrDCODDEP.AsString;
   mOper_Dep   :=0;
   painel_edicao.enabled  :=true;
   edt_coddep.Enabled := True;
   edt_coddep.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_Dpto.btn_alterarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Departamentos de Caixa - [Alteração]';
 if DM1.Tb_Dep_LdrDCODDEP.IsNull then
    begin
    Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
    Exit;
    end;

DM1.Tb_Dep_Ldr.Edit;
mCodDep_Ant := DM1.Tb_Dep_LdrDCODDEP.AsString;
painel_edicao.enabled:=true;
mOper_Dep    :=1;
edt_coddep.Enabled   := False;
edt_nome.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure TFrm_Dpto.btn_excluirClick(Sender: TObject);
begin
if DM1.Tb_Dep_LdrDCODDEP.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADDEP','DCODEMP',DM1.Tb_Dep_LdrDCODEMP.Asstring,
              'DCODNOV','DDATHOR','DCODUSR',
              'DSTATUS',['DCODDEP'],[DM1.Tb_Dep_LdrDCODDEP.AsString]
              ,DM1.Tb_Dep_Ldr);
   FAtualizaBanco(2,'CADDEP','DCODEMP',DM1.Tb_Dep_LdrDCODEMP.AsString
   ,['DCODDEP'],[DM1.Tb_Dep_LdrDCODDEP.AsString]
    ,DM1.Tb_Dep_Ldr);
   DM1.Tb_Dep_Ldr.Delete;
   end;
end;

procedure TFrm_Dpto.btn_cancelarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Departamentos Caixa';

if (mOper_Dep=0) and (btn_gravar.Enabled) then
   begin
   FAtualizaBanco(2,'CADDEP','DCODEMP',DM1.Tb_Dep_LdrDCODDEP.AsString
   ,['DCODDEP'],[mcoddep_ant]
    ,DM1.Tb_Dep_Ldr);
   end;
if DM1.Tb_Dep_Ldr.State in [dsEdit,dsInsert] then
   DM1.Tb_Dep_Ldr.Cancel;
btn_incluir.Enabled  := bbdpinc_true;
btn_alterar.Enabled  := bbdpalt_true;
btn_excluir.Enabled  := bbdpexc_true;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
Grid.Enabled         := True;
btn_atualizar.Enabled:= true;
Painel_Edicao.Enabled := false;
mOper_Dep:=-1;
end;

procedure TFrm_Dpto.btn_atualizarClick(Sender: TObject);
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
   flcaddep_ldr(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_Dpto.btn_gravarClick(Sender: TObject);
begin
if (DM1.Tb_Dep_LdrDCODDEP.Isnull) then
   begin
   fmensagem('Favor informar Código do Departamento!',0,['0'],0);
   edt_coddep.SetFocus;
   exit;
   end;

if (DM1.Tb_Dep_LdrDNOME.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;

DM1.Tb_Dep_Ldr.Post;

if moper_Dep=1 then
   begin
   FGerarAntes(8,'CADDEP','DCODEMP',DM1.Tb_Dep_LdrDCODEMP.Asstring,
              'DCODNOV','DDATHOR','DCODUSR',
              'DSTATUS',['DCODDEP'],[mCodDep_Ant]
              ,DM1.Tb_Dep_Ldr);

   end;

FAtualizaBanco(1,'CADDEP','DCODEMP',DM1.Tb_Dep_LdrDCODEMP.AsString
,['DCODDEP'],[mCodDep_Ant]
 ,DM1.Tb_Dep_Ldr);
mOper_dep:=-1;
btn_cancelarClick(self);
end;

procedure TFrm_Dpto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_Dpto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TFrm_Dpto.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_Dpto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Dpto.edt_coddepartamentoKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['0'..'9']) then
      Key := #0;
end;

procedure TFrm_Dpto.GridDblClick(Sender: TObject);
begin
   if depto_ori = '' then begin
      if not btn_incluir.Enabled = True then
          btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
   end;
end;

procedure TFrm_Dpto.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

procedure TFrm_Dpto.edt_coddepExit(Sender: TObject);
begin
if btn_cancelar.Focused then begin
   DM1.Tb_Dep_LdrDCODDEP.Value := '';
   Exit;
end;

if DM1.Tb_Dep_LdrDCODDEP.Isnull then
   Exit;

if (mOPer_Dep=0) and (DM1.Tb_Dep_LdrDCODDEP.AsString<>mCodDep_ant) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select DNOME from CADDEP where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADDEP',[]),'',' DCODEMP=0'+IntToStr(codemp)+' and ')
                     +' DCODDEP=:CODDEP ');
   DM1.Query1.ParambyName('CODDEP').AsString:=DM1.Tb_Dep_LdrDCODDEP.AsString;
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('DNOME').AsString,0,['0'],0);
      edt_coddep.setFocus;
      exit;
      end;

   end;
end;

procedure TFrm_Dpto.GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if (key <> 9) and (key <> 27) then begin
       if (key=115) and (shift=[ssalt]) then

   else begin
      if key = 8 then
         edt_conteudo.Text := copy(edt_conteudo.Text,1,length(edt_conteudo.Text)-1)
      else if (key=32) or (key>60) then
         edt_conteudo.Text := edt_conteudo.Text+Char(key);
      end;
   end;

   if (key=9) or (key=27) then begin
      if depto_ori <> '' then begin
         ModalResult := MrOk;
         depto_ori     := '';
      end;
      abort;
   end;

end;

procedure TFrm_Dpto.edt_nomeExit(Sender: TObject);
begin
   if (Trim(edt_nome.Text) <> '') and (btn_gravar.Enabled) then
       btn_gravar.SetFocus;
end;

end.
