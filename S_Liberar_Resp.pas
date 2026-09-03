unit S_Liberar_Resp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,db,dbtables,func,S_DM4, DBCtrls, Buttons, ExtCtrls,
  Mask,S_DM1;

type
  TFrm_Liberar_Resp = class(TForm)
    lbl_resp: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    NOMUSR: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Liberar_Resp: TFrm_Liberar_Resp;

implementation

{$R *.dfm}

procedure TFrm_Liberar_Resp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
