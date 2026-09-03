unit s_caucao_extorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, DBClient,dbtables,
  Buttons, ComCtrls;

type
  TFrm_Caucao_Extorno = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cds_caucao_extorno: TClientDataSet;
    cds_caucao_extornonumero: TFloatField;
    cds_caucao_extornodesd: TStringField;
    cds_caucao_extornodup: TIntegerField;
    cds_caucao_extornoTCD_ID_TIT: TFloatField;
    cds_caucao_extornonome_cliente: TStringField;
    cds_caucao_extornoparcela: TStringField;
    cds_caucao_extornovalor: TFloatField;
    cds_caucao_extornodt_vcto: TDateTimeField;
    src_caucao_extorno: TDataSource;
    cds_caucao_extornovalor_deb: TFloatField;
    cds_caucao_extornoconta_debito: TStringField;
    cds_caucao_extornovalor_cred: TFloatField;
    cds_caucao_extornoconta_credito: TStringField;
    cds_caucao_extornoTCE_CHAVE_ID_REMESSA: TFloatField;
    cds_caucao_extornoTCE_CODCAI_DEBITO: TFloatField;
    cds_caucao_extornoTCE_ID_LDR_DEBITO: TFloatField;
    cds_caucao_extornoTCE_VALOR_DEBITO: TFloatField;
    cds_caucao_extornoTCE_CODCAI_CREDITO: TFloatField;
    cds_caucao_extornoTCE_ID_LDR_CREDITO: TFloatField;
    cds_caucao_extornoTCE_VALOR_CREDITO: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid_extorno: TDBGrid;
    Panel2: TPanel;
    StaticText1: TStaticText;
    edt_numero: TEdit;
    StaticText2: TStaticText;
    edt_desd: TEdit;
    StaticText3: TStaticText;
    edt_dup: TEdit;
    StaticText4: TStaticText;
    edt_id_titulo: TEdit;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    edt_dt_vcto: TEdit;
    StaticText8: TStaticText;
    edt_parcela: TEdit;
    StaticText9: TStaticText;
    edt_valor_debito: TEdit;
    StaticText10: TStaticText;
    edt_conta_debito: TEdit;
    StaticText11: TStaticText;
    edt_valor_cred_prev: TEdit;
    StaticText12: TStaticText;
    edt_conta_cred_prev: TEdit;
    StaticText5: TStaticText;
    edt_nome_cli: TEdit;
    edt_valor: TEdit;
    GroupBox_deb: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edt_coddep_deb: TEdit;
    edt_nomdep_deb: TEdit;
    edt_codccu_deb: TEdit;
    edt_nomccu_deb: TEdit;
    edt_natdc_deb: TEdit;
    edt_descmv_deb: TEdit;
    GroupBox_cred: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    edt_coddep_cred: TEdit;
    edt_nomdep_cred: TEdit;
    edt_codccu_cred: TEdit;
    edt_nomccu_cred: TEdit;
    edt_natdc_cred: TEdit;
    edt_descmv_cred: TEdit;
    sbt_salva_conf: TSpeedButton;
    SAIR: TBitBtn;
    sbn_extornar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edt_numeroExit(Sender: TObject);
    procedure edt_coddep_debExit(Sender: TObject);
    procedure edt_coddep_debKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codccu_debKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codccu_debExit(Sender: TObject);
    procedure edt_coddep_credExit(Sender: TObject);
    procedure edt_coddep_credKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codccu_credKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codccu_credExit(Sender: TObject);
    procedure sbt_salva_confClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure edt_desdExit(Sender: TObject);
    procedure edt_dupExit(Sender: TObject);
    procedure sbn_extornarClick(Sender: TObject);
  private
    { Private declarations }

    mCHAVE_ID_REMESSA: integer;
    mCODCAI_DEBITO: integer;
    mNomeCaixa_DEBITO: String;
    mID_LDR_DEBITO: real;

    mCODCAI_CREDITO: integer;
    mCODCAI_CREDITO_EXTORNO: integer;

    mNomeCaixa_CREDITO: String;
    mID_LDR_CREDITO: integer;

    procedure fLimparCampos;
    function flerExtorno(pValidar: boolean): boolean;

    procedure fExtornar();



    procedure fSalvarDadosCaixaPadrao;


    procedure fLerDadosCaixaPadrao;



    procedure fNomeDoCaixa;


    function fLerCaixa(pCodcai: integer): string;

  public
    { Public declarations }
  end;

var
  Frm_Caucao_Extorno: TFrm_Caucao_Extorno;

implementation

uses Func, S_DM1, lerarq, func_excecoes, Func2, S_DM4;

{$R *.dfm}

procedure TFrm_Caucao_Extorno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
cds_caucao_extorno.close;
freeandnil(cds_caucao_extorno);
if (FormState<>[fsModal]) then
   Action := caFree
end;


function TFrm_Caucao_Extorno.fLerCaixa(pCodcai: integer): string;
var
query_caixa: tQuery;
begin
query_caixa := tQuery.create(nil);
query_caixa.DatabaseName := DM1.SG_ASSOC.DatabaseName;
query_caixa.close;
query_caixa.sql.clear;
query_caixa.SQL.add('select max(BCBANCO) as BCBANCO from CADBCO WHERE BCCODBCO='+IntToStr(pCodCai));
try
   query_caixa.Open;
   if query_caixa.IsEmpty then
      result:=''
   else
      result:=query_caixa.fields[0].asstring;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_caixa,189,'_stru '+'caucao_remessa_extorno'+e.message,'user');
   end;
   end;
query_caixa.Close;
freeandnil(query_caixa);
end;



procedure TFrm_Caucao_Extorno.fLimparCampos;
begin

edt_numero.clear;
edt_desd.clear;
edt_dup.clear;
edt_id_titulo.clear;
edt_nome_cli.clear;
edt_valor.clear;
edt_dt_vcto.clear;
edt_parcela.clear;
edt_valor.clear;




end;

procedure TFrm_Caucao_Extorno.FormCreate(Sender: TObject);
begin
fLimparCampos;
fLerDadosCaixaPadrao;
PageControl1.ActivePageIndex:=0;
cds_caucao_extorno.CreateDataSet;


end;





procedure TFrm_Caucao_Extorno.fNomeDoCaixa;
var
query_Caixa: tQuery;

begin
query_Caixa:=tQuery.Create(nil);
query_Caixa.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
mNomeCaixa_DEBITO:=fLerCaixa(mCODCAI_DEBITO);
mNomeCaixa_CREDITO:=fLerCaixa(mCODCAI_CREDITO);

query_Caixa.close;
freeandnil(query_caixa);
end;


function TFrm_Caucao_Extorno.flerExtorno(pValidar: boolean): boolean;
var
query_extorno: tQuery;
mCondicao: String;
mMensagem: String;
begin
//fLimparCampos;
result:=true;
mCondicao:='';

if fsonumero(edt_numero.text)>0 then
   mCondicao:=mCondicao+' and CRNUMERO='+fdeixanum(edt_numero.Text);
if trim(edt_desd.Text)<>'' then
   mCondicao:=mCondicao+' and CRDESD='+quotedstr(edt_desd.Text);
if trim(edt_dup.Text)<>'' then
   mCondicao:=mCondicao+' and CRDUP=0'+fdeixanum(edt_dup.Text);

if trim(mCondicao)='' then
   exit;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';


fInnerJoin(0,'CADDAR','CRCODEMP',   inttostr(codemp) ,'CRID_NEW','TCD_ID_TIT');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI','CCODEMP' ,'CRCODEMP','CCODCLI' ,'CRCODCLI');


query_extorno:=tQuery.create(nil);
query_extorno.DatabaseName := DM1.SG_ASSOC.databasename;
query_extorno.sql.Clear;
query_extorno.sql.Add('Select TCD_CHAVE_ID, TCD_CHAVE_ID_CAB, TCD_ID_TIT, TCD_CODCAI_ANTES,TCD_ID_LDR '
                     +',TC_CODBCO_CREDITO '
                     +',TC_CODBCO_DEBITO '
                     +',CRNUMERO,CRDESD,CRDUP,CRVALOR,CRDTVCTO,CRSTATUS '
                     +', TO_CHAR(CRNUMPARC) || '+quotedstr('/')+' || TO_CHAR(CRQTDPARC) AS parcela '
                     +', TC_CODBCO_CREDITO, '
                     +'  CASE WHEN TC_CODBCO_CREDITO>0 THEN (SELECT max(BCBANCO) FROM CADBCO WHERE BCCODBCO=TC_CODBCO_CREDITO) '
                     +' else '+QuotedStr('')+' end as nombco_credito  '
                     +', TC_CODBCO_DEBITO, '
                     +'  CASE WHEN TC_CODBCO_DEBITO>0 THEN (SELECT max(BCBANCO) FROM CADBCO WHERE BCCODBCO=TC_CODBCO_DEBITO) '
                     +' else '+QuotedStr('')+' end as nombco_debito  '

                     +',CRAZAO '
                     +',TC_DATHOR_CONF '
                     +',(select count(*) from CADTIT_CAUCAO_EXT WHERE TCE_CHAVE_ID_REMESSA=TC_CHAVE_ID AND TCE_ID_TIT=TCD_ID_TIT) AS QTD_EXT '
                     +', CASE WHEN TC_VALOR_CREDITO<>TC_VALOR_DEBITO AND TC_VALOR_CREDITO>0 AND TC_VALOR_DEBITO>0 THEN '
                     +'  ((TC_VALOR_DEBITO-TC_VALOR_CREDITO)*100) / TC_VALOR_DEBITO ELSE 0 END AS PERC_ADM '

                     +' from CADTIT_CAUCAO_DET '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +', CADTIT_CAUCAO_CAB '
                     +'       where 1=1 '+iif(la_instrucao='','',' and ')+la_instrucao
                     +' and TCD_CHAVE_ID_CAB = TC_CHAVE_ID '


                     +mCondicao);


try
   query_extorno.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_extorno,168,'_stru '+'caucao_remessa_extorno'+e.message,'user');
   query_extorno.close;
   FreeAndNil(query_extorno);
   end;
   end;
mMensagem:='';
if not query_extorno.IsEmpty then
   begin
   if pValidar then
      begin
      if query_extorno.fieldByName('QTD_EXT').AsInteger>0 then
         mMensagem:=mMensagem+'Este Registro ja foi Extornado!'+mQuebraLinha;
      if query_extorno.fieldByName('CRSTATUS').AsInteger>0 then
         mMensagem:=mMensagem+'Este Titulo ja foi Baixado!'+mQuebraLinha;
      if query_extorno.fieldByName('TC_DATHOR_CONF').AsDateTime<=pdatanula then
         mMensagem:=mMensagem+'Remessa ainda não confirmada!'+mQuebraLinha;



      if trim(mMensagem)<>'' then 
         begin
         MessageDlg(mMensagem,mtWarning,[mbOk],0);
         query_extorno.close;
         freeandnil(query_extorno);
         result:=false;
         exit;
         end;
      end;

//    mCODCAI_DEBITO: integer;
//    mID_LDR_DEBITO: integer;


   mCHAVE_ID_REMESSA     := query_extorno.fieldbyname('TCD_CHAVE_ID_CAB').AsInteger;
   mCODCAI_CREDITO       := query_extorno.fieldbyname('TCD_CODCAI_ANTES').asinteger;
   mCODCAI_DEBITO        := query_extorno.fieldbyname('TC_CODBCO_CREDITO').asinteger;

   mCODCAI_CREDITO_EXTORNO       := query_extorno.fieldbyname('TC_CODBCO_DEBITO').asinteger;



   edt_numero.Text       := query_extorno.fieldbyname('CRNUMERO').AsString;
   edt_desd.Text         := query_extorno.fieldbyname('CRDESD').AsString;
   edt_dup.Text          := query_extorno.fieldbyname('CRDUP').AsString;
   edt_id_titulo.Text    := query_extorno.fieldbyname('TCD_ID_TIT').AsString;
   edt_nome_cli.Text     := query_extorno.fieldbyname('CRAZAO').AsString;
   edt_valor.Text        := FormatFloat(mcasas, query_extorno.fieldbyname('CRVALOR').AsFloat);
   edt_dt_vcto.Text      := FormatDateTime(fdt2, query_extorno.fieldbyname('CRDTVCTO').AsDateTime);
   edt_parcela.Text      := query_extorno.fieldbyname('parcela').AsString;

   mID_LDR_CREDITO       := query_extorno.fieldbyname('TCD_ID_LDR').Asinteger;
   edt_valor_debito.Text := FormatFloat(mcasas, query_extorno.fieldbyname('CRVALOR').AsFloat);

   if query_extorno.fieldbyname('PERC_ADM').AsFloat<>0 then
      begin
      edt_valor_cred_prev.Text := FormatFloat(mcasas,
        arredonda(
        query_extorno.fieldbyname('CRVALOR').AsFloat -
         ( (query_extorno.fieldbyname('CRVALOR').AsFloat * query_extorno.fieldbyname('PERC_ADM').AsFloat) / 100)
         ,2)
      );
      end
   else
      edt_valor_cred_prev.Text := FormatFloat(mcasas, query_extorno.fieldbyname('CRVALOR').AsFloat);

   edt_conta_debito.Text := query_extorno.fieldbyname('TC_CODBCO_DEBITO').AsString+'/'+
                            query_extorno.fieldbyname('nombco_debito').AsString;

   edt_conta_cred_prev.Text := query_extorno.fieldbyname('TC_CODBCO_CREDITO').AsString+'/'+
                            query_extorno.fieldbyname('nombco_credito').AsString;

   sbn_extornar.Enabled:=true;

   end
else
   begin
   sbn_extornar.Enabled:=false;
   if pValidar then
      begin
      MessageDlg('Titulo não encontrado!',mtWarning,[mbOk],0);
      result:=false;
     end
   end;

query_extorno.close;
freeandnil(query_extorno);


end;
procedure TFrm_Caucao_Extorno.fExtornar();


var
query_inc: tQuery;
mChaveIdLdr: tChaveIdLdr;


mChaveIdLdr_novo: tChaveIdLdr;
    procedure fCriarLdrCreditoSaldoDescontado;
    var
    mNomeCaixaExtorno: string;
    begin

    query_inc.close;
    query_inc.sql.clear;
    query_inc.sql.add('Select * from CADLDR where LDR_ID_NEW='+inttostr(mID_LDR_CREDITO));
    try
       query_inc.Open;
       fdm1StartCommit;
    except ON E: Exception do
       begin
       ex_erroSql_Novo(query_inc,385,'_stru '+'caucao_remessa_extorno'+e.message,'user');
       query_inc.close;
       FreeAndNil(query_inc);
       end;
       end;
     mNomeCaixaExtorno:=fLerCaixa(mCODCAI_CREDITO_EXTORNO);
     
//   mCODCAI_CREDITO_EXTORNO       := query_extorno.fieldbyname('TC_CODBCO_DEBITO').asinteger;


     mChaveIdLdr_novo:=fCriarLDR(codemp
       ,query_inc.fieldByName('VALORP').AsFloat // Valor Real
       ,query_inc.fieldByName('VALORP').AsFloat // Valor previsto
       ,mCODCAI_CREDITO_EXTORNO
       ,0
       ,Date // data prevista
       ,Date // data real
       ,Date // data Referencia
       ,pdatanula // data de alteracao
       ,query_inc.fieldByName('CODCC').AsString // codigo ccu
       ,query_inc.fieldByName('CODDEP').AsString // codigo dep credito
       ,query_inc.fieldByName('NATDC').AsString // natureza ded cred
       ,query_inc.fieldByName('DESCMV').AsString  // descricao do movimento para credito
       ,query_inc.fieldByName('NUMDOC').AsString
       ,query_inc.fieldByName('NUMDOC2').AsString
       ,query_inc.fieldByName('TIPO').AsString
       ,mNomeCaixaExtorno // data real ,pldr_nombco
       ,query_inc.fieldByName('NOMDEP').AsString
       ,query_inc.fieldByName('NOMCCU').AsString // mnomccu
       ,mNomeCaixaExtorno
       ,query_inc.fieldByName('FC_OBSFIN').AsString
       ,query_inc.fieldByName('LOCDEP').AsInteger
       ,mCODCAI_CREDITO_EXTORNO
       ,query_inc.fieldByName('LOTMOV').AsInteger
       ,query_inc.fieldByName('STATUS').AsInteger // status
       ,query_inc.fieldByName('ORIGEM').AsInteger); // origem

     
    end;

{

function fCriarLDR(pcodemp: Integer;pvalorr,pvalorp,pcodigo,pVinculo :Real; pdatap, pdatareal, pdataref, pdataalt: TDateTime;
                   pcodcc,pcoddep,pnatdc,pdescmv,pnumdoc,pnumdoc2,ptipo,
                   pnombco,pnomdep,pnomccu,pnome,pobsDar : String;
                   pLocdep,pcodbco,plotmov,pStatus,pOrigem: Integer): tChaveIdLdr;

}
begin

fNomeDoCaixa;


mChaveIdLdr:=fCriarLDR(codemp
   ,valfloat(edt_valor_debito.Text) // Valor Real
   ,valfloat(edt_valor_debito.text) // Valor previsto
   ,mCODCAI_DEBITO
   ,0
   ,Date // data prevista
   ,Date // data real
   ,Date // data Referencia
   ,pdatanula // data de alteracao
   ,edt_codccu_deb.Text // codigo ccu
   ,edt_coddep_deb.Text // codigo dep credito
   ,edt_natdc_deb.text // natureza ded cred
   ,edt_descmv_deb.Text // descricao do movimento para credito
   ,'Mov_'+fSubstituirtexto(FormatDateTime(fdt2, date),'/','_')
   ,' '
   ,'BC'
   ,mNomeCaixa_DEBITO // data real ,pldr_nombco
   ,edt_nomdep_deb.Text // mnomdep
   ,edt_nomccu_deb.Text // mnomccu
   ,mNomeCaixa_DEBITO
   ,'Debito referente a Extorno de Titulos '+ edt_numero.text+'/'+edt_desd.Text+' valor '+edt_valor.text
   ,3
   ,mCODCAI_DEBITO
   ,lotmov
   ,0 // status
   ,10); // origem

mID_LDR_DEBITO := mChaveIdLdr.idNew;



query_inc:=tQuery.create(nil);
query_inc.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
fCriarLdrCreditoSaldoDescontado;

query_inc.close;
query_inc.sql.clear;


query_inc.SQL.add('insert into CADTIT_CAUCAO_EXT ('
                 +'TCE_CHAVE_ID, '
                 +'TCE_CHAVE_ID_REMESSA, '
                 +'TCE_CODCAI_DEBITO, '
                 +'TCE_ID_LDR_DEBITO, '
                 +'TCE_VALOR_DEBITO, '
                 +'TCE_CODCAI_CREDITO, '
                 +'TCE_ID_LDR_CREDITO, '
                 +'TCE_VALOR_CREDITO,'
                 +'TCE_DATHOR_INC, '
                 +'TCE_CODUSR_INC, '
                 +'TCE_ID_TIT, '
                 +'TCE_ID_LDR_EXTORNO '

                 +') values ('
                 +'CADTIT_CAUCAO_EXT_SEQ.NEXTVAL , '
                 +':TCE_CHAVE_ID_REMESSA, '
                 +':TCE_CODCAI_DEBITO, '
                 +':TCE_ID_LDR_DEBITO, '
                 +':TCE_VALOR_DEBITO, '
                 +':TCE_CODCAI_CREDITO, '
                 +':TCE_ID_LDR_CREDITO, '
                 +':TCE_VALOR_CREDITO,'

                 +'SYSDATE, '
                 +':TCE_CODUSR_INC, '
                 +':TCE_ID_TIT, '
                 +':TCE_ID_LDR_EXTORNO '

                 +' )');
query_inc.ParamByName('TCE_CHAVE_ID_REMESSA').AsFloat := mCHAVE_ID_REMESSA;
query_inc.ParamByName('TCE_CODCAI_DEBITO').AsFloat    := mCODCAI_DEBITO;
query_inc.ParamByName('TCE_ID_LDR_DEBITO').AsFloat    := mID_LDR_DEBITO;
query_inc.ParamByName('TCE_VALOR_DEBITO').AsFloat     := ValFloat(edt_valor_debito.Text);
query_inc.ParamByName('TCE_CODCAI_CREDITO').AsFloat   := mCODCAI_CREDITO;
query_inc.ParamByName('TCE_ID_LDR_CREDITO').AsFloat   := mID_LDR_CREDITO;
query_inc.ParamByName('TCE_VALOR_CREDITO').AsFloat    := ValFloat(edt_valor_cred_prev.Text);
query_inc.ParamByName('TCE_CODUSR_INC').AsInteger     := codusr;
query_inc.ParamByName('TCE_ID_TIT').AsInteger         := valint(edt_id_titulo.Text);
query_inc.ParamByName('TCE_ID_LDR_EXTORNO').AsFloat   := mChaveIdLdr_novo.idNew;


try
   query_inc.execsql;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_inc,287,'_stru '+'caucao_remessa_extorno'+e.message,'user');
   query_inc.close;
   FreeAndNil(query_inc);
   end;
   end;

query_inc.close;
query_inc.sql.clear;
query_inc.sql.add('Update CADLDR SET NOMBCO='+QuotedStr(mNomeCaixa_CREDITO) +', CODBCO='+inttostr(mCODCAI_CREDITO)+' where LDR_ID_NEW='+inttostr(mID_LDR_CREDITO));
try
   query_inc.execsql;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_inc,464,'_stru '+'cadbco'+e.message,'user');
   end;
   end;

cds_caucao_extorno.Append;
cds_caucao_extornonumero.value       := fsonumero(edt_numero.Text);
cds_caucao_extornodesd.value         := edt_desd.Text;
cds_caucao_extornodup.value          := valint(edt_dup.Text);
cds_caucao_extornoTCD_ID_TIT.value   := fsonumero(edt_id_titulo.Text);
cds_caucao_extornonome_cliente.Value := edt_nome_cli.Text;
cds_caucao_extornovalor.value        := valfloat(edt_valor.Text);
try
   cds_caucao_extornodt_vcto.value      := StrToDate(edt_dt_vcto.Text);
Except
   end;
cds_caucao_extornoparcela.Value         := edt_parcela.Text;
cds_caucao_extornovalor_deb.Value       := valfloat(edt_valor_debito.Text);
cds_caucao_extornoconta_debito.Value           := edt_conta_debito.Text;
cds_caucao_extornovalor_cred.Value             := valfloat(edt_valor_cred_prev.Text);
cds_caucao_extornoconta_credito.Value          := edt_conta_cred_prev.Text;
cds_caucao_extorno.post;


query_inc.Close;
freeandnil(query_inc);
fLimparCampos;

end;

procedure TFrm_Caucao_Extorno.edt_numeroExit(Sender: TObject);
begin
edt_numero.text := fdeixanum(edt_numero.text);
{f fsonumero(edt_numero.Text)=0  then
   edt_numero.SetFocus;
   }
flerExtorno(false);
end;

procedure TFrm_Caucao_Extorno.edt_coddep_debExit(Sender: TObject);
begin
if trim(edt_coddep_deb.Text)='' then
   edt_nomdep_deb.clear
else
   begin
   mDadosRetornoCaixa := fTestarCADDEP_CX(false,edt_coddep_deb.Text);
   if mDadosRetornoCaixa.pOk=false then
      begin
      edt_coddep_deb.SetFocus;
      end
   else
      begin
      edt_nomdep_deb.Text:=mDadosRetornoCaixa.pNome;
      end;
   end;

end;

procedure TFrm_Caucao_Extorno.edt_coddep_debKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 114 then
   begin
   edt_coddep_deb.Text:=fChamaDeptoCX(1,'Frm_caucao_remessa.','');
   edt_coddep_debExit(Self);
   end;

end;

procedure TFrm_Caucao_Extorno.edt_codccu_debKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 114 then
   begin
   edt_codccu_deb.Text:=fChamaCCU(1,'Frm_caucao_remessa.','');
   edt_codccu_debExit(Self);
   end;

end;

procedure TFrm_Caucao_Extorno.edt_codccu_debExit(Sender: TObject);
begin

if trim(edt_codccu_deb.Text)='' then
   edt_nomccu_deb.Clear
else
   begin
   mDadosRetornoCaixa:=fTestarCADCC(false,edt_codccu_deb.Text);
   if mDadosRetornoCaixa.pOk=false then
      begin
      edt_codccu_deb.SetFocus;
      end
   else
      begin
      edt_natdc_deb.Text       :=mDadosRetornoCaixa.pNatDC;
      edt_nomccu_deb.Text :=mDadosRetornoCaixa.pNome;
      end;
   end;


end;

procedure TFrm_Caucao_Extorno.edt_coddep_credExit(Sender: TObject);
begin
if trim(edt_coddep_cred.Text)='' then
   edt_nomdep_cred.clear
else
   begin
   mDadosRetornoCaixa := fTestarCADDEP_CX(false,edt_coddep_cred.Text);
   if mDadosRetornoCaixa.pOk=false then
      begin
      edt_coddep_cred.SetFocus;
      end
   else
      begin
      edt_nomdep_cred.Text:=mDadosRetornoCaixa.pNome;
      end;
   end;


end;

procedure TFrm_Caucao_Extorno.edt_coddep_credKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 114 then
   begin
   edt_coddep_cred.Text:=fChamaDeptoCX(1,'Frm_caucao_remessa.','');
   edt_coddep_credExit(Self);
   end;

end;

procedure TFrm_Caucao_Extorno.edt_codccu_credKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 114 then
   begin
   edt_codccu_cred.Text:=fChamaCCU(1,'Frm_caucao_remessa.','');
   edt_codccu_credExit(Self);
   end;


end;

procedure TFrm_Caucao_Extorno.edt_codccu_credExit(Sender: TObject);
begin

if trim(edt_codccu_cred.Text)='' then
   edt_nomccu_cred.Clear
else
   begin
   mDadosRetornoCaixa:=fTestarCADCC(false,edt_codccu_cred.Text);
   if mDadosRetornoCaixa.pOk=false then
      begin
      edt_codccu_cred.SetFocus;
      end
   else
      begin
      edt_natdc_cred.Text       :=mDadosRetornoCaixa.pNatDC;
      edt_nomccu_cred.Text :=mDadosRetornoCaixa.pNome;
      end;
   end;


end;

procedure TFrm_Caucao_Extorno.sbt_salva_confClick(Sender: TObject);
begin
fSalvarDadosCaixaPadrao;
MessageDlg('Configurações Gravadas!',mtInformation,[mbOk],0);

end;


procedure TFrm_Caucao_Extorno.fSalvarDadosCaixaPadrao;
begin

fDeletaPadroes(0,'_CAUCAO_REMESSA','');
fGravaPadroes(0,'EDT_CODDEP_CRED'     ,'TEXT' ,'_CAUCAO_REMESSA',edt_coddep_cred.Text);
fGravaPadroes(0,'EDT_CODCCU_CRED'     ,'TEXT' ,'_CAUCAO_REMESSA',edt_codccu_cred.Text);
fGravaPadroes(0,'EDT_CODDEP_DEB'      ,'TEXT' ,'_CAUCAO_REMESSA',edt_coddep_deb.Text);
fGravaPadroes(0,'EDT_CODCCU_DEB'      ,'TEXT' ,'_CAUCAO_REMESSA',edt_codccu_deb.Text);
fGravaPadroes(0,'EDT_DESCMV_DEB'      ,'TEXT' ,'_CAUCAO_REMESSA',edt_descmv_deb.Text);
fGravaPadroes(0,'EDT_DESCMV_CRED'     ,'TEXT' ,'_CAUCAO_REMESSA',edt_descmv_cred.Text);


end;

procedure TFrm_Caucao_Extorno.fLerDadosCaixaPadrao;
begin

if flfilpad(0,'_CAUCAO_REMESSA','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_CODDEP_CRED',[]) then
      edt_coddep_cred.Text  := DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_CODCCU_CRED',[]) then
      edt_codccu_cred.Text  := DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_CODDEP_DEB',[]) then
      edt_coddep_deb.Text  := DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_CODCCU_DEB',[]) then
      edt_codccu_deb.Text  := DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_DESCMV_DEB',[]) then
      edt_descmv_deb.Text  := DM4.Tb_FilPad2FPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_DESCMV_CRED',[]) then
      edt_descmv_cred.Text := DM4.Tb_FilPad2FPVALOR.Value;

   edt_coddep_credExit(Self);
   edt_codccu_debExit(Self);
   end;

end;


procedure TFrm_Caucao_Extorno.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Caucao_Extorno.edt_desdExit(Sender: TObject);
begin
flerExtorno(false);
end;

procedure TFrm_Caucao_Extorno.edt_dupExit(Sender: TObject);
begin
flerExtorno(false);
end;

procedure TFrm_Caucao_Extorno.sbn_extornarClick(Sender: TObject);
var
mMensagem: String;
begin
if trim(edt_codccu_cred.text)='' then
   mMensagem:=mMensagem+'Código do Centro de Custo Para Credito é obrigatorio!'+mQuebraLinha;

if trim(edt_codccu_deb.text)='' then
   mMensagem:=mMensagem+'Código do Centro de Custo Para Débito é obrigatorio!'+mQuebraLinha;

if trim(edt_coddep_cred.text)='' then
   mMensagem:=mMensagem+'Código do Departamento Para Crédito é obrigatorio!'+mQuebraLinha;


if trim(edt_coddep_deb.text)='' then
   mMensagem:=mMensagem+'Código do Departamento Para Débito é obrigatorio!'+mQuebraLinha;

if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   exit;
   end;
if not flerExtorno(true) then
   exit;
if Application.MessageBox(pchar('Quer realmente exluir o titulo '+edt_numero.Text+'/'+edt_desd.Text+' valor '+edt_valor.text+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
if not flerExtorno(true) then
   exit;

fExtornar();

end;

end.
