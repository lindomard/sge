unit S_Con;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,func, db, dbtables, S_DM1,lerarq,S_Bai, ToolWin;
type
  TFrm_Con = class(TFrm_C)
    Label2: TLabel;
    edt_codcon: TDBEdit;
    edt_nomecv: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    NOMBAIRRO: TDBEdit;
    Label10: TLabel;
    NOMCID: TDBEdit;
    Label11: TLabel;
    ESTADO: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    Label28: TLabel;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit21: TDBEdit;
    Label1: TLabel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    CODLOC: TDBEdit;
    CODBAI: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit3: TDBEdit;
    ToolBar1: TToolBar;
    btn_novo: TBitBtn;
    btn_alterar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_sair: TBitBtn;
    DBNavigator2: TDBNavigator;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure CODBAIExit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Con      : TFrm_Con;
  con_ori      : String;
  mCodcv_Ant   : Real;
  moper_cv     : Integer;

  bbccinc_true : Boolean = true;
  bbccalt_true : Boolean = true;
  bbccexc_true : Boolean = true;

implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_Con.FormCreate(Sender: TObject);
begin
  inherited;
  if DM1.Tb_PargerPCODLOC.Value=1 then begin
     CODLOC.Visible:=True;
     NOMCID.Enabled:=False;
     NOMCID.ParentColor:=True;
     NOMCID.Ctl3D:=True;
     ESTADO.Enabled:=False;
     ESTADO.ParentColor:=True;
     ESTADO.Ctl3D:=True;
  end else begin
     CODLOC.Visible:=False;
     NOMCID.Left:=136;
  end;
  if DM1.Tb_PargerPCODBAI.Value=1 then begin
     CODBAI.Visible:=True;
     NOMBAIRRO.Enabled:=False;
     NOMBAIRRO.ParentColor:=True;
     NOMBAIRRO.Ctl3D:=True;
  end else begin
     CODBAI.Visible:=False;
     NOMBAIRRO.Left:=460;
     NOMBAIRRO.Visible:=True;
  end;
if DBNavigator2.DataSource<>DM1.Src_CV then
   DBNavigator2.DataSource:=DM1.Src_CV;
if DBGrid1.DataSource<>DM1.Src_CV then
   DBGrid1.DataSource:=DM1.Src_CV;

  CAMPO.ItemIndex := 0;

  con_ori := '';
  moper_cv := 0;

  if flcadactab(0,0,IntToStr(codcar),'CADCV') then begin
     if DM4.Tb_AcTabAT_INC.Value=1 then
        bbccinc_true := False;
     if DM4.Tb_AcTabAT_ALT.Value=1 then
        bbccalt_true := False;
     if DM4.Tb_AcTabAT_EXC.Value=1 then
        bbccexc_true := False;
  end else begin
     bbccinc_true:=true;
     bbccalt_true:=true;
     bbccexc_true:=true;
  end;

  btn_novo.Enabled    := bbccinc_true;
  btn_alterar.Enabled := bbccalt_true;
  btn_excluir.Enabled := bbccexc_true;
  btn_cancelar.Enabled:= False;
  PC1.TabIndex        := 0;
  PC1.ActivePageIndex:=0;  
  BBnAtuClick(self);
end;

procedure TFrm_Con.INCLUIRClick(Sender: TObject);
begin
  inherited;
   Self.Caption := 'Manutenção no Cadastro de Convênios';
   DM1.Tb_CV.Append;
   mCodcv_Ant := DM1.Tb_CVCVCODCV.AsFloat;
   mOper_cv   :=0;
   edt_codcon.Enabled := True;
   edt_codcon.SetFocus;

   btn_novo.Enabled     := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   DBGrid1.Enabled      := False;
   DBNavigator2.Enabled := False;
   BBnAtu.Enabled:= false;
end;

procedure TFrm_Con.ALTERARClick(Sender: TObject);
begin
  inherited;
  Self.Caption := 'Manutenção no Cadastro de Convênios - [Alteração]';
  if DM1.Tb_CVCVCODCV.IsNull then begin
     Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
     Exit;
  end;

 DM1.Tb_Cv.Edit;
 mCodcv_Ant := DM1.Tb_CVCVCODCV.AsFloat;
 mOper_cv    :=1;
 edt_codcon.Enabled   := False;
 edt_nomecv.SetFocus;

 btn_novo.Enabled     := False;
 btn_alterar.Enabled  := False;
 btn_excluir.Enabled  := False;
 btn_cancelar.Enabled := True;
 btn_gravar.Enabled   := True;
 DBGrid1.Enabled      := False;
 DBNavigator2.Enabled := False;
 BBnAtu.Enabled:= false;
end;

procedure TFrm_Con.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if DM1.Tb_CVCVCODCV.IsNull then begin
     fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
     Exit;
  end;

  if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
     FGerarAntes(9,'CADCV','CVCODEMP',DM1.Tb_CVCVCODEMP.Asstring,
                   'CVCODNOV','CVDATHOR','CVCODUSR',
                   'CVSTATUS',['CVCODCV'],[DM1.Tb_CVCVCODCV.AsString]
                  ,DM1.Tb_Cv);
     FAtualizaBanco(2,'CADCV','CVCODEMP',DM1.Tb_CVCVCODEMP.AsString
                     ,['CVCODCV'],[DM1.Tb_CVCVCODCV.AsString]
                     ,DM1.Tb_Cv);
     DM1.Tb_Cv.Delete;
  end;
end;

procedure TFrm_Con.GRAVARClick(Sender: TObject);
begin
  inherited;

  if (DM1.Tb_CVCVRAZAO.Isnull) then begin
     fmensagem('Nome Invalido!',0,['0'],0);
     edt_nomecv.SetFocus;
     exit;
  end;

  if (DM1.Tb_CVCVCODCV.IsNull) then begin
     fmensagem('Código Invalido!',0,['0'],0);
     edt_codcon.SetFocus;
     exit;
  end;

  DM1.Tb_Cv.Post;

  if moper_cv = 1 then begin
     FGerarAntes(8,'CADCV','CVCODEMP',DM1.Tb_CVCVCODEMP.Asstring,
                 'CVCODNOV','CVDATHOR','CVCODUSR',
                 'CVSTATUS',['CVCODCV'],[FloatToStr(mCodcv_Ant)]
                 ,DM1.Tb_Cv);
   end;

   FAtualizaBanco(1,'CADCV','CVCODEMP',DM1.Tb_CVCVCODEMP.AsString
                  ,['CVCODCV'],[FloatToStr(mCodcv_Ant)]
                  ,DM1.Tb_Cv);
   mOper_cv := -1;
   CancelarClick(self);
end;

procedure TFrm_Con.CANCELARClick(Sender: TObject);
begin
  inherited;
   Self.Caption := 'Manutenção no Cadastro de Convênio';

   if (mOper_cv = 0) and (btn_gravar.Enabled) then begin
       FAtualizaBanco(2,'CADCV','CVCODEMP',DM1.Tb_CVCVCODEMP.AsString
                       ,['CVCODCV'],[FloatToStr(mcodcv_ant)]
                       ,DM1.Tb_Cv);
   end;

   if DM1.Tb_Cv.State in [dsEdit,dsInsert] then
      DM1.Tb_Cv.Cancel;

   btn_novo.Enabled     := bbccinc_true;
   btn_alterar.Enabled  := bbccalt_true;
   btn_excluir.Enabled  := bbccexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   DBGrid1.Enabled      := True;
   BBnAtu.Enabled       := true;
   DBNavigator2.Enabled := True;
   mOper_cv             := -1;
end;

procedure TFrm_Con.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if con_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   btn_alterar.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   con_ori := '';
   end;

end;

procedure TFrm_Con.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if con_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      btn_alterar.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      con_ori := '';
      end;
   abort;
   end;


end;

procedure TFrm_Con.BBnAtuClick(Sender: TObject);
begin
  inherited;
  if btn_gravar.Enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes : btn_gravar.Click;
     else
         btn_cancelar.Click;
     end;
   end;
   flcadcv(CAMPO.ItemIndex,EDIT1.Text);
end;

procedure TFrm_Con.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
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

procedure TFrm_Con.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM1.Tb_Cv.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CVCVCODLOC.Value:=ValFloat(fChamaLoc(0,'frm_Con',Key));
      DM1.Tb_CVCVCIDADE.Value:=DM1.Tb_LocLNOME.Value;
      DM1.Tb_CVCVUF.Value    :=DM1.Tb_LocLUF.Value;
      if trim(CODLOC.Text)<>'' then
         CODLOCExit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Con.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM1.Tb_Cv.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_CVCVCODBAI.Value:=ValFloat(fChamaBai(0,'frm_Con',Key));
      DM1.Tb_CVCVBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
      if trim(CODLOC.Text)<>'' then
         CODLOCExit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Con.CODLOCExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if not flcadloc(1,0,DM1.Tb_CvCVCODLOC.AsString) then
   begin
   fMensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   CODLOC.SetFocus;
   end
else
   begin
   DM1.Tb_CVCVCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
   DM1.Tb_CVCVCIDADE.Value:=DM1.Tb_LocLNOME.Value;
   DM1.Tb_CVCVUF.Value    :=DM1.Tb_LocLUF.Value;
   end;

end;

procedure TFrm_Con.CODBAIExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_CVCVCODBAI.Value=0) or (DM1.Tb_CVCVCODBAI.IsNull) then
   begin
   DM1.Tb_CVCVCODBAI.Value:=0;
   DM1.Tb_CVCVBAIRRO.Value:='';
   exit;
   end;

if (CANCELAR.Focused) then
   exit;
if not flcadbai(1,0,DM1.Tb_CVCVCODBAI.AsString) then
   begin
   fMensagem('Bairro não Cadastrada.',0,['0'],0);
   CODBAI.SetFocus;
   end
else
   begin
   DM1.Tb_CVCVCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
   DM1.Tb_CVCVBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
   end;

end;

procedure TFrm_Con.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHANGECV.Value=1 then
   begin
   If DM1.Tb_CV.State in [dsInsert, dsEdit] then
      begin
      Case fMensagem('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',0,['1','2','3'],0) of
         mrYes: GRAVAR.Click;
         mrNo : CANCELAR.Click;
         else CANCELAR.Click;
        end;
      end;
   flcadcv(CAMPO.ItemIndex,EDIT1.Text);
   end;

end;

procedure TFrm_Con.SAIRClick(Sender: TObject);
begin
  inherited;
  if con_ori = '' then close;
end;

procedure TFrm_Con.FormActivate(Sender: TObject);
begin
  inherited;
PC1.ActivePageIndex:=0;
end;

procedure TFrm_Con.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
  Action := caFree;
end;

end.
