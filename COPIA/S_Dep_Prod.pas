{**********************************************************************************+
Sistema........: SGE - Sistema de Gestao Empresarial                               +
Formulario.....: frm_TipPro - Manutenção no Cadastro de Tipo de Produtos           +
Executavel.....: SGE.EXE                                                           +
Criado por.....: Lindomar                                                          +
Alterado por...: Lindmar                                                  +
Data...........: 03/12/2008     Hora..: 10:58am                                    +
Ferramentas....: Delphi 7                                                          +
Banco de Dados.: Oracle                                                            +
Ger. Relatórios: Fortes Report - RDPrint                                           +
***********************************************************************************}

unit S_Dep_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_Dep_Prod = class(TForm)
    tlb_tipo: TToolBar;
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
    Panel_Edicao: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Grid: TDBGrid;
    edt_codtp: TDBEdit;
    edt_nome: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_sairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edt_codtpExit(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_conteudoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Dep_Prod : TFrm_Dep_Prod;
  mcodprodep_ant : Real;
  bbtpinc_true: Boolean = True;
  bbtpalt_true: Boolean = True;
  bbtpexc_true: Boolean = True;
  deppro_ori     : String;
  moper_tp    : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure TFrm_Dep_Prod.FormCreate(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Departamentos de Produtos';

cb_localizar.ItemIndex := 0;

moper_tp:=0;

if flcadactab(0,0,IntToStr(codcar),'CADPRO_DPTO') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbtpinc_true := False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbtpalt_true := False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbtpexc_true := False;
   end
else
   begin
   bbtpinc_true:=true;
   bbtpalt_true:=true;
   bbtpexc_true:=true;
   end;

btn_incluir.Enabled := bbtpinc_true;
btn_alterar.Enabled := bbtpalt_true;
btn_excluir.Enabled := bbtpexc_true;
btn_cancelar.Enabled:= False;

btn_atualizarClick(self);
end;

procedure TFrm_Dep_Prod.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Departamentos de Produtos - [Inclusão]';
   DM6.Tb_Prod_Dep.Append;
   mcodprodep_ant := DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat;
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

procedure TFrm_Dep_Prod.btn_alterarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Departamentos de Produtos - [Alteração]';
 if DM6.Tb_Prod_DepPRODEP_CODDEP.IsNull then
    begin
    Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
    Exit;
    end;

DM6.Tb_Prod_Dep.Edit; 
mcodprodep_ant := DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat;
panel_edicao.enabled:=true;
mOper_tp    :=1;
edt_codtp.Enabled   := False;
edt_nome.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure TFrm_Dep_Prod.btn_excluirClick(Sender: TObject);
begin
if DM6.Tb_Prod_DepPRODEP_CODDEP.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADPRO_DPTO','PRODEP_CODEMP',DM6.Tb_Prod_DepPRODEP_CODEMP.Asstring,
              'PRODEP_CODNOV','PRODEP_DATHOR_EVE','PRODEP_CODUSR_EVE',
              'PRODEP_TIPEVE',['PRODEP_CODDEP'],[DM6.Tb_Prod_DepPRODEP_CODDEP.AsString]
              ,DM6.Tb_PROD_Dep);
   FAtualizaBanco(2,'CADPRO_DPTO','PRODEP_CODEMP',DM6.Tb_Prod_DepPRODEP_CODEMP.AsString
   ,['PRODEP_CODDEP'],[FloatToStr(DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat)]
    ,DM6.Tb_Prod_Dep);
   DM6.Tb_Prod_Dep.Delete;
   end;
end;

procedure TFrm_Dep_Prod.btn_cancelarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Departamentos de Produtos';

if (mOper_tp=0) and (btn_gravar.Enabled) then
   begin
   FAtualizaBanco(2,'CADPRO_DPTO','PRODEP_CODEMP',DM6.Tb_Prod_DepPRODEP_CODEMP.AsString
   ,['PRODEP_CODDEP'],[FloatToStr(mcodprodep_ant)]
    ,DM6.Tb_Prod_Dep);
   end;
if DM6.Tb_PROD_Dep.State in [dsEdit,dsInsert] then
   DM6.Tb_PROD_Dep.Cancel;
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

procedure TFrm_Dep_Prod.btn_atualizarClick(Sender: TObject);
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

   flcadpro_dpto(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_Dep_Prod.btn_gravarClick(Sender: TObject);
begin
if (DM6.Tb_Prod_DepPRODEP_CODDEP.IsNull) then
   begin
      fmensagem('Favor informar o Código do Tipo de Produto!',0,['0'],0);
      edt_codtp.Setfocus;
      Exit;
   end;

if (DM6.Tb_Prod_DepPRODEP_NOME.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;

DM6.Tb_Prod_Dep.Post;

if moper_tp=1 then
   begin

   FGerarAntes(8,'CADPRO_DPTO','PRODEP_CODEMP',DM6.Tb_Prod_DepPRODEP_CODEMP.Asstring,
              'PRODEP_CODNOV','PRODEP_DATHOR_EVE','PRODEP_CODUSR_EVE',
              'PRODEP_TIPEVE',['PRODEP_CODDEP'],[FloatToStr(mcodprodep_ant)]
              ,DM6.Tb_PROD_Dep);

   end;
//DM6.Tb_Prod_DepPRODEP_CODDEP.AsString

FAtualizaBanco(1,'CADPRO_DPTO','PRODEP_CODEMP',DM6.Tb_Prod_DepPRODEP_CODEMP.AsString
   ,['PRODEP_CODDEP'],[FloatToStr(mcodprodep_ant)]
    ,DM6.Tb_Prod_Dep);


mOper_tp:=-1;
btn_cancelarClick(self);
end;

procedure TFrm_Dep_Prod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Dep_Prod.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_Dep_Prod.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Dep_Prod.GridDblClick(Sender: TObject);
begin
   if deppro_ori = '' then begin
      if not btn_incluir.Enabled = True then
          btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
      deppro_ori  := '';
   end;

end;

procedure TFrm_Dep_Prod.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
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

procedure TFrm_Dep_Prod.edt_codtpExit(Sender: TObject);
begin
if btn_cancelar.Focused then begin
   DM6.Tb_Prod_DepPRODEP_CODDEP.Value := 0;
   Exit;
end;

if DM6.Tb_Prod_DepPRODEP_CODDEP.Isnull then
   Exit;

if (mOPer_tp=0) and (DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat<>mcodprodep_ant) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select PRODEP_NOME from CADPRO_DPTO where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO_DPTO',[]),'',' PRODEP_CODEMP=0'+IntToStr(codemp)+' and ')
                     +' PRODEP_CODDEP=:CODDEP ');
   DM1.Query1.ParambyName('CODDEP').AsFloat:=DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat;
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('PRODEP_NOME').AsString,0,['0'],0);
      edt_codtp.setFocus;
      exit;
      end;

   end;
end;

procedure TFrm_Dep_Prod.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = 9) or (key = 27) then begin
      if deppro_ori <> '' then begin
         ModalResult := MrOk;
         deppro_ori     := '';
      end;
      Abort;
   end;
end;

procedure TFrm_Dep_Prod.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

end.
