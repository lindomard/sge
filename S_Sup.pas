unit S_Sup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, StdCtrls, ComCtrls, Buttons, ExtCtrls,db,dbtables,S_DM1,func,
  Grids, DBGrids, DBCtrls, Mask,lerarq,S_Bai, ToolWin;

type
  TFrm_Sup = class(TFrm_C)
    Label1: TLabel;
    Label2: TLabel;
    edt_nome: TDBEdit;
    edt_codsup: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    NOMBAI: TDBEdit;
    Label8: TLabel;
    NOMLOC: TDBEdit;
    ESTADO: TDBEdit;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    tab_ad: TTabSheet;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Label30: TLabel;
    DBEdit29: TDBEdit;
    Label32: TLabel;
    DBEdit31: TDBEdit;
    Label34: TLabel;
    DBEdit33: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    Label33: TLabel;
    DBEdit32: TDBEdit;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    CODBAI: TDBEdit;
    CODLOC: TDBEdit;
    ToolBar1: TToolBar;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_gravar: TBitBtn;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    bbProxima: TBitBtn;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure EXCLUIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_codsupExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODBAIExit(Sender: TObject);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbProximaClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Frm_Sup    : TFrm_Sup;
  sup_ori    : String;
  mCodsp_ant : Real;
  moper_sp   : Integer;
implementation

uses S_DM4;

{$R *.dfm}


procedure TFrm_Sup.INCLUIRClick(Sender: TObject);
begin
  inherited;

  Self.Caption     := 'Manutenção no Cadastro de Supervisores - [Inclusão]';
  Tab_ad.Enabled   := True;
  DM1.Tb_Sup.Append;
  mCodsp_Ant       := DM1.Tb_SupSCODSUP.AsFloat;
  DM1.Tb_SupSDATHOR_INC.AsDateTime:=now;
  DM1.Tb_SupSCODUSR_INC.AsFloat   :=codusr;


  mOper_sp         := 0;
  edt_codsup.Enabled := True;
  edt_codsup.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  BBnAtu.Enabled       := false;
  DBGrid1.Enabled      := False;
  DBNavigator2.Enabled := False;
end;

procedure TFrm_Sup.ALTERARClick(Sender: TObject);
begin
   inherited;
   if DM1.Tb_SupSCODSUP.IsNull then begin
      Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
      Exit;
   end;

   Self.Caption := 'Manutenção no Cadastro de Supervisores - [Alteração]';

   DM1.Tb_Sup.Edit;
   mCodsp_Ant := DM1.Tb_SupSCODSUP.AsFloat;
   DM1.Tb_SupSCODUSR_ALT.AsFloat   :=codusr;
   mOper_sp   := 1;
   edt_codsup.Enabled   := False;
   edt_nome.SetFocus;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   DBGrid1.Enabled      := False;
   DBNavigator2.Enabled := False;
   BBnAtu.Enabled:= false;
end;

procedure TFrm_Sup.CANCELARClick(Sender: TObject);
begin
   inherited;
Self.Caption := 'Manutenção no Cadastro de Supervisores';

if DM1.Tb_Sup.State in [dsEdit,dsInsert] then
   DM1.Tb_Sup.Cancel;

btn_incluir.Enabled  := bbinc_true;
btn_alterar.Enabled  := bbalt_true;
btn_excluir.Enabled  := bbexc_true;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
DBGrid1.Enabled      := True;
DBNavigator2.Enabled := True;
BBnAtu.Enabled:= true;
mOper_sp := -1;
end;

procedure TFrm_Sup.GRAVARClick(Sender: TObject);
begin
inherited;
if (DM1.Tb_SupSCODSUP.IsNull) then
  begin
  fmensagem('Favor informar o Código do Supervisor!',0,['0'],0);
  edt_codsup.SetFocus;
  Exit;
  end;
if (DM1.Tb_SupSNOME.Isnull) then
  begin
  fmensagem('Nome Invalido!',0,['0'],0);
  edt_nome.SetFocus;
  exit;
  end;
DM1.Tb_SupSDATHOR_ALT.AsDateTime:=now;
if moper_sp=1 then
  begin
  FGerarAntes(8,'CADSUP','SCODEMP',DM1.Tb_SupSCODEMP.Asstring,'SPCODNOV','SPDATHOR','SPCODUSR',
                 'SPSTATUS',['SCODSUP'],[FloatToStr(mCodsp_Ant)]
                 ,DM1.Tb_Sup);
  end;
DM1.Tb_Sup.Post;

Self.Caption := 'Manutenção no Cadastro de Supervisores';


btn_incluir.Enabled  := bbinc_true;
btn_alterar.Enabled  := bbalt_true;
btn_excluir.Enabled  := bbexc_true;
btn_cancelar.Enabled := False;
btn_gravar.Enabled   := False;
DBGrid1.Enabled      := True;
DBNavigator2.Enabled := True;
BBnAtu.Enabled:= true;
mOper_sp:=-1;

end;

procedure TFrm_Sup.BBnAtuClick(Sender: TObject);
begin
  inherited;
  if btn_gravar.Enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
        mrYes : gravar.Click;
     else
        cancelar.Click;
     end;
  end;
  flcadsup(CAMPO.ItemIndex,1,Edit1.Text);
end;

procedure TFrm_Sup.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
   if btn_gravar.enabled then begin
      Case fmensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes: gravar.Click;
         mrNo : cancelar.Click;
      else
         CanClose := False;
      end;
   end;
end;

procedure TFrm_Sup.EXCLUIRClick(Sender: TObject);
begin
   inherited;
   if DM1.Tb_SupSCODSUP.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
       FGerarAntes(9,'CADSUP','SCODEMP',DM1.Tb_SupSCODEMP.Asstring,
                  'SPCODNOV','SPDATHOR','SPCODUSR',
                  'SPSTATUS',['SCODSUP'],[FloatToStr(DM1.Tb_SupSCODSUP.AsFloat)]
                  ,DM1.Tb_Sup);
       FAtualizaBanco(2,'CADSUP','SCODEMP',DM1.Tb_SupSCODSUP.AsString
       ,['SCODSUP'],[FloatToStr(DM1.Tb_SupSCODSUP.AsFloat)]
       ,DM1.Tb_Sup);
       DM1.Tb_Sup.Delete;
   end;
end;

procedure TFrm_Sup.FormCreate(Sender: TObject);
begin
  inherited;
   if DM1.Tb_PargerPCODLOC.Value=1 then begin
      CODLOC.Visible:=True;
      NOMLOC.Enabled:=False;
      NOMLOC.ParentColor:=True;
      NOMLOC.Ctl3D:=True;
      ESTADO.Enabled:=False;
      ESTADO.ParentColor:=True;
      ESTADO.Ctl3D:=True;
   end else begin
      CODLOC.Visible:=False;
      NOMLOC.Left:=4;
   end;

   if DM1.Tb_PargerPCODBAI.Value=1 then begin
      CODBAI.Visible:=True;
      NOMBAI.Enabled:=False;
      NOMBAI.ParentColor:=True;
      NOMBAI.Ctl3D:=True;
   end else begin
      CODBAI.Visible:=False;
      NOMBAI.Left:=4;
      NOMBAI.Visible:=True;
   end;

   Self.Caption := 'Manutenção no Cadastro de Supervisores';
   Campo.ItemIndex := 0;

   moper_sp := 0;

   if flcadactab(0,0,IntToStr(codcar),'CADSUP') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbexc_true := False;
   end else begin
      bbinc_true:=true;
      bbalt_true:=true;
      bbexc_true:=true;
   end;

   btn_incluir.Enabled := bbinc_true;
   btn_alterar.Enabled := bbalt_true;
   btn_excluir.Enabled := bbexc_true;
   btn_cancelar.Enabled:= False;

   BBnAtuClick(self);
end;

procedure TFrm_Sup.edt_codsupExit(Sender: TObject);
begin
   inherited;
   if btn_cancelar.Focused then begin
      DM1.Tb_SupSCODSUP.Value := 0;
      Exit;
   end;

   if DM1.Tb_SupSCODSUP.Isnull then
      Exit;

   if (mOPer_sp = 0) and (DM1.Tb_SupSCODSUP.AsFloat <> mCodsp_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select SNOME from CADSUP  '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADSUP',[]),'',' where SCODEMP=0'+IntToStr(codemp)+' and ')
                        +' SCODSUP=:CODSUP ');
      DM1.Query1.ParambyName('CODSUP').AsFloat := DM1.Tb_SupSCODSUP.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('SNOME').AsString,0,['0'],0);
         edt_codsup.setFocus;
         exit;
      end;

   end;
end;

procedure TFrm_Sup.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if Sup_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   sup_ori := '';
   end;


end;

procedure TFrm_Sup.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if Sup_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      sup_ori := '';
      end;
   abort;
   end;


end;

procedure TFrm_Sup.CODBAIExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_SupSCODBAI.Value=0) or (DM1.Tb_SupSCODBAI.IsNull) then
   begin
   DM1.Tb_SupSCODBAI.Value:=0;
   DM1.Tb_SupSBAIRRO.Value:='';
   exit;
   end;

if (CANCELAR.Focused) then
   exit;
if not flcadbai(1,0,DM1.Tb_SupSCODBAI.AsString) then
   begin
   MessageDlg('Bairro não Cadastrada.',mtWarning,[mbOk],0);
   CODBAI.SetFocus;
   end
else
   begin
   DM1.Tb_SupSCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
   DM1.Tb_SupSBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
   end;


end;

procedure TFrm_Sup.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM1.Tb_Sup.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_SupSCODBAI.Value:=ValFloat(fChamaBai(0,'frm_Sup',Key));
      DM1.Tb_SupSBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
      if trim(CODBAI.Text)<>'' then
          CODBAIExit(Self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_Sup.CODLOCExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if not flcadloc(1,0,DM1.Tb_SupSCODLOC.AsString) then
   begin
   MessageDlg('Localidade/Cidade não Cadastrada.',mtWarning,[mbOk],0);
   CODLOC.SetFocus;
   end
else
   begin
   DM1.Tb_SupSCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
   DM1.Tb_SupSCIDADE.Value:=DM1.Tb_LocLNOME.Value;
   DM1.Tb_SupSUF.Value    :=DM1.Tb_LocLUF.Value;
   end;


end;

procedure TFrm_Sup.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM1.Tb_Sup.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_SupSCODLOC.Value:=ValFloat(fChamaLoc(0,'frm_Sup',Key));
      DM1.Tb_SupSCIDADE.Value:=DM1.Tb_LocLNOME.Value;
      DM1.Tb_SupSUF.Value    :=DM1.Tb_LocLUF.Value;
      if trim(CODLOC.Text)<>'' then
          CODLOCExit(Self);
      key:=#0;
      end;
   end;



end;

procedure TFrm_Sup.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key<>#8) and not (fvertam(DBEdit15.Text,14)) then
   key:=#0;
end;

procedure TFrm_Sup.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key<>#8) and not (fvertam(DBMemo1.Text,600)) then
   key:=#0;
end;

procedure TFrm_Sup.DBEdit15Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_SupSCPF.Value:=fsonumero(DM1.Tb_SupSCPF.AsString);
end;

procedure TFrm_Sup.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHANGESUP.Value=1 then
   begin
   If DM1.Tb_Sup.State in [dsInsert, dsEdit] then
      begin
      Case MessageDlg('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
         mrYes: GRAVAR.Click;
         else CANCELAR.Click;
         end;
      end;
   if CAMPO.ItemIndex=1 then
      Edit1.Text:=fDeixanum2(edit1.Text);
   flcadsup(CAMPO.ItemIndex,1,Edit1.Text);
   end;

end;

procedure TFrm_Sup.SAIRClick(Sender: TObject);
begin
  inherited;
  if sup_ori = '' then close;
end;

procedure TFrm_Sup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Sup.bbProximaClick(Sender: TObject);
begin
  inherited;
  if (not btn_incluir.Enabled) and (not btn_alterar.Enabled) then begin
     PC1.ActivePage := tab_ad;
     DBEdit17.SetFocus;
  end;
end;

end.
