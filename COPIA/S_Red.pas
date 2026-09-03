unit S_Red;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_Red = class(TForm)
    tlb_rede: TToolBar;
    Panel1: TPanel;
    Label1: TLabel;
    cb_localizar: TComboBox;
    edt_conteudo: TEdit;
    btn_atualizar: TBitBtn;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_sair: TBitBtn;
    Panel_Edicao: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Grid: TDBGrid;
    edt_codrede: TDBEdit;
    edt_nome: TDBEdit;
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
    procedure edt_codredeKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure edt_conteudoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Red : TFrm_Red;
  xOpc,
  mcodred_ant : Real;
  moper       : Integer;
  redcli_ori  : String;
  bbrdinc_true: Boolean = True;
  bbrdalt_true: Boolean = True;
  bbrdexc_true: Boolean = True;
  moper_red   : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure TFrm_Red.FormCreate(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Rede de Clientes';
   cb_localizar.ItemIndex := 0;

   moper_red := 0;

   if flcadactab(0,0,IntToStr(codcar),'CADRED') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbrdinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbrdalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbrdexc_true := False;
   end else begin
      bbrdinc_true:=true;
      bbrdalt_true:=true;
      bbrdexc_true:=true;
   end;

   btn_incluir.Enabled := bbrdinc_true;
   btn_alterar.Enabled := bbrdalt_true;
   btn_excluir.Enabled := bbrdexc_true;
   btn_cancelar.Enabled:= False;
   btn_atualizarClick(self);
end;

procedure TFrm_Red.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Rede de Clientes - [Inclusão]';
   DM1.Tb_Red.Append;
   mCodred_Ant := DM1.Tb_RedRDCODRED.AsFloat;
   DM1.Tb_RedRDDATHOR_INC.AsDateTime:=now;
   DM1.Tb_RedRDCODUSR_INC.AsFloat   :=codusr;

   mOper_red   :=0;
   panel_edicao.enabled  := true;
   edt_codrede.Enabled   := True;
   edt_codrede.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_Red.btn_alterarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Rede de Clientes - [Alteração]';

   if DM1.Tb_RedRDCODRED.IsNull then begin
      Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
      Exit;
   end;

   DM1.Tb_Red.Edit;

   DM1.Tb_RedRDCODUSR_ALT.AsFloat   :=codusr;
   mCodred_Ant := DM1.Tb_RedRDCODRED.AsFloat;
   panel_edicao.enabled:=true;
   mOper_red    :=1;
   edt_codrede.Enabled   := False;
   edt_nome.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_Red.btn_excluirClick(Sender: TObject);
begin
   if DM1.Tb_RedRDCODRED.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
      FGerarAntes(9,'CADRED','RDCODEMP',DM1.Tb_RedRDCODEMP.Asstring,
                 'RDCODNOV','RDDATHOR','RDCODUSR',
                 'RDSTATUS',['RDCODRED'],[DM1.Tb_RedRDCODRED.AsString]
                 ,DM1.Tb_Red);
      FAtualizaBanco(2,'CADRED','RDCODEMP',DM1.Tb_RedRDCODEMP.AsString
                     ,['RDCODRED'],[DM1.Tb_RedRDCODRED.AsString]
                     ,DM1.Tb_Red);
      DM1.Tb_Red.Delete;
   end;
end;

procedure TFrm_Red.btn_cancelarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Rede de Clientes';
   if (mOper_red=0) and (btn_gravar.Enabled) then begin
       FAtualizaBanco(2,'CADRED','RDCODEMP',DM1.Tb_RedRDCODEMP.AsString
       ,['RDCODRED'],[FloatToStr(mcodred_ant)]
       ,DM1.Tb_Red);
   end;

   if DM1.Tb_Red.State in [dsEdit,dsInsert] then
      DM1.Tb_Red.Cancel;

   btn_incluir.Enabled  := bbrdinc_true;
   btn_alterar.Enabled  := bbrdalt_true;
   btn_excluir.Enabled  := bbrdexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   Grid.Enabled         := True;
   btn_atualizar.Enabled:= true;
   Panel_Edicao.Enabled := false;
   mOper_red            := -1;
end;

procedure TFrm_Red.btn_atualizarClick(Sender: TObject);
begin
   if btn_gravar.Enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
          mrYes : btn_gravar.Click;
      else
          btn_cancelar.Click;
      end;
   end;
   flcadred(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_Red.btn_gravarClick(Sender: TObject);
begin
   if (DM1.Tb_RedRDCODRED.IsNull) then begin
      fmensagem('Favor informar o Código Rede de Clientes!',0,['0'],0);
      edt_codrede.SetFocus;
      Exit;
   end;

   if (DM1.Tb_RedRDNOME.Isnull) then begin
      fmensagem('Nome Invalido!',0,['0'],0);
      edt_nome.SetFocus;
      exit;
   end;
   DM1.Tb_RedRDDATHOR_ALT.AsDateTime:=now;

   if moper_red = 1 then begin
      FGerarAntes(8,'CADRED','RDCODEMP',DM1.Tb_RedRDCODEMP.Asstring,
                 'RDCODNOV','RDDATHOR','RDCODUSR',
                 'RDSTATUS',['RDCODRED'],[FloatToStr(mCodred_Ant)]
                 ,DM1.Tb_Red);

   end;

   FAtualizaBanco(1,'CADRED','RDCODEMP',DM1.Tb_RedRDCODEMP.AsString
                  ,['RDCODRED'],[FloatToStr(mCodred_Ant)]
                  ,DM1.Tb_Red);
   mOper_red := -1;
   DM1.Tb_Red.Post;
   btn_cancelarClick(self);
end;

procedure TFrm_Red.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Red.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TFrm_Red.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_Red.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Red.edt_codredeKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['0'..'9']) then
      Key := #0;
end;

procedure TFrm_Red.GridDblClick(Sender: TObject);
begin
   if redcli_ori = '' then begin
      if not btn_incluir.Enabled = True then
         tlb_rede.SetFocus;
   end else begin
      ModalResult := MrOk;
      redcli_ori     := '';
   end;
end;

procedure TFrm_Red.GridExit(Sender: TObject);
begin
   if redcli_ori <> '' then begin
      ModalResult := MrOk;
      redcli_ori     := '';
   end;
end;

procedure TFrm_Red.edt_conteudoChange(Sender: TObject);
begin
if DM1.Tb_PargerPONCHANGREDEC.Value=1 then
  btn_atualizarClick(self);
end;

end.
