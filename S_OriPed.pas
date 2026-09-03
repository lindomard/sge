unit S_OriPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,lerarq,S_DM6,func,db,dbtables;

type
  TFrm_OriPed = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBRG_VINCULO: TDBRadioGroup;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SAIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      ori_oriped: String;

  end;

var
  Frm_OriPed: TFrm_OriPed;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_OriPed.BBnAtuClick(Sender: TObject);
begin
  inherited;
If DM6.Tb_OrPed.State in [dsInsert, dsEdit] then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
   mrYes: GRAVAR.Click;
   mrNo : CANCELAR.Click;
   end;
end;
flCadOrPed(campo.ItemIndex,edit1.Text);
INCLUIR.Enabled:=true;
ALTERAR.Enabled:=true;
GRAVAR.Enabled :=False;
EXCLUIR.Enabled:=true;
CANCELAR.Enabled:=True;

end;

procedure TFrm_OriPed.INCLUIRClick(Sender: TObject);
begin
  inherited;
DM6.Tb_OrPed.Append;
mcodigo:=DM6.Tb_OrPedCOCODIGO.AsString;
DBEdit1.Enabled:=True;
Dbedit2.SetFocus;

end;

procedure TFrm_OriPed.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_OrPedCOCODIGO.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['0'],0);
   exit;
   end;

DM6.Tb_OrPed.Edit;
DBEdit1.Enabled:=False;
Dbedit2.SetFocus;

end;

procedure TFrm_OriPed.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_OrPedCOCODIGO.IsNull then
   begin
   fmensagem('Nao a registro a ser Excluido!',0,['0'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM6.Tb_OrPed.Delete;
   CANCELAR.Click;
   end;


end;

procedure TFrm_OriPed.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM6.Tb_OrPedCONOMORI.Value='_') or (DM6.Tb_OrPedCONOMORI.IsNull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   DBEdit2.SetFocus;
   exit;
   end;
dm6.Tb_OrPed.Post;
CANCELAR.Click;

end;

procedure TFrm_OriPed.CANCELARClick(Sender: TObject);
begin
  inherited;
DM6.Tb_OrPed.Cancel;
if DM6.Tb_OrPedCONOMORI.Value='-' then
   DM6.Tb_OrPed.Delete;

end;

procedure TFrm_OriPed.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM6.Tb_OrPedCOCODIGO.AsString then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CONOMORI from CADORPED where COCODIGO=0'
                     +DM6.Tb_OrPedCOCODIGO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      fmensagem('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString,0,['0'],0);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_OriPed.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if ori_oriped='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   ori_oriped:='';
   end;

end;

procedure TFrm_OriPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_OriPed.SAIRClick(Sender: TObject);
begin
  inherited;
close;
end;

end.
