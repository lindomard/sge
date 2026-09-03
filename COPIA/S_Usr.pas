unit S_Usr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, S_DM1,db,dbtables,func,S_Funcao,S_Ven,lerarq, jpeg, RxDBComb;

type
  TFrm_Usr = class(TFrm_C)
    db_codusr: TDBEdit;
    db_cargo: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    cb_codven: TDBEdit;
    db_nomusr: TDBEdit;
    db_diaani: TDBEdit;
    db_mesani: TDBEdit;
    DBCB_USRSIS: TDBCheckBox;
    Src_Usr: TDataSource;
    db_codcai: TDBEdit;
    GB_BLOQDIV: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    GB_BLOQPED: TGroupBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    db_codsup: TDBEdit;
    db_nomsup: TDBEdit;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    DCB_ESTMIN: TDBCheckBox;
    DCB_AGENDA: TDBCheckBox;
    StaticText9: TStaticText;
    db_emailusr: TDBEdit;
    StaticText10: TStaticText;
    dbe_senha_email: TDBEdit;
    StaticText11: TStaticText;
    DBE_USR_CODDEP_PADRAO: TDBEdit;
    GB_USR_SITCAD: TGroupBox;
    RxDBCB_SITCAD: TRxDBComboBox;
    StaticText12: TStaticText;
    DBE_USR_DESCMAX: TDBEdit;
    GB_USR_NIVEL_PDV: TGroupBox;
    RxDBB_USR_NIVEL_PDV: TRxDBComboBox;
    StaticText13: TStaticText;
    DBE_USR_DESCMAX_MASTER: TDBEdit;
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure db_cargoKeyPress(Sender: TObject; var Key: Char);
    procedure cb_codvenExit(Sender: TObject);
    procedure db_cargoExit(Sender: TObject);
    procedure cb_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_codusrExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_codsupExit(Sender: TObject);
    procedure db_codsupKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_USR_CODDEP_PADRAOExit(Sender: TObject);
    procedure DBE_USR_CODDEP_PADRAOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    mValorRetorno01: String;
    function fUsr01lerant(ptipo: Integer):Boolean;

  public
    { Public declarations }
  end;

var
  Frm_Usr: TFrm_Usr;
  usr_ori: String;
  mOper_Usr  : Integer;

implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_Usr.BBnAtuClick(Sender: TObject);
begin
  inherited;
if usr_ori='consulta' then
   begin
   fUsr01lerant(0);
   end
else
   begin
   If DM4.Tb_Usr.State in [dsInsert, dsEdit] then
      begin
      Case fMensagem('O registro atual não está gravado!'+#13
                      +'Deseja gravar agora?',0,['1','2','3'],2) of
         mrYes: GRAVAR.Click;
      else CANCELAR.Click;
         end;
      end;
   flcadusr(CAMPO.ItemIndex,1,Edit1.Text);
   end;

end;

procedure TFrm_Usr.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM4.Tb_Usr.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],2) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_Usr.db_cargoKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;

if DM4.Tb_Usr.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM4.Tb_UsrCODCAR.Value:=ValFloat(fChamaFuncao(0,'frm_Usr',Key));
      db_cargoexit(self);
      key:=#0;
      end;
   end;


end;

procedure TFrm_Usr.cb_codvenExit(Sender: TObject);
begin
  inherited;
if DM4.Tb_UsrCODVEN.Value>0 then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',DM4.Tb_UsrCODVEN.AsString) then
      begin
      fMensagem('Vendedor não Cadastrado.',0,['0'],0);
      if cb_CODVEN.Enabled then
         cb_codven.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Usr.db_cargoExit(Sender: TObject);
begin
  inherited;
if DM4.Tb_UsrCODCAR.Value>0 then
   begin
   if not flqr1('NOMCAR','','CADCAR','N','CODCAR',DM4.Tb_UsrCODCAR.AsString) then
      begin
      fMensagem('Cargo não Cadastrado.',0,['0'],0);
      db_cargo.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Usr.cb_codvenKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM4.Tb_Usr.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM4.Tb_UsrCODVEN.Value:=ValFloat(fChamaVen(0,'frm_Usr',Key));
      GRAVAR.SetFocus;
      key:=#0;
      end;
   end;

end;

procedure TFrm_Usr.INCLUIRClick(Sender: TObject);
begin
  inherited;
DM4.Tb_Usr.Append;
mOper_Usr:=0;
mcodigo:=DM4.Tb_UsrCODUSR.AsString;
db_codusr.Enabled:=True;
db_nomusr.SetFocus;

end;

procedure TFrm_Usr.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_UsrCODUSR.IsNull then
   begin
   fMensagem('Nao a registro a ser alterado',0,['0'],0);
   exit;
   end;
mOper_Usr:=1;
DM4.Tb_Usr.Edit;
db_codusr.Enabled:=False;
db_nomusr.SetFocus;

end;

procedure TFrm_Usr.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_UsrCODUSR.IsNull then
   begin
   fMensagem('Nao ha registro a ser excluido!',0,['0'],0);
   exit;
   end;
if fMensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADUSR','CODEMP',DM4.Tb_UsrCODEMP.Asstring,
                  'USR_CODEVE','','',
//                  'USR_CODEVE','DATHOR_EVE','CODUSR_EVE',
                  'USR_TIPEVE',['CODUSR'],[FloatToStr(DM4.Tb_UsrCODUSR.AsFloat)]
                  ,DM4.Tb_Usr);



   DM4.Tb_Usr.Delete;
   end;


end;

procedure TFrm_Usr.GRAVARClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_UsrMESNAS.Value<>0 then
   begin
   if (DM4.Tb_UsrMESNAS.Value<1) or (DM4.Tb_UsrMESNAS.Value>12) then
      begin
      fMensagem('Mês Invalido!',0,['0'],0);
      db_mesani.SetFocus;
      exit;
      end;
   end;
if DM4.Tb_UsrDIANAS.Value<>0 then
   begin
   if DM4.Tb_UsrMESNAS.Value=0 then
      begin
      fMensagem('Mês Invalido!',0,['0'],0);
      db_mesani.SetFocus;
      exit;
      end
   else
      begin
      if DM4.Tb_UsrDIANAS.Value<0 then
         begin
         fMensagem('Dia Invalido!',0,['0'],0);
         db_diaani.SetFocus;
         exit;
         end
      else if DM4.Tb_UsrDIANAS.Value>31 then
         begin
         fMensagem('Dia Invalido para o mês!',0,['0'],0);
         db_diaani.SetFocus;
         exit;
         end
      else
         begin
         if (DM4.Tb_UsrMESNAS.Value=2) and (DM4.Tb_UsrDIANAS.Value>29) then
            begin
            fMensagem('Dia Invalido para o mês!',0,['0'],0);
            db_diaani.SetFocus;
            exit;
            end
         else
            begin
            if ((DM4.Tb_UsrMESNAS.Value=04) or (DM4.Tb_UsrMESNAS.Value=06) or
                (DM4.Tb_UsrMESNAS.Value=09) or (DM4.Tb_UsrMESNAS.Value=11))
                 and (DM4.Tb_UsrDIANAS.Value>30) then
               begin
               fMensagem('Dia Invalido para o mês!',0,['0'],0);
               db_diaani.SetFocus;
               exit;
               end;
            end;
         end;
      end;
   end;
DM4.Tb_UsrUSR_DATHOR.AsDateTime:=Now;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('ALTER TRIGGER CADUSR_TRIG01 DISABLE');
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;


if moper_usr=1 then
   begin
   FGerarAntes(8,'CADUSR','CODEMP',DM4.Tb_UsrCODEMP.Asstring,
              'USR_CODEVE','','',
//              'USR_CODEVE','DATHOR_EVE','CODUSR_EVE',
              'USR_TIPEVE',['CODUSR'],[DM4.Tb_UsrCODUSR.AsString]
              ,DM4.Tb_Usr);
   end;
//DM4.Tb_UsrDATHOR_EVE.AsDateTime:=now;

DM4.Tb_Usr.Post;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('ALTER TRIGGER CADUSR_TRIG01 ENABLE');
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;
CANCELAR.Click;

end;

procedure TFrm_Usr.CANCELARClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_Usr.State in [dsInsert, DsEdit] then
   DM4.Tb_Usr.Cancel;
mOper_Usr:=0;
end;

procedure TFrm_Usr.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if Usr_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   usr_ori := '';
   end;

end;

procedure TFrm_Usr.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if usr_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      usr_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Usr.db_codusrExit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM4.Tb_UsrCODUSR.AsString then
   begin
   if DM4.Tb_UsrCODUSR.Value=1111 then
      begin
      fMensagem('Este Código é Reservado para Uso Interno Favor Utilizar Outro!',0,['0'],0);
      DM4.Tb_UsrCODUSR.Value:=fsonumero(mcodigo);
      exit;
      end
   else if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM4.Tb_UsrCODUSR.AsString) then
      begin
      fMensagem('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,0,['0'],0);
      db_codusr.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Usr.FormCreate(Sender: TObject);
begin
  inherited;
if flcadactab(0,0,IntToStr(codcar),'CADUSR') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;

DBNavigator1.DataSource := DM4.Src_Usr;
DBGrid1.DataSource      := DM4.src_Usr;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;

PC1.ActivePage := tsCad;


end;

procedure TFrm_Usr.Edit1Change(Sender: TObject);
begin
  inherited;
if DM1.Tb_PargerPONCHANGUSR.Value=1 then
   begin
   If DM4.Tb_Usr.State in [dsInsert, dsEdit] then
      begin
      Case fMensagem('O registro atual não está gravado!'+#13
                      +'Deseja gravar agora?',0,['1','2','3'],2) of
         mrYes: GRAVAR.Click;
      else CANCELAR.Click;
         end;
      end;
   flcadusr(CAMPO.ItemIndex,1,Edit1.Text);
   end;

end;

procedure TFrm_Usr.SAIRClick(Sender: TObject);
begin
  inherited;
  if usr_ori = '' then close;
end;

procedure TFrm_Usr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;


end;

procedure TFrm_Usr.db_codsupExit(Sender: TObject);
begin
  inherited;
if DM4.Tb_UsrCODSUP.Value>0 then
   begin
   if not flqr1('SNOME','S','CADSUP','N','SCODSUP',DM4.Tb_UsrCODSUP.AsString) then
      begin
      fMensagem('Supervisor não Cadastrado.',0,['0'],0);
      db_codsup.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Usr.db_codsupKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if DM4.Tb_Usr.State in [DsEdit, DsInsert] then
   begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM4.Tb_UsrCODSUP.Value:=ValFloat(fChamaSup(0,'frm_Usr',Key));
      db_codsupExit(self);
      key:=#0;
      end;
   end;

end;


function tfrm_Usr.fUsr01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM4.Tb_Usr.FieldCount-1 do
   begin
   if DM4.Tb_Usr.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Tb_Usr.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADUSR where USR_CODEVE=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Tb_Usr.Close;
DM4.Tb_Usr.SQL.Clear;
DM4.Tb_Usr.SQL.add(minstru);
DM4.Tb_Usr.Open;
BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;



procedure TFrm_Usr.DBE_USR_CODDEP_PADRAOExit(Sender: TObject);
begin
  inherited;
if length(trim(DM4.Tb_UsrUSR_CODDEP_PADRAO.AsString))>1 then
   begin
   if not fLerGenerico01_campos('CADDEP','DNOME',' DCODDEP='+QuotedStr(DM4.Tb_UsrUSR_CODDEP_PADRAO.AsString)
            ,mValorRetorno01) then
      begin
      MessageDlg('Departamento Não Cadastrado!',mtWarning,[mbOk],0);
      exit;
      end;
   end;

end;

procedure TFrm_Usr.DBE_USR_CODDEP_PADRAOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if key=113 then
   begin
   if DM4.Tb_Usr.State in [DsEdit, DsInsert] then
      begin
      DM4.Tb_UsrUSR_CODDEP_PADRAO.Value:=fChamaDeptoCX(0,'frm_Usr','');
      end;
   end;

end;

procedure TFrm_Usr.FormShow(Sender: TObject);
begin
  inherited;
DM4.tb_usrUSR_DESCMAX.DisplayFormat:=mcasas_pct;
DM4.tb_usrUSR_DESCMAX_MASTER.DisplayFormat:=mcasas_pct;
end;

end.
