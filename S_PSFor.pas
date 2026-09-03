unit S_PSFor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids;

type
  TFrm_PSFor = class(TForm)
    GroupBox1: TGroupBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    bb_gerar: TButton;
    Query1: TQuery;
    procedure bb_gerarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PSFor: TFrm_PSFor;

implementation

{$R *.dfm}

procedure TFrm_PSFor.bb_gerarClick(Sender: TObject);
begin
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select cpcodpro as Produto, pdnome as Nome, cpcodmat as Materia ');
Query1.SQL.Add(' from cadcomp, cadpro ');
Query1.SQL.Add(' where pdcodpro=cpcodpro and not EXISTS (select * from cadpro where pdcodpro=cpcodmat) ');
Query1.SQL.Add(' order by cpcodpro, cpcodmat ');
Query1.Open;
end;

procedure TFrm_PSFor.FormActivate(Sender: TObject);
begin
bb_gerarClick(Self);
end;

procedure TFrm_PSFor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
