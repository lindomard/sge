unit S_Bai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  Tfrm_bai = class(TForm)
    tlb_bairro: TToolBar;
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
    edt_codbairro: TDBEdit;
    edt_nome: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure edt_codbairroKeyPress(Sender: TObject; var Key: Char);
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
    procedure edt_conteudoChange(Sender: TObject);
    procedure edt_statusExit(Sender: TObject);
    procedure edt_codbairroExit(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure CarregaDados;
  public
    { Public declarations }
  end;

var
  frm_bai : Tfrm_bai;
  mcodbair_ant : Real;
  bbbrinc_true : Boolean = True;
  bbbralt_true : Boolean = True;
  bbbrexc_true : Boolean = True;
  bai_ori      : String;
  moper_bair   : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure Tfrm_bai.FormCreate(Sender: TObject);
begin
  Self.Caption := 'Manutenção no Cadastro de Bairros';
  cb_localizar.ItemIndex := 0;

  moper_bair := 0;

  if flcadactab(0,0,IntToStr(codcar),'CADBAI') then
     begin
     if DM4.Tb_AcTabAT_INC.Value=1 then
        bbbrinc_true := False;
     if DM4.Tb_AcTabAT_ALT.Value=1 then
        bbbralt_true := False;
     if DM4.Tb_AcTabAT_EXC.Value=1 then
        bbbrexc_true := False;
     end
  else
     begin
     bbbrinc_true:=true;
     bbbralt_true:=true;
     bbbrexc_true:=true;
     end;

  btn_incluir.Enabled := bbbrinc_true;
  btn_alterar.Enabled := bbbralt_true;
  btn_excluir.Enabled := bbbrexc_true;
  btn_cancelar.Enabled:= False;
  btn_atualizarClick(self);
end;

procedure Tfrm_bai.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Bairros - [Inclusão]';
   DM1.Tb_Bai.Append;
   mCodBair_Ant := DM1.Tb_BaiBCODBAI.AsFloat;
   DM1.Tb_BaiBDATHOR_INC.Value:=Now;
   DM1.Tb_BaiBCODUSR_INC.Value:=codusr;

   mOper_Bair   :=0;
   panel_edicao.enabled  :=true;
   edt_codbairro.Enabled := True;
   edt_codbairro.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure Tfrm_bai.edt_codbairroKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then begin
      selectnext((sender as twincontrol), true, true);
      key := #0;
   end;

   if not (key in['0'..'9']) then
      Key := #0;
end;

procedure Tfrm_bai.btn_alterarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Bairros - [Alteração]';

if DM1.Tb_BaiBCODBAI.IsNull then
   begin
   Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
   Exit;
   end;

DM1.Tb_Bai.Edit;
DM1.Tb_BaiBDATHOR_ALT.Value:=Now;
DM1.Tb_BaiBCODUSR_ALT.Value:=codusr;

mCodBair_Ant := DM1.Tb_BaiBCODBAI.AsFloat;
panel_edicao.enabled:=true;
mOper_Bair   :=1;
edt_codbairro.Enabled   := False;
edt_nome.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure Tfrm_bai.btn_excluirClick(Sender: TObject);
begin
   if DM1.Tb_BaiBCODBAI.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
      FGerarAntes(9,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.Asstring,
                 'BRCODNOV','BRDATHOR','BRCODUSR',
                 'BRSTATUS',['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
                 ,DM1.Tb_Bai);
      FAtualizaBanco(2,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[DM1.Tb_BaiBCODBAI.AsString]
      ,DM1.Tb_Bai);
      DM1.Tb_Bai.Delete;
   end;
end;

procedure Tfrm_bai.btn_cancelarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Bairros';

   if (mOper_Bair=0) and (btn_gravar.Enabled) then begin
       FAtualizaBanco(2,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
      ,['BCODBAI'],[FloatToStr(mcodBair_ant)]
      ,DM1.Tb_Bai);
   end;

   if DM1.Tb_Bai.State in [dsEdit,dsInsert] then
      DM1.Tb_Bai.Cancel;

   btn_incluir.Enabled  := bbbrinc_true;
   btn_alterar.Enabled  := bbbralt_true;
   btn_excluir.Enabled  := bbbrexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   Grid.Enabled         := True;
   btn_atualizar.Enabled:= true;
   Panel_Edicao.Enabled := false;
   mOper_Bair           := -1;
end;

procedure Tfrm_bai.btn_atualizarClick(Sender: TObject);
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
   flcadbai(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure Tfrm_bai.btn_gravarClick(Sender: TObject);
begin
   if (DM1.Tb_BaiBNOME.Isnull) then begin
      fmensagem('Nome Invalido!',0,['0'],0);
      edt_nome.SetFocus;
      exit;
   end;

   DM1.Tb_Bai.Post;

   if moper_Bair=1 then begin
      FGerarAntes(8,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.Asstring,
                 'BRCODNOV','BRDATHOR','BRCODUSR',
                 'BRSTATUS',['BCODBAI'],[FloatToStr(mCodBair_Ant)]
                 ,DM1.Tb_Bai);

   end;

{   FAtualizaBanco(1,'CADBAI','BCODEMP',DM1.Tb_BaiBCODEMP.AsString
   ,['BCODBAI'],[FloatToStr(mCodBair_Ant)]
   ,DM1.Tb_Bai);}
   mOper_bair := -1;
   btn_cancelarClick(self);
end;

procedure Tfrm_bai.CarregaDados;
begin
end;

procedure Tfrm_bai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_bai.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfrm_bai.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_bai.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrm_bai.GridDblClick(Sender: TObject);
begin
   if bai_ori = '' then begin
      if not btn_incluir.Enabled = True then
          btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
   end;
end;

procedure Tfrm_bai.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

procedure Tfrm_bai.edt_statusExit(Sender: TObject);
begin
   if not btn_incluir.Enabled then begin
      btn_gravar.SetFocus;
   end;
end;

procedure Tfrm_bai.edt_codbairroExit(Sender: TObject);
begin
   if btn_cancelar.Focused then begin
      DM1.Tb_BaiBCODBAI.Value := 0;
      Exit;
   end;

   if DM1.Tb_BaiBCODBAI.Isnull then
      Exit;

   if (mOPer_bair=0) and (DM1.Tb_BaiBCODBAI.AsFloat<>mcodbair_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select BNOME FROM CADBAI  '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADBAI',[]),'',' WHERE BCODEMP=0'+IntToStr(codemp)+' and ')
                        +' BCODBAI=:CODBAI ');
      DM1.Query1.ParambyName('CODBAI').AsFloat:=DM1.Tb_BaiBCODBAI.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('BNOME').AsString,0,['0'],0);
         edt_codbairro.setFocus;
         exit;
      end;
   end;
end;

procedure Tfrm_bai.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key<>9) and (key<>27) then
   begin
   if (key=115) and (shift=[ssalt]) then
   else
      begin
      if key=8 then
         edt_conteudo.Text:=copy(edt_conteudo.Text,1,length(edt_conteudo.Text)-1)
      else if (key=32) or (key>60) then
         edt_conteudo.Text:=edt_conteudo.Text+Char(key);
      end;
   end;

if (key=9) or (key=27) then
   begin
   if bai_ori<>'' then
      begin
      ModalResult:=MrOk;
      bai_ori:='';
      end;
   abort;
   end;

end;

end.
