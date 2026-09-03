unit S_Bco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,func,S_DM1,db,dbtables,lerarq, ExtDlgs,JPEG,S_tra,S_Ven,S_Usr,
  S_CCU, ToolWin, FMTBcd, Provider, DBClient, SqlExpr, ADODB, ToolEdit,
  RxDBComb;

type
  TFrm_Bco = class(TFrm_C)
    Label1: TLabel;
    edt_codbco: TDBEdit;
    GroupBox1: TGroupBox;
    edt_nome: TDBEdit;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Opd1: TOpenPictureDialog;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel25: TBevel;
    Bevel26: TBevel;
    Label52: TLabel;
    Label53: TLabel;
    Bevel27: TBevel;
    Label54: TLabel;
    Bevel28: TBevel;
    Label55: TLabel;
    Bevel29: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Bevel32: TBevel;
    Bevel33: TBevel;
    Bevel34: TBevel;
    Label56: TLabel;
    Bevel35: TBevel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Bevel36: TBevel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Bevel39: TBevel;
    Bevel41: TBevel;
    Bevel42: TBevel;
    Label73: TLabel;
    Label74: TLabel;
    DBCheckBox15: TDBCheckBox;
    DBEdit53: TDBEdit;
    DBCheckBox16: TDBCheckBox;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBCheckBox17: TDBCheckBox;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBCheckBox18: TDBCheckBox;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBCheckBox19: TDBCheckBox;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBCheckBox20: TDBCheckBox;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBCheckBox21: TDBCheckBox;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBCheckBox22: TDBCheckBox;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    Label65: TLabel;
    DBEdit70: TDBEdit;
    Label66: TLabel;
    Bevel37: TBevel;
    DBEdit71: TDBEdit;
    Image1: TImage;
    DataSource1: TDataSource;
    Label67: TLabel;
    DBE_Tarifa: TDBEdit;
    Label69: TLabel;
    DBEdit73: TDBEdit;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit22: TDBEdit;
    Label20: TLabel;
    DBEdit23: TDBEdit;
    Label12: TLabel;
    DBEdit15: TDBEdit;
    DBEdit21: TDBEdit;
    Label70: TLabel;
    Label13: TLabel;
    DBEdit16: TDBEdit;
    db_digced: TDBEdit;
    Label18: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit19: TDBEdit;
    Label71: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label21: TLabel;
    DBEdit24: TDBEdit;
    Label22: TLabel;
    DBEdit25: TDBEdit;
    DBEdit13: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    db_proxnumbol: TDBEdit;
    Label9: TLabel;
    db_inst01: TDBEdit;
    db_inst02: TDBEdit;
    db_inst03: TDBEdit;
    db_inst04: TDBEdit;
    Label68: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label15: TLabel;
    DBEdit18: TDBEdit;
    DBEdit26: TDBEdit;
    Label16: TLabel;
    DBE_Limite: TDBEdit;
    sbnAdquirir: TSpeedButton;
    SBn_Excluir: TSpeedButton;
    lbl_razcta: TLabel;
    dbrazcta: TDBEdit;
    dbcb_pvrep: TDBCheckBox;
    tsFluxoCaixa: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    rg_replica: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    lbl_obs2: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBE_REP_CodDep: TDBEdit;
    DBE_REP_CodCCu: TDBEdit;
    DBE_REP_DescMv: TDBEdit;
    DBCB_REP_NOMDEP: TDBComboBox;
    DBCB_REP_NOMCCU: TDBComboBox;
    FNATDCC: TDBEdit;
    DBE_REP_CODIGO: TDBEdit;
    DBEdit35: TDBEdit;
    TIPO: TDBComboBox;
    DBE_REP_CODBCO: TDBEdit;
    DBCB_REP_NOMBCO: TDBComboBox;
    DBEdit9: TDBEdit;
    ToolBar1: TToolBar;
    btn_incluir: TBitBtn;
    btn_alterar: TBitBtn;
    btn_excluir: TBitBtn;
    btn_gravar: TBitBtn;
    btn_cancelar: TBitBtn;
    DBNavigator2: TDBNavigator;
    btn_sair: TBitBtn;
    Label25: TLabel;
    DBEdit1: TDBEdit;
    bbProxima: TBitBtn;
    DBE_BCB_LOCP02: TDBEdit;
    tsInfoBanco: TTabSheet;
    GroupBox3: TGroupBox;
    DBGrid_bco_fatur: TDBGrid;
    src_bco_fatur: TDataSource;
    Tb_Bco_Fatur: TQuery;
    U_Bco_Fatur: TUpdateSQL;
    Tb_Bco_Documentos: TADOQuery;
    Src_Bco_Documentos: TDataSource;
    Tb_Bco_DocumentosBCD_CODEMP: TFloatField;
    Tb_Bco_DocumentosBCD_CODBCO: TFloatField;
    Tb_Bco_DocumentosBCD_SEQ: TFloatField;
    Tb_Bco_DocumentosBCD_CATEGORIA: TStringField;
    Tb_Bco_DocumentosBCD_OBS: TStringField;
    Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL: TStringField;
    Tb_Bco_DocumentosBCD_DOCUMENTO: TBlobField;
    Tb_Bco_FaturBCF_CODEMP: TFloatField;
    Tb_Bco_FaturBCF_ANO: TFloatField;
    Tb_Bco_FaturBCF_MES: TFloatField;
    Panel2: TPanel;
    bbfatur_excluir: TBitBtn;
    Src_Bco: TDataSource;
    Query1: TQuery;
    TabSheet1: TTabSheet;
    GroupBox5: TGroupBox;
    DBGrid_documentos: TDBGrid;
    Panel5: TPanel;
    sbn_doc_nova: TSpeedButton;
    sbn_doc_alterar: TSpeedButton;
    sbn_doc_excluir: TSpeedButton;
    sbn_doc_gravar: TSpeedButton;
    sbn_visualizar_Atualizado: TSpeedButton;
    sbn_visualizar_original: TSpeedButton;
    GroupBox7: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    sbn_doc_buscar: TSpeedButton;
    DBcb_BCD_CATEGORIA: TDBComboBox;
    DB_BCD_OBS: TDBMemo;
    DBE_BCD_NOMEDOC_ORIGINAL: TDBEdit;
    Panel3: TPanel;
    Tb_Bco_FaturBCF_NAUF_VENDA_AVISTA: TFloatField;
    Tb_Bco_FaturBCF_NAUF_VENDA_CHPRE: TFloatField;
    Tb_Bco_FaturBCF_NAUF_VENDA_CHPRE_PM: TFloatField;
    Tb_Bco_FaturBCF_NAUF_VENDA_CARTAO: TFloatField;
    Tb_Bco_FaturBCF_NAUF_VENDA_DUPBOL: TFloatField;
    Tb_Bco_FaturBCF_NAUF_VENDA_DUPBOL_PM: TFloatField;
    Tb_Bco_FaturBCF_FORAUF_VENDA_AVISTA: TFloatField;
    Tb_Bco_FaturBCF_FORAUF_VENDA_CHPRE: TFloatField;
    Tb_Bco_FaturBCF_FORAUF_VENDA_CARTAO: TFloatField;
    Tb_Bco_FaturBCF_FORAUF_VENDA_DUPBOL: TFloatField;
    Tb_Bco_FaturBCF_FORAUF_VENDA_DUPBOL_PM: TFloatField;
    lbl_periodo: TStaticText;
    lbl_dentrouf: TStaticText;
    lbl_forauf: TStaticText;
    Tb_Bco_FaturBCF_FORAUF_VENDA_CHPRE_PM: TFloatField;
    Tb_Bco_Faturtotal: TFloatField;
    bbInserir_auto: TBitBtn;
    gb_inserir_automaticamente: TGroupBox;
    Label29: TLabel;
    edt_datini: TDateEdit;
    Label30: TLabel;
    edt_datfin: TDateEdit;
    bbInserirAgora: TBitBtn;
    GroupBox8: TGroupBox;
    memo_legenda: TMemo;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    GroupBox9: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    edt_doc_datini: TDateEdit;
    edt_doc_datfin: TDateEdit;
    GroupBox10: TGroupBox;
    RxDBCB_CST_ICMS_EST_REV: TRxDBComboBox;
    lbl_perc_acres: TLabel;
    edt_percacres: TEdit;
    bbAjustarValores: TBitBtn;
    Label33: TLabel;
    Label34: TLabel;
    DBCB_BCCODCAR_C006: TRxDBComboBox;
    DBCB_BCLAYOUT_PADRAO: TRxDBComboBox;
    GroupBox11: TGroupBox;
    Label35: TLabel;
    RxDBCB_BCDOCEMIBOL: TRxDBComboBox;
    lbl_BCDOCEMIBOL: TLabel;
    edt_cnpj: TMaskEdit;
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBE_TarifaKeyPress(Sender: TObject; var Key: Char);
    procedure SAIRClick(Sender: TObject);
    procedure sbnAdquirirClick(Sender: TObject);
    procedure SBn_ExcluirClick(Sender: TObject);
    procedure edt_codbcoExit(Sender: TObject);
    procedure TIPOEnter(Sender: TObject);
    procedure TIPOExit(Sender: TObject);
    procedure DBE_REP_CODIGOEnter(Sender: TObject);
    procedure DBE_REP_CODIGOExit(Sender: TObject);
    procedure DBE_REP_CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_REP_CODBCOExit(Sender: TObject);
    procedure DBE_REP_CodDepExit(Sender: TObject);
    procedure DBE_REP_CodDepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_REP_NOMDEPEnter(Sender: TObject);
    procedure DBCB_REP_NOMDEPExit(Sender: TObject);
    procedure DBCB_REP_NOMDEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBE_REP_CodCCuExit(Sender: TObject);
    procedure DBE_REP_CodCCuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCB_REP_NOMCCUEnter(Sender: TObject);
    procedure DBCB_REP_NOMCCUExit(Sender: TObject);
    procedure DBCB_REP_NOMCCUKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rg_replicaEnter(Sender: TObject);
    procedure DBCB_REP_NOMBCOEnter(Sender: TObject);
    procedure DBCB_REP_NOMBCOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbProximaClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure Tb_Bco_FaturAfterInsert(DataSet: TDataSet);
    procedure Tb_Bco_FaturBeforePost(DataSet: TDataSet);
    procedure Tb_Bco_FaturAfterEdit(DataSet: TDataSet);
    procedure Tb_Bco_FaturAfterPost(DataSet: TDataSet);
    procedure Tb_Bco_FaturAfterCancel(DataSet: TDataSet);
    procedure bbfatur_excluirClick(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure sbn_doc_novaClick(Sender: TObject);
    procedure Src_BcoDataChange(Sender: TObject; Field: TField);
    procedure sbn_doc_alterarClick(Sender: TObject);
    procedure sbn_doc_buscarClick(Sender: TObject);
    procedure Tb_Bco_DocumentosAfterInsert(DataSet: TDataSet);
    procedure Tb_Bco_DocumentosAfterEdit(DataSet: TDataSet);
    procedure Tb_Bco_DocumentosAfterPost(DataSet: TDataSet);
    procedure Tb_Bco_DocumentosAfterCancel(DataSet: TDataSet);
    procedure Tb_Bco_DocumentosAfterDelete(DataSet: TDataSet);
    procedure sbn_doc_gravarClick(Sender: TObject);
    procedure sbn_doc_excluirClick(Sender: TObject);
    procedure DBGrid_documentosDblClick(Sender: TObject);
    procedure DBGrid_bco_faturDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_bco_faturKeyPress(Sender: TObject; var Key: Char);
    procedure Tb_Bco_FaturCalcFields(DataSet: TDataSet);
    procedure bbInserir_autoClick(Sender: TObject);
    procedure bbInserirAgoraClick(Sender: TObject);
    procedure sbn_visualizar_AtualizadoClick(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure bbAjustarValoresClick(Sender: TObject);
    procedure edt_percacresExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBCB_BCDOCEMIBOLClick(Sender: TObject);
    procedure edt_cnpjExit(Sender: TObject);
  private
    { Private declarations }

    mCodbco_Imagem_lida: Integer;
    mdoc_Codbco_lida: Integer;
    mcodbco_lido: integer;

    function fLerCadbco_Fatur: Boolean;

    function fLerCadbco_Imagem:Boolean;

    procedure pBloqueiaCampos(pBloqueia: Boolean);

    function fLerCadbco_Doc: Boolean;


    function fSalvarDocumento(pDocumento: tblobField; pNomeArq: String ) : boolean;


  public
    { Public declarations }
  end;

const
   mcol_mes = 0;
   mcol_ano = 1;
   mcol_NAUF_VENDA_AVISTA = 2;
   mcol_NAUF_VENDA_CHPRE = 3;
   mcol_NAUF_VENDA_CHPRE_PM = 4;
   mcol_NAUF_VENDA_CARTAO = 5;
   mcol_NAUF_VENDA_DUPBOL = 6;
   mcol_NAUF_VENDA_DUPBOL_PM = 7;
   mcol_FORAUF_VENDA_AVISTA = 8;
   mcol_FORAUF_VENDA_CHPRE = 9;
   mcol_FORAUF_VENDA_CHPRE_PM = 10;
   mcol_FORAUF_VENDA_CARTAO = 11;
   mcol_FORAUF_VENDA_DUPBOL = 12;
   mcol_FORAUF_VENDA_DUPBOL_PM = 13;


var
  Frm_Bco    : TFrm_Bco;
  bco_ori    : String;
  moper_bco  : Integer=0;
  macdep     : Boolean=False;
  macccu     : Boolean=False;
  macbco     : Boolean=false;
  mcodbco_ant: Real;
  mCodigo    : String;
  mAnt_Mes   : integer;
  mAnt_Ano   : Integer;
function fBco01gant(ptipo: Integer): Boolean;

implementation

uses S_DM4, S_Dpto, S_For, func_excecoes, s_Imagem_WebCam, S_Fig_TelaCheia,
  S_DM1_ADO, s_banco_legenda;

{$R *.dfm}

procedure TFrm_Bco.BBnAtuClick(Sender: TObject);
begin
  inherited;
  if btn_gravar.Enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
          mrYes : gravar.Click;
     else
          cancelar.Click;
     end;
  end;
  flcadbco(CAMPO.ItemIndex,0,1,Edit1.Text);
end;

procedure TFrm_Bco.FormCreate(Sender: TObject);
begin
  inherited;
edt_cnpj.EditMask:='99\.999\.999\/9999\-99;0';


mdoc_Codbco_lida:=0;
mCodbco_lido:=0;



mCodbco_Imagem_lida:=0;

Tb_Bco_FaturBCF_NAUF_VENDA_AVISTA.DisplayFormat:=mcasas;
Tb_Bco_FaturBCF_NAUF_VENDA_CHPRE.DisplayFormat:=mcasas;
Tb_Bco_FaturBCF_NAUF_VENDA_CARTAO.DisplayFormat:=mcasas;
Tb_Bco_FaturBCF_NAUF_VENDA_DUPBOL.DisplayFormat:=mcasas;

Tb_Bco_FaturBCF_FORAUF_VENDA_AVISTA.DisplayFormat:=mcasas;
Tb_Bco_FaturBCF_FORAUF_VENDA_CHPRE.DisplayFormat:=mcasas;
Tb_Bco_FaturBCF_FORAUF_VENDA_CARTAO.DisplayFormat:=mcasas;
Tb_Bco_FaturBCF_FORAUF_VENDA_DUPBOL.DisplayFormat:=mcasas;

Tb_Bco_FaturBCF_MES.DisplayFormat:='00';

  bco_ori:='';
  if flcadactab(0,0,IntToStr(codcar),'CADBCO') then begin
     if DM4.Tb_AcTabAT_INC.Value=1 then
        bbinc_true:=False;
     if DM4.Tb_AcTabAT_ALT.Value=1 then
        bbalt_true:=False;
     if DM4.Tb_AcTabAT_EXC.Value=1 then
        bbexc_true:=False;
  end else begin
     bbinc_true:=true;
     bbalt_true:=true;
     bbexc_true:=true;

 end;

 fLerCadbco_Fatur;

 pc1.ActivePageIndex:=0;

  DBNavigator2.DataSource := DM1.Src_Bco;
  DBGrid1.DataSource      := DM1.Src_Bco;

  Self.Caption := 'Manutenção no Cadastro de Bancos';

  Campo.ItemIndex := 0;

  moper_bco      := 0;

  btn_incluir.Enabled := bbinc_true;
  btn_alterar.Enabled := bbalt_true;
  btn_excluir.Enabled := bbexc_true;
  btn_cancelar.Enabled:= False;

  if codusr = 1111 then begin
     if (bbinc_true = True) or (bbalt_true = True) then begin
        GroupBox4.Enabled := True;
        TabSheet2.Enabled := True;
     end;
  end;

  BBnAtuClick(self);

  DM1.Query3.close;
  DM1.Query3.SQL.Clear;
  DM1.Query3.Params.CreateParam(ftOraBlob,'LOGO',ptinput);
  DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
  DM1.Query3.Params.CreateParam(ftString,'CODBCO',ptInput);
  DM1.Query3.SQL.Add('Update CADBCO set BCLOGO=:LOGO '
                    +' where BCCODEMP=:CODEMP '
                    +' and   BCCODBCO=:CODBCO ');

  DM1.Query5.Close;
  DM1.Query5.SQL.Clear;
  DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
                     +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
  DM1.Query5.Open;
  DBCB_REP_NOMDEP.Items.Clear;

  While not DM1.Query5.Eof do begin
     DBCB_REP_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
     DM1.Query5.Next;
  end;

  DM1.Query5.Close;
  DM1.Query5.SQL.Clear;
  DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
  DM1.Query5.Open;
  DBCB_REP_NOMCCU.Items.Clear;

  While not DM1.Query5.Eof do begin
     DBCB_REP_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                              +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                              +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');

     DM1.Query5.Next;
  end;
Tb_Bco_DocumentosAfterCancel(Tb_Bco_Documentos);
end;

procedure TFrm_Bco.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if bco_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   bco_ori := '';
   end;

end;

procedure TFrm_Bco.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if bco_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      bco_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_Bco.INCLUIRClick(Sender: TObject);
begin
  inherited;
  Self.Caption := 'Manutenção no Cadastro de Bancos - [Inclusão]';
  DM1.Tb_Bco.Append;
  DM1.Tb_BcoBCDATHOR_INC.AsDateTime:=now;
  DM1.Tb_BcoBCCODUSR_INC.AsFloat   :=codusr;
  mcodbco_Ant  := DM1.Tb_BcoBCCODBCO.AsFloat;
  mOper_bco    := 0;
  edt_codbco.Enabled := True;
  edt_codbco.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator2.Enabled := False;
  BBnAtu.Enabled:= false;
end;

procedure TFrm_Bco.ALTERARClick(Sender: TObject);
begin
  inherited;
  Self.Caption := 'Manutenção no Cadastro de Bancos - [Alteração]';
  if DM1.Tb_BcoBCCODBCO.IsNull then begin
     Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
     Exit;
  end;
  PC1.ActivePage := tsCad;

  DM1.Tb_Bco.Edit;
  DM1.Tb_BcoBCDATHOR_ALT.AsDateTime:=now;
  DM1.Tb_BcoBCCODUSR_ALT.AsFloat   :=codusr;

  mcodbco_Ant := DM1.Tb_BcoBCCODBCO.AsFloat;
  mOper_bco   := 1;
  edt_codbco.Enabled   := False;
  edt_nome.SetFocus;

  btn_incluir.Enabled  := False;
  btn_alterar.Enabled  := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled   := True;
  DBGrid1.Enabled      := False;
  DBNavigator2.Enabled := False;
  BBnAtu.Enabled:= false;
end;

procedure TFrm_Bco.EXCLUIRClick(Sender: TObject);
begin
   inherited;
if DM1.Tb_BcoBCCODBCO.IsNull then begin
   fmensagem('Não ha registro a ser Excluido!',0,['0'],0);
   Exit;
   end;

if fmensagem('Deseja Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FGerarAntes(9,'CADBCO','BCCODEMP',DM1.Tb_BcoBCCODEMP.Asstring,
              'BC_CODNOV','BC_DATHOR','BC_CODUSR',
              'BC_STATUS',['BCCODBCO'],[FloatToStr(DM1.Tb_BcoBCCODBCO.AsFloat)]
              ,DM1.Tb_Bco);

   FAtualizaBanco(2,'CADBCO','BCCODEMP',DM1.Tb_BcoBCCODEMP.AsString
                     ,['BCCODBCO'],[FloatToStr(DM1.Tb_BcoBCCODBCO.AsFloat)]
                     ,DM1.Tb_Bco);
   DM1.Tb_Bco.Delete;
   end;
end;

procedure TFrm_Bco.GRAVARClick(Sender: TObject);
begin
   inherited;
if (DM1.Tb_BcoBCCODBCO.Isnull) then
   begin
   fmensagem('Favor informar o Código do Banco!',0,['0'],0);
   edt_codbco.SetFocus;
   exit;
   end;

if (DM1.Tb_BcoBCBANCO.Isnull) then
   begin
   fmensagem('Nome Invalido!',0,['0'],0);
   edt_nome.SetFocus;
   exit;
   end;

DM1.Tb_BcoBCDATHOR_ALT.AsDateTime:=now;


if moper_bco = 1 then begin
   FGerarAntes(8,'CADBCO','BCCODEMP',DM1.Tb_BcoBCCODEMP.Asstring,
                  'BCCODNOV','BCDATHOR','BCCODUSR',
                  'BCSTATUS',['BCCODBCO'],[FloatToStr(mcodbco_Ant)]
                  ,DM1.Tb_Bco);

   end;
DM1.Query3.Close;
DM1.Query3.ParamByName('LOGO').AsBlob   :=DM1.Tb_BcoBCLOGO.Value ;
DM1.Query3.ParamByName('CODEMP').AsFloat:=DM1.Tb_BcoBCCODEMP.Value;
DM1.Query3.ParamByName('CODBCO').AsFloat:=DM1.Tb_BcoBCCODBCO.Value;
DM1.Query3.ExecSQL;
fdm1StartCommit;

FAtualizaBanco(1,'CADBCO','BCCODEMP',DM1.Tb_BcoBCCODEMP.AsString
               ,['BCCODBCO'],[FloatToStr(mcodbco_ant)]
                  ,DM1.Tb_Bco);
DM1.Tb_Bco.Post;

mOper_bco:=-1;
cancelarClick(self);
end;

procedure TFrm_Bco.CANCELARClick(Sender: TObject);
begin
   inherited;
   Self.Caption := 'Manutenção no Cadastro de Bancos';

   if (mOper_bco=0) and (btn_gravar.Enabled) then begin
       FAtualizaBanco(2,'CADBCO','BCCODEMP',DM1.Tb_BcoBCCODEMP.AsString
       ,['BCCODBCO'],[FloatToStr(mcodbco_ant)]
       ,DM1.Tb_Bco);
   end;

   if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
      DM1.Tb_Bco.Cancel;

   btn_incluir.Enabled  := bbinc_true;
   btn_alterar.Enabled  := bbalt_true;
   btn_excluir.Enabled  := bbexc_true;
   btn_cancelar.Enabled := False;
   btn_gravar.Enabled   := False;
   DBGrid1.Enabled      := True;
   DBNavigator2.Enabled := True;
   BBnAtu.Enabled:= true;
   mOper_bco            := -1;
   TabSheet2.Enabled    :=False;
   tsFluxoCaixa.Enabled :=false;
end;

procedure TFrm_Bco.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if btn_gravar.enabled then begin
     Case fmensagem('O registro atual não está gravado!'+#13
                   +'Deseja gravar agora?',0,['1','2','3'],0) of
          mrYes: gravar.Click;
          mrNo : cancelar.Click;
     else
          CanClose := False;
     end;
  end;
end;

procedure TFrm_Bco.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  inherited;

if not (DM1.Tb_BcoBCLOGO.IsNull)  and  (DM1.Tb_BcoBCLOGO.Value<>'') then
   begin
   DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\BCOTMP.JPG');
   opd1.FileName:='C:\SGE\BCOTMP.JPG';
   try
      Image1.Picture.LoadFromFile(Opd1.FileName);
   except
      DM1.Query1.close;
      DM1.Query1.SQL.CLEAR;
      DM1.Query1.SQL.Add('Update CADBCO set BCLOGO=null');
      DM1.Query1.ExecSQL;
      fdm1StartCommit;

      Image1.Picture:=nil;
      end;
   end
else
   Image1.Picture:=nil;   
end;

procedure TFrm_Bco.DBE_TarifaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in ['.',','] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

function fBco01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(BCCODNOV) from OLD_CADBCO');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADBCO (';
v:='';
for x:=0 to DM1.Tb_Bco.FieldCount-1 do
   begin
   if (DM1.Tb_Bco.Fields[x].FieldKind=fkCalculated)
      or (DM1.Tb_Bco.Fields[x].DataType=ftblob)  then
      Continue;
   minstru:=minstru+v+DM1.Tb_Bco.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',BCCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Bco.FieldCount-1 do
   begin
   if (DM1.Tb_Bco.Fields[x].FieldKind=fkCalculated)
      or (DM1.Tb_Bco.Fields[x].DataType=ftblob)  then
      Continue;
   minstru:=minstru+v+DM1.Tb_Bco.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as BCCODNOV ';
minstru:=minstru+' from CADBCO where BCCODEMP=0'+DM1.Tb_BcoBCCODEMP.AsString
                +' and BCCODBCO=0'+DM1.Tb_BcoBCCODBCO.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   
except
   fmensagem('Erro ao Fazer o Backup da Alteracao AC00527. Contactar Suporte',0,['0'],0);
   end;
result:=True;



end;

procedure TFrm_Bco.SAIRClick(Sender: TObject);
begin
  inherited;
  if bco_ori = '' then close;
end;

procedure TFrm_Bco.sbnAdquirirClick(Sender: TObject);
begin
  inherited;

If Opd1.Execute then
   begin
   Try
      DM1.Tb_BcoBCLOGO.Value:='';
      Image1.Picture.LoadFromFile(Opd1.FileName);
      DM1.Tb_BcoBCLOGO.LoadFromFile(Opd1.FileName);
   except
      fmensagem('Figura Invalida. Valida Somente BMP!',0,['0'],0);
      end;
   end;


end;

procedure TFrm_Bco.SBn_ExcluirClick(Sender: TObject);
begin
  inherited;
DM1.Tb_BcoBCLOGO.Value:='';

end;

procedure TFrm_Bco.edt_codbcoExit(Sender: TObject);
begin
   inherited;
if btn_cancelar.Focused then
   begin
   DM1.Tb_BcoBCCODBCO.Value := 0;
   Exit;
   end;

if DM1.Tb_BcoBCCODBCO.Isnull then
   Exit;

if (moper_bco=0) and (DM1.Tb_BcoBCCODBCO.AsFloat <> mCodbco_ant) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select BCBANCO from CADBCO where '
                         +iif(DM1.Qr_Tid.Locate('TINOME','CADBCO',[]),'',' BCCODEMP=0'+IntToStr(codemp)+' and ')
                        +' BCCODBCO=:CODBCO ');
   DM1.Query1.ParambyName('CODBCO').AsFloat := DM1.Tb_BcoBCCODBCO.AsFloat;
   DM1.Query1.Open;

   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Este Codigo ja esta Cadastrado. Nome: '+DM1.Query1.FieldbyName('BCBANCO').AsString,0,['0'],0);
      edt_codbco.setFocus;
      exit;
      end;
   end;
end;

procedure TFrm_Bco.TIPOEnter(Sender: TObject);
begin
  inherited;
if TIPO.ItemIndex=-1 then
   TIPO.ItemIndex:=1;

end;

procedure TFrm_Bco.TIPOExit(Sender: TObject);
begin
  inherited;
if TIPO.ItemIndex<0 then
   with TIPO do ItemIndex:=Items.IndexOf(TIPO.Text);
TIPO.Text:=TIPO.items.Strings[TIPO.itemindex];
DM1.Tb_BcoBCREP_TIPO.Value:=TIPO.Text;
if Trim(TIPO.Text)='' then
   TIPO.Text:='CL';

if TIPO.ItemIndex=-1 then
   TIPO.ItemIndex:=1;

end;

procedure TFrm_Bco.DBE_REP_CODIGOEnter(Sender: TObject);
begin
  inherited;
mcodigo_ant:=DM1.Tb_BcoBCREP_CODIGO.Value;

end;

procedure TFrm_Bco.DBE_REP_CODIGOExit(Sender: TObject);
begin
  inherited;
if (trim(DM1.Tb_BcoBCREP_CODCCU.AsString)='') or (trim(DM1.Tb_BcoBCREP_CODDEP.AsString)='') then
   mcodigo_ant:=-1;
if DM1.Tb_BcoBCREP_CODIGO.Asfloat<>0 then
   begin

   if TIPO.Text='VD' then
      begin
      if not flqr2('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_BcoBCREP_CODIGO.AsString) then
         Begin
         fmensagem('Vendedor não Cadastrado!',0,['0'],0);
         TIPO.SetFocus;
         end
      else
         DM1.Tb_BcoBCREP_NOMESAC.Value:=DM1.Query2.Fields[0].AsString;
      end
   else if TIPO.Text='FR' then
      begin
      if not flqr2('FRAZAO,FDENOM,FDESCMVD,FNOMCCD,FNOMDEPD,FCODCCD,FCODDEPD'
         ,'F','CADFOR','N','FCODFOR',DM1.Tb_BcoBCREP_CODIGO.AsString) then
         Begin
         fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
         DBE_REP_CODIGO.SetFocus;
         end
      else
         begin
         DM1.Tb_BcoBCREP_NOMESAC.Value:=DM1.Query2.FieldbyName('FRAZAO').AsString;
         if flparldr(0,'CADDAP0') then
            begin
            if (trim(DM1.Query2.FieldbyName('FDESCMVD').AsString)='') or
               (trim(DM1.Query2.FieldbyName('FDESCMVD').AsString)='_') then
               pldr_descmov:=DM1.Par_LDRNOME.Value
            else
               pldr_descmov:=DM1.Query2.FieldbyName('FDESCMVD').AsString;
            if (Trim(DM1.Query2.FieldbyName('FCODCCD').AsString)='') or
               (Trim(DM1.Query2.FieldbyName('FCODCCD').AsString)='_') then
               begin
               DM1.Tb_BcoBCREP_CODCCU.Value  :=DM1.Par_LDRCODCC.Value;
               end
            else
               begin
               DM1.Tb_BcoBCREP_CODCCU.Value  :=DM1.Query2.FieldbyName('FCODCCD').AsString;
               DM1.Tb_BcoBCREP_NOMCCU.Value :=DM1.Query2.FieldbyName('FNOMCCD').AsString;
               end;
            if (trim(DM1.Query2.FieldbyName('FCODDEPD').AsString)='') or
               (trim(DM1.Query2.FieldbyName('FCODDEPD').AsString)='_') then
               begin
               DM1.Tb_BcoBCREP_CODDEP.Value:=DM1.Par_LDRCODDEP.Value;
               end
            else
               begin
               DM1.Tb_BcoBCREP_CODDEP.Value:=DM1.Query2.FieldbyName('FCODDEPD').AsString;
               DM1.Tb_BcoBCREP_NOMDEP.Value:=DM1.Query2.FieldbyName('FNOMDEPD').AsString;
               end;
            DBE_REP_CodCCuExit(self);
            DBE_REP_CodDepExit(Self);
            end;
         end;
      end
   else if TIPO.Text='TR' then
      begin
      if not flqr2('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_BcoBCREP_CODIGO.AsString) then
         Begin
         fmensagem('Transportadora não Cadastrada!',0,['0'],0);
         TIPO.SetFocus;
         end
      else
         DM1.Tb_BcoBCREP_NOMESAC.Value:=DM1.Query2.Fields[0].AsString;
      end
   else if TIPO.Text='US' then
      begin
      if not flqr2('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_BcoBCREP_CODIGO.AsString) then
         Begin
         fmensagem('Usuário não Cadastrado!',0,['0'],0);
         TIPO.SetFocus;
         end
      else
         DM1.Tb_BcoBCREP_NOMESAC.Value:=DM1.Query2.Fields[0].AsString;
      end
   else
      begin
      if not flcadcli(1,0,DM1.Tb_BcoBCREP_CODIGO.AsString) then
         Begin
         fmensagem('Cliente não Cadastrado!',0,['0'],0);
         TIPO.SetFocus;
         end
      else
         begin
         DM1.Tb_BcoBCREP_NOMESAC.Value:=DM1.Tb_CliCRAZAO.Value;
         if mcodigo_ant<>DM1.Tb_BcoBCREP_CODIGO.Value then
            begin
            if flparldr(0,'CADDAR0') then
               begin
               if (trim(DM1.Tb_CliCDESCMVC.AsString)='') or
                  (trim(DM1.Tb_CliCDESCMVC.AsString)='_') then
                  pldr_descmov:=DM1.Par_LDRNOME.Value
               else
                  pldr_descmov:=DM1.Tb_CliCDESCMVC.Value;
               if (Trim(DM1.Tb_CliCCODCCC.AsString)='') or
                  (Trim(DM1.Tb_CliCCODCCC.AsString)='_') then
                  begin
                  DM1.Tb_BcoBCREP_CODCCU.Value :=DM1.Par_LDRCODCC.Value;
                  end
               else
                  begin
                  DM1.Tb_BcoBCREP_CODCCU.Value :=DM1.Tb_CliCCODCCC.Value;
                  DM1.Tb_BcoBCREP_NOMCCU.Value :=DM1.Tb_CliCNOMCCC.Value;
                  end;
              if (trim(DM1.Tb_CliCCODDEPC.AsString)='') or
                 (trim(DM1.Tb_CliCCODDEPC.AsString)='_') then
                  begin
                  DM1.Tb_BcoBCREP_CODDEP.Value:=DM1.Par_LDRCODDEP.Value;
                  end
               else
                  begin
                  DM1.Tb_BcoBCREP_CODDEP.Value:=DM1.Tb_CliCCODDEPC.Value;
                  DM1.Tb_BcoBCREP_NOMDEP.Value:=DM1.Tb_CliCNOMDEPC.Value;
                  end;
               end;
            end;
         DBE_REP_CodCCuExit(self);
         DBE_REP_CodDepExit(Self);
         end;
      end;
   end;

end;

procedure TFrm_Bco.DBE_REP_CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) and (DM1.Tb_Bco.State in [dsEdit,dsInsert]) then
   begin
   if TIPO.Text='FR' then
      begin
      DM1.Tb_BcoBCREP_CODIGO.Value:=ValFloat(fChamaFor(0,'frm_bco',key));
      if DM1.Tb_BcoBCREP_CODIGO.AsFloat<>0 then
         DBE_REP_CODIGOExit(self);
      key:=#0;
      end
   else if TIPO.Text='TR' then
      begin
      DM1.Tb_BcoBCREP_CODIGO.Value:=ValFloat(fChamaTra(0,'frm_bco',key));
      if DM1.Tb_BcoBCREP_CODIGO.AsFloat<>0 then
         DBE_REP_CODIGOExit(self);
      key:=#0;
      end
   else if TIPO.Text='VD' then
      begin
      DM1.Tb_BcoBCREP_CODIGO.Value:=ValFloat(fChamaVen(0,'frm_bco',key));
      if DM1.Tb_BcoBCREP_CODIGO.AsFloat<>0 then
         DBE_REP_CODIGOExit(self);
      key:=#0;
      end
   else if TIPO.Text='US' then
      begin
      DM1.Tb_BcoBCREP_CODIGO.Value:=ValFloat(fChamaUsr(0,'frm_bco',key));
      if DM1.Tb_BcoBCREP_CODIGO.AsFloat<>0 then
         DBE_REP_CODIGOExit(self);
      key:=#0;
      end

   else
      begin
      DM1.Tb_BcoBCREP_CODIGO.Value:=fSonumero(fChamaCli(0,'Frm_LDR',key));
      DBE_REP_CODIGOExit(self);
      end;
   end;
end;

procedure TFrm_Bco.DBE_REP_CODBCOExit(Sender: TObject);
begin
  inherited;


macbco:=false;
if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_BcoBCREP_NOMBCO.Value:=' ';
   if DM1.Tb_BcoBCREP_CODBCO.Value<>0 then
      begin
      if not flqr2('BCBANCO','N','CADBCO','BC','BcCODBCO',DM1.Tb_BcoBCREP_CODBCO.AsString) then
         begin
         verteclado(1);
         fmensagem('Banco não cadastrado!',0,['0'],0);
         DBE_REP_CODBCO.SetFocus;
         end
      else
         begin
         DM1.Tb_BcoBCREP_NOMBCO.Value:=DM1.Query2.Fields[0].AsString;
         if not DBCB_REP_NOMBCO.Focused then
            macbco:=true;
         end;
      end;
   end;




end;

procedure TFrm_Bco.DBE_REP_CodDepExit(Sender: TObject);
begin
  inherited;
macdep:=false;
if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_BcoBCREP_NOMDEP.Value:=' ';
   if Trim(DM1.Tb_BcoBCREP_CODDEP.Value)<>'' then
      begin
      if not flqr2('DNOME','D','CADDEP','C','DCODDEP',DM1.Tb_BcoBCREP_CODDEP.Value) then
         begin
         verteclado(1);
         fmensagem('Departamento não cadastrado!',0,['0'],0);
         DBE_REP_CodDep.SetFocus;
         end
      else
         begin
         DM1.Tb_BcoBCREP_NOMDEP.Value:=DM1.Query2.Fields[0].AsString;
         if not DBCB_REP_NOMDEP.Focused then
            macdep:=true;
         end;
      end;
   end;




end;

procedure TFrm_Bco.DBE_REP_CodDepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Bco.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_BcoBCREP_CODDEP.Value:=fChamaDeptoCX(0,'frm_bco','');
      if DM1.Tb_BcoBCREP_CODDEP.AsString<>'' then
         DBE_REP_CodDepExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
               +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_REP_NOMDEP.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_REP_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;




end;

procedure TFrm_Bco.DBCB_REP_NOMDEPEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
   begin
   with DBCB_REP_NOMDEP do ItemIndex:=Items.IndexOf(DM1.Tb_BcoBCREP_NOMDEP.Value
                                    +'['+DM1.Tb_BcoBCREP_CODDEP.AsString+']');
   DBCB_REP_NOMDEP.text:=DBCB_REP_NOMDEP.Items.Strings[DBCB_REP_NOMDEP.ItemIndex];
   if not lbl_obs2.Visible then
      lbl_obs2.Visible:=true;
   end;
if macdep then
   DBE_REP_CodCCu.SetFocus;
macdep:=false;


end;

procedure TFrm_Bco.DBCB_REP_NOMDEPExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
   begin
   if DBCB_REP_NOMDEP.ItemIndex<0 then
      with DBCB_REP_NOMDEP do ItemIndex:=Items.IndexOf(DBCB_REP_NOMDEP.Text);
   DBCB_REP_NOMDEP.text:=DBCB_REP_NOMDEP.Items.Strings[DBCB_REP_NOMDEP.ItemIndex];
   if trim(DBCB_REP_NOMDEP.Text)='' then
      DM1.Tb_BcoBCREP_CODDEP.Value:=''
   else
      begin
      DM1.Tb_BcoBCREP_CODDEP.Value:=fExtraiCodigoEntreChaves(DBCB_REP_NOMDEP.Text);
      DBE_REP_CodDepExit(Self);
      end;
   end;
if lbl_obs2.Visible then
   lbl_obs2.Visible:=false;


end;

procedure TFrm_Bco.DBCB_REP_NOMDEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Bco.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_BcoBCREP_CODDEP.Value:=fChamaDeptoCX(0,'frm_bco','');
      if DM1.Tb_BcoBCREP_CODDEP.AsString<>'' then
         DBE_REP_CodDepExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select DNOME,DCODDEP from CADDEP '
               +iif(DM1.Qr_TID.locate('TINOME','CADDEP',[]),'',' where DCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_REP_NOMDEP.Items.Clear;
//      DBCB_REP_NOMDEP.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_REP_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
//         DBCB_REP_NOMDEP.Items.Add(DM1.Query5.fieldByName('DNOME').AsString+'['+DM1.Query5.fieldbyName('DCODDEP').AsString+']');
         DM1.Query5.Next;
         end;
      end;
   end;


end;

procedure TFrm_Bco.DBE_REP_CodCCuExit(Sender: TObject);
begin
  inherited;
macccu:=false;
if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
   begin
   DM1.Tb_BcoBCREP_NOMCCU.Value:=' ';
   if Trim(DM1.Tb_BcoBCREP_CODCCU.Value)<>'' then
      begin
      if not flqr2('CCNOME,CCNAT','CC','CADCCU','C','CCCODCCU',DM1.Tb_BcoBCREP_CODCCU.Value) then
         begin
         verteclado(1);
         fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
         DBE_REP_CodCCu.SetFocus;
         end
      else
         begin
         DM1.Tb_BcoBCREP_NATDC.Value:=DM1.Query2.Fields[1].AsString;
         DM1.Tb_BcoBCREP_NOMCCU.Value:=DM1.Query2.Fields[0].AsString;
         if not DBCB_REP_NOMCCU.Focused then
            macccu:=true;
         end;
      end;
   end;

end;

procedure TFrm_Bco.DBE_REP_CodCCuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Bco.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin

      DM1.Tb_BcoBCREP_CODCCU.Value:=fChamaCCU(0,'frm_bco','');
      if DM1.Tb_BcoBCREP_CODCCU.AsString<>'' then
         DBE_REP_CodCCuExit(self);

      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_REP_NOMCCU.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_REP_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');

         DM1.Query5.Next;
         end;
      end;
   end;
end;

procedure TFrm_Bco.DBCB_REP_NOMCCUEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
   begin
   with DBCB_REP_NOMCCU do ItemIndex:=Items.IndexOf(DM1.Tb_BcoBCREP_NOMCCU.AsString
                                    +'-'+DM1.Tb_BcoBCREP_NATDC.AsString
                                    +'['+DM1.Tb_BcoBCREP_CODCCU.AsString+']');
   DBCB_REP_NOMCCU.text:=DBCB_REP_NOMCCU.Items.Strings[DBCB_REP_NOMCCU.ItemIndex];
   if not lbl_obs2.Visible then
      lbl_obs2.Visible:=true;
   end;
if macccu then
   DBE_REP_DescMv.SetFocus;
macccu:=false;



end;

procedure TFrm_Bco.DBCB_REP_NOMCCUExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
   begin
   if DBCB_REP_NOMCCU.ItemIndex<0 then
      with DBCB_REP_NOMCCU do ItemIndex:=Items.IndexOf(DBCB_REP_NOMCCU.Text);
   DBCB_REP_NOMCCU.text:=DBCB_REP_NOMCCU.Items.Strings[DBCB_REP_NOMCCU.ItemIndex];
   if trim(DBCB_REP_NOMCCU.Text)='' then
      DM1.Tb_BcoBCREP_CODCCU.Value:=''
   else
      begin
      DM1.Tb_BcoBCREP_CODCCU.Value:=fExtraiCodigoEntreChaves(DBCB_REP_NOMCCU.Text);
      DBE_REP_CodCCuExit(Self);
      end;
   end;
if lbl_obs2.Visible then
   lbl_obs2.Visible:=false;


end;

procedure TFrm_Bco.DBCB_REP_NOMCCUKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if DM1.Tb_Bco.State in [DsEdit, DsInsert] then
   begin
   if key=113 then
      begin
      DM1.Tb_BcoBCREP_CODCCU.Value:=fChamaCCU(0,'frm_bco','');
      if DM1.Tb_BcoBCREP_CODCCU.AsString<>'' then
         DBE_REP_CodCCuExit(self);
      key:=0;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.SQL.Add('Select CCNOME,CCNAT,CCCODCCU from CADCCU '
                     +iif(DM1.Qr_TID.locate('TINOME','CADCCU',[]),'',' where CCCODEMP=0'+IntToStr(codemp)));
      DM1.Query5.Open;
      DBCB_REP_NOMCCU.Items.Clear;
      While not DM1.Query5.Eof do
         begin
         DBCB_REP_NOMCCU.Items.Add(DM1.Query5.fieldByName('CCNOME').AsString
                           +'-'+DM1.Query5.fieldByName('CCNAT').AsString
                           +'['+DM1.Query5.fieldbyName('CCCODCCU').AsString+']');

         DM1.Query5.Next;
         end;
      end;
   end;
end;

procedure TFrm_Bco.rg_replicaEnter(Sender: TObject);
begin
  inherited;
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select BCBANCO,BCCODBCO from CADBCO '
         +iif(DM1.Qr_TID.locate('TINOME','CADBCO',[]),'',' where BCCODEMP=0'+IntToStr(codemp)));
DM1.Query5.Open;
DBCB_REP_NOMBCO.Items.Clear;
While not DM1.Query5.Eof do
   begin
   DBCB_REP_NOMBCO.Items.Add(DM1.Query5.fieldByName('BCBANCO').AsString+'['+DM1.Query5.fieldbyName('BCCODBCO').AsString+']');
   DM1.Query5.Next;
   end;
end;

procedure TFrm_Bco.DBCB_REP_NOMBCOEnter(Sender: TObject);
begin
  inherited;
if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
   begin
   with DBCB_REP_NOMBCO do ItemIndex:=Items.IndexOf(DM1.Tb_BcoBCREP_NOMBCO.Value
                                    +'['+DM1.Tb_BcoBCREP_CODBCO.AsString+']');
   DBCB_REP_NOMBCO.text:=DBCB_REP_NOMBCO.Items.Strings[DBCB_REP_NOMBCO.ItemIndex];
   if not lbl_obs2.Visible then
      lbl_obs2.Visible:=true;
   end;
if macbco then
   TIPO.SetFocus;
macbco:=false;

end;

procedure TFrm_Bco.DBCB_REP_NOMBCOExit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Bco.State in [dsEdit,dsInsert] then
   begin
   if DBCB_REP_NOMBCO.ItemIndex<0 then
      with DBCB_REP_NOMBCO do ItemIndex:=Items.IndexOf(DBCB_REP_NOMBCO.Text);
   DBCB_REP_NOMBCO.text:=DBCB_REP_NOMBCO.Items.Strings[DBCB_REP_NOMBCO.ItemIndex];
   if trim(DBCB_REP_NOMBCO.Text)='' then
      DM1.Tb_BcoBCREP_CODBCO.Value:=0
   else
      begin
      DM1.Tb_BcoBCREP_CODBCO.Value:=fSonumero(fExtraiCodigoEntreChaves(DBCB_REP_NOMBCO.Text));
      DBE_REP_CODBCOExit(Self);
      end;
   end;
if lbl_obs2.Visible then
   lbl_obs2.Visible:=false;


end;

procedure TFrm_Bco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Bco.bbProximaClick(Sender: TObject);
begin
  inherited;
  if (not btn_incluir.Enabled) and (not btn_alterar.Enabled) then begin
     PC1.ActivePage := TabSheet2;
     DBCheckBox15.SetFocus;
  end;
end;

procedure TFrm_Bco.DBEdit7Exit(Sender: TObject);
begin
  inherited;
DBEdit7.Text:=TRIM(DBEdit7.Text);
end;

procedure TFrm_Bco.Tb_Bco_FaturAfterInsert(DataSet: TDataSet);
begin
  inherited;
if DM1.Tb_BcoBCCODBCO.AsInteger=0 then
   begin
   MessageDlg('Favor Criar um banco primeiro!',mtWarning,[mbOk],0);
   abort;
   exit;
   end;
Tb_Bco_FaturBCF_CODEMP.AsInteger:=codemp;
mAnt_Mes   :=0;
mAnt_Ano   :=0;
bbfatur_excluir.Enabled:=false;

end;

procedure TFrm_Bco.Tb_Bco_FaturBeforePost(DataSet: TDataSet);
begin
  inherited;
if (Tb_Bco_FaturBCF_ANO.isnull) or (Tb_Bco_FaturBCF_MES.isnull) then
   begin
   Tb_bco_fatur.cancel;
   abort;
   end;

if (Tb_Bco_FaturBCF_ANO.AsInteger<2000) or (Tb_Bco_FaturBCF_ANO.AsInteger>valint(formatdatetime('yyyy', date+100))) then
   begin
   MessageDlg('Ano '+Tb_Bco_FaturBCF_ANO.asstring+' é Invalido Favor informar um ano valido!',mtWarning,[mbOk],0);
   abort;
   exit;
   end;

if (Tb_Bco_FaturBCF_MES.AsInteger<1) or (Tb_Bco_FaturBCF_MES.AsInteger>12) then
   begin
   MessageDlg('Mes '+Tb_Bco_FaturBCF_MES.asstring+' é Invalido Favor informar um mes valido!',mtWarning,[mbOk],0);
   abort;
   exit;
   end;

if (mAnt_Mes<>Tb_Bco_FaturBCF_MES.AsInteger) or (mAnt_Ano<>Tb_Bco_FaturBCF_ANO.AsInteger) then
   begin
   if fLerGenerico_query('CADBCO_FATUR','BCF_MES,BCF_ANO','BCF_ANO='+Tb_Bco_FaturBCF_ANO.AsString+' and BCF_MES='+Tb_Bco_FaturBCF_MES.AsString,query_consulta) then
      begin
      MessageDlg('Faturamento do mes '+Tb_Bco_FaturBCF_MES.AsString+' ano '+Tb_Bco_FaturBCF_ANO.AsString,mtWarning,[mbok],0 );
      abort;
      exit;
      end;
   end;

end;

procedure TFrm_Bco.Tb_Bco_FaturAfterEdit(DataSet: TDataSet);
begin
  inherited;
  mAnt_Mes   :=Tb_Bco_FaturBCF_MES.AsInteger;
  mAnt_Ano   :=Tb_Bco_FaturBCF_ANO.AsInteger;
  bbfatur_excluir.Enabled:=true;
end;

procedure TFrm_Bco.Tb_Bco_FaturAfterPost(DataSet: TDataSet);
begin
  inherited;
  bbfatur_excluir.Enabled:=true;

c(Tb_Bco_Fatur);

end;

procedure TFrm_Bco.Tb_Bco_FaturAfterCancel(DataSet: TDataSet);
begin
  inherited;
  bbfatur_excluir.Enabled:=Tb_Bco_Fatur.IsEmpty=false;

end;

procedure TFrm_Bco.bbfatur_excluirClick(Sender: TObject);
begin
  inherited;
if (Tb_Bco_Fatur.State in [dsinsert]) then
   Tb_Bco_Fatur.Cancel
else
   begin
   if Application.MessageBox(pchar('Quer realmente excluir o mes '+Tb_Bco_FaturBCF_MES.AsString+' ano '+Tb_Bco_FaturBCF_ANO.AsString+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   Tb_Bco_Fatur.Delete;
   end;
end;





function TFrm_Bco.fLerCadbco_Fatur: Boolean;
begin
Tb_Bco_Fatur.Close;
Tb_Bco_Fatur.Sql.Clear;
Tb_Bco_Fatur.Sql.Add('Select  BCF_CODEMP  ,BCF_ANO  ,BCF_MES '
                    +'  ,BCF_NAUF_VENDA_AVISTA  ,BCF_NAUF_VENDA_CHPRE '
                    +'  ,BCF_NAUF_VENDA_CHPRE_PM  ,BCF_NAUF_VENDA_CARTAO '
                    +'  ,BCF_NAUF_VENDA_DUPBOL  ,BCF_NAUF_VENDA_DUPBOL_PM '
                    +'  ,BCF_FORAUF_VENDA_AVISTA  ,BCF_FORAUF_VENDA_CHPRE '
                    +'  ,BCF_FORAUF_VENDA_CHPRE_PM  ,BCF_FORAUF_VENDA_CARTAO '
                    +'  ,BCF_FORAUF_VENDA_DUPBOL  ,BCF_FORAUF_VENDA_DUPBOL_PM '
                    +' from CADBCO_FATUR '
                    +' where BCF_CODEMP='+Inttostr(codemp)
                    +' order by BCF_ANO,BCF_MES');
try
   Tb_Bco_Fatur.open;
   result:=true;
except on e : exception do
   begin
   result:=false;
   ex_erroSql_Novo(Tb_Bco_Fatur,1393,'frm lrs'+e.Message ,'CADBCO_FATUR');
   end;
   end;

end;
procedure TFrm_Bco.c(DataSet: TDataSet);
begin
  inherited;
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;


end;

procedure TFrm_Bco.sbn_doc_novaClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;

qr_cont_imagem: TQuery;
mChave: Integer;
mIdFor: String;
begin
  inherited;


if DM1.Tb_BcoBCCODBCO.AsInteger<=0 then
   begin
   MessageDlg('Favor Gravar o Banco Primeiro Primeiro!',mtWarning,[mbOk],0);
   exit;
   end;
Tb_Bco_Documentos.append;
DBcb_BCD_CATEGORIA.SetFocus;

end;

procedure TFrm_Bco.Src_BcoDataChange(Sender: TObject; Field: TField);
begin
  inherited;


if DM1.Tb_bco.active=true then
   begin


    if (not (DM1.Tb_Bco.sTate in [dsEdit,dsInsert])
    and    (    mcodbco_lido<>DM1.Tb_BcoBCCODBCO.AsInteger)) then
       begin
       if DM1.Tb_bcoBCDOCEMIBOL.AsInteger=1 then
          begin
          edt_cnpj.EditMask:='999\.999\.999\-99;0';
          edt_cnpj.Text:=insere(DM1.Tb_BcoBCDOCBOL.Asstring,'0',11);
          lbl_BCDOCEMIBOL.caption:='CPF:';
          end
       else
          begin
          edt_cnpj.EditMask:='99\.999\.999\/9999\-99;0';
          edt_cnpj.Text:=insere(DM1.Tb_BcoBCDOCBOL.Asstring,'0',14);
          lbl_BCDOCEMIBOL.caption:='CNPJ:';
          end;
       mcodbco_lido:=DM1.Tb_BcoBCCODBCO.AsInteger;
       end;


    if DM1.Tb_BcoBCCODBCO.Asinteger<>mCodbco_Imagem_lida then
       begin
       fLerCadbco_Imagem;
       end;
    if DM1.Tb_BcoBCCODBCO.Asinteger<>mdoc_Codbco_lida then
       begin
       fLerCadbco_Doc;
       end;

end;
end;

function TFrm_Bco.fLerCadbco_Imagem:Boolean;
begin


   mCodbco_Imagem_lida:=DM1.Tb_BcoBCCODBCO.Asinteger;
end;

procedure TFrm_Bco.sbn_doc_alterarClick(Sender: TObject);
begin
  inherited;
if (Tb_Bco_Documentos.IsEmpty) or (Tb_Bco_DocumentosBCD_CODBCO.IsNull) then
   begin
   MessageDlg('Nao ha registros a serem alterados!',mtWarning,[mbOk],0);
   exit;
   end;

if Tb_Bco_DocumentosBCD_CODBCO.AsInteger<=0 then
   begin
   MessageDlg('Favor Gravar o Fornecedor Primeiro!',mtWarning,[mbOk],0);
   exit;
   end;
Tb_Bco_Documentos.Edit;
DBcb_BCD_CATEGORIA.SetFocus;





end;

procedure TFrm_Bco.sbn_doc_buscarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg: TJPEGImage;
begin
  inherited;


if DM1.Tb_BcoBCCODBCO.AsInteger<=0 then
   begin
   MessageDlg('Favor Gravar o Banco Primeiro Primeiro!',mtWarning,[mbOk],0);
   exit;
   end;
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
   Tb_Bco_DocumentosBCD_DOCUMENTO.LoadFromStream(imagestream);
   Tb_Bco_DocumentosBCD_CODEMP.Value := codemp;
   Tb_Bco_DocumentosBCD_CODBCO.Value := DM1.Tb_BcoBCCODBCO.AsFloat;

   if trim(frm_Imagem_WebCam.edt_obs.Text)='' then
      begin
      Tb_Bco_DocumentosBCD_OBS.AsString                 :='IMAGEM';
      end
   else
      begin
      Tb_Bco_DocumentosBCD_OBS.AsString                 :=frm_Imagem_WebCam.edt_obs.Text;
      end;
   if trim(frm_Imagem_WebCam.mNomeArquivo)<>'' then
      Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.AsString    :=Fnomearq_Pasta(0, frm_Imagem_WebCam.mNomeArquivo);

   freeandnil(imagestream);   
   end;
freeandnil(frm_imagem_WebCam);

end;

procedure TFrm_Bco.Tb_Bco_DocumentosAfterInsert(DataSet: TDataSet);
begin
  inherited;
   Tb_Bco_DocumentosBCD_CODEMP.Value := codemp;
   Tb_Bco_DocumentosBCD_CODBCO.Value := DM1.Tb_BcoBCCODBCO.AsFloat;
   sbn_doc_nova.Enabled   :=false;
   sbn_doc_alterar.Enabled:=false;
   SBn_doc_Excluir.Enabled:=true;
   sbn_doc_buscar.Enabled  :=true;
   sbn_doc_gravar.Enabled  :=true;
   pBloqueiaCampos(false);


end;

procedure TFrm_Bco.Tb_Bco_DocumentosAfterEdit(DataSet: TDataSet);
begin
  inherited;
   sbn_doc_nova.Enabled   :=false;
   sbn_doc_alterar.Enabled:=false;
   SBn_doc_Excluir.Enabled:=true;
   sbn_doc_buscar.Enabled  :=true;
   sbn_doc_gravar.Enabled  :=true;
   pBloqueiaCampos(false);

end;

procedure TFrm_Bco.Tb_Bco_DocumentosAfterPost(DataSet: TDataSet);
begin
  inherited;
   sbn_doc_nova.Enabled   :=true;
   sbn_doc_alterar.Enabled:=Tb_Bco_Documentos.IsEmpty=false;
   SBn_doc_Excluir.Enabled:=Tb_Bco_Documentos.IsEmpty=false;
   sbn_doc_buscar.Enabled  :=false;
   sbn_doc_gravar.Enabled  :=false;
   pBloqueiaCampos(true);

end;

procedure TFrm_Bco.Tb_Bco_DocumentosAfterCancel(DataSet: TDataSet);
begin
  inherited;
   sbn_doc_nova.Enabled   :=true;
   sbn_doc_alterar.Enabled:=Tb_Bco_Documentos.IsEmpty=false;
   sbn_doc_excluir.Enabled:=Tb_Bco_Documentos.IsEmpty=false;
   sbn_doc_buscar.Enabled  :=false;
   sbn_doc_gravar.Enabled  :=false;
   pBloqueiaCampos(true);


end;

procedure TFrm_Bco.Tb_Bco_DocumentosAfterDelete(DataSet: TDataSet);
begin
  inherited;
   sbn_doc_nova.Enabled   :=true;
   sbn_doc_alterar.Enabled:=Tb_Bco_Documentos.IsEmpty=false;
   sbn_doc_excluir.Enabled:=Tb_Bco_Documentos.IsEmpty=false;
   sbn_doc_buscar.Enabled  :=false;
   sbn_doc_gravar.Enabled  :=false;
   pBloqueiaCampos(true);

end;

procedure TFrm_Bco.sbn_doc_gravarClick(Sender: TObject);
var
imagestream:  TMemoryStream;
 qr_cont_imagem: TQuery;
begin
  inherited;


if DM1.Tb_BcoBCCODBCO.AsInteger<=0 then
   begin
   MessageDlg('Favor Gravar o Banco Primeiro Primeiro!',mtWarning,[mbOk],0);
   exit;
   end;
if Tb_Bco_DocumentosBCD_DOCUMENTO.IsNull=true then
   begin
   MessageDlg('Não ha documento anexado!',mtWarning,[mbOk],0);
   exit;
   end;

 qr_cont_imagem:=TQuery.create(Nil);
 qr_cont_imagem.databaseName:='SG_ASSOC';

if Tb_Bco_DocumentosBCD_SEQ.AsInteger=0 then
   begin
   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Select max(BCD_SEQ) as cod from CADBCO_DOCUMENTOS '
                    +' where BCD_CODBCO=:CODBCO '
                    );
   qr_cont_imagem.ParamByName('CODBCO').AsFloat     :=DM1.Tb_BcoBCCODBCO.AsFloat;
   qr_cont_imagem.open;
   Tb_Bco_DocumentosBCD_SEQ.AsInteger:=qr_cont_imagem.fieldbyName('cod').AsInteger+1;
   end;
{

   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Insert into CADBCO_DOCUMENTOS ( '
                         +'BCD_CODEMP '
                         +',BCD_CODBCO '
                         +',BCD_SEQ '
                         +',BCD_CATEGORIA'
                         +',BCD_OBS  '
                         +',BCD_NOMEDOC_ORIGINAL '
                         +',BCD_DOCUMENTO '
                         +') values ('
                         +':BCD_CODEMP '
                         +',:BCD_CODBCO '
                         +',:BCD_SEQ '
                         +',:BCD_CATEGORIA'
                         +',:BCD_OBS  '
                         +',:BCD_NOMEDOC_ORIGINAL '
                         +',:BCD_DOCUMENTO '
                         +')');

   end
else
   begin


   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;
   qr_cont_imagem.SQL.Add('Update  CADBCO_DOCUMENTOS set  '
                         +' BCD_CATEGORIA=:BCD_CATEGORIA'
                         +',BCD_OBS=:BCD_OBS  '
                         +',BCD_NOMEDOC_ORIGINAL=:BCD_NOMEDOC_ORIGINAL '
                         +',BCD_DOCUMENTO=:BCD_DOCUMENTO '
                         +' where BCD_CODEMP=:BCD_CODEMP '
                         +' and BCD_CODBCO=:BCD_CODBCO '
                         +' and BCD_SEQ=:BCD_SEQ ');
   end;
   }
imagestream:=TMemoryStream.Create;
{
qr_cont_imagem.ParamByName('BCD_CODEMP').AsFloat               := codemp;
qr_cont_imagem.ParamByName('BCD_CODBCO').AsFloat               := DM1.Tb_BcoBCCODBCO.AsFloat;
qr_cont_imagem.ParamByName('BCD_SEQ').AsInteger                := Tb_Bco_DocumentosBCD_SEQ.AsInteger;
qr_cont_imagem.ParamByName('BCD_CATEGORIA').AsString           := Tb_Bco_DocumentosBCD_CATEGORIA.AsString;
qr_cont_imagem.ParamByName('BCD_OBS').AsString                 := Tb_Bco_DocumentosBCD_OBS.AsString;
qr_cont_imagem.ParamByName('BCD_NOMEDOC_ORIGINAL').AsString    := Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.AsString;
Tb_Bco_DocumentosBCD_DOCUMENTO.SaveToStream(imagestream);
qr_cont_imagem.ParamByName('BCD_DOCUMENTO').LoadFromStream(imagestream, ftBlob);

try
   qr_cont_imagem.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(qr_cont_imagem,1704,'frm_contrato','CADBCO_DOCUMENTOS');
   end;
}

FreeAndNil(qr_cont_imagem);
FreeAndNil(imagestream);

Tb_Bco_Documentos.Post;
mcodbco_imagem_lida:=-1;
Src_BcoDataChange(DM1.Tb_Bco,DM1.Tb_BcoBCCODEMP);




end;

procedure TFrm_Bco.sbn_doc_excluirClick(Sender: TObject);
//var
//qr_cont_imagem: tquery;
begin
  inherited;
if Tb_Bco_Documentos.State in [dsinsert] then
   Tb_Bco_Documentos.Cancel
else
   begin
   if Application.MessageBox(pchar('Quer realmente excluir o documento '+Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.AsString+'?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
{
   qr_cont_imagem:=TQuery.create(Nil);
   qr_cont_imagem.databaseName:='SG_ASSOC';
   qr_cont_imagem.Close;
   qr_cont_imagem.SQL.Clear;

   qr_cont_imagem.SQL.Add('delete from CADBCO_DOCUMENTOS '
                         +' where BCD_CODEMP=:BCD_CODEMP '
                         +' and BCD_CODBCO=:BCD_CODBCO '
                         +' and BCD_SEQ=:BCD_SEQ ');
   qr_cont_imagem.ParamByName('BCD_CODEMP').AsFloat               := codemp;
   qr_cont_imagem.ParamByName('BCD_CODBCO').AsFloat               := DM1.Tb_BcoBCCODBCO.AsFloat;
   qr_cont_imagem.ParamByName('BCD_SEQ').AsInteger                := Tb_Bco_DocumentosBCD_SEQ.AsInteger;
   try
      qr_cont_imagem.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(qr_cont_imagem,1745,'frm_contrato','CADBCO_DOCUMENTOS');
      end;
   qr_cont_imagem.close;
   FreeAndNil(qr_cont_imagem);
}
   Tb_Bco_Documentos.delete;
   end;
end;


procedure TFrm_Bco.pBloqueiaCampos(pBloqueia: Boolean);
begin

DBcb_BCD_CATEGORIA.ReadOnly        :=pBloqueia;
DB_BCD_OBS.ReadOnly                :=pBloqueia;
DBE_BCD_NOMEDOC_ORIGINAL.ReadOnly  :=pBloqueia;
end;

procedure TFrm_Bco.DBGrid_documentosDblClick(Sender: TObject);
var
imagestream:  TMemoryStream;
jpg:TJPEGImage;

begin
  inherited;



if not Tb_Bco_DocumentosBCD_DOCUMENTO.IsNull then
   begin

   imagestream:=TMemoryStream.Create;
   Tb_Bco_DocumentosBCD_DOCUMENTO.SaveToStream(imagestream);
   imagestream.Position := 0;

   if (trim(Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.asstring)='') then
      begin
      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( imageStream );
      Application.Createform(TFrm_Fig_TelaCheia, Frm_Fig_TelaCheia);
      Frm_Fig_TelaCheia.Image1.Picture.Bitmap.Assign(jpg);
      Frm_Fig_TelaCheia.ShowModal;
      freeandnil(Frm_Fig_TelaCheia);
      freeandnil(jpg);
      end
   else
      begin
      try
         if trim(Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.asstring)<>'' then
            begin
            imagestream.SaveToFile(mcamtmp+'\'+Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.asstring);
            fExecutarArquivo(mcamtmp+'\'+Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.asstring);
            fAdicionarTempDel(mcamtmp+'\'+Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.asstring);
            end
         else
            begin
            messagedlg('nao foi possivel identificar o arquivo!',mterror,[mbOK],0);
            end;

      except
         messagedlg('Não foi possivel gerar o arquivo '+mcamtmp+'\'+Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.asstring,mtError,[mbOk],0);
         end;
      end;
   freeandnil(imagestream);
   end;


end;

function TFrm_Bco.fLerCadbco_Doc: Boolean;
begin

if DM1.Tb_BcoBCCODBCO.Asinteger>0 then
   begin
   DM1_ADO.ADOConnection1.Close;
   DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
   DM1_ADO.ADOConnection1.Open;

   Tb_Bco_Documentos.close;

   Tb_Bco_Documentos.ParamCheck:=true;

   Tb_Bco_Documentos.Connection:=DM1_ADO.ADOConnection1;
   Tb_Bco_Documentos.close;
   Tb_Bco_Documentos.Parameters.Clear;

   Tb_Bco_Documentos.sql.clear;
   Tb_Bco_Documentos.sql.add('Select BCD_CODEMP,'
                            +'       BCD_CODBCO, '
                            +'       BCD_SEQ, '
                            +'       BCD_CATEGORIA, '
                            +'       BCD_OBS, '
                            +'       BCD_NOMEDOC_ORIGINAL, '
                            +'       BCD_DOCUMENTO  '
                            +' from CADBCO_DOCUMENTOS '
                            +' where BCD_CODEMP='+Inttostr(codemp)
                            +' and BCD_CODBCO='+DM1.Tb_BcoBCCODBCO.Asstring
                            +' ORDER BY BCD_SEQ ');
   //Tb_Bco_Documentos.Parameters.ParamByName('CODEMP').Value:=codemp;
   //Tb_Bco_Documentos.Parameters.ParamByName('CODBCO').Value:=DM1.Tb_BcoBCCODBCO.AsInteger;
   try
      Tb_Bco_Documentos.Open;
      result:=true;
   except
      Tb_Bco_Documentos.SQL.SaveToFile(mpastatemp + 'SQL.txt');
      result:=false;
      end;

   mdoc_Codbco_lida:=DM1.Tb_BcoBCCODBCO.AsInteger;
   end;

end;
procedure TFrm_Bco.DBGrid_bco_faturDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

var

   S1, S2: string;
   mtam: Integer;

//  DrawState: Integer;
//  DrawRect: TRect;

const
 colconst01=17;
 colconst02=20;
 colconst03=-2;
 colconstServ=3;

var
 Check: Integer;
R: TRect;

begin
  inherited;


// interno normal

mtam:=1;



mtam:=DBGrid_bco_fatur.Columns[mcol_mes].Width
     +DBGrid_bco_fatur.Columns[mcol_ano].Width;

lbl_periodo.Width:=mtam+6;

lbl_dentrouf.Left:=colconst01;

// acabado interno
mtam:=DBGrid_bco_fatur.Columns[mcol_NAUF_VENDA_AVISTA].Width
     +DBGrid_bco_fatur.Columns[mcol_NAUF_VENDA_CHPRE].Width
     +DBGrid_bco_fatur.Columns[mcol_NAUF_VENDA_CHPRE_PM].Width
     +DBGrid_bco_fatur.Columns[mcol_NAUF_VENDA_CARTAO].Width
     +DBGrid_bco_fatur.Columns[mcol_NAUF_VENDA_DUPBOL].Width
     +DBGrid_bco_fatur.Columns[mcol_NAUF_VENDA_DUPBOL_PM].Width;

lbl_dentrouf.Width:=mtam+2;
lbl_dentrouf.Left:=colconst02
                  +DBGrid_bco_fatur.Columns[mcol_mes].Width
                  +DBGrid_bco_fatur.Columns[mcol_ano].Width;


mtam:=DBGrid_bco_fatur.Columns[mcol_FORAUF_VENDA_AVISTA].Width
     +DBGrid_bco_fatur.Columns[mcol_FORAUF_VENDA_CHPRE].Width
     +DBGrid_bco_fatur.Columns[mcol_FORAUF_VENDA_CHPRE_PM].Width
     +DBGrid_bco_fatur.Columns[mcol_FORAUF_VENDA_CARTAO].Width
     +DBGrid_bco_fatur.Columns[mcol_FORAUF_VENDA_DUPBOL].Width
     +DBGrid_bco_fatur.Columns[mcol_FORAUF_VENDA_DUPBOL_PM].Width;

lbl_forauf.Left :=lbl_dentrouf.Left+mtam;



lbl_forauf.Width:=mtam+colconst03;



end;

procedure TFrm_Bco.DBGrid_bco_faturKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if key in ['.',','] then
   key:=DecimalSeparator;
end;

procedure TFrm_Bco.Tb_Bco_FaturCalcFields(DataSet: TDataSet);
begin
  inherited;
Tb_Bco_Faturtotal.AsFloat:=Tb_Bco_FaturBCF_NAUF_VENDA_AVISTA.asfloat
                          +Tb_Bco_FaturBCF_NAUF_VENDA_CHPRE.asfloat
                          +Tb_Bco_FaturBCF_NAUF_VENDA_CHPRE_PM.asfloat
                          +Tb_Bco_FaturBCF_NAUF_VENDA_CARTAO.asfloat
                          +Tb_Bco_FaturBCF_NAUF_VENDA_DUPBOL.asfloat
                          +Tb_Bco_FaturBCF_NAUF_VENDA_DUPBOL_PM.asfloat
                          +Tb_Bco_FaturBCF_FORAUF_VENDA_AVISTA.asfloat
                          +Tb_Bco_FaturBCF_FORAUF_VENDA_CHPRE.asfloat
                          +Tb_Bco_FaturBCF_FORAUF_VENDA_CHPRE_PM.asfloat
                          +Tb_Bco_FaturBCF_FORAUF_VENDA_CARTAO.asfloat
                          +Tb_Bco_FaturBCF_FORAUF_VENDA_DUPBOL.asfloat
                          +Tb_Bco_FaturBCF_FORAUF_VENDA_DUPBOL_PM.asfloat;

end;

procedure TFrm_Bco.bbInserir_autoClick(Sender: TObject);
begin
  inherited;
gb_inserir_automaticamente.Visible:=true;
lbl_perc_acres.Visible            :=false;
edt_percacres.Visible             :=false;

end;

procedure TFrm_Bco.bbInserirAgoraClick(Sender: TObject);
var
query_inserir: tQuery;
begin
  inherited;
if (fsonumero(edt_datini.Text)=0) then
   begin
   MessageDlg('Favor Digitar a data inicial!',mtWarning,[mbok],0);
   edt_datini.SetFocus;
   exit;
   end;

if (fsonumero(edt_datfin.Text)=0) then
   begin
   MessageDlg('Favor Digitar a data final!',mtWarning,[mbok],0);
   edt_datfin.SetFocus;
   exit;
   end;

if edt_datini.Date>edt_datfin.date then
   begin
   MessageDlg('Data inicial maior que final é invalido!',mtWarning,[mbok],0);
   edt_datini.SetFocus;
   exit;
   end;
query_inserir:=tQuery.create(nil);
query_inserir.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

if edt_percacres.Visible then
   begin
   if ValFloat(edt_percacres.Text)=0 then
      begin
      MessageDlg('Percentual tem que ser colocado!',mtWarning,[mbOk],0);
      exit;
      end;


   query_inserir.SQL.add('update cadbco_fatur set '
                        +'BCF_NAUF_VENDA_AVISTA=case when nvl(BCF_NAUF_VENDA_AVISTA,0)=0 then 0 else BCF_NAUF_VENDA_AVISTA+(BCF_NAUF_VENDA_AVISTA * :PERC / 100) end '
                        +',BCF_NAUF_VENDA_CHPRE=case when nvl(BCF_NAUF_VENDA_CHPRE,0)=0 then 0 else BCF_NAUF_VENDA_CHPRE+(BCF_NAUF_VENDA_CHPRE * :PERC / 100) end '
                        +',BCF_NAUF_VENDA_CARTAO=case when nvl(BCF_NAUF_VENDA_CARTAO,0)=0 then 0 else BCF_NAUF_VENDA_CARTAO+(BCF_NAUF_VENDA_CARTAO * :PERC / 100) end '
                        +',BCF_NAUF_VENDA_DUPBOL=case when nvl(BCF_NAUF_VENDA_DUPBOL,0)=0 then 0 else BCF_NAUF_VENDA_DUPBOL+(BCF_NAUF_VENDA_DUPBOL * :PERC / 100) end '
                        +',BCF_FORAUF_VENDA_AVISTA=case when nvl(BCF_FORAUF_VENDA_AVISTA,0)=0 then 0 else BCF_FORAUF_VENDA_AVISTA+(BCF_FORAUF_VENDA_AVISTA * :PERC / 100) end '
                        +',BCF_FORAUF_VENDA_CHPRE=case when nvl(BCF_FORAUF_VENDA_CHPRE,0)=0 then 0 else BCF_FORAUF_VENDA_CHPRE+(BCF_FORAUF_VENDA_CHPRE * :PERC / 100) end '
                        +',BCF_FORAUF_VENDA_CARTAO=case when nvl(BCF_FORAUF_VENDA_CARTAO,0)=0 then 0 else BCF_FORAUF_VENDA_CARTAO+(BCF_FORAUF_VENDA_CARTAO * :PERC / 100) end '
                        +',BCF_FORAUF_VENDA_DUPBOL=case when nvl(BCF_FORAUF_VENDA_DUPBOL,0)=0 then 0 else BCF_FORAUF_VENDA_DUPBOL+(BCF_FORAUF_VENDA_DUPBOL * :PERC / 100) end '
                        +' where '
                        +' BCF_CODEMP=:CODEMP '
                        +' and (BCF_ANO>:ANO_INI '
                        +' or BCF_ANO=:ANO_INI and BCF_MES>=:MES_INI) '
                        +' and (BCF_ANO<:ANO_FIN '
                        +' or BCF_ANO=:ANO_FIN and BCF_MES<=:MES_FIN) ');
   query_inserir.parambyname('PERC').AsFloat       := valfloat(edt_percacres.Text);
   query_inserir.parambyname('CODEMP').asinteger   := codemp;
   query_inserir.parambyname('ANO_INI').Asinteger  := valint(formatdatetime('yyyy', edt_datini.Date));
   query_inserir.parambyname('MES_INI').Asinteger  := valint(formatdatetime('mm', edt_datini.Date));

   query_inserir.parambyname('ANO_FIN').Asinteger  := valint(formatdatetime('yyyy', edt_datfin.Date));
   query_inserir.parambyname('MES_FIN').Asinteger  := valint(formatdatetime('mm', edt_datfin.Date));

   try
      query_inserir.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_inserir,2096,'frm lrs'+e.Message ,'CADBCO_FATUR');
      freeandnil(query_inserir);
      exit;
      end;
      end;
   end
else
   begin
   query_inserir.SQL.add('Delete from CADBCO_FATUR where '
                        +' BCF_CODEMP=:CODEMP '
                        +' and (BCF_ANO>:ANO_INI '
                        +' or BCF_ANO=:ANO_INI and BCF_MES>=:MES_INI) '
                        +' and (BCF_ANO<:ANO_FIN '
                        +' or BCF_ANO=:ANO_FIN and BCF_MES<=:MES_FIN) ');
   query_inserir.parambyname('CODEMP').asinteger   := codemp;
   query_inserir.parambyname('ANO_INI').Asinteger  := valint(formatdatetime('yyyy', edt_datini.Date));
   query_inserir.parambyname('MES_INI').Asinteger  := valint(formatdatetime('mm', edt_datini.Date));

   query_inserir.parambyname('ANO_FIN').Asinteger  := valint(formatdatetime('yyyy', edt_datfin.Date));
   query_inserir.parambyname('MES_FIN').Asinteger  := valint(formatdatetime('mm', edt_datfin.Date));

   try
      query_inserir.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_inserir,2096,'frm lrs'+e.Message ,'CADBCO_FATUR');
      freeandnil(query_inserir);
      exit;
      end;
      end;
   query_inserir.close;
   query_inserir.sql.clear;
   query_inserir.sql.add('insert into CADBCO_FATUR ( '
                        +'BCF_CODEMP '
                        +',BCF_ANO '
                        +',BCF_MES '
                        +',BCF_NAUF_VENDA_AVISTA '
                        +',BCF_NAUF_VENDA_CHPRE '
                        +',BCF_NAUF_VENDA_CHPRE_PM '
                        +',BCF_NAUF_VENDA_CARTAO '
                        +',BCF_NAUF_VENDA_DUPBOL '
                        +',BCF_NAUF_VENDA_DUPBOL_PM '
                        +',BCF_FORAUF_VENDA_AVISTA '
                        +',BCF_FORAUF_VENDA_CHPRE '
                        +',BCF_FORAUF_VENDA_CHPRE_PM '
                        +',BCF_FORAUF_VENDA_CARTAO '
                        +',BCF_FORAUF_VENDA_DUPBOL '
                        +',BCF_FORAUF_VENDA_DUPBOL_PM '
                        +') '
                        +' select '+inttostr(codemp)+' as codemp '
                        +',ANO AS BCF_ANO '
                        +',MES AS BCF_MES '
                        +',VALFPNAUF00 AS BCF_NAUF_VENDA_AVISTA '
                        +',VALFPNAUF01+VALFPNAUF02+VALFPNAUF13+VALFPNAUF14+VALFPNAUF18 AS BCF_NAUF_VENDA_CHPRE'
                        +',PRAZO AS BCF_NAUF_VENDA_CHPRE_PM '
                        +',VALFPNAUF03+VALFPNAUF04+VALFPNAUF05+VALFPNAUF06+VALFPNAUF12+VALFPNAUF15+VALFPNAUF17 AS BCF_NAUF_VENDA_CARTAO '
                        +' ,VALFPNAUF08+VALFPNAUF10+VALFPNAUF11+VALFPNAUF16+VALFPNAUFOUTRAS AS BCF_NAUF_VENDA_DUPBOL '
                        +',PRAZO AS BCF_NAUF_VENDA_DUPBOL_PM '


                        +',VALFPFORAUF00 AS BCF_FORAUF_VENDA_AVISTA '
                        +',VALFPFORAUF01+VALFPFORAUF02+VALFPFORAUF13+VALFPFORAUF14+VALFPFORAUF18 AS BCF_FORAUF_VENDA_CHPRE'
                        +',PRAZO AS BCF_FORAUF_VENDA_CHPRE_PM '
                        +',VALFPFORAUF03+VALFPFORAUF04+VALFPFORAUF05+VALFPFORAUF06+VALFPFORAUF12+VALFPFORAUF15+VALFPFORAUF17 AS BCF_FORAUF_VENDA_CARTAO '
                        +' ,VALFPFORAUF08+VALFPFORAUF10+VALFPFORAUF11+VALFPFORAUF16+VALFPFORAUFOUTRAS  AS BCF_FORAUF_VENDA_DUPBOL '
                        +',PRAZO AS BCF_FORAUF_VENDA_DUPBOL_PM '
                        +'   FROM ( '
                        +'SELECT SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=0 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF00 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=1 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF01 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=2 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF02 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=3 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF03 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=4 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF04 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=5 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF05 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=6 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF06'
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=7 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF07 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=8 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF08 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=9 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF09 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=10 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF10 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=11 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF11 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=12 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF12 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=13 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF13 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=14 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF14 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=15 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF15 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=16 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF16 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=17 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF17 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=18 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF18 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and FPVINCULO=19 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUF19 '
                        +'      ,SUM(CASE WHEN CCODLOC=:CODLOC and (FPVINCULO<0 or FPVINCULO>19) THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPNAUFOUTRAS '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=0 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF00 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=1 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF01 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=2 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF02 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=3 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF03 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=4 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF04 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=5 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF05 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=6 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF06 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=7 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF07 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=8 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF08 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=9 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF09 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=10 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF10 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=11 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF11 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=12 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF12 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=13 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF13 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=14 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF14 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=15 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF15 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=16 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF16 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=17 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF17 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=18 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF18 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and FPVINCULO=19 THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUF19 '
                        +'      ,SUM(CASE WHEN CCODLOC<>:CODLOC and (FPVINCULO<0 or FPVINCULO>19) THEN FPCR.FPVALOR ELSE 0 END ) AS VALFPFORAUFOUTRAS '
                        +' ,0  AS PRAZO '
                        +',TO_CHAR(FPDATA, '+QuotedStr('MM')+') AS MES '
                        +',TO_CHAR(FPDATA, '+QuotedStr('YYYY')+') AS ANO '
                        +' FROM FPCR,CADCLI WHERE CCODCLI=FPCR.FPCODCLI '
                        +' AND FPDATA>=:DATINI and FPDATA<=:DATFIN '
                        +' GROUP BY TO_CHAR(FPDATA, '+QuotedStr('MM')+') '
                        +',TO_CHAR(FPDATA, '+QuotedStr('YYYY')+') '
                        +') FP '
                        +'ORDER BY ANO,MES '
                        );

   query_inserir.ParamByName('CODLOC').AsFloat     :=DM1.Tb_EmpCODLOC.AsFloat;
   query_inserir.ParamByName('DATINI').asdatetime:=edt_datini.Date;
   query_inserir.ParamByName('DATFIN').asdatetime:=edt_datfin.Date;

   try
      query_inserir.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_inserir,2202,'frm lrs'+e.Message ,'CADBCO_FATUR');
      freeandnil(query_inserir);
      exit;
      end;
      end;
   end;   

query_inserir.close;
freeandnil(query_inserir);
fLerCadbco_Fatur;



end;

procedure TFrm_Bco.sbn_visualizar_AtualizadoClick(Sender: TObject);

var

query_fatur : tQuery;
x_proc: Integer;
x_ultmes: Integer;
x_mes: Integer;

mcasas_excel: string;
    function fAdiacionarArray(pProcura,pSubstituir: string): Boolean;
    begin
    x_proc:=x_proc+1;
    setlength(frm_banco_legenda.mprocsub,x_proc);
    setlength(frm_banco_legenda.mprocsub[x_proc-1],2);
    Frm_banco_Legenda.mprocsub[x_proc-1,0]:=pProcura;
    Frm_banco_Legenda.mprocsub[x_proc-1,1]:=pSubstituir;

    result:=true;

    end;

begin
  inherited;

if length(Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.AsString)<1 then
   begin
   MessageDlg('Não ha um documento a ser salvo!',mtWarning,[mbOk],0);
   exit;
   end;
Application.CreateForm(TFrm_banco_Legenda,Frm_Banco_Legenda);
Frm_banco_Legenda.mNomeArquivo:=mcamtmp+'\'+Tb_Bco_DocumentosBCD_NOMEDOC_ORIGINAL.AsString;

if not fSalvarDocumento(Tb_Bco_DocumentosBCD_DOCUMENTO,Frm_banco_Legenda.mNomeArquivo) then
   begin
   MessageDlg('Nao foi possivel gerar o arquivo temporario!',mtWarning,[mbOk],0);
   exit;
   end;



x_proc:=0;

Tb_Bco_Fatur.First;
x_proc:=0;
fAdiacionarArray('{EMP_RAZSOC}',DM1.Tb_EmpRAZAO.AsString);
fAdiacionarArray('{EMP_CNPJ}',MaskCPFCNPJ(insere(DM1.Tb_EmpCGC.AsString,'0',14)));
fAdiacionarArray('{EMP_IE}',DM1.Tb_EmpINSCRICAO.AsString);
fAdiacionarArray('{EMP_EMAIL}',DM1.Tb_EmpE_MAIL.AsString);


query_fatur:=tQuery.create(nil);
query_fatur.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_fatur.SQL.add('Select rownum as mes, BCF_CODEMP '
                   +',BCF_ANO,BCF_MES,BCF_NAUF_VENDA_AVISTA '
                   +',BCF_NAUF_VENDA_CHPRE,BCF_NAUF_VENDA_CHPRE_PM '
                   +',BCF_NAUF_VENDA_CARTAO,BCF_NAUF_VENDA_DUPBOL '
                   +',BCF_NAUF_VENDA_DUPBOL_PM,BCF_FORAUF_VENDA_AVISTA '
                   +',BCF_FORAUF_VENDA_CHPRE,BCF_FORAUF_VENDA_CHPRE_PM '
                   +',BCF_FORAUF_VENDA_CARTAO,BCF_FORAUF_VENDA_DUPBOL '
                   +',BCF_FORAUF_VENDA_DUPBOL_PM '
                   +' from CADBCO_FATUR where '
                     +' BCF_CODEMP=:CODEMP '
                     +' and (BCF_ANO>:ANO_INI '
                     +' or BCF_ANO=:ANO_INI and BCF_MES>=:MES_INI) '
                     +' and (BCF_ANO<:ANO_FIN '
                     +' or BCF_ANO=:ANO_FIN and BCF_MES<=:MES_FIN) ');
query_fatur.parambyname('CODEMP').asinteger   := codemp;
query_fatur.parambyname('ANO_INI').Asinteger  := valint(formatdatetime('yyyy', edt_doc_datini.Date));
query_fatur.parambyname('MES_INI').Asinteger  := valint(formatdatetime('mm', edt_doc_datini.Date));

query_fatur.parambyname('ANO_FIN').Asinteger  := valint(formatdatetime('yyyy', edt_doc_datfin.Date));
query_fatur.parambyname('MES_FIN').Asinteger  := valint(formatdatetime('mm', edt_doc_datfin.Date));

try
   query_fatur.Open;
except on e : exception do
   ex_erroSql_Novo(query_fatur,2372,'func Erro:'+e.Message ,'CADEST');
   end;

//ex_erroSql_Novo(query_fatur,2372,'func Erro:' ,'CADEST');



fAdiacionarArray('{PERCCHQPRE}','20');

fAdiacionarArray('{PERCCHQDUPTIT}','21');
fAdiacionarArray('{PERCCARCRED}','22');
fAdiacionarArray('{PRAZOMEDIOVDAPRAZO}','23');


mcasas_excel:='##0.00';
query_fatur.first;
While not query_fatur.eof do
   begin
   fAdiacionarArray('{MESEXTENSO_ANONUMERO_'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,NMes(StrToDate('01/'
                                                     +Formatfloat('00', query_fatur.fieldbyname('BCF_MES').AsInteger)
                                                     +'/'+FormatDatetime('yyyy', date)))
                                                     +'/'
                                                     +formatfloat('0000', query_fatur.fieldbyname('BCF_ANO').AsInteger)
                                                     );

   fAdiacionarArray('{MESNUMERO_ANONUMERO_'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,Formatfloat('00', query_fatur.fieldbyname('BCF_MES').AsInteger)
                                                     +'/'
                                                     +formatfloat('0000', query_fatur.fieldbyname('BCF_ANO').AsInteger)
                                                     );

   fAdiacionarArray('{VENDA_NAUF_AVISTA'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_NAUF_VENDA_AVISTA').AsFloat))
                                                     );
   fAdiacionarArray('{VENDA_FORAUF_AVISTA'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_FORAUF_VENDA_AVISTA').AsFloat))
                                                     );

   fAdiacionarArray('{VENDA_NAUF_CHPRE'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_NAUF_VENDA_CHPRE').AsFloat))
                                                     );
   fAdiacionarArray('{VENDA_NAUF_CHPRE'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_NAUF_VENDA_CHPRE').AsFloat))
                                                     );
   fAdiacionarArray('{VENDA_FORAUF_CHPRE'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_FORAUF_VENDA_CHPRE').AsFloat))
                                                     );
   fAdiacionarArray('{VENDA_NAUF_CARTAO'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_NAUF_VENDA_CARTAO').AsFloat))
                                                     );

   fAdiacionarArray('{VENDA_FORAUF_CARTAO'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_FORAUF_VENDA_CARTAO').AsFloat))
                                                     );

   fAdiacionarArray('{VENDA_NAUF_BOLETO'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_NAUF_VENDA_DUPBOL').AsFloat))
                                                     );

   fAdiacionarArray('{VENDA_FORAUF_BOLETO'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_FORAUF_VENDA_DUPBOL').AsFloat))
                                                     );

   fAdiacionarArray('{VENDA_FORAUF_TOTPRZ'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_FORAUF_VENDA_CHPRE').AsFloat
                                                      +query_fatur.fieldbyname('BCF_FORAUF_VENDA_CARTAO').AsFloat
                                                      +query_fatur.fieldbyname('BCF_FORAUF_VENDA_DUPBOL').AsFloat)
                                                     ));


   fAdiacionarArray('{VENDA_NAUF_TOTPRZ'+formatfloat('00', query_fatur.fieldbyname('MES').AsInteger)+'}'
                                                     ,mudavp(Formatfloat(mcasas_excel, query_fatur.fieldbyname('BCF_NAUF_VENDA_CHPRE').AsFloat
                                                     +query_fatur.fieldbyname('BCF_NAUF_VENDA_CARTAO').AsFloat
                                                     +query_fatur.fieldbyname('BCF_NAUF_VENDA_DUPBOL').AsFloat))
                                                     );

   x_ultmes:=query_fatur.fieldbyname('MES').AsInteger;

   query_fatur.Next;
   end;
for x_mes:=x_ultmes to 12 do
   begin


   fAdiacionarArray('{MESEXTENSO_ANONUMERO_'+formatfloat('00', x_mes)+'}'
                                                     ,''                                                     );

   fAdiacionarArray('{MESNUMERO_ANONUMERO_'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );

   fAdiacionarArray('{VENDA_NAUF_AVISTA'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );
   fAdiacionarArray('{VENDA_FORAUF_AVISTA'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );

   fAdiacionarArray('{VENDA_NAUF_CHPRE'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );
   fAdiacionarArray('{VENDA_NAUF_CHPRE'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );
   fAdiacionarArray('{VENDA_FORAUF_CHPRE'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );
   fAdiacionarArray('{VENDA_NAUF_CARTAO'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );

   fAdiacionarArray('{VENDA_FORAUF_CARTAO'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );

   fAdiacionarArray('{VENDA_NAUF_BOLETO'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );

   fAdiacionarArray('{VENDA_FORAUF_BOLETO'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );

   fAdiacionarArray('{VENDA_FORAUF_TOTPRZ'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );


   fAdiacionarArray('{VENDA_NAUF_TOTPRZ'+formatfloat('00', x_mes)+'}'
                                                     ,''
                                                     );

   end;

Frm_Banco_Legenda.LerXls_To_StringGrid(Frm_Banco_Legenda.StringGrid1,Frm_banco_Legenda.mNomeArquivo);

Frm_banco_Legenda.BitBtn1Click(self);

Memo1.Lines.Clear;

for x_proc:=0 to high(Frm_banco_Legenda.mprocsub) do
   Memo1.Lines.add(Frm_banco_Legenda.mprocsub[x_proc,0]+' - '+Frm_banco_Legenda.mprocsub[x_proc,1] );

end;



function tFrm_Bco.fSalvarDocumento(pDocumento: tblobField; pNomeArq: String ) : boolean;

var
imagestream:  TMemoryStream;

begin
  inherited;

if pDocumento=nil then
   result:=false
else
   begin

   imagestream:=TMemoryStream.Create;
   pDocumento.SaveToStream(imagestream);
   imagestream.Position := 0;
   imagestream.SaveToFile(pNomeArq);
     fAdicionarTempDel(pNomeArq);
   freeandnil(imagestream);
   result:=true;
   end;


end;

procedure TFrm_Bco.DBEdit5Exit(Sender: TObject);
begin
  inherited;
DM1.Tb_BcoBCFONE.Value:=MaskFone(DM1.Tb_BcoBCFONE.AsString);
end;

procedure TFrm_Bco.bbAjustarValoresClick(Sender: TObject);
begin
  inherited;
gb_inserir_automaticamente.Visible:=true;
lbl_perc_acres.Visible            :=true;
edt_percacres.Visible             :=true;
end;

procedure TFrm_Bco.edt_percacresExit(Sender: TObject);
begin
  inherited;
edt_percacres.Text:=FormatFloat(mcasas_pct, valfloat(edt_percacres.Text));
end;

procedure TFrm_Bco.FormShow(Sender: TObject);
begin
  inherited;
Width:=1085;
end;

procedure TFrm_Bco.RxDBCB_BCDOCEMIBOLClick(Sender: TObject);
begin
  inherited;
if btn_gravar.Enabled=true then
   begin
   if RxDBCB_BCDOCEMIBOL.ItemIndex = 1 then
      begin
      edt_cnpj.text:=copy(fdeixanum(edt_cnpj.text),1,11);

      edt_cnpj.EditMask:='999\.999\.999\-99;0';
      lbl_BCDOCEMIBOL.caption:='CPF:';
      end
   else
      begin
      edt_cnpj.text:=insere(fdeixanum(edt_cnpj.text),'0',14);

      edt_cnpj.EditMask:='99\.999\.999\/9999\-99;0';
      lbl_BCDOCEMIBOL.caption:='CNPJ:';
      end;
   end;

end;

procedure TFrm_Bco.edt_cnpjExit(Sender: TObject);
begin
  inherited;
DM1.Tb_BcoBCDOCBOL.Value:=fdeixanum(edt_cnpj.text)
end;

end.
