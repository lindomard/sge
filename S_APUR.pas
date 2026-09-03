unit S_Apur;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Buttons, Db, DBTables, func, Grids, DBGrids,
  S_LRE, S_LRS, S_Impres,Rdprint,S_Stru,lerarq,S_Agde, CheckLst, ToolEdit;


type
  TFrm_Apur = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    mval002: TEdit;
    mval003: TEdit;
    mval006: TEdit;
    mvobs0061: TEdit;
    mvobs0062: TEdit;
    mvobs0063: TEdit;
    mvobs0064: TEdit;
    mval007: TEdit;
    mval009: TEdit;
    mobs0064: TEdit;
    mobs0063: TEdit;
    mobs0062: TEdit;
    mobs0061: TEdit;
    TPGTERM: TEdit;
    Label14: TLabel;
    PGI: TEdit;
    Label13: TLabel;
    Label4: TLabel;
    MDTE: TMaskEdit;
    LN: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    MTERMOS: TCheckBox;
    Label11: TLabel;
    DTTERM1: TMaskEdit;
    Label12: TLabel;
    DTTERM2: TMaskEdit;
    Label15: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Bevel2: TBevel;
    NUMNF: TEdit;
    Label6: TLabel;
    CB_IPIICMS: TCheckBox;
    CB_USACUPOM: TCheckBox;
    MDT1: TDateEdit;
    MDT2: TDateEdit;
    RG_DOC: TRadioGroup;
    RGTNF: TRadioGroup;
    rg_oper: TRadioGroup;
    RG_NFCANC: TRadioGroup;
    Label7: TLabel;
    cb_protocolo: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure mval002KeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_apur: tfrm_impres;
    function termos(ptipo,pNumLiv,pPagIni:Integer;pDatIni,pDatFin:TDateTime): Boolean;
    function fapurcab(Tipo: integer): Boolean;

  end;


var
  Frm_Apur: TFrm_Apur;
  form_lrs: TFrm_LRS;
  mcont: Integer;
  a: integer;
  mNumTpg: Integer;
  mv00E1:  Real;  mv00S1:  Real;
  mv00E2:  Real;  mv00S2:  Real;
  mv00E3:  Real;  mv00S3:  Real;
  mv00E4:  Real;  mv00S4:  Real;
  mv00E5:  Real;  mv00S5:  Real;
  mv00E6:  Real;  mv00S6:  Real;
  mv00E7:  Real;  mv00S7:  Real;
  ms1:   Real;  mv011: Real;
  mv013:  Real; mv014: Real;
  beira: Integer;

implementation

uses  S_DM1, S_DM5, func_excecoes, S_DM4, S_Sintegra_Advert;
{$R *.DFM}

procedure TFrm_Apur.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Apur.BitBtn4Click(Sender: TObject);
var
  mcfo: string;
  mts1vc, mts1bn, mts1in, mts1ii, mts1ou, mts1br,mts1ir: real;
  mts2vc, mts2bn, mts2in, mts2ii, mts2ou, mts2br,mts2ir: real;
  mts3vc, mts3bn, mts3in, mts3ii, mts3ou, mts3br,mts3ir: real;
  mts7vc, mts7bn, mts7in, mts7ii, mts7ou, mts7br,mts7ir: real;
  mts5vc, mts5bn, mts5in, mts5ii, mts5ou, mts5br,mts5ir: real;
  mts6vc, mts6bn, mts6in, mts6ii, mts6ou, mts6br,mts6ir: real;
  mval001, mval004, mval008, mval010, msaldo, mval011, mval013,mval014: real;
  mval005, mval012: real;
// mdoc:Integer;
   vano1,vmes1,vdia1:Word;
   vano2,vmes2,vdia2:Word;
   x,mcontmarcado: Integer;
  //mlivn: integer;
  mprocessa: Boolean;
//  mtipodoc: integer;
begin
   try
      mdt1.Text:=FormatDateTime(fdt2,StrToDate(mdt1.Text))
   Except
      MessageDlg('Data inicial inválida, coloque uma data válida!',mtWarning,[mbOk],0);
      mdt1.Clear;
      mdt1.SetFocus;
      Exit;
   end;
   try
      mdt2.Text:=FormatDateTime(fdt2,StrToDate(mdt2.Text))
   Except
      MessageDlg('Data final inválida, coloque uma data válida!',mtWarning,[mbOk],0);
      mdt2.Clear;
      mdt2.SetFocus;
      Exit;
   end;
   if StrToDate(mdt1.Text)>StrToDate(mdt2.Text) then
   begin
      MessageDlg('Data final está menor que data inicial.',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      Exit;
   end;
   DecodeDate(StrToDate(mdt1.Text),vano1,vmes1,vdia1);
   DecodeDate(StrToDate(mdt2.Text),vano2,vmes2,vdia2);
   if (vmes1<>vmes2) or (vano1<>vano2) then
   begin
      MessageDlg('Mês e Ano de data inicial e final estão diferentes.',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      Exit;
   end;
//


   try
      MDTE.Text:=FormatDateTime('dd/mm/YYYY',StrToDate(MDTE.Text))
   Except
      ShowMessage('Data de emissão inválida, coloque uma data válida!');
      MDTE.Clear;
      MDTE.SetFocus;
      Exit;
   end;
   if mtermos.Checked then
   begin
      try
         dtterm1.Text:=FormatDateTime('dd/mm/YYYY',StrToDate(dtterm1.Text))
      Except
         ShowMessage('Data do Termo de Abertura, coloque uma data válida!');
         dtterm1.Clear;
         dtterm1.SetFocus;
         Exit;
      end;
      try
         dtterm2.Text:=FormatDateTime('dd/mm/YYYY',StrToDate(dtterm2.Text))
      Except
         ShowMessage('Data do Termo de Encerramento inválida, coloque uma data válida!');
         dtterm2.Clear;
         dtterm2.SetFocus;
         Exit;
      end;
      if StrToDate(dtterm1.Text)>StrToDate(dtterm2.Text) then
      begin
         ShowMessage('Data do Termos de Encerramento está menor que data do Termo de Abertura.');
         dtterm1.SetFocus;
         Exit;
      end;
   end;
if CB_USACUPOM.Checked then
   form_lrs.mTabelaItens_Cupom:='CADP02_VDACF'
else
   form_lrs.mTabelaItens_Cupom:='CADP02';



mcontmarcado:=0;
{
for x:=0 to RG_DOC.Items.Count-1 do
   begin
   if RG_DOC.Checked[x]=true then
      begin
      mcontmarcado:=mcontmarcado+1;
      end;
   end;
if mcontmarcado=0 then
   begin
   RG_DOC.Checked[3]:=True;
   RG_DOC.ItemIndex:=3;
   RG_DOCClick(self);
   end;
}
Application.Createform(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Calculando o Registro de Apuração, Aguarde...';
Frm_Agde.Show;
Frm_Agde.Update;
fAbrirClientDataSet(DM5.TB_LRS);

mtmp_R50 :=fProcTemp(13);
if DM5.TB_R50.Active then
   DM5.TB_R50.Close;
if DM5.TB_R50.Exists then
   DM5.TB_R50.DeleteTable;
DM5.TB_R50.TableName:=mtmp_R50;
DM5.TB_R50.CreateTable;
DM5.Tb_R50.Open;

mtmp_R70 :=fProcTemp(11);
if DM5.TB_R70.Active then
   DM5.TB_R70.Close;
if DM5.TB_R70.Exists then
   DM5.TB_R70.DeleteTable;
DM5.TB_R70.TableName:=mtmp_R70;
DM5.TB_R70.CreateTable;
DM5.Tb_R70.Open;

mtmp_R71 :=fProcTemp(12);
if DM5.TB_R71.Active then
   DM5.TB_R71.Close;
if DM5.TB_R71.Exists then
   DM5.TB_R71.DeleteTable;
DM5.TB_R71.TableName:=mtmp_R71;
DM5.TB_R71.CreateTable;
DM5.Tb_R71.Open;


mtmp_R51 :=fProcTemp(13);
if DM5.TB_R51.Active then
   DM5.TB_R51.Close;
if DM5.TB_R51.Exists then
   DM5.TB_R51.DeleteTable;
DM5.TB_R51.TableName:=mtmp_R51;
DM5.TB_R51.CreateTable;
DM5.Tb_R51.Open;

fAbrirClientDataSet(DM5.TB_RUF);


mtmp_R53 :=fProcTemp(13);
if DM5.TB_R53.Active then
   DM5.TB_R53.Close;
if DM5.TB_R53.Exists then
   DM5.TB_R53.DeleteTable;
DM5.TB_R53.TableName:=mtmp_R53;
DM5.TB_R53.CreateTable;
DM5.Tb_R53.Open;
mtmp_R54 :=fProcTemp(13);
if DM5.TB_R54.Active then
   DM5.TB_R54.Close;
if DM5.TB_R54.Exists then
   DM5.TB_R54.DeleteTable;
DM5.TB_R54.TableName:=mtmp_R54;
DM5.TB_R54.CreateTable;
DM5.Tb_R54.Open;

mtmp_R75 :=fProcTemp(13);
if DM5.TB_R75.Active then
   DM5.TB_R75.Close;
if DM5.TB_R75.Exists then
   DM5.TB_R75.DeleteTable;
DM5.TB_R75.TableName:=mtmp_R75;
DM5.TB_R75.CreateTable;
DM5.Tb_R75.Open;


mtmp_RE :=fProcTemp(13);
if DM5.TB_RE.Active then
   DM5.TB_RE.Close;
if DM5.TB_RE.Exists then
   DM5.TB_RE.DeleteTable;
DM5.TB_RE.TableName:=mtmp_RE;
DM5.TB_RE.CreateTable;
DM5.Tb_RE.Open;



fAbrirClientDataSet(DM5.tb_rcfop);

mtmp_RsCfo:=fProcTemp(13);
if DM5.Tb_RsCFO.Active then
   DM5.Tb_RsCFO.Close;
if DM5.Tb_RsCFO.Exists then
   DM5.Tb_RsCFO.DeleteTable;
DM5.Tb_RsCFO.TableName:=mtmp_RsCfo;
DM5.Tb_RsCFO.CreateTable;
DM5.Tb_RsCFO.Open;

fAbrirClientDataSet(DM5.TB_RSint);

//mlivn:=StrToInt('0'+LN.Text);

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
                    +'       ,NEAVAP '
                    +'       ,NEOUTNINC+NEOUTDESP AS NEOUTNINC  '
                    +'       ,NEOUTDESP '
                    +'       ,'+chr(39)+'E'+chr(39)+' AS ORIGEM '
                    +'        FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                 +' NESTATUS<9 ');
if Trim(MDT1.Text)<>'/  /' then
   DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NEDTENT',true,strtodate(mdt1.text)));

if Trim(MDT2.Text)<>'/  /' then
   DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NEDTENT',false,strtodate(mdt2.text)));
   NUMNF.Text:=NUMNF.Text;
   if fdeixanum2(NUMNF.Text)<>'' then
      DM5.Qr_NE.SQL.Add(' and  NENUMERO=0'+NUMNF.Text);

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
                    +'       ,NSTIPO  AS NETIPO '
                    +'       ,NSAVAP AS NEAVAP '

                    +'       ,NSMODELO AS NEMODELO '
                    +'       ,CUF AS  FUF '
                    +'       ,NSSTATUS AS NESTATUS '
                    +'       ,CRAZAO AS  FRAZAO '
                    +'       ,to_char(CCNPJ) AS  FCGC '
                    +'       ,CIE AS FIE '
                    +'       ,(NSTOTNOTA-NSTOTNOTA) AS NEIPIFRETE '
                    +'       ,NSLOTSEQ_CP AS  NELOTSEQ_CP '
                    +'       ,NSTOTISEN AS  NEISENTAS '
                    +'       ,NSFRETEPC AS NEFRETEPC '
                    +'       ,NSAVAP AS NEAVAP '
                    +'       ,(NSTOTOUT) AS NEOUTNINC '
                    +'       , 0 AS NEOUTDESP '
                    +'       ,'+chr(39)+'S'+chr(39)+' AS ORIGEM '
                    +'        FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                 +' NSSTATUS<6 ');

   if fdeixanum2(NUMNF.Text)<>'' then
      begin
      if RG_DOC.ItemIndex=0 then
         DM5.Qr_NE.SQL.Add(' and  (NSNUMERO=0'+NUMNF.Text+' or NSNUMCUP=0'+NUMNF.Text+')')
      else
         DM5.Qr_NE.SQL.Add(' and  NSNUMERO=0'+NUMNF.Text);
      end;

if Trim(MDT1.Text)<>'/  /' then
   DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NSDTEMIS',true,strtodate(mdt1.text)));

if Trim(MDT2.Text)<>'/  /' then
   DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NSDTEMIS',false,strtodate(mdt2.text)));

   DM5.Qr_Ne.SQL.Add(' and NSTIPO=1 and NSSTATUS <6');


   DM5.Qr_Ne.ParamByName('UF').AsString:=DM1.Tb_EmpUF.AsString;


   // termino das saidas




   DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');
   //DM5.Qr_Ne.Sql.savetoFile(mpastatemp + 'sql.txt');
   try
      DM5.Qr_NE.Open;
   except
     DM5.Qr_Ne.Sql.savetoFile(mpastatemp + 'sql.txt');
     end;



   GeraLFE(2,StrToDate(MDT1.Text),StrToDate(MDT2.Text),CB_IPIICMS.Checked,'');
   end;
if RGTNF.itemindex<>2 then
   begin
{   if (RG_DOC.Checked[1]=true) and (RG_DOC.Checked[2]=true) then // se nota e cupom
      mDoc:=0
   else if (RG_DOC.Checked[2]=true) then // se cupom
      mDoc:=2
   else
      mDoc:=1; // se nao entao sera nota fiscal.
   if (RG_DOC.Checked[2]) and (RG_DOC.Checked[3]) and (RG_DOC.Checked[4]) then
      mtipodoc:=0
   else if (RG_DOC.Checked[3])  then
      mtipodoc:=2
   else if (RG_DOC.Checked[4])  then
      mtipodoc:=3
   else
      mtipodoc:=0;
}
form_lrs.FAbrirBanco_ns(valint(NUMNF.Text),RG_DOC.ItemIndex,rg_oper.ItemIndex,RG_NFCANC.ItemIndex,MDT1.Date,MDT2.Date,'',cb_protocolo.Text);



{   form_lrs.FAbrirBanco_ns(valint(NUMNF.Text)
                           ,RG_DOC.ItemIndex
                           ,rg_oper.ItemIndex
                           ,RG_NFCANC.ItemIndex
                           ,fStringtodatetime(MDT1.Text)
                           ,fStringtodatetime(MDT2.Text),'',cb_protocolo.Text);

}
//   Frm_LRS.FAbrirBanco_ns(valint(NUMNF.Text),mdoc,2,1, MDT1.Date,MDT2.Date,'');

   end;


if (RG_DOC.ItemIndex=0) or (RG_DOC.ItemIndex=2) or (RG_DOC.ItemIndex=3) then
   begin
   mprocessa:=false;
   if not flfilpad(-2,'_lrs','MAPARES') then
      mprocessa:=true
   else
      if DM4.Tb_FilPad2FPVALOR.AsString<>'SIM' then
         mprocessa:=true;

   if mprocessa=true then
      begin
      if not form_lrs.fVerificaReducaoZ(Strtodate(MDT1.Text),Strtodate(MDT2.Text)) then
         begin
         if Application.MessageBox('Ha Erros Entre o Livro Fiscal e o Mapa Resumo, Continuar mesmo assim?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
            exit;
         end
      else
         begin
         fDeletaPadroes(-2,'_lrs','MAPARES');
         fGravaPadroes(-2,'MAPARES'    ,'text'   ,'_lrs','SIM');
         end;
      end;
   end;





form_lrs.GeraLFS(2,0,RG_DOC.ItemIndex,0,StrToDate(MDT1.Text),StrToDate(MDT2.Text),true,'');
//geraLFS(0,RG_MODELO.ItemIndex,RG_DOC.ItemIndex,iif(CB_ICMSROBS.Checked,1,0),StrToDate(MDT1.Text),StrToDate(MDT2.Text),CB_RETIDO_SEPAR.Checked,MCFOP.Text);


mcfo:='   ';
mts1vc:=0; mts1bn:=0; mts1in:=0; mts1ii:=0; mts1ou:=0; mts1br:=0; mts1ir:=0;
mts2vc:=0; mts2bn:=0; mts2in:=0; mts2ii:=0; mts2ou:=0; mts2br:=0; mts2ir:=0;
mts3vc:=0; mts3bn:=0; mts3in:=0; mts3ii:=0; mts3ou:=0; mts3br:=0; mts3ir:=0;
mts5vc:=0; mts5bn:=0; mts5in:=0; mts5ii:=0; mts5ou:=0; mts5br:=0; mts5ir:=0;
mts6vc:=0; mts6bn:=0; mts6in:=0; mts6ii:=0; mts6ou:=0; mts6br:=0; mts6ir:=0;
mts7vc:=0; mts7bn:=0; mts7in:=0; mts7ii:=0; mts7ou:=0; mts7br:=0; mts7ir:=0;
{mval004:=0;} mval008:=0; {mval010:=0;} msaldo:=0; mval011:=0; mval013:=0;mval014:=0;mval001:=0;
mval005:=0; mval012:=0;
//
//

{
Qr_CFO.Close;
Qr_CFO.SQL.Clear;
Qr_CFO.SQL.Add('Select CFO, sum(TOTNOTA) VCONT, sum(BASEN) BASEN,'
              +'            sum(ICMSN) ICMSN, sum(BASER) BASERET, '
              +'            sum(ICMSR) ICMSRET, sum(ISENTAS) VISENTAS, '
              +'            sum(OUTRAS) VOUTRAS '
              +'            from CADRSCFO group by CFO ');
Qr_CFO.Open;



}
mpag:=StrToInt('0'+PGI.Text);
mpag:=mPag-1;
//mpag:=0;
testeform := TFrm_Apur(FindGlobalComponent('form_impres_etivol'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_apur);
   end;


mlin:=66;
form_impres_apur.RDprint1.TamanhoQteLPP:=Seis;
form_impres_apur.RDprint1.FonteTamanhoPadrao:=S17cpp;
form_impres_apur.RDprint1.TamanhoQteColunas:=136;
form_impres_apur.Rdprint1.Abrir;
beira:=1;


mNNumnf_irreg:='';



DM5.Tb_RsCFO.First;
while not DM5.Tb_RSCFO.Eof do
   begin
//   ShowMessage('Cfo....' +DM5.Tb_RSCFOCFO.Value);
   if not DM5.Tb_RSCFOCFO.IsNull then
      begin
      mcfo:=FormatFloat('0000',DM5.Tb_RSCFOCFO.Value);
      if StrToInt(mcfo)>4999 then
         begin
         DM5.Tb_RSCFO.Next;
         continue;
         end;
      end;

   If mlin>50 then
      begin
      fapurcab(1);
      end;
   form_impres_apur.Rdprint1.Impf(mlin,beira,'|         |  '+Insere(DM5.Tb_RSCFOCFO.AsString,' ',5)+'   |'+
   Insere(FormatFloat('0.00',DM5.Tb_RsCFOTOTNOTA.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RSCFOBASEN.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RSCFOICMSN.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RsCFOISENTAS.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RsCFOOUTRAS.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RsCFOBASER.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RsCFOICMSR.Value),' ',14)+'|',mreduz);
   If mcfo='0000' then
      begin
      mts1vc:=mts1vc+DM5.Tb_RsCFOTOTNOTA.Value;
      mts1bn:=mts1bn+DM5.Tb_RSCFOBASEN.Value;
      mts1in:=mts1in+DM5.Tb_RSCFOICMSN.Value;
      mts1ii:=mts1ii+DM5.Tb_RsCFOISENTAS.Value;
      mts1ou:=mts1ou+DM5.Tb_RSCFOOUTRAS.Value;
      mts1br:=mts1br+DM5.Tb_RsCFOBASER.Value;
      mts1ir:=mts1ir+DM5.Tb_RsCFOICMSR.Value;
      end
   else If mcfo[1]='1' then
      begin
      mts1vc:=mts1vc+DM5.Tb_RsCFOTOTNOTA.Value;
      mts1bn:=mts1bn+DM5.Tb_RSCFOBASEN.Value;
      mts1in:=mts1in+DM5.Tb_RSCFOICMSN.Value;
      mts1ii:=mts1ii+DM5.Tb_RSCFOISENTAS.Value;
      mts1ou:=mts1ou+DM5.Tb_RSCFOOUTRAS.Value;
      mts1br:=mts1br+DM5.Tb_RsCFOBASER.Value;
      mts1ir:=mts1ir+DM5.Tb_RsCFOICMSR.Value;
      end
   else If mcfo[1]='2' then
      begin
      mts2vc:=mts2vc+DM5.Tb_RsCFOTOTNOTA.Value;
      mts2bn:=mts2bn+DM5.Tb_RSCFOBASEN.Value;
      mts2in:=mts2in+DM5.Tb_RSCFOICMSN.Value;
      mts2ii:=mts2ii+DM5.Tb_RSCFOISENTAS.Value;
      mts2ou:=mts2ou+DM5.Tb_RSCFOOUTRAS.Value;
      mts2br:=mts2br+DM5.Tb_RsCFOBASER.Value;
      mts2ir:=mts2ir+DM5.Tb_RsCFOICMSR.Value;
      end
   else
      begin
      mts3vc:=mts3vc+DM5.Tb_RsCFOTOTNOTA.Value;
      mts3bn:=mts3bn+DM5.Tb_RSCFOBASEN.Value;
      mts3in:=mts3in+DM5.Tb_RSCFOICMSN.Value;
      mts3ii:=mts3ii+DM5.Tb_RSCFOISENTAS.Value;
      mts3ou:=mts3ou+DM5.Tb_RSCFOOUTRAS.Value;
      mts3br:=mts3br+DM5.Tb_RsCFOBASER.Value;
      mts3ir:=mts3ir+DM5.Tb_RsCFOICMSR.Value;
      end;
   mlin:=mlin+1;
   DM5.Tb_RSCFO.Next;
   end;
{for a:=mlin to 16 do
   begin
   form_impres_apur.Rdprint1.Impf(a,01,'|         |          |              |              |              |              |              |              |              |',mfonte);
   end;
mlin:=a;}
If mlin>50 then
   begin
   fapurcab(1);
   end;


form_impres_apur.Rdprint1.Impf(mlin,beira,'|1.00 do Estado      |'+
Insere(FormatFloat('0.00',mts1vc),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1bn),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1in),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1ii),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1ou),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1br),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1ir),' ',14)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|2.00 de Outros      |'+
Insere(FormatFloat('0.00',mts2vc),' ',14)+'|'+
Insere(FormatFloat('0.00',mts2bn),' ',14)+'|'+
Insere(FormatFloat('0.00',mts2in),' ',14)+'|'+
Insere(FormatFloat('0.00',mts2ii),' ',14)+'|'+
Insere(FormatFloat('0.00',mts2ou),' ',14)+'|'+
Insere(FormatFloat('0.00',mts2br),' ',14)+'|'+
Insere(FormatFloat('0.00',mts2ir),' ',14)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|3.00 do Exterior    |'+
Insere(FormatFloat('0.00',mts3vc),' ',14)+'|'+
Insere(FormatFloat('0.00',mts3bn),' ',14)+'|'+
Insere(FormatFloat('0.00',mts3in),' ',14)+'|'+
Insere(FormatFloat('0.00',mts3ii),' ',14)+'|'+
Insere(FormatFloat('0.00',mts3ou),' ',14)+'|'+
Insere(FormatFloat('0.00',mts3br),' ',14)+'|'+
Insere(FormatFloat('0.00',mts3ir),' ',14)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'| Totais.........    |'+
Insere(FormatFloat('0.00',mts1vc+mts2vc+mts3vc),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1bn+mts2bn+mts3bn),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1in+mts2in+mts3in),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1ii+mts2ii+mts3ii),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1ou+mts2ou+mts3ou),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1br+mts2br+mts3br),' ',14)+'|'+
Insere(FormatFloat('0.00',mts1ir+mts2ir+mts3ir),' ',14)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+-----------------------------------------------------------------------------------------------------------------------------+',mreduz);
fapurcab(2);

DM5.Tb_RSCFO.First;
while not (DM5.Tb_RSCFO.Eof) do
   begin
   if DM5.Tb_RSCFOCFO.IsNull then
      begin
      DM5.Tb_RSCFO.Next;
      Continue;
      end
   else
      begin
      mcfo:=FormatFloat('0000',DM5.Tb_RSCFOCFO.Value);
      if StrToInt(mcfo)<5000 then
         begin
         DM5.Tb_RSCFO.Next;
         continue;
         end;
      end;
   if mlin>50 then
      begin
      fapurcab(1);
      end;
   form_impres_apur.Rdprint1.Impf(mlin,beira,'|         |   '+mcfo+'   |'+
   Insere(FormatFloat('0.00',DM5.Tb_RsCFOTOTNOTA.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RSCFOBASEN.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RSCFOICMSN.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RSCFOISENTAS.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RSCFOOUTRAS.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RsCFOBASER.Value),' ',14)+'|'+
   Insere(FormatFloat('0.00',DM5.Tb_RsCFOICMSR.Value),' ',14)+'|',mreduz);
   if mcfo='0000' then
      begin
      mts5vc:=mts5vc+DM5.Tb_RsCFOTOTNOTA.Value;
      mts5bn:=mts5bn+DM5.Tb_RSCFOBASEN.Value;
      mts5in:=mts5in+DM5.Tb_RSCFOICMSN.Value;
      mts5ii:=mts5ii+DM5.Tb_RSCFOISENTAS.Value;
      mts5ou:=mts5ou+DM5.Tb_RSCFOOUTRAS.Value;
      mts5br:=mts5br+DM5.Tb_RsCFOBASER.Value;
      mts5ir:=mts5ir+DM5.Tb_RsCFOICMSR.Value;
      end
   else if mcfo[1]='5' then
      begin
      mts5vc:=mts5vc+DM5.Tb_RsCFOTOTNOTA.Value;
      mts5bn:=mts5bn+DM5.Tb_RSCFOBASEN.Value;
      mts5in:=mts5in+DM5.Tb_RSCFOICMSN.Value;
      mts5ii:=mts5ii+DM5.Tb_RSCFOISENTAS.Value;
      mts5ou:=mts5ou+DM5.Tb_RSCFOOUTRAS.Value;
      mts5br:=mts5br+DM5.Tb_RsCFOBASER.Value;
      mts5ir:=mts5ir+DM5.Tb_RsCFOICMSR.Value;
      end
   else if mcfo[1]='6' then
      begin
      mts6vc:=mts6vc+DM5.Tb_RsCFOTOTNOTA.Value;
      mts6bn:=mts6bn+DM5.Tb_RSCFOBASEN.Value;
      mts6in:=mts6in+DM5.Tb_RSCFOICMSN.Value;
      mts6ii:=mts6ii+DM5.Tb_RSCFOISENTAS.Value;
      mts6ou:=mts6ou+DM5.Tb_RSCFOOUTRAS.Value;
      mts6br:=mts6br+DM5.Tb_RsCFOBASER.Value;
      mts6ir:=mts6ir+DM5.Tb_RsCFOICMSR.Value;
      end
   else
      begin
      mts7vc:=mts7vc+DM5.Tb_RsCFOTOTNOTA.Value;
      mts7bn:=mts7bn+DM5.Tb_RSCFOBASEN.Value;
      mts7in:=mts7in+DM5.Tb_RSCFOICMSN.Value;
      mts7ii:=mts7ii+DM5.Tb_RSCFOISENTAS.Value;
      mts7ou:=mts7ou+DM5.Tb_RSCFOOUTRAS.Value;
      mts7br:=mts7br+DM5.Tb_RsCFOBASER.Value;
      mts7ir:=mts7ir+DM5.Tb_RsCFOICMSR.Value;
      end;
   mlin:=mlin+1;
   DM5.Tb_RSCFO.Next;
   end;
 {   for a:=mlin to 24 do
   begin
   form_impres_apur.Rdprint1.Impf(a,01,'|         |          |              |              |              |              |              |              |              |',mreduz);
   end;}
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|5.00 do Estado      |'+
Insere(FormatFloat('0.00',mts5vc),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5bn),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5in),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5ii),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5ou),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5br),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5ir),' ',14)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|6.00 de Outros      |'+
Insere(FormatFloat('0.00',mts6vc),' ',14)+'|'+
Insere(FormatFloat('0.00',mts6bn),' ',14)+'|'+
Insere(FormatFloat('0.00',mts6in),' ',14)+'|'+
Insere(FormatFloat('0.00',mts6ii),' ',14)+'|'+
Insere(FormatFloat('0.00',mts6ou),' ',14)+'|'+
Insere(FormatFloat('0.00',mts6br),' ',14)+'|'+
Insere(FormatFloat('0.00',mts6ir),' ',14)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|7.00 do Exterior    |'+
Insere(FormatFloat('0.00',mts7vc),' ',14)+'|'+
Insere(FormatFloat('0.00',mts7bn),' ',14)+'|'+
Insere(FormatFloat('0.00',mts7in),' ',14)+'|'+
Insere(FormatFloat('0.00',mts7ii),' ',14)+'|'+
Insere(FormatFloat('0.00',mts7ou),' ',14)+'|'+
Insere(FormatFloat('0.00',mts7br),' ',14)+'|'+
Insere(FormatFloat('0.00',mts7ir),' ',14)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'| Totais.........    |'+
Insere(FormatFloat('0.00',mts5vc+mts6vc+mts7vc),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5bn+mts6bn+mts7bn),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5in+mts6in+mts7in),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5ii+mts6ii+mts7ii),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5ou+mts6ou+mts7ou),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5br+mts6br+mts7br),' ',14)+'|'+
Insere(FormatFloat('0.00',mts5ir+mts6ir+mts7ir),' ',14)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+-----------------------------------------------------------------------------------------------------------------------------+',mreduz);
form_impres_apur.Rdprint1.NovaPagina;
mval001:=mts5in+mts6in+mts7in;
mval004:=mval001+StrToFloat(mval002.Text)+StrToFloat(mval003.Text);
mval008:=mval005+StrToFloat(mval006.Text)+StrToFloat(mvobs0061.Text)+
         StrToFloat(mvobs0062.Text)+StrToFloat(mvobs0063.Text)
        +StrToFloat(mvobs0064.text)+mts1in+mts2in+mts3in+StrToFloat(mval007.Text);
mval010:=mval008+StrToFloat(mval009.Text);
msaldo:=mval004-mval010;
if msaldo>=0 then
   begin
   mval011:=msaldo;
   mval013:=msaldo-mval012
   end
else
   mval014:=mval010-mval004;
mpag:=mpag+1;
mlin:=1;

form_impres_apur.Rdprint1.Impf(mlin,beira,'+'+Insere('-','-',130)+'+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|'+Insere(' ',' ',130)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|'+Insere(' ',' ',40)+'R E S U M O      D A    A P U R A C A O     D O  I C M S'+Insere(' ',' ',34)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|'+Insere(' ',' ',130)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'| FIRMA...............: '+Insere2(DM1.Tb_EmpRAZAO.Value,' ',50)+insere(' ',' ',57)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'| INSCRICAO ESTADUAL..: '+Insere2(DM1.Tb_EmpINSCRICAO.Value,' ',40)+
'C.G.C.(MF)..........: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),' ',40)+insere(' ',' ',05)+'|',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'| FOLHA...............: '+Insere2(FormatFloat('0000',mpag),' ',40)+
'MES OU PERIODO/ANO..: '+Insere2(FormatDateTime('mmmm/yyyy',StrToDate(MDT1.Text)),' ',40)+insere(' ',' ',05)+'|',mreduz);
mlin:=mlin+1;

form_impres_apur.Rdprint1.Impf(mlin,beira,'+----------------------------------------------------------------------------------------------------------------------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+-------+------ D E B I T O     D O     I M P O S T O -----------------------------------+------------- V A L O R E S -------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                +--------------------+--------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                |    COLUNA AUXILIAR |              SOMAS |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                +--------------------+--------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  D    | 001 - POR SAIDAS / PRESTACOES COM DEBITO DO IMPOSTO                            |                    |     '+insere(FormatFloat('0.00',mval001),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  E    | 002 - OUTROS DEBITOS                                                           |                    |     '+insere(FormatFloat('0.00',StrToFloat(mval002.Text)),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  B    |                                                                                |                    |                    |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  I    | 003 - ESTORNO DE CREDITOS                                                      |                    |     '+insere(FormatFloat('0.00',StrToFloat(mval003.Text)),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  T    |                                                                                |                    |                    |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  O    | 004 - SUBTOTAL                                                                 |                    |     '+insere(FormatFloat('0.00',mval004),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+-------+--------------------------------------------------------------------------------+--------------------+--------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+-------+------ C R E D I T O    D O     I M P O S T O ----------------------------------+------------- V A L O R E S -------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                +--------------------+--------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                |    COLUNA AUXILIAR |              SOMAS |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                +--------------------+--------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  C    | 005 - POR ENTRADAS / PRESTACOES COM CREDITO DO IMPOSTO                         |                    |     '+insere(FormatFloat('0.00',mts1in+mts2in+mts3in),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  R    | 006 - OUTROS CREDITOS                                                          |                    |     '+insere(FormatFloat('0.00',StrToFloat(mval006.Text)),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  E    |       '+insere(mobs0061.Text,' ',73)+'|                    |     '+insere(FormatFloat('0.00',StrToFloat(mvobs0061.Text)),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  D    |       '+insere(mobs0062.Text,' ',73)+'|                    |     '+insere(formatFloat('0.00',StrToFloat(mvobs0062.Text)),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  I    |       '+insere(mobs0063.Text,' ',73)+'|                    |     '+insere(formatFloat('0.00',StrToFloat(mvobs0063.Text)),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  T    |       '+insere(mobs0064.Text,' ',73)+'|                    |     '+insere(FormatFloat('0.00',StrToFloat(mvobs0064.Text)),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  O    |                                                                                |                    |                    |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       | 007 - ESTORNO DE DEBITOS                                                       |                    |     '+insere(FormatFloat('0.00',StrToFloat(mval007.Text)),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                |                    |                    |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       | 008 - SUBTOTAL                                                                 |                    |     '+insere(FormatFloat('0.00',mval008),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       | 009 - SALDO CREDOR DO PERIODO ANTERIOR                                         |                    |     '+insere(FormatFloat('0.00',StrToFloat(mval009.Text)),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       | 010 - TOTAL                                                                    |                    |     '+insere(formatFloat('0.00',mval010),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+-------+--------------------------------------------------------------------------------+--------------------+--------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+-------+------ A P U R A C A O     D E     S A L D O  ----------------------------------+------------- V A L O R E S -------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                +--------------------+--------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                |    COLUNA AUXILIAR |              SOMAS |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       |                                                                                +--------------------+--------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  S    | 011 - SALDO DEVEDOR ( DEBITOS MENOS CREDITOS )                                 |                    |     '+Insere(FormatFloat('0.00',mval011),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  A    | 012 - DEDUCOES                                                                 |                    |     '+Insere(FormatFloat('0.00',mval012),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  L    |                                                                                |                    |                    |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  D    | 013 - IMPOSTO A RECOLHER                                                       |                    |     '+Insere(FormatFloat('0.00',mval013),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  O    |                                                                                |                    |                    |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|       | 014 - SALDO CREDOR ( CREDITOS MENOS DEBITOS ) A TRANSP. P/ O PERIODO SEGUINTE  |                    |     '+Insere(FormatFloat('0.00',mval014),' ',14)+' |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+-------+--------------------------------------------------------------------------------+--------------------+--------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+-------------- I N F O R M A C O E S     C O M P L E M E N T A R E S -------------------------------------------------------------+',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|                                                                                                                                  |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|               GUIAS DE RECOLHIMENTO                                                                                              |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|                                                                                                                                  |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  NUMERO       DATA          VALOR ORGAO ARRECADADOR              DT_ENTREGA  LOCAL DE ENTREGA ( BANCO/REPARTICAO )               |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|                                                                                                                                  |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|           /  /               0,00                                  /  /                                                          |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|                                                                                                                                  |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|                                                                                                                                  |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'|  OBSERVACAO :                                                                                                                    |',mreduz);
mlin:=mlin+1;
form_impres_apur.Rdprint1.Impf(mlin,beira,'+----------------------------------------------------------------------------------------------------------------------------------+',mreduz);
if mtermos.Checked then
   termos(3,valint(ln.Text),valint(PGI.Text),StrTodate(DTTERM1.Text),StrTodate(DTTERM2.Text))
else
   form_impres_apur.Rdprint1.Novapagina;


Frm_Agde.Free;
if form_impres_apur.Rdprint1.Setup then form_impres_apur.Rdprint1.Fechar;
form_impres_apur.Free;
form_impres_apur:=nil;



DM5.Tb_R50.Close;
if DM5.TB_R50.Exists then
   DM5.TB_R50.DeleteTable;

DM5.Tb_R51.Close;
if DM5.TB_R51.Exists then
   DM5.TB_R51.DeleteTable;

DM5.Tb_R53.Close;
if DM5.TB_R53.Exists then
   DM5.TB_R53.DeleteTable;

DM5.Tb_R54.Close;
if DM5.TB_R54.Exists then
   DM5.TB_R54.DeleteTable;

DM5.Tb_RE.Close;
if DM5.TB_RE.Exists then
   DM5.TB_RE.DeleteTable;

DM5.Tb_R71.Close;
if DM5.TB_R71.Exists then
   DM5.TB_R71.DeleteTable;


DM5.Tb_R75.Close;
if DM5.TB_R75.Exists then
   DM5.TB_R75.DeleteTable;



DM5.Tb_RsCFO.Close;
if DM5.TB_RsCFO.Exists then
   DM5.TB_RsCFO.DeleteTable;



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

procedure TFrm_Apur.mval002KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then key:=decimalseparator
else if not (key in ['0'..'9',#8]) then key:=#0;
end;

function tFrm_Apur.fapurcab(Tipo: integer): Boolean;
begin
If Tipo<>2 then
   begin
   If mpag>0 then
      begin
      form_impres_apur.Rdprint1.Impf(mlin,01,'+-----------------------------------------------------------------------------------------------------------------------------+',mreduz);
      form_impres_apur.Rdprint1.NovaPagina;
      end;
   mpag:=mpag+1;
   form_impres_apur.Rdprint1.Impf(01,beira,'+-----------------------------------------------------------------------------------------------------------------------------+',mreduz);
   form_impres_apur.Rdprint1.Impf(02,beira,'|                          R E G I S T R O    D E    A P U R A C A O    D E   I C M S                                         |',mreduz);
   form_impres_apur.Rdprint1.Impf(03,beira,'|-----------------------------------------------------------------------------------------------------------------------------|',mreduz);
   form_impres_apur.Rdprint1.Impf(04,beira,'| Empresa......: '+insere2(DM1.Tb_EmpRAZAO.Value,' ',109)+'|',mreduz);
   form_impres_apur.Rdprint1.Impf(05,beira,'| Insc.Estadual: '+insere2(DM1.Tb_EmpINSCRICAO.Value,' ',40)+Insere2('CGC (MF): '+FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),' ',69)+'|',mreduz);
   form_impres_apur.Rdprint1.Impf(06,beira,'| Folha........: '+FormatFloat('0000',mpag)+Insere(' ',' ',35)+Insere2('Periodo.: '+Frm_Apur.MDT1.Text+' a '+Frm_Apur.MDT2.Text,' ',70)+'|',mreduz);
   form_impres_apur.Rdprint1.Impf(07,beira,'|--------------------+--------------+----------------------- E n t r a d a s -------------------+-----------------------------|',mreduz);
   form_impres_apur.Rdprint1.Impf(08,beira,'|    Codificacao     |              |  OPERACOES COM CREDITO DO   |  OPERACOES SEM CREDITO DO   |    SUBSTITUICAO TRIBUTARIA  |',mreduz);
   form_impres_apur.Rdprint1.Impf(09,beira,'|---------+----------|   Valores    |  IMPOSTO.                   |  IMPOSTO                    |                             |',mreduz);
   form_impres_apur.Rdprint1.Impf(10,beira,'|         |          |              |--------------+--------------|--------------+--------------|--------------+--------------|',mreduz);
   form_impres_apur.Rdprint1.Impf(11,beira,'|Contabil |  Fiscal  |  Contabeis   |     Base     |    Imposto   | Isentas/Nao  |              | Base Substi- |              |',mreduz);
   form_impres_apur.Rdprint1.Impf(12,beira,'|         |          |              |  de Calculo  |   Creditado  | Tributadas   |   Outras     | uicao.       | Icms Retido  |',mreduz);
   form_impres_apur.Rdprint1.Impf(13,beira,'+---------+----------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+',mreduz);
   mlin:=14;
   end
else
   begin
   mlin:=mlin+1;
   form_impres_apur.Rdprint1.Impf(mlin,beira,'|--------------------+--------------+------------------------- S a i d a s  --------------------+-----------------------------|',mreduz);
   mlin:=mlin+1;
   form_impres_apur.Rdprint1.Impf(mlin,beira,'|    Codificacao     |              |  OPERACOES COM CREDITO DO   |  OPERACOES SEM CREDITO DO   |    SUBSTITUICAO TRIBUTARIA  |',mreduz);
   mlin:=mlin+1;
   form_impres_apur.Rdprint1.Impf(mlin,beira,'|---------+----------|   Valores    |  IMPOSTO.                   |  IMPOSTO                    |                             |',mreduz);
   mlin:=mlin+1;
   form_impres_apur.Rdprint1.Impf(mlin,beira,'|         |          |              |--------------+--------------|--------------+--------------|--------------+--------------|',mreduz);
   mlin:=mlin+1;
   form_impres_apur.Rdprint1.Impf(mlin,beira,'|Contabil |  Fiscal  |  Contabeis   |     Base     |    Imposto   | Isentas/Nao  |              | Base Substi- |              |',mreduz);
   mlin:=mlin+1;
   form_impres_apur.Rdprint1.Impf(mlin,beira,'|         |          |              |  de Calculo  |   Debitado   | Tributadas   |   Outras     | uicao.       | Icms Retido  |',mreduz);
   mlin:=mlin+1;
   form_impres_apur.Rdprint1.Impf(mlin,beira,'+---------+----------+--------------+--------------+--------------+--------------+--------------+--------------+--------------+',mreduz);
   mlin:=mlin+1;
   end;
result:=true;
end;
procedure TFrm_Apur.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2, StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      exit;
   end;

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if Strtodate(MDT2.Text)<StrtoDate(MDT1.Text) then
      begin
      MessageDlg('Invalido!, Data inicial maior que final',mtWarning,[mbOk],0);
      exit;
      end;
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DTTERM2.Text:=MDT2.Text;
   end;

end;

end;

procedure TFrm_Apur.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2, StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DTTERM1.Text:=MDT1.Text;
   end;
end;

procedure TFrm_Apur.FormCreate(Sender: TObject);
var
mdatai: TDateTime;
Query_temp: TQuery;
begin
{
Query_temp:=TQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';

if DM1.Tb_EmpCGC.Value=2777589000164 then
   begin
   Query_temp.Close;
   Query_temp.SQL.clear;
   Query_temp.SQL.Add('update cadp02 set p2cfo=5102 where (p2cfo=5105 or p2cfo=5002 or p2cfo=5402) and p2aliq>0');

   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;

   Query_temp.Close;
   Query_temp.SQL.clear;
   Query_temp.SQL.Add('update cadp02 set p2cfo=5405 where (p2cfo=5105 or p2cfo=5402) and p2aliq=0');

   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;


   Query_temp.Close;
   Query_temp.SQL.clear;
   Query_temp.SQL.Add('update cadp02 set p2basen=p2totliq where p2aliq>0 and p2basen<>p2totliq and p2codemp=1 '
                     +' and exists (select p1chave from cadp01 where p1chave=p2chave and p1ordem=p2ordem '
                     +' and p1lotseq=p2lotseq and p1codemp=p2codemp and p1numcf>0) ');

   try
      Query_temp.ExecSQL;
      fdm1StartCommit;
   except
      end;

   end;

Query_temp.Close;
Query_temp.SQL.clear;
Query_temp.SQL.Add('update cadp02 set p2sit='+QuotedStr('0')+'||p2sit where length(p2sit)<3');

try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
Query_temp.Close;
Query_temp.SQL.clear;

Query_temp.SQL.Add('update CADNS set NSCFO1 '
                  +' = (select min(P2CFO) from CADP02 where P2CHAVE=NSCHAVEP AND P2ORDEM=NSORDEMP AND P2CODEMP=NSCODEMP AND P2LOTSEQ=NSLOTSEQ_CP) '
                  +' where NSCFO1 is null '
                  +' AND nschavep>0 '
                  +' AND NSDTEMIS>'+QuotedStr('01/05/2012'));
try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
freeandNil(query_temp);


}
//if Frm_Stru=nil then
//   Application.CreateForm(TFrm_Stru, Frm_Stru);
if ValInt(FormatDateTime('dd', pdatasis))>20 then
   mdatai:=pdatasis
else
   mdatai:=fdatafinal(-28,pdatasis);
Application.CreateForm(TFrm_LRS,form_lrs);
mdatai:=StrtodAte('01/'+FormatDatetime('mm/yyyy', incmonth(pdatasis,-1)));
MDT1.Text   :=FormatDatetime(fdt2, mdatai);
DTTERM1.Text:=FormatDatetime(fdt2, mdatai);
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(mdatai));
DTTERM2.Text:=FormatDatetime(fdt2, fultdiames(mdatai));
MDTE.Text:=FormatDateTime(fdt2, date);
//RG_DOC.Checked[3]:=True;
//RG_DOC.ItemIndex:=3;
//RG_DOCClick(self);
if flfilpad(0,'_LRE','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IPIICMS',[]) then
      CB_IPIICMS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;

end;

procedure TFrm_Apur.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//Frm_Stru.Free;
//frm_Stru:=nil;
end;

procedure TFrm_Apur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
FreeAndNil(form_lrs);
end;


function TFrm_Apur.termos(ptipo,pNumLiv,pPagIni:Integer;pDatIni,pDatFin:TDateTime): Boolean;

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
   form_impres_apur.RDprint1.Novapagina;
   if mTermo=1 then
      form_impres_apur.RDprint1.Impf(03,01,insere('Folha....: 0001 ',' ',70),mnormal)
   else
      form_impres_apur.RDprint1.Impf(03,01,insere('Folha....: '+FormatFloat('0000',mpag),' ',70),mnormal);
   if ptipo=1 then
      form_impres_apur.RDprint1.Impf(06,01,Centra('REGISTRO DE SAIDAS',' ',80),mneg)
   else if ptipo=2 then
      form_impres_apur.RDprint1.Impf(06,01,Centra('REGISTRO DE ENTRADAS',' ',80),mneg)
   else
      form_impres_apur.RDprint1.Impf(06,01,Centra('REGISTRO DE APURACAO DE ICMS',' ',80),mneg);
   mdia:=UpperCase(Extenso2(pNumLiv));
   form_impres_apur.RDprint1.Impf(08,01,insere('Livro No. '+formatFloat('000', pNumLiv)+' ('+Trim(mdia)+')',' ',45),mnormal);

   if mTermo=1 then
      begin
      mcinst:=Centra('TERMO DE ABERTURA',' ',80);
      form_impres_apur.RDprint1.Impf(10,01,mcinst,mneg)
      end
   else
      begin
      mcinst:=Centra('TERMO DE ENCERRAMENTO',' ',80);
      form_impres_apur.RDprint1.Impf(10,01,mcinst,mneg);
      end;
   mdia:=copy(UpperCase(Extenso2(mpag)),1,34);
   form_impres_apur.RDprint1.Impf(14,01,'Este livro contem '+FormatFloat('0000',mpag)+
   ' ('+insere2(mdia,'*',34)+') folhas numeradas',mnormal);
   form_impres_apur.RDprint1.Impf(15,01,'por processamento  eletronico de dados e seguidamente  do  No. '+
   FormatFloat('0000',pPagIni)+'  ao  No.',mnormal);
   if mTermo=1 then
      form_impres_apur.RDprint1.Impf(16,01,FormatFloat('0000',mpag)+' e servira para  o  registro  das  operacoes  proprias  do  contribuinte',mnormal)
   else
      form_impres_apur.RDprint1.Impf(16,01,FormatFloat('0000',mpag)+' e serviu  para  o  registro  das  operacoes  proprias  do  contribuinte',mnormal);
   form_impres_apur.RDprint1.Impf(17,01,'abaixo identificado:',mnormal);
   form_impres_apur.RDprint1.Impf(19,01,'Nome.........: '+DM1.Tb_EmpRAZAO.Value,mnormal);
   form_impres_apur.RDprint1.Impf(20,01,'Endereco.....: '+DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,mnormal);
   form_impres_apur.RDprint1.Impf(21,01,'Cidade.......: '+DM1.Tb_EmpCIDADE.Value,mnormal);
   form_impres_apur.RDprint1.Impf(22,01,'Inscricao Estadual No. '+DM1.Tb_EmpINSCRICAO.Value+'       CGC(MF) No. '
   +Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),' ',21),mnormal);
//***
   If mTermo=1  then mdia:=Data(pDatIni,0)
   else mdia:=Data(pDatFin,0);
   form_impres_apur.RDprint1.Impf(25,01,insere(DM1.Tb_EmpCIDADE.Value,' ',20)+','+mdia,mnormal);
   form_impres_apur.RDprint1.Impf(30,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',54)+DM1.Tb_EmpCONTADOR.Value,mnormal);
   form_impres_apur.RDprint1.Impf(31,01,'                  - Diretor -                        Contador - CRC'+DM1.Tb_EmpCRC_CONTADOR.Value,mnormal);
   end;
result:=true;
end;

end.

