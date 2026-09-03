unit S_CapRedZ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func, StdCtrls, Buttons, Gauges,lerarq, Mask,
  Func_Ecf, ExtCtrls;

type
  TFrm_CapRedZ = class(TForm)
    bbProcessar: TBitBtn;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    bbSair: TBitBtn;
    RG_TIPO: TRadioGroup;
    procedure bbProcessarClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CapRedZ: TFrm_CapRedZ;

implementation

uses func_excecoes, S_ECF_Comp_MRxNS;

{$R *.dfm}

procedure TFrm_CapRedZ.bbProcessarClick(Sender: TObject);
var
  mSerieEcf,Buffer, marq: String;
  F: TextFile;
  mSeqEcf, mconred, mcro,mcoo_Inicial,mcoo_final,mvdabrut,mvdaliq,mcupcan,macrecup,mdescup,misscup,misentas,mnaoinc,msubtri: Real;
  mModDoc: String;
  m_aliq, m_valor: Real;
  mdatarz: TDateTime;
  mlid, mqtd: Integer;
begin
if Trim(MDT1.Text)='/  /' then
   begin
   MessageDlg('Data Inicial Campo Obrigatório!',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   exit;
   end;
if Trim(MDT2.Text)='/  /' then
   begin
   MessageDlg('Data Final Campo Obrigatório!',mtWarning,[mbOk],0);
   MDT2.SetFocus;
   exit;
   end;

if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      MessageDlg('Data Inicial Maior que Final!',mtWarning,[mbOk],0);
      end;
   end;

if codcai=0 then
   begin
   MessageDlg('Caixa/ECF Não Aberto. Para Abri-lo Pressione <F9>',mtWarning,[mbOk],0);
   exit;
   end;
if DM1.Tb_ECFCFMODELO.Value<>0 then
   begin
   MessageDlg('Esta Opção só é valida para impressora bematech!',mtWarning,[mbOk],0);
   exit;
   end;
iRetorno    := Bematech_FI_DadosSintegra( pchar(FormatDateTime('ddmmyy',StrToDate(MDT1.Text)) ), pchar( FormatDateTime('ddmmyy',StrToDate(MDT2.Text)) ) );

buffer:='\RETORNO.TXT';
if not FileExists(buffer) then
   begin
   MessageDlg('Erro ao tentar ler a redução Z!',mtError,[mbOk],0);
   exit;
   end;
AssignFile(F,buffer);
Reset(F);

mlid:=0;
mqtd:=FileSize(f);

mSerieEcf   :='';
mSeqEcf     :=0;
mconred     :=0;
mcro        :=0;
mcoo_inicial:=0;
mcoo_final  :=0;
mvdabrut    :=0;
mvdaliq     :=0;
mcupcan     :=0;
macrecup    :=0;
mdescup     :=0;
misscup     :=0;
misentas    :=0;
mnaoinc     :=0;
msubtri     :=0;
mModDoc     :=DM1.Tb_ECFCFMODDOC.Value;


Application.CreateForm(TFrm_ECF_Comp_MRxNS, Frm_ECF_Comp_MRxNS);

Frm_ECF_Comp_MRxNS.ecf_totvda_bruta.Value:=0;
Frm_ECF_Comp_MRxNS.ecf_totvda_liq.Value  :=0;
Frm_ECF_Comp_MRxNS.ecf_totvda_canc.Value :=0;
Frm_ECF_Comp_MRxNS.ecf_totacres.Value    :=0;
Frm_ECF_Comp_MRxNS.ecf_totdes.Value      :=0;
Frm_ECF_Comp_MRxNS.ecf_totissqn.Value    :=0;
Frm_ECF_Comp_MRxNS.ecf_totisentas.Value  :=0;
Frm_ECF_Comp_MRxNS.ecf_totNaoInc.Value   :=0;
Frm_ECF_Comp_MRxNS.ecf_totsubstTrib.Value:=0;
Frm_ECF_Comp_MRxNS.ecf_tottrib.Value:=0;



Frm_ECF_Comp_MRxNS.ns_totvda_bruta.Value:=0;
Frm_ECF_Comp_MRxNS.ns_totvda_liq.Value  :=0;
Frm_ECF_Comp_MRxNS.ns_totvda_canc.Value :=0;
Frm_ECF_Comp_MRxNS.ns_totacres.Value    :=0;
Frm_ECF_Comp_MRxNS.ns_totdes.Value      :=0;
Frm_ECF_Comp_MRxNS.ns_totissqn.Value    :=0;
Frm_ECF_Comp_MRxNS.ns_totisentas.Value  :=0;
Frm_ECF_Comp_MRxNS.ns_totNaoInc.Value   :=0;
Frm_ECF_Comp_MRxNS.ns_totsubstTrib.Value:=0;
Frm_ECF_Comp_MRxNS.ns_tottrib.Value:=0;


Frm_ECF_Comp_MRxNS.mem_MRxNS.Close;
Frm_ECF_Comp_MRxNS.mem_MRxNS.Open;
{
while not DM1.Tb_MI02.Eof do
   begin
   Frm_ECF_Comp_MRxNS.mem_MRxNS.Append;
   Frm_ECF_Comp_MRxNS.mem_MRxNSOBSERV.Value  :='Alíquota ';
   Frm_ECF_Comp_MRxNS.mem_MRxNSALIQ.Value    :=DM1.Tb_MI02CM2ALIQ.AsFloat;
   Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_MR.Value:=DM1.Tb_MI02CM2VALOR.AsFloat;
   Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_NS.Value:=0;
   Frm_ECF_Comp_MRxNS.mem_MRxNS.Post;
   Frm_ECF_Comp_MRxNS.ecf_tottrib.Value:=Frm_ECF_Comp_MRxNS.ecf_tottrib.Value
                                        +DM1.Tb_MI02CM2VALOR.AsFloat;

   DM1.Tb_MI02.Next;
   end;
}
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';

fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');

DM1.Query6.Close;
DM1.Query6.SQL.Clear;
DM1.Query6.SQL.Add('Select sum(DECODE(NSSITCUP,8,0,P2TOTDES))  AS TOTDES '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2BASEN))  AS BASEN '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2BASER))  AS BASER '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2ICMSR))  AS ICMSR '
                  +'       ,SUM(DECODE(NSSITCUP,8,0,P2TOTOUT)) AS OUTRAS '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2VALIPI))  AS VALIPI '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2ICMSN))  AS ICMSN '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2ICMSNR)) AS ICMSNR '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2BCINR))  AS BCINR '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2ISENTAS)) AS ISENTAS '
                  +'       ,sum(DECODE(NSSITCUP,8,0,P2TOTLIQ)-DECODE(NSSITCUP,8,0,P2DESCRAT)) AS TOTLIQ '
                  +'       ,sum(DECODE(NSSITCUP,8,P2TOTLIQ,0)-DECODE(NSSITCUP,8,P2DESCRAT,0)) AS TOTCANC '
                  +'        ,P2CFO '
                  +'        ,P2SIT '
                  +',P2ALIQ,max(P2ALIQNR) as P2ALIQNR,P2ALIPI AS ALIPI '
                  +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' NSSITCUP<9 and NSNUMCUP>0');
DM1.Query6.SQL.Add(' and NSDTEMIS=:DTEMIS ');
DM1.Query6.ParamByName('DTEMIS').AsDateTime:=DM1.Tb_MI01CMDATA.AsDateTime;

DM1.Query6.SQL.Add(' group by P2CFO,P2SIT,P2ALIQ,P2ALIPI ');
try
   DM1.Query6.open;
except
   DM1.Query6.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
While not DM1.Query6.eof do
   begin
   Frm_ECF_Comp_MRxNS.ns_totvda_bruta.Value:=Frm_ECF_Comp_MRxNS.ns_totvda_bruta.Value +
                                             DM1.Query6.fieldbYName('TOTLIQ').AsFloat
                                            +DM1.Query6.fieldbYName('TOTDES').AsFloat;

   Frm_ECF_Comp_MRxNS.ns_totvda_liq.Value   :=Frm_ECF_Comp_MRxNS.ns_totvda_liq.Value +
                                             DM1.Query6.fieldbYName('TOTLIQ').AsFloat;

   Frm_ECF_Comp_MRxNS.ns_totacres.Value    :=0;
   Frm_ECF_Comp_MRxNS.ns_totdes.Value      :=Frm_ECF_Comp_MRxNS.ns_totdes.Value+
                                             DM1.Query6.fieldbYName('TOTDES').AsFloat;
   Frm_ECF_Comp_MRxNS.ns_totissqn.Value    :=0;

   if copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='4' then
      Frm_ECF_Comp_MRxNS.ns_totisentas.Value :=Frm_ECF_Comp_MRxNS.ns_totisentas.Value
                                              +DM1.Query6.fieldbYName('TOTLIQ').AsFloat;

   Frm_ECF_Comp_MRxNS.ns_totNaoInc.Value   :=0;
   if (DM1.Query6.fieldbyname('BASEN').asfloat=0) and
      ( (copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='1')  or
        (copy(DM1.Query6.fieldbyName('P2SIT').AsString,2,1)='6')  ) then
      Frm_ECF_Comp_MRxNS.ns_totsubstTrib.Value:=Frm_ECF_Comp_MRxNS.ns_totsubstTrib.Value
                                              +DM1.Query6.fieldbYName('TOTLIQ').AsFloat;

      Frm_ECF_Comp_MRxNS.ns_totvda_canc.Value:=Frm_ECF_Comp_MRxNS.ns_totvda_canc.Value
                                              +DM1.Query6.fieldbYName('TOTCANC').AsFloat;

   if DM1.Query6.fieldbyname('P2ALIQ').asfloat>0 then
      begin
      Frm_ECF_Comp_MRxNS.ns_tottrib.Value:=Frm_ECF_Comp_MRxNS.ns_tottrib.Value
                                        +DM1.Query6.fieldbyname('BASEN').asfloat;
      if not Frm_ECF_Comp_MRxNS.mem_MRxNS.Locate('ALIQ',DM1.Query6.fieldbyname('P2ALIQ').asfloat,[]) then
         begin
         Frm_ECF_Comp_MRxNS.mem_MRxNS.Append;
         Frm_ECF_Comp_MRxNS.mem_MRxNSOBSERV.Value  :='Alíquota ';
         Frm_ECF_Comp_MRxNS.mem_MRxNSALIQ.Value    :=DM1.Query6.fieldbyname('P2ALIQ').asfloat;
         Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_MR.Value:=0;
         Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_NS.Value:=DM1.Query6.fieldbyname('BASEN').asfloat;

         end
      else
         begin
         Frm_ECF_Comp_MRxNS.mem_MRxNS.Edit;
         Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_NS.Value:=Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_NS.Value+
                                                     DM1.Query6.fieldbyname('BASEN').asfloat;
         end;
      Frm_ECF_Comp_MRxNS.mem_MRxNS.Post;
      end;
   DM1.Query6.Next;
   end;


GroupBox1.Visible:=True;
while not eof(f) do
   begin
   ReadLn(f,buffer);
   mlid:=mlid+length(buffer);
   gauge1.Progress:=mlid*100 div mqtd;

   if trim(Buffer)='' then
      Continue;
   mdatarz     :=StrToDate(copy(buffer,7,2)+'/'+copy(buffer,5,2)+'/'+copy(buffer,1,4));
   mSerieEcf   :=copy(buffer,09,20);
   mSeqEcf     :=valfloat(copy(buffer,29,3));
   mconred     :=valfloat(copy(buffer,32,6));
   mcro        :=valfloat(copy(buffer,38,6));

   mcoo_Inicial:=valfloat(copy(buffer,60,12));
   mcoo_final  :=valfloat(copy(buffer,44,12));



   mvdabrut    :=valfloat(copy(buffer,76,16))/100;

   Frm_ECF_Comp_MRxNS.ecf_totvda_bruta.Value:=
   Frm_ECF_Comp_MRxNS.ecf_totvda_bruta.Value+mvdabrut;

   mvdaliq     :=valfloat(copy(buffer,92,16))/100;

   Frm_ECF_Comp_MRxNS.ecf_totvda_liq.Value:=
   Frm_ECF_Comp_MRxNS.ecf_totvda_liq.Value+mvdaliq;

   mcupcan     :=valfloat(copy(buffer,108,12))/100;
   Frm_ECF_Comp_MRxNS.ecf_totvda_canc.Value:=
   Frm_ECF_Comp_MRxNS.ecf_totvda_canc.Value+mcupcan;

   mdescup     :=valfloat(copy(buffer,120,12))/100;
   Frm_ECF_Comp_MRxNS.ecf_totdes.Value:=
   Frm_ECF_Comp_MRxNS.ecf_totdes.Value+mdescup;

   misscup     :=valfloat(copy(buffer,168,12))/100;
   Frm_ECF_Comp_MRxNS.ecf_totissqn.Value:=
   Frm_ECF_Comp_MRxNS.ecf_totissqn.Value+misscup;

   misentas    :=valfloat(copy(buffer,144,12))/100;
   Frm_ECF_Comp_MRxNS.ecf_totisentas.Value:=
   Frm_ECF_Comp_MRxNS.ecf_totisentas.Value+misentas;

   mnaoinc     :=valfloat(copy(buffer,156,12))/100;
   Frm_ECF_Comp_MRxNS.ecf_totNaoInc.Value:=
   Frm_ECF_Comp_MRxNS.ecf_totNaoInc.Value+mnaoinc;

   msubtri     :=valfloat(copy(buffer,184,12))/100;
   Frm_ECF_Comp_MRxNS.ecf_totsubstTrib.Value:=
   Frm_ECF_Comp_MRxNS.ecf_totsubstTrib.Value+msubtri;

   macrecup    :=mvdaliq-(mvdabrut-mdescup);

   iRetorno:=180;
   While true do
      begin
      if Length(Buffer)<iRetorno then
         break;
      if valfloat(copy(buffer,iRetorno,4))<=0 then
         begin
         iRetorno:=iretorno+16;
         continue;
         end;
      m_aliq :=valfloat(copy(buffer,iRetorno,4))/100;
      m_valor:=valFloat(copy(Buffer,IRetorno+4,12))/100;


      Frm_ECF_Comp_MRxNS.ecf_tottrib.Value:=
      Frm_ECF_Comp_MRxNS.ecf_tottrib.Value+m_valor;

      Frm_ECF_Comp_MRxNS.mem_MRxNS.Append;
      Frm_ECF_Comp_MRxNS.mem_MRxNSOBSERV.Value  :='Alíquota ';
      Frm_ECF_Comp_MRxNS.mem_MRxNSALIQ.Value    :=m_aliq;
      Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_MR.Value:=m_valor;
      Frm_ECF_Comp_MRxNS.mem_MRxNSVALOR_NS.Value:=0;
      Frm_ECF_Comp_MRxNS.mem_MRxNS.Post;
      iRetorno:=iRetorno+16;
      end;
   end;


// aqui processa
mAceita_Valores:=false;
Frm_ECF_Comp_MRxNS.dif_totvda_brutaExit(self);
Frm_ECF_Comp_MRxNS.ShowModal;
if mAceita_Valores then
   begin
   Reset(F);

   mlid:=0;
   mqtd:=FileSize(f);

   mSerieEcf   :='';
   mSeqEcf     :=0;
   mconred     :=0;
   mcro        :=0;
   mcoo_inicial:=0;
   mcoo_final  :=0;
   mvdabrut    :=0;
   mvdaliq     :=0;
   mcupcan     :=0;
   macrecup    :=0;
   mdescup     :=0;
   misscup     :=0;
   misentas    :=0;
   mnaoinc     :=0;
   msubtri     :=0;
   mModDoc     :=DM1.Tb_ECFCFMODDOC.Value;

   GroupBox1.Visible:=True;
   while not eof(f) do
      begin
      ReadLn(f,buffer);
      mlid:=mlid+length(buffer);
      gauge1.Progress:=mlid*100 div mqtd;

      if trim(Buffer)='' then
         Continue;
      mdatarz     :=StrToDate(copy(buffer,7,2)+'/'+copy(buffer,5,2)+'/'+copy(buffer,1,4));
      mSerieEcf   :=copy(buffer,09,20);
      mSeqEcf     :=valfloat(copy(buffer,29,3));
      mconred     :=valfloat(copy(buffer,32,6));
      mcro        :=valfloat(copy(buffer,38,6));

      mcoo_Inicial:=valfloat(copy(buffer,60,12));
      mcoo_final  :=valfloat(copy(buffer,44,12));

      mvdabrut    :=valfloat(copy(buffer,76,16))/100;
      mvdaliq     :=valfloat(copy(buffer,92,16))/100;
      mcupcan     :=valfloat(copy(buffer,108,12))/100;
      mdescup     :=valfloat(copy(buffer,120,12))/100;
      misscup     :=valfloat(copy(buffer,168,12))/100;
      misentas    :=valfloat(copy(buffer,144,12))/100;
      mnaoinc     :=valfloat(copy(buffer,156,12))/100;
      msubtri     :=valfloat(copy(buffer,184,12))/100;
      macrecup    :=mvdaliq-(mvdabrut-mdescup);


      if RG_TIPO.ItemIndex<>0 then
         begin
         if flcadmi01(2,0,IntToStr(codecf),FormatDateTime(fdt, mdatarz)) then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete from CADMI01 where '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CMCODEMP=0'+IntToStr(codemp)+' and ')
                              +' CMCODIMP=0'+IntToStr(codecf)
                              +' and CMDATA='+chr(39)+FormatDateTime(fdt, mdatarz)+chr(39));
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,153,'frm_CapRedZ','CADMI01');
               end;

            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete from CADMI02 where '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and ')
                              +' CM2CODIMP=0'+IntToStr(codecf)
                              +' and CM2DATA='+chr(39)+FormatDateTime(fdt, mdatarz)+chr(39));
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,163,'frm_CapRedz','CADMI02');
               end;
            end;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Insert into CADMI01 ('
                           +'CMCODEMP, '
                           +'CMCODIMP, '
                           +'CMSERIE, '
                           +'CMORDEM, '
                           +'CMMODDOC, '
                           +'CMDATA, '
                           +'CMCONRED, '
                           +'CMCOO, '
                           +'CMCOO_FINAL, '
                           +'CMCRO, '
                           +'CMVDABRUT, '
                           +'CMVDALIQ, '
                           +'CMCUPCAN, '
                           +'CMACRECUP, '
                           +'CMDESCUP, '
                           +'CMISSCUP, '
                           +'CMISENTAS, '
                           +'CMNAOINC, '
                           +'CMSUBTRI,'
                           +'CMLEMAT) values ('
                           +IntTostr(codemp)+','
                           +IntToStr(codecf)+','
                           +chr(39)+mSerieEcf+chr(39)+','
                           +FloatToStr(mSeqEcf)+','
                           +chr(39)+mModDoc+chr(39)+','
                           +chr(39)+FormatDateTime(fdt, mdatarz)+chr(39)+','
                           +mudaVP(FloatToStr(mconred))+','
                           +mudaVP(FloatToStr(mcoo_Inicial))+','
                           +mudaVP(FloatToStr(mcoo_final))+','
                           +mudaVP(FloatToStr(mcro))+','
                           +mudaVP(FloatTostr(mvdabrut))+','
                           +mudaVP(FloatToStr(mvdaliq))+','
                           +mudaVP(FloatToStr(mcupcan))+','
                           +mudaVP(FloatTostr(macrecup))+','
                           +mudaVP(FloatToStr(mdescup))+','
                           +mudaVP(FloatToStr(misscup))+','
                           +mudaVP(FloatToStr(misentas))+','
                           +mudaVP(FloatToStr(mnaoinc))+','
                           +mudavp(FloatToStr(msubtri))+','
                           +'0'
                           +')');
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,209,'frm_CapRedz','CADMI01');
            end;
         end;

      if RG_TIPO.ItemIndex<>1 then
         begin
         if flcadmi01(2,0,IntToStr(codecf),FormatDateTime(fdt, mdatarz)) then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete from CADRSIN01 where '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' RSCODEMP=0'+IntToStr(codemp)+' and ')
                              +' RSCODIMP=0'+IntToStr(codecf)
                              +' and RSDATA='+chr(39)+FormatDateTime(fdt, mdatarz)+chr(39));
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,228,'frm_CapRedZ','CADRSIN01');
               end;

            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete from CADRSIN02 where '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' RS2CODEMP=0'+IntToStr(codemp)+' and ')
                              +' RS2CODIMP=0'+IntToStr(codecf)
                              +' and RS2DATA='+chr(39)+FormatDateTime(fdt, mdatarz)+chr(39));
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,243,'frm_CapRedZ','CADRSIN02');
               end;
            end;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Insert into CADRSIN01 ('
                           +'RSCODEMP, '
                           +'RSCODIMP, '
                           +'RSDATA, '
                           +'RSNSERIE, '
                           +'RSSEQ, '
                           +'RSCRO, '
                           +'RSCREDZ, '
                           +'RSCOO_FINAL, '
                           +'RSCOO_INICIAL, '
                           +'RSCUPCAN, '
                           +'RSACRECUP, '
                           +'RSDESCUP, '
                           +'RSISSCUP, '
                           +'RSISENTAS, '
                           +'RSNAOINC, '
                           +'RSSUBTRI, '
                           +'RSVDABRUT, '
                           +'RSVDALIQ) Values ('
                           +IntTostr(codemp)+','
                           +IntToStr(codecf)+','
                           +chr(39)+FormatDateTime(fdt, mdatarz)+chr(39)+','
                           +chr(39)+mSerieEcf+chr(39)+','
                           +FloatToStr(mSeqEcf)+','
                           +mudaVP(FloatToStr(mcro))+','
                           +mudaVP(FloatToStr(mconred))+','
                           +mudaVP(FloatToStr(mcoo_final))+','
                           +mudaVP(FloatToStr(mcoo_inicial))+','
                           +mudaVP(FloatToStr(mcupcan))+','
                           +mudaVP(FloatTostr(macrecup))+','
                           +mudaVP(FloatToStr(mdescup))+','
                           +mudaVP(FloatToStr(misscup))+','
                           +mudaVP(FloatToStr(misentas))+','
                           +mudaVP(FloatToStr(mnaoinc))+','
                           +mudavp(FloatToStr(msubtri))+','
                           +mudaVP(FloatTostr(mvdabrut))+','
                           +mudaVP(FloatToStr(mvdaliq))+')');
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,289,'frm_CapRedZ','CADRSIN01');
            end;
         end;
      iRetorno:=180;
      While true do
         begin
         if Length(Buffer)<iRetorno then
            break;
         if valfloat(copy(buffer,iRetorno,4))<=0 then
            begin
            iRetorno:=iretorno+16;
            continue;
            end;
         m_aliq :=valfloat(copy(buffer,iRetorno,4))/100;
         m_valor:=valFloat(copy(Buffer,IRetorno+4,12))/100;
         if RG_TIPO.ItemIndex<>0 then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.clear;
            DM1.Query1.SQL.add('Insert into CADMI02 ('
                              +' CM2CODEMP, '
                              +' CM2CODIMP, '
                              +' CM2DATA, '
                              +' CM2ALIQ, '
                              +' CM2VALOR) values ('
                              +IntToStr(codemp)+','
                              +IntToStr(codecf)+','
                              +chr(39)+FormatDateTime(fdt, mdatarz)+chr(39)+','
                              +mudavp(FloatToStr(m_aliq))+','
                             +mudavp(FloatToStr(m_valor))+')');
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,323,'frm_CapRedZ','CADMI02');
               end;
            end;

         if RG_TIPO.ItemIndex<>1 then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.clear;
            DM1.Query1.SQL.add('Insert into CADRSIN02 ('
                              +' RS2CODEMP, '
                              +' RS2CODIMP, '
                              +' RS2DATA, '
                              +' RS2ALIQ, '
                              +' RS2VALOR) values ('
                              +IntToStr(codemp)+','
                              +IntToStr(codecf)+','
                              +chr(39)+FormatDateTime(fdt, mdatarz)+chr(39)+','
                              +mudavp(FloatToStr(m_aliq))+','
                              +mudavp(FloatToStr(m_valor))+')');
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,346,'frm_Ppal','CADRSIN02');
               end;
            end;
         iRetorno:=iRetorno+16;
         end;
      end;

   // termino do processamento


   messagedlg('Concluido!',mtinformation,[mbok],0);
   end;
Frm_ECF_Comp_MRxNS.Free;
Frm_ECF_Comp_MRxNS:=nil;
CloseFile(f);





{
layout
data reducao    08  01  08
Numero serie    20  09  28
numero do ecf   03  29  31
contador red z  06  32  37
contador reini  06  38  43
GT final        16  44  59
GT inicial      16  60  75
Venda Bruta     16  76  91
Venda Liquida   16  92 107
Cancelamentos   12 108 119
Descontos       12 120 131
Substituiçao    12 132 143
Isençao         12 144 155
Nao incidente   12 156 167
ISSQN           12 168 179
icms            04 180 183
Subst trib      12 184 195
}
end;

procedure TFrm_CapRedZ.MDT1Exit(Sender: TObject);
begin

if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text))
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_CapRedZ.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[MBoK],0);
      MDT2.SetFocus;
      end;
   end;
end;

procedure TFrm_CapRedZ.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CapRedZ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
