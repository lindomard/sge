unit S_Ven;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func,S_DM1, S_C, DBCtrls, StdCtrls, Grids, DBGrids,
  ComCtrls, Mask, Buttons, ExtCtrls,S_Sup,lerarq,S_Bai,S_DM6, ToolWin;

type
  TFrm_Ven = class(TFrm_C)
    Label1: TLabel;
    edt_codven: TDBEdit;
    Label2: TLabel;
    edt_nome: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    CODBAI: TDBEdit;
    Label8: TLabel;
    NOMLOC: TDBEdit;
    ESTADO: TDBEdit;
    Label3: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label38: TLabel;
    DBEdit37: TDBEdit;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    Label36: TLabel;
    DBE_codsup: TDBEdit;
    Label37: TLabel;
    DBE_nomsup: TDBEdit;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    Tab_Ad: TTabSheet;
    NOMBAI: TDBEdit;
    CODLOC: TDBEdit;
    GroupBox1: TGroupBox;
    HeaderControl1: THeaderControl;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    GB_Bancarias: TGroupBox;
    HeaderControl2: THeaderControl;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit38: TDBEdit;
    gb_comerciais: TGroupBox;
    HeaderControl3: THeaderControl;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    bbBloqueios: TBitBtn;
    Label5: TLabel;
    DBE_codreg: TDBEdit;
    DBE_nomreg: TDBEdit;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    ToolBar1: TToolBar;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_gravar: TBitBtn;
    btn_bloqueio: TBitBtn;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    bbProxima: TBitBtn;
    Label165: TLabel;
    DBCb_pedele_pcopad: TDBComboBox;
    Label166: TLabel;
    dbe_acres: TDBEdit;
    Label152: TLabel;
    edt_senha: TEdit;
    bbMostrar: TBitBtn;
    DBCB_PEDELE_BLOQ: TDBCheckBox;
    GroupBox4: TGroupBox;
    DBMemo2: TDBMemo;
    tsAdicionais: TTabSheet;
    DBCB_VSUPERVISOR: TDBCheckBox;
    gb_codven_grupo: TGroupBox;
    Tb_Ven_Grupo: TQuery;
    Tb_Ven_GrupoVCODEMP: TFloatField;
    Tb_Ven_GrupoVCODVEN: TFloatField;
    Tb_Ven_GrupoVNOME: TStringField;
    Tb_Ven_GrupoVTPLOG: TStringField;
    Tb_Ven_GrupoVLOG: TStringField;
    Tb_Ven_GrupoVNUM: TStringField;
    Tb_Ven_GrupoVCOMPL: TStringField;
    Tb_Ven_GrupoVCODBAI: TFloatField;
    Tb_Ven_GrupoVCODLOC: TFloatField;
    Tb_Ven_GrupoVCEP: TStringField;
    Tb_Ven_GrupoVCELULAR: TStringField;
    Tb_Ven_GrupoVFONERES: TStringField;
    Tb_Ven_GrupoVFONECOM: TStringField;
    Tb_Ven_GrupoVDTCAD: TDateTimeField;
    Tb_Ven_GrupoVRG: TStringField;
    Tb_Ven_GrupoVCPF: TFloatField;
    Tb_Ven_GrupoVPONTOR: TStringField;
    Tb_Ven_GrupoVREFP01: TStringField;
    Tb_Ven_GrupoVFREFP1: TStringField;
    Tb_Ven_GrupoVREFP02: TStringField;
    Tb_Ven_GrupoVFREFP2: TStringField;
    Tb_Ven_GrupoVREFP03: TStringField;
    Tb_Ven_GrupoVFREFP3: TStringField;
    Tb_Ven_GrupoVREFB01: TStringField;
    Tb_Ven_GrupoVFREFB1: TStringField;
    Tb_Ven_GrupoVREFB02: TStringField;
    Tb_Ven_GrupoVFREFB2: TStringField;
    Tb_Ven_GrupoVREFB03: TStringField;
    Tb_Ven_GrupoVFREFB3: TStringField;
    Tb_Ven_GrupoVREFC01: TStringField;
    Tb_Ven_GrupoVFREFC1: TStringField;
    Tb_Ven_GrupoVREFC02: TStringField;
    Tb_Ven_GrupoVFREFC2: TStringField;
    Tb_Ven_GrupoVREFC03: TStringField;
    Tb_Ven_GrupoVFREFC3: TStringField;
    Tb_Ven_GrupoVOBS: TMemoField;
    Tb_Ven_Gruponomloc: TStringField;
    Tb_Ven_Gruponombai: TStringField;
    Tb_Ven_GrupoVBAIRRO: TStringField;
    Tb_Ven_GrupoVCIDADE: TStringField;
    Tb_Ven_GrupoVUF: TStringField;
    Tb_Ven_GrupoVSTATUS: TFloatField;
    Tb_Ven_GrupoVCODSUP: TFloatField;
    Tb_Ven_GrupoVCOMIS: TFloatField;
    Tb_Ven_Gruponomsup: TStringField;
    Tb_Ven_GrupoVEMAIL: TStringField;
    Tb_Ven_GrupoVCODREG: TFloatField;
    Tb_Ven_Gruponomreg: TStringField;
    Tb_Ven_Grupoacrereg: TFloatField;
    Tb_Ven_Grupodescreg: TFloatField;
    Tb_Ven_GrupoVDM_PCOEXTRA: TFloatField;
    Tb_Ven_GrupoVDM_DESCMAXITEM: TFloatField;
    Tb_Ven_GrupoVDM_ACREMAXITEM: TFloatField;
    Tb_Ven_GrupoVCODUSR_INC: TFloatField;
    Tb_Ven_GrupoVDATHOR_ALT: TDateTimeField;
    Tb_Ven_GrupoVCODUSR_ALT: TFloatField;
    Tb_Ven_GrupoVDATHOR_REP: TDateTimeField;
    Tb_Ven_GrupoVPEDELE_SENHA: TStringField;
    Tb_Ven_GrupoVPEDELE_AJUSTE_PRECO: TFloatField;
    Tb_Ven_GrupoVPEDELE_PRECO_PADRAO: TStringField;
    Tb_Ven_GrupoVPEDELE_BLOQUEIO: TStringField;
    Tb_Ven_GrupoVPEDELE_MOT_BLOQUEIO: TMemoField;
    Tb_Ven_GrupoVFCIA_POPULAR_SENHA: TStringField;
    Tb_Ven_GrupoVFCIA_POPULAR_USUARIO: TStringField;
    Tb_Ven_GrupoVGERENTE: TStringField;
    Tb_Ven_GrupoVSUPERVISOR: TStringField;
    U_Ven_Grupo: TUpdateSQL;
    Src_Ven_Grupo: TDataSource;
    DBCB_VGERENTE: TDBCheckBox;
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codvenExit(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBE_codsupExit(Sender: TObject);
    procedure DBE_codsupKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CODBAIExit(Sender: TObject);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit37Exit(Sender: TObject);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure bbBloqueiosClick(Sender: TObject);
    procedure DBE_codregKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_codregExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbProximaClick(Sender: TObject);
    procedure bbMostrarClick(Sender: TObject);
  private
    { Private declarations }
   function fVen01lerant(ptipo: Integer):Boolean;

  public
    { Public declarations }
  end;
function fVen01gant(ptipo: Integer): Boolean;

var
  Frm_Ven   : TFrm_Ven;
  ven_ori   : String;
  mOper_vd  : Integer;
  mcod_ant  : Real;
implementation

uses S_DM4, S_VendaBloqueada_Relacao, S_Regiao;

{$R *.dfm}

procedure TFrm_Ven.BBnAtuClick(Sender: TObject);
begin
  inherited;
if ven_ori='consulta' then
   begin
   fven01lerant(0);
   end
else
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
   flcadven(CAMPO.ItemIndex,1,Edit1.Text);
   end;
end;

procedure TFrm_Ven.FormCreate(Sender: TObject);
begin
  inherited;
tsAdicionais.TabVisible:=false;
   Self.Caption := 'Manutenção no Cadastro de Vendedores';
   Campo.ItemIndex := 0;

   if DM1.Tb_PargerPCODLOC.Value = 1 then begin
      CODLOC.Visible:=True;
      NOMLOC.Enabled:=False;
      NOMLOC.ParentColor:=True;
      NOMLOC.Ctl3D:=True;
      ESTADO.Enabled:=False;
      ESTADO.ParentColor:=True;
      ESTADO.Ctl3D:=True;
   end else begin
      CODLOC.Visible:=False;
      NOMLOC.Left:=3;
   end;

   if DM1.Tb_PargerPCODBAI.Value = 1 then begin
      CODBAI.Visible:=True;
      NOMBAI.Enabled:=False;
      NOMBAI.ParentColor:=True;
      NOMBAI.Ctl3D:=True;
   end else begin
      CODBAI.Visible:=False;
      NOMBAI.Left:=333;
      NOMBAI.Visible:=True;
   end;

   moper_vd := 0;
   ven_ori  := '';

   if flcadactab(0,0,IntToStr(codcar),'CADVEN') then begin
      if DM4.Tb_AcTabAT_INC.Value=1 then
         bbinc_true := False;
      if DM4.Tb_AcTabAT_ALT.Value=1 then
         bbalt_true := False;
      if DM4.Tb_AcTabAT_EXC.Value=1 then
         bbexc_true := False;
   end else begin
      bbinc_true := true;
      bbalt_true := true;
      bbexc_true := true;
   end;

   btn_incluir.Enabled  := bbinc_true;
   btn_alterar.Enabled  := bbalt_true;
   btn_excluir.Enabled  := bbexc_true;
   btn_cancelar.Enabled := False;

   BBnAtuClick(self);
if DBGrid1.DataSource=nil then
   DBGrid1.DataSource:=DM1.Src_Ven;
if DBNavigator2.DataSource=nil then
   DBNavigator2.DataSource:=DM1.Src_Ven;

end;

procedure TFrm_Ven.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if ven_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   ven_ori := '';
   end;

end;

procedure TFrm_Ven.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if ven_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      ven_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Ven.edt_codvenExit(Sender: TObject);
begin
   inherited;
   if btn_cancelar.Focused then begin
      DM1.Tb_VenVCODVEN.Value := 0;
      Exit;
   end;

   if DM1.Tb_VenVCODVEN.Isnull then
      Exit;

   if (mOPer_vd = 0) and (DM1.Tb_VenVCODVEN.AsFloat <> mCod_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select VNOME from CADVEN where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADVEN',[]),'',' VCODEMP=0'+IntToStr(codemp)+' and ')
                        +' VCODVEN =:CODVEN ');
      DM1.Query1.ParambyName('CODVEN').AsString := DM1.Tb_VenVCODVEN.AsString;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('VNOME').AsString,0,['0'],0);
         if edt_CODVEN.Enabled then
            edt_codven.setFocus;
         exit;
      end;

   end;
end;

procedure TFrm_Ven.INCLUIRClick(Sender: TObject);
begin
  inherited;

  Self.Caption   := 'Manutenção no Cadastro de Vendedores - [Inclusão]';
  DM1.Tb_Ven.Append;
  DM1.Tb_VenVDTCAD.AsDateTime:=now;
  DM1.Tb_VenVCODUSR_INC.AsFloat:=codusr;
  mCod_Ant       := DM1.Tb_VenVCODVEN.AsFloat;
  Tab_ad.Enabled := True;
  mOper_vd       := 0;
  edt_codven.Enabled := True;
  if edt_CODVEN.Enabled then
     edt_codven.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator2.Enabled := False;
  BBnAtu.Enabled       := false;
end;

procedure TFrm_Ven.ALTERARClick(Sender: TObject);
begin
   inherited;
   Self.Caption := 'Manutenção no Cadastro de Vendedores - [Alteração]';

   if DM1.Tb_VenVCODVEN.IsNull then begin
      Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
      Exit;
   end;

   DM1.Tb_Ven.Edit;
   mCod_Ant       := DM1.Tb_VenVCODVEN.AsFloat;
   mOper_vd       := 1;
   Tab_ad.Enabled := True;
   if PC1.ActivePage = tsCad then begin
      edt_codven.Enabled   := False;
      edt_nome.SetFocus
   end else begin
      PC1.SetFocus;
   end;

   btn_incluir.Enabled  := False;
   btn_alterar.Enabled  := False;
   btn_excluir.Enabled  := False;
   btn_cancelar.Enabled := True;
   btn_gravar.Enabled   := True;
   DBGrid1.Enabled      := False;
   DBNavigator2.Enabled := False;
   BBnAtu.Enabled       := False;
if DM1.Tb_VenVPEDELE_SENHA.AsString='' then
   edt_senha.Text:=''
else
//   edt_senha.Text:=DM1.Tb_VenVPEDELE_SENHA.AsString;
    edt_senha.Text:=Descriptografa(DM1.Tb_VenVPEDELE_SENHA.AsString,DM1.Tb_VenVCODVEN.asinteger);

end;

procedure TFrm_Ven.EXCLUIRClick(Sender: TObject);
begin
   inherited;

   if DM1.Tb_VenVCODVEN.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
       FGerarAntes(9,'CADVEN','VCODEMP',DM1.Tb_VenVCODEMP.Asstring,
                  'VCODNOV','VDATHOR','VEVE_CODUSR',
                  'VEVE_STATUS',['VCODVEN'],[FloatToStr(DM1.Tb_VenVCODVEN.AsFloat)]
                  ,DM1.Tb_Ven);
       FAtualizaBanco(2,'CADVEN','VCODEMP',DM1.Tb_VenVCODEMP.AsString
       ,['VCODVEN'],[FloatToStr(DM1.Tb_VenVCODVEN.AsFloat)]
       ,DM1.Tb_Ven);
       DM1.Tb_Ven.Delete;
   end;
end;

procedure TFrm_Ven.GRAVARClick(Sender: TObject);
begin
   inherited;
if (DM1.Tb_VenVCODVEN.IsNull) then
   begin
   fmensagem('Favor informar Código do Vendedor!',0,['0'],0);
   if edt_CODVEN.Enabled then
      edt_codven.SetFocus;
   Exit;
   end;

if (DM1.Tb_VenVNOME.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;

if Trim(edt_senha.Text)<>'' then
   begin
   DM1.Tb_VenVPEDELE_SENHA.Value:=Criptografa(edt_senha.Text,DM1.Tb_VenVCODVEN.Asinteger);
   end

//   DM1.Tb_VenVPEDELE_SENHA.Value:=edt_senha.Text
else
   DM1.Tb_VenVPEDELE_SENHA.Value:='';

DM1.Tb_VenVDATHOR_ALT.AsDateTime:=now;
DM1.Tb_VenVCODUSR_ALT.AsFloat:=codusr;

if moper_vd=1 then
   begin
   FGerarAntes(8,'CADVEN','VCODEMP',DM1.Tb_VenVCODEMP.Asstring,
              'VCODNOV','VDATHOR','VEVE_CODUSR',
              'VEVE_STATUS',['VCODVEN'],[FloatToStr(mCod_Ant)]
              ,DM1.Tb_Ven);
   end;

FAtualizaBanco(1,'CADVEN','VCODEMP',DM1.Tb_VenVCODEMP.AsString
  ,['VCODVEN'],[FloatToStr(mCod_Ant)]
  ,DM1.Tb_Ven);

DM1.Tb_Ven.Post;
mOper_vd:=-1;
CancelarClick(self);
end;

procedure TFrm_Ven.CANCELARClick(Sender: TObject);
begin
   inherited;
   Self.Caption := 'Manutenção no Cadastro de Vendedores';

   if (mOper_vd = 0) and (btn_gravar.Enabled) then begin
      FAtualizaBanco(2,'CADVEN','VCODEMP',DM1.Tb_VenVCODEMP.AsString
      ,['VCODVEN'],[FloatToStr(mcod_ant)]
      ,DM1.Tb_Ven);
   end;

   if DM1.Tb_Ven.State in [dsEdit,dsInsert] then
      DM1.Tb_Ven.Cancel;

   btn_incluir.Enabled  := bbinc_true;
   btn_alterar.Enabled  := bbalt_true;
   btn_excluir.Enabled  := bbexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   DBGrid1.Enabled      := True;
   Tab_ad.Enabled       := False;
   DBNavigator2.Enabled := True;
   BBnAtu.Enabled       := true;
   mOper_vd := -1;
end;

procedure TFrm_Ven.DBE_codsupExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_VenVCODSUP.Value>0 then
   begin
   if not flqr1('SNOME','S','CADSUP','N','SCODSUP',DM1.Tb_VenVCODSUP.AsString) then
      begin
      fmensagem('Supervisor não cadastrado!',0,['0'],0);
      DBE_codsup.SetFocus;
      end;
   end;

end;

procedure TFrm_Ven.DBE_codsupKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_VenVCODSUP.Value:=ValFloat(fChamaSup(0,'frm_Ven',Key));
   DBE_codsupExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Ven.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if btn_gravar.enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
        mrYes: Gravar.Click;
        mrNo : cancelar.Click;
     else
        CanClose := False;
     end;
  end;
end;

procedure TFrm_Ven.CODBAIExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_VenVCODBAI.Value=0) or (DM1.Tb_VenVCODBAI.IsNull) then
   begin
   DM1.Tb_VenVCODBAI.Value:=0;
   DM1.Tb_VenVBAIRRO.Value:='';
   exit;
   end;

if (CANCELAR.Focused) then
   exit;
if not flcadbai(1,0,DM1.Tb_VenVCODBAI.AsString) then
   begin
   fmensagem('Bairro não Cadastrada.',0,['0'],0);
   CODBAI.SetFocus;
   end
else
   begin
   DM1.Tb_VenVCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
   DM1.Tb_VenVBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
   end;


end;

procedure TFrm_Ven.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Ven.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_VenVCODBAI.Value:=ValFloat(fChamaBai(0,'frm_Ven',Key));
      DM1.Tb_VenVBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
      if trim(CODBAI.Text)<>'' then
         CODBAIExit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Ven.CODLOCExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if not flcadloc(1,0,DM1.Tb_VenVCODLOC.AsString) then
   begin
   fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   CODLOC.SetFocus;
   end
else
   begin
   DM1.Tb_VenVCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
   DM1.Tb_VenVCIDADE.Value:=DM1.Tb_LocLNOME.Value;
   DM1.Tb_VenVUF.Value    :=DM1.Tb_LocLUF.Value;
   end;


end;

procedure TFrm_Ven.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM1.Tb_Ven.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_VenVCODLOC.Value:=ValFloat(fChamaLoc(0,'frm_Ven',Key));
      DM1.Tb_VenVCIDADE.Value:=DM1.Tb_LocLNOME.Value;
      DM1.Tb_VenVUF.Value    :=DM1.Tb_LocLUF.Value;
      if Trim(CODLOC.Text)<>'' then
         CODLOCExit(Self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_Ven.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key<>#8) and not (fvertam(DBMemo1.Text,600)) then
   key:=#0;
end;

procedure TFrm_Ven.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in [',','.'] then
   key:=DecimalSeparator;
if (key<>#8) and not (fvertam(DBEdit37.Text,5)) then
   key:=#0;

end;

procedure TFrm_Ven.DBEdit37Exit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_VenVCOMIS.Value<0) or (DM1.Tb_VenVCOMIS.Value>98) then
   begin
   fmensagem('Comissão Invalida!',0,['0'],0);
   DBEdit37.SetFocus;
   end;

end;

procedure TFrm_Ven.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

if (key<>#8) and not (fvertam(DBEdit15.Text,14)) then
   key:=#0;


end;

procedure TFrm_Ven.DBEdit15Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_VenVCPF.Value:=fsonumero(DM1.Tb_VenVCPF.AsString);

end;

procedure TFrm_Ven.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHANGEVEND.Value=1 then
   begin
   if ven_ori='consulta' then
      begin
      fven01lerant(0);
      end
   else
      begin
      If DM1.Tb_Ven.State in [dsInsert, dsEdit] then
         begin
         Case fmensagem('O registro atual não está gravado!'+#13
                         +'Deseja gravar agora?',0,['1','2','3'],2) of
            mrYes: GRAVAR.Click;
         else CANCELAR.Click;
            end;
         end;
      if CAMPO.ItemIndex=1 then
         Edit1.Text:=fDeixanum2(edit1.Text);
      flcadven(CAMPO.ItemIndex,1,Edit1.Text);
      end;
   end;
end;

procedure TFrm_Ven.SAIRClick(Sender: TObject);
begin
  inherited;
  if ven_ori = '' then close;
end;

procedure TFrm_Ven.bbBloqueiosClick(Sender: TObject);
begin
  inherited;
  if Frm_VendaBloqueada_Relacao=nil then
     Application.CreateForm(TFrm_VendaBloqueada_Relacao, Frm_VendaBloqueada_Relacao)
  else begin
     Frm_VendaBloqueada_Relacao.free;
     Frm_VendaBloqueada_Relacao:=nil;
     Application.CreateForm(TFrm_VendaBloqueada_Relacao, Frm_VendaBloqueada_Relacao);
  end;

  Frm_VendaBloqueada_Relacao.Ts_Vendedor.TabVisible    :=true;
  Frm_VendaBloqueada_Relacao.Ts_Fornecedor.TabVisible  :=False;
  Frm_VendaBloqueada_Relacao.Ts_Estados.TabVisible     :=False;
  Frm_VendaBloqueada_Relacao.Ts_Cidade.TabVisible      :=False;
  Frm_VendaBloqueada_Relacao.Ts_Bairros.TabVisible     :=False;
  Frm_VendaBloqueada_Relacao.Ts_RamoClientes.TabVisible:=False;
  Frm_VendaBloqueada_Relacao.Ts_Clientes.TabVisible    :=False;
  Frm_VendaBloqueada_Relacao.Ts_RamoProdutos.TabVisible:=False;
  Frm_VendaBloqueada_Relacao.Ts_Produtos.TabVisible    :=False;
  Frm_VendaBloqueada_Relacao.CODIGO.Enabled            :=False;
  Frm_VendaBloqueada_Relacao.bbAtualizar.Enabled       :=False;
  Frm_VendaBloqueada_Relacao.St_Nivel.Caption:='NIVEL: VENDEDOR';
  mNivelConsulta:=1;

  Frm_VendaBloqueada_Relacao.CODIGO.Text:=DM1.Tb_VenVCODVEN.AsString;
  Frm_VendaBloqueada_Relacao.NOME.Text  :=DM1.Tb_VenVNOME.AsString;
  Frm_VendaBloqueada_Relacao.bbAtualizar.Click;
  Frm_VendaBloqueada_Relacao.ShowModal;
  Frm_VendaBloqueada_Relacao.Free;
  Frm_VendaBloqueada_Relacao:=nil;
end;

procedure TFrm_Ven.DBE_codregKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   DM1.Tb_VenVCODREG.Value:=ValFloat(fChamaRegiao(0,'frm_Ven',Key));
   DBE_codregExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Ven.DBE_codregExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_VenVCODREG.AsFloat>0 then
   begin
   if not flqr1('CR_NOMREG','CR_','CADREGIAO','N','CR_CODREG',DM1.Tb_VenVCODREG.AsString) then
     fmensagem('Regiao não cadastrado!',0,['0'],0);
   end;

end;

procedure TFrm_Ven.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;


function fVen01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(VCODNOV) from OLD_CADVEN');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADVEN (';
v:='';
for x:=0 to DM1.Tb_Ven.FieldCount-1 do
   begin
   if DM1.Tb_Ven.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ven.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',VCODNOV, VDATHOR, VEVE_CODUSR, VEVE_STATUS) Select ';
v:='';
for x:=0 to DM1.Tb_Ven.FieldCount-1 do
   begin
   if DM1.Tb_Ven.Fields[x].FieldKind=fkCalculated then
      Continue
   else
      minstru:=minstru+v+DM1.Tb_Ven.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as VCODNOV ';

minstru:=minstru+v+' SYSDATE, '+IntTostr(codusr)+' as vevecodusr '
        +','+IntTostr(ptipo)+' as veve_status ';

minstru:=minstru+' from CADVEN where VCODEMP=0'+DM1.Tb_VenVCODEMP.AsString
                +' and VCODVEN=0'+DM1.Tb_VenVCODVEN.AsString;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
except
   DM1.Query1.SQL.SAVETOFILE('C:\SQL.TXT');

   verteclado(1);
   fmensagem('Erro ao Fazer o Backup da Alteracao AC00953. Contactar Suporte',0,['0'],0);
   end;
fdm1startcommit;

result:=True;



end;

function tfrm_Ven.fVen01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_Ven.FieldCount-1 do
   begin
   if DM1.Tb_Ven.Fields[x].FieldKind=fkCalculated then
      Continue;
   if UpperCase(copy(DM1.Tb_Ven.Fields[x].FieldName,1,2))='ID' then
      minstru:=minstru+v+' ROWID as '+DM1.Tb_Ven.Fields[x].FieldName
   else
      minstru:=minstru+v+DM1.Tb_Ven.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADVEN where VCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_Ven.Close;
DM1.Tb_Ven.SQL.Clear;
DM1.Tb_Ven.SQL.add(minstru);
DM1.Tb_Ven.Open;
BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;


procedure TFrm_Ven.bbProximaClick(Sender: TObject);
begin
  inherited;
  if (not btn_incluir.Enabled) and (not btn_alterar.Enabled) then begin
     PC1.ActivePage := Tab_Ad;
     DBEdit17.SetFocus;
  end;
end;

procedure TFrm_Ven.bbMostrarClick(Sender: TObject);
begin
  inherited;
fmensagem('a senha digitada é: '+edt_senha.Text,0,['0'],0);

end;

end.
