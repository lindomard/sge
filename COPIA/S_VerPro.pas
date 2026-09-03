unit S_VerPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,db,dbtables,func,S_DM1, Mask, DBCtrls, Grids,
  DBGrids, Buttons;

type
  TFrm_VerPro = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    NOMECLI: TEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_VerPro: TFrm_VerPro;

implementation

{$R *.dfm}

procedure TFrm_VerPro.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_VerPro.FormCreate(Sender: TObject);
begin
if (StrToInt('0'+copy(mpseg,4,2))<1) then
   begin
   DBGrid1.Columns[13].Visible      :=False;
   DBGrid1.Columns[14].Visible      :=False;
   end
else if (StrToInt('0'+copy(mpseg,4,2))=2) then
   begin
   DBGrid1.Columns[13].Title.Caption:='Grade';
   DBGrid1.Columns[14].Visible      :=False;
   end;
end;

procedure TFrm_VerPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
