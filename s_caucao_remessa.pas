unit s_caucao_remessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DB, DBClient, DBTables,
  ExtCtrls, Buttons,s_SelEmp, ToolEdit, CurrEdit, ComCtrls;

type
  TFrm_caucao_remessa = class(TForm)
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBSAIR: TBitBtn;
    Qr_tit_caucao_cab: TQuery;
    Qr_tit_caucao_det: TQuery;
    cds_caucao_det: TClientDataSet;
    src_caucao_det: TDataSource;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    edt_desd: TEdit;
    edt_dup: TEdit;
    ITEM_GRAVAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    bbitem_excluir: TBitBtn;
    edt_nomcli: TEdit;
    edt_parcela: TEdit;
    bbitem_pesq: TBitBtn;
    edt_dtvcto: TMaskEdit;
    edt_numtit: TEdit;
    DBGrid_caucao_det: TDBGrid;
    Qr_tit_caucao_cabTC_CHAVE_ID: TFloatField;
    Qr_tit_caucao_cabTC_ID_LDR_CREDITO: TFloatField;
    Qr_tit_caucao_cabTC_VALOR_CREDITO: TFloatField;
    Qr_tit_caucao_cabTC_ID_LDR_DEBITO: TFloatField;
    Qr_tit_caucao_cabTC_VALOR_DEBITO: TFloatField;
    Qr_tit_caucao_cabTC_OBSERVACOES: TMemoField;
    Qr_tit_caucao_detTCD_CHAVE_ID: TFloatField;
    Qr_tit_caucao_detTCD_CHAVE_ID_CAB: TFloatField;
    Qr_tit_caucao_detTCD_ID_TIT: TFloatField;
    Qr_tit_caucao_detnome_cliente: TStringField;
    Qr_tit_caucao_detparcela: TStringField;
    Qr_tit_caucao_detvalor: TFloatField;
    cds_caucao_detTCD_CHAVE_ID: TFloatField;
    cds_caucao_detTCD_CHAVE_ID_CAB: TFloatField;
    cds_caucao_detTCD_ID_TIT: TFloatField;
    cds_caucao_detnome_cliente: TStringField;
    cds_caucao_detparcela: TStringField;
    cds_caucao_detvalor: TFloatField;
    cds_caucao_detnumero: TFloatField;
    cds_caucao_detdesd: TStringField;
    cds_caucao_detdup: TIntegerField;
    Qr_tit_caucao_detnumero: TFloatField;
    Qr_tit_caucao_detdesd: TStringField;
    Qr_tit_caucao_detdup: TFloatField;
    edt_valor: TEdit;
    Qr_tit_caucao_cabTC_CODBCO_DEBITO: TFloatField;
    Qr_tit_caucao_cabnombco_credito: TStringField;
    Qr_tit_caucao_cabnombco_debito: TStringField;
    Qr_tit_caucao_cabTC_CODBCO_CREDITO: TFloatField;
    Qr_tit_caucao_cabTC_DATA: TDateTimeField;
    cds_caucao_detdt_vcto: TDateTimeField;
    Qr_tit_caucao_detdt_vcto: TDateTimeField;
    Qr_tit_caucao_cabTC_DATHOR_CONF: TDateTimeField;
    bbConfirma: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbl_nome: TLabel;
    Label18: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    NUMLOT: TEdit;
    edt_codcai_credito: TEdit;
    edt_nomcai_credito: TEdit;
    edt_valor_credito: TCurrencyEdit;
    edt_id_ldr_credito: TEdit;
    edt_codcai_debito: TEdit;
    edt_nomcai_debito: TEdit;
    edt_valor_debito: TCurrencyEdit;
    edt_id_ldr_debito: TEdit;
    edt_memo_obs: TMemo;
    MDATA: TDateEdit;
    cb_status: TComboBox;
    GroupBox_cred: TGroupBox;
    Label9: TLabel;
    edt_coddep_cred: TEdit;
    edt_nomdep_cred: TEdit;
    Label10: TLabel;
    edt_codccu_cred: TEdit;
    edt_nomccu_cred: TEdit;
    edt_natdc_cred: TEdit;
    GroupBox_deb: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    edt_coddep_deb: TEdit;
    edt_nomdep_deb: TEdit;
    edt_codccu_deb: TEdit;
    edt_nomccu_deb: TEdit;
    edt_natdc_deb: TEdit;
    sbt_salva_conf: TSpeedButton;
    Label13: TLabel;
    edt_descmv_deb: TEdit;
    Label14: TLabel;
    edt_descmv_cred: TEdit;
    cds_caucao_detTCD_CODCAI_ANTES: TFloatField;
    cds_caucao_detTCD_ID_LDR: TFloatField;
    Qr_tit_caucao_detTCD_ID_LDR: TFloatField;
    Qr_tit_caucao_detTCD_CODCAI_ANTES: TFloatField;
    cds_caucao_detdt_emissao: TDateTimeField;
    edt_dtemis: TDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edt_codcai_creditoExit(Sender: TObject);
    procedure edt_codcai_debitoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure NUMLOTExit(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure edt_codcai_creditoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codcai_debitoKeyPress(Sender: TObject; var Key: Char);
    procedure bbitem_pesqClick(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure bbitem_excluirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edt_numtitExit(Sender: TObject);
    procedure edt_desdExit(Sender: TObject);
    procedure edt_dupExit(Sender: TObject);
    procedure edt_coddep_credKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_coddep_credExit(Sender: TObject);
    procedure edt_codccu_credExit(Sender: TObject);
    procedure edt_codccu_credKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_coddep_debExit(Sender: TObject);
    procedure edt_coddep_debKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codccu_debExit(Sender: TObject);
    procedure edt_codccu_debKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbt_salva_confClick(Sender: TObject);
    procedure bbConfirmaClick(Sender: TObject);
    procedure edt_dtemisExit(Sender: TObject);
  private
    { Private declarations }
    moper: integer;
    mChaveId: integer;
    mIdTitSeleciodo: integer;
    mIdLdrCaddar: integer;
    mCodBcoCaddar: integer;
    mCodBcoLdrAntes: integer;


    function fexcluir(ptipo: Integer): Boolean;


    procedure fGerarOldCaucao(pTipoEve: integer; pIdCaucao: integer);



    function fSituacaoDosTitulos: String;

    function fLerCaddar(pValidar: boolean): boolean;


    procedure fLimparCamposEdit;

    procedure fConfirmarRemessa();

    procedure fSalvarDadosCaixaPadrao;


    procedure fLerDadosCaixaPadrao;


    function fCancelarCaucionamento: boolean;

    function fGerarOldLdr(pIdLdr: integer): Boolean;


    procedure fTotalizar;


    function fTestar: boolean;

  public
    { Public declarations }
     Form_SelEmp : TFrm_SelEmp;

     procedure fLerDados();


  end;

var
  Frm_caucao_remessa: TFrm_caucao_remessa;

implementation

uses Func, lerarq, s_caucao_remessa_localizar, S_DM1,
  s_caucao_remessa_pesquisar, func_excecoes, S_Agde, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_caucao_remessa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;



if (FormState<>[fsModal]) then
   Action := caFree

end;

procedure TFrm_caucao_remessa.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
cds_caucao_det.CreateDataSet;
cds_caucao_det.Open;
fLerDadosCaixaPadrao;
PageControl1.ActivePageIndex:=0;
end;

procedure TFrm_caucao_remessa.edt_codcai_creditoExit(Sender: TObject);
begin
if fsonumero(edt_codcai_credito.Text)=0 then
   begin
   edt_codcai_credito.Clear;
   edt_nomcai_credito.Text:='todos';
   exit;
   end;

if not fLerGenerico_query('CADBCO','BCBANCO,BCSITCAD'
                  ,'BCCODBCO='+fdeixanum(edt_codcai_credito.Text)
                       ,query_consulta) then
   begin
   MessageDlg('Banco/Caixa '+edt_codcai_credito.text+' Não Cadastrado!',mtWarning,[mbOk],0);
   edt_codcai_credito.SetFocus;
   exit;
   end;
edt_nomcai_credito.Text:=query_consulta.Fields[0].AsString;





end;

procedure TFrm_caucao_remessa.edt_codcai_debitoExit(Sender: TObject);
begin
if fsonumero(edt_codcai_debito.Text)=0 then
   begin
   edt_codcai_debito.Clear;
   edt_nomcai_debito.Text:='todos';
   exit;
   end;

if not fLerGenerico_query('CADBCO','BCBANCO,BCSITCAD'
                  ,'BCCODBCO='+fdeixanum(edt_codcai_debito.Text)
                       ,query_consulta) then
   begin
   MessageDlg('Banco/Caixa '+edt_codcai_debito.text+' Não Cadastrado!',mtWarning,[mbOk],0);
   edt_codcai_debito.SetFocus;
   exit;
   end;
edt_nomcai_debito.Text:=query_consulta.Fields[0].AsString;

end;

procedure TFrm_caucao_remessa.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_caucao_remessa.BBINCLUIRClick(Sender: TObject);
begin
BBLIMPAR.Click;
ITEM_CANCELAR.Click;
Panel4.Enabled   :=True;
panel5.Enabled:=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
bbConfirma.Enabled :=false;
MDATA.Date:=pdatasis;

moper:=0;
MDATA.SetFocus;

end;

procedure TFrm_caucao_remessa.BBLOCALIZARClick(Sender: TObject);
begin
mChaveId:=valint(NUMLOT.text);

if moper<>3 then
   begin
    if Frm_caucao_remessa_localizar =nil then
      Application.CreateForm(TFrm_caucao_remessa_localizar, Frm_caucao_remessa_localizar)
   else

      begin
      freeandnil(Frm_caucao_remessa_localizar);
      Application.CreateForm(tFrm_caucao_remessa_localizar, Frm_caucao_remessa_localizar);
      end;

   Frm_caucao_remessa_localizar.ShowModal;
   if Frm_caucao_remessa_localizar.mChaveId>0 then
      begin
      mChaveId:=Frm_caucao_remessa_localizar.mChaveId;
      end;
   freeandnil(Frm_caucao_remessa_localizar);
   end;

BBLIMPAR.Click;
NUMLOT.Text := inttostr(mChaveId);

NUMLOTExit(self);

end;

procedure TFrm_caucao_remessa.fLerDados();
var
mDataPesq: string;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADBCO','BCCODEMP',inttostr(codemp),'BCCODBCO','TC_CODBCO_CREDITO');
mDataPesq := 'TC_DATA';
Qr_tit_caucao_cab.close;
Qr_tit_caucao_cab.SQL.clear;
Qr_tit_caucao_cab.SQL.Add('Select TC_CHAVE_ID'
               +',TC_DATA,TC_DATHOR_CONF'
               +',TC_CODBCO_CREDITO'
               +',bcbanco as nombco_credito'
               +',TC_CODBCO_CREDITO'
               +',TC_ID_LDR_CREDITO'
               +',TC_VALOR_CREDITO'

               +',TC_CODBCO_DEBITO'
               +',TC_ID_LDR_DEBITO'
               +',TC_VALOR_DEBITO'
               +',CASE WHEN TC_CODBCO_DEBITO>0 THEN (select MAX(BCBANCO) FROM CADBCO WHERE BCCODBCO=TC_CODBCO_DEBITO) else '+QuotedStr('')+ ' end  as nombco_debito '


               +',TC_OBSERVACOES'
               +' from CADTIT_CAUCAO_CAB '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where 1=1 '+iif(la_instrucao='','',' and ')+la_instrucao);



 Qr_tit_caucao_cab.SQL.Add(' and TC_CHAVE_ID='+fdeixanum(NUMLOT.text));

try
   Qr_tit_caucao_cab.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Qr_tit_caucao_cab,109,'_stru '+'caucao_remessa_pesquisar'+e.message,'user');
   end;
   end;

if Qr_tit_caucao_cab.isempty then
   begin
   fMensagem('Lote não Encontrado',0,['0'],0);
   exit;
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';


fInnerJoin(0,'CADDAR','CRCODEMP',   inttostr(codemp) ,'CRID_NEW','TCD_ID_TIT');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI','CCODEMP' ,'CRCODEMP','CCODCLI' ,'CRCODCLI');
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_tit_caucao_det.Close;
Qr_tit_caucao_det.SQL.Clear;
Qr_tit_caucao_det.SQL.Add('Select TCD_CHAVE_ID,TCD_CHAVE_ID_CAB,TCD_ID_TIT'
                         +',CRAZAO AS nome_cliente'
                         +', TO_CHAR(CRNUMPARC) || '+quotedstr('/')+' || TO_CHAR(CRQTDPARC) AS parcela '
                         +', CRVALOR as valor'
                         +', CRDTVCTO as dt_vcto'
                         +',CRNUMERO as numero'
                         +',CRDESD as desd'
                         +',CRDUP as dup '
                         +',TCD_CODCAI_ANTES '
                         +',TCD_ID_LDR'
                         +' from CADTIT_CAUCAO_DET '+iif(la_tabelas='','',',')+la_tabelas
                         +'       '+la_Join
                         +'       where 1=1 '+iif(la_instrucao='','',' and ')+la_instrucao);

Qr_tit_caucao_det.SQL.Add(' and TCD_CHAVE_ID_CAB='+fdeixanum(NUMLOT.text));

try
   Qr_tit_caucao_det.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Qr_tit_caucao_det,341,'_stru '+'caucao_remessa_pesquisar'+e.message,'user');
   end;
   end;

NUMLOT.Text             :=Qr_tit_caucao_cabTC_CHAVE_ID.AsString;
MDATA.Date              :=Qr_tit_caucao_cabTC_DATA.Value;
edt_codcai_credito.Text :=Qr_tit_caucao_cabTC_CODBCO_CREDITO.AsString;
edt_nomcai_credito.Text :=Qr_tit_caucao_cabnombco_credito.Value;

edt_valor_credito.Value :=Qr_tit_caucao_cabTC_VALOR_CREDITO.AsFloat;
edt_id_ldr_credito.Text :=Qr_tit_caucao_cabTC_ID_LDR_CREDITO.AsString;

edt_codcai_debito.Text  :=Qr_tit_caucao_cabTC_CODBCO_DEBITO.AsString;
edt_nomcai_debito.Text  :=Qr_tit_caucao_cabnombco_debito.AsString;

edt_valor_debito.Value  :=Qr_tit_caucao_cabTC_VALOR_DEBITO.AsFloat;
edt_id_ldr_debito.Text  :=Qr_tit_caucao_cabTC_ID_LDR_DEBITO.AsString;
edt_memo_obs.Lines.Text :=Qr_tit_caucao_cabTC_OBSERVACOES.AsString;


if Qr_tit_caucao_cabTC_DATHOR_CONF.AsDateTime>pdatanula then
   cb_status.ItemIndex:=1
else
   cb_status.ItemIndex:=0;





cds_caucao_det.EmptyDataSet;
Qr_tit_caucao_det.First;


While not Qr_tit_caucao_det.Eof do
   begin
   cds_caucao_det.append;
   cds_caucao_detTCD_CHAVE_ID.Value        :=Qr_tit_caucao_detTCD_CHAVE_ID.AsFloat;
   cds_caucao_detTCD_CHAVE_ID_CAB.Value    :=Qr_tit_caucao_detTCD_CHAVE_ID_CAB.AsFloat;
   cds_caucao_detTCD_ID_TIT.Value          :=Qr_tit_caucao_detTCD_ID_TIT.AsFloat;
   cds_caucao_detnome_cliente.Value        :=Qr_tit_caucao_detnome_cliente.AsString;
   cds_caucao_detparcela.Value             :=Qr_tit_caucao_detparcela.AsString;
   cds_caucao_detvalor.Value               :=Qr_tit_caucao_detvalor.AsFloat;
   cds_caucao_detdt_vcto.Value             :=Qr_tit_caucao_detdt_vcto.AsDateTime;
   cds_caucao_detnumero.Value              :=Qr_tit_caucao_detnumero.AsFloat;
   cds_caucao_detdesd.Value                :=Qr_tit_caucao_detdesd.AsString;
   cds_caucao_detdup.Value                 :=Qr_tit_caucao_detdup.AsInteger;
   cds_caucao_detTCD_CODCAI_ANTES.Value    :=Qr_tit_caucao_detTCD_CODCAI_ANTES.AsInteger;
   cds_caucao_detTCD_ID_LDR.Value          :=Qr_tit_caucao_detTCD_ID_LDR.AsInteger;


   cds_caucao_det.Post;
   Qr_tit_caucao_det.Next;
   end;

BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=True;
BBEXCLUIR.Enabled  :=True;
BBGRAVAR.Enabled   :=False;
bbConfirma.Enabled :=cb_status.ItemIndex=0;


end;

procedure TFrm_caucao_remessa.BBLIMPARClick(Sender: TObject);
begin

NUMLOT.Clear();
MDATA.Text :='/  /';;
edt_codcai_credito.Clear();
edt_valor_credito.Value :=0;
edt_id_ldr_credito.Clear();
edt_nomcai_credito.Clear();
edt_nomcai_debito.Clear();
edt_codcai_debito.Clear();
edt_valor_debito.Value  :=0;
edt_id_ldr_debito.Clear();
edt_memo_obs.Lines.Clear();

cb_status.ItemIndex:=0;
moper:=0;

cds_caucao_det.EmptyDataSet;

Panel4.Enabled   :=False;
panel5.Enabled:=False;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
bbConfirma.Enabled :=false;

end;

procedure TFrm_caucao_remessa.NUMLOTExit(Sender: TObject);
begin
if (fsonumero(NUMLOT.Text)>0) then
   begin
   mChaveId:=valint(numlot.text);

   BBLIMPARClick(self);
   NUMLOT.Text := inttostr(mChaveId);
   fLerDados();

   end;

end;

procedure TFrm_caucao_remessa.BBALTERARClick(Sender: TObject);
begin
NUMLOTExit(self);
if cb_status.ItemIndex=1 then
   begin
   MessageDlg('Pedido Ja Confirmado!',mtWarning,[mbOk],0);
   exit;
   end;


Panel4.Enabled   :=True;
panel5.Enabled:=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
bbConfirma.Enabled :=false;
ITEM_CANCELAR.Click;
moper:=1;
MDATA.SetFocus;

end;

procedure TFrm_caucao_remessa.BBEXCLUIRClick(Sender: TObject);
begin
NUMLOTExit(self);
if fSonumero(NUMLOT.Text)=0 then
   exit;

if not fTestar() then
   exit;

if fmensagem('Quer realmente excluir este Lote?',0,['1','2'],0)<>mrYes then
   exit;
NUMLOTExit(self);
if fSonumero(NUMLOT.Text)=0 then
   exit;


if fexcluir(0) then
   begin
   BBLIMPAR.Click;
   fmensagem('Lote Excluido!',0,['0'],0);
   end;

end;
function TFrm_caucao_remessa.fTestar: boolean;
var
query_testar: tQuery;
begin
result:=true;
query_testar:=tQuery.create(nil);
query_testar.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_testar.sql.add('SELECT COUNT(*) as qtd FROM CADTIT_CAUCAO_EXT WHERE TCE_CHAVE_ID_REMESSA=0'+fdeixanum(NUMLOT.Text));
try
   query_testar.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_testar,601,'_stru '+'caucao_remessa'+e.message,'user');
   result:=false;
   exit;
   end;
   end;

if query_testar.FieldByName('qtd').AsInteger>0 then
   begin
   MessageDlg('Existe titulos extornados. Não Pode ser Excluido!',mtWarning,[mbOk],0 );
   result:=false;
   end;
query_testar.close;
freeandnil(query_testar);


end;


function TFrm_caucao_remessa.fCancelarCaucionamento: boolean;
var
query_cancela: tQuery;
begin
result:=true;
if valint(edt_id_ldr_credito.Text)>0 then
   fGerarOldLdr(valint(edt_id_ldr_credito.Text));

if valint(edt_id_ldr_debito.Text)> 0 then
   fGerarOldLdr(valint(edt_id_ldr_debito.Text));

query_cancela:=tQuery.create(nil);
query_cancela.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
cds_caucao_det.First;
While not cds_caucao_det.Eof do
   begin

   if cds_caucao_detTCD_ID_TIT.asinteger>0 then
      begin
      query_cancela.Close;
      query_cancela.sql.clear;
      query_cancela.sql.Add('Update CADDAR SET CRLOTE_CAUCAO=0 WHERE CRID_NEW=0'+cds_caucao_detTCD_ID_TIT.AsString);
      try
         query_cancela.ExecSQL;
         fdm1StartCommit;
      except ON E: Exception do
         begin
         ex_erroSql_Novo(query_cancela,601,'_stru '+'caucao_remessa'+e.message,'user');
         result:=false;
         exit;
         end;
         end;
      end;
// INICIO
{
      query_cancela.close;
      query_cancela.sql.clear;
      query_cancela.add('update CADLDR SET CODBCO='+cds_caucao_detTCD_CODCAI_ANTES.AsString+' whre LDR_ID_NEW=' + cds_caucao_detTCD_ID_LDR.AsString);
      try
          query_cancela.ExecSQL;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_cancela,641,'func Erro:'+e.Message ,'CADDAR');
         Query_conf.close;
         freeandnil(Query_conf);
         result:=false;
         exit;
         end;
         end;
      cds_caucao_det.next;
      end;

}


   if cds_caucao_detTCD_ID_LDR.Asinteger >0  then
      begin
      query_cancela.Close;
      query_cancela.sql.clear;
      query_cancela.sql.Add('Update CADLDR SET CODBCO='+cds_caucao_detTCD_CODCAI_ANTES.AsString
                           +', NOMBCO=(select max(BCBANCO) from CADBCO where BCCODBCO='+cds_caucao_detTCD_CODCAI_ANTES.AsString+')'
                           +' WHERE LDR_ID_NEW=0'+cds_caucao_detTCD_ID_LDR.AsString);
      try
         query_cancela.ExecSQL;
         fdm1StartCommit;
      except ON E: Exception do
         begin
         ex_erroSql_Novo(query_cancela,608,'_stru '+'caucao_remessa'+e.message,'cadldr');
         exit;
         end;
         end;
      end;

   cds_caucao_det.next;
   end;



if valint(edt_id_ldr_credito.Text)>0 then
   begin
   query_cancela.Close;
   query_cancela.sql.clear;
   query_cancela.sql.Add('Delete from CADLDR  where LDR_ID_NEW=0'+edt_id_ldr_credito.Text);
   try
      query_cancela.ExecSQL;
      fdm1StartCommit;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_cancela,640,'_stru '+'caucao_remessa'+e.message,'cadldr');
      result:=false;
      exit;
      end;
      end;
   end;
if valint(edt_id_ldr_debito.Text)>0 then
   begin
   query_cancela.Close;
   query_cancela.sql.clear;
   query_cancela.sql.Add('Delete from CADLDR WHERE LDR_ID_NEW=0'+edt_id_ldr_debito.Text);
   try
      query_cancela.ExecSQL;
      fdm1StartCommit;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_cancela,653,'_stru '+'caucao_remessa'+e.message,'cadldr');
      result:=false;
      exit;
      end;
      end;
   end;


query_cancela.close;
freeandnil(query_cancela);


end;

function TFrm_caucao_remessa.fexcluir(ptipo: Integer): Boolean;

var
{ Parametros
0-Atualiza Cadastro e Deleta
1-So Atualiza Cadastro Deixando o Lote Zero
2-So Atualiza Cadastro Deixando o Lote Atual
3-So Deleta

}
form_agde: tFrm_agde;
mTipoUpd: Integer;
mQtdReg: integer;
mQtdLid: integer;
query_excluir: tQuery;

begin
result:=true;
fGerarOldCaucao(2,valint(NUMLOT.text));

if not fCancelarCaucionamento then
   begin
   result:=false;
   exit;
   end;

mQtdLid:=0;
mQtdReg:=Qr_tit_caucao_det.RecordCount;

query_excluir:=tQuery.create(nil);
query_excluir.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_excluir.Close;
query_excluir.SQL.Clear;
query_excluir.SQL.Add('Delete from CADTIT_CAUCAO_DET where TCD_CHAVE_ID_CAB = ' + fdeixanum(NUMLOT.Text));
try
   query_excluir.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_excluir,498,'_stru '+'caucao_remessa'+e.message,'user');
   end;
   end;

query_excluir.Close;
query_excluir.SQL.Clear;
query_excluir.SQL.Add('Delete from CADTIT_CAUCAO_CAB where TC_CHAVE_ID = ' + fdeixanum(NUMLOT.Text));
try
   query_excluir.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_excluir,511,'_stru '+'caucao_remessa'+e.message,'user');
   result:=false;
   end;

   end;

query_excluir.close;
freeandnil(query_excluir);

result:=True;
end;



procedure TFrm_caucao_remessa.fGerarOldCaucao(pTipoEve: integer; pIdCaucao: integer);
var
query_old: tquery;
mChaveIdOld: integer;
begin
mChaveIdOld:=fBuscarProximoId('OLD_CADTIT_CAUCAO_CAB_SEQ');

query_old := tquery.create(nil);
query_old.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_old.SQL.add('Insert into OLD_CADTIT_CAUCAO_CAB '
                 +' (TC_CODNOV, '
                 +'  TC_TIPO_EVE, '
                 +'  TC_CHAVE_ID , '
                 +'  TC_DATA, '
                 +'  TC_CODBCO_CREDITO, '
                 +'  TC_ID_LDR_CREDITO, '
                 +'  TC_VALOR_CREDITO, '
                 +'  TC_CODBCO_DEBITO, '
                 +'  TC_VALOR_DEBITO, '
                 +'  TC_ID_LDR_DEBITO '
                 +', TC_CODUSR_INC '
                 +', TC_DATHOR_INC '
                 +', TC_CODUSR_UEVE '
                 +', TC_DATHOR_UEVE '
                 +' ,TC_OBSERVACOES '
                 +' ) select  '
                 +'  :TC_CODNOV AS TC_CODNOV, '
                 +'  :TC_TIPO_EVE AS TC_TIPO_EVE, '
                 +'  TC_CHAVE_ID, '
                 +'  TC_DATA, '
                 +'  TC_CODBCO_CREDITO, '
                 +'  TC_ID_LDR_CREDITO, '
                 +'  TC_VALOR_CREDITO, '
                 +'  TC_CODBCO_DEBITO, '
                 +'  TC_VALOR_DEBITO, '
                 +'  TC_ID_LDR_DEBITO '
                 +', TC_CODUSR_INC '
                 +', TC_DATHOR_INC '
                 +','+inttostr(codusr)+' as TC_CODUSR_UEVE '
                 +', SYSDATE as TC_DATHOR_UEVE '
                 +', TC_OBSERVACOES '
                 +' from CADTIT_CAUCAO_CAB WHERE TC_CHAVE_ID='+inttostr(pTipoEve));
query_old.ParamByName('TC_CODNOV').AsInteger     := mChaveIdOld;
query_old.ParamByName('TC_TIPO_EVE').AsInteger     := pIdCaucao;
try
   query_old.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_old,563,'_stru '+'caucao_remessa'+e.message,'user');
   end;
   end;
query_old.close;
query_old.SQL.clear;
query_old.SQL.add('Insert into OLD_CADTIT_CAUCAO_DET ( '
                  +' TCD_CODNOV_CAB '
                  +',TCD_CODNOV '
                  +',TCD_CHAVE_ID '
                  +',TCD_CHAVE_ID_CAB '
                  +',TCD_ID_TIT '
                  +') select '
                  +' :TCD_CODNOV_CAB '
                  +',OLD_CADTIT_CAUCAO_DET_SEQ.NEXTVAL AS TCD_CODNOV '
                  +',TCD_CHAVE_ID '
                  +',TCD_CHAVE_ID_CAB '
                  +',TCD_ID_TIT '
                  +' from CADTIT_CAUCAO_DET where TCD_CHAVE_ID_CAB='+inttostr(pIdCaucao));
query_old.ParamByName('TCD_CODNOV_CAB').AsInteger     := mChaveIdOld;
try
   query_old.ExecSQL;
   fdm1StartCommit
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_old,588,'_stru '+'caucao_remessa'+e.message,'user');
   end;
   end;
query_old.close;
freeandNil(query_old);

end;

function tFrm_caucao_remessa.fSituacaoDosTitulos: String;
var
query_tit: tquery;
mRetorno: String;
begin
query_tit:=tquery.create(nil);
query_tit.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
cds_caucao_det.First;
While not cds_caucao_det.Eof do
   begin
   query_tit.sql.clear;
   query_tit.sql.add('select CRLOTE_CAUCAO FROM CADDAR WHERE CRLOTE_CAUCAO<>'+fdeixanum(NUMLOT.Text)
      +' and CRLOTE_CAUCAO>0 and CRID_NEW='+cds_caucao_detTCD_ID_TIT.AsString);
   try
      query_tit.open;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_tit,6219,'func Erro:'+e.Message ,'CADDAR');
      query_tit.close;
      freeandnil(query_tit);
      exit;
      end;
      end;
   if not query_tit.IsEmpty then
      begin
      mRetorno:=mRetorno+cds_caucao_detnumero.AsString+'/'+cds_caucao_detdesd.AsString+' Valor '+FormatFloat(mcasas , cds_caucao_detvalor.AsFloat)+' cliente '+cds_caucao_detnome_cliente.AsString+mQuebraLinha;
      end;
   cds_caucao_det.Next;
   end;
query_tit.close;
freeandnil(query_tit);
if trim(mRetorno)<>'' then
   begin
   mRetorno:='Titulos ja Importados em outros Lotes '+mQuebraLinha+mRetorno;
   end;
result:=mRetorno;

end;
procedure TFrm_caucao_remessa.BBGRAVARClick(Sender: TObject);
var
mcod,x: Integer;
query_gravar: TQuery;
mMensagem: String;
mChaveCaucao: integer;
begin
mMensagem:='';
if cds_caucao_det.IsEmpty then
   mMensagem:=mMensagem+'Pelo Menos 1 titulo tem que ser selecionado!'+mQuebraLinha;

if MDATA.Date<=pdatanula then
   mMensagem:=mMensagem+'Data Campo Obrigatório!'+mQuebraLinha;


if fsonumero(edt_codcai_credito.Text)<=0 then
   mMensagem:=mMensagem+'Código do Caixa Para Credito é obrigatorio!'+mQuebraLinha;

if fsonumero(edt_codcai_debito.Text)<=0 then
   mMensagem:=mMensagem+'Código do Caixa Para Debito é obrigatorio!'+mQuebraLinha;
mMensagem:=mMensagem+fSituacaoDosTitulos;


if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   PageControl1.ActivePageIndex:=0;
   MDATA.SetFocus;
   exit;
   end;

Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Label1.Caption:='Gravando Titulos Caução! Aguarde...';
Frm_Agde.Show;
query_gravar :=TQuery.create(nil);
query_gravar.DatabaseName :=DM1.SG_ASSOC.DatabaseName;

if moper=0 then
   begin
   mChaveCaucao := fBuscarSequencia('CADTIT_CAUCAO_CAB_SEQ');
   NUMLOT.text  := inttostr(mChaveCaucao);
   end;


query_gravar.sql.add('update CADDAR SET CRLOTE_CAUCAO=0 WHERE CRLOTE_CAUCAO='+fdeixanum(NUMLOT.text));

try
   query_gravar.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(query_gravar,680,'func Erro:'+e.Message ,'CADDAR');
   query_gravar.close;
   freeandnil(query_gravar);
   exit;
   end;
   end;
cds_caucao_det.First;
while not cds_caucao_det.Eof do
   begin
   query_gravar.close;
   query_gravar.sql.clear;
   query_gravar.sql.add('update CADDAR SET CRLOTE_CAUCAO='+fdeixanum(NUMLOT.text)+' WHERE CRID_NEW='+cds_caucao_detTCD_ID_TIT.AsString);
   try
      query_gravar.ExecSQL;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_gravar,680,'func Erro:'+e.Message ,'CADDAR');
      query_gravar.close;
      freeandnil(query_gravar);
      exit;
      end;
      end;
   cds_caucao_det.next;
   end;





query_gravar.close;
query_gravar.sql.clear;


if moper=0 then
   begin
   query_gravar.sql.add('Insert into CADTIT_CAUCAO_CAB '
                 +' (TC_CHAVE_ID  '
                 +', TC_DATA '
                 +', TC_CODBCO_CREDITO '
                 +', TC_ID_LDR_CREDITO '
                 +', TC_VALOR_CREDITO '
                 +', TC_CODBCO_DEBITO '
                 +', TC_VALOR_DEBITO '
                 +', TC_ID_LDR_DEBITO '
                 +', TC_CODUSR_INC '
                 +', TC_DATHOR_INC '
                 +', TC_CODUSR_UEVE '
                 +', TC_DATHOR_UEVE '
                 +', TC_OBSERVACOES '
                 +' ) values ( '
                 +'  :TC_CHAVE_ID '
                 +', :TC_DATA '
                 +', :TC_CODBCO_CREDITO '
                 +', :TC_ID_LDR_CREDITO '
                 +', :TC_VALOR_CREDITO '
                 +', :TC_CODBCO_DEBITO '
                 +', :TC_VALOR_DEBITO '
                 +', :TC_ID_LDR_DEBITO '
                 +', :TC_CODUSR_INC '
                 +', SYSDATE '
                 +', :TC_CODUSR_UEVE '
                 +', SYSDATE '
                 +', :TC_OBSERVACOES )');
   query_gravar.ParamByName('TC_CODUSR_INC').AsFloat      := codusr;
   end
else
   begin
   mChaveCaucao := ValInt(NUMLOT.text);
   query_gravar.sql.add('Update CADTIT_CAUCAO_CAB '
                 +' SET  TC_DATA =:TC_DATA '
                 +', TC_CODBCO_CREDITO = :TC_CODBCO_CREDITO '
                 +', TC_ID_LDR_CREDITO = :TC_ID_LDR_CREDITO '
                 +', TC_VALOR_CREDITO = :TC_VALOR_CREDITO  '
                 +', TC_CODBCO_DEBITO = :TC_CODBCO_DEBITO '
                 +', TC_VALOR_DEBITO = :TC_VALOR_DEBITO '
                 +', TC_ID_LDR_DEBITO = :TC_ID_LDR_DEBITO '
                 +', TC_CODUSR_UEVE  = :TC_CODUSR_UEVE'
                 +', TC_DATHOR_UEVE  = SYSDATE '
                 +', TC_OBSERVACOES  = :TC_OBSERVACOES'
                 +'  WHERE TC_CHAVE_ID = :TC_CHAVE_ID ');
   end;
query_gravar.ParamByName('TC_CHAVE_ID').AsInteger     := mChaveCaucao;
query_gravar.ParamByName('TC_DATA').AsDateTime        := MDATA.Date;
query_gravar.ParamByName('TC_CODBCO_CREDITO').AsFloat := fsonumero(edt_codcai_credito.text);
query_gravar.ParamByName('TC_ID_LDR_CREDITO').AsFloat := fsonumero(edt_id_ldr_credito.text);
query_gravar.ParamByName('TC_VALOR_CREDITO').AsFloat  := edt_valor_credito.Value;
query_gravar.ParamByName('TC_CODBCO_DEBITO').AsFloat  := fsonumero(edt_codcai_debito.text);
query_gravar.ParamByName('TC_ID_LDR_DEBITO').AsFloat  := fsonumero(edt_id_ldr_debito.text);
query_gravar.ParamByName('TC_VALOR_DEBITO').AsFloat   := edt_valor_debito.Value;
query_gravar.ParamByName('TC_CODUSR_UEVE').AsFloat    := codusr;
query_gravar.ParamByName('TC_OBSERVACOES').AsString   := edt_memo_obs.Lines.Text;

try
   query_gravar.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_gravar,780,'func Erro:'+e.Message ,'CADDAR');
   query_gravar.close;
   freeandnil(query_gravar);
   exit;
   end;
   end;


query_gravar.Close;
query_gravar.SQL.Clear;
query_gravar.SQL.Add('delete from CADTIT_CAUCAO_DET WHERE TCD_CHAVE_ID_CAB='+inttostr(mChaveCaucao));
try
   query_gravar.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_gravar,799,'func Erro:'+e.Message ,'CADTIT_CAUCAO_DET');
   query_gravar.close;
   freeandnil(query_gravar);
   exit;
   end;
   end;
cds_caucao_det.First;
While not cds_caucao_det.Eof do
   begin
   query_gravar.close;
   query_gravar.SQL.clear;
   query_gravar.SQL.add('Insert into CADTIT_CAUCAO_DET ( '
                  +' TCD_CHAVE_ID '
                  +',TCD_CHAVE_ID_CAB '
                  +',TCD_ID_TIT '
                  +',TCD_CODCAI_ANTES '
                  +',TCD_ID_LDR'

                  +') values ('
                  +' :TCD_CHAVE_ID '
                  +',:TCD_CHAVE_ID_CAB '
                  +',:TCD_ID_TIT '
                  +',:TCD_CODCAI_ANTES '
                  +',:TCD_ID_LDR'

                  +' ) ');

   query_gravar.ParamByName('TCD_CHAVE_ID').AsInteger:=
   iif(cds_caucao_detTCD_CHAVE_ID.AsInteger>0,cds_caucao_detTCD_CHAVE_ID.AsInteger,fBuscarSequencia('CADTIT_CAUCAO_DET_SEQ'));

   query_gravar.ParamByName('TCD_CHAVE_ID_CAB').AsInteger  :=mChaveCaucao;
   query_gravar.ParamByName('TCD_ID_TIT').AsInteger        :=cds_caucao_detTCD_ID_TIT.AsInteger;

   query_gravar.ParamByName('TCD_CODCAI_ANTES').AsInteger  :=cds_caucao_detTCD_CODCAI_ANTES.AsInteger;
   query_gravar.ParamByName('TCD_ID_LDR').AsInteger        :=cds_caucao_detTCD_ID_LDR.AsInteger;


   try
      query_gravar.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_gravar,828,'func Erro:'+e.Message ,'CADTIT_CAUCAO_DET');
      query_gravar.close;
      freeandnil(query_gravar);
      exit;
      end;
      end;
   cds_caucao_det.Next;
   end;

query_gravar.close;
freeandnil(query_gravar);


cds_caucao_det.First;

moper:=3;
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBLOCALIZAR.Click;
Frm_Agde.Free;

end;

procedure TFrm_caucao_remessa.BBSAIRClick(Sender: TObject);
begin
close;

end;

procedure TFrm_caucao_remessa.edt_codcai_creditoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codcai_credito.Text:=fChamaBco(0,'_venda',key);
   edt_codcai_creditoExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_caucao_remessa.edt_codcai_debitoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codcai_debito.Text:=fChamaBco(0,'_venda',key);
   edt_codcai_debitoExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_caucao_remessa.bbitem_pesqClick(Sender: TObject);
begin
Application.CreateForm(Tfrm_caucao_remessa_pesquisar, frm_caucao_remessa_pesquisar);
frm_caucao_remessa_pesquisar.ShowModal;
if frm_caucao_remessa_pesquisar.mSelecionar then
   begin
   frm_caucao_remessa_pesquisar.Qr_Dup.First;
   While not frm_caucao_remessa_pesquisar.Qr_Dup.Eof do
      begin
      if frm_caucao_remessa_pesquisar.Qr_DupOK.AsString='X' then
         begin
         if not cds_caucao_det.Locate('TCD_ID_TIT',frm_caucao_remessa_pesquisar.Qr_DupCRID_NEW.AsString,[]) then
            begin
            cds_caucao_det.Append;
            cds_caucao_detTCD_CHAVE_ID.AsInteger     :=0;
            cds_caucao_detTCD_CHAVE_ID_CAB.AsInteger :=ValInt(NUMLOT.Text);
            cds_caucao_detTCD_ID_TIT.AsInteger       :=frm_caucao_remessa_pesquisar.Qr_DupCRID_NEW.AsInteger;
            cds_caucao_detTCD_CODCAI_ANTES.AsInteger :=frm_caucao_remessa_pesquisar.Qr_DupCODBCO_LDR.AsInteger;
            cds_caucao_detnome_cliente.AsString      :=frm_caucao_remessa_pesquisar.Qr_Dupcrazao.AsString;
            cds_caucao_detparcela.AsString           :=frm_caucao_remessa_pesquisar.Qr_Dupparcela.AsString;
            cds_caucao_detvalor.AsFloat              :=frm_caucao_remessa_pesquisar.Qr_DupCRVALOR.AsFloat;
            cds_caucao_detdt_vcto.AsDateTime         :=frm_caucao_remessa_pesquisar.Qr_DupCRDTVCTO.AsDateTime;
            cds_caucao_detnumero.AsFloat             :=frm_caucao_remessa_pesquisar.Qr_DupCRNUMERO.AsFloat;
            cds_caucao_detdesd.AsString              :=frm_caucao_remessa_pesquisar.Qr_DupCRDESD.AsString;
            cds_caucao_detdup.AsFloat                :=frm_caucao_remessa_pesquisar.Qr_DupCRDUP.AsFloat;
            cds_caucao_detTCD_ID_LDR.AsInteger       :=frm_caucao_remessa_pesquisar.Qr_DupCRID_LDR_NEW.AsInteger;

            cds_caucao_det.post;
            end;
         end;
      frm_caucao_remessa_pesquisar.Qr_Dup.next;
      end
   end;
fTotalizar;

FreeAndNil(frm_caucao_remessa_pesquisar);
end;


function TFrm_caucao_remessa.fLerCaddar(pValidar: boolean): boolean;
var
query_caddar: tQuery;
begin
result:=true;
mIdTitSeleciodo :=0;

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCLI','CCODEMP' ,'CRCODEMP','CCODCLI' ,'CRCODCLI');
la_instrucao:=la_instrucao+' and ';

fInnerJoin(0,'CADLDR','CODEMP' ,'CRCODEMP','LDR_ID_NEW' ,'CRID_LDR_NEW');

query_caddar := tQuery.create(nil);
query_caddar.DatabaseName := DM1.SG_ASSOC.DatabaseName;
query_caddar.SQL.add('Select CRNUMERO,CRDESD,CRDUP,CRDTVCTO,CRID_NEW,CRVALOR,CRDTEMIS,CRCODCLI, '
                    +'  CRLOTE_CAUCAO,CRCODEMP,CRID_LDR_NEW ,CRSTATUS'
                    +', TO_CHAR(CRNUMPARC) || '+quotedstr('/')+' || TO_CHAR(CRQTDPARC) AS parcela,CRCODBCO '
                    +' FROM CADDAR WHERE 1=1 '+iif(la_Empresas='','',' and '+la_Empresas )
                    +' AND (CRLOTE_CAUCAO=0 OR CRLOTE_CAUCAO=0'+fdeixanum(NUMLOT.Text)+')'
                    );

if fsonumero(edt_numtit.Text)>0 then
   query_caddar.SQL.add(' and CRNUMERO='+fdeixanum(edt_numtit.text));

if edt_dtemis.Date>pdatanula then
   query_caddar.SQL.Add(' and TO_DATE(CRDTEMIS)='+quotedstr(edt_dtemis.text));



if length(trim(edt_desd.Text))>0 then
   query_caddar.SQL.add(' and CRDESD='+QuotedStr(edt_desd.Text));

if length(trim(edt_dup.Text))>0 then
   query_caddar.SQL.add(' and CRDUP='+QuotedStr(edt_dup.Text));
query_caddar.sql.add(' and rownum < 2');
query_caddar.sql.Text:='select T1.*,CRAZAO from ('
                      + query_caddar.SQL.text
                      +' ) T1 '+iif(la_tabelas='','',',')+la_tabelas
             +'       '+la_Join
             +'       where 1=1 '
             +'      '+        iif(la_instrucao='','',' and ')+la_instrucao;

try
   query_caddar.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_caddar,969,'func Erro:'+e.Message ,'CADDAR');
   query_caddar.close;
   freeandnil(query_caddar);
   exit;
   end;
   end;

if not query_caddar.IsEmpty then
   begin
   if (pValidar) and (query_caddar.fieldbyname('CRSTATUS').AsInteger>0)  then
       begin
       MessageDlg('Titulo ja baixado!',mtWarning,[mbOk],0);
       query_caddar.close;
       freeandNil(query_caddar);
       result:=false;
       exit;
       end;
   edt_numtit.Text :=query_caddar.fieldbyname('CRNUMERO').AsString;
   edt_desd.Text   :=query_caddar.fieldbyname('CRDESD').AsString;
   edt_dup.Text    :=query_caddar.fieldbyname('CRDUP').AsString;
   edt_dtemis.Text :=query_caddar.fieldbyname('CRDTEMIS').AsString;
   edt_dtvcto.Text :=FormatDateTime(fdt2, query_caddar.fieldbyname('CRDTVCTO').AsDateTime);
   edt_valor.Text  :=FormatFloat(mcasas, query_caddar.fieldbyname('CRVALOR').AsFloat);
   edt_nomcli.Text :=query_caddar.fieldbyname('CRAZAO').AsString;
   edt_parcela.Text:=query_caddar.fieldbyname('parcela').AsString;
   mIdLdrCaddar    :=query_caddar.fieldbyname('CRID_LDR_NEW').AsInteger;
   mCodBcoCaddar   :=query_caddar.fieldbyname('CRCODBCO').AsInteger;
   mIdTitSeleciodo :=query_caddar.fieldbyname('CRID_NEW').AsInteger;
   mCodBcoLdrAntes :=query_caddar.fieldbyname('CRID_LDR_NEW').AsInteger;
//   mCodBcoLdrAntes :=query_caddar.fieldbyname('CODLDR').AsInteger;

   end
else if (pvalidar) then 
   begin
   MessageDlg('Titulo não Encontrado!',mtWarning,[mbOk],0);
   result:=false;
   end;

query_caddar.close;
freeandNil(query_caddar);



end;

procedure TFrm_caucao_remessa.ITEM_GRAVARClick(Sender: TObject);
var
mMensagem: String;
begin
if mIdTitSeleciodo<=0 then
   begin
   MessageDlg('Favor Selecionar um titulo valido!',mtWarning,[mbOk],0);
   edt_numtit.SetFocus;
   exit;
   end;

if not fLerCaddar(true) then
   begin
   edt_numtit.SetFocus;
   exit;
   end;
if cds_caucao_det.Locate('TCD_ID_TIT',mIdTitSeleciodo,[]) then
   cds_caucao_det.Edit
else
   begin
   cds_caucao_det.Append;
   cds_caucao_detTCD_CHAVE_ID.AsInteger   :=0;
   cds_caucao_detTCD_CHAVE_ID_CAB.AsFloat :=fsonumero(NUMLOT.Text);
   end;
cds_caucao_detTCD_ID_TIT.Value       :=mIdTitSeleciodo;

cds_caucao_detnome_cliente.Value     :=edt_nomcli.Text;
cds_caucao_detTCD_ID_LDR.Value       :=mIdLdrCaddar;
cds_caucao_detdesd.Value             :=edt_desd.Text;
cds_caucao_detparcela.Value          :=edt_parcela.Text;
cds_caucao_detvalor.Value            :=valfloat(edt_valor.text);
cds_caucao_detnumero.Value           :=fsonumero(edt_numtit.text);
cds_caucao_detdup.Value              :=valint(edt_dup.text);
cds_caucao_detdt_vcto.Value          :=StrToDate(edt_dtvcto.text);
cds_caucao_detdt_emissao.Value       :=StrToDate(edt_dtemis.text);
cds_caucao_detTCD_CODCAI_ANTES.Value := mCodBcoLdrAntes;

cds_caucao_det.Post;

fLimparCamposEdit;
edt_numtit.SetFocus;
fTotalizar;


end;

procedure TFrm_caucao_remessa.fLimparCamposEdit;
begin
mIdTitSeleciodo:=0;
edt_dtemis.Clear;
edt_nomcli.Clear;
edt_desd.Clear;
edt_parcela.Clear;
edt_valor.Clear;
edt_numtit.Clear;
edt_dup.Clear;
edt_dtvcto.clear;

end;
procedure TFrm_caucao_remessa.ITEM_CANCELARClick(Sender: TObject);
begin
fLimparCamposEdit;
end;

procedure TFrm_caucao_remessa.bbitem_excluirClick(Sender: TObject);
begin
if (cds_caucao_detTCD_ID_TIT.AsInteger=0) then
   exit;
if fmensagem('Quer realmente excluir o Titulo ' + cds_caucao_detnumero.AsString+'/'+cds_caucao_detdesd.AsString+' Valor '+Formatfloat(mcasas, cds_caucao_detvalor.AsFloat)+'?',0,['1','2'],0)<>mrYes then
   exit;

cds_caucao_det.Delete;
fTotalizar;
end;

procedure TFrm_caucao_remessa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If (BBGRAVAR.Enabled) and (cds_caucao_det.RecordCount>0) then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2'],2) of
      mrYes: begin
             BBGRAVAR.Click;
             exit;
             end;
      mrNo: begin
            BBLIMPAR.Click;
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end;

end;

procedure TFrm_caucao_remessa.edt_numtitExit(Sender: TObject);
begin
edt_numtit.Text:=fdeixanum(edt_numtit.Text);
if fsonumero(edt_numtit.Text)>0 then
   fLerCaddar(false);
end;

procedure TFrm_caucao_remessa.edt_desdExit(Sender: TObject);
begin
if trim(edt_desd.Text)<>'' then
   fLerCaddar(false);
end;

procedure TFrm_caucao_remessa.edt_dupExit(Sender: TObject);
begin
edt_dup.Text:=fdeixanum(edt_dup.text);
if length(trim(edt_dup.text))>0 then
   fLerCaddar(false);
end;

procedure TFrm_caucao_remessa.fConfirmarRemessa();
var
mChaveIdLdr: tChaveIdLdr;
query_conf: tQuery;

begin
//debito

mChaveIdLdr:=fCriarLDR(codemp
   ,edt_valor_debito.Value // Valor Real
   ,edt_valor_debito.Value // Valor previsto
   ,fsonumero(edt_codcai_debito.Text)        // Codigo Cliente - banco
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
   ,edt_nomcai_debito.Text // data real ,pldr_nombco
   ,edt_nomdep_deb.Text // mnomdep
   ,edt_nomccu_deb.Text // mnomccu
   ,edt_nomcai_debito.Text
   ,'Debito referente a Caução de Titulos do Lote '+NUMLOT.Text
   ,3
   ,valint(edt_codcai_debito.text)
   ,lotmov
   ,0 // status
   ,10); // origem

edt_id_ldr_debito.Text:=floatToStr(mChaveIdLdr.idNew);


//debito final


mChaveIdLdr:=fCriarLDR(codemp
   ,edt_valor_credito.Value // Valor Real
   ,edt_valor_credito.Value // Valor previsto
   ,fsonumero(edt_codcai_credito.Text)        // Codigo Cliente - banco
   ,0
   ,Date // data prevista
   ,Date // data real
   ,Date // data Referencia
   ,pdatanula // data de alteracao
   ,edt_codccu_cred.Text // codigo ccu
   ,edt_coddep_cred.Text // codigo dep credito
   ,edt_natdc_cred.text // natureza ded cred
   ,edt_descmv_cred.Text // descricao do movimento para credito
   ,'Mov_'+fSubstituirtexto(FormatDateTime(fdt2, date),'/','_')
   ,' '
   ,'BC'
   ,edt_nomcai_credito.Text // data real ,pldr_nombco
   ,edt_nomdep_cred.Text // mnomdep
   ,edt_nomccu_cred.Text // mnomccu
   ,edt_nomcai_credito.Text
   ,'Credito referente a Caução de Titulos do Lote '+NUMLOT.Text
   ,3
   ,valint(edt_codcai_credito.text)
   ,lotmov
   ,0 // status
   ,10); // origem

edt_id_ldr_credito.Text:=floatToStr(mChaveIdLdr.idNew);




cb_status.itemindex:=1;
query_conf:=tQuery.create(nil);
query_conf.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_conf.SQL.Add('Update CADTIT_CAUCAO_cab SET TC_DATHOR_CONF=sysdate '
                   +', TC_ID_LDR_DEBITO='+edt_id_ldr_debito.Text
                   +', TC_ID_LDR_CREDITO='+edt_id_ldr_credito.Text
                   +' where TC_CHAVE_ID='+fdeixanum(NUMLOT.Text));
try
   query_conf.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(Qr_tit_caucao_cab,1219,'_stru '+'caucao_remessa_pesquisar'+e.message,'user');
   end;
   end;
cds_caucao_det.First;
While not cds_caucao_det.eof do
   begin
   query_conf.close;
   Query_conf.sql.clear;
   Query_conf.sql.add('update CADLDR SET CODBCO='+edt_codcai_debito.Text
                     +', NOMBCO=(select max(BCBANCO) from CADBCO where BCCODBCO='+edt_codcai_debito.Text+')'
                     +' where LDR_ID_NEW=' + cds_caucao_detTCD_ID_LDR.AsString);
   try
      Query_conf.ExecSQL;
   except on e : exception do
      begin
      ex_erroSql_Novo(Query_conf,680,'func Erro:'+e.Message ,'CADDAR');
      Query_conf.close;
      freeandnil(Query_conf);
      exit;
      end;
      end;
   cds_caucao_det.next;
   end;


query_conf.Close;
FreeAndNil(query_conf);



end;
procedure TFrm_caucao_remessa.edt_coddep_credKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 114 then
   begin
   edt_coddep_cred.Text:=fChamaDeptoCX(1,'Frm_caucao_remessa.','');
   edt_coddep_credExit(Self);
   end;

end;

procedure TFrm_caucao_remessa.edt_coddep_credExit(Sender: TObject);
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

procedure TFrm_caucao_remessa.edt_codccu_credExit(Sender: TObject);
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

procedure TFrm_caucao_remessa.edt_codccu_credKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 114 then
   begin
   edt_codccu_cred.Text:=fChamaCCU(1,'Frm_caucao_remessa.','');
   edt_codccu_credExit(Self);
   end;

end;

procedure TFrm_caucao_remessa.edt_coddep_debExit(Sender: TObject);
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

procedure TFrm_caucao_remessa.edt_coddep_debKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 114 then
   begin
   edt_coddep_deb.Text:=fChamaDeptoCX(1,'Frm_caucao_remessa.','');
   edt_coddep_debExit(Self);
   end;

end;

procedure TFrm_caucao_remessa.edt_codccu_debExit(Sender: TObject);
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

procedure TFrm_caucao_remessa.edt_codccu_debKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 114 then
   begin
   edt_codccu_deb.Text:=fChamaCCU(1,'Frm_caucao_remessa.','');
   edt_codccu_debExit(Self);
   end;

end;

procedure TFrm_caucao_remessa.fSalvarDadosCaixaPadrao;
begin

fDeletaPadroes(0,'_CAUCAO_REMESSA','');
fGravaPadroes(0,'EDT_CODDEP_CRED'     ,'TEXT' ,'_CAUCAO_REMESSA',edt_coddep_cred.Text);
fGravaPadroes(0,'EDT_CODCCU_CRED'     ,'TEXT' ,'_CAUCAO_REMESSA',edt_codccu_cred.Text);
fGravaPadroes(0,'EDT_CODDEP_DEB'      ,'TEXT' ,'_CAUCAO_REMESSA',edt_coddep_deb.Text);
fGravaPadroes(0,'EDT_CODCCU_DEB'      ,'TEXT' ,'_CAUCAO_REMESSA',edt_codccu_deb.Text);
fGravaPadroes(0,'EDT_DESCMV_DEB'      ,'TEXT' ,'_CAUCAO_REMESSA',edt_descmv_deb.Text);
fGravaPadroes(0,'EDT_DESCMV_CRED'     ,'TEXT' ,'_CAUCAO_REMESSA',edt_descmv_cred.Text);


end;

procedure TFrm_caucao_remessa.fLerDadosCaixaPadrao;
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

   edt_coddep_debExit(Self);
   edt_codccu_credExit(Self);

   end;

end;


procedure TFrm_caucao_remessa.sbt_salva_confClick(Sender: TObject);
begin
fSalvarDadosCaixaPadrao;
MessageDlg('Configurações Gravadas!',mtInformation,[mbOk],0);
end;

procedure TFrm_caucao_remessa.bbConfirmaClick(Sender: TObject);
var
mMensagem: String;
begin
mMensagem:='';
if edt_valor_credito.Value<=0 then
   mMensagem:=mMensagem+'Valor do credito tem que ser maior que zero'+mQuebraLinha;

if fsonumero(edt_codcai_credito.Text)<=0 then
   mMensagem:=mMensagem+'Código do Caixa Para Credito é obrigatorio!'+mQuebraLinha;

if fsonumero(edt_codcai_debito.Text)<=0 then
   mMensagem:=mMensagem+'Código do Caixa Para Débito é obrigatorio!'+mQuebraLinha;


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

bbConfirma.Enabled:=false;
fConfirmarRemessa();
end;


function TFrm_caucao_remessa.fGerarOldLdr(pIdLdr: integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
query_old: tQuery;
mCodLdr_ldr: Integer;
mCodemp_Ldr: Integer;
begin

query_old :=tQuery.create(nil);
query_old.DatabaseName := DM1.SG_ASSOC.DatabaseName;
query_old.sql.add('select CODLDR,CODEMP from CADLDR where LDR_ID_NEW=0'+Inttostr(pIdLdr));
try
   query_old.Open;
   mCodLdr_ldr:=query_old.fieldbyName('CODLDR').AsInteger;
   mCodemp_ldr:=query_old.fieldbyName('CODEMP').AsInteger;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_old,1562,'_stru '+'caucao_remessa_pesquisar'+e.message,'user');
   query_old.Close;
   freeandnil(query_old);
   result:=false;
   exit;
   end;
   end;


query_old.close;
query_old.sql.clear;
query_old.SQL.add('Select max(CODNOV) from OLD_CADLDR');
try
    query_old.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_old,1562,'_stru '+'caucao_remessa_pesquisar'+e.message,'user');
   query_old.Close;
   freeandnil(query_old);
   result:=false;
   exit;
   end;
   end;
mcod:=query_old.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADLDR (';
v:='';
for x:=0 to DM1.Tb_Ldr.FieldCount-1 do
   begin
   if DM1.Tb_Ldr.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ldr.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CODNOV';
minstru:=minstru+',CODUSR_ALTEXC';
minstru:=minstru+',DATHOR_ALTEXC';
minstru:=minstru+',TIPEVE';

minstru:=minstru+') Select ';



v:='';
for x:=0 to DM1.Tb_Ldr.FieldCount-1 do
   begin
   if DM1.Tb_Ldr.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Ldr.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CODNOV ';
minstru:=minstru+v+InttoStr(codusr)+' as CODUSR_ALTEXC';
minstru:=minstru+v+' SYSDATE as DATHOR_ALTEXC';
minstru:=minstru+v+'1 as TIPEVE ';
minstru:=minstru+' from CADLDR where CODEMP=0'+IntToStr(mCodemp_Ldr)
                +' and CODLDR=0'+FloatToStr(mCodLdr_ldr);
query_old.Close;
query_old.SQL.Clear;
query_old.SQL.add(minstru);
Try
   query_old.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_old,1631,'_stru '+'caucao_remessa_pesquisar'+e.message,'user');
   query_old.Close;
   freeandnil(query_old);
   result:=false;
   exit;
   end;
   end;
query_old.Close;
freeandnil(query_old);
result:=True;


end;

procedure TFrm_caucao_remessa.fTotalizar;
var
mTotalDebto: Real;
begin

mTotalDebto :=0;
cds_caucao_det.First;
While not cds_caucao_det.eof do
  begin
  mTotalDebto:=mTotalDebto + cds_caucao_detvalor.AsFloat;
  cds_caucao_det.Next;
  end;
if edt_valor_credito.Value=edt_valor_debito.Value then
   edt_valor_credito.Value := mTotalDebto;
edt_valor_debito.Value := mTotalDebto;

end;


procedure TFrm_caucao_remessa.edt_dtemisExit(Sender: TObject);
begin
if edt_dtemis.Date>pdatanula then
   fLerCaddar(false);

end;

end.
