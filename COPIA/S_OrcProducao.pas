unit S_OrcProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, ExtCtrls, StdCtrls, Mask, Buttons, ToolEdit,
  Grids, DBGrids, CurrEdit, DB, RxMemDS, S_PVO, DBTables, S_Ped_02, S_SelEmp;

type
  Tfrm_orcproducao = class(TForm)
    tlb_orcproducao: TToolBar;
    pnl_orcproducao: TPanel;
    grp_totais: TGroupBox;
    pgc_cabecalho: TPageControl;
    tbs_dados: TTabSheet;
    pgc_pedidos: TPageControl;
    tbs_mercadorias: TTabSheet;
    Bevel1: TBevel;
    Bevel2: TBevel;
    StaticText2: TStaticText;
    StaticText7: TStaticText;
    StaticText12: TStaticText;
    ST_NOMPV: TStaticText;
    edt_chave: TEdit;
    edt_datapedido: TMaskEdit;
    edt_codcliente: TEdit;
    edt_nomecliente: TEdit;
    cb_tabelavenda: TComboBox;
    edt_codvenda: TEdit;
    edt_nomevenda: TEdit;
    btn_incluir: TBitBtn;
    lbl_codpro: TStaticText;
    edt_codproduto: TComboEdit;
    lbl_descricao: TStaticText;
    edt_descricao: TEdit;
    StaticText3: TStaticText;
    edt_descricaocomplemento: TEdit;
    Grid: TDBGrid;
    lbl_quantidade: TStaticText;
    edt_quantidade: TCurrencyEdit;
    StaticText1: TStaticText;
    edt_sobra: TCurrencyEdit;
    StaticText4: TStaticText;
    edt_quebra: TCurrencyEdit;
    btn_localizar: TBitBtn;
    btn_alterar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_sair: TBitBtn;
    btn_imprimir: TBitBtn;
    Bevel3: TBevel;
    StaticText8: TStaticText;
    edt_total: TCurrencyEdit;
    StaticText6: TStaticText;
    edt_vlrunitario: TCurrencyEdit;
    QryItem_Producao: TRxMemoryData;
    StaticText9: TStaticText;
    edt_remessa: TEdit;
    QryItem_ProducaoCODEMP: TFloatField;
    QryItem_ProducaoCHAVE: TFloatField;
    QryItem_ProducaoPRO: TFloatField;
    QryItem_ProducaoDESC_COMPL: TStringField;
    QryItem_ProducaoQTD_UTILIZ: TFloatField;
    QryItem_ProducaoQTD_SOBRA: TFloatField;
    QryItem_ProducaoQTD_QUEBRA: TFloatField;
    QryItem_ProducaoVLR_UNIT: TFloatField;
    QryItem_ProducaoVLTOT: TFloatField;
    QryItem_ProducaoDESC_REMES: TStringField;
    Ds_Itens: TDataSource;
    QryItem_ProducaoNomeProduto: TStringField;
    Qr_PF02: TQuery;
    Qr_PF02PF2CODEMP: TFloatField;
    Qr_PF02PF2CHAVE: TFloatField;
    Qr_PF02PF2ITEM: TFloatField;
    Qr_PF02PF2CODPRO: TFloatField;
    Qr_PF02PF2LOTE: TStringField;
    Qr_PF02PF2DATAV: TDateTimeField;
    Qr_PF02PF2QTDP: TFloatField;
    Qr_PF02PF2PU: TFloatField;
    Qr_PF02PF2DESC01: TFloatField;
    Qr_PF02PF2DESC02: TFloatField;
    Qr_PF02PF2DESC03: TFloatField;
    Qr_PF02PF2SIT: TStringField;
    Qr_PF02PF2ALIQ: TFloatField;
    Qr_PF02PF2ALIQNR: TFloatField;
    Qr_PF02PF2BASEN: TFloatField;
    Qr_PF02PF2ICMSN: TFloatField;
    Qr_PF02PF2BASER: TFloatField;
    Qr_PF02PF2ICMSR: TFloatField;
    Qr_PF02PF2STATUS: TFloatField;
    Qr_PF02PF2TAB: TStringField;
    Qr_PF02PF2LISTA: TFloatField;
    Qr_PF02PF2PCOTAB: TFloatField;
    Qr_PF02PF2TOTDES: TFloatField;
    Qr_PF02PF2BASENR: TFloatField;
    Qr_PF02PF2ICMSNR: TFloatField;
    Qr_PF02PF2ISENTAS: TFloatField;
    Qr_PF02PF2ALIPI: TFloatField;
    Qr_PF02PF2IPI: TFloatField;
    Qr_PF02PF2CFO: TFloatField;
    Qr_PF02PF2DESCRAT: TFloatField;
    Qr_PF02nompro: TStringField;
    Qr_PF02undpro: TStringField;
    Qr_PF02totdes: TFloatField;
    Qr_PF02totliq: TFloatField;
    Qr_PF02totbru: TFloatField;
    Qr_PF02PF2LOTSEQ: TFloatField;
    Qr_PF02PF2PMC: TFloatField;
    Qr_PF02PF2VALDES: TFloatField;
    Qr_PF02PF2OUTRAS: TFloatField;
    Qr_PF02PF2ORIGEM: TFloatField;
    Qr_PF02PF2STATUS_PF1: TFloatField;
    Qr_PF02PF2PUOUT: TFloatField;
    Qr_PF02PF2PBT: TFloatField;
    Qr_PF02PF2FRERAT: TFloatField;
    Qr_PF02PF2QTDREC: TFloatField;
    Qr_PF02PF2VALDESOUT: TFloatField;
    Qr_PF02PF2FRERATOUT: TFloatField;
    Qr_PF02PF2DESCRATOUT: TFloatField;
    Qr_PF02PF2TOTDESOUT: TFloatField;
    Qr_PF02PF2SIV_OUTROS: TFloatField;
    Qr_PF02PF2PREDICMNOR: TFloatField;
    Qr_PF02PF2CFOP_COMP: TStringField;
    Qr_PF02PF2LOTE_RE: TStringField;
    Qr_PF02PF2DTENTRADA: TDateTimeField;
    Qr_Pf01: TQuery;
    Qr_Pf01PF1CODEMP: TFloatField;
    Qr_Pf01PF1CHAVE: TFloatField;
    Qr_Pf01PF1CODFOR: TFloatField;
    Qr_Pf01PF1DATA: TDateTimeField;
    Qr_Pf01PF1OBS: TMemoField;
    Qr_Pf01PF1DESC01: TFloatField;
    Qr_Pf01PF1DESC02: TFloatField;
    Qr_Pf01PF1DESC03: TFloatField;
    Qr_Pf01PF1TOTDES: TFloatField;
    Qr_Pf01PF1TOTBRU: TFloatField;
    Qr_Pf01PF1TOTLIQ: TFloatField;
    Qr_Pf01PF1STATUS: TFloatField;
    Qr_Pf01PF1CODUSR: TFloatField;
    Qr_Pf01PF1HORDIG: TStringField;
    Qr_Pf01PF1USRMOD: TFloatField;
    Qr_Pf01PF1DTMOD: TDateTimeField;
    Qr_Pf01PF1HRMOD: TStringField;
    Qr_Pf01PF1TOTMER: TFloatField;
    Qr_Pf01PF1TOTPOS: TFloatField;
    Qr_Pf01PF1TOTNEG: TFloatField;
    Qr_Pf01PF1TOTINA: TFloatField;
    Qr_Pf01PF1TOTFRE: TFloatField;
    Qr_Pf01PF1TOTSEG: TFloatField;
    Qr_Pf01PF1BASEN: TFloatField;
    Qr_Pf01PF1BASER: TFloatField;
    Qr_Pf01PF1ICMSN: TFloatField;
    Qr_Pf01PF1ICMSR: TFloatField;
    Qr_Pf01PF1CODLDR: TFloatField;
    Qr_Pf01PF1BASENR: TFloatField;
    Qr_Pf01PF1ICMSNR: TFloatField;
    Qr_Pf01PF1ISENTAS: TFloatField;
    Qr_Pf01PF1TOTOUT: TFloatField;
    Qr_Pf01PF1TOTIPI: TFloatField;
    Qr_Pf01PF1DATANF: TDateTimeField;
    Qr_Pf01PF1NUMNF: TFloatField;
    Qr_Pf01PF1SERIE: TStringField;
    Qr_Pf01PF1SUBSER: TStringField;
    Qr_Pf01PF1CODPV: TFloatField;
    Qr_Pf01PF1CODBCO: TFloatField;
    Qr_Pf01PF1CODTRA: TFloatField;
    Qr_Pf01PF1MODELO: TStringField;
    Qr_Pf01PF1NUMDUP: TFloatField;
    Qr_Pf01PF1DESD: TStringField;
    Qr_Pf01PF1GRAVNF: TFloatField;
    Qr_Pf01PF1GRAVDP: TFloatField;
    Qr_Pf01PF1CASASD: TFloatField;
    Qr_Pf01PF1TABPV: TStringField;
    Qr_Pf01PF1DATAENT: TDateTimeField;
    Qr_Pf01PF1DTPFAT: TDateTimeField;
    Qr_Pf01PF1DTPENT: TDateTimeField;
    Qr_Pf01PF1PERCFRE: TFloatField;
    Qr_Pf01PF1FRETEPC: TFloatField;
    Qr_Pf01PF1CONDPAG: TStringField;
    Qr_Pf01PF1PIPIFRETE: TFloatField;
    Qr_Pf01PF1IPIFRETE: TFloatField;
    Qr_Pf01PF1LOTSEQ: TFloatField;
    Qr_Pf01PF1TEMBOL: TFloatField;
    Qr_Pf01PF1LEMAT: TFloatField;
    Qr_Pf01PF1CODEMP_ORI: TFloatField;
    Qr_Pf01PF1NUMPED_ORI: TFloatField;
    Qr_Pf01PF1PAG_ORI: TFloatField;
    Qr_Pf01PF1ORIGEM: TFloatField;
    Qr_Pf01PF1OUTNINC: TFloatField;
    Qr_Pf01PF1OUTDESP: TFloatField;
    Qr_Pf01PF1NFCF: TFloatField;
    Qr_Pf01PF1TOTLIQOUT: TFloatField;
    Qr_Pf01PF1TOTPBT: TFloatField;
    Qr_Pf01PF1FORMACE: TFloatField;
    Qr_Pf01PF1SITPED: TFloatField;
    Qr_Pf01PF1QTDMAN: TFloatField;
    Qr_Pf01PF1TOTDESOUT: TFloatField;
    Qr_Pf01PF1TOTBRUOUT: TFloatField;
    Qr_Pf01PF1TOTFREOUT: TFloatField;
    Qr_Pf01PF1OUTROS: TFloatField;
    Qr_Pf01PF1NUMDUPOUT: TFloatField;
    Qr_Pf01PF1TIPO: TFloatField;
    Qr_Pf01PF1SIV_FRETE: TFloatField;
    Qr_Pf01PF1SIV_DARE: TFloatField;
    Qr_Pf01PF1SIV_OUTROS: TFloatField;
    Qr_Pf01PF1OUTVDUP: TFloatField;
    Qr_Pf01dtpfat: TStringField;
    Qr_Pf01dtpent: TStringField;
    Qr_Pf01PF1PRAZO: TFloatField;
    Qr_Pf01PF1INT: TFloatField;
    Qr_Pf01PF1QTDP: TFloatField;
    Qr_Pf01PF1LOCAL: TFloatField;
    Qr_Pf01PF1SUBMOD: TStringField;
    Qr_Pf01PF1TOTOUT_ALIQ: TFloatField;
    Qr_Pf01PF1TOTOUT_IMP: TFloatField;
    Qr_Pf01PF1LOTE_ENTRADA: TStringField;
    Qr_Pf01PF1REGENT: TStringField;
    Qr_Pf01PF1SITPROD: TFloatField;
    StaticText5: TStaticText;
    edt_unid: TEdit;
    QryItem_ProducaoUnidade: TStringField;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    edt_qtdeitens: TComboEdit;
    edt_totutilizadas: TCurrencyEdit;
    edt_totsobra: TCurrencyEdit;
    edt_totquebra: TCurrencyEdit;
    edt_tottotal: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edt_codclienteEnter(Sender: TObject);
    procedure edt_codclienteExit(Sender: TObject);
    procedure cb_tabelavendaExit(Sender: TObject);
    procedure btn_incluirClick(Sender: TObject);
    procedure edt_codclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edt_datapedidoExit(Sender: TObject);
    procedure edt_datapedidoEnter(Sender: TObject);
    procedure edt_codvendaExit(Sender: TObject);
    procedure edt_codvendaEnter(Sender: TObject);
    procedure edt_codvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codvendaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codprodutoDblClick(Sender: TObject);
    procedure edt_codprodutoEnter(Sender: TObject);
    procedure edt_codprodutoExit(Sender: TObject);
    procedure edt_codprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure edt_quebraExit(Sender: TObject);
    procedure edt_quantidadeExit(Sender: TObject);
    procedure QryItem_ProducaoBeforePost(DataSet: TDataSet);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fAtualizaBotoes(pTipo: Integer): Boolean;
    function FTestaCliente(pLocal: Integer;pCodCli: Real;pTabPv: String): Boolean;
    function fpd_RecalcularTudo(ptipo: Integer):Boolean;
    function fCarregaPlanoVendas(pTipo: Integer): Boolean;
    function fped01compsql(ptipo: Integer): Boolean;
    function fPed01lerant(ptipo: Integer):Boolean;
    function fCarregarTabTemp(ptipo: Integer): Boolean;
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  frm_orcproducao        : Tfrm_orcproducao;
  Pedido_02_OP           : TFrm_Ped_02;
  mfocusman              : Boolean = False;
  Ant_Float              : Real=0;
  mPed_Cli_CodCli        : Real;
  mPed_Cli_CodLoc        : Real;
  mPed_Par_leituraobscli : Boolean= False;
  mAceita_pergunta       : Boolean=True;
  mpd_ant_codpro         : Real=0;
  mpd_QtdPed             : Real=0; // utilizada para contrele de pendencias de mercadorias
  pf01_caspu             : String;
  mchave_pf              : Integer=0;
  pfor_lotseq            : Integer=0;
  pfor_ori               : String;
  bbalt_true             : Boolean=True;
  bbinc_true             : Boolean=True;
  bbexc_true             : Boolean=True;
  bbrel_true             : Boolean=True;
  xvarItem               : Integer = 0;
  xTotalQtde             : Real = 0;
  xValorTotal            : Real = 0;

  {---Variaveis Planos de Vendas---}
   mpd_pvtdc,
   mpd_pvtc,
   mpd_pvtpd1,
   mpd_pvtpd2,
   mpd_pvtpd3,
   mpd_pvtpdesf,
   mpd_tpp,
   mpd_pvddescf,
   mpd_pvdiasdescf       : Integer;

   mpd_pvcom04,
   mpd_pvact01,
   mpd_pvact99,
   mpd_pvdes,
   mpd_pvd3s0,
   mpd_pvdes1,
   mpd_pvdes2,
   mpd_pvdes3,
   mpd_pvdescf,
   mpd_pvd1s0,
   mpd_pvd1s1,
   mpd_pvd1s2,
   mpd_pvd1s3,
   mpd_pvd1s4,
   mpd_pvd1s5,
   mpd_pvd1s6,
   mpd_pvd1s7,
   mpd_pvd2s0,
   mpd_pvd2s1,
   mpd_pvd2s2,
   mpd_pvd2s3,
   mpd_pvd2s4,
   mpd_pvd2s5,
   mpd_pvd2s6,
   mpd_pvd2s7,
   mpd_pdpvd3s0,
   mpd_pvd3s1,
   mpd_pvd3s2,
   mpd_pvd3s3,
   mpd_pvd3s4,
   mpd_pvd3s5,
   mpd_pvd3s6,
   mpd_pvd3s7,
   mpd_pvdfs0,
   mpd_pvdfs1,
   mpd_pvdfs2,
   mpd_pvdfs3,
   mpd_pvdfs4,
   mpd_pvdfs5,
   mpd_pvdfs6,
   mpd_pvdfs7,
   mpd_pvcms0,
   mpd_pvcms1,
   mpd_pvcms2,
   mpd_pvcms3,
   mpd_pvcms4,
   mpd_pvcms5,
   mpd_pvcms6,
   mpd_pvcms7,
   mpd_pvcmv02s0,
   mpd_pvcmv02s1,
   mpd_pvcmv02s2,
   mpd_pvcmv02s3,
   mpd_pvcmv02s4,
   mpd_pvcmv02s5,
   mpd_pvcmv02s6,
   mpd_pvcmv02s7,
   mpd_pvcmv03s0,
   mpd_pvcmv03s1,
   mpd_pvcmv03s2,
   mpd_pvcmv03s3,
   mpd_pvcmv03s4,
   mpd_pvcmv03s5,
   mpd_pvcmv03s6,
   mpd_pvcmv03s7,
   mpd_pvdf01a,
   mpd_pvdf02a,
   mpd_pvdf03a,
   mpd_pvdf04a,
   mpd_pvdf01b,
   mpd_pvdf02b,
   mpd_pvdf03b,
   mpd_pvdf04b,
   mpd_pvdf01,
   mpd_pvdf02,
   mpd_pvdf03,
   mpd_pvdf04,
   mpd_acredesreg,
   mpd_ajcomis,
   mpd_pvactd,
   mpd_pvact00,
   mpd_CodRegiao,
   mpd_pvcom01,
   mpd_pvcom02,
   mpd_pvcom03           : Real;
   mpd_pvppori           : Integer;
   mpd_ptipop            : Integer;
   mAnt_pd_ptipop        : Integer;
   mpd_status            : Integer;
   mpd_chave             : Integer;
   mpd_chave_ant         : Real=0;

   mpd_ordem             : Integer;
   varItem               : Integer;
   mpd_varItem_mp        : Integer;
   mpd_ItemServ          : Integer;
   xChave                : Real = 0;

implementation

uses S_PPAL, S_DM4, lerarq, Func, S_DM1, S_SitCre, S_Ped_ObsCli, S_Aviso,
     S_Sintegra_Advert,  Func2, S_PV, S_PForLoc, S_Agde,
  S_PedCli, S_Rel_OrcProducao;

{$R *.dfm}

procedure Tfrm_orcproducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
   Action          := caFree;
   frm_orcproducao := Nil;
end;

procedure Tfrm_orcproducao.FormCreate(Sender: TObject);
begin
   Left := (Frm_PPal.ClientWidth - Width) div 2;
   Self.Caption := 'Manutenção do Cadastro de Fabrição por Encomenda';

   if flcadactab(0,0,IntToStr(codcar),'CADPROD_01') then begin
       if DM4.Tb_AcTabAT_INC.Value = 1 then
          bbpinc_true := False;
       if DM4.Tb_AcTabAT_ALT.Value = 1 then
          bbpalt_true := False;
       if DM4.Tb_AcTabAT_EXC.Value = 1 then
          bbpexc_true := False;
       if DM4.Tb_AcTabAT_REL.Value = 1 then
          bbprel_true := False;
   end else begin
       bbpinc_true := True;
       bbpalt_true := True;
       bbpexc_true := True;
       bbprel_true := True;
   end;

   Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

   fAtualizaBotoes(0);
   AtualizaForm(Self, False);
   StatusBtn(Self, 2);
   LimpaEdits(Self);

end;

function Tfrm_orcproducao.fAtualizaBotoes(pTipo: Integer): Boolean;
{
pTipo = 0 Pronto para inicializar uma nova inclusao sem nenhum selecionado
        1 Pronto para inicializar uma ação de inclusao/alteração/exclusao/impressao com pedido selecionado
        2 em estado de inclusao ou alteração
        3 bloqueia todos

}
begin

if ptipo=3 then
   begin
   btn_incluir.Enabled       := false;
   btn_localizar.Enabled     := false;
   btn_alterar.Enabled       := False;
   btn_excluir.Enabled       := False;
   btn_gravar.Enabled        := False;
   btn_imprimir.Enabled      := false;
   end
else if ptipo=2 then
   begin
   btn_incluir.Enabled       := false;
   btn_localizar.Enabled     := false;
   btn_alterar.Enabled       := False;
   btn_excluir.Enabled       := False;
   btn_gravar.Enabled        := true;
   btn_imprimir.Enabled      := false;
   end
else if ptipo=0 then
   begin
   btn_incluir.Enabled       := bbpinc_true;
   btn_localizar.Enabled     := True;
   btn_alterar.Enabled       := False;
   btn_excluir.Enabled       := False;
   btn_gravar.Enabled        := False;
   btn_imprimir.Enabled      := false;
   end
else if ptipo=1 then
   begin
   btn_incluir.Enabled       := bbpinc_true;
   btn_localizar.Enabled     := True;
   btn_alterar.Enabled       := bbpalt_true;
   btn_excluir.Enabled       := true;
   btn_gravar.Enabled        := False;
   btn_imprimir.Enabled      := bbprel_true;
   end;
end;

procedure Tfrm_orcproducao.edt_codclienteEnter(Sender: TObject);
begin
   mfocusman := True;
   Ant_Float := ValFloat(edt_codcliente.Text);
end;

procedure Tfrm_orcproducao.edt_codclienteExit(Sender: TObject);
begin
edt_codcliente.Text:=fdeixanum2(edt_codcliente.Text);

if (btn_cancelar.Focused) or (btn_sair.Focused) then
   edt_codcliente.Text:=FloattoStr(Ant_Float);

if ValInt(edt_codcliente.Text) = 0 then begin
   edt_codcliente.Clear;
   edt_nomecliente.Clear;
   Exit;
end;

if not flcadcli(1,0,edt_codcliente.Text) then
   begin
   fMensagem('Cliente não Cadastrado!',0,['0'],0);
   edt_codcliente.SetFocus;
   exit;
   end
else
   begin
   if trim(DM1.Tb_CliCUF.Asstring)='' then
      begin
      fMensagem('Estado do Cliente não foi encontrado!',0,['0'],0);
      edt_codcliente.SetFocus;
      exit;
      end;
   edt_nomecliente.Text := DM1.Tb_CliCRAZAO.Value;
   mPed_Cli_CodCli      := DM1.Tb_CliCCODCLI.AsFloat;
   mPed_Cli_CodLoc      := DM1.Tb_CliCCODLOC.AsFloat;
   pldr_nome            := DM1.Tb_CliCRAZAO.Value;
   end;

if not FTestaCliente(1,fsonumero(edt_codcliente.Text),'') then
   begin
   edt_codcliente.SetFocus;
   exit;
   end;

if (Ant_Float <> 0) and (Ant_Float <> ValFloat(edt_codcliente.Text)) then
    mPed_Par_leituraobscli := False;

mlib_limcred := False;
mlcred       := 0;

if not flcaduf(0,0,0,DM1.Tb_CliCUF.AsString) then
   begin
   fMensagem('O Estado: '+DM1.Tb_CliCUF.AsString+' do Cliente: '+EDT_NOMECLIENTE.Text+
           ' não foi encontrado. Favor Cadastra-lo!',0,['0'],0);
   edt_nomecliente.Clear;
   edt_codcliente.SetFocus;
   exit;
   end;

if (Trim(cb_tabelavenda.Text)<>'') and (Trim(edt_codvenda.Text)<>'') and (mAceita_pergunta) then
   cb_tabelavendaExit(self);

if (Ant_Float<>0) and (ant_Float<>fSonumero(edt_codcliente.Text))
   and  (not QryItem_Producao.IsEmpty) and (mpd_ptipop<2) then
   begin
   if DM1.Tb_PargerPRECALCPEDMAN.AsInteger<>1 then
      begin
      fMensagem('O Pedido poderá ter seus valores alterados',0,['0'],0);
      mValidaPedServ:=false;
      FPD_RecalcularTudo(1);
      mValidaPedServ:=true;
      end;
   Ant_Float:=fsonumero(edt_codcliente.Text);
   end;

if mAceita_pergunta then
   begin
   if (DM1.Tb_CliCCODCLI.Value=1) or (DM1.Tb_CliCCODCLI.Value=2) then
      begin
      edt_nomecliente.Color  :=clWindow;
      edt_nomecliente.ReadOnly:=false;
      edt_nomecliente.TabStop :=true;
      edt_nomecliente.SetFocus;
      end
   else
      begin
      edt_nomecliente.Color  :=$00FFE1F0;
      edt_nomecliente.ReadOnly:=true;
      edt_nomecliente.TabStop :=false;
      end;
   end;

end;

function Tfrm_orcproducao.FTestaCliente(pLocal: Integer; pCodCli: Real; pTabPv: String): Boolean;
{
plocal=0-Gravação Geral
       1-Codigo do cliente
}
begin
if pcodcli<2 then
   begin
   result:=true;
   exit;
   end;
if pCodcli=0 then
   begin
   Result:=true;
   exit;
   end;
if (not DM1.Tb_Cli.Active) or (pCodcli<>DM1.Tb_CliCCODCLI.AsFloat) then
   begin
   if not flcadcli(1,0,FloatTostr(pcodcli)) then
      begin
      fmensagem('Cliente Nao Encontrado!',0,['0'],0);
      result:=false;
      exit;
      end;
   end;
result:=true;
end;

procedure Tfrm_orcproducao.cb_tabelavendaExit(Sender: TObject);
begin
//if cb_tabelavenda.ItemIndex < 0 then
   with cb_tabelavenda do
      ItemIndex := items.IndexOf(cb_tabelavenda.Text);

cb_tabelavenda.text := cb_tabelavenda.Items.Strings[cb_tabelavenda.ItemIndex];

if trim(cb_tabelavenda.Text) = '' then
   exit;

if (cb_tabelavenda.Text <> 'AV') and (cb_tabelavenda.Text <> 'AP') and (cb_tabelavenda.Text <> 'PP') and
   (cb_tabelavenda.Text <> 'CV') and (cb_tabelavenda.Text <> 'PO') then
   begin
   fMensagem('Tabelas Válidas "AV","AP","PP","PO","CV"',0,['0'],0);
   exit;
   end;

if cb_tabelavenda.Text = 'PO' then
   edt_codvenda.Text := '99';

if not edt_codvenda.Focused then
   begin
   if (cb_tabelavenda.Text = 'PO') and (edt_codvenda.Text = '99') then
      begin
      edt_nomevenda.Text := 'Plano Opcional(Digitado)';
      edt_nomevenda.Hint := edt_nomevenda.Text;
      end
    else
      begin
      flcadpv(1,0,cb_tabelavenda.Text,edt_codvenda.Text);
      if DM1.Tb_PV.Eof then
         begin
         fMensagem('Plano de Vendas não Cadastrado',0,['0'],0);
         if DM1.Tb_PargerPUPVESP.Asinteger = 1 then
            edt_codvenda.SetFocus
         else
            cb_tabelavenda.SetFocus;
         end
      else
         begin
         mpacreconv := 0;
         if cb_tabelavenda.Text = 'CV' then
            begin
            if DM1.Tb_CliCCODCV.Value <= 0 then
               begin
               fMensagem('Cliente não Possui Convênio!',0,['0'],0);
               if DM1.Tb_PargerPUPVESP.Asinteger = 1 then
                  edt_codvenda.SetFocus
               else
                  cb_tabelavenda.SetFocus;
               exit;
               end;
            if flqr1('CVRAZAO,CVACFIN','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
               mpacreconv := DM1.Query1.Fields[1].AsFloat;
            end;
         if DM1.Tb_PVPVPRAZOS.IsNull then
            edt_nomevenda.Text := DM1.Tb_PVPVNOME.Value+'/'+DM1.Tb_PVprazos.Value+' Prazo Médio: '+DM1.Tb_PVPVPRAZOMED.AsString+iif(DM1.Tb_PVPVPRAZOMED.AsInteger>1,' dias ','dia')
         else
           edt_nomevenda.Text := DM1.Tb_PVPVNOME.Value+'/'+DM1.Tb_PVPVPRAZOS.Value+' Prazo Médio: '+DM1.Tb_PVPVPRAZOMED.AsString+iif(DM1.Tb_PVPVPRAZOMED.AsInteger>1,' dias ','dia');
         edt_nomevenda.Hint := edt_nomevenda.Text;
         fCarregaPlanoVendas(0);
         end;
      end;

   if (ant_codpv <> '') and (trim(cb_tabelavenda.Text)+FormatFloat('0000',ValFloat(edt_codvenda.Text)) <> ant_codpv) then
      begin
      if fValidaSenha(0,codusr,32,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração do Plano de Vendas Padrão','') <> 0 then
         begin
         fMensagem('Alteração não Aceita!',0,['0'],0);
         cb_tabelavenda.Text := copy(ant_codpv,1,2);
         if DM1.Tb_PargerPUPVESP.Asinteger = 1 then
            edt_codvenda.SetFocus
         else
            cb_tabelavenda.SetFocus;
         exit;
         end;
      ant_codpv := Trim(cb_tabelavenda.Text)+FormatFloat('0000',ValFloat(edt_codvenda.Text));
      if (not QryItem_Producao.IsEmpty) and (mpd_ptipop < 2) then
         begin
         if DM1.Tb_PargerPRECALCPEDMAN.AsInteger <> 1 then
            fMensagem('O Pedido poderá ter seus valores alterados',0,['0'],0);
         if QryItem_Producao.state in [dsInsert,dsEdit] then
             QryItem_Producao.Post;
         end;
      ant_codpv := trim(cb_tabelavenda.Text)+FormatFloat('0000',ValFloat(edt_codvenda.Text));
      end;
   end;
end;

function Tfrm_orcproducao.fpd_RecalcularTudo(ptipo: Integer): Boolean;
begin

end;

function Tfrm_orcproducao.fCarregaPlanoVendas(pTipo: Integer): Boolean;
{
  ptipo=0 do Plano de Vendas Normal
       =1 do Formulario PO99
       =2 Atualizar o Formulario PO99
}
begin
   if ptipo=0 then begin
       mpd_pvtdc       := DM1.Tb_PVPVTPDC.AsInteger;       //Tipo de Desconto Comercial
       mpd_pvtc        := DM1.Tb_PVPVTPC.AsInteger;        //Tipo de Comissao
       mpd_pvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;       //Tipo de Desconto
       mpd_pvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;       //Tipo de Desconto 2
       mpd_pvtpd3      := DM1.Tb_PVPVTPD3.AsInteger;       //Tipo de Desconto 3
       mpd_pvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;     //Tipo de de Desconto Financeiro
       mpd_tpp         := DM1.Tb_PVPVTPP.AsInteger;        //Tipo de preco do cadastro do Produto
       mpd_pvcom01     := DM1.Tb_PVPVCOM.Value;            //Percentual de Comissao do Vendedor
       mpd_pvcom02     := DM1.Tb_PVPVCOM02.Value;          //Percentual de Comissao do Vendedor 2
       mpd_pvcom03     := DM1.Tb_PVPVCOM03.Value;          //Percentual de Comissao do Vendedor 3
       mpd_pvcom04     := 0;
       mpd_pvact01     := DM1.Tb_PVPVACT01.Value;          //Percentual de Acrescimo em Produtos
       mpd_pvact99     := DM1.Tb_PVPVACT99.Value;          //Percentual de Acrescimo em Produtos do Tipo 99

       mpd_pvdes       := DM1.Tb_PVPVDES.Value;            //Desconto
       mpd_pvdes1      := DM1.Tb_PVPVDES1.Value;           //Desconto 1
       mpd_pvdes2      := DM1.Tb_PVPVDES2.Value;           //Desconto 2
       mpd_pvdes3      := DM1.Tb_PVPVDES3.Value;           //Desconto 3
       mpd_pvdescf     := DM1.Tb_PVPVDESCF.Value;          //Percentual de Desconto Financeiro
       mpd_pvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;     //Desconto Financeiro ate o Vencimento 0 = nao 1 = sim
       mpd_pvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;  //Ate quantos dias conceder o desconto financeiro

       mpd_pvd1s0      := DM1.Tb_PVPVD1S0.Value;           //Percentual Desconto Produto 1 em produtos status 0
       mpd_pvd1s1      := DM1.Tb_PVPVD1S1.Value;           //Percentual Desconto Produto 1 em produtos status 1
       mpd_pvd1s2      := DM1.Tb_PVPVD1S2.Value;           //Percentual Desconto Produto 1 em produtos status 2
       mpd_pvd1s3      := DM1.Tb_PVPVD1S3.Value;           //Percentual Desconto Produto 1 em produtos status 3
       mpd_pvd1s4      := DM1.Tb_PVPVD1S4.Value;           //Percentual Desconto Produto 1 em produtos status 4
       mpd_pvd1s5      := DM1.Tb_PVPVD1S5.Value;           //Percentual Desconto Produto 1 em produtos status 5
       mpd_pvd1s6      := DM1.Tb_PVPVD1S6.Value;           //Percentual Desconto Produto 1 em produtos status 6
       mpd_pvd1s7      := DM1.Tb_PVPVD1S7.Value;           //Percentual Desconto Produto 1 em produtos status 7


       mpd_pvd2s0      := DM1.Tb_PVPVD2S0.Value;           //Percentual Desconto Produto 2 em produtos status 0
       mpd_pvd2s1      := DM1.Tb_PVPVD2S1.Value;           //Percentual Desconto Produto 2 em produtos status 1
       mpd_pvd2s2      := DM1.Tb_PVPVD2S2.Value;           //Percentual Desconto Produto 2 em produtos status 2
       mpd_pvd2s3      := DM1.Tb_PVPVD2S3.Value;           //Percentual Desconto Produto 2 em produtos status 3
       mpd_pvd2s4      := DM1.Tb_PVPVD2S4.Value;           //Percentual Desconto Produto 2 em produtos status 4
       mpd_pvd2s5      := DM1.Tb_PVPVD2S5.Value;           //Percentual Desconto Produto 2 em produtos status 5
       mpd_pvd2s6      := DM1.Tb_PVPVD2S6.Value;           //Percentual Desconto Produto 2 em produtos status 6
       mpd_pvd2s7      := DM1.Tb_PVPVD2S7.Value;           //Percentual Desconto Produto 2 em produtos status 7

       mpd_pvd3s0      := DM1.Tb_PVPVD3S0.Value;           //Percentual Desconto Produto 3 em produtos status 0
       mpd_pvd3s1      := DM1.Tb_PVPVD3S1.Value;           //Percentual Desconto Produto 3 em produtos status 1
       mpd_pvd3s2      := DM1.Tb_PVPVD3S2.Value;           //Percentual Desconto Produto 3 em produtos status 2
       mpd_pvd3s3      := DM1.Tb_PVPVD3S3.Value;           //Percentual Desconto Produto 3 em produtos status 3
       mpd_pvd3s4      := DM1.Tb_PVPVD3S4.Value;           //Percentual Desconto Produto 3 em produtos status 4
       mpd_pvd3s5      := DM1.Tb_PVPVD3S5.Value;           //Percentual Desconto Produto 3 em produtos status 5
       mpd_pvd3s6      := DM1.Tb_PVPVD3S6.Value;           //Percentual Desconto Produto 3 em produtos status 6
       mpd_pvd3s7      := DM1.Tb_PVPVD3S7.Value;           //Percentual Desconto Produto 3 em produtos status 7

       mpd_pvdfs0      := DM1.Tb_PVPVDFS0.Value;           //Percentual Desconto Financeiro em produtos status 0
       mpd_pvdfs1      := DM1.Tb_PVPVDFS1.Value;           //Percentual Desconto Financeiro em produtos status 1
       mpd_pvdfs2      := DM1.Tb_PVPVDFS2.Value;           //Percentual Desconto Financeiro em produtos status 2
       mpd_pvdfs3      := DM1.Tb_PVPVDFS3.Value;           //Percentual Desconto Financeiro em produtos status 3
       mpd_pvdfs4      := DM1.Tb_PVPVDFS4.Value;           //Percentual Desconto Financeiro em produtos status 4
       mpd_pvdfs5      := DM1.Tb_PVPVDFS5.Value;           //Percentual Desconto Financeiro em produtos status 5
       mpd_pvdfs6      := DM1.Tb_PVPVDFS6.Value;           //Percentual Desconto Financeiro em produtos status 6
       mpd_pvdfs7      := DM1.Tb_PVPVDFS7.Value;           //Percentual Desconto Financeiro em produtos status 7

       mpd_pvcms0      := DM1.Tb_PVPVCMS0.Value;           //Percentual comissao em produtos status 0
       mpd_pvcms1      := DM1.Tb_PVPVCMS1.Value;           //Percentual comissao em produtos status 1
       mpd_pvcms2      := DM1.Tb_PVPVCMS2.Value;           //Percentual comissao em produtos status 2
       mpd_pvcms3      := DM1.Tb_PVPVCMS3.Value;           //Percentual comissao em produtos status 3
       mpd_pvcms4      := DM1.Tb_PVPVCMS4.Value;           //Percentual comissao em produtos status 4
       mpd_pvcms5      := DM1.Tb_PVPVCMS5.Value;           //Percentual comissao em produtos status 5
       mpd_pvcms6      := DM1.Tb_PVPVCMS6.Value;           //Percentual comissao em produtos status 6
       mpd_pvcms7      := DM1.Tb_PVPVCMS7.Value;           //Percentual comissao em produtos status 7

       mpd_pvcmv02s0   := DM1.Tb_PVPVCMVD02S0.Value;       //Percentual Comissao Vendedor status 0
       mpd_pvcmv02s1   := DM1.Tb_PVPVCMVD02S1.Value;       //Percentual Comissao Vendedor  status 1
       mpd_pvcmv02s2   := DM1.Tb_PVPVCMVD02S2.Value;       //Percentual Comissao Vendedor  status 2
       mpd_pvcmv02s3   := DM1.Tb_PVPVCMVD02S3.Value;       //Percentual Comissao Vendedor  status 3
       mpd_pvcmv02s4   := DM1.Tb_PVPVCMVD02S4.Value;       //Percentual Comissao Vendedor  status 4
       mpd_pvcmv02s5   := DM1.Tb_PVPVCMVD02S5.Value;       //Percentual Comissao Vendedor  status 5
       mpd_pvcmv02s6   := DM1.Tb_PVPVCMVD02S6.Value;       //Percentual Comissao Vendedor  status 6
       mpd_pvcmv02s7   := DM1.Tb_PVPVCMVD02S7.Value;       //Percentual Comissao Vendedor  status 7

       mpd_pvdf01a     := DM1.Tb_PVPVDF01A.Value;          //Percentual de desconto produto 1 de n %
       mpd_pvdf02a     := DM1.Tb_PVPVDF02A.Value;          //Percentual de desconto produto 2 de n %
       mpd_pvdf03a     := DM1.Tb_PVPVDF03A.Value;          //Percentual de desconto produto 3 de n %
       mpd_pvdf04a     := DM1.Tb_PVPVDF04A.Value;          //Percentual de desconto produto 4 de n %

       mpd_pvdf01b     := DM1.Tb_PVPVDF01B.Value;          //Percentual de desconto produto 1 a n %
       mpd_pvdf02b     := DM1.Tb_PVPVDF02B.Value;          //Percentual de desconto produto 2 a n %
       mpd_pvdf03b     := DM1.Tb_PVPVDF03B.Value;          //Percentual de desconto produto 3 a n %
       mpd_pvdf04b     := DM1.Tb_PVPVDF04B.Value;          //Percentual de desconto produto 4 a n %

       mpd_pvdf01      := DM1.Tb_PVPVDF01.Value;           //Percentual de desconto produto 1 a n %
       mpd_pvdf02      := DM1.Tb_PVPVDF02.Value;           //Percentual de desconto produto 2 a n %
       mpd_pvdf03      := DM1.Tb_PVPVDF03.Value;           //Percentual de desconto produto 3 a n %
       mpd_pvdf04      := DM1.Tb_PVPVDF04.Value;           //Percentual de desconto produto 4 a n %
       mpd_acredesreg  := DM1.Tb_PVPVACREDESREG.AsInteger; //Permitir Acrescimos/Desconto 0-Nao 1-SiM
       mpd_ajcomis     := DM1.Tb_PVPVAJCOMIS.AsInteger;    //Ajustar ComissÆo de Acordo com Acrescimos/descontos 0-Nao 1-Sim
       mpd_pvppori     := DM1.Tb_PVPVPPORI.AsInteger;        //Prazao poderado origem da informação


   end else if ptipo=1 then begin // se po99
       mpd_pvtdc       := Frm_PVO.CB_PVTPDC.ItemIndex;
       mpd_pvtc        := Frm_PVO.CB_PVTPC.ItemIndex;
       mpd_pvtpd1      := Frm_PVO.CB_PVTPD1.ItemIndex;
       mpd_pvtpd2      := Frm_PVO.CB_PVTPD2.ItemIndex;
       mpd_pvtpd3      := Frm_PVO.CB_PVTPD3.ItemIndex;
       mpd_pvtpdesf    := Frm_PVO.CB_PVTPDESF.ItemIndex;
       mpd_tpp         := Frm_PVO.CB_TPP.ItemIndex;
       mpd_pvcom01     := valfloat(Frm_PVO.COM.Text);
       mpd_pvcom02     := ValFloat(Frm_PVO.COM02.Text);
       mpd_pvcom03     := ValFloat(Frm_PVO.COM03.Text);
       mpd_pvcom04     := 0;

       mpd_pvactd      := valfloat(Frm_PVO.ACTD.Text);

       mpd_pvact00     := valfloat(Frm_PVO.ACT00.Text);
       mpd_pvact01     := ValFloat(Frm_PVO.ACT01.Text);
       mpd_pvact99     := ValFloat(Frm_PVO.ACT99.Text);

       mpd_pvdes       := ValFloat(Frm_PVO.DES.Text);
       mpd_pvdes1      := ValFloat(Frm_PVO.DES1.Text);
       mpd_pvdes2      := ValFloat(Frm_PVO.DES2.Text);
       mpd_pvdes3      := ValFloat(Frm_PVO.DES3.Text);
       mpd_pvdescf     := ValFloat(Frm_PVO.DESCF.Text);
       mpd_pvddescf    := Frm_PVO.CB_PVDDESCF.ItemIndex;
       mpd_pvdiasdescf := valint(Frm_PVO.DIASDESCF.Text);
       mpd_acredesreg  := iif(Frm_PVO.CB_ACREDESREG.Checked,1,0);
       mpd_ajcomis     := iif(Frm_PVO.CB_AJCOMIS.Checked,1,0);

       mpd_pvd1s0      := ValFloat(Frm_PVO.PVD1S0.Text);
       mpd_pvd1s1      := ValFloat(Frm_PVO.PVD1S1.Text);
       mpd_pvd1s2      := ValFloat(Frm_PVO.PVD1S2.Text);
       mpd_pvd1s3      := ValFloat(Frm_PVO.PVD1S3.Text);
       mpd_pvd1s4      := ValFloat(Frm_PVO.PVD1S4.Text);
       mpd_pvd1s5      := ValFloat(Frm_PVO.PVD1S5.Text);
       mpd_pvd1s6      := ValFloat(Frm_PVO.PVD1S6.Text);
       mpd_pvd1s7      := ValFloat(Frm_PVO.PVD1S7.Text);

       mpd_pvd2s0      := ValFloat(Frm_PVO.PVD2S0.Text);
       mpd_pvd2s1      := ValFloat(Frm_PVO.PVD2S1.Text);
       mpd_pvd2s2      := ValFloat(Frm_PVO.PVD2S2.Text);
       mpd_pvd2s3      := ValFloat(Frm_PVO.PVD2S3.Text);
       mpd_pvd2s4      := ValFloat(Frm_PVO.PVD2S4.Text);
       mpd_pvd2s5      := ValFloat(Frm_PVO.PVD2S5.Text);
       mpd_pvd2s6      := ValFloat(Frm_PVO.PVD2S6.Text);
       mpd_pvd2s7      := ValFloat(Frm_PVO.PVD2S7.Text);

       mpd_pvd3s0      := ValFloat(Frm_PVO.PVD3S0.Text);
       mpd_pvd3s1      := ValFloat(Frm_PVO.PVD3S1.Text);
       mpd_pvd3s2      := ValFloat(Frm_PVO.PVD3S2.Text);
       mpd_pvd3s3      := ValFloat(Frm_PVO.PVD3S3.Text);
       mpd_pvd3s4      := ValFloat(Frm_PVO.PVD3S4.Text);
       mpd_pvd3s5      := ValFloat(Frm_PVO.PVD3S5.Text);
       mpd_pvd3s6      := ValFloat(Frm_PVO.PVD3S6.Text);
       mpd_pvd3s7      := ValFloat(Frm_PVO.PVD3S7.Text);

       mpd_pvdfs0      := ValFloat(Frm_PVO.PVDFS0.Text);
       mpd_pvdfs1      := ValFloat(Frm_PVO.PVDFS1.Text);
       mpd_pvdfs2      := ValFloat(Frm_PVO.PVDFS2.Text);
       mpd_pvdfs3      := ValFloat(Frm_PVO.PVDFS3.Text);
       mpd_pvdfs4      := ValFloat(Frm_PVO.PVDFS4.Text);
       mpd_pvdfs5      := ValFloat(Frm_PVO.PVDFS5.Text);
       mpd_pvdfs6      := ValFloat(Frm_PVO.PVDFS6.Text);
       mpd_pvdfs7      := ValFloat(Frm_PVO.PVDFS7.Text);
       mpd_pvcms0      := ValFloat(Frm_PVO.PVCMS0.Text);
       mpd_pvcms1      := ValFloat(Frm_PVO.PVCMS1.Text);
       mpd_pvcms2      := ValFloat(Frm_PVO.PVCMS2.Text);
       mpd_pvcms3      := ValFloat(Frm_PVO.PVCMS3.Text);
       mpd_pvcms4      := ValFloat(Frm_PVO.PVCMS4.Text);
       mpd_pvcms5      := ValFloat(Frm_PVO.PVCMS5.Text);
       mpd_pvcms6      := ValFloat(Frm_PVO.PVCMS6.Text);
       mpd_pvcms7      := ValFloat(Frm_PVO.PVCMS7.Text);
       mpd_pvcmv02s0   := ValFloat(Frm_PVO.PVCMV02S0.Text);
       mpd_pvcmv02s1   := ValFloat(Frm_PVO.PVCMV02S1.Text);
       mpd_pvcmv02s2   := ValFloat(Frm_PVO.PVCMV02S2.Text);
       mpd_pvcmv02s3   := ValFloat(Frm_PVO.PVCMV02S3.Text);
       mpd_pvcmv02s4   := ValFloat(Frm_PVO.PVCMV02S4.Text);
       mpd_pvcmv02s5   := ValFloat(Frm_PVO.PVCMV02S5.Text);
       mpd_pvcmv02s6   := ValFloat(Frm_PVO.PVCMV02S6.Text);
       mpd_pvcmv02s7   := ValFloat(Frm_PVO.PVCMV02S7.Text);


       mpd_pvdf01a     := ValFloat(Frm_PVO.PVDF01A.Text);
       mpd_pvdf02a     := ValFloat(Frm_PVO.PVDF02A.Text);
       mpd_pvdf03a     := ValFloat(Frm_PVO.PVDF03A.Text);
       mpd_pvdf04a     := ValFloat(Frm_PVO.PVDF04A.Text);

       mpd_pvdf01b     := ValFloat(Frm_PVO.PVDF01B.Text);
       mpd_pvdf02b     := ValFloat(Frm_PVO.PVDF02B.Text);
       mpd_pvdf03b     := ValFloat(Frm_PVO.PVDF03B.Text);
       mpd_pvdf04b     := ValFloat(Frm_PVO.PVDF04B.Text);

       mpd_pvdf01      := ValFloat(Frm_PVO.PVDF01.Text);
       mpd_pvdf02      := ValFloat(Frm_PVO.PVDF02.Text);
       mpd_pvdf03      := ValFloat(Frm_PVO.PVDF03.Text);
       mpd_pvdf04      := ValFloat(Frm_PVO.PVDF04.Text);
       mpd_pvppori     := 0;        //Prazao poderado origem da informação

   end else if ptipo=2 then begin  // se po99 atualizar formulario
       Frm_PVO.CB_PVTPDC.ItemIndex  := mpd_pvtdc;
       Frm_PVO.CB_PVTPC.ItemIndex   := mpd_pvtc;
       Frm_PVO.CB_PVTPD1.ItemIndex  := mpd_pvtpd1;
       Frm_PVO.CB_PVTPD2.ItemIndex  := mpd_pvtpd2;
       Frm_PVO.CB_PVTPD3.ItemIndex  := mpd_pvtpd3;
       Frm_PVO.CB_PVTPDESF.ItemIndex:= mpd_pvtpdesf;
       Frm_PVO.CB_TPP.ItemIndex     := mpd_tpp;
       Frm_PVO.COM.Text             := Formatfloat(mcasas,mpd_pvcom01);
       Frm_PVO.COM02.Text           := Formatfloat(mcasas,mpd_pvcom02);
       Frm_PVO.COM03.Text           := Formatfloat(mcasas,mpd_pvcom03);
       Frm_PVO.ACTD.Text            := Formatfloat(mcasas,mpd_pvactd);
       Frm_PVO.ACT00.Text           := Formatfloat(mcasas,mpd_pvact00);
       Frm_PVO.ACT01.Text           := Formatfloat(mcasas,mpd_pvact01);
       Frm_PVO.ACT99.Text           := Formatfloat(mcasas,mpd_pvact99);
       Frm_PVO.DES.Text             := Formatfloat(mcasas,mpd_pvdes);
       Frm_PVO.DES1.Text            := Formatfloat(mcasas,mpd_pvdes1);
       Frm_PVO.DES2.Text            := Formatfloat(mcasas,mpd_pvdes2);
       Frm_PVO.DES3.Text            := Formatfloat(mcasas,mpd_pvdes3);
       Frm_PVO.DESCF.Text           := Formatfloat(mcasas,mpd_pvdescf);
       Frm_PVO.DIASDESCF.Text       := IntToStr(mpd_pvdiasdescf);
       Frm_PVO.CB_PVDDESCF.ItemIndex:= mpd_pvddescf;

       Frm_PVO.PVD1S0.Text          := Formatfloat(mcasas,mpd_pvd1s0);
       Frm_PVO.PVD1S1.Text          := Formatfloat(mcasas,mpd_pvd1s1);
       Frm_PVO.PVD1S2.Text          := Formatfloat(mcasas,mpd_pvd1s2);
       Frm_PVO.PVD1S3.Text          := Formatfloat(mcasas,mpd_pvd1s3);
       Frm_PVO.PVD1S4.Text          := Formatfloat(mcasas,mpd_pvd1s4);
       Frm_PVO.PVD1S5.Text          := Formatfloat(mcasas,mpd_pvd1s5);
       Frm_PVO.PVD1S6.Text          := Formatfloat(mcasas,mpd_pvd1s6);
       Frm_PVO.PVD1S7.Text          := Formatfloat(mcasas,mpd_pvd1s7);

       Frm_PVO.PVD2S0.Text          := Formatfloat(mcasas,mpd_pvd2s0);
       Frm_PVO.PVD2S1.Text          := Formatfloat(mcasas,mpd_pvd2s1);
       Frm_PVO.PVD2S2.Text          := Formatfloat(mcasas,mpd_pvd2s2);
       Frm_PVO.PVD2S3.Text          := Formatfloat(mcasas,mpd_pvd2s3);
       Frm_PVO.PVD2S4.Text          := Formatfloat(mcasas,mpd_pvd2s4);
       Frm_PVO.PVD2S5.Text          := Formatfloat(mcasas,mpd_pvd2s5);
       Frm_PVO.PVD2S6.Text          := Formatfloat(mcasas,mpd_pvd2s6);
       Frm_PVO.PVD2S7.Text          := Formatfloat(mcasas,mpd_pvd2s7);

       Frm_PVO.PVD3S0.Text          := Formatfloat(mcasas,mpd_pvd3s0);
       Frm_PVO.PVD3S1.Text          := Formatfloat(mcasas,mpd_pvd3s1);
       Frm_PVO.PVD3S2.Text          := Formatfloat(mcasas,mpd_pvd3s2);
       Frm_PVO.PVD3S3.Text          := Formatfloat(mcasas,mpd_pvd3s3);
       Frm_PVO.PVD3S4.Text          := Formatfloat(mcasas,mpd_pvd3s4);
       Frm_PVO.PVD3S5.Text          := Formatfloat(mcasas,mpd_pvd3s5);
       Frm_PVO.PVD3S6.Text          := Formatfloat(mcasas,mpd_pvd3s6);
       Frm_PVO.PVD3S7.Text          := Formatfloat(mcasas,mpd_pvd3s7);

       Frm_PVO.PVDFS0.Text          := Formatfloat(mcasas,mpd_pvdfs0);
       Frm_PVO.PVDFS1.Text          := Formatfloat(mcasas,mpd_pvdfs1);
       Frm_PVO.PVDFS2.Text          := Formatfloat(mcasas,mpd_pvdfs2);
       Frm_PVO.PVDFS3.Text          := Formatfloat(mcasas,mpd_pvdfs3);
       Frm_PVO.PVDFS4.Text          := Formatfloat(mcasas,mpd_pvdfs4);
       Frm_PVO.PVDFS5.Text          := Formatfloat(mcasas,mpd_pvdfs5);
       Frm_PVO.PVDFS6.Text          := Formatfloat(mcasas,mpd_pvdfs6);
       Frm_PVO.PVDFS7.Text          := Formatfloat(mcasas,mpd_pvdfs7);

       Frm_PVO.PVCMS0.Text          := Formatfloat(mcasas,mpd_pvcms0);
       Frm_PVO.PVCMS1.Text          := Formatfloat(mcasas,mpd_pvcms1);
       Frm_PVO.PVCMS2.Text          := Formatfloat(mcasas,mpd_pvcms2);
       Frm_PVO.PVCMS3.Text          := Formatfloat(mcasas,mpd_pvcms3);
       Frm_PVO.PVCMS4.Text          := Formatfloat(mcasas,mpd_pvcms4);
       Frm_PVO.PVCMS5.Text          := Formatfloat(mcasas,mpd_pvcms5);
       Frm_PVO.PVCMS6.Text          := Formatfloat(mcasas,mpd_pvcms6);
       Frm_PVO.PVCMS7.Text          := Formatfloat(mcasas,mpd_pvcms7);

       Frm_PVO.PVCMV02S0.Text       := Formatfloat(mcasas,mpd_pvcmv02s0);
       Frm_PVO.PVCMV02S1.Text       := Formatfloat(mcasas,mpd_pvcmv02s1);
       Frm_PVO.PVCMV02S2.Text       := Formatfloat(mcasas,mpd_pvcmv02s2);
       Frm_PVO.PVCMV02S3.Text       := Formatfloat(mcasas,mpd_pvcmv02s3);
       Frm_PVO.PVCMV02S4.Text       := Formatfloat(mcasas,mpd_pvcmv02s4);
       Frm_PVO.PVCMV02S5.Text       := Formatfloat(mcasas,mpd_pvcmv02s5);
       Frm_PVO.PVCMV02S6.Text       := Formatfloat(mcasas,mpd_pvcmv02s6);
       Frm_PVO.PVCMV02S7.Text       := Formatfloat(mcasas,mpd_pvcmv02s7);

       Frm_PVO.PVDF01A.Text         := FormatFloat(mcasas, mpd_pvdf01a);
       Frm_PVO.PVDF02A.Text         := FormatFloat(mcasas, mpd_pvdf02a);
       Frm_PVO.PVDF03A.Text         := FormatFloat(mcasas, mpd_pvdf03a);
       Frm_PVO.PVDF04A.Text         := FormatFloat(mcasas, mpd_pvdf04a);

       Frm_PVO.PVDF01B.Text         := FormatFloat(mcasas, mpd_pvdf01b);
       Frm_PVO.PVDF02B.Text         := FormatFloat(mcasas, mpd_pvdf02b);
       Frm_PVO.PVDF03B.Text         := FormatFloat(mcasas, mpd_pvdf03b);
       Frm_PVO.PVDF04B.Text         := FormatFloat(mcasas, mpd_pvdf04b);

       Frm_PVO.PVDF01.Text          := FormatFloat(mcasas, mpd_pvdf01);
       Frm_PVO.PVDF02.Text          := FormatFloat(mcasas, mpd_pvdf02);
       Frm_PVO.PVDF03.Text          := FormatFloat(mcasas, mpd_pvdf03);
       Frm_PVO.PVDF04.Text          := FormatFloat(mcasas, mpd_pvdf04);
       Frm_PVO.CB_ACREDESREG.Checked:= mpd_acredesreg = 1;
       Frm_PVO.CB_AJCOMIS.Checked   := mpd_ajcomis = 1;
   end;

   result:=true;
end;

procedure Tfrm_orcproducao.btn_incluirClick(Sender: TObject);
begin
   AtualizaForm(Self, True);
   StatusBtn(Self, 0);
   Self.Caption            := 'Manutenção do Cadastro de Fabrição por Encomenda - [Inclusão]';
   LimpaEdits(Self);
   QryItem_Producao.Close;
   edt_datapedido.Text     := FormatDateTime('dd/mm/yyyy',Date);
   QryItem_Producao.Active := True;
   Pedido_02_OP.mPd_Oper_Ped            := 0;
   edt_codcliente.SetFocus;
end;

procedure Tfrm_orcproducao.edt_codclienteKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
       edt_codcliente.Text := fChamaCli(0,'frm_orcproducao',key);
       edt_datapedido.OnExit(Self);
       key:=#0;
   end else begin
       if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;
end;

procedure Tfrm_orcproducao.edt_datapedidoExit(Sender: TObject);
begin
if Trim(edt_datapedido.Text)='/  /' then
    exit;
end;

procedure Tfrm_orcproducao.edt_datapedidoEnter(Sender: TObject);
begin
   mfocusman := True;
end;

procedure Tfrm_orcproducao.edt_codvendaExit(Sender: TObject);
begin
if DM1.Tb_PargerPUPVESP.Asinteger = 1 then
   cb_tabelavenda.text := 'AP';

edt_codvenda.Text := fdeixanum2(edt_codvenda.Text);

if (trim(edt_codvenda.Text) = '') or (trim(cb_tabelavenda.Text) = '') then
    exit;

if (cb_tabelavenda.Text = 'PO') and (edt_codvenda.Text = '99') then
   begin
   edt_nomevenda.Text := 'Plano Opcional(Digitado)';
   edt_nomevenda.Hint := edt_nomevenda.Text;

   if Frm_PVO.Tb_Po99_nov.IsEmpty then
      mcinst4 := 'AV'
   else
      begin
      Frm_PVO.Tb_Po99_nov.first;
      mcinst4 := '';
      while not Frm_PVO.Tb_Po99_nov.Eof do
         begin
         if trim(mcinst4) <> '' then
            mcinst4:=mcinst4+'/';
         if Frm_PVO.Tb_Po99_novPOPRAZO.AsFloat = 0 then
            mcinst4 := mcinst4 + 'AV'
         else
            mcinst4 := mcinst4+Frm_PVO.Tb_Po99_novPOPRAZO.AsString;
         Frm_PVO.Tb_Po99_nov.Next;
         end;
      end;
   Frm_PVO.Tb_Po99_nov.first;
   edt_nomevenda.Text := 'Plano Opcional(Digitado) - '+mcinst4;
   edt_nomevenda.Hint := edt_nomevenda.Text;
   end
else
   begin
   if not flcadpv(1,0,cb_tabelavenda.Text,edt_codvenda.Text) then
      begin
      mpacreconv := 0;
      if cb_tabelavenda.Text = 'CV' then
         begin
         if DM1.Tb_CliCCODCV.Value <= 0 then
            begin
            if flqr1('CVRAZAO,CVACFIN','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
               mpacreconv := DM1.Query1.Fields[1].AsFloat;
            end;
         end;
      if DM1.Tb_PVPVPRAZOS.IsNull then
         edt_nomevenda.Text := DM1.Tb_PVPVNOME.Value+'/'+DM1.Tb_PVprazos.Value+' Prazo Médio: '+DM1.Tb_PVPVPRAZOMED.AsString+iif(DM1.Tb_PVPVPRAZOMED.AsInteger>1,' dias ','dia')
      else
         edt_nomevenda.Text := DM1.Tb_PVPVNOME.Value+'/'+DM1.Tb_PVPVPRAZOS.Value+' Prazo Médio: '+DM1.Tb_PVPVPRAZOMED.AsString+iif(DM1.Tb_PVPVPRAZOMED.AsInteger>1,' dias ','dia');

      edt_nomevenda.Hint := edt_nomevenda.Text;

      fCarregaPlanoVendas(0);

      end  else begin
      mpacreconv := 0;
      if cb_tabelavenda.Text = 'CV' then
         begin
         if DM1.Tb_CliCCODCV.Value <= 0 then
            begin
            if flqr1('CVRAZAO,CVACFIN','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
               mpacreconv := DM1.Query1.Fields[1].AsFloat;
            end;
         end;
      if DM1.Tb_PVPVPRAZOS.IsNull then
         edt_nomevenda.Text := DM1.Tb_PVPVNOME.Value+'/'+DM1.Tb_PVprazos.Value+' Prazo Médio: '+DM1.Tb_PVPVPRAZOMED.AsString+iif(DM1.Tb_PVPVPRAZOMED.AsInteger>1,' dias ','dia')
      else
         edt_nomevenda.Text := DM1.Tb_PVPVNOME.Value+'/'+DM1.Tb_PVPVPRAZOS.Value+' Prazo Médio: '+DM1.Tb_PVPVPRAZOMED.AsString+iif(DM1.Tb_PVPVPRAZOMED.AsInteger>1,' dias ','dia');

      edt_nomevenda.Hint := edt_nomevenda.Text;

      fCarregaPlanoVendas(0);
      end;
   end;

if (ant_codpv <> '') and (trim(cb_tabelavenda.Text)+FormatFloat('0000',ValFloat(edt_codvenda.Text)) <> ant_codpv) then
   begin
   if fValidaSenha(0,codusr,32,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração do Plano de Vendas Padrão','') <> 0 then
      begin
      verteclado(0);
      fMensagem('Alteração não Aceita!',0,['0'],0);
      cb_tabelavenda.Text := copy(ant_codpv,1,2);
      edt_codvenda.Text   :=copy(ant_codpv,3,length(ant_codpv)-2);

      if DM1.Tb_PargerPUPVESP.Asinteger = 1 then
         edt_codvenda.SetFocus
      else
         cb_tabelavenda.SetFocus;

      exit;
      end;
   end;   


if (ant_codpv <> '') and (trim(cb_tabelavenda.Text)+FormatFloat('0000',ValFloat(edt_codvenda.Text)) <> ant_codpv) then
   begin
   ant_codpv := Trim(cb_tabelavenda.Text)+FormatFloat('0000',ValFloat(edt_codvenda.Text));
   end;
end;

procedure Tfrm_orcproducao.edt_codvendaEnter(Sender: TObject);
begin
   mfocusman := true;

   if (trim(ant_codpv)= '' ) and (Trim(cb_tabelavenda.Text) <> '') and (ValInt(edt_codvenda.Text) > 0) and (Trim(edt_nomevenda.Text) <> '') then
      ant_codpv := Trim(cb_tabelavenda.Text)+FormatFloat('0000',ValFloat(edt_codvenda.Text));
end;

procedure Tfrm_orcproducao.edt_codvendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = 113 then begin
      if Frm_PV = nil then
         Application.CreateForm(Tfrm_Pv, Frm_Pv)
      else begin
         Frm_PV.Free;
         Frm_PV:=nil;
         Application.CreateForm(Tfrm_Pv, Frm_Pv);
      end;

      Frm_Pv.Edit1.Text := '';
      Frm_Pv.BBnAtu.Click;
      Frm_Pv.Edit1.SelStart   := 1;
      Frm_Pv.Edit1.SelLength  := 1;
      Frm_Pv.PC1.ActivePage   := Frm_PV.tsTab;
      pv_ori := 'Pedido_02_OP';
      if mFormstayontop then
         Frm_PV.FormStyle := fsStayOnTop;

      if Frm_Pv.ShowModal = mrok then begin
         cb_tabelavenda.Text := DM1.Tb_PVPVCODTIP.Value;

         with cb_tabelavenda do
           ItemIndex := items.IndexOf(cb_tabelavenda.Text);

         edt_codvenda.Text   := DM1.Tb_PVPVCODPV.AsString;

      end;

      Frm_Pv.Free;
      Frm_Pv:=nil;
   end;
end;

procedure Tfrm_orcproducao.edt_codvendaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      if Frm_PV = nil then
         Application.CreateForm(Tfrm_Pv, Frm_Pv)
      else begin
         Frm_Pv.free;
         Frm_Pv := nil;
         Application.CreateForm(Tfrm_Pv, Frm_Pv);
      end;

      Frm_Pv.Edit1.Text := key;
      Frm_Pv.BBnAtu.Click;
      Frm_Pv.Edit1.SelStart:=1;
      Frm_Pv.Edit1.SelLength:=1;
      Frm_Pv.PC1.ActivePage:=Frm_PV.tsTab;

      pv_ori := 'Frm_Ped';

      if mFormstayontop then
         Frm_PV.FormStyle := fsStayOnTop;

      if Frm_Pv.ShowModal = mrok then begin
         cb_tabelavenda.Text := DM1.Tb_PVPVCODTIP.Value;
         edt_codvenda.Text   := DM1.Tb_PVPVCODPV.AsString;
      end;

      Frm_Pv.Free;
      Frm_Pv := nil;
      key    := #0;
   end else
      if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure Tfrm_orcproducao.edt_codprodutoDblClick(Sender: TObject);
begin
  mpd_ant_codpro:=fSonumero(edt_codproduto.Text);
end;

procedure Tfrm_orcproducao.edt_codprodutoEnter(Sender: TObject);
begin
   if ValInt(edt_codcliente.Text) = 0 then begin
      fmensagem('Favor informar Código do Cliente!',0,['0'],0);
      edt_codcliente.SetFocus;
      Exit;
   end;

   mpd_ant_codpro := ValFloat(edt_codproduto.Text);

   if Trim(edt_codproduto.Text) <> '' then begin
      if DM1.Tb_PargerPCODPROPADFAT.Value = 2 then begin
         if flcadpro(1,0,0,Trim(edt_codproduto.Text)) then
            edt_codproduto.Text := DM1.Tb_ProPDMARCA.AsString;
      end else if DM1.Tb_PargerPCODPROPADFAT.Value = 1 then begin
         if flcadpro(1,0,0,Trim(edt_codproduto.Text)) then
            edt_codproduto.Text := DM1.Tb_ProPDCODBAR.AsString;
      end;
   end;
end;

procedure Tfrm_orcproducao.edt_codprodutoExit(Sender: TObject);
begin
   if (not QryItem_Producao.IsEmpty) and (Trim(edt_codproduto.Text) = '') then
      Exit;

   if not flcadpro(1,0,0,fdeixanum(edt_codproduto.Text)) then begin
      edt_codproduto.Text:=FloatToStr(fAchaCodigoOri(edt_codproduto.Text));
      if not flcadpro(1,0,0,edt_codproduto.Text) then begin
         verteclado(0);
         fMensagem('Produto não cadastrado!',0,['0'],0);
         edt_codproduto.SetFocus;
         exit;
      end;

      edt_codproduto.Text:=DM1.Tb_ProPDCODPRO.AsString;
   end;

   edt_codproduto.Text:=DM1.Tb_ProPDCODPRO.AsString;
   edt_descricao.Text :=DM1.Tb_ProPDNOME.Value;
   edt_unid.Text      :=DM1.Tb_ProPDUND.AsString;

   if (mop=0) or ((mop=1) and (ValFloat(edt_vlrunitario.Text)=0)) then begin
      if DM1.Tb_ProPDPRECO1.Value>0 then
         edt_vlrunitario.Text:=Formatfloat(pf01_caspu,DM1.Tb_ProPDPRECO1.Value)
      else
         edt_vlrunitario.Text:=Formatfloat(pf01_caspu,DM1.Tb_ProPDPRECOC.Value);
   end;

   if Trim(edt_codproduto.Text) <> '' then
      edt_descricaocomplemento.SetFocus;
end;

procedure Tfrm_orcproducao.edt_codprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if key = 113 then begin
      if DM1.Tb_PargerPCODPROPADFAT.Value = 2 then
         edt_codproduto.Text := fChamaPro(3,'Frm_Pfor01','')
      else if DM1.Tb_PargerPCODPROPADFAT.Value = 1 then
         edt_codproduto.Text := fChamaPro(1,'Frm_Pfor01','')
      else if DM1.Tb_PargerPPCOGRA.Value = 1 then
         edt_codproduto.Text := fChamaPro(2,'Frm_Pfor01','')
      else
         edt_codproduto.Text:=fChamaPro(0,'Frm_Pfor01','');
      key := 0;
      edt_codprodutoExit(Self);
   end;
end;

procedure Tfrm_orcproducao.edt_codprodutoKeyPress(Sender: TObject; var Key: Char);
begin
   if (Length(edt_codproduto.Text) > 14) and (key <> #8) then
      key := #0
   else if (DM1.Tb_PargerPCODPROPADFAT.Value <> 2) and  (key in ['A'..'Z']) or (key in ['a'..'z']) then begin
      if (DM1.Tb_PargerPPCOGRA.Value = 1) then begin
         edt_codproduto.Text := fChamaPro(2,'Frm_Ped',key)
      end else begin
         edt_codproduto.Text := fChamaPro(0,'Frm_pesqprod',key);
      end;

      key := #0;
      edt_codprodutoExit(self);
   end;
end;

procedure Tfrm_orcproducao.btn_gravarClick(Sender: TObject);
begin
   if (trim(edt_codcliente.Text)='') then begin
      fMensagem('Favor Digitar um Código de cliente Válido!',0,['0'],0);
      edt_codcliente.SetFocus;
      exit;
   end;

   if Trim(edt_datapedido.Text) = '/  /' then begin
      fMensagem('Favor informar uma Data válida do Orçamento de Fabrição por Encomenda!',0,['0'],0);
      edt_datapedido.SetFocus;
      Exit;
   end;

   if Trim(edt_codvenda.Text) = '' then begin
      fMensagem('Favor infomar Código de Venda para Plano de Vendas!',0,['0'],0);
      edt_codvenda.SetFocus;
      Exit;
   end;

   if not QryItem_Producao.IsEmpty then begin

      {---verifica se ja existe Registro---}

      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      DM1.Query4.SQL.Add(' SELECT PROD1CHAVE FROM CADPROD_01 WHERE PROD1EMP =:pEmp AND PROD1CHAVE =:pChave ');
      DM1.Query4.ParamByName('pEmp').AsFloat    := codemp;
      DM1.Query4.ParamByName('pChave').AsFloat  := ValInt(edt_chave.Text);
      DM1.Query4.Open;

      if not DM1.Query4.IsEmpty then begin
         DM1.Query4.Close;
         DM1.Query4.SQL.Clear;
         DM1.Query4.SQL.Add(' DELETE FROM CADPROD_01 WHERE PROD1EMP =:pEmp AND PROD1CHAVE =:pChave ');
         DM1.Query4.ParamByName('pEmp').AsFloat    := codemp;
         DM1.Query4.ParamByName('pChave').AsFloat  := ValInt(edt_chave.Text);

         try
           DM1.Query4.ExecSQL;
           fdm1StartCommit;
         except

         end;
      end;

      {---Grava a Capa do Pedido---}
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add(' INSERT INTO CADPROD_01( '+
                         '   PROD1EMP,             '+
                         '   PROD1CHAVE,           '+
                         '   PROD1DATA,            '+
                         '   PROD1CODCLI,          '+
                         '   PROD1TABPV,           '+
                         '   PROD1DATHOR,          '+
                         '   PROD1CODUSR,          '+
                         '   PROD1STATUS)          '+
                         ' VALUES(                 '+
                         '   :PROD1EMP,            '+
                         '   :PROD1CHAVE,          '+
                         '   :PROD1DATA,           '+
                         '   :PROD1CODCLI,         '+
                         '   :PROD1TABPV,          '+
                         '   :PROD1DATHOR,         '+
                         '   :PROD1CODUSR,         '+
                         '   :PROD1STATUS)         ');

     if Trim(edt_chave.Text) = '' then begin
        DM1.Query2.Close;
        DM1.Query2.SQL.Clear;
        DM1.Query2.SQL.Add(' SELECT MAX(PROD1CHAVE) as CHAVE FROM CADPROD_01 WHERE PROD1EMP =:pCodEmp');
        DM1.Query2.ParamByName('pCodEmp').AsInteger := codemp;
        DM1.Query2.Open;

        if not DM1.Query2.IsEmpty then begin
           xChave          := DM1.Query2.FieldByName('CHAVE').AsInteger + 1;
           edt_chave.Text  := FloatToStr(xChave);
        end else begin
           xChave          := xChave + 1;
           edt_chave.Text  := FloatToStr(xChave);
        end;
     end else begin
        xChave := ValInt(edt_chave.Text);
     end;

     DM1.Query1.ParamByName('PROD1EMP').AsFloat       := codemp;
     DM1.Query1.ParamByName('PROD1CHAVE').AsFloat     := xChave;
     DM1.Query1.ParamByName('PROD1DATA').AsDateTime   := StrToDate(edt_datapedido.Text);
     DM1.Query1.ParamByName('PROD1CODCLI').AsFloat    := ValInt(edt_codcliente.Text);
     DM1.Query1.ParamByName('PROD1TABPV').AsString    := cb_tabelavenda.Text;
     DM1.Query1.ParamByName('PROD1DATHOR').AsDateTime := Now;
     DM1.Query1.ParamByName('PROD1CODUSR').AsFloat    := codusr;
     DM1.Query1.ParamByName('PROD1STATUS').AsFloat    := 1;

     try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
     except
       fMensagem('Erro ao Gravar o Registro!',0,['0'],0);

     end;


     DM1.Query4.Close;
     DM1.Query4.SQL.Clear;
     DM1.Query4.SQL.Add(' SELECT PROD2CHAVE FROM CADPROD_02 WHERE PROD2EMP =:pEmp AND PROD2CHAVE =:pChave ');
     DM1.Query4.ParamByName('pEmp').AsFloat    := codemp;
     DM1.Query4.ParamByName('pChave').AsFloat  := ValInt(edt_chave.Text);
     DM1.Query4.Open;

     if not DM1.Query4.IsEmpty then begin
        DM1.Query4.Close;
        DM1.Query4.SQL.Clear;
        DM1.Query4.SQL.Add(' DELETE FROM CADPROD_02 WHERE PROD2EMP =:pEmp AND PROD2CHAVE =:pChave ');
        DM1.Query4.ParamByName('pEmp').AsFloat    := codemp;
        DM1.Query4.ParamByName('pChave').AsFloat  := ValInt(edt_chave.Text);

        try
          DM1.Query4.ExecSQL;
          fdm1StartCommit;
        except

        end;
     end;

     {---Gravar Item do Orcamento Producao---}
     QryItem_Producao.First;
     while not QryItem_Producao.Eof do begin
        DM1.Query3.Close;
        DM1.Query3.Sql.Clear;
        DM1.Query3.SQL.Add(' INSERT INTO CADPROD_02( '+
                           '   PROD2EMP,             '+
                           '   PROD2CHAVE,           '+
                           '   PROD2CODPRO,          '+
                           '   PROD2DESC_COMPL,      '+
                           '   PROD2DESC_REMES,      '+
                           '   PROD2VLUNIT,          '+
                           '   PROD2QTD_UTILIZ,      '+
                           '   PROD2QTD_SOBRA,       '+
                           '   PROD2QTD_QUEBRA,      '+
                           '   PROD2QTD_OUTROS,      '+
                           '   PROD2VLTOT,           '+
                           '   PROD2DATHOR,          '+
                           '   PROD2CODUSR,          '+
                           '   PROD2STATUS)          '+
                           ' VALUES(                 '+
                           '   :PROD2EMP,            '+
                           '   :PROD2CHAVE,          '+
                           '   :PROD2CODPRO,         '+
                           '   :PROD2DESC_COMPL,     '+
                           '   :PROD2DESC_REMES,     '+
                           '   :PROD2VLUNIT,         '+
                           '   :PROD2QTD_UTILIZ,     '+
                           '   :PROD2QTD_SOBRA,      '+
                           '   :PROD2QTD_QUEBRA,     '+
                           '   :PROD2QTD_OUTROS,     '+
                           '   :PROD2VLTOT,          '+
                           '   :PROD2DATHOR,         '+
                           '   :PROD2CODUSR,         '+
                           '   :PROD2STATUS)         ');
        DM1.Query3.ParamByName('PROD2EMP').AsFloat         := codemp;
        DM1.Query3.ParamByName('PROD2CHAVE').AsFloat       := xChave;
        DM1.Query3.ParamByName('PROD2CODPRO').AsFloat      := QryItem_ProducaoPRO.AsFloat;
        DM1.Query3.ParamByName('PROD2DESC_COMPL').AsString := QryItem_ProducaoDESC_COMPL.AsString;
        DM1.Query3.ParamByName('PROD2DESC_REMES').AsString := QryItem_ProducaoDESC_REMES.AsString;
        DM1.Query3.ParamByName('PROD2VLUNIT').AsFloat      := QryItem_ProducaoVLR_UNIT.AsFloat;
        DM1.Query3.ParamByName('PROD2QTD_UTILIZ').AsFloat  := QryItem_ProducaoQTD_UTILIZ.AsFloat;
        DM1.Query3.ParamByName('PROD2QTD_SOBRA').AsFloat   := QryItem_ProducaoQTD_SOBRA.AsFloat;
        DM1.Query3.ParamByName('PROD2QTD_QUEBRA').AsFloat  := QryItem_ProducaoQTD_QUEBRA.AsFloat;
        DM1.Query3.ParamByName('PROD2QTD_OUTROS').AsFloat  := 0;
        DM1.Query3.ParamByName('PROD2VLTOT').AsFloat       := QryItem_ProducaoVLTOT.AsFloat;
        DM1.Query3.ParamByName('PROD2DATHOR').AsDateTime   := Now;
        DM1.Query3.ParamByName('PROD2CODUSR').AsFloat      := codusr;
        DM1.Query3.ParamByName('PROD2STATUS').asFloat      := 1;

        try
           DM1.Query3.ExecSQL;
           fdm1StartCommit;
        except
           //fMensagem('Erro ao Gravar o Registro!',0,['0'],0);

        end;

        QryItem_Producao.Next;
     end;

     if flcadactab(0,0,IntToStr(codcar),'CADPROD_01') then begin
         if DM4.Tb_AcTabAT_INC.Value = 1 then
            bbpinc_true := False;
         if DM4.Tb_AcTabAT_ALT.Value = 1 then
            bbpalt_true := False;
         if DM4.Tb_AcTabAT_EXC.Value = 1 then
            bbpexc_true := False;
         if DM4.Tb_AcTabAT_REL.Value = 1 then
            bbprel_true := False;
     end else begin
         bbpinc_true := True;
         bbpalt_true := True;
         bbpexc_true := True;
         bbprel_true := True;
     end;

     fAtualizaBotoes(0);
     AtualizaForm(Self, False);
     StatusBtn(Self, 2);
     Self.Caption := 'Manutenção do Cadastro de Fabrição por Encomenda';
     btn_incluir.SetFocus;

   end else begin
      fMensagem('Favor informar Item de Oraçamento para Gravação do msemo!',0,['0'],0);
      Exit;
   end;

end;

procedure Tfrm_orcproducao.btn_localizarClick(Sender: TObject);
var
  mQtd,
  x      : Integer;
begin

mpd_ordem := 0;
Pedido_02_OP.Caption := 'Manutenção do Cadastro de Pedidos ';

if Pedido_02_OP.mPd_Oper_Ped<>3 then
   begin
   ori_pedcli:='frm_ped';
   if Frm_PedCli=nil then
      Application.CreateForm(TFrm_PedCli, Frm_PedCli)
   else
      begin
      Frm_PedCli.Free;
      Frm_PedCli := nil;
      Application.CreateForm(TFrm_PedCli, Frm_PedCli);
      end;
   if mFormstayontop then
      Frm_PedCli.FormStyle:=fsStayOnTop;
   Frm_PedCli.ShowModal;
   mpd_chave := ValInt(Frm_PedCli.chave.Text);
   if mpd_chave=0 then
      exit;

   edt_chave.Text             := Frm_PedCli.chave.Text;
   xChave                     := ValInt(edt_chave.Text); 
   Frm_PedCli.Tab_Mer.Visible := False;
   Frm_PedCli.Tab_Ser.Visible := False;

   fped01compsql(mpd_chave);
   Frm_PedCli.Free;
   Frm_PedCli := nil;
      if trim(msql_ped01)='' then
      begin
      fMensagem('Pedido não encontrado!',0,['0'],0);
      exit;
      end;
   end
else
   begin
   msql_ped01  := '(P1CODEMP=0'+IntToStr(codemp) +' or '+'P1CODEMP=0' +IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P1LOTSEQ =0'+IntToStr(Pedido_02_OP.mPd_LotSeq)+' and p1CHAVE=0'+IntToStr(mpd_chave);
   msql_ped01d := '(P1DCODEMP=0'+IntToStr(codemp)+' or '+'P1DCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P1DLOTSEQ=0'+IntToStr(Pedido_02_OP.mPd_LotSeq)+' and P1DCHAVE=0'+IntToStr(mpd_chave);
   msql_ped01v := '(P1VCODEMP=0'+IntToStr(codemp)+' or '+'P1VCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P1VLOTSEQ=0'+IntToStr(Pedido_02_OP.mPd_LotSeq)+' and P1VCHAVE=0'+IntToStr(mpd_chave);
   msql_ped02  := '(P2CODEMP =0'+IntToStr(codemp)+' or '+'P2CODEMP =0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P2LOTSEQ =0'+IntToStr(Pedido_02_OP.mPd_LotSeq)+' and P2CHAVE =0'+IntToStr(mpd_chave);
   msql_ped02mp:= '(P2MP_CODEMP =0'+IntToStr(codemp)+' or '+'P2MP_CODEMP =0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P2MP_LOTSEQ =0'+IntToStr(Pedido_02_OP.mPd_LotSeq)+' and P2MP_CHAVE =0'+IntToStr(mpd_chave);
   msql_ped02d := '(P2DCODEMP=0'+IntToStr(codemp)+' or '+'P2DCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P2DLOTSEQ=0'+IntToStr(Pedido_02_OP.mPd_LotSeq)+' and P2DCHAVE=0'+IntToStr(mpd_chave);
   msql_ped02s := '(P2SCODEMP=0'+IntToStr(codemp)+' or '+'P2SCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P2SLOTSEQ=0'+IntToStr(Pedido_02_OP.mPd_LotSeq)+' and P2SCHAVE=0'+IntToStr(mpd_chave);
   msql_ped02_trocas := '(P2TRO_CODEMP=0'+IntToStr(codemp)+' or '+'P2TRO_CODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P2TRO_LOTSEQ=0'+IntToStr(Pedido_02_OP.mPd_LotSeq)+' and P2TRO_CHAVE=0'+IntToStr(mpd_chave);

   msql_pedfp  := '(PFPCODEMP=0'+IntToStr(codemp)+' or '+'PFPCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and PFPLOTSEQ=0'+IntToStr(Pedido_02_OP.mPd_LotSeq)+' and PFPCHAVE=0'+IntToStr(mpd_chave);
   msql_ped01_orc := 'P1ORC_CODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' and P1ORC_LOTSEQ=0'+IntToStr(Pedido_02_OP.mPd_LotSeq)
                    +' and P1ORC_CHAVE=0'+IntToStr(mpd_chave);

   if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      msql_ped02 := msql_ped02+' and '
     +fla_EmpBaixaAlta(0,codemp,'PDCODEMP','');


   msql_ped02 := msql_ped02+' and PDCODPRO=P2CODPRO ';

   if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      msql_ped02s := msql_ped02s+' and PDCODEMP=P2SCODEMP ';

   msql_ped02s := msql_ped02s+' and PDCODPRO=P2SCODPRO ';


   if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      msql_ped02_trocas := msql_ped02_trocas+' and PDCODEMP=P2TRO_CODEMP ';

   msql_ped02_trocas := msql_ped02_trocas+' and PDCODPRO=P2TRO_CODPRO_SAIDA ';

   if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then

      msql_ped02mp := msql_ped02mp+' and '
        +fla_EmpBaixaAlta(0,codemp,'PDCODEMP','');

   msql_ped02mp := msql_ped02mp+' and PDCODPRO=P2MP_CODPRO ';


   mpd_ordem:=0;
   end;

if (mpd_chave>0) or (Pedido_02_OP.mPd_ori='consulta') then
   begin
   if not Pedido_02_OP.mpd_RestaurandoPedido then
      begin
      Application.CreateForm(TFrm_Agde, Frm_Agde);
      Frm_Agde.Label1.Caption := 'Carregando os dados. Aguarde';
      Frm_Agde.Show;
      Frm_Agde.Update;
      end;
   if Pedido_02_OP.mPd_ori='consulta' then
      begin
      fPed01lerant(0);
      StatusBtn(Self, 2);
      end
   else
      begin
      StatusBtn(Self, 2);
      end;



   if (Pedido_02_OP.mPd_ori<>'consulta') then
      begin
      DM4.Qr_Ped01.Close;
      DM4.Qr_Ped01.Sql.Clear;
      DM4.Qr_Ped01.sQl.add('Select * from CADP01 where P1STATUS<>9 and ');
      DM4.Qr_Ped01.SQL.Add(msql_ped01+' order by P1CODEMP,P1CHAVE,P1ORDEM');
      DM4.Qr_Ped01.Open;
      if DM4.Qr_Ped01.Eof then
         begin
         LimpaEdits(Self);
         fMensagem('Chave não encontrado!',0,['0'],0);
         if not Pedido_02_OP.mpd_RestaurandoPedido then
            begin
            Frm_Agde.Free;
            Frm_Agde:=nil;
            exit;
            end;
         end;
      Pedido_02_OP.mPed_formace              := DM4.Qr_Ped01P1FORMACE.AsInteger;

      submod_ant:=0;

      if DM4.Qr_Ped01.Locate('P1CODEMP',codemp,[]) then
         begin
         DM4.Qr_Ped01.First;

         if DM4.Qr_Ped01.Locate('P1CODEMP',codemp,[]) then
            begin
            DM4.Qr_Ped01.First;
            end;
         end;


      if (DM4.Qr_Ped01P1SEPAMB.AsInteger=0) or (DM1.Tb_PargerPFATDPRO.AsInteger>0) then
          flQrPed02(1,0,Pedido_02_OP.mPed_formace, msql_ped02,DM1.Qr_EventoCODNOV.Asfloat,0)
      else
          flQrPed02(3,0,Pedido_02_OP.mPed_formace, msql_ped02,DM1.Qr_EventoCODNOV.Asfloat,0);

      fCarregarTabTemp(0);
      end
   else
      begin

      flQrPed01V(1,Pedido_02_OP.mGerarDup,msql_ped01v,DM1.Qr_EventoCODNOV.Asfloat);
      if (Pedido_02_OP.cb_tabelavenda.Text='PP') then
         begin
         if (DM4.Qr_Ped01P1SEPAMB.AsInteger=0) or (DM1.Tb_PargerPFATDPRO.AsInteger>0) then
            flQrPed02(1,0,Pedido_02_OP.mPed_formace, msql_ped02,DM1.Qr_EventoCODNOV.Asfloat,DM1.Tb_PVPVPPORI.AsInteger+1)
         else
            flQrPed02(3,0,Pedido_02_OP.mPed_formace, msql_ped02,DM1.Qr_EventoCODNOV.Asfloat,DM1.Tb_PVPVPPORI.AsInteger+1);
         end
      else
         begin
         if (DM4.Qr_Ped01P1SEPAMB.AsInteger=0) or (DM1.Tb_PargerPFATDPRO.AsInteger>0) then
            flQrPed02(1,0,Pedido_02_OP.mPed_formace, msql_ped02,DM1.Qr_EventoCODNOV.Asfloat,0)
         else
            flQrPed02(3,0,Pedido_02_OP.mPed_formace, msql_ped02,DM1.Qr_EventoCODNOV.Asfloat,0);
         end;

      end;

      //fCarregarTabTemp(0);
   end;

   flcadcli(1,0,DM4.Qr_Ped01P1CODCLI.AsString);
   flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);

   edt_chave.Text          :=DM4.Qr_Ped01P1CHAVE.AsString;
   edt_codcliente.Text     :=DM4.Qr_Ped01P1CODCLI.AsString;
   edt_nomecliente.Text    :=DM1.Tb_CliCRAZAO.Value;
   pldr_nome               :=edt_nomecliente.Text;
   edt_datapedido.Text     :=FormatDatetime(fdt2,DM4.Qr_Ped01P1DATAP.Value);
   cb_tabelavenda.Text     :=DM4.Qr_Ped01P1TABPV.AsString;
   edt_codvenda.Text       :=DM4.Qr_Ped01P1CODPV.AsString;
   edt_qtdeitens.Text      :=IntToStr(xvarItem);
   edt_codvendaExit(Self);


   if not Pedido_02_OP.mpd_RestaurandoPedido then begin
      Frm_Agde.Free;
     Frm_Agde:=nil;
   end;

   btn_alterar.SetFocus;

end;

function Tfrm_orcproducao.fped01compsql(ptipo: Integer): Boolean;
var
  mcomp: String;
begin
  msql_ped01 :='';
  msql_ped01d:='';
  msql_ped02mp:='';
  msql_ped01v:='';
  msql_ped02 :='';
  msql_ped02d:='';
  msql_ped02s:='';
  msql_pedFP :='';
  msql_ped01_orc:='';
  msql_ped02_trocas:='';

  Frm_PedCli.Tb_Ped.First;
  mcomp:='( (';
  While not Frm_PedCli.Tb_Ped.Eof do begin
     if Frm_PedCli.Tb_PedP1CHAVE.AsInteger<>ptipo then begin
        Frm_PedCli.Tb_Ped.Next;
        Continue;
     end;
     msql_ped01 :=msql_ped01+mcomp
                 +'P1CODEMP=0'+Frm_PedCli.Tb_PedP1CODEMP.AsString
                 +' and P1LOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and P1CHAVE=0'+Frm_PedCli.Tb_PedP1CHAVE.AsString
                 +' and P1ORDEM=0'+Frm_PedCli.Tb_PedP1ORDEM.AsString;
     msql_ped01d:=msql_ped01d+mcomp
                 +'P1DCODEMP=0'+Frm_PedCli.Tb_PedP1CODEMP.AsString
                 +' and P1DLOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and P1DCHAVE=0'+Frm_PedCli.Tb_PedP1CHAVE.AsString
                 +' and P1DORDEM=0'+Frm_PedCli.Tb_PedP1ORDEM.AsString;
     msql_ped01v:=msql_ped01v+mcomp
                 +'P1VCODEMP=0'+Frm_PedCli.Tb_PedP1CODEMP.AsString
                 +' and P1VLOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and P1VCHAVE=0'+Frm_PedCli.Tb_PedP1CHAVE.AsString
                 +' and P1VORDEM=0'+Frm_PedCli.Tb_PedP1ORDEM.AsString;
     msql_ped02 :=msql_ped02+mcomp
                 +'P2CODEMP=0'+Frm_PedCli.Tb_PedP1CODEMP.AsString
                 +' and P2LOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and P2CHAVE=0'+Frm_Pedcli.Tb_PedP1CHAVE.AsString
                 +' and P2ORDEM=0'+Frm_PedCli.Tb_PedP1ORDEM.AsString;

     msql_ped02d:=msql_ped02d+mcomp
                 +'P2DCODEMP=0'+Frm_PedCli.Tb_PedP1CODEMP.AsString
                 +' and P2DLOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and P2DCHAVE=0'+Frm_PedCli.Tb_PedP1CHAVE.AsString
                 +' and P2DORDEM=0'+Frm_PedCli.Tb_PedP1ORDEM.AsString;

     msql_ped02mp:=msql_ped02mp+mcomp
                 +'P2MP_CODEMP=0'+Frm_PedCli.Tb_PedP1CODEMP.AsString
                 +' and P2MP_LOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and P2MP_CHAVE=0'+Frm_PedCli.Tb_PedP1CHAVE.AsString;

     msql_ped02s:=msql_ped02s+mcomp
                 +'P2SCODEMP=0'+Frm_PedCli.Tb_PedP1CODEMP.AsString
                 +' and P2SLOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and P2SCHAVE=0'+Frm_PedCli.Tb_PedP1CHAVE.AsString
                 +' and P2SORDEM=0'+Frm_PedCli.Tb_PedP1ORDEM.AsString;

     msql_ped02_trocas:=msql_ped02_trocas+mcomp
                 +' P2TRO_CODEMP=0'+Frm_PedCli.Tb_PedP1CODEMP.AsString
                 +' and P2TRO_LOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and P2TRO_CHAVE=0'+Frm_PedCli.Tb_PedP1CHAVE.AsString;



     msql_pedFP:=msql_pedfp+mcomp
                 +'PFPCODEMP=0'+Frm_PedCli.Tb_PedP1CODEMP.AsString
                 +' and PFPLOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and PFPCHAVE=0'+Frm_PedCli.Tb_PedP1CHAVE.AsString;
     msql_ped01_orc:=msql_ped01_ORC+mcomp
                 +' P1ORC_CODEMP=0'+IntTostr(Frm_PedCli.Tb_PedP1CODEMP.asinteger-
                                    iif(Frm_PedCli.Tb_PedP1CODEMP.asinteger>100,100,0))
                 +' and P1ORC_LOTSEQ=0'+Frm_PedCli.Tb_PedP1LOTSEQ.AsString
                 +' and P1ORC_CHAVE=0'+Frm_PedCli.Tb_PedP1CHAVE.AsString;


     mcomp:=') or (';
     Frm_PedCli.Tb_Ped.Next;
  end;

  if mcomp=') or (' then begin
     mcomp:=')) ';
     msql_ped01 :=msql_ped01 +mcomp;
     msql_ped01d:=msql_ped01d+mcomp;
     msql_ped01v:=msql_ped01v+mcomp;
     msql_ped02 :=msql_ped02 +mcomp;
     msql_ped02mp :=msql_ped02mp +mcomp;

     if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
        begin
        msql_ped02:=msql_ped02+' and '
        +fla_EmpBaixaAlta(0,Frm_PedCli.Tb_PedP1CODEMP.Asinteger,'PDCODEMP','');
        end;
     msql_ped02:=msql_ped02+' and PDCODPRO=P2CODPRO ';
     msql_ped02d:=msql_ped02d+mcomp;
     msql_ped02s:=msql_ped02s+mcomp;

     msql_ped02_trocas:=msql_ped02_trocas+mcomp;

     if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
        msql_ped02S:=msql_ped02S+' and '
        +fla_EmpBaixaAlta(0,Frm_PedCli.Tb_PedP1CODEMP.Asinteger,'PDCODEMP','');
     msql_ped02S:=msql_ped02S+' and PDCODPRO=P2SCODPRO ';

     if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
        msql_ped02_trocas:=msql_ped02_trocas+' and '
        +fla_EmpBaixaAlta(0,Frm_PedCli.Tb_PedP1CODEMP.Asinteger,'PDCODEMP','');
     msql_ped02_trocas:=msql_ped02_trocas+' and PDCODPRO=P2TRO_CODPRO_SAIDA ';

     if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
        begin
        msql_ped02MP:=msql_ped02MP+' and '
        +fla_EmpBaixaAlta(0,Frm_PedCli.Tb_PedP1CODEMP.Asinteger,'PDCODEMP','');
        end;
     msql_ped02MP:=msql_ped02MP+' and PDCODPRO=P2MP_CODPRO ';


     msql_pedFP :=msql_pedFP+mcomp;
     msql_ped01_ORC:=msql_ped01_ORC+mcomp;
  end;

  result:=True;
end;

function Tfrm_orcproducao.fPed01lerant(ptipo: Integer):Boolean;
var
  x,mcod  : Integer;
  minstru : String;
  v       : String;
begin
  minstru:=' Select ';
  v:='';
  for x:=0 to DM4.Qr_Ped01.FieldCount-1 do begin
      if DM4.Qr_Ped01.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM4.Qr_Ped01.Fields[x].FieldName;
      v:=',';
  end;

  minstru:=minstru+' from OLD_CADP01 where P1CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
  DM4.Qr_Ped01.Close;
  DM4.Qr_Ped01.SQL.Clear;
  DM4.Qr_Ped01.SQL.add(minstru);
  DM4.Qr_Ped01.Open;

  Result:=True;
end;

function Tfrm_orcproducao.fCarregarTabTemp(ptipo: Integer): Boolean;
begin
if QryItem_Producao.Active then
   QryItem_Producao.Close;
QryItem_Producao.Open;

xValorTotal         := 0;
xTotalQtde          := 0;
xvarItem            := 0;
edt_totsobra.Value  := 0;
edt_totquebra.Value := 0;
While not DM4.Qr_Ped02.Eof do
   begin
   QryItem_Producao.Insert;
   QryItem_ProducaoCODEMP.Value      := DM4.Qr_Ped02.FieldByName('P2CODEMP').AsFloat;
   QryItem_ProducaoCHAVE.Value       := DM4.Qr_Ped01.FieldByName('P1CHAVE').AsFloat;
   QryItem_ProducaoPRO.Value         := DM4.Qr_Ped02.FieldByName('P2CODPRO').AsFloat;
   QryItem_ProducaoUnidade.Value     := DM4.Qr_Ped02.FieldByName('PDUND').AsString;
   QryItem_ProducaoQTD_UTILIZ.Value  := DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat;
   QryItem_ProducaoQTD_SOBRA.Value   := 0;
   QryItem_ProducaoQTD_QUEBRA.Value  := 0;
   QryItem_ProducaoVLR_UNIT.Value    := Arredonda(DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat,mcasaspu_ped);
   QryItem_ProducaoNomeProduto.Value := DM4.Qr_Ped02.FieldByName('PDNOME').AsString;
   QryItem_ProducaoVLTOT.Value       := Arredonda(DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat,mcasaspu_ped) * DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat;


   QryItem_Producao.Post;

   xvarItem    := xvarItem + 1;
   xTotalQtde  := xTotalQtde + DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat;
   xValorTotal := xValorTotal + DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat * DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat;

   DM4.Qr_Ped02.Next;
  end;

result:=true;
end;

procedure Tfrm_orcproducao.btn_alterarClick(Sender: TObject);
begin
   if Trim(edt_chave.Text) = '' then begin
      fMensagem('Favor selecionar um Pedido para alteração do mesmo!',0,['0'],0);
      btn_localizar.Setfocus;
      Exit;
   end;

   AtualizaForm(Self, True);
   StatusBtn(Self, 0);
   Self.Caption            := 'Manutenção do Cadastro de Fabrição por Encomenda - [Alteração]';
   QryItem_Producao.Active := True;
   Pedido_02_OP.mPd_Oper_Ped            := 1;
   edt_codcliente.SetFocus;
end;

procedure Tfrm_orcproducao.GridDblClick(Sender: TObject);
begin
   if (QryItem_Producao.Active) and (not QryItem_Producao.IsEmpty) and (not btn_incluir.Enabled) then begin

       edt_codproduto.Text           := FloatToStr(QryItem_ProducaoPRO.AsFloat);
       edt_descricao.Text            := QryItem_ProducaoNomeProduto.AsString;
       edt_unid.Text                 := QryItem_ProducaoUnidade.AsString;
       edt_descricaocomplemento.Text := QryItem_ProducaoDESC_COMPL.AsString;
       edt_remessa.Text              := QryItem_ProducaoDESC_REMES.AsString;
       edt_vlrunitario.Value         := QryItem_ProducaoVLR_UNIT.Value;
       edt_quantidade.Value          := QryItem_ProducaoQTD_UTILIZ.Value;
       edt_sobra.Value               := QryItem_ProducaoQTD_SOBRA.Value;
       edt_quebra.Value              := QryItem_ProducaoQTD_QUEBRA.Value;
       edt_total.Value               := QryItem_ProducaoVLTOT.Value;

       edt_codproduto.SetFocus;
   end;
end;

procedure Tfrm_orcproducao.edt_quebraExit(Sender: TObject);
begin
   if Trim(edt_codproduto.Text) = '' then begin
      fmensagem('Favor informar o Código do Produto válido!',0,['0'],0);
      edt_codproduto.SetFocus;
      Exit;
   end;

   if edt_quantidade.Value <= 0 then begin
      fmensagem('Quantidade Utilizada, não pode ser menor ou igual a Zero!',0,['0'],0);
      edt_quantidade.SetFocus;
      Exit;
   end;


   if not QryItem_Producao.Locate('PRO',edt_codproduto.Text,[]) then begin
      with QryItem_Producao do begin
          Insert;
          QryItem_ProducaoCODEMP.Value      := codemp;

          if Trim(edt_chave.Text) <> '' then
             QryItem_ProducaoCHAVE.Value    := ValFloat(edt_chave.Text);

          QryItem_ProducaoPRO.Value         := ValFloat(edt_codproduto.Text);
          QryItem_ProducaoUnidade.Value     := edt_unid.Text;
          QryItem_ProducaoNomeProduto.Value := edt_descricao.Text;
          QryItem_ProducaoDESC_COMPL.Value  := edt_descricaocomplemento.Text;
          QryItem_ProducaoDESC_REMES.Value  := edt_remessa.Text;
          QryItem_ProducaoVLR_UNIT.Value    := edt_vlrunitario.Value;
          QryItem_ProducaoQTD_UTILIZ.Value  := edt_quantidade.Value;
          QryItem_ProducaoQTD_SOBRA.Value   := edt_sobra.Value;
          QryItem_ProducaoQTD_QUEBRA.Value  := edt_quebra.Value;
          QryItem_ProducaoVLTOT.Value       := edt_vlrunitario.Value * edt_quantidade.Value;
          edt_qtdeitens.Text                := IntToStr((ValInt(edt_qtdeitens.Text) + 1));
          Post;
      end;
   end else begin
      with QryItem_Producao do begin
          Edit;
          QryItem_ProducaoCODEMP.Value      := codemp;

          if Trim(edt_chave.Text) <> '' then
             QryItem_ProducaoCHAVE.Value    := ValFloat(edt_chave.Text);

          QryItem_ProducaoPRO.Value         := ValFloat(edt_codproduto.Text);
          QryItem_ProducaoNomeProduto.Value := edt_descricao.Text;
          QryItem_ProducaoUnidade.Value     := edt_unid.Text;
          QryItem_ProducaoDESC_COMPL.Value  := edt_descricaocomplemento.Text;
          QryItem_ProducaoDESC_REMES.Value  := edt_remessa.Text;
          QryItem_ProducaoVLR_UNIT.Value    := edt_vlrunitario.Value;
          QryItem_ProducaoQTD_UTILIZ.Value  := edt_quantidade.Value;
          QryItem_ProducaoQTD_SOBRA.Value   := edt_sobra.Value;
          QryItem_ProducaoQTD_QUEBRA.Value  := edt_quebra.Value;
          QryItem_ProducaoVLTOT.Value       := edt_vlrunitario.Value * edt_quantidade.Value;
          Post;
      end;
   end;

   edt_codproduto.Clear;
   edt_descricao.Clear;
   edt_unid.Clear;
   edt_descricaocomplemento.Clear;
   edt_remessa.Clear;
   edt_vlrunitario.Value := 0;
   edt_quantidade.Value  := 0;
   edt_sobra.Value       := 0;
   edt_quebra.Value      := 0;
   edt_total.Value       := 0;
   edt_codproduto.SetFocus;
end;

procedure Tfrm_orcproducao.edt_quantidadeExit(Sender: TObject);
begin
  if (edt_quantidade.Value > 0) and (edt_vlrunitario.Value > 0) then
     edt_total.Value := edt_vlrunitario.Value * edt_quantidade.Value
  else if (edt_quantidade.Value = 0) and (edt_vlrunitario.Value > 0) then
     edt_total.Value := 0
  else
     edt_total.Value := 0;
end;

procedure Tfrm_orcproducao.QryItem_ProducaoBeforePost(DataSet: TDataSet);
begin
  edt_totutilizadas.Value := edt_totutilizadas.Value + QryItem_ProducaoQTD_UTILIZ.Value;
  edt_totsobra.Value      := edt_totsobra.Value + QryItem_ProducaoQTD_SOBRA.Value;
  edt_totquebra.Value     := edt_totquebra.Value + QryItem_ProducaoQTD_QUEBRA.Value;
  edt_tottotal.Value      := edt_tottotal.Value + QryItem_ProducaoVLTOT.Value;
end;

procedure Tfrm_orcproducao.btn_cancelarClick(Sender: TObject);
begin
if (QryItem_Producao.Active) and  (not QryItem_Producao.IsEmpty) and (btn_gravar.enabled) then
   begin
   if mAceita_pergunta then
      begin
      if Pedido_02_OP.mPd_Oper_Ped=1 then
         mcinst2:='Quer Realmente Cancelar a Alteração Feita no Pedido?'
      else
         mcinst2:='Deseja realmente cancelar a inclusão do pedido?';
      if fmensagem(mcinst2,0,['1','2'],0)<>mrYes then
         exit;
      end;

      Self.Caption := 'Manutenção do Cadastro de Fabrição por Encomenda';

      if flcadactab(0,0,IntToStr(codcar),'CADPROD_01') then begin
          if DM4.Tb_AcTabAT_INC.Value = 1 then
             bbpinc_true := False;
          if DM4.Tb_AcTabAT_ALT.Value = 1 then
             bbpalt_true := False;
          if DM4.Tb_AcTabAT_EXC.Value = 1 then
             bbpexc_true := False;
          if DM4.Tb_AcTabAT_REL.Value = 1 then
             bbprel_true := False;
      end else begin
          bbpinc_true := True;
          bbpalt_true := True;
          bbpexc_true := True;
          bbprel_true := True;
      end;

      fAtualizaBotoes(0);
      AtualizaForm(Self, False);
      StatusBtn(Self, 2);
      LimpaEdits(Self);
      QryItem_Producao.Close;
   end;
end;

procedure Tfrm_orcproducao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if (btn_gravar.Enabled) then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',1,['1','2','3'],0) of
      mrYes: begin
             btn_gravarClick(self);
             exit;
             end;
      mrNo: begin
            mAceita_pergunta  :=False;
            btn_cancelarClick(self);
            edt_datapedido.Text:=FormatDatetime(fdt2,pdatasis);
            mAceita_pergunta  :=true;
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end else begin
      CanClose:=true;;
   end;
end;

procedure Tfrm_orcproducao.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_orcproducao.btn_imprimirClick(Sender: TObject);
begin
   Application.CreateForm(Tfrm_RelOrcProducao, frm_RelOrcProducao);
   frm_RelOrcProducao.Qry_Cliente.Close;
   frm_RelOrcProducao.Qry_Cliente.SQL.Clear;
   frm_RelOrcProducao.Qry_Cliente.sQL.Add(' SELECT                      '+
                                          '   PROD1CHAVE AS CHAVE,      '+
                                          '   PROD1DATA AS DATA,        '+
                                          '   PROD1CODCLI AS CODIGO,    '+
                                          '   CRAZAO AS RAZAO,          '+
                                          '   CDENOM AS FANTASIA,       '+
                                          '   CLOG AS ENDERECO,         '+
                                          '   CNUM AS NUMERO,           '+
                                          '   CCOMPL AS COMPLEMENTO,    '+
                                          '   CBAIRRO AS BAIRRO,        '+
                                          '   CCIDADE AS CIDADE,        '+
                                          '   CUF AS ESTADO,            '+
                                          '   CCEP AS CEP,              '+
                                          '   CFONECOM AS FONE,         '+
                                          '   CFONERES AS FAX           '+
                                          ' FROM                        '+
                                          '   CADPROD_01,               '+
                                          '   CADCLI                    '+
                                          ' WHERE                       '+
                                          '   PROD1CODCLI = CCODCLI AND '+
                                          '   PROD1CHAVE  = :pChave     ');
   frm_RelOrcProducao.Qry_Cliente.ParamByName('pChave').AsFloat := xChave;
   frm_RelOrcProducao.Qry_Cliente.Open;

   if not frm_RelOrcProducao.Qry_Cliente.IsEmpty then begin
      frm_RelOrcProducao.lbl_chave.Caption       := frm_RelOrcProducao.Qry_Cliente.FieldByName('CHAVE').AsString;
      frm_RelOrcProducao.lbl_data.Caption        := FormatDateTime('DD/MM/YYYY',frm_RelOrcProducao.Qry_Cliente.FieldByName('DATA').AsDateTime);
      frm_RelOrcProducao.lbl_razao.Caption       := frm_RelOrcProducao.Qry_Cliente.FieldByName('RAZAO').AsString;
      frm_RelOrcProducao.lbl_fantasia.Caption    := frm_RelOrcProducao.Qry_Cliente.FieldByName('FANTASIA').AsString;
      frm_RelOrcProducao.lbl_endereco.Caption    := frm_RelOrcProducao.Qry_Cliente.FieldByName('ENDERECO').AsString;
      frm_RelOrcProducao.lbl_numero.Caption      := frm_RelOrcProducao.Qry_Cliente.FieldByName('NUMERO').AsString;
      frm_RelOrcProducao.lbl_complemento.Caption := frm_RelOrcProducao.Qry_Cliente.FieldByName('COMPLEMENTO').AsString;
      frm_RelOrcProducao.lbl_bairro.Caption      := frm_RelOrcProducao.Qry_Cliente.FieldByName('BAIRRO').AsString;
      frm_RelOrcProducao.lbl_cidade.Caption      := frm_RelOrcProducao.Qry_Cliente.FieldByName('CIDADE').AsString;
      frm_RelOrcProducao.lbl_ufed.Caption        := frm_RelOrcProducao.Qry_Cliente.FieldByName('ESTADO').AsString;
      frm_RelOrcProducao.lbl_cep.Caption         := frm_RelOrcProducao.Qry_Cliente.FieldByName('CEP').AsString;
      frm_RelOrcProducao.lbl_fonefax.Caption     := frm_RelOrcProducao.Qry_Cliente.FieldByName('FONE').AsString+'/'+frm_RelOrcProducao.Qry_Cliente.FieldByName('FAX').AsString;

      frm_RelOrcProducao.lbl_chave2.Caption       := frm_RelOrcProducao.Qry_Cliente.FieldByName('CHAVE').AsString;
      frm_RelOrcProducao.lbl_data2.Caption        := FormatDateTime('DD/MM/YYYY',frm_RelOrcProducao.Qry_Cliente.FieldByName('DATA').AsDateTime);
      frm_RelOrcProducao.lbl_razao2.Caption       := frm_RelOrcProducao.Qry_Cliente.FieldByName('RAZAO').AsString;
      frm_RelOrcProducao.lbl_fantasia2.Caption    := frm_RelOrcProducao.Qry_Cliente.FieldByName('FANTASIA').AsString;
      frm_RelOrcProducao.lbl_endereco2.Caption    := frm_RelOrcProducao.Qry_Cliente.FieldByName('ENDERECO').AsString;
      frm_RelOrcProducao.lbl_numero2.Caption      := frm_RelOrcProducao.Qry_Cliente.FieldByName('NUMERO').AsString;
      frm_RelOrcProducao.lbl_complemento2.Caption := frm_RelOrcProducao.Qry_Cliente.FieldByName('COMPLEMENTO').AsString;
      frm_RelOrcProducao.lbl_bairro2.Caption      := frm_RelOrcProducao.Qry_Cliente.FieldByName('BAIRRO').AsString;
      frm_RelOrcProducao.lbl_cidade2.Caption      := frm_RelOrcProducao.Qry_Cliente.FieldByName('CIDADE').AsString;
      frm_RelOrcProducao.lbl_ufed2.Caption        := frm_RelOrcProducao.Qry_Cliente.FieldByName('ESTADO').AsString;
      frm_RelOrcProducao.lbl_cep2.Caption         := frm_RelOrcProducao.Qry_Cliente.FieldByName('CEP').AsString;
      frm_RelOrcProducao.lbl_fonefax2.Caption     := frm_RelOrcProducao.Qry_Cliente.FieldByName('FONE').AsString+'/'+frm_RelOrcProducao.Qry_Cliente.FieldByName('FAX').AsString;

   end;

   frm_RelOrcProducao.rlp_orcproducao.PreviewModal;
end;

procedure Tfrm_orcproducao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.
