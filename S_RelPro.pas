unit S_RelPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func,s_DM2, Grids, DBGrids, StdCtrls, ExtCtrls,
  Mask, DBCtrls, Buttons;

type
  TFrm_RelPro = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    StaticText1: TStaticText;
    DBEdit1: TDBEdit;
    StaticText2: TStaticText;
    DBEdit2: TDBEdit;
    StaticText3: TStaticText;
    DBEdit3: TDBEdit;
    StaticText4: TStaticText;
    DBEdit4: TDBEdit;
    StaticText5: TStaticText;
    DBEdit5: TDBEdit;
    StaticText6: TStaticText;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    DBEdit9: TDBEdit;
    StaticText9: TStaticText;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    StaticText10: TStaticText;
    DBEdit12: TDBEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    NOMPRO: TEdit;
    bbRelacionar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelPro: TFrm_RelPro;

implementation

{$R *.dfm}

procedure TFrm_RelPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
