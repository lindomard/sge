unit s_faturarxml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient, Grids, DBGrids, ADODB,
  xmldom, XMLIntf, msxmldom, XMLDoc, DBTables, DateUtils,s_DadosCNPJ,
  DBCtrls;

type
  Tfrm_faturarxml = class(TForm)
    Panel1: TPanel;
    bbBuscarXML: TBitBtn;
    bbFaturar: TBitBtn;
    cds_detalhe: TClientDataSet;
    cds_detalheDETPRODCPROD: TStringField;
    cds_detalhenomepro: TStringField;
    cds_detalheDETPRODNCM: TStringField;
    cds_detalheDETPRODCFOP: TStringField;
    cds_detalhecst: TStringField;
    cds_detalheDETPRODUCOM: TStringField;
    cds_detalheDETPRODQCOM: TFloatField;
    cds_detalheDETPRODVUNCOM: TFloatField;
    cds_detalhealiq_icms: TFloatField;
    cds_detalhealiq_issqn: TFloatField;
    cds_detalhepercipi: TFloatField;
    cds_detalheTOTALISSQNTOTVSERV: TFloatField;
    cds_detalheDETINFADPROD: TMemoField;
    cds_detalheCSOSN: TStringField;
    cds_detalheORI_PROD: TStringField;
    cds_detalheVDESC: TFloatField;
    cds_detalheICMSVBC: TFloatField;
    cds_detalheDETPRODVPROD: TFloatField;
    cds_cabecalho: TClientDataSet;
    cds_cabecalhoEMITXNOME: TStringField;
    cds_cabecalhoendereco_comp: TStringField;
    cds_cabecalhoemicidadeuf: TStringField;
    cds_cabecalhofone_fax: TStringField;
    cds_cabecalhocep_emit: TStringField;
    cds_cabecalhosaida_entrada: TStringField;
    cds_cabecalhoIDENNF: TStringField;
    cds_cabecalhoIDESERIE: TStringField;
    cds_cabecalhoEMITIE: TStringField;
    cds_cabecalhoDESTISUF: TStringField;
    cds_cabecalhoemit_cnpj: TStringField;
    cds_cabecalhochave_acesso_calc: TStringField;
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
    cds_cabecalhoTT_XNOME: TStringField;
    cds_cabecalhofrete_cif_fob: TStringField;
    cds_cabecalhoTRANSPVEICTRANSPPLACA: TStringField;
    cds_cabecalhoTRANSPVEICTRANSPUF: TStringField;
    cds_cabecalhotransp_cnpj: TStringField;
    cds_cabecalhoTT_XENDER: TStringField;
    cds_cabecalhoTT_XMUN: TStringField;
    cds_cabecalhoTT_UF: TStringField;
    cds_cabecalhoTT_IE: TStringField;
    cds_cabecalhoTRANSPVOLQVOL: TIntegerField;
    cds_cabecalhoTRANSPVOLMARCA: TStringField;
    cds_cabecalhoTRANSPVOLPESOB: TFloatField;
    cds_cabecalhoTRANSPVOLPESOL: TFloatField;
    cds_cabecalhoINFADICINFCPL: TMemoField;
    cds_cabecalhoINFADICINFADFISCO: TMemoField;
    cds_cabecalhoTOTALISSQNTOTVISS: TFloatField;
    cds_cabecalhoTOTALISSQNTOTVBC: TFloatField;
    cds_cabecalhoEMITIM: TStringField;
    cds_cabecalhoTOTALISSQNTOTVSERV: TFloatField;
    cds_cabecalhoCHAVE_ACESSO: TStringField;
    cds_cabecalhoEMITIEST: TStringField;
    cds_cabecalhoIDEDEMI: TDateTimeField;
    cds_cabecalhodata_vencimentos: TStringField;
    cds_cabecalhovalor_texto: TStringField;
    cds_cabecalhoemissao_texto: TStringField;
    cds_cabecalhorecebemos: TStringField;
    cds_cabecalhonumeronf: TFloatField;
    cds_cabecalhofantasia_cliente: TStringField;
    cds_cabecalhoTRANSPVOLESP: TStringField;
    cds_cabecalhoCRT: TIntegerField;
    cds_cabecalhoIDENATOP: TStringField;
    cds_cabecalhohora_saida: TStringField;
    cds_cabecalhodatasaida: TStringField;
    cds_vcto: TClientDataSet;
    cds_vctoVDATA: TDateTimeField;
    cds_vctoVVALOR: TFloatField;
    cds_vctonumdup: TStringField;
    GroupBox2: TGroupBox;
    src_cabecalho: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    opd1: TOpenDialog;
    ADOQuery1: TADOQuery;
    Query1: TQuery;
    cds_aliquotas: TClientDataSet;
    cds_aliquotastipo_reg: TIntegerField;
    cds_aliquotasal_tabicm: TStringField;
    cds_aliquotasal_aliqredut: TFloatField;
    cds_aliquotasal_IcmsTrib: TFloatField;
    cds_aliquotasal_icmsRet: TIntegerField;
    cds_aliquotasal_stIcmsCred: TFloatField;
    cds_aliquotasal_stIcmsDeb: TFloatField;
    cds_aliquotasal_stIVA_Ina: TFloatField;
    cds_aliquotasal_stIVA_Neg: TFloatField;
    cds_aliquotasCfo_Indus_Ret: TIntegerField;
    cds_aliquotasCfo_Indus_Trib: TIntegerField;
    cds_aliquotasCfo_Indus_Isento: TIntegerField;
    cds_aliquotasCfo_rev_Ret: TIntegerField;
    cds_aliquotasCfo_rev_Trib: TIntegerField;
    cds_aliquotasCfo_rev_Isento: TIntegerField;
    cds_aliquotasCfo_SubEcf_Ret: TIntegerField;
    cds_aliquotasCfo_SubEcf_Trib: TIntegerField;
    cds_aliquotasCfo_SubEcf_Isento: TIntegerField;
    cds_aliquotasal_cofins: TFloatField;
    cds_aliquotasmodBcST: TIntegerField;
    cds_aliquotasal_stAliqRed: TFloatField;
    cds_aliquotasal_inss: TFloatField;
    cds_aliquotasal_inss_pred: TFloatField;
    cds_aliquotasal_irrf: TFloatField;
    cds_aliquotasal_irrf_pred: TFloatField;
    cds_aliquotasal_repasse: TFloatField;
    cds_aliquotasal_issqn: TFloatField;
    cds_aliquotascfo_servico: TIntegerField;
    cds_aliquotasal_pis: TFloatField;
    cds_aliquotasal_credsn: TFloatField;
    cds_aliquotasal_stIVA_Pos: TFloatField;
    cds_aliquotasal_combate_pobreza: TFloatField;
    cds_aliquotasal_icmscred_destino: TFloatField;
    cds_aliquotasal_icms_destino: TFloatField;
    cds_cabecalhocodven: TFloatField;
    cds_cabecalhotabpv: TStringField;
    cds_cabecalhocodpv: TIntegerField;
    tb_ped02_pre: TClientDataSet;
    tb_ped02_preP2ICMS_PERC: TFloatField;
    tb_ped02_preP2ICMS_PPRED: TFloatField;
    tb_ped02_preP2ICMSSN_PERC: TFloatField;
    tb_ped02_preP2ST_IVA: TFloatField;
    tb_ped02_preP2ST_REDUT: TFloatField;
    tb_ped02_preP2ST_ICMSCRED: TFloatField;
    tb_ped02_preP2ST_ICMSDEB: TFloatField;
    tb_ped02_preP2MODBCST: TIntegerField;
    tb_ped02_preP2IPI_PERC: TFloatField;
    tb_ped02_preP2CST: TStringField;
    tb_ped02_preP2CSOSN_ORI: TIntegerField;
    tb_ped02_preP2CSOSN: TIntegerField;
    tb_ped02_preP2PIS_PERC: TFloatField;
    tb_ped02_preP2CST_PIS: TStringField;
    tb_ped02_preP2CST_COFINS: TStringField;
    tb_ped02_preP2COFINS_PERC: TFloatField;
    tb_ped02_preP2CONTESP: TIntegerField;
    tb_ped02_preP2CODPRO: TFloatField;
    tb_ped02_preP2ICMS_PPRED_101: TFloatField;
    tb_ped02_preP2ST_IVA_101: TFloatField;
    tb_ped02_preP2ST_REDUT_101: TFloatField;
    tb_ped02_preP2ST_ICMSCRED_101: TFloatField;
    tb_ped02_preP2ST_ICMSDEB_101: TFloatField;
    tb_ped02_preP2MODBCST_101: TFloatField;
    tb_ped02_preP2CFOP_ECF: TIntegerField;
    tb_ped02_preP2CFOP_NF: TIntegerField;
    tb_ped02_preP2PRECO_MAXCONS: TFloatField;
    tb_ped02_preP2QTD: TFloatField;
    tb_ped02_preP2CODEMP: TIntegerField;
    tb_ped02_preP2LOTSEQ: TIntegerField;
    tb_ped02_preP2CHAVE: TIntegerField;
    tb_ped02_preP2ORDEM: TIntegerField;
    tb_ped02_preP2PRECO: TFloatField;
    tb_ped02_preP2ITEM: TIntegerField;
    tb_ped02_preP2CONS_PROPRIO: TIntegerField;
    tb_ped02_prePDNOME: TStringField;
    tb_ped02_preP2DESCPR: TFloatField;
    tb_ped02_preP2PCOMIS: TFloatField;
    tb_ped02_preP2CODVEN: TFloatField;
    tb_ped02_preP2CST_IPI: TStringField;
    tb_ped02_preP2DESCFIN_PERC: TFloatField;
    tb_ped02_preP2AMBIENTE: TStringField;
    tb_ped02_preP2DESC_COMP: TStringField;
    tb_ped02_preP2PROMOCAO: TStringField;
    tb_ped02_preP2DESC_PERC01: TFloatField;
    tb_ped02_preP2DESC_PERC02: TFloatField;
    tb_ped02_preP2DESC_PERC03: TFloatField;
    tb_ped02_preP2VALDES: TFloatField;
    tb_ped02_preP2TIPO_PCO: TIntegerField;
    tb_ped02_preP2ICMS_ALIPI: TFloatField;
    tb_ped02_preP2ALIQICMSDES: TFloatField;
    tb_ped02_preP2ALIQAPROXTRIB: TFloatField;
    tb_ped02_preP2COMPRA_NITEMPED: TIntegerField;
    tb_ped02_preP2COMPRA_XPED: TStringField;
    cds_lotes: TClientDataSet;
    cds_lotescodpro: TFloatField;
    cds_lotesnumitem: TIntegerField;
    cds_loteslote: TStringField;
    cds_lotesdtvcto: TDateField;
    cds_lotesqtd: TFloatField;
    cds_detalheitem: TIntegerField;
    src_vcto: TDataSource;
    src_detalhe: TDataSource;
    cds_cabecalhoccodcli: TFloatField;
    cds_cabecalhocodtra: TFloatField;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox1: TGroupBox;
    DBGrid4: TDBGrid;
    src_lotes: TDataSource;
    tb_ped02_preP2CPUFDEST: TFloatField;
    tb_ped02_preP2ICMSUFDEST: TFloatField;
    tb_ped02_preP2ICMSINTER: TFloatField;
    tb_ped02_preP2ICMSINTERPART: TFloatField;
    tb_ped02_preP2CEST: TStringField;
    tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField;
    tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField;
    tb_ped02_preP2PERCDESC_AUT: TFloatField;
    GroupBox5: TGroupBox;
    cds_arqxml: TClientDataSet;
    cds_arqxmlxml_importar: TStringField;
    cds_arqxmlxml_nome: TStringField;
    cds_arqxmlxml_observacoes: TStringField;
    src_arqxml: TDataSource;
    DBGrid_arqxml: TDBGrid;
    cds_arqxmlxml_nomecompasta: TStringField;
    cds_arqxmlxml_dathor_ini: TDateField;
    cds_arqxmlxml_dathor_fin: TDateField;
    cds_arqxmlsegundos: TIntegerField;
    cb_todos: TCheckBox;
    cds_arqxmlxml_codcli: TFloatField;
    cb_cadastrar_cliente: TCheckBox;
    cb_cadastrar_trasportadora: TCheckBox;
    edt_codven: TEdit;
    edt_codpv: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    cds_cabecalhoemiUF: TStringField;
    cb_cadastrar_produtos: TCheckBox;
    DBMemo1: TDBMemo;
    cds_detalheCSTB_CBENEF: TStringField;
    cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField;
    tb_ped02_preP2ID_NEW: TFloatField;
    tb_ped02_preP2ID_PED01_NEW: TFloatField;
    tb_ped02_preP2ID_NEW_101: TFloatField;
    tb_ped02_preP2IRRF_PERC: TFloatField;
    tb_ped02_preP2IRRF_VALOR: TFloatField;
    tb_ped02_preP2CSLL_PERC: TFloatField;
    tb_ped02_preP2CSLL_VALOR: TFloatField;
    tb_ped02_preP2CBENEF: TStringField;
    cds_detalheCST_PIS: TStringField;
    cds_detalheCST_COFINS: TStringField;
    cds_detalheCEST: TStringField;
    cds_cabecalhoendereco_dest_compl: TStringField;
    cds_cabecalhoDESTENDERDESTNRO: TStringField;
    cds_cabecalhoDESTENDERDESTXCPL: TStringField;
    cds_aliquotasrequer_pedori: TIntegerField;
    cds_aliquotasal_IcmsTribDesonera: TFloatField;
    tb_ped02_preP2MOTIVODESONERACAO: TFloatField;
    cds_lotesdtfab: TDateTimeField;
    cds_aliquotasal_ibs_mun: TFloatField;
    cds_aliquotasal_ibs_uf: TFloatField;
    cds_aliquotasal_cbs: TFloatField;
    tb_ped02_preP2CBS_CST: TStringField;
    tb_ped02_preP2CODCLASSTRIB: TStringField;
    tb_ped02_preP2CBS_ALIQ: TFloatField;
    tb_ped02_preP2IBS_UF_ALIQ: TFloatField;
    tb_ped02_preP2IBS_MUN_ALIQ: TFloatField;
    tb_ped02_preP2NRECEITUARIO: TStringField;
    procedure bbFaturarClick(Sender: TObject);
    procedure bbBuscarXMLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb_todosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codvenExit(Sender: TObject);
    procedure edt_codpvExit(Sender: TObject);
    procedure src_arqxmlDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }

    function fLerdadosXml(pNomeArq: String ): Boolean;

    procedure fLerArquivos;

    procedure fMarcarDesmarcar;

    procedure fFaturarXml;

    function fFaturarIndividual(pNomeArquivo: String): boolean;

  public
    { Public declarations }
  end;

var
  frm_faturarxml: Tfrm_faturarxml;
  nomeDoArquivoAnterior: String;
  mLendoArquivo: boolean;
implementation

uses S_Vendas_GravarPedido, S_DM1, Func, lerarq, func_excecoes, S_DM1_ADO,
  S_DM4, funcoes_especificas, Func2;

{$R *.dfm}


function Tfrm_faturarxml.fLerdadosXml(pNomeArq: String ): Boolean;

var vXMLDoc: TXMLDocument;
    NodeArmas,NodeMed,NodePis,NodeCofins,NodeMaster,NodePai,NodeSec,NodeTmp,NodeImposto,NodeTmp_Imp,NodeTmp_ImpCateg,nodeProtocolo: IXMLNode;
mLotes,mDados_Lid: String;
mArmas: String;
mItem: Integer;
x_imp,x: Integer;
streStream: TStringStream;
mQtdLote,mQtdPed: Real;
arqxmlclient: String;
arqDanfe: String;
numNf: String;
stream_imagem: TStream;
mRetorno: boolean;
mQtdTentCad: integer;

   procedure fAtualzarObservacoes(pObs: String);
   begin
   if not (cds_arqxml.state in [dsedit,dsinsert]) then
      begin
      cds_arqxml.edit;
      cds_arqxmlxml_observacoes.value:=iif(trim(cds_arqxmlxml_observacoes.AsString)<>'', cds_arqxmlxml_observacoes.AsString+' ','')+pObs+#13;
      cds_arqxml.post;
      end;

   end;



   function fCadastrarTransportadora: boolean;
   begin
   if DM1.Tb_Tra.Active=false then
      begin
      flcadtra(1,0,'0');
      end;

   DM1.Tb_Tra.Append;
   DM1.Tb_TraTRCODEMP.Value:=codemp;
   DM1.Tb_TraTRRAZTRA.Value:=cds_cabecalhoTT_XNOME.Value;
   DM1.Tb_TraTRCNPJ.Value:=valfloat(cds_cabecalhotransp_cnpj.Value);
   DM1.Tb_TraTRIE.Value:=fdeixanum(cds_cabecalhoTT_IE.AsString);
   DM1.Tb_TraTRNLOG.Value:=cds_cabecalhoTT_XENDER.AsString;

   DM1.Tb_TraTRCIDADE.Value:=cds_cabecalhoTT_XMUN.AsString;
   DM1.Tb_TraTRUF.Value:=cds_cabecalhoTT_UF.AsString;
   if fLerGenerico_query('CADLOC','LNOME,LUF,LCODLOC','LUF='
      +QuotedStr(DM1.Tb_TraTRUF.AsString)
      +' and LNOME='+QuotedStr(DM1.Tb_TraTRCIDADE.AsString),query_consulta) then
      begin
      DM1.Tb_TraTRCODLOC.AsFloat:=query_consulta.FieldByName('LCODLOC').AsInteger;
      end;
   FAtualizaBanco(1,'CADTRA','TRCODEMP',DM1.Tb_TraTRCODEMP.AsString
            ,['TRCODTRA'],[DM1.Tb_TraTRCODTRA.AsString]
            ,DM1.Tb_Tra);
   DM1.Tb_Tra.post;
   Result:=true;
   end;


   function fCadastrarCliente: boolean;
   begin

   if DM1.Tb_Cli.active=false then
      begin
      flcadcli(1,0,'0');
      end;
   DM1.Tb_Cli.Append;
   DM1.Tb_CliCCODEMP.Value:=codemp;
   DM1.Tb_CliCRAZAO.Value:=cds_cabecalhonomcli_codigo.Value;
   DM1.Tb_CliCCNPJ.Value:=valfloat(cds_cabecalhodest_cnpj.Value);
   DM1.tb_CliCIE.Value:=fdeixanum(cds_cabecalhodest_inscricao.AsString);
   DM1.Tb_CliCLOG.Value:=cds_cabecalhoDESTENDERDESTXLGR.AsString;
   DM1.Tb_CliCNUM.Value:=cds_cabecalhoDESTENDERDESTNRO.AsString;
   DM1.Tb_CliCCOMPL.Value:=cds_cabecalhoDESTENDERDESTXCPL.AsString;


                          

   DM1.Tb_CliCTABPV.value:=copy(edt_codpv.Text,1,2);
   DM1.Tb_CliCCODPV.value:= valfloat(copy(edt_codpv.Text,3,length(edt_codpv.Text)-2));

   DM1.Tb_CliCCODVEN.Value :=ValFloat(edt_codven.Text);


   DM1.Tb_CliCCIDADE.Value:=cds_cabecalhoDESTENDERDESTXMUN.AsString;
   DM1.Tb_CliCUF.Value    :=cds_cabecalhoDESTENDERDESTUF.AsString;
   DM1.Tb_CliCBAIRRO.Value:=cds_cabecalhoDESTENDERDESTXBAIRRO.AsString;
   DM1.Tb_CliCCEP.Value   :=cds_cabecalhoDESTENDERDESTCEP.AsString;

   if fLerGenerico_query('CADLOC','LNOME,LUF,LCODLOC','LUF='
      +QuotedStr(DM1.Tb_CliCUF.AsString)
      +' and LNOME='+QuotedStr(DM1.Tb_CliCCIDADE.AsString),query_consulta) then
      begin
      DM1.Tb_CliCCODLOC.AsFloat:=query_consulta.FieldByName('LCODLOC').AsInteger;
      end;


   DM1.Tb_CliCENDERC.Value:=DM1.Tb_CliCLOG.AsString+IIF(length(trim(dm1.Tb_CliCNUM.AsString))>1 ,' Nro '+DM1.Tb_CliCNUM.AsString,'');
   if LENGTH(DM1.Tb_CliCCOMPL.AsString)>1 then
      DM1.Tb_CliCENDERC.Value:=DM1.Tb_CliCENDERC.AsString+' '+ DM1.Tb_CliCCOMPL.AsString;

// INICIO
   DM1.Tb_CliCCIDADEC.Value:=cds_cabecalhoDESTENDERDESTXMUN.AsString;
   DM1.Tb_CliCUFC.Value    :=cds_cabecalhoDESTENDERDESTUF.AsString;
   DM1.Tb_CliCBAIRROC.Value:=cds_cabecalhoDESTENDERDESTXBAIRRO.AsString;
   DM1.Tb_CliCCEPC.Value   :=cds_cabecalhoDESTENDERDESTCEP.AsString;
   DM1.Tb_CliCCODLOCC.AsFloat:=DM1.Tb_CliCCODLOC.AsFloat;


// TERMINO



   FAtualizaBanco(1,'CADCLI','CCODEMP',DM1.Tb_CliCCODEMP.AsString
  ,['CCODCLI'],[DM1.Tb_CliCCODCLI.AsString]

  ,DM1.Tb_Cli);
  DM1.Tb_cli.post;
   Result:=true;
   end;




   // INICIO




   // TERMINO
   procedure fCadastrarProduto;
   begin
   if DM1.Tb_Pro.Active=false then
      begin
      flcadpro2(1,1,0,'0','','');
      end;
   DM1.Tb_Pro.Insert;

   DM4.Tb_FilPad.Close;
   DM4.Tb_FilPad.SQL.Clear;
   DM4.Tb_FilPad.SQL.Add(' select * from filpad ');
   DM4.Tb_FilPad.Open;

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_EST_REV']),[]) then
      DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,2);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_EST_CF']),[]) then
      DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,2);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_INT_REV']),[]) then
      DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,2);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_INT_CF']),[]) then
      DM1.TB_PROPDFIS_CST_ICMS_INT_CF.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,2);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_PRED_ICMS_EST']),[]) then
      DM1.Tb_ProPDFIS_PRED_ICMS_EST.AsFloat:=valfloat(DM4.Tb_FilPadFPVALOR.Value);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_PRED_ICMS_INT']),[]) then
      DM1.Tb_ProPDFIS_PRED_ICMS_INT.AsFloat:=valint(DM4.Tb_FilPadFPVALOR.Asstring);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_EST_REV']),[]) then
      DM1.TB_PROPDFIS_CSOSN_EST_REV.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,3);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_EST_CF']),[]) then
      DM1.TB_PROPDFIS_CSOSN_EST_CF.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,3);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_INT_REV']),[]) then
      DM1.TB_PROPDFIS_CSOSN_INT_REV.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,3);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_INT_CF']),[]) then
      DM1.TB_PROPDFIS_CSOSN_INT_CF.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,3);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_PISCOF_ENTRADA']),[]) then
      DM1.TB_PROPDFIS_CST_PISCOF_ENTRADA.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,3);

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_PISCOF_SAIDA']),[]) then
      DM1.TB_PROPDFIS_CST_PISCOF_SAIDA.Value:=copy(DM4.Tb_FilPadFPVALOR.Value,1,3);

   DM1.Tb_ProPDCODEMP.AsInteger:=codemp;
   DM1.Tb_ProPDCODPRO.Value := fsonumero(cds_detalheDETPRODCPROD.AsString);
   DM1.Tb_ProPDNOME.Value   := cds_detalhenomepro.AsString;
   DM1.Tb_ProPDUND.Value    := cds_detalheDETPRODUCOM.AsString;
   DM1.Tb_ProPDUND.Value    := cds_detalheDETPRODUCOM.AsString;
   if length(trim(cds_detalheCSOSN.AsString))>1 then
      begin
      DM1.Tb_ProPDFIS_CSOSN_EST_REV.Value    := cds_detalheCSOSN.AsString;
      DM1.Tb_ProPDFIS_CSOSN_EST_CF.Value := cds_detalheCSOSN.AsString;
      DM1.Tb_ProPDFIS_CSOSN_INT_REV.Value    := cds_detalheCSOSN.AsString;
      DM1.Tb_ProPDFIS_CSOSN_INT_CF.Value     := cds_detalheCSOSN.AsString;
      end;

   if length(trim(cds_detalheCSOSN.AsString))>1 then
      begin
      DM1.Tb_ProPDFIS_CST_ICMS_EST_REV.Value    := cds_detalhecst.AsString;
      DM1.Tb_ProPDFIS_CST_ICMS_EST_CF.Value     := cds_detalhecst.AsString;
      DM1.Tb_ProPDFIS_CST_ICMS_INT_CF.Value     := cds_detalhecst.AsString;
      DM1.Tb_ProPDFIS_CST_ICMS_INT_REV.Value    := cds_detalhecst.AsString;
      end;


  if (fsonumero(cds_detalheDETPRODNCM.AsString)>0) then
     begin
     DM1.Tb_ProPDCODNCM.AsString := cds_detalheDETPRODNCM.AsString;
     DM1.Tb_ProPDCLAS.AsString := cds_detalheDETPRODNCM.AsString;
     end;

  if (fsonumero(cds_detalheCEST.AsString)>0)  then
     DM1.Tb_ProPDCEST.AsString := cds_detalheCEST.AsString;
  DM1.Tb_ProPDFIS_CST_PISCOF_SAIDA.AsString := cds_detalheCST_PIS.AsString;


  DM1.Tb_ProPDCODUSR.Value  :=codusr;
  DM1.Tb_ProPDDTALT.AsString:=FormatDateTime(fdt2, pdatasis);
  DM1.Tb_ProPDHRALT.Value   :=FormatDateTime(fhr, time);


  if not flcadest(0,0,0,DM1.Tb_ProPDCODPRO.AsString) then
     begin
     DM1.Query1.Close;
     DM1.Query1.Sql.Clear;
     DM1.Query1.Sql.add('Insert into CADEST ('
                       +'CECODEMP, '
                       +'CEFILIAL, '
                       +'CECODPRO, '
                       +'CESALDO, '
                       +'CESALDO_PRAT, '
                       +'CESALDO_DEP, '
                       +'CESALDOR,'
                       +'CESALDOC,'
                       +'CEENTPEN,'
                       +'CEDTUSAI,'
                       +'CEDTUENT'
                       +') Values ('
                       +Inttostr(codemp)+','
                       +Inttostr(log_filial_padrao)+','
                       +DM1.Tb_ProPDCODPRO.AsString+','
                       +'0,0,0,0,0,0,'
                       +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                       +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                       +')');

     try
       DM1.Query1.ExecSQL;
     except
        ex_erroSql(01,409,'Frm_Pro','CADEST');
        fdm1StartCommit;
        end;
     end;

  if fSonumero(DM1.Tb_ProPDCLAS.AsString) <>  fSonumero(DM1.Tb_ProPDCODNCM.AsString) then
     DM1.Tb_ProPDCODNCM.AsString:=DM1.Tb_ProPDCLAS.AsString;


   DM1.Tb_Pro.Post;


   end;


   procedure fTestarProdutos;
   begin

   mQtdTentCad:=0;
   while mQtdTentCad<2 do
      begin
      if not fLerGenerico_query('CADPRO','PDNOME,PDUND','PDCODPRO=0'+fdeixanum(cds_detalheDETPRODCPROD.AsString),query_consulta) then
         begin
         if cb_cadastrar_produtos.Checked=true then
            begin
            fCadastrarProduto;
            end
         else
            begin
            fAtualzarObservacoes('Produto '+cds_detalheDETPRODCPROD.AsString
            +' Descricao '+cds_detalhenomepro.AsString+#13);
            break;
            end;
         end
      else
         break;
      mQtdTentCad:=mQtdTentCad+1;
      end;
   if mQtdTentCad>1 then
      mRetorno:=false;
   end;



begin
mRetorno:=true;

if cds_lotes.Active=false then
   cds_lotes.CreateDataSet;
cds_lotes.Close;
cds_lotes.open;
cds_lotes.EmptyDataSet;


if cds_cabecalho.Active=false then
   cds_cabecalho.CreateDataSet;

cds_cabecalho.Close;
cds_cabecalho.Open;

cds_cabecalho.EmptyDataSet;
if cds_detalhe.Active=false then
   cds_detalhe.CreateDataSet;
cds_detalhe.close;
cds_detalhe.Open;

   cds_detalhe.EmptyDataSet;

cds_cabecalho.Open;
cds_detalhe.Open;
if cds_vcto.Active=false then
   cds_vcto.CreateDataSet;
   cds_vcto.Close;
   cds_vcto.Open;
cds_vcto.EmptyDataSet;


if not FileExists(pNomeArq) then
   begin
   fAtualzarObservacoes('Nao Foi Possivel encontrar o arquivo: '+pNomeArq);
   result:=false;
   exit;
   end;
try
    vXMLDoc := TXMLDocument.Create(self);
except
   fAtualzarObservacoes('Erro 720 ao criar o xml document!');
   result:=false;
   exit;
   end;
try
   vXMLDoc.LoadFromFile(pNomeArq);
except
   fAtualzarObservacoes('Erro 919 ao ler o arquivo '+pNomeArq+'!');
   result:=false;
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
   fAtualzarObservacoes('Não é um XML de Nota Fiscal Válido!'+pNomeArq+'!');
   result:=false;
   FreeAndNil(vXMLDoc);
   exit;
   end;
// Esse nó vai ser usado no LOOP

NodeSec := NodePai;
// Posiciona o primeiro elemento encontrado
NodeSec.ChildNodes.First;
cds_cabecalho.Append;
cds_cabecalhoCHAVE_ACESSO.Value  :=NodeMaster.GetAttributeNS('Id','');
if trim(cds_cabecalhoCHAVE_ACESSO.Value)<>'' then
   cds_cabecalhoCHAVE_ACESSO.Value  :=copy(cds_cabecalhoCHAVE_ACESSO.Value,4,44);

if Trim(cds_CabecalhoCHAVE_ACESSO.AsString) <> '' then
   begin
   cds_Cabecalhochave_acesso_calc.Value := Copy(cds_CabecalhoCHAVE_ACESSO.AsString,1,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,3,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,5,2)+'.'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,7,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,9,2)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,11,3)+'.'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,14,3)+'/'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,17,4)+'-'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,21,2)+'-'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,23,3)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,26,3)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,29,3)+'-'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,32,3)+'-'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,35,3)+'.'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,38,3)+'.'+
                         Copy(cds_CabecalhoCHAVE_ACESSO.AsString,41,3)+'-'+Copy(cds_CabecalhoCHAVE_ACESSO.AsString,44,1);
   end;


cds_cabecalhoEMITXNOME.Value:=NodeSec.ChildNodes['xNome'].Text;
cds_cabecalhoemicidadeuf.Value:=NodeSec.ChildNodes['enderEmit'].ChildNodes['xMun'].text;
//+'-'                     +NodeSec.ChildNodes['enderEmit'].ChildNodes['UF'].text;
cds_cabecalhoemiuf.Value:=NodeSec.ChildNodes['enderEmit'].ChildNodes['UF'].text;


cds_cabecalhoEMITIE.Value     :=NodeSec.ChildNodes['IE'].text;
cds_cabecalhoEMITIEST.Value  :=NodeSec.ChildNodes['IEST'].text;
cds_cabecalhoCRT.Value        :=valint(NodeSec.ChildNodes['CRT'].text);

cds_cabecalhoendereco_comp.Value     :=NodeSec.ChildNodes['enderEmit'].ChildNodes['xLgr'].text;
if  fXNroValido(NodeSec.ChildNodes['enderEmit'].ChildNodes['nro'].text)<>'' then
   cds_cabecalhoendereco_comp.Value     :=cds_cabecalhoendereco_comp.Value+' '+
   NodeSec.ChildNodes['enderEmit'].ChildNodes['nro'].text;
cds_cabecalhoendereco_comp.Value     :=cds_cabecalhoendereco_comp.Value+' '+
   NodeSec.ChildNodes['enderEmit'].ChildNodes['xCpl'].text+' '+
   NodeSec.ChildNodes['enderEmit'].ChildNodes['xBairro'].text;

   //inicio

   // termino


cds_cabecalhoemicidadeuf.Value     :=NodeSec.ChildNodes['enderEmit'].ChildNodes['xMun'].text;
//                                    +' - '+NodeSec.ChildNodes['enderEmit'].ChildNodes['UF'].text;
cds_cabecalhoemit_cnpj.Value       :=FormatFloat(pDFCNPJ, fsonumero(NodeSec.ChildNodes['CNPJ'].text));

cds_cabecalhofone_fax.Value        :=MaskFone(NodeSec.ChildNodes['enderEmit'].ChildNodes['fone'].text);

if (fsonumero(NodeMaster.ChildNodes['dest'].ChildNodes['CNPJ'].text)=DM1.Tb_EmpCGC.AsFloat)
   and (valfloat(DM1.Tb_EmpFAX.AsString)>0) then
   begin
   if valfloat(cds_cabecalhofone_fax.Value)>0 then
      cds_cabecalhofone_fax.Value:=cds_cabecalhofone_fax.Value+'/';
   cds_cabecalhofone_fax.Value:=cds_cabecalhofone_fax.Value+MaskFone(NodeSec.ChildNodes['enderEmit'].ChildNodes['fone'].text);

   end;

cds_cabecalhocep_emit.Value        :=MaskCep(NodeSec.ChildNodes['enderEmit'].ChildNodes['CEP'].text);
cds_cabecalhosaida_entrada.Value   :=NodeMaster.ChildNodes['ide'].ChildNodes['tpNF'].text;
cds_cabecalhoIDENNF.Value          :=NodeMaster.ChildNodes['ide'].ChildNodes['nNF'].text;
cds_cabecalhonumeronf.value        :=fsonumero(cds_cabecalhoIDENNF.Value);
mcinst:=NodeMaster.ChildNodes['ide'].ChildNodes['dEmi'].text;
if fsonumero(mcinst)>0 then
   begin
   try
      cds_cabecalhoIDEDEMI.Value          :=StrToDate(copy(mcinst,09,02)+'/'+copy(mcinst,6,2)+'/'+copy(mcinst,1,4));
   except
      end;
   end
else
   begin
   mcinst:=NodeMaster.ChildNodes['ide'].ChildNodes['dhEmi'].text;
   if fsonumero(mcinst)>0 then
      begin
      try
         cds_cabecalhoIDEDEMI.Value          :=StrToDate(copy(mcinst,09,02)+'/'+copy(mcinst,6,2)+'/'+copy(mcinst,1,4));
      except
         end;
      end

   end;


cds_cabecalhoDATASAIDA.Value :=fExtrairDataHoraXml('D',NodeMaster.ChildNodes['ide'].ChildNodes['dhSaiEnt'].text);
cds_cabecalhohora_saida.Value:=fExtrairDataHoraXml('H',NodeMaster.ChildNodes['ide'].ChildNodes['dhSaiEnt'].text);



cds_cabecalhoIDESERIE.Value        :=NodeMaster.ChildNodes['ide'].ChildNodes['serie'].text;
cds_cabecalhoIDENATOP.Value        :=NodeMaster.ChildNodes['ide'].ChildNodes['natOp'].text;
cds_cabecalhoDESTISUF.Value        :=NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['UF'].text;
cds_cabecalhonomcli_codigo.Value   :=NodeMaster.ChildNodes['dest'].ChildNodes['xNome'].text;
try
   cds_cabecalhonum_prot.Value        :=vXMLDoc.DocumentElement.ChildNodes[1].ChildNodes['infProt'].ChildNodes['nProt'].Text;
except
   cds_cabecalhonum_prot.Value        :='';
   end;
cds_cabecalhodest_cnpj.Value       :=MaskCPFCNPJ2(Formatfloat('00000000000000',
                                     fsonumero(
                                    NodeMaster.ChildNodes['dest'].ChildNodes['CNPJ'].text
                                    )));
if fsonumero(cds_cabecalhodest_cnpj.Value)=0 then
   cds_cabecalhodest_cnpj.Value       :=MaskCPFCNPJ2(
                                      Formatfloat('00000000000',

                                           fsonumero(
                                    NodeMaster.ChildNodes['dest'].ChildNodes['CPF'].text)));

cds_cabecalhoDESTENDERDESTXLGR.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xLgr'].text;
cds_cabecalhoDESTENDERDESTXBAIRRO.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xBairro'].text;
cds_cabecalhoDESTENDERDESTCEP.Value       :=MaskCep(
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['CEP'].text);
cds_cabecalhoDESTENDERDESTXMUN.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xMun'].text;
cds_cabecalhodest_fone.Value       :=MaskFone(
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['fone'].text);
cds_cabecalhoDESTENDERDESTUF.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['UF'].text;

// inicio
cds_cabecalhoendereco_dest_compl.Value     :=NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xLgr'].text;
if  fXNroValido(NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['nro'].text)<>'' then
   cds_cabecalhoendereco_dest_compl.Value     :=cds_cabecalhoendereco_dest_compl.Value+' '+
   NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['nro'].text;
cds_cabecalhoendereco_dest_compl.Value     :=cds_cabecalhoendereco_dest_compl.Value+' '+
   NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xCpl'].text
   +' '+
   NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xBairro'].text;


cds_cabecalhoDESTENDERDESTXLGR.Value     :=NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xLgr'].text;
cds_cabecalhoDESTENDERDESTNRO.Value     :=NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['nro'].text;
cds_cabecalhoDESTENDERDESTXCPL.Value     :=NodeMaster.ChildNodes['dest'].ChildNodes['enderDest'].ChildNodes['xCpl'].text;

//termino
cds_cabecalhodest_inscricao.Value       :=
                                    NodeMaster.ChildNodes['dest'].ChildNodes['IE'].text;

cds_cabecalhoTOTALICMSTOTVBC.Value       :=Valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vBC'].text));

cds_cabecalhoTOTALICMSTOTVICMS.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vICMS'].text));

cds_cabecalhoTOTALICMSTOTVBCST.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vBCST'].text));
cds_cabecalhoTOTALICMSTOTVST.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vST'].text));
cds_cabecalhoTOTALICMSTOTVPROD.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vProd'].text));
cds_cabecalhoTOTALICMSTOTVFRETE.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vFrete'].text));
cds_cabecalhoTOTALICMSTOTVSEG.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vSeg'].text));
cds_cabecalhoTOTALICMSTOTVDESC.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vDesc'].text));
cds_cabecalhoTOTALICMSTOTVOUTRO.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vOutro'].text));
cds_cabecalhoTOTALICMSTOTVIPI.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vIPI'].text));

cds_cabecalhoTOTALICMSTOTVNF.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['vNF'].text));
cds_Cabecalhovalor_texto.Text:='Valor: '+FormatFloat(mcasas,cds_cabecalhoTOTALICMSTOTVNF.Value);

cds_Cabecalhoemissao_texto.Text:='Emissão: '+FormatDateTime(fdt2, cds_CabecalhoIDEDEMI.Value);

cds_cabecalhoTT_XNOME.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xNome'].text;
cds_cabecalhofrete_cif_fob.Value       :=IntTostr(valint(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['modFrete'].text));
//                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['modFrete'].text;
cds_cabecalhoTRANSPVEICTRANSPPLACA.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['veicTransp'].ChildNodes['placa'].text;
cds_cabecalhoTRANSPVEICTRANSPUF.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['veicTransp'].ChildNodes['UF'].text;
cds_cabecalhotransp_cnpj.Value       :=MaskCPFCNPJ(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['CNPJ'].text);
cds_cabecalhoTT_IE.Value       :=MaskCPFCNPJ(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['IE'].text);

cds_cabecalhoTT_XENDER.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xEnder'].text;
cds_cabecalhoTT_XMUN.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['xMun'].text;
cds_cabecalhoTT_UF.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['transporta'].ChildNodes['UF'].text;

cds_cabecalhoTRANSPVOLESP.Value       :=NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['esp'].text;

cds_cabecalhoTRANSPVOLQVOL.Value       :=valint(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['qVol'].text);
cds_cabecalhoTRANSPVOLMARCA.Value       :=
                                    NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['marca'].text;
cds_cabecalhoTRANSPVOLPESOB.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['pesoB'].text));
cds_cabecalhoTRANSPVOLPESOL.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['transp'].ChildNodes['vol'].ChildNodes['pesoL'].text));
cds_cabecalhoINFADICINFCPL.Value       :=
                                    NodeMaster.ChildNodes['infAdic'].ChildNodes['infCpl'].text;

cds_cabecalhoINFADICINFADFISCO.Value       :=
                                    NodeMaster.ChildNodes['infAdic'].ChildNodes['infAdFisco'].text;

cds_cabecalhoTOTALISSQNTOTVISS.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['vISS'].text));

cds_cabecalhoTOTALISSQNTOTVBC.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['VBC'].text));

cds_cabecalhoTOTALISSQNTOTVISS.Value       :=valfloat(mudapv(
                                    NodeMaster.ChildNodes['total'].ChildNodes['ICMSTot'].ChildNodes['VISS'].text));

cds_cabecalhoEMITIM.Value       := NodeMaster.ChildNodes['ide'].ChildNodes['emit'].ChildNodes['IM'].text;




NodeSec := NodeMaster.ChildNodes.FindNode('det');

mItem:=0;
NodeSec.ChildNodes.First;

repeat
// referencia a tag <prod> dentro de <det>

   NodeTmp  := NodeSec.ChildNodes['prod'];


 // da pra ver que é um XML resumido da NFe (so temos uma tag <prod> para cada <det> então não precisaria da linha abaixo
    // agora se tivéssemos mais de uma seria o caso de posicionar também na primeira ocorrencia.
   NodeTmp.ChildNodes.First;

   mDados_Lid:=trim(NodeTmp.ChildNodes['xProd'].text);
   if mDados_Lid<>'' then
      begin
      cds_detalhe.Append;
      // pega os dados que vc quiser dentro da tag <prod>
      mItem:=mItem+1;
      cds_detalheitem.asinteger:=mitem;
// verifica lote de mercadorias

   cds_detalheDETINFADPROD.Value:=trim(NodeSec.ChildNodes['infAdProd'].text);



   mLotes:='';
   NodeMed := NodeTmp.ChildNodes.FindNode('med');
   if NodeMed=nil then
      begin
      NodeMed := NodeTmp.ChildNodes.FindNode('rastro');
      end;
   mQtdLote:=0;
   mQtdPed:=valfloat(mudapv(NodeTmp.ChildNodes['qCom'].text));



      cds_detalhenomepro.AsString:=NodeTmp.ChildNodes['xProd'].text;


      cds_detalhenomepro.AsString:=cds_detalhenomepro.AsString+mLotes+mArmas;
      cds_detalheDETPRODQCOM.AsFloat:=valfloat(mudapv(NodeTmp.ChildNodes['qCom'].text));
      cds_detalheDETPRODNCM.AsString:=NodeTmp.ChildNodes['NCM'].text;
      cds_detalheCEST.AsString:=NodeTmp.ChildNodes['CEST'].text;

      cds_detalheCSTB_CBENEF.AsString:=NodeTmp.ChildNodes['CSTB_CBENEF'].text;
      cds_detalheDETPRODCFOP.AsString:=NodeTmp.ChildNodes['CFOP'].text;

      cds_detalheDETPRODUCOM.Value:=NodeTmp.ChildNodes['uCom'].text;
      cds_detalheVDESC.Value:=ValFloat(mudapv(NodeTmp.ChildNodes['vDesc'].text));
      cds_detalheDETPRODVUNCOM.Value:=valfloat(mudapv(NodeTmp.ChildNodes['vUnCom'].text));
      cds_detalheDETPRODVPROD.Value:=valfloat(mudapv(NodeTmp.ChildNodes['vProd'].text));
      cds_detalheDETPRODCPROD.AsString:=NodeTmp.ChildNodes['cProd'].text;

//      cds_detalheDETINFADPROD.Value:=cds_detalheDETPRODCPROD.AsString+' lOTE ADICIONAL';

//lindomar
      NodeImposto  := NodeSec.ChildNodes['imposto'];
      if NodeImposto<>nil then
         begin

         for x_imp:=0 to NodeImposto.ChildNodes.Count-1 do
            begin
            mcinst:=NodeImposto.ChildNodes[0].NodeName;
// inicio


           if NodeImposto.ChildNodes[x_imp].NodeName ='ICMS'then
              begin
              NodeTmp_Imp := NodeImposto.ChildNodes['ICMS'];
              NodeTmp_Imp.ChildNodes.First;
              if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS00'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS00'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                            +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS10'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS10'];
                 NodeTmp_ImpCateg.ChildNodes.First;

                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                            +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS20'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS20'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                            +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS30'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS30'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                            +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                 end
             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS40'then
                begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS40'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                            +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS50'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS50'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                            +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                end
             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS60'then
                begin
                NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS60'];
                NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                            +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                end
             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS70'then
                begin
                NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS70'];
                NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                            +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                end
             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMS90' then
                begin
                NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMS90'];
                NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalhecst.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].text
                                            +NodeTmp_ImpCateg.ChildNodes['CST'].text;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                end
             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN101' then
                begin
                NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN101'];
                NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalheCSOSN.Value:= NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                 cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));


                end
             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN102'then
                begin
                NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN102'];
                NodeTmp_ImpCateg.ChildNodes.First;

                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                 cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));


                end
             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN201'then
                begin

                NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN201'];
                NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                 cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;
                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));
                end

             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN202'then
                begin

                NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN202'];
                NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                 cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));



                end
             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN500' then
                begin
                NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN500'];
                NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                 cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));


                end

             else if NodeTmp_Imp.ChildNodes[0].NodeName ='ICMSSN900' then
                begin
                NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['ICMSSN900'];
                NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheORI_PROD.Value:=NodeTmp_ImpCateg.ChildNodes['orig'].Text;
                 cds_detalheCSOSN.Value:=NodeTmp_ImpCateg.ChildNodes['CSOSN'].text;
                 cds_detalhecst.Value:=cds_detalheORI_PROD.Value+cds_detalheCSOSN.Value;

                 cds_detalheICMSVBC.Value   :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['vBC'].text));
                 cds_detalhealiq_icms.Value :=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pICMS'].text));


                end;
             end;



           mcinst2:=NodeImposto.ChildNodes[x_imp].NodeName;

           if NodeImposto.ChildNodes[1].NodeName ='IPI'then
              begin
              NodeTmp_Imp := NodeImposto.ChildNodes['IPI'];
              NodeTmp_Imp.ChildNodes.First;
              if NodeTmp_Imp.ChildNodes[1].NodeName ='IPITrib'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['IPITrib'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalhepercipi.Value:=valfloat(mudapv(NodeTmp_ImpCateg.ChildNodes['pIPI'].Text));
                 end;
             end;

           if NodeImposto.ChildNodes[x_imp].NodeName ='PIS'then
              begin
              NodeTmp_Imp := NodeImposto.ChildNodes['PIS'];
              NodeTmp_Imp.ChildNodes.First;
              if NodeTmp_Imp.ChildNodes[0].NodeName ='PISOutr'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['PISOutr'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheCST_PIS.Value:=NodeTmp_ImpCateg.ChildNodes['CST'].Text;
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='PISAliq'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['PISAliq'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheCST_PIS.Value:=NodeTmp_ImpCateg.ChildNodes['CST'].Text;
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='PISQtde'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['PISQtde'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheCST_PIS.Value:=NodeTmp_ImpCateg.ChildNodes['CST'].Text;
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='PISNT'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['PISNT'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheCST_PIS.Value:=NodeTmp_ImpCateg.ChildNodes['CST'].Text;
                 end;

             end;

           if NodeImposto.ChildNodes[x_imp].NodeName ='COFINS'then
              begin
              NodeTmp_Imp := NodeImposto.ChildNodes['COFINS'];
              NodeTmp_Imp.ChildNodes.First;
              if NodeTmp_Imp.ChildNodes[0].NodeName ='COFINSOutr'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['COFINSOutr'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheCST_COFINS.Value:=NodeTmp_ImpCateg.ChildNodes['CST'].Text;
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='COFINSAliq'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['COFINSAliq'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheCST_COFINS.Value:=NodeTmp_ImpCateg.ChildNodes['CST'].Text;
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='COFINSQtde'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['COFINSQtde'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheCST_COFINS.Value:=NodeTmp_ImpCateg.ChildNodes['CST'].Text;
                 end
              else if NodeTmp_Imp.ChildNodes[0].NodeName ='COFINSNT'then
                 begin
                 NodeTmp_ImpCateg := NodeTmp_Imp.ChildNodes['COFINSNT'];
                 NodeTmp_ImpCateg.ChildNodes.First;
                 cds_detalheCST_COFINS.Value:=NodeTmp_ImpCateg.ChildNodes['CST'].Text;
                 end;

             end;


// termino



            end;



        end;


   if NodeMed<>nil then
      begin
      NodeMed.ChildNodes.First;
      repeat
         if valfloat(mudapv(NodeMed.ChildNodes['qLote'].text))>0 then
            begin
            cds_lotes.Append;
            cds_lotescodpro.Value:=fsonumero(cds_detalheDETPRODCPROD.asstring);
            cds_lotesnumitem.Value:=mItem;
            cds_loteslote.Value   :=NodeMed.ChildNodes['nLote'].text;
            cds_lotesdtvcto.Value :=Strtodatetime(copy(NodeMed.ChildNodes['dVal'].text,1+8,2)+'/'+
                                           copy(NodeMed.ChildNodes['dVal'].text,1+5,2)+'/'+
                                           copy(NodeMed.ChildNodes['dVal'].text,1,4));
            cds_lotesqtd.Value    :=valfloat(mudapv(NodeMed.ChildNodes['qLote'].text));
            cds_lotes.post;
            end;
         NodeMed := NodeMed.NextSibling;
      until
         NodeMed = nil;
      if mQtdLote<>mQtdPed then
         begin
         mLotes:=mLotes+#13+'SEM LOTE QUANTIDADE '+FormatFloat(mcasqtd,
                           mQtdPed-mqtdlote)+' ';
         end;
      end;


// termino dos lotes de mercadorias



// armas


   mArmas:='';
   NodeArmas := NodeTmp.ChildNodes.FindNode('arma');

   if NodeArmas<>nil then
      begin
      NodeArmas.ChildNodes.First;
      repeat
        mArmas:=mArmas+#13+'Serie Arma '+NodeArmas.ChildNodes['nSerie'].text
                             +' Serie Cano '+NodeArmas.ChildNodes['nCano'].text;
      mArmas:=mArmas+#13+'Descriçao Completa: '+NodeArmas.ChildNodes['descr'].text;

      NodeArmas := NodeArmas.NextSibling;
      until
         NodeArmas = nil;
      end;

// armas




      mDados_Lid:=cds_detalhenomepro.AsString;
      fTestarProdutos;
      cds_detalhe.Post;

      end;
   NodeSec := NodeSec.NextSibling;

until
   NodeSec = nil;

NodeSec := NodeMaster.ChildNodes.FindNode('total');

NodeSec := NodeMaster.ChildNodes.FindNode('cobr');
if nodesec<>nil then
   NodeSec := NodeSec.ChildNodes.FindNode('dup');

//NodePai := vXMLDoc.DocumentElement.childNodes.First.ChildNodes.FindNode('cobr');
// Esse nó vai ser usado no LOOP
if Nodesec<>nil then
   begin
   mItem:=0;
   NodeSec.ChildNodes.First;

   repeat

      mDados_Lid:=trim(NodeSec.ChildNodes['dVenc'].text);
   //      mDados_Lid:=trim(NodeSec.ChildNodes['fat'].ChildNodes['nFat'].text);
      if mDados_Lid<>'' then
         begin
         cds_vcto.Append;
      // pega os dados que vc quiser dentro da tag <prod>
         mItem:=mItem+1;
         mDados_Lid:=NodeSec.ChildNodes['dVenc'].text;
         if trim(mDados_Lid)<>'' then
            begin
            cds_vctoVDATA.AsDateTime:=StrToDateTime(copy(mDados_Lid,1+8,2)+'/'+
                                        copy(mDados_Lid,1+5,2)+'/'+
                                        copy(mDados_Lid,1,4)
                                        );
            end;
         cds_vctoVVALOR.asFloat:=valfloat(mudapv(NodeSec.ChildNodes['vDup'].text));
         cds_vctonumdup.Value  :=NodeSec.ChildNodes['nDup'].text;
         cds_vcto.Post;
         end;
   NodeSec := NodeSec.NextSibling;
until
  NodeSec = nil;
   end;

   // termino dos vencimentos
if not (cds_cabecalho.State in [dsedit,dsinsert]) then
  cds_cabecalho.Edit;

if not cds_cabecalho.IsEmpty then
   begin
   if fsonumero(cds_cabecalhoccodcli.AsString)=0 then
      begin
      if fsonumero(cds_cabecalhodest_cnpj.AsString)>0 then
         begin

         mQtdTentCad:=0;
         while mQtdTentCad<2 do
            begin
            if fLerGenerico_query('CADCLI','CCODCLI,CCODVEN,CTABPV,CCODPV','CCNPJ=' + fdeixanum(cds_cabecalhodest_cnpj.AsString)
                              +' or CCPF='+fdeixanum(cds_cabecalhodest_cnpj.AsString),query_consulta) then
               begin
               cds_cabecalhoccodcli.AsFloat:=query_consulta.fieldbyname('CCODCLI').AsFloat;
               cds_cabecalhocodven.AsFloat:=query_consulta.fieldbyname('CCODVEN').AsFloat;
               cds_cabecalhocodpv.AsFloat:=query_consulta.fieldbyname('CCODPV').AsFloat;
               cds_cabecalhotabpv.AsString:=query_consulta.fieldbyname('CTABPV').AsString;
               break;
               end
            else
               begin
               if cb_cadastrar_cliente.Checked=true then
                  fCadastrarCliente
               else
                  begin
                  fAtualzarObservacoes('Cliente nao Encontrado cnpj '+cds_cabecalhodest_cnpj.AsString +#13
                                +' ' + cds_cabecalhonomcli_codigo.asstring + ' arquivo  '+pNomeArq+'!');
                  mQtdTentCad:=2;
                  break;
                  end;
               end;
            end;
         mQtdTentCad:=mQtdTentCad+1;
         if mQtdTentCad>1 then
            mRetorno:=false;
         end
      end;
   if cds_cabecalhocodven.AsFloat=0 then
      begin
{      if fLerGenerico_query('CADVEN','VCODVEN,VNOME',' ROWNuM < 2 ORDER BY VCODVEN',query_consulta) then
         cds_cabecalhocodven.AsFloat:=query_consulta.fieldbyname('VCODVEN').AsFloat;
         }
      cds_cabecalhocodven.AsFloat:=valfloat(edt_codven.Text);
      end;
   if cds_cabecalhocodpv.AsFloat=0 then
      begin
{
      if fLerGenerico_query('CADPV','PVCODTIP,PVCODPV',' ROWNUM < 2 ORDER BY PVCODTIP,PVCODPV',query_consulta) then
         begin
         cds_cabecalhocodpv.AsFloat:=query_consulta.fieldbyname('PVCODPV').AsFloat;
         cds_cabecalhotabpv.AsString:=query_consulta.fieldbyname('PVCODTIP').AsString;
         end;
         }
      cds_cabecalhotabpv.AsString:=copy(edt_codpv.Text,1,2);
      cds_cabecalhocodpv.AsFloat:=valfloat(copy(edt_codpv.Text,3,length(edt_codpv.Text)-2));
      end;
   end;

   

if fsonumero(cds_cabecalhotransp_cnpj.AsString)>0 then
   begin
   if fsonumero(cds_cabecalhoTT_IE.Value)>0 then
      mcinst2:=' or TRIE='+Quotedstr(cds_cabecalhoTT_IE.asstring)
   else
     mcinst2:='';
   mQtdTentCad:=0;
   while mQtdTentCad<2 do
      begin
      if fLerGenerico_query('CADTRA','TRCODTRA,TRRAZTRA','TRCNPJ=' + fdeixanum(cds_cabecalhodest_cnpj.AsString)
                              +' or TRCNPF='+fdeixanum(cds_cabecalhodest_cnpj.AsString)+' '+mcinst2,query_consulta) then
         begin
         cds_cabecalhocodtra.AsFloat:=query_consulta.fieldbyname('TRCODTRA').AsFloat;
         break;
         end
      else
         begin
         if cb_cadastrar_trasportadora.Checked=true then
            fCadastrarTransportadora
         else
            begin
            fAtualzarObservacoes('Transportadora nao Encontrado cnpj '+cds_cabecalhotransp_cnpj.AsString);
            mQtdTentCad:=0;
            end;
         end;
      mQtdTentCad:=mQtdTentCad+1;
      end;
   if mQtdTentCad>1 then
      mRetorno:=false;
   end;


cds_cabecalho.Post;
result:=mRetorno;
end;



procedure Tfrm_faturarxml.bbFaturarClick(Sender: TObject);
begin
if fsonumero(edt_codpv.Text)=0 then
   begin
   MessageDlg('Código do Plano de Vendas é Obrigatório!',mtWarning,[mbOk],0);
   exit;
   end;

if fsonumero(edt_codven.Text)=0 then
   begin
   MessageDlg('Código do Vendedor é Obrigatório!',mtWarning,[mbOk],0);
   exit;
   end;


fFaturarXml;
verteclado(0);
MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;



function Tfrm_faturarxml.fFaturarIndividual(pNomeArquivo: String): boolean;


var
  mVenda_GP: TFrm_Vendas_GravarPedido;
  mQtdPed: Real;
  mDesconto: Real;

  Query_Cons:TQuery;
  query_exe: TQuery;

		pBaixar: pBaixarLotes;

    mDadosParametros: tDadosParametros;


AdoQuery_AtuCadNS: TADOQuery;


mItemPed: Integer;
    mPed_UF_Cli            : String;
    mPed_Cli_RazSoc        : String;
    mPed_Cli_ConsFin       : Boolean;
    mPed_Cli_Revenda_Cp    : Boolean;
    mPed_Cli_ST            : Boolean;
    mPed_Cli_icmsnr        : Boolean;
    mPed_Cli_MotDes        : Integer;
    mPed_Cli_REDICMSNOR    : Boolean;
    mPed_CliCalcIPI        : Boolean;
mSeq_Item: Integer;
begin

//fLerdadosXml(cds_arqxmlxml_nomecompasta.AsString);
//lindomar
if cds_cabecalhoccodcli.AsFloat=0 then
   begin
   if not (cds_arqxml.State in [dsedit,dsinsert]) then
      begin
      cds_arqxml.Edit;
      end;

   cds_arqxmlxml_observacoes.Value:=iif(length(trim(cds_arqxmlxml_observacoes.AsString))>1, cds_arqxmlxml_observacoes.Asstring,'')+
   ' cliente não cadastrado!'+#13;
   cds_arqxml.post;
   result:=false;
   exit;

   end;

if cds_cabecalhocodven.AsFloat=0 then
   begin
   if not (cds_arqxml.State in [dsedit,dsinsert]) then
      begin
      cds_arqxml.Edit;
      end;

   cds_arqxmlxml_observacoes.Value:=iif(length(trim(cds_arqxmlxml_observacoes.AsString))>1, cds_arqxmlxml_observacoes.Asstring,'')+
   ' vendedor não cadastrado!'+#13;
   cds_arqxml.Post;
   result:=false;
   exit;

   end;


if fLerGenerico_query('CADNS','NSNUMERO,NSDTEMIS','NSNFE_NUMPROT='+QuotedStr(cds_cabecalhonum_prot.AsString),query_consulta) then
   begin
   if not (cds_arqxml.State in [dsedit,dsinsert]) then
      begin
      cds_arqxml.Edit;
      end;

   cds_arqxmlxml_observacoes.Value:=iif(length(trim(cds_arqxmlxml_observacoes.AsString))>1, cds_arqxmlxml_observacoes.Asstring,'')+
              'Nota '+cds_cabecalhonum_prot.AsString +#13
             +'Numero : '+query_consulta.fieldbyname('NSNUMERO').asstring+' dt.emissao '+FormatDateTime(fdt2, query_consulta.fieldbyname('NSDTEMIS').AsDateTime)
             +#13+'lançada anteriormente!'+#13;
   result:=false;
   cds_arqxml.Post;
   exit;
   end;

result:=true;


if cds_aliquotas.active=false then
   cds_aliquotas.CreateDataSet;
cds_aliquotas.close;
cds_aliquotas.Open;
cds_aliquotas.EmptyDataSet;

cds_cabecalho.First;

Application.CreateForm(TFrm_Vendas_GravarPedido,mVenda_GP);
mVenda_GP.mPed1_Tipo_Ped:=1;

cds_aliquotas.EmptyDataSet;
fParametrosAliquotas(cds_cabecalhoccodcli.AsFloat
,mVenda_GP.mPed1_Tipo_Ped // tipo do pedido
,mPed_UF_Cli
,mPed_Cli_RazSoc
,mVenda_GP.mPd_EstNor
,mVenda_GP.mPd_EstCons
,mVenda_GP.mPd_EstTerc
,mVenda_GP.mPd_EstVenda
,mPed_Cli_MotDes
,mPed_Cli_ConsFin
,mPed_Cli_Revenda_CP
,mPed_CliCalcIPI
,mPed_Cli_ST
,mPed_Cli_REDICMSNOR
,mPed_Cli_icmsnr
,cds_aliquotas);


mVenda_GP.mPed1_Codemp:=1;
mvenda_gp.mped1_Chave:=0;
mVenda_GP.mPed1_CodCli:=cds_cabecalhoccodcli.AsFloat;
mVenda_GP.mPed1_Datap :=StrToDate(FormatDateTime('dd/mm/yyyy', cds_cabecalhoIDEDEMI.AsDateTime));
mVenda_GP.mPed1_CodFP:=0;
mVenda_GP.mPed1_NomFP:='';
if fLerGenerico_query('CADFP','FPDESC,FPCODIGO',' 1=1 ORDER BY FPCODIGO ',query_consulta) then
   begin
   mVenda_GP.mPed1_CodFP:=query_consulta.fieldbyname('FPCODIGO').AsInteger;
   mVenda_GP.mPed1_NomFP:=query_consulta.fieldbyname('FPDESC').AsString;
   end;



mVenda_GP.mPed1_BaixaFP:='N';
mVenda_GP.mPed1_CodPV:=1;
mVenda_GP.mPed1_PvaCtd:=0;
mVenda_GP.mPed1_TabPV:='AV';
mVenda_GP.mPed1_TpComis:=0;
mVenda_GP.mPed1_Codven:=cds_cabecalhocodven.AsInteger;
mVenda_GP.mped1_submod_grav:=0;
mVenda_GP.mPed1_cfop1:=5101;
mVenda_GP.mPed1_cfop2:=5101;

mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger;
if mVenda_GP.mPed1_Frete_CIFFOB<0 then
  mVenda_GP.mPed1_Frete_CIFFOB:=0;
mVenda_GP.mPed1_CodTra:=0;

mVenda_GP.mPed1_AjustaFP:='S';

if not flcadpv(1,0,cds_cabecalhotabpv.AsString,cds_cabecalhocodpv.AsString) then
  flcadpv(1,0,'AV','01');
mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
mVenda_GP.mPed1_PvaCtd:=DM1.Tb_PVPVACTD.AsFloat;
mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
mVenda_GP.mPed1_TpComis:=DM1.Tb_PVPVTPC.AsInteger;
mVenda_GP.mped1_tppco:=2; // preco extra;
mVenda_GP.mPed1_Tabela:='1';
mVenda_GP.mPed1_CodTra:=cds_cabecalhocodtra.AsInteger;
mVenda_GP.mPed1_QtdVol:=cds_cabecalhoTRANSPVOLQVOL.AsInteger;
mVenda_GP.mPed1_Especie:=cds_cabecalhoTRANSPVOLESP.AsString;
mVenda_GP.mPed1_Tra_PLACAv:=cds_cabecalhoTRANSPVEICTRANSPPLACA.Asstring;
mVenda_GP.mPed1_Tra_UFPV:=cds_cabecalhoTRANSPVEICTRANSPUF.Asstring;
mVenda_GP.mPed1_PesoB:=cds_cabecalhoTRANSPVOLPESOB.AsFloat;
mVenda_GP.mPed1_PesoL:=cds_cabecalhoTRANSPVOLPESOL.AsFloat;

flcadpv2('1',DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);

cds_vcto.First;

mVenda_GP.mPed1_PrzNovos_001:='V|'+floattostr((cds_vctoVDATA.asdatetime- cds_cabecalhoIDEDEMI.asdatetime ))+'|'+formatFloat('##0.00' ,cds_vctoVVALOR.AsFloat)+'|'+'0'+'|'+
                         fSubstituirCaractere('DINHEIRO','|','_')+'||||||||';
mVenda_GP.mPed1_PrzNovos_101:='';


mVenda_GP.mPed1_Parcelas:='';


cds_vcto.Next;
while not cds_vcto.Eof do

   begin

   mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+'V|'+floattostr((cds_vctoVDATA.asdatetime- cds_cabecalhoIDEDEMI.asdatetime ))+'|'+formatFloat('##0.00' ,cds_vctoVVALOR.AsFloat)+'|'+'0'+'|'+
                         fSubstituirCaractere('DINHEIRO','|','_')+'||||||||';
    mVenda_GP.mPed1_PrzNovos_101:='';


   cds_vcto.Next;
   end;
mVenda_GP.mPed1_QtdParc_ant:=-1;
mVenda_GP.mped1_QtdParc :=cds_vcto.RecordCount;
mVenda_GP.mPed1_AjustaFP :='S';
mVenda_GP.mPed1_pvdescf     :=0;
mVenda_GP.mPed1_pvddescf    :=0;
mVenda_GP.mPed1_pvdiasdescf :=0;
mVenda_GP.mPed1_Codcv       :=0;


mVenda_GP.mped1_npedori1 :='';
mVenda_GP.mped1_npedori2 :='';

mVenda_GP.fGravarPed01(0,0);

query_exe:=TQuery.Create(self);
query_exe.DatabaseName:='SG_ASSOC';

cds_detalhe.First;
mItemPed:=0;
tb_ped02_pre.CreateDataSet;
Tb_Ped02_pre.EmptyDataSet;

if not (cds_arqxml.State in [dsedit,dsinsert]) then
   begin
   cds_arqxml.Edit;
   end;
cds_arqxmlxml_observacoes.Value :=
iif(length(trim(cds_arqxmlxml_observacoes.AsString))>1, cds_arqxmlxml_observacoes.AsString +#13, '')
+'Chave do pedido: '+inttostr(mVenda_GP.mped1_Chave)+'/'+inttostr(mVenda_GP.mPed1_Chave_ano)+#13;
cds_arqxml.Post;

//lbl_chave.Caption:='Chave do pedido: '+inttostr(mVenda_GP.mped1_Chave)+'/'+inttostr(mVenda_GP.mPed1_Chave_ano);
While not cds_detalhe.Eof do
   begin
   mItemPed:=mItemPed+1;
   tb_ped02_pre.Append;
   tb_ped02_preP2CODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
   tb_ped02_preP2ID_PED01_NEW.AsInteger := mVenda_GP.mPed1_id_new_000;
   tb_ped02_preP2ID_NEW.AsInteger := fBuscarProximoId('CADP02_SEQ');
   tb_ped02_preP2ID_NEW_101.AsInteger := 0;

   tb_ped02_preP2LOTSEQ.AsInteger :=mVenda_GP.mPed1_Chave_ano;
   tb_ped02_preP2CHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;
   tb_ped02_preP2ORDEM.AsInteger  :=01;
   tb_ped02_preP2ITEM.AsInteger   :=mItemPed;
   tb_ped02_preP2CODPRO.AsFloat   :=valfloat(cds_detalheDETPRODCPROD.AsString);
   tb_ped02_preP2QTD.AsFloat      :=valfloat(cds_detalheDETPRODQCOM.AsString);
   tb_ped02_preP2PRECO.AsFloat    :=ValFloat(cds_detalheDETPRODVUNCOM.AsString);
   tb_ped02_preP2VALDES.AsFloat   :=ValFloat(cds_detalheVDESC.AsString);
   tb_ped02_preP2CODVEN.AsInteger :=cds_cabecalhocodven.AsInteger;

   tb_ped02_preP2CSOSN_ORI.AsString:=cds_detalheORI_PROD.AsString;
   tb_ped02_preP2CSOSN.AsString     :=cds_detalheCSOSN.AsString;
   tb_ped02_preP2CST.AsString       :=cds_detalhecst.AsString;
   tb_ped02_preP2CST_PIS.AsString       :=cds_detalhecst.AsString;
   tb_ped02_preP2CFOP_ECF.AsString       :=cds_detalheDETPRODCFOP.AsString;
   tb_ped02_preP2ICMS_PERC.AsFloat       :=cds_detalhealiq_icms.AsFloat;
//   tb_ped02_preP2ICMSSN_PERC.AsFloat       :=cds_detalhealiq_icms.AsString;

   fDadosFiscais(cds_detalheDETPRODCPROD.AsFloat
                ,mPed_UF_Cli
                ,mPed_Cli_ConsFin
                ,mPed_Cli_Revenda_Cp
                ,mPed_Cli_icmsnr
                ,mPed_CliCalcIPI
                ,mPed_Cli_REDICMSNOR
                ,mPed_Cli_MotDes
                ,tb_ped02_pre
                ,cds_aliquotas,
                DM1.Tb_CliCSUPERMICRO.AsInteger);


   tb_ped02_preP2DESC_PERC01.AsFloat    :=0;
   tb_ped02_preP2DESC_PERC02.AsFloat    :=0;
   tb_ped02_preP2DESC_PERC03.AsFloat    :=0;
   tb_ped02_pre.Post;

   if (Log_TipoLote=1) then
      begin
      mQtdPed:=0;
      mSeq_Item:=0;
      if cds_lotes.Locate('numitem',cds_detalheitem.AsInteger,[]) then
         begin
         While (not cds_lotes.eof) and (cds_lotesnumitem.asinteger=tb_ped02_preP2ITEM.AsInteger)
             and (cds_lotesCODPRO.asfloat=tb_ped02_preP2CODPRO.Asfloat)  do
            begin
            mSeq_Item:=mSeq_Item+1;

            query_exe.close;
            query_exe.SQL.Clear;
            query_exe.SQL.Add('Insert into CADP02_LOTES ('
                             +'P2LM_CODEMP, '
                             +'P2LM_LOTSEQ, '
                             +'P2LM_CHAVE, '
                             +'P2LM_ITEM, '
                             +'P2LM_CODPRO, '
                             +'P2LM_LOTE, '
                             +'P2LM_DTFAB, '
                             +'P2LM_DTVCTO, '
                             +'P2LM_QTD, '
                             +'P2LM_QTDDEV '
                             +',P2LM_ID_NEW '
                             +',P2LM_ID_PED02_NEW'

                             +') values ('
                             +':P2LM_CODEMP, '
                             +':P2LM_LOTSEQ, '
                             +':P2LM_CHAVE, '
                             +':P2LM_ITEM, '
                             +':P2LM_CODPRO, '
                             +':P2LM_LOTE, '
                             +':P2LM_DTFAB, '
                             +':P2LM_DTVCTO, '
                             +':P2LM_QTD, '
                             +':P2LM_QTDDEV '
                             +',CADP02_LOTES_SEQ.NEXTVAL '
                             +',:P2LM_ID_PED02_NEW'

                             +')');


            query_exe.ParamByName('P2LM_CODEMP').AsInteger :=mVenda_GP.mPed1_Codemp;
            query_exe.ParamByName('P2LM_LOTSEQ').AsInteger :=mVenda_GP.mPed1_Chave_ano;
            query_exe.ParamByName('P2LM_CHAVE').AsFloat    :=mVenda_GP.mPed1_Chave;
            query_exe.ParamByName('P2LM_ITEM').AsInteger   :=tb_ped02_preP2ITEM.AsInteger;
            query_exe.ParamByName('P2LM_CODPRO').AsFloat   :=tb_ped02_preP2CODPRO.AsFloat;
            query_exe.ParamByName('P2LM_LOTE').AsString    :=cds_loteslote.AsString;
            query_exe.ParamByName('P2LM_DTFAB').AsDateTime :=cds_lotesdtvcto.AsDateTime;
            query_exe.ParamByName('P2LM_DTVCTO').AsDateTime:=cds_lotesdtvcto.AsDateTime;
            query_exe.ParamByName('P2LM_QTD').AsFloat      := cds_lotesqtd.AsFloat;
            query_exe.ParamByName('P2LM_QTDDEV').AsFloat   :=0;
            query_exe.ParamByName('P2LM_ID_PED02_NEW').AsFloat   :=tb_ped02_preP2ID_NEW.AsInteger;




	pBaixar.pCodemp := mVenda_GP.mPed1_codemp;
	pBaixar.pFilial := mVenda_GP.mPed1_filial;
	pBaixar.pItem   := tb_ped02_preP2ITEM.AsInteger;
	pBaixar.pDocOri := 00;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := tb_ped02_preP2CONTESP.AsInteger;
	pBaixar.pTipoProd := 0;
	pBaixar.pChave   := mVenda_GP.mped1_Chave;
	pBaixar.pChave_ano := mVenda_GP.mped1_Chave_ano;
	pBaixar.pQtd       := cds_lotesqtd.AsFloat;
	pBaixar.pCodPro    := cds_lotescodpro.AsString;
	pBaixar.pEstNor       := mVenda_GP.mPd_EstNor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := cds_loteslote.AsString;
	pBaixar.pDtVcto       := cds_lotesdtvcto.AsDateTime;
	pBaixar.pDtFab       := cds_lotesdtfab.AsDateTime;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := mVenda_GP.mped1_Chave;

	fBaixarMercadorias(pBaixar);

{
            fBaixarMercadorias(mVenda_GP.mPed1_codemp
                     ,mVenda_GP.mPed1_filial
                     ,tb_ped02_preP2ITEM.AsInteger
                     ,00 // docori
                     ,codusr
                     ,tb_ped02_preP2CONTESP.AsInteger //pcontesp
                     ,0 //ptipoprod
                     ,mVenda_GP.mped1_Chave
                     ,mVenda_GP.mped1_Chave_ano
                     ,cds_lotesqtd.AsFloat
                     ,cds_lotescodpro.AsString
                     ,mVenda_GP.mPd_EstNor
                     ,'N'
                     ,cds_loteslote.AsString
                     ,cds_lotesdtvcto.AsDateTime
                  ,'' // lote re
                  ,'' // obs

                     );


 }
            try
               query_exe.ExecSQL;
               fdm1StartCommit;
            except
               end;
            cds_lotes.Next;
            end;
         end
      else
         begin


	pBaixar.pCodemp := mVenda_GP.mPed1_codemp;
	pBaixar.pFilial := mVenda_GP.mPed1_filial;
	pBaixar.pItem   := tb_ped02_preP2ITEM.AsInteger;
	pBaixar.pDocOri := 00;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := tb_ped02_preP2CONTESP.AsInteger;
	pBaixar.pTipoProd := 0;
	pBaixar.pChave   := mVenda_GP.mped1_Chave;
	pBaixar.pChave_ano := mVenda_GP.mped1_Chave_ano;
	pBaixar.pQtd       := cds_lotesqtd.AsFloat;
	pBaixar.pCodPro    := tb_ped02_preP2codpro.AsString;
	pBaixar.pEstNor       := mVenda_GP.mPd_EstNor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := pDataNula;
	pBaixar.pDtFab        := pDataNula;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := iif(tb_ped02_preP2ID_NEW.AsInteger>0,tb_ped02_preP2ID_NEW.AsInteger,tb_ped02_preP2ID_NEW_101.AsInteger);

	fBaixarMercadorias(pBaixar);

{
            fBaixarMercadorias(mVenda_GP.mPed1_codemp
                     ,mVenda_GP.mPed1_filial
                     ,tb_ped02_preP2ITEM.AsInteger
                     ,00 // docori
                     ,codusr
                     ,tb_ped02_preP2CONTESP.AsInteger //pcontesp
                     ,0 //ptipoprod
                     ,mVenda_GP.mped1_Chave
                     ,mVenda_GP.mped1_Chave_ano
                     ,tb_ped02_preP2QTD.AsFloat
                     ,tb_ped02_preP2CODPRO.AsString
                     ,mVenda_GP.mPd_EstNor
                     ,'N'
                     ,''
                     ,pdatanula
                  ,'' // lote re
                  ,'' // obs

                     );

}                     
         end;
      end;
//

   mDadosParametros.pId_Ped02_new_ant_naoUtil :=0;

   mVenda_GP.fGravarItemCDS(0 // produto
                       ,0
                       ,0 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                       ,mVenda_GP.mPed1_CodFP
                       ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                       ,0 //pSituacao: Integer;
                       ,'0'
                       ,mVenda_GP.mPed1_NomFP
                       ,mVenda_GP.mPed1_BaixaFP
                       ,tb_ped02_preP2QTD.AsFloat  //pQtd_Cal
                       ,tb_ped02_preP2PRECO.AsFloat // pPrecoUnit_Cal
                       ,DM1.Tb_ProPDPCOFAB.AsFloat //,pPrecoTab_Cal
                       ,DM1.Tb_ProPDUCPR.AsFloat // pPrecoUCPR_Cal
                       ,DM1.Tb_ProPDPRECOC.AsFloat // pPrecoCus_Cal
                       ,0 // pPrecoMax_Cal,
                       ,0
                       ,0
                       ,0
                       ,0
                       ,0
                       ,0
                       ,mDadosParametros
                       ,tb_ped02_pre);
   cds_detalhe.Next;
   end;
tb_ped02_pre.Close;


Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';


Query_Cons.SQL.ADD('Update cadp01 set P1EMIDOC=1,P1NFE_ENVXML=9,P1NUMNF=:NUMNF '
                  +',P1DATDOC=:DATANF, P1DATANF=:DATANF, P1STATUS=2 '
                  +',P1NFE_CHACESSO=:CHACESSO '
                  +',P1NFE_NPROT=:NPROT '
                  +',P1SERIE=:SERIE '
                  +',P1MODELO=:MODELO '
                  +' where P1CODEMP=:CODEMP and P1CHAVE=:CHAVE and P1ORDEM=1 AND P1LOTSEQ=:LOTSEQ '
                   );
Query_Cons.parambyname('NUMNF').AsInteger:=cds_cabecalhonumeronf.AsInteger;
Query_Cons.parambyname('DATANF').AsDateTime:=cds_cabecalhoIDEDEMI.AsDateTime;
Query_Cons.parambyname('CHACESSO').AsString:=cds_cabecalhoCHAVE_ACESSO.AsString;
Query_Cons.parambyname('NPROT').AsString:=cds_cabecalhonum_prot.AsString;
Query_Cons.parambyname('SERIE').AsString:=cds_cabecalhoIDESERIE.AsString;
Query_Cons.parambyname('MODELO').AsString:='55';

Query_Cons.parambyname('CODEMP').AsInteger :=codemp;
Query_Cons.parambyname('CHAVE').AsInteger  :=mvenda_gp.mped1_chave;
Query_Cons.parambyname('LOTSEQ').AsInteger  :=mvenda_gp.mPed1_Chave_ano;


try
   Query_Cons.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_Cons,19079,'frm lrs'+e.Message ,'CADEST');
   end;
   end;





AdoQuery_AtuCadNS:=TADOQuery.Create(nil);
AdoQuery_AtuCadNS.Connection:=DM1_ADO.ADOConnection1;


AdoQuery_AtuCadNS.Close;
AdoQuery_AtuCadNS.SQL.Clear;
AdoQuery_AtuCadNS.SQL.Add('Update CADNS set NSNFE_XML_CLIENTE=:XML_CLIENTE  '
                         +' ,NSNFE_CHAVEACESSO=:CHAVEACESSO '
                         +' ,NSNFE_NUMPROT=:NUMPROT '
                         +' where NSCHAVEP=:CHAVE '
                         +' and NSLOTSEQ_CP=:LOTSEQ '
                         +' and NSORDEMP=:ORDEMP '
                         +' and NSCODEMP=:CODEMP '
                            +'  and NSTIPO<2 ' );
AdoQuery_AtuCadNS.Parameters.ParamByName('XML_CLIENTE').LoadFromFile(opd1.FileName,ftMemo);
AdoQuery_AtuCadNS.Parameters.ParamByName('CHAVEACESSO').Value :=cds_cabecalhoCHAVE_ACESSO.AsString;
AdoQuery_AtuCadNS.Parameters.ParamByName('NUMPROT').Value :=cds_cabecalhonum_prot.AsString;



AdoQuery_AtuCadNS.Parameters.ParamByName('CHAVE').Value:=mVenda_GP.mped1_Chave;
AdoQuery_AtuCadNS.Parameters.ParamByName('LOTSEQ').Value:=0;
AdoQuery_AtuCadNS.Parameters.ParamByName('CODEMP').Value:=codemp;
AdoQuery_AtuCadNS.Parameters.ParamByName('ORDEMP').Value:=1;


try
   AdoQuery_AtuCadNS.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   MessageDlg('Erro '+e.Message,mtWarning,[mbOk],0);
   end;


if query_cons<>nil then
   freeandnil(Query_Cons);
if query_exe<>nil then
   freeandnil(Query_exe);
FreeAndNil(mVenda_GP);
   
   // termino



result:=true;
// MessageDlg('concluido!',mtWarning,[mbOk],0);



end;

procedure Tfrm_faturarxml.bbBuscarXMLClick(Sender: TObject);
begin
if opd1.exeCute then
   begin
   bbFaturar.Enabled:=false;
   fLerArquivos();
   end;

end;

procedure Tfrm_faturarxml.fLerArquivos;
var
x_file: integer;
begin
mLendoArquivo:=true;
if cds_arqxml.Active=false then
   begin
   cds_arqxml.CreateDataSet;
   cds_arqxml.Open;
   end
else
   cds_arqxml.EmptyDataSet;
for x_file:=0 to opd1.Files.Count-1 do
   begin
   cds_arqxml.Append;
   cds_arqxmlxml_importar.Value:=iif(cb_todos.checked=true,'X','');
   cds_arqxmlxml_nome.Value            :=Fnomearq_Pasta(0,opd1.Files[x_file]);
   cds_arqxmlxml_nomecompasta.Value    :=opd1.Files[x_file];
   cds_arqxml.post;
   end;
cds_arqxml.First;
if length(trim(cds_arqxmlxml_nomecompasta.AsString))>1 then
    fLerdadosXml(cds_arqxmlxml_nomecompasta.AsString);

if cds_arqxml.IsEmpty=false then
   bbFaturar.Enabled:=true;
mLendoArquivo:=false;;
nomeDoArquivoAnterior:='-1';
src_arqxmlDataChange(cds_arqxml,cds_arqxmlxml_importar);
end;


procedure Tfrm_faturarxml.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;


procedure Tfrm_faturarxml.fMarcarDesmarcar;
var
mBookMark: TBookmark;
begin
if (cds_arqxml.Active=false) and (not cds_arqxml.IsEmpty) then
   begin
   mBookMark := cds_arqxml.GetBookmark;
   cds_arqxml.First;
   while not cds_arqxml.Eof do
      begin
      cds_arqxml.edit;
      cds_arqxmlxml_importar.Value:=iif(cb_todos.Checked=true,'X','');
      cds_arqxml.Post;
      cds_arqxml.Next;
      end;
   cds_arqxml.GotoBookmark(mBookMark);
   end;
end;

procedure Tfrm_faturarxml.cb_todosClick(Sender: TObject);
begin
fMarcarDesmarcar;
end;


procedure Tfrm_faturarxml.fFaturarXml;
var
mBookMark: TBookmark;
begin
if (cds_arqxml.Active=true) and (not cds_arqxml.IsEmpty) then
   begin
   mBookMark := cds_arqxml.GetBookmark;
   cds_arqxml.First;
   while not cds_arqxml.Eof do
      begin
      if (cds_arqxmlxml_importar.AsString='X') and (cds_arqxmlxml_dathor_ini.isnull) then
         begin
         cds_arqxml.edit;
         cds_arqxmlxml_dathor_ini.Value:=Now();

         cds_arqxmlxml_observacoes.Value:='Importando...';
         if fFaturarIndividual(cds_arqxmlxml_nomecompasta.AsString) then
            begin
            if not (cds_arqxml.State in [dsEdit,dsInsert]) then
               cds_arqxml.Edit;
            
            cds_arqxmlxml_observacoes.Value:='Importado';
            end;
         if not (cds_arqxml.State in [dsEdit,dsInsert]) then
            cds_arqxml.Edit;
         cds_arqxmlxml_dathor_fin.Value:=Now();
         cds_arqxmlsegundos.AsInteger := SecondsBetween(cds_arqxmlxml_dathor_ini.asDateTime,Now);
         cds_arqxml.Post;
         cds_arqxml.Next;
         end
      else
         cds_arqxml.Next;

      end;
   cds_arqxml.GotoBookmark(mBookMark);
   end;



end;

procedure Tfrm_faturarxml.FormShow(Sender: TObject);
begin
mLendoArquivo:=false;

if fLerGenerico_query('CADVEN','VCODVEN,VNOME',' ROWNuM < 2 ORDER BY VCODVEN',query_consulta) then
   edt_codven.Text:=query_consulta.fieldbyname('VCODVEN').AsString;

if fLerGenerico_query('CADPV','PVCODTIP,PVCODPV',' ROWNUM < 2 ORDER BY PVCODTIP,PVCODPV',query_consulta) then
   begin
   edt_codpv.Text:=query_consulta.fieldbyname('PVCODTIP').AsString
              +query_consulta.fieldbyname('PVCODPV').AsString;
   end;           

Height:=610;
end;

procedure Tfrm_faturarxml.edt_codvenKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codven.Text:=fChamaVen(0,'_venda',key);
   edt_codvenExit(Self);
   key:=#0;
   end;

end;

procedure Tfrm_faturarxml.edt_codvenExit(Sender: TObject);
begin
edt_codven.Text:=fdeixanum(edt_codven.Text);
if Trim(edt_codven.Text)='' then
   exit;
if not flcadven(1,0,edt_codven.Text) then
   begin
   verteclado(0);
   MessageDlg('Vendedor Não Encontrado!',mtWarning,[mbOk],0);
   edt_codven.SetFocus;
   exit;
   end;

end;

procedure Tfrm_faturarxml.edt_codpvExit(Sender: TObject);
begin
if fsonumero(edt_codpv.Text)<>0 then
   begin
   if not flcadpv(1,0,copy(edt_codpv.Text,1,2),copy(edt_codpv.Text,3,length(edt_codpv.text)-2)) then
      begin
      MessageDlg('Plano de Vendas ' + edt_codpv.Text+' não cadastrado!',mtWarning,[mbOk],0);
      edt_codpv.SetFocus;
      end;
   end;



end;

procedure Tfrm_faturarxml.src_arqxmlDataChange(Sender: TObject;
  Field: TField);
begin
if mLendoArquivo=false then
   begin
   if (cds_arqxml.Active) and (not (cds_arqxml.State in [dsEdit,dsinsert])) then
      begin
      if nomeDoArquivoAnterior<>cds_arqxmlxml_nomecompasta.AsString then
         begin
         nomeDoArquivoAnterior:=cds_arqxmlxml_nomecompasta.AsString;
         fLerdadosXml(cds_arqxmlxml_nomecompasta.AsString);
         end;
      end;
    end;

end;

end.
