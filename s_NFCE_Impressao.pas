unit s_NFCE_Impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, s_nfce, xmldom, XMLIntf, XMLDoc
   , Printers,synpdf, jpeg,DelphiZXingQRCode,shellapi,
   WinSpool, ExtCtrls, StdCtrls, ComCtrls,s_fpag;



type
  TFrm_NFCE_Impressao = class(TForm)
    cds_detalhe: TClientDataSet;
    cds_detalheDETINFADPROD: TMemoField;
    cds_detalhenomepro: TStringField;
    cds_detalheDETPRODQCOM: TFloatField;
    cds_detalheDETPRODCPROD: TFloatField;
    cds_detalheDETPRODNCM: TStringField;
    cds_detalheDETPRODCFOP: TStringField;
    cds_detalheDETPRODUCOM: TStringField;
    cds_detalheVDESC: TFloatField;
    cds_detalheDETPRODVUNCOM: TFloatField;
    cds_detalheDETPRODVPROD: TFloatField;
    cds_detalheORI_PROD: TStringField;
    cds_detalhecst: TStringField;
    cds_detalheICMSVBC: TFloatField;
    cds_detalhealiq_icms: TFloatField;
    cds_detalheCSOSN: TStringField;
    cds_detalhepercipi: TFloatField;
    cds_detalheitem_num: TIntegerField;
    cds_cabecalho: TClientDataSet;
    cds_cabecalhoCHAVE_ACESSO: TStringField;
    cds_cabecalhochave_acesso_calc: TStringField;
    cds_cabecalhoEMITXNOME: TStringField;
    cds_cabecalhoemicidadeuf: TStringField;
    cds_cabecalhoEMITIE: TStringField;
    cds_cabecalhoEMITIEST: TStringField;
    cds_cabecalhoCRT: TIntegerField;
    cds_cabecalhoemit_endereco_comp: TStringField;
    cds_cabecalhoTPIMP: TIntegerField;
    cds_cabecalhomodelo: TIntegerField;
    cds_cabecalhoemit_cnpj: TStringField;
    cds_cabecalhofone_fax: TStringField;
    cds_cabecalhocep_emit: TStringField;
    cds_cabecalhosaida_entrada: TStringField;
    cds_cabecalhoIDENNF: TStringField;
    cds_cabecalhonumeronf: TFloatField;
    cds_cabecalhoIDEDEMI: TDateTimeField;
    cds_cabecalhoDATASAIDA: TDateTimeField;
    cds_cabecalhoHORASAIDA: TStringField;
    cds_cabecalhoIDESERIE: TStringField;
    cds_cabecalhoIDENATOP: TStringField;
    cds_cabecalhoDESTISUF: TStringField;
    cds_cabecalhonomcli_codigo: TStringField;
    cds_cabecalhonum_prot: TStringField;
    cds_cabecalhodest_cnpj: TStringField;
    cds_cabecalhoDESTENDERDESTXLGR: TStringField;
    cds_cabecalhoDESTENDERDESTXBAIRRO: TStringField;
    cds_cabecalhoDESTENDERDESTCEP: TStringField;
    cds_cabecalhoDESTENDERDESTXMUN: TStringField;
    cds_cabecalhodest_fone: TStringField;
    cds_cabecalhoDESTENDERDESTUF: TStringField;
    cds_cabecalhodest_inscricao: TStringField;
    cds_cabecalhoTOTALICMSTOTVBC: TFloatField;
    cds_cabecalhoTOTALICMSTOTVICMS: TFloatField;
    cds_cabecalhoTOTALICMSTOTVBCST: TFloatField;
    cds_cabecalhoTOTALICMSTOTVST: TFloatField;
    cds_cabecalhoTOTALICMSTOTVPROD: TFloatField;
    cds_cabecalhoTOTALICMSTOTVFRETE: TFloatField;
    cds_cabecalhoTOTALICMSTOTVSEG: TFloatField;
    cds_cabecalhoTOTALICMSTOTVDESC: TFloatField;
    cds_cabecalhoTOTALICMSTOTVOUTRO: TFloatField;
    cds_cabecalhoTOTALICMSTOTVIPI: TFloatField;
    cds_cabecalhoTOTALICMSTOTVNF: TFloatField;
    cds_cabecalhovalor_texto: TStringField;
    cds_cabecalhoemissao_texto: TStringField;
    cds_cabecalhoTT_XNOME: TStringField;
    cds_cabecalhoTRANSPVEICTRANSPPLACA: TStringField;
    cds_cabecalhoTRANSPVEICTRANSPUF: TStringField;
    cds_cabecalhotransp_cnpj: TStringField;
    cds_cabecalhoTT_XENDER: TStringField;
    cds_cabecalhoTT_XMUN: TStringField;
    cds_cabecalhoTT_UF: TStringField;
    cds_cabecalhoTRANSPVOLQVOL: TIntegerField;
    cds_cabecalhoTRANSPVOLMARCA: TStringField;
    cds_cabecalhoTRANSPVOLPESOB: TFloatField;
    cds_cabecalhoTRANSPVOLPESOL: TFloatField;
    cds_cabecalhoINFADICINFCPL: TMemoField;
    cds_cabecalhoINFADICINFADFISCO: TMemoField;
    cds_cabecalhoTOTALISSQNTOTVISS: TFloatField;
    cds_cabecalhoTOTALISSQNTOTVBC: TFloatField;
    cds_cabecalhofantasia_cliente: TStringField;
    cds_cabecalhoEMITIM: TStringField;
    cds_cabecalhorecebemos: TStringField;
    cds_cabecalhorazao_fantasia: TStringField;
    cds_cabecalhodata_vencimentos: TStringField;
    cds_cabecalhofrete_cif_fob: TStringField;
    cds_cabecalhoTRANSPVOLESP: TStringField;
    cds_cabecalhoqrcode: TStringField;
    cds_cabecalhochacesso_bloco1: TStringField;
    cds_cabecalhochacesso_bloco2: TStringField;
    cds_cabecalhotpemis: TIntegerField;
    cds_cabecalhodathorprot: TDateTimeField;
    cds_cabecalhovTotTrib: TFloatField;
    cds_cabecalhoobscup: TMemoField;
    cds_cabecalhotpamb: TIntegerField;
    cds_vcto: TClientDataSet;
    cds_vctoVDATA: TDateTimeField;
    cds_vctoVVALOR: TFloatField;
    cds_vctonumdup: TStringField;
    cds_vctonomfpgto: TStringField;
    PageControl1: TPageControl;
    tsQrCode: TTabSheet;
    Label1: TLabel;
    edtText: TEdit;
    Label2: TLabel;
    cmbEncoding: TComboBox;
    Label3: TLabel;
    edtQuietZone: TEdit;
    PaintBox1: TPaintBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit1: TEdit;
    cds_cabecalhoDESTXNOME: TStringField;
    cds_detalheCSTB_CBENEF: TStringField;
    cds_detalheVFRETE: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    mfonte_ecf: TFontesECF;
    QRCodeBitmap: TBitmap;
    mNfce: tNfce;

    procedure Update;


    function fRetornarNomeFormaSefaz(pCodfp: string): string;


  public
    { Public declarations }


    function fLerDadosDoXML(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso): boolean;



    function fImprimirNFCE(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso):boolean;


    function fQrCode_Bematech(Linha: AnsiString): string;


    function fQrCode_daruma(pTexto: string): AnsiString;

    function fQrCode_Epson(pTexto: AnsiString): string;


    function fImprimirGeral(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso):boolean;
    function fImprimirGeralComprovante(pComprovante: tStrings; pImpressora,pDocumento: String):boolean;





    function fImprimirComprovante(pComprovante: tStrings; pImpressora,pDocumento: String):boolean;


  end;
const
    log_QtdViaTef = 1;
    cCRLF = #10#13;

var
  Frm_NFCE_Impressao: TFrm_NFCE_Impressao;

implementation

uses Func, lerarq, S_DM4, S_Agde, S_DM1, Func2;


{$R *.dfm}



function TFrm_NFCE_Impressao.fLerDadosDoXML(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso): boolean;

var
  NodeArmas, NodeMed, NodeMaster, NodePai, NodeSec, NodeTmp, NodeImposto,
    NodeTmp_Imp, NodeTmp_ImpCateg, nodeProtocolo: IXMLNode;
  mLotes, mDados_Lid: String;
    streStream: TStringStream;
  
  mArmas: String;
  mItem: integer;
  x: integer;
  mQtdLote, mQtdPed: Real;
  arqxmlclient: String;
  arqDanfe: String;
  numNf: String;
  mString_Temp: String;
  mSeqFP: integer;

  mCompVinc: TStrings;
  AVISTASEMDUP: boolean;

  x_vias: integer;
  pQtdVias: integer;
  x_Comprov: integer;
  pIdent_Item: integer;
  pIdent_SubItem: integer;
  pIdent_Conteudo: AnsiString;

  pXMLdoc: TXMLDocument;
  mImpressora: string;
  mDESCCOMPSEGLIN: boolean;

  procedure pfechartudo;
  begin
  if pXMLdoc<>nil then
     freeandnil(pXMLdoc);
  if mCompVinc<>nil then
     freeandnil(mCompVinc);


  end;
begin
  mDESCCOMPSEGLIN:=false;
  AVISTASEMDUP:=true;
if cds_vcto.Active=false then
   begin
   cds_vcto.CreateDataSet;
   cds_vcto.Open;
   end;
cds_vcto.EmptyDataSet;

if cds_cabecalho.Active=false then
   begin
   cds_cabecalho.CreateDataSet;
   cds_cabecalho.Open;
   end;
cds_cabecalho.EmptyDataSet;
if cds_detalhe.Active=false then
   begin
   cds_detalhe.CreateDataSet;
   cds_detalhe.Open;
   end;
cds_detalhe.EmptyDataSet;

pXMLdoc := TXMLDocument.Create(self);
try
   pXMLdoc.LoadFromstream(TStringStream.Create(pDadosNFCEChvAcesso.pXml_Cliente));
except
      try
        streStream := TStringStream.Create(AnsiToAscii(pDadosNFCEChvAcesso.pXml_Cliente));
        pXMLdoc.LoadFromstream(streStream);
      except

      try
        streStream := TStringStream.Create(fTextaNome2(pDadosNFCEChvAcesso.pXml_Cliente));
        pXMLdoc.LoadFromstream(streStream);
      except
         fImprimirErros2('c:\sge\erronoxml',fTextaNome2(pDadosNFCEChvAcesso.pXml_Cliente));
         end;



        end;

  end;



NodeMaster := pXMLdoc.DocumentElement.childNodes.First.childNodes.FindNode('infNFe');
if NodeMaster = nil then
   begin
   NodeMaster := pXMLdoc.DocumentElement.childNodes.First;
   NodePai := pXMLdoc.DocumentElement.childNodes.First.childNodes.FindNode('emit');
   end
else
   NodePai := NodeMaster.childNodes.FindNode('emit');

if NodePai = nil then
   begin
   MessageDlg('Não é um XML de Nota Fiscal Válido!', mtWarning, [mbOk], 0);
   result := false;
   exit;
   end;

NodeSec := NodePai;
  // Posiciona o primeiro elemento encontrado
NodeSec.childNodes.First;
cds_cabecalho.Append;
cds_cabecalhoCHAVE_ACESSO.Value := NodeMaster.GetAttributeNS('Id', '');
if trim(cds_cabecalhoCHAVE_ACESSO.Value) <> '' then
   cds_cabecalhoCHAVE_ACESSO.Value := copy(cds_cabecalhoCHAVE_ACESSO.Value, 4, 44);

if trim(cds_cabecalhoCHAVE_ACESSO.AsString) <> '' then
   begin
   cds_cabecalhochave_acesso_calc.Value :=
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 1, 2) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 3, 2) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 5, 2) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 7, 2) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 9, 2) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 11, 3) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 14, 3) + '/' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 17, 4) + '-' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 21, 2) + '-' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 23, 3) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 26, 3) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 29, 3) + '-' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 32, 3) + '-' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 35, 3) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 38, 3) + '.' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 41, 3) + '-' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 44, 1);

    cds_cabecalhochacesso_bloco1.Value :=
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 1, 4) + ' ' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 5, 4) + ' ' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 9, 4) + ' ' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 13, 4) + ' ' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 17, 4) + ' ' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 21, 4);

    cds_cabecalhochacesso_bloco2.Value :=
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 25, 4) + ' ' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 29, 4) + ' ' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 33, 4) + ' ' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 37, 4) + ' ' +
      copy(cds_cabecalhoCHAVE_ACESSO.AsString, 41, 4);
   end;

cds_cabecalhoEMITXNOME.Value := NodeSec.childNodes['xNome'].Text;
cds_cabecalhoemicidadeuf.Value := NodeSec.childNodes['enderEmit'].childNodes['xMun'].Text
  + '-' + NodeSec.childNodes['enderEmit'].childNodes['UF'].Text;
cds_cabecalhoEMITIE.Value := NodeSec.childNodes['IE'].Text;
cds_cabecalhoEMITIEST.Value := NodeSec.childNodes['IEST'].Text;
cds_cabecalhoCRT.Value := valint(NodeSec.childNodes['CRT'].Text);

cds_cabecalhoemit_endereco_comp.Value := NodeSec.childNodes['enderEmit'].childNodes['xLgr'].Text;
 if  fXNroValido(NodeSec.ChildNodes['enderEmit'].ChildNodes['nro'].text)<>'' then

   cds_cabecalhoemit_endereco_comp.Value := cds_cabecalhoemit_endereco_comp.Value
      + ' ' + NodeSec.childNodes ['enderEmit'].childNodes['nro'].Text;
cds_cabecalhoemit_endereco_comp.Value := cds_cabecalhoemit_endereco_comp.Value
    + ' ' + NodeSec.childNodes['enderEmit'].childNodes['xCpl'].Text + ' ' +
    NodeSec.childNodes['enderEmit'].childNodes['xBairro'].Text;

cds_cabecalhoTPIMP.Value :=
    valint(NodeMaster.childNodes['ide'].childNodes['tpImp'].Text);
cds_cabecalhotpemis.Value :=
    valint(NodeMaster.childNodes['ide'].childNodes['tpEmis'].Text);
cds_cabecalhotpamb.Value :=
    valint(NodeMaster.childNodes['ide'].childNodes['tpAmb'].Text);

cds_cabecalhomodelo.Value :=
    valint(NodeMaster.childNodes['ide'].childNodes['mod'].Text);

cds_cabecalhoemicidadeuf.Value := NodeSec.childNodes['enderEmit'].childNodes
    ['xMun'].Text + ' - ' + NodeSec.childNodes['enderEmit'].childNodes
    ['UF'].Text;
cds_cabecalhoemit_cnpj.Value := FormatFloat(pDFCNPJ,
    fsonumero(NodeSec.childNodes['CNPJ'].Text));

cds_cabecalhofone_fax.Value :=
    MaskFone(NodeSec.childNodes['enderEmit'].childNodes['fone'].Text);
cds_cabecalhocep_emit.Value :=
    MaskCep(NodeSec.childNodes['enderEmit'].childNodes['CEP'].Text);
cds_cabecalhosaida_entrada.Value := NodeMaster.childNodes['ide'].childNodes
    ['tpNF'].Text;

cds_cabecalhoIDENNF.Value := NodeMaster.childNodes['ide'].childNodes
    ['nNF'].Text;
cds_cabecalhonumeronf.Value := fsonumero(cds_cabecalhoIDENNF.Value);
cds_cabecalhoIDEDEMI.Value := fSairDataHoraXml('A',
    NodeMaster.childNodes['ide'].childNodes['dhEmi'].Text);
cds_cabecalhoDATASAIDA.Value := fSairDataHoraXml('D',
    NodeMaster.childNodes['ide'].childNodes['dhSaiEnt'].Text);
cds_cabecalhoHORASAIDA.Value := Formatdatetime('hh:nn:ss',
    fSairDataHoraXml('H', NodeMaster.childNodes['ide'].childNodes
    ['dhSaiEnt'].Text));


cds_cabecalhoIDESERIE.Value := NodeMaster.childNodes['ide'].childNodes
    ['serie'].Text;
cds_cabecalhoIDENATOP.Value := NodeMaster.childNodes['ide'].childNodes
    ['natOp'].Text;
cds_cabecalhoDESTISUF.Value := NodeMaster.childNodes['dest'].childNodes
    ['enderDest'].childNodes['UF'].Text;
cds_cabecalhonomcli_codigo.Value := NodeMaster.childNodes['dest'].childNodes
    ['xNome'].Text;
try
   cds_cabecalhonum_prot.Value := pXMLdoc.DocumentElement.childNodes[1]
     .childNodes['infProt'].childNodes['nProt'].Text;

except
   cds_cabecalhonum_prot.Value := '';
   end;

try
  cds_cabecalhodathorprot.Value := fSairDataHoraXml('A',
    pXMLdoc.DocumentElement.childNodes[1].childNodes['infProt'].childNodes
    ['dhRecbto'].Text);
except
  cds_cabecalhodathorprot.Value := pdatanula;
  end;

cds_cabecalhodest_cnpj.Value := FormatFloat(pDFCNPJ,
  fsonumero(NodeMaster.childNodes['dest'].childNodes['CNPJ'].Text));
if fsonumero(cds_cabecalhodest_cnpj.Value) = 0 then
  cds_cabecalhodest_cnpj.Value := FormatFloat(pDFCNPF,
    fsonumero(NodeMaster.childNodes['dest'].childNodes['CPF'].Text));

cds_cabecalhoDESTENDERDESTXLGR.Value := NodeMaster.childNodes['dest']
    .childNodes['enderDest'].childNodes['xLgr'].Text;
cds_cabecalhoDESTENDERDESTXBAIRRO.Value := NodeMaster.childNodes['dest']
    .childNodes['enderDest'].childNodes['xBairro'].Text;
cds_cabecalhoDESTENDERDESTCEP.Value :=
    MaskCep(NodeMaster.childNodes['dest'].childNodes['enderDest'].childNodes
    ['CEP'].Text);
cds_cabecalhoDESTXNOME.Value := NodeMaster.childNodes['xNome'].Text;

cds_cabecalhoDESTENDERDESTXMUN.Value := NodeMaster.childNodes['dest']
    .childNodes['enderDest'].childNodes['xMun'].Text;
cds_cabecalhodest_fone.Value :=
    MaskFone(NodeMaster.childNodes['dest'].childNodes['enderDest'].childNodes
    ['fone'].Text);
cds_cabecalhoDESTENDERDESTUF.Value := NodeMaster.childNodes['dest'].childNodes
    ['enderDest'].childNodes['UF'].Text;

cds_cabecalhodest_inscricao.Value := NodeMaster.childNodes['dest'].childNodes
    ['IE'].Text;

cds_cabecalhoTOTALICMSTOTVBC.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vBC'].Text));

cds_cabecalhovTotTrib.asfloat :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vTotTrib'].Text));
cds_cabecalhoTOTALICMSTOTVICMS.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vICMS'].Text));

cds_cabecalhoTOTALICMSTOTVBCST.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vBCST'].Text));
cds_cabecalhoTOTALICMSTOTVST.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vST'].Text));
cds_cabecalhoTOTALICMSTOTVPROD.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vProd'].Text));
cds_cabecalhoTOTALICMSTOTVFRETE.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vFrete'].Text));
cds_cabecalhoTOTALICMSTOTVSEG.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vSeg'].Text));
cds_cabecalhoTOTALICMSTOTVDESC.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vDesc'].Text));
cds_cabecalhoTOTALICMSTOTVOUTRO.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vOutro'].Text));
cds_cabecalhoTOTALICMSTOTVIPI.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vIPI'].Text));

cds_cabecalhoTOTALICMSTOTVNF.Value :=
    Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
    .childNodes['vNF'].Text));
cds_cabecalhovalor_texto.Text := 'Valor: ' + FormatFloat(mcasas,cds_cabecalhoTOTALICMSTOTVNF.Value);

cds_cabecalhoemissao_texto.Text := 'Emissão: ' + Formatdatetime(fdt2,
    cds_cabecalhoIDEDEMI.Value);

cds_cabecalhoTT_XNOME.Value := NodeMaster.childNodes['transp'].childNodes
    ['transporta'].childNodes['xNome'].Text;
cds_cabecalhofrete_cif_fob.Value :=
  IntTostr(valint(NodeMaster.childNodes['transp'].childNodes
  ['modFrete'].Text));
cds_cabecalhoTRANSPVEICTRANSPPLACA.Value := NodeMaster.childNodes['transp']
  .childNodes['veicTransp'].childNodes['placa'].Text;
cds_cabecalhoTRANSPVEICTRANSPUF.Value := NodeMaster.childNodes['transp']
  .childNodes['veicTransp'].childNodes['UF'].Text;
cds_cabecalhotransp_cnpj.Value :=
  MaskCPFCNPJ(NodeMaster.childNodes['transp'].childNodes['transporta']
  .childNodes['CNPJ'].Text);
cds_cabecalhoTT_XENDER.Value := NodeMaster.childNodes['transp'].childNodes
  ['transporta'].childNodes['xEnder'].Text;
cds_cabecalhoTT_XMUN.Value := NodeMaster.childNodes['transp'].childNodes
  ['transporta'].childNodes['xMun'].Text;
cds_cabecalhoTT_UF.Value := NodeMaster.childNodes['transp'].childNodes
  ['transporta'].childNodes['UF'].Text;

cds_cabecalhoTRANSPVOLESP.Value := NodeMaster.childNodes['transp'].childNodes
  ['vol'].childNodes['esp'].Text;

cds_cabecalhoTRANSPVOLQVOL.Value :=
  valint(NodeMaster.childNodes['transp'].childNodes['vol'].childNodes
  ['qVol'].Text);
cds_cabecalhoTRANSPVOLMARCA.Value := NodeMaster.childNodes['transp']
  .childNodes['vol'].childNodes['marca'].Text;
cds_cabecalhoTRANSPVOLPESOB.Value :=
  Valfloat(mudapv(NodeMaster.childNodes['transp'].childNodes['vol'].childNodes
  ['pesoB'].Text));
cds_cabecalhoTRANSPVOLPESOL.Value :=
  Valfloat(mudapv(NodeMaster.childNodes['transp'].childNodes['vol'].childNodes
  ['pesoL'].Text));
cds_cabecalhoINFADICINFCPL.Value := NodeMaster.childNodes['infAdic']
  .childNodes['infCpl'].Text;

cds_cabecalhoINFADICINFADFISCO.Value := NodeMaster.childNodes['infAdic']
  .childNodes['infAdFisco'].Text;

cds_cabecalhoTOTALISSQNTOTVISS.Value :=
  Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['vISS'].Text));

cds_cabecalhoTOTALISSQNTOTVBC.Value :=
  Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
  .childNodes['VBC'].Text));

cds_cabecalhoTOTALISSQNTOTVISS.Value :=
  Valfloat(mudapv(NodeMaster.childNodes['total'].childNodes['ICMSTot']
  .childNodes['VISS'].Text));

cds_cabecalhoEMITIM.Value := NodeMaster.childNodes['ide'].childNodes['emit']
  .childNodes['IM'].Text;

cds_cabecalhoobscup.Value := '';


if flfilpad(-65,'_NFCE65OBS','OBSL01') then
   cds_cabecalhoobscup.Value:=cds_cabecalhoobscup.Value+DM4.Tb_FilPad2FPVALOR.AsString+' ';


if flfilpad(-65,'_NFCE65OBS','OBSL02') then
   cds_cabecalhoobscup.Value:=cds_cabecalhoobscup.Value+DM4.Tb_FilPad2FPVALOR.AsString+' ';

cds_cabecalhocep_emit.Value := 'CEP.:' + cds_cabecalhocep_emit.AsString;
cds_cabecalhorecebemos.Value := 'RECEBEMOS DE ' +
  cds_cabecalhoEMITXNOME.AsString +
  ' OS PRODUTOS CONSTANTES DA NOTAS FISCAL INDICADA AO LADO';
cds_cabecalhofantasia_cliente.Value := pDadosNFCEChvAcesso.pFantasia;
if (fPrimeiroNomeIgual(cds_cabecalhoEMITXNOME.AsString,  pDadosNFCEChvAcesso.pFantasia)) then
    cds_cabecalhorazao_fantasia.Value := cds_cabecalhoEMITXNOME.Value
else
   begin
   cds_cabecalhorazao_fantasia.Value := cds_cabecalhoEMITXNOME.Value + #13 +
   pDadosNFCEChvAcesso.pFantasia;
   end;




  // Writeln(f_tst,'LINHA 948');

NodeSec := NodeMaster.childNodes.FindNode('det');

mItem := 0;
NodeSec.childNodes.First;
// Writeln(f_tst,'LINHA 954');

repeat
  // referencia a tag <prod> dentro de <det>

  NodeTmp := NodeSec.childNodes['prod'];

  // da pra ver que é um XML resumido da NFe (so temos uma tag <prod> para cada <det> então não precisaria da linha abaixo
  // agora se tivéssemos mais de uma seria o caso de posicionar também na primeira ocorrencia.
  NodeTmp.childNodes.First;

  mDados_Lid := trim(NodeTmp.childNodes['xProd'].Text);
  if mDados_Lid <> '' then
  begin
    cds_detalhe.Append;
    // pega os dados que vc quiser dentro da tag <prod>
    mItem := mItem + 1;
    // verifica lote de mercadorias

    cds_detalheDETINFADPROD.Value :=
      trim(NodeSec.childNodes['infAdProd'].Text);

    mLotes := '';
    NodeMed := NodeTmp.childNodes.FindNode('med');
    mQtdLote := 0;
    mQtdPed := Valfloat(mudapv(NodeTmp.childNodes['qCom'].Text));

    if NodeMed <> nil then
    begin
      NodeMed.childNodes.First;
      repeat
        if (mQtdLote + Valfloat(mudapv(NodeMed.childNodes['qLote'].Text))) <= mQtdPed
        then
        begin
          mLotes := mLotes + #13 + 'LOTE ' + NodeMed.childNodes['nLote'].Text
            + ' DT.VCTO ' + copy(NodeMed.childNodes['dVal'].Text, 1 + 8, 2) +
            '/' + copy(NodeMed.childNodes['dVal'].Text, 1 + 5, 2) + '/' +
            copy(NodeMed.childNodes['dVal'].Text, 1, 4) + ' QUANTIDADE ' +
            FormatFloat(mcasqtd,
            Valfloat(mudapv(NodeMed.childNodes['qLote'].Text))) + ' ';
          mQtdLote := mQtdLote +
            Valfloat(mudapv(NodeMed.childNodes['qLote'].Text));
        end;
        NodeMed := NodeMed.NextSibling;
      until NodeMed = nil;
      if mQtdLote <> mQtdPed then
      begin
        mLotes := mLotes + #13 + 'SEM LOTE QUANTIDADE ' +
          FormatFloat(mcasqtd, mQtdPed - mQtdLote) + ' ';
      end;
    end;

    // Writeln(f_tst,'LINHA 995');

    // termino dos lotes de mercadorias



    // armas

    mArmas := '';
    NodeArmas := NodeTmp.childNodes.FindNode('arma');

    if NodeArmas <> nil then
    begin
      NodeArmas.childNodes.First;
      repeat
        // mArmas:=mArmas+#13+'Serie Arma '+NodeArmas.ChildNodes['nSerie'].text
        // +' Serie Cano '+NodeArmas.ChildNodes['nCano'].text;
        mArmas := mArmas + #13 + 'Descriçao Completa: ' + NodeArmas.childNodes
          ['descr'].Text;

        NodeArmas := NodeArmas.NextSibling;
      until NodeArmas = nil;
    end;

    // armas

    cds_detalhenomepro.AsString := NodeTmp.childNodes['xProd'].Text;

    if not mDESCCOMPSEGLIN then
    begin
      cds_detalhenomepro.AsString := cds_detalhenomepro.AsString + #13' ' +
        trim(NodeSec.childNodes['infAdProd'].Text);
      cds_detalheDETINFADPROD.Value := '';
    end;

    cds_detalheitem_num.AsInteger := mItem;
    cds_detalhenomepro.AsString := cds_detalhenomepro.AsString +
      mLotes + mArmas;
    cds_detalheDETPRODQCOM.asfloat :=
      Valfloat(mudapv(NodeTmp.childNodes['qCom'].Text));

    cds_detalheVFRETE.asfloat :=
      Valfloat(mudapv(NodeTmp.childNodes['vFrete'].Text));

    cds_detalheDETPRODCPROD.AsString := NodeTmp.childNodes['cProd'].Text;
    cds_detalheDETPRODNCM.AsString := NodeTmp.childNodes['NCM'].Text;
    cds_detalheCSTB_CBENEF.AsString:=NodeTmp.ChildNodes['CSTB_CBENEF'].text;    
    cds_detalheDETPRODCFOP.AsString := NodeTmp.childNodes['CFOP'].Text;

    cds_detalheDETPRODUCOM.Value := NodeTmp.childNodes['uCom'].Text;
    cds_detalheVDESC.Value :=
      Valfloat(mudapv(NodeTmp.childNodes['vDesc'].Text));
    cds_detalheDETPRODVUNCOM.Value :=
      Valfloat(mudapv(NodeTmp.childNodes['vUnCom'].Text));
    cds_detalheDETPRODVPROD.Value :=
      Valfloat(mudapv(NodeTmp.childNodes['vProd'].Text));

    NodeImposto := NodeSec.childNodes['imposto'];
    if NodeImposto <> nil then
    begin
      if NodeImposto.childNodes[0].NodeName = 'ICMS' then
      begin
        NodeTmp_Imp := NodeImposto.childNodes['ICMS'];
        NodeTmp_Imp.childNodes.First;
        if NodeTmp_Imp.childNodes[0].NodeName = 'ICMS00' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMS00'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalhecst.Value := NodeTmp_ImpCateg.childNodes['orig'].Text +
            NodeTmp_ImpCateg.childNodes['CST'].Text;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMS10' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMS10'];
          NodeTmp_ImpCateg.childNodes.First;

          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalhecst.Value := NodeTmp_ImpCateg.childNodes['orig'].Text +
            NodeTmp_ImpCateg.childNodes['CST'].Text;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMS20' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMS20'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalhecst.Value := NodeTmp_ImpCateg.childNodes['orig'].Text +
            NodeTmp_ImpCateg.childNodes['CST'].Text;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMS30' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMS30'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalhecst.Value := NodeTmp_ImpCateg.childNodes['orig'].Text +
            NodeTmp_ImpCateg.childNodes['CST'].Text;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMS40' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMS40'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalhecst.Value := NodeTmp_ImpCateg.childNodes['orig'].Text +
            NodeTmp_ImpCateg.childNodes['CST'].Text;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMS50' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMS50'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalhecst.Value := NodeTmp_ImpCateg.childNodes['orig'].Text +
            NodeTmp_ImpCateg.childNodes['CST'].Text;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMS60' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMS60'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalhecst.Value := NodeTmp_ImpCateg.childNodes['orig'].Text +
            NodeTmp_ImpCateg.childNodes['CST'].Text;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMS70' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMS70'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalhecst.Value := NodeTmp_ImpCateg.childNodes['orig'].Text +
            NodeTmp_ImpCateg.childNodes['CST'].Text;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMS90' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMS90'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalhecst.Value := NodeTmp_ImpCateg.childNodes['orig'].Text +
            NodeTmp_ImpCateg.childNodes['CST'].Text;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMSSN101' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMSSN101'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalheCSOSN.Value := NodeTmp_ImpCateg.childNodes['CSOSN'].Text;
          cds_detalhecst.Value := cds_detalheORI_PROD.Value +
            cds_detalheCSOSN.Value;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));

        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMSSN102' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMSSN102'];
          NodeTmp_ImpCateg.childNodes.First;

          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalheCSOSN.Value := NodeTmp_ImpCateg.childNodes['CSOSN'].Text;
          cds_detalhecst.Value := cds_detalheORI_PROD.Value +
            cds_detalheCSOSN.Value;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));

        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMSSN201' then
        begin

          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMSSN201'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalheCSOSN.Value := NodeTmp_ImpCateg.childNodes['CSOSN'].Text;
          cds_detalhecst.Value := cds_detalheORI_PROD.Value +
            cds_detalheCSOSN.Value;
          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));
        end

        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMSSN202' then
        begin

          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMSSN202'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalheCSOSN.Value := NodeTmp_ImpCateg.childNodes['CSOSN'].Text;
          cds_detalhecst.Value := cds_detalheORI_PROD.Value +
            cds_detalheCSOSN.Value;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));

        end
        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMSSN500' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMSSN500'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalheCSOSN.Value := NodeTmp_ImpCateg.childNodes['CSOSN'].Text;
          cds_detalhecst.Value := cds_detalheORI_PROD.Value +
            cds_detalheCSOSN.Value;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));

        end

        else if NodeTmp_Imp.childNodes[0].NodeName = 'ICMSSN900' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['ICMSSN900'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalheORI_PROD.Value := NodeTmp_ImpCateg.childNodes
            ['orig'].Text;
          cds_detalheCSOSN.Value := NodeTmp_ImpCateg.childNodes['CSOSN'].Text;
          cds_detalhecst.Value := cds_detalheORI_PROD.Value +
            cds_detalheCSOSN.Value;

          cds_detalheICMSVBC.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['vBC'].Text));
          cds_detalhealiq_icms.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pICMS'].Text));

        end;
      end;
      if NodeImposto.childNodes[1].NodeName = 'IPI' then
      begin
        NodeTmp_Imp := NodeImposto.childNodes['IPI'];
        NodeTmp_Imp.childNodes.First;
        if NodeTmp_Imp.childNodes[1].NodeName = 'IPITrib' then
        begin
          NodeTmp_ImpCateg := NodeTmp_Imp.childNodes['IPITrib'];
          NodeTmp_ImpCateg.childNodes.First;
          cds_detalhepercipi.Value :=
            Valfloat(mudapv(NodeTmp_ImpCateg.childNodes['pIPI'].Text));
        end;
      end;
    end;

    mDados_Lid := cds_detalhenomepro.AsString;
    cds_detalhe.Post;

  end;
  NodeSec := NodeSec.NextSibling;

until NodeSec = nil;
// Writeln(f_tst,'LINHA 1202');

NodeSec := NodeMaster.childNodes.FindNode('total');

NodeSec := NodeMaster.childNodes.FindNode('pag');
{ if nodesec<>nil then
  NodeSec := NodeSec.ChildNodes.FindNode('dup');
}
// NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('cobr');
// Esse nó vai ser usado no LOOP
if NodeSec <> nil then
begin
  mItem := 0;
  // NodeSec := NodePai;
    NodeSec.childNodes.First;

      NodeSec := NodeMaster.childNodes.FindNode('pag');

    NodeSec := NodeSec.ChildNodes.FindNode('detPag');

    repeat

    if NodeSec<>nil then
       begin
       if fsonumero(NodeSec.childNodes['vPag'].Text)>0 then
          begin
          cds_vcto.Append;
          cds_vctonomfpgto.Value := fRetornarNomeFormaSefaz(NodeSec.childNodes['tPag'].Text);
          cds_vctoVVALOR.asfloat :=
          Valfloat(mudapv(NodeSec.childNodes['vPag'].Text));
          cds_vcto.Post;
          end;
       end;
    NodeSec := NodeSec.NextSibling;
  until NodeSec = nil;
end;

  // termino dos vencimentos


  // inicio qrcode

if cds_cabecalhomodelo.AsInteger = 65 then
   begin
   NodeSec := pXMLdoc.DocumentElement.childNodes.First.childNodes.FindNode
      ('infNFeSupl');
   if NodeSec = nil then
     NodeSec := pXMLdoc.DocumentElement.childNodes.FindNode('infNFeSupl');

   if NodeSec <> nil then
      begin
      cds_cabecalhoqrcode.Value := trim(NodeSec.childNodes['qrCode'].Text);
      if cds_cabecalhoqrcode.AsString <> '' then
         begin
         if fLerGenerico_query('CADPFP' + ',' + 'CADFP' ,
           'PFPCOMPROVANTE_VINC,1 as PFPPARCELA, fpdesc as PFPNOMFP',
           'PFPCODEMP=' + IntTostr(pDadosNFCEChvAcesso.pCodEmp) + ' and PFPCHAVE='
           + IntTostr(pDadosNFCEChvAcesso.pChave) + ' and PFPLOTSEQ=' +
           IntTostr(pDadosNFCEChvAcesso.pChaveAno)+
           ' and not PFPCOMPROVANTE_VINC is null ' + ' and fpcodigo=PFPforma ',
           query_consulta) then

           begin
           mCompVinc := TStringList.Create;
           while not query_consulta.Eof do
              begin
              mCompVinc.Text := query_consulta.FieldByName
              ('PFPCOMPROVANTE_VINC').AsString;
            // INICIO
              pQtdVias := 2;
              for x_vias := 1 to pQtdVias do
                 begin
                   for x_Comprov := 0 to mCompVinc.Count - 1 do
                     begin
                     pIdent_Item := 0;
                     pIdent_SubItem := 0;
                     pIdent_Conteudo := '';
                     if not mNfce.fTef_IdentificadorReg_impres(mCompVinc[x_Comprov],
                        pIdent_Item, pIdent_SubItem, pIdent_Conteudo) then
                        begin
                        Continue;
                        end;
                if pIdent_Item = 029 then
                begin
                  // RLMemo_comprovante.Lines.Add(pIdent_Conteudo);
                end;
              end;
              // RLMemo_comprovante.Lines.Add('');
            end;
            query_consulta.Next;
          end;
        end;
      end;
    end;
  end;

  // qrcode termino


  // termino qrcode

  cds_cabecalhodata_vencimentos.Value := '';
  cds_vcto.First;
  if (cds_vcto.IsEmpty) then
    cds_cabecalhodata_vencimentos.Value := ''
  else if ((cds_vcto.RecordCount = 1) and (AVISTASEMDUP = true) and
    (cds_vctoVDATA.AsDateTime = cds_cabecalhoIDEDEMI.AsDateTime)) then
    cds_cabecalhodata_vencimentos.Value := 'Pagamento a Vista'
  else
  begin

    while not cds_vcto.Eof do
    begin
      cds_cabecalhodata_vencimentos.Value := cds_cabecalhodata_vencimentos.Value
        + '[' + insere2(cds_vctonumdup.AsString, ' ', 10) + ' ' +
        insere(FormatFloat('#,##0.00', cds_vctoVVALOR.asfloat), ' ', 13) + ' ' +
        insere(Formatdatetime('dd/mm/yy', cds_vctoVDATA.AsDateTime), ' ',
        10) + ']  ';
      cds_vcto.Next;
    end;
  end;
pfechartudo;

end;

function TFrm_NFCE_Impressao.fImprimirNFCE(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso):boolean;
var

  fTexto: TextFile;
  mtexto: string;
  cBuffer: AnsiString;
  F: TextFile;
  pCodBar: AnsiString;
  x_qtd: integer;
  x_lin: integer;
  mQtdItens: integer;
  mTotBru: Real;
  mTotDes: Real;
  mTotFrete: Real;
  mtotaltroco: Real;
  mpos_ender: integer;
  mconsultal01: string;
  mconsultal02: string;
  mpercaprox: Real;
  mObs: TStringList;
  x_Obs: integer;
  Device, Driver, Port: array [0 .. 255] of Char;
  hDeviceMode: THandle;
  mPorta_Impressao: string;
  Buffer2: array of Char;
  Size2: dword;
  mtipo_impressora: string;
  mimpressora_nome: string;
  mitem_inicio: string;
  mItem_Final: String;
  Linha: Integer;

  mLinhas: tStrings;


  procedure fImprimir(pTexto: string);
  begin
    writeln(F, pTexto);
  end;

  procedure fImprimir_fonte(pTexto,pFonte: string);
  begin
    writeln(F, pFonte+ pTexto);
  end;


  procedure fabrirgaveta_nova;
  begin

  //  writeln(F, chr(27) + chr(112) + chr(0) + chr(50) + chr(200));

  end;

{ procedure fCortarPapel;
  begin
  writeln(f,chr(39)+chr(integer('V'))+chr(65)+chr(0));
  end;


}
  procedure fCortarPapel;
  begin
      fImprimir(mfonte_ecf.CortarPapel);
  end;


  procedure fImprimirComprovanteVinculado;
  var
    mCompVinc: TStrings;
    x_vias: integer;
    x_Comprov: integer;

    pIdent_Item: integer;
    pIdent_SubItem: integer;
    pIdent_Conteudo: AnsiString;

  begin
    if fLerGenerico_query('CADPFP'+ ',' + 'CADFP' ,
      'PFPCOMPROVANTE_VINC,1 as PFPPARCELA, fpdesc as PFPNOMFP',
      'PFPCODEMP=' + IntTostr(pDadosNFCEChvAcesso.pCodEmp) + ' and PFPCHAVE=' +
      IntTostr(pDadosNFCEChvAcesso.pChave) + ' and PFPLOTSEQ=' + IntTostr(pDadosNFCEChvAcesso.pChaveAno)
      + ' and not PFPCOMPROVANTE_VINC is null  ' +
      ' and fpcodigo=PFPFORMA ', query_consulta) then
    begin

      mCompVinc := TStringList.Create;
      fCortarPapel;

      while not query_consulta.Eof do
      begin
        mCompVinc.Text := query_consulta.FieldByName('PFPCOMPROVANTE_VINC')
          .AsString;
        fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));

        for x_vias := 1 to log_QtdViaTef do
        begin
          for x_Comprov := 0 to mCompVinc.Count - 1 do
          begin
            pIdent_Item := 0;
            pIdent_SubItem := 0;
            pIdent_Conteudo := '';
            if not mNfce.fTef_IdentificadorReg_impres(mCompVinc[x_Comprov],
              pIdent_Item, pIdent_SubItem, pIdent_Conteudo) then
            begin
              Continue;
            end;
            if pIdent_Item = 029 then
            begin
              fImprimir(pIdent_Conteudo);
            end;
          end;
          fImprimir(' ');
        end;
        query_consulta.Next;
        fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));
        fCortarPapel;
        fImprimir(' ');

      end;
    end;
  end;


Begin

  result := true;
     begin
        begin

        Printer.PrinterIndex := Printer.printers.IndexOf(pDadosNFCEChvAcesso.pImpressora);
        mPorta_Impressao := mNfce.GetCurrentPrinterPort;
        mimpressora_nome :=
          lowercase(Printer.printers.Strings[Printer.PrinterIndex]);
        mNfce.pSetarFontesECF(mimpressora_nome, mFonte_ecf);
        if pos('daruma', mimpressora_nome) > 0 then
          mtipo_impressora := mPadraoNFCE_DARUMA
        else if pos('epson', mimpressora_nome) > 0 then
          mtipo_impressora := mPadraoNFCE_EPSON
        else if pos('elgin', mimpressora_nome) > 0 then
          mtipo_impressora := mPadraoNFCE_ELGIN
        else if pos('bematech', mimpressora_nome) > 0 then
          mtipo_impressora := mPadraoNFCE_BEMATECH
        else if pos('mp-4200', mimpressora_nome) > 0 then
          mtipo_impressora := mPadraoNFCE_BEMATECH

        else
          mtipo_impressora := mPadraoNFCE_ELGIN;

        // Showmessage(Printer.Printers.Strings[Printer.PrinterIndex]);

         end;
      end;

  try
     begin
    if (Pos('USB',UpperCase(mPorta_Impressao))>0) or
       (Pos('ESD',UpperCase(mPorta_Impressao))>0) or
       (Pos('COM',UpperCase(mPorta_Impressao))>0) then
      begin
        mNfce.fRedirecionarPoartaUsbparaLPT1(mimpressora_nome);
        mPorta_Impressao := 'LPT1';
      end;
     AssignFile(F, mPorta_Impressao);
     end;
{
  else
     AssignFile(F,pDadosNFce.pportanfce);
}

//    ShowMessage(mimpressora_nome);

    try
       Rewrite(F);
    except
       begin
       pDadosNFCEChvAcesso.pImpressora:='Visualizar';
       fImprimirGeral(pDadosNFCEChvAcesso);
       result:=true;
       exit;
       end;
       end;
    fImprimir_fonte(insere('-', '-', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    fImprimir_fonte(Centra(cds_cabecalhoEMITXNOME.AsString, ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    if trim(DM1.Tb_EmpFANTASIA.AsString)<>'' then
       begin
       fImprimir_fonte(Centra(DM1.Tb_EmpFANTASIA.AsString, ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
       end;

    fImprimir_fonte(Centra(cds_cabecalhofone_fax.AsString, ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    fImprimir_fonte(insere2(cds_cabecalhoemit_cnpj.AsString, ' ', 28) +
      insere(cds_cabecalhoEMITIE.AsString, ' ', mfonte_ecf.mqtdcarlin - 28),mfonte_ecf.condensado_ativa);

    mLinhas := fQuebraStringTStringList(mfonte_ecf.mqtdcarlin, cds_cabecalhoemit_endereco_comp.Text);
    for x_lin := 0 to mLinhas.Count - 1 do
    begin
      fImprimir_fonte(Centra(mLinhas[x_lin], ' ', 28) +
        insere(cds_cabecalhoEMITIE.AsString, ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    end;
    fImprimir_fonte(Centra(Formatdatetime(fdt2 + ' hh:nn:ss',
      cds_cabecalhoIDEDEMI.AsDateTime), ' ', mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    fImprimir_fonte(Centra('DANFE NFCE - DOCUMENTO AUXILIAR DA NOTA FISCAL', ' ',
      mfonte_ecf.mqtdcarlin),mfonte_ecf.condensado_ativa);
    fImprimir_fonte(Centra('DE CONSUMIDOR ELETRONICA', ' ', mfonte_ecf.mqtdcarlin),'');

 fImprimir_fonte('Item Codigo            descricao','');
 fImprimir_fonte('    Qtde    UN           Vlr.Unit       Vlr.Tot','');

{
Item Codigo       descricao
Qtde     UN    Vlr.Unit Vlr.Total
001 1234567890123 1234567890123456789012345678901234567890123456
01,347 X 19,99 17 35.348
}
    mQtdItens := 0;
    mTotBru := 0;
    mTotDes := 0;
    mTotFrete :=0 ;
    cds_detalhe.First;
    while not cds_detalhe.Eof do
    begin
      mQtdItens := mQtdItens + 1;
      mTotBru := mTotBru + cds_detalheDETPRODVPROD.asfloat;
      mTotDes := mTotDes + cds_detalheVDESC.asfloat;
      mTotFrete := mTotFrete + cds_detalheVFRETE.asfloat;

      mitem_inicio:=FormatFloat('000', cds_detalheitem_num.AsInteger)
      +' '+insere3(cds_detalheDETPRODCPROD.AsString, ' ', 13)
      +' '+cds_detalhenomepro.AsString;

      mItem_Final:=cds_detalheDETPRODQCOM.AsString+' '
        +cds_detalheDETPRODUCOM.AsString+' x '+FormatFloat(mCasasPU, cds_detalheDETPRODVUNCOM.asfloat)+' ';
      if cds_detalhealiq_icms.AsFloat>0 then
         mItem_Final:=mItem_Final+'['+cds_detalhealiq_icms.AsString+']'
      else if mGer_Emp_CRT=2 then
         begin
         if copy(cds_detalhecst.AsString,1,1)='4' then
            mItem_Final:=mItem_Final+'[II]'
         else
            mItem_Final:=mItem_Final+'[FF]';
         end
      else

         begin
         if (cds_detalheCSOSN.AsString='203') or
            (cds_detalheCSOSN.AsString='300') or
            (cds_detalheCSOSN.AsString='400') then
            mItem_Final:=mItem_Final+'[II]'
         else
            mItem_Final:=mItem_Final+'[FF]';
         end;
      if length(mitem_inicio)>mfonte_ecf.mqtdcarlin then
         begin
         fImprimir_fonte(copy(mitem_inicio,1,mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);
         mitem_inicio:=copy(mitem_inicio,mfonte_ecf.mqtdcarlin+1,length(mitem_inicio)-mfonte_ecf.mqtdcarlin);
         end;
      mItem_Final:=mItem_Final+' '+FormatFloat(mCasasPU, cds_detalheDETPRODVPROD.asfloat);
      if length(mitem_inicio+' '+mItem_Final)>mfonte_ecf.mqtdcarlin then
         begin
         fImprimir_fonte(mitem_inicio,mfonte_ecf.texto_esquerda);
         fImprimir_fonte(mItem_Final,mfonte_ecf.texto_direita);
         end
      else
         begin
         mitem_inicio:=mitem_inicio+' '+insere(mItem_Final,' ',mfonte_ecf.mqtdcarlin-length(mitem_inicio));
         fImprimir_fonte(mitem_inicio,mfonte_ecf.texto_esquerda);
         end;
      if cds_detalheVDESC.asfloat > 0 then
         begin
         fImprimir_fonte('desconto sobre item ' + FormatFloat('000',
         cds_detalheitem_num.AsInteger) + insere(FormatFloat(mcasas,
         cds_detalheVDESC.asfloat), ' ', 30),mfonte_ecf.texto_esquerda);
         end;
      cds_detalhe.Next;
    end;

    fImprimir_fonte(insere('-', '-', mfonte_ecf.mqtdcarlin),mfonte_ecf.texto_esquerda);

    fImprimir('QTD. TOTAL DE ITENS' + insere(IntTostr(mQtdItens), ' ',
      mfonte_ecf.mqtdcarlin - 19));
    if (mTotDes > 0) OR (mTotFrete>0) then
       begin
       fImprimir('VALOR TOTAL R$     ' + insere(FormatFloat(mcasas, mTotBru),
        ' ', mfonte_ecf.mqtdcarlin - 19));
        if (mTotDes>0) then
           begin
           fImprimir('DESCONTO R$        ' + insere(FormatFloat(mcasas, mTotDes),
           ' ', mfonte_ecf.mqtdcarlin - 19));
           end;
        if (mTotFrete>0) then
           begin
           fImprimir('FRETE R$           ' + insere(FormatFloat(mcasas, mTotFrete),
           ' ', mfonte_ecf.mqtdcarlin - 19));
           end;

       end;
    fImprimir('VALOR A PAGAR R$   ' + insere(FormatFloat(mcasas,
      (mTotBru+mtotFrete) - mTotDes), ' ', mfonte_ecf.mqtdcarlin - 19));
    mtotaltroco := 0;
    fImprimir('FORMA DE PAGAMENTO ' + insere('VALOR PAGO', ' ',
      mfonte_ecf.mqtdcarlin - 19));
    cds_vcto.First;

    while not cds_vcto.Eof do
    begin
      mtotaltroco := mtotaltroco + cds_vctoVVALOR.asfloat;
      fImprimir(insere2(cds_vctonomfpgto.AsString, ' ', 19) +
        insere(FormatFloat(mcasas, cds_vctoVVALOR.asfloat), ' ',
        mfonte_ecf.mqtdcarlin - 19));

      cds_vcto.Next;
    end;
    mtotaltroco := arredonda((mtotaltroco - ( (mTotBru+mTotFrete) - mTotDes)), 2);
    if mtotaltroco > 0 then
    begin
      fImprimir(insere2('TROCO', ' ', 19) + insere(FormatFloat(mcasas,
        mtotaltroco), ' ', mfonte_ecf.mqtdcarlin - 19));
    end;

    fImprimir(Centra('AREA DE MENSAGEM FISCAL', ' ', mfonte_ecf.mqtdcarlin));

    fImprimir(Centra('Numero: ' + FormatFloat('000000000',
      cds_cabecalhoIDENNF.AsInteger) + ' Serie ' + FormatFloat('000',
      valint(cds_cabecalhoIDESERIE.AsString)), ' ', mfonte_ecf.mqtdcarlin));

    fImprimir(Centra('Emissao: ' + Formatdatetime(fdt2 + ' hh:nn:ss',
      cds_cabecalhoIDEDEMI.AsDateTime), ' ', mfonte_ecf.mqtdcarlin));

    mpos_ender := pos('?', cds_cabecalhoqrcode.AsString);

//    fSalvarTextopara(cds_cabecalhoqrcode.AsString, 'c:\qrcode.txt');
    if mpos_ender = 0 then
    begin
      mconsultal01 := '';
      mconsultal02 := ''
    end
    else
    begin
      mconsultal01 := 'Consulta a Chave de Acesso em ' +
        copy(cds_cabecalhoqrcode.AsString, 1, mpos_ender - 1);
      mLinhas := fQuebraStringTStringList(mfonte_ecf.mqtdcarlin, mconsultal01);
      for x_lin := 0 to mLinhas.Count - 1 do
      begin
        fImprimir(Centra(mLinhas[x_lin], ' ', mfonte_ecf.mqtdcarlin));
      end;
    end;

    fImprimir(' ');

    fImprimir(Centra('CHAVE DE ACESSO', ' ', mfonte_ecf.mqtdcarlin));

    mLinhas := fQuebraStringTStringList(mfonte_ecf.mqtdcarlin, cds_cabecalhochacesso_bloco1.AsString +
      ' ' + cds_cabecalhochacesso_bloco2.AsString);
    for x_lin := 0 to mLinhas.Count - 1 do
    begin
      fImprimir(Centra(mLinhas[x_lin], ' ', mfonte_ecf.mqtdcarlin));
    end;

    fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));

    if fsonumero(cds_cabecalhodest_cnpj.AsString) = 0 then
    begin
      fImprimir(Centra('CONSUMIDOR NAO IDENTIFICADO', ' ', mfonte_ecf.mqtdcarlin));
    end
    else
    begin
      fImprimir(Centra('CONSUMIDOR ' + cds_cabecalhodest_cnpj.AsString, ' ',
        mfonte_ecf.mqtdcarlin));

      fImprimir('NOME: ' + cds_cabecalhonomcli_codigo.AsString);
      if cds_cabecalhoDESTENDERDESTXLGR.AsString <> '' then
      begin
        mconsultal01 := 'Endereco: ' + cds_cabecalhoDESTENDERDESTXLGR.AsString;
        if cds_cabecalhoDESTENDERDESTXBAIRRO.AsString <> '' then
          mconsultal01 := mconsultal01 +
            cds_cabecalhoDESTENDERDESTXBAIRRO.AsString;
        mLinhas := fQuebraStringTStringList(mfonte_ecf.mqtdcarlin, mconsultal01);
        for x_lin := 0 to mLinhas.Count - 1 do
        begin
          fImprimir(Centra(mLinhas[x_lin], ' ', mfonte_ecf.mqtdcarlin));
        end;
      end;
      if cds_cabecalhoDESTENDERDESTXMUN.AsString <> '' then
      begin
        fImprimir('Cidade..: ' + cds_cabecalhoDESTENDERDESTXMUN.AsString);
      end;
    end;
    fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));
//    fImprimir(' ');

    if mPadraoNFCE_BEMATECH = mtipo_impressora then
      pCodBar := fqrcode_bematech(cds_cabecalhoqrcode.AsString)
    else if mPadraoNFCE_DARUMA = mtipo_impressora then
      pCodBar := fqrcode_daruma(cds_cabecalhoqrcode.AsString)
    else
      pCodBar := fqrcode_Epson(cds_cabecalhoqrcode.AsString);

    fImprimir(pCodBar);
  //  fImprimir(' ');
    if (cds_cabecalhotpemis.Value = 1) then
    begin
      if (cds_cabecalhonum_prot.AsString <> '') then
      begin
        fImprimir(Centra('Protocolo de autorizacao ', ' ', mfonte_ecf.mqtdcarlin));

        fImprimir(Centra(cds_cabecalhonum_prot.AsString + ' ' +
          Formatdatetime(fdt2 + ' ' + fhr, cds_cabecalhodathorprot.AsDateTime),
          ' ', mfonte_ecf.mqtdcarlin))

      end
      else
      begin
        fImprimir(Centra('*********ERRO NO PROTOCOLO**********', ' ',
          mfonte_ecf.mqtdcarlin));
      end
    end
    else
    begin
      if (cds_cabecalhonum_prot.AsString <> '') then
      begin
        fImprimir(Centra('Protocolo de autorizacao ', ' ', mfonte_ecf.mqtdcarlin));

        fImprimir(Centra(cds_cabecalhonum_prot.AsString + ' ' +
          Formatdatetime(fdt2 + ' ' + fhr, cds_cabecalhodathorprot.AsDateTime),
          ' ', mfonte_ecf.mqtdcarlin));

      end
      else
      begin
        fImprimir(Centra('***NFCE - Emitida em Contigencia***', ' ',
          mfonte_ecf.mqtdcarlin));
      end;
    end;

    if cds_cabecalhotpamb.AsInteger = 2 then
    begin
      fImprimir(Centra('***NFCE - em Homologação***', ' ', mfonte_ecf.mqtdcarlin));
    end;

//    fImprimir(' ');

    if cds_cabecalhovTotTrib.asfloat > 0 then
    begin
      mpercaprox := (cds_cabecalhovTotTrib.asfloat * 100) /
        cds_cabecalhoTOTALICMSTOTVNF.asfloat;
      fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));

      fImprimir(Centra('Informacao dos Tributos Totais e Incidentes', ' ',
        mfonte_ecf.mqtdcarlin));

      fImprimir(Centra('(Lei Federal 12.741/2012)', ' ', mfonte_ecf.mqtdcarlin));

      fImprimir('Valor aproximado dos impostos:   ' + FormatFloat(mcasas,
        cds_cabecalhovTotTrib.asfloat) + '(' + FormatFloat(mcasas_pct,
        mpercaprox) + ')');

      fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));
    end;
//    fImprimir('');
    fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));

    if length(cds_cabecalhoobscup.AsString) > 1 then
    begin
      mObs := TStringList.Create;
      mObs.Text := cds_cabecalhoobscup.AsString;
      for x_Obs := 0 to mObs.Count - 1 do
      begin
        fImprimir(mObs[x_Obs]);
      end;
      freeandnil(mObs);
    end;

    fImprimir(Centra('OPR: ' + floattostr(codusr) + ' ' + nomusr, ' ',
      mfonte_ecf.mqtdcarlin));

    // mNomePDF:=pc_pastatemp+'nfce.pdf';
    // mNomePDF:=fRetornaTempLivre('nfce','.pdf');
//              LINDOMAR

    fImprimirComprovanteVinculado;

    fImprimir('.');
    fImprimir('.');
    fImprimir('.');
    fImprimir('.');

    fImprimir(mfonte_ecf.CortarPapel);

    fabrirgaveta_nova;

    // termino

    {
      cBuffer :=  #27 + #97 + #1 +        // esse código faz a centralização
      #29 + #107 + #81 +      // esse é o do qr code
      #2 + #12 + #8 + #1 +    // aqui é o tamanho
      #19 +             // tamanho de caracteres correspondente ao texto
      #0 +                    // bit de partida
      #119 + #119 + #119 + #46 + #98 + #101 + #109 + #97 + #116 + #101 + #99 + #104 + #46 + #99 + #111 + #109 + #46 + #98 + #114;
      //            + #119 + #119 + #119 + #46 + #98 + #101 + #109 + #97 + #116 + #101 + #99 + #104 + #46 + #99 + #111 + #109 + #46 + #98 + #114
    }





    // WriteLn(F, pCodbar);

//    writeln(F);
    CloseFile(F);
  except
    ON E: Exception do
      MessageDlg('Erro ao imprimir nfce porta ' + pDadosNFCEChvAcesso.pImpressora + '. ERRO ' +
        E.Message, mtError, [mbOk], 0);
  end;

end;



function TFrm_NFCE_Impressao.fQrCode_Bematech(Linha: AnsiString): string;
var
  cCaracter: AnsiString;
  j, i, iTam1, iTam2: integer;
begin
  result := #27'@'#29#249#32#48;// + cCRLF;
  cCaracter := '';

  for j := 1 to Length(Linha) do
    cCaracter := cCaracter + AnsiChar(chr(Ord(Linha[j])));
  if (Length(Linha) > 255) then
  begin
    iTam1 := Length(Linha) mod 255;
    iTam2 := Length(Linha) div 255;
  end
  else
  begin
    iTam1 := Length(Linha);
    iTam2 := 0;
  end;
  result := result + #27 + #97 + #49 + #1 + #29 + #107 + #81 + #0 + #0 + #4 + #2
    + AnsiChar(chr(iTam1)) + AnsiChar(chr(iTam2)) + cCaracter;
end;


function TFrm_NFCE_Impressao.fQrCode_daruma(pTexto: string): AnsiString;
var
  x_car: integer;
  bMenos, bmais, iQtdBytes, iLargMod, i, inivelCorrecao: integer;
  sUrl, sBuffer, sNivelCorrecao: AnsiString;
begin
  iQtdBytes := 338;
  iLargMod := 4;
  bMenos := iQtdBytes shr 8;
  bmais := iQtdBytes AND 255 + 2;
  sNivelCorrecao := 'M';
  for i := 1 to Length(sNivelCorrecao) do
  begin
    inivelCorrecao := (Ord(sNivelCorrecao[i]));
  end;
  result := #27 + #129 + chr(bmais) + chr(bMenos) + chr(iLargMod) +
    chr(inivelCorrecao);
  result := result + #27 + pTexto;
end;




function TFrm_NFCE_Impressao.fQrCode_Epson(pTexto: AnsiString): string;
var
//  mtamanho: integer;
  iTam1: integer;
  iTam2: integer;

begin

if (Length(pTexto) < 300) then
    pTexto:=Insere2(pTexto,' ',300);

  if (Length(pTexto) > 255) then
  begin
    iTam1 := Length(pTexto) mod 255;
    iTam2 := Length(pTexto) div 255;
  end
  else
  begin
    iTam1 := Length(pTexto);
    iTam2 := 0;
  end;

  result := result + chr(27) + chr(97) + chr(49);
  result := result + chr(29) + chr(79) + chr(0) + chr(0);


  // Select the model
  result := result + chr(29) + chr(40) + chr(107) + chr(4) + chr(0) + chr(49) +
    chr(65) + chr(50) + chr(0);// + cCRLF;
  // Set the size
  result := result + chr(29) + chr(40) + chr(107) + chr(3) + chr(0) + chr(49) +
    chr(67) + #4;// + cCRLF;

  result := result + chr(29) + chr(40) + chr(107) + chr(3) + chr(0) + chr(49) +
    chr(69) + chr(48);// + cCRLF;
  result := result + chr(29) + chr(40) + chr(107) + chr(3 + iTam1) + chr(iTam2)
    + chr(49) + chr(80) + chr(48) + pTexto + cCRLF;
  result := result + chr(29) + chr(40) + chr(107) + chr(3) + chr(0) + chr(49) +
    chr(81) + chr(48);// + cCRLF;

end;



procedure TFrm_NFCE_Impressao.Update;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := edtText.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.Height:=QRCode.Rows;

    QRCodeBitmap.Width:=QRCode.Columns;
//    QRCodeBitmap.row S  etSize(QRCode.Rows, QRCode.Columns);

//    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;


// VERSAO VISUALIZAR



function TFrm_NFCE_Impressao.fImprimirGeral(pDadosNFCEChvAcesso: TDadosNFCEChvAcesso):boolean;
var
  pdf: TPdfDocumentGDI;
  page: TPdfPage;

  myPrinter: TPrinter;


  mLinhas: tStrings;

  mtotaltroco: Real;
  mconsultal01: string;
  mconsultal02: string;


  mQtdLinImp: integer;
  mpos_ender: integer;

  mNomePDF: string;
  mpercaprox: real;
  Linha: integer;
  mTotBru: Real;
  mTotDes: Real;
  mTotFrete : real;
  mEstiloFontePadrao: String;
  mQtdItens: integer;
  x_lin: integer;
  mObs: TStringList;

  x_Obs: integer;

  mjpeg: TJPEGImage;

  img: TImage;
  // mImpressora: string;
  // Tamanho:integer;
  Coluna: integer;
  linha_teste: integer;
  // margem_esquerda: integer;
  mfator_linha: integer;
  mqtdcar_linha: integer;
  stream_qrcode: TStream;
  const
  mqtditempage = 8;
{
  dpi = 300;
  pWidth = 15;
}

  dpi = 200;
  pWidth = 25;
  pVisualizar = 'Visualizar';

  log_qrcode_tamanho  =250;
  log_qrcode_altura  =250;
  log_qrcode_posicao_inicio  =100;

  // sub procedures inicio

  procedure fAdicionarPaginapdf;
  begin
    page := pdf.AddPage;
    page.PageLandscape := false;
    page.PageWidth := Round(dpi * pWidth / 25.4);
    page.PageWidth := Round(dpi * pWidth / 21);


    pdf.VCLCanvas.Font.Size := -8;
//        pdf.VCLCanvas.Font.Style := [fsBold];
//        pdf.VCLCanvas.Font.Style := [fsItalic]
//      mfator_linha := 12;
//      mqtdcar_linha := 60;
    pdf.VCLCanvas.Font.Name := 'Times New Roman';
    pdf.VCLCanvas.Font.Size := -8;
    Linha := 100;
  end;


  // sub procedure termino
  function fAdicionarLinhaCanvas(pLinha_Atual, pQtdLin: integer): integer;
  begin
    result := pLinha_Atual + (pQtdLin * mfator_linha)
  end;



  procedure fImprimir_pdf(pTexto: string);
  begin
  mQtdLinImp := mQtdLinImp + 1;

  pdf.VCLCanvas.TextOut(Coluna, Linha, pTexto);

  end;


  procedure fImprimir_centro_pdf(pTexto: string);
  begin
  mQtdLinImp := mQtdLinImp + 1;
//  lindomar

  pdf.VCLCanvas.TextOut(Coluna, Linha, centra(pTexto,' ',mqtdcar_linha));

  end;


    procedure  fImprimir_pdfComprovanteVinculado;

  var
    mCompVinc: TStrings;
    x_vias: integer;
    x_Comprov: integer;

    pIdent_Item: integer;
    pIdent_SubItem: integer;
    pIdent_Conteudo: AnsiString;

  begin
    if fLerGenerico_query('CADPFP'+ ',' + 'CADFP' ,
      'PFPCOMPROVANTE_VINC,1 as PFPPARCELA, fpdesc as PFPNOMFP',
      'PFPCODEMP=' + IntTostr(pDadosNFCEChvAcesso.pCodEmp) + ' and PFPCHAVE=' +
      IntTostr(pDadosNFCEChvAcesso.pChave) + ' and PFPLOTSEQ=' + IntTostr(pDadosNFCEChvAcesso.pChaveAno)
      + ' and not PFPCOMPROVANTE_VINC is null  ' +
      ' and fpcodigo=PFPFORMA ', query_consulta) then
    begin

      mCompVinc := TStringList.Create;

      while not query_consulta.Eof do
      begin
        mCompVinc.Text := query_consulta.FieldByName('PFPCOMPROVANTE_VINC')
          .AsString;
        fImprimir_centro_pdf(insere('-', '-', mfonte_ecf.mqtdcarlin));
        Linha := fAdicionarLinhaCanvas(Linha, 1);


        for x_vias := 1 to log_QtdViaTef do
        begin
          for x_Comprov := 0 to mCompVinc.Count - 1 do
          begin
            pIdent_Item := 0;
            pIdent_SubItem := 0;
            pIdent_Conteudo := '';
            if not mNfce.fTef_IdentificadorReg_impres(mCompVinc[x_Comprov],
              pIdent_Item, pIdent_SubItem, pIdent_Conteudo) then
            begin
              Continue;
            end;
            if pIdent_Item = 029 then
            begin
              fImprimir_centro_pdf(pIdent_Conteudo);
              Linha := fAdicionarLinhaCanvas(Linha, 1);

            end;
          end;
          fImprimir_pdf(' ');
          Linha := fAdicionarLinhaCanvas(Linha, 1);

        end;
        query_consulta.Next;
        fImprimir_centro_pdf(insere('-', '-', mfonte_ecf.mqtdcarlin));
         Linha := fAdicionarLinhaCanvas(Linha, 1);
        fImprimir_centro_pdf(' ');
        Linha := fAdicionarLinhaCanvas(Linha, 1);


      end;
    end;
  end;



begin

mqtdcar_linha:=100;
if trim(pDadosNFCEChvAcesso.pImpressora)<>'Visualizar' then
   begin
   if not fImprimirNFCE(pDadosNFCEChvAcesso) then
      MessageDlg('erro ao imprimir nfce!', mtWarning, [mbOk], 0)
   else
      exit;
   end
else
   begin
   mfator_linha := 10;
   Linha := 100;

    cds_cabecalho.First;
    cds_detalhe.First;

    edtText.Text := cds_cabecalhoqrcode.Value;
    Update;
    stream_qrcode := TMemoryStream.Create;
    QRCodeBitmap.SaveToStream(stream_qrcode);
    // QRCodeBitmap.SaveToFile('c:\lobo02.bmp');
    { stream_qrcode.Seek(0,soFromBeginning);
      stream_qrcode.Free;
    }
    // Linha := 1;


      pdf := TPdfDocumentGDI.Create;
      pdf.Info.Author := 'NFCe';
      pdf.Info.CreationDate := now;
      pdf.Info.Creator := 'creator';
      pdf.Info.Subject := 'subject';
      pdf.Info.Title := 'Impressão Pedido NFCe';
      pdf.DefaultPaperSize := psUserDefined;
      fAdicionarPaginapdf;
    end;



    // mImpressora:=IntToStr(Canvas.Font.Height);

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf(insere('-', '-', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf(Centra(cds_cabecalhoEMITXNOME.AsString, ' ', mqtdcar_linha));
    Linha := fAdicionarLinhaCanvas(Linha, 1);
    if trim(DM1.Tb_EmpFANTASIA.AsString)<>'' then
       begin
       fImprimir_pdf(Centra(DM1.Tb_EmpFANTASIA.AsString, ' ', mqtdcar_linha));
       Linha := fAdicionarLinhaCanvas(Linha, 1);
       end;

    fImprimir_pdf(Centra(cds_cabecalhofone_fax.AsString, ' ', mqtdcar_linha));
    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf(insere2(cds_cabecalhoemit_cnpj.AsString, ' ', 28) +
      insere(cds_cabecalhoEMITIE.AsString, ' ', mqtdcar_linha - 28));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    mLinhas := fQuebraStringTStringList(mqtdcar_linha,
      cds_cabecalhoemit_endereco_comp.Text);
    for x_lin := 0 to mLinhas.Count - 1 do
    begin
      fImprimir_pdf(Centra(mLinhas[x_lin], ' ', mqtdcar_linha));
      Linha := fAdicionarLinhaCanvas(Linha, 1);
    end;

    fImprimir_pdf(insere('-', '-', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf(Centra(Formatdatetime(fdt2 + ' hh:nn:ss',
      cds_cabecalhoIDEDEMI.AsDateTime), ' ', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);
    fImprimir_pdf(Centra('DANFE NFCE - DOCUMENTO AUXILIAR DA NOTA FISCAL', ' ',
      mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf(Centra('DE CONSUMIDOR ELETRONICA', ' ', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf('Item Codigo            descricao');

    Linha := fAdicionarLinhaCanvas(Linha, 1);
    fImprimir_pdf('         Qtde    UN           Vlr.Unit       Vlr.Tot');

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    mQtdItens := 0;
    mTotBru := 0;
    mTotDes := 0;
    mtotFrete := 0;

    while not cds_detalhe.Eof do
    begin
      mQtdItens := mQtdItens + 1;

      mTotBru := mTotBru + cds_detalheDETPRODVPROD.asfloat;
      mTotDes := mTotDes + cds_detalheVDESC.asfloat;
      mTotFrete := mTotFrete + cds_detalheVFRETE.AsFloat;

      fImprimir_pdf(FormatFloat('000', cds_detalheitem_num.AsInteger) + ' ' +
        insere3(cds_detalheDETPRODCPROD.AsString, ' ', 14) + ' ' +
        insere2(cds_detalhenomepro.AsString, ' ', 60));

      Linha := fAdicionarLinhaCanvas(Linha, 1);

      fImprimir_pdf(insere(cds_detalheDETPRODQCOM.AsString, ' ', 14) + ' ' +
        insere(cds_detalheDETPRODUCOM.AsString, ' ', 04) + '  ' + '     X' +
        insere(FormatFloat(mCasasPU, cds_detalheDETPRODVUNCOM.asfloat), ' ', 11)
        + insere(FormatFloat(mCasasPU, cds_detalheDETPRODVPROD.asfloat),
        ' ', 14));

      Linha := fAdicionarLinhaCanvas(Linha, 1);

      if cds_detalheVDESC.asfloat > 0 then
      begin

        fImprimir_pdf('desconto sobre item ' + FormatFloat('000',
          cds_detalheitem_num.AsInteger) + insere(FormatFloat(mcasas,
          cds_detalheVDESC.asfloat), ' ', 30));

        Linha := fAdicionarLinhaCanvas(Linha, 1);

      end;

      cds_detalhe.Next;
    end;

    fImprimir_pdf(insere('-', '-', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf('QTD. TOTAL DE ITENS' + insere(IntTostr(mQtdItens), ' ',
      mqtdcar_linha - 19));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    if (mTotDes > 0) or (mTotFrete=0) then
       begin
      fImprimir_pdf('VALOR TOTAL R$     ' + insere(FormatFloat(mcasas, mTotBru),
        ' ', mqtdcar_linha - 19));
      Linha := fAdicionarLinhaCanvas(Linha, 1);
      if mTotDes>0 then
         begin
         fImprimir_pdf('DESCONTO R$        ' + insere(FormatFloat(mcasas, mTotDes),
        ' ', mqtdcar_linha - 19));
         Linha := fAdicionarLinhaCanvas(Linha, 1);
         end;
      if mTotFrete>0 then
         begin
         fImprimir_pdf('FRETE R$           ' + insere(FormatFloat(mcasas, mTotFrete),
        ' ', mqtdcar_linha - 19));
         Linha := fAdicionarLinhaCanvas(Linha, 1);
         end;

    end;
    if mEstiloFontePadrao <> 'N' then
       begin
       pdf.VCLCanvas.Font.Style := [fsBold]
       end;

    fImprimir_pdf('VALOR A PAGAR R$   ' + insere(FormatFloat(mcasas,
      (mTotBru+mtotFrete) - mTotDes), ' ', mqtdcar_linha - 19));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    if mEstiloFontePadrao <> 'N' then
    begin
    if mEstiloFontePadrao = 'I' then
       begin
       pdf.VCLCanvas.Font.Style := [fsItalic]
       end
    else
       begin
       pdf.VCLCanvas.Font.Style := []
       end;
    end;
    mtotaltroco := 0;
    fImprimir_pdf('FORMA DE PAGAMENTO ' + insere('VALOR PAGO', ' ',
      mqtdcar_linha - 19));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    cds_vcto.First;

    while not cds_vcto.Eof do
    begin
      mtotaltroco := mtotaltroco + cds_vctoVVALOR.asfloat;
      fImprimir_pdf(insere2(cds_vctonomfpgto.AsString, ' ', 19) +
        insere(FormatFloat(mcasas, cds_vctoVVALOR.asfloat), ' ',
        mqtdcar_linha - 19));

      Linha := fAdicionarLinhaCanvas(Linha, 1);

      cds_vcto.Next;
    end;
    mtotaltroco := arredonda((mtotaltroco - ((mTotBru+mTotFrete) - mTotDes)), 2);
    if mtotaltroco > 0 then
    begin
      fImprimir_pdf(insere2('TROCO', ' ', 19) + insere(FormatFloat(mcasas,
        mtotaltroco), ' ', mqtdcar_linha - 19));
      Linha := fAdicionarLinhaCanvas(Linha, 1);
    end;

    fImprimir_pdf(Centra('AREA DE MENSAGEM FISCAL', ' ', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf(Centra('Numero: ' + FormatFloat('000000000',
      cds_cabecalhoIDENNF.AsInteger) + ' Serie ' + FormatFloat('000',
      valint(cds_cabecalhoIDESERIE.AsString)), ' ', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);
    fImprimir_pdf(Centra('Emissao: ' + Formatdatetime(fdt2 + ' hh:nn:ss',
      cds_cabecalhoIDEDEMI.AsDateTime), ' ', mqtdcar_linha));
    Linha := fAdicionarLinhaCanvas(Linha, 1);

    mpos_ender := pos('?', cds_cabecalhoqrcode.AsString);
    if mpos_ender = 0 then
    begin
      mconsultal01 := '';
      mconsultal02 := ''
    end
    else
    begin
      mconsultal01 := 'Consulta a Chave de Acesso em ' +
        copy(cds_cabecalhoqrcode.AsString, 1, mpos_ender - 1);
      mLinhas := fQuebraStringTStringList(mqtdcar_linha, mconsultal01);
      for x_lin := 0 to mLinhas.Count - 1 do
      begin
        fImprimir_pdf(Centra(mLinhas[x_lin], ' ', mqtdcar_linha));

        Linha := fAdicionarLinhaCanvas(Linha, 1);
      end;
    end;

    fImprimir_pdf(' ');

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf(Centra('CHAVE DE ACESSO', ' ', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    mLinhas := fQuebraStringTStringList(mqtdcar_linha,
      cds_cabecalhochacesso_bloco1.AsString + ' ' +
      cds_cabecalhochacesso_bloco2.AsString);
    for x_lin := 0 to mLinhas.Count - 1 do
    begin
      fImprimir_pdf(Centra(mLinhas[x_lin], ' ', mqtdcar_linha));
      Linha := fAdicionarLinhaCanvas(Linha, 1);
    end;




    // Linha := printCanvas(myPrinter,false,Linha,centra(cds_cabecalhochacesso_bloco2.AsString,' ',mqtdcar_linha));

    fImprimir_pdf(insere('-', '-', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    if fsonumero(cds_cabecalhodest_cnpj.AsString) = 0 then
    begin
      fImprimir_pdf(Centra('CONSUMIDOR NAO IDENTIFICADO', ' ', mqtdcar_linha));

      Linha := fAdicionarLinhaCanvas(Linha, 1);
    end
    else
    begin
      fImprimir_pdf(Centra('CONSUMIDOR ' + cds_cabecalhodest_cnpj.AsString, ' ',
        mqtdcar_linha));

      Linha := fAdicionarLinhaCanvas(Linha, 1);
      fImprimir_pdf('NOME: ' + cds_cabecalhonomcli_codigo.AsString);

      Linha := fAdicionarLinhaCanvas(Linha, 1);

      if cds_cabecalhoDESTENDERDESTXLGR.AsString <> '' then
      begin
        mconsultal01 := 'Endereco: ' + cds_cabecalhoDESTENDERDESTXLGR.AsString;
        if cds_cabecalhoDESTENDERDESTXBAIRRO.AsString <> '' then
          mconsultal01 := mconsultal01 +
            cds_cabecalhoDESTENDERDESTXBAIRRO.AsString;
        mLinhas := fQuebraStringTStringList(mqtdcar_linha, mconsultal01);
        for x_lin := 0 to mLinhas.Count - 1 do
        begin
          fImprimir_pdf(Centra(mLinhas[x_lin], ' ', mqtdcar_linha));

          Linha := fAdicionarLinhaCanvas(Linha, 1);
        end;
      end;
      if cds_cabecalhoDESTENDERDESTXMUN.AsString <> '' then
      begin
        fImprimir_pdf('Cidade..: ' + cds_cabecalhoDESTENDERDESTXMUN.AsString);

        Linha := fAdicionarLinhaCanvas(Linha, 1);
      end;
    end;
    fImprimir_pdf(insere('-', '-', mqtdcar_linha));

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    {
      if pImpressora=pVisualizar then
      begin
      mjpeg:= BmpToJpg(QRCodeBitmap,100);
      Linha:=fAdicionarLinhaCanvas(Linha,1);
      pdf.VCLCanvas.Draw(50,linha,mjpeg);
      end
      else
      begin
      with myPrinter.Canvas do
      begin
      DrawImage( myPrinter.Canvas
      ,margem_esquerda
      ,(mlinha_ini*mfator_linha)
      ,mtamanho
      ,maltura,QRCodeBitmap);

      end;

    }

    {
      Linha:=fAdicionarLinhaCanvas(Linha,10);
      fImprimir_pdf(' ');
    }
    Linha := fAdicionarLinhaCanvas(Linha, 1);
    fImprimir_pdf(' ');
    Linha := fAdicionarLinhaCanvas(Linha, 1);



    // mlinha_ini:=linha+2;

    mjpeg := TJPEGImage.Create;
    // QRCodeBitmap.Assign(mjpeg);
    // QRCodeBitmap.SaveToFile('c:\lobo03.bmp');


    // lindomar

    mjpeg := BmpToJpg(QRCodeBitmap, log_qrcode_tamanho);
    pdf.VCLCanvas.Draw(log_qrcode_posicao_inicio, Linha, mjpeg);

    // Linha := Linha+ (maltura div mfator_linha)+6;
    Linha := Linha + log_qrcode_altura;
    fImprimir_pdf('');
    Linha := fAdicionarLinhaCanvas(Linha, 1);

    if (cds_cabecalhotpemis.Value = 1) then
    begin
      if (cds_cabecalhonum_prot.AsString <> '') then
      begin
        Linha := fAdicionarLinhaCanvas(Linha, 1);
        fImprimir_pdf(Centra('Protocolo de autorizacao ', ' ', mqtdcar_linha));

        Linha := fAdicionarLinhaCanvas(Linha, 1);
        fImprimir_pdf(Centra(cds_cabecalhonum_prot.AsString + ' ' +
          Formatdatetime(fdt2 + ' ' + fhr, cds_cabecalhodathorprot.AsDateTime),
          ' ', mqtdcar_linha));
        Linha := fAdicionarLinhaCanvas(Linha, 1);
      end
      else
      begin
        Linha := fAdicionarLinhaCanvas(Linha, 1);
        fImprimir_pdf(Centra('*********ERRO NO PROTOCOLO**********', ' ',
          mqtdcar_linha));
        Linha := fAdicionarLinhaCanvas(Linha, 1);

      end
    end
    else
    begin
      if (cds_cabecalhonum_prot.AsString <> '') then
      begin
        Linha := fAdicionarLinhaCanvas(Linha, 1);
        fImprimir_pdf(Centra('Protocolo de autorizacao ', ' ', mqtdcar_linha));

        Linha := fAdicionarLinhaCanvas(Linha, 1);
        fImprimir_pdf(Centra(cds_cabecalhonum_prot.AsString + ' ' +
          Formatdatetime(fdt2 + ' ' + fhr, cds_cabecalhodathorprot.AsDateTime),
          ' ', mqtdcar_linha));
    Linha := fAdicionarLinhaCanvas(Linha, 1);


      end
      else
      begin
        Linha := fAdicionarLinhaCanvas(Linha, 1);
        fImprimir_pdf(Centra('***NFCE - Emitida em Contigencia***', ' ',
          mqtdcar_linha));
    Linha := fAdicionarLinhaCanvas(Linha, 1);

      end;
    end;

    if cds_cabecalhotpamb.AsInteger = 2 then
    begin
      Linha := fAdicionarLinhaCanvas(Linha, 1);
      fImprimir_pdf(Centra('***NFCE - em Homologação***', ' ', mqtdcar_linha));
    end;

    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf(' ');

    if cds_cabecalhovTotTrib.asfloat > 0 then
    begin
      mpercaprox := (cds_cabecalhovTotTrib.asfloat * 100) /
        cds_cabecalhoTOTALICMSTOTVNF.asfloat;
      Linha := fAdicionarLinhaCanvas(Linha, 1);
      fImprimir_pdf(insere('-', '-', mqtdcar_linha));

      Linha := fAdicionarLinhaCanvas(Linha, 1);
      fImprimir_pdf(Centra('Informacao dos Tributos Totais e Incidentes', ' ',
        mqtdcar_linha));

      Linha := fAdicionarLinhaCanvas(Linha, 1);
      fImprimir_pdf(Centra('(Lei Federal 12.741/2012)', ' ', mqtdcar_linha));

      Linha := fAdicionarLinhaCanvas(Linha, 1);
      fImprimir_pdf('Valor aproximado dos impostos:   ' + FormatFloat(mcasas,
        cds_cabecalhovTotTrib.asfloat) + '(' + FormatFloat(mcasas_pct,
        mpercaprox) + ')');

      Linha := fAdicionarLinhaCanvas(Linha, 1);
      fImprimir_pdf(insere('-', '-', mqtdcar_linha));
    end;
    Linha := fAdicionarLinhaCanvas(Linha, 1);
    fImprimir_pdf('');
    Linha := fAdicionarLinhaCanvas(Linha, 1);
    fImprimir_pdf(insere('-', '-', mqtdcar_linha));

    if length(cds_cabecalhoobscup.AsString) > 1 then
    begin
      mObs := TStringList.Create;
      mObs.Text := cds_cabecalhoobscup.AsString;
      for x_Obs := 0 to mObs.Count - 1 do
      begin
        Linha := fAdicionarLinhaCanvas(Linha, 1);
        fImprimir_pdf(mObs[x_Obs]);
      end;
      freeandnil(mObs);
    end;

    Linha := fAdicionarLinhaCanvas(Linha, 1);
    Linha := fAdicionarLinhaCanvas(Linha, 1);

    fImprimir_pdf(Centra('OPR: ' + floattostr(codusr) + ' ' +nomusr, ' ',
      mqtdcar_linha));

    mNomePDF := mpastadefault + 'nfce.pdf';
    // mNomePDF:=fRetornaTempLivre('nfce','.pdf');

    fImprimir_pdfComprovanteVinculado;

   page.PageHeight := Linha + 100;
   pdf.SaveToFile(mNomePDF);
   if FileExists(mNomePDF) then
      begin
      ShellExecute(Application.handle, 'Open', PChar(mNomePDF), nil,
          nil, SW_HIDE);
      end;

   end;
// TERMINO VISUALIZAR

procedure TFrm_NFCE_Impressao.FormCreate(Sender: TObject);
begin
  QRCodeBitmap := TBitmap.Create;
  Update;

end;

function TFrm_NFCE_Impressao.fImprimirGeralComprovante(pComprovante: tStrings; pImpressora,pDocumento: String):boolean;
var
  pdf: TPdfDocumentGDI;
  page: TPdfPage;
  Linha: Integer;
  mfator_linha: integer;
  mQtdLinImp: integer;
  Coluna: integer;
  mqtdcar_linha: integer;

  mNomePDF: string;

const
  dpi = 200;
  pWidth = 25;


  procedure fAdicionarPaginapdf;
  begin
  page := pdf.AddPage;
  page.PageLandscape := false;
  page.PageWidth := Round(dpi * pWidth / 25.4);
  page.PageWidth := Round(dpi * pWidth / 21);

  pdf.VCLCanvas.Font.Size := -8;
  pdf.VCLCanvas.Font.Name := 'Times New Roman';
  pdf.VCLCanvas.Font.Size := -8;
  Linha := 100;
  end;


  // sub procedure termino
  function fAdicionarLinhaCanvas(pLinha_Atual, pQtdLin: integer): integer;
  begin
  result := pLinha_Atual + (pQtdLin * mfator_linha)
  end;



  procedure fImprimir_pdf(pTexto: string);
  begin
  mQtdLinImp := mQtdLinImp + 1;
  pdf.VCLCanvas.TextOut(Coluna, Linha, pTexto);
  end;


  procedure fImprimir_centro_pdf(pTexto: string);
  begin
  mQtdLinImp := mQtdLinImp + 1;
  pdf.VCLCanvas.TextOut(Coluna, Linha, centra(pTexto,' ',mqtdcar_linha));
  end;


   procedure fImprimir_pdfComprovanteVinculado;
   var
   x_vias: integer;
   x_Comprov: integer;
   pIdent_Item: integer;
   pIdent_SubItem: integer;
   pIdent_Conteudo: AnsiString;

   begin
   fImprimir_centro_pdf(insere('-', '-', mfonte_ecf.mqtdcarlin));
   Linha := fAdicionarLinhaCanvas(Linha, 1);
   for x_vias := 1 to log_QtdViaTef do
      begin
      for x_Comprov := 0 to pComprovante.Count - 1 do
         begin
         pIdent_Item := 0;
         pIdent_SubItem := 0;
         pIdent_Conteudo := '';
         if not mNfce.fTef_IdentificadorReg_impres(pComprovante[x_Comprov],
            pIdent_Item, pIdent_SubItem, pIdent_Conteudo) then
         begin
            Continue;
         end;
         if pIdent_Item = 029 then
            begin
            fImprimir_centro_pdf(pIdent_Conteudo);
            Linha := fAdicionarLinhaCanvas(Linha, 1);
            end;
         end;
         fImprimir_pdf(' ');
         Linha := fAdicionarLinhaCanvas(Linha, 1);
      end;
   fImprimir_centro_pdf(insere('-', '-', mfonte_ecf.mqtdcarlin));
   Linha := fAdicionarLinhaCanvas(Linha, 1);
   fImprimir_centro_pdf(' ');
   Linha := fAdicionarLinhaCanvas(Linha, 1);
   end;


begin

Coluna := 0;
mqtdcar_linha:=100;

mfator_linha := 10;
Linha := 100;




if trim(pImpressora)<>'Visualizar' then
   begin
   if not fImprimirComprovante(pComprovante,pImpressora,pDocumento) then
      begin
      MessageDlg('erro ao imprimir Comprovante vinculado!', mtWarning, [mbOk], 0);
      exit;
      end
   else
      exit;
   end
else
   begin
   mfator_linha := 10;
   Linha := 100;

   pdf := TPdfDocumentGDI.Create;
   pdf.Info.Author := 'Comprovante Vinculado';
   pdf.Info.CreationDate := now;
   pdf.Info.Creator := 'creator';
   pdf.Info.Subject := 'subject';
   pdf.Info.Title := 'Impressão Comprovante Vinculado';
   pdf.DefaultPaperSize := psUserDefined;

   fAdicionarPaginapdf;
//   fImprimir_pdfComprovanteVinculado;
   end;



Linha := fAdicionarLinhaCanvas(Linha, 1);
fImprimir_pdf(insere('-', '-', mqtdcar_linha));
Linha := fAdicionarLinhaCanvas(Linha, 1);

fImprimir_pdf(Centra(pDocumento, '*', mqtdcar_linha));
Linha := fAdicionarLinhaCanvas(Linha, 1);





mNomePDF := mpastadefault + 'comp'+pDocumento+'.pdf';

fImprimir_pdfComprovanteVinculado;

page.PageHeight := Linha + 100;
pdf.SaveToFile(mNomePDF);
if FileExists(mNomePDF) then
   begin
   ShellExecute(Application.handle, 'Open', PChar(mNomePDF), nil,
       nil, SW_HIDE);
   end;

end;




function TFrm_NFCE_Impressao.fImprimirComprovante(pComprovante: tStrings; pImpressora,pDocumento: String):boolean;

var
  fTexto: TextFile;
  mtexto: string;
  F: TextFile;
  mPorta_Impressao: string;
  mimpressora_nome: string;
  mtipo_impressora: string;


  procedure fImprimir(pTexto: string);
  begin
    writeln(F, pTexto);
  end;

  procedure fImprimir_fonte(pTexto,pFonte: string);
  begin
    writeln(F, pFonte+ pTexto);
  end;


  procedure fCortarPapel;
  begin
      fImprimir(mfonte_ecf.CortarPapel);
  end;





  procedure fImprimirComprovanteVinculado;
  var
  x_vias: integer;
  x_Comprov: integer;
  pIdent_Item: integer;
  pIdent_SubItem: integer;
  pIdent_Conteudo: AnsiString;

  begin
  fCortarPapel;
  for x_vias := 1 to log_QtdViaTef do
     begin
     for x_Comprov := 0 to pComprovante.Count - 1 do
        begin
        pIdent_Item := 0;
        pIdent_SubItem := 0;
        pIdent_Conteudo := '';
        if not mNfce.fTef_IdentificadorReg_impres(pComprovante[x_Comprov],
           pIdent_Item, pIdent_SubItem, pIdent_Conteudo) then
           begin
           Continue;
           end;
        if pIdent_Item = 029 then
           begin
           fImprimir(pIdent_Conteudo);
           end;
        end;
     fImprimir(' ');
     end;
  fImprimir(insere('-', '-', mfonte_ecf.mqtdcarlin));
  fCortarPapel;
  fImprimir(' ');
  end;

  procedure fabrirgaveta_nova;
  begin

 //  writeln(F, chr(27) + chr(112) + chr(0) + chr(50) + chr(200));

  end;


Begin
try
   result := true;
   Printer.PrinterIndex := Printer.printers.IndexOf(pImpressora);
   mPorta_Impressao := mNfce.GetCurrentPrinterPort;
   mimpressora_nome :=
     lowercase(Printer.printers.Strings[Printer.PrinterIndex]);
   mNfce.pSetarFontesECF(mimpressora_nome, mFonte_ecf);
   if pos('daruma', mimpressora_nome) > 0 then
     mtipo_impressora := mPadraoNFCE_DARUMA
   else if pos('epson', mimpressora_nome) > 0 then
     mtipo_impressora := mPadraoNFCE_EPSON
   else if pos('elgin', mimpressora_nome) > 0 then
     mtipo_impressora := mPadraoNFCE_ELGIN
   else if pos('bematech', mimpressora_nome) > 0 then
     mtipo_impressora := mPadraoNFCE_BEMATECH
   else if pos('mp-4200', mimpressora_nome) > 0 then
     mtipo_impressora := mPadraoNFCE_BEMATECH

   else
     mtipo_impressora := mPadraoNFCE_ELGIN;

   if (Pos('USB',UpperCase(mPorta_Impressao))>0) or
      (Pos('ESD',UpperCase(mPorta_Impressao))>0) or
      (Pos('COM',UpperCase(mPorta_Impressao))>0) then
      begin
      mNfce.fRedirecionarPoartaUsbparaLPT1(mimpressora_nome);
      mPorta_Impressao := 'LPT1';
      end;
   AssignFile(F, mPorta_Impressao);

   try
      Rewrite(F);
   except
      begin
      pImpressora:='Visualizar';
      fImprimirGeralComprovante(pComprovante,pImpressora,pDocumento);
      result:=true;
      exit;
      end;
      end;
   fImprimir(centra(pDocumento, '*', mfonte_ecf.mqtdcarlin));
   fImprimirComprovanteVinculado;
   fImprimir(mfonte_ecf.CortarPapel);
   fabrirgaveta_nova;
   CloseFile(F);
except ON E: Exception do
   MessageDlg('Erro ao imprimir nfce porta ' + pImpressora+ '. ERRO ' + E.Message, mtError, [mbOk], 0);
   end;

end;



function TFrm_NFCE_Impressao.fRetornarNomeFormaSefaz(pCodfp: string): string;
var
x_fp: integer;
form_fPag: tFrm_fpag;
begin
pCodFp:=inttostr(valint(pCodfp));
application.createForm(TFrm_fpag, form_fpag);
try
   with form_fPag.RxDBCb_FPVINCULO_TPAG do ItemIndex:=Values.IndexOf(pCodFP);
   result := form_fPag.RxDBCb_FPVINCULO_TPAG.Values.Strings[form_fPag.RxDBCb_FPVINCULO_TPAG.itemindex];
except
   result:='';
   end;
FreeAndNil(form_fPag);

end;
end.
