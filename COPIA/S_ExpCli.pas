unit S_ExpCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Gauges, DB, DBTables, S_DM1, func, S_DM2,
  S_Emp, S_Cli,lerarq;
type
  TFrm_ExpCli = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MCODEMP: TEdit;
    Label3: TLabel;
    CODCLI: TEdit;
    NOMEMP: TEdit;
    NOMCLI: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_Cli: TQuery;
    Tb_Cli: TQuery;
    Tb_CliCCODCLI: TFloatField;
    Gauge1: TGauge;
    Qr_CliCCODEMP: TFloatField;
    Qr_CliCCODCLI: TFloatField;
    Qr_CliCRAZAO: TStringField;
    Qr_CliCDENOM: TStringField;
    Qr_CliCTPLOG: TStringField;
    Qr_CliCLOG: TStringField;
    Qr_CliCNUM: TStringField;
    Qr_CliCCOMPL: TStringField;
    Qr_CliCBAIRRO: TStringField;
    Qr_CliCCIDADE: TStringField;
    Qr_CliCUF: TStringField;
    Qr_CliCCODBAI: TFloatField;
    Qr_CliCCODLOC: TFloatField;
    Qr_CliCCEP: TStringField;
    Qr_CliCCELULAR: TStringField;
    Qr_CliCFONERES: TStringField;
    Qr_CliCFONECOM: TStringField;
    Qr_CliCDTCAD: TDateTimeField;
    Qr_CliCRG: TStringField;
    Qr_CliCCPF: TFloatField;
    Qr_CliCCNPJ: TFloatField;
    Qr_CliCIE: TStringField;
    Qr_CliCPONTOR: TStringField;
    Qr_CliCLCRED: TFloatField;
    Qr_CliCTABPV: TStringField;
    Qr_CliCCODPV: TFloatField;
    Qr_CliCCODVEN: TFloatField;
    Qr_CliCCODV02: TFloatField;
    Qr_CliCCODV03: TFloatField;
    Qr_CliCCODCV: TFloatField;
    Qr_CliCTIPOC: TFloatField;
    Qr_CliCSTATUS: TFloatField;
    Qr_CliCALIQA: TFloatField;
    Qr_CliCALIQB: TFloatField;
    Qr_CliCCONSF: TFloatField;
    Qr_CliCICMSR: TFloatField;
    Qr_CliCLIM1: TStringField;
    Qr_CliCLIM2: TStringField;
    Qr_CliCNALV: TStringField;
    Qr_CliCDTVALV: TDateTimeField;
    Qr_CliCNANVISA: TStringField;
    Qr_CliCDTANVISA: TDateTimeField;
    Qr_CliCICMSRP: TFloatField;
    Qr_CliCIPI: TFloatField;
    Qr_CliCICMSTP: TFloatField;
    Qr_CliCREPAS: TFloatField;
    Qr_CliCCOMIS: TFloatField;
    Qr_CliCDESC: TFloatField;
    Qr_CliCEMAIL: TStringField;
    Qr_CliCNOMCON: TStringField;
    Qr_CliCFONCON: TStringField;
    Qr_CliCHOME: TStringField;
    Qr_CliCCODRED: TFloatField;
    Qr_CliCCODCCD: TStringField;
    Qr_CliCCODCCC: TStringField;
    Qr_CliCCODDEPD: TStringField;
    Qr_CliCCODDEPC: TStringField;
    Qr_CliCDESCMVD: TStringField;
    Qr_CliCDESCMVC: TStringField;
    Qr_CliCCODUSR: TFloatField;
    Qr_CliCDTALT: TDateTimeField;
    Qr_CliCDTUCPR: TDateTimeField;
    Qr_CliCDTPCPR: TDateTimeField;
    Qr_CliCHRALT: TStringField;
    Qr_CliCTPPESSOA: TFloatField;
    Qr_CliCREFCOM01: TStringField;
    Qr_CliCREFCOM02: TStringField;
    Qr_CliCREFCOM03: TStringField;
    Qr_CliCREFCOM04: TStringField;
    Qr_CliCREFBAN01: TStringField;
    Qr_CliCREFBAN02: TStringField;
    Qr_CliCREFBAN03: TStringField;
    Qr_CliCREFBAN04: TStringField;
    Qr_CliCREFPES01: TStringField;
    Qr_CliCREFPES02: TStringField;
    Qr_CliCREFPES03: TStringField;
    Qr_CliCREFPES04: TStringField;
    Qr_CliCOBS01: TStringField;
    Qr_CliCOBS02: TStringField;
    Qr_CliCOBS03: TStringField;
    Qr_CliCOBS04: TStringField;
    procedure MCODEMPExit(Sender: TObject);
    procedure MCODEMPKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ExpCli: TFrm_ExpCli;

implementation

{$R *.dfm}

procedure TFrm_ExpCli.MCODEMPExit(Sender: TObject);
begin
if not flcademp(1,0,trim(MCODEMP.Text)) then
   begin
   MessageDlg('Empresa nao Cadastrada!',mtWarning,[mbOk],0);
   mcodemp.setfocus;
   end
else
   nomemp.Text:=DM2.Tb_EmpRAZAO.Value;

end;

procedure TFrm_ExpCli.MCODEMPKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_ExpCli.SpeedButton1Click(Sender: TObject);
begin
if Frm_Emp=nil then
   Application.CreateForm(TFrm_Emp, Frm_Emp)
else
   begin
   Frm_Emp.Free;
   Frm_Emp:=nil;
   Application.CreateForm(TFrm_Emp, Frm_Emp);
   end;

if Frm_Emp.ShowModal=mrok then
   MCODEMP.Text:=DM2.Tb_EmpCODEMP.AsString;
Frm_Emp.Free;
Frm_Emp:=nil;
end;

procedure TFrm_ExpCli.FormCreate(Sender: TObject);
begin
Label1.Caption:='Voce Esta Trabalhando na Empresa: '+DM1.Tb_EmpCODEMP.AsString+' - '+Trim(DM1.Tb_EmpRAZAO.Value);

end;

procedure TFrm_ExpCli.SpeedButton2Click(Sender: TObject);
begin
CODCLI.Text:=fChamaCli(0,'Frm_ExpCli','');
end;

procedure TFrm_ExpCli.CODCLIExit(Sender: TObject);
begin
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   flcadcli(1,0,CODCLI.Text);
   if DM1.Tb_cli.eof then
      begin
      ShowMessage('Cliente nao Cadastrado');
      CODCLI.SetFocus;
      abort;
      end
   else
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;
end;

procedure TFrm_ExpCli.BitBtn1Click(Sender: TObject);
var
mlidos, mqtd: Integer;
begin
if Trim(MCODEMP.Text)='' then
   begin
   ShowMessage('Favor Digitar uma Empresa Destino');
   MCODEMP.SetFocus;
   abort;
   end;
Qr_Cli.Close;
Qr_Cli.SQL.Clear;
Qr_Cli.SQL.Add('Select * From CADCLI where CCODEMP=0'+IntTostr(codemp));
if Trim(CODCLI.Text)<>'' then
   Qr_Cli.SQL.Add(' and  CCODCLI=0'+Trim(CODCLI.Text));
Qr_Cli.Open;
mqtd:=Qr_Cli.RecordCount;
mlidos:=0;
Gauge1.Visible:=True;
DM1.Tb_Cli.Close;
DM1.Tb_Cli.SQl.Clear;
DM1.Tb_cli.SQL.Add('Select * from CADCLI where CCODEMP=0'+InttoStr(codemp)
                  +' ORDER BY CCODEMP,CRAZAO');
DM1.Tb_Cli.Open;

While not Qr_Cli.Eof do
   begin
   mlidos:=mlidos+1;
   Gauge1.Progress:=mlidos*100 div mqtd;
   if not DM1.Tb_Cli.Locate('CCODCLI',Qr_CliCCODCLI.Value,[]) then
      begin
      Tb_Cli.Close;
      Tb_Cli.SQL.Clear;
      Tb_Cli.SQL.Add('Insert Into CADCLI ('
                    +'CCODEMP, '
                    +'CCODCLI, '
                    +'CCODBAI, '
                    +'CCODLOC, '
                    +'CDTCAD, '
                    +'CCPF, '
                    +'CCNPJ, '
                    +'CLCRED, '
                    +'CCODPV, '
                    +'CCODVEN,'
                    +'CCODCV, '
                    +'CTIPOC, '
                    +'CSTATUS, '
                    +'CALIQA, '
                    +'CALIQB,'
                    +'CCONSF, '
                    +'CICMSR, '
                    +'CDTVALV,'
                    +'CICMSRP,'
                    +'CIPI, '
                    +'CREPAS, '
                    +'CRAZAO, '
                    +'CDENOM, '
                    +'CTPLOG, '
                    +'CLOG, '
                    +'CNUM, '
                    +'CCOMPL, '
                    +'CBAIRRO, '
                    +'CCIDADE, '
                    +'CUF, '
                    +'CCEP, '
                    +'CCELULAR,'
                    +'CFONERES, '
                    +'CFONECOM, '
                    +'CRG, '
                    +'CIE, '
                    +'CPONTOR,'
                    +'CREFP01,'
                    +'CREFB01,'
                    +'CREFC01,'
                    +'COBS, '
                    +'CLIM1, '
                    +'CLIM2, '
                    +'CNALV) values ('
                    +MCODEMP.Text+','
                    +iif(Qr_CliCCODCLI.IsNull,'0',Qr_CliCCODCLI.AsString)+','
                    +iif(Qr_CliCCODBAI.IsNull,'0',Qr_CliCCODBAI.AsString)+','
                    +iif(Qr_CliCCODLOC.IsNull,'0',Qr_CliCCODLOC.AsString)+','
                    +iif(Qr_CliCDTCAD.IsNull,'0',chr(39)+FormatDateTime(fdt,Qr_CliCDTCAD.Value)+chr(39))+','
                    +iif(Qr_CliCCPF.IsNull,'0',Qr_CliCCPF.AsSTring)+','
                    +iif(Qr_CliCCNPJ.IsNull,'0',Qr_CliCCNPJ.AsString)+','
                    +iif(Qr_CliCLCRED.IsNull,'0',mudavp(Qr_CliCLCRED.AsString))+','
                    +iif(Qr_CliCCODPV.IsNull,'0',Qr_CliCCODPV.AsString)+','
                    +iif(Qr_CliCCODVEN.IsNull,'0', Qr_CliCCODVEN.AsString)+','
                    +iif(Qr_CliCCODCV.IsNull,'0',Qr_CliCCODCV.AsString)+','
                    +iif(Qr_CliCTIPOC.IsNull,'0',Qr_CliCTIPOC.AsString)+','
                    +iif(Qr_CliCSTATUS.IsNull,'0',Qr_CliCSTATUS.AsString)+','
                    +iif(Qr_CliCALIQA.IsNull,'0',mudaVP(Qr_CliCALIQA.AsString))+','
                    +iif(Qr_CliCALIQB.IsNull,'0',mudaVP(Qr_CliCALIQB.AsString))+','
                    +iif(Qr_ClicCONSF.IsNull,'0',Qr_CliCCONSF.AsString)+','
                    +iif(Qr_CliCICMSR.IsNull,'0',Qr_CliCICMSR.AsString)+','
                    +iif(Qr_CliCDTVALV.IsNull,'null',chr(39)+FormatDatetime(fdt,Qr_CliCDTVALV.Value)+chr(39))+','
                    +iif(Qr_CliCICMSRP.IsNull,'0',Qr_CliCICMSRP.AsString)+','
                    +iif(Qr_CliCIPI.IsNull,'null',Qr_CliCIPI.AsString)+','
                    +iif(Qr_CliCREPAS.IsNull,'null',Qr_CliCREPAS.AsString)+','
                    +':RAZAO, '
                    +':DENOM, '
                    +':TPLOG, '
                    +':LOG, '
                    +':NUM, '
                    +':COMPL, '
                    +':BAIRRO, '
                    +':CIDADE, '
                    +':UF, '
                    +':CEP, '
                    +':CELULAR, '
                    +':FONERES, '
                    +':FONECOM, '
                    +':RG, '
                    +':IE, '
                    +':PONTOR,'
                    +':REFP01,'
                    +':REFB01,'
                    +':REFC01,'
                    +':OBS,'
                    +':LIM1,'
                    +':LIM2,'
                    +':NALV)');
      Tb_Cli.Params[0].AsString:=Qr_CliCRAZAO.AsString;
      Tb_Cli.Params[1].AsString:=Qr_CliCDENOM.AsString;
      Tb_Cli.Params[2].AsString:=Qr_CliCTPLOG.AsString;
      Tb_Cli.Params[3].AsString:=Qr_CliCLOG.AsString;
      Tb_Cli.Params[4].AsString:=Qr_CliCNUM.AsString;
      Tb_Cli.Params[5].AsString:=Qr_CliCCOMPL.AsString;
      Tb_Cli.Params[6].AsString:=Qr_CliCBAIRRO.AsString;
      Tb_Cli.Params[7].AsString:=Qr_CliCCIDADE.AsString;
      Tb_Cli.Params[08].AsString:=Qr_CliCUF.AsString;
      Tb_Cli.Params[09].AsString:=Qr_CliCCEP.AsString;
      Tb_Cli.Params[10].AsString:=Qr_CliCCELULAR.AsString;
      Tb_Cli.Params[11].AsString:=Qr_CliCFONERES.AsString;
      Tb_Cli.Params[12].AsString:=Qr_CliCFONECOM.AsString;
      Tb_Cli.Params[13].AsString:=Qr_CliCRG.AsString;
      Tb_Cli.Params[14].AsString:=Qr_CliCIE.AsString;
      Tb_Cli.Params[15].AsString:=Qr_CliCPONTOR.AsString;
      Tb_Cli.Params[16].AsString:=Qr_CliCREFPES01.AsString;
      Tb_CLI.Params[17].AsString:=Qr_CliCREFBAN01.AsString;
      Tb_Cli.Params[18].AsString:=Qr_CliCREFCOM01.AsString;
      Tb_Cli.Params[19].AsString:=Qr_CliCOBS01.AsString;
      Tb_Cli.Params[20].AsString:=Qr_CliCLIM1.AsString;
      Tb_Cli.Params[21].AsString:=Qr_CliCLIM1.AsString;
      Tb_Cli.Params[22].AsString:=Qr_CliCNALV.AsString;
      Tb_Cli.ExecSQL;
      end
   else
      begin
      Tb_Cli.Close;
      Tb_Cli.SQL.Clear;
      Tb_Cli.SQL.Add('Update CADCLI set CCODEMP=0'+Trim(MCODEMP.Text)+',');
      Tb_Cli.SQL.Add('CCODCLI=0'+iif(Qr_CliCCODCLI.IsNull,'0',Qr_CliCCODCLI.AsString)+','
                    +'CCODBAI=0'+iif(Qr_CliCCODBAI.IsNull,'0',Qr_CliCCODBAI.AsString)+','
                    +'CCODLOC=0'+iif(Qr_CliCCODLOC.IsNull,'0',Qr_CliCCODLOC.AsString)+','
                    +'CDTCAD='+iif(Qr_CliCDTCAD.IsNull,'null',chr(39)+FormatDateTime(fdt,Qr_CliCDTCAD.Value)+chr(39))+','
                    +'CCPF=0'+iif(Qr_CliCCPF.IsNull,'0',Qr_CliCCPF.AsString)+','
                    +'CCNPJ=0'+iif(Qr_CliCCNPJ.IsNull,'0',Qr_CliCCNPJ.AsString)+','
                    +'CLCRED=0'+iif(Qr_CliCLCRED.IsNull,'0',mudavp(Qr_CliCLCRED.AsString))+','
                    +'CCODPV=0'+iif(Qr_CliCCODPV.IsNull,'0',Qr_CliCCODPV.AsString)+','
                    +'CCODVEN=0'+iif(Qr_CliCCODVEN.IsNull,'0',Qr_CliCCODVEN.AsString)+','
                    +'CCODCV=0'+iif(Qr_CliCCODCV.IsNull,'0',Qr_CliCCODCV.AsString)+','
                    +'CTIPOC=0'+iif(Qr_CliCTIPOC.IsNull,'0',Qr_CliCTIPOC.AsString)+','
                    +'CSTATUS=0'+iif(Qr_CliCSTATUS.IsNull,'0',Qr_CliCSTATUS.AsString)+','
                    +'CALIQA=0'+iif(Qr_CliCALIQA.IsNull,'0',mudavp(Qr_CliCALIQA.AsString))+','
                    +'CALIQB=0'+iif(Qr_CliCALIQB.IsNull,'0',mudavp(Qr_CliCALIQB.AsString))+','
                    +'CCONSF=0'+iif(Qr_CliCCONSF.IsNull,'0',Qr_CliCCONSF.AsString)+','
                    +'CICMSR=0'+iif(Qr_CliCICMSR.IsNull,'0',Qr_CliCICMSR.AsString)+','
                    +'CDTVALV='+iif(Qr_CliCDTVALV.IsNull,'null',chr(39)+FormatDateTime(fdt,Qr_CliCDTVALV.Value)+chr(39))+','
                    +'CICMSRP='+iif(Qr_CliCICMSRP.IsNull,'0',Qr_CliCICMSRP.AsString)+','
                    +'CIPI=0'+iif(Qr_CliCIPI.IsNull,'0',Qr_CliCIPI.AsString)+','
                    +'CREPAS=0'+iif(Qr_CliCREPAS.IsNull,'0', Qr_CliCREPAS.AsString)+','
                    +'CRAZAO=:RAZAO,'
                    +'CDENOM=:DENOM,'
                    +'CTPLOG=:TPLOG,'
                    +'CLOG  =:LOG,'
                    +'CNUM  =:NUM,'
                    +'CCOMPL=:COMPL,'
                    +'CBAIRRO=:BAIRRO,'
                    +'CCIDADE=:CIDADE,'
                    +'CUF    =:UF,'
                    +'CCEP   =:CEP,'
                    +'CCELULAR=:CELULAR,'
                    +'CFONERES=:FONERES,'
                    +'CFONECOM=:FONECOM,'
                    +'CRG     =:RG,'
                    +'CIE     =:IE,'
                    +'CPONTOR =:PONTOR,'
                    +'CREFP01 =:REFP01,'
                    +'CREFB01 =:REFB01,'
                    +'CREFC01 =:REFC01,'
                    +'COBS    =:OBS,'
                    +'CLIM1   =:LIM1,'
                    +'CLIM2   =:LIM2,'
                    +'CNALV   =:NVALV Where CCODEMP='+MCODEMP.Text
                    +' and CCODCLI=0'+Qr_CliCCODCLI.AsString);
      Tb_Cli.Params[0].AsString:=Qr_CliCRAZAO.AsString;
      Tb_Cli.Params[1].AsString:=Qr_CliCDENOM.AsString;
      Tb_Cli.Params[2].AsString:=Qr_CliCTPLOG.AsString;
      Tb_Cli.Params[3].AsString:=Qr_CliCLOG.AsString;
      Tb_Cli.Params[4].AsString:=Qr_CliCNUM.AsString;
      Tb_Cli.Params[5].AsString:=Qr_CliCCOMPL.AsString;
      Tb_Cli.Params[6].AsString:=Qr_CliCBAIRRO.AsString;
      Tb_Cli.Params[7].AsString:=Qr_CliCCIDADE.AsString;
      Tb_Cli.Params[08].AsString:=Qr_CliCUF.AsString;
      Tb_Cli.Params[09].AsString:=Qr_CliCCEP.AsString;
      Tb_Cli.Params[10].AsString:=Qr_CliCCELULAR.AsString;
      Tb_Cli.Params[11].AsString:=Qr_CliCFONERES.AsString;
      Tb_Cli.Params[12].AsString:=Qr_CliCFONECOM.AsString;
      Tb_Cli.Params[13].AsString:=Qr_CliCRG.AsString;
      Tb_Cli.Params[14].AsString:=Qr_CliCIE.AsString;
      Tb_Cli.Params[15].AsString:=Qr_CliCPONTOR.AsString;
      Tb_Cli.Params[16].AsString:=Qr_CliCREFPES01.AsString;
      Tb_CLI.Params[17].AsString:=Qr_CliCREFBAN01.AsString;
      Tb_Cli.Params[18].AsString:=Qr_CliCREFCOM01.AsString;
      Tb_Cli.Params[19].AsString:=Qr_CliCOBS01.AsString;
      Tb_Cli.Params[20].AsString:=Qr_CliCLIM1.AsString;
      Tb_Cli.Params[21].AsString:=Qr_CliCLIM1.AsString;
      Tb_Cli.Params[22].AsString:=Qr_CliCNALV.AsString;
      Tb_Cli.ExecSQL;
      end;
   Qr_Cli.Next;
   end;
ShowMessage('Concluido');
Gauge1.Visible:=False;
end;

procedure TFrm_ExpCli.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.



