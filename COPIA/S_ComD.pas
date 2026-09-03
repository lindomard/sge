unit S_ComD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, StdCtrls, ComCtrls, Buttons, ExtCtrls, S_DM1, db,dbtables,func,
  Mask, DBCtrls, Grids, DBGrids,lerarq;

type
  TFrm_ComD = class(TFrm_C)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ComD: TFrm_ComD;
  comd_ori: String;
implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_ComD.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadcomd(CAMPO.ItemIndex,1,Edit1.Text);
INCLUIR.Enabled:=True;
ALTERAR.Enabled:=True;
GRAVAR.Enabled :=False;
EXCLUIR.Enabled:=True;
CANCELAR.Enabled:=True;

end;

procedure TFrm_ComD.INCLUIRClick(Sender: TObject);
begin
  inherited;
DM1.Tb_ComD.Append;
DBEdit1.Enabled   :=True;
DBEDIT1.SetFocus;
mcodigo:=DM1.Tb_ComDCDDESC.AsString;

end;

procedure TFrm_ComD.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ComDCDDESC.IsNull then
   begin
   ShowMessage('Não a registro a ser alterado');
   exit;
   end;
DM1.Tb_ComD.Edit;
DBEdit2.SetFocus;

end;

procedure TFrm_ComD.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM1.Tb_ComDCDDESC.IsNull) then
   begin
   ShowMessage('Desconto tem que ser Preenchido');
   DBEdit1.SetFocus;
   exit;
   end;
dm1.Tb_ComD.Post;
DBEdit1.Enabled   :=False;
CANCELAR.Click;

end;

procedure TFrm_ComD.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_ComDCDDESC.IsNull then
   begin
   ShowMessage('Não ha registro a ser excluido!');
   exit;
   end;

if fmensagem('Quer Realmente Excluir este registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Tb_ComD.Delete;
   end;
end;

procedure TFrm_ComD.CANCELARClick(Sender: TObject);
begin
  inherited;
DM1.Tb_ComD.Cancel;
DBEdit1.Enabled   :=False;

end;

procedure TFrm_ComD.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM1.Tb_ComDCDDESC.AsString then
   begin
   if flqr1('CDCOMIS','CD','CADCOMD','N','CDDESC',DM1.Tb_ComDCDDESC.AsString) then
      begin
      ShowMessage('Este código ja esta cadastrado com a comissão: '+DM1.Query1.Fields[0].AsString);
      DBEdit1.SetFocus;
      exit;
      end;
   end;
if DM1.Tb_ComDCDDESC.Value<0 then
   begin
   ShowMessage('Desconto tem que ser um valor positivo!');
   DBEdit1.SetFocus;
   exit;
   end;
if DM1.Tb_ComDCDDESC.Value>99 then
   begin
   ShowMessage('Desconto tem que ser um valor inferior a 99!');
   DBEdit1.SetFocus;
   exit;
   end;

end;

procedure TFrm_ComD.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_ComD.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: DM1.Tb_ComD.Post;
      mrNo : DM1.Tb_ComD.Cancel;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_ComD.FormCreate(Sender: TObject);
begin
  inherited;
comd_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADCOMD') then
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

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;

end;

procedure TFrm_ComD.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if comd_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   comd_ori := '';
   end;

end;

procedure TFrm_ComD.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if comd_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      comd_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_ComD.SAIRClick(Sender: TObject);
begin
  inherited;
  if comd_ori = '' then close;
end;

procedure TFrm_ComD.FormShow(Sender: TObject);
begin
  inherited;
  PC1.ActivePage := tsCad;
end;

procedure TFrm_ComD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
  Action := caFree;

end;

end.
