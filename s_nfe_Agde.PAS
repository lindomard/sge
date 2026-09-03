unit s_nfe_Agde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Gauges, jpeg, SqlExpr,
  ComCtrls, ImgList, DB, xmldom, XMLIntf, msxmldom, XMLDoc, Func2,dbtables;

type
  TFrm_nfe_Agde = class(TForm)
    Timer_mudacor: TTimer;
    Panel1: TPanel;
    bbCancelar: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    lbl_cliente: TLabel;
    lbl_cidade_uf: TLabel;
    Animate1: TAnimate;
    lbl_funcao: TLabel;
    Timer3_concluir: TTimer;
    ImageList1: TImageList;
    GroupBox1: TGroupBox;
    ListView1: TListView;
    TimerAnimacao: TTimer;
    TreeView1: TTreeView;
    procedure Timer_mudacorTimer(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ListView1CustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure ListView1CustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure TimerAnimacaoTimer(Sender: TObject);
    procedure Timer3_concluirTimer(Sender: TObject);
  private
    { Private declarations }
    Query_xml: TSQLQuery;
    mPosicaoView: Integer;

    procedure adicionaItemListView(sValue: String);

  public
    { Public declarations }

    ArqLocal: String;
    mSaidaAutorizada: Boolean;
    mErroProcessamento: Boolean;
    mNfe_cnpj: string;
    mnfe_dathor_envio: tDatetime;
    mnfe_servidor01: Integer;
    mnfe_servidor02: Integer;
    mnfe_servidor03: Integer;
    mnfe_ambiente: Integer;
    mnfe_Tipo_Servico: Integer;  // 1-nfe  3-Cancelamento 4-Inutilizacao 8-Conscad 9-Carta Correcao

    mnfe_chaveAcesso: String;
    mnfe_chave_ped: integer;
    mnfe_codemp_ped: integer;
    mnfe_chave_ano_ped: integer;
    mnfe_operacao: integer;

    mnfe_numnf: Real;
    mnfe_Serie: String;
    mnfe_Modelo: String;

    MNfe_tpemis: Integer;
    mnfe_mensagem_retorno: String;

    vXMLRetorno: TXMLDocument;
    mStringRetorno: String;
    mRetorno_ok: Boolean;
    mnfe_chaveid: integer;


    streStream: TStringStream;

    function fNfe_EnviarArquivo2(pArqXML: tStrings): Boolean;
//    function fNfe_EnviarArquivo(pNomeArqXML: String): Boolean;
//    procedure AdicionaXMLArvore(tree: TTreeView;XMLDoc: TXMLDocument);
    procedure DomToTree (XmlNode: IXMLNode; TreeNode: TTreeNode);
    function fGerarXMLCliente: Boolean;

  end;

var
  Frm_nfe_Agde: TFrm_nfe_Agde;
  cancelar_proc:Boolean=False;
implementation

uses Func, S_DM_MYSQL, S_DM1, S_DM1_ADO, S_DM4, S_NFe_ConsCad,
  func_excecoes;

{$R *.dfm}

procedure TFrm_nfe_Agde.Timer_mudacorTimer(Sender: TObject);
begin
if Label1.Font.Color=clred then
   Label1.Font.Color:=clGreen
else
   label1.Font.Color:=ClRed;
Label1.Update;
end;

procedure TFrm_nfe_Agde.bbCancelarClick(Sender: TObject);
begin
if fMensagem('Quer Realmente Cancelar o Processamento?',0,['1','2'],2)=mrYes then
   begin
   cancelar_proc:=True;
   close;
   end;


end;


procedure TFrm_nfe_Agde.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if not mSaidaAutorizada then
   CanClose:=true;
end;

procedure TFrm_nfe_Agde.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Freeandnil(Query_xml);
{
if (FormState<>[fsModal]) then
   Action := caFree;
   }
end;
{

function TFrm_Nfe_Agde.fNfe_EnviarArquivo(pNomeArqXML: String): Boolean;
var
mqtd: Integer;
begin



adicionaItemListView('Carregando o arquivo xml');

mnfe_chaveid     :=0;
mnfe_dathor_envio:=now;
mnfe_ambiente:=1;
mnfe_tipoevento:=1;

Query_xml.Close;
Query_xml.SQL.Clear;
Query_xml.SQL.Add('insert into intersys_cadnfe ('
                 +' Nfe_ChAcessoNFE '

                 +',nfe_servidor01 '
                 +',nfe_servidor02 '
                 +',nfe_servidor03 '
                 +',Nfe_Ambiente '
                 +',Nfe_cnpj '
                 +',Nfe_tipoevento '
                 +',Nfe_status '
                 +',Nfe_dathor_col '
                 +',Nfe_xml_recepcao'
                 +',Nfe_Computador_ori'
                 +',Nfe_operacao '

                 +') values ('
                 +' :ChAcessoNFE '
                 +',:servidor01 '
                 +',:servidor02 '
                 +',:servidor03 '
                 +',:Ambiente '
                 +',:cnpj '
                 +',:tipoevento '
                 +',:status '
                 +',:dathor_col '
                 +',:xml_recepcao'
                 +',:computador_ori'
                 +',:operacao '
                 +')');
Query_xml.parambyName('ChAcessoNFE').AsString :=mnfe_chaveAcesso;
Query_xml.parambyName('servidor01').asinteger :=mnfe_servidor01;
Query_xml.parambyName('servidor02').asinteger :=mnfe_servidor02;
Query_xml.parambyName('servidor03').asinteger :=mnfe_servidor03;
Query_xml.parambyName('ambiente').asinteger   :=mnfe_ambiente;
Query_xml.parambyName('cnpj').AsString        :=mNfe_cnpj;
Query_xml.parambyName('tipoevento').asinteger :=mnfe_tipoevento;
Query_xml.parambyName('status').asinteger     :=0;
Query_xml.parambyName('dathor_col').AsString  :=FormatDateTime('yyyy/mm/dd hh:nn:ss', mnfe_dathor_envio);
Query_xml.parambyName('xml_recepcao').LoadFromFile(pNomeArqXML,ftFmtMemo);
Query_xml.parambyName('computador_ori').AsString:=pNomTer;
Query_xml.parambyName('operacao').Asinteger:=mnfe_operacao;


try
   Query_xml.ExecSQL;
except
   end;

// pegar o id do registro


Query_xml.Close;
Query_xml.SQL.Clear;
Query_xml.SQL.Add('select count(*) as qtd, nfe_id,nfe_cnpj from intersys_cadnfe '
                 +' where nfe_ChAcessoNFE=:ChAcessoNFE'
                 +' and Nfe_Computador_ori=:computador_ori '
                 +' and nfe_dathor_col=:dathor_col '
                 );

Query_xml.parambyName('ChAcessoNFE').AsString :=mnfe_chaveAcesso;
Query_xml.parambyName('dathor_col').AsString  :=FormatDateTime('yyyy/mm/dd hh:nn:ss', mnfe_dathor_envio);
Query_xml.parambyName('computador_ori').AsString:=pNomTer;
try
   Query_xml.Open;
   mnfe_chaveid:=Query_xml.FieldbyName('nfe_id').AsInteger;
except
   mnfe_chaveid:=0;
   end;
mqtd:=query_xml.fields[0].asinteger;

Animate1.Visible:=True;
Animate1.Active:=True;

result:=true;
end;

}

function TFrm_Nfe_Agde.fNfe_EnviarArquivo2(pArqXML: TStrings): Boolean;
var
mqtd: Integer;
begin



adicionaItemListView('Carregando o arquivo xml');

mnfe_chaveid     :=0;
Query_xml.Close;
Query_xml.SQL.Clear;
While true do
   begin
   Query_xml.SQL.Add('select CURRENT_TIMESTAMP');
   try
      Query_xml.Open;
      mnfe_dathor_envio:=query_xml.fields[0].AsDateTime;
      break;
   except
      if not DM_MYSQL.fAbreNFE(0) then
         break;
      end;
   end;
//mnfe_dathor_envio:=Now;

if DM4.Tb_ParGer02PG2USANFE.AsInteger<2 then
   mnfe_ambiente:=2 // homologacao
else
   mnfe_ambiente:=1; // producao

//mnfe_ambiente:=DM4.Tb_ParGer02PG2USANFE.AsInteger+1;

Query_xml.Close;
Query_xml.SQL.Clear;
Query_xml.SQL.Add('insert into intersys_cadnfe ('
                 +' Nfe_ChAcessoNFE '

                 +',nfe_servidor01 '
                 +',nfe_servidor02 '
                 +',nfe_servidor03 '
                 +',Nfe_Ambiente '
                 +',Nfe_cnpj '
                 +',Nfe_tipoevento '
                 +',Nfe_status '
                 +',Nfe_dathor_col '
                 +',Nfe_xml_recepcao'
                 +',Nfe_Computador_ori'
                 +',Nfe_operacao'
                 +',Nfe_tpemis'

                 +') values ('
                 +' :ChAcessoNFE '
                 +',:servidor01 '
                 +',:servidor02 '
                 +',:servidor03 '
                 +',:Ambiente '
                 +',:cnpj '
                 +',:tipoevento '
                 +',:status '
                 +',:dathor_col '
                 +',:xml_recepcao'
                 +',:computador_ori'
                 +',:operacao'
                 +',:tpemis'

                 +')');
Query_xml.parambyName('ChAcessoNFE').AsString :=mnfe_chaveAcesso;
Query_xml.parambyName('servidor01').asinteger :=mnfe_servidor01;
Query_xml.parambyName('servidor02').asinteger :=mnfe_servidor02;
Query_xml.parambyName('servidor03').asinteger :=mnfe_servidor03;
Query_xml.parambyName('ambiente').asinteger   :=mnfe_ambiente;
Query_xml.parambyName('cnpj').AsString        :=mNfe_cnpj;
Query_xml.parambyName('tipoevento').asinteger := MNfe_tpemis; // 1-normal 2-contigencia 3-scan


Query_xml.parambyName('status').asinteger     :=0;

Query_xml.parambyName('dathor_col').AsString  :=FormatDateTime('yyyy/mm/dd hh:nn:ss', mnfe_dathor_envio);
Query_xml.parambyName('xml_recepcao').AsString:=pArqXML.Text;
Query_xml.parambyName('computador_ori').AsString:=pNomTer;
Query_xml.parambyName('operacao').AsInteger:=mNFE_Tipo_Servico;  // 1-nfe  3-Cancelamento 4-Inutilizacao 8-Conscad 9-Carta Correcao
Query_xml.parambyName('tpemis').AsInteger:=MNfe_tpemis;

try
   Query_xml.ExecSQL;
except
   Query_xml.sql.savetofile(mpastatemp +'sqlnf.txt');

   end;

// pegar o id do registro


Query_xml.Close;
Query_xml.SQL.Clear;
While true do
   begin
   Query_xml.SQL.Add('select count(*) as qtd, nfe_id,nfe_cnpj from intersys_cadnfe '
                    +' where nfe_ChAcessoNFE=:ChAcessoNFE'
                    +' and Nfe_Computador_ori=:computador_ori '
                    +' and nfe_dathor_col=:dathor_col '
                    +'  group by nfe_id,nfe_cnpj '
                    );

   Query_xml.parambyName('ChAcessoNFE').AsString :=mnfe_chaveAcesso;
   Query_xml.parambyName('dathor_col').AsString  :=FormatDateTime('yyyy/mm/dd hh:nn:ss', mnfe_dathor_envio);
   Query_xml.parambyName('computador_ori').AsString:=pNomTer;
   try
      Query_xml.Open;
      mnfe_chaveid:=Query_xml.FieldbyName('nfe_id').AsInteger;
      break;
   except
      mnfe_chaveid:=0;
      Query_xml.sql.savetofile(mpastatemp +'sqlnf.txt');

      if not DM_MYSQL.fAbreNFE(0) then
         break;
      end;
   end;
mqtd:=query_xml.fields[0].asinteger;

Animate1.Visible:=True;
Animate1.Active:=True;

result:=true;
end;


procedure TFrm_nfe_Agde.FormCreate(Sender: TObject);
begin
    Query_xml:=TSQLQuery.Create(nil);
    Query_xml.SQLConnection:=DM_MYSQL.SQLConnection_NFE;
    mNfe_cnpj:=Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat);
    mSaidaAutorizada:=false;
    mErroProcessamento:=false;

    mPosicaoView:=0;
end;

procedure TFrm_nfe_Agde.ListView1CustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
if Odd(Item.Index) then
    Listview1.Canvas.Font.Color := clBlue
  else
    ListView1.Canvas.Font.Color := clBlack;

end;

procedure TFrm_nfe_Agde.ListView1CustomDrawSubItem(Sender: TCustomListView;
  Item: TListItem; SubItem: Integer; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
if Odd(Item.Index) then
    Listview1.Canvas.Font.Color := clBlue
  else
    ListView1.Canvas.Font.Color := clBlack;

end;

procedure TFrm_nfe_Agde.TimerAnimacaoTimer(Sender: TObject);
begin
if mPosicaoView>=0 then
  begin
  if ListView1.Items[mPosicaoView].ImageIndex = 0 then
    ListView1.Items[mPosicaoView].ImageIndex := 1
  else if ListView1.Items[mPosicaoView].ImageIndex = 1 then
    ListView1.Items[mPosicaoView].ImageIndex := 0;
  end;


end;


procedure TFrm_nfe_Agde.adicionaItemListView(sValue: String);
var
  lvItem: TListItem;
begin

lvItem := ListView1.Items.Add;
lvItem.ImageIndex := 0;
lvItem.SubItems.Add(sValue);
mPosicaoView:=ListView1.Items.Count-1;
Listview1.Scroll(0, Listview1.Items.Count * VisibleDockClientCount);
//Listview1.Scroll(0, Listview1.Items.Count * VisibleRowCount);



if TimerAnimacao.Enabled=false then
   TimerAnimacao.Enabled:=true;

end;


procedure TFrm_nfe_Agde.Timer3_concluirTimer(Sender: TObject);
var

Query_Cons: TSQLQuery;
mCampo_Xml: String;
vXMLDoc: TXMLDocument;


function fGravarXML_CCOR(ptipo: Integer): boolean;
begin

   DM1_ADO.ADOQuery1.Close;
   DM1_ADO.ADOQuery1.SQL.Clear;
   DM1_ADO.ADOQuery1.SQL.Add('Update CADCCOR01 set'
                            +' CC1NFE_NUM_PROT=:NFE_NUM_PROT '
                            +',CC1NFE_NUM_REC=:NFE_NRECIBO ');
  if trim(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)<>'' then
     DM1_ADO.ADOQuery1.SQL.Add(', CC1NFE_XML_CLIENTE=:NFE_XML_CLIENTE ');
   DM1_ADO.ADOQuery1.SQL.Add(' where CC1CHAVE=:CHAVE '
                            +' and CC1CODEMP=:CODEMP ');
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NRECIBO').Value:=Query_Cons.fieldbyName('Nfe_Num_Recibo').AsString;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NUM_PROT').Value:=Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString;
   if trim(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)<>'' then
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_XML_CLIENTE').Value:=Query_Cons.fieldbyName(mcampo_xml).AsString;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('CHAVE').Value:=mnfe_chave_ped;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('CODEMP').Value:=mnfe_codemp_ped;
   try
      DM1_ADO.ADOQuery1.ExecSQL;
//      mErroProcessamento:=false;
   except
      mErroProcessamento:=true;
      end;
//   end;



result:=true;



end;


function fGravarXML_NFE(ptipo: Integer): boolean;
// ptipo=0 nfe 3-cancelamento 4-inutilizacao
var
query_temp: tQuery;
begin


DM1_ADO.ADOQuery1.Close;
DM1_ADO.ADOQuery1.SQL.Clear;
DM1_ADO.ADOQuery1.SQL.Add('Update CADNS set ');
DM1_ADO.ADOQuery1.SQL.Add(' NSNFE_OBS_ERRO=:NFE_OBS_ERRO ');

if Query_cons.FieldByName('nfe_operacao').AsInteger =3 then // cancelamento
   begin
   if (mNfe_dathorEve<=pdatanula) and
      (fsonumero(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)=0) then
       begin
       result:=false;
       exit;
       end;
   if mNfe_dathorEve>pdatanula then
      begin
      DM1_ADO.ADOQuery1.SQL.Add(',NSDATHOR_CANC=:NSDATHOR_CANC ');
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSDATHOR_CANC').Value:=mNfe_dathorEve;
      end;
   if fsonumero(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)>0 then
      begin
      DM1_ADO.ADOQuery1.SQL.Add(',NSXML_NPROT_CANC=:NSXML_NPROT_CANC ');
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSXML_NPROT_CANC').Value:=Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString;
      end;
   end
else if Query_cons.FieldByName('nfe_operacao').AsInteger =4 then // inutilizacao
   begin
   if (mNfe_dathorEve<=pdatanula) and
      (fsonumero(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)=0) then
       begin
       result:=false;
       exit;
       end;
   if mNfe_dathorEve>pdatanula then
      begin
      DM1_ADO.ADOQuery1.SQL.Add(',NSDATHOR_INUT=:NSDATHOR_INUT ');
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSDATHOR_INUT').Value:=mNfe_dathorEve;
      end;
   if fsonumero(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)>0 then
      begin
      DM1_ADO.ADOQuery1.SQL.Add(',NSXML_NPROT_INUT=:NSXML_NPROT_INUT ');
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSXML_NPROT_INUT').Value:=Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString;
      end;
   end
else
   begin
   if fsonumero(Query_Cons.fieldbyName('Nfe_Num_Recibo').AsString)>0 then
      DM1_ADO.ADOQuery1.SQL.Add(',NSNFE_NRECIBO=:NFE_NRECIBO ');

   if fsonumero(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)>0 then
      DM1_ADO.ADOQuery1.SQL.Add(',NSNFE_NUMPROT=:NFE_NUMPROT ');


  if trim(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)<>'' then
     DM1_ADO.ADOQuery1.SQL.Add(',NSNFE_XML_CLIENTE=:NFE_XML_CLIENTE ');

   if fsonumero(Query_Cons.fieldbyName('Nfe_Num_Recibo').AsString)>0 then
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NRECIBO').Value:=Query_Cons.fieldbyName('Nfe_Num_Recibo').AsString;
   if fsonumero(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)>0 then
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_NUMPROT').Value:=Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString;
   if trim(Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString)<>'' then
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_XML_CLIENTE').Value:=Query_Cons.fieldbyName(mcampo_xml).AsString;
   end;


DM1_ADO.ADOQuery1.SQL.Add(' where NSCHAVEP=:CHAVE '
                         +' and NSLOTSEQ_CP=:CHAVE_ANO '
                         +' and NSCODEMP=:CODEMP '
                            +'  and NSTIPO<2 ' );
DM1_ADO.ADOQuery1.Parameters.ParamByName('NFE_OBS_ERRO').Value:=Query_Cons.fieldbyName('Nfe_mensagem').AsString;

DM1_ADO.ADOQuery1.Parameters.ParamByName('CHAVE').Value:=mnfe_chave_ped;
DM1_ADO.ADOQuery1.Parameters.ParamByName('CHAVE_ANO').Value:=mnfe_chave_ano_ped;
DM1_ADO.ADOQuery1.Parameters.ParamByName('CODEMP').Value:=mnfe_codemp_ped;
try
   DM1_ADO.ADOQuery1.ExecSQL;
except
   mErroProcessamento:=true;
   end;


//  INICIO

if (Query_cons.FieldByName('nfe_operacao').AsInteger =3) or
   (Query_cons.FieldByName('nfe_operacao').AsInteger =4) then // cancelamento
   begin
   query_temp:=tQuery.create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.close;
   query_temp.sql.clear;
   query_temp.sql.Add('Select count(*) from CADNS_NFEEVE '
                     +' where NSE_CODEMP=:CODEMP '
                     +' and NSE_NUMERO=:NUMERO '
                     +' and NSE_SERIE=:SERIE '
                     +' and NSE_MODELO=:MODELO '
                     +' and NSE_OPERACAO=:OPERACAO ');
   query_temp.parambyName('CODEMP').Value :=iif(mnfe_codemp_ped=0,codemp,mnfe_codemp_ped);
   query_temp.parambyName('NUMERO').Value :=mnfe_numnf;
   query_temp.parambyName('SERIE').Value  :=mnfe_Serie;
   query_temp.parambyName('MODELO').Value :=mnfe_Modelo;

   if (Query_cons.FieldByName('nfe_operacao').AsInteger =3) then // cancelamento
      query_temp.parambyName('OPERACAO').Value :='CANCELAMENTO'
   else
      query_temp.parambyName('OPERACAO').Value :='INUTILIZACAO';
   query_temp.Open;
   DM1_ADO.ADOQuery1.Close;
   DM1_ADO.ADOQuery1.SQL.Clear;

   if query_temp.fields[0].AsInteger=0 then
      begin
      DM1_ADO.ADOQuery1.SQL.Add('Insert into CADNS_NFEEVE ('
                               +'NSE_CODEMP'
                               +',NSE_OPERACAO'
                               +',NSE_TIPO'
                               +',NSE_NUMERO'
                               +',NSE_SERIE'
                               +',NSE_MODELO'
                               +',NSE_CHAVEP'
                               +',NSE_CHAVEP_NIVEL'
                               +',NSE_ORDEMP'
                               +',NSE_DATHOR_EVE'
                               +',NSE_XML_NPROT_EVE'
                               +',NSE_XML_EVENTO'
                               +') values ('
                               +' :NSE_CODEMP'
                               +',:NSE_OPERACAO'
                               +',:NSE_TIPO'
                               +',:NSE_NUMERO'
                               +',:NSE_SERIE'
                               +',:NSE_MODELO'
                               +',:NSE_CHAVEP'
                               +',:NSE_CHAVEP_NIVEL'
                               +',:NSE_ORDEMP'
                               +',:NSE_DATHOR_EVE'
                               +',:NSE_XML_NPROT_EVE'
                               +',:NSE_XML_EVENTO'
                               +')');
       end
    else
      begin
      DM1_ADO.ADOQuery1.SQL.Add('Update CADNS_NFEEVE set '
                               +' NSE_TIPO=:NSE_TIPO'
                               +',NSE_MODELO=:NSE_MODELO '
                               +',NSE_CHAVEP=:NSE_CHAVEP '
                               +',NSE_CHAVEP_NIVEL=:NSE_CHAVEP_NIVEL '
                               +',NSE_ORDEMP=:NSE_ORDEMP '
                               +',NSE_DATHOR_EVE=:NSE_DATHOR_EVE '
                               +',NSE_XML_NPROT_EVE=:NSE_XML_NPROT_EVE '
                               +',NSE_XML_EVENTO=:NSE_XML_EVENTO '
                               +' where '
                               +' NSE_NUMERO=:NSE_NUMERO'
                               +' and NSE_SERIE=:NSE_SERIE'
                               +' and NSE_CODEMP=:NSE_CODEMP'
                               +' and NSE_OPERACAO=:NSE_OPERACAO' );
       end;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_CODEMP').value  :=iif(mnfe_codemp_ped=0,codemp,mnfe_codemp_ped);
   if (Query_cons.FieldByName('nfe_operacao').AsInteger =3) then // cancelamento
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_OPERACAO').Value:='CANCELAMENTO'
   else
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_OPERACAO').Value :='INUTILIZACAO';
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_TIPO').Value        :=0;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_NUMERO').Value      :=mnfe_numnf;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_SERIE').Value       :=mnfe_serie;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_MODELO').Value      :=mnfe_modelo;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_CHAVEP').Value      :=mnfe_chave_ped;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_CHAVEP_NIVEL').Value:=0;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_ORDEMP').Value       :=mnfe_codemp_ped;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_DATHOR_EVE').Value   :=mNfe_dathorEve;
   if (Query_cons.FieldByName('nfe_operacao').AsInteger =3) then // cancelamento
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_XML_NPROT_EVE').Value:=mnfe_Num_prot_Canc
   else
      DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_XML_NPROT_EVE').Value:=mnfe_Num_prot_Inut;
   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_XML_EVENTO').Value      :=Query_Cons.fieldbyName(mcampo_xml).AsString;;
//   DM1_ADO.ADOQuery1.Parameters.ParamByName('NSE_XML_EVENTO').Value      :=MNFE_ Query_Cons.fieldbyName(mcampo_xml).AsString;;
   try
      DM1_ADO.ADOQuery1.ExecSQL;
      fdm1StartCommit;
   except
      DM1_ADO.ADOQuery1.SQL.SaveToFile(mpastatemp +'sqlnfeinut.txt');
      end;

    streStream := TStringStream.Create(Query_cons.FieldByName(mCampo_XML).AsString);
    mStringRetorno:=Query_cons.FieldByName(mCampo_XML).AsString;
    vXMLRetorno := TXMLDocument.Create(self);
    try
      vXMLRetorno.LoadFromstream(streStream);
    except
      try
        streStream := TStringStream.Create(AnsiToAscii(Query_cons.FieldByName(mCampo_XML).AsString));
        vXMLRetorno.LoadFromstream(streStream);
      except
        Query_Cons.FieldByName(mCampo_Xml).AsString
        end;
      end;

   freeandNil(query_temp);
   end;
// TERMINO





result:=true;



end;

begin
Timer3_concluir.Enabled:=false;
Query_Cons:=TSQLQuery.Create(nil);
Query_Cons.SQLConnection:=DM_MYSQL.SQLConnection_NFE;
while true do
   begin
   Query_Cons.SQL.clear;
   Query_Cons.SQL.add('Select Nfe_dathor_ini,Nfe_dathor_ter,Nfe_resultado,'
                     +' Nfe_xml_protocolado,Nfe_xml_recepcao_ret'
                     +',Nfe_mensagem,Nfe_Num_Protocolo,Nfe_status'
                     +',Nfe_DtVcto_Certificado'
                     +',Nfe_xml_recepcao '
                     +',Nfe_Num_Recibo '
                     +',Nfe_Operacao '
                     +',Nfe_xml_prot_ret from intersys_cadnfe '
                     +' where nfe_id=:chave ');
   Query_Cons.ParamByName('chave').AsInteger:=mnfe_chaveid;
   try
      Query_Cons.Open;
      if Query_Cons.fieldbyName('Nfe_status').AsInteger=9 then
         begin
         mnfe_mensagem_retorno:=Query_Cons.fieldbyName('Nfe_mensagem').AsString;
         mnfe_dh_valcertificado:=Query_Cons.fieldbyName('Nfe_DtVcto_Certificado').AsdateTime;

         mnfe_Num_prot_Canc:='';
         mnfe_Num_prot_Inut:='';
         mNfe_dathorEve:=pdatanula;
         mnfe_Num_Protolo:='';

         if Query_cons.FieldByName('nfe_operacao').AsInteger =3 then
            begin
            mnfe_Num_prot_Canc:=Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString;
            mNfe_dathorEve:=Query_Cons.fieldbyName('Nfe_dathor_ter').AsdateTime;
            end
        else if Query_cons.FieldByName('nfe_operacao').AsInteger =4 then
            begin
            mnfe_Num_prot_Inut:=Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString;
            mNfe_dathorEve:=Query_Cons.fieldbyName('Nfe_dathor_ter').AsdateTime;
            end
        else
            mnfe_Num_Protolo:=Query_Cons.fieldbyName('Nfe_Num_Protocolo').AsString;

         mnfe_nrecibo:=Query_Cons.fieldbyName('Nfe_Num_Recibo').AsString;

         if Query_Cons.fieldbyName('Nfe_Resultado').asinteger=4 then
            mCampo_Xml:='Nfe_xml_Recepcao'
         else
            begin
            if not Query_Cons.fieldbyName('Nfe_xml_protocolado').IsNull then
               mCampo_Xml:='Nfe_xml_protocolado'
            else if not Query_Cons.fieldbyName('Nfe_xml_prot_ret').IsNull then
               mCampo_Xml:='Nfe_xml_prot_ret'
            else if not Query_Cons.fieldbyName('Nfe_xml_recepcao_ret').IsNull then
               mCampo_Xml:='Nfe_xml_recepcao_ret'
            else
               mCampo_Xml:='Nfe_xml_protocolado';
            end;
         if Query_Cons.fieldbyName('Nfe_resultado').AsInteger=0 then
            begin
            if (Query_Cons.fieldbyName('Nfe_operacao').asinteger=1) and (fsonumero(mnfe_Num_Protolo)=0) then
               begin
               mErroProcessamento:=true;
               mSaidaAutorizada  :=true;
               freeandnil(Query_Cons);
               close;
               exit;
               end;



            streStream := TStringStream.Create(AnsiToAscii(Query_cons.FieldByName(mCampo_XML).AsString));

            mErroProcessamento:=false;
            mAutenticouNFE:=true;
            end
         else
            begin
            mAutenticouNFE:=false;
            mErroProcessamento:=true;
            if (Query_Cons.fieldbyName('Nfe_resultado').AsInteger=4) or
               (Query_Cons.fieldbyName('Nfe_resultado').AsInteger=8) then
               begin
               if Query_cons.FieldByName('nfe_operacao').AsInteger<>8 then
                  begin
                  streStream := TStringStream.Create(AnsiToAscii(Query_cons.FieldByName(mCampo_XML).AsString));
                  if streStream=nil then
                     begin
                     mErroProcessamento:=true;
                     mSaidaAutorizada  :=true;
                     freeandnil(Query_Cons);
                     close;
                     exit;
                     end
                  else
                     begin
     // Cria a variável baseada no TXMLDocument
                     vXMLDoc := TXMLDocument.Create(self);
                     try
                        vXMLDoc.LoadFromstream(streStream);

   //         XMLDocument1.Active := False;
   //     XMLDocument1.LoadFromFile('Books.xml');
   //         XMLDocument1.Active := True;
                        Treeview1.Items.Clear;
                        DomToTree(vXMLDoc.DocumentElement, nil);
                        TreeView1.FullExpand;
   //         AdicionaXMLArvore(TreeView1,vXMLDoc);
                        freeandnil(vXMLDoc);
                     except
                        mErroProcessamento:=true;
                        mSaidaAutorizada  :=true;
                        freeandnil(Query_Cons);
                        close;
                        exit;
                        end;
                     end;
                  end;
               end;
            end;
         if Query_cons.FieldByName('nfe_operacao').AsInteger =8 then
            begin
            mCampo_Xml:='Nfe_xml_recepcao_ret';
            streStream := TStringStream.Create(AnsiToAscii(Query_cons.FieldByName(mCampo_XML).AsString));
            mStringRetorno:=Query_cons.FieldByName(mCampo_XML).AsString;


     // Cria a variável baseada no TXMLDocument
            vXMLRetorno := TXMLDocument.Create(self);
            try
               vXMLRetorno.LoadFromstream(streStream);
               fGerarXMLCliente;
               mRetorno_ok:=true;
            except
                mRetorno_ok:=false;

               end;
            end
         else if Query_cons.FieldByName('nfe_operacao').AsInteger =9 then
            fGravarXML_CCOR(0)
         else

            fGravarXML_NFE(0);
         mSaidaAutorizada:=true;
         freeandnil(Query_Cons);
         Timer3_concluir.Enabled:=false;
         close;
         exit;
         end;                                             
       break;
   except
      if not DM_MYSQL.fAbreNFE(0) then
         begin
         mErroProcessamento:=true;
         mSaidaAutorizada  :=true;
         freeandnil(Query_Cons);
         close;
         exit;
         end
       else
         Query_Cons.sql.savetofile(mpastatemp +'sqlconscad.txt');

      end;
   end;
Timer3_concluir.Enabled:=true;


end;


procedure TFrm_nfe_Agde.DomToTree (XmlNode: IXMLNode; TreeNode: TTreeNode);
var
  I: Integer;
  NewTreeNode: TTreeNode;
  NodeText: string;
  AttrNode: IXMLNode;
begin
  // skip text nodes and other special cases
  if not (XmlNode.NodeType = ntElement) then
    Exit;
  // add the node itself
  NodeText := XmlNode.NodeName;
  if XmlNode.IsTextElement then
    NodeText := NodeText + ' = ' + XmlNode.NodeValue;
  NewTreeNode := TreeView1.Items.AddChild(TreeNode, NodeText);
  // add attributes
  for I := 0 to xmlNode.AttributeNodes.Count - 1 do
  begin
    AttrNode := xmlNode.AttributeNodes.Nodes[I];
    TreeView1.Items.AddChild(NewTreeNode,
      '[' + AttrNode.NodeName + ' = "' + AttrNode.Text + '"]');
  end;
  // add each child node
  if XmlNode.HasChildNodes then
    for I := 0 to xmlNode.ChildNodes.Count - 1 do
      DomToTree (xmlNode.ChildNodes.Nodes [I], NewTreeNode);
end;

{
procedure TFrm_nfe_Agde.AdicionaXMLArvore(tree: TTreeView;XMLDoc: TXMLDocument);
var
iNode : IXMLNode;

procedure ProcessNode(Node: IXMLNode; tn: TTreeNode);
begin
if Node = nil then
begin
Exit;
end;
with Node do
begin
tn := tree.Items.AddChild(tn, Attributes['nome']);
end;
end; (*ProcessNode*)
begin
XMLDoc.Active := True;

iNode := XMLDoc.DocumentElement.AttributeNodes.First; //aqui dá uma exceção

if (iNode.Attributes['categoria'] = 'X') then
begin
ProcessNode(iNode,nil); //inserir no nó X, no lugar de nil
end
else //é Y
begin
ProcessNode(iNode,nil); //inserir no nó Y, no lugar de nil
end;

XMLDoc.Active := False;
end;
}




function TFrm_nfe_Agde.fGerarXMLCliente: Boolean;
var
x: Integer;
 NodePrimeiro: IXMLNode;
 NodeMaster: IXMLNode;
begin
NodePrimeiro:=vXMLRetorno.ChildNodes.FindNode('retConsCad');

Frm_NFe_ConsCad.FLimpar(2);

if nodeprimeiro=nil then
   begin
   Frm_NFe_ConsCad.lbl_resultado.Caption:=mStringRetorno;
   result:=false;
   exit;
   end;

 Frm_NFe_ConsCad.edt_status.Text:=NodePrimeiro.ChildNodes['infCons'].ChildNodes['cStat'].text;
 Frm_NFe_ConsCad.edt_status_descricao.Text:=NodePrimeiro.ChildNodes['infCons'].ChildNodes['xMotivo'].text;
 Frm_NFe_ConsCad.lbl_resultado.Caption:= Frm_NFe_ConsCad.edt_status_descricao.Text;

if valint(Frm_NFe_ConsCad.edt_status.Text)=264 then
   begin
   Frm_NFe_ConsCad.lbl_resultado.Caption:=Frm_NFe_ConsCad.edt_status_descricao.text;
   result:=false;
   exit;
   end;

if NodePrimeiro<>nil then
   NodeMaster:=NodePrimeiro.ChildNodes.Nodes[0].ChildNodes.FindNode('infCad');

if NodeMaster=nil then
   begin
   Frm_NFe_ConsCad.lbl_resultado.Caption:=mStringRetorno;
   result:=false;
   exit;
   end;
Frm_NFe_ConsCad.edt_uf.Text:=NodeMaster.ChildNodes['UF'].text;
Frm_NFe_ConsCad.edt_enc_ie.Text:=NodeMaster.ChildNodes['IE'].text;
Frm_NFe_ConsCad.edt_enc_cnpj.Text:=NodeMaster.ChildNodes['CNPJ'].text;
Frm_NFe_ConsCad.edt_enc_cpf.Text:=NodeMaster.ChildNodes['CPF'].text;
Frm_NFe_ConsCad.cb_csit.ItemIndex:=valint(NodeMaster.ChildNodes['cSit'].text);
Frm_NFe_ConsCad.cb_indCredNFe.ItemIndex:=valint(NodeMaster.ChildNodes['indCredNFe'].text);
Frm_NFe_ConsCad.cb_indCredCTe.ItemIndex:=valint(NodeMaster.ChildNodes['indCredCTe'].text);
Frm_NFe_ConsCad.edt_razsoc.Text:=NodeMaster.ChildNodes['xNome'].text;
Frm_NFe_ConsCad.edt_fantasia.Text:=NodeMaster.ChildNodes['xFant'].text;
Frm_NFe_ConsCad.edt_cnae.Text:=NodeMaster.ChildNodes['CNAE'].text;
Frm_NFe_ConsCad.edt_dtiniativ.Text:=copy(NodeMaster.ChildNodes['dIniAtiv'].text,1+8,2)+'/'+
                                           copy(NodeMaster.ChildNodes['dIniAtiv'].text,1+5,2)+'/'+
                                           copy(NodeMaster.ChildNodes['dIniAtiv'].text,1,4);
Frm_NFe_ConsCad.edt_regapur.Text:=NodeMaster.ChildNodes['xRegApur'].text;
Frm_NFe_ConsCad.edt_dUltSit.Text:=copy(NodeMaster.ChildNodes['dUltSit'].text,1+8,2)+'/'+
                                           copy(NodeMaster.ChildNodes['dUltSit'].text,1+5,2)+'/'+
                                           copy(NodeMaster.ChildNodes['dUltSit'].text,1,4);
Frm_NFe_ConsCad.edt_dBaixa.Text:=copy(NodeMaster.ChildNodes['dBaixa'].text,1+8,2)+'/'+
                                           copy(NodeMaster.ChildNodes['dBaixa'].text,1+5,2)+'/'+
                                           copy(NodeMaster.ChildNodes['dBaixa'].text,1,4);
Frm_NFe_ConsCad.edt_IEUnica.Text:=NodeMaster.ChildNodes['IEUnica'].text;
Frm_NFe_ConsCad.edt_IEAtual.Text:=NodeMaster.ChildNodes['IEAtua'].text;
Frm_NFe_ConsCad.edt_endereco.Text:=NodeMaster.ChildNodes['ender'].ChildNodes['xLgr'].text;
Frm_NFe_ConsCad.edt_ender_nro.Text:=NodeMaster.ChildNodes['ender'].ChildNodes['nro'].text;
Frm_NFe_ConsCad.edt_ender_complemento.Text:=NodeMaster.ChildNodes['ender'].ChildNodes['xCpl'].text;
Frm_NFe_ConsCad.edt_bairro.Text:=NodeMaster.ChildNodes['ender'].ChildNodes['xBairro'].text;
Frm_NFe_ConsCad.edt_codibge.Text:=NodeMaster.ChildNodes['ender'].ChildNodes['cMun'].text;
Frm_NFe_ConsCad.edt_cidade.Text:=NodeMaster.ChildNodes['ender'].ChildNodes['cMun'].text;
Frm_NFe_ConsCad.edt_cep.Text:=NodeMaster.ChildNodes['ender'].ChildNodes['CEP'].text;
result:=true;
end;

end.
