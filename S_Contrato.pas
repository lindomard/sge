unit S_Contrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM1,db,dbtables,func, dbcgrids,lerarq,S_Cli,S_Pro
  ,s_lerarq_geral, RxMemDS, ToolEdit, RXDBCtrl, RxDBComb, WordXP, OleServer,MaskUtils,jpeg,
  ADODB;

type
  TFrm_Contrato = class(TFrm_C)
    Label1: TLabel;
    DBE_CS_CODCLI: TDBEdit;
    DBE_razsoc: TDBEdit;
    Label2: TLabel;
    DBE_CS_CHAVE: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBRG_CS_TIPO: TDBRadioGroup;
    Src_CSer01: TDataSource;
    DBT_obsvenc01: TDBText;
    bbConfigurar: TBitBtn;
    src_cserv01_serv: TDataSource;
    qr_cserv01_serv: TQuery;
    qr_cserv01_servCSS_CODEMP: TFloatField;
    qr_cserv01_servCSS_CHAVE: TFloatField;
    qr_cserv01_servCSS_ORDEM: TFloatField;
    qr_cserv01_servCSS_CODSERV: TFloatField;
    qr_cserv01_servCSS_PDESCFIN: TFloatField;
    qr_cserv01_servCSS_DATCONT: TDateTimeField;
    qr_cserv01_servCSS_DTLDESCFIN: TDateTimeField;
    qr_cserv01_servPDNOME: TStringField;
    qr_cserv01_servCSS_CODIND: TFloatField;
    qr_cserv01_servCSS_PERCINDEX: TFloatField;
    qr_cserv01_servMNOME: TStringField;
    qr_cserv01_servMSIMBOLO: TStringField;
    qr_cserv01_servVALOR_INDEX: TFloatField;
    U_cserv01_serv: TUpdateSQL;
    Tb_CSer01: TQuery;
    Tb_CSer01CS_CODEMP: TFloatField;
    Tb_CSer01CS_CHAVE: TFloatField;
    Tb_CSer01CS_DATCON: TDateTimeField;
    Tb_CSer01CS_CODCLI: TFloatField;
    Tb_CSer01CS_DATVAL: TDateTimeField;
    Tb_CSer01CS_TIPO: TFloatField;
    Tb_CSer01CS_STATUS: TFloatField;
    Tb_CSer01razsoc: TStringField;
    Tb_CSer01CS_DIAV: TFloatField;
    Tb_CSer01CS_MESV: TFloatField;
    U_CSer01: TUpdateSQL;
    qr_cserv01_servCSS_CODCLI: TFloatField;
    bbImprimir: TBitBtn;
    TabSheet1: TTabSheet;
    qr_cserv01_servCSS_QTDSERV: TFloatField;
    qr_cserv01_servCSS_UNDSERV: TStringField;
    qr_cserv01_servCSS_QTDEST: TFloatField;
    gb_CS_FORMAPAG: TGroupBox;
    DBMemo_FORMAPAG: TDBMemo;
    Tb_CSer01CS_CODUSR_INC: TFloatField;
    Tb_CSer01CS_NOMUSR_INC: TStringField;
    Tb_CSer01CS_DATHOR_INC: TDateTimeField;
    Tb_CSer01CS_CODUSR_ALT: TFloatField;
    Tb_CSer01CS_NOMUSR_ALT: TStringField;
    Tb_CSer01CS_DATHOR_ALT: TDateTimeField;
    ReplaceDialog1: TReplaceDialog;
    RE_relatorio: TMemo;
    Tb_CSer01CS_NUMPROPOSTA: TStringField;
    Tb_CSer01CS_REPLEGAL: TStringField;
    Label7: TLabel;
    DBE_CS_NUMPROPOSTA: TDBEdit;
    Label8: TLabel;
    DBE_REPLEGAL: TDBEdit;
    Label9: TLabel;
    DBE_CS_REPLEGAL_CPF: TDBEdit;
    Tb_CSer01CS_REPLEGAL_CPF: TStringField;
    Tb_CSer01CS_REPLEGAL_SEXO: TStringField;
    Tb_CSer01CS_REPLEGAL_RG: TStringField;
    Label10: TLabel;
    DBE_CS_REPLEGAL_RG: TDBEdit;
    PageControl1: TPageControl;
    tsServicos: TTabSheet;
    tsProdutos: TTabSheet;
    DBGrid_cserv01_serv: TDBGrid;
    qr_cserv01_servCSS_VALORLIC: TFloatField;
    RxMemoryData1: TRxMemoryData;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    src_grade: TDataSource;
    Tb_CSer01CS_PRAZOENT: TMemoField;
    gb_CS_PRAZOENT: TGroupBox;
    DBMemo_PRAZOENT: TDBMemo;
    DBE_CS_DATCON: TDBDateEdit;
    DBE_CS_DATVAL: TDBDateEdit;
    Tb_CSer01CS_FORMAPAG: TMemoField;
    mem_grade: TRxMemoryData;
    Tb_CSer01TOTAL_VALOR_CONT: TFloatField;
    Tb_CSer01TOTAL_VALOR_CONT_DESC: TFloatField;
    Tb_CSer01TOTAL_VALOR_LIQUIDO: TFloatField;
    Label5: TLabel;
    DBE_TOTAL_VALOR_CONT: TDBEdit;
    Label6: TLabel;
    DBE_TOTAL_VALOR_CONT_DESC: TDBEdit;
    Label11: TLabel;
    DBE_TOTAL_VALOR_LIQUIDO: TDBEdit;
    Label12: TLabel;
    RxDBCB_CS_REPLEGAL_SEXO: TRxDBComboBox;
    WordApp: TWordApplication;
    WordDoc: TWordDocument;
    Tb_CSer01obsvenc: TStringField;
    lbl_CS_DIAV: TLabel;
    DBE_CS_DIAV: TDBEdit;
    bbImpProposta: TBitBtn;
    bbConfProposta: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    sbn_nova: TSpeedButton;
    sbn_alterar: TSpeedButton;
    sbn_excluir: TSpeedButton;
    Tb_CSer01_imagem: TADOQuery;
    Src_CSer01_imagem: TDataSource;
    Tb_CSer01_imagemCSI_CODEMP: TBCDField;
    Tb_CSer01_imagemCSI_CODCLI: TFloatField;
    Tb_CSer01_imagemCSI_CHAVE: TFloatField;
    Tb_CSer01_imagemCSI_SEQ: TFloatField;
    Tb_CSer01_imagemCSI_OBS: TStringField;
    Tb_CSer01_imagemCSI_IMAGEM: TBlobField;
    qr_cserv01_servINT_VALORCONT: TFloatField;
    qr_cserv01_servINT_VALORCONT_DESCFIN: TFloatField;
    qr_cserv01_servINT_VALORCONT_LIQUIDO: TFloatField;
    Label13: TLabel;
    DBE_CS_CODSER: TDBEdit;
    Tb_CSer01CS_CODSER: TFloatField;
    DBE_PDNOME: TDBEdit;
    Tb_CSer01PDNOME: TStringField;
    Tb_CSer01CRAZAO: TStringField;
    sbnRenomear: TSpeedButton;
    DBGrid_Merc: TDBGrid;
    qr_cserv01_Merc: TQuery;
    U_cserv01_Merc: TUpdateSQL;
    Src_cserv01_Merc: TDataSource;
    qr_cserv01_MercCSM_CODEMP: TFloatField;
    qr_cserv01_MercCSM_CHAVE: TFloatField;
    qr_cserv01_MercCSM_CODCLI: TFloatField;
    qr_cserv01_MercCSM_ORDEM: TFloatField;
    qr_cserv01_MercCSM_CODPRO: TFloatField;
    qr_cserv01_MercPDNOME: TStringField;
    qr_cserv01_MercPDUND: TStringField;
    qr_cserv01_MercCSM_QTD: TFloatField;
    qr_cserv01_MercCSM_PU: TFloatField;
    qr_cserv01_MercTOTAL: TFloatField;
    qr_cserv01_servCSS_QTDHOR_TREINO: TFloatField;
    Tb_CSer01CCEP: TStringField;
    Tb_CSer01_imagemCSI_NOMEORI: TStringField;
    GroupBox3: TGroupBox;
    Tb_CSer01CS_DTINICIO_EMISSAO: TDateTimeField;
    Tb_CSer01CS_CODBCO_PREF: TFloatField;
    Tb_CSer01CS_TIPO_DOCUMENTO: TStringField;
    Tb_CSer01CS_CODEMP_PREF: TFloatField;
    Label14: TLabel;
    DBE_CS_CODBCO_PREF: TDBEdit;
    DBE_nombco_pref: TDBEdit;
    Label15: TLabel;
    DBE_CS_CODEMP_PREF: TDBEdit;
    DBE_nomemp_pref: TDBEdit;
    Label16: TLabel;
    dbcb_CS_TIPO_DOCUMENTO: TDBComboBox;
    Label17: TLabel;
    DBE_CS_DTINICIO_EMISSAO: TDBDateEdit;
    Tb_CSer01nombco_pref: TStringField;
    Tb_CSer01nomemp_pref: TStringField;
    procedure Edit1Exit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Src_CSer01DataChange(Sender: TObject; Field: TField);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure DBE_CS_CODCLIExit(Sender: TObject);
    procedure DBE_CS_CHAVEExit(Sender: TObject);
    procedure DBE_CS_CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBE_CS_CODCLIEnter(Sender: TObject);
    procedure DBE_CS_CHAVEEnter(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure bbConfigurarClick(Sender: TObject);
    procedure qr_cserv01_servAfterInsert(DataSet: TDataSet);
    procedure Tb_CSer01CalcFields(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure DBGrid_cserv01_servKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_cserv01_servColExit(Sender: TObject);
    procedure qr_cserv01_servBeforePost(DataSet: TDataSet);
    procedure Tb_CSer01BeforeCancel(DataSet: TDataSet);
    procedure Tb_CSer01BeforePost(DataSet: TDataSet);
    procedure qr_cserv01_servBeforeDelete(DataSet: TDataSet);
    procedure qr_cserv01_servBeforeEdit(DataSet: TDataSet);
    procedure bbImprimirClick(Sender: TObject);
    procedure DBE_CS_REPLEGAL_CPFExit(Sender: TObject);
    procedure DBRG_CS_TIPOClick(Sender: TObject);
    procedure bbImpPropostaClick(Sender: TObject);
    procedure bbConfPropostaClick(Sender: TObject);
    procedure sbn_novaClick(Sender: TObject);
    procedure sbn_alterarClick(Sender: TObject);
    procedure sbn_excluirClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBE_CS_CODSERKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CS_CODSERExit(Sender: TObject);
    procedure DBGrid_cserv01_servExit(Sender: TObject);
    procedure sbnRenomearClick(Sender: TObject);
    procedure qr_cserv01_MercAfterInsert(DataSet: TDataSet);
    procedure qr_cserv01_MercBeforeDelete(DataSet: TDataSet);
    procedure qr_cserv01_MercBeforeEdit(DataSet: TDataSet);
    procedure qr_cserv01_MercBeforePost(DataSet: TDataSet);
    procedure DBGrid_cserv01_servEnter(Sender: TObject);
  private
    { Private declarations }

     mOper_cs: Integer;
     mCodSer_Ant: Real;

     mOper_cs_Merc:Integer;
     mCodPro_Ant  :Real;

     moper: Integer;
     mcodcli_ant: Real;
     mchave_ant : Real;

     mcodcli_src:Real;
     mchave_src :Real;

     int_ant_ValorCont_DescFin: Real;
     int_ant_ValorCont: Real;
     ant_PercIndex: Real;
     ant_PDescFin: Real;
     mBloqueiaChange: boolean;


     function flcadser01_form(ptipo: Integer; pCampo1,pCampo2: String): Boolean;

     function flcadser01_Serv(pCodEmp,pCodCli,pChave: Real): Boolean;

     function flcadser01_Merc(pCodEmp,pCodCli,pChave: Real): Boolean;


     function  fGerarTextoGrade(pTabela: trxMemoryData;pTextoSaida: tStringList): Boolean;



     function fLiberaCampos(pLibera: Boolean): Boolean;

     function fAtualizarValores: Boolean;


  public
    { Public declarations }
     function fPreparaRelatorio(pNomeRel: String;pCodcli,pChave: Real; out pArquivoSaida: String;pOriginal: Boolean): Boolean;


  end;

var
  Frm_Contrato: TFrm_Contrato;
leg_contpserv: array[0..27,0..3] of string = (
                                              ('%CIDADE_EMPRESA%'              ,'CIDADE'               ,' Cidade da Empresa Contratada'             , '')
                                             ,('%UF_EMPRESA%'                  ,'UF'                   ,' UF da Empresa Contratada'                 , '')
                                             ,('%NUM_PROPOSTA%'                ,'CS_NUMPROPOSTA'       ,'Número da Proposta'                        , '')
                                             ,('%NOME_CONTATO%'                ,'CNOMCON'              ,'Nome da Pessoa de Contrato (Contratante)'  , '')
                                             ,('%DATCON_EXT%'                  ,'CS_DATCON'            ,'Data do Contrato por Extenso'              , 'extenso_data')
                                             ,('%RAZSOC_CONTRATADA%'           ,'RAZAO'                ,'Razão Social do Contratado'                , '')
                                             ,('%ENDER_CONTRATADA%'            ,'CONTRATADO_ENDER'     ,'Endereço do Contratado'                    , '')
                                             ,('%RAZSOC_CONTRATANTE%'          ,'CRAZAO'               ,'razão Social do Contratante'               , '')
                                             ,('%CEP_CONTRATANTE%'             ,'CCEP'                 ,'Cep do Contratante'                        , '')
                                             ,('%ENDER_CONTRATANTE%'           ,'CONTRATANTE_ENDER'    ,'Endereco do Contratante'                   , '')
                                             ,('%BAIRRO_CONTRATANTE%'          ,'CBAIRRO'              ,'Bairro do Contratante'                     , '')
                                             ,('%BAIRRO_CONTRATADO%'           ,'BAIRRO'               ,'Bairro do Contratado'                      , '')
                                             ,('%COND_PAGTO%'                  ,'CS_FORMAPAG'          ,'Condições de Pagamento'                    , '')
                                             ,('%CIDADE_CONTRATANTE%'          ,'CCIDADE'              ,'Cidade Contratante'                        , '')
                                             ,('%UF_CONTRATANTE%'              ,'CUF'                  ,'UF do Contratante'                         , '')
                                             ,('%CNPJ_CONTRATANTE%'            ,'CCNPJ'                ,'CNPJ do Contratante'                       , '00"."000"."000"/"0000"-"00')
                                             ,('%IE_CONTRATANTE%'              ,'CIE'                  ,'Inscrição Estadual do Contratante'         , '')
                                             ,('%REPLEGAL_CONTRATANTE%'        ,'CS_REPLEGAL'          ,'Representante Legal da Empresa Contratante', '')
                                             ,('%REPLEGAL_CONTRATANTE_SR_SRA%' ,'CS_REPLEGAL_SR_SRA'   ,'Representante Legal da Empresa Contratante Sr ou Sra', '')
                                             ,('%REPLEGAL_CONTRATANTE_CPF%'    ,'CS_REPLEGAL_CPF'      ,'Representante Legal da Emprea CPF'         , '000"."000"."000"-"00')
                                             ,('%REPLEGAL_CONTRATANTE_RG%'     ,'CS_REPLEGAL_RG'       ,'Representante Legal da Emprea RG'          , '')
                                             ,('%IE_CONTRATANTE%'              ,'CIE'                   ,'Inscrição Estadual do Contratante'        , '')
                                             ,('%TODOSSERVICOS%'               ,'TODOSSERVICOS'         ,'Todos os Servicos Contratado'             , '')
                                             ,('%VALOR_PARC%'                  ,'TOTAL_VALOR_CONT'     ,'Valor da Parcela do Contrato'              , '#,##0.00')
                                             ,('%VALOR_PARC_EXT%'             ,'TOTAL_VALOR_CONT'      ,'Valor da Licença por Extenso'              , 'extenso_reais')
                                             ,('%TOTAL_LIC%'                  ,'TOTAL_LIC'             ,'Total das Licenças'                        , '#,##0.00')
                                             ,('%TOTAL_LIC_EXT%'              ,'TOTAL_LIC'             ,'Total das Licenças por extenso'            , 'extenso_reais')
                                             ,('%VENCIMENTO%'                 ,'VENCIMENTO'            ,'Vencimento da Parcela do Contrato'         , '')



                                             );


const

    mTIPOCAMPO=0;
    mTAMCOL=1;
    mCOLUNA=2;
    mCOL_MESCLAR_ATE=3;
    mCOR_FONTE=4;
    mCOR_FUNDO=5;
    mCOL_ALINHAMENTO=6;
    mVALOR_CAMPO=7;
    mCOL_MESCLAR_ATE_TAMGER=8;
    mCOL_FONTE_TAMANHO=9;




implementation

uses S_Texto, s_ConfigGrade, func_excecoes, S_DM2, s_Imagem_WebCam,
  S_DM1_ADO, S_Fig_TelaCheia;

{$R *.dfm}

procedure TFrm_Contrato.Edit1Exit(Sender: TObject);
begin
  inherited;
if Trim(Edit1.Text)<>'' then
   begin
   if CAMPO.ItemIndex=0 then
      Edit1.Text:=fdeixanum(Edit1.Text)
   else if (CAMPO.ItemIndex>0) and (CAMPO.ItemIndex<3) then
      begin
      try
         Edit1.Text:=FormatDateTime(fdt2, Strtodate(Edit1.Text));
      except
         MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
         Edit1.SetFocus;
         end;
      end
   else if campo.ItemIndex=3 then
      Edit1.Text:=FormatFloat(mcasas, ValFloat(Edit1.Text))
   else if campo.ItemIndex<1 then
      Edit1.Text:=InttoStr(valint(Edit1.Text));

   end;
end;

procedure TFrm_Contrato.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
If Tb_CSer01.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_Contrato.Src_CSer01DataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
if not mBloqueiaChange then
   begin
   if (Tb_CSer01CS_TIPO.AsInteger>0) and (Tb_CSer01CS_TIPO.AsInteger<5) then
      lbl_CS_DIAV.Visible:=true
   else
      lbl_CS_DIAV.Visible:=false;

   if not (Tb_CSer01.State in [dsEdit,dsInsert]) then
      begin
      flcadser01_Serv(Tb_CSer01CS_CODEMP.AsFloat,Tb_CSer01CS_CODCLI.AsFloat,Tb_CSer01CS_CHAVE.AsFloat);
      flcadser01_Merc(Tb_CSer01CS_CODEMP.AsFloat,Tb_CSer01CS_CODCLI.AsFloat,Tb_CSer01CS_CHAVE.AsFloat);

      end;


   if (mcodcli_src<>Tb_CSER01CS_CODCLI.Asfloat) or
      (mchave_src<>Tb_CSER01CS_CHAVE.Asfloat) then
      begin
      if DM1_ADO.ADOConnection1.connected=false then
         begin
         DM1_ADO.ADOConnection1.Close;
         DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
         DM1_ADO.ADOConnection1.Open;
         end;

      Tb_CSer01_imagem.close;
      Tb_CSer01_imagem.Connection:=DM1_ADO.ADOConnection1;
      Tb_CSer01_imagem.Parameters.ParamByName('CODEMP').Value   :=Tb_CSer01CS_CODEMP.Asinteger;
      Tb_CSer01_imagem.Parameters.ParamByName('CODCLI').Value   :=Tb_CSer01CS_CODCLI.AsFloat;
      Tb_CSer01_imagem.Parameters.ParamByName('CHAVE').Value    :=Tb_CSer01CS_CHAVE.AsFloat;
      Tb_CSer01_imagem.open;
      mcodcli_src:=Tb_CSER01CS_CODCLI.Asfloat;
      mchave_src :=Tb_CSER01CS_CHAVE.Asfloat;
      end;
   end;

end;



procedure TFrm_Contrato.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper:=0;
Tb_CSer01.Append;
Tb_CSer01CS_CODEMP.Value:=codemp;
Tb_CSer01CS_TIPO.Value  :=1;
mcodigo:='';
DBE_CS_CODCLI.Enabled:=True;
DBE_CS_CHAVE.Enabled:=True;
Tb_CSer01CS_DATCON.AsDateTime:=Date;
qr_cserv01_serv.Close;
qr_cserv01_Merc.Close;
mchave_ant:=0;
mcodcli_ant:=0;
fLiberaCampos(true);
DBE_CS_CODCLI.SetFocus;

PC1.ActivePage:=TsCad;

end;

function tfrm_Contrato.fLiberaCampos(pLibera: Boolean): Boolean;

begin
DBE_CS_CODCLI.Enabled          :=pLibera;
DBE_CS_CHAVE.Enabled           :=pLibera;
DBE_CS_DATCON.Enabled          :=pLibera;
DBE_CS_DATVAL.Enabled          :=pLibera;
DBRG_CS_TIPO.Enabled           :=pLibera;
DBE_CS_NUMPROPOSTA.Enabled     :=pLibera;
DBE_CS_DIAV.Enabled            :=pLibera;
DBE_CS_REPLEGAL_CPF.Enabled    :=pLibera;
DBE_CS_REPLEGAL_RG.Enabled     :=pLibera;
DBE_CS_DATVAL.Enabled          :=pLibera;
RxDBCB_CS_REPLEGAL_SEXO.Enabled:=pLibera;
DBMemo_FORMAPAG.Enabled        :=pLibera;
DBMemo_PRAZOENT.Enabled        :=pLibera;



result:=true;

end;

procedure TFrm_Contrato.BBnAtuClick(Sender: TObject);
begin
  inherited;
If Tb_CSer01.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      end;
   end;

flcadser01_form(CAMPO.ItemIndex,Edit1.Text,'');


end;

procedure TFrm_Contrato.ALTERARClick(Sender: TObject);
begin
  inherited;
if Tb_CSer01CS_CODCLI.IsNull then
   begin
   MessageDlg('Não ha registro a ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
moper:=8;

Tb_CSer01.Edit;
DBE_CS_CODCLI.Enabled :=False;
DBE_CS_CHAVE.Enabled :=False;
fLiberaCampos(true);
if PC1.ActivePage=TsCad then
   DBE_CS_DATCON.SetFocus;

end;

procedure TFrm_Contrato.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if Tb_CSer01CS_CHAVE.IsNull then
   begin
   MessageDlg('Não ha registro a ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCSER02 where '
                     +' CS2_CODEMP=0'+Tb_CSer01CS_CODEMP.AsString
                     +' and CS2_CODCLI=0'+Tb_CSer01CS_CODCLI.AsString
                     +' and CS2_CHAVE=0'+Tb_CSer01CS_CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   Tb_CSer01.Delete;
   CANCELAR.Click;
   end;

tsCad.Enabled       :=true;

end;

procedure TFrm_Contrato.CANCELARClick(Sender: TObject);
begin
  inherited;
if Tb_CSer01.State in [dsInsert, DsEdit] then
   begin
   Tb_CSer01.Cancel;
   end;
tsCad.Enabled       :=true;
fLiberaCampos(false);

moper:=0;

end;

procedure TFrm_Contrato.GRAVARClick(Sender: TObject);
begin
  inherited;
if (Tb_CSer01CS_CODCLI.Value=0) or (Tb_CSer01CS_CODCLI.IsNull) then
   begin
   MessageDlg('Código do Cliente, Campo Obrigatório!',mtWarning,[mbOk],0);
   PC1.ActivePageIndex:=0;
   DBE_CS_CODCLI.SetFocus;
   exit;
   end;
if (Tb_CSer01CS_CHAVE.IsNull) or (Tb_CSer01CS_CHAVE.Value<=0) then
   begin
   MessageDlg('Número da Chave tem que ser um número inteiro positivo!',mtWarning,[mbOk],0);
   DBE_CS_CHAVE.SetFocus;
   PC1.ActivePageIndex:=0;
   exit;
   end;

if (moper=0) and ((Tb_CSer01CS_CHAVE.Value=0) or (Tb_CSer01CS_CHAVE.IsNull))
   and (Tb_CSer01CS_CODCLI.Value>0) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select CS_CHAVE from CADCSER01 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CS_CODEMP=0'+IntTosTr(codemp)+' and ')
                     +' CS_CODCLI=0'+Tb_CSer01CS_CODCLI.AsString
                     +' and CS_CHAVE=0'+Tb_CSer01CS_CHAVE.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      MessageDlg('Esta Chave ja Existe!',mtWarning,[mbOk],0);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select max(CS_CHAVE) from CADCSER01 where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CS_CODEMP=0'+IntTosTr(codemp)+' and ')
                        +' CS_CODCLI=0'+Tb_CSer01CS_CODCLI.AsString);
      DM1.Query1.Open;
      Tb_CSer01CS_CHAVE.Value:=DM1.Query1.Fields[0].AsFloat+1;
      DBE_CS_CHAVE.SetFocus;
      exit;
      end;
   end;
Tb_CSer01.Post;
CANCELAR.Click;


end;

procedure TFrm_Contrato.DBE_CS_CODCLIExit(Sender: TObject);
var
query_temp: tQuery;
begin
  inherited;

if Tb_CSer01CS_CODCLI.Value>0 then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Tb_CSer01CS_CODCLI.AsString) then
      Tb_CSer01razsoc.Value:=DM1.Query1.Fields[0].AsString
   else
      begin
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      DBE_CS_CODCLI.SetFocus;
      exit;
      end;
   end
else
   exit;
query_temp:=tQuery.create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.Close;



if (moper=0) and ((Tb_CSer01CS_CHAVE.Value=0) or (Tb_CSer01CS_CHAVE.IsNull))
   and (Tb_CSer01CS_CODCLI.Value>0) then
   begin
   query_temp.Close;
   query_temp.SQL.Clear;
   query_temp.SQL.add('Select max(CS_CHAVE) from CADCSER01 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CS_CODEMP=0'+IntTosTr(codemp)+' and ')
                     +' CS_CODCLI=0'+Tb_CSer01CS_CODCLI.AsString);
   query_temp.Open;
   Tb_CSer01CS_CHAVE.Value:=query_temp.Fields[0].AsFloat+1;
   end;
if (mcodcli_ant<>0) and (mcodcli_ant<>Tb_CSer01CS_CODCLI.Value) then
   begin
   query_temp.Close;
   query_temp.SQL.Clear;
   query_temp.SQL.Add('Update CADCSER02 set CS2_CODCLI=0'+Tb_CSer01CS_CODCLI.AsString
                     +'  where '
                     +' CS2_CODEMP=0'+Tb_CSer01CS_CODEMP.AsString
                     +' and CS2_CODCLI=0'+FloatToStr(mcodcli_ant)
                     +' and CS2_CHAVE=0'+Tb_CSer01CS_CHAVE.AsString);
   try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except
     end;
   end;
FreeAndNil(query_temp);


end;

procedure TFrm_Contrato.DBE_CS_CHAVEExit(Sender: TObject);
var
query_temp: tQuery;
begin
  inherited;
query_temp:=tQuery.create(nil);
query_temp.DatabaseName:='SG_ASSOC';

if (moper=0) and ((Tb_CSer01CS_CHAVE.Value=0) or (Tb_CSer01CS_CHAVE.IsNull))
   and (Tb_CSer01CS_CODCLI.Value>0) then
   begin
   query_temp.Close;
   query_temp.SQL.Clear;
   query_temp.SQL.add('Select CS_CHAVE from CADCSER01 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CS_CODEMP=0'+IntTosTr(codemp)+' and ')
                     +' CS_CODCLI=0'+Tb_CSer01CS_CODCLI.AsString
                     +' and CS_CHAVE=0'+Tb_CSer01CS_CHAVE.AsString);
   DM1.Query1.Open;
   if not query_temp.Eof then
      begin
      MessageDlg('Esta Chave ja Existe!',mtWarning,[mbOk],0);
      query_temp.Close;
      query_temp.SQL.Clear;
      query_temp.SQL.add('Select max(CS_CHAVE) from CADCSER01 where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CS_CODEMP=0'+IntTosTr(codemp)+' and ')
                        +' CS_CODCLI=0'+Tb_CSer01CS_CODCLI.AsString);
      query_temp.Open;
      Tb_CSer01CS_CHAVE.Value:=query_temp.Fields[0].AsFloat+1;
      DBE_CS_CHAVE.SetFocus;
      end;
   end;

freeandnil(query_temp);


end;

procedure TFrm_Contrato.DBE_CS_CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_CSer01CS_CODCLI.Value:=fSonumero(fChamaCli(0,'Frm_Contato',key));
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Contrato.FormCreate(Sender: TObject);
begin
  inherited;
mBloqueiaChange:=false;

qr_cserv01_servCSS_DATCONT.DisplayFormat     :=fdt2;
qr_cserv01_servCSS_DTLDESCFIN.DisplayFormat  :=fdt2;
qr_cserv01_servCSS_DATCONT.EditMask          :=pEditMascData;
qr_cserv01_servCSS_DTLDESCFIN.EditMask       :=pEditMascData;
qr_cserv01_servVALOR_INDEX.DisplayFormat     :=mcasas_pct;
qr_cserv01_servCSS_VALORLIC.DisplayFormat    :=mcasas;

qr_cserv01_servINT_VALORCONT.DisplayFormat    :=mcasas;
qr_cserv01_servINT_VALORCONT_DESCFIN.DisplayFormat    :=mcasas;
qr_cserv01_servINT_VALORCONT_LIQUIDO.DisplayFormat    :=mcasas;

Tb_CSer01TOTAL_VALOR_CONT.DisplayFormat      :=mcasas;
Tb_CSer01TOTAL_VALOR_CONT_DESC.DisplayFormat :=mcasas;
Tb_CSer01TOTAL_VALOR_LIQUIDO.DisplayFormat   :=mcasas;
fLiberaCampos(false);


end;

procedure TFrm_Contrato.DBEdit17Enter(Sender: TObject);
begin
  inherited;
  {
if not (Tb_CSer02.State in [dsInsert, DsEdit]) then
   begin
   if Tb_CSer02CS2_CHAVE.IsNull then
      Tb_CSer02.Append
   else
      Tb_CSer02.Edit;
   end;
   }
end;

procedure TFrm_Contrato.DBE_CS_CODCLIEnter(Sender: TObject);
begin
  inherited;
if Tb_CSer01CS_CODCLI.IsNull then
   mcodcli_ant:=0
else
   mcodcli_ant:=Tb_CSer01CS_CODCLI.Value;
end;

procedure TFrm_Contrato.DBE_CS_CHAVEEnter(Sender: TObject);
begin
  inherited;
if Tb_CSer01CS_CHAVE.IsNull then
   mchave_ant:=0
else
   mchave_ant:=Tb_CSer01CS_CHAVE.Value;

end;

procedure TFrm_Contrato.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrm_Contrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Contrato.FormActivate(Sender: TObject);
begin
  inherited;
pc1.ActivePageIndex:=0;
end;

procedure TFrm_Contrato.bbConfigurarClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_ConfigGrade, Frm_ConfigGrade);
Frm_ConfigGrade.mNomeRel:='CONTRATOPSERVICO';
Frm_ConfigGrade.panel_cab.Caption:='Contrato de Prestação de Serviço';
Frm_ConfigGrade.showModal;
Freeandnil(Frm_ConfigGrade);
end;

procedure TFrm_Contrato.qr_cserv01_servAfterInsert(DataSet: TDataSet);
var
query_temp: tQuery;
begin
  inherited;
qr_cserv01_servCSS_CODEMP.Value:=codemp;
qr_cserv01_servCSS_CHAVE.Value :=Tb_CSer01CS_CHAVE.AsFloat;
qr_cserv01_servCSS_CODEMP.Value:=Tb_CSer01CS_CODEMP.AsFloat;
qr_cserv01_servCSS_CODCLI.Value:=Tb_CSer01CS_CODCLI.AsFloat;

query_temp:=tQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.SQL.Clear;
query_temp.SQL.Add('select max(CSS_ORDEM) from CADCSER01_SERV '
                  +' where CSS_CODEMP=:CODEMP '
                  +' and CSS_CHAVE=:CHAVE ');
query_temp.ParamByName('CODEMP').Value:=codemp;

if (mchave_ant=0) then
   begin
   query_temp.SQL.Add(' and CSS_CHAVE=:CHAVE ');
   query_temp.ParamByName('CHAVE').Value :=Tb_CSer01CS_CHAVE.AsFloat;

   end
else
   begin
   query_temp.SQL.Add(' and (CSS_CHAVE=:CHAVE or CSS_CHAVE=:CHAVE_ANT)');
   query_temp.ParamByName('CHAVE').Value     :=Tb_CSer01CS_CHAVE.AsFloat;
   query_temp.ParamByName('CHAVE_ANT').Value :=mchave_ant;
   end;

if (mcodcli_ant=0) then
   begin
   query_temp.SQL.Add(' and CSS_CODCLI=:CODCLI ');
   query_temp.ParamByName('CODCLI').Value :=Tb_CSer01CS_CODCLI.AsFloat;

   end
else
   begin
   query_temp.SQL.Add(' and (CSS_CODCLI=:CODCLI or CSS_CODCLI=:CODCLI_ANT)');
   query_temp.ParamByName('CODCLI').Value     :=Tb_CSer01CS_CODCLI.AsFloat;
   query_temp.ParamByName('CODCLI_ANT').Value :=mcodcli_ant;
   end;
query_temp.open;
qr_cserv01_servCSS_ORDEM.Value  :=query_temp.fields[0].AsInteger+1;
qr_cserv01_servCSS_DATCONT.Value:=Tb_CSer01CS_DATCON.AsDateTime;

int_ant_ValorCont_DescFin:=0;
int_ant_ValorCont        :=0;
ant_PercIndex            :=0;
ant_PDescFin             :=0;

freeandnil(query_temp);

mOper_cs:=0;
mCodSer_Ant:=0;


end;



function TFrm_Contrato.flcadser01_form(ptipo: Integer; pCampo1,pCampo2: String): Boolean;
//ptipo=0 Codcli, Chave
//     =1 Data Contrato
//     =2 Data Vencimento
//     =3 Valor
//     =4 Codigo Serviço
//     =5 Codigo Master

begin
Tb_CSer01.Close;
Tb_CSer01.SQL.Clear;
Tb_CSer01.SQL.add('Select CADCSER01.*,PDNOME,CRAZAO,CCEP '
                  +', case when CS_CODBCO_PREF=0 then '+QuotedStr('Carteira')
                  +' else (select max(bcbanco) from cadbco where bccodbco=CS_CODBCO_PREF) end as nombco_pref '

                  +', case when CS_CODEMP_PREF=0 then '+QuotedStr('Nao Definido')
                  +' else (select max(razao) from cademp where codemp=CS_CODEMP_PREF) end as nomemp_pref '
                  +',NVL( ( '
                  +'select '
                  +' sum(round(((VALOR_INDEX*CSS_PERCINDEX)/100),2))        as Total_valor_cont '
                  +' from ( '
                  +'Select CSS_PERCINDEX ,case when  (SELECT max(IVLRCOMCPR) '
                  +'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )   is null then '
                  +'(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE) ) '
                  +'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end '
                  +' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE '
                  +'and CSS_CODEMP=CS_CODEMP '
                  +' )  ),0) AS TOTAL_VALOR_CONT '
                  +',NVL( ( '
                  +'select '
                  +'sum(round( (round(((VALOR_INDEX*CSS_PERCINDEX)/100),2)*CSS_PDESCFIN/100),2))     as Total_valor_cont_desc '
                  +' from ( '
                  +'Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCOMCPR) '
                  +'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )   is null then '
                  +'(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE) ) '
                  +'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end '
                  +' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE '
                  +'and CSS_CODEMP=CS_CODEMP '
                  +' )  ),0) AS TOTAL_VALOR_CONT_desc '
                  +',NVL( ( '
                  +'select '
                  +'sum(round(((VALOR_INDEX*CSS_PERCINDEX)/100),2)-round( (round(((VALOR_INDEX*CSS_PERCINDEX)/100),2)*CSS_PDESCFIN/100),2)) '
                  +'    as Total_valor_liq '
                  +' from ( '
                  +'Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCOMCPR) '
                  +'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )   is null then '
                  +'(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE) ) '
                  +'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end '
                  +' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE '
                  +'and CSS_CODEMP=CS_CODEMP '
                  +' )  ),0) AS TOTAL_VALOR_liquido '
                  +',nvl( (select sum(nvl(CSS_VALORLIC,0)) from CADCSER01_SERV where CSS_CODCLI=CS_CODCLI '
                  +' AND CSS_CHAVE=CS_CHAVE and CSS_CODEMP=CS_CODEMP),0) AS TOTAL_LIC '
                  +' from CADCSER01,CADPRO,CADCLI where PDCODPRO(+)=CS_CODSER '
                  +' and CS_CODCLI=CCODCLI ' );

mcinst:=' and ';
if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
   begin
   Tb_CSer01.SQL.Add(mcinst+' CS_CODEMP=0'+IntTostr(codemp));
   mcinst:=' and ';
   end;
if (trim(pCampo1)<>'') or (Trim(pCampo2)<>'') then
   begin
   if ptipo=0 then
      begin
      if Trim(pCampo1)<>'' then
         begin
         Tb_CSer01.sql.Add(mcinst+' CS_CODCLI=0'+Trim(pCampo1));
         mcinst:=' and ';
         end;
      if Trim(pCampo2)<>'' then
         begin
         Tb_CSer01.sql.Add(mcinst+' CS_CHAVE=0'+Trim(pCampo2));
         mcinst:=' and ';
         end;
      end
   else if ptipo=1 then
      begin
      if (Trim(pCampo1)<>'/  /') and (Trim(pCampo1)<>'') then
         begin
         Tb_CSer01.sql.Add(mcinst+' CS_DATCON='+chr(39)+FormatDatetime(fdt, StrTodate(pCampo1))+chr(39));
         mcinst:=' and ';
         end;
      end
   else if ptipo=2 then
      begin
      if (Trim(pCampo1)<>'/  /') and (Trim(pCampo1)<>'') then
         begin
         Tb_CSer01.sql.Add(mcinst+' CS_DATVAL='+chr(39)+FormatDatetime(fdt, StrTodate(pCampo1))+chr(39));
         mcinst:=' and ';
         end;
      end
   else if ptipo=3 then
      begin
      if Trim(pCampo1)<>'' then
         begin
         Tb_CSer01.sql.Add(mcinst+' CS_VALOR=0'+MudaVp(FloatToStr(ValFloat(pCampo1))));
         mcinst:=' and ';
         end;
      end
    else if ptipo=4 then
      begin
      if Trim(pCampo1)<>'' then
         begin
         Tb_CSer01.sql.Add(mcinst+' CRAZAO like :RAZSOC ');
         Tb_CSer01.ParamByName('RAZSOC').AsString:=pCampo1+'%';

         mcinst:=' and ';
         end;
      end
    else if ptipo=5 then
      begin
      if Trim(pCampo1)<>'' then
         begin
         Tb_CSer01.sql.Add(mcinst+' CDENOM like :RAZSOC ');
         Tb_CSer01.ParamByName('RAZSOC').AsString:=pCampo1+'%';
         mcinst:=' and ';
         end;
      end;
   end;
try
   Tb_CSer01.Open;

except on e : exception do
   begin
   ex_erroSql_Novo(Tb_CSer01,965,'SGE','CADMOV_PROD_REPETIDO');
   end;
   end;
//Tb_CSer01.sql.savetofile(mpastatemp + 'sqlserv01.txt');

if Tb_CSer01.Eof then
   result:=false
else
   result:=true;
end;


procedure TFrm_Contrato.Tb_CSer01CalcFields(DataSet: TDataSet);
begin
  inherited;


if Tb_CSer01CS_CODCLI.Value>0 then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Tb_CSer01CS_CODCLI.AsString) then
      Tb_CSer01razsoc.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Tb_CSer01CS_TIPO.AsInteger=0 then
   Tb_CSer01obsvenc.Value:='Receber por visita'
else if Tb_CSer01CS_TIPO.AsInteger=1 then
   Tb_CSer01obsvenc.Value:='Vencer dia '+Tb_CSer01CS_DIAV.asstring+' de cada mes'
else if Tb_CSer01CS_TIPO.AsInteger=2 then
   begin
   Tb_CSer01obsvenc.Value:='Vencer Sempre no dia '+Tb_CSer01CS_DIAV.asstring+' dos meses '
   +FormatDatetime('mm', Tb_CSer01CS_DATCON.AsDateTime)+'/'
   +FormatDatetime('mm', incmonth(Tb_CSer01CS_DATCON.AsDateTime,6))+'/ '
   +FormatDatetime('mm', incmonth(Tb_CSer01CS_DATCON.AsDateTime,9))+' e '
   +FormatDatetime('mm', incmonth(Tb_CSer01CS_DATCON.AsDateTime,12))+' de cada ano ';
   end
else if Tb_CSer01CS_TIPO.AsInteger=3 then
   begin
   Tb_CSer01obsvenc.Value:='Vencer Sempre no dia '+Tb_CSer01CS_DIAV.asstring+' dos meses '
   +FormatDatetime('mm', Tb_CSer01CS_DATCON.AsDateTime)+' e '
   +FormatDatetime('mm', incmonth(Tb_CSer01CS_DATCON.AsDateTime,6))+' de cada ano ';
   end
else if Tb_CSer01CS_TIPO.AsInteger=4 then
   begin
   Tb_CSer01obsvenc.Value:='Vencer Sempre no dia '+Tb_CSer01CS_DIAV.asstring+' do mes '
   +FormatDatetime('mm', Tb_CSer01CS_DATCON.AsDateTime)+' de cada ano ';
   end
else
   Tb_CSer01obsvenc.Value:='';


end;

procedure TFrm_Contrato.c(DataSet: TDataSet);
begin
  inherited;
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   MessageDlg('Ja Existe um Registro igual a Este Click em Cancelar!',mtInformation,[mbOk],0);
   end;

end;

function TFrm_Contrato.flcadser01_Serv(pCodEmp,pCodCli,pChave: Real): Boolean;
//ptipo=0 Codcli, Chave

begin
qr_cserv01_serv.Close;
qr_cserv01_serv.SQL.Clear;
qr_cserv01_serv.SQL.add('Select DADOS.*, ROUND(((VALOR_INDEX * CSS_PERCINDEX)/100),2) AS INT_VALORCONT '
                       +', ROUND( (ROUND(((VALOR_INDEX * CSS_PERCINDEX)/100),2)*CSS_PDESCFIN/100), 2)  AS INT_VALORCONT_DESCFIN '
                       +', ROUND(((VALOR_INDEX * CSS_PERCINDEX)/100),2) - ROUND( (ROUND(((VALOR_INDEX * CSS_PERCINDEX)/100),2)*CSS_PDESCFIN/100), 2) AS INT_VALORCONT_LIQUIDO '
                       +' FROM ('
                       +' Select  '
                       +' CSS_CODEMP, '
                       +'   CSS_CHAVE, '
                       +'   CSS_ORDEM, '
                       +'   CSS_CODSERV, '
                       +'   CSS_PDESCFIN, '
                       +'   CSS_DATCONT, '
                       +'   CSS_DTLDESCFIN, '
                       +'   CSS_CODIND, '
                       +'   CSS_PERCINDEX, '
                       +'   CSS_CODCLI, '
                       +'   CSS_QTDSERV, '
                       +'   CSS_UNDSERV, '
                       +'   CSS_QTDEST, '
                       +'   CSS_VALORLIC '
                       +'  ,NVL(CSS_QTDHOR_TREINO,0) AS CSS_QTDHOR_TREINO '
                       +' ,PDNOME,MNOME,MSIMBOLO '
                       +',case when  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) '
                       +' is null then (SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA>TO_DATE(SYSDATE) ) '
                       +' else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) end '
                       +' as valor_index '
                       +' from CADCSER01_SERV,CADMOE,CADPRO '
                       +' where CSS_CODSERV=PDCODPRO '
                       +' AND MCODMOE(+)=CSS_CODIND '
                       +' and CSS_CODEMP=:CODEMP '
                      +' and CSS_CODCLI=:CODCLI '
                      +' and CSS_CHAVE=:CHAVE '
                      +' order by CSS_ORDEM '
                      +' ) dados ' );
qr_cserv01_serv.parambyname('CODEMP').AsFloat:=pCodEmp;
qr_cserv01_serv.parambyname('CODCLI').AsFloat:=pCodCli;
qr_cserv01_serv.parambyname('CHAVE').AsFloat :=pChave;
try
   qr_cserv01_serv.open;
except on e : exception do
   ex_erroSql_Novo(qr_cserv01_serv,1135,'_contrato:'+e.Message ,'CADCSERV01_SERV');
   end;

if qr_cserv01_serv.isempty then
   result:=false
else
   result:=true;
end;
// mercadoria



function TFrm_Contrato.flcadser01_Merc(pCodEmp,pCodCli,pChave: Real): Boolean;
//ptipo=0 Codcli, Chave

begin
qr_cserv01_Merc.Close;
qr_cserv01_Merc.SQL.Clear;
qr_cserv01_Merc.SQL.add('Select CSM_CODEMP,CSM_CHAVE,CSM_CODCLI,CSM_ORDEM '
                       +'      ,CSM_CODPRO,PDNOME,PDUND,CSM_QTD,CSM_PU,ROUND(CSM_QTD*CSM_PU,2) AS TOTAL '
                       +'  from CADCSER01_MERC,CADPRO '
                       +' WHERE PDCODPRO=CSM_CODPRO '
                       +' and CSM_CODPRO=PDCODPRO '
                       +' and CSM_CODEMP=:CODEMP '
                      +' and CSM_CODCLI=:CODCLI '
                      +' and CSM_CHAVE=:CHAVE '
                      +' order by CSM_ORDEM '
                       );
qr_cserv01_Merc.parambyname('CODEMP').AsFloat:=pCodEmp;
qr_cserv01_Merc.parambyname('CODCLI').AsFloat:=pCodCli;
qr_cserv01_Merc.parambyname('CHAVE').AsFloat :=pChave;
try
   qr_cserv01_Merc.open;
except on e : exception do
   ex_erroSql_Novo(qr_cserv01_Merc,1057,'_contrato:'+e.Message ,'CADCSERV01_MERC');
   end;

if qr_cserv01_Merc.isempty then
   result:=false
else
   result:=true;
end;


// mercadoria

procedure TFrm_Contrato.DBGrid_cserv01_servKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if (key in ['0'..'9']) and
   (DBGrid_cserv01_serv.SelectedField=qr_cserv01_servCSS_CODSERV) and
   (qr_cserv01_serv.State in [dsBrowse]) then
   begin
   if qr_cserv01_servCSS_CODSERV.IsNull then
      begin
      qr_cserv01_serv.Append;
     end;
   end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
   and (DBGrid_cserv01_serv.SelectedField=qr_cserv01_servCSS_CODSERV) then
   begin
   if not (qr_cserv01_serv.State in [dsEdit,dsInsert]) then
      begin
      if qr_cserv01_servCSS_CODSERV.IsNull then
         qr_cserv01_serv.Append
      else
         qr_cserv01_serv.Edit;
      end;
   qr_cserv01_servCSS_CODSERV.AsString:=fChamaPesqPro(0,'_venda',key);
   key:=#0;
   if (qr_cserv01_servCSS_CODSERV.AsString)<>'' then
      begin
      DBGrid_cserv01_servColExit(self);
      DBGrid_cserv01_serv.SelectedField:=qr_cserv01_servCSS_CODIND;
      end;

   end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
   and (DBGrid_cserv01_serv.SelectedField=qr_cserv01_servCSS_CODIND) then
   begin
   if not (qr_cserv01_serv.state in [dsedit ,dsinsert]) then
      qr_cserv01_serv.edit;
   qr_cserv01_servCSS_CODIND.Value:=fsonumero( fChamaMoe(0,'_contrato',key));
   DBGrid_cserv01_servColExit(self);
   DBGrid_cserv01_serv.SelectedField:=qr_cserv01_servCSS_PERCINDEX;
   end;


end;

procedure TFrm_Contrato.DBGrid_cserv01_servColExit(Sender: TObject);
var
query_temp: tQuery;
begin
  inherited;

if qr_cserv01_serv.state in [dsEdit,dsInsert] then
   begin
   fAtualizarValores;

   if DBGrid_cserv01_serv.SelectedField=qr_cserv01_servCSS_CODIND then
      begin
      if (DM2.Tb_MoeMCODMOE.AsInteger<>qr_cserv01_servCSS_CODIND.AsInteger) or  (qr_cserv01_servVALOR_INDEX.Value=0) then
         begin
         if flcadmoe(1,1,0,qr_cserv01_servCSS_CODIND.AsString) then
            begin
            qr_cserv01_servCSS_CODIND.AsInteger:=DM2.Tb_MoeMCODMOE.AsInteger;
            qr_cserv01_servMNOME.AsString:=DM2.Tb_MoeMNOME.AsString;
            query_temp:=TQuery.Create(nil);
            query_temp.DatabaseName:='SG_ASSOC';
            query_temp.SQL.add('select case when  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=:CODMOE and IDATA<=TO_DATE(SYSDATE) ) '
                              +' is null then (SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=:CODMOE and IDATA>TO_DATE(SYSDATE) ) '
                              +' else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=:CODMOE and IDATA<=TO_DATE(SYSDATE) ) end '
                              +' AS VALOR_INDEX from dual ');
            query_temp.ParamByName('CODMOE').AsInteger:=qr_cserv01_servCSS_CODIND.AsInteger;
            query_temp.Open;
            qr_cserv01_servVALOR_INDEX.Value:=query_temp.fieldbyname('VALOR_INDEX').AsFloat;
            freeandnil(query_temp);


            end
         else
            begin
            qr_cserv01_servCSS_CODIND.AsInteger:=0;
            qr_cserv01_servMNOME.AsString      :='';
            qr_cserv01_servVALOR_INDEX.Value   :=0;
            end;
         end
      else
         begin
         qr_cserv01_servCSS_CODIND.AsInteger:=DM2.Tb_MoeMCODMOE.AsInteger;
         qr_cserv01_servMNOME.AsString:=DM2.Tb_MoeMNOME.AsString;
         freeandnil(query_temp);
         end;

      end
   else if DBGrid_cserv01_serv.SelectedField=qr_cserv01_servCSS_CODSERV then
      begin
      if DM1.Tb_Pro2PDCODPRO.AsFloat<>qr_cserv01_servCSS_CODSERV.AsFloat then
         begin
         if flcadpro(1,1,codemp,qr_cserv01_servCSS_CODSERV.AsString) then
            begin
            qr_cserv01_servCSS_CODSERV.AsFloat:=DM1.Tb_ProPDCODPRO.AsFloat;
            qr_cserv01_servPDNOME.AsString    :=DM1.Tb_ProPDNOME.AsString;
            end
         else
            begin
            qr_cserv01_servCSS_CODSERV.AsFloat:=0;
            qr_cserv01_servPDNOME.AsString    :='';
            end;
         end;
      end;
   end;

end;

procedure TFrm_Contrato.qr_cserv01_servBeforePost(DataSet: TDataSet);
var
query_temp: TQuery;
begin
  inherited;
if qr_cserv01_servCSS_CODSERV.IsNull then
   begin
   qr_cserv01_serv.Cancel;
   Abort;
   exit;
   end;
mBloqueiaChange:=true;

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
if (mOper_cs=0) or (qr_cserv01_servCSS_CODSERV.AsFloat<>mCodSer_Ant) then
   begin
   Query_Temp.sql.clear;
   Query_Temp.sql.Add('Select count(*) from CADCSER01_SERV where CSS_CODEMP=:CODEMP '
                     +' and CSS_CHAVE=:CHAVE '
                     +' and CSS_CODCLI=:CODCLI '
                     +' and CSS_CODSERV=:CODSER ');
   query_temp.parambyname('CODEMP').AsInteger:=Tb_CSer01CS_CODEMP.AsInteger;
   query_temp.parambyname('CHAVE').AsFloat   :=Tb_CSer01CS_CHAVE.AsFloat;
   query_temp.parambyname('CODCLI').AsFloat  :=Tb_CSer01CS_CODCLI.AsFloat;
   query_temp.parambyname('CODSER').AsFloat   :=qr_cserv01_servCSS_CODSERV.AsFloat;
   try
      query_temp.Open;
   except
      end;
   if query_temp.fields[0].AsInteger>0 then
      begin
      MessageDlg('Este servico ja foi incluso anteriormente!',mtWarning,[mbOk],0);
      DBGrid_cserv01_serv.SelectedField:=qr_cserv01_servCSS_CODSERV;
      DBGrid_cserv01_serv.SetFocus;
      freeandnil(query_temp);
      abort;
      end;
   end;

query_temp.Close;
query_temp.SQL.Clear;
if mOper_cs=0 then
   begin
   query_temp.SQL.Add('Insert into CADCSER01_SERV ('
                  +' CSS_CODEMP '
                  +',CSS_CHAVE  '
                  +',CSS_ORDEM '
                  +',CSS_CODSERV '
                  +',CSS_PDESCFIN '
                  +',CSS_DATCONT '
                  +',CSS_DTLDESCFIN '
                  +',CSS_CODIND   '
                  +',CSS_PERCINDEX '
                  +',CSS_CODCLI '
                  +',CSS_QTDSERV '
                  +',CSS_UNDSERV '
                  +',CSS_QTDEST '
                  +',CSS_VALORLIC '
                  +',CSS_QTDHOR_TREINO '
                  +') values ( '
                  +':CSS_CODEMP '
                  +',:CSS_CHAVE  '
                  +',:CSS_ORDEM '
                  +',:CSS_CODSERV '
                  +',:CSS_PDESCFIN '
                  +',:CSS_DATCONT '
                  +',:CSS_DTLDESCFIN '
                  +',:CSS_CODIND   '
                  +',:CSS_PERCINDEX '
                  +',:CSS_CODCLI '
                  +',:CSS_QTDSERV '
                  +',:CSS_UNDSERV '
                  +',:CSS_QTDEST '
                  +',:CSS_VALORLIC '
                  +',:CSS_QTDHOR_TREINO '
                  +')');

   end
else
   begin
   query_temp.SQL.Add('Update CADCSER01_SERV set '
                  +' CSS_CODSERV=:CSS_CODSERV '
                  +',CSS_PDESCFIN=:CSS_PDESCFIN '
                  +',CSS_DATCONT=:CSS_DATCONT '
                  +',CSS_DTLDESCFIN=:CSS_DTLDESCFIN '
                  +',CSS_CODIND=:CSS_CODIND   '
                  +',CSS_PERCINDEX=:CSS_PERCINDEX '
                  +',CSS_QTDSERV=:CSS_QTDSERV '
                  +',CSS_UNDSERV=:CSS_UNDSERV '
                  +',CSS_QTDEST=:CSS_QTDEST '
                  +',CSS_VALORLIC=:CSS_VALORLIC '
                  +',CSS_QTDHOR_TREINO=:CSS_QTDHOR_TREINO '
                  +' where '
                  +' CSS_CODEMP=:CSS_CODEMP '
                  +' and CSS_CHAVE=:CSS_CHAVE  '
                  +' and CSS_ORDEM=:CSS_ORDEM '
                  +' and CSS_CODCLI=:CSS_CODCLI '
                  +' and CSS_CODSERV=:CSS_CODSERV '
                  );
   end;

query_temp.ParamByName('CSS_CODEMP').AsInteger     :=qr_cserv01_servCSS_CODEMP.AsInteger;
query_temp.ParamByName('CSS_CHAVE').AsFloat        :=qr_cserv01_servCSS_CHAVE.AsFloat;
query_temp.ParamByName('CSS_ORDEM').AsInteger      :=qr_cserv01_servCSS_ORDEM.AsInteger;
query_temp.ParamByName('CSS_CODSERV').AsFloat      :=qr_cserv01_servCSS_CODSERV.AsFloat;
query_temp.ParamByName('CSS_PDESCFIN').AsFloat     :=qr_cserv01_servCSS_PDESCFIN.AsFloat;
query_temp.ParamByName('CSS_DATCONT').AsDateTime   :=qr_cserv01_servCSS_DATCONT.AsFloat;
query_temp.ParamByName('CSS_DTLDESCFIN').AsDateTime:=qr_cserv01_servCSS_DTLDESCFIN.AsFloat;
query_temp.ParamByName('CSS_CODIND').AsFloat       :=qr_cserv01_servCSS_CODIND.AsFloat;
query_temp.ParamByName('CSS_PERCINDEX').AsFloat    :=qr_cserv01_servCSS_PERCINDEX.AsFloat;
query_temp.ParamByName('CSS_CODCLI').AsFloat       :=qr_cserv01_servCSS_CODCLI.AsFloat;
query_temp.ParamByName('CSS_QTDSERV').AsFloat      :=qr_cserv01_servCSS_QTDSERV.AsFloat;
query_temp.ParamByName('CSS_UNDSERV').AsString     :=qr_cserv01_servCSS_UNDSERV.AsString;
query_temp.ParamByName('CSS_QTDEST').AsFloat       :=qr_cserv01_servCSS_QTDEST.AsFloat;
query_temp.ParamByName('CSS_VALORLIC').AsFloat     :=qr_cserv01_servCSS_VALORLIC.AsFloat;
query_temp.ParamByName('CSS_QTDHOR_TREINO').AsFloat     :=qr_cserv01_servCSS_QTDHOR_TREINO.AsFloat;

try
   query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
if (fSonumero(Tb_CSer01CS_CODSER.AsString)=0) and (qr_cserv01_servCSS_CODSERV.AsFloat>0) then
   begin
   if not (Tb_CSer01.State in [dsEdit,dsInsert]) then
      begin
      Tb_CSer01.Edit;
      Tb_CSer01CS_CODSER.Value:=qr_cserv01_servCSS_CODSERV.AsFloat;
      Tb_CSer01PDNOME.Value   :=qr_cserv01_servPDNOME.AsString;
      Tb_CSer01.Post;
      end
   else
      begin
      Tb_CSer01CS_CODSER.Value:=qr_cserv01_servCSS_CODSERV.AsFloat;
      Tb_CSer01PDNOME.Value   :=qr_cserv01_servPDNOME.AsString;
      end;
   end;
mBloqueiaChange:=false;

freeandnil(query_temp);

end;

procedure TFrm_Contrato.Tb_CSer01BeforeCancel(DataSet: TDataSet);
var
query_temp: tQuery;

begin
  inherited;
query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';

if Tb_CSer01.State in [dsInsert, DsEdit] then
   begin
   if moper=0 then
      begin
      query_temp.Close;
      query_temp.SQL.Clear;
      query_temp.SQL.Add('Delete from CADCSER02 where '
                        +' CS2_CODEMP=0'+Tb_CSer01CS_CODEMP.AsString
                        +' and CS2_CODCLI=0'+Tb_CSer01CS_CODCLI.AsString
                        +' and CS2_CHAVE=0'+Tb_CSer01CS_CHAVE.AsString);
      try
         query_temp.ExecSQL;
         fdm1StartCommit;
      except
        end;
      query_temp.Close;
      query_temp.SQL.Clear;
      query_temp.SQL.Add('Delete from CADCSER01_SERV where '
                        +' CS1_CODEMP=0'+Tb_CSer01CS_CODEMP.AsString
                        +' and CS1_CODCLI=0'+Tb_CSer01CS_CODCLI.AsString
                        +' and CS1_CHAVE=0'+Tb_CSer01CS_CHAVE.AsString);
      try
         query_temp.ExecSQL;
         fdm1StartCommit;
      except
        end;
      end;
   end;

freeandnil(query_temp);

end;

procedure TFrm_Contrato.Tb_CSer01BeforePost(DataSet: TDataSet);
var
query_temp: tQuery;
i: integer;
begin
  inherited;
if (Tb_CSer01CS_DIAV.AsInteger<=0) then
   Tb_CSer01CS_DIAV.AsInteger:=10
else if (Tb_CSer01CS_DIAV.AsInteger>28) then
   Tb_CSer01CS_DIAV.AsInteger:=28;



For i:=0 to Tb_CSer01.FieldCount-1 do
   begin
   if not Tb_CSer01.Fields[i].IsNull then
      Continue;
   if Tb_CSer01.fields[i].DataType in [ftfloat,ftcurrency,ftinteger,ftword,ftdate,ftdatetime] then
      Tb_CSer01.Fields[i].Value:=0
//   else if Tb_CSer01.fields[i].DataType in [ftDate,ftDateTime] then
//      Tb_CSer01.Fields[i].Value:=0
   else if Tb_CSer01.Fields[i].DataType in [ftString,ftMemo] then
      Tb_CSer01.Fields[i].Value:=' ';
   end;


if (mchave_ant<>0) and
   ( (mchave_ant<>Tb_CSer01CS_CHAVE.Value) or (mcodcli_ant<>Tb_CSer01CS_CODCLI.Value) )   then
   begin
   query_temp:=tQuery.create(nil);
   Query_temp.DatabaseName:='SG_ASSOC';
   Query_temp.Close;
   Query_temp.SQL.Clear;
   Query_temp.SQL.Add('Update CADCSER02 set CS2_CHAVE=:CHAVE_NOV '
                     +',CS2_CODCLI=:CODCLI_NOV '
                     +'  where '
                     +' CS2_CODEMP=0'+Tb_CSer01CS_CODEMP.AsString
                     +' and CS2_CODCLI=:CODCLI_ANT'
                     +' and CS2_CHAVE=:CHAVE_ANT ');
   query_temp.ParamByName('CHAVE_NOV').AsFloat:=Tb_CSer01CS_CHAVE.AsFloat;
   query_temp.ParamByName('CODCLI_NOV').AsFloat:=Tb_CSer01CS_CODCLI.AsFloat;
   query_temp.ParamByName('CODCLI_ANT').AsFloat:=mcodcli_ant;
   query_temp.ParamByName('CHAVE_ANT').AsFloat:=mchave_ant;
   try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except
     end;


   Query_temp.Close;
   Query_temp.SQL.Clear;
   Query_temp.SQL.Add('Update CADCSER01 set CS_CHAVE=:CHAVE_NOV '
                     +',CS_CODCLI=:CODCLI_NOV '
                     +'  where '
                     +' CS_CODEMP=0'+Tb_CSer01CS_CODEMP.AsString
                     +' and CS_CODCLI=:CODCLI_ANT'
                     +' and CS_CHAVE=:CHAVE_ANT ');
   query_temp.ParamByName('CHAVE_NOV').AsFloat:=Tb_CSer01CS_CHAVE.AsFloat;
   query_temp.ParamByName('CODCLI_NOV').AsFloat:=Tb_CSer01CS_CODCLI.AsFloat;
   query_temp.ParamByName('CODCLI_ANT').AsFloat:=mcodcli_ant;
   query_temp.ParamByName('CHAVE_ANT').AsFloat:=mchave_ant;
   try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except
     end;

   freeandnil(query_temp);
   end;

end;

procedure TFrm_Contrato.qr_cserv01_servBeforeDelete(DataSet: TDataSet);
var
query_temp:TQuery;
begin
  inherited;
if application.messagebox(pchar('Quer realmente excluir o contrato '+qr_cserv01_servPDNOME.asstring+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Delete from CADCSER01_SERV '
                  +' where CSS_CODEMP=:CODEMP '
                  +' and CSS_CHAVE=:CHAVE  '
                  +' and CSS_ORDEM=:ORDEM '
                  +' and CSS_CODCLI=:CODCLI '
                  );
query_temp.ParamByName('CODEMP').AsInteger  :=qr_cserv01_servCSS_CODEMP.AsInteger;
query_temp.ParamByName('CHAVE').AsFloat     :=qr_cserv01_servCSS_CHAVE.AsFloat;
query_temp.ParamByName('ORDEM').AsInteger   :=qr_cserv01_servCSS_ORDEM.AsInteger;
query_temp.ParamByName('CODCLI').AsFloat    :=qr_cserv01_servCSS_CODCLI.AsFloat;
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;

freeandnil(query_temp);

end;

procedure TFrm_Contrato.qr_cserv01_servBeforeEdit(DataSet: TDataSet);
begin
  inherited;
mOper_cs:=1;
mCodSer_Ant:=qr_cserv01_servCSS_CODSERV.AsFloat;
int_ant_ValorCont_DescFin:=qr_cserv01_servINT_VALORCONT_DESCFIN.AsFloat;
int_ant_ValorCont        :=qr_cserv01_servINT_VALORCONT.AsFloat;
ant_PercIndex            :=qr_cserv01_servCSS_PERCINDEX.AsFloat;
ant_PDescFin             :=qr_cserv01_servCSS_PDESCFIN.AsFloat;

end;

procedure TFrm_Contrato.bbImprimirClick(Sender: TObject);
var
mNomeArq: String;
mNomeDoc_doc: OleVariant;
mNomeRel: string;
begin
bbImpProposta.Enabled:=false;
bbImprimir.Enabled   :=false;
mNomeRel:='CONTRATOPSERVICO';
if Frm_Contrato.fPreparaRelatorio(mNomeRel,Tb_CSer01CS_CODCLI.AsInteger,Tb_CSer01CS_CHAVE.AsInteger,mNomeArq,false) then
   begin
   WordApp:=TWordApplication.Create(Application.Owner);
       { Faz com que o Word seja aberto e visivel ao usuário }
   WordApp.Visible:=True;
       { Adiciona um novo documento ao Word }
   WordDoc:=TWordDocument.Create(Application.Owner);
       { Local do documento de Origem }
   { Abre o documento de Origem no Word }
   mNomeDoc_doc:=mNomeArq;
   try
      WordDoc.ConnectTo(WordApp.Documents.Add(mNomeDoc_doc,EmptyParam,EmptyParam,EmptyParam));
   except on e : exception do
      Messagedlg('Erro ao Abrir Documento '+e.message+#13+'. Feche e tente novamente!' ,mterror,[mbOk],0);
      end;
{
   WordDoc.Close;
   WordDoc.Disconnect;
   WordApp.Disconnect;
   WordApp.Quit;
|\}
   end;

bbImpProposta.Enabled:=true;
bbImprimir.Enabled   :=true;

end;


function TFrm_Contrato.fPreparaRelatorio(pNomeRel: String;pCodcli,pChave: Real; out pArquivoSaida: String;pOriginal: Boolean): Boolean;
var
findtext: string;
replacetext: string;
Query_Cont: tQuery;
Query_Serv: tQuery;
mTodosServicos: String;
mNomePro:String;
x_sub: Integer;
mNomeArq: String;
Query_Itens_Contratado: tQuery;
Query_Soma_Itens_Contratado: tQuery;

Query_Licencas: tQuery;
Query_Soma_Licencas: tQuery;


Query_Grade_Res: tQuery;
Query_Grade_Pos: tQuery;


Query_Produtos: tQuery;
Query_Soma_Produtos: tQuery;


Query_Grade: tQuery;

Query_DWord01: tQuery;
//mem_grade: TRxMemoryData;
mPrim: Boolean;
mTamcol: Array of integer;
mCol: Integer;
mQtdCol: Integer;
mGrade: String;

mTextoSaida: tStringList;

x_mesclar: Integer;
mMesclar_ColAcum: Integer;
mCampoValor: String;
mComandoSql: String;
begin

if not fLerArquivoParticionadoBlob(pNomeRel, 'CADDW_CFG','DW_CODEMP','DW_NOMREL','DW_ORDEM','DW_DADOS','DW_NOMEORI',mNomeArq,[],[]) then
   begin
   result:=false;
   exit;
   end;
RE_relatorio.Lines.Clear;
try
   RE_relatorio.Lines.LoadFromFile(mnomearq);
except on e : exception do
   begin
   Messagedlg('Erro ao ler arquivo '+e.message,mterror,[mbOk],0);
   result:=false;
   exit;
   end;
   end;

Query_Licencas:=tQuery.Create(Nil);
Query_Licencas.DatabaseName:='SG_ASSOC';
Query_Soma_Licencas:=tQuery.Create(Nil);
Query_Soma_Licencas.DatabaseName:='SG_ASSOC';
// inicio licencas

Query_Licencas.Sql.Clear;
mComandoSql:='select tab01.* '
                                   +',(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2))        as valor_cont '
                                   +',(round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2))  as valor_cont_desc '
                                   +',(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)-round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2)) '
                                   +'  as valor_liquido '





                                   +' from '
                              +' (Select '


                              +' CSS_CODEMP,    CSS_CHAVE,    CSS_ORDEM,    CSS_CODSERV,    CSS_PDESCFIN,    CSS_DATCONT, '
                              +' CSS_DTLDESCFIN,    CSS_CODIND,    CSS_PERCINDEX,    CSS_CODCLI,    CSS_QTDSERV, '
                              +' CSS_UNDSERV,    CSS_QTDEST,    CSS_VALORLIC, NVL(CSS_QTDHOR_TREINO,0) AS CSS_QTDHOR_TREINO,PDNOME '

                               +',PDNOME2,MNOME,MSIMBOLO '
                              +' ,case when  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) '
                              +'  is null then (SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA>TO_DATE(SYSDATE) ) '
                              +' else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) end '
                              +'  as valor_index '
                              +' from CADCSER01_SERV,CADMOE,CADPRO '
                       +' where CSS_CODSERV=PDCODPRO '
                       +' AND MCODMOE(+)=CSS_CODIND '
//                       +' and CSS_CODEMP=:CODEMP '
                      +' and CSS_CODCLI=:CODCLI '
                      +' and CSS_CHAVE=:CHAVE '
                      +'  ) tab01';
Query_Licencas.Sql.clear;
Query_Licencas.Sql.Add('Select * from ( '
                              +' select '

                              +' CSS_CODEMP,    CSS_CHAVE,   9999 AS CSS_ORDEM,    CSS_CODSERV,    CSS_PDESCFIN,    CSS_DATCONT, '
                              +' CSS_DTLDESCFIN,    CSS_CODIND,    CSS_PERCINDEX,    CSS_CODCLI,  NVL(CSS_QTDHOR_TREINO,0) as  CSS_QTDSERV, '
                              +' CSS_UNDSERV,  NVL(CSS_QTDHOR_TREINO,0) as CSS_QTDEST, 0 AS CSS_VALORLIC ,CSS_QTDHOR_TREINO AS CSS_QTDHOR_TREINO,PDNOME '


                              +','+QuotedStr('Horas Treinamento ')+' as PDNOME2 '
                              +',MNOME  ,MSIMBOLO,VALOR_INDEX, 0 as valor_cont , 0 as valor_cont_desc '
                              +', 0 as valor_liquido from ('
                              +mComandoSql+' ) where nvl(CSS_QTDHOR_TREINO,0)>0 '
                              +' union '
                              + mComandoSql
                              +') '
                              +'  order by CSS_CODSERV, PDNOME2,PDNOME ');
//                              +'  order by CSS_CODSERV, CSS_ORDEM ');
Query_Licencas.parambyname('CODCLI').AsFloat:=pCodCli;
Query_Licencas.parambyname('CHAVE').AsFloat :=pChave;

try
   Query_Licencas.Open;
except
   Query_Licencas.SQL.SAVETOFILE(mpastatemp + 'SQL001.TXT');
   end;


//Query_Licencas.SQL.SAVETOFILE(mpastatemp + 'SQL001.TXT');


Query_Soma_Licencas:=tQuery.Create(Nil);
Query_Soma_Licencas.DatabaseName:='SG_ASSOC';
Query_Soma_Licencas.Sql.Clear;

Query_Soma_Licencas.Sql.Add('select count(*)       as QTD_CONT '
                                   +',sum(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2))        as Total_valor_cont '
                                   +',sum(round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2))  as Total_valor_cont_desc '
                                   +',sum(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)-round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2)) '
                                   +'  as Total_valor_liquido '
                                   +',sum(CSS_QTDSERV)      as Total_QTDSERV '
                                   +',sum(CSS_QTDEST)       as Total_QTDEST '
                                   +',sum(CSS_VALORLIC)     as Total_VALORLIC '
                                  
                                   +',sum(NVL(CSS_QTDHOR_TREINO,0)) as total_horas_treino '
                                   +' from (');




Query_Soma_Licencas.Sql.Add('Select '

                              +' CSS_CODEMP,    CSS_CHAVE,    CSS_ORDEM,    CSS_CODSERV,    CSS_PDESCFIN,    CSS_DATCONT, '
                              +' CSS_DTLDESCFIN,    CSS_CODIND,    CSS_PERCINDEX,    CSS_CODCLI,    CSS_QTDSERV, '
                              +' CSS_UNDSERV,    CSS_QTDEST,    CSS_VALORLIC,NVL(CSS_QTDHOR_TREINO,0) AS CSS_QTDHOR_TREINO ,PDNOME '
                                   +',MNOME,MSIMBOLO '
                              +' ,case when  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) '
                              +'  is null then (SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA>TO_DATE(SYSDATE) ) '
                              +' else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) end '
                              +'  as valor_index '
                              +' from CADCSER01_SERV,CADMOE,CADPRO '
                       +' where CSS_CODSERV=PDCODPRO '
                       +' AND MCODMOE(+)=CSS_CODIND '
//                       +' and CSS_CODEMP=:CODEMP '
                      +' and CSS_CODCLI=:CODCLI '
                      +' and CSS_CHAVE=:CHAVE '
                      +' order by CSS_ORDEM ');


Query_Soma_Licencas.SQL.Add(' ) ' );
//Query_Soma_Licencas.parambyname('CODEMP').AsFloat:=1;
Query_Soma_Licencas.parambyname('CODCLI').AsFloat:=pCodCli;
Query_Soma_Licencas.parambyname('CHAVE').AsFloat :=pChave;
try
   Query_Soma_Licencas.Open;
except
   Query_Soma_Licencas.sql.savetofile(mpastatemp + 'SQLserv01.txt');
   end;


// termino licencas



Query_Serv:=tQuery.Create(Nil);
Query_Serv.DatabaseName:='SG_ASSOC';

Query_Itens_Contratado:=tQuery.Create(Nil);
Query_Itens_Contratado.DatabaseName:='SG_ASSOC';
Query_Itens_Contratado.Sql.Clear;
mComandoSql:='select tab01.* '
                                   +',(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2))        as valor_cont '
                                   +',(round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2))  as valor_cont_desc '
                                   +',(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)-round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2)) '
                                   +'  as valor_liquido '
                                   +' from '
                              +' (Select '


                              +' CSS_CODEMP,    CSS_CHAVE,    CSS_ORDEM,    CSS_CODSERV,    CSS_PDESCFIN,    CSS_DATCONT, '
                              +' CSS_DTLDESCFIN,    CSS_CODIND,    CSS_PERCINDEX,    CSS_CODCLI,    CSS_QTDSERV, '
                              +' CSS_UNDSERV,    CSS_QTDEST,    CSS_VALORLIC,    NVL(CSS_QTDHOR_TREINO,0) AS CSS_QTDHOR_TREINO  ,PDNOME '

                               +',PDNOME2,MNOME,MSIMBOLO '
                              +' ,case when  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) '
                              +'  is null then (SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA>TO_DATE(SYSDATE) ) '
                              +' else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) end '
                              +'  as valor_index '
                              +' from CADCSER01_SERV,CADMOE,CADPRO '
                       +' where CSS_CODSERV=PDCODPRO '
                       +' AND MCODMOE(+)=CSS_CODIND '
//                       +' and CSS_CODEMP=:CODEMP '
                      +' and CSS_CODCLI=:CODCLI '
                      +' and CSS_CHAVE=:CHAVE '
                      +'  ) tab01';
//Query_Itens_Contratado.parambyname('CODEMP').AsFloat:=1;
Query_Itens_Contratado.Sql.clear;
Query_Itens_Contratado.Sql.Add('Select * from ( '
                              +' select '

                              +' CSS_CODEMP,    CSS_CHAVE,    CSS_ORDEM,    CSS_CODSERV,    CSS_PDESCFIN,    CSS_DATCONT, '
                              +' CSS_DTLDESCFIN,    CSS_CODIND,    CSS_PERCINDEX,    CSS_CODCLI,    CSS_QTDSERV, '
                              +' CSS_UNDSERV,    CSS_QTDEST,    CSS_VALORLIC ,NVL(CSS_QTDHOR_TREINO,0) AS CSS_QTDHOR_TREINO,PDNOME '


                              +',PDNOME2  || '+QuotedStr('  Desconto financeiro ')
                              +'|| case when CSS_DTLDESCFIN<TO_DATE(SYSDATE-20000) then '+QuotedStr('  ')+' else  '+QuotedStr(' até ')
                              +' || TO_CHAR(CSS_DTLDESCFIN,'+QuotedStr('DD/MM/YYYY')+') end AS PDNOME2 '
                              +' ,MNOME  ,MSIMBOLO,VALOR_INDEX, VALOR_CONT_DESC*-1 AS VALOR_CONT, 0 AS VALOR_CONT_DESC, '
                              +' 0 AS VALOR_LIQUIDO from ('
                              +mComandoSql+' ) where valor_cont_desc>0 '
                              +' union '
                              + mComandoSql
                              +') '
                              +'  order by CSS_CODSERV,VALOR_CONT DESC ');
//                              +'  order by CSS_CODSERV,VALOR_CONT DESC ');

Query_Itens_Contratado.parambyname('CODCLI').AsFloat:=pCodCli;
Query_Itens_Contratado.parambyname('CHAVE').AsFloat :=pChave;

try
   query_Itens_Contratado.Open;
except
   query_Itens_Contratado.SQL.SAVETOFILE(mpastatemp + 'SQL001.TXT');
   end;





Query_Soma_Itens_Contratado:=tQuery.Create(Nil);
Query_Soma_Itens_Contratado.DatabaseName:='SG_ASSOC';
Query_Soma_Itens_Contratado.Sql.Clear;

Query_Soma_Itens_Contratado.Sql.Add('select count(*)       as QTD_CONT '
                                   +',sum(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2))        as Total_valor_cont '
                                   +',sum(round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2))  as Total_valor_cont_desc '
                                   +',sum(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)-round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2)) '
                                   +'  as Total_valor_liquido '
                                   +',sum(CSS_QTDSERV)      as Total_QTDSERV '
                                   +',sum(CSS_QTDEST)       as Total_QTDEST '
                                   +',sum(CSS_VALORLIC)     as Total_VALORLIC '
                                   +',sum(NVL(CSS_QTDHOR_TREINO,0)) as total_horas_treino '

                                   +' from (');


Query_Soma_Itens_Contratado.Sql.Add('Select '

                              +' CSS_CODEMP,    CSS_CHAVE,    CSS_ORDEM,    CSS_CODSERV,    CSS_PDESCFIN,    CSS_DATCONT, '
                              +' CSS_DTLDESCFIN,    CSS_CODIND,    CSS_PERCINDEX,    CSS_CODCLI,    CSS_QTDSERV, '
                              +' CSS_UNDSERV,    CSS_QTDEST,    CSS_VALORLIC,NVL(CSS_QTDHOR_TREINO,0) AS CSS_QTDHOR_TREINO ,PDNOME '
                                   +',MNOME,MSIMBOLO '
                              +' ,case when  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) '
                              +'  is null then (SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA>TO_DATE(SYSDATE) ) '
                              +' else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=MCODMOE and IDATA<=TO_DATE(SYSDATE) ) end '
                              +'  as valor_index '
                              +' from CADCSER01_SERV,CADMOE,CADPRO '
                       +' where CSS_CODSERV=PDCODPRO '
                       +' AND MCODMOE(+)=CSS_CODIND '
//                       +' and CSS_CODEMP=:CODEMP '
                      +' and CSS_CODCLI=:CODCLI '
                      +' and CSS_CHAVE=:CHAVE '
                      +' order by PDNOME,PDNOME2 ');
//                      +' order by CSS_ORDEM ');


Query_Soma_Itens_Contratado.SQL.Add(' ) ' );
//Query_Soma_Itens_Contratado.parambyname('CODEMP').AsFloat:=1;
Query_Soma_Itens_Contratado.parambyname('CODCLI').AsFloat:=pCodCli;
Query_Soma_Itens_Contratado.parambyname('CHAVE').AsFloat :=pChave;
try
   Query_Soma_Itens_Contratado.Open;
except
   Query_Soma_Itens_Contratado.sql.savetofile(mpastatemp + 'SQLserv01.txt');
   end;

// Query_Soma_Itens_Contratado.sql.savetofile(mpastatemp + 'SQLserv01.txt');




Query_Produtos:=tQuery.Create(Nil);
Query_Produtos.DatabaseName:='SG_ASSOC';
Query_Produtos.Sql.Clear;
Query_Produtos.Sql.Add('Select CSM_CODEMP,CSM_CHAVE,CSM_CODCLI,CSM_ORDEM '
                      +'       ,CSM_CODPRO,PDNOME,PDUND,CSM_QTD,CSM_PU,ROUND(CSM_QTD*CSM_PU,2) AS TOTAL '
                      +'       ,CSM_DESC_VALOR,CSM_DESC_PERC01,CSM_DESC_TOTAL '
                      +'       ,ROUND(CSM_QTD*CSM_PU,2)-CSM_DESC_TOTAL AS TOTAL_LIQUIDO '
                      +' from CADCSER01_MERC,CADPRO '
                      +' WHERE PDCODPRO=CSM_CODPRO '
                      +' and CSm_CODCLI=:CODCLI '
                      +' and CSm_CHAVE=:CHAVE '
                      +' order by CSM_ORDEM ');

Query_Produtos.parambyname('CODCLI').AsFloat:=pCodCli;
Query_Produtos.parambyname('CHAVE').AsFloat :=pChave;
try
   Query_Produtos.Open;
except
   Query_Produtos.sql.savetofile(mpastatemp + 'SQLserv01.txt');
   end;


Query_Soma_Produtos:=tQuery.Create(Nil);
Query_Soma_Produtos.DatabaseName:='SG_ASSOC';
Query_Soma_Produtos.Sql.Clear;

Query_Soma_Produtos.Sql.Add(' Select COUNT(*) AS QTDITENS,min(CSM_CODEMP) AS CSM_CODEMP '
                           +', max(CSM_CHAVE) AS CSM_CHAVE, max(CSM_CODCLI) as CSM_CODCLI '
                           +', max(CSM_ORDEM) as CSM_ORDEM,max(CSM_CODPRO) as CSM_CODPRO '
                           +', max(PDNOME) as PDNOME, max(PDUND) as PDUND, sum(CSM_QTD) as QTD_UND '
                           +', max(CSM_PU) as CSM_pu, sum(TOTAL) as TOTAL_BRUTO_GERAL '
                           +', sum(CSM_DESC_VALOR) as TOTAL_DESC_VALOR, max(CSM_DESC_PERC01) as TOTAL_DESC_PERC '
                           +', sum(CSM_DESC_TOTAL) as TOTAL_DESC_GERAL '
                           +', sum(TOTAL_LIQUIDO) as TOTAL_LIQUIDO_GERAL '
                           +' from (');



Query_Soma_Produtos.Sql.Add('Select CSM_CODEMP,CSM_CHAVE,CSM_CODCLI,CSM_ORDEM '
                      +'       ,CSM_CODPRO,PDNOME,PDUND,CSM_QTD,CSM_PU,ROUND(CSM_QTD*CSM_PU,2) AS TOTAL '
                      +'       ,CSM_DESC_VALOR,CSM_DESC_PERC01,CSM_DESC_TOTAL '
                      +'       ,ROUND(CSM_QTD*CSM_PU,2)-CSM_DESC_TOTAL AS TOTAL_LIQUIDO '
                      +' from CADCSER01_MERC,CADPRO '
                      +' WHERE PDCODPRO=CSM_CODPRO '
                      +' and CSm_CODCLI=:CODCLI '
                      +' and CSm_CHAVE=:CHAVE ');
Query_Soma_Produtos.Sql.Add(' ) ');

Query_Soma_Produtos.parambyname('CODCLI').AsFloat:=pCodCli;
Query_Soma_Produtos.parambyname('CHAVE').AsFloat :=pChave;
try
   Query_Soma_Produtos.Open;
except
   Query_Soma_Produtos.sql.savetofile(mpastatemp + 'SQLserv01.txt');
   end;





Query_Serv.Close;
Query_Serv.SQL.Clear;
Query_Serv.SQL.Add(' Select  CSS_CODEMP '
                  +',   CSS_CHAVE  '
                  +',   CSS_ORDEM '
                  +',   CSS_CODSERV '
                  +',   CSS_PDESCFIN '
                  +',   CSS_DATCONT '
                  +',   CSS_DTLDESCFIN '
                  +',   CSS_CODIND '
                  +',   CSS_PERCINDEX '
                  +',   CSS_CODCLI '
                  +',   CSS_QTDSERV '
                  +',   CSS_UNDSERV '
                  +',   CSS_QTDEST '
                  +',   PDNOME,PDNOME2 '
                  +' from CADCSER01_SERV,CADPRO '
                  +' where PDCODPRO(+)=CSS_CODSERV ');
Query_Serv.SQL.Add(' and CSS_CODCLI=:CODCLI '
                  +' and CSs_CHAVE=:CHAVE ');
Query_Serv.parambyname('CODCLI').AsFloat:=pCodcli;
Query_Serv.parambyname('CHAVE').AsFloat :=pChave;


Query_Serv.Open;

mTodosServicos:='';
While not Query_Serv.eof do
   begin
   mNomePro:=Query_Serv.fieldbyName('PDNOME2').asstring;
   Query_Serv.Next;
   if Query_Serv.Eof then
      mTodosServicos:=mTodosServicos+' e '+mNomePro
   else
      mTodosServicos:=mTodosServicos+', '+mNomePro;
   end;
Query_Serv.First;
Query_Cont:=tQuery.Create(Nil);
Query_Cont.DatabaseName:='SG_ASSOC';
Query_Cont.Close;
Query_Cont.SQL.Clear;
Query_Cont.SQL.Add('Select CADCSER01.* '
                  +', case when CS_REPLEGAL_SEXO='+QuotedStr('F')+' then '+QuotedStr('Pela Sra.')+' else '+QuotedStr('Pelo Sr.')+' END AS  CS_REPLEGAL_SR_SRA'
                  +', CRAZAO '
                  +' ,CIDADE,UF,RAZAO,BAIRRO,CLOG,CBAIRRO,CCIDADE,CUF,CCEP,CCNPJ,CIE,CCPF,CNOMCON,CFONCON '
                  +' , case when length(CTPLOG)>1 then CTPLOG || '+QuotedStr(' ')+' else '+QuotedStr(' ')+' end '
                  +' || CLOG || case when LENGTH(CNUM)>1 then  '+QuotedStr('  No. ')+'  || CNUM  else '+QuotedStr(' ')+' END '
                  +' AS CONTRATANTE_ENDER '
                  +', ENDERECO || case when LENGTH(NUMERO)>1 then  '+QuotedStr(' No. ')+'  || NUMERO  else '+QuotedStr(' ')+' END AS CONTRATADO_ENDER  '
                  +' ,:TODOSSERVICOS AS TODOSSERVICOS '


                  +' ,  case when CS_TIPO=0 then '+QuotedStr('Receber por visita')
                  +'   when CS_TIPO=1 then '+QuotedStr('vencimento todo dia ')+' || CS_DIAV '
                  +'   || '+QuotedStr('(')+'|| extenso(nvl(CS_DIAV,0)) || '+QuotedStr(')')

                  +'   || '+QuotedStr(' de cada mes ')
                  +'   when CS_TIPO=2 then '+QuotedStr('Vencer dia ')+' || CS_DIAV '
                  +'   || '+QuotedStr(' dos meses ')+' || TO_CHAR(CS_DATCON, '+QuotedStr('MM')+')'
                  +'   || '+QuotedStr('/')+' || TO_CHAR(ADD_MONTHS(CS_DATCON,3), '+QuotedStr('MM')+')'
                  +'   || '+QuotedStr('/')+' || TO_CHAR(ADD_MONTHS(CS_DATCON,6), '+QuotedStr('MM')+')'
                  +'   || '+QuotedStr(' e ')+' || TO_CHAR(ADD_MONTHS(CS_DATCON,09), '+QuotedStr('MM')+')'
                  +'   when CS_TIPO=3 then '+QuotedStr('Vencer dia ')+' || CS_DIAV '
                  +'   || '+QuotedStr(' dos meses ')+' || TO_CHAR(CS_DATCON, '+QuotedStr('MM')+')'
                  +'   || '+QuotedStr(' e ')+' || TO_CHAR(ADD_MONTHS(CS_DATCON,6), '+QuotedStr('MM')+')'
                  +'   when CS_TIPO=4 then '+QuotedStr('Vencer dia ')+' || CS_DIAV '
                  +'   || '+QuotedStr(' do mes ')+' || TO_CHAR(CS_DATCON, '+QuotedStr('MM')+')'
                  +'   || '+QuotedStr(' de cada ano ')
                  +'   end as vencimento '

                  +',NVL( ( '
                  +'select '
                  +' sum(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2))        as Total_valor_cont '
                  +' from ( '
                  +'Select CSS_PERCINDEX ,case when  (SELECT max(IVLRCOMCPR) '
                  +'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )   is null then '
                  +'(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE) ) '
                  +'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end '
                  +' as valor_index  '
                  +' '
                  +' from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE '
                  +'and CSS_CODEMP=CS_CODEMP '
                  +' )  ),0) AS TOTAL_VALOR_CONT '
                  +',NVL( ( '
                  +'select '
                  +'sum(round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2))     as Total_valor_cont_desc '
                  +' from ( '
                  +'Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCOMCPR) '
                  +'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )   is null then '
                  +'(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE) ) '
                  +'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end '
                  +' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE '
                  +'and CSS_CODEMP=CS_CODEMP '
                  +' )  ),0) AS TOTAL_VALOR_CONT_desc '
                  +',NVL( ( '
                  +'select '
                  +'sum(round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)-round( (round((((VALOR_INDEX * CSS_PERCINDEX)/100)),2)*CSS_PDESCFIN/100),2)) '
                  +'    as Total_valor_liq '
                  +' from ( '
                  +'Select CSS_PERCINDEX,CSS_PDESCFIN ,case when  (SELECT max(IVLRCOMCPR) '
                  +'from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )   is null then '
                  +'(SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE) ) '
                  +'else  (SELECT max(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end '
                  +' as valor_index  from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE '
                  +'and CSS_CODEMP=CS_CODEMP '
                  +' )  ),0) AS TOTAL_VALOR_liquido '
                  +',nvl( (select sum(nvl(CSS_VALORLIC,0)) from CADCSER01_SERV where CSS_CODCLI=CS_CODCLI '
                  +' AND CSS_CHAVE=CS_CHAVE and CSS_CODEMP=CS_CODEMP),0) AS TOTAL_LIC '
                  +' from CADCSER01 ,CADCLI,CADEMP '
                  +' WHERE CCODCLI(+)=CS_CODCLI '
                  +' AND CODEMP=1' );
Query_cont.SQL.Add(' and CS_CODCLI=:CODCLI '
                  +' and CS_CHAVE=:CHAVE ');
Query_Cont.parambyname('CODCLI').AsFloat:=pCodcli;
Query_Cont.parambyname('CHAVE').AsFloat :=pChave;
Query_Cont.ParambyName('TODOSSERVICOS').AsString:=mTodosServicos;


try
   Query_Cont.open;
except
   Query_Cont.sql.savetofile(mpastatemp + 'SQL.txt');
   end;

if not pOriginal then
   begin
   for x_sub:=0 to high(leg_contpserv) do
      begin
      findtext   :=leg_contpserv[x_sub,00];
      replacetext:=Query_cont.Fieldbyname(leg_contpserv[x_sub,01]).asstring;
      if leg_contpserv[x_sub,03]='extenso_reais' then
         replacetext:=Extenso(valfloat(replacetext))
      else if leg_contpserv[x_sub,03]='extenso_numero' then
         replacetext:=Extenso2(valint(replacetext))
      else if leg_contpserv[x_sub,03]='extenso_data' then
         replacetext:=Data(Query_cont.Fieldbyname(leg_contpserv[x_sub,01]).Asdatetime,0)
      else if leg_contpserv[x_sub,03]<>'' then
         replacetext:=FormatFloat(leg_contpserv[x_sub,03], valfloat(replacetext));

//      replacetext:=TodasPrimeirasMaiusculas(replacetext);
      replacetext:=AnsiToAscii(replacetext);
//      showmessage('procura '+findtext+' replace '+replacetext);
      While True do
         begin
         If Pos(uppercase(findText), uppercase(RE_relatorio.Lines.Text)) > 0 Then
            Begin
            RE_relatorio.SelStart := Pos(uppercase(FindText), uppercase(RE_relatorio.Lines.text)) - 1;
            RE_relatorio.SelLength := Length(FindText);
            RE_relatorio.SelText := ReplaceText;
            end
         else
            break;
         verteclado_02(0);
         verteclado(0);

         end;

      end;

   Query_Grade_Res:=TQuery.Create(nil);
   Query_Grade_Res.DatabaseName:='SG_ASSOC';
   Query_Grade_Res.SQL.Clear;
   Query_Grade_Res.SQL.Add('select DW02_NOMGRADE,COUNT(*) FROM CADDWORD_TAB02 where '
                            +' DW02_CODEMP=:CODEMP '
                            +' and DW02_NOMREL=:NOMREL '
                            +' group by DW02_NOMGRADE '
                            +' order by DW02_NOMGRADE ');
   Query_Grade_Res.ParamByName('CODEMP').AsInteger:=codemp;
   Query_Grade_Res.ParamByName('NOMREL').AsString :=pNomeRel;
   Query_Grade_Res.open;



   Query_Grade:=TQuery.Create(nil);
   Query_Grade.DatabaseName:='SG_ASSOC';



   Query_DWord01:=tQuery.Create(Nil);
   Query_DWord01.DatabaseName:='SG_ASSOC';

   Query_Grade_Pos:=tQuery.Create(Nil);
   Query_Grade_Pos.DatabaseName:='SG_ASSOC';

   mTextoSaida:=tStringList.create;

   //mem_grade:=TRxMemoryData.Create(nil);


   While not Query_Grade_Res.Eof do
      begin
      Query_DWord01.Sql.Clear;
      Query_DWord01.Sql.Add('select DW01_QTDCOL,NVL(DW01_TABELA,0) AS DW01_TABELA FROM CADDWORD_TAB01 '
                               +' where DW01_CODEMP=:CODEMP '
                               +' and DW01_NOMREL=:NOMREL '
                               +' and DW01_NOMGRADE=:NOMGRADE ');
      Query_DWord01.ParamByName('CODEMP').AsInteger:=codemp;
      Query_DWord01.ParamByName('NOMREL').AsString :=pNomeRel;
      Query_DWord01.ParamByName('NOMGRADE').AsString :=query_grade_res.fieldbyName('DW02_NOMGRADE').asString;
      Query_DWord01.open;
      if query_dWord01.Fields[0].AsInteger<1 then
         begin
         Query_Grade_Res.Next;
         Continue;
         end;

      mQtdcol:=query_dWord01.Fields[0].AsInteger;
      setlength(mTamcol, mQtdCol+1);
      mGrade:='';
      mem_grade.close;
      mem_grade.FieldDefs.Clear;
      for mCol:=0 to mQtdCol-1 do
         begin
         mem_grade.FieldDefs.Add('TIPOCAMPO_'+inttostr(mcol) ,ftstring,30,false); // dados imagem [00]
         mem_grade.FieldDefs.Add('TAMCOL_'+inttostr(mcol) ,ftinteger,0,false); // tamanho em pixes da coluna [01]
         mem_grade.FieldDefs.Add('COLUNA_'+inttostr(mcol) ,ftinteger,0,false); // numero da coluna [02]
         mem_grade.FieldDefs.Add('MESCLAR_ATE_'+inttostr(mcol) ,ftinteger,0,false); // mesclar coluna até [03]
         mem_grade.FieldDefs.Add('COR_FONTE_'+inttostr(mcol) ,ftString,10,false); // cor da fonte [04]
         mem_grade.FieldDefs.Add('COR_FUNDO_'+inttostr(mcol) ,ftString,10,false); // cor do fundo [05]
         mem_grade.FieldDefs.Add('ALINHAMENTO_'+inttostr(mcol) ,ftinteger,0,false); // 0-direito 1-centro 2-esquerdo [06]
         mem_grade.FieldDefs.Add('VALOR_CAMPO_'+inttostr(mcol) ,ftstring,3000,false); // valor do campo [07]
         mem_grade.FieldDefs.Add('MESCLAR_ATE_TAMGER_'+inttostr(mcol) ,ftInteger,0,false); // Mesclar até coluna inteiro [08]
         mem_grade.FieldDefs.Add('FONTE_TAMANHO_'+inttostr(mcol) ,ftString,10,false); // TAMANHO DA FONTE [09]


         end;





      Query_Grade_Pos.Close;
      Query_Grade_Pos.SQL.Clear;
      Query_Grade_Pos.SQL.Add('select  DW02_NOMGRADE,DW02_POSICAO,COUNT(*) FROM CADDWORD_TAB02 where '
                            +' DW02_CODEMP=:CODEMP '
                            +' and DW02_NOMREL=:NOMREL '
                            +' and DW02_NOMGRADE=:NOMGRADE '
                            +' group by DW02_NOMGRADE,DW02_POSICAO '
                            +' order by DW02_POSICAO ');
      Query_Grade_Pos.ParamByName('CODEMP').AsInteger:=codemp;
      Query_Grade_Pos.ParamByName('NOMREL').AsString :=pNomeRel;
      Query_Grade_Pos.ParamByName('NOMGRADE').AsString :=Query_Grade_Res.fieldbyName('DW02_NOMGRADE').asstring;
      Query_Grade_Pos.open;
      mPrim:=true;
      mem_grade.open;

      if Query_DWord01.FieldByName('DW01_TABELA').AsInteger=2 then
         begin

         Query_soma_Produtos.First;
         Query_Produtos.First;
         While not Query_grade_pos.eof do
            begin
            Query_Grade.Close;
            Query_Grade.SQL.Clear;
            Query_Grade.SQL.Add('select  DW02_CODEMP, '
                                +'  DW02_NOMREL, '
                                +'  DW02_NOMGRADE, '
                                +'  DW02_POSICAO, '
                                +'  DW02_COLUNA, '
                                +'  DW02_TIPOCAMPO, '
                                +'  DW02_CAMPOOUTEXTO, '
                                +'  DW02_TAMANHO, '
                                +'  DW02_ALINHAMENTO, '
                                +'  DW02_FORMATO, '
                                +'  DW02_DATATYPE, '
                                +'  DW02_FUNDO, '
                                +'  DW02_MESCLAR_FIN, '
                                +'  DW02_CORFUNDO, '
                                +'  DW02_CORFONTE, '
                                +'  DW02_TAMANHO_DIG, '
                                +'  DW02_FONTE_TAMANHO '
                                +'  FROM CADDWORD_TAB02 where DW02_CODEMP=:CODEMP '
                                +'  and DW02_NOMREL=:NOMREL '
                                +'  and DW02_NOMGRADE=:NOMGRADE '
                                +'  and DW02_POSICAO=:POSICAO '
                                +'  order by DW02_NOMGRADE,DW02_POSICAO,DW02_COLUNA ');
            Query_Grade.ParamByName('CODEMP').AsInteger  :=codemp;
            Query_Grade.ParamByName('NOMREL').AsString   :=pNomeRel;
            Query_Grade.ParamByName('NOMGRADE').AsString :=Query_Grade_Res.FieldbyName('DW02_NOMGRADE').AsString;
            Query_Grade.ParamByName('POSICAO').AsString  :=Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString;
            Query_Grade.open;
            mCol:=0;

            if (copy(query_grade_pos.FieldByName('DW02_POSICAO').AsString,1,3)='CAB') or
               (copy(Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString,1,3)='ROD') then
               begin
               Query_soma_Produtos.First;
               While not Query_soma_Produtos.Eof do
                  begin

                  mem_grade.append;
                  Query_grade.first;

                  While not Query_Grade.eof do
                     begin
                     if mcol>mQtdCol-1 then
                        begin
                        Query_Grade.Next;
                        Continue;
                        end;

                     if mprim then
                        mTamcol[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;
                     mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
                     mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mtamcol[mcol];
                     mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
                     mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
                     mMesclar_ColAcum:=0;
                     if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                        begin
                        for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                           begin
                           mMesclar_ColAcum:=mMesclar_ColAcum+mTamCol[x_Mesclar];
                           end;
                        mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                        end;

                     mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
                     mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
                     mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;
                     if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                        mCampoValor:=Query_soma_Produtos.fieldbyName(
                         Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
                     else
                        mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
                     if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                        mCampoValor:=Extenso(valfloat(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                        mCampoValor:=Extenso2(valint(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                        begin
                        try
                           mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                        except
                           end;
                        end
                     else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                        begin
                        try
                        if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                           (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                           mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                        else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                           mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                        else
                           mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor)
                        except
                           end;
                        end;


                     mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;

                     mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);



                     Query_Grade.Next;
                     mcol:=mcol+1;
                     end;
                  mem_grade.Post;
                  Query_soma_Produtos.Next;
                  mPrim:=false;
                  end

               end
            else
               begin
               Query_Produtos.First;
               While not Query_Produtos.Eof do
                  begin

                  mem_grade.append;
                  Query_grade.First;
                  mCol:=0;
                  While not Query_Grade.eof do
                     begin

                     if mcol>mQtdCol-1 then
                        begin
                        Query_Grade.Next;
                        Continue;
                        end;

                     if mprim then
                        mTamcol[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;
                     mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
                     mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mtamcol[mcol];
                     mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
                     mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
                     mMesclar_ColAcum:=0;
                     if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                        begin
                        for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                           begin
                           mMesclar_ColAcum:=mMesclar_ColAcum+mTamCol[x_Mesclar];
                           end;
                        mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                        end;

                     mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
                     mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
                     mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;



                     if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                        mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_Produtos.fieldbyName(
                        Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
                     else
                        mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;


                     if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                        mCampoValor:=Query_Produtos.fieldbyName(Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
                     else
                        mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
                     if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                        mCampoValor:=Extenso(valfloat(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                        mCampoValor:=Extenso2(valint(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                        begin
                        try
                           mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                        except
                           end;
                        end
                     else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                        begin
                        try
                        if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                           (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                           mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                        else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                           mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                        else
                            mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor);
                        except
                           end;
                        end;
                     mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;
                     mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);
                     Query_Grade.Next;
                     mcol:=mcol+1;
                     end;
                  mem_grade.Post;
                  Query_Produtos.Next;
                  mPrim:=false;
                  end;
               end;
            Query_grade_pos.Next;
            end;

         end
      else if Query_DWord01.FieldByName('DW01_TABELA').AsInteger=0 then // licencas
         begin
//licencas

         Query_Soma_Licencas.First;
         Query_Licencas.First;
         While not Query_grade_pos.eof do
            begin
            Query_Grade.Close;
            Query_Grade.SQL.Clear;
            Query_Grade.SQL.Add('select  DW02_CODEMP, '
                                +'  DW02_NOMREL, '
                                +'  DW02_NOMGRADE, '
                                +'  DW02_POSICAO, '
                                +'  DW02_COLUNA, '
                                +'  DW02_TIPOCAMPO, '
                                +'  DW02_CAMPOOUTEXTO, '
                                +'  DW02_TAMANHO, '
                                +'  DW02_ALINHAMENTO, '
                                +'  DW02_FORMATO, '
                                +'  DW02_DATATYPE, '
                                +'  DW02_FUNDO, '
                                +'  DW02_MESCLAR_FIN, '
                                +'  DW02_CORFUNDO, '
                                +'  DW02_CORFONTE, '
                                +'  DW02_TAMANHO_DIG, '
                                +'  DW02_FONTE_TAMANHO '
                                +'  FROM CADDWORD_TAB02 where DW02_CODEMP=:CODEMP '
                                +'  and DW02_NOMREL=:NOMREL '
                                +'  and DW02_NOMGRADE=:NOMGRADE '
                                +'  and DW02_POSICAO=:POSICAO '
                                +'  order by DW02_NOMGRADE,DW02_POSICAO,DW02_COLUNA ');
            Query_Grade.ParamByName('CODEMP').AsInteger  :=codemp;
            Query_Grade.ParamByName('NOMREL').AsString   :=pNomeRel;
            Query_Grade.ParamByName('NOMGRADE').AsString :=Query_Grade_Res.FieldbyName('DW02_NOMGRADE').AsString;
            Query_Grade.ParamByName('POSICAO').AsString  :=Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString;
            Query_Grade.open;
            mCol:=0;

            if (copy(query_grade_pos.FieldByName('DW02_POSICAO').AsString,1,3)='CAB') or
               (copy(Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString,1,3)='ROD') then
               begin
               Query_Soma_Licencas.First;
               While not Query_Soma_Licencas.Eof do
                  begin

                  mem_grade.append;
                  Query_grade.first;

                  While not Query_Grade.eof do
                     begin
                     if mcol>mQtdCol-1 then
                        begin
                        Query_Grade.Next;
                        Continue;
                        end;

                     if mprim then
                        mTamcol[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;

                     mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
                     mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mtamcol[mcol];
                     mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
                     mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
                     mMesclar_ColAcum:=0;
                     if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                        begin
                        for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                           begin
                           mMesclar_ColAcum:=mMesclar_ColAcum+mTamCol[x_Mesclar];
                           end;
                        mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                        end;

                     mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
                     mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
                     mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;
                     if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                        mCampoValor:=Query_Soma_Licencas.fieldbyName(
                         Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
                     else
                        mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
                     if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                        mCampoValor:=Extenso(valfloat(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                        mCampoValor:=Extenso2(valint(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                        begin
                        try
                           mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                        except
                           end;
                        end
                     else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                        begin
                        try
                        if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                           (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                           mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                        else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                           mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                        else
                           mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor)
                        except
                           end;
                        end;


                     mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;

                     mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);



                     Query_Grade.Next;
                     mcol:=mcol+1;
                     end;
                  mem_grade.Post;
                  Query_Soma_Licencas.Next;
                  mPrim:=false;
                  end

               end
            else
               begin
               Query_Licencas.First;
               While not Query_Licencas.Eof do
                  begin
                  mem_grade.append;
                  Query_grade.First;
                  mCol:=0;
                  While not Query_Grade.eof do
                     begin
                     if mcol>mQtdCol-1 then
                        begin
                        Query_Grade.Next;
                        Continue;
                        end;


                     if mprim then
                        mTamcol[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;
                     mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
                     mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mtamcol[mcol];
                     mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
                     mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
                     mMesclar_ColAcum:=0;
                     if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                        begin
                        for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                           begin
                           mMesclar_ColAcum:=mMesclar_ColAcum+mTamCol[x_Mesclar];
                           end;
                        mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                        end;

                     mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
                     mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
                     mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;



                     if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                        mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_Licencas.fieldbyName(
                        Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
                     else
                        mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;


                     if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                        mCampoValor:=Query_Licencas.fieldbyName(Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
                     else
                        mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
                     if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                        mCampoValor:=Extenso(valfloat(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                        mCampoValor:=Extenso2(valint(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                        begin
                        try
                           mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                        except
                           end;
                        end
                     else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                        begin
                        try
                        if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                           (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                           mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                        else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                           mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                        else
                            mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor);
                        except
                           end;
                        end;
                     mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;
                     mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);
                     Query_Grade.Next;
                     mcol:=mcol+1;
                     end;
                  mem_grade.Post;
                  Query_Licencas.Next;
                  mPrim:=false;
                  end;
               end;
            Query_grade_pos.Next;
            end;

// termino licencas

         end
      else
         begin
         Query_Soma_Itens_Contratado.First;
         Query_Itens_Contratado.First;
         While not Query_grade_pos.eof do
            begin
            Query_Grade.Close;
            Query_Grade.SQL.Clear;
            Query_Grade.SQL.Add('select  DW02_CODEMP, '
                                +'  DW02_NOMREL, '
                                +'  DW02_NOMGRADE, '
                                +'  DW02_POSICAO, '
                                +'  DW02_COLUNA, '
                                +'  DW02_TIPOCAMPO, '
                                +'  DW02_CAMPOOUTEXTO, '
                                +'  DW02_TAMANHO, '
                                +'  DW02_ALINHAMENTO, '
                                +'  DW02_FORMATO, '
                                +'  DW02_DATATYPE, '
                                +'  DW02_FUNDO, '
                                +'  DW02_MESCLAR_FIN, '
                                +'  DW02_CORFUNDO, '
                                +'  DW02_CORFONTE, '
                                +'  DW02_TAMANHO_DIG, '
                                +'  DW02_FONTE_TAMANHO '
                                +'  FROM CADDWORD_TAB02 where DW02_CODEMP=:CODEMP '
                                +'  and DW02_NOMREL=:NOMREL '
                                +'  and DW02_NOMGRADE=:NOMGRADE '
                                +'  and DW02_POSICAO=:POSICAO '
                                +'  order by DW02_NOMGRADE,DW02_POSICAO,DW02_COLUNA ');
            Query_Grade.ParamByName('CODEMP').AsInteger  :=codemp;
            Query_Grade.ParamByName('NOMREL').AsString   :=pNomeRel;
            Query_Grade.ParamByName('NOMGRADE').AsString :=Query_Grade_Res.FieldbyName('DW02_NOMGRADE').AsString;
            Query_Grade.ParamByName('POSICAO').AsString  :=Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString;
            Query_Grade.open;
            mCol:=0;

            if (copy(query_grade_pos.FieldByName('DW02_POSICAO').AsString,1,3)='CAB') or
               (copy(Query_Grade_Pos.FieldByName('DW02_POSICAO').AsString,1,3)='ROD') then
               begin
               Query_Soma_Itens_Contratado.First;
               While not Query_Soma_Itens_Contratado.Eof do
                  begin

                  mem_grade.append;
                  Query_grade.first;

                  While not Query_Grade.eof do
                     begin
                     if mcol>mQtdCol-1 then
                        begin
                        Query_Grade.Next;
                        Continue;
                        end;

                     if mprim then
                        mTamcol[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;

                     mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
                     mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mtamcol[mcol];
                     mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
                     mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
                     mMesclar_ColAcum:=0;
                     if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                        begin
                        for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                           begin
                           mMesclar_ColAcum:=mMesclar_ColAcum+mTamCol[x_Mesclar];
                           end;
                        mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                        end;

                     mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
                     mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
                     mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;
                     if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                        mCampoValor:=Query_Soma_Itens_Contratado.fieldbyName(
                         Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
                     else
                        mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
                     if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                        mCampoValor:=Extenso(valfloat(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                        mCampoValor:=Extenso2(valint(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                        begin
                        try
                           mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                        except
                           end;
                        end
                     else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                        begin
                        try
                        if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                           (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                           mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                        else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                           mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                        else
                           mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor)
                        except
                           end;
                        end;


                     mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;

                     mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);



                     Query_Grade.Next;
                     mcol:=mcol+1;
                     end;
                  mem_grade.Post;
                  Query_Soma_Itens_Contratado.Next;
                  mPrim:=false;
                  end

               end
            else
               begin
               Query_Itens_Contratado.First;
               While not Query_Itens_Contratado.Eof do
                  begin
                  mem_grade.append;
                  Query_grade.First;
                  mCol:=0;
                  While not Query_Grade.eof do
                     begin
                     if mcol>mQtdCol-1 then
                        begin
                        Query_Grade.Next;
                        Continue;
                        end;


                     if mprim then
                        mTamcol[mcol]:=Query_Grade.fieldbyName('DW02_TAMANHO').AsInteger;
                     mem_grade.fieldbyName('TIPOCAMPO_'+IntToStr(mcol)).Value:='dados';
                     mem_grade.fieldbyName('TAMCOL_'+IntToStr(mcol)).Value   :=mtamcol[mcol];
                     mem_grade.fieldbyName('COLUNA_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_COLUNA').AsInteger;
                     mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_MESCLAR_FIN').AsInteger;
                     mMesclar_ColAcum:=0;
                     if mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).Value>0 then
                        begin
                        for x_mesclar:=mCol to mem_grade.fieldbyName('MESCLAR_ATE_'+IntToStr(mcol)).AsInteger do
                           begin
                           mMesclar_ColAcum:=mMesclar_ColAcum+mTamCol[x_Mesclar];
                           end;
                        mem_grade.fieldbyName('MESCLAR_ATE_TAMGER_'+IntToStr(mcol)).Value   :=mMesClar_ColAcum;
                        end;

                     mem_grade.fieldbyName('COR_FONTE_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFONTE').AsString;
                     mem_grade.fieldbyName('COR_FUNDO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CORFUNDO').AsString;
                     mem_grade.fieldbyName('ALINHAMENTO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_ALINHAMENTO').AsInteger;



                     if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                        mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_Itens_Contratado.fieldbyName(
                        Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
                     else
                        mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;


                     if Query_Grade.fieldbyName('DW02_TIPOCAMPO').Asinteger=1 then
                        mCampoValor:=Query_Itens_Contratado.fieldbyName(Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString).AsString
                     else
                        mCampoValor:=Query_Grade.fieldbyName('DW02_CAMPOOUTEXTO').AsString;
                     if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_reais' then
                        mCampoValor:=Extenso(valfloat(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_numero' then
                        mCampoValor:=Extenso2(valint(mCampoValor))
                     else if Query_Grade.fieldbyName('DW02_FORMATO').AsString='extenso_data' then
                        begin
                        try
                           mCampoValor:=Data(StrToDateTime(mCampoValor),0)
                        except
                           end;
                        end
                     else if trim(Query_Grade.fieldbyName('DW02_FORMATO').AsString)<>'' then
                        begin
                        try
                        if (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger>=2) and
                           (Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger<=5) then // data
                           mCampoValor:=FormatDateTime(Query_Grade.fieldbyName('DW02_FORMATO').AsString, StrToDateTime(mCampoValor))
                        else if Query_Grade.fieldbyName('DW02_DATATYPE').AsInteger=1 then //   rvalor
                           mCampoValor:=FormatFloat(Query_Grade.fieldbyName('DW02_FORMATO').AsString, valfloat(mCampoValor))
                        else
                            mCampoValor:=FormatMaskText(pchar(Query_Grade.fieldbyName('DW02_FORMATO').AsString), mCampoValor);
                        except
                           end;
                        end;
                     mem_grade.fieldbyName('FONTE_TAMANHO_'+IntToStr(mcol)).Value   :=Query_Grade.fieldbyName('DW02_FONTE_TAMANHO').AsInteger;
                     mem_grade.fieldbyName('VALOR_CAMPO_'+IntToStr(mcol)).Value     :=AnsiToAscii(mCampoValor);
                     Query_Grade.Next;
                     mcol:=mcol+1;
                     end;
                  mem_grade.Post;
                  Query_Itens_Contratado.Next;
                  mPrim:=false;
                  end;
               end;
            Query_grade_pos.Next;
            end;
         end;
      mTextoSaida.Clear;
      if fGerarTextoGrade(mem_grade, mTextoSaida) then
         begin
         findtext   :='<w:t>%'+Query_Grade_pos.fieldbyname('DW02_NOMGRADE').asstring+'%</w:t>';
         mTextoSaida.Savetofile('c:\lll001_normal.txt');
         replacetext:=mTextoSaida.Text;


         If Pos(uppercase(findText), uppercase(RE_relatorio.Lines.Text)) > 0 Then
            Begin
            RE_relatorio.SelStart := Pos(uppercase(FindText), uppercase(RE_relatorio.Lines.text)) - 1;
            RE_relatorio.SelLength := Length(FindText);
            RE_relatorio.SelText := ReplaceText;
            end;
         end;

      Query_Grade_Res.Next;
      end;

   //ShowMessage('Quantidade de registros: '+IntToStr(mem_grade.RecordCount));

   freeandnil(query_grade_res);
   freeandnil(query_grade);
   freeandnil(mTextoSaida);
   end;
freeandnil(query_cont);
freeandnil(query_serv);

result:=true;
pArquivoSaida:=mnomearq;
deletefile(mnomearq);
RE_relatorio.Lines.SaveToFile(mnomearq);


end;


function  TFrm_Contrato.fGerarTextoGrade(pTabela: trxMemoryData;pTextoSaida: tStringList): Boolean;
var
mQtdColunas: Integer;
mTamGrade: string;
x_col: Integer;
mTexto: string;
mMesclar_Ate: Integer;
mMesclar_Ate_inicio: Integer;
mTamColGeral: Integer;
mCorFundo: String;
mAlinhamento_form: string;
mCorFonte: String;
mTamFonte: String;
const
m_00D7076B = '00D7076B';
m_00D7076B_alt = '#FFE4C4';
m_001A104A = '00942C43';
m_001A104A_alt = '#FFE4C4';
m_004D1B74 = '004D1B74';
m_004D1B74_alt = '#FFE4C4';
mQtdCpoColuna =10;

begin
pTextoSaida.Clear;
if pTabela.IsEmpty then
   begin
   result:=false;
   exit;
   end;
result:=true;

pTextoSaida.Add(' <w:tbl>');
pTextoSaida.Add(' <w:tblPr> ');
pTextoSaida.Add(' <w:tblW w:w="0" w:type="auto"/> ');

pTextoSaida.Add(' <w:tblBorders> ');
pTextoSaida.Add(' <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' </w:tblBorders> ');

pTextoSaida.Add(' <w:tblLook w:val="04A0"/> ');
pTextoSaida.Add(' </w:tblPr> ');



pTabela.First;
mQtdColunas:=pTabela.Fields.Count div mQtdCpoColuna;

mMesclar_Ate       :=0;
mMesclar_Ate_inicio:=0;

While not pTabela.Eof do
   begin
   pTextoSaida.Add(' <w:tr wsp:rsidR="'+m_00D7076B_alt+'" wsp:rsidTr="'+m_00D7076B_alt+'"> ');
   mTexto:='';

   for x_col:=0 to mQtdColunas-1 do
      begin
      if mMesclar_Ate=0 then
         begin
         mMesclar_Ate       :=valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_MESCLAR_ATE].Asstring);
         if mMesclar_Ate>0 then
            begin
            mMesclar_Ate_inicio:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOLUNA].AsInteger;
            mTamColGeral:=valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_MESCLAR_ATE_TAMGER].AsString);
            mCorFundo:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FUNDO].AsString ;
            mTamGrade:=IntTostr (pTabela.Fields[(x_col*mQtdCpoColuna)+1].AsInteger*100);
            mAlinhamento_form:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_ALINHAMENTO].AsString;
            mTamFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_TAMANHO].AsString;
            mCorFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FONTE].AsString;
            end
         else
            begin
            mCorFundo:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FUNDO].AsString ;
            mTamGrade:=IntTostr (pTabela.Fields[(x_col*mQtdCpoColuna)+1].AsInteger*100);
            mAlinhamento_form:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_ALINHAMENTO].AsString;
            mTamFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_TAMANHO].AsString;
            mCorFonte:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FONTE].AsString;
            end;
         end;


      if mTexto<>'' then
         mTexto:=mTexto+' ';
      mTexto   := mTexto +  pTabela.Fields[(x_col*mQtdCpoColuna)+mVALOR_CAMPO].AsString;
      if (mMesclar_Ate=0) or (mMesclar_Ate=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOLUNA].AsInteger) then
         begin
          mTexto:=AnsiToAscii(mTexto);
          if (mMesclar_Ate=0) then
             pTextoSaida.Add(' <w:tc> ')
          else
             begin
             pTextoSaida.Add(' <w:tc> ');
             pTextoSaida.Add('<w:tcPr> ');
             pTextoSaida.Add('<w:tcW w:w="'+IntToStr(mTamColGeral*100)+'" w:type="dxa"/> ');
             pTextoSaida.Add('<w:gridSpan w:val="'+InttoStr((mMesclar_Ate-mMesclar_Ate_inicio)+1)+'"/> ');
             pTextoSaida.Add('</w:tcPr> ');
             end;

         pTextoSaida.Add(' <w:tcPr> ');
         pTextoSaida.Add(' <w:tcW w:w="'+mTamGrade+'" w:type="dxa"/> ');
         if trim(mCorFundo)<>'' then
            begin
            pTextoSaida.Add('<w:shd w:val="clear" w:color="auto" w:fill="'
                          +IntToHex( valint(mCorFundo),6)
                          +'"/> '); // corfundo
            end;
         pTextoSaida.Add(' </w:tcPr> ');
         pTextoSaida.Add(' <w:p wsp:rsidR="'+m_00D7076B+'" wsp:rsidRDefault="'+m_001A104A_alt+'" wsp:rsidP="'+m_00D7076B_alt+'">');
         pTextoSaida.Add(' <w:proofErr w:type="spellStart"/> ');
         if valint(mAlinhamento_form)=1 then
             pTextoSaida.Add(' <w:pPr> <w:jc w:val="center"/>  </w:pPr> ')
          else if valint(mAlinhamento_form)=2 then
             pTextoSaida.Add(' <w:pPr> <w:jc w:val="right"/>  </w:pPr> ');

         pTextoSaida.Add(' <w:r> ');

         if valint(mTamFonte)<>0 then
            begin
            pTextoSaida.Add('<w:rPr><w:sz w:val="'
            +IntTostr(valint(mTamFonte) *2)
            +'"/><w:szCs w:val="'
            +IntTostr(valint(mTamFonte) *2)
            +'"/></w:rPr> ');
            end;


        // VERMELHO FONTE
         if trim(mCorFonte)<>'' then
            pTextoSaida.Add(' <w:rPr><w:color w:val="'
                  +IntToHex( valint(mCorFonte),6)
                   +'"/></w:rPr> ');




        // VERMELHO FONTE
          pTextoSaida.Add(' <w:t>'+mTexto+'</w:t>');
          pTextoSaida.Add(' </w:r> ');
          pTextoSaida.Add(' <w:proofErr w:type="spellEnd"/> ');
          pTextoSaida.Add(' <w:r wsp:rsidR="'+m_004D1B74_alt+'"> ');
          pTextoSaida.Add(' </w:r> ');
          pTextoSaida.Add(' </w:p> ');
    //     end;

          pTextoSaida.Add(' </w:tc> ');
          mMesclar_Ate       :=0;
          mMesclar_Ate_inicio:=0;
          mTexto:='';
          end;
       end;
   pTextoSaida.Add(' </w:tr> '); // <w:tr wsp:rsidR="'+m_004D1B74+'" wsp:rsidTr="'+m_004D1B74+'">');

   pTabela.Next;
   end;

pTextoSaida.Add(' </w:tbl> ');


result:=true;

end;




{ mesclando com mesclagem normal
function  TFrm_Contrato.fGerarTextoGrade(pTabela: trxMemoryData;pTextoSaida: tStringList): Boolean;
var
mQtdColunas: Integer;
mTamGrade: string;
x_col: Integer;
mTexto: string;
mMesclar_Ate: Integer;
mMesclar_Ate_inicio: Integer;

const
m_00D7076B = '00D7076B';
m_00D7076B_alt = '#FFE4C4';
m_001A104A = '00942C43';
m_001A104A_alt = '#FFE4C4';
m_004D1B74 = '004D1B74';
m_004D1B74_alt = '#FFE4C4';
mQtdCpoColuna =10;

begin
pTextoSaida.Clear;
if pTabela.IsEmpty then
   begin
   result:=false;
   exit;
   end;
result:=true;

pTextoSaida.Add(' <w:tbl>');
pTextoSaida.Add(' <w:tblPr> ');
pTextoSaida.Add(' <w:tblW w:w="0" w:type="auto"/> ');

pTextoSaida.Add(' <w:tblBorders> ');
pTextoSaida.Add(' <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' <w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="000000"/> ');
pTextoSaida.Add(' </w:tblBorders> ');

pTextoSaida.Add(' <w:tblLook w:val="04A0"/> ');
pTextoSaida.Add(' </w:tblPr> ');



pTabela.First;
mQtdColunas:=pTabela.Fields.Count div mQtdCpoColuna;

mMesclar_Ate       :=0;
mMesclar_Ate_inicio:=0;

While not pTabela.Eof do
   begin
   pTextoSaida.Add(' <w:tr wsp:rsidR="'+m_00D7076B_alt+'" wsp:rsidTr="'+m_00D7076B_alt+'"> ');


   for x_col:=0 to mQtdColunas-1 do
      begin
      if mMesclar_Ate=0 then
         begin
         mMesclar_Ate       :=valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_MESCLAR_ATE].Asstring);
         if mMesclar_Ate>0 then
            mMesclar_Ate_inicio:=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOLUNA].AsInteger;
         end;


      mTamGrade:=IntTostr (pTabela.Fields[(x_col*mQtdCpoColuna)+1].AsInteger*100);
      mTexto   := pTabela.Fields[(x_col*mQtdCpoColuna)+mVALOR_CAMPO].AsString;

      mTexto:=AnsiToAscii(mTexto);
      if (mMesclar_Ate=0) then
         pTextoSaida.Add(' <w:tc> ')
      else if (mMesclar_Ate_inicio=pTabela.Fields[(x_col*mQtdCpoColuna)+mColuna].AsInteger) then
         begin
         pTextoSaida.Add(' <w:tc> ');
         pTextoSaida.Add('<w:tcPr> ');
         pTextoSaida.Add('<w:tcW w:w="'+IntToStr(valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_MESCLAR_ATE_TAMGER].AsString)*100)+'" w:type="dxa"/> ');
         pTextoSaida.Add('<w:gridSpan w:val="'+InttoStr((mMesclar_Ate-mMesclar_Ate_inicio)+1)+'"/> ');
         pTextoSaida.Add('</w:tcPr> ');
         end;
//      parei aqui
         pTextoSaida.Add(' <w:tcPr> ');
         pTextoSaida.Add(' <w:tcW w:w="'+mTamGrade+'" w:type="dxa"/> ');
         if trim(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FUNDO].AsString)<>'' then
            begin
            pTextoSaida.Add('<w:shd w:val="clear" w:color="auto" w:fill="'
                          +IntToHex( valint(pTabela.Fields[(x_col*mQtdCpoColuna)+ mCOR_FUNDO].AsString),6)
                          +'"/> '); // corfundo
            end;
         pTextoSaida.Add(' </w:tcPr> ');
         pTextoSaida.Add(' <w:p wsp:rsidR="'+m_00D7076B+'" wsp:rsidRDefault="'+m_001A104A_alt+'" wsp:rsidP="'+m_00D7076B_alt+'">');
         pTextoSaida.Add(' <w:proofErr w:type="spellStart"/> ');
         if valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_ALINHAMENTO].AsString)=1 then
             pTextoSaida.Add(' <w:pPr> <w:jc w:val="center"/>  </w:pPr> ')
          else if valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_ALINHAMENTO].AsString)=2 then
             pTextoSaida.Add(' <w:pPr> <w:jc w:val="right"/>  </w:pPr> ');

         pTextoSaida.Add(' <w:r> ');

         if valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_TAMANHO].AsString)<>0 then
            begin
            pTextoSaida.Add('<w:rPr><w:sz w:val="'
            +IntTostr(valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_TAMANHO].AsString) *2)
            +'"/><w:szCs w:val="'
            +IntTostr(valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOL_FONTE_TAMANHO].AsString) *2)
            +'"/></w:rPr> ');
            end;


    // VERMELHO FONTE
         if trim(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FONTE].AsString)<>'' then
            pTextoSaida.Add(' <w:rPr><w:color w:val="'
                  +IntToHex( valint(pTabela.Fields[(x_col*mQtdCpoColuna)+mCOR_FONTE].AsString),6)
                   +'"/></w:rPr> ');




    // VERMELHO FONTE
         pTextoSaida.Add(' <w:t>'+mTexto+'</w:t>');
         pTextoSaida.Add(' </w:r> ');
         pTextoSaida.Add(' <w:proofErr w:type="spellEnd"/> ');
         pTextoSaida.Add(' <w:r wsp:rsidR="'+m_004D1B74_alt+'"> ');
         pTextoSaida.Add(' </w:r> ');
         pTextoSaida.Add(' </w:p> ');
//         end;

      if (mMesclar_Ate=0) or (mMesclar_Ate=pTabela.Fields[(x_col*mQtdCpoColuna)+mCOLUNA].AsInteger) then
         begin
         pTextoSaida.Add(' </w:tc> ');
         mMesclar_Ate       :=0;
         mMesclar_Ate_inicio:=0;
         end;
      end;
   pTextoSaida.Add(' </w:tr> '); // <w:tr wsp:rsidR="'+m_004D1B74+'" wsp:rsidTr="'+m_004D1B74+'">');
   pTabela.Next;
   end;

pTextoSaida.Add(' </w:tbl> ');


result:=true;

end;
termino da mesclagem
}


procedure TFrm_Contrato.DBE_CS_REPLEGAL_CPFExit(Sender: TObject);
begin
  inherited;
if not FCPF(FORMATFLOAT('00000000000',fSonumero(Tb_CSer01CS_REPLEGAL_CPF.Asstring))) then
   begin
   Messagedlg('Não é um cpf valido!',mtWarning,[mbOk],0);
   DBE_CS_REPLEGAL_CPF.SetFocus;
   end
else
   Tb_CSer01CS_REPLEGAL_CPF.Asstring:=MaskCPFCNPJ(Tb_CSer01CS_REPLEGAL_CPF.AsString)

end;

procedure TFrm_Contrato.DBRG_CS_TIPOClick(Sender: TObject);
begin
  inherited;
Tb_CSer01CalcFields(Tb_CSer01);
end;

procedure TFrm_Contrato.bbImpPropostaClick(Sender: TObject);
var
mNomeArq: String;
mNomeDoc_doc: OleVariant;
mNomeRel: string;

begin
  inherited;
bbImpProposta.Enabled:=false;
bbImprimir.Enabled   :=false;
mNomeRel:='PROPOSTAPSERVICO';
if Frm_Contrato.fPreparaRelatorio(mNomeRel,Tb_CSer01CS_CODCLI.AsInteger,Tb_CSer01CS_CHAVE.AsInteger,mNomeArq,false) then
   begin
   WordApp:=TWordApplication.Create(Application.Owner);
       { Faz com que o Word seja aberto e visivel ao usuário }
   WordApp.Visible:=True;
       { Adiciona um novo documento ao Word }
   WordDoc:=TWordDocument.Create(Application.Owner);
       { Local do documento de Origem }
   { Abre o documento de Origem no Word }
   mNomeDoc_doc:=mNomeArq;
   try
      WordDoc.ConnectTo(WordApp.Documents.Add(mNomeDoc_doc,EmptyParam,EmptyParam,EmptyParam));
   except on e : exception do
      MessageDlg('Erro ao Abrir Relatorio '+e.Message,mtWarning,[mbOk],0);
      end;
{
   WordDoc.Close;
   WordDoc.Disconnect;
   WordApp.Disconnect;
   WordApp.Quit;
|\}
   end;
bbImprimir.Enabled:=true;
bbImpProposta.Enabled:=true;


end;

procedure TFrm_Contrato.bbConfPropostaClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_ConfigGrade, Frm_ConfigGrade);
Frm_ConfigGrade.mNomeRel:='PROPOSTAPSERVICO';

Frm_ConfigGrade.panel_cab.Caption:='Proposta de Prestação de Serviço';
Frm_ConfigGrade.showModal;
Freeandnil(Frm_ConfigGrade);

end;

procedure TFrm_Contrato.sbn_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

qr_cont_imagem: TQuery;
mChave: Integer;

begin
  inherited;
Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin
   imagestream:=TMemoryStream.Create;
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      begin
      with TJPEGImage.Create do
          begin
          Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
          SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
          Free;
          end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;


   qr_cont_imagem:=TQuery.create(Nil);
   qr_cont_imagem.databaseName:='SG_ASSOC';
   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Select max(CSI_SEQ) as cod from CADCSER01_IMAGEM '
                    +' where CSI_CODEMP=:CODEMP '
                    +' and CSI_CODCLI=:CODCLI '
                    +' and CSI_CHAVE=:CHAVE ');
   qr_cont_imagem.ParamByName('CODEMP').AsFloat     :=Tb_CSer01CS_CODEMP.AsFloat;
   qr_cont_imagem.ParamByName('CODCLI').AsFloat     :=Tb_CSer01CS_CODCLI.AsFloat;
   qr_cont_imagem.ParamByName('CHAVE').Asfloat      :=Tb_CSer01CS_CHAVE.AsFloat;
   qr_cont_imagem.open;
   mChave:=qr_cont_imagem.fieldbyName('cod').AsInteger+1;


   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Insert into CADCSER01_IMAGEM ( '
                    +' CSI_CODEMP '
                    +',CSI_CODCLI '
                    +',CSI_CHAVE  '
                    +',CSI_SEQ    '
                    +',CSI_OBS    '
                    +',CSI_IMAGEM '
                    +',CSI_NOMEORI '
                    +') values ('
                    +' :CSI_CODEMP '
                    +',:CSI_CODCLI '
                    +',:CSI_CHAVE  '
                    +',:CSI_SEQ    '
                    +',:CSI_OBS    '
                    +',:CSI_IMAGEM '
                    +',:CSI_NOMEORI '
                    +')');

   qr_cont_imagem.ParamByName('CSI_CODEMP').AsInteger   :=Tb_CSer01CS_CODEMP.AsInteger;
   qr_cont_imagem.ParamByName('CSI_CODCLI').AsFloat     :=Tb_CSer01CS_CODCLI.AsFloat;
   qr_cont_imagem.ParamByName('CSI_CHAVE').AsFloat      :=Tb_CSer01CS_CHAVE.AsFloat;
   qr_cont_imagem.ParamByName('CSI_SEQ').AsInteger      :=mChave;
   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      qr_cont_imagem.ParamByName('CSI_OBS').AsString    :='IMAGEM: '+IntToStr(mChave)
   else
      qr_cont_imagem.ParamByName('CSI_OBS').AsString    :=frm_Imagem_WebCam.edt_obs.Text;

   qr_cont_imagem.ParamByName('CSI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   qr_cont_imagem.ParamByName('CSI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);

   try
      qr_cont_imagem.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(qr_cont_imagem,2096,'frm_contrato','CADCSER01_IMAGEM');
      end;
   FreeAndNil(qr_cont_imagem);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
mcodcli_src:=-1;
mchave_src :=-1;

Src_CSer01DataChange(Tb_CSer01,Tb_CSer01CS_CODEMP);


end;

procedure TFrm_Contrato.sbn_alterarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

query_ldr: TQuery;

begin
  inherited;
if (Tb_CSer01_imagem.IsEmpty) or (Tb_CSer01_imagemCSI_CODEMP.IsNull) then
   begin
   MessageDlg('Nao ha registros a serem alterados!',mtWarning,[mbOk],0);
   exit;
   end;

Application.CreateForm(tfrm_Imagem_WebCam, Frm_Imagem_WebCam);
Frm_Imagem_WebCam.ShowModal;
if frm_Imagem_WebCam.mAceitouImagem then
   begin
   imagestream:=TMemoryStream.Create;
   if fEImagem(frm_Imagem_WebCam.mNomeArquivo) then
      begin
      with TJPEGImage.Create do
          begin
          Assign(frm_Imagem_WebCam.Image1.Picture.Graphic);
          SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
          Free;
          end;
      end
   else
      begin
      imagestream.LoadFromFile(frm_Imagem_WebCam.mNomeArquivo);
      end;

   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';

   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADCSER01_IMAGEM set '
                    +' CSI_OBS=:CSI_OBS '
                    +',CSI_IMAGEM=:CSI_IMAGEM '
                    +',CSI_NOMEORI=:CSI_NOMEORI '
                    +' where '
                    +' CSI_CODEMP=:CSI_CODEMP '
                    +' and CSI_CODCLI=:CSI_CODCLI'
                    +' and CSI_CHAVE=:CSI_CHAVE'
                    +' and CSI_SEQ=:CSI_SEQ'
                    );

   query_ldr.ParamByName('CSI_CODEMP').AsInteger   :=Tb_CSer01CS_CODEMP.AsInteger;
   query_ldr.ParamByName('CSI_CODCLI').AsFloat     :=Tb_CSer01CS_CODCLI.AsFloat;
   query_ldr.ParamByName('CSI_CHAVE').AsFloat      :=Tb_CSer01CS_CHAVE.AsFloat;
   query_ldr.ParamByName('CSI_SEQ').AsInteger      :=Tb_CSer01_imagemCSI_SEQ.AsInteger;



   if (trim(frm_Imagem_WebCam.edt_obs.Text)<>'') then
      query_ldr.ParamByName('CSI_OBS').AsString:=trim(frm_Imagem_WebCam.edt_obs.Text)
   else if (trim(Tb_CSer01_imagemCSI_OBS.AsString)='') then
      query_ldr.ParamByName('CSI_OBS').AsString    :='IMAGEM: '+Tb_CSer01_imagemCSI_OBS.AsString
   else
      query_ldr.ParamByName('CSI_OBS').AsString    :=Tb_CSer01_imagemCSI_OBS.AsString;




   query_ldr.ParamByName('CSI_NOMEORI').AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mnomearquivo);
   query_ldr.ParamByName('CSI_IMAGEM').LoadFromStream(imagestream, ftBlob);
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2172,'frm_contrato','CADCSER01_IMAGEM');
      end;
   FreeAndNil(query_ldr);
   FreeAndNil(imagestream);
   if feImagem(frm_Imagem_WebCam.mNomeArquivo) then
      FreeAndNil(jpg);

   end;
freeandnil(frm_imagem_WebCam);
mcodcli_src:=-1;
mchave_src :=-1;

Src_CSer01DataChange(Tb_CSer01,Tb_CSer01CS_CODEMP);



end;

procedure TFrm_Contrato.sbn_excluirClick(Sender: TObject);
var
query_ldr: TQuery;

begin
  inherited;

if (Tb_CSer01_imagem.IsEmpty) or (Tb_CSer01_imagemCSI_CODCLI.IsNull) then
   begin
   MessageDlg('Nao ha registros a serem excluidos!',mtWarning,[mbOk],0);
   exit;
   end;
if Application.MessageBox(pchar( 'Quer Realmente excluir o registro '+Tb_CSer01_imagemCSI_OBS.asstring),'confirmacao',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
query_ldr:=TQuery.create(Nil);
query_ldr.databaseName:='SG_ASSOC';
query_ldr.Close;
query_ldr.SQL.Clear;
query_ldr.SQL.Add('Delete  from CADCSER01_IMAGEM '
                 +' where CSI_CODEMP=:CODEMP '
                 +' and CSI_CODCLI  =:CODCLI '
                 +' and CSI_CHAVE   =:CHAVE '
                 +' and CSI_SEQ=:SEQ ');
query_ldr.ParamByName('CODEMP').AsInteger   :=Tb_CSer01CS_CODEMP.AsInteger;
query_ldr.ParamByName('CODCLI').AsFloat    :=Tb_CSer01CS_CODCLI.AsFloat;
query_ldr.ParamByName('CHAVE').AsFloat     :=Tb_CSer01CS_CHAVE.AsFloat;
query_ldr.ParamByName('SEQ').AsInteger     :=Tb_CSer01_imagemCSI_SEQ.AsInteger;
try
   query_ldr.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(Query_ldr,2219,'frm_contrato','CADCSER01_IMAGEM');
   end;
FreeAndNil(query_ldr);
mcodcli_src:=-1;
mchave_src :=-1;

Src_CSer01DataChange(Tb_CSer01,Tb_CSer01CS_CODEMP);


end;

procedure TFrm_Contrato.DBGrid3DblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
mnomearq: string;
begin
  inherited;



if not Tb_CSer01_imagemCSI_IMAGEM.IsNull then
   begin
   imagestream:=TMemoryStream.Create;
   Tb_CSer01_imagemCSI_IMAGEM.SaveToStream(imagestream);
   imagestream.Position := 0;


   if trim(Tb_CSer01_imagemCSI_NOMEORI.AsString)='' then
      mnomearq:='temp001.jpg'
   else
      mnomearq:=Tb_CSer01_imagemCSI_NOMEORI.AsString;
   imagestream.SaveToFile(mcamtmp+'\'+mnomearq);
   fExecutarArquivo(mcamtmp+'\'+mnomearq);
   fAdicionarTempDel(mcamtmp+'\'+mnomearq);
   freeandnil(imagestream);
   end;



end;

function TFrm_Contrato.fAtualizarValores: Boolean;
begin
if  ant_PercIndex<>qr_cserv01_servCSS_PERCINDEX.AsFloat then
    begin
    if (qr_cserv01_servVALOR_INDEX.AsFloat=0) or  (qr_cserv01_servCSS_PERCINDEX.AsFloat=0) then
       begin
       qr_cserv01_servINT_VALORCONT.AsFloat:=0;
       end
    else
       begin
       qr_cserv01_servINT_VALORCONT.AsFloat:=Arredonda( ((qr_cserv01_servVALOR_INDEX.AsFloat*qr_cserv01_servCSS_PERCINDEX.AsFloat)/100),2);
       qr_cserv01_servINT_VALORCONT_DESCFIN.AsFloat:=Arredonda( ((qr_cserv01_servINT_VALORCONT.AsFloat*qr_cserv01_servCSS_PDESCFIN.AsFloat)/100) ,2);
       end
    end
else if ant_PDescFin<>qr_cserv01_servCSS_PDESCFIN.AsFloat then
    begin
    if (qr_cserv01_servINT_VALORCONT.AsFloat=0) then
       qr_cserv01_servINT_VALORCONT_DESCFIN.AsFloat:=0
    else
       qr_cserv01_servINT_VALORCONT_DESCFIN.AsFloat:=Arredonda( ((qr_cserv01_servINT_VALORCONT.AsFloat*qr_cserv01_servCSS_PDESCFIN.AsFloat)/100) ,2);
    end
else if  int_ant_ValorCont<>qr_cserv01_servINT_VALORCONT.AsFloat then
    begin
    if (qr_cserv01_servVALOR_INDEX.AsFloat=0) or (qr_cserv01_servINT_VALORCONT.AsFloat=0) then
       qr_cserv01_servCSS_PERCINDEX.AsFloat:=0
    else
       qr_cserv01_servCSS_PERCINDEX.AsFloat:=(qr_cserv01_servINT_VALORCONT.AsFloat*100)/qr_cserv01_servVALOR_INDEX.AsFloat;
    end
else if int_ant_ValorCont_DescFin<>qr_cserv01_servINT_VALORCONT_DESCFIN.AsFloat then
    begin
    if (qr_cserv01_servINT_VALORCONT.AsFloat=0) then
       qr_cserv01_servINT_VALORCONT_DESCFIN.AsFloat:=0
    else
       begin
       qr_cserv01_servCSS_PDESCFIN.AsFloat:=Arredonda( ((qr_cserv01_servINT_VALORCONT_DESCFIN.AsFloat*100)/qr_cserv01_servINT_VALORCONT.AsFloat),2);
       end;
    end;
qr_cserv01_servINT_VALORCONT_LIQUIDO.AsFloat:=qr_cserv01_servINT_VALORCONT.AsFloat-qr_cserv01_servINT_VALORCONT_DESCFIN.AsFloat;

int_ant_ValorCont_DescFin:=qr_cserv01_servINT_VALORCONT_DESCFIN.AsFloat;
int_ant_ValorCont        :=qr_cserv01_servINT_VALORCONT.AsFloat;
ant_PDescFin             :=qr_cserv01_servCSS_PDESCFIN.AsFloat;
ant_PercIndex            :=qr_cserv01_servCSS_PERCINDEX.AsFloat;

result:=true;
end;
procedure TFrm_Contrato.DBE_CS_CODSERKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%')) then
   begin
   Tb_CSer01CS_CODSER.AsFloat:=fSonumero(fChamaPesqPro(0,'_venda',key));
   key:=#0;
   if (Tb_CSer01CS_CODSER.AsFloat>0) then
      begin
      DBE_CS_CODSERexit(self);
      end;

   end

end;

procedure TFrm_Contrato.DBE_CS_CODSERExit(Sender: TObject);
begin
  inherited;
if Tb_CSer01CS_CODSER.AsFloat=0 then
   Tb_CSer01PDNOME.AsString:=''
else if DM1.Tb_Pro2PDCODPRO.AsFloat<>Tb_CSer01CS_CODSER.AsFloat then
   begin
   if flcadpro(1,1,codemp,Tb_CSer01CS_CODSER.AsString) then
      begin
      Tb_CSer01CS_CODSER.AsFloat:=DM1.Tb_ProPDCODPRO.AsFloat;
      Tb_CSer01PDNOME.AsString    :=DM1.Tb_ProPDNOME.AsString;
      end
   else
      begin
      Tb_CSer01CS_CODSER.AsFloat  :=0;
      Tb_CSer01PDNOME.AsString    :='';
      end;
   end;   

end;

procedure TFrm_Contrato.DBGrid_cserv01_servExit(Sender: TObject);
begin
  inherited;
if qr_cserv01_serv.State in [dsedit,dsinsert] then
   qr_cserv01_serv.Post;
end;

procedure TFrm_Contrato.sbnRenomearClick(Sender: TObject);
var
query_ldr: TQuery;
mNovoNome:String;
begin
  inherited;


if (Tb_CSer01_imagem.IsEmpty) or (Tb_CSer01_imagemCSI_CODEMP.IsNull) then
   begin
   MessageDlg('Nao ha registros a serem alterados!',mtWarning,[mbOk],0);
   exit;
   end;

mNovoNome:=InputBox('Nome Anterior '+Tb_CSer01_imagemCSI_OBS.AsString , 'Informe o Novo Nome','');
if (trim(mNovoNome)<>'') and (mNovoNome<>Tb_CSer01_imagemCSI_OBS.AsString) then
   begin
   query_ldr:=TQuery.create(Nil);
   query_ldr.databaseName:='SG_ASSOC';
   query_ldr.Close;
   query_ldr.SQL.Clear;
   query_ldr.SQL.Add('Update CADCSER01_IMAGEM set '
                    +' CSI_OBS=:CSI_OBS '
                    +' where '
                    +' CSI_CODEMP=:CSI_CODEMP '
                    +' and CSI_CODCLI=:CSI_CODCLI'
                    +' and CSI_CHAVE=:CSI_CHAVE'
                    +' and CSI_SEQ=:CSI_SEQ'
                    );

   query_ldr.ParamByName('CSI_CODEMP').AsInteger   :=Tb_CSer01CS_CODEMP.AsInteger;
   query_ldr.ParamByName('CSI_CODCLI').AsFloat     :=Tb_CSer01CS_CODCLI.AsFloat;
   query_ldr.ParamByName('CSI_CHAVE').AsFloat      :=Tb_CSer01CS_CHAVE.AsFloat;
   query_ldr.ParamByName('CSI_SEQ').AsInteger      :=Tb_CSer01_imagemCSI_SEQ.AsInteger;

   query_ldr.ParamByName('CSI_OBS').AsString       :=mNovoNome;
   try
      query_ldr.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(Query_ldr,2538,'frm_contrato','CADCSER01_IMAGEM');
      end;
   FreeAndNil(query_ldr);

   end;
mcodcli_src:=-1;
mchave_src :=-1;

Src_CSer01DataChange(Tb_CSer01,Tb_CSer01CS_CODEMP);

end;

procedure TFrm_Contrato.qr_cserv01_MercAfterInsert(DataSet: TDataSet);
var
query_temp: tQuery;
begin
  inherited;
qr_cserv01_MercCSM_CODEMP.Value:=codemp;
qr_cserv01_MercCSM_CHAVE.Value :=Tb_CSer01CS_CHAVE.AsFloat;
qr_cserv01_MercCSM_CODEMP.Value:=Tb_CSer01CS_CODEMP.AsFloat;
qr_cserv01_MercCSM_CODCLI.Value:=Tb_CSer01CS_CODCLI.AsFloat;

query_temp:=tQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.SQL.Clear;
query_temp.SQL.Add('select max(CSM_ORDEM) from CADCSER01_MERC '
                  +' where CSM_CODEMP=:CODEMP '
                  +' and CSM_CHAVE=:CHAVE ');
query_temp.ParamByName('CODEMP').Value:=codemp;

if (mchave_ant=0) then
   begin
   query_temp.SQL.Add(' and CSM_CHAVE=:CHAVE ');
   query_temp.ParamByName('CHAVE').Value :=Tb_CSer01CS_CHAVE.AsFloat;

   end
else
   begin
   query_temp.SQL.Add(' and (CSM_CHAVE=:CHAVE or CSM_CHAVE=:CHAVE_ANT)');
   query_temp.ParamByName('CHAVE').Value     :=Tb_CSer01CS_CHAVE.AsFloat;
   query_temp.ParamByName('CHAVE_ANT').Value :=mchave_ant;
   end;

if (mcodcli_ant=0) then
   begin
   query_temp.SQL.Add(' and CSM_CODCLI=:CODCLI ');
   query_temp.ParamByName('CODCLI').Value :=Tb_CSer01CS_CODCLI.AsFloat;

   end
else
   begin
   query_temp.SQL.Add(' and (CSM_CODCLI=:CODCLI or CSM_CODCLI=:CODCLI_ANT)');
   query_temp.ParamByName('CODCLI').Value     :=Tb_CSer01CS_CODCLI.AsFloat;
   query_temp.ParamByName('CODCLI_ANT').Value :=mcodcli_ant;
   end;
query_temp.open;
qr_cserv01_MercCSM_ORDEM.Value  :=query_temp.fields[0].AsInteger+1;


freeandnil(query_temp);

mOper_cs_Merc:=0;
mCodPro_Ant:=0;



end;

procedure TFrm_Contrato.qr_cserv01_MercBeforeDelete(DataSet: TDataSet);
var
query_temp:TQuery;
begin
  inherited;
if application.messagebox(pchar('Quer realmente excluir o Produto '+qr_cserv01_MercPDNOME.asstring+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.Close;
query_temp.SQL.Clear;
query_temp.SQL.Add('Delete from CADCSER01_MERC '
                  +' where CSM_CODEMP=:CODEMP '
                  +' and CSM_CHAVE=:CHAVE  '
                  +' and CSM_ORDEM=:ORDEM '
                  +' and CSM_CODCLI=:CODCLI '
                  );
query_temp.ParamByName('CODEMP').AsInteger  :=qr_cserv01_MercCSM_CODEMP.AsInteger;
query_temp.ParamByName('CHAVE').AsFloat     :=qr_cserv01_MercCSM_CHAVE.AsFloat;
query_temp.ParamByName('ORDEM').AsInteger   :=qr_cserv01_MercCSM_ORDEM.AsInteger;
query_temp.ParamByName('CODCLI').AsFloat    :=qr_cserv01_MercCSM_CODCLI.AsFloat;
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;

freeandnil(query_temp);


end;

procedure TFrm_Contrato.qr_cserv01_MercBeforeEdit(DataSet: TDataSet);
begin
  inherited;
mOper_cs_Merc:=1;
mCodPro_Ant:=qr_cserv01_MercCSM_CODPRO.AsFloat;

end;

procedure TFrm_Contrato.qr_cserv01_MercBeforePost(DataSet: TDataSet);
var
query_temp: TQuery;
begin
  inherited;
if qr_cserv01_MercCSM_CODPRO.IsNull then
   begin
   qr_cserv01_Merc.Cancel;
   Abort;
   exit;
   end;
mBloqueiaChange:=true;

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:='SG_ASSOC';
if (mOper_cs=0) or (qr_cserv01_MercCSM_CODPRO.AsFloat<>mCodPro_Ant) then
   begin
   Query_Temp.sql.clear;
   Query_Temp.sql.Add('Select count(*) from CADCSER01_MERC where CSM_CODEMP=:CODEMP '
                     +' and CSM_CHAVE=:CHAVE '
                     +' and CSM_CODCLI=:CODCLI '
                     +' and CSM_CODPRO=:CODPRO ');
   query_temp.parambyname('CODEMP').AsInteger:=Tb_CSer01CS_CODEMP.AsInteger;
   query_temp.parambyname('CHAVE').AsFloat   :=Tb_CSer01CS_CHAVE.AsFloat;
   query_temp.parambyname('CODCLI').AsFloat  :=Tb_CSer01CS_CODCLI.AsFloat;
   query_temp.parambyname('CODPRO').AsFloat  :=qr_cserv01_MercCSM_CODPRO.AsFloat;
   try
      query_temp.Open;
   except
      end;
   if query_temp.fields[0].AsInteger>0 then
      begin
      MessageDlg('Este servico ja foi incluso anteriormente!',mtWarning,[mbOk],0);
      DBGrid_Merc.SelectedField:=qr_cserv01_MercCSM_CODPRO;
      DBGrid_Merc.SetFocus;
      freeandnil(query_temp);
      abort;
      end;
   end;

query_temp.Close;
query_temp.SQL.Clear;
if mOper_cs_Merc=0 then
   begin
   query_temp.SQL.Add('Insert into CADCSER01_MERC ('
                  +' CSM_CODEMP '
                  +',CSM_CHAVE  '
                  +',CSM_CODCLI  '
                  +',CSM_ORDEM '
                  +',CSM_CODPRO '
                  +',CSM_QTD '
                  +',CSM_PU '
                  +') values ( '
                  +':CSM_CODEMP '
                  +',:CSM_CHAVE  '
                  +',:CSM_CODCLI  '
                  +',:CSM_ORDEM '
                  +',:CSM_CODPRO '
                  +',:CSM_QTD '
                  +',:CSM_PU '
                  +')');

   end
else
   begin
   query_temp.SQL.Add('Update CADCSER01_MERC set '
                  +' CSM_CODPRO=:CSM_CODPRO '
                  +',CSM_QTD=:CSM_QTD '
                  +',CSM_PU=:CSM_PU '

                  +' where '
                  +' CSM_CODEMP=:CSM_CODEMP '
                  +' and CSM_CHAVE=:CSM_CHAVE  '
                  +' and CSM_ORDEM=:CSM_ORDEM '
                  +' and CSM_CODCLI=:CSM_CODCLI '
                  +' and CSM_CODPRO=:CSM_CODPRO '
                  );
   end;

query_temp.ParamByName('CSM_CODEMP').AsInteger     :=qr_cserv01_MercCSM_CODEMP.AsInteger;
query_temp.ParamByName('CSM_CHAVE').AsFloat        :=qr_cserv01_MercCSM_CHAVE.AsFloat;
query_temp.ParamByName('CSM_ORDEM').AsInteger      :=qr_cserv01_MercCSM_ORDEM.AsInteger;
query_temp.ParamByName('CSM_CODPRO').AsFloat      :=qr_cserv01_MercCSM_CODPRO.AsFloat;
query_temp.ParamByName('CSM_QTD').AsFloat     :=qr_cserv01_MercCSM_QTD.AsFloat;
query_temp.ParamByName('CSM_PU').Asfloat   :=qr_cserv01_MercCSM_PU.AsFloat;
query_temp.ParamByName('CSS_CODCLI').AsFloat       :=qr_cserv01_MercCSM_CODCLI.AsFloat;
try
   query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
mBloqueiaChange:=false;

freeandnil(query_temp);


end;

procedure TFrm_Contrato.DBGrid_cserv01_servEnter(Sender: TObject);
begin
  inherited;
      flcadser01_Serv(Tb_CSer01CS_CODEMP.AsFloat,Tb_CSer01CS_CODCLI.AsFloat,Tb_CSer01CS_CHAVE.AsFloat);
      flcadser01_Merc(Tb_CSer01CS_CODEMP.AsFloat,Tb_CSer01CS_CODCLI.AsFloat,Tb_CSer01CS_CHAVE.AsFloat);

end;

end.

