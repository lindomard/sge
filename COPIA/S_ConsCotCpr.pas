unit S_ConsCotCpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, StdCtrls, DB, DBTables, Grids, DBGrids;

type
  TFrm_ConsCotCpr = class(TForm)
    Button1: TButton;
    ChaveI: TEdit;
    ChaveF: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dtIni: TDateEdit;
    dtFim: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Tb_CC1: TQuery;
    Tb_CC1CCT1CODEMP: TFloatField;
    Tb_CC1CCT1CHAVE: TFloatField;
    Tb_CC1CCT1LOTSEQ: TFloatField;
    Tb_CC1CCT1OBS: TStringField;
    Tb_CC1CCT1DATA: TDateTimeField;
    Tb_CC1CCT1CASAS: TFloatField;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ConsCotCpr: TFrm_ConsCotCpr;

implementation

uses lerarq, Func2, Func, flerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_ConsCotCpr.Button1Click(Sender: TObject);
begin
Tb_CC1.Close;
TB_CC1.SQL.Clear;
TB_CC1.SQL.Add('select * from CADCOT1 where 1=1');
if ValFloat(ChaveI.Text)>0 then
  TB_CC1.SQL.Add(' and CCT1CHAVE>='+FloatToStr(ValFloat(ChaveI.Text)));
if ValFloat(ChaveF.Text)>0 then
  TB_CC1.SQL.Add(' and CCT1CHAVE<='+FloatToStr(ValFloat(ChaveF.Text)));
if trim(dtIni.Text)<>'/  /' then
  TB_CC1.SQL.Add(' and to_date(CCT1DATA)>='+QuotedStr(dtIni.Text));
if trim(dtFim.Text)<>'/  /' then
  TB_CC1.SQL.Add(' and to_date(CCT1DATA)<='+QuotedStr(dtFim.Text));
TB_CC1.SQL.Add(' order by CCT1DATA, CCT1CHAVE');  
try
  Tb_CC1.Open;
except
  ex_erroSql_Novo(Tb_CC1,62,'_ConsCotCpr','frm_ConsCotCpr');
  end;

end;

procedure TFrm_ConsCotCpr.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

end.
