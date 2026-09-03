unit S_Pro_AjPcoInd_Preview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,uExport, Buttons;

type
  TFrm_Pro_AjPcoInd_Preview = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Src_Preview: TDataSource;
    DBGrid_Preview: TDBGrid;
    Qr_Preview: TQuery;
    bbExportar: TBitBtn;
    bbSair: TBitBtn;
    procedure bbExportarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pro_AjPcoInd_Preview: TFrm_Pro_AjPcoInd_Preview;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_Pro_AjPcoInd_Preview.bbExportarClick(Sender: TObject);
begin
bbExportar.Enabled:=false;

Application.CreateForm(TfExport, fExport);
fExport.DataSet1 :=  Src_Preview.DataSet;       //define o DataSet a ser exportado
fExport.ShowModal;
fExport.Free;
bbExportar.Enabled:=true;


end;

procedure TFrm_Pro_AjPcoInd_Preview.bbSairClick(Sender: TObject);
begin
close;
end;

end.
