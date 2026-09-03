unit S_MPar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM4,lerarq,func,db,dbtables;

type
  TFrm_MPar = class(TFrm_C)
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    StaticText2: TStaticText;
    DBEdit2: TDBEdit;
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
  Frm_MPar: TFrm_MPar;
  mPar_Ori: String;
  mPar_Oper: Integer;
implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_MPar.BBnAtuClick(Sender: TObject);
begin
  inherited;
If DM4.Tb_MPar.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
      mrYes: GRAVAR.Click;
      else CANCELAR.Click;
      end;
   end;
flCadMPar(campo.ItemIndex,1,0,edit1.Text);

end;

procedure TFrm_MPar.INCLUIRClick(Sender: TObject);
begin
  inherited;
mPar_Oper:=0;
DM4.Tb_MPar.Append;
mcodigo            :=DM4.Tb_MParMPARCODIGO.AsString;
DBEdit1.SetFocus;
end;

procedure TFrm_MPar.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_MParMPARCODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado',mtWarning,[mbOk],0);
   exit;
   end;
mPar_Oper:=8;
DM4.Tb_MPar.Edit;
DBEdit2.SetFocus;

end;

procedure TFrm_MPar.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_MParMPARCODIGO.IsNull then
   begin
   MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM4.Tb_MPar.Delete;
   end;

end;

procedure TFrm_MPar.GRAVARClick(Sender: TObject);
begin
  inherited;
if DM4.Tb_MParMPARMOTIVO.AsString='' then
   begin
   MessageDlg('Favor digitar um Motivo Válido!',mtWarning,[mbOk],0);
   DBEdit2.SetFocus;
   exit;
   end;
DM4.Tb_MPar.Post;
CANCELAR.Click;



end;

procedure TFrm_MPar.CANCELARClick(Sender: TObject);
begin
  inherited;
mPar_oper:=0;
DM4.Tb_MPar.Cancel;
if DM4.Tb_MParMPARMOTIVO.Value='_' then
   DM4.Tb_MPar.Delete;
INCLUIR.Enabled     :=true;
ALTERAR.Enabled     :=true;
EXCLUIR.Enabled     :=true;

end;

procedure TFrm_MPar.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM4.Tb_MParMPARCODIGO.AsString then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select MPARMOTIVO,MPARCODIGO from CADMPAR where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),' ',' MPARCODEMP=0'+IntTostr(codemp)+' and ')
                     +' MPARCODIGO=0'+DM4.Tb_MParMPARCODIGO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      ShowMessage('Este código ja esta cadastrado Motivo: '+DM1.Query1.Fields[1].AsString);
      DBEdit1.SetFocus;
      exit;
      end;
   end;


end;

procedure TFrm_MPar.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if mPar_Ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   mpar_ori := '';
   end;

end;

procedure TFrm_MPar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=9) or (key=27) then
   begin
   if mpar_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      mpar_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_MPar.SAIRClick(Sender: TObject);
begin
  inherited;
  if mpar_ori = '' then close;

end;

procedure TFrm_MPar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_MPar.FormShow(Sender: TObject);
begin
  inherited;
  PC1.ActivePage := tsCad;
end;

end.
