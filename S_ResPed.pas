unit S_ResPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,S_DM1, DB, DBTables,func,S_Agde,lerarq,S_DM4;

type
  TFrm_ResPed = class(TForm)
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    Qr_Notas: TQuery;
    Qr_NotasNSNUMERO: TFloatField;
    Qr_NotasNSCHAVEP: TFloatField;
    Qr_NotasNSORDEMP: TFloatField;
    Qr_NotasP1CHAVE: TDateTimeField;
    Qr_NotasP1ORDEM: TFloatField;
    Qr_NotasNSCODEMP: TFloatField;
    Qr_NotasNSLOTSEQ_CP: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ResPed: TFrm_ResPed;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_ResPed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ResPed.BitBtn1Click(Sender: TObject);
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin3(0,'CADP01','P1CODEMP','NSCODEMP','P1CHAVE','NSCHAVEP','P1ORDEM','NSORDEMP');
Qr_Notas.Close;
Qr_notas.SQL.Clear;
Qr_notas.SQL.Add('select NSNUMERO,NSCODEMP,NSLOTSEQ_CP,NSCHAVEP,NSORDEMP,NSDTEMIS'
                +'       P1CHAVE,P1ORDEM FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                +'       '+la_Join
                +' where P1CHAVE is null '
                +iif(la_instrucao='','',' and ')+la_instrucao);
if Trim(MDT1.Text)<>'/  /' then
   Qr_Notas.SQL.Add(' and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Notas.SQL.Add(' and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
Qr_Notas.Open;
if Qr_Notas.Eof then
   begin
   MessageDlg('Não ha Registros a ser Restaurados!',mtInformation,[mbOk],0);
   exit;
   end;
Application.CreateForm(
TFrm_Agde, Frm_Agde);
mplid:=0;
mpqtd:=Qr_Notas.RecordCount;
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Label2.Visible    :=True;
Frm_Agde.Label1.Caption:='Restaurando Pedidos de Vendas Através do Arquivo de Notas, aguarde...';
Frm_Agde.Show;
While not Qr_Notas.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   Frm_Agde.Label2.Caption :='Processando Notas: '+Qr_NotasNSNUMERO.AsString
                            +' Chave: '+Qr_NotasNSCHAVEP.AsString+'/'+Qr_NotasNSORDEMP.AsString;
   verteclado(0);
   if not flcadns(3,Qr_NotasNSCODEMP.AsInteger,Qr_NotasNSLOTSEQ_CP.AsInteger, Qr_NotasNSCHAVEP.AsString,Qr_NotasNSORDEMP.AsString,'') then
      begin
      MessageDlg('Erro ao localizar Processando Notas: '+Qr_NotasNSNUMERO.AsString+#13
                +' Chave: '+Qr_NotasNSCHAVEP.AsString+'/'+Qr_NotasNSORDEMP.AsString,mtWarning,[mbOk],0);
      Qr_Notas.Next;
      Continue;
      end;
   DM4.Qr_IncPed01.Close;
   DM4.Qr_IncPed01.ParambyName('P1CODEMP').AsFloat     := DM1.Tb_NsNSCODEMP.Value;
   DM4.Qr_IncPed01.ParambyName('P1LOTSEQ').AsFloat     := DM1.Tb_NsNSLOTSEQ_CP.Value;
   DM4.Qr_IncPed01.ParambyName('P1CHAVE').AsFloat      := DM1.Tb_NsNSCHAVEP.Value;
   DM4.Qr_IncPed01.ParambyName('P1ANALISE').AsFloat    := 0;
   DM4.Qr_IncPed01.ParambyName('P1ACRESCIMO').AsFloat   := 0;     
   DM4.Qr_IncPed01.ParambyName('P1CHAVE_NIVEL').AsFloat:= 00;
   DM4.Qr_IncPed01.ParambyName('P1ORDEM').AsFloat      := DM1.Tb_NsNSORDEMP.Value;
   DM4.Qr_IncPed01.ParambyName('P1CODCLI').AsFloat     := DM1.Tb_NsNSCODCLI.Value;
   if (DM1.Tb_NsNSDTEMIS.IsNull) or (DM1.Tb_NsNSDTEMIS.Value<=pdatanula) then
      begin
      DM4.Qr_IncPed01.ParambyName('P1DATAP').AsDatetime   := DM1.Tb_NsNSDATCUP.Value;
      DM4.Qr_IncPed01.ParambyName('P1DATANF').AsDateTime  := DM1.Tb_NsNSDATCUP.Value;
      end
   else
      begin
      DM4.Qr_IncPed01.ParambyName('P1DATAP').AsDatetime   := DM1.Tb_NsNSDTEMIS.Value;
      DM4.Qr_IncPed01.ParambyName('P1DATANF').AsDateTime  := DM1.Tb_NsNSDTEMIS.Value;
      end;
   DM4.Qr_IncPed01.ParambyName('P1NUMNF').AsFloat      := DM1.Tb_NsNSNUMERO.Value;
   DM4.Qr_IncPed01.ParambyName('P1SERIE').AsString     := DM1.Tb_NsNSSERIE.Value;
   DM4.Qr_IncPed01.ParambyName('P1SUBSER').AsString    := DM1.Tb_NsNSSUBSER.Value;
   DM4.Qr_IncPed01.ParambyName('P1MODELO').AsString    := DM1.Tb_NsNSMODELO.Value;
   DM4.Qr_IncPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis('0');
   DM4.Qr_IncPed01.ParambyName('P1FORMACE').AsFloat    := 9;
   DM4.Qr_IncPed01.ParambyName('P1OBS1').AsString      := '';
   DM4.Qr_IncPed01.ParambyName('P1OBS2').AsString      := '';
   DM4.Qr_IncPed01.ParambyName('P1OBS3').AsString      := '';
   DM4.Qr_IncPed01.ParambyName('P1STATUS').AsFloat     := 2;
   DM4.Qr_IncPed01.ParambyName('P1TIPO').AsFloat       := iif(DM1.Tb_NsNSTIPO.Value=1,8,1);
   DM4.Qr_IncPed01.ParambyName('P1SITPED').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTALB').AsFloat     := (DM1.Tb_NsNSTOTPROI.Value+DM1.Tb_NsNSTOTPROP.Value+DM1.Tb_NsNSTOTPRON.Value);
   DM4.Qr_IncPed01.ParambyName('P1TOTALL').AsFloat     := DM1.Tb_NsNSTOTNOTA.Value;
   DM4.Qr_IncPed01.ParambyName('P1CODUSR').AsFloat     := DM1.Tb_NsNSCODUSR.Value;
   DM4.Qr_IncPed01.ParambyName('P1HORADIG').AsString   := ' ';
   DM4.Qr_IncPed01.ParambyName('P1DTMOD').AsDateTime   := pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HRMOD').AsString     := ' ';
   DM4.Qr_IncPed01.ParambyName('P1USRMOD').AsFloat     := DM1.Tb_NsNSCODUSR.Value;
   DM4.Qr_IncPed01.ParambyName('P1CFO1').AsString      := DM1.Tb_NsNSCFO1.AsString;
   DM4.Qr_IncPed01.ParambyName('P1CFO2').AsString      := DM1.Tb_NsNSCFO2.AsString;
   DM4.Qr_IncPed01.ParambyName('P1CFOPSER').AsString   := DM1.Tb_NsNSCFOSER.AsString;
   DM4.Qr_IncPed01.ParambyName('P1CONF').AsString      := 'N';
   DM4.Qr_IncPed01.ParambyName('P1CODCON').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1DATCON').AsDateTime:=pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HORCON').AsString    := ' ';
   if DM1.Tb_NsNSFRETE.Value>0 then
      DM4.Qr_IncPed01.ParambyName('P1TIPENT').AsFloat     := 1
   else
      DM4.Qr_IncPed01.ParambyName('P1TIPENT').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1PREVENT').AsDateTime:= pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HPREVENT').AsString    := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CODENT').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1PRAZO').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1DATENT').AsDateTime := pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HORENT').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CUPOM').AsFloat        := iif(DM1.Tb_NsNSNUMCUP.Value>0,1,0);

   DM4.Qr_IncPed01.ParambyName('P1BASEN').AsFloat        := DM1.Tb_NsNSBASEN.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSN').AsFloat        := DM1.Tb_NsNSICMSN.Value;
   DM4.Qr_IncPed01.ParambyName('P1REPAS').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1BASER').AsFloat        := DM1.Tb_NsNSBASERI.Value+DM1.Tb_NsNSBASERP.Value+DM1.Tb_NsNSBASERN.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSR').AsFloat        := DM1.Tb_NsNSICMSNRI.Value+DM1.Tb_NsNSICMSRP.Value+DM1.Tb_NsNSICMSRN.Value;
   DM4.Qr_IncPed01.ParambyName('P1BASENP').AsFloat       := DM1.Tb_NsNSBASENP.Value;
   DM4.Qr_IncPed01.ParambyName('P1BASENN').AsFloat       := DM1.Tb_NsNSBASENN.Value;
   DM4.Qr_IncPed01.ParambyName('P1BASENI').AsFloat       := DM1.Tb_NsNSBASENI.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNP').AsFloat       := DM1.Tb_NsNSICMSNP.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNN').AsFloat       := DM1.Tb_NsNSICMSNN.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNI').AsFloat       := DM1.Tb_NsNSICMSNI.Value;
   DM4.Qr_IncPed01.ParambyName('P1BASERP').AsFloat       := DM1.Tb_NsNSBASERP.Value;
   DM4.Qr_IncPed01.ParambyName('P1BASERN').AsFloat       := DM1.Tb_NsNSBASERN.Value;
   DM4.Qr_IncPed01.ParambyName('P1BASERI').AsFloat       := DM1.Tb_NsNSBASERI.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSRP').AsFloat       := DM1.Tb_NsNSICMSRP.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSRN').AsFloat       := DM1.Tb_NsNSICMSRN.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSRI').AsFloat       := DM1.Tb_NsNSICMSRI.Value;
   DM4.Qr_IncPed01.ParambyName('P1BASENRI').AsFloat      := DM1.Tb_NsNSBASENRI.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNRI').AsFloat      := DM1.Tb_NsNSICMSNRI.Value;
   DM4.Qr_IncPed01.ParambyName('P1BASENRP').AsFloat      := DM1.Tb_NsNSBASENRP.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNRP').AsFloat      := DM1.Tb_NsNSICMSNRp.Value;
   DM4.Qr_IncPed01.ParambyName('P1BASENRN').AsFloat      := DM1.Tb_NsNSBASENRN.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMSNRN').AsFloat      := DM1.Tb_NsNSICMSNRN.Value;
   DM4.Qr_IncPed01.ParambyName('P1IPIINA').AsFloat       := DM1.Tb_NsNSIPII.Value;
   DM4.Qr_IncPed01.ParambyName('P1IPIPOS').AsFloat       := DM1.Tb_NsNSIPIp.Value;
   DM4.Qr_IncPed01.ParambyName('P1IPINEG').AsFloat       := DM1.Tb_NsNSIPIN.Value;
   DM4.Qr_IncPed01.ParambyName('P1TOTTRI').AsFloat       := DM1.Tb_NsNSTOTNOR.Value;
   DM4.Qr_IncPed01.ParambyName('P1TOTRET').AsFloat       := DM1.Tb_NsNSTOTRET.Value;
   DM4.Qr_IncPed01.ParambyName('P1TOTISE').AsFloat       := DM1.Tb_NsNSTOTISEN.Value;
   DM4.Qr_IncPed01.ParambyName('P1TOTOUT').AsFloat       := DM1.Tb_NsNSTOTOUT.Value;
   DM4.Qr_IncPed01.ParambyName('P1TOTPOS').AsFloat       := DM1.Tb_NsNSTOTPROP.Value;
   DM4.Qr_IncPed01.ParambyName('P1TOTNEG').AsFloat       := DM1.Tb_NsNSTOTPRON.Value;
   DM4.Qr_IncPed01.ParambyName('P1TOTINA').AsFloat       := DM1.Tb_NsNSTOTPROI.Value;
//   DM4.Qr_IncPed01.ParambyName('P1PISCOFN').AsFloat      := dm1.Tb_NsNSPISCOFN.Value;
//   DM4.Qr_IncPed01.ParambyName('P1PISCOFR').AsFloat      := dm1.Tb_NsNSPISCOFR.Value;
   DM4.Qr_IncPed01.ParambyName('P1TOTDES').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTDI01').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTDI02').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTDI03').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1VALDES01').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1VALDES02').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTDIVL').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTUCPR').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1DESC01').AsFloat       := 0;;
   DM4.Qr_IncPed01.ParambyName('P1DESC02').AsFloat       := 0;;
   DM4.Qr_IncPed01.ParambyName('P1VLRDES').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1PAVDES').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODTRA').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1QTDVOL').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1PESOL').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1PESOB').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1ESPECIE').AsString     := 'CX';
   DM4.Qr_IncPed01.ParambyName('P1FRETEPC').AsFloat      := 1;
   DM4.Qr_IncPed01.ParambyName('P1VALFRE').AsFloat       := DM1.Tb_NsNSFRETE.Value;

   DM4.Qr_IncPed01.ParambyName('P1TARBAN').AsFloat       := DM1.Tb_NsNSTARBAN.Value;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_BCSEG').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_ALSEG').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_VLSEG').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_BCOUTD').AsFloat  := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_ALOUTD').AsFloat  := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_VLOUTD').AsFloat  := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_BCIPI').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_ALIPI').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1ICMS_VLIPI').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1UFPV').AsString        := ' ';
   DM4.Qr_IncPed01.ParambyName('P1PLACAV').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CODSER').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODLDR').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1ORIGEM').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1NPEDORI').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODTLV').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1BCISSQN').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1VISSQN').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1ETIVOL').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODSEP').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1DATASEP').AsDateTime   :=pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HORSEP').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CODEMB').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1DATAEMB').AsDateTime:=pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1HOREMB').AsString      := ' ';
   DM4.Qr_IncPed01.ParambyName('P1NUMCF').AsFloat        := DM1.Tb_NsNSNUMCUP.Value;
   DM4.Qr_IncPed01.ParambyName('P1CODECF').AsFloat       := DM1.Tb_NsNSCODECF.Value;
   DM4.Qr_IncPed01.ParambyName('P1DATACF').AsDateTime    := DM1.Tb_NsNSDATCUP.Value;
   DM4.Qr_IncPed01.ParambyName('P1TPPCO').AsFloat        :=0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCV').AsFloat        :=0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCS').AsFloat        :=0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCT').AsFloat        :=0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCASSE').AsFloat     :=0;
   DM4.Qr_IncPed01.ParambyName('P1SITAC').AsFloat        :=0;
   DM4.Qr_IncPed01.ParambyName('P1VLRACRE').AsFloat      :=dm1.Tb_NsNSTOTNOTA.Value-(DM1.Tb_NsNSTOTPROI.Value+DM1.Tb_NsNSTOTPROP.Value+DM1.Tb_NsNSTOTPRON.Value+DM1.Tb_NsNSFRETE.Value);
   DM4.Qr_IncPed01.ParambyName('P1PEDORI1').AsString     :=' ';
   DM4.Qr_IncPed01.ParambyName('P1PEDORI2').AsString     :=' ';
   DM4.Qr_IncPed01.ParambyName('P1MOTIVO').AsString      :=' ';
   DM4.Qr_IncPed01.ParambyName('P1NUMVIS').AsString      :=' ';
   DM4.Qr_IncPed01.ParambyName('P1DATVIS').AsDateTime :=pdatanula;
   if DM1.Tb_NsNSDTEMIS.Value<=pdatanula then
      DM4.Qr_IncPed01.ParambyName('P1DATDOC').AsDate    :=DM1.Tb_NsNSDATCUP.Value
   else
      DM4.Qr_IncPed01.ParambyName('P1DATDOC').AsDate    :=DM1.Tb_NsNSDTEMIS.Value;
   DM4.Qr_IncPed01.ParambyName('P1EMIDOC').AsFloat       := 1;
   DM4.Qr_IncPed01.ParambyName('P1ACRECONV').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1ACREGER').AsFloat      := dm1.Tb_NsNSTOTNOTA.Value-(DM1.Tb_NsNSTOTPROI.Value+DM1.Tb_NsNSTOTPROP.Value+DM1.Tb_NsNSTOTPRON.Value+DM1.Tb_NsNSFRETE.Value);
   DM4.Qr_IncPed01.ParambyName('P1PACRECONV').AsFloat    := 0;
   DM4.Qr_IncPed01.ParambyName('P1PACREGER').AsFloat     := DM1.Tb_PargerPACREGER.Value;
   DM4.Qr_IncPed01.ParambyName('P1CODDEP').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1NAUT').AsString        := ' ';
   DM4.Qr_IncPed01.ParambyName('P1MINUTA').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1SITCPR').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCV02').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCV03').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCV04').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1SEMCOMP').AsString     := '0';
   DM1.Query1.Close;
   DM1.Query1.sql.clear;
   DM1.Query1.SQL.add('select CRCODVEN,CRCODV02,CRCODV03,CRCODBCO,CRCODASSE, SUM(CRCOMASSE) AS CRCOMASSE '
                     +' ,SUM(CRSEMCOM) AS CRSEMCOM,SUM(CRDESCF) AS CRDESCF '
                     +' from CADDAR '
                     +' WHERE CRCODEMP=0'+Qr_NotasNSCODEMP.AsString
                     +' and   CRLOTSEQ_CP=0'+Qr_NotasNSLOTSEQ_CP.AsString
                     +' and   crnped=0'+Qr_NotasNSCHAVEP.AsString
                     +' and   CRORDEM=0'+Qr_NotasNSORDEMP.AsString
                     +' group by crcodven,crcodv02,crcodv03,crcodbco');
   DM1.Query1.Open;
   DM4.Qr_IncPed01.ParambyName('P1CODVEN').AsFloat       := DM1.Query1.fieldByName('CRCODVEN').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1CODV02').AsFloat       := DM1.Query1.fieldByName('CRCODV02').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1CODV03').AsFloat       := DM1.Query1.fieldByName('CRCODV03').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1BANCO').AsFloat        := DM1.Query1.fieldByName('CRCODBCO').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1SEMCOM').AsFloat       := DM1.Query1.fieldByName('CRSEMCOM').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1DESCFIN').AsFloat      := DM1.Query1.fieldByName('CRDESCF').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1CODASSE').AsFloat      := DM1.Query1.fieldByName('CRCODASSE').AsFloat;

// fim caddar
   DM1.Query1.close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.add('Select max(P1VTABPV) AS P1VTABPV ,'
                     +' max(P1VCODIGO) AS P1VCODIGO, '
                     +' sum(P1VCOMISV) AS P1VCOMISV, '
                     +' sum(P1VCOM02) AS P1VCOM02, '
                     +' sum(P1VCOM03) AS P1VCOM03, '
                     +' sum(P1VCOMISS) AS P1VCOMISS, '
                     +' sum(P1VCOMIST) AS P1VCOMIST, '
                     +' sum(P1VDESCF)  AS P1VDESCF, '
                     +' sum(P1VCOMASSE) AS P1VCOMASSE,  '
                     +' sum(P1VCOM04) AS P1VCOM04 from CADP01V '
                     +' where P1VCODEMP=0'+Qr_NotasNSCODEMP.AsString
                     +' and P1VLOTSEQ=0'+Qr_NotasNSLOTSEQ_CP.AsString
                     +' and P1VCHAVE=0'+Qr_NotasNSCHAVEP.AsString
                     +' and P1VORDEM=0'+Qr_NotasNSORDEMP.AsString);
   DM1.Query1.Open;

   DM4.Qr_IncPed01.ParambyName('P1TABPV').AsString       := DM1.Query1.fieldbyName('P1VTABPV').AsString;
   DM4.Qr_IncPed01.ParambyName('P1CODPV').AsFloat        := DM1.Query1.fieldbyName('P1VCODIGO').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1PCOMIS').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODCV').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTEDM').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1COMIS').AsFloat        := DM1.Query1.fieldbyName('P1VCOMISV').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1COMV02').AsFloat       := DM1.Query1.fieldbyName('P1VCOM02').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1COMV03').AsFloat       := DM1.Query1.fieldbyName('P1VCOM03').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1COMV04').AsFloat       := DM1.Query1.fieldbyName('P1VCOM04').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1COMIST').AsFloat       := DM1.Query1.fieldbyName('P1VCOMIST').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1COMISS').AsFloat       := DM1.Query1.fieldbyName('P1VCOMISS').AsFloat;
   DM4.Qr_IncPed01.ParambyName('P1COMASSE').AsFloat      := DM1.Query1.fieldbyName('P1VCOMASSE').AsFloat;
//   plano de vendas

   if flcadpv(1,0,DM1.Query1.fieldbyName('P1VTABPV').AsString,DM1.Query1.fieldbyName('P1VCODIGO').AsString) then
      begin
      DM4.Qr_IncPed01.ParambyName('P1PVTC').AsFloat         :=DM1.Tb_PVPVTPC.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVCOM').AsFloat        :=DM1.Tb_PVPVCOM.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVCOM02').AsFloat      :=DM1.Tb_PVPVCOM02.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVCOM03').AsFloat      :=DM1.Tb_PVPVCOM03.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVCOM04').AsFloat      :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVACTD').AsFloat       :=DM1.Tb_PVPVACTD.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVACT00').AsFloat      :=DM1.Tb_PVPVACT00.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVACT01').AsFloat      :=DM1.Tb_PVPVACT01.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVACT99').AsFloat      :=DM1.Tb_PVPVACT99.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVTDC').AsFloat        :=DM1.Tb_PVPVTPDC.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVDES').AsFloat        :=DM1.Tb_PVPVDES.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVTPD1').AsFloat       :=DM1.Tb_PVPVTPD1.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVDES1').AsFloat       :=DM1.Tb_PVPVDES1.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVTPD2').AsFloat       :=DM1.Tb_PVPVTPD2.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVDES2').AsFloat       :=DM1.Tb_PVPVDES2.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVTPD3').AsFloat       :=DM1.Tb_PVPVTPD3.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVDES3').AsFloat       :=DM1.Tb_PVPVDES3.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVTPDESF').AsFloat     :=DM1.Tb_PVPVTPDESF.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVDESCF').AsFloat      :=DM1.Tb_PVPVDESCF.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVDIASDESCF').AsFloat  :=DM1.Tb_PVPVDIASDESCF.Value;
      DM4.Qr_IncPed01.ParambyName('P1PVDDESCF').AsFloat     :=DM1.Tb_PVPVDDESCF.Value;
      DM4.Qr_IncPed01.ParambyName('P1TPP').AsFloat          :=0;
      end
   else
      begin
      DM4.Qr_IncPed01.ParambyName('P1PVTC').AsFloat         :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVCOM').AsFloat        :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVCOM02').AsFloat      :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVCOM03').AsFloat      :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVCOM04').AsFloat      :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVACTD').AsFloat       :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVACT00').AsFloat      :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVACT01').AsFloat      :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVACT99').AsFloat      :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVTDC').AsFloat        :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVDES').AsFloat        :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVTPD1').AsFloat       :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVDES1').AsFloat       :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVTPD2').AsFloat       :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVDES2').AsFloat       :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVTPD3').AsFloat       :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVDES3').AsFloat       :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVTPDESF').AsFloat     :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVDESCF').AsFloat      :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVDIASDESCF').AsFloat  :=0;
      DM4.Qr_IncPed01.ParambyName('P1PVDDESCF').AsFloat     :=0;
      DM4.Qr_IncPed01.ParambyName('P1TPP').AsFloat          :=0;
      end;

   DM4.Qr_IncPed01.ParambyName('P1BLQPRM').AsFloat       :=0;
   DM4.Qr_IncPed01.ParambyName('P1VALSEG').AsFloat       :=0;
   DM4.Qr_IncPed01.ParambyName('P1PDESCLIB').AsFloat     :=0;
   DM4.Qr_IncPed01.ParambyName('P1PDESCL_USR').AsFloat   := codusr;
   DM4.Qr_IncPed01.ParambyName('P1PROCESSO').AsString    := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CUPACRE').AsFloat      := DM1.Tb_NsNSCUPACRE.Value;
   DM4.Qr_IncPed01.ParambyName('P1CUPDES').AsFloat       := DM1.Tb_NsNSCUPDES.Value;
   DM4.Qr_IncPed01.ParambyName('P1LEMAT').AsFloat        := DM1.Tb_NsNSLEMAT.Value;
   DM4.Qr_IncPed01.ParambyName('P1QTDMAN').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1DTACERTO').AsDateTime:= pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1LTACERTO').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1CANHOTO').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1ALIQDEB').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTCGRU').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTSGRU').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1TOTSERLIQ').AsFloat    := 0;
   DM4.Qr_IncPed01.ParambyName('P1DTHRCHEG').AsDatetime  := Now;
   DM4.Qr_IncPed01.ParambyName('P1CODPRIOR').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1PROMOCAO').AsString    := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CODBLOQ').AsString     := ' ';
   DM4.Qr_IncPed01.ParambyName('P1CODUSR_LBLOQ').AsFloat := 0;

   DM4.Qr_IncPed01.ParambyName('P1COMIS_EXTRA').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1QTDM3').AsFloat         := 0;
   DM4.Qr_IncPed01.ParambyName('P1VFRE_CUSENT').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1VALENT').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1PRAZO_ENT').AsFloat     := 0;
   DM4.Qr_IncPed01.ParambyName('P1SEPAMB').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1PZOLIB').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1PZOLIB_USR').AsFloat    := 0;
   DM4.Qr_IncPed01.ParambyName('P1BLOQPEND').AsFloat      := 0;
   DM4.Qr_IncPed01.ParambyName('P1CODBLOQ_LIB').AsString  := ' ';
   DM4.Qr_IncPed01.ParambyName('P1ECF_SERIE').AsString    :=' ';
   DM4.Qr_IncPed01.ParambyName('P1CX_CODCAI').AsFloat     :=codcai;
   DM4.Qr_IncPed01.ParambyName('P1CX_LOTMOV').AsFloat     :=lotmov;
   DM4.Qr_IncPed01.ParambyName('P1DUP_PROD').AsFloat      :=0;
   DM4.Qr_IncPed01.ParambyName('P1DUP_SERV').AsFloat      :=0;
   DM4.Qr_IncPed01.ParambyName('P1INCTB').AsFloat         :=DM4.Tb_Par01PINCTB.Value;
   DM4.Qr_IncPed01.ParambyName('P1EMITENTE').AsString     :='P';
   DM4.Qr_IncPed01.ParambyName('P1PVACREDESREG').AsFloat    :=0;
   DM4.Qr_IncPed01.ParambyName('P1PVAJCOMIS').AsFloat       :=0;
   DM4.Qr_IncPed01.ParambyName('P1LOCAL').AsFloat           :=0;
   DM4.Qr_IncPed01.ParambyName('P1TOTPROM').AsFloat         := 0;
   if (DM1.Tb_NsNSTIPO.AsInteger=8) or (DM1.Tb_NsNSTIPO.AsInteger=12)
   or (DM1.Tb_NsNSTIPO.AsInteger=13) or (DM1.Tb_NsNSTIPO.AsInteger=17)
   or (DM1.Tb_NsNSTIPO.AsInteger=18) then
      DM4.Qr_IncPed01.ParambyName('P1TIPO_ENTSAI').AsFloat    := 1
   else
      DM4.Qr_IncPed01.ParambyName('P1TIPO_ENTSAI').AsFloat    := 0;
      DM4.Qr_IncPed01.ParambyName('P1TOTPIS').AsFloat    := 0;
      DM4.Qr_IncPed01.ParambyName('P1TOTCOFINS').AsFloat    := 0;

   DM4.Qr_IncPed01.ParambyName('P1RED_BCISSQN').AsFloat  := 0;
   DM4.Qr_IncPed01.ParambyName('P1BCINSS').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1RED_BCINSS').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1VINSS').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1BCIRRF').AsFloat       := 0;
   DM4.Qr_IncPed01.ParambyName('P1RED_BCIRRF').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1VIRRF').AsFloat        := 0;
   DM4.Qr_IncPed01.ParambyName('P1NFE_ENVXML').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1QTDDECPU').AsFloat     := dm1.Tb_PargerPCASASPU.AsInteger;
   DM4.Qr_IncPed01.ParambyName('P1TPEMIS').AsFloat       := 1;
   DM4.Qr_IncPed01.ParambyName('P1ID_NEW').AsFloat         :=fBuscarProximoid('CADP01_SEQ');
   DM4.Qr_IncPed01.ParambyName('P1NOME_PROD').AsString   := ' ';
   // fim do cadp01v

   try
      DM4.Qr_IncPed01.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(10,333,'Frm_Ped','CADP01');
      end;
   Qr_Notas.Next;
   end;
Frm_Agde.gb_progres.Visible:=False;
Frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);
end;



procedure TFrm_ResPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
