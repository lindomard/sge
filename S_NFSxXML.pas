unit S_NFSxXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, Buttons,FileCtrl

  , xmldom, XMLIntf, msxmldom, XMLDoc,  ComCtrls,
    Grids, DBGrids, DBCtrls,db,DateUtils, Provider, DBTables,
  DBClient, Xmlxform, SqlExpr,  S_impxml_thread_0001 ,  ImgList, Gauges,
  FMTBcd;


type
  TFrm_NFSxXML = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    Label3: TLabel;
    edt_pastaxml: TEdit;
    sbn_ok: TSpeedButton;
    sbn_erro: TSpeedButton;
    bbBuscarPasta: TBitBtn;
    bbSair: TBitBtn;
    bbProcessar: TBitBtn;
    lbl_qtdxml: TLabel;
    Timer_processando: TTimer;
    lbl_importar_xml: TLabel;
    src_nfs: TDataSource;
    DBGrid1: TDBGrid;
    qr_nfs: TQuery;
    Label4: TLabel;
    cb_listar: TComboBox;
    bbAbrir: TBitBtn;
    bbExportar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbBuscarPastaClick(Sender: TObject);
    procedure bbProcessarClick(Sender: TObject);
    procedure Timer_processandoTimer(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbAbrirClick(Sender: TObject);
    procedure cb_listarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbExportarClick(Sender: TObject);
  private
    { Private declarations }

    procedure fStatusPasta;

    function fImportarXML: boolean;

  public
    { Public declarations }

  procedure fLerdadosnfe;

  end;

var
  Frm_NFSxXML: TFrm_NFSxXML;

implementation

uses Func, S_Ocorrencias, S_DM4, lerarq, func_excecoes, S_DM1,uExport;

{$R *.dfm}

procedure TFrm_NFSxXML.FormCreate(Sender: TObject);
begin
{
fDeletaPadroes(0,'_NFSXML','');
fGravaPadroes(0,'PASTA'          ,'text' ,'_NFSXML',edt_pastaxml.Text);
}
edt_pastaxml.Text:=mcamtmp;
DirList := TStringList.Create;
if flfilpad(0,'_NFSXML','') then
   begin
   edt_pastaxml.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   end;
fStatusPasta;

end;

procedure TFrm_NFSxXML.fStatusPasta;
begin
if trim(edt_pastaxml.Text)='' then
   sbn_ok.Visible:=false
else
   begin
   sbn_ok.visible:=DirExists(edt_pastaxml.Text)=true;
   end;
sbn_erro.Visible:=sbn_ok.visible=false;
bbProcessar.Enabled:=sbn_ok.Visible;
end;

procedure TFrm_NFSxXML.bbSairClick(Sender: TObject);
begin
close;
end;


function TFrm_NFSxXML.fImportarXML: boolean;
begin

end;

procedure TFrm_NFSxXML.bbBuscarPastaClick(Sender: TObject);
var
mPasta: string;
begin
if SelectDirectory('Selecionar Diretorio', '', mPasta) then
   begin
   edt_pastaxml.Text:=mPasta;
   fStatusPasta;
   end;

end;

procedure TFrm_NFSxXML.bbProcessarClick(Sender: TObject);
var
i: integer;
SearchRec: TSearchRec;
mqtdxml: integer;
local_impxml_thread_0001: impxml_thread_0001;

begin
if sbn_ok.Visible=false then
   begin
   messagedlg('Pasta '+edt_pastaxml.Text+' não é uma pasta valida!',mtWarning,[mbOk],0);
   exit;
   end;

DirList.Clear;

if edt_pastaxml.Text[length(edt_pastaxml.Text)]<>'\' then
   edt_pastaxml.Text:=edt_pastaxml.text+'\';

i := FindFirst(edt_pastaxml.Text+ '*.xml', faAnyFile, SearchRec);
mqtdxml:=0;
while i = 0 do
   begin
   DirList.Add(edt_pastaxml.Text + SearchRec.Name);
   i := FindNext(SearchRec);
   mqtdxml:=mqtdxml+1;
   end;

if mqtdxml=0 then
   lbl_qtdxml.Caption:= 'Nao Encontrado Nenhum Arquivo do Tipo xml'
else if mqtdxml=1 then
   lbl_qtdxml.Caption:= 'Foi Encontrado 1 arquivo xml'
else
   lbl_qtdxml.Caption:= 'Foram encontrados '+inttostr(mqtdxml)+' arquivos xmls ';

if mqtdxml<1 then
   begin
   MessageDlg('Nao foram encontrados xml para importar!',mtWarning,[mbOk],0);
   exit;
   end;

Timer_processando.Enabled:=true;
lbl_importar_xml.Visible:=true;
fDeletaPadroes(0,'_NFSXML','');
fGravaPadroes(0,'PASTA'          ,'text' ,'_NFSXML',edt_pastaxml.Text);

fExecutarSql('TRUNCATE TABLE CADNS_IMPXML');
fExecutarSql('TRUNCATE TABLE  CADRC170');


if form_ocorrencias_func=nil then
   application.CreateForm(TFrm_Ocorrencias,  form_ocorrencias_func);


local_impxml_thread_0001:=impxml_thread_0001.Create(false);
local_impxml_thread_0001.mCompleto:=true;

local_impxml_thread_0001.mSigla_Temp:='0001';
local_impxml_thread_0001.executando:=true;
local_impxml_thread_0001.x_Ini:=0;
local_impxml_thread_0001.x_final:=mqtdxml-1;

//      Replica1 := ThReplica.Create(False);
//      Replica1.Nome_Tabela:='CADPRO';
//local_impxml_thread_0001.FreeOnTerminate := true;

// local_impxml_thread_0001.Start;


end;

procedure TFrm_NFSxXML.Timer_processandoTimer(Sender: TObject);
begin
if mimportando_xml then
   lbl_importar_xml.Caption:='Importando xml aguarde...'
else
   begin
   lbl_importar_xml.Visible:=false;
   Timer_processando.Enabled:=false;
   lbl_qtdxml.Caption:=lbl_qtdxml.Caption+' Importação Concluida!';
   fLerdadosnfe;
   end;

end;

procedure TFrm_NFSxXML.fLerdadosnfe;
begin

qr_nfs.close;
qr_nfs.SQL.clear;
qr_nfs.SQL.Add('SELECT CHAVE_ACESSO, '+QuotedStr('NFe')+' || CHAVE_ACESSO AS CHAVE_STRING, CNPJ_EMIT,NUMDOC ,MAX(NSI_NUMERO) AS NSI_NUMERO '
              +',MAX(NSNUMERO) AS NSNUMERO'
              +',MAX(NSI_MODELO) AS NSI_MODELO '
              +',MAX(NSMODELO) AS NSMODELO '
              +' ,MAX(NSI_DATANF) AS NSI_DATANF '
              +' ,MAX(NSI_TOTALNF) AS NSI_TOTALNF '
              +' , MAX(NSTOTNOTA) AS NSTOTNOTA '
              +',MAX(NSDTEMIS) AS NSDTEMIS '

              +',MAX(ORIGEM) AS ORIGEM '
              +',MAX(DATADOC) AS DATADOC'

              +' FROM  ( '
              +' SELECT NSI_NUMERO,NSI_CNPJ_EMIT AS CNPJ_EMIT,NSI_MODELO,NSI_CHV_ACESSO AS CHAVE_ACESSO, 0 AS NSNUMERO'
              +' , '+QuotedStr('  ')+' AS NSMODELO '
              +',NSI_DATANF,NSI_TOTALNF, NULL AS NSDTEMIS, 0 AS NSTOTNOTA '
              +','+QuotedStr('XML')+' ORIGEM '
              +',NSI_DATANF AS DATADOC '
              +',NSI_NUMERO  AS NUMDOC '

              +' FROM CADNS_IMPXML '
              +' where 1=1 '
              +fFormatdatetimeParaConsulta('NSI_DATANF',true,edt_datini.Date)
              +fFormatdatetimeParaConsulta('NSI_DATANF',false,edt_datfin.Date)

              +' UNION ALL '
              +' SELECT 0 AS NSI_NUMERO,  '+DM1.Tb_empCGC.Asstring+' AS CNPJ_EMIT, 0 AS NSI_MODELO,  NSNFE_CHAVEACESSO || NSNFE_DCHAVEACESSO AS CHAVE_ACESSO, NSNUMERO, NSMODELO '
              +',NULL AS NSI_DATANF,0 AS NSI_TOTALNF, NSDTEMIS AS NSDTEMIS, NSTOTNOTA '
              +','+QuotedStr('NFE')+' ORIGEM '
              +',NSDTEMIS  AS DATADOC '
              +',NSNUMERO  AS NUMDOC '


              +' FROM CADNS '

              +' WHERE NSMODELO='+QuotedStr('55')
              +fFormatdatetimeParaConsulta('NSDTEMIS',true,edt_datini.Date)
              +fFormatdatetimeParaConsulta('NSDTEMIS',false,edt_datfin.Date)


              +' UNION ALL '
              +' SELECT 0 AS NSI_NUMERO, '+DM1.Tb_empCGC.Asstring+' as  CNPJ_EMIT, 0 AS NSI_MODELO,  NSNFCE_CHV_ACESSO AS NSI_CHV_ACESSO, NSNFCE_NUMERO AS NSNUMERO, NSNFCE_MODELO AS NSMODELO '
              +',NULL AS NSI_DATANF,0 AS NSI_TOTALNF, NSNFCE_DATA AS NSDTEMIS, NSTOTNOTA '
              +','+QuotedStr('NFCE')+' ORIGEM '
              +',NSNFCE_DATA  AS DATADOC '
              +',NSNFCE_NUMERO  AS NUMDOC '

              +' FROM CADNS '
              +' WHERE NSNFCE_MODELO='+QuotedStr('65')
              +fFormatdatetimeParaConsulta('NSNFCE_DATA',true,edt_datini.Date)
              +fFormatdatetimeParaConsulta('NSNFCE_DATA',false,edt_datfin.Date)
              +') ');
qr_nfs.sql.add(' GROUP BY CHAVE_ACESSO,CNPJ_EMIT,NUMDOC  ');

qr_nfs.sql.Text:='select * from  ('
            +qr_nfs.sql.text
            +') ';
qr_nfs.sql.add(' where 1=1 ');


if cb_listar.ItemIndex=1 then

   qr_nfs.sql.add(' and round(NSI_TOTALNF,2)<>round(NSTOTNOTA,2)')
else if cb_listar.ItemIndex=2 then
   qr_nfs.sql.add(' and round(NSI_TOTALNF,2)=round(NSTOTNOTA,2)');

qr_nfs.SQL.ADD(' order by CNPJ_EMIT,NUMDOC,DATADOC ');
try
   qr_nfs.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_nfs,241,'SGE','CADNS');
   end;
   end;
// ex_erroSql_Novo(qr_nfs,241,'SGE','CADNS');

end;


procedure TFrm_NFSxXML.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if (arredonda( qr_nfs.fieldbyname('NSI_TOTALNF').asfloat,2)<> arredonda(qr_nfs.fieldbyname('NSTOTNOTA').asfloat,2)) then
   begin
   DBGrid1.Canvas.Font.Color := clRed;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_NFSxXML.bbAbrirClick(Sender: TObject);
begin
fLerdadosnfe;
end;

procedure TFrm_NFSxXML.cb_listarClick(Sender: TObject);
begin
fLerdadosnfe;
end;

procedure TFrm_NFSxXML.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


qr_nfs.close;
//freeandnil(dirlist);

end;

procedure TFrm_NFSxXML.bbExportarClick(Sender: TObject);
begin
if (qr_nfs.Active=false) or (Qr_nfs.IsEmpty) then
   exit;
bbExportar.Enabled:=false;

Application.CreateForm(TfExport, fExport);
fExport.DataSet1 :=  src_nfs.DataSet;       //define o DataSet a ser exportado
fExport.ShowModal;
fExport.Free;
bbExportar.Enabled:=true;


end;

end.
