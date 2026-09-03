unit S_LRS_Cat52;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, Mask, DBCtrls,
  ComCtrls;

type
  TFrm_LRS_Cat52 = class(TForm)
    Panel1: TPanel;
    src_cat52: TDataSource;
    qr_cat52: TQuery;
    qr_cat52MP_VDALIQ: TFloatField;
    qr_cat52MP_CANCELADOS: TFloatField;
    qr_cat52MP_ACREC: TFloatField;
    qr_cat52MP_DESC: TFloatField;
    qr_cat52MP_ISENTAS: TFloatField;
    qr_cat52MP_NAOINC: TFloatField;
    qr_cat52MP_SUBTRI: TFloatField;
    qr_cat52MP_TOTTRIB: TFloatField;
    qr_cat52ORIGEMINF: TStringField;
    qr_cat52CAT52_VDALIQ: TFloatField;
    qr_cat52CAT52_CANCELADOS: TFloatField;
    qr_cat52CAT52_ACREC: TFloatField;
    qr_cat52CAT52_DESC: TFloatField;
    qr_cat52CAT52_ISENTAS: TFloatField;
    qr_cat52CAT52_NAOINC: TFloatField;
    qr_cat52CAT52_SUBTRI: TFloatField;
    qr_cat52CAT52_TOTTRIB: TFloatField;
    qr_cat52PED2_VDALIQ: TFloatField;
    qr_cat52PED2_CANCELADOS: TFloatField;
    qr_cat52PED2_ACREC: TFloatField;
    qr_cat52PED2_DESC: TFloatField;
    qr_cat52PED2_ISENTAS: TFloatField;
    qr_cat52PED2_NAOINC: TFloatField;
    qr_cat52PED2_SUBTRI: TFloatField;
    qr_cat52PED2_TOTTRIB: TFloatField;
    qr_cat52DIFMP_CAT52_VDALIQ: TFloatField;
    qr_cat52DIFMP_CAT52_ISENTAS: TFloatField;
    qr_cat52DIFMP_CAT52_NAOINC: TFloatField;
    qr_cat52DIFMP_CAT52_SUBTRI: TFloatField;
    qr_cat52DIFMP_CAT52_TOTTRIB: TFloatField;
    qr_cat52DIFMP_PED2_VDALIQ: TFloatField;
    qr_cat52DIFMP_PED2_ISENTAS: TFloatField;
    qr_cat52DIFMP_PED2_NAOINC: TFloatField;
    qr_cat52DIFMP_PED2_SUBTRI: TFloatField;
    qr_cat52DIFMP_PED2_TOTTRIB: TFloatField;
    PageControl1: TPageControl;
    tsResumo: TTabSheet;
    tsErrosGraves: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    StaticText12: TStaticText;
    DBE_CAT52_VDALIQ: TDBEdit;
    DBE_CAT52_ISENTAS: TDBEdit;
    DBE_CAT52_NAOINC: TDBEdit;
    DBE_CAT52_SUBTRI: TDBEdit;
    DBE_CAT52_TOTTRIB: TDBEdit;
    Panel_livrofis: TPanel;
    StaticText7: TStaticText;
    DBE_PED2_VDALIQ: TDBEdit;
    DBE_PED2_ISENTAS: TDBEdit;
    DBE_PED2_NAOINC: TDBEdit;
    DBE_PED2_SUBTRI: TDBEdit;
    DBE_PED2_TOTTRIB: TDBEdit;
    Panel_mapares: TPanel;
    StaticText6: TStaticText;
    DBE_MP_VDALIQ: TDBEdit;
    DBE_MP_ISENTAS: TDBEdit;
    DBE_MP_NAOINC: TDBEdit;
    DBE_MP_SUBTRI: TDBEdit;
    DBE_MP_TOTTRIB: TDBEdit;
    Panel_titulo: TPanel;
    DBText1: TDBText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText9: TStaticText;
    Panel3: TPanel;
    StaticText1: TStaticText;
    DBE_DIFMP_PED2_VDALIQ: TDBEdit;
    DBE_DIFMP_PED2_ISENTAS: TDBEdit;
    DBE_DIFMP_PED2_NAOINC: TDBEdit;
    DBE_DIFMP_PED2_SUBTRI: TDBEdit;
    DBE_DIFMP_PED2_TOTTRIB: TDBEdit;
    Panel4: TPanel;
    StaticText8: TStaticText;
    DBE_DIFMP_CAT52_VDALIQ: TDBEdit;
    DBE_DIFMP_CAT52_ISENTAS: TDBEdit;
    DBE_DIFMP_CAT52_NAOINC: TDBEdit;
    DBE_DIFMP_CAT52_SUBTRI: TDBEdit;
    DBE_DIFMP_CAT52_TOTTRIB: TDBEdit;
    memo_erros_graves: TRichEdit;
    qr_cat52CMCODEMP: TFloatField;
    qr_cat52CMCODIMP: TFloatField;
    qr_cat52CMDATA: TDateTimeField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_LRS_Cat52: TFrm_LRS_Cat52;

implementation

uses S_DM1, Func;

{$R *.dfm}

procedure TFrm_LRS_Cat52.FormCreate(Sender: TObject);
var
x: Integer;
begin
for x:=0 to qr_cat52.Fields.Count-1 do
   begin
   if (qr_cat52.fields[x].DataType=ftInteger) or
      (qr_cat52.fields[x].DataType=ftfloat) then
      (qr_cat52.Fields[x] as TFloatField).displayformat:=mcasas;
   end;

end;

end.
