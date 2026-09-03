unit S_Depen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  Tfrm_tipodependente = class(TForm)
    tlb_dependentes: TToolBar;
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
    edt_coddep: TDBEdit;
    edt_nome: TDBEdit;
    Grid: TDBGrid;
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
    procedure edt_codigodepenKeyPress(Sender: TObject; var Key: Char);
    procedure edt_conteudoChange(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edt_coddepExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tipodependente : Tfrm_tipodependente;
  xOpc,
  mcoddep_ant  : Real;
  Depen_ori    : String;
  bbtpinc_true : Boolean = True;
  bbtpalt_true : Boolean = True;
  bbtpexc_true : Boolean = True;
  moper_dep    : Integer;

implementation

uses Func, S_DM1, S_DM6, func_excecoes, lerarq, S_DM4;

{$R *.dfm}

procedure Tfrm_tipodependente.FormCreate(Sender: TObject);
begin
   Self.Caption := 'Manutenção de Tipo de Dependentes';

   cb_localizar.ItemIndex := 0;

   moper_dep    := 0;

   if flcadactab(0,0,IntToStr(codcar),'CADTDEP') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbtpinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbtpalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbtpexc_true := False;
   end else begin
      bbtpinc_true:=true;
      bbtpalt_true:=true;
      bbtpexc_true:=true;
   end;

   btn_incluir.Enabled := bbtpinc_true;
   btn_alterar.Enabled := bbtpalt_true;
   btn_excluir.Enabled := bbtpexc_true;
   btn_cancelar.Enabled:= False;

   cb_localizar.ItemIndex := 0;
   btn_atualizarClick(self);
end;

procedure Tfrm_tipodependente.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção de Tipo de Dependentes - [Inclusão]';
   DM6.Tb_Depen.Append;
   mcoddep_Ant  := DM6.Tb_DepenTDCODDEP.AsFloat;
   mOper_dep    := 0;
   panel_edicao.enabled  :=true;
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

procedure Tfrm_tipodependente.btn_alterarClick(Sender: TObject);
begin
    Self.Caption := 'Manutenção de Tipo Dependentes - [Alteração]';
    if DM6.Tb_DepenTDCODDEP.IsNull then begin
       Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
       Exit;
    end;

    DM6.Tb_Depen.Edit;
    mcoddep_Ant := DM6.Tb_DepenTDCODDEP.AsFloat;
    panel_edicao.enabled := true;
    mOper_dep   := 1;
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

procedure Tfrm_tipodependente.btn_excluirClick(Sender: TObject);
begin
   if DM6.Tb_DepenTDCODDEP.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
      FGerarAntes(9,'CADTDEP','TDCODEMP',DM6.Tb_DepenTDCODEMP.Asstring,
              'DPCODNOV','DPDATHOR','DPCODUSR',
              'DPSTATUS',['TDCODDEP'],[FloatToStr(DM6.Tb_DepenTDCODDEP.AsFloat)]
              ,DM6.Tb_Depen);

      FAtualizaBanco(2,'CADTDEP','TDCODEMP',DM6.Tb_DepenTDCODEMP.AsString
                     ,['TDCODDEP'],[FloatToStr(DM6.Tb_DepenTDCODDEP.AsFloat)]
                     ,DM6.Tb_Depen);
      DM6.Tb_Depen.Delete;
   end;
end;

procedure Tfrm_tipodependente.btn_cancelarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção de Tipo de Dependentes';

   if (mOper_dep=0) and (btn_gravar.Enabled) then begin
       FAtualizaBanco(2,'CADTDEP','TDCODEMP',DM6.Tb_DepenTDCODEMP.AsString
       ,['TDCODDEP'],[FloatToStr(mcoddep_ant)]
       ,DM6.Tb_Depen);
   end;

   if DM6.Tb_Depen.State in [dsEdit,dsInsert] then
      DM6.Tb_Depen.Cancel;

   btn_incluir.Enabled  := bbtpinc_true;
   btn_alterar.Enabled  := bbtpalt_true;
   btn_excluir.Enabled  := bbtpexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   Grid.Enabled         := True;
   btn_atualizar.Enabled:= true;
   Panel_Edicao.Enabled := false;
   mOper_dep            := -1;
end;

procedure Tfrm_tipodependente.btn_atualizarClick(Sender: TObject);
begin
   if btn_gravar.Enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
           mrYes : btn_gravar.Click;
      else
           btn_cancelar.Click;
      end;
   end;

  flCadTDepen(cb_localizar.ItemIndex,edt_conteudo.Text);
end;

procedure Tfrm_tipodependente.btn_gravarClick(Sender: TObject);
begin
   if (DM6.Tb_DepenTDCODDEP.Isnull) then begin
      fmensagem('Favor informar o Código do Dependente!',0,['0'],0);
      edt_coddep.SetFocus;
      exit;
   end;

   if (DM6.Tb_DepenTPDNOME.Isnull) then begin
      fmensagem('Nome Invalido!',0,['0'],0);
      edt_nome.SetFocus;
      exit;
   end;

   DM6.Tb_Depen.Post;

   if moper_dep = 1 then begin
      FGerarAntes(8,'CADTDEP','TDCODEMP',DM6.Tb_DepenTDCODEMP.Asstring,
                  'DPCODNOV','DPDATHOR','DPCODUSR',
                  'DPSTATUS',['TDCODDEP'],[FloatToStr(mcoddep_Ant)]
                  ,DM6.Tb_Depen);

   end;

   FAtualizaBanco(1,'CADTDEP','TDCODEMP',DM6.Tb_DepenTDCODEMP.AsString
                  ,['TDCODDEP'],[FloatToStr(mcoddep_Ant)]
                  ,DM6.Tb_Depen);
   mOper_dep:=-1;
   btn_cancelarClick(self);
end;

procedure Tfrm_tipodependente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_tipodependente.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_tipodependente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrm_tipodependente.edt_codigodepenKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['0'..'9']) then
      Key := #0;
end;

procedure Tfrm_tipodependente.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

procedure Tfrm_tipodependente.GridExit(Sender: TObject);
begin
   if Depen_ori <> '' then begin
      ModalResult := MrOk;
      Depen_ori   := '';
   end;
end;

procedure Tfrm_tipodependente.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfrm_tipodependente.edt_coddepExit(Sender: TObject);
begin
   if btn_cancelar.Focused then begin
      DM6.Tb_DepenTDCODDEP.Value := 0;
      Exit;
   end;

   if DM6.Tb_DepenTDCODDEP.Isnull then
      Exit;

   if (mOPer_DEP=0) and (DM6.Tb_DepenTDCODDEP.AsFloat <> mCoddep_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select TPDNOME from CADTDEP where '
                         +iif(DM1.Qr_Tid.Locate('TINOME','CADTDEP',[]),'',' TDCODEMP=0'+IntToStr(codemp)+' and ')
                        +' TDCODDEP=:CODDEP ');
      DM1.Query1.ParambyName('CODDEP').AsFloat := DM6.Tb_DepenTDCODDEP.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('TPDNOME').AsString,0,['0'],0);
         edt_coddep.setFocus;
         exit;
      end;

   end;

end;

end.
