unit s_CorrecaoPedPDVDuplicado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons, DB, DBTables,lerarq,
  ExtCtrls, Grids, DBGrids;

type
  TFrm_CorrecaoPedPDVDuplicado = class(TForm)
    Query1: TQuery;
    gb_dados: TGroupBox;
    src_dadosapagar: TDataSource;
    DBGrid1: TDBGrid;
    qr_dadosapaga: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    bbLerdados: TBitBtn;
    bbProcessar: TBitBtn;
    bbSair: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbLerdadosClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbProcessarClick(Sender: TObject);
  private
    { Private declarations }
    mnometempped01: string;
    mnometempped02: string;
    mnometempoutros: string;

    function fCriarPedidosTempo: boolean ;

    function fDeletarCaddar: Boolean;

    function fDeletarFPCRDUP: Boolean;

    function fDeletarFPCR: Boolean;

    function fDeletarCADLDR: Boolean;

    function fDeletarCADP01: Boolean;

  public
    { Public declarations }
  end;

var
  Frm_CorrecaoPedPDVDuplicado: TFrm_CorrecaoPedPDVDuplicado;

implementation

uses S_DM1, Func, func_excecoes;

{$R *.dfm}

function TFrm_CorrecaoPedPDVDuplicado.fCriarPedidosTempo: boolean ;
var
query_temp: tquery;
mMensagem: string;
mRetorno: string;
   procedure pfechartudo;
   begin
   query_temp.close;
   freeandnil(query_temp);

   end;

begin
if trim(mnometempped01)<>'' then
   fExecutarComandoSQL(true,'drop table '+mnometempped01,mMensagem,7);

if trim(mnometempped02)<>'' then
   fExecutarComandoSQL(true,'drop table '+mnometempped02,mMensagem,77);

if trim(mnometempoutros)<>'' then
   fExecutarComandoSQL(true,'drop table '+mnometempoutros,mMensagem,80);


query_temp:=tquery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
mnometempped01:=fProcTemp(0);
query_temp.sql.add('Create table '+mnometempped01+' as ');
query_temp.sql.add('SELECT MIN(P1CHAVE) AS CHAVE, P1PEDORI1 AS ORIGEM, MAX(P1STATUS) AS  P1STATUS, P1NFCE_SERIE AS P1NFCE_SERIE '
                  +' ,MAX(P1DATAP) AS DATAMAX, MIN(P1DATAP) AS DATAMIN ,COUNT(*) as qtd FROM CADP01 '
                  +' WHERE LENGTH(TRIM(NVL(P1PEDORI1,'+QuotedStr('')+')))>0 '
                  +' AND SUBSTR(P1PEDORI1,1,8)<>'+QuotedStr('[Comanda')
                  +' AND INSTR(P1PEDORI1,'+quotedstr('/')+')>0 '
                  +' and P1CODEMP='+inttostr(codemp));

//                  +' AND P1CUPOM=1 and P1CODEMP='+inttostr(codemp));
//                  +' AND P1NFCE_NUMERO>0 ');
if edt_datini.Date>pdatanula then
   query_temp.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,edt_datini.Date));
if edt_datfin.Date>pdatanula then
   query_temp.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',false,edt_datfin.Date));
query_temp.sql.add(' group by P1NFCE_SERIE,P1PEDORI1 '
                  +' HAVING COUNT(*)>1 '
                  +' ORDER BY P1NFCE_SERIE,P1STATUS ');
  ex_erroSql_Novo(query_temp,59,'SGE ','CADP01');

try
   query_temp.ExecSQL;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,59,'SGE '+e.Message ,'CADP01');
   pfechartudo;
   result:=false;
   exit;
   end;
   end;
if not fExecutarComandoSQL(true,'create index '+mnometempped01+'_chave on '+mnometempped01+' (ORIGEM)  ',mretorno,115) then
   begin
   pfechartudo;
   result:=false;
   exit;
   end;
mnometempped02:=fProcTemp(0);

query_temp.Close;
query_temp.sql.Clear;
query_temp.sql.add('Create table '+mnometempped02+' as '
                  +' SELECT P1PEDORI1,P1CHAVE,P1LOTSEQ,P1ORDEM,P1CODEMP,CHAVE,QTD '
                  +' from cadp01,'+mnometempped01
                  +'  where P1PEDORI1=ORIGEM '
                  +' AND CHAVE<>P1CHAVE '
                  +' ORDER BY P1PEDORI1,P1CHAVE ');

try
   query_temp.ExecSQL;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,111,'SGE '+e.Message ,'CADP01');
   pfechartudo;
   result:=false;
   exit;
   end;
   end;
if not fExecutarComandoSQL(true,'create index '+mnometempped02+'_chave on '+mnometempped02+' (P1CHAVE,P1CODEMP)  ',mretorno,146) then
   begin
   pfechartudo;
   result:=false;
   exit;
   end;






mnometempoutros:=fProcTemp(0);

query_temp.close;
query_temp.sql.clear;
query_temp.sql.add('CREATE TABLE '+mnometempoutros+' AS '
                  +' SELECT CRNUMERO,CRDTEMIS,CRCODEMP, CRLOTSEQ_CP, CRNPED, FPCR.FPLOTE AS LOTEFP, CODLDR FROM '
                  +' CADDAR, CADNS, FPCRDUP, FPCR, CADLDR '
                  +' WHERE '
                  +' NSLOTSEQ_CP=CRLOTSEQ_CP '
                  +' and  NSCHAVEP=crnped '
                  +' AND NSORDEMP=CRCODEMP '
                  +' and NSTIPO=0 '
                  +'  AND FPCRDUP.FPNUMERO=CRNUMERO '
                  +' AND FPCRDUP.FPDESD=CRDESD '
                  +' AND FPCRDUP.FPDTEMIS=CRDTEMIS '
                  +' AND FPCRDUP.FPTIPO=CRDUP '
                  +' AND FPCRDUP.FPDUP_CODEMP=CRCODEMP '
                  +' AND FPCRDUP.FPCODCLI=CRCODCLI '
                  +' AND FPCR.FPLOTSEQ=FPCRDUP.FPLOTSEQ '
                  +' AND FPCR.FPLOTE=FPCRDUP.FPLOTE  AND FPCR.FPCODEMP=FPCRDUP.FPCODEMP '
                  +' AND CODLDR=FPCR.FPCODLDR AND CODEMP=FPCR.FPCODEMP '
                  +'  AND LOTSEQ=0 and CRCODEMP=1 ');
query_temp.sql.add(' and exists (select P1CHAVE from '+mnometempped02
                  +' where P1CHAVE=CRNPED AND P1CODEMP=CRCODEMP ) ');

query_temp.sql.add(' GROUP BY CRNUMERO,CRDTEMIS,CRCODEMP, CRLOTSEQ_CP, CRNPED, FPCR.FPLOTE, CODLDR '
                  +' order by CRNUMERO,CRDTEMIS '  );
try
   query_temp.ExecSQL;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,59,'SGE '+e.Message ,'CADP01');
   pfechartudo;
   result:=false;
   exit;
   end;
   end;
pfechartudo;


end;


procedure TFrm_CorrecaoPedPDVDuplicado.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var mMensagem: string;
begin
if trim(mnometempped01)<>'' then
   fExecutarComandoSQL(true,'drop table '+mnometempped01,mMensagem,208);

if trim(mnometempped02)<>'' then
   fExecutarComandoSQL(true,'drop table '+mnometempped02,mMensagem,211);

if trim(mnometempoutros)<>'' then
   fExecutarComandoSQL(true,'drop table '+mnometempoutros,mMensagem,214);


end;

procedure TFrm_CorrecaoPedPDVDuplicado.bbLerdadosClick(Sender: TObject);
begin
gb_dados.Visible:=false;
if not fCriarPedidosTempo then
   begin
   MessageDlg('Náo foi possivel criar a tabela '+mnometempped01,mtError,[mbOk],0);
   exit;
   end;
qr_dadosapaga.Close;
qr_dadosapaga.SQL.clear;
qr_dadosapaga.SQL.add('Select * from '+mnometempoutros);

try
   qr_dadosapaga.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_dadosapaga,161,'SGE '+e.Message ,'CADP01');
   end;
   end;
gb_dados.Caption:='Dados que serao apagados extrados de : ' + mnometempoutros;
gb_dados.Visible:=true;

end;

procedure TFrm_CorrecaoPedPDVDuplicado.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CorrecaoPedPDVDuplicado.bbProcessarClick(Sender: TObject);
begin
if not fDeletarCaddar then
   begin
   messagedlg('Erro ao deletar o caddar"' , mtwarning,  [mbOk] ,0);
   exit;
   end;

if not fDeletarFPCRDUP then
   begin
   messagedlg('Erro ao deletar o FPCRDUP"' , mtwarning,  [mbOk] ,0);
   exit;
   end;

if not fDeletarFPCR then
   begin
   messagedlg('Erro ao deletar o FPCR"' , mtwarning,  [mbOk] ,0);
   exit;
   end;


if not fDeletarCADLDR then
   begin
   messagedlg('Erro ao deletar o CADLDR"' , mtwarning,  [mbOk] ,0);
   exit;
   end;

if not fDeletarCADP01 then
   begin
   messagedlg('Erro ao deletar o CADP01"' , mtwarning,  [mbOk] ,0);
   exit;
   end;
bbLerdadosClick(self);

end;



function tFrm_CorrecaoPedPDVDuplicado.fDeletarCaddar: Boolean;
var
query_caddar: tQuery;
begin
query_caddar:=tQuery.create(nil);
query_caddar.databasename:=DM1.SG_ASSOC.databasename;
query_caddar.sql.add('DELETE from CADDAR '
                    +' where exists '
                    +' (select * from '+mnometempoutros+' TABLE_RECUPERA WHERE CADDAR.CRCODEMP=TABLE_RECUPERA.CRCODEMP '
                    +' AND CADDAR.CRLOTSEQ_CP=TABLE_RECUPERA.CRLOTSEQ_CP '
                    +' AND CADDAR.CRNPED=TABLE_RECUPERA.CRNPED  )');
try
   query_caddar.execsql;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_caddar,244,'SGE '+e.Message ,'CADDAR');
   result:=false;
   exit;
   end;
   end;
query_caddar.Close;
freeandnil(query_caddar);

end;



function tFrm_CorrecaoPedPDVDuplicado.fDeletarFPCRDUP: Boolean;
var
query_caddar: tQuery;
begin
query_caddar:=tQuery.create(nil);
query_caddar.databasename:=DM1.SG_ASSOC.databasename;
query_caddar.sql.add('DELETE  from FPCRDUP '
                    +' where exists '
                    +' (select * from '+mnometempoutros+' TABLE_RECUPERA WHERE FPCRDUP.FPCODEMP=TABLE_RECUPERA.CRCODEMP '
                    +' AND FPCRDUP.FPLOTSEQ=TABLE_RECUPERA.CRLOTSEQ_CP '
                    +' AND FPCRDUP.FPLOTE=TABLE_RECUPERA.LOTEFP) ');
try
   query_caddar.execsql;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_caddar,280,'SGE '+e.Message ,'FPCRDUP');
   result:=false;
   exit;
   end;
   end;
query_caddar.Close;
freeandnil(query_caddar);

end;




function tFrm_CorrecaoPedPDVDuplicado.fDeletarFPCR: Boolean;
var
query_caddar: tQuery;
begin
query_caddar:=tQuery.create(nil);
query_caddar.databasename:=DM1.SG_ASSOC.databasename;
query_caddar.sql.add('DELETE  from FPCR '
                    +' where exists '
                    +'(select * from '+mnometempoutros+' TABLE_RECUPERA WHERE FPCR.FPCODEMP=TABLE_RECUPERA.CRCODEMP '
                    +' AND FPCR.FPLOTSEQ=TABLE_RECUPERA.CRLOTSEQ_CP '
                    +' AND FPCR.FPLOTE=TABLE_RECUPERA.LOTEFP )');

try
   query_caddar.execsql;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_caddar,315,'SGE '+e.Message ,'FPCRDUP');
   result:=false;
   exit;
   end;
   end;
query_caddar.Close;
freeandnil(query_caddar);

end;


function tFrm_CorrecaoPedPDVDuplicado.fDeletarCADLDR: Boolean;
var
query_caddar: tQuery;
begin
query_caddar:=tQuery.create(nil);
query_caddar.databasename:=DM1.SG_ASSOC.databasename;
query_caddar.sql.add('DELETE  from CADLDR '
                    +' where exists '
                    +' (SELECT * FROM '+mnometempoutros+' TABLE_RECUPERA WHERE CADLDR.CODEMP=TABLE_RECUPERA.CRCODEMP '
                    +' AND CADLDR.LOTSEQ=TABLE_RECUPERA.CRLOTSEQ_CP '
                    +' AND CADLDR.CODLDR=TABLE_RECUPERA.CODLDR)');

try
   query_caddar.execsql;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_caddar,342,'SGE '+e.Message ,'CADLDR');
   result:=false;
   exit;
   end;
   end;
query_caddar.Close;
freeandnil(query_caddar);

end;


function tFrm_CorrecaoPedPDVDuplicado.fDeletarCADP01: Boolean;
var
query_caddar: tQuery;
begin
query_caddar:=tQuery.create(nil);
query_caddar.databasename:=DM1.SG_ASSOC.databasename;
query_caddar.sql.add('DELETE  from CADP01 '
                    +' where exists '
                    +' (SELECT * FROM '+mnometempoutros+' TABLE_RECUPERA WHERE CADP01.P1CODEMP=TABLE_RECUPERA.CRCODEMP '
                    +' AND CADP01.P1LOTSEQ=TABLE_RECUPERA.CRLOTSEQ_CP '
                    +' AND CADP01.P1CHAVE=TABLE_RECUPERA.CRNPED AND CADP01.P1ORDEM=1 )');

try
   query_caddar.execsql;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_caddar,368,'SGE '+e.Message ,'CADP01');
   result:=false;
   exit;
   end;
   end;
query_caddar.Close;
freeandnil(query_caddar);

end;




end.
