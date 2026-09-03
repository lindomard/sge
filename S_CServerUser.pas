unit S_CServerUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,func,db,dbtables,S_DM1,lerarq, StdCtrls, Buttons, ExtCtrls,
  Grids, DBGrids,S_DM2;

type
  TFrm_CServerUser = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    USUARIO: TEdit;
    conectar: TBitBtn;
    BitBtn1: TBitBtn;
    Qr_Usr: TQuery;
    Qr_UsrCODEMP: TFloatField;
    Qr_UsrCODUSR: TFloatField;
    Qr_UsrNOMUSR: TStringField;
    Qr_UsrCODCAR: TFloatField;
    Qr_UsrSENHA: TStringField;
    Qr_UsrCODVEN: TFloatField;
    Qr_UsrENDERECOIP: TStringField;
    Qr_UsrEmpresa: TStringField;
    Qr_Usrestado: TStringField;
    Src_Usr: TDataSource;
    DBGrid1: TDBGrid;
    procedure Qr_UsrCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure conectarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CServerUser: TFrm_CServerUser;

implementation

{$R *.dfm}

procedure TFrm_CServerUser.Qr_UsrCalcFields(DataSet: TDataSet);
begin
if Qr_UsrCODEMP.Value>0 then
   begin
   if flcademp(1,0,Qr_UsrCODEMP.AsString) then
      Qr_UsrEmpresa.Value:=DM2.Tb_EmpRAZAO.Value;
   end;
if Qr_UsrENDERECOIP.IsNull then
   Qr_Usrestado.Value:='Desconectado'
else
   Qr_Usrestado.Value:='Conectado';      
end;

procedure TFrm_CServerUser.FormActivate(Sender: TObject);
begin
Qr_Usr.Close;
Qr_Usr.Open;
end;

procedure TFrm_CServerUser.DBGrid1DblClick(Sender: TObject);
begin
if Qr_UsrENDERECOIP.IsNull then
   begin
   MessageDlg('Este Usuário não esta conectado!',mtWarning,[mbok],0);
   USUARIO.Text:='';
   end
else
   USUARIO.Text:=Qr_UsrENDERECOIP.Value;
end;

procedure TFrm_CServerUser.conectarClick(Sender: TObject);
begin
if Trim(USUARIO.Text)='' then
   begin
   MessageDlg('Endereço IP não Especificado!',mtWarning,[mbOk],0);
   USUARIO.SetFocus;
   exit;
   end;
ModalResult:=mrOk;
end;

procedure TFrm_CServerUser.BitBtn1Click(Sender: TObject);
begin
ModalResult:=mrCancel;
end;

procedure TFrm_CServerUser.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
