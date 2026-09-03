unit S_RCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_RCli = class(TForm)
    tlb_ramo: TToolBar;
    Panel1: TPanel;
    Label1: TLabel;
    cb_localizar: TComboBox;
    edt_conteudo: TEdit;
    btn_atualizar: TBitBtn;
    Panel_Edicao: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Grid: TDBGrid;
    edt_codramo: TDBEdit;
    edt_nome: TDBEdit;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_sair: TBitBtn;
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
    procedure edt_codramoExit(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_conteudoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RCli : TFrm_RCli;
  mcodrcli_ant: Real;
  moper       : Integer;
  rcli_ori    : String;
  bbrcinc_true: Boolean = True;
  bbrcalt_true: Boolean = True;
  bbrcexc_true: Boolean = True;
  moper_rcli  : Integer;

implementation

uses lerarq, func_excecoes, func, S_DM4, S_DM6, S_DM1;

{$R *.dfm}

procedure TFrm_RCli.FormCreate(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Ramo de Clientes';
cb_localizar.ItemIndex := 0;

moper_rcli:=0;

if flcadactab(0,0,IntToStr(codcar),'CADRCLI') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbrcinc_true := False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbrcalt_true := False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbrcexc_true := False;
   end
else
   begin
   bbrcinc_true:=true;
   bbrcalt_true:=true;
   bbrcexc_true:=true;
   end;

btn_incluir.Enabled := bbrcinc_true;
btn_alterar.Enabled := bbrcalt_true;
btn_excluir.Enabled := bbrcexc_true;
btn_cancelar.Enabled:= False;
btn_atualizarClick(self);
end;

procedure TFrm_RCli.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Ramo de Clientes - [Inclusão]';
   DM6.Tb_RCli.Insert;
   mCodrcli_Ant :=  DM6.Tb_RCliRCODRAM.AsFloat;
   mOper_rcli   :=0;
   panel_edicao.enabled  :=true;
   edt_codramo.Enabled := True;
   edt_codramo.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_RCli.btn_alterarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Ramo de Clientes - [Alteração]';

 if DM6.Tb_RCliRCODRAM.IsNull then
    begin
    Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
    Exit;
    end;

DM6.Tb_RCli.Edit;
mCodrcli_Ant := DM6.Tb_RCliRCODRAM.AsFloat;
panel_edicao.enabled:=true;
mOper_rcli    :=1;
edt_codramo.Enabled   := False;
edt_nome.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure TFrm_RCli.btn_excluirClick(Sender: TObject);
begin
if DM6.Tb_RCliRCODRAM.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADRCLI','RCODEMP',DM6.Tb_RCliRCODEMP.Asstring,
              'RCODNOV','RDATHOR','RCODUSR',
              'RSTATUS',['RCODRAM'],[DM6.Tb_RCLiRCODRAM.AsString]
              ,DM6.Tb_RCli);
   FAtualizaBanco(2,'CADRCLI','RCODEMP',DM6.Tb_RCliRCODEMP.AsString
   ,['RCODRAM'],[DM6.Tb_RCliRCODRAM.AsString]
    ,DM6.Tb_RCli);
   DM6.Tb_RCli.Delete;
   end;
end;

procedure TFrm_RCli.btn_cancelarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Rede de Clientes';
   if (mOper_rcli=0) and (btn_gravar.Enabled) then begin
      FAtualizaBanco(2,'CADRCLI','RCODEMP',DM6.Tb_RCliRCODEMP.AsString
                     ,['RCODRAM'],[FloatToStr(mcodrcli_ant)]
                     ,DM6.Tb_RCli);
   end;

   if DM6.Tb_RCli.State in [dsEdit,dsInsert] then
      DM6.Tb_RCli.Cancel;

   btn_incluir.Enabled  := bbrcinc_true;
   btn_alterar.Enabled  := bbrcalt_true;
   btn_excluir.Enabled  := bbrcexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   Grid.Enabled         := True;
   btn_atualizar.Enabled:= true;
   Panel_Edicao.Enabled := false;
   mOper_rcli := -1;
end;

procedure TFrm_RCli.btn_atualizarClick(Sender: TObject);
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

   flcadRCli(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_RCli.btn_gravarClick(Sender: TObject);
begin
if (DM6.Tb_RCliRCODRAM.IsNull) then begin
   fmensagem('Favor informar o Código do Ramo de Cliente!',0,['0'],0);
   edt_codramo.SetFocus;
   Exit;
end;

if (DM6.Tb_RCliRNome.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;

DM6.Tb_RCli.Post;

if moper_rcli=1 then
   begin
   FGerarAntes(8,'CADRCLI','RCODEMP',DM6.Tb_RCliRCODEMP.Asstring,
              'RCODNOV','RDATHOR','RCODUSR',
              'RSTATUS',['RCODRAM'],[FloatToStr(mCodrcli_Ant)]
              ,DM6.Tb_RCli);

   end;

FAtualizaBanco(1,'CADRCLI','RCODEMP',DM6.Tb_RCliRCODEMP.AsString
,['RCODRAM'],[FloatToStr(mCodrcli_Ant)]
 ,DM6.Tb_RCli);
mOper_rcli:=-1;
btn_cancelarClick(self);
end;


procedure TFrm_RCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RCli.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TFrm_RCli.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_RCli.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_RCli.GridDblClick(Sender: TObject);
begin
   if rcli_ori = '' then begin
      if not btn_incluir.Enabled = True then
         tlb_ramo.SetFocus;
   end else begin
      ModalResult := MrOk;
      rcli_ori     := '';
   end;
end;

procedure TFrm_RCli.edt_codramoExit(Sender: TObject);
begin
if btn_cancelar.Focused then begin
   DM6.Tb_RCliRCODRAM.Value := 0;
   Exit;
end;

if DM6.Tb_RCliRCODRAM.Isnull then
   Exit;

if (mOPer_rcli=0) and (DM6.Tb_RCliRCODRAM.AsFloat<>mCodrcli_ant) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select RNOME from CADRCLI where '
                     +iif(not DM1.Qr_Tid.Locate('TINOME','CADRCLI',[]),'',' RCODEMP=0'+IntToStr(codemp)+' and ')
                     +' RCODRAM=:CODRAM ');
   DM1.Query1.ParambyName('CODRAM').AsFloat := DM6.Tb_RCliRCODRAM.AsFloat;
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('RNOME').AsString,0,['0'],0);
      edt_codramo.setFocus;
      exit;
      end;

   end;
end;

procedure TFrm_RCli.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 9) or (key = 27) then begin
      if rcli_ori <> '' then begin
         ModalResult := MrOk;
         rcli_ori     := '';
      end;
  end;
end;

procedure TFrm_RCli.edt_conteudoChange(Sender: TObject);
begin
if DM1.Tb_PargerPONCHANGERCLI.Value=1 then
  btn_atualizarClick(self);

end;

end.
