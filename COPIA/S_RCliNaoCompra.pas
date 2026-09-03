unit S_RCliNaoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Buttons, Mask, Gauges, S_SelEmp,
   ExtCtrls, jpeg, S_Ven, S_Impres;

type
  TFrm_RCliNaoCompra = class(TForm)
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Label5: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    CB_SITUACAO: TCheckListBox;
    StaticText11: TStaticText;
    Label26: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    Label1: TLabel;
    cb_separar: TComboBox;
    lbl_codred: TStaticText;
    CODRED: TEdit;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    Label10: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    cb_orcamento: TCheckBox;
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_SITUACAOClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODREDExit(Sender: TObject);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_rCliNaoCompra: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fImprimirCriterito(pQtdCol: Integer): boolean;
  end;



var
    Frm_RCliNaoCompra: TFrm_RCliNaoCompra;

implementation

uses S_DM1, lerarq, Func, S_Cli, DB, S_Red, func_excecoes;

{$R *.dfm}

procedure TFrm_RCliNaoCompra.bbImprimirClick(Sender: TObject);
var
mCampoSep: String;
mCampoOrdem: String;
mGrupoAnt: String;
mtotreg: Integer;
begin

if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text) > strtodate(MDT2.Text) THEN
      begin
      fmensagem('Data Inicial Nao Pode Ser Maior Que Data da Final!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
if cb_separar.ItemIndex=0 then
   begin
   mCampoSep:='CCIDADE || '+chr(39)+' '+chr(39)+'|| CBAIRRO';
   mCampoOrdem:='CCIDADE,CBAIRRO ';
   end
else if cb_separar.ItemIndex=1 then
   begin
   mCampoSep  :='CCIDADE';
   mCampoOrdem:='CCIDADE';
   end
else if cb_separar.ItemIndex=2 then
   begin
   mCampoSep  :='CNOMRAM';
   mCampoOrdem:='CNOMRAM';
   end
else if cb_separar.ItemIndex=3 then
   begin
   mCampoSep  :='CNOMRED';
   mCampoOrdem:='CNOMRED';
   end
else if cb_separar.ItemIndex=5 then
   begin
   mCampoSep  :='CUF';
   mCampoOrdem:='CUF';
   end
else if cb_separar.ItemIndex=6 then
   begin
   mCampoSep  :='CNOMVEN';
   mCampoOrdem:='CNOMVEN';
   end
else if cb_separar.ItemIndex=7 then
   begin
   mCampoSep  :='CNOMV02';
   mCampoOrdem:='CNOMVV02';
   end
else if cb_separar.ItemIndex=8 then
   begin
   mCampoSep  :='CNOMV03';
   mCampoOrdem:='CNOMV03';
   end
else if cb_separar.ItemIndex=9 then
   begin
   mCampoSep  :='CNOMV04';
   mCampoOrdem:='CNOMV04';
   end
else  // SEM GRUPO
   begin
   mCampoSep  :='';
   mCampoOrdem:='';
   end;

dm1.Query1.close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' SELECT CCODCLI,MAX(CRAZAO) AS CRAZAO, MAX(CFONE01) AS CFONE01 '
                  +',SUM(CADP01.P1TOTALL) AS CRVALOR,max(CADP01.P1DATAP) AS CRDTEMIS '
                  +',MAX(CADP01.P1DATAP) AS CRDTBX, MAX(CADP01.P1CHAVE) AS CRNUMERO '
                  +',MAX(NOMGRU) AS NOMGRU '
                  +' FROM (( ');


dm1.Query1.SQL.Add(' select MAX(CRAZAO) AS CRAZAO,MAX(CFONE01) AS CFONE01,CCODCLI, '
                  +' max(P1DATAP) as P1DATAP,  max(P1CHAVE) as P1CHAVE, '
                  +' max(P1DATABX) as P1DATABX,  sum(P1TOTALL) as P1TOTALL '
                  +',MAX(NOMGRU) as NOMGRU '
                  +' FROM  ( ');


dm1.Query1.SQL.Add(' select CRAZAO,CFONE01,CCODCLI, '
                  +'       max(P1DATAP) as P1DATAP, '
                  +' max(P1CHAVE) as P1CHAVE, '
                  +' max(P1DATAP) as P1DATABX, '
                  +' sum(P1TOTALL) as P1TOTALL ');
if trim(mCampoSep)='' then
   DM1.Query1.SQL.Add(','+chr(39)+insere(' ',' ',40)+chr(39)+' as NOMGRU ')
else
   DM1.Query1.SQL.Add(','+mCampoSep+' as NOMGRU ');
DM1.Query1.SQL.Add(' from CADCLI,CADP01 '
                  +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntTostr(codemp)+' and '));
if trim(la_Empresas)<>'' then
   dm1.Query1.SQL.Add(' ('+la_Empresas+' OR P1CODEMP is null ) and ');
dm1.Query1.SQL.Add(' P1TIPO>0 and P1CODCLI(+)=CCODCLI ');

if trim(MDT1.Text)<>'/  /' then
  DM1.query1.SQL.add(' and ('+ fFormatdatetimeParaConsultaSemAnd('P1DATAP',true,StrToDate(MDT1.Text))+' or P1DATAP is null  )' );
if trim(MDT2.Text)<>'/  /' then
  DM1.query1.SQL.add(' and ('+ fFormatdatetimeParaConsultaSemAnd('P1DATAP',false,StrToDate(MDT2.Text))+' or P1DATAP is null  )' );

//dm1.Query1.SQL.Add(' and P1DATAP is null ');


mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   DM1.Query1.sql.Add(' and ( CCODVEN '+mcinst2);
   DM1.Query1.sql.Add(' or CCODV02 '+mcinst2);
   DM1.Query1.sql.Add(' or CCODV03 '+mcinst2);
   DM1.Query1.sql.Add(' or CCODV04 '+mcinst2+')');
   mcinst:=' and ';
   end;

if trim(MDT2.Text)='/  /' then
   MDT2.Text:=FormatDateTime(fdt2, date);

mcinst2:=fItenstCheckListBox(0,CB_SITUACAO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CSITCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   begin
   DM1.Query1.sql.Add(mcinst+' CCODRED '+mcinst2);
   mcinst:=' and ';
   end;


DM1.Query1.SQL.Add(' group by '+iif(mCampoOrdem='','',mCampoOrdem+',')+'CRAZAO,CFONE01,CCODCLI,P1DATAP ');
DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add(' select CRAZAO,CFONE01,CCODCLI,     null as P1DATAP,  null as P1CHAVE,  null as P1DATABX, '
                  +' 0  P1TOTALL ');
if trim(mCampoSep)='' then
   DM1.Query1.SQL.Add(','+chr(39)+insere(' ',' ',40)+chr(39)+' as NOMGRU ')
else
   DM1.Query1.SQL.Add(','+mCampoSep+' as NOMGRU ');

DM1.Query1.SQL.Add(' from cadcli where '+iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntTostr(codemp)+' and '));
DM1.Query1.SQL.Add(' CSTATUS<>-999 ');




mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   DM1.Query1.sql.Add(' and ( CCODVEN '+mcinst2);
   DM1.Query1.sql.Add(' or CCODV02 '+mcinst2);
   DM1.Query1.sql.Add(' or CCODV03 '+mcinst2);
   DM1.Query1.sql.Add(' or CCODV04 '+mcinst2+')');
   mcinst:=' and ';
   end;

if trim(MDT2.Text)='/  /' then
   MDT2.Text:=FormatDateTime(fdt2, date);

mcinst2:=fItenstCheckListBox(0,CB_SITUACAO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CSITCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   begin
   DM1.Query1.sql.Add(mcinst+' CCODRED '+mcinst2);
   mcinst:=' and ';
   end;


DM1.Query1.SQL.Add('  ) GROUP BY CCODCLI ');
dm1.Query1.sql.Add(' HAVING SUM(P1TOTALL)=0 ');
dm1.Query1.sql.Add(' order by '+iif(mCampoOrdem='','',' NOMGRU,')+'crazao');


dm1.Query1.sql.Add(' ) TAB02 '
                  +' ), CADP01 WHERE ');
if trim(la_Empresas)<>'' then
   dm1.Query1.SQL.Add(' ('+la_Empresas+' OR P1CODEMP is null ) and ');
dm1.Query1.sql.Add(' P1CODCLI(+)=CCODCLI and p1tipo(+)>0 '
                 +' and ( CADP01.P1DATAP=(select max(P1DATAP) from CADP01 WHERE ');
if trim(la_Empresas)<>'' then
   dm1.Query1.SQL.Add(' ('+la_Empresas+' OR P1CODEMP is null ) and ');
dm1.Query1.sql.Add(' P1CODCLI(+)=CCODCLI and P1TIPO(+)>0) OR CADP01.P1DATAP IS NULL) ');
dm1.Query1.sql.Add(' GROUP BY CCODCLI ');

dm1.Query1.sql.Add(' order by NOMGRU,CRAZAO ');

if cb_orcamento.Checked = true then
   begin
   DM1.Query1.sql.text := 'SELECT T3.* FROM ( '
                       + dm1.Query1.SQL.Text
                       +' ) T3 '
                       +' WHERE (SELECT COUNT(*) FROM CADP01 DENTRO WHERE P1STATUS<3 '
                       +' AND '
                       +' DENTRO.P1TIPO=0 '
                       +' and DENTRO.P1CODCLI=T3.CCODCLI ';
   if trim(MDT1.Text)<>'/  /' then
      DM1.query1.SQL.add(' and ('+ fFormatdatetimeParaConsultaSemAnd('DENTRO.P1DATAP',true,StrToDate(MDT1.Text))+' or DENTRO.P1DATAP is null  )' );
   if trim(MDT2.Text)<>'/  /' then
      DM1.query1.SQL.add(' and ('+ fFormatdatetimeParaConsultaSemAnd('DENTRO.P1DATAP',false,StrToDate(MDT2.Text))+' or DENTRO.P1DATAP is null  )' );
    la_Empresas:=fEmpresas_Selecionadas('CADP01','DENTRO.P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

    if trim(la_Empresas)<>'' then
       dm1.Query1.SQL.Add(' and ('+la_Empresas+' OR DENTRO.P1CODEMP is null ) ');

    DM1.query1.SQL.add(' AND DENTRO.P1LOTSEQ=0  )>0 ');
   end;



{
DM1.Query1.SQL.Add(' union ');



dm1.Query1.SQL.Add('select  02 as grupo,CRAZAO,CFONE01,CCODCLI, '
                  +'       max(P1DATAP) as CRDTEMIS, '
                  +' max(P1CHAVE) as CRNUMERO, '
                  +' max(P1DATAP) as CRDTBX, '
                  +' sum(P1TOTALL) as CRVALOR ');
if trim(mCampoSep)='' then
   DM1.Query1.SQL.Add(','+chr(39)+insere(' ',' ',40)+chr(39)+' as NOMGRU ')
else
   DM1.Query1.SQL.Add(','+mCampoSep+' as NOMGRU ');
DM1.Query1.SQL.Add(' from CADCLI,CADP01 '
                  +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntTostr(codemp)+' and '));
if trim(la_Empresas)<>'' then
   dm1.Query1.SQL.Add(' ('+la_Empresas+'  ) and ');
dm1.Query1.SQL.Add(' P1CODCLI=CCODCLI ');



dm1.Query1.SQL.Add(' and P1DATAP=(Select max(P1DATAP) from CADP01 where '
                  +'    ((P1CODEMP=1))  and P1STATUS<'+mstatus_excluido+' and P1CODCLI=CCODCLI  '
                  +'     and (P1STATUS<'+mstatus_excluido+') '
                  +'  ) ');

dm1.Query1.SQL.Add(' group by CRAZAO,CFONE01,CCODCLI ');
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   DM1.Query1.sql.Add(' and ( CCODVEN '+mcinst2);
   DM1.Query1.sql.Add(' or CCODV02 '+mcinst2);
   DM1.Query1.sql.Add(' or CCODV03 '+mcinst2);
   DM1.Query1.sql.Add(' or CCODV04 '+mcinst2+')');
   mcinst:=' and ';
   end;


mcinst2:=fItenstCheckListBox(0,CB_SITUACAO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CSITCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   begin
   DM1.Query1.sql.Add(mcinst+' CCODRED '+mcinst2);
   mcinst:=' and ';
   end;
}


//dm1.Query1.sql.Add('order by '+iif(mCampoOrdem='','',mCampoOrdem+',')+'crazao');
//dm1.Query1.sql.Add(') GROUP BY CCODCLI order by CRAZAO ');
try
   dm1.Query1.open;
except on e : exception do
   begin
   ex_erroSql_Novo(DM1.Query1,365,'SGE','CADMOV_PROD_REPETIDO');
   end;
   end;
//  ex_erroSql_Novo(DM1.Query1,365,'SGE','CADMOV_PROD_REPETIDO');

if DM1.Query1.Eof then
   begin
   fmensagem('Nada a ser impresso!',0,['0'],0);
   exit;
   end;

mtotreg:=0;
testeform := TFrm_RCliNaoCompra(FindGlobalComponent('form_impres_rCliNaoCompra'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_rCliNaoCompra);
form_impres_rCliNaoCompra.mlin:=0;
form_impres_rCliNaoCompra.mpag:=0;

form_impres_rCliNaoCompra.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PPTb_min3.First;
mGrupoAnt:=DM1.Query1.FieldbyName('NOMGRU').AsString;
while not dm1.Query1.Eof do
  begin
  mtotreg:=mtotreg+1;
  if form_impres_rCliNaoCompra.mlin = 0 then
     begin
//     form_impres_rCliNaoCompra.mpag:=form_impres_rCliNaoCompra.mpag+1;
     form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.fImprimirCabecalho(136,'Relacao de Cliente Sem Compra No Periodo Informado.');
     form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
     form_impres_rCliNaoCompra.Rdprint1.Impf(form_impres_rCliNaoCompra.mlin,022,centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',136),mneg);
     form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
     form_impres_rCliNaoCompra.Rdprint1.Impf(form_impres_rCliNaoCompra.mlin,001,insere2('-','-',136),mreduz);

//LUIZ

    { if Frm_RCliNaoCompra.lbx_codven.Count>0 then
        FImprimeTitulo('Vendedor',Frm_RCliNaoCompra.lbx_codven,Frm_RCliNaoCompra.OMITIR_ven);

     if Frm_RCliNaoCompra.lbx_codred.Count>0 then
        FImprimeTitulo('Rede de Cliente',Frm_RCliNaoCompra.lbx_codred,Frm_RCliNaoCompra.OMITIR_RED);
 }
     form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
     form_impres_rCliNaoCompra.Rdprint1.Impf(form_impres_rCliNaoCompra.mlin,001,'Codigo   Nome Cliente                                             Num.Titulo     Dt.Ult.Compra     Valor Ult.Compra     Numero Telefone',mreduz);
     form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
     form_impres_rCliNaoCompra.Rdprint1.Impf(form_impres_rCliNaoCompra.mlin,001,insere2('-','-',136),mreduz);
     if cb_separar.ItemIndex<>4 then
        begin
        form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
        form_impres_rCliNaoCompra.Rdprint1.Impf(form_impres_rCliNaoCompra.mlin,001,Centra(DM1.Query1.fieldbyName('NOMGRU').AsString,' ',80),mneg);
        end;
     end;
  form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
  form_impres_rCliNaoCompra.Rdprint1.Impf(form_impres_rCliNaoCompra.mlin,001,insere(FormatFloat('00000000',dm1.Query1.fieldbyname('CCODCLI' ).AsFloat),' ',8)+'  '
                                +insere2(dm1.Query1.fieldbyname('CRAZAO').AsString,' ',50)+'      '
                                +insere(dm1.Query1.fieldbyname('CRNUMERO').AsString,' ',10)+'     '
                                +insere(dm1.Query1.fieldbyname('CRDTEMIS'  ).AsString,' ',10)+'        '
                                +insere(FormatFloat(mcasas,dm1.Query1.fieldbyname('CRVALOR' ).AsFloat),' ',14)+'  '
                                +insere(dm1.Query1.fieldbyname('CFONE01').AsString,' ',20),mreduz);


  DM1.Query1.Next;
  if DM1.Query1.Eof then
     begin
     form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
     form_impres_rCliNaoCompra.Rdprint1.Impf(form_impres_rCliNaoCompra.mlin,001,insere2('--Fim--- Foram Impressos: '+IntTostr(mtotreg)+' Registros. ','-',40)
                                      +insere('Emitido as '+FormatDatetime(fhr, time)+' horas----','-',96),mreduz);

//LUIZ

  if DM1.Query1.Eof then
  begin
  form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
  form_impres_rCliNaoCompra.RDprint1.ImpF(form_impres_rCliNaoCompra.mlin,01,Insere2('-','-',136),mreduz);
  fImprimirCriterito(136);
  if form_impres_rCliNaoCompra.RDprint1.Setup then
    form_impres_rCliNaoCompra.RDprint1.Fechar;
  form_impres_rCliNaoCompra.free;
  form_impres_rCliNaoCompra:=nil;
  end;

//if form_impres_rCliNaoCompra.RDprint1.Setup then form_impres_rCliNaoCompra.RDprint1.Fechar;
//form_impres_rCliNaoCompra.free;
//form_impres_rCliNaoCompra:=nil;

  end
  else if form_impres_rCliNaoCompra.mlin>59 then
     begin
     form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
     form_impres_rCliNaoCompra.Rdprint1.Impf(form_impres_rCliNaoCompra.mlin,001,insere2('--Continua...','-',40)
                                      +insere('Emitido as '+FormatDatetime(fhr, time)+' horas----','-',96),mreduz);

     form_impres_rCliNaoCompra.RDprint1.Novapagina;
     form_impres_rCliNaoCompra.mlin:=0;
     end
  else
     begin
     if DM1.Query1.fieldbyName('NOMGRU').AsString<>mGrupoAnt then
        begin
        mGrupoAnt:=DM1.Query1.fieldbyName('NOMGRU').AsString;
        form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
        form_impres_rCliNaoCompra.Rdprint1.Impf(form_impres_rCliNaoCompra.mlin,001,Centra(DM1.Query1.fieldbyName('NOMGRU').AsString,' ',80),mneg);
        end;
     end;


  end;



end;



procedure TFrm_RCliNaoCompra.bbSairClick(Sender: TObject);
begin
    close;
end;

procedure TFrm_RCliNaoCompra.MDT2Exit(Sender: TObject);
begin
if trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2, StrtoDate(MDT2.Text));
   except
      fmensagem('Data invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_RCliNaoCompra.MDT1Exit(Sender: TObject);
begin
if trim(MDT1.Text) <> '/  /' then
   begin
   try
      MDT1.Text:=FormatDatetime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_RCliNaoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RCliNaoCompra.CODCLIExit(Sender: TObject);
begin
if ValFloat(CODCLI.Text)=0 then
   CODCLI.Text:='';
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      Fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;
end;

procedure TFrm_RCliNaoCompra.CODCLIKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RCliNaoCompra',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RCliNaoCompra.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;


procedure TFrm_RCliNaoCompra.CB_SITUACAOClick(Sender: TObject);
begin
CB_SITUACAO:=Valida_CheckList(CB_SITUACAO);
end;


procedure TFrm_RCliNaoCompra.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDatetime(fdt2, date);

if log_codven>0 then
  begin
  CODVEN.Text:=FloatToStr(log_codven);
  flcadven(1,0,CODVEN.Text);
  if DM1.Tb_Ven.Eof then
    lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                      +' - '+DM1.Tb_VenVNOME.AsString)
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))+' - ');
  CODVEN.Enabled:=False;
  lbx_codven.Enabled:=False;
  OMITIR_VEN.Enabled:=False;
  end;

  
end;

procedure TFrm_RCliNaoCompra.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      begin
      Fmensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_RCliNaoCompra.CODVENKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_RCliNaoCompra',Key);
   if trim(CODVEN.Text)='' then
      CODVENExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_RCliNaoCompra.lbx_codvenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RCliNaoCompra.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codred.ItemIndex:=lbx_codred.Items.Count-1;

      CODRED.text := '';
      CODRED.SetFocus;
      end
   else
      begin
      fmensagem('Rede não Cadastrado!',0,['0'],0);
      CODRED.text := '';
      CODRED.SetFocus;
      end;
   end;


end;

procedure TFrm_RCliNaoCompra.CODREDKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(Self);
   key:=#0;
   end;


end;

function Tfrm_RCliNaoCompra.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin

if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
      form_impres_rCliNaoCompra.RDprint1.ImpF(form_impres_rCliNaoCompra.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',136),mneg);
      end;
   end;
result:=true;

end;
//LUIZ
function TFrm_RCliNaoCompra.fImprimirCriterito(pQtdCol: Integer): boolean;
begin
form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
form_impres_rCliNaoCompra.RDprint1.ImpF(form_impres_rCliNaoCompra.mlin,01,Centra('CRITERITOS DO RELATORIOS',' ',136),mreduz);
form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
form_impres_rCliNaoCompra.RDprint1.ImpF(form_impres_rCliNaoCompra.mlin,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',136),mreduz);
if Frm_RCliNaoCompra.lbx_codven.Count>0 then
   FImprimeTitulo('Vendedor',Frm_RCliNaoCompra.lbx_codven,Frm_RCliNaoCompra.OMITIR_ven);
if Frm_RCliNaoCompra.lbx_codred.Count>0 then
   FImprimeTitulo('Rede de Cliente',Frm_RCliNaoCompra.lbx_codred,Frm_RCliNaoCompra.OMITIR_RED);
if lbx_codloc.Count>0 then
   FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
if lbx_codcli.Count>0 then
   FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);

form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
form_impres_rCliNaoCompra.RDprint1.ImpF(form_impres_rCliNaoCompra.mlin,01,Centra('Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time),' ',136),mreduz);
form_impres_rCliNaoCompra.mlin:=form_impres_rCliNaoCompra.mlin+1;
form_impres_rCliNaoCompra.RDprint1.ImpF(form_impres_rCliNaoCompra.mlin,01,Insere2('-','-',136),mreduz);
result:=true;
end;

procedure TFrm_RCliNaoCompra.lbx_codredKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);


end;


procedure TFrm_RCliNaoCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

procedure TFrm_RCliNaoCompra.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_RCliNaoCompra.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',Trim(CODLOC.Text)) then
      begin
      fmensagem('Cidade não cadastrado!',0,['0'],0);
      CODLOC.SetFocus;
      end
   else
      begin
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure TFrm_RCliNaoCompra.CODLOCKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_MedCli',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(self);
   key:=#0;
   end;


end;

end.
