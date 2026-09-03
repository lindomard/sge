unit S_Tot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func,S_DM1, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls,S_Tab00,S_TabM;

type
  TFrm_Tot = class(TForm)
    Qr_TDVCA: TQuery;
    Qr_TDVCATCCODEMP: TFloatField;
    Qr_TDVCATCDOC: TStringField;
    Qr_TDVCATCNOME: TStringField;
    Qr_TDVCATCQTDLIN: TFloatField;
    Qr_TDVCATCQTDCOL: TFloatField;
    Qr_TDVCATCFPADRAO: TFloatField;
    Qr_TDVCATCQTDITEM: TFloatField;
    Qr_TDVCATCQTDLPP: TFloatField;
    Qr_TDVCATCNUMCOL: TFloatField;
    Qr_TDVCATCINTCOL: TFloatField;
    Qr_TDVCATCTPCOL: TFloatField;
    Qr_TDVCATCORDEM: TFloatField;
    Qr_TDVCATCMPAGGR: TFloatField;
    Qr_TDVCATCOBS: TStringField;
    Qr_TDVCATCTPESQ: TFloatField;
    Qr_TDVCATCTPREL: TFloatField;
    Qr_TDVCATCIMPG: TFloatField;
    Qr_TDVCATCIMPSG: TFloatField;
    Qr_TDVCATCAVPTPI: TFloatField;
    Qr_TDVCATCAVPIPF: TFloatField;
    Qr_TDVCATCSTATUS: TFloatField;
    Qr_TDVCATCVIS: TFloatField;
    Qr_TDVCATCQTDSER: TFloatField;
    Qr_TDVCATCIMPDA: TFloatField;
    Qr_TDVCAGrupo: TStringField;
    GroupBox1: TGroupBox;
    Src_CTDVCA: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    NOMREL: TEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Qr_TDVCATCTAB01: TStringField;
    Qr_TDVCATCTAB02: TStringField;
    Qr_TDVCATCTAB02N: TFloatField;
    Qr_TDVCATCTAB03: TStringField;
    Qr_TDVCATCTAB03N: TFloatField;
    Qr_TDVCATCTAB04: TStringField;
    Qr_TDVCATCTAB04N: TFloatField;
    Qr_TDVCATCTAB05: TStringField;
    Qr_TDVCATCTAB05N: TFloatField;
    Qr_TDVCATCORDEM2: TStringField;
    Qr_TDVCATCFILTRO: TStringField;
    Qr_TDVCATCCONT_M: TStringField;
    Qr_TDVCATCCONT_R: TStringField;
    Qr_TDVCATCCONT_AP: TFloatField;
    Qr_TDVCATCBLOQ: TFloatField;
    Qr_TDVCATCAGRUPAR: TFloatField;
    Qr_TDVCATCMASC: TStringField;
    Qr_TDVCATCPERIODO: TStringField;
    Qr_TDVCATCDIMGRU: TFloatField;
    Qr_TDVCATCDIMSG: TFloatField;
    Qr_TDVCATCTPFORM: TFloatField;
    Qr_TDVCATCQTDDIV: TFloatField;
    Qr_TDVCATCTAB06: TStringField;
    Qr_TDVCATCTAB06N: TFloatField;
    Qr_TDVCATCTAB07: TStringField;
    Qr_TDVCATCTAB07N: TFloatField;
    Qr_TDVCATCTAB08: TStringField;
    Qr_TDVCATCTAB08N: TFloatField;
    Qr_TDVCATCTAB09: TStringField;
    Qr_TDVCATCTAB09N: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Qr_TDVCACalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure NOMRELChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tot: TFrm_Tot;

implementation

uses lerarq;

{$R *.dfm}

procedure TFrm_Tot.FormCreate(Sender: TObject);
begin
Qr_TDVCA.Close;
Qr_TDVCA.Sql.Clear;
Qr_TDVCA.SQL.Add('Select * from CTDVCA '
                +iif(DM1.Qr_TID.locate('TINOME','CADTDV',[]),'',' where TCCODEMP=0'+IntToStr(codemp))
                +' order by TCNOME,TCDOC ');
Qr_TDVCA.Open;
end;

procedure TFrm_Tot.Qr_TDVCACalcFields(DataSet: TDataSet);
begin
dm1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.Sql.Add('Select CATITULO from CADARQ2 where '
                  +' CANOMARQ='+chr(39)+Qr_TDVCATCDOC.Value+chr(39)
                  +' group by CATITULO');
DM1.Query1.Open;
if not DM1.Query1.Eof then
   Qr_TDVCAGrupo.Value:=DM1.Query1.Fields[0].AsString;
end;

procedure TFrm_Tot.BitBtn1Click(Sender: TObject);
begin
if Frm_TabM=nil then
   Application.CreateForm(TFrm_TabM, Frm_TabM);
if not Qr_TDVCATCNOME.IsNull then
   begin
   Frm_TabM.Label2.Caption:='Relatório Selecionado: ';
   Frm_TabM.NOMREL.Caption:=Trim(Qr_TDVCATCNOME.Value);
   mpesq:='CADTDV';
   mreltab:=Qr_TDVCATCDOC.Value;
   fltdvca(0,0,mreltab,Qr_TDVCATCNOME.Value,mpesq)
   end;
frm_TabM.ShowModal;
frm_TabM:=nil;
end;

procedure TFrm_Tot.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Tot.DBGrid1DblClick(Sender: TObject);
begin
BitBtn1.Click;
end;

procedure TFrm_Tot.NOMRELChange(Sender: TObject);
begin
Qr_TDVCA.Locate('TCNOME',NOMREL.Text,[loCaseInsensitive, loPartialKey]);
end;

procedure TFrm_Tot.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
