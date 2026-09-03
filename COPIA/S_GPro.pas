unit S_GPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, ToolWin, ExtCtrls, StdCtrls, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, DB, DBCtrls;

type
  TFrm_GPro = class(TForm)
    tlb_grupo: TToolBar;
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
    Label5: TLabel;
    Grid: TDBGrid;
    edt_codgrupo: TDBEdit;
    edt_nome: TDBEdit;
    edt_abreviado: TDBEdit;
    edt_texto: TDBMemo;
    Label7: TLabel;
    Label4: TLabel;
    edt_comissao: TDBEdit;
    edt_desconto: TDBEdit;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure edt_codgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn_sairClick(Sender: TObject);
    procedure edt_codgrupoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spd_atucomisClick(Sender: TObject);
    procedure edt_nomegrupoExit(Sender: TObject);
    procedure edt_conteudoChange(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure edt_comissaoExit(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbEspecfClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Frm_GPro : TFrm_GPro;
  mcodgp_ant    : Real;
  bbgpalt_true  : Boolean=True;
  bbgpinc_true  : Boolean=True;
  bbgpexc_true  : Boolean=True;
  gpro_ori      : String;
  moper_gp      : Integer;

implementation

uses lerarq, S_DM6, S_DM1, func_excecoes, func, S_DM4, S_Agde,
  S_GPro_Espec;

{$R *.dfm}

procedure TFrm_GPro.FormCreate(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Grupo de Produtos';
   cb_localizar.ItemIndex := 0;

   moper_gp:=0;

   if flcadactab(0,0,IntToStr(codcar),'CADGRU') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbgpinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbgpalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbgpexc_true := False;
   end else begin
      bbgpinc_true:=true;
      bbgpalt_true:=true;
      bbgpexc_true:=true;
   end;

   btn_incluir.Enabled := bbgpinc_true;
   btn_alterar.Enabled := bbgpalt_true;
   btn_excluir.Enabled := bbgpexc_true;
//   btn_cancelar.Enabled:= False;
   
   btn_atualizarClick(self);
end;

procedure TFrm_GPro.btn_incluirClick(Sender: TObject);
begin
  inherited;
  Self.Caption := 'Manutenção no Grupo de Produtos - [Inclusão]';
  DM1.Tb_GPro.Append;
  mCodgp_Ant := DM1.Tb_GProGRCODGRU.AsFloat;
  DM1.Tb_GproGRDATHOR_INC.AsDateTime:=now;
  DM1.Tb_GproGRCODUSR_INC.AsFloat   :=codusr;

  DM1.Tb_GproGRDATHOR_ALT.AsDateTime:=now;
  DM1.Tb_GproGRCODUSR_ALT.AsFloat   :=codusr;

  mOper_gp   := 0;
  panel_edicao.enabled  :=true;
  edt_codgrupo.Enabled  :=True;
  edt_texto.Enabled     :=True;
  edt_codgrupo.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  Grid.Enabled         := False;
  btn_atualizar.Enabled:= false;
end;

procedure TFrm_GPro.edt_codgrupoKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then begin
      selectnext((sender as twincontrol), true, true);
      key := #0;
   end;

   if not (key in['0'..'9']) then
      Key := #0;
end;

procedure TFrm_GPro.btn_alterarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Grupo de Produtos - [Alteração]';

   if DM1.Tb_GProGRCODGRU.IsNull then begin
      Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
      Exit;
   end;

   DM1.Tb_GPro.Edit;
   mCodgp_Ant := DM1.Tb_GProGRCODGRU.AsFloat;
   DM1.Tb_GproGRDATHOR_ALT.AsDateTime:=now;
   DM1.Tb_GproGRCODUSR_ALT.AsFloat   :=codusr;
   panel_edicao.enabled:=true;
   mOper_gp   := 1;
   edt_codgrupo.Enabled   := False;
   edt_texto.Enabled      := True;
   edt_nome.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   Grid.Enabled         := False;
   btn_atualizar.Enabled:= false;
end;

procedure TFrm_GPro.btn_excluirClick(Sender: TObject);
begin
   if DM1.Tb_GProGRCODGRU.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
       FGerarAntes(9,'CADGRU','GRCODEMP',DM1.Tb_GProGRCODEMP.Asstring,
                  'GRCODNOV','GRDATHOR','GRCODUSR',
                  'GRSTATUS',['GRCODGRU'],[FloatToStr(DM1.Tb_GProGRCODGRU.AsFloat)]
                  ,DM1.Tb_GPro);
       FAtualizaBanco(2,'CADGRU','GRCODEMP',DM1.Tb_GProGRCODEMP.AsString
       ,['GRCODGRU'],[FloatToStr(DM1.Tb_GProGRCODGRU.AsFloat)]
       ,DM1.Tb_GPro);
       DM1.Tb_GPro.Delete;
   end;
end;

procedure TFrm_GPro.btn_cancelarClick(Sender: TObject);
begin
   Self.Caption := 'Manutenção no Grupo de Produtos';

   if (mOper_gp = 0) and (btn_gravar.Enabled) then begin
      FAtualizaBanco(2,'CADGRU','GRCODEMP',DM1.Tb_GProGRCODEMP.AsString
      ,['GRCODGRU'],[FloatToStr(mcodgp_ant)]
      ,DM1.Tb_GPro);
   end;

   if DM1.Tb_GPro.State in [dsEdit,dsInsert] then
      DM1.Tb_GPro.Cancel;

   btn_incluir.Enabled  := bbgpinc_true;
   btn_alterar.Enabled  := bbgpalt_true;
   btn_excluir.Enabled  := bbgpexc_true;
//   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   Grid.Enabled         := True;
   btn_atualizar.Enabled:= true;
   Panel_Edicao.Enabled := false;
   mOper_gp := -1;
end;

procedure TFrm_GPro.btn_atualizarClick(Sender: TObject);
begin
   if btn_gravar.Enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes : btn_gravar.Click;
      else
         btn_cancelar.Click;
      end;
   end;
   flcadGPro(cb_localizar.ItemIndex,1,edt_conteudo.Text);
end;

procedure TFrm_GPro.btn_gravarClick(Sender: TObject);
begin
   if (DM1.Tb_GProGRCODGRU.Isnull) then begin
      fmensagem('Favor informar o Código do Grupo de Produtos!',0,['0'],0);
      edt_codgrupo.SetFocus;
      exit;
   end;

   if (DM1.Tb_GProGRNOME.Isnull) then begin
      fmensagem('Nome Invalido!',0,['0'],0);
      edt_nome.SetFocus;
      exit;
   end;

  DM1.Tb_GproGRDATHOR_ALT.AsDateTime:=now;


   if moper_gp=1 then begin
      FGerarAntes(8,'CADGRU','GRCODEMP',DM1.Tb_GProGRCODEMP.Asstring,
                 'GRCODNOV','GRDATHOR','GRCODUSR',
                 'GRSTATUS',['GRCODGRU'],[FloatToStr(mCodgp_Ant)]
                 ,DM1.Tb_GPro);
   end;

  FAtualizaBanco(1,'CADGRU','GRCODEMP',DM1.Tb_GProGRCODEMP.AsString
  ,['GRCODGRU'],[FloatToStr(mCodgp_Ant)]
  ,DM1.Tb_GPro);
   DM1.Tb_GPro.Post;

  mOper_gp:=-1;
  btn_cancelarClick(self);
end;


procedure TFrm_GPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_GPro.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TFrm_GPro.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure TFrm_GPro.edt_codgrupoExit(Sender: TObject);
begin
   if btn_cancelar.Focused then begin
      DM1.Tb_GProGRCODGRU.Value := 0;
      Exit;
   end;

   if DM1.Tb_GProGRCODGRU.Isnull then
      Exit;

   if (mOPer_gp = 0) and (DM1.Tb_GProGRCODGRU.AsFloat <> mCodgp_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select GRNOME from CADGRU where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADGRU',[]),'',' GRCODEMP=0'+IntToStr(codemp)+' and ')
                        +' GRCODGRU=:CODGRU ');
      DM1.Query1.ParambyName('CODGRU').AsFloat := DM1.Tb_GProGRCODGRU.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('GRNOME').AsString,0,['0'],0);
         edt_codgrupo.setFocus;
         exit;
      end;

   end;
end;

procedure TFrm_GPro.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrm_GPro.spd_atucomisClick(Sender: TObject);
begin
   if fmensagem('Quer Realmente Atualizar a Comissão do Cadastro de Produtos?',0,['1','2'],2)=mryes then begin

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Sql.add('Update CADPRO set PDCOMIS=0'+mudavp(DM1.Tb_GproGRPERCCOMIS.AsString)
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                        +' PDCODGRU=0'+DM1.Tb_GproGRCODGRU.AsString
                        +' and PDCOMIS<>0'+mudavp(DM1.Tb_GproGRPERCCOMIS.AsString)
                        );

      try
        DM1.Query1.ExecSQL;
        fdm1StartCommit;
      except
        DM1.Query1.SQL.SaveToFile('C:\SQL.TXT');
      end;

      fmensagem('Produtos Atualizados!',0,['0'],0);
   end;
end;

procedure TFrm_GPro.edt_nomegrupoExit(Sender: TObject);
var
  x : Integer;
begin
{   if ((DM1.Tb_GproGRNOME.Value<>'_') or (trim(DM1.Tb_GproGRNOME.AsString)<>''))
       and (Trim(DM1.Tb_GproGRNOMEABREV.AsString)='') then begin

       //DM1.Tb_GproGRNOME.Value := DM1.Tb_GproGRNOME.Value[1];

       for x:=1 to Length(DM1.Tb_GproGRNOME.Value) do begin
           if (DM1.Tb_GproGRNOME.Value[x]=' ') and (length(DM1.Tb_GproGRNOME.Value)>x) then
               DM1.Tb_GproGRNOMEABREV.Value := DM1.Tb_GproGRNOMEABREV.Value+DM1.Tb_GproGRNOME.Value[x+1];
       end;

       if length(DM1.Tb_GproGRNOMEABREV.AsString) > 4 then
          DM1.Tb_GproGRNOMEABREV.Value:=copy(DM1.Tb_GproGRNOMEABREV.Value,1,4);
   end;}
end;

procedure TFrm_GPro.edt_conteudoChange(Sender: TObject);
begin
   btn_atualizarClick(self);
end;

procedure TFrm_GPro.GridDblClick(Sender: TObject);
begin
   if gpro_ori = '' then begin
      if not btn_incluir.Enabled = True then
         btn_incluir.SetFocus;
   end else begin
      ModalResult := MrOk;
      gpro_ori     := '';
   end;
end;

procedure TFrm_GPro.edt_comissaoExit(Sender: TObject);
begin
   if btn_incluir.Enabled = False then
      btn_gravar.SetFocus;
end;

procedure TFrm_GPro.GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if (key = 9) or (key = 27) then
   begin
   if gpro_ori <> '' then
      begin
      ModalResult := MrOk;
      gpro_ori     := '';
      end;
   end;
end;


procedure TFrm_GPro.bbEspecfClick(Sender: TObject);
begin
if (not DM1.Tb_Gpro.active) or (DM1.Tb_GproGRCODGRU.IsNull) then
   begin
   fmensagem('Favor Selecionar um Grupo de Produtos válido!',0,['0'],0);
   exit;
   end;

if Frm_GPro_Espec=nil then
   Application.CreateForm(TFrm_GPro_Espec, Frm_GPro_Espec);
Frm_GPro_Espec.Caption:='Especificação do Grupo de Produtos: '+DM1.Tb_GproGRNOME.AsString;
fAbrirTexto(DM1.Tb_GproGRCODEMP.AsFloat,DM1.Tb_GproGRCODGRU.AsFloat);
Frm_GPro_Espec.ShowModal;
Frm_GPro_Espec.Free;
Frm_GPro_Espec:=nil;

end;

end.
