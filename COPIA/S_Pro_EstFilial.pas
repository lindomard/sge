unit S_Pro_EstFilial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, Buttons;

type
  Tfrm_Pro_EstFilial = class(TForm)
    lbl_nompro: TLabel;
    lbl_precoqtd: TLabel;
    GroupBox1: TGroupBox;
    bbFechar: TBitBtn;
    DBGrid1: TDBGrid;
    tb_cadpro_filial: TQuery;
    src_cadpro_filial: TDataSource;
    tb_cadpro_filialCESALDO: TFloatField;
    tb_cadpro_filialCFNOME: TStringField;
    tb_cadpro_filialCFFILIAL: TFloatField;
    procedure bbFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Pro_EstFilial: Tfrm_Pro_EstFilial;

implementation

uses S_DM1;

{$R *.dfm}

procedure Tfrm_Pro_EstFilial.bbFecharClick(Sender: TObject);
begin
close;
end;

end.
