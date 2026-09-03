unit S_NFE_Pais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_NFE_Pais = class(TForm)
    tlb_pais: TToolBar;
    Panel1: TPanel;
    Label1: TLabel;
    cb_localizar: TComboBox;
    edt_conteudo: TEdit;
    btn_atualizar: TBitBtn;
    Sr_Pais: TDataSource;
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
    edt_codpais: TDBEdit;
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
    procedure edt_codigopaisKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure edt_codpaisExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NFE_Pais : TFrm_NFE_Pais;
  mcodpais_ant : Real;
  bbpsinc_true : Boolean = True;
  bbpsalt_true : Boolean = True;
  bbpsexc_true : Boolean = True;
  pais_ori     : String;
  moper_pais   : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure TFrm_NFE_Pais.FormCreate(Sender: TObject);
begin
Self.Caption := 'Manutenção do Cadastro de Países';
cb_localizar.ItemIndex := 0;

moper_pais:=0;

if flcadactab(0,0,IntToStr(codcar),'NFE_CADPAIS') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbpsinc_true := False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbpsalt_true := False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbpsexc_true := False;
   end
else
   begin
   bbpsinc_true:=true;
   bbpsalt_true:=true;
   bbpsexc_true:=true;
   end;

btn_incluir.Enabled := bbpsinc_true;
btn_alterar.Enabled := bbpsalt_true;
btn_excluir.Enabled := bbpsexc_true;
btn_cancelar.Enabled:= False;
btn_atualizarClick(self);
end;

procedure TFrm_NFE_Pais.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Países - [Inclusão]';
   DM6.Tb_NFE_Pais.Append;
   mCodpais_Ant := DM6.Tb_NFE_PaisCPCODPAIS.AsFloat;
   mOper_pais   :=0;
   panel_edicao.enabled  :=true;
   edt_codpais.Enabled := True;
   edt_codpais.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_NFE_Pais.btn_alterarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção do Cadastro de Países - [Alteração]';

 if DM6.Tb_NFE_PaisCPCODPAIS.IsNull then
    begin
    Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
    Exit;
    end;

DM6.Tb_NFE_Pais.Edit;
mCodPais_Ant := DM6.Tb_NFE_PaisCPCODPAIS.AsFloat;
panel_edicao.enabled:=true;
mOper_pais    :=1;
edt_codpais.Enabled   := False;
edt_nome.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure TFrm_NFE_Pais.btn_excluirClick(Sender: TObject);
begin
if DM6.Tb_NFE_PaisCPCODPAIS.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'NFE_CADPAIS','','','CPCODNOV','CPDATAEVE','CPCODUSREVE',
              'CPSTATUS',['CPCODPAIS'],[FloatToStr(DM6.Tb_NFE_PaisCPCODPAIS.AsFloat)]
              ,DM6.Tb_NFE_Pais);
   FAtualizaBanco(2,'NFE_CADPAIS','','',['CPCODPAIS'],[FloatToStr(DM6.Tb_NFE_PaisCPCODPAIS.AsFloat)]
    ,DM6.Tb_NFE_Pais);
   DM6.Tb_NFE_Pais.Delete;
   end;
end;

procedure TFrm_NFE_Pais.btn_cancelarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção do Cadastro de Países';
if (mOper_pais=0) and (btn_gravar.Enabled) then
   begin
   FAtualizaBanco(2,'NFE_CADPAIS','','',['CPCODPAIS'],[FloatToStr(mcodpais_ant)],DM6.Tb_NFE_Pais);
   end;
if DM6.Tb_NFE_Pais.State in [dsEdit,dsInsert] then
   DM6.Tb_NFE_Pais.Cancel;
btn_incluir.Enabled  := bbpsinc_true;
btn_alterar.Enabled  := bbpsalt_true;
btn_excluir.Enabled  := bbpsexc_true;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
Grid.Enabled         := True;
btn_atualizar.Enabled:= true;
Panel_Edicao.Enabled := false;
mOper_pais:=-1;
end;

procedure TFrm_NFE_Pais.btn_atualizarClick(Sender: TObject);
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
   flNFECadPais(cb_localizar.ItemIndex,edt_conteudo.Text);
end;

procedure TFrm_NFE_Pais.btn_gravarClick(Sender: TObject);
begin
if (DM6.Tb_NFE_PaisCPNOMEPAIS.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;

DM6.Tb_NFE_Pais.Post;

if moper_pais=1 then
   begin
   FGerarAntes(8,'NFE_CADPAIS','','','CPCODNOV','CPDATAEVE','CPCODUSREVE',
              'CPSTATUS',['CPCODPAIS'],[FloatToStr(mCodpais_Ant)]
              ,DM6.Tb_NFE_Pais);

   end;
FAtualizaBanco(1,'NFE_CADPAIS','','',['CPCODPAIS'],[FloatToStr(mCodpais_Ant)],DM6.Tb_NFE_Pais);
mOper_pais:=-1;
btn_cancelarClick(self);
end;


procedure TFrm_NFE_Pais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_NFE_Pais.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TFrm_NFE_Pais.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_NFE_Pais.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_NFE_Pais.edt_codigopaisKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['0'..'9']) then
      Key := #0;
end;

procedure TFrm_NFE_Pais.GridDblClick(Sender: TObject);
begin
   if pais_ori = '' then begin
      if not btn_incluir.Enabled = True then
         btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
      //pais_ori     := '';
   end;
end;

procedure TFrm_NFE_Pais.GridExit(Sender: TObject);
begin
   if pais_ori <> '' then begin
      ModalResult := MrOk;
      pais_ori     := '';
   end;
end;

procedure TFrm_NFE_Pais.edt_codpaisExit(Sender: TObject);
begin
if btn_cancelar.Focused then begin
   DM6.Tb_NFE_PaisCPCODPAIS.Value := 0;
   Exit;
end;

if DM6.Tb_NFE_PaisCPCODPAIS.Isnull then
   Exit;

if (mOPer_pais=0) and (DM6.Tb_NFE_PaisCPCODPAIS.AsFloat<>mCodpais_ant) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CPNOMEPAIS from NFE_CADPAIS where CPCODPAIS=:CODPAIS ');
   DM1.Query1.ParambyName('CODPAIS').AsFloat:=DM6.Tb_NFE_PaisCPCODPAIS.AsFloat;
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('CPNOMEPAIS').AsString,0,['0'],0);
      edt_codpais.setFocus;
      exit;
      end;

   end;
end;

end.
