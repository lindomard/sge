unit S_NFE_XmlCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ToolEdit,db,dbtables, SqlExpr, XMLDoc,xmldom, XMLIntf, msxmldom, ADODB,
  ComCtrls, CheckLst;

type
  TFrm_NFE_XmlCliente = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sbnConsultar: TSpeedButton;
    sbnCriarPasta: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt_numnfini: TEdit;
    edt_numnffin: TEdit;
    edt_caminho: TEdit;
    bbExportar: TBitBtn;
    bbSair: TBitBtn;
    edt_dtini: TDateEdit;
    edt_dtfim: TDateEdit;
    bbEmail: TBitBtn;
    edt_email: TEdit;
    cb_varrernfe: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    cb_Gerar2: TCheckBox;
    cb_tipoxml: TComboBox;
    cb_xml_inutilizacao: TCheckBox;
    cb_xml_cancelamento: TCheckBox;
    RG_TIPOPED: TCheckListBox;
    procedure sbnConsultarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbExportarClick(Sender: TObject);
    procedure edt_dtiniExit(Sender: TObject);
    procedure edt_dtfimExit(Sender: TObject);
    procedure edt_numnfiniExit(Sender: TObject);
    procedure edt_numnffinExit(Sender: TObject);
    procedure sbnCriarPastaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbEmailClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_TIPOPEDClick(Sender: TObject);
  private
    { Private declarations }
    mQtdFalta: Integer;
    mNfe_NumNF: Integer;
    mNfe_Serie: String;
    mNfe_Modelo: String;
    mNfe_DatHorEve: TDateTime;
    mNfe_Num_Prot_Eve: String;
    mNfe_CHACESSO: String;

    function fVarrerIntersysNFE(pChave_Acesso: String;pTipoOper: Integer): Boolean;

    function LerdadosXml: Boolean;



  public
    { Public declarations }
    testeform: TForm;

    streStream: TStringStream;

  end;

var
  Frm_NFE_XmlCliente: TFrm_NFE_XmlCliente;

  testeform: TForm;

implementation

uses S_DefBac, Func, S_Agde, S_Ocorrencias, S_DM1, S_DM4, S_DM1_ADO,
  lerarq, S_EnviarEmail, flerarq, S_DM_MYSQL, func_excecoes;

{$R *.dfm}

procedure TFrm_NFE_XmlCliente.sbnConsultarClick(Sender: TObject);
begin
testeform := TFrm_NFE_XmlCliente(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;
if trim(Frm_DefBac.mcam)<>'' then
   edt_caminho.Text:=Frm_DefBac.mcam;
freeandnil(Frm_DefBac);




end;

procedure TFrm_NFE_XmlCliente.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_NFE_XmlCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_NFE_XmlCliente.bbExportarClick(Sender: TObject);
var
  Query_CadNS: TADOQuery;
  Query_CadNS_EVENFE: TADOQuery;
  Query_Ocorrencias: TADOQuery;


  form_agde: TFrm_Agde;
  form_ocorrencias: TFrm_Ocorrencias;
  mNomeArq_Ori: String;
  mNomeArq_Dest: String;
  mNumero_inicial: Real;

  mNumero_Final: Real;
  mExcel_NFE: TStrings;
  mProximo_numero: Integer;
  x_falta: Integer;
  mDataNF_Ant: TDateTime;


  procedure fbustituirtagnfe(pnomearquivo: string);
  var
  mtextoarq: TStringList;
  begin
  mtextoarq:=TStringList.create;
  mtextoarq.LoadFromFile(pnomearquivo);
  mtextoarq.Text:=fSubstituirtexto(mtextoarq.Text,'ccfeProc','nfeProc');
  if deletefile(pnomearquivo) then
     begin
     mtextoarq.savetofile(pnomearquivo);
     end;
  end;

// inicio

      procedure fSalvarXMLNFE;
      var
      mTiposPedidos: String;
      begin
      Query_CadNS:=TADOQuery.Create(nil);
      Query_CadNS.Connection:=DM1_ADO.ADOConnection1;

      Query_CadNS_EVENFE:=TADOQuery.Create(nil);
      Query_CadNS_EVENFE.Connection:=DM1_ADO.ADOConnection1;

      Query_Ocorrencias:=TADOQuery.Create(nil);
      Query_Ocorrencias.Connection:=DM1_ADO.ADOConnection1;
      Application.CreateForm(TFrm_Agde, form_agde);
      {
      Query_CadNS.Close;
      Query_CadNS.sql.clear;
      Query_CadNS.sql.Add('update CADNS_NFEEVE SET NSE_NUMERO= '
                        +' (select max(NSNUMERO) from cadns where   NSE_CHAVEP=NSCHAVEP AND NSE_CODEMP=NSCODEMP) '
                        +' where exists '
                        +'( select NSNUMERO,NSE_NUMERO FROM CADNS  WHERE NSCHAVEP=NSE_CHAVEP '
                        +' AND NSNUMERO<>NSE_NUMERO AND NSE_CHAVEP>0) '
                                  +'  and NSTIPO<2 ' );
      try
         query_cadns.execsql;
         fdm1startcommit;
      except
         end;
      }
      Query_CadNS.Close;
      Query_CadNS.sql.clear;

      if cb_tipoxml.ItemIndex<>2 then
         begin
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');

         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin4(1,'CADP01','P1CODEMP','NSCODEMP','P1LOTSEQ','NSLOTSEQ_CP','P1CHAVE','NSCHAVEP','P1ORDEM','NSORDEMP');






         Query_CadNS.Close;
         Query_CadNS.SQL.Clear;
         Query_CadNS.SQL.Add('SeleCT NSNUMERO,NSDTEMIS,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNFE_NUMPROT,NSSTATUS '
                           +',NSCODCLI,NSNFE_XML_CLIENTE,CRAZAO from CADNS '+iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                           +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +'  NSCODEMP=:CODEMP ');
         Query_CadNS.SQL.Add(' and NSMODELO='+QuotedStr('55'));
         Query_CadNS.Parameters.ParamByName('CODEMP').Value:=codemp;
         if trim(edt_dtini.Text)<>'/  /' then
            begin
            Query_CadNS.SQl.Add(fFormatdatetimeParaConsulta('NSDTEMIS',true,edt_dtini.date));
            end;

         if trim(edt_dtfim.Text)<>'/  /' then
            begin
            Query_CadNS.SQl.Add(fFormatdatetimeParaConsulta('NSDTEMIS',false,edt_dtfim.date));
            end;

         mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
         if trim(mcinst2)<>'' then
           Query_CadNS.SQL.Add(' and NSCODCLI '+mcinst2);


         if fsonumero(edt_numnfini.Text)<>0 then
            begin
            Query_CadNS.SQL.add(' and NSNUMERO>=:NUMINI ');
            Query_CadNS.Parameters.ParamByName('NUMINI').Value:=fsonumero(edt_numnfini.text);
            end;

         if fsonumero(edt_numnffin.Text)<>0 then
            begin
            Query_CadNS.SQL.add(' and NSNUMERO<=:NUMFIN ');
            Query_CadNS.Parameters.ParamByName('NUMFIN').Value:=fsonumero(edt_numnffin.text);
            end;
         end;
      if trim(mTiposPedidos)<>'' then
          Query_CadNS.SQL.Add(' and  P1TIPO '+mTiposPedidos);


      Query_CadNS.SQL.add(' order by NSNUMERO ');

      try
         Query_CadNS.Open;
     except on e : exception do
        begin
        ex_erroSql_ado(Query_CadNS,31545,'SGE','CADMOV_PROD_REPETIDO');
        FreeAndNil(Query_CadNS);
        FreeAndNil(form_agde);
        exit;
        end;
        end;


       la_tabelas  :='';
       la_Join     :='';
       la_instrucao:='';


      fInnerJoin3(1,'CADP01','P1CODEMP','NSE_CODEMP','P1CHAVE','NSE_CHAVEP','P1ORDEM','NSE_ORDEMP');


      Query_CadNS.Last;
      mNumero_Final  :=Query_CadNS.FieldbyName('NSNUMERO').AsFloat;
      mDataNF_Ant     :=Query_CadNS.FieldbyName('NSDTEMIS').AsDateTime;

      Query_CadNS.First;
      mNumero_inicial:=Query_CadNS.FieldbyName('NSNUMERO').AsFloat;

      Query_CadNS_EVENFE.Close;
      Query_CadNS_EVENFE.SQL.Clear;
      Query_CadNS_EVENFE.SQL.Add('Select CADNS_NFEEVE.NSE_OPERACAO,CADNS_NFEEVE.NSE_TIPO,CADNS_NFEEVE.NSE_NUMERO,CADNS_NFEEVE.NSE_SERIE  '
                                +',CADNS_NFEEVE.NSE_MODELO,CADNS_NFEEVE.NSE_CHAVEP,CADNS_NFEEVE.NSE_CHAVEP_NIVEL,CADNS_NFEEVE.NSE_ORDEMP '
                                +',CADNS_NFEEVE.NSE_DATHOR_EVE,CADNS_NFEEVE.NSE_XML_NPROT_EVE,CADNS_NFEEVE.NSE_XML_EVENTO '
                                +' from CADNS_NFEEVE, CADNS ' +iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +' where '+la_instrucao+iif(la_instrucao='','',' and ')
                                +'     CADNS.NSCODEMP=CADNS_NFEEVE.NSE_CODEMP  '
                                +' and CADNS.NSNUMERO=CADNS_NFEEVE.NSE_NUMERO '
                                +' and CADNS.NSMODELO=CADNS_NFEEVE.NSE_MODELO '
                                +' and CADNS.NSSERIE=CADNS_NFEEVE.NSE_SERIE '
                                +' and CADNS_NFEEVE.NSE_CODEMP=:CODEMP '
                                +' and CADNS_NFEEVE.NSE_NUMERO>=:NUMINI '
                                +' and CADNS_NFEEVE.NSE_NUMERO<=:NUMFIN ');
      mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
      if trim(mcinst2)<>'' then
        Query_CadNS_EVENFE.SQL.Add(' and NSCODCLI '+mcinst2);

      if trim(mTiposPedidos)<>'' then
          Query_CadNS_EVENFE.SQL.Add(' and  P1TIPO '+mTiposPedidos);

      Query_CadNS_EVENFE.SQL.Add(' order by NSE_NUMERO,NSE_OPERACAO ');
      Query_CadNS_EVENFE.Parameters.parambyname('CODEMP').Value:=codemp;
      Query_CadNS_EVENFE.Parameters.parambyname('NUMINI').Value:=mNumero_inicial;
      Query_CadNS_EVENFE.Parameters.parambyname('NUMFIN').Value:=mNumero_Final;
      try
         Query_CadNS_EVENFE.Open;
     except on e : exception do
        begin
        ex_erroSql_ado(Query_CadNS_EVENFE,303,'SGE','CADMOV_PROD_REPETIDO');
        FreeAndNil(Query_CadNS);
        FreeAndNil(form_agde);
        exit;
        end;
        end;



      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin4(1,'CADP01','P1CODEMP','NSCODEMP','P1LOTSEQ','NSLOTSEQ_CP','P1CHAVE','NSCHAVEP','P1ORDEM','NSORDEMP');




      Query_ocorrencias.Close;
      Query_ocorrencias.SQL.Clear;
      Query_ocorrencias.SQL.Add('SELECT TAB02.*,CASE WHEN TIPODOC=1 THEN '+QuotedStr('CARTA CORRECAO NORMAL')
                               +' WHEN TIPODOC=2 THEN '+QuotedStr('CARTA DE CORRECAO ELETRONICA')
                               +' WHEN TIPODOC=11 THEN '+QuotedStr('NOTA COMPLEMENTAR DE IMPOSTO')
                               +' ELSE '+QuotedStr('NAO IDENTIFICADO')+' END AS EVENTO FROM '
                               +' (( '
                               +' SELECT CC1ORDEMEVE AS ORDEM, '
                               +' CASE WHEN cc1nfe_xml_cliente IS Null '
                               +' THEN 01 ELSE 02 END as TIPODOC, '
                               +' CC1DATANF AS DATANF '
                               +',CC1NUMNF AS NUMNF '
                               +',CC1CHAVE AS CHAVEPED '
                               +',0 AS LOTSEQPED '
                               +',0 AS CODEMPPED '
                               +' FROM CADCCOR01, CADNS ' +iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +' where '+la_instrucao+iif(la_instrucao='','',' and ')
                               +' NSCODEMP=CC1CODEMP '
                               +' and NSNUMERO=CC1NUMNF '
                               +' and NSMODELO=CC1MODELO '
                               +' and NSSERIE=CC1SERIE '
                               +' and CC1CODEMP=:CODEMP '
                               +' and CC1NUMNF >=:NUMINI '
                               +' and CC1NUMNF <=:NUMFIN ');
      if trim(mTiposPedidos)<>'' then
          Query_ocorrencias.SQL.Add(' and  P1TIPO '+mTiposPedidos);

      mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
      if trim(mcinst2)<>'' then
        Query_ocorrencias.SQL.Add(' and NSCODCLI '+mcinst2);

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      Query_ocorrencias.SQL.Add(' UNION '
                               +' SELECT max(PNLINHA) AS ORDEM, '
                               +' 11 as TIPODOC, '
                               +' P1DATANF AS DATANF '
                               +',P1NUMNF AS NUMNF '
                               +',PNCHAVE AS CHAVEPED '
                               +',PNLOTSEQ AS LOTSEQPED '
                               +',PNCODEMP AS CODEMPPED '
                               +' FROM CADPNF,CADP01 '
                               +' WHERE P1CHAVE=PNCHAVE '
                               +' AND P1ORDEM=PNORDEM '
                               +' AND P1LOTSEQ=PNLOTSEQ '
                               +' and P1NUMNF>=:NUMINI_P1 '
                               +' and P1NUMNF<=:NUMFIN_P2 ');
      mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
      if trim(mcinst2)<>'' then
         Query_ocorrencias.SQL.Add(' and P1CODCLI '+mcinst2);
      if trim(mTiposPedidos)<>'' then
          Query_ocorrencias.SQL.Add(' and  P1TIPO '+mTiposPedidos);


      Query_ocorrencias.SQL.Add(' GROUP BY P1DATANF,P1NUMNF,PNCHAVE,PNLOTSEQ,PNCODEMP '
                               +') TAB02) ORDER BY NUMNF,TIPODOC ');
      Query_ocorrencias.Parameters.parambyname('CODEMP').Value   :=codemp;
      Query_ocorrencias.Parameters.ParamByName('NUMINI').Value   := mNumero_inicial;
      Query_ocorrencias.Parameters.ParamByName('NUMFIN').Value   := mNumero_Final;
      Query_ocorrencias.Parameters.ParamByName('NUMINI_P1').Value   := mNumero_inicial;
      Query_ocorrencias.Parameters.ParamByName('NUMFIN_P2').Value   := mNumero_Final;

      try
         Query_ocorrencias.Open;
     except on e : exception do
        begin
        ex_erroSql_ado(Query_ocorrencias,303,'SGE','CADMOV_PROD_REPETIDO');
        FreeAndNil(Query_CadNS);
        FreeAndNil(form_agde);
        exit;
        end;
        end;



      Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
      form_ocorrencias.lbl_ocorrencia.Caption:='Relação das ocorrencias na geração do xml';
      form_ocorrencias.ListView1.Clear;

      form_agde.Label1.Caption:='Gerando Xml das notas fiscais, aguarde!';
      form_agde.mag_qtdreg:=Query_CadNS.RecordCount;
      form_agde.mag_qtdlis:=0;
      form_agde.gb_progres.Visible:=true;
      if Query_CadNS.IsEmpty then
         begin
         Form_Ocorrencias.adicionaItemListView('Não foi encontrado nenhuma nota fiscal no periodo de '+FormatDatetime(fdt2, edt_dtini.Date)
            +' á '+formatDatetime(fdt2, edt_dtfim.date));
         Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
         end;

      mExcel_NFE:=TStringList.Create;
      mProximo_numero:=Query_CadNS.fieldbyName('NSNUMERO').AsInteger;

      mExcel_NFE.Add('Número;Data NF; Ocorrencia; Nome do XML Correspondente');
      // NUMERO - DATANF - CHAVE NFE - OCORRENCIA - NOME DO XML -
      mQtdFalta:=0;


      While not Query_CadNS.eof do
         begin
         form_agde.mag_qtdlis:=form_agde.mag_qtdlis+1;
         form_agde.Gauge1.Progress:=form_agde.mag_qtdreg*100 div form_agde.mag_qtdlis;
         form_agde.Update;
      {
         if mProximo_numero<>Query_CadNS.fieldbyName('NSNUMERO').AsFloat then
            begin
            for x_falta:=mProximo_numero to (Query_CadNS.fieldbyName('NSNUMERO').AsInteger-1) do
               begin
              Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', mProximo_numero)+' Data: '+FormatDateTime(fdt2, mDataNF_Ant)
                                                +' ****NOTA NAO ENCONTRADA*** Verifique!!!  ');
               Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=2;

               mExcel_NFE.Add(FloatTostr(mProximo_numero)+';'+FormatDateTime(fdt2, mDataNF_Ant)+'; ****NOTA NAO ENCONTRADA*** Verifique!!! ; ');
               mQtdFalta:=mQtdFalta+1;
               mProximo_numero:=mProximo_numero+1;
               end;
            end;
      }
      // inutilizacao
         if Query_CadNS.FieldByName('NSSTATUS').AsInteger=8 then
            begin
            Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                +Query_CadNS.fieldbyName('CRAZAO').AsString+'  Inutilizada ');
            Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=2;
            mNomeArq_Dest:='';

            if Query_CadNS_EVENFE.Locate('NSE_NUMERO',Query_CadNS.FieldByName('NSNUMERO').AsFloat,[]) then
               begin
               While (not Query_CadNS_EVENFE.Eof) and (Query_CadNS_EVENFE.FieldByName('NSE_NUMERO').asfloat=Query_CadNS.FieldByName('NSNUMERO').AsFloat) do
                  begin
                  if not Query_CadNS_EVENFE.FieldByName('NSE_XML_EVENTO').IsNull then
                     begin
                     mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-'
                                +Query_CadNS_EVENFE.FieldbyName('NSE_OPERACAO').AsString+'.XML';
                     (Query_CadNS_EVENFE.FieldByName('NSE_XML_EVENTO') as TMemoField).SaveToFile(mNomeArq_Dest);
                     mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                          +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                          +'; Nota Inutilizada '+Query_CadNS_EVENFE.FieldbyName('NSE_OPERACAO').AsString +';'+mNomeArq_Dest);

                     end;
                  Query_CadNS_EVENFE.next;
                  end;
               end;
           if trim(mNomeArq_Dest)='' then
              begin
              mNomeArq_Ori:=dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
              mNomeArq_Ori:=mNomeArq_ori+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
              mNomeArq_Ori:=mNomeArq_ori+'\ENVIADOS\'+FormatDatetime('yyyymm',Query_CadNS.FieldByName('NSDTEMIS').AsDateTime)+'\VERSAO_CLIENTE\'+Query_CadNS.FieldByName('NSNUMERO').AsString+'-INUT.XML';
              if fileexists(mNomeArq_Ori) then
                 begin
                 mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-'
                            +'INUT.XML';
                 CopyFile(pChar(mnomearq_ori),pChar(mnomearq_dest),false);
                 mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                      +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                      +'; Nota Inutilizada ;'+mNomeArq_Dest);
                 Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                    +Query_CadNS.fieldbyName('CRAZAO').AsString+' Gravada com Sucesso! ');
                 Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=1;
                 end;
              end;
            mProximo_numero:=mProximo_numero+1;
            Query_CadNS.Next;
            Continue;
            end;
      // cancelamento


         if Query_CadNS.FieldByName('NSSTATUS').AsInteger=9 then
            begin
            Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                +Query_CadNS.fieldbyName('CRAZAO').AsString+'  cancelamento ');
            Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=2;
            mNomeArq_Dest:='';

            if Query_CadNS_EVENFE.Locate('NSE_NUMERO',Query_CadNS.FieldByName('NSNUMERO').AsFloat,[]) then
               begin
               While (not Query_CadNS_EVENFE.Eof) and (Query_CadNS_EVENFE.FieldByName('NSE_NUMERO').asfloat=Query_CadNS.FieldByName('NSNUMERO').AsFloat) do
                  begin
                  if not Query_CadNS_EVENFE.FieldByName('NSE_XML_EVENTO').IsNull then
                     begin
                     mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-'
                                +Query_CadNS_EVENFE.FieldbyName('NSE_OPERACAO').AsString+'.XML';
                     (Query_CadNS_EVENFE.FieldByName('NSE_XML_EVENTO') as TMemoField).SaveToFile(mNomeArq_Dest);
                     mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                          +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                          +'; Nota Cancelada '+Query_CadNS_EVENFE.FieldbyName('NSE_OPERACAO').AsString +';'+mNomeArq_Dest);

                     end;
                  Query_CadNS_EVENFE.next;
                  end;
               end;
           if trim(mNomeArq_Dest)='' then
              begin
              mNomeArq_Ori:=dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
              mNomeArq_Ori:=mNomeArq_ori+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
              mNomeArq_Ori:=mNomeArq_ori+'\ENVIADOS\'+FormatDatetime('yyyymm',Query_CadNS.FieldByName('NSDTEMIS').AsDateTime)+'\VERSAO_CLIENTE\'+Query_CadNS.FieldByName('NSNUMERO').AsString+'-INUT.XML';
              if fileexists(mNomeArq_Ori) then
                 begin
                 mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-'
                           +'INUT.XML';
                 CopyFile(pChar(mnomearq_ori),pChar(mnomearq_dest),false);
                 mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                     +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +'; Nota Cancelada ;'+mNomeArq_Dest);
                 Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                    +Query_CadNS.fieldbyName('CRAZAO').AsString+' Gravada com Sucesso! ');
                 Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=1;
                 end;
              end;
           mProximo_numero:=mProximo_numero+1;
           Query_CadNS.Next;
           Continue;
           end;


      if cb_Gerar2.Checked then
         mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNFE_CHAVEACESSO').AsString+Query_CadNS.FieldByName('NSNFE_DCHAVEACESSO').AsString+'-NFE.XML'
      else
         mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-NFE.XML';
      //   mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-NFE.XML';

         if trim(Query_CadNS.FieldByName('NSNFE_DCHAVEACESSO').AsString)='' then
            begin
            mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                    +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +'; ***VERIFICAR NOTA, AS INFORMAÇÕES ESTAO IMCOMPLETAS *** ;'+mNomeArq_Dest);
            Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                +Query_CadNS.fieldbyName('CRAZAO').AsString+' Não é uma NFE ou Esta Inutizada! ');
            Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
            mProximo_numero:=mProximo_numero+1;
            Query_CadNS.Next;
            Continue;
            end;
         if Query_CadNS.FieldByName('NSNFE_XML_CLIENTE').IsNull then
            begin
            mNomeArq_Ori:=dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
            mNomeArq_Ori:=mNomeArq_ori+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
            mNomeArq_Ori:=mNomeArq_ori+'\ENVIADOS\'+FormatDatetime('yyyymm',Query_CadNS.FieldByName('NSDTEMIS').AsDateTime)+'\VERSAO_CLIENTE\'
                                         +Query_CadNS.FieldByName('NSNUMERO').AsString+'-NFE.XML';
            if fileexists(mNomeArq_Ori) then
               begin
               CopyFile(pChar(mnomearq_ori),pChar(mnomearq_dest),false);
               Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                   +Query_CadNS.fieldbyName('CRAZAO').AsString+' Gravada com Sucesso! ');
               Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=1;

              mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                    +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +'; NOTA OK;'+mNomeArq_Dest);

               end
            else
               begin
      //         parei aqui tentar encontar aqui
               Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                   +Query_CadNS.fieldbyName('CRAZAO').AsString+' Xml Não Encontrado! ');
               Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
               mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                    +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +';*** XML NÃO ENCONTRADO FAVOR VERIFICAR**** ;'+mNomeArq_Dest);
               mQtdFalta:=mQtdFalta+1;
               mProximo_numero:=mProximo_numero+1;
               Query_CadNS.Next;
               Continue;
               end;
            end
         else
            begin
            (Query_CadNS.FieldByName('NSNFE_XML_CLIENTE') as TMemoField).SaveToFile(mNomeArq_Dest);

             fbustituirtagnfe(mNomeArq_Dest);

            Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                +Query_CadNS.fieldbyName('CRAZAO').AsString+' Gravada com Sucesso! ');
            Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=1;
            mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                    +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +';Ok;'+mNomeArq_Dest);

            end;
         mDataNF_Ant     :=Query_CadNS.FieldbyName('NSDTEMIS').AsDateTime;
         mProximo_numero:=mProximo_numero+1;
         Query_CadNS.Next;

         end;
      mNomeArq_Dest:=edt_caminho.Text+'ProtocoloXml_'+fdeixanum(edt_dtini.Text)+'_a_'+fdeixanum(edt_dtfim.Text)+'.csv';
      while true do
         begin
         try
            mExcel_NFE.SaveToFile(mNomeArq_Dest);
            break;
         except on e : exception do
           begin
           mcinst2:=InputBox('Arquivos que a ser gravado '+mNomeArq_Dest+' Este arquivo esta em uso ou bloqueado','Digite um Novo Nome ou feche o programa que esta utilizando: ',mNomeArq_Dest);
           if trim(mcinst2)<>'' then
              mNomeArq_Dest:=mcinst2;
            end;
           end;
         end;
      FreeAndNil(mExcel_NFE);

      freeandnil(Query_CadNS);
      freeandnil(form_agde);

      freeandnil(Query_CadNS_EVENFE);
      freeandnil(Query_Ocorrencias);


      Form_Ocorrencias.ShowModal;
      freeandnil(form_ocorrencias);
      end;


// termino


// INICIO

      procedure fSalvarXMLNFCE;
      var
      query_nfce:TQuery;

      begin
      Query_CadNS:=TADOQuery.Create(nil);
      Query_CadNS.Connection:=DM1_ADO.ADOConnection1;

      Query_CadNS_EVENFE:=TADOQuery.Create(nil);
      Query_CadNS_EVENFE.Connection:=DM1_ADO.ADOConnection1;

      query_nfce:=TQuery.Create(nil);
      query_nfce.DatabaseName:=DM1.SG_ASSOC.databasename;

      Query_Ocorrencias:=TADOQuery.Create(nil);
      Query_Ocorrencias.Connection:=DM1_ADO.ADOConnection1;
      Application.CreateForm(TFrm_Agde, form_agde);
      {
      Query_CadNS.Close;
      Query_CadNS.sql.clear;
      Query_CadNS.sql.Add('update CADNS_NFEEVE SET NSE_NUMERO= '
                        +' (select max(NSNUMERO) from cadns where   NSE_CHAVEP=NSCHAVEP AND NSE_CODEMP=NSCODEMP) '
                        +' where exists '
                        +'( select NSNUMERO,NSE_NUMERO FROM CADNS  WHERE NSCHAVEP=NSE_CHAVEP '
                        +' AND NSNUMERO<>NSE_NUMERO AND NSE_CHAVEP>0) '
                                  +'  and NSTIPO<2 ' );
      try
         query_cadns.execsql;
         fdm1startcommit;
      except
         end;
      }
      Query_CadNS.Close;
      Query_CadNS.sql.clear;

      if cb_tipoxml.ItemIndex<>2 then
         begin
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');

         Query_CadNS.Close;
         Query_CadNS.SQL.Clear;
         Query_CadNS.SQL.Add('SeleCT NSNFCE_NUMERO AS NSNUMERO,NSNFCE_DATA AS NSDTEMIS,NSNFCE_CHV_ACESSO AS NSNFE_CHAVEACESSO'
                            +' ,NSNFE_DCHAVEACESSO,NSNFCE_NPROT AS NSNFE_NUMPROT, NSNFCE_SITUACAO AS  NSSTATUS,NSCHAVEP '
                           +',NSCODCLI,CRAZAO '
                           +', NSNFE_XML_CLIENTE '
                           +' from CADNS '+iif(la_tabelas='','',',')+la_tabelas


                           +'       '+la_Join
                           +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +'  NSCODEMP=:CODEMP ');
         Query_CadNS.SQL.Add(' and NSNFCE_MODELO='+QuotedStr('65'));
         Query_CadNS.Parameters.ParamByName('CODEMP').Value:=codemp;
         if trim(edt_dtini.Text)<>'/  /' then
            begin
            Query_CadNS.SQl.Add(fFormatdatetimeParaConsulta('NSNFCE_DATA',true,edt_dtini.date));
            end;

         if trim(edt_dtfim.Text)<>'/  /' then
            begin
            Query_CadNS.SQl.Add(fFormatdatetimeParaConsulta('NSNFCE_DATA',false,edt_dtfim.date));
            end;

         mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
         if trim(mcinst2)<>'' then
           Query_CadNS.SQL.Add(' and NSCODCLI '+mcinst2);


         if fsonumero(edt_numnfini.Text)<>0 then
            begin
            Query_CadNS.SQL.add(' and NSNFCE_NUMERO>=:NUMINI ');
            Query_CadNS.Parameters.ParamByName('NUMINI').Value:=fsonumero(edt_numnfini.text);
            end;

         if fsonumero(edt_numnffin.Text)<>0 then
            begin
            Query_CadNS.SQL.add(' and NSNFCE_NUMERO<=:NUMFIN ');
            Query_CadNS.Parameters.ParamByName('NUMFIN').Value:=fsonumero(edt_numnffin.text);
            end;
         end;

      Query_CadNS.SQL.add(' order by NSNFCE_NUMERO ');

      try
         Query_CadNS.Open;
      except on e : exception do
         begin
         ex_erroSql_ado(query_cadns,657,'SGE '+e.message,'CADVER');


         FreeAndNil(Query_CadNS);
         FreeAndNil(form_agde);
         exit;
         end;
         end;
      Query_CadNS.Last;
      mNumero_Final  :=Query_CadNS.FieldbyName('NSNUMERO').AsFloat;

      mDataNF_Ant     :=Query_CadNS.FieldbyName('NSDTEMIS').AsDateTime;

      Query_CadNS.First;
      mNumero_inicial:=Query_CadNS.FieldbyName('NSNUMERO').AsFloat;

      Query_CadNS_EVENFE.Close;
      Query_CadNS_EVENFE.SQL.Clear;
      Query_CadNS_EVENFE.SQL.Add('Select CADNS_NFEEVE.NSE_OPERACAO,CADNS_NFEEVE.NSE_TIPO,CADNS_NFEEVE.NSE_NUMERO,CADNS_NFEEVE.NSE_SERIE  '
                                +',CADNS_NFEEVE.NSE_MODELO,CADNS_NFEEVE.NSE_CHAVEP,CADNS_NFEEVE.NSE_CHAVEP_NIVEL,CADNS_NFEEVE.NSE_ORDEMP '
                                +',CADNS_NFEEVE.NSE_DATHOR_EVE,CADNS_NFEEVE.NSE_XML_NPROT_EVE,CADNS_NFEEVE.NSE_XML_EVENTO '
                                +' from CADNS_NFEEVE, CADNS '
                                +' where CADNS.NSCODEMP=CADNS_NFEEVE.NSE_CODEMP  '
                                +' and CADNS.NSNFCE_NUMERO=CADNS_NFEEVE.NSE_NUMERO '
                                +' and CADNS.NSchavep=CADNS_NFEEVE.NSE_CHAVEP '
                                +' and CADNS_NFEEVE.NSE_CODEMP=:CODEMP '
                                +' and CADNS_NFEEVE.NSE_NUMERO>=:NUMINI '
                                +' and CADNS_NFEEVE.NSE_NUMERO<=:NUMFIN ');
      mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
      if trim(mcinst2)<>'' then
        Query_CadNS_EVENFE.SQL.Add(' and NSCODCLI '+mcinst2);
      Query_CadNS_EVENFE.SQL.Add(' order by NSE_NUMERO,NSE_OPERACAO ');
      Query_CadNS_EVENFE.Parameters.parambyname('CODEMP').Value:=codemp;
      Query_CadNS_EVENFE.Parameters.parambyname('NUMINI').Value:=mNumero_inicial;
      Query_CadNS_EVENFE.Parameters.parambyname('NUMFIN').Value:=mNumero_Final;
      try
         Query_CadNS_EVENFE.Open;
      except on e : exception do
         ex_erroSql_ado(Query_CadNS_EVENFE,700,'func Erro:'+e.Message ,'CADEST');
         end;

//      ex_erroSql_ado(Query_CadNS_EVENFE,700,'func Erro:' ,'CADEST');




      Query_ocorrencias.Close;
      Query_ocorrencias.SQL.Clear;
      Query_ocorrencias.SQL.Add('SELECT TAB02.*,CASE WHEN TIPODOC=1 THEN '+QuotedStr('CARTA CORRECAO NORMAL')
                               +' WHEN TIPODOC=2 THEN '+QuotedStr('CARTA DE CORRECAO ELETRONICA')
                               +' WHEN TIPODOC=11 THEN '+QuotedStr('NOTA COMPLEMENTAR DE IMPOSTO')
                               +' ELSE '+QuotedStr('NAO IDENTIFICADO')+' END AS EVENTO FROM '
                               +' (( '
                               +' SELECT CC1ORDEMEVE AS ORDEM, '
                               +' CASE WHEN cc1nfe_xml_cliente IS Null '
                               +' THEN 01 ELSE 02 END as TIPODOC, '
                               +' CC1DATANF AS DATANF '
                               +',CC1NUMNF AS NUMNF '
                               +',CC1CHAVE AS CHAVEPED '
                               +',0 AS LOTSEQPED '
                               +',0 AS CODEMPPED '
                               +' FROM CADCCOR01, CADNS '
                               +' where NSCODEMP=CC1CODEMP '
                               +' and NSNUMERO=CC1NUMNF '
                               +' and NSMODELO=CC1MODELO '
                               +' and NSSERIE=CC1SERIE '
                               +' and CC1CODEMP=:CODEMP '
                               +' and CC1NUMNF >=:NUMINI '
                               +' and CC1NUMNF <=:NUMFIN ');
      mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
      if trim(mcinst2)<>'' then
        Query_ocorrencias.SQL.Add(' and NSCODCLI '+mcinst2);

       la_tabelas  :='';
       la_Join     :='';
       la_instrucao:='';

      Query_ocorrencias.SQL.Add(' UNION '
                               +' SELECT max(PNLINHA) AS ORDEM, '
                               +' 11 as TIPODOC, '
                               +' P1DATANF AS DATANF '
                               +',P1NUMNF AS NUMNF '
                               +',PNCHAVE AS CHAVEPED '
                               +',PNLOTSEQ AS LOTSEQPED '
                               +',PNCODEMP AS CODEMPPED '
                               +' FROM CADPNF,CADP01 '
                               +' WHERE P1CHAVE=PNCHAVE '
                               +' AND P1ORDEM=PNORDEM '
                               +' AND P1LOTSEQ=PNLOTSEQ '
                               +' and P1NUMNF>=:NUMINI_P1 '
                               +' and P1NUMNF<=:NUMFIN_P2 ');
      mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
      if trim(mcinst2)<>'' then
        Query_ocorrencias.SQL.Add(' and P1CODCLI '+mcinst2);

      Query_ocorrencias.SQL.Add(' GROUP BY P1DATANF,P1NUMNF,PNCHAVE,PNLOTSEQ,PNCODEMP '
                               +') TAB02) ORDER BY NUMNF,TIPODOC ');
      Query_ocorrencias.Parameters.parambyname('CODEMP').Value   :=codemp;
      Query_ocorrencias.Parameters.ParamByName('NUMINI').Value   := mNumero_inicial;
      Query_ocorrencias.Parameters.ParamByName('NUMFIN').Value   := mNumero_Final;
      Query_ocorrencias.Parameters.ParamByName('NUMINI_P1').Value   := mNumero_inicial;
      Query_ocorrencias.Parameters.ParamByName('NUMFIN_P2').Value   := mNumero_Final;

      try
         Query_ocorrencias.Open;

     except on e : exception do
        begin
        ex_erroSql_ado(Query_ocorrencias,836,'SGE','CADMOV_PROD_REPETIDO');
        end;
        end;




      Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
      form_ocorrencias.lbl_ocorrencia.Caption:='Relação das ocorrencias na geração do xml(NFCe) ';
      form_ocorrencias.ListView1.Clear;

      form_agde.Label1.Caption:='Gerando Xml das NFCe, aguarde!';
      form_agde.mag_qtdreg:=Query_CadNS.RecordCount;
      form_agde.mag_qtdlis:=0;
      form_agde.gb_progres.Visible:=true;
      if Query_CadNS.IsEmpty then
         begin
         Form_Ocorrencias.adicionaItemListView('Não foi encontrado nenhuma NFCe no periodo de '+FormatDatetime(fdt2, edt_dtini.Date)
            +' á '+formatDatetime(fdt2, edt_dtfim.date));
         Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
         end;

      mExcel_NFE:=TStringList.Create;
      mProximo_numero:=Query_CadNS.fieldbyName('NSNUMERO').AsInteger;

      mExcel_NFE.Add('Número;Data NF; Ocorrencia; Nome do XML Correspondente');
      // NUMERO - DATANF - CHAVE NFE - OCORRENCIA - NOME DO XML -
      mQtdFalta:=0;


      While not Query_CadNS.eof do
         begin
         form_agde.mag_qtdlis:=form_agde.mag_qtdlis+1;
         form_agde.Gauge1.Progress:=form_agde.mag_qtdreg*100 div form_agde.mag_qtdlis;
         form_agde.Update;
      {
         if mProximo_numero<>Query_CadNS.fieldbyName('NSNUMERO').AsFloat then
            begin
            for x_falta:=mProximo_numero to (Query_CadNS.fieldbyName('NSNUMERO').AsInteger-1) do
               begin
              Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', mProximo_numero)+' Data: '+FormatDateTime(fdt2, mDataNF_Ant)
                                                +' ****NOTA NAO ENCONTRADA*** Verifique!!!  ');
               Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=2;

               mExcel_NFE.Add(FloatTostr(mProximo_numero)+';'+FormatDateTime(fdt2, mDataNF_Ant)+'; ****NOTA NAO ENCONTRADA*** Verifique!!! ; ');
               mQtdFalta:=mQtdFalta+1;
               mProximo_numero:=mProximo_numero+1;
               end;
            end;
      }
      // inutilizacao
         if Query_CadNS.FieldByName('NSSTATUS').AsInteger=7 then
            begin
            Form_Ocorrencias.adicionaItemListView('NFce: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                +Query_CadNS.fieldbyName('CRAZAO').AsString+'  Inutilizada ');
            Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=2;
            mNomeArq_Dest:='';

            if Query_CadNS_EVENFE.Locate('NSE_NUMERO',Query_CadNS.FieldByName('NSNUMERO').AsFloat,[]) then
               begin
               While (not Query_CadNS_EVENFE.Eof) and (Query_CadNS_EVENFE.FieldByName('NSE_NUMERO').asfloat=Query_CadNS.FieldByName('NSNUMERO').AsFloat) do
                  begin
                  if not Query_CadNS_EVENFE.FieldByName('NSE_XML_EVENTO').IsNull then
                     begin
                     mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-'
                                +Query_CadNS_EVENFE.FieldbyName('NSE_OPERACAO').AsString+'.XML';
                     (Query_CadNS_EVENFE.FieldByName('NSE_XML_EVENTO') as TMemoField).SaveToFile(mNomeArq_Dest);
                     mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                          +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                          +'; Nota Inutilizada '+Query_CadNS_EVENFE.FieldbyName('NSE_OPERACAO').AsString +';'+mNomeArq_Dest);

                     end;
                  Query_CadNS_EVENFE.next;
                  end;
               end;
           if trim(mNomeArq_Dest)='' then
              begin
              mNomeArq_Ori:=dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
              mNomeArq_Ori:=mNomeArq_ori+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
              mNomeArq_Ori:=mNomeArq_ori+'\ENVIADOS\'+FormatDatetime('yyyymm',Query_CadNS.FieldByName('NSDTEMIS').AsDateTime)+'\VERSAO_CLIENTE\'+Query_CadNS.FieldByName('NSNUMERO').AsString+'-INUT.XML';
              if fileexists(mNomeArq_Ori) then
                 begin
                 mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-'
                            +'INUT.XML';
                 CopyFile(pChar(mnomearq_ori),pChar(mnomearq_dest),false);
                 mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                      +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                      +'; Nota Inutilizada ;'+mNomeArq_Dest);
                 Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                    +Query_CadNS.fieldbyName('CRAZAO').AsString+' Gravada com Sucesso! ');
                 Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=1;
                 end;
              end;
            mProximo_numero:=mProximo_numero+1;
            Query_CadNS.Next;
            Continue;
            end;
      // cancelamento


         if Query_CadNS.FieldByName('NSSTATUS').AsInteger=8 then
            begin
            Form_Ocorrencias.adicionaItemListView('NFCe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                +Query_CadNS.fieldbyName('CRAZAO').AsString+'  cancelamento ');
            Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=2;
            mNomeArq_Dest:='';

            if Query_CadNS_EVENFE.Locate('NSE_NUMERO',Query_CadNS.FieldByName('NSNUMERO').AsFloat,[]) then
               begin
               While (not Query_CadNS_EVENFE.Eof) and (Query_CadNS_EVENFE.FieldByName('NSE_NUMERO').asfloat=Query_CadNS.FieldByName('NSNUMERO').AsFloat) do
                  begin
                  if not Query_CadNS_EVENFE.FieldByName('NSE_XML_EVENTO').IsNull then
                     begin
                     mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-'
                                +Query_CadNS_EVENFE.FieldbyName('NSE_OPERACAO').AsString+'.XML';
                     (Query_CadNS_EVENFE.FieldByName('NSE_XML_EVENTO') as TMemoField).SaveToFile(mNomeArq_Dest);
                     mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                          +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                          +'; NFCe Cancelada '+Query_CadNS_EVENFE.FieldbyName('NSE_OPERACAO').AsString +';'+mNomeArq_Dest);

                     end;
                  Query_CadNS_EVENFE.next;
                  end;
               end;
           if trim(mNomeArq_Dest)='' then
              begin
              mNomeArq_Ori:=dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
              mNomeArq_Ori:=mNomeArq_ori+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
              mNomeArq_Ori:=mNomeArq_ori+'\ENVIADOS\'+FormatDatetime('yyyymm',Query_CadNS.FieldByName('NSDTEMIS').AsDateTime)+'\VERSAO_CLIENTE\'+Query_CadNS.FieldByName('NSNUMERO').AsString+'-INUT.XML';
              if fileexists(mNomeArq_Ori) then
                 begin
                 mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-'
                           +'INUT.XML';
                 CopyFile(pChar(mnomearq_ori),pChar(mnomearq_dest),false);
                 mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                     +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +'; Nota Cancelada ;'+mNomeArq_Dest);
                 Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                    +Query_CadNS.fieldbyName('CRAZAO').AsString+' Gravada com Sucesso! ');
                 Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=1;
                 end;
              end;
           mProximo_numero:=mProximo_numero+1;
           Query_CadNS.Next;
           Continue;
           end;


      if cb_Gerar2.Checked then
         mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNFE_CHAVEACESSO').AsString+'-NFCE.XML'
      else
         mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-NFCE.XML';
      //   mNomeArq_Dest:=edt_caminho.Text+Query_CadNS.FieldByName('NSNUMERO').AsString+'-NFE.XML';
                                                                                            
         if trim(Query_CadNS.FieldByName('NSNFE_CHAVEACESSO').AsString)='' then
            begin
            mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                    +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +'; ***VERIFICAR NOTA, AS INFORMAÇÕES ESTAO IMCOMPLETAS *** ;'+mNomeArq_Dest);
            Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                +Query_CadNS.fieldbyName('CRAZAO').AsString+' Não é uma NFE ou Esta Inutizada! ');
            Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
            mProximo_numero:=mProximo_numero+1;
            Query_CadNS.Next;
            Continue;
            end;
         query_nfce.close;
         query_nfce.sql.clear;
         query_nfce.sql.add('SELECT * FROM  (select NSE_XML_EVENTO,NSE_DATHOR_EVE FROM CADNS_NFEEVE '
                           +' WHERE  (NSE_OPERACAO='+quotedstr('ENVIONFCE')
                           +' OR NSE_OPERACAO='+quotedstr('65AUTORIZACAO')+ ') '
                           +' and NSE_CHAVEP='+query_cadns.FieldByName('NSCHAVEP').Asstring
                           +' and NSE_NUMERO='+query_cadns.FieldByName('NSNUMERO').Asstring
                           +' ORDER BY NSE_DATHOR_EVE DESC) '
                           +' WHERE ROWNUM<2 ');
          try
             query_nfce.open;
          except on e : exception do
             begin
             ex_erroSql_Novo(query_nfce,934,'SGE','CADVER');
             end;
             end;





         if  query_nfce.FieldByName('NSE_XML_EVENTO').IsNull then
            begin
            mNomeArq_Ori:=dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
            mNomeArq_Ori:=mNomeArq_ori+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
            mNomeArq_Ori:=mNomeArq_ori+'\ENVIADOS\'+FormatDatetime('yyyymm',Query_CadNS.FieldByName('NSDTEMIS').AsDateTime)+'\VERSAO_CLIENTE\'
                                         +Query_CadNS.FieldByName('NSNUMERO').AsString+'-NFCE.XML';
            if fileexists(mNomeArq_Ori) then
               begin
               CopyFile(pChar(mnomearq_ori),pChar(mnomearq_dest),false);
               Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                   +Query_CadNS.fieldbyName('CRAZAO').AsString+' Gravada com Sucesso! ');
               Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=1;

              mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                    +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +'; NFCe OK;'+mNomeArq_Dest);

               end
            else
               begin
      //         parei aqui tentar encontar aqui
               Form_Ocorrencias.adicionaItemListView('NFe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                   +Query_CadNS.fieldbyName('CRAZAO').AsString+' Xml Não Encontrado! ');
               Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=3;
               mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                    +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +';*** XML NÃO ENCONTRADO FAVOR VERIFICAR**** ;'+mNomeArq_Dest);
               mQtdFalta:=mQtdFalta+1;
               mProximo_numero:=mProximo_numero+1;
               Query_CadNS.Next;
               Continue;
               end;
            end
         else
            begin
            (Query_NFCE.FieldByName('NSE_XML_EVENTO') as TMemoField).SaveToFile(mNomeArq_Dest);

             fbustituirtagnfe(mNomeArq_Dest);

            Form_Ocorrencias.adicionaItemListView('NFCe: '+FormatFloat('000000', Query_CadNS.fieldbyName('NSNUMERO').AsFloat)+' Cliente: '
                                                +Query_CadNS.fieldbyName('CRAZAO').AsString+' Gravada com Sucesso! ');
            Form_Ocorrencias.ListView1.Items[Form_Ocorrencias.mPosicaoItem].ImageIndex:=1;
            mExcel_NFE.Add(Query_CadNS.fieldbyName('NSNUMERO').AsString+';'
                    +FormatDatetime(fdt2, Query_CadNS.fieldbyName('NSDTEMIS').AsDateTime)
                     +';Ok;'+mNomeArq_Dest);

            end;
         mDataNF_Ant     :=Query_CadNS.FieldbyName('NSDTEMIS').AsDateTime;
         mProximo_numero:=mProximo_numero+1;
         Query_CadNS.Next;

         end;
      mNomeArq_Dest:=edt_caminho.Text+'ProtocoloXml_'+fdeixanum(edt_dtini.Text)+'_a_'+fdeixanum(edt_dtfim.Text)+'.csv';
      while true do
         begin
         try
            mExcel_NFE.SaveToFile(mNomeArq_Dest);
            break;
         except on e : exception do
           begin
           mcinst2:=InputBox('Arquivos que a ser gravado '+mNomeArq_Dest+' Este arquivo esta em uso ou bloqueado','Digite um Novo Nome ou feche o programa que esta utilizando: ',mNomeArq_Dest);
           if trim(mcinst2)<>'' then
              mNomeArq_Dest:=mcinst2;
            end;
           end;
         end;
      FreeAndNil(mExcel_NFE);

      query_nfce.close;
      freeandnil(Query_nfce);
      freeandnil(Query_CadNS);
      freeandnil(form_agde);

      freeandnil(Query_CadNS_EVENFE);
      freeandnil(Query_Ocorrencias);


      Form_Ocorrencias.ShowModal;
      freeandnil(form_ocorrencias);
      end;



// TERMINO


begin
if trim(edt_caminho.Text)='' then
   begin
   MessageDlg('Favor Digitar uma pasta para geração dos arquivos!',mtWarning,[mbOk],0);
   edt_caminho.SetFocus;
   exit;
   end;

if not DirExists(edt_caminho.Text) then
   sbnCriarPastaClick(self);

if not DirExists(edt_caminho.Text) then
   begin
   MessageDlg('Favor Digitar uma pasta para geração dos arquivos!',mtWarning,[mbOk],0);
   edt_caminho.SetFocus;
   exit;
   end;
if edt_caminho.Text[length(edt_caminho.Text)]<>'\' then
   edt_caminho.Text:=edt_caminho.Text+'\';

if (trim(edt_dtini.Text)<>'/  /') and (trim(edt_dtfim.Text)<>'/  /') then
   begin
   if StrToDate(edt_dtini.Text)>StrtoDate(edt_dtfim.text) then
      begin
      MessageDlg('Data Inicial Maior que data Final, invalido!',mtWarning,[mbOk],0);
      edt_dtini.SetFocus;
      exit;
      end;
   end;

if (fsonumero(edt_numnfini.text)<>0) and (fSonumero(edt_numnffin.text)<>0) then
   begin
   if fSonumero(edt_numnfini.Text)>fsonumero(edt_numnffin.text) then
      begin
      MessageDlg('Numero Inicial Maior que Numero Final, invalido!',mtWarning,[mbOk],0);
      edt_numnfini.SetFocus;
      exit;
      end;
   end;


if cb_varrernfe.Checked then
   fVarrerIntersysNFE('',0);
if cb_tipoxml.ItemIndex=0 then
   fSalvarXMLNFE
else
   fSalvarXMLNFCE;
end;


procedure TFrm_NFE_XmlCliente.edt_dtiniExit(Sender: TObject);
begin
if trim(edt_dtini.Text)<>'/  /' then
   begin
   try
      edt_dtini.date:=StrtoDate(edt_dtini.Text);
   except
      MessageDlg('Favor Digitar uma data válida!',mtWarning,[mbOk],0);
      edt_dtini.SetFocus;
      end;
  end;
end;


/// INICIO




// TERMINO


procedure TFrm_NFE_XmlCliente.edt_dtfimExit(Sender: TObject);
begin
if trim(edt_dtfim.Text)<>'/  /' then
   begin
   try
      edt_dtfim.date:=StrtoDate(edt_dtfim.Text);
   except
      MessageDlg('Favor Digitar uma data válida!',mtWarning,[mbOk],0);
      edt_dtfim.SetFocus;
      end;
  end;

end;

procedure TFrm_NFE_XmlCliente.edt_numnfiniExit(Sender: TObject);
begin
edt_numnfini.Text:=fdeixanum2(edt_numnfini.Text);

end;

procedure TFrm_NFE_XmlCliente.edt_numnffinExit(Sender: TObject);
begin
edt_numnffin.Text:=fdeixanum2(edt_numnffin.Text);

end;

procedure TFrm_NFE_XmlCliente.sbnCriarPastaClick(Sender: TObject);
begin
if trim(edt_caminho.Text)<>'' then
   fcriarPastas(edt_caminho.Text);
end;

procedure TFrm_NFE_XmlCliente.FormCreate(Sender: TObject);
var
x: integer;
begin
if not DirExists(edt_caminho.Text) then
   fcriarPastas(edt_caminho.text);
edt_dtini.Date:=Date;
edt_dtfim.Date:=Date;
flcademp(1,0,'1');
edt_email.Text:=DM1.Tb_EmpEMP_CONT_EMAIL.AsString;
if codusr<>1111 then
   cb_varrernfe.Visible:=false;

if flfilpad(-1,'_NFE_XMLCLIENTE','CB_VARRERNFE') then
   cb_varrernfe.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true'
else
   cb_varrernfe.Checked:=true;

RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[0] := TRUE;
PageControl1.ActivePageIndex:=0;


end;

procedure TFrm_NFE_XmlCliente.bbEmailClick(Sender: TObject);
begin
bbExportarClick(Self);
Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
//Frm_EnviarEmail.lb_Para.Items.Add(edt_email.Text);
Frm_EnviarEmail.EdtAssunto.Text:='NOTAS FISCAIS : '+edt_dtini.Text+' à '+edt_dtfim.Text;
Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO TODOS OS XMLS DAS NOTAS FISCAIS DO PERIODO DESEJADO. ');
Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
Frm_EnviarEmail.mmMensagem.Lines.Add(' '+DM1.Tb_EmpRAZAO.AsString);
Frm_EnviarEmail.fZiparArquivos(edt_caminho.Text+'\*',edt_caminho.Text+'NFE_'+FormatDateTime('MMYYY',edt_dtini.Date)+'.zip','');
Frm_EnviarEmail.lbxAnexos.Items.Add(edt_caminho.Text+'NFE_'+FormatDateTime('MMYYY',edt_dtini.Date)+'.zip');
Frm_EnviarEmail.Tipo:=0;
Frm_EnviarEmail.CliFor:='-1';
Frm_EnviarEmail.ShowModal;
FreeandNil(Frm_EnviarEmail);
end;


function TFrm_NFE_XmlCliente.fVarrerIntersysNFE(pChave_Acesso: String;pTipoOper: Integer): Boolean;
{
Operação: 1-NFE =XML de Nota Fiscal Eletrônica
3-cancNFe  = XML de Cancelamento de Nota Fiscal Eletrônica
4-inutNFe   =  XML de Inutilização de Numerações de Notas Fiscais Eletrônicas
7-consStatServ = XML de Consulta da Situação do Serviço da Nota Fiscal Eletrônica
8-consCad  = XML de Consulta de Cadastro de Contribuintes
9-carta de correcao   =XML de carta de correção
}
var
Query_xml: TSQLQuery;
Query_nfs: TQuery;
AdoQuery_AtuCadNS: TADOQuery;



begin

AdoQuery_AtuCadNS:=TADOQuery.Create(nil);
AdoQuery_AtuCadNS.Connection:=DM1_ADO.ADOConnection1;


Query_nfs:=TQuery.Create(nil);
Query_nfs.DatabaseName:='SG_ASSOC';

Query_xml:=TSQLQuery.Create(nil);
Query_xml.SQLConnection:=DM_MYSQL.SQLConnection_NFE;
Query_xml.Close;
Query_xml.SQL.Clear;
Query_xml.SQL.Add('select * from intersys_cadnfe where Nfe_resultado=0 ');
if trim(pChave_Acesso)<>'' then
   begin
   Query_xml.SQL.add(' and nfe_chacessoNFE=:CHACESSONFE ');
   Query_xml.ParamByName('CHACESSONFE').AsString:=pChave_Acesso;
   end;

Query_xml.SQL.add(' and (nfe_operacao=1 or nfe_operacao=3 or nfe_operacao=4) ');

//Query_xml.fieldbyName(' and not nfe_xml_prot_ret is null ');
if pTipoOper<>0 then
   begin
   Query_xml.SQL.add(' and nfe_operacao=:OPERACAO ');
   Query_xml.ParamByName('OPERACAO').AsInteger:=pTipoOper;
   end;
try
   Query_xml.Open;
except on e : exception do
   begin
   result:=false;
   FreeAndNil(AdoQuery_AtuCadNS);
   FreeAndNil(Query_nfs);
   FreeAndNil(Query_xml);
   exit;
   end;
   end;
While not Query_xml.Eof do
   begin
   if (Query_xml.FieldByName('nfe_operacao').AsInteger=1) and
      (not Query_xml.FieldByName('nfe_xml_protocolado').IsNull) then
      begin
      Query_nfs.Close;
      Query_nfs.SQL.Clear;
      Query_nfs.SQL.Add('Select NSNFE_XML_CLIENTE from CADNS where NSNFE_CHAVEACESSO=:CHAVEACESSO ');
      Query_nfs.ParamByName('CHAVEACESSO').Value:=copy( Query_xml.fieldbyName('nfe_chacessoNFE').AsString,1,43);
      try
         query_nfs.Open;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nfs,1329,'SGE','CADMOV_PROD_REPETIDO');
         result:=false;
         exit;
         end;
         end;

      if not Query_nfs.IsEmpty then
         begin
         if Query_nfs.FieldByName('NSNFE_XML_CLIENTE').IsNull then
            begin
            AdoQuery_AtuCadNS.Close;
            AdoQuery_AtuCadNS.SQL.Clear;
            AdoQuery_AtuCadNS.SQL.Add('Update CADNS set NSNFE_XML_CLIENTE=:XML_CLIENTE where '
                                     +' NSNFE_CHAVEACESSO=:CHAVEACESSO ');
            AdoQuery_AtuCadNS.Parameters.ParamByName('XML_CLIENTE').Value :=Query_xml.FieldByName('nfe_xml_protocolado').AsString;
            AdoQuery_AtuCadNS.Parameters.ParamByName('CHAVEACESSO').Value :=copy(Query_xml.fieldbyName('nfe_chacessoNFE').AsString,1,43);
            AdoQuery_AtuCadNS.ExecSQL;
            fdm1StartCommit;
            end;
         end;
      end;
// inutilização
   if (Query_xml.FieldByName('nfe_operacao').AsInteger=4) and
      (not Query_xml.FieldByName('nfe_xml_recepcao_ret').IsNull) then
      begin
      streStream := TStringStream.Create(RetiraAcentos(Query_xml.FieldByName('nfe_xml_recepcao_ret').AsString));
      LerdadosXml;
      if mNFE_NumNF<>0 then
         begin
         Query_nfs.Close;
         Query_nfs.SQL.Clear;
         Query_nfs.SQL.Add('Select Count(*) from CADNS_NFEEVE where '
                          +' NSE_CODEMP=:CODEMP '
                          +' and NSE_NUMERO=:NUMERO '
                          +' and NSE_SERIE=:SERIE '
                          +' and NSE_MODELO=:MODELO ');
         Query_nfs.ParamByName('CODEMP').Value := codemp;
         Query_nfs.ParamByName('NUMERO').Value := mNfe_NumNF;
         Query_nfs.ParamByName('SERIE').Value  := mNfe_Serie;
         Query_nfs.ParamByName('MODELO').Value := mNfe_Modelo;
         try
            Query_nfs.Open;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_nfs,1372,'SGE','CADMOV_PROD_REPETIDO');
            result:=false;
            exit;
            end;
            end;

         if Query_nfs.Fields[0].AsInteger<1 then
            begin
            Query_nfs.Close;
            Query_nfs.SQL.Clear;
            Query_nfs.SQL.Add('Insert into CADNS_NFEEVE ('
                             +'  NSE_CODEMP,'
                             +'  NSE_OPERACAO,'
                             +'  NSE_TIPO,'
                             +'  NSE_NUMERO,'
                             +'  NSE_SERIE,'
                             +'  NSE_MODELO,'
                             +'  NSE_CHAVEP,'
                             +'  NSE_CHAVEP_NIVEL,'
                             +'  NSE_ORDEMP,'
                             +'  NSE_DATHOR_EVE,'
                             +'  NSE_XML_NPROT_EVE,'
                             +'  NSE_XML_EVENTO'
                             +' ) values ('
                             +' :NSE_CODEMP,'
                             +' :NSE_OPERACAO,'
                             +' :NSE_TIPO,'
                             +' :NSE_NUMERO,'
                             +' :NSE_SERIE,'
                             +' :NSE_MODELO,'
                             +' :NSE_CHAVEP,'
                             +' :NSE_CHAVEP_NIVEL,'
                             +' :NSE_ORDEMP,'
                             +' :NSE_DATHOR_EVE,'
                             +' :NSE_XML_NPROT_EVE,'
                             +' :NSE_XML_EVENTO'
                             +')');

           Query_nfs.ParamByName('NSE_CODEMP').Value        := codemp;
           Query_nfs.ParamByName('NSE_OPERACAO').Value      := 'CANCELAMENTO';
           Query_nfs.ParamByName('NSE_TIPO').Value          := 0;
           Query_nfs.ParamByName('NSE_NUMERO').Value        := mNfe_NumNF;
           Query_nfs.ParamByName('NSE_SERIE').Value         := mNfe_Serie;
           Query_nfs.ParamByName('NSE_MODELO').Value        := mNfe_Modelo;
           Query_nfs.ParamByName('NSE_CHAVEP').Value        := 0;
           Query_nfs.ParamByName('NSE_CHAVEP_NIVEL').Value  := 0;
           Query_nfs.ParamByName('NSE_ORDEMP').Value        := 0;
           Query_nfs.ParamByName('NSE_DATHOR_EVE').Value    := mNfe_DatHorEve;
           Query_nfs.ParamByName('NSE_XML_NPROT_EVE').Value := mNfe_Num_Prot_Eve;
           Query_nfs.ParamByName('NSE_XML_EVENTO').Value    := Query_xml.FieldByName('nfe_xml_recepcao_ret').AsString;
           try
              Query_nfs.ExecSQL;
              fdm1StartCommit;
           except;
              end;
           end;
         end;
      end;
// termino inutilizacao
   Query_xml.Next;
   end;
fDeletaPadroes(-1,'_NFE_XMLCLIENTE','CB_VARRERNFE');
fGravaPadroes(-1,'CB_VARRERNFE','checked','_NFE_XMLCLIENTE','false');
cb_varrernfe.Checked:=false;
FreeAndNil(AdoQuery_AtuCadNS);
FreeAndNil(Query_nfs);
FreeAndNil(Query_xml);

end;



function TFrm_NFE_XmlCliente.LerdadosXml: Boolean;
var
  vXMLRetorno: TXMLDocument;


 x: Integer;
 NodePrimeiro: IXMLNode;
 NodeMaster: IXMLNode;
 memo_string: TStrings;
 query_nfs: tQuery;
begin

vXMLRetorno := TXMLDocument.Create(self);


try
   vXMLRetorno.LoadFromstream(streStream);
   result:=true;
except
   result:=false;
   end;

mNfe_NumNF :=0;
mNfe_Serie :='';
mNfe_Modelo:='';
mNfe_Num_Prot_Eve:='';
mNfe_DatHorEve:=pdatanula;
mNfe_CHACESSO:='';

NodePrimeiro:=vXMLRetorno.ChildNodes. First;

memo_string:=TStringList.Create;
for x:=0 to NodePrimeiro.ChildNodes[0].ChildNodes.Count-1 do
   begin
   try
      if uppercase(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeName)='NNFINI' then
         mNfe_NumNF:=valint(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeValue)
      else if uppercase(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeName)='MOD' then
         mNfe_Modelo:=NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeValue
      else if uppercase(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeName)='SERIE' then
         mNfe_Serie:=NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeValue
      else if uppercase(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeName)='NPROT' then
         mNfe_Num_Prot_Eve:=NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeValue
      else if uppercase(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeName)='DHRECBTO' then
         begin
         mNfe_DatHorEve := StrToDateTime(copy(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeValue,1+8,2)+'/'+
                                           copy(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeValue,1+5,2)+'/'+
                                           copy(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeValue,1,4));

         end
      else if uppercase(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeName)='CHNFE' then
         begin
         mNfe_CHACESSO:=NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeValue;
         end;

      memo_string.Add(NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeName
                     +' texto '+NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].Text
                     +' valor '+NodePrimeiro.ChildNodes[0].ChildNodes.Nodes[x].NodeValue);

   except
      end;
   end;
if (trim(mNfe_CHACESSO)<>'') and (mNfe_NumNF=0) then
   begin
   Query_nfs:=TQuery.Create(nil);
   Query_nfs.DatabaseName:='SG_ASSOC';
   Query_nfs.Close;
   Query_nfs.SQL.Clear;
   Query_nfs.SQL.Add('Select NSNUMERO,NSSERIE,NSMODELO from CADNS where NSNFE_CHAVEACESSO=:CHAVEACESSO ');
   Query_nfs.ParamByName('CHAVEACESSO').Value:=copy(mNfe_CHACESSO,1,43);
   try
      query_nfs.Open;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_nfs,1517,'SGE','CADMOV_PROD_REPETIDO');
       result:=false;
       exit;
       end;
       end;

   if not Query_nfs.IsEmpty then
      begin
      mNfe_NumNF:=query_nfs.fieldbyName('NSNUMERO').AsInteger;
      mNfe_Serie:=query_nfs.fieldbyName('NSSERIE').AsString;
      mNfe_Modelo:=query_nfs.fieldbyName('NSMODELO').AsString;
      end;
   freeandnil(query_nfs);
   end;

//memo_string.SaveToFile('c:\teste.txt');
result:=true;

end;


procedure TFrm_NFE_XmlCliente.CODCLIKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;



end;

procedure TFrm_NFE_XmlCliente.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text := '';
      CODCLI.SetFocus;
      end
   else
      Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
      CODCLI.SetFocus;
   end;
end;

procedure TFrm_NFE_XmlCliente.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if Lbx_codcli.ItemIndex>=0 then
      Lbx_codcli.Items.Delete(Lbx_codcli.ItemIndex);


end;

procedure TFrm_NFE_XmlCliente.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

end.

