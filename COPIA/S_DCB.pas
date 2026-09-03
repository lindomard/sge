unit S_DCB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  Tfrm_DCB = class(TForm)
    tlb_dcb: TToolBar;
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
    edt_coddcb: TDBEdit;
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
    procedure GridDblClick(Sender: TObject);
    procedure edt_conteudoChange(Sender: TObject);
    procedure edt_nomedcbExit(Sender: TObject);
    procedure GridExit(Sender: TObject);
    procedure edt_coddcbExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DCB : Tfrm_DCB;
  xOpc,
  mcoddcb_ant : String;
  moper       : Integer = 0;
  dcb_ori     : String;
  bbdcinc_true: Boolean = True;
  bbdcalt_true: Boolean = True;
  bbdcexc_true: Boolean = True;
  moper_dcb   : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4;

{$R *.dfm}

procedure Tfrm_DCB.FormCreate(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de DCB-(Denominções Comuns Brasileiras)-Genéricos';
   cb_localizar.ItemIndex := 0;

   moper_dcb    := 0;

   if flcadactab(0,0,IntToStr(codcar),'CADGEN') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbdcinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbdcalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbdcexc_true := False;
   end else begin
      bbdcinc_true:=true;
      bbdcalt_true:=true;
      bbdcexc_true:=true;
   end;

   btn_incluir.Enabled := bbdcinc_true;
   btn_alterar.Enabled := bbdcalt_true;
   btn_excluir.Enabled := bbdcexc_true;
   btn_cancelar.Enabled:= False;
   btn_atualizarClick(self);
end;

procedure Tfrm_DCB.btn_incluirClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de DCB-(Denominções Comuns Brasileiras)-Genéricos - [Inclusão]';
   DM1.Tb_Gen.Append;
   mCoddcb_Ant := DM1.Tb_GenCGCODDCB.AsString;
   mOper_dcb   := 0;
   panel_edicao.enabled  :=true;
   edt_coddcb.Enabled    := True;
   edt_coddcb.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure Tfrm_DCB.btn_alterarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de DCB-(Denominções Comuns Brasileiras)-Genéricos - [Alteração]';

   if DM1.Tb_GenCGCODDCB.IsNull then begin
      Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
      Exit;
   end;

   DM1.Tb_Gen.Edit;
   mCoddcb_Ant := DM1.Tb_GenCGCODDCB.AsString;
   panel_edicao.enabled:=true;
   mOper_dcb   := 1;
   edt_coddcb.Enabled   := False;
   edt_nome.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure Tfrm_DCB.btn_excluirClick(Sender: TObject);
begin
   if DM1.Tb_GenCGCODDCB.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
      FGerarAntes(9,'CADGEN','CGCODEMP',DM1.Tb_GenCGCODEMP.Asstring,
                 'CGCODNOV','CGDATHOR','CGCODUSR',
                 'CGSTATUS',['CGCODDCB'],[DM1.Tb_GenCGCODDCB.AsString]
                 ,DM1.Tb_Gen);
      FAtualizaBanco(2,'CADGEN','CGCODEMP',DM1.Tb_GenCGCODEMP.AsString
      ,['CGCODDCB'],[DM1.Tb_GenCGCODDCB.AsString]
      ,DM1.Tb_Gen);
      DM1.Tb_Gen.Delete;
   end;
end;

procedure Tfrm_DCB.btn_cancelarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Cadastro de DCB-(Denominções Comuns Brasileiras)-Genéricos';
   if (mOper_dcb = 0) and (btn_gravar.Enabled) then begin
       FAtualizaBanco(2,'CADGEN','CGCODEMP',DM1.Tb_GenCGCODEMP.AsString
       ,['CCCODCCU'],[mcoddcb_ant]
       ,DM1.Tb_Gen);
   end;

   if DM1.Tb_Gen.State in [dsEdit,dsInsert] then
      DM1.Tb_Gen.Cancel;

   btn_incluir.Enabled  := bbdcinc_true;
   btn_alterar.Enabled  := bbdcalt_true;
   btn_excluir.Enabled  := bbdcexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   Grid.Enabled         := True;
   btn_atualizar.Enabled:= true;
   Panel_Edicao.Enabled := false;
   mOper_dcb:=-1;
end;

procedure Tfrm_DCB.btn_atualizarClick(Sender: TObject);
begin
   if btn_gravar.Enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes : btn_gravar.Click;
      else
         btn_cancelar.Click;
     end;
   end;
   flcadgen(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure Tfrm_DCB.btn_gravarClick(Sender: TObject);
begin
   if (DM1.Tb_GenCGNOME.Isnull) then begin
       fmensagem('Nome Invalido!',0,['0'],0);
       edt_nome.SetFocus;
       exit;
   end;

   DM1.Tb_Gen.Post;

   if moper_dcb = 1 then begin
      FGerarAntes(8,'CADGEN','CGCODEMP',DM1.Tb_GenCGCODEMP.Asstring,
                 'CGCODNOV','CGDATHOR','CGCODUSR',
                 'CGSTATUS',['CGCODDCB'],[mcoddcb_ant]
                 ,DM1.Tb_Gen);

   end;

   FAtualizaBanco(1,'CADGEN','CGCODEMP',DM1.Tb_GenCGCODEMP.AsString
   ,['CGCODDCB'],[mCoddcb_Ant]
   ,DM1.Tb_Gen);
   mOper_dcb := -1;
   btn_cancelarClick(self);
end;

procedure Tfrm_DCB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_DCB.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfrm_DCB.btn_sairClick(Sender: TObject);
begin
  ModalResult:=mrOk;
  IF dcb_ori='' THEN
     close;
end;

procedure Tfrm_DCB.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrm_DCB.GridDblClick(Sender: TObject);
begin
if dcb_ori = '' then
   begin
   tlb_dcb.SetFocus;
   end
else
   begin
   ModalResult := MrOk;
   dcb_ori     := '';
   end;
end;

procedure Tfrm_DCB.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizar.Click;
end;

procedure Tfrm_DCB.edt_nomedcbExit(Sender: TObject);
begin
   if (not btn_incluir.Enabled) or (not btn_alterar.Enabled) then
      btn_gravar.Click;
end;

procedure Tfrm_DCB.GridExit(Sender: TObject);
begin
   if dcb_ori <> '' then begin
      ModalResult := MrOk;
      dcb_ori     := '';
   end;
end;

procedure Tfrm_DCB.edt_coddcbExit(Sender: TObject);
begin
   if btn_cancelar.Focused then begin
      DM1.Tb_GenCGCODDCB.Value := '';
      Exit;
   end;

   if DM1.Tb_GenCGCODDCB.Isnull then
      Exit;

   if (mOPer_dcb = 0) and (DM1.Tb_GenCGCODDCB.AsString <> mCoddcb_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select CGNOME from CADGEN where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADGEN',[]),'',' CGCODEMP=0'+IntToStr(codemp)+' and ')
                       +' CGCODDCB =:CODGEN ');
      DM1.Query1.ParambyName('CODGEN').AsString := DM1.Tb_GenCGCODDCB.AsString;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('CGNOME').AsString,0,['0'],0);
         edt_coddcb.setFocus;
         exit;
      end;

   end;
end;

end.
