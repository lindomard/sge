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
   XMLDoc,


  IdMessageClient,   IdServerIOHandler,
   IdEmailAddress, IdHTTP;


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
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    bbAceitar: TBitBtn;
    edtCep: TEdit;
    edt_cep_amostra: TDBEdit;
    BitBtn1: TBitBtn;
    IdHTTP1: TIdHTTP;
    edtLogradouro: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtUF: TEdit;
    procedure bbBuscarCEPClick(Sender: TObject);
    procedure bbAceitarClick(Sender: TObject);
    procedure edtCepExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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

      mDadosCep : TDadosCEP;
  end;

 function fBuscarCEP(pCep: String; out pdadoscep: TDadosCEP): boolean;

var
  Frm_BuscaCep: TFrm_BuscaCep;

  mlin_cel     :Integer=1;
implementation

uses Math, Func, S_DM_MYSQL, lerarq;

{$R *.dfm}

procedure TFrm_BuscaCep.bbBuscarCEPClick(Sender: TObject);
var
xmlResponse: string;
  XMLDoc: IXMLDocument;
  Node: IXMLNode;
  CepClean: string;
begin
if fsonumero(edtCEP.Text)=0 then
   begin
   fmensagem('Favor digitar um Cep!',0,['0'],0);
   edtCEP.SetFocus;
   exit;
   end;

CepClean := StringReplace(edtCEP.Text, '-', '', [rfReplaceAll]);
  CepClean := StringReplace(CepClean, '.', '', [rfReplaceAll]);
  CepClean := Trim(CepClean);

  if Length(CepClean) <> 8 then
  begin
    ShowMessage('Informe um CEP válido com 8 dígitos.');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  XMLDoc := TXMLDocument.Create(Self);
  try
    try
      // Requisição via Indy HTTP no endpoint XML da ViaCEP
      xmlResponse := IdHTTP1.Get('http://viacep.com.br/ws/' + CepClean + '/xml/');

      XMLDoc.LoadFromXML(xmlResponse);
      XMLDoc.Active := True;

      Node := XMLDoc.DocumentElement;

      // Verifica se o CEP retornado existe na base
      if Assigned(Node.ChildNodes.FindNode('erro')) then
      begin
        ShowMessage('CEP não encontrado!');
        Exit;
      end;

      // Preenche os campos do formulário
      edtLogradouro.Text := Node.ChildNodes['logradouro'].Text;
      edtBairro.Text     := Node.ChildNodes['bairro'].Text;
      edtCidade.Text     := Node.ChildNodes['localidade'].Text;
      edtUF.Text         := Node.ChildNodes['uf'].Text;

      mCepencontrado     :=true;
      mAceitouCep        :=true;


    except
      on E: Exception do
        ShowMessage('Erro ao consultar CEP: ' + E.Message);
    end;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TFrm_BuscaCep.bbAceitarClick(Sender: TObject);
begin

   begin
   mCepencontrado:=true;
   mAceitouCep:=true;
   end;

close;
end;

procedure TFrm_BuscaCep.edtCepExit(Sender: TObject);
begin
edtCep.Text:=fdeixanum2(edtCep.Text);
edtCep.Text:=MaskCep(edtCep.Text);
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


function fBuscarCEP(pCep: String; out pdadoscep: TDadosCEP): boolean;
var
//  SSLIO: TIdSSLIOHandlerSocketOpenSSL;

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
//  SSLIO:=TIdSSLIOHandlerSocketOpenSSL.Create(Application);
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

// if SSLIO<>nil then
//   freeandnil(SSLIO);

end;


procedure TFrm_BuscaCep.BitBtn1Click(Sender: TObject);
begin
if fsonumero(edtCep.Text)=0 then
   begin
   fmensagem('Favor digitar um Cep!',0,['0'],0);
   edtCep.SetFocus;
   exit;
   end;
fBuscarCEP(edtCep.Text, mdadoscep);

end;

end.
