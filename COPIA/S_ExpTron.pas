unit S_ExpTron;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, S_DM1, S_DM5, func, db, dbtables, Grids, DBGrids,
  StdCtrls, Mask, Buttons, S_LRS, S_LRE, S_Pgb,lerarq,S_Stru,S_UF,S_DefBac;

type
  TFrm_ExpTron = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    RGTNF: TRadioGroup;
    Label3: TLabel;
    UF: TEdit;
    Label4: TLabel;
    bbSair: TBitBtn;
    NOMUF: TEdit;
    BitBtn1: TBitBtn;
    Qr_Tempor: TQuery;
    MPASTA: TEdit;
    RG_DOC: TRadioGroup;
    SB01: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    CODCONAV: TEdit;
    CODCONAP: TEdit;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure UFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UFExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SB01Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCONAVExit(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Frm_ExpTron: TFrm_ExpTron;
  mRegistro: array[1..22] of string;
  mpag,mlin: Integer;
  mlinha,marq: String;
  mtot10, mtot11, mtot50, mtot51, mtot53,mtot54: Real;
  mtot55, mtot60, mtot61, mtot70, mtot71,mtot74: Real;
  mtot75, mtot90: Real;

  mtot60M, mtot60A, mtot60D, mtot60I, mtot60R: Real;

  mcodcon: Integer;
  mdatai, mdataf: TDateTime;
  f: TextFile;
  fdt4: String;
implementation

uses func_excecoes, S_Impres, S_Agde, S_DM4;


{$R *.dfm}

procedure TFrm_ExpTron.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpTron.FormCreate(Sender: TObject);
var
dia,mes,ano : Word;
begin
DecodeDate(date, ano,mes,dia);
if dia<28 then
   begin
   mes:=mes-1;
   if mes<1 then
      begin
      mes:=12;
      ano:=ano-1;
      end;
   end;
mdt1.Text:='01/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano);
mdt2.Text:=FormatDateTime(fdt2, fdatafinal(1,StrToDate(mdt1.Text)));
Application.CreateForm(TFrm_Stru, Frm_Stru);
DM5.Qr_NS.Close;
DM5.Qr_NE.Close;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

if flfilpad(0,'_EXPTRON','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CODCONAV',[]) then
      CODCONAV.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CODCONAP',[]) then
      CODCONAP.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   end;



end;

procedure TFrm_ExpTron.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Frm_Stru.Free;
Frm_Stru:=nil;
end;

procedure TFrm_ExpTron.UFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   UF.Text:=fChamaUF(0,'frm_ExpTorn','');
   end;

end;

procedure TFrm_ExpTron.UFExit(Sender: TObject);
begin
if Trim(UF.Text)='' then
   NOMUF.Text:='Todos...'
else
   begin
   if not flcaduf(0,0,0,UF.Text) then
      begin
      verteclado(0);
      MessageDlg('Estado Não Cadastrado!',mtWarning,[mbOk],0);
      UF.SetFocus;
      end
   else
      NOMUF.Text:=DM1.Tb_UFPNOM.Value;
   end;

end;



procedure TFrm_ExpTron.BitBtn1Click(Sender: TObject);
var
fcab   : TextFile;
fTrib  : TextFile;
fProd  : TextFile;
FNFrete: TextFile;
fProduto: TextFile;
fItemCup: TextFile;
fEmitente: TextFile;

mlinha : String;
mespaco: String;
x: Integer;
mSeqFrete,mSequencia,mseqTrib,mseqProd: Integer;
mtmp_Emit: String;
mfrete   : Real;

minstrucao_qrns: string;

begin
DM5.Qr_NS.Close;
DM5.Qr_NE.Close;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

fdt4:='DD/MM/YY';
if trim(MDT1.Text)='/  /' then
   begin
   verteclado(0);
   MessageDlg('Data Inicial tem que ser preenchida!',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   exit;
   end;
if trim(MDT2.Text)='/  /' then
   begin
   verteclado(0);
   MessageDlg('Data Final tem que ser preenchida!',mtWarning,[mbOk],0);
   MDT2.SetFocus;
   exit;
   end;

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text) > StrToDate(MDT2.Text) then
      begin
      verteclado(0);
      MessageDlg('Invalido!. Data Inicial Maior que Final',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

DM5.Tb_Pro.Close;
DM5.Tb_Pro.Open;

mtmp_Emit :=fProcTemp(11);
if DM5.Tb_Emit.Active then
   DM5.Tb_Emit.Close;
if DM5.Tb_Emit.Exists then
   DM5.Tb_Emit.DeleteTable;
DM5.Tb_Emit.TableName:=mtmp_Emit;
DM5.Tb_Emit.CreateTable;
DM5.Tb_Emit.Open;


Application.CreateForm(Tfrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Gerando arquivo, Aguarde...';
Frm_Agde.Show;
verteclado(0);
DM5.Qr_Ns.Sql.Clear;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

minstrucao_qrns:='';

IF RGTNF.ItemIndex<>2 then
   begin
   if RG_DOC.ItemIndex<>2 then
      begin
      minstrucao_qrns:=
      fLerdm5qrns(iif(RG_DOC.ItemIndex=1,true,false),minstrucao_qrns, 2,RG_DOC.ItemIndex,0,0,fStringtodatetime(MDT1.Text),fStringtodatetime(MDT2.Text),uf.text);
      end;

   if RG_DOC.ItemIndex<>1 then
      begin
      if RG_DOC.ItemIndex=0 then
          minstrucao_qrns:=minstrucao_qrns+' union all ';
       minstrucao_qrns:=
      fLerdm5qrns(true,minstrucao_qrns, 2,RG_DOC.ItemIndex,0,0,fStringtodatetime(MDT1.Text),fStringtodatetime(MDT2.Text),uf.text);
      end;
   end;

if RGTNF.ItemIndex<>1 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADFOR' ,'FCODEMP','NECODEMP' ,'FCODFOR' ,'NECODFOR');

   DM5.QR_NE.Close;
   DM5.Qr_NE.SQL.Clear;
   DM5.Qr_Ne.SQL.Add('Select  NECODEMP, NECODFOR '
                    +'       ,NENUMERO '
                    +'       ,NESERIE '
                    +'       ,TO_CHAR(NECFO) AS NECFO '
                    +'       ,NEDTENT '
                    +'       ,NEDTEMIS '
                    +'       ,NESUBSER '
                    +'        ,NEBASEN '
                    +'       ,NEICMSN '
                    +'       ,NEBASER '
                    +'       ,NEICMSR '
                    +'       ,NEFRETE '
                    +'       ,NEALIQ_FRETE '
                    +'       ,NEICMS_FRETE '
                    +'       ,NESEG '
                    +'       ,NEOUTRAS '
                    +'       ,NEOUTRAS_ALIQ '
                    +'       ,NEOUTRAS_IMP '

                    +'       ,NEIPI '
                    +'       ,NETOTMER '
                    +'       ,NETOTNOT '
                    +'        ,NETOTDES '
                    +'       ,NETOTPOS '
                    +'       ,NETOTNEG '
                    +'       ,NETOTINA '
                    +'       ,NECHAVEP '
                    +'       ,(NECHAVEP-NECHAVEP) AS NEORDEM '
                    +'       ,NEALIQ '
                    +'        ,NETIPO '
                    +'       ,NEAVAP '
                    +'       ,NEMODELO '
                    +'       ,FUF '
                    +'       ,NESTATUS '
                    +'        ,FRAZAO '
                    +'       ,FCGC '
                    +'       ,FIE '
                    +'       ,NEIPIFRETE '
                    +'       ,NELOTSEQ_CP '
                    +'       ,NEISENTAS '
                    +'       ,NEFRETEPC '
                    +'       ,NEOUTNINC+NEOUTDESP AS NEOUTNINC  '
                    +'       ,NEOUTDESP '
                    +'       ,'+chr(39)+'E'+chr(39)+' AS ORIGEM '
                    +'        FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                 +' NESTATUS<9 ');
   if Trim(MDT1.Text)<>'/  /' then
      DM5.Qr_NE.SQL.Add(' and  NEDTENT>='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM5.Qr_NE.SQL.Add(' and  NEDTENT<='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT2.Text))+chr(39));


   DM5.Qr_Ne.SQL.add(' union ');

   // inicio das saidas

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

   DM5.Qr_Ne.SQL.Add('Select  NSCODEMP AS  NECODEMP, NSCODCLI AS NECODFOR '
                    +'       ,NSNUMERO AS NENUMERO '
                    +'       ,NSSERIE AS NESERIE '
                    +'       ,NSCFO1 AS NECFO '
                    +'       ,NSDTEMIS AS NEDTENT '
                    +'       ,NSDTEMIS AS NEDTEMIS '
                    +'       ,NSSUBSER AS NESUBSER '
                    +'       ,NSBASEN AS NEBASEN '
                    +'       ,NSICMSN AS NEICMSN '
                    +'       ,(NSBASERP+NSBASERN+NSBASERI) AS NEBASER '
                    +'       ,(NSICMSRP+NSICMSRN+NSICMSRI) AS NEICMSR '
                    +'       ,NSFRETE AS NEFRETE '
                    +'       ,0 AS NEALIQ_FRETE '
                    +'       ,0 AS NEICMS_FRETE '
                    +'       ,NSICMS_BCSEG AS NESEG '
                    +'       ,0  AS NEOUTRAS '
                    +'       ,0 AS NEOUTRAS_ALIQ '
                    +'       ,0 AS NEOUTRAS_IMP '

                    +'       ,(NSIPIP+NSIPIN+NSIPII) AS NEIPI '
                    +'       ,(NSTOTPROP+NSTOTPRON+NSTOTPROI) AS NETOTMER '
                    +'       ,NSTOTNOTA AS NETOTNOT '
                    +'       ,(NSTOTNOTA-NSTOTNOTA) AS  NETOTDES '
                    +'       ,NSTOTPROP AS NETOTPOS '
                    +'       ,NSTOTPRON AS  NETOTNEG '
                    +'       ,NSTOTPROI AS  NETOTINA '
                    +'       ,NSCHAVEP  AS NECHAVEP '
                    +'       ,NSORDEMP  AS NEORDEM '
                    +'       ,NSALIQ   AS NEALIQ '
                    +'       ,NSTIPO  AS NETIPO '
                    +'       ,NSAVAP  AS NEAVAP '
                    +'       ,NSMODELO AS NEMODELO '
                    +'       ,CUF AS  FUF '
                    +'       ,NSSTATUS AS NESTATUS '
                    +'       ,CRAZAO AS  FRAZAO '
                    +'       ,CCNPJ AS  FCGC '
                    +'       ,CIE AS FIE '
                    +'       ,(NSTOTNOTA-NSTOTNOTA) AS NEIPIFRETE '
                    +'       ,NSLOTSEQ_CP AS  NELOTSEQ_CP '
                    +'       ,NSTOTISEN AS  NEISENTAS '
                    +'       ,NSFRETEPC AS NEFRETEPC '
                    +'       ,(NSTOTOUT) AS NEOUTNINC '
                    +'       , 0 AS NEOUTDESP '
                    +'       ,'+chr(39)+'S'+chr(39)+' AS ORIGEM '
                    +'        FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                 +' NSSTATUS<10 ');
   if Trim(MDT1.Text)<>'/  /' then
      DM5.Qr_NE.SQL.Add(' and  NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM5.Qr_NE.SQL.Add(' and  NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT2.Text))+chr(39));

   DM5.Qr_Ne.SQL.Add(' and NSTIPO=1 ');


   // termino das saidas




   DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');
//   DM5.Qr_Ne.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   DM5.Qr_NE.Open;

   end;

if Trim(MPASTA.Text)='' then
   MPASTA.Text:='\';
if not DirectoryExists(MPASTA.Text) then
   begin
   verteclado(0);
   MessageDlg('Pasta destino não Encontrada!',mtWarning,[mbOk],0);
   exit;
   end;
MPASTA.Text:=Trim(MPASTA.Text);
if MPASTA.Text[length(MPASTA.Text)]<>'\' then
   MPASTA.Text:=MPASTA.Text+'\';
// notas de Entradas
Assignfile(fCab,   MPASTA.Text+'EFEN.TXT');
Assignfile(fTrib,  MPASTA.Text+'ENTB.TXT');
Assignfile(fProd,  MPASTA.Text+'PEEN.TXT');
Assignfile(fNFrete,MPASTA.Text+'ENCF.TXT');
Rewrite(fcab);
Rewrite(fTrib);
Rewrite(fProd);
Rewrite(fNFrete);
mespaco:=' ';
mSeqFrete :=0;
mSequencia:=0;
mseqTrib  :=0;
mseqProd  :=0;
While not DM5.Qr_Ne.eof do
   begin
   if (DM5.Qr_NeNECFO.AsFloat>1350) and (DM5.Qr_NeNECFO.AsFloat<1357) then
      begin
      mSeqFrete:=mSeqFrete+1;
      mlinha:=insere(FormatFloat('000000',mSeqFrete),' ',6);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+FormatDateTime(fdt2, DM5.Qr_NeNEDTEMIS.Value);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere2(DM5.Qr_NeNEMODELO.Value,' ',2);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere2(DM5.Qr_NeNESERIE.Value,' ',2);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere2(DM5.Qr_NeNESUBSER.Value,' ',2);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere(FormatFloat('000000', DM5.Qr_NeNENUMERO.Value),' ',6);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere(FormatFloat('000000', DM5.Qr_NeNETOTNOT.Value*100),' ',12);
      Writeln(fNFrete,mlinha);
      end
   else
      begin
{
      mSequencia:=mSequencia+1;
      mlinha:=insere2('NF',' ',2);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere2(DM5.Qr_NeNESERIE.Value,' ',4);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere(DM5.Qr_NeNENUMERO.AsString,'0',6);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere2(FormatFloat('00000000000000', DM5.Qr_Necgc.Value),' ',14);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere2(DM5.Qr_Nedia_ent.Value,' ',2);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+FormatDateTime(fdt4, DM5.Qr_NeNEDTEMIS.Value);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNETOTNOT.Value*100),' ',14);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere(FormatFloat('0000', DM5.Qr_NeNECFO.AsFloat),' ',4);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+FormatDateTime(fdt4, DM5.Qr_NeNEDTENT.Value);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere(FormatFloat('000000', mSequencia),' ',6);
      mlinha:=mlinha+mespaco;
      if DM5.Qr_NeNEAVAP.Value=1 then
         mlinha:=mlinha+insere(CODCONAV.Text,'0',4)
      else
         mlinha:=mlinha+insere(CODCONAP.Text,'0',4);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere(DM5.Qr_Nesit.Value,' ',1);
      Writeln(fcab,mlinha);
}
      if not DM5.Tb_Emit.FindKey([FormatFloat('00000000000000', fsonumero(DM5.Qr_Necgc.Value))]) then
         begin
         flcadfor(1,0,DM5.Qr_NeNECODFOR.AsString);
         DM5.Tb_Emit.Append;
         DM5.Tb_EmitCNPJCPF.Value :=FormatFloat('00000000000000', fsonumero(DM5.Qr_Necgc.Value));
         DM5.Tb_EmitNOME.Value    :=DM5.Qr_NeFRAZAO.Value;
         DM5.Tb_EmitCIDADE.Value  :=DM1.Tb_ForFCIDADE.Value;
         DM5.Tb_EmitUF.Value      :=DM1.Tb_ForFUF.Value;
         DM5.Tb_EmitINSC_EST.Value:=DM1.Tb_ForFIE.Value;
         DM5.Tb_EmitENDERECO.Value:=DM1.Tb_ForFNLOG.Value;
         DM5.Tb_EmitBAIRRO.Value  :=DM1.Tb_ForFBAIRRO.Value;
         DM5.Tb_EmitCEP.Value     :=DM1.Tb_ForFCEP.Value;
         DM5.Tb_EmitPAIS.Value    :='BRASIL';
         DM5.Tb_EmitFONE.Value    :=fdeixanum(DM1.Tb_ForFFONE.Value);
         DM5.Tb_EmitFAX.Value     :=fdeixanum(DM1.Tb_ForFFAX.Value);
         DM5.Tb_Emit.Post;
         end;

     if DM5.Qr_NeORIGEM.Value='S' then
        begin
        DM5.Qr_PSintESoma.Close;
        DM5.Qr_PSintESoma.SQL.Clear;
        DM5.Qr_PSintESoma.SQL.add('Select sum(P2TOTDES)   as TOTDES '
                                 +'      ,sum(P2BASEN+P2BCINR)  as BASEN '
                                 +'      ,sum(P2BASER)    as BASER '
                                 +'      ,sum(P2ICMSN+P2ICMSNR)  as ICMSN '
                                 +'      ,sum(P2ICMSR)    as ICMSR '
                                 +'      ,sum(P2VALIPI)      as IPI '
                                 +'      ,sum(P2ISENTAS)  as ISENTAS '
                                 +'      ,sum(P2TOTOUT)   as OUTRAS '
                                 +'      ,sum((P2QTD*P2PRECO)-P2TOTDES) AS TOTLIQ '
                                 +'      ,max(P2ALIPI)  as PF2ALIPI '
                                 +'      ,P2CFO AS PF2CFO'
                                 +'      ,'+chr(39)+'   '+chr(39)+' as PF2CFOP_COMP '
                                 +'      ,P2ALIQ AS PF2ALIQ' 
                                 +'      ,P2ALIQNR AS PF2ALIQNR '
                                 +'       from CADP02 where P2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                                 +'       and P2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                                +'       and P2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                                +'       and P2ORDEM=0'+DM5.Qr_NeNEORDEM.AsString
                                 +'       group by P2CFO,P2ALIQ,P2ALIQNR ');
        DM5.Qr_PSintESoma.Open;

        end
     else
        begin
        DM5.Qr_PSintESoma.Close;
        DM5.Qr_PSintESoma.SQL.Clear;
        DM5.Qr_PSintESoma.SQL.add('Select sum(PF2TOTDES)   as TOTDES '
                                 +'      ,sum(PF2BASEN)    as BASEN '
                                 +'      ,sum(PF2BASER)    as BASER '
                                 +'      ,sum(PF2ICMSN)    as ICMSN '
                                 +'      ,sum(PF2ICMSR)    as ICMSR '
                                 +'      ,sum(PF2IPI)      as IPI '
                                 +'      ,sum(PF2ISENTAS)  as ISENTAS '
                                 +'      ,sum(PF2OUTRAS)   as OUTRAS '
                                 +'      ,sum((PF2QTDP*PF2PU)-PF2TOTDES) AS TOTLIQ '
                                 +'      ,max(PF2ALIPI)  as PF2ALIPI '
                                 +'      ,PF2CFO'
                                 +'      ,max(PF2CFOP_COMP) as PF2CFOP_COMP '
                                 +'                              ,PF2ALIQ,PF2ALIQNR '
                                 +'       from CADPF2 where PF2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                                 +'       and PF2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                                +'       and PF2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                                 +'       group by PF2CFO,PF2ALIQ,PF2ALIQNR ');
        DM5.Qr_PSintESoma.Open;
        end;
      mfrete   :=DM5.Qr_NeNEFRETE.AsFloat;

      While not DM5.Qr_PSintESoma.Eof do
         begin
         mSequencia:=mSequencia+1;
         mlinha:=insere2('NF',' ',2);

         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(DM5.Qr_NeNESERIE.Value,' ',4);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(DM5.Qr_NeNENUMERO.AsString,'0',6);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(FormatFloat('00000000000000', fsonumero(DM5.Qr_Necgc.Value)),' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(DM5.Qr_Nedia_ent.Value,' ',2);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+FormatDateTime(fdt4, DM5.Qr_NeNEDTEMIS.Value);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_PSintESomaTOTLIQ.AsFloat+mfrete)*100),' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(FormatFloat('0000', DM5.Qr_PSintESomaPF2CFO.AsFloat),' ',4);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+FormatDateTime(fdt4, DM5.Qr_NeNEDTENT.Value);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(FormatFloat('000000', mSequencia),' ',6);
         mlinha:=mlinha+mespaco;
         if DM5.Qr_NeNEAVAP.Value=1 then
            mlinha:=mlinha+insere(CODCONAV.Text,'0',4)
         else
            mlinha:=mlinha+insere(CODCONAP.Text,'0',4);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(DM5.Qr_Nesit.Value,' ',1);
         Writeln(fcab,mlinha);
         mfrete:=0;
         if DM5.Qr_PSintESomaBASEN.Value>0 then
            begin
            mseqtrib:=mseqtrib+1;
            mlinha:=insere(FormatFloat('000000', mseqtrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_PSintESomaBASEN.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_PSintESomaPF2ALIQ.Value*100),' ',04);
            Writeln(fTrib,mlinha);
            end;


         if DM5.Qr_PSintESomaBASER.Value>0 then
            begin
            mseqtrib:=mseqtrib+1;
            mlinha:=insere(FormatFloat('000000', mseqtrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'6';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_PSintESomaBASER.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04);
            Writeln(fTrib,mlinha);
            end;
         if DM5.Qr_PSintESomaICMSR.Value>0 then
            begin
            mseqtrib:=mseqtrib+1;
            mlinha:=insere(FormatFloat('000000', mseqtrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'7';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_PSintESomaICMSR.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04);
            Writeln(fTrib,mlinha);
            end;
         if DM5.Qr_PSintESomaISENTAS.Value>0 then
            begin
            mseqtrib:=mseqtrib+1;
            mlinha:=insere(FormatFloat('000000', mseqtrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'2';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_PSintESomaISENTAS.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04);
            Writeln(fTrib,mlinha);
            end;
// inicio
         if (DM5.Qr_PSintESomaBASEN.AsFloat
            +DM5.Qr_PSintESomaBASER.Value
            +DM5.Qr_PSintESomaISENTAS.Value
            +DM5.Qr_PSintESomaOUTRAS.Value)=0 then
            begin
            mseqTrib:=mseqTrib+1;
            mlinha:=insere(FormatFloat('000000', mseqTrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'3';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_PSintESomaTOTLIQ.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04); //  cred outorgado

            Writeln(fTrib,mlinha);
            end;


// termino

         if DM5.Qr_PSintESomaIPI.Value>0 then
            begin
            mseqtrib:=mseqtrib+1;
            mlinha:=insere(FormatFloat('000000', mseqtrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'2';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.add('Select sum((PF2QTDP*PF2PU)-PF2TOTDES) AS TOTLIQ '
                              +'       from CADPF2 where PF2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                              +'       and PF2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                              +'       and PF2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                              +'       and PF2IPI>0');
            DM1.Query2.Open;
            mlinha:=mlinha+insere(Formatfloat('000', DM1.Query2.Fields[0].AsFloat*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_PSintESomaIPI.Value),' ',04);
            Writeln(fTrib,mlinha);
            end;
         DM5.Qr_PSintESoma.Next;
         end;

      if DM5.Qr_NeORIGEM.Value='S' then
         begin
         DM5.Qr_Pro.Close;
         DM5.Qr_Pro.SQL.Clear;
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(1,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');

         DM5.Qr_Pro.SQL.Add('Select P2ITEM    AS ITEM '
                  +'       ,P2QTD       AS QTD '
                  +'       ,P2PRECO      AS PCOUNIT '
                  +'       ,P2CODPRO   AS CODPRO '
                  +'       ,P2TOTDES  AS TOTDES '
                  +'       ,P2BASEN   AS BASEN '
                  +'       ,P2BASER   AS BASER '
                  +'       ,P2ICMSN   AS ICMSN '
                  +'       ,P2ICMSNR   AS ICMSNR '
                  +'       ,P2BCINR   AS BCINR '
                  +'       ,P2ICMSR   AS ICMSR '
                  +'       ,P2ALIPI   AS ALIPI '
                  +'       ,P2VALIPI     AS VALIPI '
                  +'       ,P2ISENTAS AS ISENTAS '
                  +'       ,P2TOTOUT  AS OUTRAS '
                  +'       ,(P2PRECO*P2QTD)-P2TOTDES AS TOTLIQ '
                  +'       ,P2SIT     AS SITTRI '
                  +'       ,P2CFO, P2CFO AS CFONF,  P2ALIQ AS P2ALIQ, P2ALIQNR AS P2ALIQNR'
                  +'       ,PDCODPRO AS PDCODPRO '
                  +'       ,PDNOME   AS PDNOME '
                  +'       ,PDCLAS   AS PDCLAS'
                  +'       ,PDUND    AS PDUND'
                  +'       ,PDSIT    AS PDSIT'
                  +'       ,PDTABICM AS PDTABICM'
                  +'       ,PDPRECO1 AS PDPRECO1'
                  +'       ,PDIPI   AS PDIPI'
                  +'       ,PDMARCA AS PDMARCA'
                  +'       ,PDCODNCM AS PDCODNCM');
          DM5.Qr_Pro.Sql.add(',case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end as NOMPRO_ORI '
                       +'       ,DECODE(P2CODPRO_ORI,null,to_char(PDCODPRO),'+chr(39)+' '+chr(39)+',to_char(PDCODPRO),'
                       +' P2CODPRO_ORI) as CODPRO_ORI ');
          DM5.Qr_Pro.Sql.add(' from CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +'   P2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                  +' and   P2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                  +' and   P2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                  +' and   P2ORDEM=0'+DM5.Qr_NeNECHAVEP.AsString
                  +' Order by P2ITEM ');
         DM5.Qr_Pro.sQL.SAVETOFILE('C:\SQL1.TXT');                  
         DM5.Qr_Pro.Open;
         end
      else
         begin
         DM5.Qr_Pro.Close;
         DM5.Qr_Pro.SQL.Clear;
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(1,'CADPRO' ,'PDCODEMP','PF2CODEMP' ,'PDCODPRO' ,'PF2CODPRO');

         DM5.Qr_Pro.SQL.Add('Select PF2ITEM    AS ITEM '
                  +'       ,PF2QTDP     AS QTD '
                  +'       ,PF2PU       AS PCOUNIT '
                  +'       ,PF2CODPRO   AS CODPRO '
                  +'        ,PF2TOTDES  AS TOTDES '
                  +'        ,PF2BASEN   AS BASEN '
                  +'        ,PF2BASER   AS BASER '
                  +'        ,PF2ICMSN   AS ICMSN '
                  +'        ,PF2ICMSN-PF2ICMSN   AS ICMSNR '
                  +'        ,PF2BASEN-PF2BASEN   AS BCINR '
                  +'        ,PF2ICMSR   AS ICMSR '
                  +'        ,PF2ALIPI   AS ALIPI '
                  +'        ,PF2IPI     AS VALIPI '
                  +'        ,PF2ISENTAS AS ISENTAS '
                  +'        ,PF2OUTRAS  AS OUTRAS '
                  +'        ,(PF2PU*PF2QTDP)-PF2TOTDES AS TOTLIQ '
                  +'        ,PF2SIT     AS SITTRI '
                  +'        ,PF2CFO, P2CFO AS CFONF, PF2ALIQ AS P2ALIQ, PF2ALIQ-PF2ALIQ AS P2ALIQNR'
                  +'       ,PDCODPRO AS PDCODPRO '
                  +'       ,NVL(TRIM(PF2NOMPRO),PDNOME) AS PDNOME '
                  +'       ,PDCLAS   AS PDCLAS'
                  +'       ,PDUND    AS PDUND'
                  +'       ,PDSIT    AS PDSIT'
                  +'       ,PDTABICM AS PDTABICM'
                  +'       ,PDPRECO1 AS PDPRECO1'
                  +'       ,PDIPI   AS PDIPI'
                  +'       ,PDMARCA AS PDMARCA'
                  +'       ,PDCODNCM AS PDCODNCM');
            DM5.Qr_Pro.Sql.add(',PDNOME as NOMPRO_ORI '
                  +'       ,TO_CHAR(PDCODPRO) as CODPRO_ORI ');
            DM5.Qr_Pro.Sql.add(' from CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +'  PF2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                  +' and   PF2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                  +' and   PF2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                  +' Order by PF2ITEM ');
         DM5.Qr_Pro.sQL.SAVETOFILE('C:\SQL1.TXT');
         DM5.Qr_Pro.Open;
         end;

      While not DM5.Qr_Pro.Eof do
         begin
         mseqProd:=mseqProd+1;
         mlinha:=insere(FormatFloat('000000', mseqProd),'0',6);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(DM5.Qr_ProCODPRO.AsString,' ',6);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+'1';
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('0000', DM5.Qr_ProQTD.Value*1000),' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProPCOUNIT.Value*100),' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProVALIPI.Value*100),' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProP2ALIQ.Value*100),' ',04);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(DM5.Qr_ProSITTRI.Value,' ',03);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', 0),' ',12);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProTOTDES.Value*100),' ',12);
         Writeln(fProd,mlinha);
         if not DM5.Tb_Pro.Locate('CODPRO_ORI',DM5.Qr_ProCODPRO_ORI.AsString,[]) then
            begin
            flcadpro(1,0,0,DM5.Qr_ProCODPRO.AsString);
            DM5.Tb_Pro.Append;
            DM5.Tb_ProCODPRO.Value     :=DM5.Qr_ProCODPRO_ORI.Value;
            if (DM5.Qr_ProNOMPRO_ORI.AsString)='' then
               DM5.Tb_ProDESCRICAO.Value  :=DM1.Tb_ProPDNOME.Value
            else
               DM5.Tb_ProDESCRICAO.Value  :=DM5.Qr_ProNOMPRO_ORI.AsString;
            DM5.Tb_ProCLAS_FISCAL.Value:=DM1.Tb_ProPDCLAS.Value;
            DM5.Tb_ProUNIDADE.Value    :=DM1.Tb_ProPDUND.Value;
            DM5.Tb_ProSITTRI.Value     :=DM1.Tb_ProPDSIT.Value;
            if DM1.Tb_ProPDSIT.Value[2]='4' then
               begin
               DM5.Tb_ProALIQEST.Value :=0;
               DM5.Tb_ProALIQINT.Value :=0;
               DM5.Tb_ProRED.Value     :=0;
               end
            else
               begin
               DM1.Query2.Close;
               DM1.Query2.SQL.Clear;
               DM1.Query2.SQL.Add('Select PICMSA,PICMSB,PREDUTNA,PREDUTNB from CADUF where '
                                 +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                 +' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
               DM1.Query2.Open;
               if DM1.Tb_ProPDTABICM.Value='B' then
                  begin
                  DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[1].AsFloat;
                  DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[3].AsFloat;
                  end
               else
                  begin
                  DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[0].AsFloat;
                  DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[2].AsFloat;
                  end;
               DM1.Query2.Close;
               DM1.Query2.SQL.Clear;
               DM1.Query2.SQL.Add('Select max(PICMSA),max(PICMSB) from CADUF where '
                                 +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                 +' PUF<>'+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
               DM1.Query2.Open;
               if DM1.Tb_ProPDTABICM.Value='B' then
                  DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[1].AsFloat
               else
                  DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[0].AsFloat;
               end;
            DM5.Tb_ProALIQIPI.Value      :=DM1.Tb_ProPDIPI.Value;
            DM5.Tb_ProVALIPI.Value       :=DM1.Tb_ProPDPRECO1.Value*DM1.Tb_ProPDIPI.Value/100;
            DM5.Tb_ProREFERENCIA.Value   :=DM1.Tb_ProPDMARCA.Value;
            DM5.Tb_ProCREDOUT.Value      :=0;
            DM5.Tb_Pro.Post;
            end;
         DM5.Qr_Pro.Next;
         end;
      end;
   DM5.Qr_Ne.Next;
   end;

CloseFile(fcab);
CloseFile(fTrib);
CloseFile(fProd);
CloseFile(fNFrete);

// notas de Saidas


Assignfile(fCab,    MPASTA.Text+'EFSD.TXT');
Assignfile(fTrib,   MPASTA.Text+'SDTB.TXT');
Assignfile(fProd,   MPASTA.Text+'PESD.TXT');
Assignfile(fNFrete, MPASTA.Text+'SDCF.TXT');
Assignfile(fProduto,MPASTA.Text+'PROD.TXT');
Assignfile(fItemCup,MPASTA.Text+'CFPR.TXT');
Assignfile(fEmitente,MPASTA.Text+'EMIT.TXT');

Rewrite(fcab);
Rewrite(fTrib);
Rewrite(fProd);
Rewrite(fNFrete);
Rewrite(fProduto);
Rewrite(fItemCup);
Rewrite(fEmitente);
mespaco:=' ';
mSeqFrete :=0;
mSequencia:=0;
mseqTrib  :=0;
mseqProd  :=0;
While not DM5.Qr_NS.eof do
   begin
   if DM5.Qr_NSNSNUMERO.Value=0 then
      begin
      DM5.Qr_NS.Next;
      Continue;
      end;
   if (DM5.Qr_NSNSCFO1.Value>'1350') and (DM5.Qr_NSNSCFO1.Value<'1357') then
      begin
      mSeqFrete:=mSeqFrete+1;
      mlinha:=insere(FormatFloat('000000',mSeqFrete),' ',6);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+FormatDateTime(fdt2, DM5.Qr_NSNSDTEMIS.Value);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere2(DM5.Qr_NSNSMODELO.Value,' ',2);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere2(DM5.Qr_NSNSSERIE.Value,' ',2);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere2(DM5.Qr_NSNSSUBSER.Value,' ',2);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere(FormatFloat('000000', DM5.Qr_NSNSNUMERO.Value),' ',6);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+insere(FormatFloat('000000', DM5.Qr_NSNSTOTNOTA.Value*100),' ',12);
      Writeln(fNFrete,mlinha);
      end
   else
      begin

      if not DM5.Tb_Emit.FindKey([DM5.Qr_Nscgc.Value]) then
         begin
         flcadcli(1,0,DM5.Qr_NSNSCODCLI.AsString);
         DM5.Tb_Emit.Append;
         DM5.Tb_EmitCNPJCPF.Value :=DM5.Qr_NScgc.Value;
         DM5.Tb_EmitNOME.Value    :=DM1.Tb_CliCRAZAO.Value;
         DM5.Tb_EmitCIDADE.Value  :=DM1.Tb_CliCCIDADE.Value;
         DM5.Tb_EmitUF.Value      :=DM1.Tb_CliCUF.Value;
         DM5.Tb_EmitINSC_EST.Value:=DM1.Tb_CliCIE.Value;
         DM5.Tb_EmitENDERECO.Value:=DM1.Tb_CliCLOG.Value;
         DM5.Tb_EmitBAIRRO.Value  :=DM1.Tb_CliCBAIRRO.Value;
         DM5.Tb_EmitCEP.Value     :=DM1.Tb_CliCCEP.Value;
         DM5.Tb_EmitPAIS.Value    :='BRASIL';
         DM5.Tb_EmitFONE.Value    :=fdeixanum(DM1.Tb_CliCFONERES.Value);
         DM5.Tb_EmitFAX.Value     :=fdeixanum(DM1.Tb_CliCFONECOM.Value);
         DM5.Tb_Emit.Post;
         end;
      DM5.Qr_ProSoma.Close;
      DM5.Qr_ProSoma.SQL.Clear;
      DM5.Qr_ProSoma.SQL.Add('Select sum(P2TOTDES)  AS TOTDES '
                            +'       ,sum(P2BASEN)  AS BASEN '
                            +'       ,sum(P2BASER)  AS BASER '
                            +'       ,sum(P2ICMSN)  AS ICMSN '
                            +'       ,sum(P2ICMSNR) AS ICMSNR '
                            +'       ,sum(P2BCINR)  AS BCINR '
                            +'       ,sum(P2ICMSR)  AS ICMSR '
                            +'       ,sum(P2VALIPI)  AS VALIPI '
                            +'       ,sum(P2ISENTAS) AS ISENTAS '
                            +'       ,sum(P2TOTOUT)  AS OUTRAS '
                            +'       ,sum(P2TOTLIQ) AS TOTLIQ '
                            +'        ,P2CFO,P2ALIQ,P2ALIQNR,P2ALIPI AS ALIPI '
                            +'  ,P2CFO AS CFONF '
                            +' from CADP02 '
                            +' where P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                            +' and   P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                            +' and   P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                            +' and   P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                            +' group by P2CFO,P2ALIQ,P2ALIQNR,P2ALIPI');
      DM5.Qr_ProSoma.Open;
      mfrete:=DM5.Qr_NSNSFRETE.AsFloat;
      While not DM5.Qr_ProSoma.Eof do
         begin

         mSequencia:=mSequencia+1;
         mlinha:=insere2('NF',' ',2);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(DM5.Qr_NSNSSERIE.Value,' ',4);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(FormatFloat('000000', DM5.Qr_NSNSNUMERO.Value),' ',6);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(FormatFloat('000000', DM5.Qr_NSNSNUMERO.Value),' ',6);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(DM5.Qr_NScgc.Value,' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(FormatDateTime('dd',DM5.Qr_NSNSDTEMIS.Value),'0',2);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+FormatDateTime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaTOTLIQ.AsFloat+mfrete)*100),' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(FormatFloat('0000', DM5.Qr_ProSomaP2CFO.AsFloat),' ',4);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+FormatDateTime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(FormatFloat('000000', mSequencia),' ',6);
         mlinha:=mlinha+mespaco;
         if DM5.Qr_NSNSAVAP.Value=0 then
            mlinha:=mlinha+insere(CODCONAV.Text,'0',4)
         else
            mlinha:=mlinha+insere(CODCONAP.Text,'0',4);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(DM5.Qr_NSsit.Value,' ',1);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere('01',' ',2);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(DM5.Qr_NSuf.Value,' ',2);
         Writeln(fcab,mlinha);
         mfrete:=0;

         if DM5.Qr_ProSomaBASEN.Value>0 then
            begin
            mseqTrib:=mseqTrib+1;
            mlinha:=insere(FormatFloat('000000', mseqTrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProSomaBASEN.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProSomaP2ALIQ.Value*100),' ',04);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04); // cred outorgado
            Writeln(fTrib,mlinha);
            end;
         if DM5.Qr_ProSomaBCINR.Value>0 then
            begin
            mseqTrib:=mseqTrib+1;
            mlinha:=insere(FormatFloat('000000', mseqTrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProSomaBCINR.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProSomaP2ALIQNR.Value*100),' ',04);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04); // cred outorgado
            Writeln(fTrib,mlinha);
            end;


         if DM5.Qr_ProSomaBASER.Value>0 then
            begin
            mseqTrib:=mseqTrib+1;
            mlinha:=insere(FormatFloat('000000', mseqTrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'6';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProSomaBASER.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04); //  cred outorgado
            Writeln(fTrib,mlinha);
            end;
         if DM5.Qr_ProSomaICMSR.Value>0 then
            begin
            mseqTrib:=mseqTrib+1;
            mlinha:=insere(FormatFloat('000000', mseqTrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'7';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProSomaICMSR.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04); //  cred outorgado

            Writeln(fTrib,mlinha);
            end;
         if DM5.Qr_ProSomaISENTAS.Value>0 then
            begin
            mseqTrib:=mseqTrib+1;
            mlinha:=insere(FormatFloat('000000', mseqTrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'2';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProSomaISENTAS.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04); //  cred outorgado

            Writeln(fTrib,mlinha);
            end;
         if DM5.Qr_ProSomaOUTRAS.Value>0 then
            begin
            mseqTrib:=mseqTrib+1;
            mlinha:=insere(FormatFloat('000000', mseqTrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'3';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProSomaOUTRAS.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04); //  cred outorgado

            Writeln(fTrib,mlinha);
            end;
// inicio
         if (DM5.Qr_ProSomaBASEN.AsFloat+DM5.Qr_ProSomaBCINR.Value
            +DM5.Qr_ProSomaBASER.Value
            +DM5.Qr_ProSomaISENTAS.Value
            +DM5.Qr_ProSomaOUTRAS.Value)=0 then
            begin
            mseqTrib:=mseqTrib+1;
            mlinha:=insere(FormatFloat('000000', mseqTrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'3';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProSomaTOTLIQ.Value*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04); //  cred outorgado

            Writeln(fTrib,mlinha);
            end;


// termino

         if DM5.Qr_ProSomaVALIPI.Value>0 then
            begin
            mseqTrib:=mseqTrib+1;
            mlinha:=insere(FormatFloat('000000', mseqTrib),'0',6);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'2';
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+'1';
            mlinha:=mlinha+mespaco;
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.add('Select sum(P2TOTLIQ) AS TOTLIQ '
                              +'       from CADP02 where P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                              +'       and P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                              +'       and P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                              +'       and P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                              +'       and P2VALIPI>0');
            DM1.Query2.Open;
            mlinha:=mlinha+insere(Formatfloat('000', DM1.Query2.Fields[0].AsFloat*100),' ',14);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProALIPI.Value),' ',04);
            mlinha:=mlinha+mespaco;
            mlinha:=mlinha+insere(Formatfloat('000', 0),' ',04); //  cred outorgado

            Writeln(fTrib,mlinha);
            end;
         DM5.Qr_ProSoma.Next;
         end;
      DM5.Qr_Pro.Close;
      DM5.Qr_Pro.SQL.Clear;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');

      DM5.Qr_Pro.SQL.Add('Select  P2ITEM      AS ITEM '
                        +'       ,P2QTD       AS QTD '
                        +'       ,P2PRECO     AS PCOUNIT '
                        +'       ,P2CODPRO    AS CODPRO '
                        +'       ,P2TOTDES    AS TOTDES '
                        +'       ,P2BASEN     AS BASEN '
                        +'       ,P2BASER     AS BASER '
                        +'       ,P2ICMSN     AS ICMSN '
                        +'       ,P2ICMSNR    AS ICMSNR '
                        +'       ,P2BCINR     AS BCINR '
                        +'       ,P2ICMSR     AS ICMSR '
                        +'       ,P2ALIPI     AS ALIPI '
                        +'       ,P2VALIPI    AS VALIPI '
                        +'       ,P2ISENTAS   AS ISENTAS '
                        +'       ,P2TOTOUT    AS OUTRAS '
                        +'       ,P2TOTLIQ    AS TOTLIQ '
                        +'       ,P2SIT     AS SITTRI '
                        +'       ,P2CFO, P2CFO as CFONF,P2ALIQ AS P2ALIQ, P2ALIQNR AS P2ALIQNR'
                           +'       ,PDCODPRO AS PDCODPRO '
                           +'       ,PDNOME   AS PDNOME '
                           +'       ,PDCLAS   AS PDCLAS'
                           +'       ,PDUND    AS PDUND'
                           +'       ,PDSIT    AS PDSIT'
                           +'       ,PDTABICM AS PDTABICM'
                           +'       ,PDPRECO1 AS PDPRECO1'
                           +'       ,PDIPI   AS PDIPI'
                           +'       ,PDMARCA AS PDMARCA'
                           +'       ,PDCODNCM AS PDCODNCM');
          DM5.Qr_Pro.Sql.add(',case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end as NOMPRO_ORI '
                       +'       ,DECODE(P2CODPRO_ORI,null,to_char(PDCODPRO),'+chr(39)+' '+chr(39)+',to_char(PDCODPRO),'
                       +' P2CODPRO_ORI) as CODPRO_ORI ');

          DM5.Qr_Pro.Sql.add(' from CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                           +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +'   P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                        +' and   P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                        +' and   P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                        +' and   P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                        +' Order by P2ITEM ');
      DM5.Qr_Pro.Open;
      While not DM5.Qr_Pro.Eof do
         begin
         mseqProd:=mseqProd+1;
         mlinha:=insere(FormatFloat('000000', mseqProd),'0',6);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(DM5.Qr_ProCODPRO.AsString,' ',6);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+'1';
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('0000', DM5.Qr_ProQTD.Value*1000),' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProPCOUNIT.Value*100),' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProVALIPI.Value*100),' ',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProP2ALIQ.Value*100),' ',04);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere2(DM5.Qr_ProSITTRI.Value,' ',03);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', 0),' ',12);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProTOTDES.Value*100),' ',12);
         Writeln(fProd,mlinha);
         if not DM5.Tb_Pro.Locate('CODPRO',DM5.Qr_ProCODPRO_ORI.Value,[]) then
            begin
            if not flcadpro(1,0,0,DM5.Qr_ProCODPRO.AsString) then
               begin
               verteclado(0);
               MessageDlg('Produto excluido: '+DM5.Qr_ProCODPRO.AsString,mtError,[mbOk],0);
               DM5.Tb_Pro.Append;
               DM5.Tb_ProCODPRO.Value     :=DM5.Qr_ProCODPRO.AsString;
               DM5.Tb_ProDESCRICAO.Value  :='** EXCLUIDO ***';
               DM5.Tb_ProCLAS_FISCAL.Value:=' ';
               DM5.Tb_ProUNIDADE.Value    :=' ';
               DM5.Tb_ProSITTRI.Value     :='000';
               DM5.Tb_ProALIQEST.Value    :=0;
               DM5.Tb_ProALIQINT.Value    :=0;
               DM5.Tb_ProRED.Value        :=0;
               DM5.Tb_ProALIQEST.Value    :=0;
               DM5.Tb_ProRED.Value        :=0;
               DM5.Tb_ProALIQINT.Value    :=0;
               DM5.Tb_ProALIQIPI.Value    :=0;
               DM5.Tb_ProVALIPI.Value     :=0;
               DM5.Tb_ProREFERENCIA.Value :=' ';
               DM5.Tb_ProCREDOUT.Value    :=0;
               DM5.Tb_Pro.Post;
               end
            else
               begin
               DM5.Tb_Pro.Append;
               DM5.Tb_ProCODPRO.Value     :=DM5.Qr_ProCODPRO_ORI.Value;
               if trim(DM5.Qr_ProNOMPRO_ORI.AsString)='' then
                  DM5.Tb_ProDESCRICAO.Value  :=DM1.Tb_ProPDNOME.Value
               else
                  DM5.Tb_ProDESCRICAO.Value  :=DM5.Qr_ProNOMPRO_ORI.AsString;
               DM5.Tb_ProCLAS_FISCAL.Value:=DM1.Tb_ProPDCLAS.Value;
               DM5.Tb_ProUNIDADE.Value    :=DM1.Tb_ProPDUND.Value;
               DM5.Tb_ProSITTRI.Value     :=DM1.Tb_ProPDSIT.Value;
               if DM1.Tb_ProPDSIT.Value[2]='4' then
                  begin
                  DM5.Tb_ProALIQEST.Value :=0;
                  DM5.Tb_ProALIQINT.Value :=0;
                  DM5.Tb_ProRED.Value     :=0;
                  end
                else
                  begin
                  DM1.Query2.Close;
                  DM1.Query2.SQL.Clear;
                  DM1.Query2.SQL.Add('Select PICMSA,PICMSB,PREDUTNA,PREDUTNB from CADUF where '
                                    +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
                  DM1.Query2.Open;
                  if DM1.Tb_ProPDTABICM.Value='B' then
                     begin
                     DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[1].AsFloat;
                     DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[3].AsFloat;
                    end
                  else
                     begin
                     DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[0].AsFloat;
                     DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[2].AsFloat;
                    end;
                  DM1.Query2.Close;
                  DM1.Query2.SQL.Clear;
                  DM1.Query2.SQL.Add('Select max(PICMSA),max(PICMSB) from CADUF where '
                                    +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' PUF<>'+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
                  DM1.Query2.Open;
                  if DM1.Tb_ProPDTABICM.Value='B' then
                     DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[1].AsFloat
                  else
                     DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[0].AsFloat;
                  end;
               DM5.Tb_ProALIQIPI.Value      :=DM1.Tb_ProPDIPI.Value;
               DM5.Tb_ProVALIPI.Value       :=DM1.Tb_ProPDPRECO1.Value*DM1.Tb_ProPDIPI.Value/100;
               DM5.Tb_ProREFERENCIA.Value   :=DM1.Tb_ProPDMARCA.Value;
               DM5.Tb_ProCREDOUT.Value      :=0;
               DM5.Tb_Pro.Post;
               end;
            end;
         DM5.Qr_Pro.Next;
         end;
     DM5.Qr_Ns.Next;
     end;
  end;

// inicio de cupom
if RG_DOC.ItemIndex<>1 then
   begin
   DM5.Qr_R60M.Close;
   DM5.Qr_R60M.sql.Clear;
   DM5.Qr_R60M.SQL.Add('Select CFSERIE,CFMODDOC,CMDATA,CMCODIMP, ');
   DM5.Qr_R60M.SQL.Add('       CMCOO, ');
   DM5.Qr_R60M.SQL.Add('       CMCOO_FINAL,');
   DM5.Qr_R60M.SQL.Add('       CMCONRED, ');
   DM5.Qr_R60M.SQL.Add('       CMCRO, ');
   DM5.Qr_R60M.SQL.Add('       CMVDABRUT,CMVDALIQ,CMCUPCAN, ');
   DM5.Qr_R60M.SQL.Add('       CMACRECUP,CMDESCUP, ');
   DM5.Qr_R60M.SQL.Add('       CMISENTAS,CMNAOINC, ');
   DM5.Qr_R60M.SQL.Add('       CMSUBTRI,CMISSCUP ');
   DM5.Qr_R60M.SQL.Add('       from CADECF,CADMI01 '
                      +' where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),''
                      ,' CMCODEMP=0'+InttoStr(codemp)+' and CFCODEMP=CMCODEMP and ')
                      +' CFCAIXA=CMCODIMP ');
   if Trim(MDT1.Text)<>'/  /' then
      DM5.Qr_R60M.SQL.Add(' and CMDATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM5.Qr_R60M.SQL.Add(' and CMDATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));

   DM5.Qr_R60M.Open;
{
   While not DM5.Qr_R60M.Eof do
      begin
      flrsgrava60M(90,DM5.Qr_R60MCMCODIMP.AsInteger,
                  DM5.Qr_R60MCMCOO.Value,
//                  DM5.Qr_R60MCMCOO_FINAL.Value,
                  DM5.Qr_R60MCMCOO.Value+DM5.Qr_R60MCMCRO.Value,
                  DM5.Qr_R60MCMCONRED.Value,
                  DM5.Qr_R60MCMCRO.Value,
                  DM5.Qr_R60MCMVDABRUT.Value,
                  DM5.Qr_R60MCMVDALIQ.Value,
                  DM5.Qr_R60MCFSERIE.Value,
                  DM5.Qr_R60MCFMODDOC.Value,
                  DM5.Qr_R60MCMDATA.Value);

      if DM5.Qr_R60MCMSUBTRI.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMSUBTRI.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'F',
                        DM5.Qr_R60MCMDATA.Value);
         end;
      if DM5.Qr_R60MCMISENTAS.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMISENTAS.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'I',
                        DM5.Qr_R60MCMDATA.Value);
         end;

      if DM5.Qr_R60MCMNAOINC.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMNAOINC.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'N',
                        DM5.Qr_R60MCMDATA.Value);
         end;

      if DM5.Qr_R60MCMCUPCAN.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMCUPCAN.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'CANC',
                        DM5.Qr_R60MCMDATA.Value);
         end;
      if DM5.Qr_R60MCMDESCUP.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMDESCUP.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'DESC',
                        DM5.Qr_R60MCMDATA.Value);
         end;

      if DM5.Qr_R60MCMISSCUP.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMISSCUP.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'F',
                        DM5.Qr_R60MCMDATA.Value);
         end;

      DM5.Qr_R60M.Next;
      end;

   DM5.Qr_R60A.Close;
   DM5.Qr_R60A.SQL.Clear;
   DM5.Qr_R60A.SQL.Add('Select CFSERIE,CFMODDOC,CM2DATA,CM2CODIMP, ');
   DM5.Qr_R60A.SQL.Add('       CM2ALIQ,CM2VALOR ');
   DM5.Qr_R60A.SQL.Add('       from CADECF,CADMI02 '
                      +' where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),''
                      ,' CM2CODEMP=0'+InttoStr(codemp)+' and CFCODEMP=CM2CODEMP and ')
                      +' CFCAIXA=CM2CODIMP ');
   if Trim(MDT1.Text)<>'/  /' then
      DM5.Qr_R60A.SQL.Add(' and CM2DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM5.Qr_R60A.SQL.Add(' and CM2DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));

   DM5.Qr_R60A.Open;
   While not DM5.Qr_R60A.Eof do
      begin
      flrsgrava60A(0,DM5.Qr_R60ACM2VALOR.Value,
                        DM5.Qr_R60ACFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60ACM2CODIMP.Value),
                        FormatFloat('0000', DM5.Qr_R60ACM2ALIQ.Value*100),
                        DM5.Qr_R60ACM2DATA.Value);
      DM5.Qr_R60A.Next;
      end;
 }
   DM5.Qr_R60I.Close;
   DM5.Qr_R60I.SQL.Clear;
   DM5.Qr_R60I.SQL.Add('SELECT CFSERIE,CFMODDOC,P1NUMCF,P1CODECF,P2CODPRO,P1DATACF,P2ALIQ,P2SIT, ');
   DM5.Qr_R60I.SQL.Add('        P2ITEM ');
   DM5.Qr_R60I.SQL.Add('       ,P2QTD AS QTD ');
   DM5.Qr_R60I.SQL.Add('       ,P2PRECO ');
   DM5.Qr_R60I.SQL.Add('       ,P2TOTLIQ-P2DESCRAT AS TOTLIQ ');
   DM5.Qr_R60I.SQL.Add('       ,P2BASEN AS BASEN,P2ICMSN AS ICMSN ');
   DM5.Qr_R60I.SQL.Add('       ,P2ISENTAS AS ISENTAS ');
   DM5.Qr_R60I.SQL.Add('       ,DECODE(P2CODPRO_ORI,null,to_char(P2CODPRO),'+chr(39)+' '+chr(39)+',to_char(P2CODPRO), '
                            +'                        P2CODPRO_ORI) as CODPRO_ORI ');
   DM5.Qr_R60I.SQL.Add(' ,P2NOMPRO_ORI AS NOMPRO_ORI');

   DM5.Qr_R60I.SQL.Add('  from CADP01,CADP02,CADECF where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),''
                      ,' P1CODEMP=0'+InttoStr(codemp)+' and P2CODEMP=P1CODEMP and ')
                       +' P2LOTSEQ=P1LOTSEQ '
                      +' and P2CHAVE =P1CHAVE '
                      +' and P2ORDEM =P1ORDEM '
                      +' and P1CODECF>0 and P1STATUS<'+mstatus_excluido+' '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',
                      ' and CFCODEMP=P1CODEMP ')
                      +' and CFCAIXA =P1CODECF ');
   if Trim(MDT1.Text)<>'/  /' then
      DM5.Qr_R60I.SQL.Add(' and P1DATACF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM5.Qr_R60I.SQL.Add(' and P1DATACF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   DM5.Qr_R60I.SQL.Add('Order by P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM ');
   DM5.Qr_R60I.Open;
   While not DM5.Qr_R60I.Eof do
      begin
      mcinst:=Formatfloat('000',fsonumero(DM5.Qr_R60IP2SIT.Value));
      if mcinst[2] in ['1','6'] then
         mcinst:='F'
      else if mcinst[2]='4' then
         mcinst:='I'
      else if DM5.Qr_R60IP2ALIQ.Value=0 then
         mcinst:='I'
      else
         mcinst:=FormatFloat('0000',DM5.Qr_R60IP2ALIQ.Value*100);
      mlinha:=insere2(DM5.Qr_R60ICFSERIE.Value,' ',20);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+Insere2(DM5.Qr_R60ICFMODDOC.Value,' ',2);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+Insere(DM5.Qr_R60IP1NUMCF.AsString,'0',06);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_R60IP1DATACF.Value);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+Insere(DM5.Qr_R60IP2CODPRO.AsString,'0',06);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+Insere(FormatFloat('000', Arredonda(DM5.Qr_R60IQTD.Value,2)*100),'0',14);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+Insere(FormatFloat('000', Arredonda(DM5.Qr_R60IP2PRECO.Value,2)*100),'0',14);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+Insere(DM5.Qr_R60IP2SIT.AsString,'0',03);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+Insere(FormatFloat('000', Arredonda(DM5.Qr_R60IP2ALIQ.Value,2)*100),'0',04);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+Insere(FormatFloat('000', 0),'0',12);
      mlinha:=mlinha+mespaco;
      mlinha:=mlinha+Insere(FormatFloat('000', 0),'0',06);
      Writeln(fitemcup,mlinha);
      if not DM5.Tb_Pro.Locate('CODPRO',DM5.Qr_R60ICODPRO_ORI.AsString,[]) then
         begin
         flcadpro(1,0,0,DM5.Qr_R60IP2CODPRO.AsString);
         DM5.Tb_Pro.Append;
         DM5.Tb_ProCODPRO.Value     :=DM5.Qr_R60ICODPRO_ORI.Value;
         if trim(DM5.Qr_R60INOMPRO_ORI.AsString)='' then
            DM5.Tb_ProDESCRICAO.Value  :=DM5.Qr_R60INOMPRO_ORI.AsString
         else
            DM5.Tb_ProDESCRICAO.Value  :=DM1.Tb_ProPDNOME.Value;
         DM5.Tb_ProCLAS_FISCAL.Value:=DM1.Tb_ProPDCLAS.Value;
         DM5.Tb_ProUNIDADE.Value    :=DM1.Tb_ProPDUND.Value;
         DM5.Tb_ProSITTRI.Value     :=DM1.Tb_ProPDSIT.Value;
         if DM1.Tb_ProPDSIT.Value[2]='4' then
            begin
            DM5.Tb_ProALIQEST.Value :=0;
            DM5.Tb_ProALIQINT.Value :=0;
            DM5.Tb_ProRED.Value     :=0;
            end
         else
            begin
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('Select PICMSA,PICMSB,PREDUTNA,PREDUTNB from CADUF where '
                              +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                              +' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
            DM1.Query2.Open;
            if DM1.Tb_ProPDTABICM.Value='B' then
               begin
               DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[1].AsFloat;
               DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[3].AsFloat;
               end
            else
               begin
               DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[0].AsFloat;
               DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[2].AsFloat;
               end;
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('Select max(PICMSA),max(PICMSB) from CADUF where '
                              +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                              +' PUF<>'+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
            DM1.Query2.Open;
            if DM1.Tb_ProPDTABICM.Value='B' then
               DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[1].AsFloat
            else
               DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[0].AsFloat;
            end;
         DM5.Tb_ProALIQIPI.Value      :=DM1.Tb_ProPDIPI.Value;
         DM5.Tb_ProVALIPI.Value       :=DM1.Tb_ProPDPRECO1.Value*DM1.Tb_ProPDIPI.Value/100;
         DM5.Tb_ProREFERENCIA.Value   :=DM1.Tb_ProPDMARCA.Value;
         DM5.Tb_ProCREDOUT.Value      :=0;
         DM5.Tb_Pro.Post;
         end;
      DM5.Qr_R60I.Next;
      end;
   end;
// fim dos cupons






DM5.Tb_Pro.First;
While not DM5.Tb_Pro.Eof do
   begin
   mlinha:=insere(DM5.Tb_ProCODPRO.AsString,' ',6)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_ProDESCRICAO.AsString,' ',40)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_ProCLAS_FISCAL.AsString,' ',10)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_ProUNIDADE.AsString,' ',03)+' ';
   mlinha:=mlinha+insere(DM5.Tb_ProSITTRI.AsString,'0',03)+' ';
   mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProALIQEST.Value,2)*100),'0',06)+' ';
   mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProALIQINT.Value,2)*100),'0',07)+' ';
   mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProRED.Value,2)*100),'0',12)+' ';
   mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProIVA.Value,2)*100),'0',07)+' ';
   mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProALIQIPI.Value,2)*100),'0',07)+' ';
   mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProVALIPI.Value,2)*100),'0',14)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_ProREFERENCIA.Value,' ',10)+' ';
   mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProCREDOUT.Value,2)*100),'0',07);
   Writeln(fProduto,mlinha);
   DM5.Tb_Pro.Next;
   end;


DM5.Tb_Emit.First;
While not DM5.Tb_Emit.Eof do
   begin
   mlinha:=insere(DM5.Tb_EmitCNPJCPF.AsString,'0',14)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_EmitNOME.AsString,' ',40)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_EmitCIDADE.AsString,' ',25)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_EmitUF.AsString,' ',02)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_EmitINSC_EST.AsString,' ',16)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_EmitENDERECO.AsString,' ',40)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_EmitBAIRRO.AsString,' ',20)+' ';
   mlinha:=mlinha+insere(fdeixanum(DM5.Tb_EmitCEP.AsString),' ',08)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_EmitPAIS.AsString,' ',20)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_EmitFONE.AsString,' ',12)+' ';
   mlinha:=mlinha+insere2(DM5.Tb_EmitFAX.AsString,' ',12);
   Writeln(femitente,mlinha);
   DM5.Tb_Emit.Next;
   end;

CloseFile(fcab);
CloseFile(fTrib);
CloseFile(fProd);
CloseFile(fNFrete);
CloseFile(fProduto);
CloseFile(fItemCup);
CloseFile(fEmitente);

Frm_Agde.Label1.Caption:='Concluido!';
Frm_Agde.Label1.Update;

end;

procedure TFrm_ExpTron.SB01Click(Sender: TObject);
begin
testeform := TFrm_ExpTron(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
frm_DefBac.Caption:='Definindo o caminho para os arquivos tron';
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   MPASTA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_ExpTron.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ExpTron.CODCONAVExit(Sender: TObject);
begin
fDeletaPadroes(0,'_EXPTRON','');
fGravaPadroes(0,'CODCONAV'          ,'Text' ,'_EXPTRON',mcinst2);
fGravaPadroes(0,'CODCONAP'          ,'Text' ,'_EXPTRON',mcinst2);
end;

end.
