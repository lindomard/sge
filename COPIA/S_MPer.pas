unit S_MPer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM4,lerarq,func,db,dbtables;

type
  TFrm_MPer = class(TFrm_C)
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    StaticText2: TStaticText;
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MPer: TFrm_MPer;
  mPer_Ori: String;
  mPer_Oper: Integer;
implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_MPer.BBnAtuClick(Sender: TObject);
begin
  inherited;
If DM4.Tb_MPer.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
      mrYes: GRAVAR.Click;
      else CANCELAR.Click;
      end;
   end;
flCadMPer(campo.ItemIndex,1,0,edit1.Text);

end;

procedure TFrm_MPer.INCLUIRClick(Sender: TObject);
begin
  inherited;
mPer_Oper:=0;
DM4.Tb_MPer.Append;
mcodigo            :=DM4.Tb_MPerCMPCODIGO.AsString;
DBEdit1.SetFocus;
end;

procedure TFrm_MPer.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_MPerCMPCODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado',mtWarning,[mbOk],0);
   exit;
   end;
mPer_Oper:=8;
DM4.Tb_MPer.Edit;
DBEdit2.SetFocus;

end;

procedure TFrm_MPer.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_MPerCMPCODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM4.Tb_MPer.Delete;
   end;

end;

procedure TFrm_MPer.GRAVARClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_MPerCMPMOTIVO.AsString='' then
   begin
   MessageDlg('Favor digitar um Motivo Válido!',mtWarning,[mbOk],0);
   DBEdit2.SetFocus;
   exit;
   end;
DM4.Tb_MPer.Post;
CANCELAR.Click;



end;

procedure TFrm_MPer.CANCELARClick(Sender: TObject);
begin
  inherited;
mPer_oper:=0;
DM4.Tb_MPer.Cancel;
if DM4.Tb_MPerCMPMOTIVO.Value='_' then
   DM4.Tb_MPer.Delete;
INCLUIR.Enabled     :=true;
ALTERAR.Enabled     :=true;
EXCLUIR.Enabled     :=true;

end;

procedure TFrm_MPer.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM4.Tb_MPerCMPCODIGO.AsString then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CMPMOTIVO,CMPCODIGO from CADMPER where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),' ',' CMPCODEMP=0'+IntTostr(codemp)+' and ')
                     +' CMPCODIGO=0'+DM4.Tb_MParMPARCODIGO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      ShowMessage('Este código ja esta cadastrado Motivo: '+DM1.Query1.Fields[1].AsString);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_MPer.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if mPer_Ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   mper_ori := '';
   end;

end;

procedure TFrm_MPer.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if mper_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      mper_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_MPer.SAIRClick(Sender: TObject);
begin
  inherited;
  if mper_ori = '' then close;
end;

procedure TFrm_MPer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MPer.FormShow(Sender: TObject);
begin
  inherited;
  PC1.ActivePage := tsCad;
end;

end.
