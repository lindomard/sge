unit S_ResNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,S_DM1, DB, DBTables,func,S_Agde,lerarq,S_DM4;

type
  TFrm_ResNF = class(TForm)
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ped1: TQuery;
    Qr_Ped1P1CODEMP: TFloatField;
    Qr_Ped1P1CHAVE: TFloatField;
    Qr_Ped1P1ORDEM: TFloatField;
    Qr_Ped1P1CODCLI: TFloatField;
    Qr_Ped1P1CODVEN: TFloatField;
    Qr_Ped1P1CODV02: TFloatField;
    Qr_Ped1P1CODV03: TFloatField;
    Qr_Ped1P1DATAP: TDateTimeField;
    Qr_Ped1P1DATANF: TDateTimeField;
    Qr_Ped1P1NUMNF: TFloatField;
    Qr_Ped1P1SERIE: TStringField;
    Qr_Ped1P1SUBSER: TStringField;
    Qr_Ped1P1MODELO: TStringField;
    Qr_Ped1P1SUBMOD: TStringField;
    Qr_Ped1P1STATUS: TFloatField;
    Qr_Ped1P1TIPO: TFloatField;
    Qr_Ped1P1TOTALB: TFloatField;
    Qr_Ped1P1TOTALL: TFloatField;
    Qr_Ped1P1CODUSR: TFloatField;
    Qr_Ped1P1HORADIG: TStringField;
    Qr_Ped1P1DTMOD: TDateTimeField;
    Qr_Ped1P1HRMOD: TStringField;
    Qr_Ped1P1USRMOD: TFloatField;
    Qr_Ped1P1CONF: TStringField;
    Qr_Ped1P1CODCON: TFloatField;
    Qr_Ped1P1DATCON: TDateTimeField;
    Qr_Ped1P1HORCON: TStringField;
    Qr_Ped1P1TIPENT: TFloatField;
    Qr_Ped1P1PREVENT: TDateTimeField;
    Qr_Ped1P1HPREVENT: TStringField;
    Qr_Ped1P1CODENT: TFloatField;
    Qr_Ped1P1PRAZO: TFloatField;
    Qr_Ped1P1DATENT: TDateTimeField;
    Qr_Ped1P1HORENT: TStringField;
    Qr_Ped1P1TABPV: TStringField;
    Qr_Ped1P1CODPV: TFloatField;
    Qr_Ped1P1CUPOM: TFloatField;
    Qr_Ped1P1BASEN: TFloatField;
    Qr_Ped1P1ICMSN: TFloatField;
    Qr_Ped1P1REPAS: TFloatField;
    Qr_Ped1P1BASER: TFloatField;
    Qr_Ped1P1ICMSR: TFloatField;
    Qr_Ped1P1BASENP: TFloatField;
    Qr_Ped1P1BASENN: TFloatField;
    Qr_Ped1P1BASENI: TFloatField;
    Qr_Ped1P1ICMSNP: TFloatField;
    Qr_Ped1P1ICMSNN: TFloatField;
    Qr_Ped1P1ICMSNI: TFloatField;
    Qr_Ped1P1BASERP: TFloatField;
    Qr_Ped1P1BASERN: TFloatField;
    Qr_Ped1P1BASERI: TFloatField;
    Qr_Ped1P1ICMSRP: TFloatField;
    Qr_Ped1P1ICMSRN: TFloatField;
    Qr_Ped1P1ICMSRI: TFloatField;
    Qr_Ped1P1BASENRI: TFloatField;
    Qr_Ped1P1ICMSNRI: TFloatField;
    Qr_Ped1P1BASENRP: TFloatField;
    Qr_Ped1P1ICMSNRP: TFloatField;
    Qr_Ped1P1BASENRN: TFloatField;
    Qr_Ped1P1ICMSNRN: TFloatField;
    Qr_Ped1P1IPIINA: TFloatField;
    Qr_Ped1P1IPIPOS: TFloatField;
    Qr_Ped1P1IPINEG: TFloatField;
    Qr_Ped1P1TOTTRI: TFloatField;
    Qr_Ped1P1TOTRET: TFloatField;
    Qr_Ped1P1TOTISE: TFloatField;
    Qr_Ped1P1TOTPOS: TFloatField;
    Qr_Ped1P1TOTNEG: TFloatField;
    Qr_Ped1P1TOTINA: TFloatField;
    Qr_Ped1P1TOTDES: TFloatField;
    Qr_Ped1P1TOTUCPR: TFloatField;
    Qr_Ped1P1DESC01: TFloatField;
    Qr_Ped1P1DESC02: TFloatField;
    Qr_Ped1P1VLRDES: TFloatField;
    Qr_Ped1P1PAVDES: TFloatField;
    Qr_Ped1P1CODTRA: TFloatField;
    Qr_Ped1P1QTDVOL: TFloatField;
    Qr_Ped1P1PESOL: TFloatField;
    Qr_Ped1P1PESOB: TFloatField;
    Qr_Ped1P1ESPECIE: TStringField;
    Qr_Ped1P1FRETEPC: TFloatField;
    Qr_Ped1P1VALFRE: TFloatField;
    Qr_Ped1P1UFPV: TStringField;
    Qr_Ped1P1PLACAV: TStringField;
    Qr_Ped1P1BANCO: TFloatField;
    Qr_Ped1P1CODSER: TFloatField;
    Qr_Ped1P1CODLDR: TFloatField;
    Qr_Ped1P1PCOMIS: TFloatField;
    Qr_Ped1P1COMIS: TFloatField;
    Qr_Ped1P1COMIST: TFloatField;
    Qr_Ped1P1COMISS: TFloatField;
    Qr_Ped1P1ORIGEM: TFloatField;
    Qr_Ped1P1CODTLV: TFloatField;
    Qr_Ped1P1BCISSQN: TFloatField;
    Qr_Ped1P1VISSQN: TFloatField;
    Qr_Ped1P1ETIVOL: TFloatField;
    Qr_Ped1P1CODSEP: TFloatField;
    Qr_Ped1P1DATASEP: TDateTimeField;
    Qr_Ped1P1HORSEP: TStringField;
    Qr_Ped1P1CODEMB: TFloatField;
    Qr_Ped1P1DATAEMB: TDateTimeField;
    Qr_Ped1P1HOREMB: TStringField;
    Qr_Ped1P1NUMCF: TFloatField;
    Qr_Ped1P1DATACF: TDateTimeField;
    Qr_Ped1P1TPPCO: TFloatField;
    Qr_Ped1P1SEMCOM: TFloatField;
    Qr_Ped1P1DESCFIN: TFloatField;
    Qr_Ped1P1LOTCV: TFloatField;
    Qr_Ped1P1LOTCS: TFloatField;
    Qr_Ped1P1LOTCT: TFloatField;
    Qr_Ped1P1PVTC: TFloatField;
    Qr_Ped1P1PVCOM: TFloatField;
    Qr_Ped1P1PVACTD: TFloatField;
    Qr_Ped1P1PVACT00: TFloatField;
    Qr_Ped1P1PVACT01: TFloatField;
    Qr_Ped1P1PVACT99: TFloatField;
    Qr_Ped1P1PVTDC: TFloatField;
    Qr_Ped1P1PVDES: TFloatField;
    Qr_Ped1P1PVTPD1: TFloatField;
    Qr_Ped1P1PVDES1: TFloatField;
    Qr_Ped1P1PVTPD2: TFloatField;
    Qr_Ped1P1PVDES2: TFloatField;
    Qr_Ped1P1PVTPDESF: TFloatField;
    Qr_Ped1P1PVDESCF: TFloatField;
    Qr_Ped1P1PVDIASDESCF: TFloatField;
    Qr_Ped1P1PVDDESCF: TFloatField;
    Qr_Ped1P1TPP: TFloatField;
    Qr_Ped1P1SITAC: TFloatField;
    Qr_Ped1P1CODECF: TFloatField;
    Qr_Ped1P1VLRACRE: TFloatField;
    Qr_Ped1P1PEDORI1: TStringField;
    Qr_Ped1P1PEDORI2: TStringField;
    Qr_Ped1P1MOTIVO: TStringField;
    Qr_Ped1P1NUMVIS: TStringField;
    Qr_Ped1P1DATVIS: TDateTimeField;
    Qr_Ped1P1LOTSEQ: TFloatField;
    Qr_Ped1P1FORMACE: TFloatField;
    Qr_Ped1P1SITPED: TFloatField;
    Qr_Ped1P1TOTOUT: TFloatField;
    Qr_Ped1P1TOTDI01: TFloatField;
    Qr_Ped1P1TOTDI02: TFloatField;
    Qr_Ped1P1TOTDIVL: TFloatField;
    Qr_Ped1P1CODCV: TFloatField;
    Qr_Ped1P1LOTEDM: TFloatField;
    Qr_Ped1P1MINUTA: TFloatField;
    Qr_Ped1P1COMV02: TFloatField;
    Qr_Ped1P1COMV03: TFloatField;
    Qr_Ped1P1NPEDORI: TFloatField;
    Qr_Ped1P1LOTCV02: TFloatField;
    Qr_Ped1P1LOTCV03: TFloatField;
    Qr_Ped1P1PVCOM02: TFloatField;
    Qr_Ped1P1PVCOM03: TFloatField;
    Qr_Ped1P1SITCPR: TFloatField;
    Qr_Ped1P1DATDOC: TDateTimeField;
    Qr_Ped1P1EMIDOC: TFloatField;
    Qr_Ped1P1ACRECONV: TFloatField;
    Qr_Ped1P1ACREGER: TFloatField;
    Qr_Ped1P1PACRECONV: TFloatField;
    Qr_Ped1P1PACREGER: TFloatField;
    Qr_Ped1P1CODDEP: TFloatField;
    Qr_Ped1P1NAUT: TStringField;
    Qr_Ped1P1PEDORI: TFloatField;
    Qr_Ped1P1CFO1: TStringField;
    Qr_Ped1P1CFO2: TStringField;
    Qr_Ped1P1BLQPRM: TFloatField;
    Qr_Ped1P1TOTDI03: TFloatField;
    Qr_Ped1P1VALDES01: TFloatField;
    Qr_Ped1P1VALDES02: TFloatField;
    Qr_Ped1P1TARBAN: TFloatField;
    Qr_Ped1P1PVTPD3: TFloatField;
    Qr_Ped1P1PVDES3: TFloatField;
    Qr_Ped1P1VALSEG: TFloatField;
    Qr_Ped1P1CFOSER: TStringField;
    Qr_Ped1P1PDESCLIB: TFloatField;
    Qr_Ped1P1PDESCL_USR: TFloatField;
    Qr_Ped1P1PROCESSO: TStringField;
    Qr_Ped1P1CUPACRE: TFloatField;
    Qr_Ped1P1CUPDES: TFloatField;
    Qr_Ped1P1SEMCOMP: TStringField;
    Qr_Ped1P1OBS1: TMemoField;
    Qr_Ped1P1OBS2: TMemoField;
    Qr_Ped1P1OBS3: TMemoField;
    procedure bbSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ResNF: TFrm_ResNF;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_ResNF.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ResNF.BitBtn1Click(Sender: TObject);
var
Numero: Integer;
Modelo,Serie : String;
dtemis: TDateTime;
mlid, mgrav: Integer;
begin
Qr_Ped1.Close;
Qr_Ped1.SQL.Clear;
Qr_Ped1.SQL.Add('Select * from CADP01 where '
               +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
               +' (P1NUMNF>0 OR P1NUMCF>0)');
if Trim(MDT1.Text)<>'/  /' then
   Qr_Ped1.SQl.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
  Qr_Ped1.SQl.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));

Qr_Ped1.Open;
mplid:=0;
mpqtd:=Qr_Ped1.RecordCount;
mlid:=0;
mgrav:=0;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Criando os as notas. Aguarde';
Frm_Agde.Label2.Caption:='Pedidos Lidos: '+IntToStr(mlid)+' Gravados: '+IntToStr(mgrav);
Frm_Agde.Label2.Visible:=true;
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;
While not Qr_Ped1.Eof do
   begin
   Frm_Agde.Label2.Caption:='Pedidos Lidos: '+IntToStr(mlid)+' Gravados: '+IntToStr(mgrav);
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   mlid:=mlid+1;
//   Label2.Caption:='Processando Pedido..: '+FormatFloat('000000',Qr_Ped1P1CHAVE.Value)+'/'+FormatFloat('00',Qr_Ped1P1ORDEM.Value)+' Lidos: '+IntToStr(mlid)+' Gravados: '+IntToStr(mgrav);
   verteclado(0);
   Serie:=Qr_Ped1P1SERIE.Value;
   if Trim(Serie)='' then
      Serie:='1';
   Modelo:=Qr_Ped1P1MODELO.Value;
   if trim(Modelo)='' then
      Modelo:='1';
   DM1.Tb_Ns.Close;
   DM1.Tb_Ns.SQL.Clear;
   DM1.Tb_Ns.SQL.Add('Select * from CADNS where ');
   if DM1.Qr_TID.Locate('TINOME','CADNS',[]) then
      begin
      DM1.Tb_NS.SQL.Add(' NSTIPO=0'
                       +' and NSNUMERO=0'+Qr_Ped1P1NUMNF.asstring
                       +' and NSNUMCUP=0'+Qr_Ped1P1NUMCF.AsString
                       +' and NSCODECF=0'+Qr_Ped1P1CODECF.AsString
                       +' and NSSERIE='+chr(39)+Serie+chr(39)
                       +' and NSMODELO='+chr(39)+Qr_Ped1P1MODELO.Value+chr(39)
                       +' and NSDTEMIS='+chr(39)+FormatDateTime(fdt, Qr_Ped1P1DATANF.Value)+chr(39));

      end
   else
      begin
      DM1.Tb_NS.SQL.add(' NSCODEMP=0'+Qr_Ped1P1CODEMP.AsString
                       +' and NSTIPO=0'
                       +' and NSNUMERO=0'+Qr_Ped1P1NUMNF.asstring
                       +' and NSNUMCUP=0'+Qr_Ped1P1NUMCF.AsString
                       +' and NSCODECF=0'+Qr_Ped1P1CODECF.AsString
                       +' and NSSERIE='+chr(39)+Serie+chr(39)
                       +' and NSMODELO='+chr(39)+modelo+chr(39)
                       +' and NSDTEMIS='+chr(39)+FormatDateTime(fdt, Qr_Ped1P1DATANF.Value)+chr(39));
      end;


   DM1.Tb_Ns.Open;
   if DM1.Tb_Ns.Eof then
      DM1.Tb_Ns.Append
   else
      begin
      Qr_Ped1.Next;
      Continue;
//      DM1.Tb_Ns.Edit;
      end;;
   mgrav:=mgrav+1;
   flcadcli(1,0,Qr_Ped1P1CODCLI.AsString);
   DM1.Tb_NsNSCODEMP.Value  :=Qr_Ped1P1CODEMP.Value;
   DM1.Tb_NsNSTIPO.Value    :=0;
   DM1.Tb_NsNSNUMERO.Value  :=Qr_Ped1P1NUMNF.Value;
   DM1.Tb_NsNSSERIE.Value   :=Serie;
   DM1.Tb_NsNSSUBSER.Value  :=Qr_Ped1P1SUBSER.Value;
   DM1.Tb_NsNSMODELO.Value  :=Modelo;
   DM1.Tb_NsNSMODECF.Value  :=' ';
   DM1.Tb_NsNSCODCLI.Value  :=Qr_Ped1P1CODCLI.Value;
   if Qr_Ped1P1DATANF.Value<=pdatanula then
      DM1.Tb_NsNSDTEMIS.Value  :=Qr_Ped1P1DATACF.Value
   else
      DM1.Tb_NsNSDTEMIS.Value  :=Qr_Ped1P1DATANF.Value;

   if DM1.Tb_CliCCNPJ.Value>0 then
      begin
      DM1.Tb_NsNSCNPJ.Value :=DM1.Tb_CliCCNPJ.Value;
      DM1.Tb_NsNSIE.Value   :=DM1.Tb_CliCIE.Value;
      end
   else
      begin
      DM1.Tb_Nsnscnpj.Value :=DM1.Tb_CliCCPF.Value;
      DM1.Tb_NsNSIE.Value   :=DM1.Tb_CliCRG.Value;
      end;
   DM1.Tb_NsNSTOTNOTA.Value :=Qr_Ped1P1TOTALL.Value;
   DM1.Tb_NSNSCODECF.Value  :=Qr_Ped1P1CODECF.Value;
   DM1.Tb_NsNSBASENI.Value  :=Qr_Ped1P1BASENI.Value;
   DM1.Tb_NsNSICMSNI.Value  :=Qr_Ped1P1ICMSNI.Value;
   DM1.Tb_NsNSBASENP.Value  :=Qr_Ped1P1BASENP.Value;
   DM1.Tb_NsNSICMSNP.Value  :=Qr_Ped1P1ICMSNP.Value;
   DM1.Tb_Nsnsbasenn.Value  :=Qr_Ped1P1BASENN.Value;
   DM1.Tb_NsNSICMSNN.Value  :=Qr_Ped1P1ICMSNN.Value;
   DM1.Tb_NsNSBASERI.Value  :=Qr_Ped1P1BASERI.Value;
   DM1.Tb_NsNSICMSRI.Value  :=Qr_Ped1P1ICMSRI.Value;
   DM1.Tb_NsNSBASERP.Value  :=Qr_Ped1P1BASERP.Value;
   DM1.Tb_NSNSICMSRp.Value  :=Qr_Ped1P1ICMSRP.Value;
   DM1.TB_NSNSBASERN.Value  :=Qr_Ped1P1BASERN.Value;
   DM1.Tb_NSNSICMSRN.Value  :=Qr_Ped1P1ICMSRN.Value;
   DM1.Tb_NsNSTOTPROI.Value :=Qr_Ped1P1TOTINA.Value;
   DM1.Tb_NsNSTOTPROP.Value :=Qr_Ped1P1TOTPOS.Value;
   DM1.Tb_NsNSTOTPRON.Value :=Qr_Ped1P1TOTNEG.Value;
   DM1.Tb_NsNSBASENRI.Value :=Qr_Ped1P1BASENRI.Value;
   DM1.Tb_NsNSICMSNRI.Value :=Qr_Ped1P1ICMSNRI.Value;
   DM1.Tb_NsNSBASENRP.Value :=Qr_Ped1P1BASENRP.Value;
   DM1.Tb_NsNSICMSNRP.Value :=Qr_Ped1P1ICMSNRP.Value;
   DM1.Tb_NsNSBASENRN.Value :=Qr_Ped1P1BASENRN.Value;
   DM1.Tb_NsNSICMSNRN.Value :=Qr_Ped1P1ICMSNRN.Value;
   DM1.Tb_NsNSIPII.Value    :=Qr_Ped1P1IPIINA.Value;
   DM1.Tb_NsNSIPIP.Value    :=Qr_Ped1P1IPIPOS.Value;
   DM1.Tb_NsNSIPIN.Value    :=Qr_Ped1P1IPINEG.Value;
   DM1.Tb_NsNSFRETE.Value   :=Qr_Ped1P1VALFRE.Value;
   DM1.Tb_NsNSTOTISEN.Value :=Qr_Ped1P1TOTISE.Value;
   DM1.Tb_NsNSTOTRET.Value  :=Qr_Ped1P1TOTRET.Value;
   DM1.Tb_NsNSTOTNOR.Value  :=Qr_Ped1P1TOTTRI.Value;
   DM1.Tb_NsNSCHAVEP.Value  :=Qr_Ped1P1CHAVE.Value;
   DM1.Tb_NsNSORDEMP.Value  :=Qr_Ped1P1ORDEM.Value;
   DM1.Tb_NsNSBASEN.Value   :=Qr_Ped1P1BASEN.Value;
   DM1.Tb_NsNSICMSN.Value   :=Qr_Ped1P1ICMSN.Value;
//   DM1.Tb_NsNSPISCOFN.Value :=Qr_Ped1p1PisCofn.Value;
//   DM1.Tb_NSNSPISCOFR.Value :=Qr_Ped1P1PisCofR.Value;
   DM1.Tb_NsNSNUMCUP.Value  :=Qr_Ped1P1NUMCF.Value;
   if Qr_Ped1P1DATACF.Value<=pdatanula then
      DM1.Tb_NsNSDATCUP.Value  :=Qr_Ped1P1DATANF.Value
   else
      DM1.Tb_NsNSDATCUP.Value  :=Qr_Ped1P1DATACF.Value;

   DM1.Tb_NsNSTARBAN.Value  :=Qr_Ped1P1TARBAN.Value;
   DM1.Tb_NsNSBCISSQN.Value :=Qr_Ped1P1BCISSQN.Value;
   DM1.Tb_NsNSVISSQN.Value  :=Qr_Ped1P1VISSQN.Value;
   if Qr_Ped1P1STATUS.Value=9 then
      DM1.Tb_NsNSSTATUS.Value  :=9
   else
      DM1.Tb_NsNSSTATUS.Value  :=0;
   if DM1.Tb_NSNSSERIE.IsNull then
      DM1.Tb_NSNSSERIE.Value:='1';
   if DM1.Tb_NSNSTIPO.IsNull THEN
      DM1.Tb_NSNSTIPO.Value:=0;
   if DM1.Tb_NSNSSUBSER.IsNull then
      DM1.Tb_NSNSSUBSER.Value:='1';
   if DM1.Tb_NSNSMODELO.IsNull then
      DM1.Tb_NSNSMODELO.Value:='1';
   if DM1.Tb_NSNSDTEMIS.IsNull then
      DM1.Tb_NSNSDTEMIS.Value:=date;
   DM1.Tb_NsNSCUPACRE.Value:=DM1.Tb_Ped01P1CUPACRE.Value;
   DM1.Tb_NsNSCUPDES.Value :=DM1.Tb_Ped01P1CUPDES.Value;
   DM1.Tb_NsNSFRETEPC.Value:=DM1.Tb_Ped01P1FRETEPC.Value;
   DM1.Tb_NsNSICMS_BCFRE.Value := DM1.Tb_Ped01P1ICMS_BCFRE.Value;
   DM1.Tb_NsNSICMS_ALFRE.Value := DM1.Tb_Ped01P1ICMS_ALFRE.Value;
   DM1.Tb_NsNSICMS_VLFRE.Value := DM1.Tb_Ped01P1ICMS_VLFRE.Value;
   DM1.Tb_NsNSICMS_BCSEG.Value := DM1.Tb_Ped01P1ICMS_BCSEG.Value;
   DM1.Tb_NsNSICMS_ALSEG.Value := DM1.Tb_Ped01P1ICMS_ALSEG.Value;
   DM1.Tb_NsNSICMS_VLSEG.Value := DM1.Tb_Ped01P1ICMS_VLSEG.Value;
   DM1.Tb_NsNSICMS_BCOUTD.Value:= DM1.Tb_Ped01P1ICMS_BCOUTD.Value;
   DM1.Tb_NsNSICMS_ALOUTD.Value:= DM1.Tb_Ped01P1ICMS_ALOUTD.Value;
   DM1.Tb_NsNSICMS_VLOUTD.Value:= DM1.Tb_Ped01P1ICMS_VLOUTD.Value;
   DM1.Tb_NsNSICMS_BCIPI.Value := DM1.Tb_Ped01P1ICMS_BCIPI.Value;
   DM1.Tb_NsNSICMS_ALIPI.Value := DM1.Tb_Ped01P1ICMS_ALIPI.Value;
   DM1.Tb_NsNSICMS_VLIPI.Value := DM1.Tb_Ped01P1ICMS_VLIPI.Value;
   DM1.Tb_NsNSNFCF.Value       :=0;

   DM1.Tb_Ns.post;
   Qr_Ped1.Next;
   end;
Frm_Agde.Label1.Caption:='Concluido!';
end;



procedure TFrm_ResNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
