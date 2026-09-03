unit S_Obs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  S_DM1, func, db, dbtables, StdCtrls, ExtCtrls, Buttons, DBCtrls;

type
  TFrm_Obs = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Obs: TFrm_Obs;

implementation

{$R *.DFM}

procedure TFrm_Obs.FormCreate(Sender: TObject);
begin
label1.Caption:='Associado.: '+FormatFloat('00000',DM1.Tb_CliCCODCLI.Value)+'-'+DM1.Tb_CliCRAZAO.Value;
DM1.Tb_Cli.edit;
end;

procedure TFrm_Obs.BitBtn2Click(Sender: TObject);
begin
DM1.Tb_Cli.Cancel;
close;
end;

procedure TFrm_Obs.BitBtn1Click(Sender: TObject);
begin
DM1.Tb_Cli.Post;
close;
end;

end.
