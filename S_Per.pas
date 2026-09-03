unit S_Per;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, db, dbtables, func, S_DM1, Grids, DBGrids, ExtCtrls,
  Menus, ComCtrls, StdCtrls, DBCtrls, S_IRPFor;

type
  TFrm_Per = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Qr_Rel: TQuery;
    Qr_RelTCCODEMP: TFloatField;
    Qr_RelTCDOC: TStringField;
    Qr_RelTCNOME: TStringField;
    Qr_RelTCOBS: TStringField;
    Src_Rel: TDataSource;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    HeaderControl1: THeaderControl;
    Qr_RelTCQTDLIN: TFloatField;
    Qr_RelTCQTDCOL: TFloatField;
    Qr_RelTCFPADRAO: TFloatField;
    Qr_RelTCQTDITEM: TFloatField;
    Qr_RelTCQTDLPP: TFloatField;
    Qr_RelTCNUMCOL: TFloatField;
    Qr_RelTCINTCOL: TFloatField;
    Qr_RelTCTPCOL: TFloatField;
    Qr_RelTCORDEM: TFloatField;
    Qr_RelTCMPAGGR: TFloatField;
    Qr_RelTCTPESQ: TFloatField;
    Qr_RelTCTPREL: TFloatField;
    Qr_RelTCIMPG: TFloatField;
    Qr_RelTCIMPSG: TFloatField;
    Qr_RelTCAVPTPI: TFloatField;
    Qr_RelTCAVPIPF: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Per: TFrm_Per;
//  mnomrel: String;

implementation


procedure TFrm_Per.FormCreate(Sender: TObject);
begin
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA Where ');
if DM1.Qr_TID.Locate('TINOME','CADTDV',[]) then
   Qr_Rel.SQl.add(' TCDOC='+chr(39)+mreltab+chr(39))
else
   Qr_Rel.Sql.Add(' TCCODEMP='+IntTostr(codemp)
                 +' and TCDOC='+chr(39)+mreltab+chr(39));
Qr_Rel.Open;

end;


end.
