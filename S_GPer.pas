unit S_GPer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, db, dbtables, func, S_DM1, Grids, DBGrids, ExtCtrls,
  Menus, ComCtrls, StdCtrls, DBCtrls, S_GP_Pro, Buttons, S_GP_Dar,S_GP_LDR,S_GP_CHQ,S_GP_CLI;

type
  TFrm_GPer = class(TForm)
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
  Frm_GPer: TFrm_GPer;
  mnomrel: String;

implementation

uses S_GP_Ped, S_GP_Dap;


{$R *.dfm}

procedure TFrm_GPer.FormCreate(Sender: TObject);
begin
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA Where TCTPFORM=1 ');
if not DM1.Qr_TID.Locate('TINOME','CADTDV',[]) then
   Qr_Rel.Sql.Add(' and TCCODEMP='+IntTostr(codemp));
Qr_Rel.Open;

end;


procedure TFrm_GPer.DBGrid1DblClick(Sender: TObject);
begin
BitBtn1.Click;

end;

procedure TFrm_GPer.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_GPer.BitBtn1Click(Sender: TObject);
begin
if Qr_RelTCDOC.Value='CADPRO' then
   begin
   mnomrel:=Qr_RelTCNOME.Value;
   Application.CreateForm(TFrm_GP_Pro, Frm_GP_Pro);
   Frm_GP_Pro.ShowModal;
   Frm_GP_Pro.Free;
   end
else if Qr_RelTCDOC.Value='CADP01' then
   begin
   mnomrel:=Qr_RelTCNOME.Value;
   Application.CreateForm(TFrm_GP_Ped, Frm_GP_Ped);
   Frm_GP_Ped.ShowModal;
   Frm_GP_Ped.Free;
   end
else if Qr_RelTCDOC.Value='CADDAR' then
   begin
   mnomrel:=Qr_RelTCNOME.Value;
   Application.CreateForm(TFrm_GP_Dar, Frm_GP_Dar);
   Frm_GP_Dar.ShowModal;
   Frm_GP_Dar.Free;
   end
else if Qr_RelTCDOC.Value='CADDAP' then
   begin
   mnomrel:=Qr_RelTCNOME.Value;
   Application.CreateForm(TFrm_GP_Dap, Frm_GP_Dap);
   Frm_GP_Dap.ShowModal;
   Frm_GP_Dap.Free;
   end
else if Qr_RelTCDOC.Value='CADLDR' then
   begin
   mnomrel:=Qr_RelTCNOME.Value;
   Application.CreateForm(TFrm_GP_LDR, Frm_GP_LDR);
   Frm_GP_LDR.ShowModal;
   Frm_GP_LDR.Free;
   end
else if Qr_RelTCDOC.Value='CADCHQ' then
   begin
   mnomrel:=Qr_RelTCNOME.Value;
   Application.CreateForm(TFrm_GP_CHQ, Frm_GP_CHQ);
   Frm_GP_CHQ.ShowModal;
   Frm_GP_CHQ.Free;
   end
else if Qr_RelTCDOC.Value='CADCLI' then
   begin
   mnomrel:=Qr_RelTCNOME.Value;
   Application.CreateForm(TFrm_GP_CLI, Frm_GP_CLI);
   Frm_GP_CLI.ShowModal;
   Frm_GP_CLI.Free;
   end

else
   MessageDlg('Menu deste gráfico não foi identificado!',mtInformation,[mbOk],0);

end;

procedure TFrm_GPer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
