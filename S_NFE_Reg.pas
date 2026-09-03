unit S_NFE_reg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_NFE_Reg = class(TForm)
    tlb_regiao: TToolBar;
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
    Label4: TLabel;
    Label3: TLabel;
    edt_codregiao: TDBEdit;
    edt_nome: TDBEdit;
    edt_codpais: TDBEdit;
    Grid: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure edt_codigoregiaoKeyPress(Sender: TObject; var Key: Char);
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
    procedure edt_conteudoChange(Sender: TObject);
    procedure edt_codregiaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NFE_Reg : TFrm_NFE_Reg;
  mcodrg_ant   : Real;
  bbrginc_true : Boolean = True;
  bbrgalt_true : Boolean = True;
  bbrgexc_true : boolean = True;
  reg_ori      : String;
  moper_rg     : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure TFrm_NFE_Reg.FormCreate(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Regiões';
   cb_localizar.ItemIndex := 0;

   moper_rg := 0;

   if flcadactab(0,0,IntToStr(codcar),'NFE_CADREG') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbrginc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbrgalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbrgexc_true := False;
   end else begin
      bbrginc_true:=true;
      bbrgalt_true:=true;
      bbrgexc_true:=true;
   end;

   btn_incluir.Enabled := bbrginc_true;
   btn_alterar.Enabled := bbrgalt_true;
   btn_excluir.Enabled := bbrgexc_true;
   btn_cancelar.Enabled:= False; 
   btn_atualizarClick(self);
end;

procedure TFrm_NFE_Reg.btn_incluirClick(Sender: TObject);
begin
  Self.Caption := 'Manutenção no Cadastro de Regiões - [Inclusão]';
  DM6.Tb_NFE_REG.Append;
  mCodrg_Ant := DM6.Tb_NFE_RegCRCODREG.AsFloat;
  mOper_rg   := 0;
  panel_edicao.enabled  :=true;
  edt_codregiao.Enabled := True;
  edt_codregiao.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  Grid.Enabled         := False;
  btn_atualizar.Enabled:= false;
end;

procedure TFrm_NFE_Reg.edt_codigoregiaoKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then begin
      selectnext((sender as twincontrol), true, true);
      key := #0;
   end;

   if not (key in['0'..'9']) then
      Key := #0;
end;

procedure TFrm_NFE_Reg.btn_alterarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Regiões - [Alteração]';

   if DM6.Tb_NFE_RegCRCODREG.IsNull then begin
      Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
      Exit;
   end;

   DM6.Tb_NFE_Reg.Edit;
   mCodrg_Ant := DM6.Tb_NFE_RegCRCODREG.AsFloat;
   panel_edicao.enabled:=true;
   mOper_rg   := 1;
   edt_codregiao.Enabled   := False;
   edt_nome.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_NFE_Reg.btn_excluirClick(Sender: TObject);
begin
   if DM6.Tb_NFE_RegCRCODREG.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
       FGerarAntes(9,'NFE_CADREG','','','CRCODNOV','CRDATAEVE','CRCODUSREVE',
                  'CRSTATUS',['CRCODREG'],[FloatToStr(DM6.Tb_NFE_RegCRCODREG.AsFloat)]
                  ,DM6.Tb_NFE_Reg);
       FAtualizaBanco(2,'NFE_CADREG','','',['CRCODREG'],[FloatToStr(DM6.Tb_NFE_RegCRCODREG.AsFloat)]
       ,DM6.Tb_NFE_Reg);
       DM6.Tb_NFE_Reg.Delete;
   end;
end;

procedure TFrm_NFE_Reg.btn_cancelarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Regiões';
   if (mOper_rg = 0) and (btn_gravar.Enabled) then begin
      FAtualizaBanco(2,'NFE_CADREG','','',['CRCODREG'],[FloatToStr(mcodrg_ant)]
      ,DM6.Tb_NFE_Reg);
   end;

   if DM6.Tb_NFE_Reg.State in [dsEdit,dsInsert] then
      DM6.Tb_NFE_Reg.Cancel;

   btn_incluir.Enabled  := bbrginc_true;
   btn_alterar.Enabled  := bbrgalt_true;
   btn_excluir.Enabled  := bbrgexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   Grid.Enabled         := True;
   btn_atualizar.Enabled:= true;
   Panel_Edicao.Enabled := false;
   mOper_rg := -1;
end;

procedure TFrm_NFE_Reg.btn_atualizarClick(Sender: TObject);
begin
   if btn_gravar.Enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes : btn_gravar.Click;
      else
         btn_cancelar.Click;
      end;
   end;
   flNFECadReg(cb_localizar.ItemIndex,edt_conteudo.Text);
end;

procedure TFrm_NFE_Reg.btn_gravarClick(Sender: TObject);
begin
   if (DM6.Tb_NFE_RegCRCODREG.IsNull) then begin
      fmensagem('Favor informar Código!',0,['0'],0);
      edt_codregiao.SetFocus;
      Exit;
   end;

   if (DM6.Tb_NFE_RegCRNOMREG.Isnull) then begin
      fmensagem('Nome Invalido!',0,['0'],0);
      edt_nome.SetFocus;
      exit;
   end;

   DM6.Tb_NFE_Reg.Post;

   if moper_rg = 1 then begin
      FGerarAntes(8,'NFE_CADREG','','',
                 'CRCODNOV','CRDATAEVE','CRCODUSREVE',
                 'CRSTATUS',['CRCODREG'],[FloatToStr(mCodrg_Ant)]
                 ,DM6.Tb_NFE_Reg);
   end;

  FAtualizaBanco(1,'NFE_CADREG','','',['CRCODREG'],[FloatToStr(mCodrg_Ant)]
  ,DM6.Tb_NFE_Reg);
  mOper_rg := -1;
  btn_cancelarClick(self);
end;

procedure TFrm_NFE_Reg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_NFE_Reg.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TFrm_NFE_Reg.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_NFE_Reg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_NFE_Reg.GridDblClick(Sender: TObject);
begin
   if reg_ori = '' then begin
      if not btn_incluir.Enabled = True then
         btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
      //reg_ori     := '';
   end;
end;

procedure TFrm_NFE_Reg.GridExit(Sender: TObject);
begin
   if reg_ori <> '' then begin
      ModalResult := MrOk;
      reg_ori     := '';
   end;
end;

procedure TFrm_NFE_Reg.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

procedure TFrm_NFE_Reg.edt_codregiaoExit(Sender: TObject);
begin
   if btn_cancelar.Focused then begin
      DM6.Tb_NFE_RegCRCODREG.Value := 0;
      Exit;
   end;

   if DM6.Tb_NFE_RegCRCODREG.Isnull then
      Exit;

   if (mOPer_rg = 0) and (DM6.Tb_NFE_RegCRCODREG.AsFloat <> mCodrg_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select CRNOMREG from NFE_CADREG where  '
                        +' CRCODREG=:CODREG ');
      DM1.Query1.ParambyName('CODREG').AsFloat := DM6.Tb_NFE_RegCRCODREG.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('CRNOMREG').AsString,0,['0'],0);
         edt_codregiao.setFocus;
         exit;
      end;

   end;
end;

end.
