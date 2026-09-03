unit S_GerarDuplic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,S_Agde, Buttons,func, DB, DBTables,func2,lerarq;

type
  TFrm_GerarDuplic = class(TForm)
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    bbGerar: TBitBtn;
    bbSair: TBitBtn;
    Qr_PedFP: TQuery;
    Qr_PedFPPFPCODEMP: TFloatField;
    Qr_PedFPPFPLOTSEQ: TFloatField;
    Qr_PedFPPFPCHAVE: TFloatField;
    Qr_PedFPPFPSEQ: TFloatField;
    Qr_PedFPPFPFORMA: TFloatField;
    Qr_PedFPPFPNUMDOC: TStringField;
    Qr_PedFPPFPBANCO: TFloatField;
    Qr_PedFPPFPSERIE: TStringField;
    Qr_PedFPPFPVALOR: TFloatField;
    Qr_PedFPPFPCC: TStringField;
    Qr_PedFPPFPCOMP: TStringField;
    Qr_PedFPPFPAGENCIA: TStringField;
    Qr_PedFPPFPEMITENTE: TStringField;
    Qr_PedFPPFPDATA: TDateTimeField;
    Qr_PedFPnombco: TStringField;
    Qr_PedFPPFPNOMFOR: TStringField;
    Qr_PedFPPFPCNPF: TFloatField;
    Qr_PedFPPFPRG: TStringField;
    Qr_PedFPPFPDTNAS: TDateTimeField;
    Qr_PedFPmdatabco: TDateField;
    Qr_PedFPPFPVINCULO: TFloatField;
    Qr_PedFPPFPFPGTO: TFloatField;
    bbTransfChq: TBitBtn;
    Label1: TLabel;
    CHAVE: TEdit;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbTransfChqClick(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fgvencto(ptipo: Integer; pcodemp,plotseq,pchave,pordem,pprazo,pcodpv,pddescf,pdiasdescf,
                  ptotdup, pcomisv, pcomisv02, pcomisv03,pcomisv04,pcomiss,pcomist,psemcom,pcomasse,picmsr,
                  pfrete,pvalseg,pdescf,ptotdi01,ptotdi02,ptotdi03,ptotivlr,pvaldes01,pvaldes02,
                  pvlrdes,ptarban,ptotipi,ptotcgru,ptotsgru,pvlrserv,pvlrent,pprazo_ent,pvcomis_extra,pSubMod : Real; pdatae: tDateTime; ptabpv: String): Boolean;

function fRecriaTitulo(pTipo: Integer): Boolean;
var
  Frm_GerarDuplic: TFrm_GerarDuplic;
  mQtdPed, mQtdProc: Integer;

implementation


uses S_DM1, func_excecoes, S_DM4, S_PVO;
{$R *.dfm}

procedure TFrm_GerarDuplic.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_GerarDuplic.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_GerarDuplic.bbSairClick(Sender: TObject);
begin
close;

end;


function fgvencto(ptipo: Integer; pcodemp,plotseq,pchave,pordem,pprazo,pcodpv,pddescf,pdiasdescf,
                  ptotdup, pcomisv, pcomisv02, pcomisv03,pcomisv04,pcomiss,pcomist,psemcom,pcomasse,picmsr,
                  pfrete,pvalseg,pdescf,ptotdi01,ptotdi02,ptotdi03,ptotivlr,pvaldes01,pvaldes02,
                  pvlrdes,ptarban,ptotipi,ptotcgru,ptotsgru,pvlrserv,pvlrent,pprazo_ent,pvcomis_extra,pSubMod : Real; pdatae: tDateTime; ptabpv: String): Boolean;

var

mseq,mqtdd: Integer;
mvalfre,mvfre, mdiff,mEntfre: Real;
mvaldup,mdif,mEntDup: Real;
mscom,mdifsc,mEntSCom: Real;
mcomv,mdifv,mEntComV: Real;
mcomv02,mdifv02,mEntCV02: Real;
mcomv03,mdifv03,mEntCV03: Real;
mcoms, mdifs,mEntCSup: Real;
mcomt,mdift,mEntCTel: Real;
mcoma,mdifca,mEntCAss: Real;
mvicm, mdifi,mEntIcmsR: real;
mvdf, mddf,mEntDescFin: Real;
mvtb, mdiftb,mEntTarBan: Real;
mIPI    , mdifIPI,mEntVIPI     : Real;
mCGru   , mdifCGru,mEntCGru   : Real;
mSGru   , mdifSGru,mEntSGru   : Real;
mComv04 , mdifComv04,mEntCV04  : Real;
mvdi01 , mdifdi01,mEntDesI01 : Real;
mvdi02 , mdifdi02,mEntDesI02 : Real;
mvdi03 , mdifdi03,mEntDesI03 : Real;
mvtdi  , mdiftdi,mEntDesIVL: Real;
mvvd01 , mdifvd01,mEntVDes01 : Real;
mvvd02 , mdifvd02,mEntVDes02 : Real;
mvvald , mdifvald,mEntValDes : Real;
mvseg  , mdifseg,mEntVSeg : Real;
mvserv , mdifserv,mEntServ : Real;
mvcomis_extra , mdifcomis_extra,mEntCExtra : Real;
mValor_FPgto, mValor_Falta: Real;
mnFalta: Boolean; 
mpentrada: Real;
mCodFP,mVincFP: Real;
mNomeFP: String;
cobstpar1: Boolean;

begin

if ptabpv<>'PO' then
   begin
   DM1.Query2.close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('SELECT FPVINCULO,FPCODIGO,FPDESC FROM CADPV,CADFP ');
   DM1.Query2.SQL.add(' where FPCODIGO=PVVINCULO ');
   mcinst2:=fRetInstMECadastro('CADPV','PVCODEMP',codemp);
   if trim(mcinst2)<>'' then
      DM1.Query2.SQL.add(' and '+mcinst2);
   DM1.Query2.SQL.Add('AND  PVCODTIP=:TABPV');
   DM1.Query2.SQL.Add('AND  PVCODPV=0'+FloatToStr(pcodpv));
   DM1.query2.ParamByName('TABPV').AsString:=ptabpv;
   DM1.query2.Open;
   mCodFP :=DM1.Query2.fieldbyName('FPCODIGO').AsFloat;
   mNomeFP:=DM1.Query2.fieldbyName('FPDESC').AsString;
   mVincFP:=DM1.Query2.fieldbyName('FPVINCULO').AsFloat;
   end
else
   begin
   mCodFP :=0;
   mNomeFP:=' ';
   mVincFP:=0;
   end;

DM1.Query1.Close;
DM1.Query1.SQl.clear;
DM1.Query1.Sql.add('Delete from CADP01V where '
               +' P1VCODEMP=0'+FloatTostr(pcodemp)
               +' and P1VLOTSEQ=0'+Floattostr(plotseq)
               +' and P1VCHAVE=0'+Floattostr(pchave)
               +' and P1VORDEM=0'+FloatTostr(pordem));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,8770,'Frm_Ped','CADP01V');
   end;
DM1.Query1.Close;
mseq:=0;


if pvlrent>0 then
   begin
   if mpentrada>=ptotdup then
      begin
      mEntfre      :=pfrete;
      pfrete       :=0;
      mEntDup      :=ptotdup;
      ptotdup      :=0;
      mEntSCom     :=psemcom;
      psemcom      :=0;
      mEntComV     :=pcomisv;
      pcomisv      :=0;
      mEntCV02     :=pcomisv02;
      pcomisv02    :=0;
      mEntCV03     :=pcomisv03;
      pcomisv03    :=0;
      mEntCSup     :=pcomiss;
      pcomiss      :=0;
      mEntCTel     :=pcomist;
      pcomist      :=0;
      mEntCAss     :=pcomasse;
      pcomasse     :=0;
      mEntIcmsR    :=picmsr;
      picmsr       :=0;
      mEntDescFin  :=pdescf;
      pdescf       :=0;
      mEntTarBan   :=ptarban;
      ptarban      :=0;
      mEntVIPI     :=ptotipi;
      ptotipi      :=0;
      mEntCGru     :=ptotcgru;
      ptotcgru     :=0;
      mEntSGru     :=ptotsgru;
      ptotsgru     :=0;
      mEntCV04     :=pcomisv04;
      pcomisv04    :=0;
      mEntDesI01   :=ptotdi01;
      ptotdi01     :=0;
      mEntDesI02   :=ptotdi02;
      ptotdi02     :=0;
      mEntDesI03   :=ptotdi03;
      ptotdi03     :=0;
      mEntDesIVL   :=ptotivlr;
      ptotivlr     :=0;
      mEntVDes01   :=pvaldes01;
      pvaldes01    :=0;
      mEntVDes02   :=pvaldes02;
      pvaldes02    :=0;
      mEntValDes   :=pvlrdes;
      pvlrdes      :=0;
      mEntVSeg     :=pvalseg;
      pvalseg      :=0;
      mEntServ     :=pvlrserv;
      pvlrserv     :=0;
      mEntCExtra   :=pvcomis_extra;
      pvcomis_extra:=0;
      end
   else
      begin
      mpentrada:=(pvlrent*100)/ptotdup;
      mEntDup      :=pvlrent;
      ptotdup      :=ptotdup-pvlrent;
      if pfrete<>0 then
         begin
         mEntfre      :=arredonda( (pfrete*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pfrete       :=pfrete-mEntfre;
         end;
      if psemcom<>0 then
         begin
         mEntSCom     :=arredonda( (psemcom*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         psemcom      :=psemcom-mEntSCom;
         end;
      if pcomisv<>0 then
         begin
         mEntComV     :=arredonda( (pcomisv*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pcomisv      :=pcomisv-mEntComV;
         end;
      if pcomisv02<>0 then
         begin
         mEntCV02     :=arredonda( (pcomisv02*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pcomisv02    :=pcomisv02-mEntCV02;
         end;
      if pcomisv03<>0 then
         begin
         mEntCV03     :=arredonda( (pcomisv03*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pcomisv03    :=pcomisv03-mEntCV03;
         end;
      if pcomiss<>0 then
         begin
         mEntCSup     :=arredonda( (pcomiss*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pcomiss      :=pcomiss-mEntCSup;
         end;
      if pcomist<>0 then
         begin
         mEntCTel     :=arredonda( (pcomist*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pcomist      :=pcomist-mEntCTel;
         end;
      if pcomasse<>0 then
         begin
         mEntCAss     :=arredonda( (pcomasse*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pcomasse     :=pcomasse-mEntCAss;
         end;
      if picmsr<>0 then
         begin
         mEntIcmsR    :=arredonda( (picmsr*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         picmsr       :=picmsr-mEntIcmsR;
         end;
      if pdescf<>0 then
         begin
         mEntDescFin  :=arredonda( (pdescf*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pdescf       :=pdescf-mEntDescFin;
         end;
      if ptarban<>0 then
         begin
         mEntTarBan   :=arredonda( (ptarban*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         ptarban      :=ptarban-mEntTarBan;
         end;
      if ptotipi<>0 then
         begin
         mEntVIPI     :=arredonda( (ptotipi*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         ptotipi      :=ptotipi-mEntVIPI;
         end;
      if ptotcgru<>0 then
         begin
         mEntCGru     :=arredonda( (ptotcgru*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         ptotcgru     :=ptotcgru-mEntCGru;
         end;
      if ptotsgru<>0 then
         begin
         mEntSGru     :=arredonda( (ptotsgru*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         ptotsgru     :=ptotsgru-mEntSGru;
         end;
      if pcomisv04<>0 then
         begin
         mEntCV04     :=arredonda( (pcomisv04*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pcomisv04    :=pcomisv04-mEntCV04;
         end;
      if ptotdi01<>0 then
         begin
         mEntDesI01   :=arredonda( (ptotdi01*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         ptotdi01     :=ptotdi01-mEntDesI01;
         end;
      if ptotdi02<>0 then
         begin
         mEntDesI02   :=arredonda( (ptotdi01*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         ptotdi02     :=ptotdi02-mEntDesI02;
         end;
      if ptotdi03<>0 then
         begin
         mEntDesI03   :=arredonda( (ptotdi03*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         ptotdi03     :=ptotdi03-mEntDesI03;
         end;
      if ptotivlr<>0 then
         begin
         mEntDesIVL   :=arredonda( (ptotivlr*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         ptotivlr     :=ptotivlr-mEntDesIVL;
         end;
      if pvaldes01<>0 then
         begin
         mEntVDes01   :=arredonda( (pvaldes01*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pvaldes01    :=pvaldes01-mEntVDes01;
         end;
      if pvaldes02<>0 then
         begin
         mEntVDes02   :=arredonda( (pvaldes02*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pvaldes02    :=pvaldes02-mEntVDes02;
         end;
      if pvlrdes<>0 then
         begin
         mEntValDes   :=arredonda( (pvlrdes*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pvlrdes      :=pvlrdes-mEntValDes;
         end;
      if pvalseg<>0 then
         begin
         mEntVSeg     :=arredonda( (pvalseg*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pvalseg      :=pvalseg-mEntVSeg;
         end;
      if pvlrserv<>0 then
         begin
         mEntServ     :=arredonda( (pvlrserv*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pvlrserv     :=pvlrserv-mEntServ;
         end;
      if pvcomis_extra<>0 then
         begin
         mEntCExtra   :=arredonda( (pvcomis_extra*mpentrada/100), DM1.Tb_ParGerPCASAS.AsInteger);
         pvcomis_extra:=pvcomis_extra-mEntCExtra;
         end;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.query1.SQL.Add('Insert into CADP01V ('
                     +' P1VCODEMP,'
                     +' P1VLOTSEQ, '
                     +' P1VCHAVE, '
                     +' P1VORDEM, '
                     +' P1VSEQ, '
                     +' P1VDATAV, '
                     +' P1VVALOR, '
                     +' P1VCOMISV, '
                     +' P1VCOM02, '
                     +' P1VCOM03, '
                     +' P1VCOMIST, '
                     +' P1VCOMISS, '
                     +' P1VFRETE, '
                     +' P1VTARBAN, '
                     +' P1VICMSR, '
                     +' P1VSEMCOM, '
                     +' P1VCOMASSE, '
                     +' P1VCODIGO, '
                     +' P1VTABPV, '
                     +' P1VDESCF, '
                     +' P1VTOTDI01, '
                     +' P1VTOTDI02, '
                     +' P1VTOTDI03, '
                     +' P1VTOTDIVL, '
                     +' P1VVALDES01, '
                     +' P1VVALDES02, '
                     +' P1VVLRDES, '
                     +' P1VSEG, '
                     +' P1VCOM04,'
                     +' P1VTOTIPI, '
                     +' P1VTOTCGRU,'
                     +' P1VTOTSGRU,'
                     +' P1VDTDESCF'
                     +' ,P1VVLRSERV'
                     +' ,P1VCOMISV_EXTRA'
                     +' ,P1VPFPGTO'
                     +' ,P1VCODFP '
                     +' ,P1VVINC02'
                     +' ,P1VNOMFPGTO'
                        +'      ,P1VDEV_CODEMP'
                        +'      ,P1VDEV_CODECF'
                        +'      ,P1VDEV_NUMERO'
                        +'      ,P1VDEV_DESD'
                        +'      ,P1VDEV_DUP'
                        +'      ,P1VDEV_DTEMIS'




                     +' ) values ('
                     +Floattostr(pcodemp)+','
                     +FloatTostr(plotseq)+','
                     +FloatTostr(pchave)+','
                     +FloatTostr(pordem)+','
                     +IntTostr(mseq)+','
                     +chr(39)+FormatDatetime(fdt,pdatae+pprazo_ent)+chr(39)+','
                     +mudavp(FloatToStr(mEntDup))+','
                     +mudavp(FloatToStr(mEntComV))+','
                     +mudavp(FloatToStr(mEntCV02))+','
                     +mudavp(FloatToStr(mEntCV03))+','
                     +mudavp(FloatToStr(mEntCTel))+','
                     +mudavp(FloatToStr(mEntCSup))+','
                     +mudavp(FloatToStr(mEntfre))+','
                     +mudavp(FloatToStr(mEntTarBan))+','
                     +mudavp(FloatToStr(mEntIcmsR))+','
                     +mudavp(FloatToStr(mEntSCom))+','
                     +mudavp(FloatToStr(mEntCAss))+','
                     +mudavp(FloatToStr(pcodpv))+','
                     +chr(39)+ptabpv+chr(39)+','
                     +mudavp(FloatToStr(mEntDescFin))+','
                     +mudavp(FloatToStr(mEntDesI01))+','
                     +mudavp(FloatToStr(mEntDesI02))+','
                     +mudavp(FloatToStr(mEntDesI03))+','
                     +mudavp(FloatToStr(mEntDesIVL))+','
                     +mudavp(FloatToStr(mEntVDes01))+','
                     +mudavp(FloatToStr(mEntVDes02))+','
                     +mudavp(FloatToStr(mEntValDes))+','
                     +mudavp(FloatToStr(mEntVSeg))+','
                     +mudavp(FloatToStr(mEntCV04))+','
                     +mudavp(FloatToStr(mEntVIPI))+','
                     +mudavp(FloatToStr(mEntCGru))+','
                     +mudavp(FloatToStr(mEntSGru))+','
                     +':DTDESCF '+','
                     +mudavp(FloatToStr(mEntServ))+','
                     +mudavp(FloatToStr(mEntCExtra))
                     +',0 ' // P1VFPGTO'
                     +',:CODFP' //   +' ,P1VCODFP '
                     +',:VINC02' //P1VVINC02'
                     +',:NOMEFP'
                           +',0' //      ,P1VDEV_CODEMP'
                           +',0' //      ,P1VDEV_CODECF'
                           +',0' //      ,P1VDEV_NUMERO'
                           +','+chr(39)+' '+chr(39)  //      ,P1VDEV_DESD'
                           +',0' //      ,PFPDEV_DUP'
                           +','+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39) //      ,P1VDEV_DTEMIS'


                     +' )');
   if pddescf=0 then
      DM1.Query1.ParamByName('DTDESCF').AsDateTime:=(pdatae+pprazo_ent)
   else if pddescf=1 then
      DM1.Query1.ParamByName('DTDESCF').AsDateTime:=(pdatae+pdiasdescf)
   else
      DM1.Query1.ParamByName('DTDESCF').AsDateTime:=pDataNula;
   DM1.Query1.ParamByName('CODFP').AsFloat:=mCodFP;
   DM1.Query1.ParamByName('VINC02').AsFloat:=mVincFP;
   DM1.Query1.ParamByName('NOMEFP').AsString:=mNomeFP;

   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      verteclado(0);
      MessageDlg('Erro 2779 , ',mtWarning,[mbOk],0);
      end;
   DM1.Query1.Close;
   end;
if ptotdup=0 then
   begin
   result:=true;
   exit;
   end;
// inicio para pedidos com formas de pagamento
if DM1.Tb_PargerPPEDFPGTO.AsInteger>0 then
   begin
  DM4.Tb_PedFP.Close;
  DM4.Tb_PedFP.Sql.Clear;
  DM4.Tb_PedFP.Sql.Add('select PFPCODEMP,');
  DM4.Tb_PedFP.Sql.Add('    PFPLOTSEQ,');
  DM4.Tb_PedFP.Sql.Add('    PFPCHAVE,    ');
  DM4.Tb_PedFP.Sql.Add('    PFPSEQ,');
  DM4.Tb_PedFP.Sql.Add('    PFPVINCULO,');
  DM4.Tb_PedFP.Sql.Add('    PFPFORMA,');
  DM4.Tb_PedFP.Sql.Add('    PFPNOMFOR,');
  DM4.Tb_PedFP.Sql.Add('    PFPDATA,');
  DM4.Tb_PedFP.Sql.Add('    PFPNUMDOC,');
  DM4.Tb_PedFP.Sql.Add('    PFPBANCO,');
  DM4.Tb_PedFP.Sql.Add('    PFPSERIE,');
  DM4.Tb_PedFP.Sql.Add('    PFPVALOR,');
  DM4.Tb_PedFP.Sql.Add('    PFPCC,');
  DM4.Tb_PedFP.Sql.Add('    PFPCOMP,');
  DM4.Tb_PedFP.Sql.Add('    PFPAGENCIA,');
  DM4.Tb_PedFP.Sql.Add('    PFPEMITENTE,');
  DM4.Tb_PedFP.Sql.Add('    PFPCNPF,');
  DM4.Tb_PedFP.Sql.Add('    PFPRG,');
  DM4.Tb_PedFP.Sql.Add('    PFPDTNAS');
  DM4.Tb_PedFP.Sql.Add('    ,PFPFPGTO'
                 +'       ,PFPDEV_CODEMP '
                 +'       ,PFPDEV_CODECF '
                 +'       ,PFPDEV_NUMERO '
                 +'       ,PFPDEV_DESD '
                 +'       ,PFPDEV_DUP '
                 +'       ,PFPDEV_DTEMIS ');
  DM4.Tb_PedFP.Sql.Add('    from CADPFP where ');
  if pcodemp=0 then
     pcodemp:=codemp;
  DM4.Tb_PedFP.Sql.Add('PFPCODEMP=0'+FloatToStr(pcodemp));
  DM4.Tb_PedFP.Sql.Add(' and PFPLOTSEQ=0'+FloatToStr(pLotseq));
  DM4.Tb_PedFP.Sql.Add(' and PFPCHAVE=0'+FloatToStr(pchave));
  DM4.Tb_PedFP.Open;
//excluida luiz fernando
//   flcadpfp(0,trunc(pcodemp),trunc(plotseq),FloatToStr(pchave),FloatToStr(pordem));
   mqtdd:=DM4.Tb_PedFP.RecordCount;;
   if mqtdd<1 then
      mqtdd:=1;
   mseq:=0;

   mdif:=0;
   mdifv:=0;
   mdifv02:=0;
   mdifv03:=0;
   mdift:=0;
   mdifs:=0;
   mdiff:=0;
   mdifi:=0;
   mdifsc:=0;
   mddf  :=0;
   mdifserv:=0;
   mdifcomis_extra:=0;
   mdifca:=0;
   mdifdi01 :=0;
   mdifdi02 :=0;
   mdifdi03 :=0;
   mdiftdi  :=0;
   mdifvd01 :=0;
   mdifvd02 :=0;
   mdifvald :=0;
   mdifseg  :=0;
   mdifIPI  :=0;
   mdifCGru :=0;
   mdifSGru :=0;
   mdifComv04:=0;
   mValor_Falta:=0;
   mnFalta:=True;

   DM4.Tb_PedFP.First;
   While not (DM4.Tb_PedFP.Eof) do
      begin
      mValor_FPgto:=DM4.Tb_PedFPPFPVALOR.AsFloat;
      // retirado luiz fernando
{      if (pSubMod>0) and (pSubMod<100) then
         begin
         mValor_FPgto:=Arredonda((DM4.Tb_PedFPPFPVALOR.AsFloat*pSubMod/100),DM1.Tb_PargerPCASAS.AsInteger);
         if pcodemp=codemp then
            mValor_FPgto:=Arredonda(DM4.Tb_PedFPPFPVALOR.AsFloat-mValor_FPgto,2);
         end;  }

{   if mValor_Falta=0  then
     mValor_Falta:=DM4.Tb_PedFPPFPVALOR.AsFloat;
   if (pSubMod>0) and (pSubMod<100) then
      begin
      mValor_FPgto:=Arredonda((DM4.Tb_PedFPPFPVALOR.AsFloat*pSubMod/100),DM1.Tb_PargerPCASAS.AsInteger);
      if pcodemp=codemp then
         mValor_FPgto:=Arredonda(DM4.Tb_PedFPPFPVALOR.AsFloat-mValor_FPgto,2);
      if mValor_FPgto>mValor_Falta then
         mValor_FPgto:=mValor_Falta;
       mValor_Falta:=mValor_Falta-mValor_FPgto;
      end;                                     }

      mseq:=mseq+1;
      if pvcomis_extra>0 then
         begin
         if mseq=mqtdd then
            mvcomis_extra:=pvcomis_extra-mdifcomis_extra
         else
            begin
            mvcomis_extra:= Arredonda( (pvcomis_extra*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvcomis_extra>(pvcomis_extra-mdifcomis_extra) then
               mvcomis_extra:=pvcomis_extra-mdifcomis_extra;
            mdifcomis_extra:=mdifcomis_extra+mvcomis_extra;
            end
         end;
      if pvlrserv>0 then
         begin
         if mseq=mqtdd then
            mvserv:=pvlrserv-mdifserv
         else
            begin
            mvserv:= Arredonda( (pvlrserv*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvserv>(pvlrserv-mdifserv) then
               mvserv:=pvlrserv-mdifserv;
            mdifserv:=mdifserv+mvserv;
            end
         end;

      if psemcom>0 then
         begin
         if mseq=mqtdd then
            mscom:=psemcom-mdifsc
         else
            begin
            mscom:= Arredonda( (psemcom*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mscom>(psemcom-mdifsc) then
               mscom:=psemcom-mdifsc;
            mdifsc:=mdifsc+mscom;
            end
         end;

      if pdescf>0 then
         begin
         if mseq=mqtdd then
            mvdf:=pdescf-mddf
         else
            begin
            mvdf:= Arredonda( (pdescf*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvdf>(pdescf-mddf) then
               mvdf:=pdescf-mdiff;
            mddf:=mddf+mvdf;
            end
         end;


      if pvalseg>0 then
         begin
         if mseq=mqtdd then
            mvseg:=pvalseg-mdifseg
         else
            begin
            mvseg:= Arredonda( (pvalseg*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvseg>(pvalseg-mdifseg) then
               mvseg:=pvalseg-mdifseg;
            mdifseg:=mdifseg+mvseg;
            end
         end;


      if pcomisv>0 then
         begin
         if mseq=mqtdd then
            mcomv:=pcomisv-mdifv
         else
            begin
            mcomv:= Arredonda( (pcomisv*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mcomv>(pcomisv-mdifv) then
               mcomv:=pcomisv-mdifv;
            mdifv:=mdifv+mcomv;
            end
         end;


      if pcomisv02>0 then
         begin
         if mseq=mqtdd then
            mcomv02:=pcomisv02-mdifv02
         else
            begin
            mcomv02:= Arredonda( (pcomisv02*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mcomv02>(pcomisv02-mdifv02) then
               mcomv02:=pcomisv02-mdifv02;
            mdifv02:=mdifv02+mcomv02;
            end
         end;


      if pcomisv03>0 then
         begin
         if mseq=mqtdd then
            mcomv03:=pcomisv03-mdifv03
         else
            begin
            mcomv03:= Arredonda( (pcomisv03*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mcomv03>(pcomisv03-mdifv03) then
               mcomv03:=pcomisv03-mdifv03;
            mdifv03:=mdifv03+mcomv03;
            end
         end;


      if pcomisv04>0 then
         begin
         if mseq=mqtdd then
            mcomv04:=pcomisv04-mdifComv04
         else
            begin
            mcomv04:= Arredonda( (pcomisv04*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mcomv04>(pcomisv04-mdifComv04) then
               mcomv04:=pcomisv04-mdifComv04;
            mdifComv04:=mdifComv04+mcomv04;
            end
         end;


      if pcomist>0 then
         begin
         if mseq=mqtdd then
            mcomt:=pcomist-mdift
         else
            begin
            mcomt:= Arredonda( (pcomist*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mcomt>(pcomist-mdift) then
               mcomt:=pcomist-mdift;
            mdift:=mdift+mcomt;
            end
         end;


      if pcomiss>0 then
         begin
         if mseq=mqtdd then
            mcoms:=pcomiss-mdifs
         else
            begin
            mcoms:= Arredonda( (pcomiss*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mcoms>(pcomiss-mdifs) then
               mcoms:=pcomiss-mdifs;
            mdifs:=mdifs+mcoms;
            end
         end;

      if pcomasse>0 then
         begin
         if mseq=mqtdd then
            mcoma:=pcomasse-mdifca
         else
            begin
            mcoma:= Arredonda( (pcomasse*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mcoma>(pcomasse-mdifca) then
               mcoma:=pcomasse-mdifca;
            mdifca:=mdifca+mcoma;
            end
         end;


      if ptotipi>0 then
         begin
         if mseq=mqtdd then
            mIPI:=ptotipi-mdifipi
         else
            begin
            mIPI:= Arredonda( (ptotipi*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mIPI>(ptotipi-mdifIPI) then
               mIPI:=ptotipi-mdifIPI;
            mdifIPI:=mdifIPI+mIPI;
            end
         end;

      if ptotcgru>0 then
         begin
         if mseq=mqtdd then
            mCGru:=ptotcgru-mdifCGru
         else
            begin
            mCGru:= Arredonda( (ptotcgru*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mCGru>(ptotcgru-mdifCGru) then
               mCGru:=ptotcgru-mdifCGru;
            mdifCGru:=mdifCGru+mCGru;
            end
         end;


      if ptotsgru>0 then
         begin
         if mseq=mqtdd then
            mSGru:=ptotsgru-mdifSGru
         else
            begin
            mSGru:= Arredonda( (ptotsgru*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mSGru>(ptotsgru-mdifSGru) then
               mSGru:=ptotsgru-mdifSGru;
            mdifSGru:=mdifSGru+mSGru;
            end
         end;


      if picmsr>0 then
         begin
         if mseq=mqtdd then
            mvicm:=picmsr-mdifi
         else
            begin
            mvicm:= Arredonda( (picmsr*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvicm>(picmsr-mdifi) then
               mvicm:=picmsr-mdifi;
            mdifi:=mdifi+mvicm;
            end
         end;

      if pfrete>0 then
         begin
         if mseq=mqtdd then
            mvfre:=pfrete-mdiff
         else
            begin
            mvfre:= Arredonda( (pfrete*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvfre>(pfrete-mdiff) then
               mvfre:=pfrete-mdiff;
            mdiff:=mdiff+mvfre;
            end
         end;

      if ptotdi01>0 then
         begin
         if mseq=mqtdd then
            mvdi01:=ptotdi01-mdifdi01
         else
            begin
            mvdi01:= Arredonda( (ptotdi01*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvdi01>(ptotdi01-mdifdi01) then
               mvdi01:=ptotdi01-mdifdi01;
            mdifdi01:=mdifdi01+mvdi01;
            end
         end;

      if ptotdi02>0 then
         begin
         if mseq=mqtdd then
            mvdi02:=ptotdi02-mdifdi02
         else
            begin
            mvdi02:= Arredonda( (ptotdi02*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvdi02>(ptotdi02-mdifdi02) then
               mvdi02:=ptotdi02-mdifdi02;
            mdifdi02:=mdifdi02+mvdi02;
            end
         end;

      if ptotdi03>0 then
         begin
         if mseq=mqtdd then
            mvdi03:=ptotdi03-mdifdi03
         else
            begin
            mvdi03:= Arredonda( (ptotdi03*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvdi03>(ptotdi03-mdifdi03) then
               mvdi03:=ptotdi03-mdifdi03;
            mdifdi03:=mdifdi03+mvdi03;
            end
         end;

      if ptotivlr>0 then
         begin
         if mseq=mqtdd then
            mvtdi:=ptotivlr-mdiftdi
         else
            begin
            mvtdi:= Arredonda( (ptotivlr*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvtdi>(ptotivlr-mdiftdi) then
               mvtdi:=ptotivlr-mdiftdi;
            mdiftdi:=mdiftdi+mvtdi;
            end
         end;

      if pvaldes01>0 then
         begin
         if mseq=mqtdd then
            mvvd01:=pvaldes01-mdifvd01
         else
            begin
            mvvd01:= Arredonda( (pvaldes01*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvvd01>(pvaldes01-mdifvd01) then
               mvvd01:=pvaldes01-mdifvd01;
            mdifvd01:=mdifvd01+mvvd01;
            end
         end;

      if pvaldes02>0 then
         begin
         if mseq=mqtdd then
            mvvd02:=pvaldes02-mdifvd02
         else
            begin
            mvvd02:= Arredonda( (pvaldes02*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvvd02>(pvaldes02-mdifvd02) then
               mvvd02:=pvaldes02-mdifvd02;
            mdifvd02:=mdifvd02+mvvd02;
            end
         end;


      if pvlrdes>0 then
         begin
         if mseq=mqtdd then
            mvvald:=pvlrdes-mdifvald
         else
            begin
            mvvald:= Arredonda( (pvlrdes*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvvald>(pvlrdes-mdifvald) then
               mvvald:=pvlrdes-mdifvald;
            mdifvald:=mdifvald+mvvald;
            end
         end;

      if ptarban>0 then
         begin
         if mseq=mqtdd then
            mvtb:=ptarban-mdiftb
         else
            begin
            mvtb:= Arredonda( (ptarban*DM4.Tb_PedFPPFPFPGTO.AsFloat)/100 , DM1.Tb_PargerPCASAS.AsInteger) ;
            if mvtb>(ptarban-mdiftb) then
               mvtb:=ptarban-mdiftb;
            mdiftb:=mdiftb+mvtb;
            end
         end;
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.query1.SQL.Add('Insert into CADP01V ('
                        +' P1VCODEMP,'
                        +' P1VLOTSEQ, '
                        +' P1VCHAVE, '
                        +' P1VORDEM, '
                        +' P1VSEQ, '
                        +' P1VDATAV, '
                        +' P1VVALOR, '
                        +' P1VCOMISV, '
                        +' P1VCOM02, '
                        +' P1VCOM03, '
                        +' P1VCOMIST, '
                        +' P1VCOMISS, '
                        +' P1VFRETE, '
                        +' P1VTARBAN, '
                        +' P1VICMSR, '
                        +' P1VSEMCOM, '
                        +' P1VCOMASSE, '
                        +' P1VCODIGO, '
                        +' P1VTABPV, '
                        +' P1VDESCF, '
                        +' P1VTOTDI01, '
                        +' P1VTOTDI02, '
                        +' P1VTOTDI03, '
                        +' P1VTOTDIVL, '
                        +' P1VVALDES01, '
                        +' P1VVALDES02, '
                        +' P1VVLRDES, '
                        +' P1VSEG, '
                        +' P1VCOM04,'
                        +' P1VTOTIPI, '
                        +' P1VTOTCGRU,'
                        +' P1VTOTSGRU,'
                        +' P1VVLRSERV,'
                        +' P1VCOMISV_EXTRA,'
                        +' P1VDTDESCF'
                        +' ,P1VPFPGTO'
                        +' ,P1VCODFP '
                        +' ,P1VVINC02'
                        +' ,P1VNOMFPGTO'
                        +'      ,P1VDEV_CODEMP'
                        +'      ,P1VDEV_CODECF'
                        +'      ,P1VDEV_NUMERO'
                        +'      ,P1VDEV_DESD'
                        +'      ,P1VDEV_DUP'
                        +'      ,P1VDEV_DTEMIS'

                        +' ) values ('
                        +Floattostr(pcodemp)+','
                        +FloatTostr(plotseq)+','
                        +FloatTostr(pchave)+','
                        +FloatTostr(pordem)+','
                        +FloatTostr(mseq)+','
                        +chr(39)+FormatDatetime(fdt,DM4.Tb_PedFPPFPDATA.Value)+chr(39)+','
                        +mudavp(FloatToStr(mValor_FPgto))+','
                        +mudavp(FloatToStr(mcomv))+','
                        +mudavp(FloatToStr(mcomv02))+','
                        +mudavp(FloatToStr(mcomv03))+','
                        +mudavp(FloatToStr(mcomt))+','
                        +mudavp(FloatToStr(mcoms))+','
                        +mudavp(FloatToStr(mvfre))+','
                        +mudavp(FloatToStr(mvtb))+','
                        +mudavp(FloatToStr(mvicm))+','
                        +mudavp(FloatToStr(mscom))+','
                        +mudavp(FloatToStr(mcoma))+','
                        +mudavp(FloatToStr(pcodpv))+','
                        +chr(39)+ptabpv+chr(39)+','
                        +mudavp(FloatToStr(mvdf))+','
                        +mudavp(FloatToStr(mvdi01))+','
                        +mudavp(FloatToStr(mvdi02))+','
                        +mudavp(FloatToStr(mvdi03))+','
                        +mudavp(FloatToStr(mvtdi))+','
                        +mudavp(FloatToStr(mvvd01))+','
                        +mudavp(FloatToStr(mvvd02))+','
                        +mudavp(FloatToStr(mvvald))+','
                        +mudavp(FloatToStr(mvseg))+','
                        +mudavp(FloatToStr(mComv04))+','
                        +mudavp(FloatToStr(mIPI))+','
                        +mudavp(FloatToStr(mCGru))+','
                        +mudavp(FloatToStr(mSGru))+','
                        +mudavp(FloatToStr(mvserv))+','
                        +mudavp(FloatToStr(mvcomis_extra))+','
                        +':DTDESCF '
                        +','+mudavp(DM4.Tb_PedFPPFPFPGTO.AsString)
                        +','+mudavp(DM4.Tb_PedFPPFPFORMA.AsString)
                        +','+mudavp(DM4.Tb_PedFPPFPVINCULO.AsString)
                        +',:NOMFPGTO '
                        +','+mudavp(DM4.Tb_PedFPPFPDEV_CODEMP.AsString)
                        +','+mudavp(DM4.Tb_PedFPPFPDEV_CODECF.AsString)
                        +','+mudavp(DM4.Tb_PedFPPFPDEV_NUMERO.AsString)
                        +','+chr(39)+mudavp(DM4.Tb_PedFPPFPDEV_DESD.AsString)+chr(39)
                        +','+mudavp(DM4.Tb_PedFPPFPDEV_DUP.AsString)
                        +','+chr(39)+FormatDatetime(fdt, DM4.Tb_PedFPPFPDEV_DTEMIS.AsDateTime)+chr(39)


                        +')');
      if pddescf=0 then
         DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,DM4.Tb_PedFPPFPDATA.Value)
      else if pddescf=1 then
         DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,(pdatae+pdiasdescf))
      else
         DM1.Query1.ParamByName('DTDESCF').AsDateTime:=0;
      DM1.Query1.ParamByName('NOMFPGTO').AsString :=DM4.Tb_PedFPPFPNOMFOR.AsString;
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8881,'Frm_Ped','CADP01V');
         end;
      DM1.Query1.Close;
      DM4.Tb_PedFP.Next;
      end;
   end // termino do plano com formas de pagamentos
else
   begin // plano tradicional
   if  ptipo=1 then
       mqtdd:=1
   else
       begin

       mqtdd:=DM4.Tb_Po99.RecordCount;;
       if mqtdd<1 then
          mqtdd:=1;
       end;

   if pvcomis_extra>0 then
      begin
      mvcomis_extra:=pvcomis_extra/mqtdd;
      mdifcomis_extra:=arredonda(mvcomis_extra,DM1.Tb_PargerPCASAS.AsInteger);
      mdifcomis_extra:=mdifcomis_extra*mqtdd;
      mdifcomis_extra:=pvcomis_extra-mdifcomis_extra;
      mdifcomis_extra:=arredonda(mdifcomis_extra,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mdifcomis_extra:=0;
      mvcomis_extra:=0;
      end;


   if pvlrserv>0 then
      begin
      mvserv:=pvlrserv/mqtdd;
      mdifserv:=arredonda(mvserv,DM1.Tb_PargerPCASAS.AsInteger);
      mdifserv:=mvserv*mqtdd;
      mdifserv:=pvlrserv-mdifserv;
      mdifserv:=arredonda(mdifserv,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mdifserv:=0;
      mvserv:=0;
      end;

   if psemcom>0 then
      begin
      mscom:=psemcom/mqtdd;
      mscom:=arredonda(mscom,DM1.Tb_PargerPCASAS.AsInteger);
      mdifsc:=mscom*mqtdd;
      mdifsc:=psemcom-mdifsc;
      mdifsc:=arredonda(mdifsc,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mscom:=0;
      mdifsc:=0;
      end;

   if pdescf>0 then
      begin
      mvdf:=pdescf/mqtdd;
      mvdf:=arredonda(mvdf,DM1.Tb_PargerPCASAS.AsInteger);
      mddf:=mvdf*mqtdd;
      mddf:=pdescf-mddf;
      mddf:=arredonda(mddf,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvdf:=0;
      mddf:=0;
      end;


   if pvalseg>0 then
      begin
      mvseg  :=pvalseg/mqtdd;
      mvseg  :=arredonda(mvseg,DM1.Tb_PargerPCASAS.AsInteger);
      mdifseg:=mdifseg*mqtdd;
      mdifseg:=pvalseg-mdifseg;
      mdifseg:=arredonda(mdifseg,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvseg:=0;
      mdifseg:=0;
      end;



   if pcomisv>0 then
      begin
      mcomv:=pcomisv/mqtdd;
      mcomv:=arredonda(mcomv,DM1.Tb_PargerPCASAS.AsInteger);
      mdifv:=mcomv*mqtdd;
      mdifv:=pcomisv-mdifv;
      mdifv:=arredonda(mdifv,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mcomv:=0;
      mdifv:=0;
      end;

   if pcomisv02>0 then
      begin
      mcomv02:=pcomisv02/mqtdd;
      mcomv02:=arredonda(mcomv02,DM1.Tb_PargerPCASAS.AsInteger);
      mdifv02:=mcomv02*mqtdd;
      mdifv02:=pcomisv02-mdifv02;
      mdifv02:=arredonda(mdifv02,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mcomv02:=0;
      mdifv02:=0;
      end;

   if pcomasse>0 then
      begin
      mcoma:=pcomasse/mqtdd;
      mcoma:=arredonda(mcoma,DM1.Tb_PargerPCASAS.AsInteger);
      mdifca:=mcoma*mqtdd;
      mdifca:=pcomasse-mdifca;
      mdifca:=arredonda(mdifca,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mcoma:=0;
      mdifca:=0;
      end;

   if pcomisv03>0 then
      begin
      mcomv03:=pcomisv03/mqtdd;
      mcomv03:=arredonda(mcomv03,DM1.Tb_PargerPCASAS.AsInteger);
      mdifv03:=mcomv03*mqtdd;
      mdifv03:=pcomisv03-mdifv03;
      mdifv03:=arredonda(mdifv03,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mcomv03:=0;
      mdifv03:=0;
      end;

   if ptotipi>0 then
      begin
      mIPI   :=ptotipi/mqtdd;
      mIPI   :=arredonda(mIPI,DM1.Tb_PargerPCASAS.AsInteger);
      mdifIPI:=mIPI*mqtdd;
      mdifIPI:=ptotipi-mdifIPI;
      mdifIPI:=arredonda(mdifIPI,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mIPI   :=0;
      mdifIPI:=0;
      end;

   if ptotCGru>0 then
      begin
      mCGru   :=ptotCGru/mqtdd;
      mCGru   :=arredonda(mCGru,DM1.Tb_PargerPCASAS.AsInteger);
      mdifCGru:=mCGru*mqtdd;
      mdifCGru:=ptotCGru-mdifCGru;
      mdifCGru:=arredonda(mdifCGru,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mCGru   :=0;
      mdifCGru:=0;
      end;

   if ptotSGru>0 then
      begin
      mSGru   :=ptotSGru/mqtdd;
      mSGru   :=arredonda(mSGru,DM1.Tb_PargerPCASAS.AsInteger);
      mdifSGru:=mSGru*mqtdd;
      mdifSGru:=ptotSGru-mdifSGru;
      mdifSGru:=arredonda(mdifSGru,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mSGru   :=0;
      mdifSGru:=0;
      end;

   if pcomisv04>0 then
      begin
      mcomv04   :=pcomisv04/mqtdd;
      mcomv04   :=arredonda(mcomv04,DM1.Tb_PargerPCASAS.AsInteger);
      mdifcomv04:=mcomv04*mqtdd;
      mdifcomv04:=pcomisv04-mdifcomv04;
      mdifcomv04:=arredonda(mdifcomv04,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mcomv04   :=0;
      mdifcomv04:=0;
      end;

   if pcomist>0 then
      begin
      mcomt:=pcomist/mqtdd;
      mcomt:=arredonda(mcomt,DM1.Tb_PargerPCASAS.AsInteger);
      mdift:=mcomt*mqtdd;
      mdift:=pcomist-mdift;
      mdift:=arredonda(mdift,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mcomt:=0;
      mdift:=0;
      end;
   if pcomiss>0 then
      begin
      mcoms:=pcomiss/mqtdd;
      mcoms:=arredonda(mcoms,DM1.Tb_PargerPCASAS.AsInteger);
      mdifs:=mcoms*mqtdd;
      mdifs:=pcomiss-mdift;
      mdifs:=arredonda(mdifs,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mcoms:=0;
      mdifs:=0;
      end;
   if picmsr>0 then
      begin
      mvicm:=picmsr/mqtdd;
      mvicm:=arredonda(mvicm,DM1.Tb_PargerPCASAS.AsInteger);
      mdifi:=mvicm*mqtdd;
      mdifi:=picmsr-mdifi;
      mdifi:=arredonda(mdifi,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvicm:=0;
      mdifi:=0;
      end;
   mvalfre:=pfrete;
   if mvalfre>0 then
      begin
      mvfre:=mvalfre/mqtdd;
      mvfre:=arredonda(mvfre,DM1.Tb_PargerPCASAS.AsInteger);
      mdiff:=mvfre*mqtdd;
      mdiff:=mvalfre-mdiff;
      mdiff:=arredonda(mdiff,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvfre:=0;
      mdiff:=0;
      end;

   if ptotdi01>0 then
      begin
      mvdi01:=ptotdi01/mqtdd;
      mvdi01:=arredonda(mvdi01,DM1.Tb_PargerPCASAS.AsInteger);
      mdifdi01:=mvdi01*mqtdd;
      mdifdi01:=ptotdi01-mdifdi01;
      mdifdi01:=arredonda(mdifdi01,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvdi01:=0;
      mdifdi01:=0;
      end;

   if ptotdi02>0 then
      begin
      mvdi02:=ptotdi02/mqtdd;
      mvdi02:=arredonda(mvdi02,DM1.Tb_PargerPCASAS.AsInteger);
      mdifdi02:=mvdi02*mqtdd;
      mdifdi02:=ptotdi02-mdifdi02;
      mdifdi02:=arredonda(mdifdi02,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvdi02:=0;
      mdifdi02:=0;
      end;

   if ptotdi01>0 then
      begin
      mvdi01:=ptotdi01/mqtdd;
      mvdi01:=arredonda(mvdi01,DM1.Tb_PargerPCASAS.AsInteger);
      mdifdi01:=mvdi01*mqtdd;
      mdifdi01:=ptotdi01-mdifdi01;
      mdifdi01:=arredonda(mdifdi01,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvdi01:=0;
      mdifdi01:=0;
      end;

   if ptotdi02>0 then
      begin
      mvdi02:=ptotdi02/mqtdd;
      mvdi02:=arredonda(mvdi02,DM1.Tb_PargerPCASAS.AsInteger);
      mdifdi02:=mvdi02*mqtdd;
      mdifdi02:=ptotdi02-mdifdi02;
      mdifdi02:=arredonda(mdifdi02,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvdi02:=0;
      mdifdi02:=0;
      end;

   if ptotdi03>0 then
      begin
      mvdi03:=ptotdi03/mqtdd;
      mvdi03:=arredonda(mvdi03,DM1.Tb_PargerPCASAS.AsInteger);
      mdifdi03:=mvdi03*mqtdd;
      mdifdi03:=ptotdi03-mdifdi03;
      mdifdi03:=arredonda(mdifdi03,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvdi03:=0;
      mdifdi03:=0;
      end;

   if ptotivlr>0 then
      begin
      mvtdi   :=ptotivlr/mqtdd;
      mvtdi   :=arredonda(mvtdi,DM1.Tb_PargerPCASAS.AsInteger);
      mdiftdi :=mvtdi*mqtdd;
      mdiftdi :=ptotivlr-mdiftdi;
      mdiftdi :=arredonda(mdiftdi,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mvtdi   :=0;
      mdiftdi :=0;
      end;
   if pvaldes01>0 then
      begin
      mvvd01  :=pvaldes01/mqtdd;
      mvvd01  :=arredonda(mvvd01,DM1.Tb_PargerPCASAS.AsInteger);
      mdifvd01:=mvvd01*mqtdd;
      mdifvd01:=pvaldes01-mdifvd01;
      mdifvd01:=arredonda(mdifvd01,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mdifvd01 :=0;
      mvvd01   :=0;
      end;

   if pvaldes02>0 then
      begin
      mvvd02  :=pvaldes02/mqtdd;
      mvvd02  :=arredonda(mvvd02,DM1.Tb_PargerPCASAS.AsInteger);
      mdifvd02:=mvvd02*mqtdd;
      mdifvd02:=pvaldes02-mdifvd02;
      mdifvd02:=arredonda(mdifvd02,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mdifvd02 :=0;
      mvvd02   :=0;
      end;


   if pvlrdes>0 then
      begin
      mvvald  :=pvlrdes/mqtdd;
      mvvald  :=arredonda(mvvald,DM1.Tb_PargerPCASAS.AsInteger);
      mdifvald:=mvvald*mqtdd;
      mdifvald:=pvlrdes-mdifvald;
      mdifvald:=arredonda(mdifvald,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mdifvald :=0;
      mvvald   :=0;
      end;

   if ptarban>0 then
      begin
      mvtb    :=ptarban/mqtdd;
      mvtb    :=arredonda(mvtb,DM1.Tb_PargerPCASAS.AsInteger);
      mdiftb  :=mvtb*mqtdd;
      mdiftb  :=ptarban-mdiftb;
      mdiftb  :=arredonda(mdiftb,DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      begin
      mdiftb :=0;
      mvtb   :=0;
      end;

cobstpar1:=False;
if flfilpad(-1,'_gerarduplic','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_COBRA_ST_1PARC',[]) then
    cobstpar1:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;

   mseq:=0;
   if (cobstpar1=True) then
    mvaldup:=(ptotdup-picmsr)/mqtdd
   else
     mvaldup:=ptotdup/mqtdd;
   mvaldup:=Truncar(mvaldup,DM1.Tb_PargerPCASAS.AsInteger);
   if (cobstpar1=True) then
      mdif:=mvaldup*mqtdd+picmsr
   else
      mdif:=mvaldup*mqtdd;
   mdif:=ptotdup-mdif;
//   if (cobstpar1=True) and (mseq=0) then
//      mdif:=mdif+picmsr;
   mdif:=arredonda(mdif,DM1.Tb_PargerPCASAS.AsInteger);
   {DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.Sql.add('Select P1VCHAVE from CADP01V where '
                     +' P1VCODEMP=0'+IntTostr(pcodemp)
                     +' and P1VCHAVE=0'+Inttostr(mchave)
                     +' and P1VORDEM=0'+IntTostr(mordem));
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin}
   if ptabpv='PP' then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.Params.CreateParam(ftstring,'DTDESCF',ptinput);
      DM1.query1.SQL.Add('Insert into CADP01V ('
                        +' P1VCODEMP,'
                        +' P1VLOTSEQ, '
                        +' P1VCHAVE, '
                        +' P1VORDEM, '
                        +' P1VSEQ, '
                        +' P1VDATAV, '
                        +' P1VVALOR, '
                        +' P1VCOMISV, '
                        +' P1VCOM02, '
                        +' P1VCOM03, '
                        +' P1VCOMIST, '
                        +' P1VCOMISS, '
                        +' P1VFRETE, '
                        +' P1VTARBAN, '
                        +' P1VICMSR, '
                        +' P1VSEMCOM, '
                        +' P1VCOMASSE, '
                        +' P1VCODIGO, '
                        +' P1VTABPV, '
                        +' P1VDESCF, '
                        +' P1VTOTDI01, '
                        +' P1VTOTDI02, '
                        +' P1VTOTDI03, '
                        +' P1VTOTDIVL, '
                        +' P1VVALDES01, '
                        +' P1VVALDES02, '
                        +' P1VVLRDES, '
                        +' P1VSEG, '
                        +' P1VCOM04,'
                        +' P1VTOTIPI, '
                        +' P1VTOTCGRU,'
                        +' P1VTOTSGRU,'
                        +' P1VVLRSERV,'
                        +' P1VCOMISV_EXTRA,'
                        +' P1VDTDESCF'
                        +' ,P1VPFPGTO'
                        +' ,P1VCODFP '
                        +' ,P1VVINC02'
                        +' ,P1VNOMFPGTO'
                        +'      ,P1VDEV_CODEMP'
                        +'      ,P1VDEV_CODECF'
                        +'      ,P1VDEV_NUMERO'
                        +'      ,P1VDEV_DESD'
                        +'      ,P1VDEV_DUP'
                        +'      ,P1VDEV_DTEMIS'


                        +' ) values ('
                        +Floattostr(pcodemp)+','
                        +FloatTostr(plotseq)+','
                        +FloatTostr(pchave)+','
                        +FloatTostr(pordem)+','
                        +FloatTostr(mseq)+','
                        +chr(39)+FormatDatetime(fdt,pdatae+pprazo)+chr(39)+','  );
                        if (mseq=1) and (cobstpar1=True) then
                          begin
                          DM1.query1.SQL.Add(mudavp(FloatToStr(mvaldup+picmsr+mdif))+',');
                          end
                        else
                          begin
                          DM1.query1.SQL.Add(mudavp(FloatToStr(mvaldup++mdif))+',');
                          end;
                        DM1.query1.SQL.Add(mudavp(FloatToStr(mcomv+mdifv))+','
                        +mudavp(FloatToStr(mcomv02+mdifv02))+','
                        +mudavp(FloatToStr(mcomv03+mdifv03))+','
                        +mudavp(FloatToStr(mcomt+mdift))+','
                        +mudavp(FloatToStr(mcoms+mdifs))+','
                        +mudavp(FloatToStr(mvfre+mdiff))+','
                        +mudavp(FloatToStr(mvtb+mdiftb))+','
                        +mudavp(FloatToStr(mvicm+mdifi))+','
                        +mudavp(FloatToStr(mscom+mdifsc))+','
                        +mudavp(FloatToStr(mcoma+mdifca))+','
                        +mudavp(FloatToStr(pcodpv))+','
                        +chr(39)+ptabpv+chr(39)+','
                        +mudavp(FloatToStr(mvdf+mddf))+','
                        +mudavp(FloatToStr(mvdi01+mdifdi01))+','
                        +mudavp(FloatToStr(mvdi02+mdifdi02))+','
                        +mudavp(FloatToStr(mvdi03+mdifdi03))+','
                        +mudavp(FloatToStr(mvtdi+mdiftdi))+','
                        +mudavp(FloatToStr(mvvd01+mdifvd01))+','
                        +mudavp(FloatToStr(mvvd02+mdifvd02))+','
                        +mudavp(FloatToStr(mvvald+mdifvald))+','
                        +mudavp(FloatToStr(mvseg+mdifseg))+','
                        +mudavp(FloatToStr(mComv04+mdifComv04))+','
                        +mudavp(FloatToStr(mIPI+mdifIPI))+','
                        +mudavp(FloatToStr(mCGru+mdifCGru))+','
                        +mudavp(FloatToStr(mSGru+mdifSGru))+','
                        +mudavp(FloatToStr(mvserv+mdifserv))+','
                        +mudavp(FloatToStr(mvcomis_extra+mdifcomis_extra))+','
                        +':DTDESCF '
                        +','+'0' // P1VFPGTO'

                        +',:CODFP' //   +' ,P1VCODFP '
                        +',:VINC02' //P1VVINC02'
                        +',:NOMEFP'
                           +',0' //      ,P1VDEV_CODEMP'
                           +',0' //      ,P1VDEV_CODECF'
                           +',0' //      ,P1VDEV_NUMERO'
                           +','+chr(39)+' '+chr(39)  //      ,P1VDEV_DESD'
                           +',0' //      ,PFPDEV_DUP'
                           +','+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39) //      ,P1VDEV_DTEMIS'

                        +')');
      if pddescf=0 then
         DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,(pdatae+pprazo))
      else if pddescf=1 then
         DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,(pdatae+pdiasdescf))
      else
         DM1.Query1.ParamByName('DTDESCF').AsDateTime:=0;

      DM1.Query1.ParamByName('CODFP').AsFloat:=mCodFP;
      DM1.Query1.ParamByName('VINC02').AsFloat:=mVincFP;
      DM1.Query1.ParamByName('NOMEFP').AsString:=mNomeFP;

      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8823,'Frm_Ped','CADP01V');
         end;
      DM1.Query1.Close;
      end
   else
      begin
      DM4.Tb_Po99.First;
      if not DM4.Tb_Po99.Eof then
         begin
         While not DM4.Tb_Po99.Eof do
            begin
            mseq:=mseq+1;
            DM1.Query1.Close;
            DM1.Query1.SQL.clear;
            DM1.query1.SQL.Add('Insert into CADP01V ('
                              +' P1VCODEMP,'
                              +' P1VLOTSEQ, '
                              +' P1VCHAVE, '
                              +' P1VORDEM, '
                              +' P1VSEQ, '
                              +' P1VDATAV, '
                              +' P1VVALOR, '
                              +' P1VCOMISV, '
                              +' P1VCOM02, '
                              +' P1VCOM03, '
                              +' P1VCOMIST, '
                              +' P1VCOMISS, '
                              +' P1VFRETE, '
                              +' P1VTARBAN, '
                              +' P1VICMSR, '
                              +' P1VSEMCOM, '
                              +' P1VCOMASSE, '
                              +' P1VCODIGO, '
                              +' P1VTABPV, '
                              +' P1VDESCF, '
                              +' P1VTOTDI01, '
                              +' P1VTOTDI02, '
                              +' P1VTOTDI03, '
                              +' P1VTOTDIVL, '
                              +' P1VVALDES01, '
                              +' P1VVALDES02, '
                              +' P1VVLRDES, '
                              +' P1VSEG, '
                              +' P1VCOM04,'
                              +' P1VTOTIPI, '
                              +' P1VTOTCGRU,'
                              +' P1VTOTSGRU,'
                              +' P1VVLRSERV,'
                              +' P1VCOMISV_EXTRA,'
                              +' P1VDTDESCF'
                              +' ,P1VPFPGTO'
                              +' ,P1VCODFP '
                              +' ,P1VVINC02'
                              +' ,P1VNOMFPGTO'
                        +'      ,P1VDEV_CODEMP'
                        +'      ,P1VDEV_CODECF'
                        +'      ,P1VDEV_NUMERO'
                        +'      ,P1VDEV_DESD'
                        +'      ,P1VDEV_DUP'
                        +'      ,P1VDEV_DTEMIS'


                              +' ) values ('
                              +Floattostr(pcodemp)+','
                              +FloatTostr(plotseq)+','
                              +FloatTostr(pchave)+','
                              +FloatTostr(pordem)+','
                              +FloatTostr(mseq)+','
                              +chr(39)+FormatDatetime(fdt,pdatae+DM4.Tb_Po99POPRAZO.Value)+chr(39)+',' );
            if cobstpar1=true then
              begin
              if mseq=1 then
                begin
//                DM1.query1.SQL.Add(mudavp(FloatToStr(mvaldup+mdif))+',');
                DM1.query1.SQL.Add(mudavp(FloatToStr(mvaldup+picmsr+mdif))+',');
                end
              else
                begin
                DM1.query1.SQL.Add(mudavp(FloatToStr(mvaldup+mdif))+',');
                end;
              end
            else
              begin
              DM1.query1.SQL.Add(mudavp(FloatToStr(mvaldup+mdif))+',');
              end;
            DM1.query1.SQL.Add(mudavp(FloatToStr(mcomv+mdifv))+','
                              +mudavp(FloatToStr(mcomv02+mdifv02))+','
                              +mudavp(FloatToStr(mcomv03+mdifv03))+','
                              +mudavp(FloatToStr(mcomt+mdift))+','
                              +mudavp(FloatToStr(mcoms+mdifs))+','
                              +mudavp(FloatToStr(mvfre+mdiff))+','
                              +mudavp(FloatToStr(mvtb+mdiftb))+','
                              +mudavp(FloatToStr(mvicm+mdifi))+','
                              +mudavp(FloatToStr(mscom+mdifsc))+','
                              +mudavp(FloatToStr(mcoma+mdifca))+','
                              +mudavp(FloatToStr(pcodpv))+','
                              +chr(39)+ptabpv+chr(39)+','
                              +mudavp(FloatToStr(mvdf+mddf))+','
                              +mudavp(FloatToStr(mvdi01+mdifdi01))+','
                              +mudavp(FloatToStr(mvdi02+mdifdi02))+','
                              +mudavp(FloatToStr(mvdi03+mdifdi03))+','
                              +mudavp(FloatToStr(mvtdi+mdiftdi))+','
                              +mudavp(FloatToStr(mvvd01+mdifvd01))+','
                              +mudavp(FloatToStr(mvvd02+mdifvd02))+','
                              +mudavp(FloatToStr(mvvald+mdifvald))+','
                              +mudavp(FloatToStr(mvseg+mdifseg))+','
                              +mudavp(FloatToStr(mComv04+mdifComv04))+','
                              +mudavp(FloatToStr(mIPI+mdifIPI))+','
                              +mudavp(FloatToStr(mCGru+mdifCGru))+','
                              +mudavp(FloatToStr(mSGru+mdifSGru))+','
                              +mudavp(FloatToStr(mvserv+mdifserv))+','
                              +mudavp(FloatToStr(mvcomis_extra+mdifcomis_extra))+','
                              +':DTDESCF '
                              +','+'0' // P1VFPGTO'
                              +',:CODFP' //   +' ,P1VCODFP '
                              +',:VINC02' //P1VVINC02'
                              +',:NOMEFP'
                           +',0' //      ,P1VDEV_CODEMP'
                           +',0' //      ,P1VDEV_CODECF'
                           +',0' //      ,P1VDEV_NUMERO'
                           +','+chr(39)+' '+chr(39)  //      ,P1VDEV_DESD'
                           +',0' //      ,PFPDEV_DUP'
                           +','+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39) //      ,P1VDEV_DTEMIS'



                              +')');
            if pddescf=0 then
               DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,(pdatae+DM4.Tb_Po99POPRAZO.Value))
            else if pddescf=1 then
               DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,(pdatae+pdiasdescf))
            else
               DM1.Query1.ParamByName('DTDESCF').AsDateTime:=0;
            DM1.Query1.ParamByName('CODFP').AsFloat:=mCodFP;
            DM1.Query1.ParamByName('VINC02').AsFloat:=mVincFP;
            DM1.Query1.ParamByName('NOMEFP').AsString:=mNomeFP;

            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,8881,'Frm_Ped','CADP01V');
               end;
            DM1.Query1.Close;
            DM4.Tb_Po99.Next;
            mdif:=0;
            mdifv:=0;
            mdifv02:=0;
            mdifv03:=0;
            mdift:=0;
            mdifs:=0;
            mdiff:=0;
            mdifi:=0;
            mdifsc:=0;
            mddf  :=0;
            mdifserv:=0;
            mdifcomis_extra:=0;
            mdifca:=0;
            mdifdi01 :=0;
            mdifdi02 :=0;
            mdifdi03 :=0;
            mdiftdi  :=0;
            mdifvd01 :=0;
            mdifvd02 :=0;
            mdifvald :=0;
            mdifseg  :=0;
            mdifIPI  :=0;
            mdifCGru :=0;
            mdifSGru :=0;
            mdifComv04:=0;

            end;
         end
      else
         begin
         mseq:=mseq+1;

         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.query1.SQL.Add('Insert into CADP01V ('
                           +' P1VCODEMP,'
                           +' P1VLOTSEQ, '
                           +' P1VCHAVE, '
                           +' P1VORDEM, '
                           +' P1VSEQ, '
                           +' P1VDATAV, '
                           +' P1VVALOR, '
                           +' P1VCOMISV, '
                           +' P1VCOM02, '
                           +' P1VCOM03, '
                           +' P1VCOMIST, '
                           +' P1VCOMISS, '
                           +' P1VFRETE, '
                           +' P1VTARBAN, '
                           +' P1VICMSR, '
                           +' P1VSEMCOM, '
                           +' P1VCOMASSE, '
                           +' P1VCODIGO,'
                           +' P1VTABPV,'
                           +' P1VDESCF, '
                           +' P1VTOTDI01, '
                           +' P1VTOTDI02, '
                           +' P1VTOTDI03, '
                           +' P1VTOTDIVL, '
                           +' P1VVALDES01, '
                           +' P1VVALDES02, '
                           +' P1VVLRDES, '
                           +' P1VSEG, '
                           +' P1VCOM04,'
                           +' P1VTOTIPI, '
                           +' P1VTOTCGRU,'
                           +' P1VTOTSGRU,'
                           +' P1VVLRSERV,'
                           +' P1VCOMISV_EXTRA,'
                           +' P1VDTDESCF'
                           +' ,P1VPFPGTO'
                           +' ,P1VCODFP '
                           +' ,P1VVINC02'
                           +' ,P1VNOMFPGTO'
                        +'      ,P1VDEV_CODEMP'
                        +'      ,P1VDEV_CODECF'
                        +'      ,P1VDEV_NUMERO'
                        +'      ,P1VDEV_DESD'
                        +'      ,P1VDEV_DUP'
                        +'      ,P1VDEV_DTEMIS'





                           +') values ('
                           +Floattostr(pcodemp)+','
                           +FloatTostr(plotseq)+','
                           +FloatTostr(pchave)+','
                           +FloatTostr(pordem)+','
                           +FloatTostr(mseq)+','
                           +chr(39)+FormatDatetime(fdt,pdatae)+chr(39)+',');

                        if (mseq=1) and (cobstpar1=True) then
                          begin
                          DM1.query1.SQL.Add(mudavp(FloatToStr(mvaldup+picmsr+mdif))+',');
                          end
                        else
                          begin
                          DM1.query1.SQL.Add(mudavp(FloatToStr(mvaldup++mdif))+',');
                          end;
//                           +mudavp(FloatToStr(mvaldup+mdif))+','

                           DM1.query1.SQL.Add(mudavp(FloatToStr(mcomv+mdifv))+','
                           +mudavp(FloatToStr(mcomv02+mdifv02))+','
                           +mudavp(FloatToStr(mcomv03+mdifv03))+','
                           +mudavp(FloatToStr(mcomt+mdift))+','
                           +mudavp(FloatToStr(mcoms+mdifs))+','
                           +mudavp(FloatToStr(mvfre+mdiff))+','
                           +mudavp(FloatToStr(mvtb+mdiftb))+','
                           +mudavp(FloatToStr(mvicm+mdifi))+','
                           +mudavp(FloatToStr(mscom+mdifsc))+','
                           +mudavp(FloatToStr(mcoma+mdifca))+','
                           +mudavp(FloatToStr(pcodpv))+','
                           +chr(39)+ptabpv+chr(39)+','
                           +mudavp(FloatToStr(mvdf+mddf))+','
                           +mudavp(FloatToStr(mvdi01+mdifdi01))+','
                           +mudavp(FloatToStr(mvdi02+mdifdi02))+','
                           +mudavp(FloatToStr(mvdi03+mdifdi03))+','
                           +mudavp(FloatToStr(mvtdi+mdiftdi))+','
                           +mudavp(FloatToStr(mvvd01+mdifvd01))+','
                           +mudavp(FloatToStr(mvvd02+mdifvd02))+','
                           +mudavp(FloatToStr(mvvald+mdifvald))+','
                           +mudavp(FloatToStr(mvseg+mdifseg))+','
                           +mudavp(FloatToStr(mComv04+mdifComv04))+','
                           +mudavp(FloatToStr(mIPI+mdifIPI))+','
                           +mudavp(FloatToStr(mCGru+mdifCGru))+','
                           +mudavp(FloatToStr(mSGru+mdifSGru))+','
                           +mudavp(FloatToStr(mvserv+mdifserv))+','
                           +mudavp(FloatToStr(mvcomis_extra+mdifcomis_extra))+','
                           +':DTDESCF'
                           +','+'0' // P1VFPGTO'
                           +',:CODFP' //   +' ,P1VCODFP '
                           +',:VINC02' //P1VVINC02'
                           +',:NOMEFP'
                           +',0' //      ,P1VDEV_CODEMP'
                           +',0' //      ,P1VDEV_CODECF'
                           +',0' //      ,P1VDEV_NUMERO'
                           +','+chr(39)+' '+chr(39)  //      ,P1VDEV_DESD'
                           +',0' //      ,PFPDEV_DUP'
                           +','+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39) //      ,P1VDEV_DTEMIS'

                           +')'); // temporarios
         if pddescf=0 then
            DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,pdatae)
         else if pddescf=1 then
            DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,(pdatae+pdiasdescf))
         else
           DM1.Query1.ParamByName('DTDESCF').AsDateTime:=0;
        DM1.Query1.ParamByName('CODFP').AsFloat:=mCodFP;
        DM1.Query1.ParamByName('VINC02').AsFloat:=mVincFP;
        DM1.Query1.ParamByName('NOMEFP').AsString:=mNomeFP;


        Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,8941,'Frm_Ped','CADP01V');
            end;
         DM1.Query1.Close;
         DM4.Tb_Po99.Next;
         mdif:=0;
         mdifv:=0;
         mdifv02:=0;
         mdifv03:=0;
         mdift:=0;
         mdifs:=0;
         mdiff:=0;
         mdifi:=0;
         mdifsc:=0;
         mddf  :=0;
         mdifca:=0;
         mdifdi01 :=0;
         mdifdi02 :=0;
         mdifdi03 :=0;
         mdifserv  :=0;
         mdifcomis_extra:=0;
         mdiftdi  :=0;
         mdifvd01 :=0;
         mdifvd02 :=0;
         mdifvald :=0;
         mdifseg  :=0;
         mdifIPI  :=0;
         mdifCGru :=0;
         mdifSGru :=0;
         mdifComv04:=0;
         end;
      end;
   end;
result:=True;
end;

procedure TFrm_GerarDuplic.bbGerarClick(Sender: TObject);
begin
if fmensagem('Esta Gera Duplicatas Atraves das Formas de Pagamento, posso continuar?',0,['1','2'],2)<>mrYes then
   exit;

DM1.Tb_Ped01.Close;
DM1.Tb_Ped01.Sql.clear;
DM1.Tb_Ped01.Sql.add('Select * from CADP01 '
                    +' where P1STATUS<'+mstatus_excluido+' and P1TIPO<>10 and (P1NUMCF>0) ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Tb_Ped01.SQL.Add(' and P1DATAP>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));

if trim(MDT2.Text)<>'/  /' then
   DM1.Tb_Ped01.SQL.Add(' and P1DATAP<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
if trim(CHAVE.Text)<>'' then
   DM1.Tb_Ped01.SQL.Add(' and P1CHAVE=0'+CHAVE.Text);

DM1.Tb_Ped01.Open;
if DM1.Tb_Ped01.Eof then
   begin
   MessageDlg('Pedido não Encontrado!',mtInformation,[mbOk],0);
   exit;
   end;
if fRecriaTitulo(0) then
   begin
   verteclado(0);
   messagedlg('Concluido!',mtWarning,[mbOk],0);
   end;

end;   

function fRecriaTitulo(pTipo: Integer): Boolean;
begin
mQtdPed :=DM1.Tb_Ped01.RecordCount;
if mQtdPed<=0 then
   mQtdPed:=10;
mQtdProc:=0;
Application.Createform(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Processando Aguarde...';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;
While not DM1.Tb_Ped01.Eof do
   begin
   mQtdProc:=mQtdProc+1;
   Frm_Agde.Gauge1.Progress:=mQtdProc*100 div mQtdPed;

   DM4.Tb_PedFP.Close;
   DM4.Tb_PedFP.Sql.Clear;
   DM4.Tb_PedFP.Sql.Add('select PFPCODEMP,');
   DM4.Tb_PedFP.Sql.Add('    PFPLOTSEQ,');
   DM4.Tb_PedFP.Sql.Add('    PFPCHAVE,    ');
   DM4.Tb_PedFP.Sql.Add('    PFPSEQ,');
   DM4.Tb_PedFP.Sql.Add('    PFPVINCULO,');
   DM4.Tb_PedFP.Sql.Add('    PFPFORMA,');
   DM4.Tb_PedFP.Sql.Add('    PFPNOMFOR,');
   DM4.Tb_PedFP.Sql.Add('    PFPDATA,');
   DM4.Tb_PedFP.Sql.Add('    PFPNUMDOC,');
   DM4.Tb_PedFP.Sql.Add('    PFPBANCO,');
   DM4.Tb_PedFP.Sql.Add('    PFPSERIE,');
   DM4.Tb_PedFP.Sql.Add('    PFPVALOR,');
   DM4.Tb_PedFP.Sql.Add('    PFPCC,');
   DM4.Tb_PedFP.Sql.Add('    PFPCOMP,');
   DM4.Tb_PedFP.Sql.Add('    PFPAGENCIA,');
   DM4.Tb_PedFP.Sql.Add('    PFPEMITENTE,');
   DM4.Tb_PedFP.Sql.Add('    PFPCNPF,');
   DM4.Tb_PedFP.Sql.Add('    PFPRG,');
   DM4.Tb_PedFP.Sql.Add('    PFPDTNAS');
   DM4.Tb_PedFP.Sql.Add('    ,PFPFPGTO'
                  +'       ,PFPDEV_CODEMP '
                  +'       ,PFPDEV_CODECF '
                  +'       ,PFPDEV_NUMERO '
                  +'       ,PFPDEV_DESD '
                  +'       ,PFPDEV_DUP '
                  +'       ,PFPDEV_DTEMIS ');

   DM4.Tb_PedFP.Sql.Add('    from CADPFP where  PFPCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString+'  and '
                   +' PFPLOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString+'  AND PFPCHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString);
   DM4.Tb_PedFP.Sql.Add(' ORDER BY PFPSEQ ');
   try
      DM4.Tb_PedFP.Open;
   except
      DM4.Tb_PedFP.Sql.SavetoFile('c:\sql.txt');
      messagedlg('Erro ao Procurar Formas de Pagamento',mtwarning,[mbOk],0);
      end;
   if DM4.Tb_PedFP.eof then
      begin
      Messagedlg('Chave nao encontrada: '+DM1.Tb_Ped01P1CHAVE.AsString,mtwarning,[mbOk],0);
      DM1.Tb_Ped01.Next;
      Continue;
      end;

   fgvencto(iif(DM1.Tb_Ped01P1TABPV.Value='PP',1,0),DM1.Tb_Ped01P1CODEMP.AsInteger,
                 DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,
                 DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1PRAZO.AsInteger,
                 DM1.Tb_Ped01P1CODPV.AsInteger,
                 DM1.Tb_Ped01P1PVDDESCF.AsInteger,
                 DM1.Tb_Ped01P1PVDIASDESCF.AsInteger,
                 DM1.Tb_Ped01P1TOTALL.Value,
                 DM1.Tb_Ped01P1COMIS.Value,
                 DM1.Tb_Ped01P1COMV02.Value,DM1.Tb_Ped01P1COMV03.Value,
                 DM1.Tb_Ped01P1COMV04.Value,
                 DM1.Tb_Ped01P1COMISS.Value,DM1.Tb_Ped01P1COMIST.Value,
                 DM1.Tb_Ped01P1SEMCOM.Value,
                 DM1.Tb_Ped01P1COMASSE.Value,
                 DM1.Tb_Ped01P1ICMSR.Value,
                 DM1.Tb_Ped01P1VALFRE.Value,
                 DM1.Tb_Ped01P1VALSEG.Value,
                 DM1.Tb_Ped01P1DESCFIN.Value,
                 DM1.Tb_Ped01P1TOTDI01.Value,
                 DM1.Tb_Ped01P1TOTDI02.Value,
                 DM1.Tb_Ped01P1TOTDI03.Value,
                 DM1.Tb_Ped01P1TOTDIVL.Value,
                 DM1.Tb_Ped01P1VALDES01.Value,
                 DM1.Tb_Ped01P1VALDES02.Value,
                 DM1.Tb_Ped01P1VLRDES.Value,
                 DM1.Tb_Ped01P1TARBAN.Value,
                 DM1.Tb_Ped01P1IPIINA.Value+DM1.Tb_Ped01P1IPIPOS.Value+DM1.Tb_Ped01P1IPINEG.Value,
                 DM1.Tb_Ped01P1TOTCGRU.Value,
                 DM1.Tb_Ped01P1TOTSGRU.Value,
                 DM1.Tb_Ped01P1TOTSERLIQ.Value,
                 DM1.Tb_Ped01P1VALENT.Value,
                 DM1.Tb_Ped01P1PRAZO_ENT.Value,
                 DM1.Tb_Ped01P1COMIS_EXTRA.Value,
                 ValFloat(PalNum_Sis(DM1.Tb_Ped01P1SUBMOD.AsString)),
                 DM1.Tb_Ped01P1DATAP.Value,
                 DM1.Tb_Ped01P1TABPV.Value);
   DM1.Query3.close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.Sql.add('Select CRCODEMP,CRLOTSEQ_FC,CRCODLDR,CRLOTSEQ_LB,CRLOTE,CRCODECF,CRNUMERO,CRDESD,'
                     +' CRDUP,CRSTATUS,CRDTEMIS from CADDAR where CRCODEMP=0'+dm1.Tb_Ped01P1CODEMP.AsString
                     +' and CRLOTSEQ_CP=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                     +' and CRNPED=0'+DM1.Tb_Ped01P1CHAVE.AsString);
   DM1.Query3.Open;


   While not DM1.Query3.Eof do
      begin
      if DM1.Query3.FieldByName('CRSTATUS').AsFloat=0 then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Delete From CADLDR where CODEMP=0'+DM1.Query3.fieldByName('CRCODEMP').AsString
                           +' and LOTSEQ=0'+DM1.Query3.fieldByName('CRLOTSEQ_FC').AsString
                           +' and CODLDR=0'+DM1.Query3.fieldByName('CRCODLDR').AsString);
         try
            DM1.Query1.ExecSQL;
            fdm1startCommit;
         except
            end;
         end
      else
         begin
         DM1.Query4.Close;
         DM1.Query4.SQL.Clear;
         DM1.Query4.SQL.add('Select FPLOTE,FPCODEMP,FPLOTSEQ from  FPCRDUP where '
                            +' FPCODEMP='+DM1.Query3.fieldByName('CRCODEMP').AsString
                            +' and FPDUP_CODEMP=0'+DM1.Query3.fieldbyName('CRCODEMP').AssTring
                            +' and FPCODECF=0'+DM1.Query3.fieldbyName('CRCODECF').AssTring
                            +' and FPNUMERO=0'+DM1.Query3.fieldbyName('CRNUMERO').AssTring
                            +' and FPDESD='+chr(39)+DM1.Query3.fieldbyName('CRDESD').AssTring+chr(39)
                            +' and FPTIPO=0'+DM1.Query3.fieldbyName('CRDUP').AssTring
                            +' and FPDTEMIS='+chr(39)+FormatDateTime(fdt,  DM1.Query3.fieldbyName('CRDTEMIS').AsDateTime)+chr(39));
//         DM1.Query4.SQL.SAVETOFILE('C:\SQL.TXT');

         DM1.Query4.Open;
{         if DM1.Query4.Eof then
            begin
            MessageDlg('Erro ao Procurar formas de pagamentos!',mtError,[mbOk],0);
            exit;
            end;
}
//
//         DM1.Query4.Close;
//         DM1.Query4.Open;
         if not DM1.Query4.Eof then
            begin
            While not DM1.Query4.Eof do
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.clear;
               DM1.Query1.Params.CreateParam(ftString,'CHCODEMP',ptInput);
               DM1.Query1.Params.CreateParam(ftString,'CHLOTE',ptInput);
               DM1.Query1.SQL.add('Delete from CADCHQ where '
                           +'     CHCODEMP=:CHCODEMP and '
                           +'     CHLOTE  =:CHLOTE ');

               DM1.Query1.ParamByName('CHCODEMP').AsFloat:=dm1.Query4.fieldbyName('FPCODEMP').AsFloat;
               DM1.Query1.ParamByName('CHLOTE').AsFloat  :=dm1.Query4.fieldbyName('FPLOTE').AsFloat;
               try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  end;
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Delete From FPCRDUP where '
                              +' FPCODEMP='+DM1.Query4.fieldByName('FPCODEMP').AsString
                             +' and FPLOTSEQ=0'+DM1.Query4.fieldByName('FPLOTSEQ').AsString
                              +' and FPLOTE=0'+DM1.Query4.fieldByName('FPLOTE').AsString);
               try
                  DM1.Query1.ExecSQL;
                  fdm1startCommit;
               except
                  end;

               DM1.Query5.Close;
               DM1.Query5.SQL.Clear;
               DM1.Query5.SQL.add('Select FPLOTE,FPCODEMP,FPLOTSEQ,FPCODLDR from  FPCR where '
                            +' FPCODEMP='+DM1.Query4.fieldByName('FPCODEMP').AsString
                            +' and FPLOTE=0'+DM1.Query4.fieldbyName('FPLOTE').AssTring);
               DM1.Query5.SQL.SAVETOFILE('C:\SQL.TXT');
               DM1.Query5.Open;
               While not DM1.Query5.Eof do
                  begin
                  DM1.Query1.Close;
                  DM1.Query1.SQL.Clear;
                  DM1.Query1.SQL.Add('Delete From CADLDR where CODEMP=0'+DM1.Query5.fieldByName('FPCODEMP').AsString
                                    +' and LOTSEQ=0'+DM1.Query5.fieldByName('FPLOTSEQ').AsString
                                    +' and CODLDR=0'+DM1.Query5.fieldByName('FPCODLDR').AsString);
                  try
                      DM1.Query1.ExecSQL;
                     fdm1startCommit;
                  except
                     end;
                  DM1.Query5.Next;
                  end;

               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Delete From FPCR where '
                              +' FPCODEMP='+DM1.Query4.fieldByName('FPCODEMP').AsString
                              +' and FPLOTSEQ=0'+DM1.Query4.fieldByName('FPLOTSEQ').AsString
                              +' and FPLOTE=0'+DM1.Query4.fieldByName('FPLOTE').AsString);
               try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  end;

               DM1.Query4.Next;
               end;
            end;
         end;
      DM1.Query3.Next;
      end;

   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.add('Delete from CADDAR where CRCODEMP=0'+dm1.Tb_Ped01P1CODEMP.AsString
                     +' and CRLOTSEQ_CP=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                     +' and CRNPED=0'+DM1.Tb_Ped01P1CHAVE.AsString);
   DM1.Query1.execsql;



   Fgravardup(1,0,0,DM1.Tb_Ped01P1NUMCF.AsString,1,DM1.Tb_Ped01VP1VCODFP.AsInteger,DM1.Tb_Ped01P1TIPO.Asinteger);


// GERAR TUDO NOVAMENTE

{
   DM1.Tb_Ped01V.Close;
   DM1.Tb_Ped01v.SQL.Clear;
   DM1.Tb_Ped01v.SQL.add('Select * from CADP01V where P1VCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                        +' and P1VLOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                        +' and P1VCHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                        +' and P1VORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString
                        +' order by P1VCODEMP,P1VCHAVE,P1VORDEM,P1VDATAV');
   DM1.Tb_Ped01V.Open;


   While not DM1.Tb_Ped01V.Eof do
      begin
      if (DM1.Tb_Ped01VP1VVINC02.Value=8) or
         (DM1.Tb_Ped01VP1VVINC02.Value=12) then
         Fgravardup(0,0,0,DM1.Tb_Ped01P1NUMCF.AsString,0,0)
      else
         Fgravardup(0,0,0,DM1.Tb_Ped01P1NUMCF.AsString,1,DM1.Tb_Ped01VP1VCODFP.AsInteger);
      DM1.Tb_Ped01V.Next;
      end;
}
   DM1.Tb_Ped01.Next;
   end;
Frm_Agde.Free;
result:=true;

end;

procedure TFrm_GerarDuplic.FormCreate(Sender: TObject);
begin
MDT1.Text:=FormatDatetime(fdt2, Date);
MDT2.Text:=FormatDatetime(fdt2, Date);
flparldr(0,'CADDARD');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin
   MessageDlg('Esta Faltando o Parametro de devolução (CADDARD), '+#13
             +'Entre em parametros Sobre Caixa e Cadastre-o!',mtWarning,[mbok],0);
   exit;
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.Value;
   pldr_codccu:=DM1.Par_LDRCODCC.Value;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
   pldr_coddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
      pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;

DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPDESC');
DM1.Qr_FP.Open;

end;

procedure TFrm_GerarDuplic.bbTransfChqClick(Sender: TObject);
begin

if fmensagem('Esta opcao transfere os registros do tipo cheque para o arquivo original, posso continuar?',0,['1','2'],2)<>mrYes then
   exit;
Application.Createform(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Criando arquivo de Cheques Aguarde...';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;

DM1.Tb_Dar.Close;
DM1.Tb_Dar.SQL.Clear;
DM1.Tb_Dar.Sql.Add('Select CADDAR.*,CADDAR.ROWID AS IDDAR from CADDAR where CRSTATUS<9 ');
if Trim(MDT1.Text)<>'/  /' then
   DM1.Tb_Dar.SQL.add(' and CRDTVCTO>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Tb_Dar.SQL.add(' and CRDTVCTO<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Tb_Dar.SQL.add(' and CRDUP=11 ');
DM1.Tb_Dar.open;
if DM1.Tb_Dar.IsEmpty then
   begin
   MessageDlg('Nao ha registros na condição acima!',mtWarning,[mbOk],0);
   Frm_Agde.Free;
   exit;
   end;
mQtdPed:=dm1.Tb_Dar.RecordCount;
if mQtdPed<0 then
   mqtdped:=10;
mQtdProc:=0;
While not DM1.Tb_Dar.Eof do
   begin
   flcadcli(1,0,DM1.Tb_DarCRCODCLI.AsString);
   mQtdProc:=mQtdProc+1;
   Frm_Agde.Gauge1.Progress:=mQtdProc*100 div mQtdPed;
   fCriarChqCli(DM1.Tb_DarCRCODEMP.Value,
                DM1.Tb_DarCRNUMERO.Value,
                DM1.Tb_DarCRCODBCO.Value,
                DM1.Tb_DarCRCODCLI.Value,
                DM1.Tb_CliCCPF.Value,
                DM1.Tb_DarCRVALOR.Value,
                0,
                0,
                0,
                0,
                0,
                codcai,
                0,
                0,

                     ls_codldr,
                     0, // quantidade de prorrogacoes
                     0, // codigo da forma de pagamento
                     codcai, // codigo do caixa
                     0, // deposito 0-sim 1-nao



                ' ',
                '086',
                DM1.Tb_CliCRAZAO.Value,
                DM1.Tb_DarCRCHD_AGENCIA.Value,
                DM1.Tb_DarCRCHD_CC.Value,
                DM1.Tb_CliCRG.Value,
                '',

                     mcodccu,
                     mcoddep,
                     mdesc_mov,
                     ' ', // obs linha 01
                     ' ', // obs linha 02
                     mnombco,

                pdatanula,
                DM1.Tb_DarCRDTEMIS.Value,
                DM1.Tb_DarCRDTVCTO.Value,
                pdatanula,
                pdatanula, // data da baixa
                pdatanula ); // data do ultimo deposito
   DM1.Tb_Dar.Next;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.Add('Delete from CADDAR where CRSTATUS<9 ');
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CRDTVCTO>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CRDTVCTO<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Query1.SQL.add(' and CRDUP=11 ');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Eliminar as duplicatas',mtWarning,[mbOk],0)
   end;

Frm_Agde.Label1.Caption:='concluido!';
verteclado(0);
end;

procedure TFrm_GerarDuplic.CHAVEExit(Sender: TObject);
begin
CHAVE.Text:=fdeixanum2(CHAVE.text);
end;

procedure TFrm_GerarDuplic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
