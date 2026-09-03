unit S_PerGer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, db, dbtables, func, S_DM1, Grids, DBGrids, ExtCtrls,
  Menus, ComCtrls, StdCtrls, DBCtrls, Buttons;

type
  TFrm_PerGer = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Qr_Rel: TQuery;
    Src_Rel: TDataSource;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    HeaderControl1: THeaderControl;
    Qr_RelTCCODEMP: TFloatField;
    Qr_RelTCDOC: TStringField;
    Qr_RelTCNOME: TStringField;
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
    Qr_RelTCOBS: TStringField;
    Qr_RelTCTPESQ: TFloatField;
    Qr_RelTCTPREL: TFloatField;
    Qr_RelTCIMPG: TFloatField;
    Qr_RelTCIMPSG: TFloatField;
    Qr_RelTCAVPTPI: TFloatField;
    Qr_RelTCAVPIPF: TFloatField;
    Qr_RelTCSTATUS: TFloatField;
    Qr_RelTCVIS: TFloatField;
    Qr_RelTCQTDSER: TFloatField;
    Qr_RelTCIMPDA: TFloatField;
    Qr_RelTCTAB01: TStringField;
    Qr_RelTCTAB02: TStringField;
    Qr_RelTCTAB02N: TFloatField;
    Qr_RelTCTAB03: TStringField;
    Qr_RelTCTAB03N: TFloatField;
    Qr_RelTCTAB04: TStringField;
    Qr_RelTCTAB04N: TFloatField;
    Qr_RelTCTAB05: TStringField;
    Qr_RelTCTAB05N: TFloatField;
    Qr_RelTCORDEM2: TStringField;
    Qr_RelTCFILTRO: TStringField;
    Qr_RelTCCONT_M: TStringField;
    Qr_RelTCCONT_R: TStringField;
    Qr_RelTCCONT_AP: TFloatField;
    Qr_RelTCBLOQ: TFloatField;
    Qr_RelTCAGRUPAR: TFloatField;
    Qr_RelTCMASC: TStringField;
    Qr_RelTCPERIODO: TStringField;
    Qr_RelTCDIMGRU: TFloatField;
    Qr_RelTCDIMSG: TFloatField;
    Qr_RelTCTPFORM: TFloatField;
    Qr_RelTCQTDDIV: TFloatField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_RelTCTAB06: TStringField;
    Qr_RelTCTAB06N: TFloatField;
    Qr_RelTCTAB07: TStringField;
    Qr_RelTCTAB07N: TFloatField;
    Qr_RelTCTAB08: TStringField;
    Qr_RelTCTAB08N: TFloatField;
    Qr_RelTCTAB09: TStringField;
    Qr_RelTCTAB09N: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PerGer: TFrm_PerGer;
  mnomrel: String;

implementation

uses 
  S_Tab_CCU, S_Tab_Cli, S_Tab_Dep,
  S_Tab_PV, S_Tab_Con, S_Tab_NS, S_Tab_Tra, S_Tab_Usr, S_Tab_CR, S_Tab_Tip,
  S_Tab_UF, S_Tab_PF, S_Tab_Bco, S_Tab_NE, S_Tab_Pen, S_Tab_For, S_Tab_Car,
  S_Tab_Ger;

{$R *.dfm}

procedure TFrm_PerGer.FormCreate(Sender: TObject);
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


procedure TFrm_PerGer.DBGrid1DblClick(Sender: TObject);
begin
BitBtn1.Click;
end;

procedure TFrm_PerGer.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_PerGer.BitBtn1Click(Sender: TObject);
begin

if Qr_RelTCNOME.Value<>'' then
   begin
   if mreltab='Gerenciais' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      Application.CreateForm(TFrm_Tab_Ger, Frm_Tab_Ger);
      Frm_Tab_Ger.ShowModal;
      Frm_Tab_Ger.Free;
      end;
   ModalResult:=mrOk;
   end;

end;

procedure TFrm_PerGer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
