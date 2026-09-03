unit S_CadMolde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM4,lerarq,func,db,dbtables;

type
  TFrm_CadMolde = class(TFrm_C)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BBnAtuClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadMolde: TFrm_CadMolde;
  mPer_Ori: String;
  mPer_Oper: Integer;

implementation

uses S_DM2, S_DM1;

{$R *.dfm}

procedure TFrm_CadMolde.BBnAtuClick(Sender: TObject);
begin
  inherited;
  If DM2.Tb_Molde.State in [dsInsert, dsEdit] then
     begin
     Case MessageDlg('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
        mrYes: GRAVAR.Click;
        else CANCELAR.Click;
        end;
     end;
  flCadMPer(campo.ItemIndex,1,0,edit1.Text);

end;

procedure TFrm_CadMolde.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if mcodigo<>DM2.Tb_MoldeMCODMOLDE.AsString then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select MCODMOLDE,MNOMMOLDE from CADMOLDE where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADMOLDE',[]),' ',' MCODEMP=0'+IntTostr(codemp)+' and ')
                     +' MCODMOLDE=0'+DM2.Tb_MoldeMCODMOLDE.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      ShowMessage('Este código ja esta cadastrado Motivo: '+DM1.Query1.Fields[1].AsString);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_CadMolde.INCLUIRClick(Sender: TObject);
begin
  inherited;
  mPer_Oper:=0;
  DM2.Tb_Molde.Append;
  mcodigo                       :=DM2.Tb_MoldeMCODMOLDE.AsString;
  DM2.Tb_MoldeMCODEMP.AsInteger := codemp;
  DBEdit1.Enabled               := FALSE;
  DBEdit2.SetFocus;

end;

procedure TFrm_CadMolde.ALTERARClick(Sender: TObject);
begin
  inherited;
  if DM2.Tb_MoldeMCODMOLDE.IsNull then
     begin
     MessageDlg('Não ha registro a ser alterado',mtWarning,[mbOk],0);
     exit;
     end;
  mPer_Oper:=8;
  DM2.Tb_Molde.Edit;
  DBEdit2.SetFocus;

end;

procedure TFrm_CadMolde.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if DM2.Tb_MoldeMCODMOLDE.IsNull then
     begin
     MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
     exit;
     end;
  if Application.MessageBox('Quer Realmente Excluir este Registro?',' ',MB_YESNO+MB_DEFBUTTON2)=mrYes then
     begin
     DM2.Tb_Molde.Delete;
     end;

end;

procedure TFrm_CadMolde.GRAVARClick(Sender: TObject);
begin
  inherited;

  If DM2.Tb_Molde.State in [dsInsert] then
     begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('SELECT MAX(MCODMOLDE) FROM CADMOLDE ');
         DM1.Query3.Open;
         DM2.Tb_MoldeMCODMOLDE.AsFloat := DM1.Query3.Fields[0].AsFloat + 1;
     END;

  DM2.Tb_Molde.Post;
  DM2.Tb_Molde.ApplyUpdates;
  CANCELAR.Click;

end;

procedure TFrm_CadMolde.CANCELARClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Enabled     := TRUE;
  mPer_oper:=0;
  DM2.Tb_Molde.Cancel;
  INCLUIR.Enabled     :=true;
  ALTERAR.Enabled     :=true;
  EXCLUIR.Enabled     :=true;

end;

procedure TFrm_CadMolde.SAIRClick(Sender: TObject);
begin
  inherited;
  CLOSE;
end;

procedure TFrm_CadMolde.FormCreate(Sender: TObject);
begin
  inherited;
  DM2.Tb_Molde.Open;
end;

end.
