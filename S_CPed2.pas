unit S_CPed2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Gauges, Mask,S_DM1,func,lerarq, DB, DBTables;

type
  TFrm_CPed2 = class(TForm)
    Label1: TLabel;
    MDT1: TMaskEdit;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_Ped: TQuery;
    BitBtn3: TBitBtn;
    Qr_Pro: TQuery;
    Qr_ProPF2CODPRO: TFloatField;
    Qr_ProPF2PU: TFloatField;
    Qr_ProPF2QTDP: TFloatField;
    Qr_ProPF2ICMSR: TFloatField;
    Qr_ProPF2VALDES: TFloatField;
    Qr_ProNEOUTRAS: TFloatField;
    Qr_ProNEFRETE: TFloatField;
    Qr_ProNESEG: TFloatField;
    Qr_ProNETOTNOT: TFloatField;
    Tb_Pro: TQuery;
    Tb_Ped01: TQuery;
    BitBtn4: TBitBtn;
    Qr_Tax: TQuery;
    Qr_Compra: TQuery;
    Label2: TLabel;
    Tb_ProPDCODEMP: TFloatField;
    Tb_ProPDCODPRO: TFloatField;
    Tb_ProPDCODBAR: TFloatField;
    Tb_ProPDNOME: TStringField;
    Tb_ProPDNOME2: TStringField;
    Tb_ProPDMARCA: TStringField;
    Tb_ProPDNIVEL: TFloatField;
    Tb_ProPDCODFOR: TFloatField;
    Tb_ProPDPRECO1: TFloatField;
    Tb_ProPDPRECO2: TFloatField;
    Tb_ProPDPRECO3: TFloatField;
    Tb_ProPDPMC: TFloatField;
    Tb_ProPDPRECOA1: TFloatField;
    Tb_ProPDPRECOA2: TFloatField;
    Tb_ProPDPRECOA3: TFloatField;
    Tb_ProPDDESC1: TFloatField;
    Tb_ProPDDESC1A: TFloatField;
    Tb_ProPDDESC2: TFloatField;
    Tb_ProPDDESC3: TFloatField;
    Tb_ProPDQTDP: TFloatField;
    Tb_ProPDPRAZO: TFloatField;
    Tb_ProPDDESFIN: TFloatField;
    Tb_ProPDSIT: TStringField;
    Tb_ProPDDTUATP1: TDateTimeField;
    Tb_ProPDUSRALT1: TFloatField;
    Tb_ProPDDTUATP2: TDateTimeField;
    Tb_ProPDUSRALT2: TFloatField;
    Tb_ProPDDTUATP3: TDateTimeField;
    Tb_ProPDUSRALT3: TFloatField;
    Tb_ProPDDATAUA: TDateTimeField;
    Tb_ProPDUND: TStringField;
    Tb_ProPDCURVA: TStringField;
    Tb_ProPDCODGRU: TFloatField;
    Tb_ProPDCODCON: TFloatField;
    Tb_ProPDCODRAM: TFloatField;
    Tb_ProPDCODTIP: TFloatField;
    Tb_ProPDESTMAX: TFloatField;
    Tb_ProPDESTMIN: TFloatField;
    Tb_ProPDFRACAO: TFloatField;
    Tb_ProPDLISTA: TFloatField;
    Tb_ProPDPRECOC: TFloatField;
    Tb_ProPDPCOMC: TFloatField;
    Tb_ProPDPCOFAB: TFloatField;
    Tb_ProPDSTATUS: TFloatField;
    Tb_ProPDTABICM: TStringField;
    Tb_ProPDIPI: TFloatField;
    Tb_ProPDREGMS: TStringField;
    Tb_ProPDCLAS: TStringField;
    Tb_ProPDSECAO: TStringField;
    Tb_ProPDEMBPAD: TFloatField;
    Tb_ProPDEMBMUL: TFloatField;
    Tb_ProPDCOMIS: TFloatField;
    Tb_ProPDSEMCOM: TFloatField;
    Tb_ProPDPRZVAL: TFloatField;
    Tb_ProPDUCPR: TFloatField;
    Tb_ProPDCODUSR: TFloatField;
    Tb_ProPDSALDO: TFloatField;
    Tb_ProPDDTALT: TDateTimeField;
    Tb_ProPDHRALT: TStringField;
    Tb_ProPDEMBPAD2: TStringField;
    Tb_ProPDCODPROC: TFloatField;
    Tb_ProPDPROALT: TFloatField;
    Tb_ProPDDTULTSAI: TDateTimeField;
    Tb_ProPDDTULTENT: TDateTimeField;
    Tb_ProPDVDAMAXM: TFloatField;
    Tb_ProPDPESOB: TFloatField;
    Tb_ProPDPESOL: TFloatField;
    Tb_ProPDNOMFOR: TStringField;
    Tb_ProPDNOMPROC: TStringField;
    Tb_ProPDNOMGRU: TStringField;
    Tb_ProPDNOMCON: TStringField;
    Tb_ProPDNOMRAM: TStringField;
    Tb_ProPDNOMTIP: TStringField;
    Tb_ProPDNOMPROALT: TStringField;
    Qr_TaxTXCODEMP: TFloatField;
    Qr_TaxTXCODTAX: TFloatField;
    Qr_TaxTXCODCLI: TFloatField;
    Qr_TaxTXDATA: TDateTimeField;
    Qr_TaxTXVALOR: TFloatField;
    Qr_TaxTXCODVEN: TFloatField;
    Qr_TaxTXSTATUS: TFloatField;
    Qr_TaxTXRCODUSR: TFloatField;
    Qr_TaxTXRDATA: TDateTimeField;
    Qr_TaxTXCODUSR: TFloatField;
    Qr_TaxTXDATAC: TDateTimeField;
    Qr_TaxTXDATAV: TDateTimeField;
    Qr_TaxTXTIPO: TFloatField;
    Qr_TaxTXQTDD: TFloatField;
    Qr_TaxTXSITPAG: TFloatField;
    Qr_TaxTXACVEN: TFloatField;
    Qr_TaxTXCODPV: TFloatField;
    Qr_TaxTXTABPV: TStringField;
    Qr_TaxTXNPARC: TFloatField;
    Qr_TaxTXPARC: TFloatField;
    Qr_TaxTXDTBX: TDateTimeField;
    Qr_TaxTXCAIXA: TFloatField;
    Qr_TaxTXCODLDR: TFloatField;
    Qr_TaxTXVALPAG: TFloatField;
    Qr_TaxTXVALJUR: TFloatField;
    Qr_TaxTXVALDES: TFloatField;
    Qr_TaxTXDATPAG: TDateTimeField;
    Qr_TaxTXLOTE: TFloatField;
    Qr_CompraCACODEMP: TFloatField;
    Qr_CompraCADESD: TStringField;
    Qr_CompraCACODFOR: TFloatField;
    Qr_CompraCADTEMIS: TDateTimeField;
    Qr_CompraCAVALOR: TFloatField;
    Qr_CompraCADUP: TFloatField;
    Qr_CompraCADTVCTO: TDateTimeField;
    Qr_CompraCASTATUS: TFloatField;
    Qr_CompraCAVALDES: TFloatField;
    Qr_CompraCADTDESC: TDateTimeField;
    Qr_CompraCADESC: TFloatField;
    Qr_CompraCADEVOL: TFloatField;
    Qr_CompraCAJUROS: TFloatField;
    Qr_CompraCABANCO: TFloatField;
    Qr_CompraCALOTE: TFloatField;
    Qr_CompraCACHAVEP: TFloatField;
    Qr_CompraCADTBX: TDateTimeField;
    Qr_CompraCADTPAG: TDateTimeField;
    Qr_CompraCAVALPAG: TFloatField;
    Qr_CompraCAUSRBAI: TFloatField;
    Qr_CompraCACAIXA: TFloatField;
    Qr_CompraCACODLDR: TFloatField;
    Qr_CompraCAOBS: TStringField;
    Qr_CompraCACODUSR: TFloatField;
    Qr_CompraCADTALT: TDateTimeField;
    Qr_CompraCAHRALT: TStringField;
    Qr_CompraCANUMERO: TFloatField;
    Qr_CompraCANOSNUM: TStringField;
    Tb_Ped01P1CODEMP: TFloatField;
    Tb_Ped01P1CHAVE: TFloatField;
    Tb_Ped01P1ORDEM: TFloatField;
    Tb_Ped01P1CODCLI: TFloatField;
    Tb_Ped01P1CODVEN: TFloatField;
    Tb_Ped01P1CODV02: TFloatField;
    Tb_Ped01P1CODV03: TFloatField;
    Tb_Ped01P1DATAP: TDateTimeField;
    Tb_Ped01P1DATANF: TDateTimeField;
    Tb_Ped01P1NUMNF: TFloatField;
    Tb_Ped01P1SERIE: TStringField;
    Tb_Ped01P1SUBSER: TStringField;
    Tb_Ped01P1MODELO: TStringField;
    Tb_Ped01P1SUBMOD: TStringField;
    Tb_Ped01P1STATUS: TFloatField;
    Tb_Ped01P1TIPO: TFloatField;
    Tb_Ped01P1TOTALB: TFloatField;
    Tb_Ped01P1TOTALL: TFloatField;
    Tb_Ped01P1CODUSR: TFloatField;
    Tb_Ped01P1HORADIG: TStringField;
    Tb_Ped01P1DTMOD: TDateTimeField;
    Tb_Ped01P1HRMOD: TStringField;
    Tb_Ped01P1USRMOD: TFloatField;
    Tb_Ped01P1CONF: TStringField;
    Tb_Ped01P1CODCON: TFloatField;
    Tb_Ped01P1DATCON: TDateTimeField;
    Tb_Ped01P1HORCON: TStringField;
    Tb_Ped01P1TIPENT: TFloatField;
    Tb_Ped01P1PREVENT: TDateTimeField;
    Tb_Ped01P1HPREVENT: TStringField;
    Tb_Ped01P1CODENT: TFloatField;
    Tb_Ped01P1PRAZO: TFloatField;
    Tb_Ped01P1DATENT: TDateTimeField;
    Tb_Ped01P1HORENT: TStringField;
    Tb_Ped01P1TABPV: TStringField;
    Tb_Ped01P1CODPV: TFloatField;
    Tb_Ped01P1CUPOM: TFloatField;
    Tb_Ped01P1BASEN: TFloatField;
    Tb_Ped01P1ICMSN: TFloatField;
    Tb_Ped01P1REPAS: TFloatField;
    Tb_Ped01P1BASER: TFloatField;
    Tb_Ped01P1ICMSR: TFloatField;
    Tb_Ped01P1BASENP: TFloatField;
    Tb_Ped01P1BASENN: TFloatField;
    Tb_Ped01P1BASENI: TFloatField;
    Tb_Ped01P1ICMSNP: TFloatField;
    Tb_Ped01P1ICMSNN: TFloatField;
    Tb_Ped01P1ICMSNI: TFloatField;
    Tb_Ped01P1BASERP: TFloatField;
    Tb_Ped01P1BASERN: TFloatField;
    Tb_Ped01P1BASERI: TFloatField;
    Tb_Ped01P1ICMSRP: TFloatField;
    Tb_Ped01P1ICMSRN: TFloatField;
    Tb_Ped01P1ICMSRI: TFloatField;
    Tb_Ped01P1BASENRI: TFloatField;
    Tb_Ped01P1ICMSNRI: TFloatField;
    Tb_Ped01P1BASENRP: TFloatField;
    Tb_Ped01P1ICMSNRP: TFloatField;
    Tb_Ped01P1BASENRN: TFloatField;
    Tb_Ped01P1ICMSNRN: TFloatField;
    Tb_Ped01P1IPIINA: TFloatField;
    Tb_Ped01P1IPIPOS: TFloatField;
    Tb_Ped01P1IPINEG: TFloatField;
    Tb_Ped01P1TOTTRI: TFloatField;
    Tb_Ped01P1TOTRET: TFloatField;
    Tb_Ped01P1TOTISE: TFloatField;
    Tb_Ped01P1TOTPOS: TFloatField;
    Tb_Ped01P1TOTNEG: TFloatField;
    Tb_Ped01P1TOTINA: TFloatField;
    Tb_Ped01P1TOTDES: TFloatField;
    Tb_Ped01P1TOTUCPR: TFloatField;
    Tb_Ped01P1DESC01: TFloatField;
    Tb_Ped01P1DESC02: TFloatField;
    Tb_Ped01P1VLRDES: TFloatField;
    Tb_Ped01P1PAVDES: TFloatField;
    Tb_Ped01P1CODTRA: TFloatField;
    Tb_Ped01P1QTDVOL: TFloatField;
    Tb_Ped01P1PESOL: TFloatField;
    Tb_Ped01P1PESOB: TFloatField;
    Tb_Ped01P1ESPECIE: TStringField;
    Tb_Ped01P1FRETEPC: TFloatField;
    Tb_Ped01P1VALFRE: TFloatField;
    Tb_Ped01P1UFPV: TStringField;
    Tb_Ped01P1PLACAV: TStringField;
    Tb_Ped01P1BANCO: TFloatField;
    Tb_Ped01P1CODSER: TFloatField;
    Tb_Ped01P1CODLDR: TFloatField;
    Tb_Ped01P1PCOMIS: TFloatField;
    Tb_Ped01P1COMIS: TFloatField;
    Tb_Ped01P1COMIST: TFloatField;
    Tb_Ped01P1COMISS: TFloatField;
    Tb_Ped01P1ORIGEM: TFloatField;
    Tb_Ped01P1CODTLV: TFloatField;
    Tb_Ped01P1BCISSQN: TFloatField;
    Tb_Ped01P1VISSQN: TFloatField;
    Tb_Ped01P1ETIVOL: TFloatField;
    Tb_Ped01P1CODSEP: TFloatField;
    Tb_Ped01P1DATASEP: TDateTimeField;
    Tb_Ped01P1HORSEP: TStringField;
    Tb_Ped01P1CODEMB: TFloatField;
    Tb_Ped01P1DATAEMB: TDateTimeField;
    Tb_Ped01P1HOREMB: TStringField;
    Tb_Ped01P1NUMCF: TFloatField;
    Tb_Ped01P1DATACF: TDateTimeField;
    Tb_Ped01P1TPPCO: TFloatField;
    Tb_Ped01P1SEMCOM: TFloatField;
    Tb_Ped01P1DESCFIN: TFloatField;
    Tb_Ped01P1LOTCV: TFloatField;
    Tb_Ped01P1LOTCS: TFloatField;
    Tb_Ped01P1LOTCT: TFloatField;
    Tb_Ped01P1PVTC: TFloatField;
    Tb_Ped01P1PVCOM: TFloatField;
    Tb_Ped01P1PVACTD: TFloatField;
    Tb_Ped01P1PVACT00: TFloatField;
    Tb_Ped01P1PVACT01: TFloatField;
    Tb_Ped01P1PVACT99: TFloatField;
    Tb_Ped01P1PVTDC: TFloatField;
    Tb_Ped01P1PVDES: TFloatField;
    Tb_Ped01P1PVTPD1: TFloatField;
    Tb_Ped01P1PVDES1: TFloatField;
    Tb_Ped01P1PVTPD2: TFloatField;
    Tb_Ped01P1PVDES2: TFloatField;
    Tb_Ped01P1PVTPDESF: TFloatField;
    Tb_Ped01P1PVDESCF: TFloatField;
    Tb_Ped01P1PVDIASDESCF: TFloatField;
    Tb_Ped01P1PVDDESCF: TFloatField;
    Tb_Ped01P1TPP: TFloatField;
    Tb_Ped01P1SITAC: TFloatField;
    Tb_Ped01P1CODECF: TFloatField;
    Tb_Ped01P1VLRACRE: TFloatField;
    Tb_Ped01P1PEDORI1: TStringField;
    Tb_Ped01P1PEDORI2: TStringField;
    Tb_Ped01P1MOTIVO: TStringField;
    Tb_Ped01P1NUMVIS: TStringField;
    Tb_Ped01P1DATVIS: TDateTimeField;
    Tb_Ped01P1SITPED: TFloatField;
    Tb_Ped01P1TOTDI01: TFloatField;
    Tb_Ped01P1TOTDI02: TFloatField;
    Tb_Ped01P1TOTDIVL: TFloatField;
    Tb_Ped01P1DATDOC: TDateTimeField;
    Tb_Ped01P1EMIDOC: TFloatField;
    Tb_Ped01P1ACRECONV: TFloatField;
    Tb_Ped01P1ACREGER: TFloatField;
    Tb_Ped01P1PACRECONV: TFloatField;
    Tb_Ped01P1PACREGER: TFloatField;
    Tb_Ped01P1CODDEP: TFloatField;
    Tb_Ped01P1NAUT: TStringField;
    Qr_PedPF2CODPRO: TFloatField;
    Qr_PedPF2PU: TFloatField;
    Qr_PedPF2QTDP: TFloatField;
    Qr_PedPF2ICMSR: TFloatField;
    Qr_PedPF2TOTDES: TFloatField;
    Qr_PedNEOUTRAS: TFloatField;
    Qr_PedNEFRETE: TFloatField;
    Qr_PedNESEG: TFloatField;
    Qr_PedNETOTNOT: TFloatField;
    Tb_Ped01P1LOTSEQ: TFloatField;
    Tb_Ped01P1FORMACE: TFloatField;
    Tb_Ped01P1TOTOUT: TFloatField;
    Tb_Ped01P1CODCV: TFloatField;
    Tb_Ped01P1LOTEDM: TFloatField;
    Tb_Ped01P1MINUTA: TFloatField;
    Tb_Ped01P1COMV02: TFloatField;
    Tb_Ped01P1COMV03: TFloatField;
    Tb_Ped01P1NPEDORI: TFloatField;
    Tb_Ped01P1LOTCV02: TFloatField;
    Tb_Ped01P1LOTCV03: TFloatField;
    Tb_Ped01P1PVCOM02: TFloatField;
    Tb_Ped01P1PVCOM03: TFloatField;
    Tb_Ped01P1SITCPR: TFloatField;
    Tb_Ped01P1CFO1: TStringField;
    Tb_Ped01P1CFO2: TStringField;
    Qr_TaxTXLOTSEQ: TFloatField;
    Qr_CompraCALOTSEQ_CP: TFloatField;
    Qr_CompraCALOTSEQ_LB: TFloatField;
    Qr_CompraCALOTSEQ_FC: TFloatField;
    Tb_Ped01P1SEMCOMP: TStringField;
    Tb_Ped01P1OBS1: TMemoField;
    Tb_Ped01P1OBS2: TMemoField;
    Tb_Ped01P1OBS3: TMemoField;
    Tb_Ped01P1ID_NEW: TFloatField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CPed2: TFrm_CPed2;

implementation

{$R *.dfm}

procedure TFrm_CPed2.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CPed2.BitBtn1Click(Sender: TObject);
var
mlid, mqtd: Integer;
mtotal,mpicmsr,mdesp, mpdesp: Real;


begin
label2.Visible:=True;


Tb_Ped01.Close;
Tb_Ped01.Sql.clear;
Tb_Ped01.Sql.add('Select * from CADP01 '
                +' where P1STATUS<'+mstatus_excluido+' ');
if Trim(MDT1.Text)<>'/  /' then
   Tb_Ped01.SQL.add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
Tb_Ped01.SQl.Add('  order by P1DATDOC');
Tb_Ped01.open;
mqtd:=Tb_Ped01.RecordCount;
if mqtd<=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.add('Select count(*) from CADP01 '
                +' where P1STATUS<'+mstatus_excluido+' ');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   DM1.Query1.Open;
   mqtd:=DM1.Query1.fields[0].AsInteger;
   end;
mlid:=0;
GroupBox1.Visible:=True;
While not Tb_Ped01.Eof do
   begin
   DM1.Tb_Ped01.Close;
   DM1.Tb_Ped01.Sql.clear;
   DM1.Tb_Ped01.Sql.add('Select * from CADP01 '
                       +' where P1STATUS<'+mstatus_excluido+'  and P1CODEMP=0'+Tb_Ped01P1CODEMP.AsString
                       +' and P1LOTSEQ=0'+Tb_Ped01P1LOTSEQ.AsString
                       +' and P1CHAVE=0'+Tb_Ped01P1CHAVE.AsString
                       +' and P1ORDEM=0'+Tb_Ped01P1ORDEM.AsString
                       +' order by P1CODEMP,P1CHAVE');
   DM1.Tb_Ped01.open;
   label2.Caption:='Lendo Pedido: '+Tb_Ped01P1CHAVE.AsString+'/'+Tb_Ped01P1ORDEM.AsString+' '+FormatDateTime(fdt,Tb_Ped01P1DATAP.Value)+'. Progresso do Processamento...';
   label2.Update;
   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mqtd;
   DM1.Tb_Ped02.Close;
   DM1.Tb_Ped02.SQL.Clear;
   DM1.Tb_Ped02.SQL.Add('Select * from CADP02 where P2CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                       +' and P2LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                       +' and P2CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                       +' and P2ORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString);
   DM1.Tb_Ped02.Open;
   While not DM1.Tb_Ped02.Eof do
      begin
      Qr_Ped.Close;
      Qr_Ped.SQL.Clear;
      Qr_Ped.SQL.add('select PF2CODPRO,PF2PU,PF2QTDP,PF2ICMSR,PF2TOTDES,NEOUTRAS,'
                    +' NEFRETE,NESEG,NETOTNOT from cadPF2,CADNE where '
                    +' NECODEMP=PF2CODEMP and NELOTSEQ_CP=PF2LOTSEQ and NECHAVEP=PF2CHAVE and '
                    +' PF2CODPRO=0'+DM1.Tb_Ped02P2CODPRO.AsString
                    +' and NEDTENT<='+chr(39)+FormatDateTime(fdt, DM1.Tb_Ped01P1DATDOC.Value)+chr(39)
                    +' ORDER BY NEDTENT DESC ');
      Qr_Ped.Open;
      if Qr_Ped.Eof then
         begin
         DM1.Tb_Ped02.Edit;
         DM1.Tb_Ped02P2UCPR.Value:=DM1.Tb_Ped02P2PRECO.Value;
         DM1.Tb_Ped02.Post;
         end
      else
         begin
         mdesp:=Qr_PedNEFRETE.Value+Qr_PedNEOUTRAS.Value+Qr_PedNESEG.Value;
         mpdesp:=Qr_PedNETOTNOT.Value-mdesp;
         mpdesp:=(mdesp*100)/mpdesp;
         if Qr_PedPF2ICMSR.Value>0 then
            begin
            mpicmsr:=Qr_PedPF2PU.Value*Qr_PedPF2QTDP.Value;
            mpicmsr:=(Qr_PedPF2ICMSR.Value*100)/mpicmsr;
            end
         else
            mpicmsr:=0;
         if mpdesp>0 then
            mdesp:=(Qr_PedPF2PU.Value*mpdesp/100)
         else
            mdesp:=0;
         if mpicmsr>0 then
            mdesp:=mdesp+(Qr_PedPF2PU.Value*mpicmsr/100);
         DM1.Tb_Ped02.Edit;
         DM1.Tb_Ped02P2UCPR.Value:=Qr_PedPF2PU.Value+mdesp;
         DM1.Tb_Ped02.Post;
         end;
      DM1.Tb_Ped02.Next;
      end;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Sql.add('Select sum(P2UCPR*P2QTD) from CADP02 '
                     +' where P2CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                     +' and P2LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                     +' and P2CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                     +' and P2ORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString);

   DM1.Query2.Open;
   if not DM1.Query1.Eof then
      begin
      DM1.Tb_Ped01.Edit;
      DM1.Tb_Ped01P1TOTUCPR.Value:=DM1.Query2.Fields[0].AsFloat;
      DM1.Tb_Ped01.Post;
      end;
   Tb_Ped01.Next;
   end;
MessageDlg('Concluido!',mtWarning,[mbOk],0);
GroupBox1.Visible:=False;
end;

procedure TFrm_CPed2.BitBtn3Click(Sender: TObject);
var
mlid, mqtd: Integer;
mtotal,mpicmsr,mdesp, mpdesp: Real;
begin
Tb_Pro.Close;
Tb_Pro.Open;
mqtd:=Tb_Pro.RecordCount;
mlid:=0;
GroupBox1.Visible:=True;
While not Tb_Pro.Eof do
   begin
{   if Tb_ProPDUCPR.Value>0 then
      begin
      Tb_Pro.Next;
      Continue;
      end;
}   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mqtd;
   Qr_Pro.Close;
   Qr_Pro.SQL.Clear;
   Qr_Pro.SQL.add('select PF2CODPRO,PF2PU,PF2QTDP,PF2ICMSR,PF2VALDES,NEOUTRAS,'
                    +' NEFRETE,NESEG,NETOTNOT from cadPF2,CADNE where '
                    +' NECODEMP=PF2CODEMP and NELOTSEQ=PF2LOTSEQ and  NECHAVEP=PF2CHAVE and '
                    +' PF2CODPRO=0'+Tb_ProPDCODPRO.AsString
                    +' ORDER BY NEDTENT DESC ');
   Qr_Pro.Open;
   flcadpro(1,0,0,Tb_ProPDCODPRO.AsString);
   if Qr_Pro.Eof then
      begin
      DM1.Tb_Pro.Edit;
      DM1.Tb_ProPDUCPR.Value:=DM1.Tb_ProPDPCOFAB.Value;
      DM1.Tb_Pro.Post;
      end
   else
      begin
      mdesp:=Qr_ProNEFRETE.Value+Qr_ProNEOUTRAS.Value+Qr_ProNESEG.Value;
      mpdesp:=Qr_ProNETOTNOT.Value-mdesp;
      mpdesp:=(mdesp*100)/mpdesp;
      if Qr_ProPF2ICMSR.Value>0 then
         begin
         mpicmsr:=Qr_ProPF2PU.Value*Qr_ProPF2QTDP.Value;
         mpicmsr:=(Qr_ProPF2ICMSR.Value*100)/mpicmsr;
         end
      else
         mpicmsr:=0;
      if mpdesp>0 then
         mdesp:=(Qr_ProPF2PU.Value*mpdesp/100)
      else
         mdesp:=0;
      if mpicmsr>0 then
         mdesp:=mdesp+(Qr_ProPF2PU.Value*mpicmsr/100);
      DM1.Tb_Pro.Edit;
      DM1.Tb_ProPDUCPR.Value:=Qr_ProPF2PU.Value+mdesp;
      DM1.Tb_Pro.Post;
      end;
   Tb_Pro.Next;
   end;
MessageDlg('Concluido!',mtWarning,[mbOk],0);
GroupBox1.Visible:=False;

end;

procedure TFrm_CPed2.BitBtn4Click(Sender: TObject);
var
mlid, mqtd: Integer;
begin
Qr_Tax.Close;
Qr_Tax.SQl.Clear;
Qr_Tax.SQL.Add('Select * from CADTAX where TXCODLDR<>0');
Qr_Tax.Open;
Label2.Visible:=True;
mqtd:=Qr_Tax.RecordCount;
if mqtd<=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from CADTAX where TXCODLDR<>0');
   DM1.Query1.Open;
   mqtd:=DM1.Query1.Fields[0].AsInteger;
   end;
Tb_Ped01.Close;
Tb_Ped01.Sql.clear;
Tb_Ped01.Sql.add('Select * from CADP01 '
                +' where P1STATUS<'+mstatus_excluido+'  and P1CODLDR<>0');
Tb_Ped01.Open;
mqtd:=mqtd+Tb_Ped01.RecordCount;

Qr_Compra.Close;
Qr_Compra.SQL.Clear;
Qr_Compra.SQL.add('Select * from CADDAP where CACODLDR<>0 AND CACHAVEP<>0');
Qr_Compra.Open;
mqtd:=mqtd+Qr_Compra.RecordCount;
mlid:=0;
GroupBox1.Visible:=True;
While not Qr_Tax.Eof do
   begin
   label2.Caption:='Processando arquivo de Taxas. '+FormatDateTime(fdt2, Qr_TaxTXDATA.Value);
   label2.Update;
   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mqtd;
   GroupBox1.Update;
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADLDR set LOCDEP=5 where CODEMP=0'+Qr_TaxTXCODEMP.AsString
//                     +' and LOTSEQ=0'+Qr_TaxTXCODLDR_FC.AsString
                     +' and CODLDR=0'+Qr_TaxTXCODLDR.AsString);
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   Qr_Tax.Next;

   end;

While not Tb_Ped01.Eof do
   begin
   label2.Caption:='Processando arquivo de Pedidos. Chave: '+Tb_Ped01P1CHAVE.AsString+' '+FormatDateTime(fdt2, Tb_Ped01P1DATAP.Value);
   label2.Update;
   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mqtd;
   GroupBox1.Update;
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADLDR set LOCDEP=3 where CODEMP=0'+Tb_Ped01P1CODEMP.AsString
                     +' and LOTSEQ=0'+Tb_Ped01P1LOTSEQ.AsString
                     +' and CODLDR=0'+Tb_Ped01P1CODLDR.AsString);
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   Tb_Ped01.Next;
   end;
While not Qr_Compra.Eof do
   begin
   label2.Caption:='Processando arquivo de Compras. Chave: '+Qr_CompraCANUMERO.AsString+' '+FormatDateTime(fdt2, Qr_CompraCADTEMIS.Value);
   label2.Update;
   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mqtd;
   GroupBox1.Update;
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADLDR set LOCDEP=1 where CODEMP=0'+Qr_CompraCACODEMP.AsString
                     +' and LOTSEQ=0'+Qr_CompraCALOTSEQ_FC.AsString
                     +' and CODLDR=0'+Qr_CompraCACODLDR.AsString);
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   Qr_Compra.Next;
   end;


end;

procedure TFrm_CPed2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
