unit s_turno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,db,dbtables,
  ExtCtrls;

type
  TFrm_Turnos = class(TFrm_C)
    lbl_TR_CODTURNO: TLabel;
    DBE_TR_CODTURNO: TDBEdit;
    lbl_TR_DESCRICAO: TLabel;
    DBE_TR_DESCRICAO: TDBEdit;
    lbl_TR_HRSE1: TLabel;
    DBE_TR_HRSE1: TDBEdit;
    lbl_TR_HRSS1: TLabel;
    DBE_TR_HRSS1: TDBEdit;
    lbl_TR_HRSE2: TLabel;
    DBE_TR_HRSE2: TDBEdit;
    lbl_TR_HRSS2: TLabel;
    DBE_TR_HRSS2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBnAtuClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }

     mcodturno_ant : Real;
     moper_turno   : Integer;

  public
    { Public declarations }
    turno_ori     : String;
  end;

var
  Frm_Turnos: TFrm_Turnos;

implementation

uses S_DM6, S_DM4, S_mensagem, Func, lerarq, S_DM1;

{$R *.dfm}

procedure TFrm_Turnos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Turnos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if GRAVAR.enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
          mrYes: gravar.Click;
          mrNo : cancelar.Click;
     else
          CanClose := False;
     end;
  end;

end;

procedure TFrm_Turnos.FormCreate(Sender: TObject);
begin
  inherited;
  DBNavigator1.DataSource := DM6.Ds_Turno;
  DBGrid1.DataSource      := DM6.Ds_Turno;


  Self.Caption := 'Manutenção do Cadastro de Turno';

  Campo.ItemIndex := 0;

  moper_turno      := 0;

  if flcadactab(0,0,IntToStr(codcar),'CADTURNO') then begin
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

  INCLUIR.Enabled := bbinc_true;
  ALTERAR.Enabled := bbalt_true;
  EXCLUIR.Enabled := bbexc_true;
  CANCELAR.Enabled:= False;

  BBnAtuClick(self);

end;

procedure TFrm_Turnos.INCLUIRClick(Sender: TObject);
begin
  inherited;


  Self.Caption := 'Manutenção no Cadastro de Turnos';
  DM6.Tb_Turno.Append;
  mcodigo := DM6.Tb_TurnoTR_CODTURNO.AsString;
  moper_turno    := 0;
  DBE_TR_CODTURNO.Enabled := True;
  DBE_TR_CODTURNO.SetFocus;

  INCLUIR.Enabled  := False;
  ALTERAR.Enabled  := False;
  EXCLUIR.Enabled  := False;
  CANCELAR.Enabled := True;
  GRAVAR.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator1.Enabled := False;
  BBnAtu.Enabled:= false;



end;

procedure TFrm_Turnos.ALTERARClick(Sender: TObject);
begin
  inherited;
    Self.Caption := 'Manutenção no Cadastro de Turnos - [Alteração]';
    if DM6.Tb_TurnoTR_CODTURNO.IsNull then begin
       Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
       Exit;
    end;

    DM6.Tb_Turno.Edit;
    mcodigo := DM6.Tb_TurnoTR_CODTURNO.AsString;
    moper_turno   := 1;
    DBE_TR_CODTURNO.Enabled   := False;
    DBE_TR_DESCRICAO.SetFocus;


    INCLUIR.Enabled  := False;
    ALTERAR.Enabled  := False;
    EXCLUIR.Enabled  := False;
    CANCELAR.Enabled := True;
    GRAVAR.Enabled   := True;
    DBGrid1.Enabled      := False;
    DBNavigator1.Enabled := False;
    BBnAtu.Enabled:= false;

end;

procedure TFrm_Turnos.CANCELARClick(Sender: TObject);
begin
  inherited;
   Self.Caption := 'Manutenção no Cadastro de Turnos';

   if (mOper_turno=0) and (GRAVAR.Enabled) then begin
       FAtualizaBanco(2,'CADTURNOS','TR_CODEMP',DM6.Tb_TurnoTR_CODEMP.AsString
       ,['TR_CODTURNO'],[mcodigo]
       ,DM6.Tb_Turno);
   end;

   if DM6.Tb_Turno.State in [dsEdit,dsInsert] then
      DM6.Tb_Turno.Cancel;

   INCLUIR.Enabled  := bbinc_true;
   ALTERAR.Enabled  := bbalt_true;
   EXCLUIR.Enabled  := bbexc_true;
   CANCELAR.Enabled := False;
   GRAVAR.Enabled   := False;
   DBGrid1.Enabled      := True;
   DBNavigator1.Enabled := True;
   BBnAtu.Enabled:= true;
   moper_turno          := -1;

end;

procedure TFrm_Turnos.EXCLUIRClick(Sender: TObject);
begin
  inherited;
   if DM6.Tb_TurnoTR_CODTURNO.IsNull then begin
      fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
      Exit;
   end;

   if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then begin

      FGerarAntes(9,'CADTURNO','TR_CODEMP',DM6.Tb_TurnoTR_CODEMP.Asstring,
               'TRCODNOV','TRDATHOR','TRCODUSR',
               'TRSTATUS',['TR_CODTURNO'],[mcodigo]
               ,DM6.Tb_Turno);

      FAtualizaBanco(2,'CADTURNO','TR_CODEMP',DM6.Tb_TurnoTR_CODEMP.AsString
                     ,['TR_CODTURNO'],[DM6.Tb_TurnoTR_CODTURNO.AsString]
                     ,DM6.Tb_Turno);
      DM6.Tb_Turno.Delete;
   end;

end;

procedure TFrm_Turnos.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM6.Tb_TurnoTR_CODTURNO.Isnull) then
   begin
   fmensagem('Favor informar o Código do turno!',0,['0'],0);
   DBE_TR_CODTURNO.SetFocus;
   exit;
   end;

if (DM6.Tb_TurnoTR_DESCRICAO.Isnull) OR
   (trim(DM6.Tb_TurnoTR_DESCRICAO.AsString)='') then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   DBE_TR_DESCRICAO.SetFocus;
   exit;
   end;






if moper_turno = 1 then
   begin
   FGerarAntes(8,'CADTURNO','TR_CODEMP',DM6.Tb_TurnoTR_CODEMP.Asstring,
               'TRCODNOV','TRDATHOR','TRCODUSR',
               'TRSTATUS',['TR_CODTURNO'],[mcodigo]
               ,DM6.Tb_Turno);

   end;

FAtualizaBanco(1,'CADTURNO','TR_CODEMP',DM6.Tb_TurnoTR_CODEMP.AsString
               ,['TR_CODTURNO'],[mcodigo]
               ,DM6.Tb_Turno);
moper_turno:=-1;

DM6.Tb_Turno.Post;
cancelarClick(self);

end;

procedure TFrm_Turnos.SAIRClick(Sender: TObject);
begin
  inherited;
  if turno_ori = '' then close;
end;

procedure TFrm_Turnos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if turno_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   turno_ori := '';
   end;
end;

procedure TFrm_Turnos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if turno_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      turno_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Turnos.BBnAtuClick(Sender: TObject);
begin
  inherited;
  if GRAVAR.Enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
          mrYes : gravar.Click;
     else
          cancelar.Click;
     end;
  end;
  flcadturno(CAMPO.ItemIndex,1,Edit1.Text);

end;

procedure TFrm_Turnos.Edit1Change(Sender: TObject);
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
   flcadturno(CAMPO.ItemIndex,1,Edit1.Text);
   end;

end;

end.
