unit S_Aju02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, S_DM1, S_DM4, DB, DBTables, Func, StdCtrls, DBCtrls, Mask,
  ComCtrls, Buttons;

type
  TFrm_Aju02 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    DBRichEdit1: TDBRichEdit;
    SBnSair: TSpeedButton;
    DBNv1: TDBNavigator;
    procedure SBnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Aju02: TFrm_Aju02;

implementation

{$R *.DFM}

procedure TFrm_Aju02.SBnSairClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Aju02.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If DM4.Tb_Hlp.State in [dsInsert, dsEdit] then
   begin
   case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,mbYesNoCancel,0) of
      mrYes: DM4.Tb_Hlp.Post;
      mrNo : DM4.Tb_Hlp.Cancel;
      else CanClose:=False;
      end;
   end;
end;

procedure TFrm_Aju02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
