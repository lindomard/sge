unit S_TipPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_TipPro = class(TForm)
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
    DBC_DESCAV: TDBCheckBox;
    memo_obs_med: TMemo;
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
  Frm_TipPro : TFrm_TipPro;
  mcodtp_ant  : Real;
  bbtpinc_true: Boolean = True;
  bbtpalt_true: Boolean = True;
  bbtpexc_true: Boolean = True;
  tip_ori     : String;
  moper_tp    : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure TFrm_TipPro.FormCreate(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Tipo de Produtos';
if ValInt(copy(mpseg,4,2))=1 then
   memo_obs_med.Visible:=true;
cb_localizar.ItemIndex := 0;

moper_tp:=0;

if flcadactab(0,0,IntToStr(codcar),'CADTP') then
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

procedure TFrm_TipPro.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Tipo de Produtos - [Inclusão]';
   DM1.Tb_Tpro.Append;
   mCodtp_Ant  := DM1.Tb_TproTCODTIP.AsFloat;
   DM1.Tb_TproTDATHOR_INC.AsDateTime:=now;
   DM1.Tb_TproTCODUSR_INC.AsFloat   :=codusr;
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

procedure TFrm_TipPro.btn_alterarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Tipo de Produtos - [Alteração]';
 if DM1.Tb_TProTCODTIP.IsNull then
    begin
    Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
    Exit;
    end;

DM1.Tb_TPro.Edit;
mCodtp_ant := DM1.Tb_TProTCODTIP.AsFloat;
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

procedure TFrm_TipPro.btn_excluirClick(Sender: TObject);
begin
if DM1.Tb_TproTCODTIP.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADTP','TCODEMP',DM1.Tb_TproTCODEMP.Asstring,
              'TPCODNOV','TPDATHOR','TPCODUSR',
              'TPSTATUS',['TCODTIP'],[DM1.Tb_TproTCODTIP.AsString]
              ,DM1.Tb_TPro);
   FAtualizaBanco(2,'CADTP','TCODEMP',DM1.Tb_TproTCODEMP.AsString
   ,['TCODTIP'],[FloatToStr(DM1.Tb_TproTCODTIP.AsFloat)]
    ,DM1.Tb_Tpro);
   DM1.Tb_TPro.Delete;
   end;
end;

procedure TFrm_TipPro.btn_cancelarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Tipo de Produtos';

if (mOper_tp=0) and (btn_gravar.Enabled) then
   begin
   FAtualizaBanco(2,'CADTP','TCODEMP',DM1.Tb_TProTCODEMP.AsString
   ,['TCODTIP'],[FloatToStr(mcodtp_ant)]
    ,DM1.Tb_Tpro);
   end;
if DM1.Tb_Tpro.State in [dsEdit,dsInsert] then
   DM1.Tb_Tpro.Cancel;
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

procedure TFrm_TipPro.btn_atualizarClick(Sender: TObject);
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

   flcadtpro(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_TipPro.btn_gravarClick(Sender: TObject);
begin
if (DM1.Tb_TproTCODTIP.IsNull) then
   begin
      fmensagem('Favor informar o Código do Tipo de Produto!',0,['0'],0);
      edt_codtp.Setfocus;
      Exit;
   end;

if (DM1.Tb_TproTNOME.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;
DM1.Tb_TproTDATHOR_ALT.AsDateTime:=now;
DM1.Tb_TproTCODUSR_ALT.AsFloat   :=codusr;

if moper_tp=1 then
   begin
   FGerarAntes(8,'CADTP','TCODEMP',DM1.Tb_TProTCODEMP.Asstring,
              'TPCODNOV','TPDATHOR','TPCODUSR',
              'TPSTATUS',['TCODTIP'],[FloatToSTr(mCodtp_Ant)]
              ,DM1.Tb_TPro);

   end;

FAtualizaBanco(1,'CADTP','TCODEMP',DM1.Tb_TProTCODEMP.AsString
,['TCODTIP'],[FloatToStr(mCodtp_Ant)]
 ,DM1.Tb_TPro);


DM1.Tb_Tpro.Post;

mOper_tp:=-1;
btn_cancelarClick(self);
end;

procedure TFrm_TipPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_TipPro.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_TipPro.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_TipPro.GridDblClick(Sender: TObject);
begin
   if tip_ori = '' then begin
      if not btn_incluir.Enabled = True then
         btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
      tip_ori     := '';
   end;
end;

procedure TFrm_TipPro.FormCloseQuery(Sender: TObject;
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

procedure TFrm_TipPro.edt_codtpExit(Sender: TObject);
begin
if btn_cancelar.Focused then begin
   DM1.Tb_TProTCODTIP.Value := 0;
   Exit;
end;

if DM1.Tb_TProTCODTIP.Isnull then
   Exit;

if (mOPer_tp=0) and (DM1.Tb_TProTCODTIP.AsFloat<>mCodtp_ant) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select TNOME from CADTP where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADTP',[]),'',' TCODEMP=0'+IntToStr(codemp)+' and ')
                     +' TCODTIP=:CODTIP ');
   DM1.Query1.ParambyName('CODTIP').AsFloat:=DM1.Tb_TProTCODTIP.AsFloat;
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('TNOME').AsString,0,['0'],0);
      edt_codtp.setFocus;
      exit;
      end;

   end;
end;

procedure TFrm_TipPro.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = 9) or (key = 27) then begin
      if tip_ori <> '' then begin
         ModalResult := MrOk;
         tip_ori     := '';
      end;
      Abort;
   end;
end;

procedure TFrm_TipPro.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

end.
