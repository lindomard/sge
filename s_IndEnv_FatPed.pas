unit s_IndEnv_FatPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, ExtCtrls, Buttons,adodb;

type
  TFrm_IndEnv_FatPed = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    src_ped: TDataSource;
    qr_ped: TQuery;
    qr_pedCODPRO: TFloatField;
    qr_pedNOMPRO: TStringField;
    qr_pedUNDPRO: TStringField;
    qr_pedMARCAPRO: TStringField;
    qr_pedQTDPED: TFloatField;
    qr_pedQTDPROD: TFloatField;
    qr_pedQTD_FALTA: TFloatField;
    DBGrid1: TDBGrid;
    qr_pedGERAR: TStringField;
    src_chaveop: TDataSource;
    qr_chaveop: TQuery;
    DBGrid_chaveop: TDBGrid;
    qr_chaveopCHAVEOP: TFloatField;
    qr_chaveopDATAOP: TDateTimeField;
    qr_chaveopQTDFAB: TFloatField;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    bbGerar: TBitBtn;
    BBSAIR: TBitBtn;
    qr_pedprazoval_mes: TFloatField;
    cb_todos: TCheckBox;
    u_ped: TUpdateSQL;
    qr_pedESTOQUE_LOCAL: TFloatField;
    qr_pedESTOQUE_OUTROS: TFloatField;
    procedure bbGerarClick(Sender: TObject);
    procedure cb_todosClick(Sender: TObject);
    procedure qr_pedBeforePost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure src_pedDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
  private
    { Private declarations }

    mqtdmarcados: integer;

    mlido_chaveop: real;

    procedure pFaturarMarcados;

  public
    { Public declarations }

     mpedori_chave: integer;
     mpedori_lotseq: integer;
     mpedori_codemp: integer;

    procedure pLerPendencias;

  end;

var
  Frm_IndEnv_FatPed: TFrm_IndEnv_FatPed;

implementation

uses func_excecoes, S_DM1_ADO, S_DM1, lerarq, Func;

{$R *.dfm}



procedure TFrm_IndEnv_FatPed.pLerPendencias;
begin
qr_ped.close;
qr_ped.SQL.Clear;
Qr_Ped.sql.add(' Select CODPRO,MAX(GERAR) AS GERAR,max(NOMPRO) AS NOMPRO,MAX(UNDPRO) AS UNDPRO '
              +',MAX(MARCAPRO) AS MARCAPRO, MAX(QTDPED) AS QTDPED, MAX(QTD_FALTA) AS QTD_FALTA '
              +',MAX(QTDPROD) AS QTDPROD,MAX(PRAZOVAL_MES) AS PRAZOVAL_MES '
              +',sum(CASE WHEN CEFILIAL='+INTTOSTR(log_filial_padrao)+' then CESALDO ELSE 0 END) AS ESTOQUE_LOCAL '
              +',sum(CASE WHEN CEFILIAL='+INTTOSTR(log_filial_padrao)+' then 0 ELSE CESALDO END) AS ESTOQUE_OUTROS '
              +' FROM ( ');




qr_ped.SQL.add('select '+QuotedStr(' ')+' as GERAR, PDNOME as NOMPRO,PDUND AS UNDPRO ,PDMARCA AS MARCAPRO,PDPRAZO as prazoval_mes,T2.*, QTDPED-QTDPROD  AS QTD_FALTA FROM ( '
                  +' SELECT P2CODPRO AS CODPRO,SUM(QTDPED) AS QTDPED,SUM(QTDPROD) AS QTDPROD FROM ( '
                  +' SELECT P2CODPRO, P2QTD AS QTDPED, 0 AS QTDPROD FROM CADP02 WHERE P2CHAVE='+IntToStr(mpedori_chave)
                  +' and P2CODEMP='+Inttostr(mpedori_codemp)
                  +' and P2LOTSEQ='+IntToStr(mpedori_lotseq)
                  +' UNION ALL '
                  +' SELECT OP2_CODPRO AS P2CODPRO, 0 AS QTDPED, OP2_QTDPROD AS QTDPROD FROM CADOP01,CADOP02 '
                  +'  WHERE OP2_CODIGO=OP1_CODIGO AND OP2_CODEMP=OP1_CODEMP '
                  +' AND OP2_LOTSEQ=OP1_LOTSEQ AND OP1_PEDORI_CHAVE='+Inttostr(mpedori_chave)
                  +' AND OP1_PEDORI_LOTSEQ='+Inttostr(mpedori_lotseq)+' AND OP1_PEDORI_CODEMP='+Inttostr(mpedori_codemp)
                  +' ) group by P2CODPRO  ) T2,CADPRO  WHERE PDCODPRO=CODPRO ');
qr_ped.sql.add(') t3,CADEST WHERE CECODPRO=CODPRO  group by CODPRO ');

try
   qr_ped.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_ped,77,'SGE','CADP02');
   qr_ped.Close;
   freeandnil(qr_ped);
   end;
   end;
end;

procedure TFrm_IndEnv_FatPed.pFaturarMarcados;
var
query_gravarop: TQuery;

mChaveOp: Integer;
mSeq: Integer;
mTotalPREV: Real;
mTotalREAL: Real;

mQtdPREV: Real;
mQtdREAL: Real;


strproc: TADOStoredProc;


begin





if not DM1_ADO.ADOConnection1.Connected=true then
   DM1_ADO.ADOConnection1.Open;
if DM1_ADO.ADOConnection1.Connected=false then
   begin
   MessageDlg('erro na conexao do ado !', mtError,[mbOk],0);
   exit;
   end;


strProc := TADOStoredProc.Create(NIL);
strProc.Connection:= DM1_ADO.ADOConnection1;


query_gravarop:=TQuery.create(nil);
query_gravarop.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
qr_ped.First;
While not qr_ped.eof do
   begin
   if qr_pedGERAR.AsString<>'X' then
      begin
      qr_ped.Next;
      continue;
      end;
   mChaveOp:=fBuscarChaveOrdemProducao;

   query_gravarop.Close;
   query_gravarop.SQL.Clear;
   query_gravarop.SQL.Add('Insert Into CADOP02 ('
                  +'OP2_CODEMP, '
                  +'OP2_FABENV, '
                  +'OP2_LOTSEQ, '
                  +'OP2_CODIGO, '
                  +'OP2_SEQ, '
                  +'OP2_CODPRO,'
                  +'OP2_QTDPREV, '
                  +'OP2_QTDPROD, '
                  +'OP2_PU, '
                  +'OP2_FAB_CHORI,'
                  +'OP2_FAB_CODIGO,'
                  +'OP2_FAB_QTD,'
                  +'OP2_FAB_PU,'
                  +'OP2_SITACAB,'
                  +'OP2_ORIGEM,'
                  +'OP2_NUMERO,'
                  +'OP2_FAB_DTFAB,'
                  +'OP2_FAB_VCTO,'
                  +'OP2_FAB_LOTE'
                  +') values ('
                  +':CODEMP ,'
                  +':FABENV,'
                  +':LOTSEQ, '
                  +':CODIGO ,'
                  +':SEQ,'
                  +':CODPRO,' // codigo do produto
                  +':QTDPREV,' // quantidade prevista
                  +':QTDPROD,' // quantidade produzada
                  +':PU,' // preco unitario
                  +':FAB_CHORI,' // chave de origem
                  +':FAB_CODIGO,' // codigo de origem
                  +':FAB_QTD,' // quantidade de origem
                  +':FAB_PU,' // preco unitario
                  +':SITACAB,' // Situacao do produto acabado
                  +':ORIGEM,' // origem das materias primas 0-normal 1-terceiros
                  +':NUMERO, '
                  +':FAB_DTFAB,'
                  +':FAB_VCTO,'
                  +':FAB_LOTE'
                  +')');

   query_gravarop.ParamByName('CODEMP').AsInteger  :=codemp;
   query_gravarop.ParamByName('FABENV').AsInteger  :=0;
   query_gravarop.ParamByName('LOTSEQ').AsInteger  :=ls_lotfab;
   query_gravarop.ParamByName('CODIGO').AsInteger  :=mChaveOp;
   query_gravarop.ParamByName('SEQ').AsInteger     :=1;
   query_gravarop.ParamByName('CODPRO').AsFloat    :=qr_pedCODPRO.AsFloat;  // codigo do produto
   query_gravarop.ParamByName('QTDPREV').AsFloat   :=qr_pedQTD_FALTA.AsFloat;  // quantidade prevista
   query_gravarop.ParamByName('QTDPROD').AsFloat   :=qr_pedQTD_FALTA.AsFloat; // quantidade produzada
   query_gravarop.ParamByName('PU').AsFloat        :=0; // preco unitario
   query_gravarop.ParamByName('FAB_CHORI').AsFloat :=0; // chave de origem
   query_gravarop.ParamByName('FAB_CODIGO').AsFloat:=0; // codigo de origem
   query_gravarop.ParamByName('FAB_QTD').AsFloat    :=0; // quantidade de origem
   query_gravarop.ParamByName('FAB_PU').asfloat    :=0;  // preco unitario
   query_gravarop.ParamByName('SITACAB').asfloat   :=0; // Situacao do produto acabado
   query_gravarop.ParamByName('ORIGEM').AsFloat    :=0; //  origem das materias primas 0-normal 1-terceiros
   query_gravarop.ParamByName('NUMERO').AsString        :=' '; //
   query_gravarop.ParamByName('FAB_DTFAB').AsDateTime   :=pdatanula; //
   query_gravarop.ParamByName('FAB_VCTO').AsDateTime    :=pdatanula; //
   query_gravarop.ParamByName('FAB_LOTE').AsString      :=' '; //
   Try
      query_gravarop.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_gravarop,28259,'func Erro:'+e.Message ,'CADP02_LOTES');
      exit;
      end;
      end;


   try
      strProc.Close;
      strproc.Parameters.Clear;


      strProc.ProcedureName:= 'DADOSOP';
      strProc.Parameters.CreateParameter('p_codpro',ftFloat,pdInput,SizeOf(Double), qr_pedCODPRO.AsInteger);
      strProc.Parameters.CreateParameter('P_CODEMP_FILIAL',ftFloat,pdInput,SizeOf(Double),mpedori_codemp);
      strProc.Parameters.CreateParameter('P_QTD',ftFloat,pdInput,SizeOf(Double), qr_pedQTD_FALTA.AsFloat);
      strProc.Parameters.CreateParameter('P_CHAVE_OP',ftFloat,pdInput,SizeOf(Double), 0);
      strProc.Parameters.CreateParameter('P_LOTSEQ_OP',ftFloat,pdInput,SizeOf(Double), 0);
      strProc.Open; //<--Error: Parameter 'Abbr' not found.
   except on e : exception do
      begin
      MessageDlg('Erro ao abrir as formulas '+e.Message,mtError,[mbOk],0);
      end;
      end;
   mSeq:=0;

   While not strproc.eof do
      begin
      if strproc.fieldbyname('TIPO_PROD').asstring='1' then
         begin
         strproc.next;
         continue;
         end;
      query_gravarop.Close;
      query_gravarop.SQL.Clear;
      query_gravarop.SQL.Add('Insert Into CADOP03 ('
              +'OP3_CODEMP, '
              +'OP3_FABENV, '
              +'OP3_LOTSEQ, '
              +'OP3_CODIGO, '
              +'OP3_SEQ, '
              +'OP3_CODMAT,'
              +'OP3_QTDPREV, '
              +'OP3_QTDUTIL, '
              +'OP3_PU, '
              +'OP3_SITMP,'
              +'OP3_ORIGEM,'
              +'OP3_NUMERO,'
              +'OP3_LOTE, '
              +'OP3_DTVCTO,'
              +'OP3_LOTE_RE ) values ('
              +':CODEMP,'
              +':FABENV,' // materias primas utilizadas para produção
              +':LOTSEQ,'
              +':CODIGO,'
              +':SEQ,'
              +':CODMAT,'
              +':QTDPREV,'
              +':QTDUTIL,'
              +':PU,'
              +':SITMP'+',' // Situacao do produto acabado
              +':ORIGEM'+',' // origem das materias primas 0-normal 1-terceiros
              +':NUMERO,'
              +':LOTE,'
              +':DTVCTO,'
              +':LOTE_RE)');
      mSeq:=mSeq+1;

      query_gravarop.Close;
      query_gravarop.ParamByName('CODEMP').AsInteger := codemp;
      query_gravarop.ParamByName('FABENV').AsInteger := 0;
      query_gravarop.ParamByName('LOTSEQ').AsInteger := ls_lotfab;
      query_gravarop.ParamByName('CODIGO').AsFloat   := mChaveOp;
      query_gravarop.ParamByName('SEQ').AsInteger    := mSeq;
      query_gravarop.ParamByName('CODMAT').AsFloat   := strproc.fieldbyname('CODPRO').AsFloat;
      query_gravarop.ParamByName('QTDPREV').AsFloat  := strproc.fieldbyname('QTD').AsFloat;
      query_gravarop.ParamByName('QTDUTIL').AsFloat  := strproc.fieldbyname('QTD').AsFloat;
      query_gravarop.ParamByName('PU').AsFloat       := strproc.fieldbyname('op3_pu').AsFloat;
      query_gravarop.ParamByName('SITMP').AsFloat    := 0;
      query_gravarop.ParamByName('ORIGEM').AsFloat   := 0;
      query_gravarop.ParamByName('NUMERO').AsString  := ' ';
      query_gravarop.ParamByName('LOTE').AsString    := strproc.fieldbyname('LOTE').AsString;
      query_gravarop.ParamByName('DTVCTO').AsDateTime:= strproc.fieldbyname('DTVCTO').AsDateTime;
      query_gravarop.ParamByName('LOTE_RE').AsString := ' ';
      Try
         query_gravarop.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_gravarop,28898,'func Erro:'+e.Message ,'CADP03');
         end;
         end;
      strproc.next;
      end;


// LINDOMAR
   mSeq:=0;
  strproc.first;

   While not strproc.eof do
      begin
      if strproc.fieldbyname('TIPO_PROD').asstring<>'1' then
         begin
         strproc.next;
         continue;
         end;

      query_gravarop.Close;
      query_gravarop.SQL.Clear;
      query_gravarop.SQL.Add('Insert Into CADOP03 ('
              +'OP3_CODEMP, '
              +'OP3_FABENV, '
              +'OP3_LOTSEQ, '
              +'OP3_CODIGO, '
              +'OP3_SEQ, '
              +'OP3_CODMAT,'
              +'OP3_QTDPREV, '
              +'OP3_QTDUTIL, '
              +'OP3_PU, '
              +'OP3_SITMP,'
              +'OP3_ORIGEM,'
              +'OP3_NUMERO,'
              +'OP3_LOTE, '
              +'OP3_DTVCTO,'
              +'OP3_LOTE_RE ) values ('
              +':CODEMP,'
              +':FABENV,' // materias primas utilizadas para produção
              +':LOTSEQ,'
              +':CODIGO,'
              +':SEQ,'
              +':CODMAT,'
              +':QTDPREV,'
              +':QTDUTIL,'
              +':PU,'
              +':SITMP'+',' // Situacao do produto acabado
              +':ORIGEM'+',' // origem das materias primas 0-normal 1-terceiros
              +':NUMERO,'
              +':LOTE,'
              +':DTVCTO,'
              +':LOTE_RE)');
      mSeq:=mSeq+1;

      query_gravarop.Close;
      query_gravarop.ParamByName('CODEMP').AsInteger := codemp;
      query_gravarop.ParamByName('FABENV').AsInteger := 1;
      query_gravarop.ParamByName('LOTSEQ').AsInteger := ls_lotfab;
      query_gravarop.ParamByName('CODIGO').AsFloat   := mChaveOp;
      query_gravarop.ParamByName('SEQ').AsInteger    := mSeq;
      query_gravarop.ParamByName('CODMAT').AsFloat   := strproc.fieldbyname('CODPRO').AsFloat;
      query_gravarop.ParamByName('QTDPREV').AsFloat  := strproc.fieldbyname('QTD').AsFloat;
      query_gravarop.ParamByName('QTDUTIL').AsFloat  := strproc.fieldbyname('QTD').AsFloat;
      query_gravarop.ParamByName('PU').AsFloat       := strproc.fieldbyname('op3_pu').AsFloat;
      query_gravarop.ParamByName('SITMP').AsFloat    := 0;
      query_gravarop.ParamByName('ORIGEM').AsFloat   := 0;
      query_gravarop.ParamByName('NUMERO').AsString  := ' ';
      query_gravarop.ParamByName('LOTE').AsString    := strproc.fieldbyname('LOTE').AsString;
      query_gravarop.ParamByName('DTVCTO').AsDateTime:= strproc.fieldbyname('DTVCTO').AsDateTime;
      query_gravarop.ParamByName('LOTE_RE').AsString := ' ';
      Try
         query_gravarop.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_gravarop,28898,'func Erro:'+e.Message ,'CADP03');
         end;
         end;
      strproc.next;
      end;

// inicio do final


   mTotalPREV:=0;
   mTotalREAL:=0;
   mQtdPREV  :=0;
   mQtdREAL  :=0;


   if fLerGenerico_query('CADOP03','sum(OP3_QTDPREV) as QTDPREV, sum(OP3_QTDUTIL) as QTDUTIL '
                                  +',SUM(ROUND( (OP3_QTDPREV*OP3_PU),2) ) AS TOTALPREV '
                                  +',SUM(ROUND( (OP3_QTDUTIL*OP3_PU),2) ) AS TOTALUTIL '
                                  ,'OP3_CODIGO=0'+FloatToStr(mChaveOp)
                                  +' and OP3_LOTSEQ=0'+IntToStr(ls_lotfab)
                                  +' AND OP3_FABENV=0 ',query_consulta) then
      begin
      mTotalPREV:=query_consulta.fieldbyname('TOTALPREV').asfloat;
      mTotalREAL:=query_consulta.fieldbyname('TOTALUTIL').asfloat;
      mTotalPREV:=query_consulta.fieldbyname('QTDPREV').asfloat;
      mTotalREAL:=query_consulta.fieldbyname('QTDUTIL').asfloat;
      end;

   query_gravarop.Close;
   query_gravarop.SQL.Clear;

   query_gravarop.SQL.Add('Insert Into CADOP01 ('
                    +' OP1_CODEMP,'
                    +' OP1_FABENV,'
                    +' OP1_LOTSEQ,'
                    +' OP1_CODIGO,'
                    +' OP1_TMPPREV,'
                    +' OP1_TMPUTIL,'
                    +' OP1_TOTPREV,'
                    +' OP1_TOTPROD,'
                    +' OP1_STATUS,'
                    +' OP1_ORIGEM,'
                    +' OP1_SITMP, '
                    +' OP1_SITACAB, '
                    +' OP1_DATA, '
                    +' OP1_DATAPREV, '
                    +' OP1_LOTE, '
                    +' OP1_DATAVEN, '
                    +' OP1_OBS01, '
                    +' OP1_OBS02, '
                    +' OP1_OBS03, '
                    +' OP1_OBS04, '
                    +' OP1_OBS05, '
                    +' OP1_OBS06, '
                    +' OP1_OBS07, '
                    +' OP1_OBS08, '
                    +' OP1_OBS09, '
                    +' OP1_OBS10, '
                    +' OP1_NOME '
                    +',OP1_QTDMAN '
                    +',OP1_SITUACAO '
                    +',OP1_PEDORI_CHAVE '
                    +',OP1_PEDORI_LOTSEQ '
                    +',OP1_PEDORI_CODEMP '

                    +' ) Values ('
                    +':CODEMP ,'
                    +':FABENV ,'
                    +':LOTSEQ, '
                    +':CHAVE, '
                    +':TMPPREV,'
                    +':TMPUTIL,'
                    +':TOTPREV,'
                    +':TOTPROD,'
                    +':STATUS,'  // status
                    +':ORIGEM,' // origem da materia prima 0-normal 1-de terceiros
                    +':SITMP, '
                    +':SITACAB,' // Situacao do produto acabado
                    +':DATA, '
                    +':DATAPREV, '
                    +':LOTE, '
                    +':DATAVEN, '
                    +':OBS01, '
                    +':OBS02, '
                    +':OBS03, '
                    +':OBS04, '
                    +':OBS05, '
                    +':OBS06, '
                    +':OBS07, '
                    +':OBS08, '
                    +':OBS09, '
                    +':OBS10, '
                    +':NOME'
                    +',:QTDMAN '
                    +',:SITUACAO '
                    +',:PEDORI_CHAVE '
                    +',:PEDORI_LOTSEQ '
                    +',:PEDORI_CODEMP '

                    +')');
   query_gravarop.ParamByName('CODEMP').AsFloat := codemp;
   query_gravarop.ParamByName('FABENV').AsFloat := 0;
   query_gravarop.ParamByName('LOTSEQ').AsFloat := ls_lotfab;
   query_gravarop.ParamByName('CHAVE').AsFloat  :=mChaveOp;

   query_gravarop.ParamByName('TMPPREV').AsFloat := mQtdPREV;
   query_gravarop.ParamByName('TMPUTIL').AsFloat := mQtdREAL;
   query_gravarop.ParamByName('TOTPREV').AsFloat := mTotalPREV;
   query_gravarop.ParamByName('TOTPROD').AsFloat := mTotalREAL;

   query_gravarop.ParamByName('STATUS').AsFloat   := 0;
   query_gravarop.ParamByName('ORIGEM').AsFloat   := 0;
   query_gravarop.ParamByName('SITMP').AsFloat    := 0;
   query_gravarop.ParamByName('SITACAB').AsFloat  := 0;
   query_gravarop.ParamByName('DATA').AsDateTime     := Date;
   query_gravarop.ParamByName('DATAPREV').AsDateTime := Date;
   query_gravarop.ParamByName('LOTE').AsString     := fBuscaLoteFabricacao(0,date);
   query_gravarop.ParamByName('DATAVEN').AsDateTime:= date +qr_pedprazoval_mes.asinteger;
   query_gravarop.ParamByName('OBS01').AsString    := 'PRODUCAO: '+qr_pedNOMPRO.AsString;
   query_gravarop.ParamByName('OBS02').AsString     := ' ';
   query_gravarop.ParamByName('OBS03').AsString     := ' ';
   query_gravarop.ParamByName('OBS04').AsString     := ' ';
   query_gravarop.ParamByName('OBS05').AsString     := ' ';
   query_gravarop.ParamByName('OBS06').AsString     := ' ';
   query_gravarop.ParamByName('OBS07').AsString     := ' ';
   query_gravarop.ParamByName('OBS08').AsString     := ' ';
   query_gravarop.ParamByName('OBS09').AsString     := ' ';
   query_gravarop.ParamByName('OBS10').AsString     := ' ';
   query_gravarop.ParamByName('NOME').AsString      := copy(qr_pedNOMPRO.AsString,1,60);
   query_gravarop.ParamByName('QTDMAN').AsFloat     := 1;
   query_gravarop.ParamByName('SITUACAO').AsFloat   := 0;
   query_gravarop.ParamByName('PEDORI_CHAVE').AsInteger    := mpedori_chave;
   query_gravarop.ParamByName('PEDORI_LOTSEQ').AsInteger   := mpedori_lotseq;
   query_gravarop.ParamByName('PEDORI_CODEMP').AsInteger   := mpedori_codemp;


   Try
      query_gravarop.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_gravarop,7667,'func Erro:'+e.Message ,'CADOP01');
      query_gravarop.close;
      freeandnil(query_gravarop);

      strproc.close;
      freeandnil(strproc);
      exit;

      end;
      end;
   qr_ped.Next;
   end;

 // termino do final
query_gravarop.close;
freeandnil(query_gravarop);

strproc.close;
freeandnil(strproc);

end;
procedure TFrm_IndEnv_FatPed.bbGerarClick(Sender: TObject);
begin
if Application.MessageBox(pchar('quer realmente gerar ordem de producao dos itens selecionados?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

pFaturarMarcados;
close;

end;

procedure TFrm_IndEnv_FatPed.cb_todosClick(Sender: TObject);
begin
qr_ped.DisableControls;
qr_ped.First;
// mqtdmarcados:=0;
While not qr_ped.Eof do
   begin
   if qr_pedQTD_FALTA.AsFloat>0 then
      begin
      qr_ped.Edit;
      qr_pedGERAR.AsString:=iif(cb_todos.checked=true,'X',' ');
      qr_ped.Post;
//      mqtdmarcados:=mqtdmarcados+iif(cb_todos.Checked=true,1,-1);
      end;
   qr_ped.Next;
   end;
qr_ped.EnableControls;
bbGerar.Enabled:=mqtdmarcados>0;
end;

procedure TFrm_IndEnv_FatPed.qr_pedBeforePost(DataSet: TDataSet);
begin
if qr_pedGERAR.AsString='X' then
   mqtdmarcados:=mqtdmarcados+1
else
   mqtdmarcados:=mqtdmarcados-1;

bbGerar.Enabled:=mqtdmarcados>0;

end;

procedure TFrm_IndEnv_FatPed.DBGrid1DblClick(Sender: TObject);
begin
if (qr_pedCODPRO.IsNull=false) and (qr_pedQTD_FALTA.asfloat>0) then
   begin
   qr_ped.edit;
   qr_pedGERAR.AsString:=iif(qr_pedgerar.AsString='X',' ','X');
   qr_ped.post;
   end;
end;

procedure TFrm_IndEnv_FatPed.src_pedDataChange(Sender: TObject;
  Field: TField);
begin

if mlido_chaveop<>qr_pedCODPRO.asfloat then
   begin
   qr_chaveop.close;
   qr_chaveop.sql.Clear;
   qr_chaveop.sql.Add('Select OP2_CODIGO as CHAVEOP, OP1_DATA as DATAOP, OP2_QTDPROD AS QTDFAB '
                      +' FROM CADOP01,CADOP02 '
                  +'  WHERE OP2_CODIGO=OP1_CODIGO AND OP2_CODEMP=OP1_CODEMP '
                  +' AND OP2_LOTSEQ=OP1_LOTSEQ AND OP1_PEDORI_CHAVE='+Inttostr(mpedori_chave)
                  +' AND OP1_PEDORI_LOTSEQ='+Inttostr(mpedori_lotseq)+' AND OP1_PEDORI_CODEMP='+Inttostr(mpedori_codemp)
                  +' AND OP2_CODPRO='+Qr_PedCODPRO.asstring
                  );
   try
     qr_chaveop.Open;
   except on e : exception do
      begin
      ex_erroSql_Novo(qr_chaveop,608,'func Erro:'+e.Message ,'CADOP01');
      exit;
      end;
      end;
   mlido_chaveop:=qr_pedCODPRO.asfloat;
   end;


end;

procedure TFrm_IndEnv_FatPed.FormCreate(Sender: TObject);
begin
    mlido_chaveop:=0;
    qr_pedESTOQUE_LOCAL.DisplayLabel:='Estoque Filial '+inttostr(log_filial_padrao);

end;

procedure TFrm_IndEnv_FatPed.BBSAIRClick(Sender: TObject);
begin
close;
end;

end.
