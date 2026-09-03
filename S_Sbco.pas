unit S_Sbco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  S_Dm1, Grids, DBGrids, StdCtrls, ExtCtrls, Db, DBTables, func, Buttons,
  lerarq;

type
  TFrm_SBco = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    NOMBCO: TEdit;
    DBGrid1: TDBGrid;
    Src_Bco: TDataSource;
    Qr_Bco: TQuery;
    Qr_BcoBCBANCO: TStringField;
    Qr_BcoBCSALDO: TFloatField;
    BitBtn1: TBitBtn;
    Qr_BcoBCCODBCO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure NOMBCOChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SBco: TFrm_SBco;

implementation

{$R *.DFM}

procedure TFrm_SBco.FormCreate(Sender: TObject);
var
msaldo: Real;
begin
Qr_Bco.Close;
Qr_Bco.SQL.Clear;
Qr_Bco.SQL.Add('Select BCCODBCO,BCBANCO,BCSALDO from CADBCO ');
if DM1.Qr_Tid.Locate('TINOME','CADBCO',[]) then
   Qr_Bco.SQl.add(' order by BCBANCO')
else
   Qr_Bco.SQL.add( 'where  BCCODEMP=0'+IntToStr(codemp)
              +' order by BCCODEMP,BCBANCO');
Qr_Bco.Open;
while not Qr_Bco.Eof do
   begin
   flcadbco(1,0,0,Qr_BcoBCCODBCO.AsString);
   if DM1.Tb_BcoBCSALDOI.IsNull then
      msaldo:=0
   else
      msaldo:=DM1.Tb_BcoBCSALDOI.Value;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('select NATDC,SUM(VALORR) AS VALOR');
   DM1.Query1.SQL.Add(' from  CADLDR WHERE STATUS<>9');
//   if DM1.Qr_Tid.Locate('TINOME','CADBCO',[]) then
//      DM1.Query1.SQL.Add(' and CODEMP=0'+IntToStr(codemp));
   DM1.Query1.SQL.Add(' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')');
   DM1.Query1.SQL.Add(' and CODBCO=0'+Qr_BcoBCCODBCO.AsString);
   DM1.Query1.SQL.Add(' Group by NATDC');
   DM1.Query1.open;
   While not DM1.Query1.Eof do
      begin
      if DM1.Query1.Fields[0].AsString='D' then
         msaldo:=msaldo-DM1.Query1.Fields[1].AsFloat
      else
         msaldo:=msaldo+DM1.Query1.Fields[1].AsFloat;
      DM1.query1.Next;
      end;
   DM1.Tb_Bco.Edit;
   DM1.Tb_BcoBCSALDO.Value:=msaldo;
   FAtualizaBanco(1,'CADBCO','BCCODEMP',DM1.Tb_BcoBCCODEMP.AsString,['BCCODBCO'],[DM1.Tb_BcoBCCODBCO.AsString],DM1.TB_BCO);
   DM1.Tb_Bco.Post;
   Qr_Bco.Next;
   end;
Qr_Bco.Close;
Qr_Bco.SQL.Clear;
Qr_Bco.SQL.Add('Select BCCODBCO,BCBANCO,BCSALDO from CADBCO ');
if DM1.Qr_TID.Locate('TINOME','CADBCO',[]) then
   Qr_Bco.SQl.add(' order by BCBANCO')
else
   Qr_Bco.Sql.add(' where BCCODEMP=0'+IntToStr(codemp)
              +' order by BCCODEMP,BCBANCO');
Qr_Bco.Open;
end;

procedure TFrm_SBco.NOMBCOChange(Sender: TObject);
begin
Qr_Bco.locate('BCBANCO',NOMBCO.Text,[LoPartialKey]);
end;

procedure TFrm_SBco.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_SBco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
