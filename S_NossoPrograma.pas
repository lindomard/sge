unit S_NossoPrograma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, S_DM1, S_DM5, func, db, dbtables, Grids, DBGrids,
  StdCtrls, Mask, Buttons, S_LRS, S_LRE, S_Pgb,lerarq,S_Stru,S_UF,S_DefBac;

type
  Tfrm_ExpNosso = class(TForm)
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
  frm_ExpNosso: Tfrm_ExpNosso;
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

uses func_excecoes, S_Impres, S_Agde, S_DM4, S_ExpTron;


{$R *.dfm}

procedure Tfrm_ExpNosso.bbSairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_ExpNosso.FormCreate(Sender: TObject);
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

procedure Tfrm_ExpNosso.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Frm_Stru.Free;
end;

procedure Tfrm_ExpNosso.UFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   UF.Text:=fChamaUF(0,'frm_ExpTorn','');
   end;

end;

procedure Tfrm_ExpNosso.UFExit(Sender: TObject);
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



procedure Tfrm_ExpNosso.BitBtn1Click(Sender: TObject);
var
  fcab      : TextFile;
  fTrib     : TextFile;
  fProd     : TextFile;
  FNFrete   : TextFile;
  fProduto  : TextFile;
  fItemCup  : TextFile;
  fEmitente : TextFile;
  fImpNotas : TextFile;

  mlinha    : String;
  mespaco   : String;
  x         : Integer;
  mSeqFrete,
  mSequencia,
  mseqTrib,
  mseqProd  : Integer;
  mtmp_Emit : String;
  mfrete    : Real;
  minstrucao_qrns: string;
  pcanc: integer;

begin
pcanc:=0;
DM5.Qr_NS.Close;
DM5.Qr_NE.Close;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

fdt4:='DD/MM/YY';

if trim(MDT1.Text)='/  /' then begin
   verteclado(0);
   MessageDlg('Data Inicial tem que ser preenchida!',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   exit;
end;

if trim(MDT2.Text)='/  /' then begin
   verteclado(0);
   MessageDlg('Data Final tem que ser preenchida!',mtWarning,[mbOk],0);
   MDT2.SetFocus;
   exit;
end;

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then begin

   if StrToDate(MDT1.Text) > StrToDate(MDT2.Text) then begin
      verteclado(0);
      MessageDlg('Invalido!. Data Inicial Maior que Final',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
   end;
end;

if DM5.Tb_Pro.Active then
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
Frm_Agde.Label1.Caption :='Gerando arquivo, Aguarde... ';
Frm_Agde.Show;
verteclado(0);
DM5.Qr_Ns.Sql.Clear;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');
 minstrucao_qrns:='';

if RGTNF.ItemIndex <> 2 then
   begin
   if RG_DOC.ItemIndex <> 2 then
      begin
      minstrucao_qrns:=
      fLerdm5qrns(iif(rg_doc.itemindex=1, true,false) ,minstrucao_qrns, 2,RG_DOC.ItemIndex,pcanc,0,fStringtodatetime(mdt1.text),fStringtodatetime(mdt2.text),uf.text);
      end;
   end;


if RG_DOC.ItemIndex <> 1 then
   begin
   if RG_DOC.ItemIndex=0 then
      minstrucao_qrns :=   minstrucao_qrns+' union all ';
   minstrucao_qrns:=
   fLerdm5qrns(true ,minstrucao_qrns, 2,RG_DOC.ItemIndex,pcanc,0,fStringtodatetime(mdt1.text),fStringtodatetime(mdt2.text),uf.text);
   end;

 if RGTNF.ItemIndex<>1 then begin
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
                     +'       ,NEBASEN '
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
                     +'       ,NETOTDES '
                     +'       ,NETOTPOS '
                     +'       ,NETOTNEG '
                     +'       ,NETOTINA '
                     +'       ,NECHAVEP '
                     +'       ,(NECHAVEP-NECHAVEP) AS NEORDEM '
                     +'       ,NEALIQ '
                     +'       ,NETIPO '
                     +'       ,NEAVAP '
                     +'       ,NEMODELO '
                     +'       ,FUF '
                     +'       ,NESTATUS '
                     +'       ,FRAZAO '
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


    DM5.Qr_Ne.SQL.add(' union all ');

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
    //DM5.Qr_Ne.Sql.savetoFile(mpastatemp +'sql.txt');
    DM5.Qr_NE.Open;

 end;

 if Trim(MPASTA.Text)='' then
    MPASTA.Text:='\';

 if not DirectoryExists(MPASTA.Text) then begin
    verteclado(0);
    MessageDlg('Pasta destino não Encontrada!',mtWarning,[mbOk],0);
    exit;
 end;

  MPASTA.Text:=Trim(MPASTA.Text);
  if MPASTA.Text[length(MPASTA.Text)]<>'\' then
     MPASTA.Text:=MPASTA.Text+'\';

  Assignfile(fImpNotas, MPASTA.Text+'ImpNotas.TXT');

  Rewrite(fImpNotas);

  mespaco:=' ';
  mSeqFrete :=0;
  mSequencia:=0;
  mseqTrib  :=0;
  mseqProd  :=0;

  DM1.Query6.Close;
  DM1.Query6.SQL.Clear;
  DM1.Query6.SQL.Add(' SELECT                   '+
                     '  CGC,                    '+
                     '  RAZAO                   '+
                     ' FROM                     '+
                     '  CADEMP                  ');
  DM1.Query6.Open;

  {---Empresa---}
  mlinha  := Insere2('EMPRESA',' ',10);
  mlinha  := mlinha+Insere2(DM1.Query6.FieldByName('CGC').Value,' ',14);
  mlinha  := mlinha+insere2(DM1.Query6.FieldByName('RAZAO').Value,' ',40);
  mlinha  := mlinha+insere2(FormatDateTime('YYMMDD',StrtoDate(MDT1.Text)),' ',6);
  mlinha  := mlinha+insere2(FormatDateTime('YYMMDD',StrtoDate(MDT2.Text)),' ',6);
  mlinha  := mlinha+insere2('02',' ',2);
  writeln(fImpNotas, mlinha);

  {---NF ou CF---}
  while not DM5.Qr_Ne.eof do begin
     mlinha  := insere2('NF',' ',10);
     mlinha  := mlinha+insere2(DM5.Qr_NeNESERIE.Value,' ',2);
     mlinha  := mlinha+insere2(DM5.Qr_NeNENUMERO.AsString,' ',6);
     if Length(DM5.Qr_NeCGC.AsString) = 14 then
        mlinha := mlinha+insere2('J',' ',1)
     else
        mlinha := mlinha+insere2('F',' ',1);

     mlinha  := mlinha+insere2(DM5.Qr_NeFCGC.AsString,' ',14);
     mlinha  := mlinha+insere2(DM5.Qr_NeFRAZAO.AsString,' ',40);
     mlinha  := mlinha+insere2(DM5.Qr_NeFIE.AsString,' ',20);
     mlinha  := mlinha+insere2(DM1.Tb_ForFCIDADE.Value,' ',25);
     mlinha  := mlinha+insere2(DM1.Tb_ForFUF.Value,' ',2);
     mlinha  := mlinha+insere2('Brasil',' ',20);
     mlinha  := mlinha+insere2('NF',' ',2);
     mlinha  := mlinha+insere2(DM5.Qr_NeNECFO.Value,' ',4);
     mlinha  := mlinha+insere2(FormatDateTime('YYMMDD',DM5.Qr_NeNEDTEMIS.AsDateTime),' ',6);
     mlinha  := mlinha+insere2(FormatDateTime('YYMMDD',DM5.Qr_NeNEDTENT.AsDateTime),' ',6);
     mlinha  := mlinha+insere2(FormatFloat('00000000000000',DM5.Qr_NeNEBASEN.Value),' ',14);
     mlinha  := mlinha+insere2('00000000000000',' ',14);
     mlinha  := mlinha+insere2('00000000000000',' ',14);
     mlinha  := mlinha+insere2('00000000000000',' ',14);
     mlinha  := mlinha+insere2('00000000000000',' ',14);
     mlinha  := mlinha+insere2(FormatFloat('00000',DM5.Qr_NeNEICMSN.Value),' ',5);
     mlinha  := mlinha+insere2('00000',' ',5);
     mlinha  := mlinha+insere2('00000',' ',5);
     mlinha  := mlinha+insere2('00000',' ',5);
     mlinha  := mlinha+insere2('00000',' ',5);
     mlinha  := mlinha+insere2(Iif(DM5.Qr_NeNEAVAP.Value = 0,'N','S'),' ',1);
     mlinha  := mlinha+insere2('N',' ',1);
     mlinha  := mlinha+insere2(' ',' ',2);
     mlinha  := mlinha+insere2(FormatFloat('00000000000000',DM5.Qr_NeNEIPI.Value),' ',14);
     mlinha  := mlinha+insere2('00000000000000',' ',14);
     mlinha  := mlinha+insere2(FormatFloat('00000',DM5.Qr_NeNEALIQ.Value),' ',5);
     mlinha  := mlinha+insere2('00000',' ',5);
     mlinha  := mlinha+insere2(FormatFloat('00000000000000',DM5.Qr_NeNETOTNOT.Value),' ',14);
     mlinha  := mlinha+insere2(FormatFloat('00000000000000',DM5.Qr_NeNEICMSR.Value),' ',14);
     mlinha  := mlinha+insere2('00000000000000',' ',14);
     mlinha  := mlinha+insere2(FormatFloat('00000000000000',DM5.Qr_NeNEOUTRAS.Value),' ',14);
     writeln(fImpNotas, mlinha);

     DM5.Qr_Ne.Next;
  end;


  DM5.Qr_Ne.First;
  while not DM5.Qr_Ne.Eof do begin
     if DM5.Qr_NeNEAVAP.AsString = 'S' then begin
        mlinha  := insere2('DUPL_NumNF',' ',10);
        mlinha  := mlinha+insere2(DM5.Qr_NeFCGC.AsString,' ',14);
        mlinha  := mlinha+insere2(DM5.Qr_NeNESERIE.AsString,' ',2);
        mlinha  := mlinha+insere2(DM5.Qr_NeNECFO.AsString,' ',4);
        mlinha  := mlinha+insere2(DM5.Qr_NeNENUMERO.AsString,' ',6);
        mlinha  := mlinha+insere2(FormatDateTime('YYMMDD',DM5.Qr_NeNEDTEMIS.AsDateTime),' ',6);
        writeln(fImpNotas, mlinha);
     end;

     DM5.Qr_Ne.Next;
  end;

  CloseFile(fImpNotas);

  Frm_Agde.Label1.Caption:='Concluido!';
  Frm_Agde.Label1.Update;
end;

procedure Tfrm_ExpNosso.SB01Click(Sender: TObject);
begin
testeform := Tfrm_ExpNosso(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
frm_DefBac.Caption:='Definindo o caminho para os arquivos tron';
Frm_DefBac.ShowModal;
if trim(Frm_DefBac.mcam)<>'' then
   MPASTA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure Tfrm_ExpNosso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_ExpNosso.CODCONAVExit(Sender: TObject);
begin
fDeletaPadroes(0,'_EXPTRON','');
fGravaPadroes(0,'CODCONAV'          ,'Text' ,'_EXPTRON',mcinst2);
fGravaPadroes(0,'CODCONAP'          ,'Text' ,'_EXPTRON',mcinst2);
end;

end.
