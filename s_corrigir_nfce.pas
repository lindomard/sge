unit s_corrigir_nfce;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Mask, ToolEdit, ExtCtrls,
  Buttons, DBClient, DBCtrls, xmldom, XMLIntf, msxmldom, XMLDoc;
type
  tDadosXML = record
  totnota: real;
  chAcesso: string;
  nProt: string;
  numnf: real;
  dataNf: TDateTime;
  end;


type
  Tfrm_corrigir_nfce = class(TForm)
    Panel1: TPanel;
    Label62: TLabel;
    edt_datini: TDateEdit;
    Label63: TLabel;
    edt_datfin: TDateEdit;
    GroupBox1: TGroupBox;
    DBGrid_docinvalidos: TDBGrid;
    src_docinvalidos: TDataSource;
    qr_docinvalidos: TQuery;
    BBnAtu: TBitBtn;
    btnSair: TBitBtn;
    cds_corrigir: TClientDataSet;
    cds_corrigirP1NFCE_CONTIGENCIA_XJUST: TStringField;
    cds_corrigirP1CODEMP: TFloatField;
    cds_corrigirNFCE: TStringField;
    cds_corrigirP1NFCE_CHV_ACESSO: TStringField;
    cds_corrigirP1STATUS: TFloatField;
    cds_corrigirNSSTATUS: TFloatField;
    cds_corrigirP1CHAVE: TFloatField;
    cds_corrigirDATA_CADP01: TDateTimeField;
    cds_corrigirPROTOCOLO_XML: TStringField;
    cds_corrigirXML_PROTOCOLADO: TBlobField;
    cds_corrigirNSNFCE_NPROT: TStringField;
    cds_corrigirCHACESSO_XML: TStringField;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    cds_corrigirCADNS_TOTNOTA: TFloatField;
    cds_corrigirCADP01_TOTNOTA: TFloatField;
    cds_corrigirXML_TOTNOTA: TFloatField;
    cds_corrigirXML_DATANF: TDateTimeField;
    cds_corrigirXML_VALORNF: TFloatField;
    cds_corrigirNPROT_CADP01: TStringField;
    bbExportar: TBitBtn;
    procedure BBnAtuClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure bbExportarClick(Sender: TObject);
  private
    { Private declarations }


    mDadosXML: tDadosXML;


    procedure fAtualizarCorrecoes(pColocar: boolean);


    procedure fAtualizarTempo;

    function fPegarDadosXml(pXml: string): tdadosXml;

  public
    { Public declarations }
  end;



var
  frm_corrigir_nfce: Tfrm_corrigir_nfce;

implementation

uses S_DM1, Func, func_excecoes, uexport;

{$R *.dfm}

procedure Tfrm_corrigir_nfce.BBnAtuClick(Sender: TObject);
begin
qr_docinvalidos.close;
qr_docinvalidos.sql.clear;
qr_docinvalidos.sql.add('SELECT P1NFCE_CONTIGENCIA_XJUST,P1CODEMP,NSNFCE_CHV_ACESSO AS NFCE, '
                       +' P1NFCE_CHV_ACESSO,P1STATUS,NSSTATUS,P1DATAP AS DATA_CADP01, '
                       +'P1CHAVE,NSNFCE_NPROT,p1NFCE_NPROT '
                       +',NSTOTNOTA,P1TOTALL '

                       +' FROM CADNS,CADP01 WHERE P1CODEMP=1 ');
if edt_datini.Date>pdatanula  then
   qr_docinvalidos.sql.add(' and P1DATAP>='+Formatdatetime(fdt2, edt_datini.date));
if edt_datfin.Date>pdatanula  then
   qr_docinvalidos.sql.add(' and P1DATAP<='+Formatdatetime(fdt2, edt_datfin.date));
qr_docinvalidos.sql.add(' and LENGTH(NVL(P1NFCE_CHV_ACESSO,'+quotedstr('  ')+'))>2 AND P1CHAVE=NSCHAVEP AND P1CODEMP=NSCODEMP '
                       +' AND NSNFCE_CHV_ACESSO<>P1NFCE_CHV_ACESSO '
                       +' AND P1STATUS<>9  ');
try
   qr_docinvalidos.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_docinvalidos,65,'SGE','CADP01');
   end;
   end;

fAtualizarTempo;




end;


procedure tFrm_corrigir_nfce.fAtualizarTempo;
var
query_nfce: tquery;
begin
query_nfce:=tquery.create(nil);
query_nfce.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
if cds_corrigir.Active then
   cds_corrigir.EmptyDataSet
else
   begin
   cds_corrigir.CreateDataSet;
   cds_corrigir.open;
   end;

qr_docinvalidos.First;
While not qr_docinvalidos.Eof do
   begin
   query_nfce.close;
   query_nfce.sql.clear;
   query_nfce.sql.add('select NSE_OPERACAO, NSE_XML_NPROT_EVE, NSE_XML_EVENTO  FROM  CADNS_NFEEVE '
                      +' WHERE  NSE_CHAVEP='+qr_docinvalidos.fieldbyname('P1CHAVE').AsString);

//                      +' WHERE NOT NSE_XML_NPROT_EVE IS NULL '
//                      +' AND NSE_CHAVEP='+qr_docinvalidos.fieldbyname('P1CHAVE').AsString);

   try
      query_nfce.Open;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_nfce,117,'SGE','CADNS_NFEEVE');
      exit;
      end;
      end;
    if not query_nfce.IsEmpty then
       begin
       cds_corrigir.Append;
       cds_corrigirP1NFCE_CONTIGENCIA_XJUST.Value   := qr_docinvalidos.fieldbyname('P1NFCE_CONTIGENCIA_XJUST').AsString;
       cds_corrigirP1CODEMP.Value                   := qr_docinvalidos.fieldbyname('P1CODEMP').AsFloat;
       cds_corrigirNFCE.Value                       := qr_docinvalidos.fieldbyname('NFCE').AsString;
       cds_corrigirP1NFCE_CHV_ACESSO.Value          := qr_docinvalidos.fieldbyname('P1NFCE_CHV_ACESSO').AsString;
       cds_corrigirNSSTATUS.Value                   := qr_docinvalidos.fieldbyname('NSSTATUS').AsFloat;
       cds_corrigirDATA_CADP01.Value                := qr_docinvalidos.fieldbyname('DATA_CADP01').AsDateTime;
       cds_corrigirP1CHAVE.Value                    := qr_docinvalidos.fieldbyname('P1CHAVE').Asfloat;
       cds_corrigirNSNFCE_NPROT.Value               := qr_docinvalidos.fieldbyname('NSNFCE_NPROT').AsString;
       cds_corrigirCADNS_TOTNOTA.Value              := qr_docinvalidos.fieldbyname('NSTOTNOTA').AsFLOAt;
       cds_corrigirCADP01_TOTNOTA.Value             := qr_docinvalidos.fieldbyname('P1TOTALL').AsFloat;
       cds_corrigirNPROT_CADP01.Value               := qr_docinvalidos.fieldbyname('p1NFCE_NPROT').AsString;

       cds_corrigirXML_TOTNOTA.Value                := 0;

       cds_corrigirPROTOCOLO_XML.Value    := query_nfce.fieldbyname('NSE_XML_NPROT_EVE').asstring;
       cds_corrigirXML_PROTOCOLADO.Value  := query_nfce.fieldbyname('NSE_XML_EVENTO').Value;
       if cds_corrigirXML_PROTOCOLADO.AsString<>'' then
          begin
          mDadosXML := fPegarDadosXml(cds_corrigirXML_PROTOCOLADO.AsString);
          cds_corrigirXML_TOTNOTA.Value  := mDadosXML.totnota;
          cds_corrigirXML_DATANF.Value   := mDadosXML.dataNf;
          cds_corrigirXML_VALORNF.Value  := mDadosXML.totnota;
          end;
       cds_corrigir.Post;
       end;
    qr_docinvalidos.Next;
   end;

end;

procedure Tfrm_corrigir_nfce.btnSairClick(Sender: TObject);
begin
close;
end;


function Tfrm_corrigir_nfce.fPegarDadosXml(pXml: string): tdadosXml;
var vXMLDoc: TXMLDocument;

    NodeArmas,NodeMed,NodeMaster,NodePai,NodeSec,NodeTmp,NodeImposto,NodeTmp_Imp,NodeTmp_ImpCateg,nodeProtocolo: IXMLNode;
streStream: TStringStream;
    
mStringTemp: String;
begin

try
    streStream := TStringStream.Create(pxml);

    vXMLDoc := TXMLDocument.Create(self);
    vXMLDoc.LoadFromstream(streStream);
    freeandnil(strestream);
except
   MessageDlg('Erro 720 ao criar o xml document!',mtWarning,[mbOk],0);
    exit;
   end;

NodeMaster := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('infNFe');

if NodeMaster=nil then
   begin
   NodeMaster:=vXMLDoc.DocumentElement.childNodes.First;
   NodePai:=vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('emit');
   end
else
   NodePai:=NodeMaster.ChildNodes.FindNode('emit');


if NodePai=nil then
   begin
   MessageDlg('Não é um XML de Nota Fiscal Válido!',mtWarning,[mbOk],0);
   FreeAndNil(vXMLDoc);
   exit;
   end;


   NodeSec := NodePai;
// Posiciona o primeiro elemento encontrado
NodeSec.ChildNodes.First;
mDadosXML.chAcesso  :=NodeMaster.GetAttributeNS('Id','');
if trim(mDadosXML.chAcesso)<>'' then
   mDadosXML.chAcesso  :=copy(mDadosXML.chAcesso,4,44);
mDadosXML.numnf        :=fsonumero(NodeMaster.ChildNodes['ide'].ChildNodes['nNF'].text);


mStringTemp:=NodeMaster.ChildNodes['ide'].ChildNodes['dEmi'].text;
if fsonumero(mStringTemp)>0 then
   begin
   try
      mDadosXML.dataNf          :=StrToDate(copy(mStringTemp,09,02)+'/'+copy(mStringTemp,6,2)+'/'+copy(mStringTemp,1,4));
   except
      end;
   end
else
   begin
   mStringTemp:=NodeMaster.ChildNodes['ide'].ChildNodes['dhEmi'].text;
   if fsonumero(mStringTemp)>0 then
      begin
      try
         mDadosXML.dataNf          :=StrToDate(copy(mStringTemp,09,02)+'/'+copy(mStringTemp,6,2)+'/'+copy(mStringTemp,1,4));
      except
         end;
      end

   end;

try
   mDadosXML.nProt        :=vXMLDoc.DocumentElement.ChildNodes[1].ChildNodes['infProt'].ChildNodes['nProt'].Text;
except
   mDadosXML.nProt        :='';
   end;
mDadosXML.totnota       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vProd'].text));
result := mDadosXml;
end;

procedure Tfrm_corrigir_nfce.bbExportarClick(Sender: TObject);
begin
if (cds_corrigir.Active=false) or (cds_corrigir.IsEmpty) then
   exit;
bbExportar.Enabled:=false;
fAtualizarCorrecoes(true);

Application.CreateForm(TfExport, fExport);
fExport.DataSet1 :=  src_docinvalidos.DataSet;       //define o DataSet a ser exportado

fExport.ShowModal;
fExport.Free;
fAtualizarCorrecoes(false);

bbExportar.Enabled:=true;


end;

procedure tFrm_corrigir_nfce.fAtualizarCorrecoes(pColocar: boolean);

begin
cds_corrigir.disablecontrols;
cds_corrigir.first;
While not cds_corrigir.eof do
   begin
   cds_corrigir.edit;
   if pcolocar then
      begin
      cds_corrigirNFCE.value := '['+cds_corrigirNFCE.value+']';
      cds_corrigirP1NFCE_CHV_ACESSO.value := '['+cds_corrigirP1NFCE_CHV_ACESSO.value+']';
      cds_corrigirPROTOCOLO_XML.value := '['+cds_corrigirPROTOCOLO_XML.value+']';
      cds_corrigirNPROT_CADP01.value := '['+cds_corrigirNPROT_CADP01.value+']';
      cds_corrigirNSNFCE_NPROT.value := '['+cds_corrigirNSNFCE_NPROT.value+']';


      end
   else
      begin
      cds_corrigirNFCE.value              := fdeixanum(cds_corrigirNFCE.value);
      cds_corrigirP1NFCE_CHV_ACESSO.value := fdeixanum(cds_corrigirP1NFCE_CHV_ACESSO.value);
      cds_corrigirPROTOCOLO_XML.value     := fdeixanum(cds_corrigirPROTOCOLO_XML.value);
      cds_corrigirNPROT_CADP01.value      := fdeixanum(cds_corrigirNPROT_CADP01.value);
      cds_corrigirNSNFCE_NPROT.value      := fdeixanum(cds_corrigirNSNFCE_NPROT.value);
      end;
   cds_corrigir.post;
   cds_corrigir.next;
   end;
cds_corrigir.enablecontrols;

end;


end.
