unit S_SitMaq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,lerarq,func,db,dbtables;

type
  TFrm_SitMaq = class(TFrm_C)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BBnAtuClick(Sender: TObject);
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
  Frm_SitMaq: TFrm_SitMaq;

implementation

uses S_DM2, S_DM1;

{$R *.dfm}

procedure TFrm_SitMaq.BBnAtuClick(Sender: TObject);
begin
  inherited;
  If DM2.Tb_SitMaq.State in [dsInsert, dsEdit] then
     begin
     Case MessageDlg('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
        mrYes: GRAVAR.Click;
        else CANCELAR.Click;
        end;
     end;
  flCadMPer(campo.ItemIndex,1,0,edit1.Text);

end;

procedure TFrm_SitMaq.INCLUIRClick(Sender: TObject);
begin
  inherited;
//  mPer_Oper:=0;
  DM2.Tb_SitMaq.Append;
  mcodigo                        :=DM2.Tb_SitMaqSCODSITMAQ.AsString;
  DM2.Tb_SitMaqSCODEMP.AsInteger := codemp;
  DBEdit1.Enabled                := FALSE;
  DBEdit2.SetFocus;

end;

procedure TFrm_SitMaq.ALTERARClick(Sender: TObject);
begin
  inherited;
  if DM2.Tb_SitMaqSCODSITMAQ.IsNull then
     begin
     MessageDlg('Não ha registro a ser alterado',mtWarning,[mbOk],0);
     exit;
     end;
//  mPer_Oper:=8;
  DM2.Tb_SitMaq.Edit;
  DBEdit2.SetFocus;

end;

procedure TFrm_SitMaq.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if DM2.Tb_SitMaqSCODSITMAQ.IsNull then
     begin
     MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
     exit;
     end;
  if Application.MessageBox('Quer Realmente Excluir este Registro?',' ',MB_YESNO+MB_DEFBUTTON2)=mrYes then
     begin
     DM2.Tb_SitMaq.Delete;
     end;

end;

procedure TFrm_SitMaq.GRAVARClick(Sender: TObject);
begin
  inherited;
  If DM2.Tb_SitMaq.State in [dsInsert] then
     begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('SELECT MAX(SCODSITMAQ) FROM CADSITMAQ ');
         DM1.Query3.Open;
         DM2.Tb_SitMaqSCODSITMAQ.AsFloat := DM1.Query3.Fields[0].AsFloat + 1;
     END;

  DM2.Tb_SitMaq.Post;
  DM2.Tb_SitMaq.ApplyUpdates;
  CANCELAR.Click;

end;

procedure TFrm_SitMaq.CANCELARClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Enabled     := TRUE;
//  mPer_oper:=0;
  DM2.Tb_SitMaq.Cancel;
  INCLUIR.Enabled     :=true;
  ALTERAR.Enabled     :=true;
  EXCLUIR.Enabled     :=true;

end;

procedure TFrm_SitMaq.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrm_SitMaq.FormCreate(Sender: TObject);
begin
  inherited;
  dm2.Tb_SitMaq.Open;
end;

end.
