unit S_CadFrasco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM4,lerarq,func,db,dbtables;

type
  TFrm_CadFrasco = class(TFrm_C)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    QR_CADFRASCO: TQuery;
    UpCADFRASCO: TUpdateSQL;
    DSCADFRASCO: TDataSource;
    QR_CADFRASCOFRCODFRASCO: TFloatField;
    QR_CADFRASCOFRDESCFRASCO: TStringField;
    procedure BBnAtuClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadFrasco: TFrm_CadFrasco;
  mfras_Ori: String;
  mPer_Oper: Integer;

implementation

uses S_DM2, S_DM1;

{$R *.dfm}

procedure TFrm_CadFrasco.BBnAtuClick(Sender: TObject);
begin
  inherited;
  If QR_CADFRASCO.State in [dsInsert, dsEdit] then
     begin
     Case MessageDlg('O registro atual não está gravado!'+#13
                    +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
        mrYes: GRAVAR.Click;
        else CANCELAR.Click;
        end;
     end;
//  flCadMPer(campo.ItemIndex,1,0,edit1.Text);

end;

procedure TFrm_CadFrasco.DBEdit1Exit(Sender: TObject);
begin
  inherited;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select FRCODFRASCO from CadFrasco where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CadFrasco',[]),' ',' MCODEMP=0'+IntTostr(codemp)+' and ')
                     +' FRCODFRASCO=0'+QR_CADFRASCOFRCODFRASCO.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      ShowMessage('Este código ja esta cadastrado Motivo: '+QR_CADFRASCO.Fields[1].AsString);
      DBEdit1.SetFocus;
      exit;
      end;

end;

procedure TFrm_CadFrasco.INCLUIRClick(Sender: TObject);
begin
  inherited;
//  mPer_Oper:=0;
  QR_CADFRASCO.Append;
//  mcodigo                       :=DM2.Tb_MoldeMCODMOLDE.AsString;
  DBEdit1.Enabled               := FALSE;
  DBEdit2.SetFocus;

end;

procedure TFrm_CadFrasco.ALTERARClick(Sender: TObject);
begin
  inherited;
  if QR_CADFRASCOFRCODFRASCO.IsNull then
     begin
     MessageDlg('Não ha registro a ser alterado',mtWarning,[mbOk],0);
     exit;
     end;
//  mPer_Oper:=8;
  QR_CADFRASCO.Edit;
  DBEdit2.SetFocus;

end;

procedure TFrm_CadFrasco.EXCLUIRClick(Sender: TObject);
begin
  inherited;
  if QR_CADFRASCOFRCODFRASCO.IsNull then
     begin
     MessageDlg('Não ha registro a ser excluido!',mtWarning,[mbOk],0);
     exit;
     end;
  if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
     begin
     QR_CADFRASCO.Delete;
     end;

end;

procedure TFrm_CadFrasco.GRAVARClick(Sender: TObject);
begin
  inherited;

  If QR_CADFRASCO.State in [dsInsert] then
     begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('SELECT MAX(FRCODFRASCO) FROM CadFrasco ');
         DM1.Query3.Open;
         QR_CADFRASCOFRCODFRASCO.AsFloat := DM1.Query3.Fields[0].AsFloat + 1;
     END;

  QR_CADFRASCO.Post;
  QR_CADFRASCO.ApplyUpdates;
  CANCELAR.Click;

end;

procedure TFrm_CadFrasco.CANCELARClick(Sender: TObject);
begin
  inherited;
  DBEdit1.Enabled     := TRUE;
//  mPer_oper:=0;
  QR_CADFRASCO.Cancel;
  INCLUIR.Enabled     :=true;
  ALTERAR.Enabled     :=true;
  EXCLUIR.Enabled     :=true;

end;

procedure TFrm_CadFrasco.SAIRClick(Sender: TObject);
begin
  inherited;
  CLOSE;
end;

procedure TFrm_CadFrasco.FormCreate(Sender: TObject);
begin
  inherited;
  QR_CADFRASCO.Open;
end;

procedure TFrm_CadFrasco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
