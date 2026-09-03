unit S_NFE_Download_Entra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SqlExpr,db,dbtables, Buttons;

type
  TFrm_NFE_Download_Entra = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    edt_chaveAcesso: TEdit;
    Panel3: TPanel;
    Timer_aguardar: TTimer;
    Panel4: TPanel;
    bbCancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    mNomeArqDownload: String;
    mnfe_chaveid     :Real;

    mnfe_ambiente: Integer;

    mnfe_servidor01: Integer;
    mnfe_servidor02: Integer;
    mnfe_servidor03: Integer;
    mnfe_tpemis: integer;

    mnfe_cnpj: string;

    mnfe_dathor_envio: TDateTime;

    Query_xml: TSQLQuery;


    function fGerarSolicitacao: Boolean;

  end;

var
  Frm_NFE_Download_Entra: TFrm_NFE_Download_Entra;

implementation

uses S_DM_MYSQL, S_DM4, S_DM1, Func, Func2;

{$R *.dfm}

function TFrm_NFE_Download_Entra.fGerarSolicitacao: Boolean;
var
mqtd: Integer;
query_temp: tQuery;
mXmlDownload: TStrings;

begin

mXmlDownload:=TStringList.create;


mXmlDownload.Add('<?xml version=\"1.0\" encoding=\"UTF-8\" ?>');

mXmlDownload.Add('<downloadNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"2.00\">');

if DM4.Tb_ParGer02PG2USANFE.AsInteger<2 then
   mXmlDownload.Add(fGeraXMLreal(0,'tpAmb',2)) // homologacao
else
   mXmlDownload.Add(fGeraXMLreal(0,'tpAmb',1)); // producao

mXmlDownload.Add('<xServ>DOWNLOAD NFE</xServ>'); // producao


mXmlDownload.Add(fGeraXMLString(0,'CNPJ',insere(DM1.Tb_EmpCGC.AsString,'0',14)));

mXmlDownload.Add(fGeraXMLString(0,'chNFe',edt_chaveAcesso.Text));
mXmlDownload.Add('</downloadNFe>');


query_temp:=tQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';




query_temp.close;
query_temp.SQL.clear;
query_temp.SQL.Add('SELECT * FROM CADPAR_NF where PNF_CODEMP=:CODEMP '
                     +' AND PNF_CHAVE=:CHAVE ');
query_temp.ParamByName('CODEMP').Value:=codemp;
if DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger=3 then
   query_temp.ParamByName('CHAVE').Value :='SCAN'
else
   query_temp.ParamByName('CHAVE').Value :='SERIE1';
query_temp.Open;

mnfe_servidor01:=query_temp.fieldbyName('PNF_SERVIDOR01').AsInteger;
mnfe_servidor02:=query_temp.fieldbyName('PNF_SERVIDOR02').AsInteger;
mnfe_servidor03:=query_temp.fieldbyName('PNF_SERVIDOR03').AsInteger;
mnfe_tpemis    :=DM4.Tb_ParGer02PG2NFETPEMIS.AsInteger;

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

if DM4.Tb_ParGer02PG2USANFE.AsInteger<2 then
   mnfe_ambiente:=2 // homologacao
else
   mnfe_ambiente:=1; // producao


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
Query_xml.parambyName('ChAcessoNFE').AsString :=edt_chaveAcesso.Text;
Query_xml.parambyName('servidor01').asinteger :=mnfe_servidor01;
Query_xml.parambyName('servidor02').asinteger :=mnfe_servidor02;
Query_xml.parambyName('servidor03').asinteger :=mnfe_servidor03;
Query_xml.parambyName('ambiente').asinteger   :=mnfe_ambiente;
Query_xml.parambyName('cnpj').AsString        :=mNfe_cnpj;
Query_xml.parambyName('tipoevento').asinteger := MNfe_tpemis; // 1-normal 2-contigencia 3-scan

Query_xml.parambyName('status').asinteger     :=0;

Query_xml.parambyName('dathor_col').AsString  :=FormatDateTime('yyyy/mm/dd hh:nn:ss', mnfe_dathor_envio);
Query_xml.parambyName('xml_recepcao').AsString:=mXmlDownload.Text;
Query_xml.parambyName('computador_ori').AsString:=pNomTer;
Query_xml.parambyName('operacao').AsInteger:=10;  // 1-nfe  3-Cancelamento 4-Inutilizacao 8-Conscad 9-Carta Correcao
Query_xml.parambyName('tpemis').AsInteger:=MNfe_tpemis;

try
   Query_xml.ExecSQL;
except
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
                    );

   Query_xml.parambyName('ChAcessoNFE').AsString :=edt_chaveAcesso.Text;
   Query_xml.parambyName('dathor_col').AsString  :=FormatDateTime('yyyy/mm/dd hh:nn:ss', mnfe_dathor_envio);
   Query_xml.parambyName('computador_ori').AsString:=pNomTer;
   try
      Query_xml.Open;
      mnfe_chaveid:=Query_xml.FieldbyName('nfe_id').AsInteger;
      break;
   except
      mnfe_chaveid:=0;
      if not DM_MYSQL.fAbreNFE(0) then
         break;
      end;
   end;
mqtd:=query_xml.fields[0].asinteger;

Timer_aguardar.Enabled:=true;
result:=true;
end;

procedure TFrm_NFE_Download_Entra.FormCreate(Sender: TObject);
begin
    Query_xml:=TSQLQuery.Create(nil);
    Query_xml.SQLConnection:=DM_MYSQL.SQLConnection_NFE;

end;

procedure TFrm_NFE_Download_Entra.bbCancelarClick(Sender: TObject);
begin
Timer_aguardar.Enabled:=false;
MessageDlg('Processamento Cancelado!',mtWarning,[mbOk],0);
mNomeArqDownload:='';
close;

end;

end.
