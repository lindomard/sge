unit S_MDFE_Consultas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, CheckLst, Mask, ToolEdit, DB,
  DBTables, Grids, DBGrids,xmldom, XMLIntf, msxmldom,
  XMLDoc;

type
  TFrm_MDFE_Consultas = class(TForm)
    gbConsultas: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    edt_datini: TDateEdit;
    edt_datfin: TDateEdit;
    edt_chaveini: TEdit;
    edt_chavefin: TEdit;
    CLBStatus: TCheckListBox;
    BBnAtu: TBitBtn;
    edt_chave: TEdit;
    btn_sair: TBitBtn;
    Panel1: TPanel;
    bbImprimir: TBitBtn;
    bbEncerrada: TBitBtn;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    st_digitando0: TStaticText;
    st_gravada1: TStaticText;
    st_enviando2: TStaticText;
    st_rejeitada3: TStaticText;
    st_encerrada6: TStaticText;
    st_excluida_antes_enviar7: TStaticText;
    st_excluida_antes_encerrar8: TStaticText;
    st_excluida_ja_encerrada9: TStaticText;
    bbXMLDFE: TBitBtn;
    bbXMLEncerramento: TBitBtn;
    bbXmlCancelamento: TBitBtn;
    bbRenovar: TBitBtn;
    tb_MDFE: TQuery;
    tb_MDFEMDFE_VT_PLACA: TStringField;
    tb_MDFEMDFE_VT_TARA: TFloatField;
    tb_MDFEMDFE_VT_RENAVAN: TStringField;
    tb_MDFEMDFE_TOT_QNFE: TFloatField;
    tb_MDFEMDFE_TOT_VCARGA: TFloatField;
    tb_MDFEMDFE_TOT_QCARGA: TFloatField;
    tb_MDFEMDFE_NUMERO: TFloatField;
    tb_MDFEMDFE_VERSAO_XML: TStringField;
    tb_MDFEMDFE_MOD: TStringField;
    tb_MDFEMDFE_SERIE: TStringField;
    tb_MDFEMDFE_DHEMI: TDateTimeField;
    tb_MDFEMDFE_DHINIVIAGEM: TDateTimeField;
    tb_MDFEMDFE_MODAL: TStringField;
    tb_MDFEMDFE_ID: TFloatField;
    tb_MDFEMDFE_TPPROP: TStringField;
    tb_MDFEMDFE_DHINCLUSAO: TDateTimeField;
    tb_MDFEMDFE_TPAMB: TStringField;
    tb_MDFEMDFE_CHV_MDFE: TStringField;
    Src_MDFE: TDataSource;
    DBGrid_MDFE: TDBGrid;
    tb_MDFEMDFE_STATUS: TFloatField;
    Label1: TLabel;
    cb_tpamb: TComboBox;
    st_enviado_ok4: TStaticText;
    st_encenrrando5: TStaticText;
    tb_MDFEMDFE_TOT_QCTE: TFloatField;
    tb_MDFEMDFE_PROP_RNTRC: TStringField;
    SaveDialog1: TSaveDialog;
    tb_MDFEMDFE_ENVIO_NPROT: TStringField;
    procedure btn_sairClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid_MDFEDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbRenovarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure CLBStatusClick(Sender: TObject);
    procedure bbXMLEncerramentoClick(Sender: TObject);
    procedure bbXmlCancelamentoClick(Sender: TObject);
  private
    { Private declarations }

    procedure fLerCADMDFE;



    function fConsultarMDFENaoEncerrados(pTpAmb: String): boolean;





    function fLereMarcarNaoEncerradas(pTpAmb: String; pXml: String): boolean;




    function fCancelarMDFE(pJustificativa: String):boolean;



    function fEncerrarMDFE:boolean;

  public
    { Public declarations }
  end;

var
  Frm_MDFE_Consultas: TFrm_MDFE_Consultas;

implementation

uses Func, S_DM1, lerarq, func_excecoes, s_Nfe_Aguarde, S_Sintegra_Advert,
  Func2, s_MDFE_Impressao, s_MDFE, s_MDFE_justificativa, S_DM4;

{$R *.dfm}

procedure TFrm_MDFE_Consultas.btn_sairClick(Sender: TObject);
begin
close;
end;


procedure TFrm_MDFE_Consultas.fLerCADMDFE;
begin
tb_MDFE.close;
tb_MDFE.sql.clear;
tb_MDFE.sql.Add('Select MDFE_VT_PLACA,MDFE_VT_TARA,MDFE_VT_RENAVAN,MDFE_TOT_QNFE'
               +',MDFE_TOT_VCARGA,MDFE_TOT_QCARGA,MDFE_NUMERO,MDFE_VERSAO_XML,'
               +'MDFE_MOD,MDFE_SERIE,MDFE_DHEMI,MDFE_DHINIVIAGEM,MDFE_MODAL,MDFE_TOT_QCTE'
               +',MDFE_ID,MDFE_TPPROP,MDFE_DHINCLUSAO,MDFE_TPAMB,MDFE_CHV_MDFE'
               +',MDFE_STATUS,MDFE_VT_PLACA,MDFE_PROP_RNTRC'
               +',MDFE_ENVIO_NPROT'
               +' from MDFE_CADMDFE where 1=1 ');
if fsonumero(edt_chaveini.Text)>0 then
   tb_MDFE.SQL.add(' and MDFE_ID>='+fdeixanum(edt_chaveini.Text));
if fsonumero(edt_chavefin.Text)>0 then
   tb_MDFE.SQL.add(' and MDFE_ID<='+fdeixanum(edt_chavefin.Text));

if fsonumero(edt_datini.Text)>0 then
   tb_MDFE.SQL.add(fFormatdatetimeParaConsulta('MDFE_DHINCLUSAO',true,edt_datini.Date));

if fsonumero(edt_datfin.Text)>0 then
   tb_MDFE.SQL.add(fFormatdatetimeParaConsulta('MDFE_DHINCLUSAO',false,edt_datfin.Date));

if trim(fdeixanum2(edt_chave.Text))<>'' then
   tb_MDFE.SQL.add(' and MDFE_CHV_MDFE='+QuotedStr(fdeixanum2(edt_chave.Text)));

mcinst2:=fItenstCheckListBox(0,CLBSTATUS);
if trim(mcinst2)<>'' then
   Tb_MDFE.SQL.add(' and MDFE_STATUS '+mcinst2);

Tb_MDFE.SQL.add(' order by MDFE_ID ');

try
   tb_MDFE.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_MDFE,120,'_stru'+e.message,'user');
   end;
   end;

end;


procedure TFrm_MDFE_Consultas.BBnAtuClick(Sender: TObject);
begin
fLerCADMDFE;
end;

procedure TFrm_MDFE_Consultas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_MDFE_Consultas.DBGrid_MDFEDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if tb_MDFEMDFE_STATUS.AsInteger=1 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_gravada1.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=2 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_enviando2.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=3 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_rejeitada3.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=4 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_enviado_ok4.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=5 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_encenrrando5.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=6 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_encerrada6.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=7 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_excluida_antes_enviar7.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=8 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_excluida_antes_encerrar8.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=9 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_excluida_ja_encerrada9.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;



end;

function TFrm_MDFE_Consultas.fConsultarMDFENaoEncerrados(pTpAmb: String): boolean;
var
form_nfe_aguarde: TFrm_Nfe_Aguarde;
mXmlString: TStrings;
begin
mXmlString:= TStringList.Create;

mXmlString.Add('<?xml version="1.0" encoding="UTF-8"?>');
mXmlString.Add('<consMDFeNaoEnc xmlns="http://www.portalfiscal.inf.br/mdfe" versao="3.00">');
mXmlString.Add(fGeraXMLString(0,'tpAmb',pTpAmb)); // nota inicial
mXmlString.Add(fGeraXMLString(0,'xServ','CONSULTAR NÃO ENCERRADOS')); // nota inicial
mXmlString.Add(fGeraXMLString(0,'CNPJ',DM1.Tb_EmpCGC.AsString)); // nota inicial
mXmlString.Add('</consMDFeNaoEnc>');


Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfe_MDFE_naoEncerradas;
form_nfe_aguarde.mNFEretorno.mentra_evento   :=Nfe_MDFE_naoEncerradas;
form_nfe_aguarde.mNFEretorno.mentra_chave   :=0;
form_nfe_aguarde.mNFEretorno.mentra_codemp  :=0;
form_nfe_aguarde.mNFEretorno.mentra_lotseq  :=0;
form_nfe_aguarde.mNFEretorno.mentra_numnf   :=0;
form_nfe_aguarde.mNFEretorno.mentra_serie   :='';
form_nfe_aguarde.mNFEretorno.mentra_modelo  :='';



// lindomar
form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=DM1.Tb_Empcnpj_masc.AsString;
form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  :='';
form_nfe_aguarde.mNFEretorno.mentra_xml           :=mXmlString.Text;
form_nfe_aguarde.Timer_processar.Enabled := true;
Form_Nfe_Aguarde.ShowModal;
if form_nfe_aguarde.mNFEretorno.msaida_cstat=0 then
   begin
   Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_ret_observacao);
   Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
   Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
   Frm_Sintegra_Advert.tsXml.TabVisible:=true;
   Frm_Sintegra_Advert.TabSheet1.TabVisible:=true;
   Frm_Sintegra_Advert.Memo_xmlRet.Lines.Text:=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
   Frm_Sintegra_Advert.ShowModal;
   result:=false;
   end
else
   begin
   mnfe_Num_Protolo      :=form_nfe_aguarde.mNFEretorno.msaida_num_protocolo;
   mnfe_nrecibo          :=form_nfe_aguarde.mNFEretorno.msaida_num_recibo;
   mnfe_mensagem_retorno :=form_nfe_aguarde.mNFEretorno.msaida_ret_observacao;
   mnfe_dh_valcertificado:=form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor;
   mNfe_dathorEve        :=form_nfe_aguarde.mNFEretorno.msaida_dathorEve;
   mnfe_stat_Prot        :=inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat);
   mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;


   mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
   mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado;
   mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado;
   fLereMarcarNaoEncerradas(pTpAmb, form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta);



   ftestaremostrarcertificado(form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor);

   result:=true;
   end;
freeandnil(Frm_Sintegra_Advert);
freeandnil(form_nfe_aguarde);

end;



procedure TFrm_MDFE_Consultas.bbRenovarClick(Sender: TObject);
begin
fConsultarMDFENaoEncerrados(inttostr(cb_tpamb.ItemIndex+1));
BBnAtuClick(self);
end;



function TFrm_MDFE_Consultas.fLereMarcarNaoEncerradas(pTpAmb: String; pXml: String): boolean;
var
streStream : TStringStream;
vXMLDoc: TXMLDocument;

NodePai: IXMLNode;
x_node: integer;
mStringList: TStringList;

   procedure fSetarMDFE;
   var
   query_mdfe: TQuery;
   begin
   query_mdfe:=TQuery.create(nil);
   query_mdfe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_mdfe.SQL.add('Update MDFE_CADMDFE set MDFE_status=6 where MDFE_status=4 ');
   try
      query_mdfe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_MDFE,324,'_stru'+e.message,'user');
      end;
      end;
   end;

   procedure fSetarMDFEPendente(pChv_MDFE: String);
   var
   query_mdfe: TQuery;
   begin
   query_mdfe:=TQuery.create(nil);
   query_mdfe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_mdfe.SQL.add('Update MDFE_CADMDFE set MDFE_status=4 where MDFE_CHV_MDFE=:CHV_MDFE  ');
   query_mdfe.ParamByName('CHV_MDFE').asstring := pChv_MDFE;
   try
      query_mdfe.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_MDFE,324,'_stru'+e.message,'user');
      end;
      end;
   end;



   procedure fAtualizarMDFE(pXMLNode: IXMLNode);
   var
   x_n: integer;
   mChaveAcesso: String;
   begin
   for x_n:=0 to pXMLNode.ChildNodes.Count-1 do
      begin
      if uppercase(pXMLNode.ChildNodes[x_n].NodeName)='CHMDFE' then
         begin
         mChaveAcesso := pXMLNode.ChildNodes[x_n].Text;
         fSetarMDFEPendente(mChaveAcesso);
         end;
      end;
   end;

begin
mStringList:=tstringList.create;
//pXml:=fRetiraSujeiras(AnsiToAscii(pXml));
//mStringList.Add(pXml);
//mStringList.SaveToFile('c:\mdferet.xml');
//mStringList.Clear;

streStream := TStringStream.Create(AnsiToAscii(pXml));
vXMLDoc := TXMLDocument.Create(self);

try
   vXMLDoc.LoadFromStream(streStream);
except on e : exception do
   begin
   MessageDlg('Erro ao ler o xml  '+e.Message,mtWarning,[mbOk],0);
   Result:=false;
   exit;
   end;
   end;
NodePai := vXMLDoc.DocumentElement;

if NodePai=nil then
   begin
   NodePai:=vXMLDoc.DocumentElement.childNodes.First;
   if NodePai=nil then
      begin
      MessageDlg('Erro ao ler o xml  '+pXml,mtWarning,[mbOk],0);
      result:=false;
      freeandnil(streStream);
      freeandnil(vXMLDoc);
      exit;
      end;
   end;

fSetarMDFE;

for x_node:=0 to NodePai.ChildNodes.Count-1 do
   begin
   mStringList.Add('NodeName '+NodePai.ChildNodes[x_node].NodeName);
   if uppercase(NodePai.ChildNodes[x_node].NodeName)='INFMDFE' then
      begin
      fAtualizarMDFE(NodePai.ChildNodes[x_node]);
      end;
   end;
//mStringList.SaveToFile('c:\mdfe.txt');
freeandnil(mStringList);
freeandnil(streStream);
freeandnil(vXMLDoc);
result:=true;
end;




procedure TFrm_MDFE_Consultas.FormShow(Sender: TObject);
begin

if DM4.Tb_ParGer02PG2USANFE.AsInteger<2 then
   cb_tpamb.itemIndex:=1
else
   cb_tpamb.itemIndex:=0;

edt_datini.Date:=Now()-7;
bbRenovarClick(self);
end;

procedure TFrm_MDFE_Consultas.bbImprimirClick(Sender: TObject);
begin
if trim(tb_MDFEMDFE_ENVIO_NPROT.AsString)='' then
   begin
   MessageDlg('MDFE com protocolo invalido!',mtWarning,[mbOk],0);
   exit;
   end;

if tb_MDFEMDFE_ID.AsInteger>0 then
   begin
   Application.createform(TFrm_MDFE_Impressao, Frm_MDFE_Impressao);
   Frm_MDFE_Impressao.mId := TB_MDFEMDFE_id.AsInteger;
   Frm_MDFE_Impressao.fLerCadMDFE;
   Frm_MDFE_Impressao.rLDamDFE_mod01.PreviewModal;
   freeandnil(Frm_MDFE_Impressao);
   end;

end;

procedure TFrm_MDFE_Consultas.CLBStatusClick(Sender: TObject);
begin
   CLBSTATUS:=Valida_CheckList(CLBSTATUS);

end;

procedure TFrm_MDFE_Consultas.bbXMLEncerramentoClick(Sender: TObject);
var
mensagem: string;
begin
Mensagem:='';

if tb_MDFEMDFE_ENVIO_NPROT.AsString='' then
    mensagem:=mensagem+'Numero do Protocolo de envio nao encontrado!'+#13;


if tb_MDFEMDFE_STATUS.AsInteger<>4 then
   begin
   if tb_MDFEMDFE_STATUS.AsInteger=5 then
      mensagem:=mensagem+'Manifesto em estado de encerramento'+#13
   else if tb_MDFEMDFE_STATUS.AsInteger=6 then
      mensagem:=mensagem+'Manifesto encerrado anteriormente'+#13
   else if tb_MDFEMDFE_STATUS.AsInteger=7 then
      mensagem:=mensagem+'Manifesto excluido antes de enviar ao sefaz'+#13
   else if tb_MDFEMDFE_STATUS.AsInteger=8 then
      mensagem:=mensagem+'Manifesto excluido antes de encerrar'+#13
   else if tb_MDFEMDFE_STATUS.AsInteger=9 then
      mensagem:=mensagem+'Manifesto excluido ja concluida'+#13
   else if tb_MDFEMDFE_STATUS.AsInteger=0 then
      mensagem:=mensagem+'Manifesto em estado de digitacao'+#13
   else if tb_MDFEMDFE_STATUS.AsInteger=1 then
      mensagem:=mensagem+'Manifesto somente digitado'+#13
   else if tb_MDFEMDFE_STATUS.AsInteger=2 then
      mensagem:=mensagem+'Manifesto sendo enviado ao sefaz'+#13
   else if tb_MDFEMDFE_STATUS.AsInteger=3 then
      mensagem:=mensagem+'Manifesto com erros ao enviar sefaz'+#13;
   end;
if trim(mensagem)<>'' then
   begin
   Messagedlg(mensagem,mtWarning,[mbOk],0);
   exit;
   end;
if Application.MessageBox(pchar('Quer realmene Encerrar o MDFE '+tb_MDFEMDFE_ID.AsString+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

if fEncerrarMDFE then
   MessageDlg('MDFE encerrado!',mtInformation,[mbOk],0)
else
   MessageDlg('Erro ao encerrar MDFE!',mtWarning,[mbOk],0);
BBnAtuClick(Self);



end;

function TFrm_MDFE_Consultas.fEncerrarMDFE:boolean;
var
pXmlMDFE: TStringList;
begin
pXmlMDFE:=TStringList.create;
fGerarXMLMDFEEncerramento(tb_MDFEMDFE_ID.AsInteger,1, Now(), pXmlMDFE);

if not fSetarStatusPara(tb_MDFEMDFE_ID.AsInteger,5) then
   exit;

if fEnviarXML(Nfe_MDFE_evento,tb_MDFEMDFE_ID.AsInteger,  pXmlMDFE.Text) then
   begin
   fSetarStatusPara(tb_MDFEMDFE_ID.AsInteger,6);
   MessageDLG('MDFE placa '+tb_MDFEMDFE_VT_PLACA.AsString+' encerrada!', mtInformation,[mbOk],0)
   end
else
   begin
   fSetarStatusPara(tb_MDFEMDFE_ID.AsInteger,4);
   MessageDLG('MDFE placa '+tb_MDFEMDFE_VT_PLACA.AsString+' NÃO encerrada!', mtWarning,[mbOk],0);
   end;
{
SaveDialog1.FileName:='c:\sge\mdfe'+tb_MDFEMDFE_ID.AsString+'.xml';
if SaveDialog1.Execute then
   pXMLmDFE.SaveToFile(SaveDialog1.FileName);
}



end;


procedure TFrm_MDFE_Consultas.bbXmlCancelamentoClick(Sender: TObject);

   procedure fAtualizarStatus(pId, pStatus: Integer; pJustificativa: String);
   var
   query_atu: tQuery;
   begin
   query_atu:=tQuery.create(nil);
   query_atu.databasename:=DM1.SG_ASSOC.databasename;
   query_atu.SQL.add('Update MDFE_CADMDFE set MDFE_STATUS=:STATUS ');
   if  trim(pJustificativa)<>'' then
       begin
       query_atu.SQL.add(',MDFE_EXCLUSAO_JUSTIFICATIVA=:JUSTIFICATIVA ');
       query_atu.parambyname('JUSTIFICATIVA').AsString:=pJustificativa;
       end;
   query_atu.parambyname('STATUS').AsInteger:=pStatus;
   query_atu.SQL.add(' where MDFE_ID=:ID ');
   query_atu.parambyname('ID').AsInteger:=pId;

   try
      query_atu.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_atu,497,'_stru'+e.message,'user');
      end;
      end;
   query_atu.close;
   freeandnil(query_atu);
   end;
begin

if tb_MDFEMDFE_STATUS.AsInteger<3 then
   begin
   if Application.MessageBox(pchar('Quer Realmente Excluir o MDFE '+tb_MDFEMDFE_ID.AsString+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>MrYes then
      begin
      exit;
      end;
   fAtualizarStatus(tb_MDFEMDFE_ID.AsInteger, 7,'');
   BBnAtuClick(self);
   exit;
   end
else
   begin
   if tb_MDFEMDFE_STATUS.AsInteger=5 then
      begin
      MessageDlg('MDFE ja encerrado na base do SEFAZ!',mtWarning,[mbOk],0);
      exit;
      end
   else if tb_MDFEMDFE_STATUS.AsInteger<>4 then

      begin
      MessageDlg('MDFE ja esxcluido anteriormente!',mtWarning,[mbOk],0);
      exit;
      end

   end;

Application.createForm(TFrm_MDFE_Justificativa, Frm_MDFE_Justificativa);
Frm_MDFE_Justificativa.ShowModal;
if Frm_MDFE_Justificativa.edt_justificativa.Text='' then
   exit;
if fCancelarMDFE(Frm_MDFE_Justificativa.edt_justificativa.Text) then
   begin
   fAtualizarStatus(tb_MDFEMDFE_ID.AsInteger,iif(tb_MDFEMDFE_STATUS.AsInteger=6,9,8),Frm_MDFE_Justificativa.edt_justificativa.Text);
   BBnAtuClick(self);
   MessageDlg('MDFE Excluido!',mtInformation,[mbOk],0);
   end
else
   begin
   MessageDlg('Operação Cancelada!',mtWarning,[mbOk],0);
   end;
end;


function tFrm_MDFE_Consultas.fCancelarMDFE(pJustificativa: String) :boolean;

var
pXmlMDFE: TStringList;
begin
result:=true;
pXmlMDFE:=TStringList.create;
fGerarXMLMDFECancelamento(tb_MDFEMDFE_ID.AsInteger,1, Now(), pJustificativa, pXmlMDFE);

//if not fSetarStatusPara(tb_MDFEMDFE_ID.AsInteger,5) then
if fEnviarXML(Nfe_MDFE_evento,tb_MDFEMDFE_ID.AsInteger,  pXmlMDFE.Text) then
   begin
   fSetarStatusPara(tb_MDFEMDFE_ID.AsInteger,9);
   MessageDLG('MDFE placa '+tb_MDFEMDFE_VT_PLACA.AsString+' cancelada!', mtInformation,[mbOk],0)
   end
else
   begin
//   fSetarStatusPara(tb_MDFEMDFE_ID.AsInteger,4);
   MessageDLG('MDFE placa '+tb_MDFEMDFE_VT_PLACA.AsString+' NÃO CANCELADA!', mtWarning,[mbOk],0);
   end;
{
SaveDialog1.FileName:='c:\sge\mdfe'+tb_MDFEMDFE_ID.AsString+'.xml';
if SaveDialog1.Execute then
   pXMLmDFE.SaveToFile(SaveDialog1.FileName);
 }

BBnAtuClick(self);

end;

end.

