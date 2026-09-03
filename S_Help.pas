unit S_Help;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,func,lerarq,S_DM2,db,dbtables;

type
  TFrm_Help = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Help: TFrm_Help;

implementation

{$R *.dfm}

procedure TFrm_Help.INCLUIRClick(Sender: TObject);
begin
  inherited;
DM2.Tb_Help.Append;
Dbedit1.SetFocus;

end;

procedure TFrm_Help.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_HelpHP_CODSEG.IsNull then
   begin
   ShowMessage('Não há registro a ser alterado');
   exit;
   end;

DM2.Tb_Help.Edit;
Dbedit1.SetFocus;

end;

procedure TFrm_Help.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_HelpHP_CODLINK.IsNull then
   begin
   ShowMessage('Não há registro a ser excluido!');
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM2.Tb_Help.Delete;
   CANCELAR.Click;
   end;

end;

procedure TFrm_Help.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM2.Tb_HelpHP_NOMCAM.Value='_') or (DM2.Tb_HelpHP_NOMCAM.IsNull) then
   begin
   ShowMessage('Nome Invalido!');
   DBEdit2.SetFocus;
   exit;
   end;
if DM2.Tb_HelpHP_CODLINK.IsNull then
   begin
   MessageDlg('Código do Link Campo Obrigatório!',mtWarning,[mbOk],0);
   DBEdit1.SetFocus;
   exit;
   end;
if DM2.Tb_HelpHP_FORMULARIO.IsNull then
   begin
   MessageDlg('Nome do Formulario Campo Obrigatório!',mtWarning,[mbOk],0);
   DBEdit3.SetFocus;
   exit;
   end;

DM2.Tb_HelpHP_NOMCAM.Value    :=UpperCase(DM2.Tb_HelpHP_NOMCAM.Value);
DM2.Tb_HelpHP_FORMULARIO.Value:=UpperCase(DM2.Tb_HelpHP_FORMULARIO.Value);

dm2.Tb_Help.Post;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftMemo,'DESC',PtInput);
DM1.Query1.Params.CreateParam(FtString,'CODLINK',ptInput);
DM1.Query1.SQL.Add('Update CADHELP set HP_DESC=:DESC'
                  +' where HP_CODLINK=:CODLINK');
DM1.Query1.ParamByName('DESC').AsMemo    :=DM2.Tb_HelpHP_DESC.Value;
DM1.Query1.ParamByName('CODLINK').AsFloat:=DM2.Tb_HelpHP_CODLINK.Value;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;



CANCELAR.Click;

end;

procedure TFrm_Help.CANCELARClick(Sender: TObject);
begin
  inherited;
DM2.Tb_Help.Cancel;

end;

procedure TFrm_Help.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadhelp(CAMPO.ItemIndex,1,0,Edit1.Text,'');

end;

procedure TFrm_Help.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
