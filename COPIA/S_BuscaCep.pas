unit S_BuscaCep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Grids, DBGrids, DBCtrls, DB,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient
  ,IdMessage,
  IdIOHandler,
    IdSSLOpenSSL,
  IdSMTP,
   XmlIntf,
   XMLDoc;


{
uses  SqlExpr,db,SysUtils,dialogs,windows,forms,
     Classes,Controls,StdCtrls,DbClient, ExtCtrls,Messages,variants
    , strUtils,dateutils, ComCtrls, DBGrids,grids,
  Graphics,
 Buttons, DBCtrls, Mask, RxDBComb,
  RXDBCtrl, FMTBcd,DSHTTP, DBXJSON,
  Provider,VOVerificarEstruturas,s_agde
 , xmldom, XMLIntf, msxmldom,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,XMLDoc,jpeg, func;
 }
  type
  TDadosCEP = record
    pLogradouro: String;
    pBairro: String;
    pCidade: String;
    pUF: String;
    pCodIbge: String;
    pGia: String;
    pCodLoc: integer;

  end;

type
  TFrm_BuscaCep = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    bbBuscarCEP: TBitBtn;
    gb_logradouro: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LOGRADOURO: TEdit;
    BAIRRO: TEdit;
    CIDADE: TEdit;
    UF: TEdit;
    bbBuscarEnder: TBitBtn;
    gbResultado: TGroupBox;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    bbAceitar: TBitBtn;
    sbnLimpar: TSpeedButton;
    CEP: TEdit;
    DBGrid1: TDBGrid;
    edt_cep: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    procedure bbBuscarCEPClick(Sender: TObject);
    procedure bbBuscarEnderClick(Sender: TObject);
    procedure bbAceitarClick(Sender: TObject);
    procedure sbnLimparClick(Sender: TObject);
    procedure CEPExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    mcol_compl :integer;
    mcol_uf    :integer;
    mcol_cid   :integer;
    mcol_desc02:integer;
    mcol_bai   :integer;
    mcol_cep   :integer;
    mcol_abrev :integer;
    mcol_descricao:integer;

  public
    { Public declarations }
      mCep_Origem: String;
      mCepencontrado: Boolean;
      mAceitouCep: Boolean;


  end;

// function fBuscarCEP(pCep: String; out pdadoscep: TDadosCEP): boolean;

var
  Frm_BuscaCep: TFrm_BuscaCep;

  mlin_cel     :Integer=1;
implementation

uses Math, Func, S_DM_MYSQL, lerarq;

{$R *.dfm}

procedure TFrm_BuscaCep.bbBuscarCEPClick(Sender: TObject);
var
resultado: TStringList; //Cache do resultado
estoque: String; //Resultado
w,x,y,z: integer; //Variaveis para loop e quantidade de linhas
mconteudo: String;
mqtd_lin: Integer;
mQtdTent: Integer;

begin
if fsonumero(CEP.Text)=0 then
   begin
   fmensagem('Favor digitar um Cep!',0,['0'],0);
   CEP.SetFocus;
   exit;
   end;
mCepencontrado:=false;
mQtdTent:=0;
for mQtdTent:=1 to 4 do
   begin

   DM_MYSQL.Tb_Cep.Close;
   DM_MYSQL.Tb_Cep.SQL.Clear;
   DM_MYSQL.Tb_Cep.SQL.Add('select  case when length(cep)=8 then '
                           +' concat(substr(cep,1,5),'+QuotedStr('-')+',substr(cep,6,3)) '
                           +' else cep end '
                           +' as cep, compl,uf,cid,desc02,bai,abrev,descricao '
                           +'from cep where CEP=:CEP');
   DM_MYSQL.Tb_Cep.ParamByName('CEP').AsString:=fdeixanum(cep.Text);
   try
      DM_MYSQL.Tb_Cep.open;
      if DM_MYSQL.Tb_Cep.IsEmpty then
         mCepencontrado:=false
      else
        mCepencontrado:=true;
      if not DM_MYSQL.CDS_CEP.Active then
         DM_MYSQL.CDS_CEP.Open;
      DM_MYSQL.CDS_CEP.Refresh;
      break;
   except
      if not DM_MYSQL.fAbreCEP(0) then
         break;
      end;
   end;
end;

procedure TFrm_BuscaCep.bbBuscarEnderClick(Sender: TObject);
var
mCompl: String;
begin
if (trim(LOGRADOURO.Text)='') and (trim(BAIRRO.Text)='') and (trim(CIDADE.text)='') then
   begin
   FMensagem('Favor Preencher Pelo Menos um dos campos: Logradouro, Bairro ou Cidade!',0,['0'],0);
   LOGRADOURO.SetFocus;
   exit;
   end;
mCepencontrado:=false;


DM_MYSQL.Tb_Cep.Close;
DM_MYSQL.Tb_Cep.SQL.Clear;
DM_MYSQL.Tb_Cep.SQL.Add('select  case when length(cep)=8 then '
                        +' concat(substr(cep,1,5),'+QuotedStr('-')+',substr(cep,6,3)) '
                        +' else cep end '
                        +' as cep, compl,uf,cid,desc02,bai,abrev,descricao '
                        +'from cep where CEP=:CEP');
mCompl:=' where ';
if trim(LOGRADOURO.Text)<>'' then
   begin
   DM_MYSQL.Tb_Cep.SQL.Add(mCompl+' DESC02 like '+QuotedStr('%'+LOGRADOURO.Text+'%'));
   mCompl:=' and ';
   end;
if trim(BAIRRO.Text)<>'' then
   begin
   DM_MYSQL.Tb_Cep.SQL.Add(mCompl+' BAI like '+QuotedStr('%'+BAIRRO.Text+'%'));
   mCompl:=' and ';
   end;
if trim(CIDADE.Text)<>'' then
   begin
   DM_MYSQL.Tb_Cep.SQL.Add(mCompl+' CID like '+QuotedStr('%'+CIDADE.Text+'%'));
   mCompl:=' and ';
   end;
if trim(UF.Text)<>'' then
   begin
   DM_MYSQL.Tb_Cep.SQL.Add(mCompl+' UF like '+QuotedStr('%'+UF.Text+'%'));
   mCompl:=' and ';
   end;
DM_MYSQL.Tb_Cep.SQL.Add(' order by DESC02 ');

While true do
   begin
   try
      DM_MYSQL.Tb_Cep.open;
      if DM_MYSQL.Tb_Cep.IsEmpty then
         mCepencontrado:=false
      else
        mCepencontrado:=true;
      if not DM_MYSQL.CDS_CEP.Active then
         DM_MYSQL.CDS_CEP.Open;
      DM_MYSQL.CDS_CEP.Refresh;
      break;
    except
       if not DM_MYSQL.fAbreCEP(0) then
          break;
       end;
    end;


end;

procedure TFrm_BuscaCep.bbAceitarClick(Sender: TObject);
begin
if (DM_MYSQL.CDS_CEP.Active) and (not DM_MYSQL.CDS_CEPCEP.IsNull) then
   begin
   mCepencontrado:=true;
   mAceitouCep:=true;
   end;

close;
end;

procedure TFrm_BuscaCep.sbnLimparClick(Sender: TObject);
begin
LOGRADOURO.Text:='';
BAIRRO.Text    :='';
CIDADE.Text    :='';
UF.Text        :='';
end;

procedure TFrm_BuscaCep.CEPExit(Sender: TObject);
begin
CEP.Text:=fdeixanum2(CEP.Text);
CEP.Text:=MaskCep(CEP.Text);
end;

procedure TFrm_BuscaCep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_BuscaCep.FormShow(Sender: TObject);
begin
  mcol_compl    :=0;
  mcol_uf       :=1;
  mcol_cid      :=2;
  mcol_desc02   :=3;
  mcol_bai      :=4;
  mcol_cep      :=5;
  mcol_abrev    :=6;
  mcol_descricao:=7;
  mCep_Origem   :='';
  mCepencontrado:=false;
  mAceitouCep   :=false;

end;

{
function fBuscarCEP(pCep: String; out pdadoscep: TDadosCEP): boolean;
var
  SSLIO: TIdSSLIOHandlerSocketOpenSSL;

  tempXML :IXMLNode;
  tempNodePAI :IXMLNode;
  tempNodeFilho :IXMLNode;
  I :Integer;
  XmlDocumento: TXMLDocument;

begin
result:=true;
pCep:=fdeixanum(pCep);
try
  pdadoscep.pLogradouro:='';
  pdadoscep.pBairro:='';
  pdadoscep.pCidade:='';
  pdadoscep.pUF:='';
  pdadoscep.pCodIbge:='';

  XmlDocumento:=TXMLDocument.Create(Application);
  SSLIO:=TIdSSLIOHandlerSocketOpenSSL.Create(Application);
  XMLDocumento.FileName := 'https://viacep.com.br/ws/'+Trim(pCep)+ '/xml/';
  XMLDocumento.Active := true;
  tempXML := XMLDocumento.DocumentElement;

  tempNodePAI := tempXML.ChildNodes.FindNode('logradouro');
  if tempNodePAI=nil then
     begin
     result:=false;
     exit;
     end;
  for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
     begin
     tempNodeFilho := tempNodePAI.ChildNodes[i];
     pdadoscep.pLogradouro:=uppercase(tempNodeFilho.Text);
     end;

  tempNodePAI := tempXML.ChildNodes.FindNode('bairro');
  for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
      begin
      tempNodeFilho    := tempNodePAI.ChildNodes[i];
      pdadoscep.pBairro:=uppercase(tempNodeFilho.Text);
      end;


  tempNodePAI := tempXML.ChildNodes.FindNode('localidade');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
      begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      pdadoscep.pCidade:=uppercase(tempNodeFilho.Text);
      end;


  tempNodePAI := tempXML.ChildNodes.FindNode('uf');
  for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
      begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      pdadoscep.pUF:=uppercase(tempNodeFilho.Text);
      end;
   tempNodePAI := tempXML.ChildNodes.FindNode('ibge');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
      begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      pdadoscep.pCodIbge:=uppercase(tempNodeFilho.Text);
      end;


   tempNodePAI := tempXML.ChildNodes.FindNode('gia');
   for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
      begin
      tempNodeFilho := tempNodePAI.ChildNodes[i];
      pdadoscep.pGia:=uppercase(tempNodeFilho.Text);
      end;
except
    result:=false;
   end;
if length(pdadoscep.pCodIbge)>3 then
   begin
   if fLerGenerico_query('CADLOC','LNOME,LUF,LCODLOC','LCODMUN_IBGE='+pdadoscep.pCodIbge,query_consulta) then
      begin
      pdadoscep.pCodLoc:=query_consulta.FieldByName('LCODLOC').AsInteger;
      end;
   end;
if (pdadoscep.pCodLoc=0) and (length(pdadoscep.pCidade)>1) then
   begin
   if fLerGenerico_query('CADLOC','LNOME,LUF,LCODLOC','LUF='+QuotedStr(pdadoscep.pUF)+' and LNOME='+QuotedStr(pDadosCep.pCidade),query_consulta) then
      begin
      pdadoscep.pCodLoc:=query_consulta.FieldByName('LCODLOC').AsInteger;
      end;
   end;



if XmlDocumento<>nil then
  freeandnil(XmlDocumento);

if SSLIO<>nil then
   freeandnil(SSLIO);

end;
}

end.
