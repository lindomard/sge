unit S_Dep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,lerarq,S_DM1,func;

type
  TFrm_Dep = class(TFrm_C)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     dep_ori: String;
  end;

var
  Frm_Dep: TFrm_Dep;
  moper: Integer;

implementation

uses S_DM2, S_DM4;

{$R *.dfm}

procedure TFrm_Dep.FormCreate(Sender: TObject);
begin
  inherited;
dep_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADDEPTO') then
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

procedure TFrm_Dep.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if dep_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;
end;

procedure TFrm_Dep.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if dep_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      end;
   abort;
   end;

end;

procedure TFrm_Dep.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM2.Tb_Dep_FolhaDPCODDEP.AsString then
   begin
   if flqr1('DPNOME','DP','CADDEPTO','N','DPCODDEP',DM2.Tb_Dep_FolhaDPCODDEP.AsString) then
      begin
      MessageDlg('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,mtinformation,[mbOk],0);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Dep.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
DM2.Tb_Dep_Folha.Append;
mcodigo:=DM2.Tb_Dep_FolhaDPCODDEP.AsString;
DBEdit1.Enabled:=True;
DBEdit1.SetFocus;

end;

procedure TFrm_Dep.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_Dep_FolhaDPCODDEP.IsNull then
   begin
   MessageDlg('Nao ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
moper:=8;
DM2.Tb_Dep_Folha.Edit;
DBEdit2.SetFocus;
DBEdit1.Enabled:=False;


end;

procedure TFrm_Dep.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_Dep_FolhaDPCODDEP.IsNull then
   begin
   MessageDlg('Nao ha registro a ser excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM2.Tb_Dep_Folha.Delete;
   CANCELAR.Click;
   end;


end;

procedure TFrm_Dep.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM2.Tb_Dep_FolhaDPNOME.Value='_') or (DM2.Tb_Dep_FolhaDPNOME.IsNull) then
   begin
   MessageDlg('Nome Inválido!',mtWarning,[mbOk],0);
   DBEdit2.SetFocus;
   exit;
   end;
dm2.Tb_Dep_Folha.Post;
CANCELAR.Click;

end;

procedure TFrm_Dep.CANCELARClick(Sender: TObject);
begin
  inherited;
DM2.Tb_Dep_Folha.Cancel;
moper:=0;

end;

procedure TFrm_Dep.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcaddep_folha(CAMPO.ItemIndex,1,Edit1.Text);
end;

procedure TFrm_Dep.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Dep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Dep.FormActivate(Sender: TObject);
begin
  inherited;
pc1.ActivePageIndex:=0;
end;

end.
