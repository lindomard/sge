unit S_Ram;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_Ram = class(TForm)
    tlb_ramo: TToolBar;
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
    edt_codram: TDBEdit;
    edt_nome: TDBEdit;
    DBMemo1: TDBMemo;
    Label4: TLabel;
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
    procedure edt_codramExit(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_conteudoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ram : TFrm_Ram;
  mcodRam_Ant : Real;
  bbrinc_true : Boolean = True;
  bbralt_true : Boolean = True;
  bbrexc_true : Boolean = True;
  rpro_ori    : String;
  moper_ram   : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure TFrm_Ram.FormCreate(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Ramo/Sub-Grupos de Produtos';

cb_localizar.ItemIndex := 0;

moper_ram:=0;

   if flcadactab(0,0,IntToStr(codcar),'CADRAM') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbrinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbralt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbrexc_true := False;
    end else begin
       bbrinc_true := true;
       bbralt_true := true;
       bbrexc_true := true;
    end;

    btn_incluir.Enabled := bbrinc_true;
    btn_alterar.Enabled := bbralt_true;
    btn_excluir.Enabled := bbrexc_true;
    btn_cancelar.Enabled:= False;
    btn_atualizarClick(self);
end;

procedure TFrm_Ram.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de Ramo/Sub-Grupos de Produtos - [Inclusão]';
   DM1.Tb_Ram.Append;
   mCodRam_Ant := DM1.Tb_RamRCODRAM.AsFloat;
   DM1.Tb_RamRDATHOR_INC.Value:=now;
   DM1.Tb_RamRCODUSR_INC.Value:=codusr;

   DM1.Tb_RamRDATHOR_ALT.Value:=now;
   DM1.Tb_RamRCODUSR_ALT.Value:=codusr;

   mOper_Ram   := 0;
   panel_edicao.enabled  :=true;
   edt_codram.Enabled := True;
   edt_codram.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_Ram.btn_alterarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Ramo/Sub-Grupos de Produtos - [Alteração]';
 if DM1.Tb_RamRCODRAM.IsNull then
    begin
    Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
    Exit;
    end;

DM1.Tb_Ram.Edit;
mCodRam_Ant := DM1.Tb_RamRCODRAM.AsFloat;
DM1.Tb_RamRDATHOR_ALT.Value:=now;
DM1.Tb_RamRCODUSR_ALT.Value:=codusr;

panel_edicao.enabled:=true;
mOper_Ram    :=1;
edt_codram.Enabled   := False;
edt_nome.SetFocus;

btn_incluir.Enabled  := False;
btn_alterar.Enabled  := False;
btn_excluir.Enabled  := False;
btn_cancelar.Enabled := True;
btn_gravar.Enabled   := True;
Grid.Enabled         := False;
btn_atualizar.Enabled:= false;
end;

procedure TFrm_Ram.btn_excluirClick(Sender: TObject);
begin
if DM1.Tb_RamRCODRAM.IsNull then
   begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADRAM','RCODEMP',DM1.Tb_RamRCODEMP.Asstring,
              'RCODNOV','RDATHOR_ALTEXC','RCODUSR_ALTEXC',
              'RSTATUS',['RCODRAM'],[DM1.Tb_RamRCODRAM.AsString]
              ,DM1.Tb_Ram);
   FAtualizaBanco(2,'CADRAM','RCODEMP',DM1.Tb_RamRCODEMP.AsString
   ,['RCODRAM'],[DM1.Tb_RamRCODRAM.AsString]
    ,DM1.Tb_Ram);
   DM1.Tb_Ram.Delete;
   end;
end;

procedure TFrm_Ram.btn_cancelarClick(Sender: TObject);
begin
Self.Caption := 'Manutenção no Cadastro de Ramos/Sub-Grupos de Produtos';

if (mOper_ram=0) and (btn_gravar.Enabled) then
   begin
   FAtualizaBanco(2,'CADRAM','RCODEMP',DM1.Tb_RamRCODEMP.AsString
   ,['RCODRAM'],[FloatToStr(mcodRam_ant)]
    ,DM1.Tb_Ram);
   end;
if DM1.Tb_Ram.State in [dsEdit,dsInsert] then
   DM1.Tb_Ram.Cancel;
btn_incluir.Enabled  := bbrinc_true;
btn_alterar.Enabled  := bbralt_true;
btn_excluir.Enabled  := bbrexc_true;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
Grid.Enabled         := True;
btn_atualizar.Enabled:= true;
Panel_Edicao.Enabled := false;
mOper_ram:=-1;
end;

procedure TFrm_Ram.btn_atualizarClick(Sender: TObject);
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
   flcadram(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_Ram.btn_gravarClick(Sender: TObject);
begin
if (DM1.Tb_RamRCODRAM.IsNull) then
   begin
   fmensagem('Favor informar o Código!',0,['0'],0);
   edt_codram.SetFocus;
   Exit;
   end;
   
if (DM1.Tb_RamRNOME.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;

if moper_ram =1 then
   begin
   FGerarAntes(8,'CADRAM','RCODEMP',DM1.Tb_RamRCODEMP.Asstring,
              'RCODNOV','RDATHOR_ALTEXC','RCODUSR_ALTEXC',
              'RSTATUS',['RCODRAM'],[FloatToStr(mCodRam_Ant)]
              ,DM1.Tb_Ram);

   end;

FAtualizaBanco(1,'CADRAM','RCODEMP',DM1.Tb_RamRCODEMP.AsString
,['RCODRAM'],[FloatToStr(mCodRam_Ant)]
 ,DM1.Tb_Ram);

DM1.Tb_Ram.Post;

mOper_ram:=-1;
btn_cancelarClick(self);
end;

procedure TFrm_Ram.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Ram.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TFrm_Ram.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_Ram.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_Ram.GridDblClick(Sender: TObject);
begin
   if rpro_ori = '' then begin
      if not btn_incluir.Enabled = True then
         btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
      rpro_ori     := '';
   end;
end;

procedure TFrm_Ram.edt_codramExit(Sender: TObject);
begin
if btn_cancelar.Focused then begin
   DM1.Tb_RamRCODRAM.Value := 0;
   Exit;
end;

if DM1.Tb_RamRCODRAM.Isnull then
   Exit;

if (mOPer_ram = 0) and (DM1.Tb_RamRCODRAM.AsFloat <> mCodram_ant) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select RNOME from CADRAM where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADRAM',[]),'',' RCODEMP=0'+IntToStr(codemp)+' and ')
                     +' RCODRAM=:CODRAM ');
   DM1.Query1.ParambyName('CODRAM').AsFloat := DM1.Tb_RAMRCODRAM.AsFloat;
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('RNOME').AsString,0,['0'],0);
      edt_codram.setFocus;
      exit;
      end;
   end;
end;

procedure TFrm_Ram.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin       
    if (key = 9) or (key = 27) then begin
       if rpro_ori <> '' then begin
           ModalResult := MrOk;
           rpro_ori     := '';
       end;
    end;
end;

procedure TFrm_Ram.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

end.
