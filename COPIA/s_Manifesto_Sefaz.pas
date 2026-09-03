unit s_Manifesto_Sefaz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, ComCtrls, StdCtrls, DBTables,
  ExtCtrls, Buttons, DBCtrls, Mask, ToolEdit, RxDBComb, CheckLst;






type
  TFrm_Manifesto_Sefaz = class(TForm)
    src_manifesto_nf: TDataSource;
    qr_municipio: TQuery;
    src_municipio: TDataSource;
    qr_municipiomunicipio_codigo: TStringField;
    qr_municipiolnome: TStringField;
    qr_municipioluf: TStringField;
    src_mundesc: TDataSource;
    Tb_CadMunDesc: TQuery;
    Tb_CadMunDesclnome: TStringField;
    Tb_CadMunDescluf: TStringField;
    Tb_CadMunDescmd_id: TFloatField;
    Tb_CadMunDescmd_seq: TFloatField;
    U_CadMunDesc: TUpdateSQL;
    Qr_UF: TQuery;
    Src_UF: TDataSource;
    Qr_UFpuf: TStringField;
    Qr_UFpnom: TStringField;
    Tb_CadUFPercurso: TQuery;
    src_CadUFPercurso: TDataSource;
    U_CadUFPercurso: TUpdateSQL;
    Tb_CadUFPercursoufp_id: TFloatField;
    Tb_CadUFPercursoufp_uf: TStringField;
    tb_manifesto_nf: TQuery;
    tb_manifesto_nfmnf_chaveped: TFloatField;
    tb_manifesto_nfmnf_lotseq: TFloatField;
    tb_manifesto_nfmnf_codemp: TFloatField;
    tb_manifesto_nfmnf_chv_nfe: TStringField;
    tb_manifesto_nfmnf_numero_nf: TFloatField;
    tb_manifesto_nfmnf_valor_nf: TFloatField;
    tb_manifesto_nfmnf_razsoc: TStringField;
    tb_manifesto_nfmnf_cidade: TStringField;
    tb_manifesto_nfmnf_uf: TStringField;
    tb_manifesto_nfmnf_id: TFloatField;
    tb_manifesto_nfmnf_data_nf: TDateTimeField;
    u_manifesto_nf: TUpdateSQL;
    Tb_CadUFPercursopnom: TStringField;
    tb_manifesto_nfmnf_codloc: TFloatField;
    tb_manifesto_nfmnf_codloc_ibge: TFloatField;
    Tb_CadMunCarreg: TQuery;
    src_CadMunCarreg: TDataSource;
    U_CadMunCarreg: TUpdateSQL;
    Tb_CadMunCarreglnome: TStringField;
    Tb_CadMunCarregluf: TStringField;
    Tb_CadMunCarregmc_id: TFloatField;
    Tb_CadMunCarregmc_seq: TFloatField;
    qr_municipiolcodmun_ibge: TFloatField;
    Tb_CadMunCarregmc_codloc_ibge: TFloatField;
    Tb_CadMunDescmd_codloc_ibge: TFloatField;
    tb_MDFE: TQuery;
    Src_MDFE: TDataSource;
    tb_MDFEMDFE_VT_COD_AG_PORTO: TStringField;
    tb_MDFEMDFE_VT_CINT: TStringField;
    tb_MDFEMDFE_VT_TPCAR: TStringField;
    tb_MDFEMDFE_VT_PLACA: TStringField;
    tb_MDFEMDFE_VT_TARA: TFloatField;
    tb_MDFEMDFE_VT_RENAVAN: TStringField;
    tb_MDFEMDFE_VT_UF: TStringField;
    tb_MDFEMDFE_VT_TPROD: TStringField;
    tb_MDFEMDFE_VT_CAPKG: TFloatField;
    tb_MDFEMDFE_VT_CAPM3: TFloatField;
    tb_MDFEMDFE_PROP: TStringField;
    tb_MDFEMDFE_PROP_TPPROP: TStringField;
    tb_MDFEMDFE_PROP_UF: TStringField;
    tb_MDFEMDFE_VT_RNTRC: TStringField;
    tb_MDFEMDFE_PROP_RNTRC: TStringField;
    tb_MDFEMDFE_PROP_CPF: TStringField;
    tb_MDFEMDFE_PROP_CNPJ: TStringField;
    tb_MDFEMDFE_PROP_NOME: TStringField;
    tb_MDFEMDFE_PROP_IE: TStringField;
    Tb_Condutores: TQuery;
    src_Condutores: TDataSource;
    Tb_CondutoresCC_ID: TFloatField;
    Tb_CondutoresCC_CPF: TStringField;
    Tb_CondutoresCC_NOME: TStringField;
    u_Condutores: TUpdateSQL;
    tb_MDFEMDFE_TOT_QCTE: TFloatField;
    tb_MDFEMDFE_TOT_QNFE: TFloatField;
    tb_MDFEMDFE_TOT_QNF1_1A: TFloatField;
    tb_MDFEMDFE_TOT_VCARGA: TFloatField;
    tb_MDFEMDFE_TOT_CUNID: TStringField;
    tb_MDFEMDFE_TOT_QCARGA: TFloatField;
    Tb_CadLacres: TQuery;
    Src_CadLacres: TDataSource;
    U_CadLacres: TUpdateSQL;
    Tb_CadLacresCL_LACRE: TStringField;
    Tb_CadLacresCL_ID: TFloatField;
    tb_MDFEMDFE_STATUS: TFloatField;
    tb_MDFEMDFE_NUMERO: TFloatField;
    tb_MDFEMDFE_VERSAO_XML: TStringField;
    tb_MDFEMDFE_MOD: TStringField;
    tb_MDFEMDFE_SERIE: TStringField;
    tb_MDFEMDFE_DHEMI: TDateTimeField;
    tb_MDFEMDFE_DHINIVIAGEM: TDateTimeField;
    tb_MDFEMDFE_TPEMIT: TStringField;
    tb_MDFEMDFE_TPTRANSP: TStringField;
    tb_MDFEMDFE_MODAL: TStringField;
    tb_MDFEMDFE_TPEMIS: TStringField;
    tb_MDFEMDFE_ID: TFloatField;
    U_MDFE: TUpdateSQL;
    tb_MDFEMDFE_TPPROP: TStringField;
    tb_MDFEMDFE_DHINCLUSAO: TDateTimeField;
    tb_MDFEMDFE_DH_UEVE: TDateTimeField;
    tb_MDFEMDFE_TPAMB: TStringField;
    SaveDialog1: TSaveDialog;
    TimerManipulacao: TTimer;
    tb_MDFEMDFE_CHV_MDFE: TStringField;
    tb_MDFEMDFE_EMIT_UF: TStringField;
    tb_MDFEmdfe_dathormanipulacao: TDateTimeField;
    tb_MDFEMDFE_CODUSR_INCLUSAO: TFloatField;
    tb_MDFEMDFE_CODUSR_UEVE: TFloatField;
    PageControl4: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    Label1: TLabel;
    gbConsultas: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    edt_datini: TDateEdit;
    edt_datfin: TDateEdit;
    edt_chaveini: TEdit;
    edt_chavefin: TEdit;
    BBnAtu: TBitBtn;
    Panel_Movimento: TPanel;
    bbIncluir: TBitBtn;
    bbAlterar: TBitBtn;
    bbExcluir: TBitBtn;
    bbGravar: TBitBtn;
    bbCancelar: TBitBtn;
    bbEnviaraoSefaz: TBitBtn;
    bbImprimir: TBitBtn;
    btn_sair: TBitBtn;
    Panel11: TPanel;
    RxDBCBStatus: TRxDBComboBox;
    StaticText9: TStaticText;
    StaticText11: TStaticText;
    DBE_MDFE_CHV_CHCTE: TDBEdit;
    StaticText12: TStaticText;
    DBE_MDFE_NUMERO: TDBEdit;
    StaticText13: TStaticText;
    RxDBCB_MDFE_VERSAO_XML: TRxDBComboBox;
    StaticText14: TStaticText;
    DBE_MDFE_ID: TDBEdit;
    StaticText15: TStaticText;
    RxDBCB_MDFE_TPAMB: TRxDBComboBox;
    PageControlGeral: TPageControl;
    ts_infdoc: TTabSheet;
    PageControlNotasTransptot: TPageControl;
    tsNotasFiscais: TTabSheet;
    DBGrid_manifesto_nf: TDBGrid;
    Panel6: TPanel;
    gb_codmun_carregamento: TGroupBox;
    Panel4: TPanel;
    cb_uf_carregamento: TComboBox;
    DBLookupCB_CodMunCarregameno: TDBLookupComboBox;
    bbIncluiCarregamento: TBitBtn;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    Panel5: TPanel;
    bbCadMunCarregExcluir: TBitBtn;
    DBGrid_munCarreg: TDBGrid;
    gb_munDesc: TGroupBox;
    panel_mundesc_cab: TPanel;
    cb_uf: TComboBox;
    DBLookupCBCodloc: TDBLookupComboBox;
    bbIncMunDesc: TBitBtn;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    panelMunDescRodape: TPanel;
    bbMunDescExcluir: TBitBtn;
    dbgrid_mundesc: TDBGrid;
    gb_uf_percurso: TGroupBox;
    Panel2: TPanel;
    CB_UFPercurs: TComboBox;
    DBLookupCBUfPerrcurso: TDBLookupComboBox;
    bbUFPerc: TBitBtn;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Panel3: TPanel;
    bbMunPercursoExcluir: TBitBtn;
    DBGrid_uf_percurso: TDBGrid;
    TabSheet1: TTabSheet;
    PageControl3: TPageControl;
    tsVeiculoTracao: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    DBE_MDFE_VT_RNTRC: TDBEdit;
    DBE_MDFE_VT_COD_AG_PORTO: TDBEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBE_MDFE_VT_CINT: TDBEdit;
    RxDBCB_MDFE_VT_TPCAR: TRxDBComboBox;
    DBE_MDFE_VT_PLACA: TDBEdit;
    DBE_MDFE_VT_TARA: TDBEdit;
    DBE_MDFE_VT_RENAVAN: TDBEdit;
    RxDBCB_MDFE_VT_UF: TRxDBComboBox;
    RxDBCB_MDFE_VT_TPROD: TRxDBComboBox;
    DBE_MDFE_VT_CAPKG: TDBEdit;
    DBE_MDFE_VT_CAPM3: TDBEdit;
    gb_proprietario: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBCB_MDFE_PROP: TDBCheckBox;
    DBE_MDFE_PROP_RNTRC: TDBEdit;
    RxDBCB_MDFE_TPPROP: TRxDBComboBox;
    RxDBCB_MDFE_PROP_UF: TRxDBComboBox;
    DBE_MDFE_PROP_CPF: TDBEdit;
    DBE_MDFE_PROP_CNPJ: TDBEdit;
    rg_prop_tp_doc: TRadioGroup;
    DBE_MDFE_PROP_NOME: TDBEdit;
    DBE_MDFE_PROP_IE: TDBEdit;
    GroupBox2: TGroupBox;
    Panel7: TPanel;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    edt_cc_cpf: TEdit;
    edt_cc_nome: TEdit;
    Panel8: TPanel;
    bbCondutoresExcluir: TBitBtn;
    DBGrid1: TDBGrid;
    tsTotalizadores: TTabSheet;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBE_MDFE_TOT_QCTE: TDBEdit;
    DBE_MDFE_TOT_QNFE: TDBEdit;
    DBE_MDFE_TOT_QNF1_1A: TDBEdit;
    DBE_MDFE_TOT_VCARGA: TDBEdit;
    RxDBCB_MDFE_TOT_CUNID: TRxDBComboBox;
    DBE_MDFE_TOT_QCARGA: TDBEdit;
    gb_lacres: TGroupBox;
    Panel9: TPanel;
    bbLacresIncluir: TBitBtn;
    StaticText10: TStaticText;
    edt_lacre: TEdit;
    Panel10: TPanel;
    bbLacreExcluir: TBitBtn;
    DBGrid_lacres: TDBGrid;
    tsDadosMDFE: TTabSheet;
    gb_dadosmdfe: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    edt_MDFE_dhEmi_data: TDateEdit;
    edt_MDFE_dhEmi_hora: TDateTimePicker;
    edt_MDFE_dhIniViagem_data: TDateEdit;
    edt_MDFE_dhIniViagem_hora: TDateTimePicker;
    DBE_MDFE_MOD: TDBEdit;
    DBE_MDFE_SERIE: TDBEdit;
    DBE_MDFE_NUMERO2: TDBEdit;
    RxDBCB_MDFE_EMIT_UF: TRxDBComboBox;
    RxDBCB_MDFE_TPEMIT: TRxDBComboBox;
    RxDBCB_MDFE_TPTRANSP: TRxDBComboBox;
    RxDBCB_MDFE_MODAL: TRxDBComboBox;
    RxDBCB_MDFE_TPEMIS: TRxDBComboBox;
    tsLista: TTabSheet;
    DBGrid_mdfe: TDBGrid;
    tsConfigMaster: TTabSheet;
    Label36: TLabel;
    Label37: TLabel;
    edt_proximo_mdfe_ambiente_producao: TEdit;
    edt_proximo_mdfe_ambiente_homologacao: TEdit;
    bbSalvarAmbienteNormal: TBitBtn;
    bbSalvarAmbienteHomologacao: TBitBtn;
    edt_mdfe_producao_serie: TEdit;
    edt_mdfe_homologacao_serie: TEdit;
    bbCondutoresIncluir: TBitBtn;
    Label39: TLabel;
    Label38: TLabel;
    edt_chave: TEdit;
    bbCalcDigito: TBitBtn;
    Label40: TLabel;
    BitBtn1: TBitBtn;
    tsValePedagio: TTabSheet;
    tb_cadvlpedagio: TQuery;
    src_cadvlpedagio: TDataSource;
    U_cadvlpedagio: TUpdateSQL;
    tb_cadvlpedagioVP_ID: TFloatField;
    tb_cadvlpedagioVP_CNPJ_FORNECEDOR: TStringField;
    tb_cadvlpedagioVP_CNPJ_PAGADOR: TStringField;
    tb_cadvlpedagioVP_CPF_PAGADOR: TStringField;
    tb_cadvlpedagioVP_NUM_COMPROVANTE: TStringField;
    tb_cadvlpedagioVP_VALOR_VALE: TFloatField;
    gb_vale_pedagio: TGroupBox;
    Panel1: TPanel;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    edt_cpf_pagador: TEdit;
    edt_cnpj_pagador: TEdit;
    bbVPincluir: TBitBtn;
    Panel12: TPanel;
    BitBtn3: TBitBtn;
    DBGrid_vl_pedagio: TDBGrid;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    edt_cnpj_fornecedor: TEdit;
    edt_num_comprovante: TEdit;
    edt_vp_valor: TEdit;
    Panel13: TPanel;
    st_digitando0: TStaticText;
    st_gravada1: TStaticText;
    st_enviando2: TStaticText;
    st_rejeitada3: TStaticText;
    st_encerrada6: TStaticText;
    st_excluida_antes_enviar7: TStaticText;
    st_excluida_antes_encerrar8: TStaticText;
    st_excluida_ja_encerrada9: TStaticText;
    st_enviado_ok4: TStaticText;
    st_encenrrando5: TStaticText;
    CLBStatus: TCheckListBox;
    tb_MDFEMDFE_ENVIO_NPROT: TStringField;
    tb_MDFEMDFE_ENVIO_DTHOR: TDateTimeField;
    tb_MDFEMDFE_ENC_NPROT: TStringField;
    tb_MDFEMDFE_ENC_DTHOR: TDateTimeField;
    tb_MDFEMDFE_EXCLUSAO_NPROT: TStringField;
    tb_MDFEMDFE_EXCLUSAO_DTHOR: TDateTimeField;
    Label41: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid_manifesto_nfColExit(Sender: TObject);
    procedure bbIncluirClick(Sender: TObject);
    procedure cb_ufClick(Sender: TObject);
    procedure bbIncMunDescClick(Sender: TObject);
    procedure bbUFPercClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CB_UFPercursClick(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure tb_manifesto_nfAfterPost(DataSet: TDataSet);
    procedure tb_manifesto_nfAfterInsert(DataSet: TDataSet);
    procedure bbMunDescExcluirClick(Sender: TObject);
    procedure bbMunPercursoExcluirClick(Sender: TObject);
    procedure bbIncluiCarregamentoClick(Sender: TObject);
    procedure bbCadMunCarregExcluirClick(Sender: TObject);
    procedure tb_manifesto_nfBeforePost(DataSet: TDataSet);
    procedure cb_uf_carregamentoClick(Sender: TObject);
    procedure rg_prop_tp_docClick(Sender: TObject);
    procedure DBE_MDFE_PROP_CNPJExit(Sender: TObject);
    procedure DBE_MDFE_PROP_CPFExit(Sender: TObject);
    procedure bbCondutoresIncluirClick(Sender: TObject);
    procedure edt_cc_cpfExit(Sender: TObject);
    procedure bbLacresIncluirClick(Sender: TObject);
    procedure bbLacreExcluirClick(Sender: TObject);
    procedure bbCondutoresExcluirClick(Sender: TObject);
    procedure edt_MDFE_dhEmi_dataExit(Sender: TObject);
    procedure edt_MDFE_dhIniViagem_dataExit(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure Src_MDFEDataChange(Sender: TObject; Field: TField);
    procedure tb_MDFEBeforeInsert(DataSet: TDataSet);
    procedure tb_MDFEBeforeEdit(DataSet: TDataSet);
    procedure tb_MDFEAfterPost(DataSet: TDataSet);
    procedure tb_MDFEAfterCancel(DataSet: TDataSet);
    procedure tb_MDFEAfterDelete(DataSet: TDataSet);
    procedure tb_MDFEAfterEdit(DataSet: TDataSet);
    procedure bbEnviaraoSefazClick(Sender: TObject);
    procedure PageControlGeralChange(Sender: TObject);
    procedure edt_proximo_mdfe_ambiente_producaoExit(Sender: TObject);
    procedure edt_proximo_mdfe_ambiente_homologacaoExit(Sender: TObject);
    procedure edt_proximo_mdfe_ambiente_producaoEnter(Sender: TObject);
    procedure edt_proximo_mdfe_ambiente_homologacaoEnter(Sender: TObject);
    procedure edt_proximo_mdfe_ambiente_producaoChange(Sender: TObject);
    procedure edt_proximo_mdfe_ambiente_homologacaoChange(Sender: TObject);
    procedure bbSalvarAmbienteNormalClick(Sender: TObject);
    procedure bbSalvarAmbienteHomologacaoClick(Sender: TObject);
    procedure TimerManipulacaoTimer(Sender: TObject);
    procedure edt_mdfe_producao_serieExit(Sender: TObject);
    procedure edt_mdfe_homologacao_serieExit(Sender: TObject);
    procedure CLBStatusClick(Sender: TObject);
    procedure tb_manifesto_nfAfterDelete(DataSet: TDataSet);
    procedure DBGrid_manifesto_nfKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_manifesto_nfExit(Sender: TObject);
    procedure bbCalcDigitoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edt_cpf_pagadorExit(Sender: TObject);
    procedure edt_cnpj_pagadorExit(Sender: TObject);
    procedure edt_cnpj_fornecedorExit(Sender: TObject);
    procedure edt_vp_valorExit(Sender: TObject);
    procedure DBGrid_mdfeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RxDBComboBox1Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
  private
    { Private declarations }




    mOperMDFE: Integer;
    mId: Integer;
    mlid_id: integer;
    mAnt_ProxNumMDFE_Prod: integer;
    mAnt_ProxNumMDFE_Homolog: integer;



    function fLerPedido(pChv_Nfe: String; pChave: integer): boolean;



    procedure pAtualizarMunicipios(puf: String);

    function fLerCadMunDesc: boolean;



    function fLerCadMunCarreg: boolean;

    function fMunCarregamentoJaDigitado(pid, pCodMun: Integer): Boolean;

    function fLerCadManifesto: boolean;

    function fLerCadUFPercurso(pId: integer; pUF: String): boolean;

    function fLerCadLacres(pId: integer; pLacre: String): boolean;

    function fLerCadCondutores(pId: integer; pCPF: String): boolean;


    function fMunDescJaDigitado(pid, pCodMun: Integer): Boolean;

    function fLacresJaDigitado(pid: Integer; pLacre: String): Boolean;


    function fMunDescProximoSeq(pid, pCodMun: Integer): Integer;

    function fMunCarregProximoSeq(pid, pCodMun_ibge: Integer): Integer;





    function fUFPercJaDigitado(pid: Integer; pUF: String): Boolean;


    function fAtalizarUFPercurso: boolean;

    procedure fAtualizarBotoes(pEditando: Boolean);

    procedure fAtualizarDescarregamentoPercurso;

    procedure fIncluirMunicipioCarregamento;

    procedure fIncluirCADMDFE;



    function fCadManifestoJaDigitado(pChv_nfe: String): boolean;



    function fCondutorJaDigitado(pCPF: String): Boolean;
    function fVlPedagioJaDigitado(pNumComprovante: String): Boolean;


    function fLerCADMDFE(pid: Integer): boolean;


    procedure fbloquearLiberarCampos(pEdit: boolean);






    function fBuscarProximosNumeros(pSerie,pAmbiente: String): Integer;





    function fSalvarProximoNumero(pChave: String; pValor: Integer): boolean;


    procedure fAtualizarManipulacao(pId: Integer);


    procedure fAtualizarDateTime;


    function fatualizardocumentos(pId: Integer): boolean;


    procedure UpdateMDFE_CadMDFE;

    procedure fPreecherTeste;

    procedure fLerCadVlPedagio;









    function fCancelarMDFE(pJustificativa: String): Boolean;


  public
    { Public declarations }
  end;


var
  Frm_Manifesto_Sefaz: TFrm_Manifesto_Sefaz;

implementation

uses S_DM1, Func, func_excecoes, Func2, lerarq, s_MDFE, S_Sintegra_Advert,
  s_Nfe_Aguarde, S_DM4, s_MDFE_justificativa, s_MDFE_Impressao;

{$R *.dfm}

procedure TFrm_Manifesto_Sefaz.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Manifesto_Sefaz.DBGrid_manifesto_nfColExit(Sender: TObject);
begin
if tb_manifesto_nf.State in [dsEdit,dsInsert] then
   begin
   if (DBGrid_manifesto_nf.SelectedField=tb_manifesto_nfmnf_chv_nfe) or
      (DBGrid_manifesto_nf.SelectedField=tb_manifesto_nfmnf_chaveped) then
      begin
      if ( (trim(tb_manifesto_nfmnf_chv_nfe.AsString)<>'') or
         (tb_manifesto_nfmnf_chaveped.asinteger>0) ) then
         begin
         if not fLerPedido(tb_manifesto_nfmnf_chv_nfe.AsString, tb_manifesto_nfmnf_chaveped.AsInteger)  then
            begin
            MessageDlg('Pedido '+tb_manifesto_nfmnf_chaveped.AsString+' não encontrado!',mtWarning,[mbOk],0);
            DBGrid_manifesto_nf.SelectedField:=tb_manifesto_nfmnf_chv_nfe;
            exit;
            end;
         end;
      end;
   end;

end;
function TFrm_Manifesto_Sefaz.fLerPedido(pChv_Nfe: String; pChave: integer): boolean;
var
query_ped: tquery;
   procedure pfechartabelas;
   begin
   query_ped.close;
   freeandnil(query_ped);
   end;
begin
query_ped:=TQuery.create(nil);
query_ped.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_ped.SQL.add('Select CRAZAO,LNOME,LUF,P1CODCLI,P1CODEMP,P1NUMNF,P1DATANF,NSNFE_CHAVEACESSO || NSNFE_DCHAVEACESSO AS P1NFE_CHACESSO'
                 +',P1CODTRA,P1QTDVOL,LCODMUN_IBGE, '
                 +' P1PESOB,P1PESOL,P1ESPECIE,P1PLACAV,P1FRETEPC,P1TOTALL,LCODLOC '
                 +',P1CHAVE '
                 +' FROM CADNS,CADP01,CADCLI,CADLOC '
                 +' WHERE P1CODEMP='+Inttostr(codemp)
                 +' and P1CHAVE=NSCHAVEP '
                 +' AND P1ORDEM=NSORDEMP '
                 +' AND P1LOTSEQ=NSLOTSEQ_CP '
                 +' and CCODCLI=P1CODCLI '
                 +' AND LCODLOC=CCODLOC ');
if trim(pChv_Nfe)<>'' then
   query_ped.SQL.add(' and NSNFE_CHAVEACESSO='+QuotedStr(COPY(pChv_Nfe,1,43)));

if pchave>0 then
   query_ped.SQL.add(' and NSCHAVEP='+Inttostr(pchave));

try
   query_ped.open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_ped,92,'_stru'+e.message,'user');
   pfechartabelas;
   result:=false;
   exit;
   end;
   end;
// ex_erroSql_Novo(query_ped,92,'_stru','user');

if query_ped.IsEmpty then
   result:=false
else
   begin
   tb_manifesto_nfmnf_chaveped.Value       :=query_ped.Fieldbyname('P1CHAVE').AsInteger;
   tb_manifesto_nfmnf_codemp.Value         :=query_ped.Fieldbyname('P1CODEMP').AsInteger;
   tb_manifesto_nfmnf_chv_nfe.Value        :=query_ped.Fieldbyname('P1NFE_CHACESSO').AsString;
   tb_manifesto_nfmnf_numero_nf.Value      :=query_ped.Fieldbyname('P1NUMNF').AsFloat;
   tb_manifesto_nfmnf_data_nf.AsDateTime   :=query_ped.Fieldbyname('P1DATANF').AsDateTime;
   tb_manifesto_nfmnf_valor_nf.AsFloat     :=query_ped.Fieldbyname('P1TOTALL').AsFloat;
   tb_manifesto_nfmnf_razsoc.AsString      :=query_ped.Fieldbyname('CRAZAO').AsString;
   tb_manifesto_nfmnf_cidade.AsString      :=query_ped.Fieldbyname('LNOME').AsString;
   tb_manifesto_nfmnf_uf.AsString          :=query_ped.Fieldbyname('LUF').AsString;
   tb_manifesto_nfmnf_codloc_ibge.AsString :=query_ped.Fieldbyname('LCODMUN_IBGE').AsString;
   tb_manifesto_nfmnf_codloc.AsFloat       :=query_ped.Fieldbyname('LCODLOC').AsFloat;

   end;
pfechartabelas;

end;


procedure TFrm_Manifesto_Sefaz.bbIncluirClick(Sender: TObject);
begin
PageControlGeral.ActivePage:=ts_infdoc;
PageControlNotasTransptot.ActivePage:=tsNotasFiscais;
mId:=0;
fAtualizarBotoes(true);
mOperMDFE:=0;

mId:=0;
fIncluirCADMDFE;
fLerCADMDFE(mId);
fLerCadMunDesc;
fLerCadManifesto;
fLerCadUFPercurso(mid,'');
fLerCadMunCarreg;
fLerCadCondutores(mId,'');
fLerCadLacres(mId,'');
fIncluirMunicipioCarregamento;
fLerCadVlPedagio;

tb_MDFE.Edit;


//fPreecherTeste;




end;

procedure TFrm_Manifesto_Sefaz.fIncluirMunicipioCarregamento;
begin
Tb_CadMunCarreg.Append;
Tb_CadMunCarreglnome.Value    :=DM1.Tb_EmpCIDADE.AsString;
Tb_CadMunCarregluf.Value      :=DM1.Tb_EmpUF.AsString;
Tb_CadMunCarregmc_id.Value    :=mId;
Tb_CadMunCarregmc_seq.Value   :=1;
Tb_CadMunCarregmc_codloc_ibge.Value:=DM1.Tb_Empcodloc_ibge.AsFloat;
Tb_CadMunCarreg.Post;


end;


procedure TFrm_Manifesto_Sefaz.fIncluirCADMDFE;
var
query_incluir_cadmdfe:tQuery;
begin

query_incluir_cadmdfe:=tQuery.create(nil);
query_incluir_cadmdfe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_incluir_cadmdfe.SQL.add('insert into MDFE_CADMDFE ('
                             +'MDFE_ID '
                             +',MDFE_DHINCLUSAO '
                             +',MDFE_CODUSR_INCLUSAO '
                             +',MDFE_CODUSR_UEVE '
                             +',MDFE_DH_UEVE '
                             +',MDFE_TPAMB '
                             +',MDFE_TPEMIT '
                             +',MDFE_TPTRANSP '
                             +',MDFE_MOD '
                             +',MDFE_MODAL '
                             +',MDFE_VT_TPCAR '
                             +',MDFE_VT_TPROD '
                             +',MDFE_TOT_CUNID '
                             +',MDFE_STATUS '
                             +',MDFE_VERSAO_XML '
                             +',MDFE_EMIT_UF '
                             +',MDFE_TPEMIS '
                             +',MDFE_SERIE '
                             +') values ('
                             +' :MDFE_ID '
                             +',SYSDATE '
                             +',:MDFE_CODUSR_INCLUSAO '
                             +',:MDFE_CODUSR_UEVE '
                             +',SYSDATE '
                             +',:MDFE_TPAMB '
                             +',:MDFE_TPEMIT '
                             +',:MDFE_TPTRANSP '
                             +',:MDFE_MOD '
                             +',:MDFE_MODAL '
                             +',:MDFE_VT_TPCAR '
                             +',:MDFE_VT_TPROD '
                             +',:MDFE_TOT_CUNID '
                             +',:MDFE_STATUS '
                             +',:MDFE_VERSAO_XML '
                             +',:MDFE_EMIT_UF '
                             +',:MDFE_TPEMIS '
                             +',:MDFE_SERIE '
                             +') ');



mid:= fBuscareTestarID('CADMDFE');
query_incluir_cadmdfe.ParamByName('MDFE_ID').AsInteger := mId;
query_incluir_cadmdfe.ParamByName('MDFE_CODUSR_INCLUSAO').asfloat:=codusr;
query_incluir_cadmdfe.ParamByName('MDFE_CODUSR_UEVE').asfloat    :=codusr;
if DM4.Tb_ParGer02PG2USANFE.AsInteger<2 then
   query_incluir_cadmdfe.ParamByName('MDFE_TPAMB').Value            :='2'
else
   query_incluir_cadmdfe.ParamByName('MDFE_TPAMB').Value            :='1';

query_incluir_cadmdfe.ParamByName('MDFE_TPEMIT').Value           :='2';
query_incluir_cadmdfe.ParamByName('MDFE_TPTRANSP').Value         :=' ';
query_incluir_cadmdfe.ParamByName('MDFE_MOD').Value              :='58';
query_incluir_cadmdfe.ParamByName('MDFE_MODAL').Value            :='1';
query_incluir_cadmdfe.ParamByName('MDFE_VT_TPCAR').Value         :='02';
query_incluir_cadmdfe.ParamByName('MDFE_VT_TPROD').Value         :='01';
query_incluir_cadmdfe.ParamByName('MDFE_TOT_CUNID').Value        :='01';
query_incluir_cadmdfe.ParamByName('MDFE_STATUS').Value           :=0;
query_incluir_cadmdfe.ParamByName('MDFE_VERSAO_XML').Value       :='3.00';
query_incluir_cadmdfe.ParamByName('MDFE_EMIT_UF').value          :=DM1.Tb_EMPuf.asstring;
query_incluir_cadmdfe.ParamByName('MDFE_TPEMIS').value           :='1';
query_incluir_cadmdfe.ParamByName('MDFE_SERIE').value            :='1';
try
   query_incluir_cadmdfe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_incluir_cadmdfe,673,'_stru'+e.message,'user');
   exit;
   end;
   end;
query_incluir_cadmdfe.close;
freeandnil(query_incluir_cadmdfe);

end;


procedure TFrm_Manifesto_Sefaz.fAtualizarBotoes(pEditando: Boolean);
begin
bbIncluir.Enabled :=pEditando=false;
bbAlterar.Enabled :=pEditando=false;
bbExcluir.Enabled :=pEditando=false;
bbGravar.Enabled  :=pEditando;
bbCancelar.Enabled:=pEditando;


end;

procedure TFrm_Manifesto_Sefaz.pAtualizarMunicipios(puf: String);
begin
qr_municipio.close;
qr_municipio.SQL.clear;
qr_municipio.SQL.add('Select LNOME,LUF,LCODMUN_IBGE, LNOME || '+QuotedStr(' [')+' || LCODMUN_IBGE || '+QuotedStr(' ]')+'  as municipio_codigo  from CADLOC '
                    +' where LUF='+QuotedStr(puf)
                    +' order by LNOME ');

try
   qr_municipio.open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_municipio,161,'_stru'+e.message,'user');
   exit;
   end;
   end;


end;

procedure TFrm_Manifesto_Sefaz.cb_ufClick(Sender: TObject);
begin
pAtualizarMunicipios(cb_uf.Text);
if qr_municipio.IsEmpty=false then
   DBLookupCBCodloc.KeyValue:=qr_municipio.FieldByName('LCODMUN_IBGE').AsFloat;

end;

procedure TFrm_Manifesto_Sefaz.bbIncMunDescClick(Sender: TObject);
var
mcodloc: integer;
begin
mcodloc :=DBLookupCBCodloc.KeyValue;

if fMunDescJaDigitado(mid, mcodloc) then
   begin
   MessageDlg('Cidade Ja Digitada!',mtWarning,[mbOk],0);
   cb_uf.SetFocus;
   exit;
   end;
Tb_CadMunDesc.Append;
Tb_CadMunDescmd_codloc_ibge.Value := mcodloc;
Tb_CadMunDesclnome.Value     := DBLookupCBCodloc.Text;
Tb_CadMunDescluf.Value       := cb_uf.Text;
Tb_CadMunDescmd_id.value     := mId;
Tb_CadMunDescmd_seq.value    := fMunDescProximoSeq(mId,mcodloc);
Tb_CadMunDesc.post;






end;

function TFrm_Manifesto_Sefaz.fLerCadManifesto: boolean;
begin

tb_manifesto_nf.close;
tb_manifesto_nf.sql.clear;
tb_manifesto_nf.sql.add('Select mnf_id,mnf_chv_nfe,mnf_chaveped,mnf_lotseq '
                       +',mnf_codemp,mnf_numero_nf,mnf_data_nf,mnf_valor_nf'
                       +',mnf_razsoc,mnf_cidade,mnf_uf,MNF_CODLOC_IBGE,MNF_CODLOC'
                       +' from MDFE_CADMANIFESTO '
                       +' where mnf_id=:id '
                       +' order by mnf_id,mnf_chv_nfe ');
tb_manifesto_nf.ParamByName('ID').AsInteger := mId;
try
   tb_manifesto_nf.Open;
   result :=  true;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_manifesto_nf,300,'func Erro:'+e.Message ,'MDFE_CADMANIFESTO');
   result := false;
   end;
   end;

end;

function TFrm_Manifesto_Sefaz.fLerCadMunDesc: boolean;
begin
Tb_CadMunDesc.close;
Tb_CadMunDesc.sql.clear;
Tb_CadMunDesc.sql.add('Select MDFE_CADMUNDESC.*,lnome,luf '
                     +' from MDFE_CADMUNDESC,CADLOC '
                     +' where LCODMUN_IBGE=MD_CODLOC_IBGE '
                     +' and  '
                     +' MD_ID=:ID order by MD_SEQ ');
Tb_CadMunDesc.ParamByName('ID').AsInteger := mId;
try
   Tb_CadMunDesc.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_CadMunDesc,305,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   end;


end;


function TFrm_Manifesto_Sefaz.fLerCadMunCarreg: boolean;
begin
Tb_CadMunCarreg.close;
Tb_CadMunCarreg.sql.clear;
Tb_CadMunCarreg.sql.add('Select MDFE_CADMUNCARREG.*,lnome,luf '
                     +' from MDFE_CADMUNCARREG,CADLOC '
                     +' where LCODMUN_IBGE=MC_CODLOC_IBGE '
                     +' and  '
                     +' MC_ID=:ID order by MC_SEQ ');
Tb_CadMunCarreg.ParamByName('ID').AsInteger := mId;
try
   Tb_CadMunCarreg.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_CadMunCarreg,305,'func Erro:'+e.Message ,'MDFE_CADMUNCARREG');
   end;


end;

function TFrm_Manifesto_Sefaz.fLacresJaDigitado(pid: Integer; pLacre: String): Boolean;
var
Query_Lacres: tQuery;
begin
Query_Lacres:=tQuery.Create(nil);
Query_Lacres.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query_Lacres.SQL.add('Select CL_LACRE from MDFE_CADLACRES '
                +' where CL_ID=:ID '
                +' and CL_LACRE=:LACRE ');
Query_Lacres.ParamByName('ID').AsInteger    := pid;
Query_Lacres.ParamByName('LACRE').AsString  := pLacre;
try
   Query_Lacres.Open;
except on e : exception do
   ex_erroSql_Novo(Query_Lacres,587,'func Erro:'+e.Message ,'MDFE_CADLACRES');
   end;
if Query_Lacres.IsEmpty then
   result:=false
else
   result:=true;
Query_Lacres.close;
freeandnil(Query_Lacres);

end;




function TFrm_Manifesto_Sefaz.fMunDescJaDigitado(pid, pCodMun: Integer): Boolean;
var
query_md: tQuery;
begin
query_md:=tQuery.Create(nil);
query_md.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_md.SQL.add('Select MD_CODLOC_IBGE from MDFE_CADMUNDESC '
                +' where MD_ID=:ID '
                +' and MD_CODLOC_IBGE=:CODLOC ');
query_md.ParamByName('ID').AsInteger := pid;
query_md.ParamByName('CODLOC').AsInteger := pCodMun;
try
   query_md.Open;
except on e : exception do
   ex_erroSql_Novo(query_md,248,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   end;
if query_md.IsEmpty then
   result:=false
else
   result:=true;
query_md.close;
freeandnil(query_md);

end;


function TFrm_Manifesto_Sefaz.fMunCarregamentoJaDigitado(pid, pCodMun: integer): Boolean;
var
query_md: tQuery;
begin
query_md:=tQuery.Create(nil);
query_md.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_md.SQL.add('Select MC_CODLOC_IBGE from MDFE_CADMUNCARREG '
                +' where MC_ID=:ID '
                +' and MC_CODLOC_IBGE=:CODLOC ');
query_md.ParamByName('ID').AsInteger := pid;
query_md.ParamByName('CODLOC').AsInteger := pCodMun;
try
   query_md.Open;
except on e : exception do
   ex_erroSql_Novo(query_md,248,'func Erro:'+e.Message ,'MDFE_CADMUNCARREG');
   end;
if query_md.IsEmpty then
   result:=false
else
   result:=true;
query_md.close;
freeandnil(query_md);

end;


function TFrm_Manifesto_Sefaz.fMunDescProximoSeq(pid, pCodMun: Integer): Integer;

var
query_md: tQuery;
begin
query_md:=tQuery.Create(nil);
query_md.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_md.SQL.add('Select nvl(max(MD_SEQ),0)+1 as seq from MDFE_CADMUNDESC '
                +' where MD_ID=:ID '
                +' and MD_CODLOC_IBGE=:CODLOC ');
query_md.ParamByName('ID').AsInteger := pid;
query_md.ParamByName('CODLOC').AsInteger := pCodMun;
try
   query_md.Open;
   result:=query_md.fieldbyname('seq').asinteger;
except on e : exception do
   begin
   ex_erroSql_Novo(query_md,305,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   result:=0;
   end;
   end;
query_md.close;
freeandnil(query_md);

end;


function TFrm_Manifesto_Sefaz.fMunCarregProximoSeq(pid, pCodMun_ibge: Integer): Integer;

var
query_md: tQuery;
begin
query_md:=tQuery.Create(nil);
query_md.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_md.SQL.add('Select nvl(max(MC_SEQ),0)+1 as seq from MDFE_CADMUNCARREG '
                +' where MC_ID=:ID '
                +' and MC_CODLOC_IBGE=:CODLOC ');
query_md.ParamByName('ID').AsInteger := pid;
query_md.ParamByName('CODLOC').AsInteger := pCodMun_ibge;
try
   query_md.Open;
   result:=query_md.fieldbyname('seq').asinteger;
except on e : exception do
   begin
   ex_erroSql_Novo(query_md,539,'func Erro:'+e.Message ,'MDFE_CADMUNCARREG');
   result:=0;
   end;
   end;
query_md.close;
freeandnil(query_md);

end;

procedure TFrm_Manifesto_Sefaz.bbUFPercClick(Sender: TObject);
var
mUF: String;
begin
mUF :=DBLookupCBUfPerrcurso.KeyValue;

if fUFPercJaDigitado(mid, mUF) then
   begin
   MessageDlg('UF Ja Digitada!',mtWarning,[mbOk],0);
   cb_uf.SetFocus;
   exit;
   end;
Tb_CadUFPercurso.Append;
Tb_CadUFPercursoufp_uf.Value := mUF;
Tb_CadUFPercursopnom.Value   := DBLookupCBUfPerrcurso.Text;
Tb_CadUFPercursoufp_id.Value := mId;
Tb_CadUFPercurso.Post;



end;




function TFrm_Manifesto_Sefaz.fUFPercJaDigitado(pid: Integer;  pUF: String): Boolean;
var
query_md: tQuery;
begin
query_md:=tQuery.Create(nil);
query_md.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_md.SQL.add('SELECT ufp_id,ufp_uf '
                +',pnom FROM MDFE_CADUFPERCURSO,CADUF '
                +' where puf=ufp_uf '
                +' and UFP_ID=:ID ');
query_md.ParamByName('ID').AsInteger := pid;
if trim(pUF)<>'' then
   begin
   query_md.sql.add(' and UFP_UF=:UF ');
   query_md.ParamByName('UF').AsString := pUF;
   end;
try
   query_md.Open;
except on e : exception do
   ex_erroSql_Novo(query_md,373,'func Erro:'+e.Message ,'MDFE_CADUFPERCURSO');
   end;
if query_md.IsEmpty then
   result:=false
else
   result:=true;
query_md.close;
freeandnil(query_md);

end;

function TFrm_Manifesto_Sefaz.fAtalizarUFPercurso: boolean;
begin
Qr_UF.close;
Qr_UF.SQL.clear;
Qr_UF.SQL.add('select puf,pnom from caduf '
             +' order by puf ');

try
   qr_uf.Open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_uf,396,'func Erro:'+e.Message ,'caduf');
   result:=false;
   end;
   end;
end;


procedure TFrm_Manifesto_Sefaz.FormShow(Sender: TObject);
begin
if codusr=1111 then
   tsConfigMaster.TabVisible:=true
else
   tsConfigMaster.TabVisible:=false;

fbloquearLiberarCampos(false);

fAtalizarUFPercurso;
fLerCADMDFE(0);


end;

procedure TFrm_Manifesto_Sefaz.CB_UFPercursClick(Sender: TObject);
begin
DBLookupCBUfPerrcurso.KeyValue:=CB_UFPercurs.text;
end;

function TFrm_Manifesto_Sefaz.fLerCadLacres(pId: integer; pLacre: String): boolean;
begin
Tb_CadLacres.close;
Tb_CadLacres.sql.clear;

Tb_CadLacres.sql.add('SELECT CL_ID,CL_LACRE from MDFE_CADLACRES where 1=1 ');
Tb_CadLacres.sql.add(' and CL_ID=:ID ');
Tb_CadLacres.ParamByName('ID').AsInteger := pid;
if trim(pLacre)<>'' then
   begin
   Tb_CadLacres.sql.add(' and CL_LACRE=:LACRE');
   Tb_CadLacres.ParamByName('LACRE').AsString := pLacre;
   end;
try
   Tb_CadLacres.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_CadLacres,811,'func Erro:'+e.Message ,'MDFE_CADLACRE');
   end;


end;




function TFrm_Manifesto_Sefaz.fLerCadUFPercurso(pId: integer; pUF: String): boolean;
begin
Tb_CadUFPercurso.close;
Tb_CadUFPercurso.sql.clear;

Tb_CadUFPercurso.sql.add('SELECT ufp_id,ufp_uf '
                +',max(pnom) as pnom FROM MDFE_CADUFPERCURSO,CADUF '
                +' where puf=ufp_uf '
                +' and UFP_ID=:ID '
                +' group by ufp_id,ufp_uf '
                );
Tb_CadUFPercurso.ParamByName('ID').AsInteger := pid;
if trim(pUF)<>'' then
   Tb_CadUFPercurso.ParamByName('UF').AsString := pUF;
Tb_CadUFPercurso.Sql.Add(' order by UFP_UF ');
try
   Tb_CadUFPercurso.Open;
except on e : exception do
   ex_erroSql_Novo(Tb_CadUFPercurso,479,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   end;


end;

procedure TFrm_Manifesto_Sefaz.bbAlterarClick(Sender: TObject);
var
Mensagem: String;
begin
Mensagem:='';


if tb_MDFEMDFE_STATUS.AsInteger=0 then
   mensagem:=mensagem+'MDFE sendo digitada!'+#13
else if tb_MDFEMDFE_STATUS.AsInteger=3 then
   mensagem:=mensagem+'MDFE sendo enviada ao sefaz!'+#13
else if tb_MDFEMDFE_STATUS.AsInteger=4 then
   mensagem:=mensagem+'MDFE ja enviada ao sefaz!'+#13
else if tb_MDFEMDFE_STATUS.AsInteger=5 then
   mensagem:=mensagem+'MDFE sendo encerrada!'+#13
else if tb_MDFEMDFE_STATUS.AsInteger=6 then
   mensagem:=mensagem+'MDFE ja encerrada!'+#13
else if tb_MDFEMDFE_STATUS.AsInteger>6 then
   mensagem:=mensagem+'MDFE excluida!'+#13;

if trim(Mensagem)<>'' then
   Messagedlg(Mensagem,mtWarning,[mbOk],0);
tb_MDFE.Edit;
mOperMDFE:=8;
fAtualizarBotoes(true);

end;

procedure TFrm_Manifesto_Sefaz.bbExcluirClick(Sender: TObject);
begin
if tb_MDFEMDFE_STATUS.AsInteger=0 then
   begin
   Messagedlg('MDFE sendo digitada!',mtWarning,[mbOk],0);
   exit;
   end;

if tb_MDFEMDFE_STATUS.AsInteger=3 then
   begin
   Messagedlg('MDFE sendo enviada para o SEFAZ!',mtWarning,[mbOk],0);
   exit;
   end;


if tb_MDFEMDFE_STATUS.AsInteger<3 then
   begin
   if Application.MessageBox(pchar('Quer Realmente Excluir o MDFE '+tb_MDFEMDFE_ID.AsString+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>MrYes then
      begin
      exit;
      end;
   tb_MDFE.Edit;
   tb_MDFEMDFE_STATUS.value:=7;
   tb_MDFE.Post;
   exit;
   end;
if tb_MDFEMDFE_STATUS.AsInteger=5 then
   begin
   MessageDlg('MDFE ja encerrado na base do SEFAZ!',mtWarning,[mbOk],0);
   exit;
   end
else if tb_MDFEMDFE_STATUS.AsInteger<>4 then
   begin
   MessageDlg('MDFE ja esxcluido anteriormente!',mtWarning,[mbOk],0);
   exit;
   end;


Application.createForm(TFrm_MDFE_Justificativa, Frm_MDFE_Justificativa);
Frm_MDFE_Justificativa.ShowModal;
if Frm_MDFE_Justificativa.edt_justificativa.Text='' then
   exit;
if fCancelarMDFE(Frm_MDFE_Justificativa.edt_justificativa.Text) then
   begin
   tb_MDFE.Edit;
   if tb_MDFEMDFE_STATUS.value =  6 then
      tb_MDFEMDFE_STATUS.value  := 9
   else
      tb_MDFEMDFE_STATUS.value  := 8;
   tb_MDFE.Post;
   MessageDlg('MDFE Excluido!',mtInformation,[mbOk],0);
   end
else
   begin
   MessageDlg('Operação Cancelada!',mtWarning,[mbOk],0);
   end;

fAtualizarBotoes(false);

end;

function TFrm_Manifesto_Sefaz.fCancelarMDFE(pJustificativa: String): Boolean;
var
pXmlMDFE: TStringList;
begin
result:=true;
pXmlMDFE:=TStringList.create;
fGerarXMLMDFECancelamento(tb_MDFEMDFE_ID.AsInteger,1, Now(), pJustificativa, pXmlMDFE);

if fEnviarXML(Nfe_MDFE_evento,tb_MDFEMDFE_ID.AsInteger,  pXmlMDFE.Text) then
   begin
   fSetarStatusPara(tb_MDFEMDFE_ID.AsInteger,9);
   MessageDLG('MDFE placa '+tb_MDFEMDFE_VT_PLACA.AsString+' cancelada!', mtInformation,[mbOk],0)
   end
else
   begin
   MessageDLG('MDFE placa '+tb_MDFEMDFE_VT_PLACA.AsString+' NÃO CANCELADA!', mtWarning,[mbOk],0);
   end;
{
SaveDialog1.FileName:='c:\sge\mdfe'+tb_MDFEMDFE_ID.AsString+'.xml';
if SaveDialog1.Execute then
   pXMLmDFE.SaveToFile(SaveDialog1.FileName);
 }

fLerCADMDFE(mId);



end;


procedure TFrm_Manifesto_Sefaz.bbGravarClick(Sender: TObject);
var
mConsistencias: String;

begin
mConsistencias:='';


if trim(tb_MDFEMDFE_VT_UF.AsString)='' then
   mConsistencias:=mConsistencias+'UF do Veiculo de tração tem que ser colocado!'+#13;

if trim(tb_MDFEMDFE_VT_PLACA.AsString)='' then
   mConsistencias:=mConsistencias+'Placa do Veiculo de tração tem que ser colocado!'+#13;

if trim(mConsistencias)<>'' then
   begin
   MessageDlg('Erro '+mConsistencias,mtWarning,[mbOk],0);
   exit;   
   end;

if tb_MDFEMDFE_STATUS.Value=0 then
   tb_MDFEMDFE_STATUS.Value:=1
else
   tb_MDFEMDFE_STATUS.Value:=3;

tb_MDFE.Post;
fAtualizarBotoes(false);

end;

procedure TFrm_Manifesto_Sefaz.bbCancelarClick(Sender: TObject);
begin

if mOperMDFE=0 then
   begin
   tb_MDFEMDFE_STATUS.Value:=7;
   tb_MDFE.Post;
   end
else
   tb_MDFE.Cancel;

fAtualizarBotoes(false);

end;

procedure TFrm_Manifesto_Sefaz.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
     DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
except on e : exception do
   MessageDlg('Erro '+e.Message,mtError,[mbOk],0);
   end;

end;

procedure TFrm_Manifesto_Sefaz.tb_manifesto_nfAfterPost(DataSet: TDataSet);
begin
c(tb_manifesto_nf);
fAtualizarDescarregamentoPercurso;
fatualizardocumentos(mid);
end;

procedure TFrm_Manifesto_Sefaz.fAtualizarDescarregamentoPercurso;
var
query_exe: TQuery;
begin

query_exe:=TQuery.create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_exe.SQL.Add('delete from MDFE_CADMUNDESC  where md_id=:id ');
query_exe.parambyname('id').AsInteger := mId;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_exe,583,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   end;

query_exe.Close;
query_exe.sql.Clear;
query_exe.sql.add('insert into MDFE_CADMUNDESC ('
                 +'md_id '
                 +',md_seq '
                 +',md_codloc_ibge '
                 +')   '
                 +'Select md_id '
                 +', rownum as md_seq '
                 +', MNF_CODLOC_IBGE '
                 +' from ( '


                 +' select '
                 +inttostr(mId)+' as md_id '
                 +',MNF_CODLOC_IBGE '
                 +' from MDFE_CADMANIFESTO '
                 +' where MNF_ID=:ID '
                 +' group by MNF_CODLOC_IBGE  '
                 +') d1 '
                 );
query_exe.parambyname('ID').AsInteger := mId;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_exe,603,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   end;
fLerCadMunDesc;
{

query_exe.Close;
query_exe.sql.Clear;
query_exe.SQL.Add('delete from MDFE_CADUFPERCURSO  where UFP_id=:id ');
query_exe.parambyname('id').AsInteger := mId;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_exe,583,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   end;

query_exe.Close;
query_exe.sql.Clear;
query_exe.sql.Add('insert into MDFE_CADUFPERCURSO ( '
                 +'ufp_id, '
                 +'ufp_uf, '
                 +'ufp_coduf_ibge '
                 +') '
                 +'select '+Inttostr(mId)+' as ufp_id '
                 +', mnf_uf as ufp_uf '
                 +', substr(mnf_codloc_ibge,1,2) as mnf_coduf_ibge '
                 +' from MDFE_CADMANIFESTO '
                 +' where mnf_id=:ID '
                 +' group by mnf_uf,substr(mnf_codloc_ibge,1,2)' );
query_exe.parambyname('ID').AsInteger := mId;

try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_exe,638,'func Erro:'+e.Message ,'MDFE_CADUFPERCURSO');
   end;
fLerCadUFPercurso(mid,'');
}
end;

procedure TFrm_Manifesto_Sefaz.tb_manifesto_nfAfterInsert(
  DataSet: TDataSet);
begin
tb_manifesto_nfmnf_id.Value:=mId;
end;

procedure TFrm_Manifesto_Sefaz.bbMunDescExcluirClick(Sender: TObject);
begin
if (Tb_CadMunDesc.Active) and (not Tb_CadMunDesc.IsEmpty) then
   begin
   if Application.MessageBox(pchar('Quer Realmente excluir o Municipio '+Tb_CadMunDesclnome.asstring+'-'+Tb_CadMunDescluf.asstring+'?')
                           ,'Confirmação', MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   Tb_CadMunDesc.Delete;
   end;
end;

procedure TFrm_Manifesto_Sefaz.bbMunPercursoExcluirClick(Sender: TObject);
begin
if (Tb_CadUFPercurso.Active) and (not Tb_CadUFPercurso.IsEmpty) then
   begin
   if Application.MessageBox(pchar('Quer Realmente excluir a UF '+Tb_CadUFPercursoufp_uf.AsString+'-'+Tb_CadUFPercursopnom.AsString+'?')
                           ,'Confirmação', MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   Tb_CadUFPercurso.Delete;
   end;

end;

procedure TFrm_Manifesto_Sefaz.bbIncluiCarregamentoClick(
  Sender: TObject);
var
mcodloc: Integer;
begin
mcodloc :=DBLookupCB_CodMunCarregameno.KeyValue;

if fMunCarregamentoJaDigitado(mid, mcodloc) then
   begin
   MessageDlg('Municipio de Carregamento ja Digitado!',mtWarning,[mbOk],0);
   cb_uf.SetFocus;
   exit;
   end;
Tb_CadMunCarreg.Append;
Tb_CadMunCarregmc_codloc_ibge.Value := mcodloc;
Tb_CadMunCarreglnome.Value     := DBLookupCB_CodMunCarregameno.Text;
Tb_CadMunCarregluf.Value       := cb_uf_carregamento.Text;
Tb_CadMunCarregmc_id.value     := mId;
Tb_CadMunCarregmc_seq.value    := fMunCarregProximoSeq(mId,mcodloc);
Tb_CadMunCarreg.post;







end;

procedure TFrm_Manifesto_Sefaz.bbCadMunCarregExcluirClick(Sender: TObject);
begin
if (Tb_CadMunCarreg.Active) and (not Tb_CadMunCarreg.IsEmpty) then
   begin
   if Application.MessageBox(pchar('Quer Realmente excluir o Municipio '+Tb_CadMunCarreglnome.asstring+'-'+Tb_CadMunCarregluf.asstring+'?')
                           ,'Confirmação', MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   Tb_CadMunCarreg.Delete;
   end;

end;

procedure TFrm_Manifesto_Sefaz.tb_manifesto_nfBeforePost(
  DataSet: TDataSet);
begin
  if (tb_manifesto_nfmnf_chv_nfe.IsNull) or (tb_manifesto_nfmnf_chaveped.IsNull) then
   begin
   DBGrid_manifesto_nf.SelectedField:=tb_manifesto_nfmnf_chv_nfe;
   tb_manifesto_nf.Cancel;
   abort;
   exit;
   end;
if fCadManifestoJaDigitado(tb_manifesto_nfmnf_chv_nfe.AsString) then
   begin
   MessageDlg('Nota ja Digitada Anteriormente!', mtWarning,[mbOk],0);
   DBGrid_manifesto_nf.SelectedField:=tb_manifesto_nfmnf_chv_nfe;
   tb_manifesto_nf.Cancel;
   abort;
   exit;
   end;


end;

procedure TFrm_Manifesto_Sefaz.cb_uf_carregamentoClick(Sender: TObject);
begin
pAtualizarMunicipios(cb_uf_carregamento.Text);
if qr_municipio.IsEmpty=false then
   DBLookupCB_CodMunCarregameno.KeyValue:=qr_municipio.FieldByName('LCODMUN_IBGE').AsFloat;


end;


function TFrm_Manifesto_Sefaz.fCadManifestoJaDigitado(pChv_nfe: String): boolean;
var
query_temp: tQuery;
begin
query_temp:=tQuery.Create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_temp.close;
query_temp.sql.clear;
query_temp.sql.add('Select count(*) as qtd '
                       +' from MDFE_CADMANIFESTO '
                       +' where mnf_id=:id '
                       +' and mnf_chv_nfe=:chv_nfe ');
query_temp.ParamByName('ID').AsInteger := mId;
query_temp.ParamByName('chv_nfe').AsString := pChv_nfe;
try
   query_temp.Open;
   result:=query_temp.fieldbyname('qtd').asinteger>1;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp,904,'func Erro:'+e.Message ,'MDFE_CADMANIFESTO');
   result := false;
   end;
   end;

end;


procedure TFrm_Manifesto_Sefaz.rg_prop_tp_docClick(Sender: TObject);
begin
DBE_MDFE_PROP_CPF.Visible :=rg_prop_tp_doc.ItemIndex=0;
DBE_MDFE_PROP_CNPJ.Visible:=rg_prop_tp_doc.ItemIndex=1;

end;

procedure TFrm_Manifesto_Sefaz.DBE_MDFE_PROP_CNPJExit(Sender: TObject);
begin
tb_MDFEMDFE_PROP_CNPJ.Value:=MaskCPFCNPJ(DBE_MDFE_PROP_CNPJ.Text);
end;

procedure TFrm_Manifesto_Sefaz.DBE_MDFE_PROP_CPFExit(Sender: TObject);
begin
tb_MDFEMDFE_PROP_CPF.Value:=MaskCPFCNPJ(DBE_MDFE_PROP_CPF.Text);

end;

procedure TFrm_Manifesto_Sefaz.bbCondutoresIncluirClick(Sender: TObject);
begin

if fVlPedagioJaDigitado(edt_num_comprovante.text) then
   begin
   MessageDlg('Comprovante Ja Digitado!',mtWarning,[mbOk],0);
   edt_num_comprovante.SetFocus;
   exit;
   end;
tb_cadvlpedagio.Append;
tb_cadvlpedagioVP_ID.Value   := mID;
tb_cadvlpedagioVP_NUM_COMPROVANTE.Value  := edt_num_comprovante.Text;

tb_cadvlpedagioVP_CNPJ_FORNECEDOR.Value  := edt_cnpj_fornecedor.Text;
tb_cadvlpedagioVP_CNPJ_PAGADOR.Value     := edt_cnpj_pagador.Text;
tb_cadvlpedagioVP_CPF_PAGADOR.value      := edt_cpf_pagador.Text;
tb_cadvlpedagioVP_VALOR_VALE.Value       := ValFloat(edt_vp_valor.Text);
tb_cadvlpedagio.Post;



end;

function TFrm_Manifesto_Sefaz.fVlPedagioJaDigitado(pNumComprovante: String): Boolean;
var
query_vl_pedagio: tQuery;
begin
query_vl_pedagio:=tQuery.Create(nil);
query_vl_pedagio.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_vl_pedagio.sql.add('Select count(*) as qtd from MDFE_CADVLPEDAGIO WHERE  '
                      +' VP_ID = :ID '
                      +' and VP_NUM_COMPROVANTE = :NUM_COMPROVANTECPF ');
query_vl_pedagio.ParambyName('ID').AsInteger :=  mId;
query_vl_pedagio.ParambyName('NUM_COMPROVANTE').AsString := pNumComprovante;
try
   query_vl_pedagio.Open;
   result:=query_vl_pedagio.FieldByName('qtd').AsInteger>0;
except on e : exception do
   begin
   ex_erroSql_Novo(query_vl_pedagio,1059,'_stru'+e.message,'user');
   end;
   end;
query_vl_pedagio.close;
freeandnil(query_vl_pedagio);


end;



function TFrm_Manifesto_Sefaz.fCondutorJaDigitado(pCPF: String): Boolean;
var
query_condutor: tQuery;
begin
query_condutor:=tQuery.Create(nil);
query_condutor.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query_Condutor.sql.add('Select count(*) as qtd from MDFE_CADCONDUTORES WHERE  '
                      +' CC_ID = :ID '
                      +' and CC_CPF = :CPF ');
Query_Condutor.ParambyName('ID').AsInteger := mId;
Query_Condutor.ParambyName('CPF').AsString := pCPF;
try
   query_condutor.Open;
   result:=query_condutor.FieldByName('qtd').AsInteger>0;
except on e : exception do
   begin
   ex_erroSql_Novo(query_condutor,1059,'_stru'+e.message,'user');
   end;
   end;
query_condutor.close;
freeandnil(query_condutor);


end;


function TFrm_Manifesto_Sefaz.fLerCadCondutores(pId: integer; pCPF: String): boolean;
begin

Tb_Condutores.Close;
Tb_Condutores.SQL.clear;
Tb_Condutores.SQL.Add('Select * from MDFE_CADCONDUTORES where '
                     +' CC_ID = :ID ');
Tb_Condutores.ParambyName('ID').AsInteger := mId;

if trim(pCPF)<>'' then
   begin
   Tb_Condutores.SQL.Add(' and CC_CPF = :CPF ');
   Tb_Condutores.ParambyName('CPF').AsString := pCPF;
   end;

try
   Tb_Condutores.Open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_condutores,1059,'_stru'+e.message,'user');
   result:=false;
   end;
   end;

end;

procedure TFrm_Manifesto_Sefaz.edt_cc_cpfExit(Sender: TObject);
begin
edt_cc_cpf.Text:=MaskCPFCNPJ(edt_cc_cpf.text);
end;

procedure TFrm_Manifesto_Sefaz.bbLacresIncluirClick(Sender: TObject);
begin

if fLacresJaDigitado(mid, edt_lacre.text) then
   begin
   MessageDlg('Lacre Ja Digitada!',mtWarning,[mbOk],0);
   edt_lacre.SetFocus;
   exit;
   end;
Tb_CadLacres.Append;
Tb_CadLacresCL_ID.Value      := mId;
Tb_CadLacresCL_LACRE.Value   := edt_lacre.Text;
Tb_CadLacres.post;







end;

procedure TFrm_Manifesto_Sefaz.bbLacreExcluirClick(Sender: TObject);
begin
if (Tb_CadLacres.Active) and (not Tb_CadLacres.IsEmpty) then
   begin
   if Application.MessageBox(pchar('Quer Realmente excluir o Lacre '+Tb_CadLacresCL_LACRE.asstring+'?')
                           ,'Confirmação', MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   Tb_CadLacres.Delete;
   end;

end;

procedure TFrm_Manifesto_Sefaz.bbCondutoresExcluirClick(Sender: TObject);
begin
if (Tb_Condutores.Active) and (not Tb_Condutores.IsEmpty) then
   begin
   if Application.MessageBox(pchar('Quer Realmente excluir o Condutor '+Tb_CondutoresCC_NOME.AsString+' CPF: '+Tb_CondutoresCC_CPF.AsString+'?')
                           ,'Confirmação', MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   Tb_Condutores.Delete;
   end;

end;

procedure TFrm_Manifesto_Sefaz.edt_MDFE_dhEmi_dataExit(Sender: TObject);
begin
if bbGravar.Enabled then
   begin
   tb_MDFEMDFE_DHEMI.AsDateTime :=    fStringtodatetime(edt_MDFE_dhEmi_data.Text+' '+TimeToStr(edt_MDFE_dhEmi_hora.Time));
   end;
end;

procedure TFrm_Manifesto_Sefaz.edt_MDFE_dhIniViagem_dataExit(Sender: TObject);
begin
if bbGravar.Enabled then
   begin
   tb_MDFEMDFE_DHINIVIAGEM.AsDateTime :=    fStringtodatetime(edt_MDFE_dhIniViagem_data.Text+' '+TimeToStr(edt_MDFE_dhIniViagem_hora.Time));
   end;

end;

procedure TFrm_Manifesto_Sefaz.btn_sairClick(Sender: TObject);
begin
close;
end;

function TFrm_Manifesto_Sefaz.fLerCADMDFE(pid: Integer): boolean;


begin
tb_MDFE.close;
tb_MDFE.sql.clear;
tb_MDFE.sql.add(fRetornarCorpoSQlMDFE);
if pid>0 then
   tb_MDFE.SQL.Add(' and mdfe_id='+IntToStr(pid))
else
   begin
   if valint(edt_chaveini.Text)<>0 then
      tb_MDFE.SQL.Add(' and mdfe_id>='+fdeixanum(edt_chaveini.Text));
   if valint(edt_chavefin.Text)<>0 then
      tb_MDFE.SQL.Add(' and mdfe_id<='+fdeixanum(edt_chavefin.Text));
   tb_MDFE.SQL.Add(fFormatdatetimeParaConsulta('mdfe_dhemi',true,edt_datini.Date));
   tb_MDFE.SQL.Add(fFormatdatetimeParaConsulta('mdfe_dhemi',false,edt_datfin.Date));
   mcinst2:=fItenstCheckListBox(0,CLBSTATUS);
   if trim(mcinst2)<>'' then
      Tb_MDFE.SQL.add(' and MDFE_STATUS '+mcinst2);
   end;


try
   tb_MDFE.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_MDFE,1059,'_stru'+e.message,'user');
   end;
   end;


end;


procedure TFrm_Manifesto_Sefaz.BBnAtuClick(Sender: TObject);
begin
fLerCADMDFE(0);


end;

procedure TFrm_Manifesto_Sefaz.Src_MDFEDataChange(Sender: TObject;
  Field: TField);
begin
if bbGravar.Enabled then
   begin
   if mlid_id<>tb_MDFEMDFE_ID.AsInteger then
      begin
      mid:=tb_MDFEMDFE_ID.AsInteger;
      mlid_id:=mid;
      fLerCadMunDesc;
      fLerCadManifesto;
      fLerCadUFPercurso(mid,'');
      fLerCadMunCarreg;
      fLerCadCondutores(mId,'');
      fLerCadLacres(mId,'');
      fAtualizarDateTime;
      fLerCadVlPedagio;
      end;
   end;

end;

procedure TFrm_Manifesto_Sefaz.fbloquearLiberarCampos(pEdit: boolean);
begin

//DBGrid_manifesto_nf.ReadOnly           := pEdit = false;
cb_uf_carregamento.Enabled             := pEdit;
DBLookupCB_CodMunCarregameno.Enabled   := pEdit;
cb_uf.Enabled                          := pEdit;
DBLookupCBCodloc.Enabled               := pEdit;
CB_UFPercurs.Enabled                   := pEdit;
bbIncluiCarregamento.Enabled           := pEdit;
bbIncMunDesc.Enabled                   := pEdit;
bbUFPerc.Enabled                       := pEdit;
DBE_MDFE_VT_RNTRC.ReadOnly             := pEdit = false;
DBE_MDFE_VT_COD_AG_PORTO.ReadOnly      := pEdit = false;
DBE_MDFE_VT_CINT.ReadOnly              := pEdit = false;
RxDBCB_MDFE_VT_TPCAR.ReadOnly          := pEdit = false;
DBE_MDFE_VT_PLACA.ReadOnly             := pEdit = false;
DBE_MDFE_VT_TARA.ReadOnly              := pEdit = false;
DBE_MDFE_VT_RENAVAN.ReadOnly           := pEdit = false;
RxDBCB_MDFE_VT_UF.ReadOnly             := pEdit = false;
RxDBCB_MDFE_VT_TPROD.ReadOnly          := pEdit = false;
DBE_MDFE_VT_CAPKG.ReadOnly             := pEdit = false;
DBE_MDFE_VT_CAPM3.ReadOnly             := pEdit = false;
DBCB_MDFE_PROP.ReadOnly                := pEdit = false;
DBE_MDFE_PROP_RNTRC.ReadOnly           := pEdit = false;
RxDBCB_MDFE_TPPROP.ReadOnly            := pEdit = false;
RxDBCB_MDFE_PROP_UF.ReadOnly           := pEdit = false;
rg_prop_tp_doc.Enabled                 := pEdit;
DBE_MDFE_PROP_NOME.ReadOnly            := pEdit = false;
DBE_MDFE_PROP_IE.ReadOnly              := pEdit = false;
edt_cc_cpf.ReadOnly                    := pEdit = false;
edt_cc_nome.ReadOnly                   := pEdit = false;
bbCondutoresIncluir.Enabled            := pEdit;
DBE_MDFE_MOD.ReadOnly                  := pEdit = false;
DBE_MDFE_SERIE.ReadOnly                := pEdit = false;
DBE_MDFE_NUMERO2.ReadOnly              := pEdit = false;
edt_MDFE_dhEmi_data.ReadOnly           := pEdit = false;
edt_MDFE_dhEmi_hora.Enabled            := pEdit;
edt_MDFE_dhIniViagem_data.ReadOnly     := pEdit = false;
edt_MDFE_dhIniViagem_hora.enabled      := pEdit;
RxDBCB_MDFE_EMIT_UF.ReadOnly           := pEdit = false;
RxDBCB_MDFE_TPEMIT.ReadOnly            := pEdit = false;
RxDBCB_MDFE_TPTRANSP.ReadOnly          := pEdit = false;
RxDBCB_MDFE_MODAL.ReadOnly             := pEdit = false;
RxDBCB_MDFE_TPEMIS.ReadOnly            := pEdit = false;

edt_cpf_pagador.ReadOnly                := pEdit = false;
edt_cnpj_pagador.ReadOnly               := pEdit = false;
edt_cnpj_fornecedor.ReadOnly            := pEdit = false;
edt_num_comprovante.ReadOnly            := pEdit = false;
edt_vp_valor.ReadOnly                   := pEdit = false;
bbVPincluir.Enabled                     := pEdit ;



bbIncluir.Enabled                      := pEdit = false;
bbAlterar.Enabled                      := pEdit = false;
bbExcluir.Enabled                      := pEdit = false;
bbGravar.Enabled                       := pEdit;
bbCancelar.Enabled                     := pEdit;




end;

procedure TFrm_Manifesto_Sefaz.tb_MDFEBeforeInsert(DataSet: TDataSet);
begin
fbloquearLiberarCampos(true);
end;

procedure TFrm_Manifesto_Sefaz.tb_MDFEBeforeEdit(DataSet: TDataSet);
begin
fbloquearLiberarCampos(true);

end;

procedure TFrm_Manifesto_Sefaz.tb_MDFEAfterPost(DataSet: TDataSet);
begin
fbloquearLiberarCampos(false);
TimerManipulacao.Enabled:=false;
UpdateMDFE_CadMDFE;


end;

procedure TFrm_Manifesto_Sefaz.tb_MDFEAfterCancel(DataSet: TDataSet);
begin
fbloquearLiberarCampos(false);
TimerManipulacao.Enabled:=false;


end;

procedure TFrm_Manifesto_Sefaz.tb_MDFEAfterDelete(DataSet: TDataSet);
begin
fbloquearLiberarCampos(false);
c(tb_MDFE);
end;

procedure TFrm_Manifesto_Sefaz.tb_MDFEAfterEdit(DataSet: TDataSet);
begin
tb_MDFEMDFE_CODUSR_UEVE.asfloat:=codusr;
tb_MDFEMDFE_DH_UEVE.asdatetime := now();
//TimerManipulacao.Enabled:=true;

end;



procedure TFrm_Manifesto_Sefaz.bbEnviaraoSefazClick(Sender: TObject);
var
query_mdfe: TQuery;
mXMLDFE: TStringList;
   procedure pfechartudo;
   begin
   query_mdfe.close;
   freeandnil(query_mdfe);
   end;

begin


query_mdfe:=TQuery.create(nil);
query_mdfe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_mdfe.SQL.Add(' select '
                  +' MDFE_ENVIO_NPROT, '
                  +' case when mdfe_status =0 and '
                  +' round(((to_number(SYSDATE - MDFE_DATHORMANIPULACAO) * 1440))) <2  then 1 '
                  +' else mdfe_status end as mdfe_status '
                  +',  MDFE_TPAMB, MDFE_SERIE '
                  +' from mdfe_cadmdfe where mdfe_id=:id ');
query_mdfe.ParamByName('id').AsInteger := mId;
try
   query_mdfe.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_mdfe,1968,'_stru'+e.message,'user');
   pfechartudo;
   exit;
   end;
   end;
if query_mdfe.FieldByName('mdfe_status').AsInteger=4 then
   begin
   MessageDlg('Este MDFE ja foi enviado ao Sefaz!',mtWarning,[mbOk],0);
   pfechartudo;
   exit;
   end
else if query_mdfe.FieldByName('mdfe_status').AsInteger=5 then
   begin
   MessageDlg('Este MDFE  foi Excluido antes de Enviar ao  Sefaz!',mtWarning,[mbOk],0);
   pfechartudo;
   exit;
   end
else if query_mdfe.FieldByName('mdfe_status').AsInteger=6 then
   begin
   MessageDlg('Este MDFE foi Cancelado, ja enviado ao Sefaz!',mtWarning,[mbOk],0);
   pfechartudo;
   exit;
   end
else if query_mdfe.FieldByName('mdfe_status').AsInteger=0 then
   begin
   MessageDlg('Este MDFE Esta Sendo Digitado, ja enviado ao Sefaz!',mtWarning,[mbOk],0);
   pfechartudo;
   exit;
   end;
if query_mdfe.FieldByName('mdfe_status').AsInteger=1 then
   begin
   if not fGerarChvMDFESetarNumeroDhEmi(mId, query_mdfe.fieldbyname('MDFE_SERIE').asstring
                   , query_mdfe.fieldbyname('MDFE_TPAMB').asstring) then
      exit;
   fLerCADMDFE(mId);
   end
else if query_mdfe.FieldByName('mdfe_status').AsInteger=3 then
   begin
   if not fSetarStatusPara(mId,2) then
      begin
      exit;
      end;
   fLerCADMDFE(mId);
   end;
mXMLDFE:=TStringList.create;
if fGerarXMLMDFE(mId,mXMLDFE) then
   begin
//   SaveDialog1.FileName:='c:\sge\mdfe'+inttostr(mId)+'.xml';
//   if SaveDialog1.Execute then
//      mXMLDFE.SaveToFile(SaveDialog1.FileName);
   if fEnviarXML(Nfe_MDFE_envio, mid,  mXMLDFE.Text) then
      begin
      fLerCADMDFE(mId);
      if trim(tb_MDFEMDFE_ENVIO_NPROT.AsString)<>'' then
         begin
         Application.createform(TFrm_MDFE_Impressao, Frm_MDFE_Impressao);
         Frm_MDFE_Impressao.mId := TB_MDFEMDFE_id.AsInteger;
         Frm_MDFE_Impressao.fLerCadMDFE;
         Frm_MDFE_Impressao.rLDamDFE_mod01.PreviewModal;
         freeandnil(Frm_MDFE_Impressao);
         end;
      end;
   end;
fLerCADMDFE(mId);


end;


function TFrm_Manifesto_Sefaz.fBuscarProximosNumeros(pSerie,pAmbiente: String): Integer;
var
query_info: tQuery;

begin

query_info:=tQuery.create(nil);
query_info.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_info.SQL.clear;
query_info.SQL.Add('Select PID from buscaretestarid WHERE PTABELA='+quotedstr(mProximaMDFE+pserie+pAmbiente));
try
  query_info.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_info,31,'_stru'+e.message,'user');
   exit;
   end;
   end;
if query_info.IsEmpty then
   result:=1
else
   result:=query_info.fieldbyname('PID').Asinteger;

query_info.close;
freeandnil(query_info);
end;
procedure TFrm_Manifesto_Sefaz.PageControlGeralChange(Sender: TObject);
begin
if PageControlGeral.ActivePage=tsConfigMaster then
   begin
   edt_proximo_mdfe_ambiente_producao.Text:=Inttostr(fBuscarProximosNumeros(edt_mdfe_producao_serie.text,'1'));
   edt_proximo_mdfe_ambiente_homologacao.Text:=Inttostr(fBuscarProximosNumeros(edt_mdfe_homologacao_serie.text,'1'));
   end;

end;

procedure TFrm_Manifesto_Sefaz.edt_proximo_mdfe_ambiente_producaoExit(
  Sender: TObject);
begin
edt_proximo_mdfe_ambiente_producao.Text:=fdeixanum(edt_proximo_mdfe_ambiente_producao.Text);
end;

procedure TFrm_Manifesto_Sefaz.edt_proximo_mdfe_ambiente_homologacaoExit(
  Sender: TObject);
begin
edt_proximo_mdfe_ambiente_homologacao.Text:=fdeixanum(edt_proximo_mdfe_ambiente_homologacao.Text);

end;

procedure TFrm_Manifesto_Sefaz.edt_proximo_mdfe_ambiente_producaoEnter(
  Sender: TObject);
begin
    mAnt_ProxNumMDFE_Prod:=valint(edt_proximo_mdfe_ambiente_producao.Text);
end;

procedure TFrm_Manifesto_Sefaz.edt_proximo_mdfe_ambiente_homologacaoEnter(
  Sender: TObject);
begin
    mAnt_ProxNumMDFE_Homolog:=valint(edt_proximo_mdfe_ambiente_homologacao.text);
end;

procedure TFrm_Manifesto_Sefaz.edt_proximo_mdfe_ambiente_producaoChange(
  Sender: TObject);
begin

bbSalvarAmbienteNormal.Enabled:=mAnt_ProxNumMDFE_Prod<>valint(edt_proximo_mdfe_ambiente_producao.Text);

end;

procedure TFrm_Manifesto_Sefaz.edt_proximo_mdfe_ambiente_homologacaoChange(
  Sender: TObject);
begin
bbSalvarAmbienteHomologacao.Enabled:=mAnt_ProxNumMDFE_Homolog<>valint(edt_proximo_mdfe_ambiente_homologacao.Text);

end;

procedure TFrm_Manifesto_Sefaz.bbSalvarAmbienteNormalClick(
  Sender: TObject);
begin
fSalvarProximoNumero(mProximaMDFE+edt_mdfe_producao_serie.Text,valint(edt_proximo_mdfe_ambiente_producao.Text));

end;




function TFrm_Manifesto_Sefaz.fSalvarProximoNumero(pChave: String; pValor: Integer): boolean;
var
query_info: tQuery;

begin

query_info:=tQuery.create(nil);
query_info.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_info.SQL.clear;
query_info.SQL.Add('update buscaretestarid set PID=:ID WHERE PTABELA='+quotedstr(pChave));
query_info.parambyname('ID').AsInteger:=pValor;
try
  query_info.ExecSQL;
  fdm1StartCommit;
  result:=True;

except on e : exception do
   begin
   result:=false;
   ex_erroSql_Novo(query_info,31,'_stru'+e.message,'user');
   exit;
   end;
   end;
query_info.close;
freeandnil(query_info);
end;

procedure TFrm_Manifesto_Sefaz.bbSalvarAmbienteHomologacaoClick(
  Sender: TObject);
begin
fSalvarProximoNumero(mProximaMDFE+edt_mdfe_homologacao_serie.Text,valint(edt_proximo_mdfe_ambiente_homologacao.Text));

end;


procedure TFrm_Manifesto_Sefaz.fAtualizarManipulacao(pId: Integer);
var
query_info: tQuery;
begin
query_info:=tQuery.create(nil);
query_info.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_info.SQL.clear;
query_info.SQL.Add('update MDFE_CADMDFE SET MDFE_DATHORMANIPULACAO=SYSDATE WHERE MDFE_ID=:ID');
query_info.parambyname('ID').AsInteger:=pId;
try
  query_info.ExecSQL;
  fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_info,31,'_stru'+e.message,'user');
   exit;
   end;
   end;
query_info.close;
freeandnil(query_info);



end;


procedure TFrm_Manifesto_Sefaz.TimerManipulacaoTimer(Sender: TObject);
begin
fAtualizarManipulacao(mid);
end;

procedure TFrm_Manifesto_Sefaz.edt_mdfe_producao_serieExit(
  Sender: TObject);
begin

edt_proximo_mdfe_ambiente_producao.Text:=Inttostr(fBuscarProximosNumeros(edt_mdfe_producao_serie.text,'1'));

end;

procedure TFrm_Manifesto_Sefaz.edt_mdfe_homologacao_serieExit(
  Sender: TObject);
begin
edt_proximo_mdfe_ambiente_homologacao.Text:=Inttostr(fBuscarProximosNumeros(edt_mdfe_homologacao_serie.text,'1'));
end;

procedure TFrm_Manifesto_Sefaz.CLBStatusClick(Sender: TObject);
begin
   CLBSTATUS:=Valida_CheckList(CLBSTATUS);

end;

procedure TFrm_Manifesto_Sefaz.fAtualizarDateTime;
begin
if tb_MDFEMDFE_DHEMI.AsDateTime<=pdatanula then
   begin
   edt_MDFE_dhEmi_data.Clear;
   edt_MDFE_dhEmi_hora.Time := StrToTime('00:00:00');
   end
else
   begin
   edt_MDFE_dhEmi_data.Text:=Formatdatetime(fdt2, tb_MDFEMDFE_DHEMI.AsDateTime);
   edt_MDFE_dhEmi_hora.Time:=tb_MDFEMDFE_DHEMI.AsDateTime;
   end;

if tb_MDFEMDFE_DHINIVIAGEM.AsDateTime<=pDatanula then
   begin
   edt_MDFE_dhIniViagem_data.clear;
   edt_MDFE_dhIniViagem_hora.Time := StrToTime('00:00:00');
   end
else
   begin
   edt_MDFE_dhIniViagem_data.Text:=Formatdatetime(fdt2, tb_MDFEMDFE_DHINIVIAGEM.AsDateTime);
   edt_MDFE_dhIniViagem_hora.Time:=tb_MDFEMDFE_DHINIVIAGEM.AsDateTime;
   end;
end;


function TFrm_Manifesto_Sefaz.fatualizardocumentos(pId: Integer): boolean;
var
query_total: tQuery;

begin
query_total:=tQuery.create(nil);
query_total.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_total.sql.add('select count(*) as MDFE_TOT_QNFE '
                   +', sum(mnf_valor_nf) as MDFE_TOT_VCARGA '
                   +', sum(P1PESOB) AS PESOB '
                   +' from MDFE_CADMANIFESTO,CADNS,CADP01 '
                   +' WHERE mnf_ID=:ID '
                   +' and NSNFE_CHAVEACESSO=SUBSTR(MNF_CHV_NFE,1,43) '
                   +' and P1CODEMP=NSCODEMP '
                   +' AND p1chave=NSCHAVEP '
                   +' AND p1lotseq=NSLOTSEQ_CP '
                   +' AND p1ORDEM=NSORDEMP '


                   );
query_total.ParamByName('ID').AsInteger:=pId;
try
   query_total.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_total,1897,'_stru'+e.message,'user');
   exit;
   end;
   end;
tb_MDFEMDFE_TOT_QNFE.AsInteger:=query_total.fieldbyname('MDFE_TOT_QNFE').AsInteger;
tb_MDFEMDFE_TOT_VCARGA.AsFloat:=query_total.fieldbyname('MDFE_TOT_VCARGA').AsFloat;
tb_MDFEMDFE_TOT_QCARGA.AsFloat:=query_total.fieldbyname('PESOB').AsFloat;


query_total.close;
freeandnil(query_total);

end;

procedure TFrm_Manifesto_Sefaz.tb_manifesto_nfAfterDelete(
  DataSet: TDataSet);
begin
c(tb_manifesto_nf);
fatualizardocumentos(mId);

end;

procedure TFrm_Manifesto_Sefaz.DBGrid_manifesto_nfKeyPress(Sender: TObject;
  var Key: Char);
begin
if (DBGrid_manifesto_nf.SelectedField <> tb_manifesto_nfmnf_chv_nfe) and
   (DBGrid_manifesto_nf.SelectedField <> tb_manifesto_nfmnf_chaveped) then
   begin
   if (key<>#8) then
      key:=#0;
   end;

end;

procedure TFrm_Manifesto_Sefaz.UpdateMDFE_CadMDFE;
var
query_update: TQuery;
begin

query_update:=TQuery.create(nil);
query_update.databasename:=DM1.SG_ASSOC.DatabaseName;
query_update.sql.add(' Update  mdfe_cadmdfe set '
                    +'  mdfe_vt_rntrc=:mdfe_vt_rntrc'
                    +' ,mdfe_vt_cod_ag_porto=:mdfe_vt_cod_ag_porto'
                    +' ,mdfe_vt_cint=:mdfe_vt_cint'
                    +' ,mdfe_vt_tpcar=:mdfe_vt_tpcar'
                    +' ,mdfe_vt_placa=:mdfe_vt_placa'
                    +' ,mdfe_vt_tara=:mdfe_vt_tara'
                    +' ,mdfe_vt_renavan=:mdfe_vt_renavan'
                    +' ,mdfe_vt_uf=:mdfe_vt_uf'
                    +' ,mdfe_vt_tprod=:mdfe_vt_tprod'
                    +' ,mdfe_vt_capkg=:mdfe_vt_capkg'
                    +' ,mdfe_vt_capm3=:mdfe_vt_capm3'
                    +' ,mdfe_prop=:mdfe_prop'
                    +' ,mdfe_prop_rntrc=:mdfe_prop_rntrc'
                    +' ,mdfe_prop_tpprop=:mdfe_prop_tpprop'
                    +' ,mdfe_prop_uf=:mdfe_prop_uf'
                    +' ,mdfe_prop_cpf=:mdfe_prop_cpf'
                    +' ,mdfe_prop_ie=:mdfe_prop_ie'
                    +' ,mdfe_prop_cnpj=:mdfe_prop_cnpj'
                    +' ,mdfe_prop_nome=:mdfe_prop_nome'
                    +' ,mdfe_tpprop=:mdfe_tpprop'
                    +' ,mdfe_tot_qcte=:mdfe_tot_qcte'
                    +' ,mdfe_tot_qnfe=:mdfe_tot_qnfe'
                    +' ,mdfe_tot_qnf1_1a=:mdfe_tot_qnf1_1a'
                    +' ,mdfe_status=:mdfe_status'
                    +' ,mdfe_numero=:mdfe_numero'
                    +' ,mdfe_tot_vcarga=:mdfe_tot_vcarga'
                    +' ,mdfe_tot_cunid=:mdfe_tot_cunid'
                    +' ,mdfe_versao_xml=:mdfe_versao_xml'
                    +' ,mdfe_mod=:mdfe_mod'
                    +' ,mdfe_tot_qcarga=:mdfe_tot_qcarga'
                    +' ,mdfe_dhemi=:mdfe_dhemi'
                    +' ,mdfe_dhiniviagem=:mdfe_dhiniviagem'
                    +' ,mdfe_emit_uf=:mdfe_emit_uf'
                    +' ,mdfe_tptransp=:mdfe_tptransp'
                    +' ,mdfe_modal=:mdfe_modal'
                    +' ,mdfe_serie=:mdfe_serie'
                    +' ,mdfe_tpemis=:mdfe_tpemis'
                    +' ,mdfe_dhinclusao=:mdfe_dhinclusao'
                    +' ,mdfe_tpemit=:mdfe_tpemit'
                    +' ,mdfe_codusr_inclusao=:mdfe_codusr_inclusao'
                    +' ,mdfe_dh_ueve=:mdfe_dh_ueve'
                    +' ,mdfe_codusr_ueve=:mdfe_codusr_ueve'
                    +' ,mdfe_tpamb=:mdfe_tpamb'
                    +' ,mdfe_dathormanipulacao=:mdfe_dathormanipulacao'
                    +' ,mdfe_chv_mdfe=:mdfe_chv_mdfe'
                    +',MDFE_ENVIO_NPROT=:MDFE_ENVIO_NPROT '
                    +',MDFE_ENVIO_DTHOR=:mDFE_ENVIO_DTHOR '
                    +',MDFE_ENC_NPROT=:MDFE_ENC_NPROT '
                    +',MDFE_ENC_DTHOR=:MDFE_ENC_DTHOR '
                    +',MDFE_EXCLUSAO_NPROT=:MDFE_EXCLUSAO_NPROT '
                    +',MDFE_EXCLUSAO_DTHOR=:MDFE_EXCLUSAO_DTHOR '
                    +' where  mdfe_id=:mdfe_id '
                    );



query_update.ParambyName('mdfe_id').asfloat                                           :=tb_MDFEmdfe_id.asfloat;
query_update.ParambyName('mdfe_vt_rntrc').asstring                                    :=tb_MDFEmdfe_vt_rntrc.asstring;
query_update.ParambyName('mdfe_vt_cod_ag_porto').asstring                             :=tb_MDFEmdfe_vt_cod_ag_porto.asstring;
query_update.ParambyName('mdfe_vt_cint').asstring                                     :=tb_MDFEmdfe_vt_cint.asstring;
query_update.ParambyName('mdfe_vt_tpcar').asstring                                    :=tb_MDFEmdfe_vt_tpcar.asstring;
query_update.ParambyName('mdfe_vt_placa').asstring                                    :=tb_MDFEmdfe_vt_placa.asstring;
query_update.ParambyName('mdfe_vt_tara').asinteger                                    :=tb_MDFEmdfe_vt_tara.asinteger;
query_update.ParambyName('mdfe_vt_renavan').asstring                                  :=tb_MDFEmdfe_vt_renavan.asstring;
query_update.ParambyName('mdfe_vt_uf').asstring                                       :=tb_MDFEmdfe_vt_uf.asstring;
query_update.ParambyName('mdfe_vt_tprod').asstring                                    :=tb_MDFEmdfe_vt_tprod.asstring;
query_update.ParambyName('mdfe_vt_capkg').asfloat                                     :=tb_MDFEmdfe_vt_capkg.asfloat;
query_update.ParambyName('mdfe_vt_capm3').asfloat                                     :=tb_MDFEmdfe_vt_capm3.asfloat;
query_update.ParambyName('mdfe_prop').asstring                                        :=tb_MDFEmdfe_prop.asstring;
query_update.ParambyName('mdfe_prop_rntrc').asstring                                  :=tb_MDFEmdfe_prop_rntrc.asstring;
query_update.ParambyName('mdfe_prop_tpprop').asstring                                 :=tb_MDFEmdfe_prop_tpprop.asstring;
query_update.ParambyName('mdfe_prop_uf').asstring                                     :=tb_MDFEmdfe_prop_uf.asstring;
query_update.ParambyName('mdfe_prop_cpf').asstring                                    :=tb_MDFEmdfe_prop_cpf.asstring;
query_update.ParambyName('mdfe_prop_ie').asstring                                     :=tb_MDFEmdfe_prop_ie.asstring;
query_update.ParambyName('mdfe_prop_cnpj').asstring                                   :=tb_MDFEmdfe_prop_cnpj.asstring;
query_update.ParambyName('mdfe_prop_nome').asstring                                   :=tb_MDFEmdfe_prop_nome.asstring;
query_update.ParambyName('mdfe_tpprop').asstring                                      :=tb_MDFEmdfe_tpprop.asstring;
query_update.ParambyName('mdfe_tot_qcte').asfloat                                     :=tb_MDFEmdfe_tot_qcte.asfloat;
query_update.ParambyName('mdfe_tot_qnfe').asfloat                                     :=tb_MDFEmdfe_tot_qnfe.asfloat;
query_update.ParambyName('mdfe_tot_qnf1_1a').asfloat                                  :=tb_MDFEmdfe_tot_qnf1_1a.asfloat;
query_update.ParambyName('mdfe_status').asinteger                                     :=tb_MDFEmdfe_status.asinteger;
query_update.ParambyName('mdfe_numero').asfloat                                       :=tb_MDFEmdfe_numero.asfloat;
query_update.ParambyName('mdfe_tot_vcarga').asfloat                                   :=tb_MDFEmdfe_tot_vcarga.asfloat;
query_update.ParambyName('mdfe_tot_cunid').asString                                   :=tb_MDFEmdfe_tot_cunid.asString;
query_update.ParambyName('mdfe_versao_xml').asstring                                  :=tb_MDFEmdfe_versao_xml.asstring;
query_update.ParambyName('mdfe_mod').asstring                                         :=tb_MDFEmdfe_mod.asstring;
query_update.ParambyName('mdfe_tot_qcarga').asfloat                                   :=tb_MDFEmdfe_tot_qcarga.asfloat;
query_update.ParambyName('mdfe_dhemi').asdatetime                                     :=tb_MDFEmdfe_dhemi.asdatetime;
query_update.ParambyName('mdfe_dhiniviagem').asdatetime                               :=tb_MDFEmdfe_dhiniviagem.asdatetime;
query_update.ParambyName('mdfe_emit_uf').asstring                                     :=tb_MDFEmdfe_emit_uf.asstring;
query_update.ParambyName('mdfe_tptransp').asstring                                    :=tb_MDFEmdfe_tptransp.asstring;
query_update.ParambyName('mdfe_modal').asstring                                       :=tb_MDFEmdfe_modal.asstring;
query_update.ParambyName('mdfe_serie').asstring                                       :=tb_MDFEmdfe_serie.asstring;
query_update.ParambyName('mdfe_tpemis').asstring                                      :=tb_MDFEmdfe_tpemis.asstring;
query_update.ParambyName('mdfe_dhinclusao').asdatetime                                :=tb_MDFEmdfe_dhinclusao.asdatetime;
query_update.ParambyName('mdfe_tpemit').asstring                                      :=tb_MDFEmdfe_tpemit.asstring;
query_update.ParambyName('mdfe_codusr_inclusao').asfloat                              :=tb_MDFEmdfe_codusr_inclusao.asfloat;
query_update.ParambyName('mdfe_dh_ueve').asdatetime                                   :=tb_MDFEmdfe_dh_ueve.asdatetime;
query_update.ParambyName('mdfe_codusr_ueve').asfloat                                  :=tb_MDFEmdfe_codusr_ueve.asfloat;
query_update.ParambyName('mdfe_tpamb').asstring                                       :=tb_MDFEmdfe_tpamb.asstring;
query_update.ParambyName('mdfe_dathormanipulacao').asdatetime                         :=tb_MDFEmdfe_dathormanipulacao.asdatetime;
query_update.ParambyName('mdfe_chv_mdfe').asstring                                    :=tb_MDFEmdfe_chv_mdfe.asstring;
query_update.ParambyName('MDFE_ENVIO_NPROT').asstring                                 :=tb_MDFEMDFE_ENVIO_NPROT.asstring;
query_update.ParambyName('MDFE_ENVIO_DTHOR').AsDateTime                               :=tb_MDFEMDFE_ENVIO_DTHOR.AsDateTime;
query_update.ParambyName('MDFE_ENC_NPROT').asstring                                   :=tb_MDFEMDFE_ENC_NPROT.asstring;
query_update.ParambyName('MDFE_ENC_DTHOR').AsDateTime                                 :=tb_MDFEMDFE_ENC_DTHOR.AsDateTime;

query_update.ParambyName('MDFE_EXCLUSAO_NPROT').asstring                              :=tb_MDFEMDFE_EXCLUSAO_NPROT.asstring;
query_update.ParambyName('MDFE_EXCLUSAO_DTHOR').AsDateTime                            :=tb_MDFEMDFE_EXCLUSAO_DTHOR.AsDateTime;
try
   query_update.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_update,2115,'_stru'+e.message,'user');
   end;
   end;
query_update.close;
freeandnil(query_update);
end;


procedure TFrm_Manifesto_Sefaz.DBGrid_manifesto_nfExit(Sender: TObject);
begin
if tb_manifesto_nf.state in [dsEdit,dsInsert] then
   begin
   if trim(Tb_Manifesto_nfMNF_chv_nfe.asstring)<>'' then
      Tb_Manifesto_nf.post
   else
      Tb_Manifesto_nf.cancel;

   end;
end;
procedure TFrm_Manifesto_Sefaz.fPreecherTeste;
begin

tb_manifesto_nf.Append;
tb_manifesto_nfmnf_chv_nfe.Value:='52190925048186000180550010000043251547004322';
fLerPedido(tb_manifesto_nfmnf_chv_nfe.AsString, tb_manifesto_nfmnf_chaveped.AsInteger);
tb_manifesto_nf.Post;
tb_MDFEMDFE_VT_RNTRC.Value:='12345678';
tb_MDFEMDFE_VT_PLACA.Value:='KCU2585';
tb_MDFEMDFE_VT_TARA.Value:=5000;
tb_MDFEMDFE_VT_CAPKG.Value:=4500;
tb_MDFEMDFE_VT_CAPm3.Value:=400;

tb_MDFEMDFE_TPPROP.Value   :='2';
tb_MDFEMDFE_PROP_CPF.Value:='09841019755';
tb_MDFEMDFE_PROP_RNTRC.Value:='87784321';
tb_MDFEMDFE_PROP_NOME.Value:='';


if DM4.Tb_ParGer02PG2USANFE.AsInteger<2 then
  tb_MDFEMDFE_TPAMB.Value   := '2'
else
  tb_MDFEMDFE_TPAMB.Value   := '1';


//tb_MDFEMDFE_PROP_NOME.Value:='TATU BOLA';
tb_MDFEMDFE_PROP_UF.Value:='GO';
tb_MDFEMDFE_PROP_TPPROP.Value:='2';
tb_MDFEMDFE_VT_UF.Value  :='GO';
Tb_Condutores.Append;
Tb_CondutoresCC_ID.Value:=mId;
Tb_CondutoresCC_CPF.Value:='01234096161';
Tb_CondutoresCC_NOME.Value:='JOAO';
tb_MDFEMDFE_VT_COD_AG_PORTO.Value:='0000000000000000';
Tb_Condutores.Post;



Tb_CadUFPercurso.Append;
Tb_CadUFPercursoufp_id.value:=mId;
Tb_CadUFPercursoufp_uf.value:='MT';
Tb_CadUFPercursopnom.value  :='MATO GROSSO';
Tb_CadUFPercurso.Post;







end;

procedure TFrm_Manifesto_Sefaz.bbCalcDigitoClick(Sender: TObject);
begin
label40.Caption:='o Digito é '+fCalcDigNFEMod11(edt_chave.Text);

end;

procedure TFrm_Manifesto_Sefaz.BitBtn1Click(Sender: TObject);
var
mMensagem: String;
peletronica: boolean;
begin
if fTestarServidor_NFE(codemp,'SERIE1',mmensagem, peletronica) then
   MessageDlg('mensagem '+mMensagem,mtWarning,[mbOk],0)
else
   MessageDlg('servidor NAO ATIVO mensagem '+mMensagem,mtWarning,[mbOk],0);


end;

procedure TFrm_Manifesto_Sefaz.fLerCadVlPedagio;
begin
tb_cadvlpedagio.Close;
tb_cadvlpedagio.sql.clear;
tb_cadvlpedagio.SQL.add('select VP_ID,VP_CNPJ_FORNECEDOR,VP_CNPJ_PAGADOR '
                       +',VP_CPF_PAGADOR,VP_NUM_COMPROVANTE, VP_VALOR_VALE '
                       +' from MDFE_CADVLPEDAGIO '
                       +' WHERE VP_ID=:ID ');
tb_cadvlpedagio.ParamByName('ID').AsInteger:=mId;

try
   tb_cadvlpedagio.open;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_cadvlpedagio,2267,'_stru'+e.message,'user');
   exit;
   end;
   end;



end;

procedure TFrm_Manifesto_Sefaz.edt_cpf_pagadorExit(Sender: TObject);
begin
edt_cpf_pagador.Text:=MaskCPFCNPJ(edt_cpf_pagador.text);
if fsonumero(edt_cpf_pagador.Text)<>0 then
   begin
   if not Fcpf(fdeixanum(edt_cpf_pagador.text)) then
      begin
      MessageDLG(edt_cpf_pagador.Text+' não é um CPF válido!',mtWarning,[mbOk],0);
      edt_cpf_pagador.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Manifesto_Sefaz.edt_cnpj_pagadorExit(Sender: TObject);
begin
edt_cnpj_pagador.Text:=MaskCPFCNPJ(edt_cnpj_pagador.text);
if fsonumero(edt_cnpj_pagador.Text)<>0 then
   begin
   if not FCGC(fsonumero(edt_cnpj_pagador.text)) then
      begin
      MessageDLG(edt_cnpj_pagador.Text+' não é um CNPJ válido!',mtWarning,[mbOk],0);
      edt_cnpj_pagador.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Manifesto_Sefaz.edt_cnpj_fornecedorExit(Sender: TObject);
begin
edt_cnpj_fornecedor.Text:=MaskCPFCNPJ(edt_cnpj_fornecedor.text);
if fsonumero(edt_cnpj_fornecedor.Text)<>0 then
   begin
   if not FCGC(fsonumero(edt_cnpj_fornecedor.text)) then
      begin
      MessageDLG(edt_cnpj_fornecedor.Text+' não é um CNPJ válido!',mtWarning,[mbOk],0);
      edt_cnpj_fornecedor.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Manifesto_Sefaz.edt_vp_valorExit(Sender: TObject);
begin
edt_vp_valor.Text:=formatfloat(mcasas, valfloat(edt_vp_valor.Text));

end;

procedure TFrm_Manifesto_Sefaz.DBGrid_mdfeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     
if tb_MDFEMDFE_STATUS.AsInteger=1 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_gravada1.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=2 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_enviando2.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=3 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_rejeitada3.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=4 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_enviado_ok4.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=5 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_encenrrando5.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=6 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_encerrada6.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=7 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_excluida_antes_enviar7.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=8 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_excluida_antes_encerrar8.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end
else if tb_MDFEMDFE_STATUS.AsInteger=9 then
   begin
   DBGrid_MDFE.Canvas.Brush.Color:=st_excluida_ja_encerrada9.Brush.Color;
   DBGrid_MDFE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;


end;



procedure TFrm_Manifesto_Sefaz.RxDBComboBox1Exit(Sender: TObject);
begin
if tb_MDFEMDFE_TPEMIS.Value<>'1' then
   tb_MDFEMDFE_TPEMIS.Value:='1';

end;

procedure TFrm_Manifesto_Sefaz.bbImprimirClick(Sender: TObject);
begin

if trim(tb_MDFEMDFE_ENVIO_NPROT.AsString)='' then
   begin
   MessageDlg('MDFE com protocolo invalido!',mtWarning,[mbOk],0);
   exit;
   end;
if tb_MDFEMDFE_ID.AsInteger>0 then
   begin
   Application.createform(TFrm_MDFE_Impressao, Frm_MDFE_Impressao);
   Frm_MDFE_Impressao.mId := TB_MDFEMDFE_id.AsInteger;
   Frm_MDFE_Impressao.fLerCadMDFE;
   Frm_MDFE_Impressao.rLDamDFE_mod01.PreviewModal;
   freeandnil(Frm_MDFE_Impressao);
   end;


end;

end.
