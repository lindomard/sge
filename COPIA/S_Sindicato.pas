unit S_Sindicato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  Tfrm_sindicato = class(TForm)
    tlb_sindicato: TToolBar;
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
    edt_codsindicato: TDBEdit;
    edt_nomesindicato: TDBEdit;
    edt_pfpj: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    edt_endereco: TDBEdit;
    Label6: TLabel;
    edt_codbairro: TDBEdit;
    edt_nomebairro: TDBEdit;
    edt_codcidade: TDBEdit;
    Label7: TLabel;
    edt_nomecidade: TDBEdit;
    edt_ufed: TDBEdit;
    Label8: TLabel;
    Label13: TLabel;
    edt_seguro: TDBEdit;
    edt_alimentacao: TDBEdit;
    Label12: TLabel;
    edt_percentual: TDBEdit;
    Label11: TLabel;
    Label10: TLabel;
    edt_fone: TDBEdit;
    edt_cep: TDBEdit;
    Label9: TLabel;
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
    procedure edt_codsindicatoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codsindicatoExit(Sender: TObject);
    procedure edt_cepExit(Sender: TObject);
    procedure edt_pfpjExit(Sender: TObject);
    procedure edt_foneExit(Sender: TObject);
    procedure edt_codbairroExit(Sender: TObject);
    procedure edt_codcidadeExit(Sender: TObject);
    procedure edt_codcidadeKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure edt_conteudoChange(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure edt_codbairroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sindicato : Tfrm_sindicato;
  xOpc,
  mcodsid_ant  : Real;
  Sind_ori     : String;
  bbsdinc_true : Boolean = True;
  bbsdalt_true : Boolean = True;
  bbsdexc_true : Boolean = True;
  moper_sid    : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM2, S_DM4;

{$R *.dfm}

procedure Tfrm_sindicato.FormCreate(Sender: TObject);
begin
   Self.Caption := 'Manutenção Cadastro do Sindicato';

   cb_localizar.ItemIndex := 0;

   moper_sid    := 0;

   if flcadactab(0,0,IntToStr(codcar),'CADSIND') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbsdinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbsdalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbsdexc_true := False;
   end else begin
      bbsdinc_true:=true;
      bbsdalt_true:=true;
      bbsdexc_true:=true;
   end;

   btn_incluir.Enabled := bbsdinc_true;
   btn_alterar.Enabled := bbsdalt_true;
   btn_excluir.Enabled := bbsdexc_true;
   btn_cancelar.Enabled:= False; 
   btn_atualizarClick(self);
end;

procedure Tfrm_sindicato.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção Cadastro do Sindicato - [Inclusão]';
   DM6.Tb_Sind.Append;
   mcodsid_Ant  := DM6.Tb_SindSDCODSIND.AsFloat;
   mOper_sid    := 0;
   panel_edicao.enabled  :=true;
   edt_codsindicato.Enabled := True;
   edt_codsindicato.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure Tfrm_sindicato.btn_alterarClick(Sender: TObject);
begin
    Self.Caption := 'Manutenção Cadastro Sindicato - [Alteração]';

    if DM6.Tb_SindSDCODSIND.IsNull then begin
       Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
       Exit;
    end;

    DM6.Tb_Sind.Edit;
    mcodsid_Ant := DM6.Tb_SindSDCODSIND.AsFloat;
    panel_edicao.enabled := true;
    mOper_sid   := 1;
    edt_codsindicato.Enabled   := False;
    edt_nomesindicato.SetFocus;

    btn_incluir.Enabled  := False;
    btn_alterar.Enabled  := False;
    btn_excluir.Enabled  := False;
    btn_cancelar.Enabled := True;
    btn_gravar.Enabled   := True;
    Grid.Enabled         := False;
    btn_atualizar.Enabled:= false;
end;

procedure Tfrm_sindicato.btn_excluirClick(Sender: TObject);
begin
   if DM6.Tb_SindSDCODSIND.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
      FGerarAntes(9,'CADSIND','SDCODEMP',DM6.Tb_SindSDCODEMP.Asstring,
              'SDTCODNOV','SDTDATHOR','SDTCODUSR',
              'SDTSTATUS',['SDCODSIND'],[FloatToStr(DM6.Tb_SindSDCODSIND.AsFloat)]
              ,DM6.Tb_Sind);

      FAtualizaBanco(2,'CADSIND','SDCODEMP',DM6.Tb_SindSDCODEMP.AsString
                     ,['SDCODSIND'],[FloatToStr(DM6.Tb_SindSDCODSIND.AsFloat)]
                     ,DM6.Tb_Sind);
      DM6.Tb_Sind.Delete;
   end;
end;

procedure Tfrm_sindicato.btn_cancelarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção Cadastro do Sindicato';

   if (mOper_sid=0) and (btn_gravar.Enabled) then begin
       FAtualizaBanco(2,'CADSIND','SDCODEMP',DM6.Tb_SindSDCODEMP.AsString
       ,['SDCODSIND'],[FloatToStr(mcodsid_ant)]
       ,DM6.Tb_Sind);
   end;

   if DM6.Tb_Sind.State in [dsEdit,dsInsert] then
      DM6.Tb_Sind.Cancel;

   btn_incluir.Enabled  := bbsdinc_true;
   btn_alterar.Enabled  := bbsdalt_true;
   btn_excluir.Enabled  := bbsdexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   Grid.Enabled         := True;
   btn_atualizar.Enabled:= true;
   Panel_Edicao.Enabled := false;
   mOper_sid            := -1;
end;

procedure Tfrm_sindicato.btn_atualizarClick(Sender: TObject);
begin
   if btn_gravar.Enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
           mrYes : btn_gravar.Click;
      else
           btn_cancelar.Click;
      end;
   end;

   flCadSind(cb_localizar.ItemIndex,edt_conteudo.Text);
end;

procedure Tfrm_sindicato.btn_gravarClick(Sender: TObject);
begin
   if (DM6.Tb_SindSDCODSIND.Isnull) then begin
      fmensagem('Favor informar o Código do Sindicato!',0,['0'],0);
      edt_codsindicato.SetFocus;
      exit;
   end;

   if (DM6.Tb_SindSDNOME.Isnull) then begin
      fmensagem('Nome Invalido!',0,['0'],0);
      edt_nomesindicato.SetFocus;
      exit;
   end;

   DM6.Tb_Sind.Post;

   if moper_sid = 1 then begin
      FGerarAntes(8,'CADSIND','SDCODEMP',DM6.Tb_SindSDCODEMP.Asstring,
                  'SDTCODNOV','SDTDATHOR','SDTCODUSR',
                  'SDTSTATUS',['SDCODSIND'],[FloatToStr(mcodsid_Ant)]
                  ,DM6.Tb_Sind);

   end;

   FAtualizaBanco(1,'CADSIND','SDCODEMP',DM6.Tb_SindSDCODEMP.AsString
                  ,['SDCODSIND'],[FloatToStr(mcodsid_Ant)]
                  ,DM6.Tb_Sind);
   mOper_sid:=-1;
   btn_cancelarClick(self);
end;


procedure Tfrm_sindicato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_sindicato.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfrm_sindicato.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_sindicato.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrm_sindicato.edt_codsindicatoKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['0'..'9']) then
      Key := #0;
end;

procedure Tfrm_sindicato.edt_codsindicatoExit(Sender: TObject);
begin
   if btn_cancelar.Focused then begin
      DM6.Tb_SindSDCODSIND.Value := 0;
      Exit;
   end;

   if DM6.Tb_SindSDCODSIND.Isnull then
      Exit;

   if (mOPer_sid=0) and (DM6.Tb_SindSDCODSIND.AsFloat <> mCodsid_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select SDNOME from CADSIND '
                         +iif(DM1.Qr_Tid.Locate('TINOME','CADSIND',[]),'',' where SDCODEMP=0'+IntToStr(codemp)+' and ')
                        +' SDCODDEP=:CODDEP ');
      DM1.Query1.ParambyName('CODDEP').AsFloat := DM6.Tb_SindSDCODSind.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('SDNOME').AsString,0,['0'],0);
         edt_codsindicato.setFocus;
         exit;
      end;

   end;
end;

procedure Tfrm_sindicato.edt_cepExit(Sender: TObject);
begin
   if Trim(edt_cep.Text) <> '' then begin
      edt_cep.Text := MaskCep(edt_cep.text);
   end;
end;

procedure Tfrm_sindicato.edt_pfpjExit(Sender: TObject);
begin
   if Trim(edt_pfpj.Text) <> '' then begin
      edt_pfpj.Text := MaskCPFCNPJ(edt_pfpj.text);
   end;
end;

procedure Tfrm_sindicato.edt_foneExit(Sender: TObject);
begin
   if Trim(edt_fone.Text) <> '' then begin
      edt_fone.Text := MaskFone(edt_fone.Text);
   end;
end;

procedure Tfrm_sindicato.edt_codbairroExit(Sender: TObject);
begin
  if (tlb_sindicato.Focused) then
     exit;

  if not flcadbai(1,0,edt_codbairro.Text) then begin
     Fmensagem('Bairro não cadastrado.',0,['0'],0);
     edt_codbairro.SetFocus;
  end else begin
     edt_codbairro.Text  := FloatToStr(DM1.Tb_BaiBCODBAI.Value);
     edt_nomebairro.Text := DM1.Tb_BaiBNOME.Value;
  end;
end;

procedure Tfrm_sindicato.edt_codcidadeExit(Sender: TObject);
begin
  if tlb_sindicato.Focused then
     exit;

  if not flcadloc(1,0,edt_codcidade.Text) then begin
     Fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
     edt_codcidade.SetFocus;
  end else begin
     edt_codcidade.Text  := FloatToStr(DM1.Tb_LocLCODLOC.Value);
     edt_nomecidade.Text := DM1.Tb_LocLNOME.Value;
     edt_ufed.Text       := DM1.Tb_LocLUF.Value;
  end;
end;

procedure Tfrm_sindicato.edt_codcidadeKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      edt_codcidade.Text  := FloatToStr(ValFloat(fChamaLoc(0,'frm_sindicato',Key)));
      edt_nomecidade.Text := DM1.Tb_LocLNOME.Value;
      edt_ufed.Text       := DM1.Tb_LocLUF.Value;
      key:=#0;
   end;
end;

procedure Tfrm_sindicato.GridDblClick(Sender: TObject);
begin
if Sind_ori<>'' then
   begin
   ModalResult:=MrOk;
   Sind_ori:='';
   end;
end;

procedure Tfrm_sindicato.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

procedure Tfrm_sindicato.GridExit(Sender: TObject);
begin
   if Sind_ori <> '' then begin
      ModalResult:=MrOk;
      Sind_ori:='';
   end;        
end;

procedure Tfrm_sindicato.edt_codbairroKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      edt_codbairro.Text  := FloatToStr(ValFloat(fChamaBai(0,'frm_bairro',Key)));
      edt_nomebairro.Text := DM1.Tb_BaiBNOME.Value;
      key:=#0;
   end;
end;

end.
