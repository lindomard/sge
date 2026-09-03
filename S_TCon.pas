unit S_TCon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  Tfrm_tcon = class(TForm)
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
    edt_codtcon: TDBEdit;
    edt_nome: TDBEdit;
    DBR_Controle: TDBRadioGroup;
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
    procedure edt_codtconExit(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_conteudoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tcon : Tfrm_tcon;
  mcodcon_ant : Real;
  bbtcinc_true: Boolean = True;
  bbtcalt_true: Boolean = True;
  bbtcexc_true: Boolean = True;
  tcon_ori    : String;
  moper_con   : Integer;

implementation

uses lerarq, S_DM1, func_excecoes, func, S_DM4, S_Stru;

{$R *.dfm}

procedure Tfrm_tcon.FormCreate(Sender: TObject);
begin
Self.Caption := 'Manutenção do Tipo de Controle de Produtos';

cb_localizar.ItemIndex := 0;

moper_con:=0;

if flcadactab(0,0,IntToStr(codcar),'CADCON') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbtcinc_true := False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbtcalt_true := False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbtcexc_true := False;
   end
else
   begin
   bbtcinc_true:=true;
   bbtcalt_true:=true;
   bbtcexc_true:=true;
   end;

btn_incluir.Enabled := bbtcinc_true;
btn_alterar.Enabled := bbtcalt_true;
btn_excluir.Enabled := bbtcexc_true;
btn_cancelar.Enabled:= False; 
btn_atualizarClick(self);
end;

procedure Tfrm_tcon.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção do Tipo de Controle de Produtos - [Inclusão]';
   DM1.Tb_TCon.Append;
   mCodCon_Ant := DM1.Tb_TConCCODCON.AsFloat;
   DM1.Tb_TConCRESTCON.Value  :=0;
   DM1.Tb_TconCDATHOR_INC.AsDateTime:=now;
   DM1.Tb_TconCCODUSR_INC.AsFloat   :=0;

   DBR_Controle.ItemIndex     :=0;
   mOper_con                  :=0;

   panel_edicao.enabled  :=true;
   edt_codtcon.Enabled := True;
   edt_codtcon.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure Tfrm_tcon.btn_alterarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção do Tipo de Controle de Produtos - [Alteração]';
 if DM1.Tb_TconCCODCON.IsNull then
    begin
    Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
    Exit;
    end;

DM1.Tb_TCon.Edit;
DM1.Tb_TconCDATHOR_ALT.AsDateTime:=now;
DM1.Tb_TconCCODUSR_ALT.AsFloat   :=0;
mCodCon_Ant := DM1.Tb_TConCCODCon.AsFloat;
panel_edicao.enabled:=true;
mOper_con    :=1;
edt_codtcon.Enabled   := False;
edt_nome.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure Tfrm_tcon.btn_excluirClick(Sender: TObject);
begin
if DM1.Tb_TconCCODCON.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADCON','CCODEMP',DM1.Tb_TconCCODEMP.Asstring,
              'CCODNOV','CDATHOR','CCODUSR',
              'CSTATUS',['CCODCON'],[DM1.Tb_TConCCODCON.AsString]
              ,DM1.Tb_TCon);
   FAtualizaBanco(2,'CADCON','CCODEMP',DM1.Tb_TConCCODEMP.AsString
   ,['CCODCON'],[FloatToStr(DM1.Tb_TConCCODCON.AsFloat)]
    ,DM1.Tb_TCon);
   DM1.Tb_TCon.Delete;
   end;
end;

procedure Tfrm_tcon.btn_cancelarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção do Tipo de Controle de Produtos';

if (mOper_con=0) and (btn_gravar.Enabled) then
   begin
   FAtualizaBanco(2,'CADCON','CCODEMP',DM1.Tb_TConCCODEMP.AsString
   ,['CCODCON'],[FloatToStr(mcodcon_ant)]
    ,DM1.Tb_TCon);
   end;
if DM1.Tb_TCon.State in [dsEdit,dsInsert] then
   DM1.Tb_TCon.Cancel;
btn_incluir.Enabled  := bbtcinc_true;
btn_alterar.Enabled  := bbtcalt_true;
btn_excluir.Enabled  := bbtcexc_true;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
Grid.Enabled         := True;
btn_atualizar.Enabled:= true;
Panel_Edicao.Enabled := false;
mOper_con:=-1;
end;

procedure Tfrm_tcon.btn_atualizarClick(Sender: TObject);
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
   flcadtcon(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure Tfrm_tcon.btn_gravarClick(Sender: TObject);
begin
if (DM1.Tb_TConCNOME.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;

DM1.Tb_TCon.Post;

if moper_con=1 then
   begin
   FGerarAntes(8,'CADCON','CCODEMP',DM1.Tb_TconCCODEMP.Asstring,
              'CCODNOV','CDATHOR','CCODUSR',
              'CSTATUS',['CCODCON'],[FloatToStr(mCodCon_Ant)]
              ,DM1.Tb_TCon);

   end;

FAtualizaBanco(1,'CADCON','CCODEMP',DM1.Tb_TConCCODEMP.AsString
,['CCODCON'],[FloatToStr(mCodCon_Ant)]
 ,DM1.Tb_TCon);
mOper_con:=-1;
btn_cancelarClick(self);
end;

procedure Tfrm_tcon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_tcon.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfrm_tcon.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_tcon.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

if pTcAtalho_me<>0 then
   begin
   if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
      begin
      if DBR_Controle.Visible then
         DBR_Controle.Visible:=false
      else
         DBR_Controle.Visible:=true;
      end;   
   end;
end;

procedure Tfrm_tcon.GridDblClick(Sender: TObject);
begin
   if tcon_ori = '' then begin
      if not btn_incluir.Enabled = True then
          btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
   end;
end;

procedure Tfrm_tcon.edt_codtconExit(Sender: TObject);
begin
if btn_cancelar.Focused then begin
   DM1.Tb_TConCCODCON.Value := 0;
   Exit;
end;

if DM1.Tb_TConCCODCON.Isnull then
   Exit;

if (mOPer_con=0) and (DM1.Tb_TConCCODCon.AsFloat<>mCodcon_ant) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CNOME from CADCON where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCON',[]),'',' CCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CCODCON=:CODCON ');
   DM1.Query1.ParambyName('CODCON').AsFloat:=DM1.Tb_TConCCODCON.AsFloat;
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('CNOME').AsString,0,['0'],0);
      edt_codtcon.setFocus;
      exit;
      end;

   end;
end;

procedure Tfrm_tcon.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = 9) or (key = 27) then begin
      if tcon_ori <> '' then begin
         ModalResult := MrOk;
         tcon_ori := '';
      end;
   end;
end;

procedure Tfrm_tcon.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

end.
