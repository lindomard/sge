unit S_ValXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, FileCtrl, xmldom,
  XMLIntf, msxmldom, XMLDoc, UXMLvalidation;

type
  TFrm_ValXML = class(TForm)
    Label1: TLabel;
    NOMEXML: TEdit;
    opd: TOpenDialog;
    Sbn: TSpeedButton;
    Panel1: TPanel;
    bbSair: TBitBtn;
    bbValidar: TBitBtn;
    PageControl1: TPageControl;
    tsObsValidar: TTabSheet;
    tsContXml: TTabSheet;
    memo_obs: TMemo;
    Memo_xml: TMemo;
    Label2: TLabel;
    NOMESCHEMA: TEdit;
    FileListBox1: TFileListBox;
    BitBtn1: TBitBtn;
    procedure SbnClick(Sender: TObject);
    procedure bbValidarClick(Sender: TObject);
    procedure NOMEXMLExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    function fAchaArquivo(pNome: String): String;
    function fValidaNFE(pNomeXml,pNomeXsd: String): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_ValXML: TFrm_ValXML;
  f_xml: Textfile;
  mSchema: String;
  mLinha: String;

implementation

uses sge_nfe_TLB, func;

{$R *.dfm}

procedure TFrm_ValXML.SbnClick(Sender: TObject);
begin
if opd.Execute then
   begin
   NOMEXML.Text:=opd.FileName;
   NOMEXMLExit(self);
   end;
end;

procedure TFrm_ValXML.bbValidarClick(Sender: TObject);
var
Util: _sge_nfe;
i: Integer;
mresult: Boolean;
_arquivo,_schema,arqobs:WideString;

begin
if trim(NOMEXML.Text)='' then
   begin
   MessageDlg('Favor Selecionar um Arquivo a ser lido',mtWarning,[mbOk],0);
   exit;
   end;
if not FileExists(NOMEXML.Text) then
   begin
   MessageDlg('Favor Selecionar um Arquivo valido!',mtWarning,[mbOk],0);
   exit;
   end;

if trim(NOMESCHEMA.Text)='' then
   begin
   MessageDlg('Favor Selecionar um Arquivo a ser lido',mtWarning,[mbOk],0);
   exit;
   end;
if not FileExists(NOMESCHEMA.Text) then
   begin
   MessageDlg('Favor Selecionar um Arquivo valido!',mtWarning,[mbOk],0);
   exit;
   end;
{

if fValidaNFE(NOMEXML.Text,NOMESCHEMA.Text) then
   ShowMessage('ok');
}


Util    := Cosge_nfe_.Create;
_Arquivo:=NOMEXML.Text;
arqObs :='';
_schema :=LowerCase( trim(NOMESCHEMA.Text));
mresult:=Util.validaXML(_arquivo,_schema,arqobs);
memo_obs.Lines.Clear;

if mresult=false then
   begin
   if FileExists(arqobs) then
      begin
      assignfile(f_xml,arqobs);
      Reset(f_xml);
      while not eof (f_xml) do
         begin
         readln(f_xml,mlinha);
         memo_obs.Lines.Add(mlinha);
         end;
      end
   else
      memo_obs.Lines.Add(arqobs);
   end
else
   memo_obs.Lines.Add('arquivo ok');
Util := nil;



//    function validaXML(const _arquivo: WideString; const _schema: WideString; out arqobs: WideString): WordBool; safecall;

end;

procedure TFrm_ValXML.NOMEXMLExit(Sender: TObject);
var
mAchou_TagId: Boolean;
mObs_TagId: Boolean;


begin
mAchou_TagId:=false;
mObs_TagId  :=false;
AssignFile(f_xml,NOMEXML.Text);
reset(f_xml);
Memo_xml.Lines.Clear;
While not eof(f_xml) do
   begin
   Readln(f_xml,mlinha);
   mlinha:=trim(mlinha);
   Memo_xml.Lines.add(mlinha);
   end;
closefile(f_xml);
if uppercase(copy(Fnomearq_Pasta(0,NOMEXML.Text),1,3))='NFE' then
   begin
   NOMESCHEMA.Text:=fAchaArquivo('NFE*.XSD');
   end;

end;

function TFrm_ValXML.fAchaArquivo(pNome: String): String;
begin
//FileListBox1.Directory:=ExtractFilePath(Application.ExeName)+'validaxml';
FileListBox1.Directory:=ExtractFilePath(Application.ExeName);

FileListBox1.Mask:=pNome;
FileListBox1.Update;
if FileListBox1.Count>0 then
   result:=ExtractFilePath(Application.ExeName)+'validaxml\'+FileListBox1.Items[0]
else
   result:='';
end;




// inicio

function TFrm_ValXML.fValidaNFE(pNomeXml,pNomeXsd: String): Boolean;
var
XMLDoc: TXMLDocument;
XMLValidadeOK: Boolean;
begin
XMLDoc:= TXMLDocument.Create(nil);
XMLValidadeOK := false;
memo_obs.Lines.Clear;

try
   XMLDoc.ParseOptions:= [poResolveExternals, poValidateOnParse];
   try
      XMLDoc.LoadFromFile(pNomeXml);
      XMLDoc.Active:= True;
      memo_obs.Lines.Add('O arquivo '+ pNomeXml + ' é um XML VÁLIDO.');
      memo_obs.Lines.Add('');
      XMLDoc.Active:= False;
      XmlValidadeOK := true;
   except
      on E:EDOMParseError do
      begin
      memo_obs.Lines.Add('O arquivo '+ pNomeXml + ' é um XML INVÁLIDO. Verifique: ');
      memo_obs.Lines.Add('');
      memo_obs.Lines.Add(E.Message);
      memo_obs.Lines.Add('');
      end;
   end;
finally
   XMLDoc.Free;
   end;

end;


// termino

procedure TFrm_ValXML.BitBtn1Click(Sender: TObject);
var
f01,f02: TFileName;
begin
f01:=NOMEXML.Text;
f02:=NOMESCHEMA.Text;

ValidateXMLFileName(f01,f02,'http://www.portalfiscal.inf.br/nfe');


end;

end.
