unit S_ANVISA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables, StdCtrls,S_DM1,func;

type
  TFrm_ANVISA = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel3: TPanel;
    Image1: TImage;
    Image2: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Table1: TQuery;
    Table1DtFabri: TStringField;
    RadioGroup1: TRadioGroup;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    Query1: TQuery;
    DataSource2: TDataSource;
    Table1PDCODPRO: TFloatField;
    Table1PDNOME: TStringField;
    Table1PDCODBAR: TFloatField;
    Table1PDREGMS: TStringField;
    Table1PDCODCON: TFloatField;
    Table1PDPRZVAL: TFloatField;
    Table1CLNUMERO: TStringField;
    Table1CLDTVCTO: TDateTimeField;
    Table1CLQTD: TFloatField;
    Query1PDCODPRO: TFloatField;
    Query1PDNOME: TStringField;
    Query1PDCODBAR: TFloatField;
    Query1PDREGMS: TStringField;
    Query1PDCODCON: TFloatField;
    Query1PDPRZVAL: TFloatField;
    procedure SpeedButton5Click(Sender: TObject);
    procedure Table1CalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  function FmontaTable1(ptipo: Integer): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ANVISA: TFrm_ANVISA;

implementation

uses S_AMVS, uExport, lerarq;
//uses S_AMVS;

{$R *.DFM}

procedure TFrm_ANVISA.SpeedButton5Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_ANVISA.Table1CalcFields(DataSet: TDataSet);
var
   mdia, mmes, mano: word;
   x: Integer;
begin
if ((Table1PDPRZVAL.Value>0) and (not Table1CLDTVCTO.IsNull)) then
   begin
   DecodeDate(Table1CLDTVCTO.Value,mano,mmes,mdia);
   for x:=1 to (Table1PDPRZVAL.AsInteger) do
      begin
      if mmes=1 then
         begin
         mmes:=12;
         mano:=mano-1;
         end
      else mmes:=mmes-1;
      end;
   Table1DtFabri.Value:='01'+'/'+FormatFloat('00',mmes)+'/'+FormatFloat('0000',mano);
   end
else
  begin
  Table1DtFabri.Value:='';
  end;
{  VALIDADE:=36;
   DTVENC:=01/12/2002
   MMES:=MES   =12
   MANO:=ANO   =2002
   FOR X:= 1 TO VALIDADE DO
   BEGIN
      IF MMES=1 THEN
      BEGIN
         MMES:=12
         MANO:=MANO-1
      END
      ELSE
      BEGIN
         MMES:=MMES-1
      END;
   END;
FABRICACAO:='01'+MMES+mANO }

end;

procedure TFrm_ANVISA.SpeedButton2Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
  begin
  Application.CreateForm(TfExport, fExport);
  fExport.DataSet1 := DataSource1.DataSet;       //define o DataSet a ser exportado
  fExport.ShowModal;
  fExport.Free;
  end
else
  begin
  Application.CreateForm(TfExport, fExport);
  fExport.DataSet1 :=Frm_AMVS.DataSource1.DataSet;       //define o DataSet a ser exportado
  fExport.ShowModal;
  fExport.Free;
  end;
end;

procedure TFrm_ANVISA.SpeedButton1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then Table1.Open
end;

procedure TFrm_ANVISA.FormCreate(Sender: TObject);
begin
Table1.Open;
end;

procedure TFrm_ANVISA.BitBtn1Click(Sender: TObject);
begin
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add('select PDCODPRO, PDNOME, PDCODBAR, '
              +' PDREGMS, PDCODCON, PDPRZVAL from CADPRO '
              +'  Where '
              +iif(DM1.Qr_Tid.locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
              +' PDCODCON>0 '
              +'  Order by PDNOME ');


Query1.Open;


  Application.CreateForm(TfExport, fExport);
  fExport.DataSet1 := DataSource2.DataSet;       //define o DataSet a ser exportado
  fExport.ShowModal;
  fExport.Free;

end;

function TFrm_ANVISA.FmontaTable1(ptipo: Integer): Boolean;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADLGC','CLCODEMP','PDCODEMP','CLCODPRO','CLCODPRO');

Table1.Close;
Table1.SQL.Clear;
Table1.SQL.Add(' select PDCODPRO, PDNOME, PDCODBAR, PDREGMS, '
              +'        PDCODCON, PDPRZVAL, CLNUMERO,CLDTVCTO, CLQTD '
              +'        from CADPRO'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PFCODEMP=0'+IntToStr(codemp)+' and ')
              +' PDCODCON>0 '
              +' Order by PDNOME ');
Table1.Open;
Result:=True;
end;
procedure TFrm_ANVISA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
