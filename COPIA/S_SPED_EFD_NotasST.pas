unit S_SPED_EFD_NotasST;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, Grids, DBGrids, RxMemDS, StdCtrls;

type
  TFrm_SPED_EFD_NotasST = class(TForm)
    Panel1: TPanel;
    Src_Notas: TDataSource;
    DBGrid_Notas: TDBGrid;
    Qr_Notas: TQuery;
    Qr_NotasNUMNF: TFloatField;
    Qr_NotasDATAEMIS: TDateTimeField;
    Qr_NotasVALORNF: TFloatField;
    Qr_NotasICMSST: TFloatField;
    Qr_NotasCODIGO: TFloatField;
    Qr_NotasNOME: TStringField;
    Qr_NotasTIPONF: TStringField;
    Qr_NotasUF: TStringField;
    Qr_NotasCFOP: TStringField;
    DBGrid_resumo: TDBGrid;
    Label1: TLabel;
    st_ent_valcont: TStaticText;
    Label2: TLabel;
    st_ent_baser: TStaticText;
    Label3: TLabel;
    ST_ent_ICMSRET: TStaticText;
    mem_resumo: TRxMemoryData;
    src_resumo: TDataSource;
    mem_resumouf: TStringField;
    mem_resumoent_valor_contabil: TFloatField;
    mem_resumoent_icmsr: TFloatField;
    mem_resumosai_valor_contabil: TFloatField;
    mem_resumosai_icmsr: TFloatField;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ST_sai_ICMSRET: TStaticText;
    st_sai_baser: TStaticText;
    st_sai_valcont: TStaticText;
    mem_resumotot_gnre: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SPED_EFD_NotasST: TFrm_SPED_EFD_NotasST;

implementation

uses S_DM1;

{$R *.dfm}

end.
