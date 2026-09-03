unit S_Cont_Serv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func, DB, DBTables, Grids, DBGrids,
  lerarq,S_PVO, S_Vendas_GravarPedido, DBClient, ExtCtrls, DBCtrls, RxMemDS,dateutils,
  ComCtrls;

type
   CADTHRED_DOCSPEND = record
   dp_chave_ped: integer;
   dp_chave_ped_ano: integer;
   dp_codemp: integer;
   dp_dest_email: string;
   dp_dest_whatsApp: string;
   dp_dest_codigo: string;
   dp_dest_razao: string;
   dp_anexo_nf: string;
   dp_anexo_bol: string;
   dp_computador: string;
   dp_pasta_dest: string;

end;

type
  TFrm_Cont_Serv = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label1: TLabel;
    DIAVI: TEdit;
    Label2: TLabel;
    DIAVF: TEdit;
    bbSelecionar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox3: TGroupBox;
    bbFaturar: TBitBtn;
    Tb_CServ01: TQuery;
    Tb_CServ01OK: TStringField;
    Tb_CServ01CS_DATCON: TDateTimeField;
    Tb_CServ01CS_DATVAL: TDateTimeField;
    Tb_CServ01CS_CODSER: TFloatField;
    Tb_CServ01CS_TIPO: TFloatField;
    Tb_CServ01CS_STATUS: TFloatField;
    Tb_CServ01CS_DIAV: TFloatField;
    Tb_CServ01CS_MESV: TFloatField;
    Tb_CServ01CRAZAO: TStringField;
    Tb_CServ01PDNOME: TStringField;
    Src_CServ01: TDataSource;
    U_CServ01: TUpdateSQL;
    tb_ped02s_pre: TClientDataSet;
    tb_ped02s_preP2SCODEMP: TIntegerField;
    tb_ped02s_preP2SCHAVE: TIntegerField;
    tb_ped02s_preP2SCHAVE_ANO: TIntegerField;
    tb_ped02s_preP2SITEM: TIntegerField;
    tb_ped02s_preP2SCODSER: TFloatField;
    tb_ped02s_preP2SQTD: TFloatField;
    tb_ped02s_preP2SPDESC01: TFloatField;
    tb_ped02s_preP2SPDESC02: TFloatField;
    tb_ped02s_preP2SPDESC03: TFloatField;
    tb_ped02s_preP2SPRECO: TStringField;
    tb_ped02s_preP2SDESC_COMP: TStringField;
    tb_ped02s_preP2SCST: TStringField;
    tb_ped02s_preP2SBCISSQN: TFloatField;
    tb_ped02s_preP2SVISSQN: TFloatField;
    tb_ped02s_preP2SALIQISSQN: TFloatField;
    tb_ped02s_preP2SCSOSN: TFloatField;
    tb_ped02s_preP2SSITUACAO: TFloatField;
    tb_ped02s_preP2SPCOTAB: TFloatField;
    tb_ped02s_preP2SPCOCUS: TFloatField;
    tb_ped02s_preP2STOTDES: TFloatField;
    tb_ped02s_preP2SDESCRAT: TFloatField;
    tb_ped02s_preP2SDESCFIN_PERC: TFloatField;
    tb_ped02s_preP2SDESCFIN_VALOR: TFloatField;
    tb_ped02s_preP2SBCINSS: TFloatField;
    tb_ped02s_preP2SPREDINSS: TFloatField;
    tb_ped02s_preP2SVREDINSS: TFloatField;
    tb_ped02s_preP2SPREDIRRF: TFloatField;
    tb_ped02s_preP2SVREDIRRF: TFloatField;
    tb_ped02s_preP2SALIQIRRF: TFloatField;
    tb_ped02s_preP2SCFOP_NF: TFloatField;
    tb_ped02s_preP2SCFOP_ECF: TFloatField;
    tb_ped02s_preP2SCODVEN: TFloatField;
    tb_ped02s_prePDNOME: TStringField;
    tb_ped02s_prePDUND: TStringField;
    tb_ped02s_preP2SCSOSN_ORI2: TFloatField;
    tb_ped02s_preVALOR_TOTAL2: TFloatField;
    tb_ped02s_preP2SALIQINSS: TFloatField;
    Label22: TLabel;
    CODCOB: TEdit;
    lbx_codcob: TListBox;
    OMITIR_COB: TCheckBox;
    Tb_CServ01CNOMBCO01: TStringField;
    Tb_CServ01CS_CODEMP: TFloatField;
    Tb_CServ01CS_CHAVE: TFloatField;
    Tb_CServ01CS_CODUSR_INC: TFloatField;
    Tb_CServ01CS_NOMUSR_INC: TStringField;
    Tb_CServ01CS_DATHOR_INC: TDateTimeField;
    Tb_CServ01CS_CODUSR_ALT: TFloatField;
    Tb_CServ01CS_NOMUSR_ALT: TStringField;
    Tb_CServ01CS_DATHOR_ALT: TDateTimeField;
    Tb_CServ01CS_FORMAPAG: TMemoField;
    Tb_CServ01CS_NUMPROPOSTA: TStringField;
    Tb_CServ01CS_REPLEGAL: TStringField;
    Tb_CServ01CS_REPLEGAL_SEXO: TStringField;
    Tb_CServ01CS_REPLEGAL_CPF: TStringField;
    Tb_CServ01CS_REPLEGAL_RG: TStringField;
    Tb_CServ01TOTAL_VALOR_CONT: TFloatField;
    Tb_CServ01TOTAL_VALOR_CONT_DESC: TFloatField;
    Tb_CServ01TOTAL_VALOR_LIQUIDO: TFloatField;
    Tb_CServ01TOTAL_LIC: TFloatField;
    gb_mees: TGroupBox;
    mem_meses: TRxMemoryData;
    mem_mesesfat_mes: TIntegerField;
    mem_mesesfat_ano: TIntegerField;
    src_meses: TDataSource;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Tb_CServ01ORIGEM: TStringField;
    Tb_CServ01DATVEN: TDateTimeField;
    Tb_CServ01CS_CODCLI: TFloatField;
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
    Tb_CServ01CCODVEN: TFloatField;
    Tb_CServ01CS_CODBCO_PREF: TFloatField;
    Tb_CServ01CS_TIPO_DOCUMENTO: TStringField;
    cds_chave_fat: TClientDataSet;
    Tb_CServ01CEMAIL: TStringField;
    cb_emitir_documento: TCheckBox;
    cb_enviar_email_boleto: TCheckBox;
    Label3: TLabel;
    edt_pastatemporaria: TEdit;
    Tb_CServ01CS_CODEMP_PREF: TFloatField;
    Tb_CServ01DATA_FATURA: TDateTimeField;
    Tb_CServ01DATA_INICIO_COMPETENCIA: TDateTimeField;
    lbl_tempo: TLabel;
    mem_mesesfat_mes_comp: TIntegerField;
    mem_mesesfat_ano_comp: TIntegerField;
    bbExportarExcel: TBitBtn;
    tb_ped02s_preP2SPCOMIS: TFloatField;
    cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField;
    tb_ped02s_preP2SID_NEW: TFloatField;
    tb_ped02s_preP2SID_PED01_NEW: TFloatField;
    tb_ped02s_preP2IRRF_PERC: TFloatField;
    tb_ped02s_preP2IRRF_VALOR: TFloatField;
    tb_ped02s_preP2CSLL_PERC: TFloatField;
    tb_ped02s_preP2CSLL_VALOR: TFloatField;
    tb_ped02s_preP2SID_NEW_101: TFloatField;
    Tb_CServ01CWHATSAPP: TStringField;
    cds_aliquotasrequer_pedori: TIntegerField;
    cds_aliquotasal_IcmsTribDesonera: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsAliquotas: TTabSheet;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    lbl_totger: TStaticText;
    lbl_totsel: TStaticText;
    Panel1: TPanel;
    bbMarcar: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid_CONFIG: TDBGrid;
    src_aliquotas: TDataSource;
    cds_aliquotasal_ibs_uf: TFloatField;
    cds_aliquotasal_ibs_mun: TFloatField;
    cds_aliquotasal_cbs: TFloatField;
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure DIAVIExit(Sender: TObject);
    procedure DIAVFExit(Sender: TObject);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSelecionarClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bbFaturarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCOBExit(Sender: TObject);
    procedure CODCOBKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcobKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_CServ01AfterEdit(DataSet: TDataSet);
    procedure Tb_CServ01AfterPost(DataSet: TDataSet);
    procedure bbMarcarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure mem_mesesBeforePost(DataSet: TDataSet);
    procedure DBGrid2Exit(Sender: TObject);
    procedure edt_pastatemporariaExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbExportarExcelClick(Sender: TObject);

  private
    { Private declarations }
    mTotBru_sel: Real;
    mTotDes_sel: Real;
    mQtdSel: Integer;
    mTotBru_ger: Real;
    mTotDes_ger: Real;
    mQtdGer: Integer;

    mValor_ant: Real;
    mDesc_Ant: Real;
    mOk_Ant: string;
    mCADTHRED_DOCSPEND : CADTHRED_DOCSPEND;


    function fFaturarPedido_ultimo(pTipo: Integer):Boolean;
    function fTotais: Boolean;
    function fApresentaTotais: Boolean;

    function fLerDados(pMarca: string): boolean;

    function fgravarcadthred_docspend:boolean;



    function fValidarDados: Boolean;


    procedure EmiteNFSEBoleto;

    procedure NaoEmiteNFSEBoleto;


    function fEnviarEmail: Boolean;

    function fNaoEnviarEmail: Boolean;


    function fLimparBase:boolean;


    function fValidarEnviou: Boolean;

  public
    { Public declarations }
  end;

var
  Frm_Cont_Serv: TFrm_Cont_Serv;

implementation

uses S_DM1, S_DM4,  func_excecoes, S_Ocorrencias,
  func_emitir_notas, S_EnviarEmail, Func2;

{$R *.dfm}


function TFrm_Cont_Serv.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
  mVenda_GP: TFrm_Vendas_GravarPedido;
  mSeq_Item: Integer;

  mPed_UF_Cli            : String;
  mPed_Cli_RazSoc        : String;
  mPed_Cli_ConsFin       : Boolean;
  mPed_Cli_Revenda_Cp    : Boolean;
  mPed_Cli_ST            : Boolean;
  mPed_Cli_icmsnr        : Boolean;
  mPed_Cli_MotDes        : Integer;
  mPed_Cli_REDICMSNOR    : Boolean;
  mPed_CliCalcIPI        : Boolean;

  mm, yyyy : Integer;
  dataf : TDate;
mDadosParametros: tDadosParametros;

begin

Application.CreateForm(TFrm_Vendas_GravarPedido,mVenda_GP);
cds_aliquotas.EmptyDataSet;
fParametrosAliquotas(Tb_CServ01CS_CODCLI.AsFloat
,1 // tipo do pedido
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

flcadcli(1,0,Tb_CServ01CS_CODCLI.AsString);

mVenda_GP.mPed1_Codemp        :=Tb_CServ01CS_CODEMP_PREF.Asinteger;
mvenda_gp.mped1_Chave         :=0;
mVenda_GP.mPed1_CodCli        :=Tb_CServ01CS_CODCLI.AsFloat;
mVenda_GP.mPed1_Datap         :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
mVenda_GP.mPed1_Tipo_Ped      :=1;
mVenda_GP.mPed1_CodFP         :=0;
mVenda_GP.mPed1_NomFP         :='';
mVenda_GP.mPed1_BaixaFP       :='N';
mVenda_GP.mPed1_CodPV         :=1;
mVenda_GP.mPed1_PvaCtd        :=0;
mVenda_GP.mPed1_TabPV         :='AV';
mVenda_GP.mPed1_TpComis       :=0;
mVenda_GP.mPed1_Codven        :=DM1.Tb_CliCCODVEN.AsInteger;
mVenda_GP.mPed1_CodBco1       :=Tb_CServ01CS_CODBCO_PREF.AsInteger;
mVenda_GP.mPed1_CodBco101     :=Tb_CServ01CS_CODBCO_PREF.AsInteger;
mVenda_GP.mped1_submod_grav   :=0;
mVenda_GP.mPed1_cfop1         :=5101;
mVenda_GP.mPed1_cfop2         :=5101;
mVenda_GP.mPed1_Frete_CIFFOB  :=0;
mVenda_GP.mPed1_CodTra        :=0;
mVenda_GP.mPed1_AjustaFP      :='S';
mVenda_GP.mPed1_CodPV   :=99;
mVenda_GP.mPed1_PvaCtd  :=0;
mVenda_GP.mPed1_TabPV   :='PO';
mVenda_GP.mPed1_TpComis :=0;
mVenda_GP.mped1_tppco   :=2; // preco extra;
mVenda_GP.mPed1_Tabela  :='1';

if not fLerGenerico_query('CADFP','FPCODIGO,FPDESC','FPVINCULO=16',query_consulta) then
   fLerGenerico_query('CADFP','FPCODIGO,FPDESC','',query_consulta);


cds_aliquotas.First;

mVenda_GP.mPed1_CodFP:=query_consulta.fieldbyname('FPCODIGO').AsInteger;
mVenda_GP.mPed1_NomFP:=query_consulta.fieldbyname('FPDESC').AsString;

mVenda_GP.mPed1_Parcelas:=insere('1','0',4);
mVenda_GP.mPed1_PrzNovos_001:='P|'+FloatToStr(Tb_CServ01DATVEN.AsDateTime - date)+'|||||||||||';
mVenda_GP.mPed1_PrzNovos_101:='P|'+FloatToStr(Tb_CServ01DATVEN.AsDateTime - date)+'|||||||||||';


mVenda_GP.mPed1_QtdParc_ant :=-1;
mVenda_GP.mped1_QtdParc     :=1;
mVenda_GP.mPed1_AjustaFP    :='S';
mVenda_GP.mPed1_pvdescf     :=0;
mVenda_GP.mPed1_pvddescf    :=0;
mVenda_GP.mPed1_pvdiasdescf :=0;
mVenda_GP.mped1_npedori1    :='0';
mVenda_GP.mped1_npedori2    :='0';
mVenda_GP.fGravarPed01(0,iif(mVenda_GP.mped1_codemp>100,100,0));










tb_ped02s_pre.CreateDataSet;
tb_ped02s_pre.EmptyDataSet;
tb_ped02s_pre.Append;
tb_ped02s_preP2SCODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
if mVenda_GP.mPed1_Codemp>100 then
   tb_ped02s_preP2SID_NEW_101.AsInteger :=fBuscarProximoId('CADP02S_SEQ')
else
   tb_ped02s_preP2SID_NEW.AsInteger :=fBuscarProximoId('CADP02S_SEQ');
tb_ped02s_preP2SCHAVE_ANO.AsInteger :=mVenda_GP.mPed1_Chave_ano;

tb_ped02s_preP2SID_PED01_NEW.AsInteger :=iif(mVenda_GP.mPed1_id_new_000>0,mVenda_GP.mPed1_id_new_000, mVenda_GP.mPed1_id_new_100);
tb_ped02s_preP2SCHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;
tb_ped02s_preP2SITEM.AsInteger   :=1;
tb_ped02s_preP2SCODSER.AsFloat   :=Tb_CServ01CS_CODSER.AsFloat;
tb_ped02s_preP2SQTD.AsFloat      :=1;
Tb_ped02S_preP2SALIQISSQN.AsFloat   :=cds_aliquotasal_issqn.AsFloat;
tb_ped02s_preP2SPREDINSS.AsFloat :=cds_aliquotasal_inss.AsFloat;
tb_ped02s_preP2SALIQINSS.AsFloat :=cds_aliquotasal_inss_pred.AsFloat;
tb_ped02s_preP2SPREDIRRF.AsFloat :=cds_aliquotasal_irrf.AsFloat;
tb_ped02s_preP2SALIQIRRF.AsFloat :=cds_aliquotasal_irrf_pred.AsFloat;
tb_ped02s_preP2SPRECO.AsFloat    :=Tb_CServ01TOTAL_VALOR_CONT.AsFloat;
tb_ped02s_preP2SCODVEN.AsInteger :=mVenda_GP.mPed1_Codven;
tb_ped02s_preP2SPDESC01.AsFloat    :=0;
tb_ped02s_preP2SPDESC02.AsFloat    :=0;
tb_ped02s_preP2SPDESC03.AsFloat    :=0;
tb_ped02s_preP2SPCOMIS.AsFloat     :=0;

if (Tb_CServ01TOTAL_VALOR_CONT_DESC.AsFloat>0) then
   tb_ped02s_preP2SDESCFIN_PERC.Value:=Arredonda( ((Tb_CServ01TOTAL_VALOR_CONT_DESC.AsFloat*100) /Tb_CServ01TOTAL_VALOR_CONT.AsFloat) ,5)
else
   tb_ped02s_preP2SDESCFIN_PERC.Value:=0;

tb_ped02s_pre.Post;

   mDadosParametros.pId_Ped02_new_ant_naoUtil :=0;

mVenda_GP.fGravarItemCDS(1 // produto
                    ,0
                    ,2 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                    ,mVenda_GP.mPed1_CodFP
                    ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                    ,0 //pSituacao: Integer;
                    ,'0'
                    ,mVenda_GP.mPed1_NomFP
                    ,mVenda_GP.mPed1_BaixaFP
                    ,tb_ped02s_preP2SQTD.AsFloat   //pQtd_Cal
                    ,tb_ped02s_preP2SPRECO.AsFloat // pPrecoUnit_Cal
                    ,tb_ped02s_preP2SPCOTAB.AsFloat //,pPrecoTab_Cal
                    ,0 // pPrecoUCPR_Cal
                    ,tb_ped02s_preP2SPCOCUS.AsFloat // pPrecoCus_Cal
                    ,0 // pPrecoMax_Cal,
                    ,0
                    ,0
                    ,0
                    ,0
                    ,0
                    ,0
                    ,mDadosParametros

                    ,tb_ped02s_pre);
tb_ped02s_pre.Close;

mCADTHRED_DOCSPEND.dp_chave_ped      := mVenda_GP.mped1_Chave;
mCADTHRED_DOCSPEND.dp_chave_ped_ano  := mVenda_GP.mPed1_Chave_ano;
mCADTHRED_DOCSPEND.dp_codemp         := mVenda_GP.mPed1_Codemp;
mCADTHRED_DOCSPEND.dp_dest_email     := Tb_CServ01CEMAIL.AsString;
mCADTHRED_DOCSPEND.dp_dest_whatsApp  := Tb_CServ01CEMAIL.AsString;

//mCADTHRED_DOCSPEND.dp_dest_email     := 'lindomar_dc@hotmail.com;janescosta2@hotmail.com';
mCADTHRED_DOCSPEND.dp_anexo_nf       := '';
mCADTHRED_DOCSPEND.dp_anexo_bol      := '';
mCADTHRED_DOCSPEND.dp_computador     := NomeComputador;
mCADTHRED_DOCSPEND.dp_pasta_dest     := edt_pastatemporaria.Text;


result:=fgravarcadthred_docspend;


FreeAndNil(mVenda_GP);
end;




function TFrm_Cont_Serv.fgravarcadthred_docspend:boolean;
var
query_cadtred: TQuery;
begin
query_cadtred:=TQuery.create(nil);
query_cadtred.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_cadtred.sql.Add('Insert into CADTHRED_DOCSPEND ( '
                     +'DP_CHAVE_PED '
                     +',DP_CHAVE_PED_ANO '
                     +',DP_CODEMP '
                     +',DP_DEST_EMAIL '
                     +',DP_ANEXO_NF '
                     +',DP_ANEXO_BOL '
                     +',DP_DATHOR_INCLUSAO '
                     +',DP_COMPUTADOR '
                     +',DP_PASTA_DEST '
                     +') values ( '
                     +':DP_CHAVE_PED '
                     +',:DP_CHAVE_PED_ANO  '
                     +',:DP_CODEMP '
                     +',:DP_DEST_EMAIL '
                     +',:DP_ANEXO_NF '
                     +',:DP_ANEXO_BOL '
                     +',SYSDATE '
                     +',:DP_COMPUTADOR '
                     +',:DP_PASTA_DEST '

                     +' ) '
                     );

query_cadtred.Parambyname('DP_CHAVE_PED').asinteger                             :=mCADTHRED_DOCSPEND.DP_CHAVE_PED;
query_cadtred.Parambyname('DP_CHAVE_PED_ANO').asinteger                         :=mCADTHRED_DOCSPEND.DP_CHAVE_PED_ANO;
query_cadtred.Parambyname('DP_CODEMP').asinteger                                :=mCADTHRED_DOCSPEND.DP_CODEMP;
query_cadtred.Parambyname('DP_DEST_EMAIL').asstring                             :=mCADTHRED_DOCSPEND.DP_DEST_EMAIL;
query_cadtred.Parambyname('DP_ANEXO_NF').asstring                               :=mCADTHRED_DOCSPEND.DP_ANEXO_NF;
query_cadtred.Parambyname('DP_ANEXO_BOL').asstring                              :=mCADTHRED_DOCSPEND.DP_ANEXO_BOL;
query_cadtred.Parambyname('DP_COMPUTADOR').asstring                             :=mCADTHRED_DOCSPEND.DP_COMPUTADOR;
query_cadtred.Parambyname('DP_PASTA_DEST').asstring                             :=mCADTHRED_DOCSPEND.DP_PASTA_DEST;

try
   query_cadtred.ExecSQL;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_cadtred,429,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
   result:=false;
   end;
   end;
query_cadtred.close;
freeandnil(query_cadtred);



end;


procedure TFrm_Cont_Serv.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_Cont_Serv',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Cont_Serv.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fMensagem('Cliente não Cadastrado!',0,['0'],0);
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

procedure TFrm_Cont_Serv.DIAVIExit(Sender: TObject);
begin
DIAVI.Text:=fdeixanum2(DIAVI.Text);
end;

procedure TFrm_Cont_Serv.DIAVFExit(Sender: TObject);
begin
DIAVF.Text:=fdeixanum2(DIAVF.Text);
end;

procedure TFrm_Cont_Serv.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if Lbx_codcli.ItemIndex>=0 then
      Lbx_codcli.Items.Delete(Lbx_codcli.ItemIndex);

end;

procedure TFrm_Cont_Serv.bbSelecionarClick(Sender: TObject);
begin
fLerDados('P');
end;

function tFrm_Cont_Serv.fLerDados(pMarca: string): boolean;
var
x_Mes: Integer;
begin
Tb_CServ01.Close;

if mem_meses.IsEmpty then
   begin
   MessageDlg('Favor Selecionar Pelo Menos um Mes para Faturamento!',mtWarning,[mbok],0);
   result:=false;
   exit;
   end;
Tb_CServ01.DisableControls;
mem_meses.First;
x_Mes:=0;
Tb_CServ01.SQL.Clear;

While not mem_meses.Eof do
   begin
   if x_Mes>0 then
     Tb_CServ01.SQL.Add(' union ');
   x_mes:=x_mes+1;

   Tb_CServ01.SQL.Add('Select '
                     +' (select MAX(CRCOMPETENCIA_DTINICIO) FROM CADDAR WHERE CRSTATUS<8 AND CRCODCLI=CS_CODCLI AND CRCOMPETENCIA_CH_CONTRATO=CS_CHAVE '
                     +'  AND CRCOMPETENCIA_DTINICIO=TO_DATE('+quotedstr('01/'+ FormatFloat('00',mem_mesesfat_mes_comp.Value)+'/'+FormatFloat('0000', mem_mesesfat_ano_comp.Value))+') '
                     +') AS DATA_FATURA '
                     +',TO_DATE('+quotedstr('01/' + FormatFloat('00',mem_mesesfat_mes_comp.Value)+'/'+FormatFloat('0000', mem_mesesfat_ano_comp.Value))+ ') AS DATA_INICIO_COMPETENCIA, '
                     +QuotedStr(FormatFloat('0000', mem_mesesfat_ano_comp.Value)+'/'+FormatFloat('00',mem_mesesfat_mes_comp.Value))
                  +' as origem, '
                  +' TO_DATE('
                  +' TO_CHAR(CASE WHEN nvl(CS_DIAV,0)<1 OR nvl(CS_DIAV,0)>28 then 10 else CS_DIAV  end ,'+quotedstr('00')+') '
                  +'  || '+
                   QuotedStr(FormatFloat('00', mem_mesesfat_mes.Value)+'/'+FormatFloat('0000',mem_mesesfat_ano.Value))
                   +') as DATVEN,'
                   +QuotedStr(pMarca)+' AS OK,'
  +' CS_CODEMP,  CS_CODCLI,  CS_CHAVE,  CS_DATCON,  CS_DATVAL,  CS_TIPO,  CS_CODSER,  CS_STATUS,  CS_DIAV,  CS_MESV, '
  +'  CS_CODUSR_INC,  CS_NOMUSR_INC,  CS_DATHOR_INC,  CS_CODUSR_ALT,  CS_NOMUSR_ALT,  CS_DATHOR_ALT,  CS_FORMAPAG,  CS_NUMPROPOSTA, '
  +'  CS_REPLEGAL,  CS_REPLEGAL_SEXO,  CS_REPLEGAL_CPF,  CS_REPLEGAL_RG,  CS_VALOR,  CS_CODPRO,  CS_MODELO,  CS_MARCA,  CS_SERIE, '
  +'  CS_VERSAO,  CS_RAMAIS_ANA,  CS_RAMAIS_DIG,  CS_QTD_MESA,  CS_TRONCO '
  +',CS_CODBCO_PREF ,CS_TIPO_DOCUMENTO,CS_CODEMP_PREF,CEMAIL,CCODVEN,'

                  +'  PDNOME,CRAZAO,CNOMBCO01,CWHATSAPP'
                  +' ,NVL( ( select  sum(round(((VALOR_INDEX*CSS_PERCINDEX)/100),2)) '
                  +' as Total_valor_cont  from ( Select CSS_PERCINDEX ,case when  (SELECT max(IVLRCOMCPR) '
                  +' from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )   is null '
                  +' then (SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE) ) else  (SELECT max(IVLRCOMCPR) '
                  +' from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end  as valor_index '
                  +' from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE and CSS_CODEMP=CS_CODEMP  )  ),0) '
                  +' AS TOTAL_VALOR_CONT ,NVL( ( select sum(round( (round(((VALOR_INDEX*CSS_PERCINDEX)/100),2)*CSS_PDESCFIN/100),2)) '
                  +' as Total_valor_cont_desc  from ( Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCOMCPR) from '
                  +' CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )   is null then (SELECT min(IVLRCOMCPR) '
                  +' from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE) ) else  (SELECT max(IVLRCOMCPR) from CADIND '
                  +' where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end  as valor_index  from CADCSER01_SERV '
                  +' where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE and CSS_CODEMP=CS_CODEMP  )  ),0) AS TOTAL_VALOR_CONT_desc '
                  +' ,NVL( ( select sum(round(((VALOR_INDEX*CSS_PERCINDEX)/100),2)-round( (round(((VALOR_INDEX*CSS_PERCINDEX)/100),2)*CSS_PDESCFIN/100), '
                  +' 2))     as Total_valor_liq  from ( Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCOMCPR) '
                  +' from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )   is null then (SELECT min(IVLRCOMCPR) '
                  +' from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE) ) else  (SELECT max(IVLRCOMCPR) '
                  +' from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end  as valor_index '
                  +' from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE and CSS_CODEMP=CS_CODEMP  )  ),0) '
                  +' AS TOTAL_VALOR_liquido ,nvl( (select sum(nvl(CSS_VALORLIC,0)) from CADCSER01_SERV where CSS_CODCLI=CS_CODCLI '
                  +' AND CSS_CHAVE=CS_CHAVE and CSS_CODEMP=CS_CODEMP),0) AS TOTAL_LIC  from CADCSER01,CADPRO,CADCLI where PDCODPRO(+)=CS_CODSER '
                  +' AND CCODCLI=CS_CODCLI '
                  +' and CS_TIPO>0 AND CS_TIPO<5 '
                  );
//                  +' and CS_CODEMP=:CODEMP ');

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then Tb_CServ01.sql.Add(' and CS_CODCLI '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codcob,OMITIR_COB);
   if trim(mcinst2)<>'' then Tb_CServ01.sql.Add(' and CCODBCO01 '+mcinst2);
   if trim(DIAVI.Text)<>'' then
      begin
      Tb_CServ01.SQL.Add(' and CS_DIAV>='+Trim(DIAVI.Text));
      end;

   if trim(DIAVF.Text)<>'' then
      begin
      Tb_CServ01.SQL.Add(' and CS_DIAV<='+Trim(DIAVF.Text));
      end;
//   Tb_CServ01.ParamByName('CODEMP').AsInteger:=codemp;

   mem_meses.Next;
   end;

//  Tb_CServ01.Sql.SaveToFile(mpastatemp + 'sqlerroser01.txt');
Tb_CServ01.SQL.add(' order by CRAZAO,DATVEN ');

try
   Tb_CServ01.Open;
   fTotais;
except
   Tb_CServ01.Sql.SaveToFile(mpastatemp + 'sqlerroser01.txt');
   end;

if pMarca<>'' then
   begin
   Tb_CServ01.First;
   While not Tb_CServ01.Eof do
      begin
      if Tb_CServ01DATA_FATURA.asdatetime=Tb_CServ01DATA_INICIO_COMPETENCIA.asdatetime then
         begin
         Tb_CServ01.Edit;
         Tb_CServ01OK.AsString:='';
         Tb_CServ01.Post;
         end;
      Tb_CServ01.Next;
      end;
   end;
Tb_CServ01.First;
Tb_CServ01.EnableControls;


end;



procedure TFrm_Cont_Serv.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=32 then
   begin
   Tb_CServ01.Edit;
   if trim(Tb_CServ01OK.AsString)='' then
      Tb_CServ01OK.Value:='P'
   else
      Tb_CServ01OK.Value:=' ';
   Tb_CServ01.Post;
   end;

end;

procedure TFrm_Cont_Serv.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Cont_Serv.DBGrid1DblClick(Sender: TObject);
begin
Tb_CServ01.Edit;
if trim(Tb_CServ01OK.AsString)='' then
   Tb_CServ01OK.Value:='P'
else
   Tb_CServ01OK.Value:=' ';
Tb_CServ01.Post;

end;

function TFrm_Cont_Serv.fValidarDados: Boolean;
var
form_ocorrencias: TFrm_Ocorrencias;
mmenor_codemp: boolean;
mmaior_codemp: boolean;
mmensagem: string;
peletronica: boolean;
begin
Tb_CServ01.DisableControls;

Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
Form_Ocorrencias.mErros:=false;
form_ocorrencias.ListView1.Clear;
mmenor_codemp:=false;
mmaior_codemp:=false;

Tb_CServ01.First;
While not Tb_CServ01.Eof do
   begin
   if Tb_CServ01CS_CODEMP_PREF.AsInteger>100 then
      mmaior_codemp:=true
   else
      mmenor_codemp:=true;

   if trim(Tb_CServ01CEMAIL.AsString)='' then
      begin
      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' não possui email!');
      Form_Ocorrencias.mErros:=true;
      end;
   if NOT fLerGenerico_query('CADCLI,CADLOC','CRAZAO,CDENOM,CCNPJ,CCPF,CEMAIL,CLOG,CCODLOC,LNOME,LUF,LCODMUN_PREF,CENDERC,CBAIRROC,CCIDADEC'
                            +',CUFC,CCEPC','CCODCLI='+Tb_CServ01CS_CODCLI.AsString+' AND LCODLOC(+)=CCODLOC' ,query_consulta) then
      begin

      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' não encontrado!');

      Form_Ocorrencias.mErros:=true;
      end;




   if (query_consulta.fieldbyname('CCNPJ').asfloat=0) and (query_consulta.fieldbyname('CCPF').asfloat=0) then
      begin
      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' sem CNPJ e sem CPF!'
                                           +' '+query_consulta.fieldbyname('LNOME').asstring+' - '+query_consulta.fieldbyname('LUF').asstring   );
      Form_Ocorrencias.mErros:=true;
      end;

   if (length(trim(query_consulta.fieldbyname('CENDERC').AsString))<2) then
      begin
      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' Falta o Endereço de Cobranca!'
                                           +' '+query_consulta.fieldbyname('LNOME').asstring+' - '+query_consulta.fieldbyname('LUF').asstring   );
      Form_Ocorrencias.mErros:=true;
      end;

   if (length(trim(query_consulta.fieldbyname('CBAIRROC').AsString))<2) then
      begin
      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' Falta o Bairro de Cobranca!'
                                           +' '+query_consulta.fieldbyname('LNOME').asstring+' - '+query_consulta.fieldbyname('LUF').asstring   );
      Form_Ocorrencias.mErros:=true;
      end;

   if (length(trim(query_consulta.fieldbyname('CCIDADEC').AsString))<2) then
      begin
      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' Falta a Cidade de Cobranca!'
                                           +' '+query_consulta.fieldbyname('LNOME').asstring+' - '+query_consulta.fieldbyname('LUF').asstring   );
      Form_Ocorrencias.mErros:=true;
      end;

   if (length(trim(query_consulta.fieldbyname('CUFC').AsString))<2) then
      begin
      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' Falta a UF de Cobranca!'
                                           +' '+query_consulta.fieldbyname('LNOME').asstring+' - '+query_consulta.fieldbyname('CUFC').asstring   );
      Form_Ocorrencias.mErros:=true;
      end;


   if (length(trim(query_consulta.fieldbyname('CCEPC').AsString))<2) then
      begin
      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' Falta o CEP de Cobranca!'
                                           +' '+query_consulta.fieldbyname('LNOME').asstring+' - '+query_consulta.fieldbyname('CUFC').asstring   );
      Form_Ocorrencias.mErros:=true;
      end;

   if length(query_consulta.fieldbyname('CLOG').AsString)<2 then
      begin
      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' sem Endereco'
                                                 +' '+query_consulta.fieldbyname('LNOME').asstring+' - '+query_consulta.fieldbyname('LUF').asstring   );

      Form_Ocorrencias.mErros:=true;
      end;
   if query_consulta.fieldbyname('LCODMUN_PREF').Asfloat<1 then
      begin
      Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - ' +Tb_CServ01CS_CODCLI.AsString+' falta o codigo do municipio junto a prefeitura'
                                                 +' '+query_consulta.fieldbyname('LNOME').asstring+' - '+query_consulta.fieldbyname('LUF').asstring   );
      Form_Ocorrencias.mErros:=true;
      end;

// VALIDACAO DOS SERVICOS



      if NOT fLerGenerico_query('CADPRO','PDNOME,PDUND,PDCODIGO_CNAE,PDCODIGO_SERVICO,PDCODPRO,PDNIVEL','PDCODPRO=0'+Tb_CServ01CS_CODSER.AsString
               +'  '  ,query_consulta) then
         begin
         Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' -  codigo servico ' +Tb_CServ01CS_CODSER.AsString+' nao encontrado!');
         Form_Ocorrencias.mErros:=true;
         end
      else
         begin
         While not query_consulta.eof do
            begin
            if length(query_consulta.fieldbyname('PDCODIGO_CNAE').asstring)<1 then
               begin
               Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - '
                         +Tb_CServ01CS_CODCLI.AsString+' o Servico '+query_consulta.Fieldbyname('PDCODPRO').asstring+' - '+query_consulta.fieldbyname('PDNOME').asstring
                         +' não possui o Codigo CNAE !');
               Form_Ocorrencias.mErros:=true;
               end;

            if length(query_consulta.fieldbyname('PDCODIGO_SERVICO').asstring)<1 then
               begin
               Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - '
                         +Tb_CServ01CS_CODCLI.AsString+' o Servico '+query_consulta.Fieldbyname('PDCODPRO').asstring+' - '+query_consulta.fieldbyname('PDNOME').asstring
                         +' não possui o Codigo do SERVICO !');
               Form_Ocorrencias.mErros:=true;
               end;

            if valint(query_consulta.fieldbyname('PDNIVEL').asstring)<>9 then
               begin
               Form_Ocorrencias.adicionaItemListView('Cliente '+Tb_CServ01CRAZAO.AsString+' - '
                         +Tb_CServ01CS_CODCLI.AsString+' o Servico '+query_consulta.Fieldbyname('PDNIVEL').asstring+' - '+query_consulta.fieldbyname('PDNOME').asstring
                         +' não esta definido como serviço !');
               Form_Ocorrencias.mErros:=true;
               end;


            query_consulta.Next;
            end;
         end;

// TERMINO DAS VALIDACOES DOS SERVICOS




   Tb_CServ01.Next;
   end;


if mmaior_codemp then
   begin
   if not fTestarServidor_NFE(iif(codemp<100,codemp+100,codemp),'SERVICO',mmensagem,pEletronica) then
      begin
      Form_Ocorrencias.adicionaItemListView(mmensagem);
      Form_Ocorrencias.mErros:=true;
      end;
   end;

if mmenor_codemp then
   begin
   if not fTestarServidor_NFE(iif(codemp>100,codemp-100,codemp),'SERVICO',mmensagem,pEletronica) then
      begin
      Form_Ocorrencias.adicionaItemListView(mmensagem);
      Form_Ocorrencias.mErros:=true;
      end;
   end;

if not fTestarServidor_NFE(codemp,'SERVICO',mmensagem, peletronica) then
   begin
   Form_Ocorrencias.adicionaItemListView('Servidor de Nota Fiscal Eletronica Não esta Ativa!');
   end;



if Form_Ocorrencias.mErros then
   begin
   Form_Ocorrencias.ShowModal;
   FreeAndNil(form_ocorrencias);
   result:=false
   end
else
   result:=true;


Tb_CServ01.EnableControls;

end;


function TFrm_Cont_Serv.fLimparBase:boolean;
var
query_temp: TQuery;
begin

query_temp:=TQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.sql.Clear;
query_temp.sql.Add('delete  from CADTHRED_DOCSPEND '
                  +' where DP_COMPUTADOR=:DP_COMPUTADOR ');
query_temp.parambyname('DP_COMPUTADOR').AsString:=NomeComputador;
try
   query_temp.execsql;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,764,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
   result:=false;
   exit;
   end;
   end;
query_temp.close;
freeandnil(query_temp);

end;

procedure TFrm_Cont_Serv.bbFaturarClick(Sender: TObject);
var
mqtd: Integer;
mdathor_ini: tdatetime;
mdathor_fin: tdatetime;

begin
if not (Tb_CServ01.Active) or (Tb_CServ01.IsEmpty) then
   begin
   fMensagem('Favor Aplicar uma Seleção!',0,['0'],0);
   bbSelecionar.SetFocus;;
   exit;
   end;
if codemp>99 then
   begin
   Messagedlg('Valido somente nas empresas abaixo de 100',mtWarning,[mbOk],0);
   exit;
   end;

fLimparBase;

mdathor_ini:=now();
lbl_tempo.Caption:='Iniciado em '+formatdatetime(fdt2, mdathor_ini)+' as '+FormatDateTime(fhr, mdathor_ini) ;
verteclado(0);

if not fValidarDados then
   exit;



if edt_pastatemporaria.Text[length(edt_pastatemporaria.Text)]='\' then
   edt_pastatemporaria.text:=copy(edt_pastatemporaria.text,1,length(edt_pastatemporaria.text)-1);

if not DirectoryExists(edt_pastatemporaria.Text) then
   fcriarPastas(edt_pastatemporaria.Text);
edt_pastatemporaria.Text:=edt_pastatemporaria.Text+'\';



// inicio do Faturamento
Tb_CServ01.First;
While not Tb_CServ01.Eof do
   begin
   if Trim(Tb_CServ01OK.AsString)='' then
      begin
      Tb_CServ01.Next;
      Continue;
      end;
   if Tb_CServ01DATVEN.IsNull then
      begin
      Tb_CServ01.Next;
      Continue;
      end;
   if not fFaturarPedido_ultimo(0) then
      begin
      exit;
      end;
   Tb_CServ01.Next;
   end;


Tb_CServ01.Close;
//lindomar
if edt_pastatemporaria.Text[length(edt_pastatemporaria.Text)]='\' then
   edt_pastatemporaria.Text:=copy(edt_pastatemporaria.Text,1,length(edt_pastatemporaria.Text)-1);
if cb_emitir_documento.Checked then
   EmiteNFSEBoleto
else
   NaoEmiteNFSEBoleto;


if cb_enviar_email_boleto.Checked=true then
   fEnviarEmail
else
   fNaoEnviarEmail;


//EmiteNFSEBoleto.FreeOnTerminate := true;
{
While EmiteNFSEBoleto.mconcluiu<>true do
begin
end;
}
verteclado(0);
mdathor_fin:=now();

lbl_tempo.Caption:=lbl_tempo.Caption+' Concluido em '+formatdatetime(fdt2, mdathor_ini)+' as '+FormatDateTime(fhr, mdathor_ini)
                  +' duração '+IntToStr(MinutesBetween(mdathor_ini,mdathor_fin))+' minutos ';    ;
verteclado(0);

fValidarEnviou;


fMensagem('Concluido!',0,['0'],0);

end;

procedure TFrm_Cont_Serv.FormCreate(Sender: TObject);
var
mDataEmis: tDateTime;
mDataCompetencia: tDateTime;
begin
PageControl1.ActivePageIndex:=0;

if codusr<>1111 then
   tsAliquotas.TabVisible:=false;
testeform := TFrm_Cont_Serv(FindGlobalComponent('Form_ped'));
cds_aliquotas.CreateDataSet;

Tb_CServ01CS_DATCON.DisplayFormat:=fdt2;
Tb_CServ01DATVEN.DisplayFormat   :=fdt2;
Tb_CServ01CS_DATVAL.DisplayFormat:=fdt2;
Tb_CServ01TOTAL_VALOR_CONT.DisplayFormat:=mcasas;
Tb_CServ01TOTAL_VALOR_CONT_DESC.DisplayFormat:=mcasas;
Tb_CServ01TOTAL_VALOR_LIQUIDO.DisplayFormat:=mcasas;
Tb_CServ01TOTAL_LIC.DisplayFormat:=mcasas;

mem_meses.Open;
mem_meses.Append;
mDataCompetencia:=date;

if valint(formatDateTime('dd',date))>10 then
   begin
   mDataEmis:=incmonth(date);
   end
else
   begin
   mDataCompetencia:=incmonth(date,-1);
   mDataEmis:=date;
   end;

mem_meses.Append;
mem_mesesfat_mes.Value:=valint(formatDateTime('mm',mDataEmis));
mem_mesesfat_ano.Value:=valint(formatDatetime('yyyy',mDataEmis));
mem_mesesfat_mes_comp.Value:=valint(formatDateTime('mm',mDataCompetencia));
mem_mesesfat_ano_comp.Value:=valint(formatDatetime('yyyy',mDataCompetencia));

mem_meses.Post;

if flfilpad(0,'_cont_serv','edt_pastatemporaria') then
   edt_pastatemporaria.text:=DM4.Tb_FilPadFPVALOR.AsString
else
  edt_pastatemporaria.Text:=mcamtmp;
if edt_pastatemporaria.Text[length(edt_pastatemporaria.Text)]<>'\' then
   edt_pastatemporaria.Text:=edt_pastatemporaria.Text+'\';



end;

procedure TFrm_Cont_Serv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Cont_Serv.CODCOBExit(Sender: TObject);
begin

CODCOB.Text:=fdeixanum2(CODCOB.Text);
if Trim(CODCOB.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODCOB.Text) then
      begin
      fmensagem('Banco de Cobranca não cadastrada!',0,['0'],0);
      CODCOB.SetFocus;
      end
   else
      begin
      lbx_codcob.Items.Add(FormatFloat('0000000',StrToFloat(CODCOB.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCOB.text := '';
      CODCOB.SetFocus;
      end;
   end;


end;

procedure TFrm_Cont_Serv.CODCOBKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCOB.Text:=fChamaBco(0,'frm_RCRac',Key);
   CODCOBExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Cont_Serv.lbx_codcobKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcob.ItemIndex>=0 then
      lbx_codcob.Items.Delete(lbx_codcob.ItemIndex);

end;

function TFrm_Cont_Serv.fTotais: Boolean;
begin
mTotBru_Sel:=0;
mTotDes_Sel:=0;
mTotBru_Ger:=0;
mTotDes_Ger:=0;

mQtdSel :=0;
mQtdGer :=0;

Tb_CServ01.First;
While not Tb_CServ01.Eof do
   begin
   mQtdGer:=mQtdGer+1;
   mTotBru_Ger:=mTotBru_ger+Tb_CServ01TOTAL_VALOR_CONT.AsFloat;
   mTotDes_Ger:=mTotDes_ger+Tb_CServ01TOTAL_VALOR_CONT_DESC.AsFloat;

   if Tb_CServ01OK.AsString='P' then
      begin
      mTotBru_Sel:=mTotBru_Sel+Tb_CServ01TOTAL_VALOR_CONT.AsFloat;
      mTotDes_Sel:=mTotDes_Sel+Tb_CServ01TOTAL_VALOR_CONT_DESC.AsFloat;
      mQtdSel:=mQtdSel+1;
      end;
   Tb_CServ01.Next;
   end;
fApresentaTotais;
result:=true;
end;
function TFrm_Cont_Serv.fApresentaTotais: Boolean;
begin
lbl_totsel.Caption:=IntToStr(mQtdSel)+' registro'+iif(mQtdSel>0,'s','')
          +' selecionado'+iif(mQtdSel>0,'s','')
          +' Total bruto: '+FormatFloat(mcasas, mTotBru_sel)
          +' Total Descontos: '+FormatFloat(mcasas, mTotDes_sel)
          +' Total Liquido: '+FormatFloat(mcasas, mTotBru_sel-mTotDes_sel);

lbl_totger.Caption:=IntToStr(mQtdger)+' registro'+iif(mQtdger>0,'s','')
          +' gerecionado'+iif(mQtdger>0,'s','')
          +' Total bruto: '+FormatFloat(mcasas, mTotBru_ger)
          +' Total Descontos: '+FormatFloat(mcasas, mTotDes_ger)
          +' Total Liquido: '+FormatFloat(mcasas, mTotBru_ger-mTotDes_ger);
result:=true;

end;
procedure TFrm_Cont_Serv.Tb_CServ01AfterEdit(DataSet: TDataSet);
begin
    mValor_ant:=Tb_CServ01TOTAL_VALOR_CONT.AsFloat;
    mDesc_Ant :=Tb_CServ01TOTAL_VALOR_CONT_DESC.AsFloat;
    mOk_Ant   :=Tb_CServ01OK.AsString;

end;

procedure TFrm_Cont_Serv.Tb_CServ01AfterPost(DataSet: TDataSet);
begin
if mOk_Ant<>Tb_CServ01OK.AsString then
   begin
   if mOk_Ant='P' then
      begin
      mTotBru_sel:=mTotBru_sel-mValor_ant;
      mTotDes_sel:=mTotDes_sel-mDesc_Ant;
      end
   else
      begin
      mTotBru_sel:=mTotBru_sel+mValor_ant;
      mTotDes_sel:=mTotDes_sel+mDesc_Ant;
      end;
   fApresentaTotais;
   end;

end;

procedure TFrm_Cont_Serv.bbMarcarClick(Sender: TObject);
begin
fLerDados('P');

end;

procedure TFrm_Cont_Serv.BitBtn2Click(Sender: TObject);
begin
fLerDados(' ');

end;

procedure TFrm_Cont_Serv.mem_mesesBeforePost(DataSet: TDataSet);
begin
if (mem_mesesfat_mes.AsInteger<1) or (mem_mesesfat_mes.AsInteger>12) then
   mem_mesesfat_mes.AsInteger:=0;
if mem_mesesfat_ano.AsInteger<valint(FormatDateTime('yyyy',date)) then
   mem_mesesfat_ano.AsInteger:=valint(FormatDateTime('yyyy',date));
   
if mem_mesesfat_mes.AsInteger=0 then
   begin
   mem_meses.Cancel;
   abort;
   end;
end;

procedure TFrm_Cont_Serv.DBGrid2Exit(Sender: TObject);
begin
if mem_meses.State in [dsEdit,dsInsert] then
   mem_meses.Post;
end;

procedure TFrm_Cont_Serv.edt_pastatemporariaExit(Sender: TObject);
begin
fDeletaPadroes(codusr,'_cont_serv','');
fGravaPadroes(codusr,'edt_pastatemporaria'    ,'text'   ,'_cont_serv',edt_pastatemporaria.Text);


end;

procedure TFrm_Cont_Serv.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if (Tb_CServ01DATA_FATURA.AsDateTime>pdatanula) then
   begin
   DBGrid1.Canvas.Brush.Color:=clRed;
   DBGrid1.Canvas.Font.Color :=clWhite;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;


// inicio


procedure tFrm_Cont_Serv.EmiteNFSEBoleto;
var
query_temp: TQuery;
query_nf: TQuery;
query_bol: TQuery;
mmensagem: string;
mArqGerar: string;
query_atu_comp: TQuery;
ParametrosNfce :  tParametrosNfce;



      function fEmitiuDcoumento(pDocumento: string): boolean;
      begin
      query_nf.Close;
      query_nf.SQL.clear;
      query_nf.SQL.add('select '+pDocumento+' from CADTHRED_DOCSPEND '
                      +' where DP_CHAVE_PED=:CHAVE_PED '
                      +' AND DP_CHAVE_PED_ANO=:CHAVE_PED_ANO '
                      +' and DP_CODEMP=:CODEMP '
                      +' and DP_COMPUTADOR=:COMPUTADOR '
                      +' and NVL(length('+pDocumento+'),0)>1');
      query_nf.ParamByName('CHAVE_PED').AsInteger       := query_temp.fieldbyname('DP_CHAVE_PED').AsInteger;
      query_nf.ParamByName('CHAVE_PED_ANO').AsInteger   := query_temp.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
      query_nf.ParamByName('CODEMP').AsInteger          := query_temp.fieldbyname('DP_CODEMP').AsInteger;
      query_nf.ParamByName('COMPUTADOR').AsString       := query_temp.fieldbyname('DP_COMPUTADOR').AsString;

      try
         query_nf.open;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nf,58,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
         result:=false;
         exit;
         end;
         end;
      if query_nf.IsEmpty then
         result:=false
      else
         result:=true

      end;

      function fConfirmarEmissaoDcoumento(pDocumento,pDestino: string): boolean;
      begin
      query_nf.Close;
      query_nf.SQL.clear;
      query_nf.SQL.add('Update CADTHRED_DOCSPEND set '
                      +' '+pDocumento+'=:DESTINO '
                      +' where DP_CHAVE_PED=:CHAVE_PED '
                      +' AND DP_CHAVE_PED_ANO=:CHAVE_PED_ANO '
                      +' and DP_CODEMP=:CODEMP '
                      +' and DP_COMPUTADOR=:COMPUTADOR '
                      +' and NVL(length('+pDocumento+'),0)<1');
      query_nf.ParamByName('DESTINO').AsString          := pDestino;

      query_nf.ParamByName('CHAVE_PED').AsInteger       := query_temp.fieldbyname('DP_CHAVE_PED').AsInteger;
      query_nf.ParamByName('CHAVE_PED_ANO').AsInteger   := query_temp.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
      query_nf.ParamByName('CODEMP').AsInteger          := query_temp.fieldbyname('DP_CODEMP').AsInteger;
      query_nf.ParamByName('COMPUTADOR').AsString       := query_temp.fieldbyname('DP_COMPUTADOR').AsString;

      try
         query_nf.ExecSQL;
         fdm1StartCommit;
         result:=true;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nf,96,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
         result:=false;
         exit;
         end;
         end;
      if query_nf.IsEmpty then
         result:=false
      else
         result:=true

      end;



      function fErroEmissaoDcoumento(pDocumento,pDestino: string): boolean;
      begin
      query_nf.Close;
      query_nf.SQL.clear;
      query_nf.SQL.add('Update CADTHRED_DOCSPEND set '
                      +' '+pDocumento+'=:DESTINO '
                      +' where DP_CHAVE_PED=:CHAVE_PED '
                      +' AND DP_CHAVE_PED_ANO=:CHAVE_PED_ANO '
                      +' and DP_CODEMP=:CODEMP '
                      +' and DP_COMPUTADOR=:COMPUTADOR ');
      query_nf.ParamByName('DESTINO').AsString          := copy(pDestino,1,254);

      query_nf.ParamByName('CHAVE_PED').AsInteger       := query_temp.fieldbyname('DP_CHAVE_PED').AsInteger;
      query_nf.ParamByName('CHAVE_PED_ANO').AsInteger   := query_temp.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
      query_nf.ParamByName('CODEMP').AsInteger          := query_temp.fieldbyname('DP_CODEMP').AsInteger;
      query_nf.ParamByName('COMPUTADOR').AsString       := query_temp.fieldbyname('DP_COMPUTADOR').AsString;

//         ex_erroSql_Novo(query_nf,96,'_con_serv' ,'CADTHRED_DOCSPEND');

      try
         query_nf.ExecSQL;
         fdm1StartCommit;
         result:=true;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nf,96,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
         result:=false;
         exit;
         end;
         end;

      end;



begin
  { Place thread code here }
query_nf:=TQuery.create(nil);
query_nf.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_bol:=TQuery.create(nil);
query_bol.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_temp:=TQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.sql.Clear;
query_temp.sql.Add('select * from CADTHRED_DOCSPEND '
                  +' where DP_COMPUTADOR=:DP_COMPUTADOR '
                  +' and (DP_DATHOR_ENVIOU_EMAIL is null or DP_DATHOR_ENVIOU_EMAIL<:DP_DATHOR_ENVIOU_EMAIL) '
                  +' order by DP_DATHOR_INCLUSAO ');
query_temp.parambyname('DP_COMPUTADOR').AsString:=NomeComputador;
query_temp.parambyname('DP_DATHOR_ENVIOU_EMAIL').Asdatetime:=strtodate('01/01/2000');
try
   query_temp.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,52,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
   exit;
   end;
   end;
query_atu_comp:=TQuery.create(nil);
query_atu_comp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_temp.first;
While not query_temp.eof do
   begin
   if not fEmitiuDcoumento('DP_ANEXO_NF') then
      begin
      mArqGerar:=query_temp.fieldbyname('DP_PASTA_DEST').AsString+'NF_CHDPED_'
                              +query_temp.fieldbyname('DP_CHAVE_PED').AsString+'_'+query_temp.fieldbyname('DP_CODEMP').asstring+'.pdf';

      ParametrosNfce.pChave     :=  query_temp.fieldbyname('DP_CHAVE_PED').asinteger;
      ParametrosNfce.pChave_ano := query_temp.fieldbyname('DP_CHAVE_PED_ANO').asinteger;
      ParametrosNfce.pCodemp    := query_temp.fieldbyname('DP_CODEMP').asinteger;


      if fEmitirNotadeServico(ParametrosNfce).pOk then
         begin
         fConfirmarEmissaoDcoumento('DP_ANEXO_NF',mArqGerar);

         // atualizar data da competencia
         query_atu_comp.Close;
         query_atu_comp.sql.Clear;
         query_atu_comp.sql.Add('Update caddar set CRCOMPETENCIA_DTINICIO=:CRCOMPETENCIA_DTINICIO '
                               +' where CRNPED=:CRNPED '
                               +' AND CRLOTSEQ_CP=:CRLOTSEQ_CP '
                               +' AND CRCODEMP=:CRCODEMP ');
         query_atu_comp.ParamByName('CRNPED').AsInteger:=query_temp.fieldbyname('DP_CHAVE_PED').AsInteger;
         query_atu_comp.ParamByName('CRLOTSEQ_CP').AsInteger:=query_temp.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
         query_atu_comp.ParamByName('CRCODEMP').AsInteger:=query_temp.fieldbyname('DP_CODEMP').AsInteger;
         query_atu_comp.ParamByName('CRCOMPETENCIA_DTINICIO').AsDateTime:=Strtodatetime('01/'+formatfloat('00', mem_mesesfat_mes_comp.AsInteger)+
                                                                          '/'+formatfloat('0000', mem_mesesfat_ano_comp.AsInteger));

         try
            query_atu_comp.ExecSQL;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_atu_comp,431,'_con_serv'+e.Message ,'CADDAR');
            end;
            end;

         // termino



         end
      else
         fErroEmissaoDcoumento('DP_RESULTADO_NF',mmensagem);

      end;
   if (not fEmitiuDcoumento('DP_ANEXO_BOL'))  and (fEmitiuDcoumento('DP_ANEXO_NF')) then
      begin

      mArqGerar:=query_temp.fieldbyname('DP_PASTA_DEST').AsString+'BOL_CHDPED_'
                              +query_temp.fieldbyname('DP_CHAVE_PED').AsString+'_'+query_temp.fieldbyname('DP_CODEMP').asstring+'.pdf';


      ParametrosNfce.pChave     :=  query_temp.fieldbyname('DP_CHAVE_PED').asinteger;
      ParametrosNfce.pChave_ano := query_temp.fieldbyname('DP_CHAVE_PED_ANO').asinteger;
      ParametrosNfce.pCodemp    := query_temp.fieldbyname('DP_CODEMP').asinteger;


      if fEmitirBoletoBancario(ParametrosNfce).pOk then
         begin
         fConfirmarEmissaoDcoumento('DP_ANEXO_BOL',mArqGerar);
         end
      else
         fErroEmissaoDcoumento('DP_RESULTADO_BOL',mmensagem);

      end;


//   showmessage(query_temp.FieldByName('dp_chave_ped').AsString);
   query_temp.next;
   end;
//mconcluiu:=true;

query_temp.Close;
freeandnil(query_temp);

query_atu_comp.close;
freeandnil(query_atu_comp);

query_nf.close;
freeandnil(query_nf);

query_bol.close;
freeandnil(query_bol);


end;
// inicio nao emitir documento



procedure tFrm_Cont_Serv.NaoEmiteNFSEBoleto;
var
query_temp: TQuery;
query_nf: TQuery;
query_bol: TQuery;
mmensagem: string;
query_atu_comp: TQuery;




      function fErroEmissaoDcoumento(pDocumento,pDestino: string): boolean;
      begin
      query_nf.Close;
      query_nf.SQL.clear;
      query_nf.SQL.add('Update CADTHRED_DOCSPEND set '
                      +' '+pDocumento+'=:DESTINO '
                      +' where DP_CHAVE_PED=:CHAVE_PED '
                      +' AND DP_CHAVE_PED_ANO=:CHAVE_PED_ANO '
                      +' and DP_CODEMP=:CODEMP '
                      +' and DP_COMPUTADOR=:COMPUTADOR ');
      query_nf.ParamByName('DESTINO').AsString          := copy(pDestino,1,254);

      query_nf.ParamByName('CHAVE_PED').AsInteger       := query_temp.fieldbyname('DP_CHAVE_PED').AsInteger;
      query_nf.ParamByName('CHAVE_PED_ANO').AsInteger   := query_temp.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
      query_nf.ParamByName('CODEMP').AsInteger          := query_temp.fieldbyname('DP_CODEMP').AsInteger;
      query_nf.ParamByName('COMPUTADOR').AsString       := query_temp.fieldbyname('DP_COMPUTADOR').AsString;

//         ex_erroSql_Novo(query_nf,96,'_con_serv' ,'CADTHRED_DOCSPEND');

      try
         query_nf.ExecSQL;
         fdm1StartCommit;
         result:=true;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nf,96,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
         result:=false;
         exit;
         end;
         end;

      end;



begin
  { Place thread code here }
query_nf:=TQuery.create(nil);
query_nf.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_bol:=TQuery.create(nil);
query_bol.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_temp:=TQuery.create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.sql.Clear;
query_temp.sql.Add('select * from CADTHRED_DOCSPEND '
                  +' where DP_COMPUTADOR=:DP_COMPUTADOR '
                  +' and (DP_DATHOR_ENVIOU_EMAIL is null or DP_DATHOR_ENVIOU_EMAIL<:DP_DATHOR_ENVIOU_EMAIL) '
                  +' order by DP_DATHOR_INCLUSAO ');
query_temp.parambyname('DP_COMPUTADOR').AsString:=NomeComputador;
query_temp.parambyname('DP_DATHOR_ENVIOU_EMAIL').Asdatetime:=strtodate('01/01/2000');
try
   query_temp.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,52,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
   exit;
   end;
   end;
query_atu_comp:=TQuery.create(nil);
query_atu_comp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_temp.first;
While not query_temp.eof do
   begin
   fErroEmissaoDcoumento('DP_RESULTADO_NF','NAO_EMITIU NF POR SOLICITACAO DO USUARIO');
   fErroEmissaoDcoumento('DP_RESULTADO_BOL','NAO_EMITIU BOLETO POR SOLICITACAO DO USUARIO');

   query_temp.next;
   end;
//mconcluiu:=true;

query_temp.Close;
freeandnil(query_temp);

query_atu_comp.close;
freeandnil(query_atu_comp);

query_nf.close;
freeandnil(query_nf);

query_bol.close;
freeandnil(query_bol);


end;

// termino nao emitir documento

// termino

function TFrm_Cont_Serv.fEnviarEmail: Boolean;
var
mform_EnviarEmail: TFrm_EnviarEmail;
query_cadtred: TQuery;
mResposta: string;
x_email: integer;
query_nf: TQuery;

      function fErroEmissaoDcoumento(pResultado: string): boolean;
      begin
      query_nf.Close;
      query_nf.SQL.clear;
      query_nf.SQL.add('Update CADTHRED_DOCSPEND set '
                      +' DP_RESULTADO_EMAIL=:DP_RESULTADO_EMAIL '
                      +',DP_DATHOR_ENVIOU_EMAIL=SYSDATE '
                      +' where DP_CHAVE_PED=:CHAVE_PED '
                      +' AND DP_CHAVE_PED_ANO=:CHAVE_PED_ANO '
                      +' and DP_CODEMP=:CODEMP '
                      +' and DP_COMPUTADOR=:COMPUTADOR ');
      query_nf.ParamByName('DP_RESULTADO_EMAIL').AsString          := copy(pResultado,1,254);

      query_nf.ParamByName('CHAVE_PED').AsInteger       := query_cadtred.fieldbyname('DP_CHAVE_PED').AsInteger;
      query_nf.ParamByName('CHAVE_PED_ANO').AsInteger   := query_cadtred.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
      query_nf.ParamByName('CODEMP').AsInteger          := query_cadtred.fieldbyname('DP_CODEMP').AsInteger;
      query_nf.ParamByName('COMPUTADOR').AsString       := query_cadtred.fieldbyname('DP_COMPUTADOR').AsString;


      try
         query_nf.ExecSQL;
         fdm1StartCommit;
         result:=true;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nf,96,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
         result:=false;
         exit;
         end;
         end;

      end;


begin
Application.createform(TFrm_EnviarEmail, mform_EnviarEmail);


query_nf:=TQuery.create(nil);
query_nf.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_cadtred:=TQuery.create(nil);
query_cadtred.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_cadtred.sql.Add('Select * from  CADTHRED_DOCSPEND  '


                     +' where DP_DATHOR_ENVIOU_EMAIL is null or DP_DATHOR_ENVIOU_EMAIL<=:DATOR_ENVIOU_EMAIL'
                      +' and ( NVL(length('+quotedstr('DP_ANEXO_NF')+'),0)>1'
                      +' or   NVL(length('+quotedstr('DP_ANEXO_NF')+'),0)>1 )'
                     );
query_cadtred.ParamByName('DATOR_ENVIOU_EMAIL').AsDateTime:=pdatanula;

try
   query_cadtred.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_cadtred,1220,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
   result:=false;
   end;
   end;

mem_meses.first;

While not query_cadtred.eof do
   begin
    mform_EnviarEmail.EdtAssunto.clear;
   if (trim(query_cadtred.fieldbyname('DP_ANEXO_NF').asstring)<>'') and
      (trim(query_cadtred.fieldbyname('DP_ANEXO_BOL').asstring)<>'') then
      begin
      if query_cadtred.fieldbyname('DP_CODEMP').asinteger<100 then
         mform_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL E BOLETO MES '
      else
         mform_EnviarEmail.EdtAssunto.Text:='BOLETO MES ';
      end
   else if (trim(query_cadtred.fieldbyname('DP_ANEXO_NF').asstring)<>'') then
      mform_EnviarEmail.EdtAssunto.Text:='NOTA FISCAL MES '
   else if (trim(query_cadtred.fieldbyname('DP_ANEXO_BOL').asstring)<>'') then
      mform_EnviarEmail.EdtAssunto.Text:='BOLETO MES ';
   mform_EnviarEmail.EdtAssunto.Text:=mform_EnviarEmail.EdtAssunto.Text+' '
        +NMes(strtodate('01/'+formatfloat('00', mem_mesesfat_mes.asinteger)+'/'+mem_mesesfat_ano.AsString))
                                           +'/'+mem_mesesfat_ano.asstring;

   mform_EnviarEmail.lv_Para.Items.Clear;


   mform_EnviarEmail.fAdicionarItem('C'+Tb_CServ01CS_CODCLI.AsString,Tb_CServ01CRAZAO.AsString,
         query_cadtred.fieldbyname('DP_DEST_EMAIL').asstring
         ,Tb_CServ01CWHATSAPP.AsString);



// inicio

   mform_EnviarEmail.lbxAnexos.Items.Clear;
   if query_cadtred.fieldbyname('DP_CODEMP').asinteger<100 then
      begin
      if trim(query_cadtred.fieldbyname('DP_ANEXO_NF').asstring)<>'' then
         mform_EnviarEmail.lbxAnexos.Items.Add(query_cadtred.fieldbyname('DP_ANEXO_NF').asstring);
      end;
   if trim(query_cadtred.fieldbyname('DP_ANEXO_BOL').asstring)<>'' then
      begin
      mform_EnviarEmail.lbxAnexos.Items.Add(query_cadtred.fieldbyname('DP_ANEXO_BOL').asstring);
      end;

   for x_email:=0 to mform_EnviarEmail.lbxAnexos.Items.count-1 do
      begin
      if not fileexists(mform_EnviarEmail.lbxAnexos.Items[x_email]) then
         begin
         if not fLerGenerico_query('CADP01,CADCLI','P1CHAVE,CRAZAO,CCODCLI',' CCODCLI=P1CODCLI AND P1CHAVE='+query_cadtred.Fieldbyname('DP_CHAVE_PED').AsString
                                +' and P1LOTSEQ='+query_cadtred.Fieldbyname('DP_CHAVE_PED_ANO').AsString
                                +' and P1CODEMP='+query_cadtred.Fieldbyname('DP_CODEMP').AsString
                                ,query_consulta) then
            mcinst:='Chave do Pedido: '+query_cadtred.Fieldbyname('DP_CHAVE_PED').AsString
                   +' Razao social '+query_consulta.fieldbyname('CRAZAO').asstring;

         messagedlg('Arquivo nao encontrado: '+mform_EnviarEmail.lbxAnexos.Items[x_email]+#13
                   +'anexo NF: '+ query_cadtred.fieldbyname('DP_ANEXO_NF').asstring+#13
                   +'Anexo bol '+query_cadtred.fieldbyname('DP_ANEXO_BOL').asstring+#13
                   +mcinst
                   ,mtWarning,[mbok],0);
         end;
      end;

   mform_EnviarEmail.fEnviarDireto(mresposta);
   fErroEmissaoDcoumento(mResposta);
   query_cadtred.Next;
   end;




query_nf.close;
freeandnil(query_nf);

query_cadtred.close;
freeandnil(query_cadtred);
freeandnil(mform_EnviarEmail);



end;


// INICIO NAO EMAIL



function TFrm_Cont_Serv.fNaoEnviarEmail: Boolean;
var
query_cadtred: TQuery;
mResposta: string;
x_email: integer;
query_nf: TQuery;

      function fErroEmissaoDcoumento(pResultado: string): boolean;
      begin
      query_nf.Close;
      query_nf.SQL.clear;
      query_nf.SQL.add('Update CADTHRED_DOCSPEND set '
                      +' DP_RESULTADO_EMAIL=:DP_RESULTADO_EMAIL '
                      +',DP_DATHOR_ENVIOU_EMAIL=SYSDATE '
                      +' where DP_CHAVE_PED=:CHAVE_PED '
                      +' AND DP_CHAVE_PED_ANO=:CHAVE_PED_ANO '
                      +' and DP_CODEMP=:CODEMP '
                      +' and DP_COMPUTADOR=:COMPUTADOR ');
      query_nf.ParamByName('DP_RESULTADO_EMAIL').AsString          := copy(pResultado,1,254);

      query_nf.ParamByName('CHAVE_PED').AsInteger       := query_cadtred.fieldbyname('DP_CHAVE_PED').AsInteger;
      query_nf.ParamByName('CHAVE_PED_ANO').AsInteger   := query_cadtred.fieldbyname('DP_CHAVE_PED_ANO').AsInteger;
      query_nf.ParamByName('CODEMP').AsInteger          := query_cadtred.fieldbyname('DP_CODEMP').AsInteger;
      query_nf.ParamByName('COMPUTADOR').AsString       := query_cadtred.fieldbyname('DP_COMPUTADOR').AsString;


      try
         query_nf.ExecSQL;
         fdm1StartCommit;
         result:=true;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_nf,96,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
         result:=false;
         exit;
         end;
         end;

      end;


begin


query_nf:=TQuery.create(nil);
query_nf.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_cadtred:=TQuery.create(nil);
query_cadtred.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_cadtred.sql.Add('Select * from  CADTHRED_DOCSPEND  '


                     +' where DP_DATHOR_ENVIOU_EMAIL is null or DP_DATHOR_ENVIOU_EMAIL<=:DATOR_ENVIOU_EMAIL'
                      +' and ( NVL(length('+quotedstr('DP_ANEXO_NF')+'),0)>1'
                      +' or   NVL(length('+quotedstr('DP_ANEXO_NF')+'),0)>1 )'
                     );
query_cadtred.ParamByName('DATOR_ENVIOU_EMAIL').AsDateTime:=pdatanula;

try
   query_cadtred.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_cadtred,1220,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
   result:=false;
   end;
   end;

mem_meses.first;

While not query_cadtred.eof do
   begin
   fErroEmissaoDcoumento('NAO ENVIADO E-MAIL POR SOLICITACAO DO USUARIO');
   query_cadtred.Next;
   end;




query_nf.close;
freeandnil(query_nf);
query_cadtred.close;
freeandnil(query_cadtred);



end;

// TERMINO NAO EMAIL


// inicio


function TFrm_Cont_Serv.fValidarEnviou: Boolean;
var
form_ocorrencias: TFrm_Ocorrencias;
query_docs: TQuery;
begin
query_docs:=TQuery.create(nil);
query_docs.databasename:=DM1.SG_ASSOC.DatabaseName;
query_docs.sql.clear;
query_docs.sql.add('select * from CADTHRED_DOCSPEND '
                  +'where ( nvl(length(DP_RESULTADO_NF),0)>1  '
                  +'or  nvl(length(DP_RESULTADO_BOL),0)>1 '
                  +'or  nvl(length(DP_RESULTADO_EMAIL),0)>1 '
                  +') ');

try
   query_docs.ExecSQL;
   fdm1StartCommit;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_docs,1415,'_con_serv'+e.Message ,'CADTHRED_DOCSPEND');
   result:=false;
   exit;
   end;
   end;

Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
Form_Ocorrencias.mErros:=false;
form_ocorrencias.ListView1.Clear;

While not query_docs.Eof do
   begin
   if trim(query_docs.fieldbyname('DP_RESULTADO_NF').AsString)='' then
      begin
      Form_Ocorrencias.adicionaItemListView('Chave: '+query_docs.fieldbyname('DP_CHAVE_PED').AsString+'/'
              +query_docs.fieldbyname('DP_CHAVE_PED_ano').AsString+' Erro ao emitir NF '+
               query_docs.fieldbyname('DP_RESULTADO_NF').AsString);
      Form_Ocorrencias.mErros:=true;
      end;

   if trim(query_docs.fieldbyname('DP_RESULTADO_BOL').AsString)='' then
      begin
      Form_Ocorrencias.adicionaItemListView('Chave: '+query_docs.fieldbyname('DP_CHAVE_PED').AsString+'/'
              +query_docs.fieldbyname('DP_CHAVE_PED_ano').AsString+' Erro ao emitir Boleto '+
               query_docs.fieldbyname('DP_RESULTADO_BOL').AsString);
      Form_Ocorrencias.mErros:=true;
      end;

   if trim(query_docs.fieldbyname('DP_RESULTADO_EMAIL').AsString)='' then
      begin
      Form_Ocorrencias.adicionaItemListView('Chave: '+query_docs.fieldbyname('DP_CHAVE_PED').AsString+'/'
              +query_docs.fieldbyname('DP_CHAVE_PED_ano').AsString+' Erro ao enviar E-Mail'+
               query_docs.fieldbyname('DP_RESULTADO_EMAIL').AsString);
      Form_Ocorrencias.mErros:=true;
      end;
   query_docs.Next;
   end;

query_docs.close;
freeandnil(query_docs);
if Form_Ocorrencias.mErros then
   begin
   Form_Ocorrencias.ShowModal;
   FreeAndNil(form_ocorrencias);
   result:=false
   end
else
   result:=true;



end;





procedure TFrm_Cont_Serv.bbExportarExcelClick(Sender: TObject);
begin

bbExportarExcel.Enabled:=false;
fGerarPlanilhaExcel([],Src_CServ01);
bbExportarExcel.Enabled:=true;

end;

end.

