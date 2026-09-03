unit S_ResMapaRes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,S_DM1, DB, DBTables,func,S_Agde,lerarq,S_DM4;

type
  TFrm_ResMapaRes = class(TForm)
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    Qr_Notas: TQuery;
    Qr_NotasVDALIQ: TFloatField;
    Qr_NotasISSCUP: TFloatField;
    Qr_NotasISENTAS: TFloatField;
    Qr_NotasSUBTRI: TFloatField;
    Qr_NotasNSDATCUP: TDateTimeField;
    Qr_NotasNSCODECF: TFloatField;
    Qr_NotasNSSERIEECF: TStringField;
    Qr_NotasNSMODECF: TStringField;
    Qr_NotasQTDCUP: TFloatField;
    Qr_NotasOUTRAS: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ResMapaRes: TFrm_ResMapaRes;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_ResMapaRes.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ResMapaRes.BitBtn1Click(Sender: TObject);
var
  mSerieEcf,Buffer, marq: String;
  F: TextFile;
  mSeqEcf, mconred, mcro,mcoo_Inicial,mcoo_final,mvdabrut,mvdaliq,mcupcan,macrecup,mdescup,misscup,misentas,mnaoinc,msubtri: Real;
  m_aliq, m_valor: Real;
  mmodecf: String;
  mdatarz: TDateTime;
  mQtdEcf: Integer;
begin
DM1.Query1.Close;
DM1.Query1.sql.clear;
DM1.Query1.sql.Add('Select count(*) from CADECF ');
DM1.Query1.Open;
mQtdEcf:=DM1.Query1.Fields[0].asinteger;
if mQtdEcf<1 then
   mQtdEcf:=1;


Qr_Notas.Close;
Qr_Notas.SQL.Clear;
Qr_Notas.Sql.add('Select sum(NSTOTNOTA) AS VDALIQ '
                +'       ,sum(NSVISSQN) AS ISSCUP '
                +'        ,sum(NSTOTISEN) AS ISENTAS '
                +'        ,sum(NSTOTRET)  AS SUBTRI '
                +'       ,sum(NSTOTOUT) AS OUTRAS '
                +'        ,count(*) as QTDCUP, '
                +'        NSDATCUP,');
if mQtdEcf<2 then
   Qr_Notas.Sql.add('max(NSCODECF) as NSCODECF, max(NSSERIEECF) as NSSERIEECF,max(NSMODECF) as NSMODECF ')
else
   Qr_Notas.Sql.add('NSCODECF,NSSERIEECF,NSMODECF ');
Qr_Notas.Sql.add('        from CADNS where'
                +iif(DM1.Qr_TID.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+InttoStr(codemp)+' and ')
                +' NSTIPO<>1 and NSSITCUP<>9 '
                +' and NSNUMCUP>0 ');
if Trim(MDT1.Text)<>'/  /' then
   Qr_Notas.SQL.add(' and NSDATCUP>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Notas.SQL.add(' and NSDATCUP<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
 Qr_Notas.SQL.Add(' group by NSDATCUP');
if mQtdEcf>1 then
   Qr_Notas.SQL.Add(',NSCODECF,NSSERIEECF,NSMODECF ');
Qr_Notas.Open;
if Qr_Notas.Eof then
   begin
   Fmensagem('Não ha Registros a ser Restaurados!',0,['0'],0);
   exit;
   end;


Application.CreateForm(TFrm_Agde, Frm_Agde);
mplid:=0;
mpqtd:=Qr_Notas.RecordCount;
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Label2.Visible    :=True;
Frm_Agde.Label1.Caption:='Gerando o Mapa Resumo (ECF)  Através do Arquivo de Notas, aguarde...';
Frm_Agde.Show;
While not Qr_Notas.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   Frm_Agde.Label2.Caption :='Processando Notas. Data: '+FormatDatetime(fdt2, Qr_NotasNSDATCUP.Value);
   verteclado(0);

   mSerieEcf   :=Qr_NotasNSSERIEECF.Value;
   mmodecf     :=Qr_NotasNSMODECF.Value;
   mSeqEcf     :=0;
   mconred     :=0;
   mcro        :=0;
   mcoo_inicial:=0;
   mcoo_final  :=0;
   mvdabrut    :=0;
   mvdaliq     :=Qr_NotasVDALIQ.Value;
   mcupcan     :=0;
   macrecup    :=0;
   mdescup     :=0;
   misscup     :=Qr_NotasISSCUP.Value;
   misentas    :=Qr_NotasISENTAS.Value;
   mnaoinc     :=Qr_NotasOUTRAS.Value;
   if (misentas=mnaoinc) then
      mnaoinc:=0;
   msubtri     :=Qr_NotasSUBTRI.Value;
   m_valor     :=0;

   if flcadmi01(2,0,Qr_NotasNSCODECF.AsString,FormatDateTime(fdt, Qr_NotasNSDATCUP.Value)) then
      begin
      mSerieEcf   :=DM1.Tb_MI01CMSERIE.Value;
      mmodecf     :=DM1.Tb_MI01CMMODDOC.Value;
      mSeqEcf     :=DM1.Tb_MI01CMCODIMP.Value;
      mconred     :=DM1.Tb_MI01CMCONRED.Value;
      mcro        :=DM1.Tb_MI01CMCRO.Value;
      mcoo_inicial:=DM1.Tb_MI01CMCOO.Value;
      mcoo_final  :=DM1.Tb_MI01CMCOO_FINAL.Value;
      mdatarz     :=DM1.Tb_MI01CMDATA.Value;
      end
   else
      begin
      mSerieEcf   :=Qr_NotasNSSERIEECF.Value;
      mSeqEcf     :=Qr_NotasNSCODECF.Value;
      mcro        :=Qr_NotasQTDCUP.Value;
      mdatarz     :=Qr_NotasNSDATCUP.Value;
      mcoo_inicial:=1;
      mcoo_final  :=Qr_NotasQTDCUP.Value;
      mconred     :=Qr_NotasQTDCUP.Value;

      end;

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select sum(NSTOTNOTA) as NOTCAN from CADNS where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+InttoStr(codemp)+' and ')
                     +' NSTIPO<>1 and NSSITCUP=9 '
                     +' and NSNUMCUP>0 '
                     +' and NSDATCUP='+chr(39)+FormatDateTime(fdt, Qr_NotasNSDATCUP.Value)+chr(39));
   DM1.Query2.Open;
   if DM1.Query2.Fields[0].AsFloat>0 then
      mcupcan:=DM1.Query2.Fields[0].AsFloat;

   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.SQL.Add('Select sum(P2TOTDES)  AS TOTDES '
                     +'       ,sum(P2BASEN)  AS BASEN '
                     +'       ,sum(P2BASER)  AS BASER '
                     +'       ,sum(P2ICMSN)  AS ICMSN '
                     +'       ,sum(P2ICMSNR) AS ICMSNR '
                     +'       ,sum(P2BCINR)  AS BCINR '
                     +'       ,sum(P2ICMSR)  AS ICMSR '
                     +'       ,sum(P2VALIPI)  AS VALIPI '
                     +'       ,sum(P2ISENTAS) AS ISENTAS '
                     +'       ,sum(P2TOTOUT)  AS OUTRAS '
                     +'       ,sum(P2TOTLIQ-P2DESCRAT) AS TOTLIQ '
                     +'        ,P2ALIQ,P2ALIQNR,P2ALIPI AS ALIPI '
//                     +'        ,P2SIT,P2ALIQ,P2ALIQNR,P2ALIPI AS ALIPI '
                     +' from CADP01,CADP02,CADNS where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]) ,'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                     +'            P1DATACF='+chr(39)+FormatDateTime(fdt, Qr_NotasNSDATCUP.Value)+chr(39)
                     +' and P1NUMCF>0 '
                     +' and P1CODECF=0'+Qr_NotasNSCODECF.AsString
                     +' and P2CODEMP=P1CODEMP'
                     +' and   P2LOTSEQ=P1LOTSEQ'
                     +' and   P2CHAVE=P1CHAVE'
                     +' and   P2ORDEM=P1ORDEM'
                     +' and   (P2ICMSN+P2ICMSNR)<>0 '
                     +' and NSCODEMP=P1CODEMP '
                     +' and NSLOTSEQ_CP=P1LOTSEQ '
                     +' and NSCHAVEP=P1CHAVE '
                     +' and NSORDEMP=P1ORDEM '
                     +' and NSSITCUP<>9 '
                     +' group by P2ALIQ,P2ALIQNR,P2ALIPI');
   DM1.Query3.Open;

   While not DM1.Query3.eof do
      begin
      mdescup:=mdescup+DM1.Query3.fieldbyname('TOTDES').AsFloat;
      DM1.Query3.Next;
      end;
   mvdabrut    :=mvdaliq+mdescup;
   DM1.Query3.First;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADMI01 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CMCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CMCODIMP=0'+FloatToStr(mSeqEcf)
                     +' and CMDATA='+chr(39)+FormatDateTime(fdt, mdatarz)+chr(39));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,190,'Frm_ResMapaRes','CADMI01');
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADMI02 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADECF',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and ')
                     +' CM2CODIMP=0'+FloatToStr(mSeqEcf)
                     +' and CM2DATA='+chr(39)+FormatDateTime(fdt, mdatarz)+chr(39));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,204,'Frm_ResMapaRes','CADMI01');
      end;

   While not DM1.Query3.Eof do
      begin
      if DM1.Query3.FieldByName('P2ALIQ').AsFloat=0 then
         begin
         DM1.Query3.Next;
         Continue;
         end;
      m_aliq :=DM1.Query3.FieldByName('P2ALIQ').AsFloat;
      m_valor:=DM1.Query3.FieldByName('TOTLIQ').AsFloat;
      DM1.Query3.Next;
      Continue;
      end;
    if (misentas>0) and ((mvdaliq-m_valor)=mvdaliq) then
       misentas:=0;

   DM1.Query3.First;
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
                     +'CMSUBTRI, '
                     +'CMLEMAT) values ('
                     +IntTostr(codemp)+','
                     +FloatToStr(mSeqEcf)+','
                     +chr(39)+mSerieEcf+chr(39)+','
                     +FloatToStr(mSeqEcf)+','
                     +chr(39)+mmodecf+chr(39)+','
                     +chr(39)+FormatDateTime(fdt, mdatarz)+chr(39)+','
                     +mudaVP(FloatToStr(mconred))+','
                     +mudaVP(FloatToStr(mcoo_Inicial))+','
                     +mudaVP(FloatToStr(mcoo_final))+','
                     +mudaVP(FloatToStr(mcro))+','
                     +mudaVP(FloatTostr(mvdabrut+mcupcan))+','
                     +mudaVP(FloatToStr(mvdaliq))+','
                     +mudaVP(FloatToStr(mcupcan))+','
                     +mudaVP(FloatTostr(macrecup))+','
                     +mudaVP(FloatToStr(mdescup))+','
                     +mudaVP(FloatToStr(misscup))+','
                     +mudaVP(FloatToStr(misentas))+','
                     +mudaVP(FloatToStr(mnaoinc))+','
//                     +mudavp(FloatToStr(msubtri))+','
                     +mudavp(FloatToStr(mvdaliq-m_valor))+','
                     +'0'
                     +')');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,190,'Frm_ResMapaRes','CADMI01');
      exit;
      end;
   if msubtri+0.01<mvdaliq then
      begin
      While not DM1.Query3.Eof do
         begin
         if DM1.Query3.FieldByName('P2ALIQ').AsFloat=0 then
            begin
            DM1.Query3.Next;
            Continue;
            end;
         m_aliq :=DM1.Query3.FieldByName('P2ALIQ').AsFloat;
         m_valor:=DM1.Query3.FieldByName('TOTLIQ').AsFloat;
         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.add('Insert into CADMI02 ('
                           +' CM2CODEMP, '
                           +' CM2CODIMP, '
                           +' CM2DATA, '
                           +' CM2ALIQ, '
                           +' CM2VALOR) values ('
                           +IntToStr(codemp)+','
                           +FloatToStr(mSeqEcf)+','
                           +chr(39)+FormatDateTime(fdt, mdatarz)+chr(39)+','
                           +mudavp(FloatToStr(m_aliq))+','
                          +mudavp(FloatToStr(m_valor))+')');
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,283,'Frm_ResMapaRes','CADMI02');
            end;
         DM1.Query3.Next;
         end;
      end;
   Qr_Notas.Next;
   end;
Frm_Agde.gb_progres.Visible:=False;
Frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);
end;



procedure TFrm_ResMapaRes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ResMapaRes.FormCreate(Sender: TObject);
begin
MDT1.Text:=FormatDateTime(fdt2, date);
MDT2.Text:=FormatDateTime(fdt2, date);

end;

end.
