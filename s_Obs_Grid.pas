unit s_Obs_Grid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, Buttons;

type
  Tfrm_obs_Grid = class(TForm)
    Panel_obs_cab: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Src_Advert: TDataSource;
    bbFechar: TBitBtn;
    Label_obs: TLabel;
    procedure bbFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_obs_Grid: Tfrm_obs_Grid;

implementation

{$R *.dfm}

procedure Tfrm_obs_Grid.bbFecharClick(Sender: TObject);
begin
close;
end;

end.
