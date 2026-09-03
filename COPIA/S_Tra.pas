unit S_Tra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, ComCtrls, Mask, Buttons, ExtCtrls, db,dbtables,
  func, S_DM1, Grids, DBGrids,lerarq,S_Bai, ToolEdit, RXDBCtrl, ToolWin, Func2;

type
  TFrm_Tra = class(TFrm_C)
    Label4: TLabel;
    Label5: TLabel;
    edt_codtra: TDBEdit;
    edt_nome: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    NOMBAI: TDBEdit;
    Label15: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    NOMLOC: TDBEdit;
    ESTADO: TDBEdit;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    Label21: TLabel;
    Label20: TLabel;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    CODBAI: TDBEdit;
    CODLOC: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    ToolBar1: TToolBar;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_gravar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_cancelar: TBitBtn;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    procedure INCLUIRClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure edt_codtraExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAIExit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Frm_Tra     : TFrm_Tra;
  tra_ori     : String;
  mcodtra_ant : Real;
  moper_tra   : Integer;
  mcnpj_ant: string;
  mcpf_ant: string;
  mie_ant: string;

implementation

uses S_DM4, S_NFe_ConsCad;

{$R *.dfm}

procedure TFrm_Tra.INCLUIRClick(Sender: TObject);
begin
  inherited;
  Self.Caption := 'Manutenção no Cadastro de Transportadoras - [Inclusão]';
  DM1.Tb_Tra.Append;
  mcodtra_Ant  := DM1.Tb_TraTRCODTRA.AsFloat;
  DM1.Tb_TraTRDTCAD.AsDateTime:=now;
  DM1.Tb_TraTRCODUSR_INC.AsFloat:=codusr;
  mOper_tra    := 0;
  edt_codtra.Enabled := True;
  edt_codtra.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator2.Enabled := False;
  BBnAtu.Enabled:= false;

  mcnpj_ant:='';
  mcpf_ant :='';
  mie_ant  :='';


end;

procedure TFrm_Tra.BBnAtuClick(Sender: TObject);
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
  flcadtra(CAMPO.ItemIndex,1,Edit1.Text);
end;

procedure TFrm_Tra.ALTERARClick(Sender: TObject);
begin
    inherited;
    Self.Caption := 'Manutenção no Cadastro de Transportadoras - [Alteração]';
    if DM1.Tb_TraTRCODTRA.IsNull then begin
       Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
       Exit;
    end;

    DM1.Tb_Tra.Edit;
    mcodtra_Ant := DM1.Tb_TraTRCODTRA.AsFloat;
    mOper_tra   := 1;
    edt_codtra.Enabled   := False;
    edt_nome.SetFocus;

    mcnpj_ant:=FormatFloat('00000000000000', DM1.Tb_TraTRCNPJ.AsFloat);
    mcpf_ant :=FormatFloat('00000000000', DM1.Tb_TraTRCNPF.AsFloat);
    mie_ant  :=DM1.Tb_TraTRIE.AsString;

    btn_incluir.Enabled  := False;
    btn_alterar.Enabled  := False;
    btn_excluir.Enabled  := False;
    btn_cancelar.Enabled := True;
    btn_gravar.Enabled   := True;
    DBGrid1.Enabled      := False;
    DBNavigator2.Enabled := False;
    BBnAtu.Enabled:= false;
end;

procedure TFrm_Tra.GRAVARClick(Sender: TObject);

begin
  inherited;
if (DM1.Tb_TraTRCODTRA.Isnull) then
   begin
   fmensagem('Favor informar o Código da Transportadora!',0,['0'],0);
   edt_codtra.SetFocus;
   exit;
   end;

if (DM1.Tb_TraTRRAZTRA.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;
DM1.Tb_TraTRDATHOR_ALT.AsDateTime:=now;
DM1.Tb_TraTRCODUSR_ALT.AsFloat:=codusr;



if (mNFEVersao='2.0') and ( (Fsonumero(DM1.Tb_TraTRCNPJ.AsString)>0) or (fSonumero(DM1.Tb_TraTRCNPF.AsString)>0)
                           or (fSonumero(DM1.Tb_TraTRIE.AsString)>0))  then
   begin
    if (mcnpj_ant<>FormatFloat('00000000000000', DM1.Tb_TraTRCNPJ.AsFloat)) or
       (mcpf_ant<>FormatFloat('00000000000', DM1.Tb_TraTRCNPF.AsFloat)) or
       (mie_ant<>DM1.Tb_TraTRIE.AsString) or
       (trim(DM1.Tb_TraTRIE.AsString)='') or
       (DM1.Tb_TraTRCNPJ_CONSISTE.AsString<>'S')
       or ( (DM1.Tb_TraTRCNPJ.AsFloat=0) and (DM1.Tb_TraTRCNPF.AsFloat=0) and (fsonumero(DM1.Tb_TraTRIE.AsString)>0))
       then
       begin
       DM1.Tb_TraTRCNPJ_CONSISTE.AsString:='N';
       if fChecarCNPJ_IE(1,DM1.Tb_TraTRCNPJ.AsString,DM1.Tb_TraTRCNPF.AsString,DM1.Tb_TraTRIE.AsString,DM1.Tb_TraTRUF.AsString) then
          begin
          DM1.Tb_TraTRCNPJ_CONSISTE.AsString:='S';
          DM1.Tb_TraTRCNPJ.Value:=ValFloat(mRetChecar_Cnpj);
          DM1.Tb_TraTRCNPF.Value:=ValFloat(mRetChecar_Cnpf);
          DM1.Tb_TraTRIE.Value:=mRetChecar_IE;
          end
       else
          begin
          if Application.MessageBox('Dados Incorretos Deseja Gravar Assim Mesmo?','',MB_YESNO+MB_DEFBUTTON1)<>mrYes then
             exit;
          end;
       end;
   end;




if moper_tra = 1 then
   begin
   FGerarAntes(8,'CADTRA','TRCODEMP',DM1.Tb_TraTRCODEMP.Asstring,
               'TR_CODNOV','TR_DATHOR','TR_CODUSR',
               'TR_STATUS',['TRCODTRA'],[FloatToStr(mcodtra_Ant)]
               ,DM1.Tb_Tra);

   end;

FAtualizaBanco(1,'CADTRA','TRCODEMP',DM1.Tb_TraTRCODEMP.AsString
               ,['TRCODTRA'],[FloatToStr(mcodtra_Ant)]
               ,DM1.Tb_Tra);
mOper_tra:=-1;

DM1.Tb_Tra.Post;
cancelarClick(self);
end;

procedure TFrm_Tra.EXCLUIRClick(Sender: TObject);
begin
   inherited;
   if DM1.Tb_TraTRCODTRA.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin
      FGerarAntes(9,'CADTRA','TRCODEMP',DM1.Tb_TraTRCODEMP.Asstring,
              'TR_CODNOV','TR_DATHOR','TR_CODUSR',
              'TR_STATUS',['TRCODTRA'],[FloatToStr(DM1.Tb_TraTRCODTRA.AsFloat)]
              ,DM1.Tb_Tra);

      FAtualizaBanco(2,'CADTRA','TRCODEMP',DM1.Tb_TraTRCODEMP.AsString
                     ,['TRCODTRA'],[FloatToStr(DM1.Tb_TraTRCODTRA.AsFloat)]
                     ,DM1.Tb_Tra);
      DM1.Tb_Tra.Delete;
   end;
end;

procedure TFrm_Tra.CANCELARClick(Sender: TObject);
begin
   inherited;
   Self.Caption := 'Manutenção no Cadastro de Transportadoras';

   if (mOper_tra=0) and (btn_gravar.Enabled) then begin
       FAtualizaBanco(2,'CADTRA','TRCODEMP',DM1.Tb_TraTRCODEMP.AsString
       ,['TRCODTRA'],[FloatToStr(mcodtra_ant)]
       ,DM1.Tb_Tra);
   end;

   if DM1.Tb_Tra.State in [dsEdit,dsInsert] then
      DM1.Tb_Tra.Cancel;

   btn_incluir.Enabled  := bbinc_true;
   btn_alterar.Enabled  := bbalt_true;
   btn_excluir.Enabled  := bbexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   DBGrid1.Enabled      := True;
   DBNavigator2.Enabled := True;
   BBnAtu.Enabled:= true;
   mOper_tra            := -1;
end;

procedure TFrm_Tra.edt_codtraExit(Sender: TObject);
begin
   inherited;
   if btn_cancelar.Focused then begin
      DM1.Tb_TraTRCODTRA.Value := 0;
      Exit;
   end;

   if DM1.Tb_TraTRCODTRA.Isnull then
      Exit;

   if (moper_tra=0) and (DM1.Tb_TraTRCODTRA.AsFloat <> mCodtra_ant) then begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select TRCODTRA,TRRAZTRA from CADTRA '
                         +iif(DM1.Qr_Tid.Locate('TINOME','CADTRA',[]),'',' where TRCODEMP=0'+IntToStr(codemp)+' and ')
                        +' TRCODTRA=:CODTRA ');
      DM1.Query1.ParambyName('CODTRA').AsFloat := DM1.Tb_TraTRCODTRA.AsFloat;
      DM1.Query1.Open;

      if not DM1.Query1.IsEmpty then begin
         fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('TRRAZTRA').AsString,0,['0'],0);
         edt_codtra.setFocus;
         exit;
      end;

   end;
end;

procedure TFrm_Tra.FormCreate(Sender: TObject);
begin
  inherited;
  DBNavigator2.DataSource := DM1.Src_Tra;
  DBGrid1.DataSource      := DM1.Src_Tra;

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
     NOMLOC.Left:=2;
  end;

  if DM1.Tb_PargerPCODBAI.Value=1 then begin
     CODBAI.Visible:=True;
     NOMBAI.Enabled:=False;
     NOMBAI.ParentColor:=True;
     NOMBAI.Ctl3D:=True;
  end else begin
     CODBAI.Visible:=False;
     NOMBAI.Left:=279;
     NOMBAI.Visible:=True;
  end;

  Self.Caption := 'Manutenção do Cadastro de Transportadoras';

  Campo.ItemIndex := 0;

  moper_tra      := 0;

  if flcadactab(0,0,IntToStr(codcar),'CADTRA') then begin
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

procedure TFrm_Tra.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if tra_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   tra_ori := '';
   end;

end;

procedure TFrm_Tra.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if tra_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      tra_ori := '';
      end;
   abort;
   end;


end;

procedure TFrm_Tra.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure TFrm_Tra.CODLOCExit(Sender: TObject);
begin
  inherited;
if CANCELAR.Focused then
   exit;
if not flcadloc(1,0,DM1.Tb_TraTRCODLOC.AsString) then
   begin
   MessageDlg('Localidade/Cidade não Cadastrada.',mtWarning,[mbOk],0);
   CODLOC.SetFocus;
   end
else
   begin
   DM1.Tb_TraTRCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
   DM1.Tb_TraTRCIDADE.Value:=DM1.Tb_LocLNOME.Value;
   DM1.Tb_TraTRUF.Value    :=DM1.Tb_LocLUF.Value;
   end;

end;

procedure TFrm_Tra.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM1.Tb_Tra.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_TraTRCODLOC.Value:=ValFloat(fChamaLoc(0,'frm_Tra',Key));
      DM1.Tb_TraTRCIDADE.Value:=DM1.Tb_LocLNOME.Value;
      DM1.Tb_TraTRUF.Value    :=DM1.Tb_LocLUF.Value;
      if trim(CODLOC.Text)<>'' then
         CODLOCExit(Self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_Tra.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM1.Tb_Tra.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_TraTRCODBAI.Value:=ValFloat(fChamaBai(0,'frm_Tra',Key));
      DM1.Tb_TraTRBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
      if trim(CODBAI.Text)<>'' then
         CODBAIExit(Self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_Tra.CODBAIExit(Sender: TObject);
begin
  inherited;
if (DM1.Tb_TraTRCODBAI.Value=0) or (DM1.Tb_TraTRCODBAI.IsNull) then
   begin
   DM1.Tb_TraTRCODBAI.Value:=0;
   DM1.Tb_TraTRBAIRRO.Value:='';
   exit;
   end;

if (CANCELAR.Focused) then
   exit;
if not flcadbai(1,0,DM1.Tb_TraTRCODBAI.AsString) then
   begin
   MessageDlg('Bairro não Cadastrada.',mtWarning,[mbOk],0);
   CODBAI.SetFocus;
   end
else
   begin
   DM1.Tb_TraTRCODBAI.Value:=DM1.Tb_BaiBCODBAI.Value;
   DM1.Tb_TraTRBAIRRO.Value:=DM1.Tb_BaiBNOME.Value;
   end;

end;

procedure TFrm_Tra.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHANGETRA.Value=1 then
   begin
   If DM1.Tb_Tra.State in [dsInsert, dsEdit] then
      begin
      Case MessageDlg('O registro atual não está gravado!'+#13
                     +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
         mrYes: GRAVAR.Click;
         else CANCELAR.Click;
        end;
      end;
   flcadtra(CAMPO.ItemIndex,1,Edit1.Text);
   end;

end;

procedure TFrm_Tra.SAIRClick(Sender: TObject);
begin
  inherited;
  if tra_ori = '' then close;
end;

procedure TFrm_Tra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
