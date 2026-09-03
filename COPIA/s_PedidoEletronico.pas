unit s_PedidoEletronico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, ToolEdit, Grids, DBGrids, DBClient,
  S_Vendas_GravarPedido,Shellapi, Buttons, DBCtrls, ExtCtrls,Printers, Spin;

type
  TFrm_PedidoEletronico = class(TForm)
    DBGrid_Itens: TDBGrid;
    DBGrid_cab: TDBGrid;
    src_cab: TDataSource;
    Src_Itens: TDataSource;
    Qry_Itens: TQuery;
    Qry_ItensP2CHAVE: TFloatField;
    Qry_ItensP2CODPRO: TFloatField;
    Qry_ItensP2ITEM: TFloatField;
    Qry_ItensP2PDESC01: TFloatField;
    Qry_ItensP2PDESC02: TFloatField;
    Qry_ItensP2PDESC03: TFloatField;
    cds_cab: TClientDataSet;
    cds_cabCHAVE: TIntegerField;
    cds_cabCODCLI: TIntegerField;
    cds_cabNOMCLI: TStringField;
    cds_cabCODBCO: TIntegerField;
    cds_cabCODVEN: TIntegerField;
    cds_cabDATA: TDateField;
    cds_cabTOTBRU: TFloatField;
    cds_cabTOTDES: TFloatField;
    cds_cabTOTLIQ: TFloatField;
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
    cds_cabOBS: TMemoField;
    tb_ped02_preP2COMPRA_XPED: TStringField;
    tb_ped02_preP2COMPRA_NITEMPED: TIntegerField;
    cds_aliquotasal_combate_pobreza: TFloatField;
    cds_aliquotasal_icmscred_destino: TFloatField;
    cds_aliquotasal_icms_destino: TFloatField;
    Panel1: TPanel;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    btnAbrir: TBitBtn;
    btnMarcaTodas: TBitBtn;
    bbDesmarcar: TBitBtn;
    bbFaturar: TBitBtn;
    btnExcluir: TBitBtn;
    bbSair: TBitBtn;
    bbVisualizar: TBitBtn;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    cds_cabMOTIVO_EXCLUSAO: TStringField;
    cbFaturarPcoExtra: TCheckBox;
    Timer_fatauto: TTimer;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    cb_fatautomaticamente: TCheckBox;
    CB_LSEPONLINE: TCheckBox;
    cb_ordem_impressao: TComboBox;
    Label10: TLabel;
    cb_agrupamento: TComboBox;
    Label3: TLabel;
    cb_modelo: TComboBox;
    Label12: TLabel;
    edt_qtdvias: TSpinEdit;
    Label8: TLabel;
    cb_impressora: TComboBox;
    tb_ped02_preP2CPUFDEST: TFloatField;
    tb_ped02_preP2ICMSUFDEST: TFloatField;
    tb_ped02_preP2ICMSINTER: TFloatField;
    tb_ped02_preP2ICMSINTERPART: TFloatField;
    tb_ped02_preP2CEST: TStringField;
    tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField;
    tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField;
    tb_ped02_preP2PERCDESC_AUT: TFloatField;
    Qry_ItensP2CHAVE_ANO: TFloatField;
    Qry_ItensP2DESCVALOR: TFloatField;
    Qry_ItensP2QTDPED: TFloatField;
    Qry_ItensP2RESIDUO: TFloatField;
    Qry_ItensP2RESIDUO_USADO: TFloatField;
    Qry_ItensPDNOME: TStringField;
    Qry_ItensPDUND: TStringField;
    Qry_ItensPDMARCA: TStringField;
    cds_cabCHAVE_ANO: TFloatField;
    Qry_ItensP2PRECOVDA: TFloatField;
    cds_cabOK: TStringField;
    procedure DBGrid_cabDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbFaturarPcoExtraClick(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnMarcaTodasClick(Sender: TObject);
    procedure bbDesmarcarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure bbFaturarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure src_cabDataChange(Sender: TObject; Field: TField);
    procedure bbVisualizarClick(Sender: TObject);
    procedure cb_fatautomaticamenteClick(Sender: TObject);
    procedure CB_LSEPONLINEClick(Sender: TObject);
    procedure Timer_fatautoTimer(Sender: TObject);
    procedure cb_ordem_impressaoClick(Sender: TObject);
    procedure cb_agrupamentoClick(Sender: TObject);
    procedure cb_modeloClick(Sender: TObject);
    procedure edt_qtdviasClick(Sender: TObject);
  private
    { Private declarations }
    mPed_UF_Cli            : String;
    mPed_Cli_ConsFin       : Boolean;
    mPed_Cli_ST            : Boolean;
    mPed_Cli_icmsnr        : Boolean;
    mPed_Cli_MotDes        : Integer;
    mPed_Cli_REDICMSNOR    : Boolean;
    mPed_CliCalcIPI        : Boolean;
    mAnt_Chave: Integer;

    procedure fGravarRequisicoes(pTipoEvento,pImpressora_padrao: string;pOrdemImpressao,pAgrupamento,pModelo,pQtdVias:integer);



   function fFaturarPedido_ultimo(pTipo: Integer):Boolean;



   procedure pVisualizar(p1chave: integer);


  public
    { Public declarations }
  end;

var
  Frm_PedidoEletronico: TFrm_PedidoEletronico;
  mVenda_GP: TFrm_Vendas_GravarPedido;
  Atualizando: Boolean;


implementation

uses S_DM1, lerarq, S_Ped_ObsCli, S_Aviso, S_DM4,
  Func, S_DM6, S_DM2, ConvUtils, func_excecoes, Func2;

{$R *.dfm}



procedure TFrm_PedidoEletronico.DBGrid_cabDblClick(Sender: TObject);
begin
cds_cab.Edit;
if cds_cabOK.AsString='X' then
  cds_caboK.AsString:=' '
else
  cds_cabok.AsString:='X';
cds_cab.Post;
end;

procedure TFrm_PedidoEletronico.FormCreate(Sender: TObject);
var
i: Integer;
begin


cb_impressora.Items.clear;
for I := 0 to Printer.Printers.Count - 1 do

  begin
     cb_impressora.Items.add(Printer.Printers.Strings[I]);
  end;
if cb_impressora.Items.Count>0 then
   cb_impressora.ItemIndex:=0;


cds_cab.CreateDataSet;
cds_aliquotas.CreateDataSet;
tb_ped02_pre.CreateDataSet;
Application.CreateForm(TFrm_Vendas_GravarPedido, mVenda_GP);
if flfilpad(0,'_FATPEDONLINE','') then
  if DM4.Tb_FilPad2.Locate('FPCOMP','CBFATURARPCOEXTRA',[]) then
    cbFaturarPcoExtra.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
if codusr <> 1111 then
  cbFaturarPcoExtra.Visible := false;


if flfilpad(-1,'_FATPEDONLINE','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CBFATAUTOMATICAMENTE',[]) then
     cb_fatautomaticamente.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CBLSEPONLINE',[]) then
     CB_LSEPONLINE.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_AGRUPAMENTO',[]) then
     cb_agrupamento.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ORDEM_IMPRESSAO',[]) then
     cb_ordem_impressao.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MODELO',[]) then
     cb_modelo.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

   if DM4.Tb_FilPad2.Locate('FPCOMP','_QTDVIAS',[]) then
     edt_qtdvias.Value  :=valint(DM4.Tb_FilPad2FPVALOR.Value);


   end;
timer_fatauto.Enabled:=cb_fatautomaticamente.Checked;

btnMarcaTodasClick(self);

end;

procedure TFrm_PedidoEletronico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FreeAndNil(mVenda_GP);
if (FormState<>[fsModal]) then
   Action := caFree

end;

procedure TFrm_PedidoEletronico.FormShow(Sender: TObject);
begin
btnAbrirClick(Self);
end;

procedure TFrm_PedidoEletronico.cbFaturarPcoExtraClick(Sender: TObject);
begin
fDeletaPadroes(0,'_FATPEDONLINE','');
fGravaPadroes(0,'CBFATURARPCOEXTRA','checked','_FATPEDONLINE',iif(cbFaturarPcoExtra.Checked,'true','false'));
end;




function tFrm_PedidoEletronico.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
mQtdPed: Real;
mDesconto: Real;

Query_Cons:TQuery;
query_exe: TQuery;

mItemPed: Integer;
mPed_UF_Cli            : String;
mPed_Cli_RazSoc        : String;
mPed_Cli_ConsFin       : Boolean;
mPed_Cli_ST            : Boolean;
mPed_Cli_icmsnr        : Boolean;
mPed_Cli_MotDes        : Integer;
mPed_Cli_REDICMSNOR    : Boolean;
mPed_CliCalcIPI        : Boolean;
mSeq_Item: Integer;
begin

query_exe:=TQuery.Create(self);
query_exe.DatabaseName:='SG_ASSOC';


Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';
result:=true;
cds_cab.First;
While not cds_cab.Eof do
   begin
   if cds_cabOK.AsString<>'X' then
      begin
      cds_cab.Next;
      continue;
      end;
    mVenda_GP.mPed1_razsoc:=cds_cabNOMCLI.AsString;
    mPed_Cli_RazSoc:=cds_cabNOMCLI.AsString;
    cds_aliquotas.EmptyDataSet;
    fParametrosAliquotas(cds_cabCODCLI.AsFloat
    ,0 // tipo do pedido
    ,mPed_UF_Cli
    ,mPed_Cli_RazSoc
    ,mVenda_GP.mPd_EstNor
    ,mVenda_GP.mPd_EstCons
    ,mVenda_GP.mPd_EstTerc
    ,mVenda_GP.mPd_EstVenda
    ,mPed_Cli_MotDes
    ,mPed_Cli_ConsFin
    ,mPed_CliCalcIPI
    ,mPed_Cli_ST
    ,mPed_Cli_REDICMSNOR
    ,mPed_Cli_icmsnr
    ,cds_aliquotas);


    mVenda_GP.mPed1_Codemp:=1;
    mvenda_gp.mped1_Chave:=0;
    mVenda_GP.mPed1_CodCli:=cds_cabCODCLI.AsFloat;
    mVenda_GP.mPed1_Datap :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
    mVenda_GP.mPed1_Tipo_Ped:=0;
    mVenda_GP.mPed1_CodFP:=0;
    mVenda_GP.mPed1_NomFP:='';
    mVenda_GP.mPed1_BaixaFP:='N';
    mVenda_GP.mPed1_CodPV:=1;
    mVenda_GP.mPed1_PvaCtd:=0;
    mVenda_GP.mPed1_TabPV:='AV';
    mVenda_GP.mPed1_TpComis:=0;
    mVenda_GP.mPed1_Codven:=cds_cabCODVEN.AsInteger;
    mVenda_GP.mped1_submod_grav:=0;
    mVenda_GP.mPed1_cfop1:=5101;
    mVenda_GP.mPed1_cfop2:=5101;
    flcadcli(1,0,cds_cabCODCLI.AsString);
    mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger - 1;
    mVenda_GP.mPed1_CodTra:=0;
    mVenda_GP.mPed1_AjustaFP:='S';
    mVenda_GP.mPed1_Obs_Ped := cds_cabOBS.AsString;  //LDC


    if not flcadpv(1,0,'AV','01') then
      flcadpv(1,0,'AP','01');
    if DM1.Tb_PV.IsEmpty then
      flcadpv(0,1,'','');
    mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
    mVenda_GP.mPed1_PvaCtd:=DM1.Tb_PVPVACTD.AsFloat;
    mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
    mVenda_GP.mPed1_TpComis:=DM1.Tb_PVPVTPC.AsInteger;
    mVenda_GP.mped1_tppco:=2; // preco extra;

    mVenda_GP.mPed1_Tabela:='1';
    flcadpv2('1',DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);
    DM1.Tb_PV2.First;
    mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
    mVenda_GP.mPed1_PrzNovos_001:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
    mVenda_GP.mPed1_PrzNovos_101:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
    DM1.Tb_PV2.Next;
    while not DM1.Tb_PV2.Eof do
      begin
      mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
      mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
      mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
      DM1.Tb_PV2.Next;
      end;
    mVenda_GP.mPed1_QtdParc_ant:=-1;
    mVenda_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
    if mVenda_GP.mped1_QtdParc<=0 then
       mVenda_GP.mped1_QtdParc:=1;


    mVenda_GP.mPed1_razsoc := cds_cabNOMCLI.AsString;

    mVenda_GP.mPed1_AjustaFP      :='S';
    mVenda_GP.mPed1_pvdescf     :=DM1.Tb_PVPVDESCF.AsFloat;
    mVenda_GP.mPed1_pvddescf    :=DM1.Tb_PVPVDESCF.AsInteger;
    mVenda_GP.mPed1_pvdiasdescf :=DM1.Tb_PVPVDIASDESCF.AsInteger;

    mVenda_GP.mped1_npedori :=cds_cabCHAVE.AsInteger;

    mVenda_GP.fGravarPed01(0,0);





    mItemPed:=0;
    if not tb_ped02_pre.Active then
       tb_ped02_pre.Open;
    Tb_Ped02_pre.EmptyDataSet;

    Qry_itens.First;
    While not Qry_Itens.Eof do
      begin
      if flcadpro(1,0,0,Qry_ItensP2CODPRO.AsString) then
         begin
         mItemPed:=mItemPed+1;
         tb_ped02_pre.Append;
         tb_ped02_preP2CODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
         tb_ped02_preP2LOTSEQ.AsInteger :=mVenda_GP.mPed1_Chave_ano;
         tb_ped02_preP2CHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;
         tb_ped02_preP2ORDEM.AsInteger  :=01;
         tb_ped02_preP2ITEM.AsInteger   :=mItemPed;
         tb_ped02_preP2CODPRO.AsFloat   :=Qry_ItensP2CODPRO.AsFloat;
         tb_ped02_preP2QTD.AsFloat      :=Qry_ItensP2QTDPED.AsFloat;

         if cbFaturarPcoExtra.Checked=true then
            tb_ped02_preP2PRECO.AsFloat    :=Qry_ItensP2PRECOVDA.AsFloat
         else
            tb_ped02_preP2PRECO.AsFloat    :=DM1.Tb_ProPDPRECO1.AsFloat;
         tb_ped02_preP2PRECO.AsFloat       := arredonda(tb_ped02_preP2PRECO.AsFloat,DM1.Tb_PargerPCASASPU.AsInteger);
         tb_ped02_preP2VALDES.AsFloat   :=0;
         tb_ped02_preP2CODVEN.AsInteger :=mVenda_GP.mPed1_Codven;
         fDadosFiscais(Qry_ItensP2CODPRO.AsFloat
                      ,mPed_UF_Cli
                      ,mPed_Cli_ConsFin
                      ,mPed_Cli_icmsnr
                      ,mPed_CliCalcIPI
                      ,mPed_Cli_REDICMSNOR
                      ,mPed_Cli_MotDes
                      ,tb_ped02_pre
                      ,cds_aliquotas);


         tb_ped02_preP2DESC_PERC01.AsFloat    :=0;
         tb_ped02_preP2DESC_PERC02.AsFloat    :=0;
         tb_ped02_preP2DESC_PERC03.AsFloat    :=0;
         tb_ped02_pre.Post;

         mVenda_GP.fGravarItemCDS(0 // produto
                          ,0
                          ,2 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
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
                          ,tb_ped02_pre);
         end;
      Qry_Itens.Next;
      end;
   tb_ped02_pre.Close;



   mDesconto:=0;
   if mDesconto>0 then
      begin
      mvenda_gp.mPed1_Desc_Rateado:=mDesconto;

      mVenda_GP.fGravarItem(0 // produto
                           ,0
                           ,0 //p2Estoque
                           ,mVenda_GP.mPed1_CodFP
                           ,3 //apenas calcular
                           ,0 //pSituacao: Integer;
                           ,''
                           ,mVenda_GP.mPed1_NomFP
                           ,mVenda_GP.mPed1_BaixaFP
                           ,0 //pQtd_Cal
                           ,0 // pPrecoUnit_Cal
                           ,0 //,pPrecoTab_Cal
                           ,0 // pPrecoUCPR_Cal
                           ,0 // pPrecoCus_Cal
                           ,0 // pPrecoMax_Cal,
                           ,0 // qtd mQtd_Ant
                           ,0 // valfloat(edt_valseg.Text)
                           ,0 // ValFloat(edt_valfre.Text)
                           ,0 // iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                           ,0 //  valfloat(edt_despAces.Text)
                           ,mvenda_gp.mPed1_Desc_Rateado
                           ,nil);


      end;
   if mVenda_GP.mped1_Chave>0 then
      begin
      query_exe.close;
      query_exe.SQL.Clear;
      query_exe.SQL.add('Update pecadp01 SET P1ORI_CHAVE=:CHAVEPED,P1ORI_CHAVE_ANO=:CHAVEPED_ANO '
                      +' where P1CHAVE=:CHAVE AND P1CHAVE_ANO=:CHAVE_ANO ');
      query_exe.ParamByName('CHAVEPED').AsFloat:=mVenda_GP.mped1_Chave;
      query_exe.ParamByName('CHAVEPED_ANO').AsFloat:=mVenda_GP.mped1_Chave_ANO;
      query_exe.ParamByName('CHAVE').AsFloat:=cds_cabCHAVE.AsInteger;
      query_exe.ParamByName('CHAVE_ANO').AsFloat:=cds_cabCHAVE_ANO.AsInteger;
      try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;
   if CB_LSEPONLINE.checked=true then
      begin
      fGravarRequisicoes('I',cb_impressora.Text,cb_ordem_impressao.ItemIndex,cb_agrupamento.ItemIndex,cb_modelo.itemindex,edt_qtdvias.value );
      end;
   cds_cab.Next;
   end;


if query_cons<>nil then
   freeandnil(Query_Cons);
if query_exe<>nil then
   freeandnil(Query_exe);



// termino

end;


procedure TFrm_PedidoEletronico.btnAbrirClick(Sender: TObject);
begin
cds_cab.Filtered:=False;
cds_cab.EmptyDataSet;
Atualizando:=True;
Qry_Itens.Close;
DM1.Query1.close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add(' select P1CHAVE,P1CHAVE_ANO,P1CODCLI,CRAZAO,P1CODBCO,P1CODVEN,P1TOTBRU,P1TOTDES,P1TOTLIQ,P1OBS_PED,P1ORIGEM,P1DATHORINC,P1MOTIVO_EXCLUSAO '
                  +' from pecadp01, cadcli where ccodcli=p1codcli and (nvl(P1ORI_CHAVE,0)=0) ');
DM1.Query1.sql.Add(' and P1STATUS=1 ');

DM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATHORINC',true,edt_datini.Date));
dM1.Query1.sql.Add(fFormatdatetimeParaConsulta('P1DATHORINC',false,edt_datfin.Date));
DM1.Query1.sql.Add(' order by P1DATHORINC');
try
   DM1.Query1.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(dm1.query1,31545,'SGE','CADMOV_PROD_REPETIDO');
   Exit;
   end;
   end;
while not DM1.Query1.Eof do
  begin
  cds_cab.Append;
  cds_cabOK.Asstring     :=' ';
  cds_cabCHAVE.AsInteger :=DM1.Query1.FieldByName('P1CHAVE').AsInteger;
  cds_cabCHAVE_ANO.AsInteger :=DM1.Query1.FieldByName('P1CHAVE_ANO').AsInteger;
  cds_cabCODCLI.AsInteger:=DM1.Query1.FieldByName('P1CODCLI').AsInteger;
  cds_cabNOMCLI.AsString :=DM1.Query1.FieldByName('CRAZAO').AsString;
  cds_cabCODBCO.AsInteger:=DM1.Query1.FieldByName('P1CODBCO').AsInteger;
  cds_cabCODVEN.AsInteger:=DM1.Query1.FieldByName('P1CODVEN').AsInteger;
  cds_cabDATA.AsDateTime :=DM1.Query1.FieldByName('P1DATHORINC').AsDateTime;
  cds_cabTOTBRU.AsFloat  :=DM1.Query1.FieldByName('P1TOTBRU').AsFloat;
  cds_cabTOTDES.AsFloat  :=DM1.Query1.FieldByName('P1TOTDES').AsFloat;
  cds_cabTOTLIQ.AsFloat  :=DM1.Query1.FieldByName('P1TOTLIQ').AsFloat;
  cds_cabOBS.AsString    :=DM1.Query1.FieldByName('P1OBS_PED').AsString;
  cds_cabMOTIVO_EXCLUSAO.AsString    :=DM1.Query1.FieldByName('P1MOTIVO_EXCLUSAO').AsString;
  cds_cab.Post;
  DM1.Query1.Next;
  end;
Atualizando:=False;

end;

procedure TFrm_PedidoEletronico.btnMarcaTodasClick(Sender: TObject);
begin
cds_cab.Filtered:=False;
cds_cab.First;
while not cds_cab.Eof do
  begin
  cds_cab.Edit;
  cds_cabOK.AsString:='X';
  cds_cab.Post;
  cds_cab.Next;
  end;


end;

procedure TFrm_PedidoEletronico.bbDesmarcarClick(Sender: TObject);
begin
cds_cab.Filtered:=False;
cds_cab.First;
while not cds_cab.Eof do
  begin
  cds_cab.Edit;
  cds_cabOK.AsString:='';
  cds_cab.Post;
  cds_cab.Next;
  end;

end;

procedure TFrm_PedidoEletronico.btnExcluirClick(Sender: TObject);
var
  Pedidos : String;
begin
cds_cab.Filter:='OK=TRUE';
cds_cab.Filtered:=True;
if cds_cab.IsEmpty then
  begin
  ShowMessage('Sem pedidos a faturar.');
  Exit;
  end;
Pedidos := '';
while not cds_cab.Eof do
  begin
  if Pedidos='' then
    Pedidos:=cds_cabCHAVE.AsString
  else
    Pedidos:=Pedidos+','+cds_cabCHAVE.AsString;
  cds_cab.Next;
  end;
try
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add('update EXPCADP01 set P1PEDGERADO=-1 where P1CHAVE in ('+Pedidos+')');
  DM1.Query1.ExecSQL;
  ShowMessage('Concluido!!!');
except
  DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
  ShowMessage('Erro ao excluir');
  end;
btnAbrirClick(Self);

end;

procedure TFrm_PedidoEletronico.bbFaturarClick(Sender: TObject);
begin
if fFaturarPedido_ultimo(0) then
   begin
   btnAbrirClick(self);
   MessageDlg('Concluido!',mtInformation,[mbOk],0);
   end;

end;

procedure TFrm_PedidoEletronico.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PedidoEletronico.src_cabDataChange(Sender: TObject;
  Field: TField);
begin
if (not Qry_Itens.active) or (mAnt_Chave<>cds_cabCHAVE.AsInteger) then
   begin
   if (cds_cabCHAVE.AsFloat> 0) AND (cds_cabCHAVE_ANO.AsFloat>0) then
      begin
      Qry_Itens.Close;
      mAnt_Chave:=cds_cabCHAVE.AsInteger;

      Qry_Itens.SQL.clear;
      Qry_Itens.SQL.Add('select P2CHAVE,P2CHAVE_ANO,P2ITEM '
                       +',P2CODPRO,P2PRECOTAB,P2PRECOVDA '
                       +',P2PDESC01,P2PDESC02,P2PDESC03 '
                       +',P2DESCVALOR '
                       +',P2QTDPED,P2RESIDUO,P2RESIDUO_USADO '
                       +',PDNOME,PDUND,PDMARCA FROM PECADP02,CADPRO '
                       +' WHERE PDCODPRO=P2CODPRO '
                       +' and P2CHAVE=:CHAVE   '
                       +' and P2CHAVE_ANO=:CHAVE_ANO   '
                       +' ORDER BY P2ITEM ');
      Qry_Itens.ParamByName('CHAVE').AsFloat:=cds_cabCHAVE.AsFloat;
      Qry_Itens.ParamByName('CHAVE_ANO').AsFloat:=cds_cabCHAVE_ANO.AsFloat;
      try
         Qry_Itens.Open;
      except on e : exception do
         begin
         ex_erroSql_Novo(Qry_Itens,31545,'SGE','CADMOV_PROD_REPETIDO');
         end;
         end;
      end;
   end;

end;


procedure TFrm_PedidoEletronico.pVisualizar(p1chave: integer);

var
mNomeSaida: string;
query_ped: tquery;
x_temp: integer;

begin

if p1chave>0 then
   begin
   query_ped:=TQuery.Create(nil);
   query_ped.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_ped.SQL.Add('select P1_IMAGEM from expcadp01 where P1CHAVE=:CHAVE' );
   query_ped.ParamByName('CHAVE').AsInteger:=p1chave;
   try
      query_ped.Open;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_ped,658,'func Erro:'+e.Message ,'CADP01');
      query_ped.Close;
      freeandnil(query_ped);
      exit;
      end;
      end;
   if (query_ped.isempty) or (query_ped.FieldByName('P1_IMAGEM').IsNull) then
      begin
      MessageDlg('Não foi encontrado a copia do pedido!',mtError,[mbOk],0);
      query_ped.Close;
      freeandnil(query_ped);
      exit;
      end;
   mNomeSaida:='c:\sge\temp\ped'+IntToStr(p1chave);
   x_temp:=0;
   While true do
      begin
      if FileExists(mNomeSaida+'.pdf') then
         begin
         if deletefile(mNomeSaida+'.pdf') then
            break;
         end
      else
         break;
     mNomeSaida:='c:\sge\temp\ped'+IntToStr(p1chave)+'_'+IntToStr(x_temp);
     x_temp:=x_temp+1;
     end;
   (query_ped.FieldByName('P1_IMAGEM') as TBlobField).SaveToFile(mNomeSaida+'.pdf');
   ShellExecute(Application.Handle,'Open',pchar(mNomeSaida+'.pdf'),nil,nil,SW_HIDE);
   fAdicionarTempDel('C:\SGE\TEMP\'+mNomeSaida);
   query_ped.Close;
   freeandnil(query_ped);
   end;


end;


procedure TFrm_PedidoEletronico.bbVisualizarClick(Sender: TObject);
begin
pVisualizar(cds_cabCHAVE.AsInteger);

end;

procedure TFrm_PedidoEletronico.cb_fatautomaticamenteClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_FATPEDONLINE','CBFATAUTOMATICAMENTE');
fGravaPadroes(-1,'CBFATAUTOMATICAMENTE','checked','_FATPEDONLINE',iif(cb_fatautomaticamente.Checked,'true','false'));
timer_fatauto.Enabled:=cb_fatautomaticamente.Checked;

end;

procedure TFrm_PedidoEletronico.CB_LSEPONLINEClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_FATPEDONLINE','CBLSEPONLINE');
fGravaPadroes(-1,'CBLSEPONLINE','checked','_FATPEDONLINE',iif(CB_LSEPONLINE.Checked,'true','false'));



end;

procedure TFrm_PedidoEletronico.Timer_fatautoTimer(Sender: TObject);
begin
Timer_fatauto.Enabled:=false;
btnAbrirClick(self);
if cds_cab.IsEmpty=false then
   begin
   cds_cab.Edit;
   if cds_cabOK.AsString='X' then
      cds_cabOK.AsString:=' '
   else
      cds_cabOK.AsString:='X';
   cds_cab.Post;
   if not fFaturarPedido_ultimo(0) then
      begin
      MessageDlg('Ha algum problema verifique!',mtError,[mbOk],0);
      exit;
      end;
   end;
Timer_fatauto.Enabled:=true;

end;


procedure TFrm_PedidoEletronico.fGravarRequisicoes(pTipoEvento,pImpressora_padrao: string;pOrdemImpressao,pAgrupamento,pModelo,pQtdVias:integer);

var
query_requisicao: tquery;
mrel_id: integer;
begin
   fltdvca(0,0,'NF','Orcamento','CADTAB');


             FPedEmiteNf(0,2,0,mVenda_GP.mPed1_Chave_ano,mVenda_GP.mped1_Chave
             ,0,mVenda_GP.mPed1_Codemp,0
             ,0,false,false,true,DM1.Tb_TDVCATCQTDVIA.AsInteger,0,0); // lista de separacao


{

if fLerGenerico_query('DUAL','CADP01_REQUISICOES_SEQ.nextval','',query_consulta) then
   mrel_id:=query_consulta.fields[0].AsInteger;


query_requisicao:=tquery.create(nil);
query_requisicao.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_requisicao.sql.clear;
query_requisicao.sql.Add('Insert into CADP01_REQUISICOES ('
                        +' P1R_CHAVE'
                        +',P1R_LOTSEQ '
                        +',P1R_CODEMP'
                        +',P1R_TIPO_EVENTO'
                        +',P1R_IMPRESSORA_PADRAO'
                        +',P1R_ID'
                        +',P1R_DATHOR_REQ'
                        +',P1R_ORDEM_IMPRESSAO'
                        +',P1R_AGRUPAMENTO'
                        +',P1R_MODELO_RELATORIO'
                        +',P1R_QTDVIAS'

                        +') values ('
                        +' :P1R_CHAVE'
                        +',:P1R_LOTSEQ '
                        +',:P1R_CODEMP'
                        +',:P1R_TIPO_EVENTO'
                        +',:P1R_IMPRESSORA_PADRAO'
                        +','+inttostr(mrel_id)
                        +',SYSDATE '
                        +',:ORDEM_IMPRESSAO'
                        +',:AGRUPAMENTO'
                        +',:MODELO_RELATORIO'
                        +',:QTDVIAS'


                        +')');


query_requisicao.ParamByName('P1R_CHAVE').AsFloat :=mVenda_GP.mped1_Chave;
query_requisicao.ParamByName('P1R_LOTSEQ').AsFloat:=mVenda_GP.mPed1_Chave_ano;
query_requisicao.ParamByName('P1R_CODEMP').AsFloat:=mVenda_GP.mPed1_Codemp;;
query_requisicao.ParamByName('P1R_TIPO_EVENTO').AsString:=pTipoEvento;
query_requisicao.ParamByName('P1R_IMPRESSORA_PADRAO').AsString:=pImpressora_padrao;
query_requisicao.ParamByName('ORDEM_IMPRESSAO').AsInteger:=pOrdemImpressao;
query_requisicao.ParamByName('AGRUPAMENTO').AsInteger      :=pAgrupamento;
query_requisicao.ParamByName('MODELO_RELATORIO').AsInteger :=pModelo;
query_requisicao.ParamByName('QTDVIAS').AsInteger          :=pQtdVias;

try
   query_requisicao.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_requisicao,3540,'func Erro:'+e.Message ,'CADNE');
   end;


query_requisicao.Close;
freeandnil(query_requisicao);
}
end;


procedure TFrm_PedidoEletronico.cb_ordem_impressaoClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_FATPEDONLINE','CB_ORDEM_IMPRESSAO');
fGravaPadroes(-1,'CB_ORDEM_IMPRESSAO','itemindex','_FATPEDONLINE',inttostr(cb_ordem_impressao.ItemIndex));

end;

procedure TFrm_PedidoEletronico.cb_agrupamentoClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_FATPEDONLINE','CB_AGRUPAMENTO');
fGravaPadroes(-1,'CB_AGRUPAMENTO','itemindex','_FATPEDONLINE',inttostr(cb_agrupamento.ItemIndex));

end;

procedure TFrm_PedidoEletronico.cb_modeloClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_FATPEDONLINE','CB_MODELO');
fGravaPadroes(-1,'CB_MODELO','itemindex','_FATPEDONLINE',inttostr(cb_modelo.ItemIndex));

end;

procedure TFrm_PedidoEletronico.edt_qtdviasClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_FATPEDONLINE','_QTDVIAS');
fGravaPadroes(-1,'_QTDVIAS','text','_FATPEDONLINE',inttostr(edt_qtdvias.Value));

end;

end.
