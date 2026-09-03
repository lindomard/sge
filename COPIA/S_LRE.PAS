unit S_LRE;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, Mask, ExtCtrls, Db, DBTables,  S_DM1, S_DM5,
  Func, S_Impres, variants, RDprint,lerarq,S_Stru;

type
  TFrm_LRE = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    BBnFechar: TBitBtn;
    BImprimir: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Src_RE: TDataSource;
    bVisualizar: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    MDT2: TMaskEdit;
    MDT1: TMaskEdit;
    UF: TComboBox;
    LN: TEdit;
    TIPO: TRadioGroup;
    TERMO: TRadioGroup;
    PGI: TEdit;
    DTTERM1: TMaskEdit;
    DTTERM2: TMaskEdit;
    Cbx_TERABER: TCheckBox;
    TPGTERM: TEdit;
    cb_antigo: TCheckBox;
    rg_oper: TRadioGroup;
    Label13: TLabel;
    NUMNF: TEdit;
    rg_conhec: TRadioGroup;
    CB_IPIICMS: TCheckBox;
    MCFOP: TEdit;
    Label7: TLabel;
    cb_listarpor: TComboBox;
    Label8: TLabel;
    Label11: TLabel;
    CODGFOR: TEdit;
    lbx_codgfor: TListBox;
    OMITIR_GFOR: TCheckBox;
    cb_csv: TCheckBox;
    SaveDialog1: TSaveDialog;
    procedure UFKeyPress(Sender: TObject; var Key: Char);
    procedure BBnFecharClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure LNKeyPress(Sender: TObject; var Key: Char);
    procedure LNExit(Sender: TObject);
    procedure PGIKeyPress(Sender: TObject; var Key: Char);
    procedure MPG1KeyPress(Sender: TObject; var Key: Char);
    procedure MPG2KeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_IPIICMSClick(Sender: TObject);
    procedure NUMNFExit(Sender: TObject);
    procedure MCFOPExit(Sender: TObject);
    procedure CODGFORExit(Sender: TObject);
    procedure CODGFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

     memo_csv: tstrings;
     mLinha_csv: string;

    form_impres_lre : tfrm_impres;
    function termos(ptipo,pNumLiv,pPagIni:Integer;pDatIni,pDatFin:TDateTime): Boolean;
    function flrecab(tipo: integer): boolean;
    function flretotd(tipo: integer): boolean;
    function flretg(tipo: integer): boolean;


  end;
Function geralfe(origem: Integer; pDt1, pDt2: TDatetime; pIcmIpi: Boolean; pCfo: String): boolean;
function Fnotei6(Tipo: integer;pVlrCont:Real;pCfop:String): Boolean;
function Fnotei5(Tipo: integer;pCfop:String): Boolean;
function Fnotei3(Tipo: integer;pVlrCont:Real;pCfop:String): Boolean;
function Fnotei2(Tipo: integer;pVlrCont:Real; PCfop:String): Boolean;
function Fnotei1(Tipo: integer;pCfop:String): Boolean;
function Fnoteipi3(Tipo: integer;pVlrCont: Real; pCfop:String): Boolean;
function Fnotei4(Tipo: integer;pCfop:String): Boolean;


var
  Frm_LRE: TFrm_LRE;
  mlin: integer;
  mtd1vc, mtd2vc , mtd3vc , mtd4vc, mtd5vc: real;
  mtd1bc, mtd2bc , mtd3bc , mtd4bc, mtd5bc: real;
  mtd1ic, mtd2ic , mtd3ic , mtd4ic, mtd5ic: real;
  mtg1vc, mtg2vc , mtg3vc , mtg4vc, mtg5vc: real;
  mtg1bc, mtg2bc , mtg3bc , mtg4bc, mtg5bc: real;
  mtg1ic, mtg2ic , mtg3ic , mtg4ic, mtg5ic: real;
  mtgipi01vc, mtgipi01bc, mtgipi01ic: real;
  mtdipi01vc, mtdipi01bc, mtdipi01ic: real;
  mtgipi02vc, mtgipi02bc, mtgipi02ic: real;
  mtdipi02vc, mtdipi02bc, mtdipi02ic: real;
  mtgipi03vc, mtgipi03bc, mtgipi03ic: real;
  mtdipi03vc, mtdipi03bc, mtdipi03ic: real;
  mtgipi04vc, mtgipi04bc, mtgipi04ic: real;
  mtdipi04vc, mtdipi04bc, mtdipi04ic: real;
  mtgipi05vc, mtgipi05bc, mtgipi05ic: real;
  mtdipi05vc, mtdipi05bc, mtdipi05ic: real;

  mlivn: integer;
  mdia: string;
  mnpgre: Integer;
  miva, mredut, mbase, mbaser, mbaseret, micmsret : Real;
  mtmp_RSE: String;
  mtmp_RE,
  mtmp_RE2,
  mtmp_RE3: String;
  mvlrcont: Real;
implementation

uses  s_lrs,func_excecoes, S_DM4, S_Sintegra_Advert;

{$R *.DFM}

procedure TFrm_LRE.UFKeyPress(Sender: TObject; var Key: Char);
begin
Key:=UpperCase(Key)[1];
end;

procedure TFrm_LRE.BBnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_LRE.BImprimirClick(Sender: TObject);
begin
 If Trim(MDT1.Text)='/  /' then
   begin
   fmensagem('Digite a data inicial!',0,['0'],0);
   MDT1.SetFocus;
   Exit;
   end;
If Trim(MDT2.Text)='/  /' then
   begin
   fmensagem('Digite a data final!',0,['0'],0);
   MDT2.SetFocus;
   Exit;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial Maior que Final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
mNNumnf_Irreg:='';

if cb_antigo.Checked then
   mlivro_ant:=true
else
   mlivro_ant:=False;
mlivn:=StrToInt('0'+LN.Text);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR' ,'FCODEMP','NECODEMP' ,'FCODFOR' ,'NECODFOR');

DM5.QR_NE.Close;
DM5.Qr_NE.SQL.Clear;
DM5.Qr_Ne.SQL.Add('Select  NECODEMP, NECODFOR '
                 +'       ,NENUMERO '
                 +'       ,NESERIE '
                 +' , CASE WHEN NECFO is null then '
                 +'           case when FUF=:UF then '+QuotedStr('1102')+' else  '+QuotedStr('2202')+' end '
                 +'           when NECFO=0 then '
                 +'           case when FUF=:UF then '+QuotedStr('1102')+' else '+QuotedStr('2202')+' end '
                 +'           else to_char(round(NECFO)) end  as NECFO '
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
                 +'       ,NEMODELO '
                 +'       ,FUF '
                 +'       ,NESTATUS '
                 +'        ,FRAZAO '
                 +'       ,to_char(FCGC) as fcgc '
                 +'       ,FIE '
                 +'       ,NEIPIFRETE '
                 +'       ,NELOTSEQ_CP '
                 +'       ,NEISENTAS '
                 +'       ,NEFRETEPC '
                 +'       ,NEAVAP '
                 +'       ,NEOUTNINC+NEOUTDESP AS NEOUTNINC  '
                 +'       ,NEOUTDESP '
                 +'       ,'+chr(39)+'E'+chr(39)+' AS ORIGEM '
                 +'        FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
              +' NESTATUS<9 ');
if (rg_oper.ItemIndex<>2) or (trim(UF.Text)<>'') then
   begin
    if rg_oper.ItemIndex=0 then
      DM5.Qr_Ne.SQL.add(' and FUF='+chr(39)+DM1.Tb_EmpUF.Text+chr(39))
   else if rg_oper.ItemIndex=1 then
      DM5.Qr_NE.SQL.add(' and FUF<>'+chr(39)+DM1.Tb_EmpUF.Text+chr(39));
   If Trim(UF.Text)<>'' then
      begin
      DM5.Qr_NE.SQL.Add(' and  FUF='+chr(39)+UF.Text+chr(39));
      end;
   end;
DM5.Qr_Ne.ParamByName('UF').AsString:=DM1.Tb_EmpUF.AsString;

mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
if trim(mcinst2)<>'' then
  DM5.Qr_NE.SQL.Add(' and FCODGFOR '+mcinst2);

if Trim(MDT1.Text)<>'/  /' then
   DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NEDTENT',true,strtodate(mdt1.text)));

if Trim(MDT2.Text)<>'/  /' then
   DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NEDTENT',false,strtodate(mdt2.text)));

NUMNF.Text:=fdeixanum(NUMNF.Text);
if ValInt(NUMNF.Text)>0 then
   DM5.Qr_NE.SQL.Add(' and NENUMERO=0'+Trim(NUMNF.Text));
if rg_conhec.ItemIndex=1 then
   DM5.Qr_Ne.SQL.Add(' and (NECFO<>1353 and NECFO<>2353)')
else if rg_conhec.ItemIndex=2 then
   DM5.Qr_Ne.SQL.Add(' and (NECFO=1353 or NECFO=2353)');

//if ValInt(MCFOP.Text)>0 then
//   DM5.Qr_NE.SQL.Add(' and NECFO=0'+Trim(MCFOP.Text));

//DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');

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
                 +'       ,0 AS NEOUTRAS '
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
                 +'       ,0  AS NETIPO '
                 +'       ,NSMODELO AS NEMODELO '
                 +'       ,CUF AS  FUF '
                 +'       ,NSSTATUS AS NESTATUS '
                 +'       ,CRAZAO AS  FRAZAO '
                 +'       ,TO_CHAR(CCNPJ) AS  FCGC '
                 +'       ,CIE AS FIE '
                 +'       ,(NSTOTNOTA-NSTOTNOTA) AS NEIPIFRETE '
                 +'       ,NSLOTSEQ_CP AS  NELOTSEQ_CP '
                 +'       ,NSTOTISEN AS  NEISENTAS '
                 +'       ,NSFRETEPC AS NEFRETEPC '
                 +'       ,NSAVAP AS NEAVAP '
                 +'       ,(NSTOTOUT) AS NEOUTNINC '
                 +'       ,0 as NEOUTDESP '
                 +'       ,'+chr(39)+'S'+chr(39)+' AS ORIGEM '
                +'        FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
              +' NSSTATUS<8 ');
if (rg_oper.ItemIndex<>2) or (trim(UF.Text)<>'') then
   begin
    if rg_oper.ItemIndex=0 then
      DM5.Qr_Ne.SQL.add(' and CUF='+chr(39)+DM1.Tb_EmpUF.Text+chr(39))
   else if rg_oper.ItemIndex=1 then
      DM5.Qr_NE.SQL.add(' and CUF<>'+chr(39)+DM1.Tb_EmpUF.Text+chr(39));
   If Trim(UF.Text)<>'' then
      begin
      DM5.Qr_NE.SQL.Add(' and  CUF='+chr(39)+UF.Text+chr(39));
      end;
   end;
if Trim(MDT1.Text)<>'/  /' then
   DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NSDTEMIS',true,strtodate(mdt1.text)));

if Trim(MDT2.Text)<>'/  /' then
   DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NSDTEMIS',false,strtodate(mdt2.text)));



NUMNF.Text:=fdeixanum(NUMNF.Text);
if ValInt(NUMNF.Text)>0 then
   DM5.Qr_NE.SQL.Add(' and NSNUMERO=0'+Trim(NUMNF.Text));
if rg_conhec.ItemIndex=1 then
   DM5.Qr_Ne.SQL.Add(' and (NSCFO1<>1353 and NSCFO1<>2353)')
else if rg_conhec.ItemIndex=2 then
   DM5.Qr_Ne.SQL.Add(' and (NSCFO1=1353 or NSCFO1=2353)');
//if ValInt(MCFOP.Text)>0 then
//   DM5.Qr_NE.SQL.Add(' and NSCFO1=0'+Trim(MCFOP.Text));

DM5.Qr_Ne.SQL.Add(' and NSCFO1<5000 ');


// termino das saidas




DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');
//DM5.Qr_Ne.Sql.savetoFile('c:\sql.txt');
try
   DM5.Qr_NE.Open;
except on e : exception do
   ex_erroSql_Novo(DM5.Qr_Ne,111,'func Erro:'+e.Message ,'CADNE');
   end;





DM5.tb_rcfop.Close;

DM5.tb_rcfop.CreateDataSet;
DM5.tb_rcfop.Open;


mtmp_RSE :=fProcTemp(13);
if DM5.TB_RSE.Active then
   DM5.TB_RSE.Close;
if DM5.TB_RSE.Exists then
   DM5.TB_RSE.DeleteTable;
DM5.TB_RSE.TableName:=mtmp_RSE;
DM5.TB_RSE.CreateTable;
DM5.Tb_RSE.open;


fAbrirClientDataSet(DM5.tb_ruf);



mtmp_RE :=fProcTemp(13);
if DM5.TB_RE.Active then
   DM5.TB_RE.Close;
if DM5.TB_RE.Exists then
   DM5.TB_RE.DeleteTable;
DM5.TB_RE.TableName:=mtmp_RE;
DM5.TB_RE.CreateTable;
DM5.Tb_RE.open;
{
mtmp_RE2 :=fProcTemp(13);
if DM5.TB_RE.Active then
   DM5.TB_RE.Close;
if DM5.TB_RE.Exists then
   DM5.TB_RE.DeleteTable;
DM5.TB_RE.TableName:=mtmp_RE2;
DM5.TB_RE.CreateTable;
DM5.Tb_RE.open;

mtmp_RE3 :=fProcTemp(13);
if DM5.TB_RE.Active then
   DM5.TB_RE.Close;
if DM5.TB_RE.Exists then
   DM5.TB_RE.DeleteTable;
DM5.TB_RE.TableName:=mtmp_RE3;
DM5.TB_RE.CreateTable;
DM5.Tb_RE.open;
}
GeraLFE(0,StrToDate(MDT1.Text),StrToDate(MDT2.Text),CB_IPIICMS.Checked,MCFOP.Text);
DM5.Tb_RE.First;
If DM5.TB_RE.Eof then
   begin
   fmensagem('Nada foi Selecionado para Impressão!',0,['0'],0);
   Exit;
   end;
If TERMO.ItemIndex=0 then
   begin
   If (Trim(DTTERM1.Text)='/  /') then
      begin
      fmensagem('Informe a Data do Termo de Abertura!',0,['0'],0);
      Exit;
      end;
   If (Trim(DTTERM2.Text)='/  /') then
      begin
      fmensagem('Informe a Data do Termo de Encerramento!',0,['0'],0);
      Exit;
      end;
   end;

//Codição da Listagem
testeform := TFrm_LRE(FindGlobalComponent('form_impres_lre'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_lre);
   end;

form_impres_lre.RDprint1.FonteTamanhoPadrao:=S20cpp;
form_impres_lre.RDprint1.TamanhoQteColunas:=170;
form_impres_lre.RDprint1.Abrir;

if cb_listarpor.ItemIndex = 0 then begin
  DM5.Query1.Close;
  DM5.Query1.Sql.Clear;
  DM5.Query1.Sql.Add('CREATE INDEX CADRNE0 ON '+mtmp_RE+' (CFO)');
  try
    DM5.Query1.ExecSQL;
  except

  end;

  try
    DM5.Tb_RE.IndexName := 'CADRNE0';
  except
  end;

end else if cb_listarpor.ItemIndex = 1 then begin
  DM5.Query1.Close;
  DM5.Query1.Sql.Clear;
  DM5.Query1.Sql.Add('CREATE INDEX CADRNE01 ON '+mtmp_RE2+' (DATA)');
  try
    DM5.Query1.ExecSQL;
  except

  end;

  try
    DM5.Tb_RE.IndexName := 'CADRNE01';
  except
  end;

end else if cb_listarpor.ItemIndex = 2 then begin
  DM5.Query1.Close;
  DM5.Query1.Sql.Clear;
  DM5.Query1.Sql.Add('CREATE INDEX CADRNE02 ON '+mtmp_RE3+' (NUMERO)');
  try
    DM5.Query1.ExecSQL;
  except

  end;

  try
    DM5.Tb_RE.IndexName := 'CADRNE02';
  except
  end;

end;

DM5.TB_RE.First;
mdia:=DM5.TB_REEntrada.Value;
mpag:=StrToInt(PGI.Text);
if TERMO.ItemIndex=1 then
    mpag:=mpag-1;
if (StrToInt(PGI.Text)<>1) and not (StrToInt(PGI.Text)=0) then
   mpag:=mpag-1;
mlin:=0;
mtd1vc:=0; mtd2vc:=0; mtd3vc:=0; mtd4vc:=0; mtd5vc:=0;
mtd1bc:=0; mtd2bc:=0; mtd3bc:=0; mtd4bc:=0; mtd5bc:=0;
mtd1ic:=0; mtd2ic:=0; mtd3ic:=0; mtd4ic:=0; mtd5ic:=0;
mtg1vc:=0; mtg2vc:=0; mtg3vc:=0; mtg4vc:=0; mtg5vc:=0;
mtg1bc:=0; mtg2bc:=0; mtg3bc:=0; mtg4bc:=0; mtg5bc:=0;
mtg1ic:=0; mtg2ic:=0; mtg3ic:=0; mtg4ic:=0; mtg5ic:=0;
mtgipi01vc:=0; mtgipi01bc:=0; mtgipi01ic:=0;
mtgipi02vc:=0; mtgipi02bc:=0; mtgipi02ic:=0;
mtgipi03vc:=0; mtgipi03bc:=0; mtgipi03ic:=0;
mtgipi04vc:=0; mtgipi04bc:=0; mtgipi04ic:=0;
mtgipi05vc:=0; mtgipi05bc:=0; mtgipi05ic:=0;
mtdipi01vc:=0; mtdipi01bc:=0; mtdipi01ic:=0;
mtdipi02vc:=0; mtdipi02bc:=0; mtdipi02ic:=0;
mtdipi03vc:=0; mtdipi03bc:=0; mtdipi03ic:=0;
mtdipi04vc:=0; mtdipi04bc:=0; mtdipi04ic:=0;
mtdipi05vc:=0; mtdipi05bc:=0; mtdipi05ic:=0;

memo_csv.Clear;
if TIPO.ItemIndex<>2 then
   begin
   while not DM5.TB_RE.Eof do
      begin
      if valint(MCFOP.Text)<>0 then
         begin
         if valint(DM5.Tb_RECFO.Value)<>valint(MCFOP.Text) then
            begin
            DM5.Tb_RE.Next;
            Continue;
            end;
         end;
      If mlin=0 then
         begin
         mpag:=mpag+1;
         flrecab(1);
         end;
      if DM5.Tb_RESTATUS.Value=9 then
         mcinst2:='CANCEL.'
      else
         mcinst2:=FormatFloat('0000000',DM5.TB_REChave.Value);
      if CB_IPIICMS.Checked then
         mcinst3:='ICMS'
      else
         mcinst3:=DM5.TB_RETIPO.Value;

      if DM5.Tb_REORDEM.AsInteger<2 then
         begin
         mLinha_csv:=insere(DM5.TB_REENTRADA.Value,' ',2)  +
                   '  ; '+insere(DM5.TB_REESP.Value,' ',3)    +
                   ' ; '+insere(DM5.TB_RESERIE.Value,' ',3)   +
                   ' ;'+insere(DM5.TB_RENUMERO.Value,' ',9)   +
                   ';'+insere(FormatDateTime('dd/mm/yy',DM5.TB_REDATA.Value),' ',9)      +
                   '; '+insere(DM5.TB_REEmitente.Value,' ',18)+
                   ' ;'+insere(DM5.TB_REUF.Value,' ',2)       +
                   ';'+insere(FormatFloat('##,##0.00',DM5.TB_REVlrContabil.Value),' ',16)+
                   ' ;'+insere(' ',' ',6);

         mcinst4:='| '+insere(DM5.TB_REENTRADA.Value,' ',2)  +
                   '  | '+insere(DM5.TB_REESP.Value,' ',3)    +
                   ' | '+insere(DM5.TB_RESERIE.Value,' ',3)   +
                   ' |'+insere(DM5.TB_RENUMERO.Value,' ',9)   +
                   '|'+insere(FormatDateTime('dd/mm/yy',DM5.TB_REDATA.Value),' ',9)      +
                   '| '+insere(DM5.TB_REEmitente.Value,' ',18)+
                   ' |'+insere(DM5.TB_REUF.Value,' ',2)       +
                   '|'+insere(FormatFloat('##,##0.00',DM5.TB_REVlrContabil.Value),' ',16)+
                   ' |'+insere(' ',' ',6);
         end
      else
         begin
         mLinha_csv:=insere(' ',' ',2)  +
                   '  ; '+insere(' ',' ',3)    +
                   ' ; '+insere(' ',' ',3)   +
                   ' ;'+insere(' ',' ',9)   +
                   ';'+insere(' ',' ',9)      +
                   '; '+insere(' ',' ',18)+
                   ' ;'+insere(' ',' ',2)       +
                   ';'+insere(' ',' ',16)+
                   ' ;'+insere(' ',' ',6);

         mcinst4:='| '+insere(' ',' ',2)  +
                   '  | '+insere(' ',' ',3)    +
                   ' | '+insere(' ',' ',3)   +
                   ' |'+insere(' ',' ',9)   +
                   '|'+insere(' ',' ',9)      +
                   '| '+insere(' ',' ',18)+
                   ' |'+insere(' ',' ',2)       +
                   '|'+insere(' ',' ',16)+
                   ' |'+insere(' ',' ',6);
         end;



//dm1.query1.fields[0].asstring
       form_impres_lre.RDprint1.ImpF(mlin,01,mcinst4+'|  '+insere(DM5.TB_RECFO.Value,' ',4)     +
                   '| '+insere(mcinst3,' ',4)     +
                   ' | '+insere(DM5.TB_REX.Value,' ',1)       +
                   ' |'+insere(FormatFloat('##,##0.00',DM5.TB_REBase.Value),' ',17)+
                   '|'+insere(FormatFloat('##0.00',DM5.TB_REALIQ.Value),' ',6)+
                   ' |'+insere(FormatFloat('##,##0.00',DM5.TB_REIMPOSTO.Value),' ',13)+
                   '|  '+mcinst2+'    |',m20ccp);

       mlinha_csv:=mlinha_csv+';  '+insere(DM5.TB_RECFO.Value,' ',4)     +
                   '; '+insere(mcinst3,' ',4)     +
                   '; '+insere(DM5.TB_REX.Value,' ',1)       +
                   ';'+insere(FormatFloat('##,##0.00',DM5.TB_REBase.Value),' ',17)+
                   ';'+insere(FormatFloat('##0.00',DM5.TB_REALIQ.Value),' ',6)+
                   ';'+insere(FormatFloat('##,##0.00',DM5.TB_REIMPOSTO.Value),' ',13)+
                   ';  '+mcinst2+'    ;';
        memo_csv.Add(mlinha_csv);


      mlin:=mlin+1;
      if DM5.Tb_RESTATUS.Value<>9 then
         begin
         if StrToInt('0'+DM5.TB_REX.value)=1 then
            begin
            if (DM5.TB_RETIPO.Value='IPI') and not (CB_IPIICMS.Checked) then
               begin
               if DM5.Tb_REORDEM.AsFloat<2 then
                  begin
                  mtgipi01vc:=mtgipi01vc+DM5.TB_REVlrContabil.value;
                  mtdipi01vc:=mtdipi01vc+DM5.TB_REVlrContabil.value;
                  end;
               mtgipi01bc:=mtgipi01bc+DM5.TB_REBase.value;
               mtgipi01ic:=mtgipi01ic+DM5.TB_REImposto.Value;
               mtdipi01bc:=mtdipi01bc+DM5.TB_REBase.value;
              mtdipi01ic:=mtdipi01ic+DM5.TB_REImposto.Value;
              end
            else
                begin
                if DM5.Tb_REORDEM.AsFloat<2 then
                   begin
                   mtd1vc := mtd1vc + DM5.TB_REVlrContabil.Value;
                   mtg1vc := mtg1vc + DM5.TB_REVlrContabil.Value;
                   end;



                mtd1bc := mtd1bc + DM5.TB_REBase.Value;
                mtd1ic := mtd1ic + DM5.TB_REImposto.Value;
                mtg1bc := mtg1bc + DM5.TB_REBase.Value;
                mtg1ic := mtg1ic + DM5.TB_REImposto.Value;
                end;
             end
          else if StrToInt('0'+DM5.TB_REX.value)=2 then
             begin
             if (DM5.TB_RETIPO.Value='IPI') and not (CB_IPIICMS.Checked) then
                begin
                if DM5.Tb_REORDEM.AsFloat<2 then
                   begin
                   mtdipi02vc:=mtdipi02vc+DM5.TB_REVlrContabil.value;
                   mtgipi02vc:=mtgipi02vc+DM5.TB_REVlrContabil.value;
                   end;

                mtgipi02bc:=mtgipi02bc+DM5.TB_REBase.value;
                mtgipi02ic:=mtgipi02ic+DM5.TB_REImposto.Value;
                mtdipi02bc:=mtdipi02bc+DM5.TB_REBase.value;
                mtdipi02ic:=mtdipi02ic+DM5.TB_REImposto.Value;
                end
             else
                begin
                if DM5.Tb_REORDEM.AsFloat<2 then
                   begin
                   mtd2vc := mtd2vc + DM5.TB_REVlrContabil.Value;
                   mtg2vc := mtg2vc + DM5.TB_REVlrContabil.Value;
                   end;


                mtd2bc := mtd2bc + DM5.TB_REBase.Value;
                mtd2ic := mtd2ic + DM5.TB_REImposto.Value;
                mtg2bc := mtg2bc + DM5.TB_REBase.Value;
                mtg2ic := mtg2ic + DM5.TB_REImposto.Value;
                end;
             end
          else if StrToInt('0'+DM5.TB_REX.value)=3 then
             begin
             if (DM5.TB_RETIPO.Value='IPI') and not (CB_IPIICMS.Checked) then
                begin
                if DM5.Tb_REORDEM.AsFloat<2 then
                   begin
                   mtgipi03vc:=mtgipi03vc+DM5.TB_REVlrContabil.value;
                   mtdipi03vc:=mtdipi03vc+DM5.TB_REVlrContabil.value;
                   end;

                mtgipi03bc:=mtgipi03bc+DM5.TB_REBase.value;
                mtgipi03ic:=mtgipi03ic+DM5.TB_REImposto.Value;
                mtdipi03bc:=mtdipi03bc+DM5.TB_REBase.value;
                mtdipi03ic:=mtdipi03ic+DM5.TB_REImposto.Value;
                end
             else
                begin
                if DM5.Tb_REORDEM.AsFloat<2 then
                   begin
                   mtd3vc := mtd3vc + DM5.TB_REVlrContabil.Value;
                   mtg3vc := mtg3vc + DM5.TB_REVlrContabil.Value;
                   end
                else
                   begin
                   mtd1vc := mtd1vc - DM5.TB_REBase.Value;
                   mtg1vc := mtg1vc - DM5.TB_REBase.Value;
                   mtd3vc := mtd3vc + DM5.TB_REBase.Value;
                   mtg3vc := mtg3vc + DM5.TB_REBase.Value;

                   end;

                mtd3bc := mtd3bc + DM5.TB_REBase.Value;
                mtd3ic := mtd3ic + DM5.TB_REImposto.Value;
                mtg3bc := mtg3bc + DM5.TB_REBase.Value;
                mtg3ic := mtg3ic + DM5.TB_REImposto.Value;
                end;
             end
          else if StrToInt('0'+DM5.TB_REX.value)=4 then
             begin
             if (DM5.TB_RETIPO.Value='IPI')  and not (CB_IPIICMS.Checked) then
                begin
                if DM5.Tb_REORDEM.AsFloat<2 then
                   begin
                   mtgipi04vc:=mtgipi04vc+DM5.TB_REVlrContabil.value;
                   mtdipi04vc:=mtdipi04vc+DM5.TB_REVlrContabil.value;
                   end;

                mtgipi04bc:=mtgipi04bc+DM5.TB_REBase.value;
                mtgipi04ic:=mtgipi04ic+DM5.TB_REImposto.Value;
                mtdipi04bc:=mtdipi04bc+DM5.TB_REBase.value;
                mtdipi04ic:=mtdipi04ic+DM5.TB_REImposto.Value;
                end
             else
                begin
                if DM5.Tb_REORDEM.AsFloat<2 then
                   begin
                   mtd4vc := mtd4vc + DM5.TB_REVlrContabil.Value;
                   mtg4vc := mtg4vc + DM5.TB_REVlrContabil.Value;
                   end;

                mtd4bc := mtd4bc + DM5.TB_REBase.Value;
                mtd4ic := mtd4ic + DM5.TB_REImposto.Value;
                mtg4bc := mtg4bc + DM5.TB_REBase.Value;
                mtg4ic := mtg4ic + DM5.TB_REImposto.Value;
                end;
             end
          else if StrToInt('0'+DM5.TB_REX.value)=5 then
             begin
             if (DM5.TB_RETIPO.Value='IPI')  and not (CB_IPIICMS.Checked) then
                begin
                if DM5.Tb_REORDEM.AsFloat<2 then
                   begin
                   mtgipi05vc:=mtgipi05vc+DM5.TB_REVlrContabil.value;
                   mtdipi05vc:=mtdipi05vc+DM5.TB_REVlrContabil.value;
                   end;


                mtgipi05bc:=mtgipi05bc+DM5.TB_REBase.value;
                mtgipi05ic:=mtgipi05ic+DM5.TB_REImposto.Value;
                mtdipi05bc:=mtdipi05bc+DM5.TB_REBase.value;
                mtdipi05ic:=mtdipi05ic+DM5.TB_REImposto.Value;
                end
             else
                begin
                if DM5.Tb_REORDEM.AsFloat<2 then
                   begin
                   mtd5vc := mtd5vc + DM5.TB_REVlrContabil.Value;
                   mtg5vc := mtg5vc + DM5.TB_REVlrContabil.Value;
                   end;
                mtd5bc := mtd5bc + DM5.TB_REBase.Value;
                mtd5ic := mtd5ic + DM5.TB_REImposto.Value;
                mtg5bc := mtg5bc + DM5.TB_REBase.Value;
                mtg5ic := mtg5ic + DM5.TB_REImposto.Value;
                end;
             end;
          end;
      mdia := DM5.TB_REentrada.Value;
      DM5.TB_RE.Next;
      if (DM5.TB_RE.Eof) or (mdia<>DM5.TB_REEntrada.Value) then
         begin
         if (mlin<=55) then
            begin
            flretotd(1);
            mlin:=mlin+1;
            end
         Else
            begin
            form_impres_lre.RDprint1.Impf(mlin,01,'+-----+-----+-----+---------+---------+--------------------+--+'+
                      '-----------------+------+------+------+---+-----------------+-------+-------------+'+
                       '-------------+',m20ccp);
            form_impres_lre.RDprint1.NovaPagina;
            mpag:=mpag+1;
            flrecab(1);
            flretotd(1);
            mlin:=mlin+1;
            end;
         end;
      If DM5.TB_RE.Eof  then
         begin
         if (mlin<=55) then
            flretg(1)
         Else
            begin
            form_impres_lre.RDprint1.Impf(mlin,01,'+-----+-----+-----+---------+---------+--------------------+--+'+
                         '-----------------+------+------+------+---+-----------------+-------+-------------+'+
                         '-------------+',m20ccp);
            form_impres_lre.RDprint1.NovaPagina;
            mpag:=mpag+1;
            flrecab(1);
            flretg(1);
            end
         end
      else if (mlin>55) then
         begin
         mlin:=mlin+1;
         form_impres_lre.RDprint1.Impf(mlin,01,'+-----+-----+-----+---------+---------+--------------------+--+'+
                     '-----------------+------+------+------+---+-----------------+-------+-------------+'+
                   '-------------+',m20ccp);
         form_impres_lre.RDprint1.NovaPagina;
         mlin:=0;
         end;
      end;
   End;

if (mtd1vc+mtd2vc+mtd3vc+mtd4vc+mtd5vc)+
   (mtd1bc+mtd2bc+mtd3bc+mtd4vc+mtd5bc)+
   (mtd1ic+mtd2ic+mtd3ic+mtd4ic+mtd5ic)+
   (mtdipi01vc+mtdipi01bc+mtdipi01ic)+
   (mtdipi02vc+mtdipi02bc+mtdipi02ic)+
   (mtdipi03vc+mtdipi03bc+mtdipi03ic)+
   (mtdipi04vc+mtdipi04bc+mtdipi04ic)+
   (mtdipi05vc+mtdipi05bc+mtdipi05ic)>0 then
   begin
   if (mlin<=55) then
      begin
      flretotd(1);
      mlin:=mlin+1;
      end
   Else
      begin
      form_impres_lre.RDprint1.Impf(mlin,01,'+-----+-----+-----+---------+---------+--------------------+--+'+
                '-----------------+------+------+------+---+-----------------+-------+-------------+'+
                 '-------------+',m20ccp);
      form_impres_lre.RDprint1.NovaPagina;
      mpag:=mpag+1;
      flrecab(1);
      flretotd(1);
      mlin:=mlin+1;
      end;
   end;
if (mtg1vc+mtg2vc+mtg3vc+mtg4vc+mtg5vc+
    mtg1bc+mtg2bc+mtg3bc+mtg4bc+mtg5bc+
    mtg1ic+mtg2ic+mtg3ic+mtg4ic+mtg5ic+
    mtgipi01vc+mtgipi01bc+mtgipi01ic+
    mtgipi02vc+mtgipi02bc+mtgipi02ic+
    mtgipi03vc+mtgipi03bc+mtgipi03ic+
    mtgipi04vc+mtgipi04bc+mtgipi04ic+
    mtgipi05vc+mtgipi05bc+mtgipi05ic)>0 then
    begin
    if (mlin<=55) then
       flretg(1)
    Else
       begin
       form_impres_lre.RDprint1.Impf(mlin,01,'+-----+-----+-----+---------+---------+--------------------+--+'+
                    '-----------------+------+------+------+---+-----------------+-------+-------------+'+
                    '-------------+',m20ccp);
       form_impres_lre.RDprint1.NovaPagina;
       mpag:=mpag+1;
       flrecab(1);
       flretg(1);
       end;
    end;

mlin:=0;
If TIPO.ItemIndex<>1 then
   Begin
   mtg1vc:=0;
   mtg1bc:=0; mtg2bc:=0; mtg3bc:=0; mtg4bc:=0; mtg5bc:=0;
   mtg1ic:=0; mtg2ic:=0; mtg3ic:=0; mtg4ic:=0; mtg5ic:=0;
   DM5.Tb_RSE.First;
   mlin:=0;
   form_impres_lre.Rdprint1.NovaPagina;
   While not DM5.Tb_RSE.Eof do
      Begin;
      if valint(MCFOP.Text)<>0 then
         begin
         if valint(DM5.Tb_RSECFO.Value)<>valint(MCFOP.Text) then
            begin
            DM5.Tb_RSE.Next;
            Continue;
            end;
         end;

      If mlin=0 then
         Begin;
         mpag := mpag + 1;
         flrecab(1);
         mlin:=mlin+1;
         form_impres_lre.RDprint1.Impf(mlin,01,'Resumo por Estado/CFO',m20ccp);
         mlin:=mlin+1;
         form_impres_lre.RDprint1.Impf(mlin,01,'----------------------------------------------------------------------------------------------------------------------------------------------------------',m20ccp);
         mlin:=mlin+1;
         form_impres_lre.RDprint1.Impf(mlin,01,'CFO  UF  %   Vl_Contabil      Base 01     Valor 01      Base 02     Valor 02      Base 03     Valor 03      Base 04     Valor 04      Base 05     Valor 05',m20ccp);
         mlin:=mlin+1;
         form_impres_lre.RDprint1.Impf(mlin,01,'----------------------------------------------------------------------------------------------------------------------------------------------------------',m20ccp);
         mlin:=mlin+1;
         end;
      form_impres_lre.RDprint1.Impf(mlin,01,insere(DM5.Tb_RSECFO.Value,' ',4)+' '+
                insere(DM5.Tb_RSEUF.Value,' ',2) +' '+
                insere(FormatFloat('00',DM5.Tb_RSEAliq.Value),' ',2)+' '+
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEVLRCONTABIL.Value),' ',13)+' '+
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEBASE01.Value),' ',12)+' '     +
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEVALOR01.Value),' ',12)+' '    +
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEBASE02.Value),' ',12)+' '     +
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEVALOR02.Value),' ',12)+' '    +
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEBASE03.Value),' ',12)+' '     +
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEVALOR03.Value),' ',12)+' '    +
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEBASE04.Value),' ',12)+' '     +
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEVALOR04.Value),' ',12)+' '    +
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEBASE05.Value),' ',12)+' '     +
                insere(FormatFloat('##,#0.00',DM5.Tb_RSEVALOR05.Value),' ',12),m20ccp);
      mtg1vc := mtg1vc + DM5.Tb_RSEVLRCONTABIL.Value;
      mtg1bc := mtg1bc + DM5.Tb_RSEBASE01.Value;
      mtg1ic := mtg1ic + DM5.Tb_RSEVALOR01.Value;
      mtg2bc := mtg2bc + DM5.Tb_RSEBASE02.Value;
      mtg2ic := mtg2ic + DM5.Tb_RSEVALOR02.Value;
      mtg3bc := mtg3bc + DM5.Tb_RSEBASE03.Value;
      mtg3ic := mtg3ic + DM5.Tb_RSEVALOR03.Value;
      mtg4bc := mtg4bc + DM5.Tb_RSEBASE04.Value;
      mtg4ic := mtg4ic + DM5.Tb_RSEVALOR04.Value;
      mtg5bc := mtg5bc + DM5.Tb_RSEBASE05.Value;
      mtg5ic := mtg5ic + DM5.Tb_RSEVALOR05.Value;
      mlin := mlin + 1;
      DM5.Tb_RSE.Next;
      If DM5.Tb_RSE.Eof Then
         begin
         form_impres_lre.RDprint1.Impf(mlin,01,'----------------------------------------------------------------------------------------------------------------------------------------------------------',m20ccp);
         mlin:=mlin+1;
         form_impres_lre.RDprint1.Impf(mlin,01,'- Total... '+
             insere(FormatFloat('##,#0.00',mtg1vc),' ',13)+' '+
             insere(FormatFloat('##,#0.00',mtg1bc),' ',12)+' '+
             insere(FormatFloat('##,#0.00',mtg1ic),' ',12)+' '+
             insere(FormatFloat('##,#0.00',mtg2bc),' ',12)+' '+
             insere(FormatFloat('##,#0.00',mtg2ic),' ',12)+' '+
             insere(FormatFloat('##,#0.00',mtg3bc),' ',12)+' '+
             insere(FormatFloat('##,#0.00',mtg3ic),' ',12)+' '+
             insere(FormatFloat('##,#0.00',mtg4bc),' ',12)+' '+
             insere(FormatFloat('##,#0.00',mtg4ic),' ',12)+' '+
             insere(FormatFloat('##,#0.00',mtg5bc),' ',12)+' '+
             insere(FormatFloat('##,#0.00',mtg5ic),' ',12),m20ccp);
         mlin:=mlin+1;
         form_impres_lre.RDprint1.Impf(mlin,01,'----------------------------------------------------------------------------------------------------------------------------------------------------------',m20ccp);
         end
      else if mlin>60 then
         begin
         mlin:=mlin+1;
         form_impres_lre.RDprint1.Impf(mlin,01,'----------------------------------------------------------------------------------------------------------------------------------------------------------',m20ccp);
         form_impres_lre.Rdprint1.Novapagina;
         mlin:=0;
         end;
      end;
   if TERMO.ItemIndex=0 then
      termos(2,valint(LN.Text),valint(pgi.Text),StrToDate(MDT1.Text),StrToDate(MDT2.Text));
   if form_impres_lre.RDprint1.Setup then form_impres_lre.RDprint1.Fechar;
   form_impres_lre.free;
   form_impres_lre:=nil;
   DM5.Tb_RSE.First;
   end;

if DM5.TB_RE.Active then
   DM5.TB_RE.Close;
if DM5.TB_RE.Exists then
   DM5.TB_RE.DeleteTable;

if DM5.TB_RSE.Active then
   DM5.TB_RSE.Close;
if DM5.TB_RSE.Exists then
   DM5.TB_RSE.DeleteTable;
if cb_csv.Checked=true then
   begin
   SaveDialog1.FileName:='c:\livroent.cvs';
   if SaveDialog1.Execute then
      begin
      try
         memo_csv.savetofile(SaveDialog1.FileName);
         MessageDlg('Arquivo salvo como: '+SaveDialog1.FileName,mtInformation,[mbOk],0);
      except
         end;
      end;
   end;
if trim(mNNumnf_irreg)<>'' then
   begin
   Application.CreateForm(TFrm_Sintegra_Advert,Frm_Sintegra_Advert);
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(mNNumnf_Irreg);
   Frm_Sintegra_Advert.ShowModal;
   Frm_Sintegra_Advert.Free;
   Frm_Sintegra_Advert:=nil;
   mNNumnf_Irreg:='';
   end;


end;

procedure TFrm_LRE.LNKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;
end;

procedure TFrm_LRE.LNExit(Sender: TObject);
begin
LN.Text:=FormatFloat('000',StrToInt(LN.Text));
end;

procedure TFrm_LRE.PGIKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;

end;

procedure TFrm_LRE.MPG1KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;

end;

procedure TFrm_LRE.MPG2KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;

end;

Function geralfe(origem: Integer; pDt1, pDt2: TDatetime; pIcmIpi: Boolean; pCfo: String): boolean;
var

mfrete,mFrete_base,mFrete_icms,mFrete_aliq,mvlrcont,misentas,moutras,moutras_imp,mipi,moutninc :Real;
mbasen,micmsn, maliq:Real;

mcfonf: String;
mTotGerSoma: Real;

begin



DM5.Qr_NE.First;
if mlivro_ant then
   begin
   while not DM5.Qr_NE.Eof do
      begin
{
      if trim(pcfo)<>'' then
         begin
         if DM5.Qr_NeNECFO.Asstring<>pcfo then
            begin
            DM5.Qr_Ne.Next;
            Continue;
            end;

         end;
}
      par_ordement:=1;

      micmsret:=0;
      mbaseret:=0;

      if DM5.Qr_Netp_oper.Value=5 then
         begin
         fnotei5(origem,DM5.Qr_NeNECFO.Value);
         par_ordement:=par_ordement+1;

         end
      else if DM5.Qr_Netp_oper.Value=4 then // NEICMSR.Value>0 then
         begin
         if DM5.Qr_NeNEOUTNINC.Value>0 then
            begin
            fnotei3(origem,DM5.Qr_NENeOutNINC.Value,DM5.Qr_NeNECFO.Value);
            par_ordement:=par_ordement+1;
            end;

         fnotei4(origem,DM5.Qr_NeNECFO.Value);
         par_ordement:=par_ordement+1;

         if (DM5.Qr_NENEICMSN.Value+DM5.Qr_NeNEBASEN.Value)>0 then
            begin
            fnotei1(origem,DM5.Qr_NeNECFO.Value);
            par_ordement:=par_ordement+1;
            end;

//      if DM5.Qr_NENEIPI.Value>0 then
//         fnoteipi3(1);
         end
      else if DM5.Qr_Netp_oper.Value=3 then
         begin
         if DM5.Qr_NeNEOUTNINC.Value>0 then
            fnotei3(origem,DM5.Qr_NeNEOUTNINC.Value,DM5.Qr_NeNECFO.Value)
         else
            fnotei3(origem,DM5.Qr_NeNETOTNOT.Value,DM5.Qr_NeNECFO.Value);
         par_ordement:=par_ordement+1;
         end
      else if DM5.Qr_Netp_oper.Value=2 then
         begin
         if DM5.Qr_NeNEISENTAS.Value>0 then
            fnotei2(Origem,DM5.Qr_NeNEISENTAS.Value,DM5.Qr_NeNECFO.Value)
         else
            fnotei2(Origem,DM5.Qr_NeNETOTNOT.Value,DM5.Qr_NeNECFO.Value);
         par_ordement:=par_ordement+1;
         end
      else if DM5.Qr_Netp_oper.Value=3 then  // (DM5.Qr_NENEICMSN.Value+DM5.Qr_NENEBASEN.Value)>0 then
         begin
//         fnotei1(Origem);
//         if DM5.Qr_NENEOUTRAS.Value>0 then
         if DM5.QR_NeNEOUTNINC.Value>0 then
            fnotei3(origem,DM5.Qr_NeNEOUTNINC.Value,DM5.Qr_NeNECFO.Value)
         else
            fnotei3(origem,DM5.Qr_NENETOTNOT.Value,DM5.Qr_NeNECFO.Value);
         par_ordement:=par_ordement+1;

         end
      else if DM5.Qr_NeNEOUTNINC.Value>0 then
         begin
         fnotei3(origem,DM5.Qr_NENEOUTNINC.Value, DM5.Qr_NeNECFO.Value);
         par_ordement:=par_ordement+1;
         end
      else
         begin
         fnotei1(origem,DM5.Qr_NeNECFO.Value);
         par_ordement:=par_ordement+1;
         end;
      par_ordement:=1;
      DM5.Qr_NE.Next;
      end
   end
else
   begin
   While not DM5.Qr_NE.Eof do
      begin
      par_ordement:=1;
      micmsret:=0;
      mbaseret:=0;

      if DM5.Qr_NeNECHAVEP.Value=0 then
         begin
{
         if trim(pcfo)<>'' then
            begin
            if DM5.Qr_NeNECFO.Asstring<>pcfo then
               begin
               DM5.Qr_Ne.Next;
               Continue;
               end;

            end;
}

         {
         if (DM5.Qr_NENECFO.Value=161) or (DM5.Qr_NENECFO.Value=261) or
            (DM5.Qr_NENECFO.Value=163) or (DM5.Qr_NENECFO.Value=263) or
            (DM5.Qr_NENECFO.Value=1353) or (DM5.Qr_NENECFO.Value=2353) then
            }
         if DM5.Qr_Netp_oper.Value=5 then
            begin
            fnotei5(origem,DM5.Qr_NeNECFO.Value);
            par_ordement:=par_ordement+1;
            end
         else if DM5.Qr_Netp_oper.Value=4 then // NENEICMSR.Value>0 then
            begin
            if DM5.Qr_NeNEOUTNINC.Value>0 then
               begin
               fnotei3(origem,DM5.Qr_NeNEOUTNINC.Value,DM5.Qr_NeNECFO.Value);
               par_ordement:=par_ordement+1;
               end;
            fnotei4(origem,DM5.Qr_NeNECFO.Value);
//            par_ordement:=par_ordement+1;
            if (DM5.Qr_NENEICMSN.Value+DM5.Qr_NeNEBASEN.Value)>0 then
               begin
               fnotei1(origem,DM5.Qr_NeNECFO.Value);
               par_ordement:=par_ordement+1;
               end;
            end
         else if DM5.Qr_Netp_oper.Value=3 then   // (DM5.Qr_NENEICMSN.Value+DM5.Qr_NENEBASEN.Value)>0 then
            begin
            if DM5.Qr_NeNEOUTNINC.Value>0 then
               fnotei3(Origem,DM5.Qr_NeNEOUTNINC.Value, DM5.Qr_NeNECFO.Value)
            else
               fnotei3(Origem,DM5.Qr_NeNETOTNOT.Value, DM5.Qr_NeNECFO.Value);
            par_ordement:=par_ordement+1;

//            if DM5.Qr_NENEOUTRAS.Value>0 then
//               fnotei3(origem);
            end
         else if DM5.Qr_NeNEOUTNINC.Value>0 then
            begin
            if DM5.Qr_NeNEOUTNINC.asfloat<DM5.Qr_NENETOTNOT.AsFloat then
               begin
               fnotei1(origem,DM5.Qr_NeNECFO.Value);
               par_ordement:=par_ordement+1;
               if DM5.Qr_NeNEISENTAS.Value>0 then
                  begin
                  fnotei2(Origem,DM5.Qr_NeNEISENTAS.Value,DM5.Qr_NeNECFO.Value);
                  par_ordement:=par_ordement+1;
                  end;

               end;

            fnotei3(origem,DM5.Qr_NENEOUTNINC.Value,DM5.Qr_NeNECFO.Value);
            par_ordement:=par_ordement+1;
            if dm5.Qr_NeNEICMSR.AsFloat>0 then
               begin
               fnotei3(origem,DM5.Qr_NeNEICMSR.Value,DM5.Qr_NeNECFO.Value);
               par_ordement:=par_ordement+1;
               end;

            end
         else if DM5.Qr_NeNEICMSR.Value>0 then
            begin

            if DM5.Qr_NENEICMSR.asfloat<DM5.Qr_NENETOTNOT.AsFloat then
               begin
               fnotei1(origem,DM5.Qr_NeNECFO.Value);
               par_ordement:=par_ordement+1;
               end;
            if DM5.Qr_NeNEISENTAS.Value>0 then
               begin
               fnotei2(Origem,DM5.Qr_NeNEISENTAS.Value,DM5.Qr_NeNECFO.Value);
               par_ordement:=par_ordement+1;
               end;

            fnotei3(origem,DM5.Qr_NeNEICMSR.Value,DM5.Qr_NeNECFO.Value);
            par_ordement:=par_ordement+1;

            end

         else
            begin
            fnotei1(origem,DM5.Qr_NeNECFO.Value);
            par_ordement:=par_ordement+1;
            end;

         end
     else
        begin
        if DM5.Qr_NeORIGEM.Value='S' then
           begin
           DM5.Qr_PSintESoma.Close;
           DM5.Qr_PSintESoma.SQL.Clear;
           DM5.Qr_PSintESoma.SQL.add('Select sum(P2TOTDES)   as TOTDES '
                                    +'      ,sum(P2BASEN+nvl(P2BCINR,0))  as BASEN '
                                    +'      ,sum(P2BASER)    as BASER '
                                    +'      ,sum(P2ICMSN+nvl(P2ICMSNR,0))  as ICMSN ');
           if DM5.Qr_NeNEICMSR.AsFloat=0 then
              DM5.Qr_PSintESoma.SQL.add('   ,0    as ICMSR ')
           else
              DM5.Qr_PSintESoma.SQL.add('      ,sum(P2ICMSR)    as ICMSR ');

          DM5.Qr_PSintESoma.SQL.add('      ,sum(P2VALIPI)      as IPI '
                                    +'      ,sum(P2ISENTAS)  as ISENTAS '
                                    +'      ,sum(P2TOTOUT)   as OUTRAS '
                                    +'      ,sum((P2QTD*P2PRECO)-P2TOTDES) AS TOTLIQ '
                                    +'      ,max(P2ALIPI)  as PF2ALIPI '
                                    +'      ,P2CFO AS PF2CFO '
                                    +'      ,P2CFO AS CFONF '
                                    +'       ,'+chr(39)+'   '+chr(39)+' as PF2CFOP_COMP ,P2ALIQ AS PF2ALIQ'
                                    +'      ,P2ALIQNR AS PF2ALIQNR '
                                    +'       from CADP02 where P2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                                    +'       and P2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                                   +'       and P2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                                   +'       and P2ORDEM=0'+DM5.Qr_NeNEORDEM.AsString);

//             if pCfo <> '' then
//                DM5.Qr_PSintESoma.SQL.add(' and P2CFO ='+pCfo);

             DM5.Qr_PSintESoma.SQL.add('       group by P2CFO,P2ALIQ,P2ALIQNR ');
           try
              DM5.Qr_PSintESoma.Open;
           except
              DM5.Qr_PSintESoma.sql.SavetoFile('c:\sqlne.txt');
              end;
//                DM5.Qr_PSintESoma.sql.SavetoFile('c:\sqlne.txt');
           end
        else
           begin

           DM5.Qr_PSintESoma.Close;
           DM5.Qr_PSintESoma.SQL.Clear;
           DM5.Qr_PSintESoma.SQL.add('Select sum(PF2TOTDES)   as TOTDES '
                                    +'      ,sum(PF2BASEN)    as BASEN '
                                    +'      ,sum(PF2BASER)    as BASER '
                                    +'      ,sum(PF2ICMSN)    as ICMSN ');
           if DM5.Qr_NeNEICMSR.AsFloat=0 then
              DM5.Qr_PSintESoma.SQL.add('   ,0    as ICMSR ')
           else
              DM5.Qr_PSintESoma.SQL.add('      ,sum(PF2ICMSR)    as ICMSR ');
           DM5.Qr_PSintESoma.SQL.add('      ,sum(PF2IPI)      as IPI '
                                    +'      ,sum(PF2ISENTAS)  as ISENTAS '
                                    +'      ,sum(PF2OUTRAS)   as OUTRAS '
                                    +'      ,sum((PF2QTDP*PF2PU)-NVL(PF2TOTDES,0)) AS TOTLIQ '
                                    +'      ,max(PF2ALIPI)  as PF2ALIPI '
                                    +'      ,PF2CFO'
                                    +' ,max(PF2CFOP_COMP) as PF2CFOP_COMP '
                                    +'               ,PF2ALIQ,PF2ALIQNR '
                                    +'       from CADPF2 where PF2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                                    +'       and PF2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                                   +'       and PF2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString);

//             if pCfo <> '' then
//                DM5.Qr_PSintESoma.SQL.add(' and PF2CFO ='+pCfo);

             DM5.Qr_PSintESoma.SQL.add('       group by PF2CFO,PF2ALIQ,PF2ALIQNR ');
//           DM5.Qr_PSintESoma.sql.SavetoFile('c:\sqlne.txt');


           try
              DM5.Qr_PSintESoma.Open;
//              DM5.Qr_PSintESoma.sql.SavetoFile('c:\sqlne.txt');
           except
              DM5.Qr_PSintESoma.sql.SavetoFile('c:\sqlne.txt');
              end;

           end;
//        mfrete:=DM5.Qr_NeNEFRETE.Value+DM5.Qr_NeNEOUTRAS.Value;
        mfrete     :=DM5.Qr_NeNEFRETE.Value;
        if DM5.Qr_NeNEALIQ_FRETE.AsFloat=0 then
           begin
           mFrete_base:=0;
           mFrete_aliq:=0;
           mFrete_icms:=0;

           end
        else
           begin
           mFrete_base:=DM5.Qr_NeNEFRETE.Value;
           mFrete_aliq:=DM5.Qr_NeNEALIQ_FRETE.Value;
           mFrete_icms:=DM5.Qr_NeNEICMS_FRETE.AsFloat;
           end;
        mvlrcont:=0;
        moutras :=DM5.Qr_NeNEOUTRAS.Value;
        moutras_imp :=DM5.Qr_NeNEOUTRAS_IMP.Value;
        moutninc:=DM5.Qr_NeNEOUTDESP.Value;
        misentas:=0;
        micmsret:=0;
        micmsret:=0;
{

        While not DM5.Qr_PSintESoma.eof do
           begin
           moutninc:=moutninc+DM5.Qr_PSintESomaOUTRAS.Value;
           misentas:=misentas+DM5.Qr_PSintESomaISENTAS.Value;

           DM5.Qr_PSintESoma.Next;
           end;

        DM5.Qr_PSintESoma.First;
}
//        mipi    :=DM5.Qr_PSintESomaIPI.Value;

        While not DM5.Qr_PSintESoma.Eof do
           begin
           par_ordement:=1;

           mcfonf:=DM5.Qr_PSintESomaPF2CFO.AsString;
           mcfonf:=insere(mcfonf,'0',4);
           if ValInt(mcfonf)>5000 then
              begin
              fmensagem('Tem nota de Entrada com CFO de Nota de Saida'+#13
                        +'CFOP da Nota: '+mcfonf+' Numero da Nota Fiscal: '+DM5.Qr_NeNENUMERO.AsString+#13
                        +'Data: '+FormatDatetime(fdt2, DM5.Qr_NeNEDTEMIS.Value)+' Chave: '+DM5.Qr_NeNECHAVEP.AsString,0,['0'],0);
              end
           else
              begin
              if valint(mcfonf)=0 then
                 begin
                 mcfonf:=FormatFloat('0000', valfloat(DM5.Qr_NeNECFO.Value));
                 end;
              end;
//           mvlrcont:=DM5.Qr_PSintESomaTOTLIQ.Value-DM5.Qr_PSintESomaOUTRAS.Value
//                    -DM5.Qr_PSintESomaISENTAS.Value+moutras+moutninc;

           mipi    :=DM5.Qr_PSintESomaIPI.Value;

           mvlrcont:=DM5.Qr_PSintESomaTOTLIQ.Value+moutras+moutninc+mipi;

           moutninc:=moutninc+DM5.Qr_PSintESomaOUTRAS.Value;
           misentas:=DM5.Qr_PSintESomaISENTAS.Value;

//                    -DM5.Qr_PSintESomaISENTAS.Value-DM5.Qr_PSintESomaIPI.Value;

//                    -DM5.Qr_PSintESomaISENTAS.Value;//-DM5.Qr_PSintESomaIPI.Value;

//           mvlrcont:=mvlrcont+mfrete+DM5.Qr_PSintESomaICMSR.Value+DM5.Qr_PSintESomaIPI.Value;
       //    mvlrcont:=mvlrcont+DM5.Qr_PSintESomaICMSR.Value;
             mvlrcont:=mvlrcont;

           misentas:=DM5.Qr_PSintESomaISENTAS.Value;
//27022007 moutninc:=DM5.Qr_PSintESomaOUTRAS.Value+DM5.Qr_NeNEOUTRAS.Value+DM5.Qr_NeNEOUTDESP.AsFloat;
//           moutninc:=moutninc+DM5.Qr_PSintESomaOUTRAS.Value;
//           moutninc:=DM5.Qr_PSintESomaOUTRAS.Value+dm5.Qr_NeNEOUTNINC.Value+dm5.Qr_NeNEOUTDESP.Value;
           if pIcmIpi then
              begin
              moutninc:=moutninc+mipi;
              mipi:=0;
              end;

//           if  DM5.Qr_NeORIGEM.Value<>'S' then
//               begin
//               mvlrcont:=mvlrcont+moutninc+mipi;
//               moutninc:=DM5.Qr_NeNEOUTRAS.Value+DM5.Qr_NeNEOUTDESP.AsFloat;
//               mvlrcont:=mvlrcont+DM5.Qr_PSintESomaOUTRAS.Value;
//               mvlrcont:=mvlrcont+DM5.Qr_PSintESomaOUTRAS.Value+mipi;
//               end;

//           mipi:=0;
//           moutras :=DM5.Qr_PSintESomaOUTRAS.Value+mfrete+MIPI;
//           moutras :=DM5.Qr_PSintESomaOUTRAS.Value+mfrete;
//ldcnow           if mOrigem_Integer=2 then
//              mvlrcont:=mvlrcont-moutninc-mipi;

           mTotGerSoma:=mipi+mvlrcont+moutninc+misentas+misentas;


           if ( (mvlrcont<>0)  or (mTotGerSoma=0) ) or (misentas<>0) or (DM5.Qr_pSintESomaIPI.Value<>0) then
              begin
              if (mvlrCont<>0) or (mTotGerSoma=0)  then
                 begin
                 if flqr1('CFTPOPER','CF','CADCFO','N','CFCODCFO',mcfonf) then
                    mcinst2:=DM1.Query1.Fields[0].AsString
                 else
                    mcinst2:='1';
                 if valint(mcinst2)=0 then
                    mcinst2:='1';
                 if valint(mcinst2)=3 then
                    begin
                    mbasen:=0;
                    micmsn:=0;
                    mbaseret:=0;
                    micmsret:=0
                    end
                 else if valint(mcinst2)=4 then
                    begin
                    mbaseret:=DM5.Qr_PSintESomaBASER.AsFloat+mbaseret;
                    micmsret:=DM5.Qr_PSintESomaICMSR.AsFloat+micmsret;
                    mvlrcont:=mvlrcont+DM5.Qr_PSintESomaICMSR.AsFloat;
                    mbasen:=DM5.Qr_PSintESomaBASEN.Value+moutras;
                    micmsn:=DM5.Qr_PSintESomaICMSN.Value+moutras_imp;
                    end
                 else
                    begin
                    mbasen:=DM5.Qr_PSintESomaBASEN.Value+moutras;
                    micmsn:=DM5.Qr_PSintESomaICMSN.Value+moutras_imp;
                    mbaseret:=0;
                    micmsret:=0;
//                    micmsn:=DM5.Qr_PSintESomaICMSN.Value+arredonda( ( moutras*DM5.Qr_PSintP2ALIQ.AsFloat/100), DM1.Tb_PargerPCASAS.AsInteger);
                    end;
{                 if DM5.Qr_NeNEOUTRAS.AsFloat<>0 then
                    begin
                    mbasen:=mbasen+(DM5.Qr_NeNEBASEN.Value-DM5.Qr_PSintESomaBASEN.AsFloat);
                    micmsn:=micmsn+(DM5.Qr_NeNEICMSN.Value-DM5.Qr_PSintESomaICMSN.AsFloat);
                    end;
}                if (origem=1)  then
                    begin
                    if DM5.Qr_PSintESomaPF2ALIQ.Value<>0 then
                       maliq:=DM5.Qr_PSintESomaPF2ALIQ.Value
                    else
                       mAliq:=DM5.Qr_PSintESomaPF2ALIQNR.Value;
                    IF mfrete<>0 then
                       begin
                       flrsgrava5475(0,991,mFrete_aliq,
                               DM5.Qr_NeNENUMERO.Value,
                               0,  // CODIGO DOPRODUTO
                               0,  // QUANTIDADE
                               0,   // PRECO UNITARIO
                               mfrete, // TOTAL DO DESCONTO
                               mFrete_icms, // VALOR DO ICMS
                               mFrete_base,
                               0, // VALOR DO ICMS RETIDO
                               0, // // BASE DO ICMS RETIDO
                               0, //VALOR DO IPI
                               DM5.Qr_NeNECFO.Value,
                               DM5.Qr_NeNESERIE.Value,
                               DM5.Qr_NeNESUBSER.Value,
                               DM5.Qr_Nemodelo.Value,
                               FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
                               DM5.Qr_Neinscricao.Value,
                               '000',
                               DM5.Qr_NeNEDTENT.Value,
                               pdt1,
                               pdt2,'','');
                       end;

                    if mFrete_aliq<>0 then
                       begin
                       if mFrete_aliq=maliq then
                          begin
                          mvlrcont:=mvlrcont+mfrete;
                          mbasen  :=mbasen+mFrete_base;
                          micmsn  :=micmsn+mFrete_icms;
                          mfrete    :=0;
                          mFrete_base:=0;
                          mFrete_icms:=0;
                          mFrete_aliq:=0;
                          end;
                       end
                    else
                       begin
                       mvlrcont:=mvlrcont+mfrete;
                       mfrete    :=0;
                       mFrete_base:=0;
                       mFrete_icms:=0;
                       mFrete_aliq:=0;
                       end;

                    flrsgravalrs(0,origem,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,maliq
                    ,DM5.Qr_NeNENUMERO.Value,DM5.Qr_NeNESTATUS.Value,

//                 mvlrcont+mipi+moutninc,
                    mvlrcont,
                    mvlrcont,
                    micmsn,
                    misentas,
                    moutninc,
//                 moutras,
                    mbasen,
                    0, // pis cofins
                    DM5.Qr_NeNECHAVEP.Value,
                    0, // ordem da chave
                    mcfonf,
                    iif(DM5.Qr_NeNETIPO.AsInteger=55 ,mtipo_nfe,iif(DM5.Qr_NeNETIPO.AsInteger=1,mtipo_nfe,'CF')),
                    'ICMS',
                    DM5.Qr_Neuf.Value,
                    DM5.Qr_NeNESERIE.Value,
                    DM5.Qr_NeNESUBSER.Value,
                    DM5.Qr_Nemodelo.Value,
                    'T',
                    FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
                    DM5.Qr_Neinscricao.Value,
                    ' ', // observações
                    mcinst2, // x
                    ' ', // Codificacao Contabil
                    DM5.Qr_NeNEDTEMIS.Value,
                    DM5.Qr_NeNEDTENT.Value);
//                    if mvlrcont>=mIsentas then
//                       mIsentas:=0;
                    if mvlrcont>=mIsentas then
                       mIsentas:=0;
                    moutninc:=0;
                    end
                 else
                    begin
                    IF (mvlrcont<>moutninc) or (mfrete<>0) then
                       begin
                       if DM5.Qr_PSintESomaPF2ALIQ.Value<>0 then
                          maliq:=DM5.Qr_PSintESomaPF2ALIQ.Value
                       else
                          mAliq:=DM5.Qr_PSintESomaPF2ALIQNR.Value;
                       if mFrete_aliq<>0 then
                          begin
                          if mFrete_aliq=maliq then
                             begin
                             mvlrcont:=mvlrcont+mfrete;
                             mbasen  :=mbasen+mFrete_base;
                             micmsn  :=micmsn+mFrete_icms;
                             mfrete    :=0;
                             mFrete_base:=0;
                             mFrete_icms:=0;
                             mFrete_aliq:=0;
                             end;
                          end
                       else
                          begin
                          mvlrcont:=mvlrcont+mfrete;
                          moutninc:=moutninc+mfrete;
                          mfrete    :=0;
                          mFrete_base:=0;
                          mFrete_icms:=0;
                          mFrete_aliq:=0;
                          end;



                        flrsgravalrs(0,origem,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,
                        iif(DM5.Qr_PSintESomaPF2ALIQ.Value<>0,DM5.Qr_PSintESomaPF2ALIQ.Value,
                        DM5.Qr_PSintESomaPF2ALIQNR.Value)
                        ,DM5.Qr_NeNENUMERO.Value,DM5.Qr_NeNESTATUS.Value,

    //                    mvlrcont+mipi+moutninc,
                        mvlrcont,
                        mvlrcont,

                        micmsn,
                        misentas,
    //                    moutninc,
    //                    moutras,
                        0,
                        mbasen,
                       0, // pis cofins
                       DM5.Qr_NeNECHAVEP.Value,
                        0, // ordem da chave
                        mcfonf,
                    iif(DM5.Qr_NeNETIPO.AsInteger=55 ,mtipo_nfe,iif(DM5.Qr_NeNETIPO.AsInteger=1,mtipo_nfe,'CF')),
                        'ICMS',
                        DM5.Qr_Neuf.Value,
                        DM5.Qr_NeNESERIE.Value,
                        DM5.Qr_NeNESUBSER.Value,
                        DM5.Qr_Nemodelo.Value,
                        'T',
                        FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
                        DM5.Qr_Neinscricao.Value,
                        ' ', // observações
                        mcinst2, // x
                        ' ', // Codificacao Contabil
                        DM5.Qr_NeNEDTEMIS.Value,
                        DM5.Qr_NeNEDTENT.Value);
                        end
                     else
                        par_ordement:=par_ordement-1;

                    end;
                 end;
               par_ordement:=par_ordement+1;
              end;

           if moutninc>0 then
              begin
              fnotei3(origem,moutninc,mcfonf);
              par_ordement:=par_ordement+1;
              end;

           if misentas>0 then
              begin
              fnotei2(origem,misentas,mcfonf);
              par_ordement:=par_ordement+1;
              end;
           if mipi>0 then
              begin
              Fnoteipi3(origem,mipi,mcfonf);
              par_ordement:=par_ordement+1;
              end;
           if micmsret>0 then
             begin
             fnotei6(origem,micmsret,mcfonf);
             par_ordement:=par_ordement+1;
             end;

           DM5.Qr_PSintESoma.Next;
           mvlrcont:=0;
           mfrete  :=0;
           moutras_imp:=0;
           moutras :=0;
           misentas:=0;
           moutninc:=0;
           par_ordement:=par_ordement+1;
           end;

// inicio lindomar
            if origem=1 then
               begin
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
                           +'        ,P2TOTDES  AS TOTDES '
                           +'        ,P2BASEN   AS BASEN '
                           +'        ,P2BASER   AS BASER '
                           +'        ,P2ICMSN   AS ICMSN '
                           +'        ,P2ICMSNR   AS ICMSNR '
                           +'        ,P2BCINR   AS BCINR '
                           +'        ,P2ICMSR   AS ICMSR '
                           +'        ,P2ALIPI   AS ALIPI '
                           +'        ,P2VALIPI     AS VALIPI '
                           +'        ,P2ISENTAS AS ISENTAS '
                           +'        ,P2TOTOUT  AS OUTRAS '
                           +'        ,(P2PRECO*P2QTD)-P2TOTDES AS TOTLIQ '
                           +'        ,P2SIT     AS SITTRI '
                           +'        ,P2CFO AS P2CFO'
                           +'       ,P2CFO AS CFONF '
                           +'       ,P2ALIQ AS P2ALIQ, P2ALIQNR AS P2ALIQNR'
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

                  try
                     DM5.Qr_Pro.Open;
                  except
                    DM5.Qr_Pro.sql.SavetoFile('c:\sqlne.txt');
                    end;

//                DM5.Qr_PSintESoma.sql.SavetoFile('c:\sqlne.txt');

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
                           +'        ,PF2BASEN-PF2BASEN   AS BCINR ');

           if DM5.Qr_NeNEICMSR.AsFloat=0 then
              DM5.Qr_Pro.SQL.add('   ,0    as ICMSR ')
           else
              DM5.Qr_Pro.SQL.add('      ,PF2ICMSR    as ICMSR ');
           DM5.Qr_Pro.SQL.add('        ,PF2ALIPI   AS ALIPI '
                           +'        ,PF2IPI     AS VALIPI '
                           +'        ,PF2ISENTAS AS ISENTAS '
                           +'        ,PF2OUTRAS  AS OUTRAS '
                           +'        ,(PF2PU*PF2QTDP)-PF2TOTDES AS TOTLIQ '
                           +'        ,PF2SIT     AS SITTRI '
                           +'        ,PF2CFO AS P2CFO'
                           +'        ,PF2CFO AS CFONF ,'
                           +'         PF2ALIQ AS P2ALIQ, PF2ALIQ-PF2ALIQ AS P2ALIQNR'
                           +'       ,PDCODPRO AS PDCODPRO '
                           +'       ,NVL(TRIM(PF2NOMPRO),PDNOME)  AS PDNOME '
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
                           +'   PF2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                           +' and   PF2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                           +' and   PF2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                           +' Order by PF2ITEM ');
                  try
                     DM5.Qr_Pro.Open;
                  except
                     DM5.Qr_Pro.sql.SavetoFile('c:\sqlne.txt');
                     end;
                  end;

               While not DM5.Qr_Pro.Eof do
                  begin
                  mbasen:=0;
                  micmsn:=0;
                  maliq :=0;
                  if DM5.Qr_ProICMSN.Value>0 then
                     begin
                     maliq :=DM5.Qr_ProP2ALIQ.Value;
                     mbasen:=DM5.Qr_ProBASEN.Value;
                     micmsn:=DM5.Qr_ProICMSN.Value;
                     end
                  else if DM5.Qr_ProICMSNR.Value>0 then
                     begin
                     maliq :=DM5.Qr_ProP2ALIQNR.Value;
                     mbasen:=DM5.Qr_ProBCINR.Value;
                     micmsn:=DM5.Qr_ProICMSNR.Value;
                     end
                  else if ((length(DM5.Qr_ProSITTRI.AsString)=3) and (DM5.Qr_ProSITTRI.Value[2] in ['1','6'])) then
                     begin
                     maliq :=0;
                     mbasen:=0;
                     micmsn:=0;
                     end
                  else if DM5.Qr_ProSITTRI.Value[2] in ['4'] then
                     begin
                     if DM5.Qr_ProP2ALIQ.Value>0 then
                        maliq := DM5.Qr_ProP2ALIQ.Value
                     else if DM5.Qr_ProP2ALIQNR.Value>0 then
                        maliq := DM5.Qr_ProP2ALIQNR.Value
                     else
                        maliq :=0;

                     mbasen:=0;
                     micmsn:=0;
                     end
                  else
                     begin
                     maliq :=0;
                     mbasen:=0;
                     micmsn:=0;
                     end;
                  if (maliq=0) then
                     maliq:=DM5.Qr_ProP2ALIQ.Value;
                  flrsgrava5475(0,DM5.Qr_ProITEM.AsInteger,maliq,
                               DM5.Qr_NeNENUMERO.Value,
                               DM5.Qr_ProCODPRO.Value,
                               DM5.Qr_ProQTD.Value,
                               DM5.Qr_ProPCOUNIT.Value,
                               DM5.Qr_ProTOTDES.Value,
                               DM5.Qr_ProICMSN.Value,
                               DM5.Qr_ProBASEN.Value,
                               DM5.Qr_ProICMSR.Value,
                               DM5.Qr_ProBASER.Value,
                               DM5.Qr_ProVALIPI.Value,
                               Formatfloat('0000',DM5.Qr_ProP2CFO.Value),
                               DM5.Qr_NeNESERIE.Value,
                               DM5.Qr_NeNESUBSER.Value,
                               DM5.Qr_Nemodelo.Value,
                               FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
                               DM5.Qr_Neinscricao.Value,
                               DM5.Qr_ProSITTRI.Value,
                               DM5.Qr_NeNEDTENT.Value,
                               pdt1,
                               pdt2,
                               DM5.Qr_ProCODPRO_ORI.AsString,
                               DM5.Qr_ProNOMPRO_ORI.AsString
                               );
                  DM5.Qr_Pro.Next;
                  end;
               end;

// fim

        end;
     DM5.Qr_Ne.Next;
     end;
  end;

Result:=True;
end;

function Fnotei5(Tipo: integer;PCfop:String): Boolean;

begin
if flqr1('CFTPOPER','CF','CADCFO','N','CFCODCFO',pcfop) then
   begin
   mcinst2:=DM1.Query1.Fields[0].AsString;
   if valint(mcinst2)=0 then
      mcinst2:='5';
   end
else
   mcinst2:='5';

flrsgravalrs(0,tipo,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,DM5.Qr_NeNEALIQ.Value,DM5.Qr_NeNENUMERO.Value,DM5.Qr_NeNESTATUS.Value,
             DM5.Qr_NeNETOTNOT.Value,
             DM5.Qr_NeNETOTNOT.Value,
             DM5.Qr_NeNEICMSN.Value,
             DM5.Qr_NeNEISENTAS.Value,
             DM5.Qr_NeNEOUTRAS.Value,
             DM5.Qr_NeNEBASEN.Value,
             0, // pis cofins
             DM5.Qr_NeNECHAVEP.Value,
             0, // ordem da chave
             pCfop,
             iif(DM5.Qr_NeNETIPO.AsInteger=55 ,mtipo_nfe,iif(DM5.Qr_NeNETIPO.AsInteger=1,mtipo_nfe,'CF')),
             'ICMS',
             DM5.Qr_Neuf.Value,
             DM5.Qr_NeNESERIE.Value,
             DM5.Qr_NeNESUBSER.Value,
             DM5.Qr_Nemodelo.Value,
             'T',
             FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
             DM5.Qr_Neinscricao.Value,
             ' ', // observações
             mcinst2, // x
             ' ', // Codificacao Contabil
             DM5.Qr_NeNEDTEMIS.Value,
             DM5.Qr_NeNEDTENT.Value);

result:=true;
end;

function Fnotei3(Tipo: integer;pVlrCont: Real;PCfop:String): Boolean;
begin
mvlrcont := pVlrCont;

if flqr1('CFTPOPER','CF','CADCFO','N','CFCODCFO',pcfop) then
   begin
   mcinst2:=DM1.Query1.Fields[0].AsString;
   if valint(mcinst2)=0 then
      mcinst2:='3';
   end
else
   mcinst2:='3';

//flrsgravalrs(0,Tipo,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,DM5.Qr_NeNEALIQ.Value,
flrsgravalrs(0,Tipo,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,0,
             DM5.Qr_NeNENUMERO.Value,
             DM5.Qr_NeNESTATUS.Value,mvlrcont,
             mvlrcont,
             0, // ICMS
             0, // isentas
             mvlrcont, // Outras
             0, // base de icms
             0, // pis cofins
             DM5.Qr_NeNECHAVEP.Value,
             0, // ordem da chave
             pCfop,
             iif(DM5.Qr_NeNETIPO.AsInteger=55 ,mtipo_nfe,iif(DM5.Qr_NeNETIPO.AsInteger=1,mtipo_nfe,'CF')),
             'ICMS',
             DM5.Qr_Neuf.Value,
             DM5.Qr_NeNESERIE.Value,
             DM5.Qr_NeNESUBSER.Value,
             DM5.Qr_Nemodelo.Value,
             'T',
             FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
             DM5.Qr_Neinscricao.Value,
             ' ', // observações
             mcinst2, // x
             ' ', // codigo Contabil
             DM5.Qr_NeNEDTEMIS.Value,
             DM5.Qr_NeNEDTENT.Value);

result:=true;
end;

function Fnotei6(Tipo: integer;pVlrCont: Real;PCfop:String): Boolean;
begin
mvlrcont := pVlrCont;

if flqr1('CFTPOPER','CF','CADCFO','N','CFCODCFO',pcfop) then
   begin
   mcinst2:=DM1.Query1.Fields[0].AsString;
   if valint(mcinst2)=0 then
      mcinst2:='3';
   end
else
   mcinst2:='3';

//flrsgravalrs(0,Tipo,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,DM5.Qr_NeNEALIQ.Value,
flrsgravalrs(0,Tipo,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,0,
             DM5.Qr_NeNENUMERO.Value,
             DM5.Qr_NeNESTATUS.Value,mvlrcont,
             mvlrcont,
             micmsret, // ICMS
             0, // isentas
             mvlrcont, // Outras
             mbaseret, // base de icms
             0, // pis cofins
             DM5.Qr_NeNECHAVEP.Value,
             0, // ordem da chave
             pCfop,
             iif(DM5.Qr_NeNETIPO.AsInteger=55 ,mtipo_nfe,iif(DM5.Qr_NeNETIPO.AsInteger=1,mtipo_nfe,'CF')),
             'ST',
             DM5.Qr_Neuf.Value,
             DM5.Qr_NeNESERIE.Value,
             DM5.Qr_NeNESUBSER.Value,
             DM5.Qr_Nemodelo.Value,
             'T',
             FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
             DM5.Qr_Neinscricao.Value,
             ' ', // observações
             mcinst2, // x
             ' ', // codigo Contabil
             DM5.Qr_NeNEDTEMIS.Value,
             DM5.Qr_NeNEDTENT.Value);

result:=true;
end;


function Fnotei1(Tipo: integer; PCfop:String): Boolean;
begin

//if DM5.Qr_NENEICMSR.Value=0 then
if tipo<>1 then
   mvlrcont := DM5.Qr_NENETOTNOT.AsFloat
else
   mvlrcont := DM5.Qr_NENETOTNOT.AsFloat-DM5.Qr_NeNEICMSR.AsFloat
             -   DM5.Qr_NeNEOUTNINC.asfloat;


//else
//   mvlrcont :=0;
if flqr1('CFTPOPER','CF','CADCFO','N','CFCODCFO',pcfop) then
   begin
   mcinst2:=DM1.Query1.Fields[0].AsString;
   if valint(mcinst2)=0 then
      mcinst2:='1';
   end
else
   mcinst2:='1';


flrsgravalrs(0,tipo,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,DM5.Qr_NeNEALIQ.Value,
            DM5.Qr_NeNENUMERO.Value,
            DM5.Qr_NeNESTATUS.Value,
            mvlrcont,
            mvlrcont,
            DM5.Qr_NeNEICMSN.Value,
            0, // isentas
            0, // outras
            DM5.Qr_NeNEBASEN.Value,
            0, // pis cofins
            DM5.Qr_NeNECHAVEP.Value,
            0, // ordem da chave
            pCfop,
            iif(DM5.Qr_NeNETIPO.AsInteger=55 ,mtipo_nfe,iif(DM5.Qr_NeNETIPO.AsInteger=1,mtipo_nfe,'CF')),
            'ICMS',
            DM5.Qr_Neuf.Value,
            DM5.Qr_NeNESERIE.Value,
            DM5.Qr_NeNESUBSER.Value,
            DM5.Qr_Nemodelo.Value,
            'T',
            FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
            DM5.Qr_Neinscricao.Value,
            ' ', // observações
            mcinst2, // x
            ' ', // codigo Contabil
            DM5.Qr_NeNEDTEMIS.Value,
            DM5.Qr_NeNEDTENT.Value);
result:=true;
end;


function Fnotei2(Tipo: integer;pVlrCont:Real; PCfop:String): Boolean;
begin

mvlrcont := pVlrCont;
if flqr1('CFTPOPER','CF','CADCFO','N','CFCODCFO',pcfop) then
   begin
   mcinst2:=DM1.Query1.Fields[0].AsString;
   if valint(mcinst2)=0 then
      mcinst2:='2';
   end
else
   mcinst2:='2';


flrsgravalrs(0,tipo,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,0, // DM5.Qr_NeNEALIQ.Value,
            DM5.Qr_NeNENUMERO.Value,
            DM5.Qr_NeNESTATUS.Value,
            mvlrcont,
            mvlrcont,
            0, // icms
            mvlrcont, // isentas
            0, // outras
            0, // basen
            0, // pis cofins
            DM5.Qr_NeNECHAVEP.Value,
            0, // ordem da chave
            pCfop,
            iif(DM5.Qr_NeNETIPO.AsInteger=55 ,mtipo_nfe,iif(DM5.Qr_NeNETIPO.AsInteger=1,mtipo_nfe,'CF')),
            'ICMS',
            DM5.Qr_Neuf.Value,
            DM5.Qr_NeNESERIE.Value,
            DM5.Qr_NeNESUBSER.Value,
            DM5.Qr_Nemodelo.Value,
            'T',
            FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
            DM5.Qr_Neinscricao.Value,
            ' ', // observações
//            '1', // x
            mcinst2, // x
            ' ', // codigo Contabil
            DM5.Qr_NeNEDTEMIS.Value,
            DM5.Qr_NeNEDTENT.Value);
result:=true;
end;

function Fnoteipi3(Tipo: integer;pVlrCont:Real;PCfop:String): Boolean;
begin
if flqr1('CFTPOPER','CF','CADCFO','N','CFCODCFO',pcfop) then
   begin
   mcinst2:=DM1.Query1.Fields[0].AsString;
   if valint(mcinst2)=0 then
      mcinst2:='3';
   end
else
   mcinst2:='3';

flrsgravalrs(0,tipo,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,0,
            DM5.Qr_NeNENUMERO.Value,
            DM5.Qr_NeNESTATUS.Value,
            pVlrCont, // Icms Normal
//            0,
            0,
//            pVlrCont, // Icms Normal
            0, // Icms Normal
            0, // isentas
//            0, // outras
            pVlrCont, // outras

            pVlrCont, // base icms normal

//            0, // base icms normal,
            0, // pis cofins
            DM5.Qr_NeNECHAVEP.Value,
            0, // ordem da chave
            pCfop,
            iif(DM5.Qr_NeNETIPO.AsInteger=55 ,mtipo_nfe,iif(DM5.Qr_NeNETIPO.AsInteger=1,mtipo_nfe,'CF')),
            'IPI',
            DM5.Qr_Neuf.Value,
            DM5.Qr_NeNESERIE.Value,
            DM5.Qr_NeNESUBSER.Value,
            DM5.Qr_Nemodelo.Value,
            'T',
            FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
            DM5.Qr_Neinscricao.Value,
            ' ', // observações
            mcinst2, // x
            ' ', // codigo Contabil
            DM5.Qr_NeNEDTEMIS.Value,
            DM5.Qr_NeNEDTENT.Value);
result:=true;
end;

function Fnotei4(Tipo: integer;PCfop:String): Boolean;
begin

if flqr1('CFTPOPER','CF','CADCFO','N','CFCODCFO',pcfop) then
   begin
   mcinst2:=DM1.Query1.Fields[0].AsString;
   if valint(mcinst2)=0 then
      mcinst2:='4';
   end
else
   mcinst2:='4';

flrsgravalrs(0,tipo,0,0,DM5.Qr_NeNEFRETEPC.AsInteger,DM5.Qr_NeNEALIQ.Value,
            DM5.Qr_NeNENUMERO.Value,
            DM5.Qr_NeNESTATUS.Value,
            0,
            0,
            DM5.Qr_NeNEICMSR.Value, // Icms Normal
            0, // isentas
            0, // outras
            DM5.Qr_NeNEBASER.Value, // base icms normal,
            0, // pis cofins
            DM5.Qr_NeNECHAVEP.Value,
            0, // ordem da chave
            pCfop,
            iif(DM5.Qr_NeNETIPO.AsInteger=55 ,mtipo_nfe,iif(DM5.Qr_NeNETIPO.AsInteger=1,mtipo_nfe,'CF')),
            'ICMS',
            DM5.Qr_Neuf.Value,
            DM5.Qr_NeNESERIE.Value,
            DM5.Qr_NeNESUBSER.Value,
            DM5.Qr_Nemodelo.Value,
            'T',
            FormatFloat('00000000000000',fsonumero(DM5.Qr_Necgc.Value)),
            DM5.Qr_Neinscricao.Value,
            ' ', // observações
            mcinst2, // x
            ' ', // codigo Contabil
            DM5.Qr_NeNEDTEMIS.Value,
            DM5.Qr_NeNEDTENT.Value);
result:=true;
end;


function TFrm_LRE.flrecab(tipo: integer): boolean;
begin
form_impres_lre.RDprint1.Impf(01,01,'LIVRO REGISTRO DE ENTRADAS No. '+FormatFloat('000',mlivn),mneg);
form_impres_lre.RDprint1.Impf(02,01,'+'+Insere('+','-',120)+Insere('+','-',39),m20ccp);
form_impres_lre.RDprint1.Impf(03,01,'|'+Insere('|',' ',120)+' 1 - Operacoes com Credito do Imposto |',m20ccp);
form_impres_lre.RDprint1.Impf(04,01,'|'+Insere2(' EMPRESA.........: '+DM1.Tb_EmpRAZAO.Value,' ',70)
+Insere2('CNPJ.....: '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),' ',49)
+'| 2 - Oper.S/Credito Imposto - Isentas |',m20ccp);
form_impres_lre.RDprint1.Impf(05,01,'|'+Insere2(' INSC. ESTADUAL..: '+DM1.Tb_EmpINSCRICAO.Value,' ',119)
+'| 3 - Operacoes sem Crd.Imp. - Outras  |',m20ccp);
form_impres_lre.RDprint1.Impf(06,01,'|'+Insere2(' FOLHA...........: '+FormatFloat('0000',mpag),' ',70)
+Insere2('PERIODO..: '+fperiodo(0,Frm_LRE.MDT1.Text,Frm_LRE.MDT2.Text)+'.',' ',49)
+'| 4 - ICMS Retido                      |',m20ccp);
form_impres_lre.RDprint1.Impf(07,01,'|'+Insere('|',' ',120)+' 5 - Frete com Credito do Imposto     |',m20ccp);
form_impres_lre.RDprint1.Impf(08,01,'+-----+-------------------------------------------------------+'
+'-----------------+-------------+-------------------------+------------------------+'
+'-------------+',m20ccp);
form_impres_lre.RDprint1.Impf(09,01,'|DATA |                  DOCUMENTOS FISCAIS                   |'
+'                 | CODIFICACAO |                VALORES FISCAIS                   |'
+' OBSERVACOES |',m20ccp);
form_impres_lre.RDprint1.Impf(10,01,'|     +-----+-----+---------+---------+--------------------+--+'
+'    V A L O R    +------+------+------+---+-----------------+-------+-------------+'
+'-------------+',m20ccp);
form_impres_lre.RDprint1.Impf(11,01,'| EN- | ES- | SE- |         | DATA DO |                    |  |'
+'                 |      |      |      |   | BASE DE CALCULO |       |             |'
+'             |',m20ccp);
form_impres_lre.RDprint1.Impf(12,01,'| TRA-| PE- | RIE | NUMERO  |  DOCU-  |      EMITENTE      |UF|'
+' C O N T A B I L | CONT.| FISC.| TIPO |(*)|       OU        | ALIQ. |   IMPOSTO   |'
+'             |',m20ccp);
form_impres_lre.RDprint1.Impf(13,01,'| DA  | CIE |     |         |  MENTO  |                    |  |'
+'                 |      |      |      |   |VALOR DA OPERACAO|       |             |'
+'             |',m20ccp);
form_impres_lre.RDprint1.Impf(14,01,'+-----+-----+-----+---------+---------+--------------------+--+'
+'-----------------+------+------+------+---+-----------------+-------+-------------+'
+'-------------+',m20ccp);

if mpag=1 then
   begin
  mLinha_csv:=' EN- ; ES- ; SE- ;         ; DATA DO ;                    ;  ;'
              +'                 ;      ;      ;      ;   ; BASE DE CALCULO ;       ;             ;          ';
  memo_csv.add(mlinha_csv);
  mLinha_csv:=' TRA-; PE- ; RIE ; NUMERO  ;  DOCU-  ;      EMITENTE      ;UF;'
           +' C O N T A B I L ; CONT.; FISC.; TIPO ;(*);       OU        ; ALIQ. ;   IMPOSTO   ;             ';
  memo_csv.add(mlinha_csv);
  mLinha_csv:=' DA  ; CIE ;     ;         ;  MENTO  ;                    ;  ;'
              +'                 ;      ;      ;      ;   ;VALOR DA OPERACAO;       ;             ;            ';
  memo_csv.add(mlinha_csv);
  end;

mlin:=15;
result:=true;
end;

function tFrm_LRE.flretotd(tipo: integer): boolean;
begin
form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |  Total do dia '+insere(mdia,' ',2)+
'   |  |'+insere(FormatFloat('##,##0.00', mtd1vc),' ',16)+
' |      |      | ICMS | 1 |'+insere(FormatFloat('##,##0.00',mtd1bc),' ',17)+
'|       | '+insere(FormatFloat('##,##0.00', mtd1ic),' ',12)+
'|             |',m20ccp);

mLinha_csv:='     ;     ;     ;         ;         ;  Total do dia '+insere(mdia,' ',2)+
            '   ;  ;'+insere(FormatFloat('##,##0.00', mtd1vc),' ',16)+' ;      ;      ; ICMS ; 1 ;'+insere(FormatFloat('##,##0.00',mtd1bc),' ',17)+
            ';       ; '+insere(FormatFloat('##,##0.00', mtd1ic),' ',12)+';             ;';
memo_csv.Add(mlinha_csv);


if (mtd2vc+mtd2bc+mtd2ic)>0 then
   begin
   mlin:=mlin+1;
   form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |                 '+
   '   |  |'+insere(FormatFloat('##,##0.00', mtd2vc),' ',16)+
   ' |      |      | ICMS | 2 |'+insere(FormatFloat('##,##0.00',mtd2bc),' ',17)+
   '|       | '+insere(FormatFloat('##,##0.00', mtd2ic),' ',12)+
   '|             |',m20ccp);

   mLinha_csv:='     ;     ;     ;         ;         ;                 '+
   '   ;  ;'+insere(FormatFloat('##,##0.00', mtd2vc),' ',16)+
   ' ;      ;      ; ICMS ; 2 ;'+insere(FormatFloat('##,##0.00',mtd2bc),' ',17)+
   ';       ; '+insere(FormatFloat('##,##0.00', mtd2ic),' ',12)+
   ';             ';
   memo_csv.Add(mlinha_csv);
   end;
if (mtd3vc+mtd3bc+mtd3ic)>0 then
   begin
   mlin:=mlin+1;
   form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |                 '+
   '   |  |'+insere(FormatFloat('##,##0.00', mtd3vc),' ',16)+
   ' |      |      | ICMS | 3 |'+insere(FormatFloat('##,##0.00',mtd3bc),' ',17)+
   '|       | '+insere(FormatFloat('##,##0.00', mtd3ic),' ',12)+
   '|             |',m20ccp);
   mLinha_csv:='     ;     ;     ;         ;         ;                 '+
   '   ;  ;'+insere(FormatFloat('##,##0.00', mtd3vc),' ',16)+
   ' ;      ;      ; ICMS ; 3 ;'+insere(FormatFloat('##,##0.00',mtd3bc),' ',17)+
   ';       ; '+insere(FormatFloat('##,##0.00', mtd3ic),' ',12)+
   ';             ';
   memo_csv.Add(mlinha_csv);

   end;
if (mtd4vc+mtd4bc+mtd4ic)>0 then
   begin
   mlin:=mlin+1;
   form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |                 '+
   '   |  |'+insere(FormatFloat('##,##0.00', mtd4vc),' ',16)+
   ' |      |      | ICMS | 4 |'+insere(FormatFloat('##,##0.00',mtd4bc),' ',17)+
   '|       | '+insere(FormatFloat('##,##0.00', mtd4ic),' ',12)+
   '|             |',m20ccp);
   mLinha_csv:='     ;     ;     ;         ;         ;                 '+
   '   ;  ;'+insere(FormatFloat('##,##0.00', mtd4vc),' ',16)+
   ' ;      ;      ; ICMS ; 4 ;'+insere(FormatFloat('##,##0.00',mtd4bc),' ',17)+
   ';       ; '+insere(FormatFloat('##,##0.00', mtd4ic),' ',12)+
   ';             ';
   memo_csv.add(mlinha_csv);
   end;
if (mtd5vc+mtd5bc+mtd5ic)>0 then
   begin
   mlin:=mlin+1;
   form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |                 '+
   '   |  |'+insere(FormatFloat('##,##0.00', mtd5vc),' ',16)+
   ' |      |      | ICMS | 5 |'+insere(FormatFloat('##,##0.00',mtd5bc),' ',17)+
   '|       | '+insere(FormatFloat('##,##0.00', mtd5ic),' ',12)+
   '|             |',m20ccp);
   mLinha_csv:='     ;     ;     ;         ;         ;                 '+
   '   ;  ;'+insere(FormatFloat('##,##0.00', mtd5vc),' ',16)+
   ' ;      ;      ; ICMS ; 5 ;'+insere(FormatFloat('##,##0.00',mtd5bc),' ',17)+
   ';       ; '+insere(FormatFloat('##,##0.00', mtd5ic),' ',12)+
   ';             ;';
   memo_csv.add(mlinha_csv);

   end;
if (mtdipi01vc+mtdipi01bc+mtdipi01ic)>0 then
   begin
   mlin:=mlin+1;
   form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |                 '+
   '   |  |'+insere(FormatFloat('##,##0.00', mtdipi01vc),' ',16)+
   ' |      |      | IPI  | 1 |'+insere(FormatFloat('##,##0.00',mtdipi01bc),' ',17)+
   '|       | '+insere(FormatFloat('##,##0.00', mtdipi01ic),' ',12)+
   '|             |',m20ccp);
   mLinha_csv:='     ;     ;     ;         ;         ;                 '+
   '   ;  ;'+insere(FormatFloat('##,##0.00', mtdipi01vc),' ',16)+
   ' ;      ;      ; IPI  ; 1 ;'+insere(FormatFloat('##,##0.00',mtdipi01bc),' ',17)+
   ';       ; '+insere(FormatFloat('##,##0.00', mtdipi01ic),' ',12)+
   ';             ';
   memo_csv.add(mlinha_csv);


   end;


if (mtdipi02vc+mtdipi02bc+mtdipi02ic)>0 then
   begin
   mlin:=mlin+1;
   form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |                 '+
   '   |  |'+insere(FormatFloat('##,##0.00', mtdipi02vc),' ',16)+
   ' |      |      | IPI  | 2 |'+insere(FormatFloat('##,##0.00',mtdipi02bc),' ',17)+
   '|       | '+insere(FormatFloat('##,##0.00', mtdipi02ic),' ',12)+
   '|             |',m20ccp);
   mLinha_csv:='     ;     ;     ;         ;         ;                 '+
   '   ;  ;'+insere(FormatFloat('##,##0.00', mtdipi02vc),' ',16)+
   ' ;      ;      ; IPI  ; 2 ;'+insere(FormatFloat('##,##0.00',mtdipi02bc),' ',17)+
   ';       ; '+insere(FormatFloat('##,##0.00', mtdipi02ic),' ',12)+
   ';             ;';
   memo_csv.add(mlinha_csv);


   end;
if (mtdipi03vc+mtdipi03bc+mtdipi03ic)>0 then
   begin
   mlin:=mlin+1;
   form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |                 '+
   '   |  |'+insere(FormatFloat('##,##0.00', mtdipi03vc),' ',16)+
   ' |      |      | IPI  | 3 |'+insere(FormatFloat('##,##0.00',mtdipi03bc),' ',17)+
   '|       | '+insere(FormatFloat('##,##0.00', mtdipi03ic),' ',12)+
   '|             |',m20ccp);
   mLinha_csv:='     ;     ;     ;         ;         ;                 '+
   '   ;  ;'+insere(FormatFloat('##,##0.00', mtdipi03vc),' ',16)+
   ' ;      ;      ; IPI  ; 3 ;'+insere(FormatFloat('##,##0.00',mtdipi03bc),' ',17)+
   ';       ; '+insere(FormatFloat('##,##0.00', mtdipi03ic),' ',12)+
   ';             ';

   memo_csv.add(mlinha_csv);

   end;
if (mtdipi04vc+mtdipi04bc+mtdipi04ic)>0 then
   begin
   mlin:=mlin+1;
   form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |                 '+
   '   |  |'+insere(FormatFloat('##,##0.00', mtdipi04vc),' ',16)+
   ' |      |      | IPI  | 4 |'+insere(FormatFloat('##,##0.00',mtdipi04bc),' ',17)+
   '|       | '+insere(FormatFloat('##,##0.00', mtdipi04ic),' ',12)+
   '|             |',m20ccp);
   mLinha_csv:='     ;     ;     ;         ;         ;                 '+
   '   ;  ;'+insere(FormatFloat('##,##0.00', mtdipi04vc),' ',16)+
   ' ;      ;      ; IPI  ; 4 ;'+insere(FormatFloat('##,##0.00',mtdipi04bc),' ',17)+
   ';       ; '+insere(FormatFloat('##,##0.00', mtdipi04ic),' ',12)+
   ';             ';


   memo_csv.add(mlinha_csv);

   end;
if (mtdipi05vc+mtdipi05bc+mtdipi05ic)>0 then
   begin
   mlin:=mlin+1;
   form_impres_lre.RDprint1.Impf(mlin,01,'|     |     |     |         |         |                 '+
   '   |  |'+insere(FormatFloat('##,##0.00', mtdipi05vc),' ',16)+
   ' |      |      | IPI  | 5 |'+insere(FormatFloat('##,##0.00',mtdipi05bc),' ',17)+
   '|       | '+insere(FormatFloat('##,##0.00', mtdipi05ic),' ',12)+
   '|             |',m20ccp);
   mLinha_csv:='     ;     ;     ;         ;         ;                 '+
   '   ;  ;'+insere(FormatFloat('##,##0.00', mtdipi05vc),' ',16)+
   ' ;      ;      ; IPI  ; 5 ;'+insere(FormatFloat('##,##0.00',mtdipi05bc),' ',17)+
   ';       ; '+insere(FormatFloat('##,##0.00', mtdipi05ic),' ',12)+
   ';             ';

   memo_csv.add(mlinha_csv);

   end;


mtd1vc:=0; mtd2vc:=0; mtd3vc:=0; mtd4vc:=0; mtd5vc:=0;
mtd1bc:=0; mtd2bc:=0; mtd3bc:=0; mtd4vc:=0; mtd5bc:=0;
mtd1ic:=0; mtd2ic:=0; mtd3ic:=0; mtd4ic:=0; mtd5ic:=0;
mtdipi01vc:=0; mtdipi01bc:=0; mtdipi01ic:=0;
mtdipi02vc:=0; mtdipi02bc:=0; mtdipi02ic:=0;
mtdipi03vc:=0; mtdipi03bc:=0; mtdipi03ic:=0;
mtdipi04vc:=0; mtdipi04bc:=0; mtdipi04ic:=0;
mtdipi05vc:=0; mtdipi05bc:=0; mtdipi05ic:=0;

result:=true;
end;

Function TFrm_LRE.flretg(tipo: integer): boolean;
var
a: integer;
begin
if mlin<53 then
   begin
   for a:=mlin to 53 do
       begin
       form_impres_lre.RDprint1.Impf(a,01,'|     |     |     |         |         |                    |  |'
         +'                 |      |      |      |   |                 |       |             |'
         +'             |',m20ccp);
       end;
   mlin:=a;
   end;
mlin:=mlin+1;
form_impres_lre.RDprint1.Impf(mlin,01,'+-----+-----+-----+---------+---------+--------------------+--+'
        +'-----------------+------+------+------+---+-----------------+-------+-------------+'
        +'-------------+',m20ccp);
mlin:=mlin+1;
form_impres_lre.RDprint1.Impf(mlin,01,'|  Total Geral................................................|'
         +insere(FormatFloat('##,#0.00',(mtg1vc+mtg2vc+mtg3vc+mtg4vc+mtg5vc+
                                         mtgipi01vc+mtgipi02vc+mtgipi03vc+mtgipi04vc+mtgipi05vc)),' ',16)+
         ' |      |      |      |   |                 |       |             |'
         +'             |',m20ccp);


mlin:=mlin+1;
form_impres_lre.RDprint1.Impf(mlin,01,'+-----+-----+-----+---------+---------+--------------------+--+'
        +'-----------------+------+------+------+---+-----------------+-------+-------------+'
        +'-------------+',m20ccp);
mlin:=mlin+1;
form_impres_lre.RDprint1.Impf(mlin,01,'|  (*) ICMS.... 1 - '+insere(FormatFloat('##,##0.00', mtg1vc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg1bc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg1ic),' ',17)+
        insere2('     (*) IPI.... 1 - ',' ',30)+
        insere(FormatFloat('##,##0.00', mtgipi01bc),' ',17)+
        insere(FormatFloat('##,##0.00', mtgipi01vc),' ',14)+
        insere(FormatFloat('##,##0.00', mtgipi01ic),' ',15)+' |',m20ccp);
mlin:=mlin+1;

form_impres_lre.RDprint1.Impf(mlin,01,'|               2 - '+insere(FormatFloat('##,##0.00', mtg2vc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg2bc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg2ic),' ',17)+
        insere2('                 2 - ',' ',30)+
        insere(FormatFloat('##,##0.00', mtgipi02bc),' ',17)+
        insere(FormatFloat('##,##0.00', mtgipi02vc),' ',14)+
        insere(FormatFloat('##,##0.00', mtgipi02ic),' ',15)+' |',m20ccp);
mlin:=mlin+1;
form_impres_lre.RDprint1.Impf(mlin,01,'|               3 - '+insere(FormatFloat('##,##0.00', mtg3vc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg3bc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg3ic),' ',17)+
        insere2('                 3 - ',' ',30)+
        insere(FormatFloat('##,##0.00', mtgipi03bc),' ',17)+
        insere(FormatFloat('##,##0.00', mtgipi03vc),' ',14)+
        insere(FormatFloat('##,##0.00', mtgipi03ic),' ',15)+' |',m20ccp);

mlin:=mlin+1;
form_impres_lre.RDprint1.Impf(mlin,01,'|               4 - '+insere(FormatFloat('##,##0.00', mtg4vc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg4bc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg4ic),' ',17)+
        insere2('                 4 - ',' ',30)+
        insere(FormatFloat('##,##0.00', mtgipi04bc),' ',17)+
        insere(FormatFloat('##,##0.00', mtgipi04vc),' ',14)+
        insere(FormatFloat('##,##0.00', mtgipi04ic),' ',15)+' |',m20ccp);
mlin:=mlin+1;
form_impres_lre.RDprint1.Impf(mlin,01,'|               5 - '+insere(FormatFloat('##,##0.00', mtg5vc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg5bc),' ',17)+
        '     '+insere(FormatFloat('##,##0.00', mtg5ic),' ',17)+
        insere2('                 5 - ',' ',30)+
        insere(FormatFloat('##,##0.00', mtgipi05bc),' ',17)+
        insere(FormatFloat('##,##0.00', mtgipi05vc),' ',14)+
        insere(FormatFloat('##,##0.00', mtgipi05ic),' ',15)+' |',m20ccp);

mlin:=mlin+1;
form_impres_lre.RDprint1.Impf(mlin,01,'+-----+-----+-----+---------+---------+--------------------+--+'
        +'-----------------+------+------+------+---+-----------------+-------+-------------+'
        +'-------------+',m20ccp);

mtg1vc:=0; mtg2vc:=0; mtg3vc:=0; mtg4vc:=0; mtg5vc:=0;
mtg1bc:=0; mtg2bc:=0; mtg3bc:=0; mtg4bc:=0; mtg5bc:=0;
mtg1ic:=0; mtg2ic:=0; mtg3ic:=0; mtg4ic:=0; mtg5ic:=0;
mtgipi01vc:=0; mtgipi01bc:=0; mtgipi01ic:=0;
mtgipi02vc:=0; mtgipi02bc:=0; mtgipi02ic:=0;
mtgipi03vc:=0; mtgipi03bc:=0; mtgipi03ic:=0;
mtgipi04vc:=0; mtgipi04bc:=0; mtgipi04ic:=0;
mtgipi05vc:=0; mtgipi05bc:=0; mtgipi05ic:=0;


result:=true;
end;

procedure TFrm_LRE.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrtoDate(MDT1.Text));
   if Trim(DTTERM1.Text)='/  /' then
      DTTERM1.Text:=MDT1.Text;
   end;
end;

procedure TFrm_LRE.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrtoDate(MDT2.Text));
   if Trim(DTTERM2.Text)='/  /' then
      DTTERM2.Text:=MDT2.Text;
   end;

end;

procedure TFrm_LRE.FormCreate(Sender: TObject);
var
mdatai: TDateTime;
begin
if codusr=1111 then
   cb_csv.visible:=true
else
   cb_csv.visible:=false;
memo_csv:=TStringList.create;

DM5.Qr_Ne.Close;

if Frm_Stru=nil then
   Application.CreateForm(TFrm_Stru, Frm_Stru);

if ValInt(FormatDateTime('dd', pdatasis))>20 then
   mdatai:=pdatasis
else
   mdatai:=fdatafinal(1,pdatasis-28);
mdatai:=StrtodAte('01/'+FormatDatetime('mm/yyyy',mdatai));
MDT1.Text   :=FormatDatetime(fdt2, mdatai);
DTTERM1.Text:=FormatDatetime(fdt2, mdatai);
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(mdatai));
DTTERM2.Text:=FormatDatetime(fdt2, fultdiames(mdatai));
if codusr=1111 then
   CB_IPIICMS.Visible:=true
else
   CB_IPIICMS.Visible:=false;
if flfilpad(0,'_LRE','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IPIICMS',[]) then
      CB_IPIICMS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;



end;

procedure TFrm_LRE.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
try
   Frm_Stru.free;
   Frm_Stru:=nil;
except
   end;
DM5.Qr_Ne.Close;
end;

procedure TFrm_LRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Freeandnil(memo_csv);

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_LRE.CB_IPIICMSClick(Sender: TObject);
begin
fDeletaPadroes(0,'_LRE','');
fGravaPadroes(0,'CB_IPIICMS','checked','_LRE',iif(CB_IPIICMS.Checked,'true','false'));

end;

procedure TFrm_LRE.NUMNFExit(Sender: TObject);
begin
NUMNF.Text:=fdeixanum2(NUMNF.Text);

end;

procedure TFrm_LRE.MCFOPExit(Sender: TObject);
begin
MCFOP.Text:=fdeixanum2(MCFOP.Text);

end;


function tFrm_LRE.termos(ptipo,pNumLiv,pPagIni:Integer;pDatIni,pDatFin:TDateTime): Boolean;

{
mtipo=1-saida
      2-entrada
      3-apuracao
}
var
mTermo: Integer;
begin
mpag:=mpag+1;
for mTermo:=1 to 2 do
   begin
   form_impres_lre.RDprint1.Novapagina;
   if mTermo=1 then
      form_impres_lre.RDprint1.Impf(03,01,insere('Folha....: 0001 ',' ',70),mnormal)
   else
      form_impres_lre.RDprint1.Impf(03,01,insere('Folha....: '+FormatFloat('0000',mpag),' ',70),mnormal);
   if ptipo=1 then
      form_impres_lre.RDprint1.Impf(06,01,Centra('REGISTRO DE SAIDAS',' ',80),mneg)
   else if ptipo=2 then
      form_impres_lre.RDprint1.Impf(06,01,Centra('REGISTRO DE ENTRADAS',' ',80),mneg)
   else
      form_impres_lre.RDprint1.Impf(06,01,Centra('REGISTRO DE APURACAO DE ICMS',' ',80),mneg);
   mdia:=UpperCase(Extenso2(pNumLiv));
   form_impres_lre.RDprint1.Impf(08,01,insere('Livro No. '+formatFloat('000', pNumLiv)+' ('+Trim(mdia)+')',' ',45),mnormal);

   if mTermo=1 then
      begin
      mcinst:=Centra('TERMO DE ABERTURA',' ',80);
      form_impres_lre.RDprint1.Impf(10,01,mcinst,mneg)
      end
   else
      begin
      mcinst:=Centra('TERMO DE ENCERRAMENTO',' ',80);
      form_impres_lre.RDprint1.Impf(10,01,mcinst,mneg);
      end;
   mdia:=copy(UpperCase(Extenso2(mpag)),1,34);
   form_impres_lre.RDprint1.Impf(14,01,'Este livro contem '+FormatFloat('0000',mpag)+
   ' ('+insere2(mdia,'*',34)+') folhas numeradas',mnormal);
   form_impres_lre.RDprint1.Impf(15,01,'por processamento  eletronico de dados e seguidamente  do  No. '+
   FormatFloat('0000',pPagIni)+'  ao  No.',mnormal);
   if mTermo=1 then
      form_impres_lre.RDprint1.Impf(16,01,FormatFloat('0000',mpag)+' e servira para  o  registro  das  operacoes  proprias  do  contribuinte',mnormal)
   else
      form_impres_lre.RDprint1.Impf(16,01,FormatFloat('0000',mpag)+' e serviu  para  o  registro  das  operacoes  proprias  do  contribuinte',mnormal);
   form_impres_lre.RDprint1.Impf(17,01,'abaixo identificado:',mnormal);
   form_impres_lre.RDprint1.Impf(19,01,'Nome.........: '+DM1.Tb_EmpRAZAO.Value,mnormal);
   form_impres_lre.RDprint1.Impf(20,01,'Endereco.....: '+DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,mnormal);
   form_impres_lre.RDprint1.Impf(21,01,'Cidade.......: '+DM1.Tb_EmpCIDADE.Value,mnormal);
   form_impres_lre.RDprint1.Impf(22,01,'Inscricao Estadual No. '+DM1.Tb_EmpINSCRICAO.Value+'       CGC(MF) No. '
   +Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),' ',21),mnormal);
//***
   If mTermo=1  then mdia:=Data(pDatIni,0)
   else mdia:=Data(pDatFin,0);
   form_impres_lre.RDprint1.Impf(25,01,insere(DM1.Tb_EmpCIDADE.Value,' ',20)+','+mdia,mnormal);
   form_impres_lre.RDprint1.Impf(30,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',54)+DM1.Tb_EmpCONTADOR.Value,mnormal);
   form_impres_lre.RDprint1.Impf(31,01,'                  - Diretor -                        Contador - CRC'+DM1.Tb_EmpCRC_CONTADOR.Value,mnormal);
   end;
result:=true;
end;

procedure TFrm_LRE.CODGFORExit(Sender: TObject);
begin
CODGFOR.Text:=fdeixanum2(CODGFOR.Text);
if Trim(CODGFOR.Text)<>'' then
   begin
   if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR.Text) then
      begin
      lbx_codgfor.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codgfor.ItemIndex:=lbx_codgfor.Items.Count-1;
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end
   else
      begin
      fmensagem('Grupo de Fornecedor não Cadastrado!',0,['0'],0);
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end;
   end;

end;

procedure TFrm_LRE.CODGFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFOR(0,'frm_Vend_RelGFor',Key);
   if trim(CODGFOR.Text)<>'' then
      CODGFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_LRE.lbx_codgforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codgfor.ItemIndex>=0 then
      lbx_codgfor.Items.Delete(lbx_codgfor.ItemIndex);


end;

end.
