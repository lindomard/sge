unit S_Pro_Farma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, ImgList, StdCtrls, Buttons, Mask,
  DB, DBCtrls, DBTables, RxDBComb, Grids, DBGrids;

type
  TFrm_Pro_Farma = class(TForm)
    ToolBar1: TToolBar;
    tb_incluir: TToolButton;
    tb_alterar: TToolButton;
    Panel1: TPanel;
    ImageList1: TImageList;
    tb_cancelar: TToolButton;
    tb_excluir: TToolButton;
    tb_Gravar: TToolButton;
    tb_Proximo: TToolButton;
    tb_Ultimo: TToolButton;
    tb_anterior: TToolButton;
    tb_Primeiro: TToolButton;
    tb_Sair: TToolButton;
    PC1: TPageControl;
    tsPrinc: TTabSheet;
    tsTab: TTabSheet;
    Pesquisapor: TLabel;
    CAMPO: TComboBox;
    Edit1: TMaskEdit;
    BBnAtu: TBitBtn;
    Label1: TLabel;
    Tb_Pro: TQuery;
    Tb_ProPDCODEMP: TFloatField;
    Tb_ProPDCODPRO: TFloatField;
    Tb_ProPDCODBAR: TFloatField;
    Tb_ProPDNOME: TStringField;
    Tb_ProPDNOME2: TStringField;
    Tb_ProPDMARCA: TStringField;
    Tb_ProPDNIVEL: TFloatField;
    Tb_ProPDCODFOR: TFloatField;
    Tb_ProPDPRECO1: TFloatField;
    Tb_ProPDPRECO2: TFloatField;
    Tb_ProPDPRECO3: TFloatField;
    Tb_ProPDPMC: TFloatField;
    Tb_ProPDPRECOA1: TFloatField;
    Tb_ProPDPRECOA2: TFloatField;
    Tb_ProPDPRECOA3: TFloatField;
    Tb_ProPDDESC1: TFloatField;
    Tb_ProPDDESC1A: TFloatField;
    Tb_ProPDDESC2: TFloatField;
    Tb_ProPDDESC3: TFloatField;
    Tb_ProPDQTDP: TFloatField;
    Tb_ProPDPRAZO: TFloatField;
    Tb_ProPDDESFIN: TFloatField;
    Tb_ProPDSIT: TStringField;
    Tb_ProPDDTUATP1: TDateTimeField;
    Tb_ProPDUSRALT1: TFloatField;
    Tb_ProPDDTUATP2: TDateTimeField;
    Tb_ProPDUSRALT2: TFloatField;
    Tb_ProPDDTUATP3: TDateTimeField;
    Tb_ProPDUSRALT3: TFloatField;
    Tb_ProPDDATAUA: TDateTimeField;
    Tb_ProPDUND: TStringField;
    Tb_ProPDCURVA: TStringField;
    Tb_ProPDCODGRU: TFloatField;
    Tb_ProPDCODCON: TFloatField;
    Tb_ProPDCODRAM: TFloatField;
    Tb_ProPDCODTIP: TFloatField;
    Tb_ProPDESTMAX: TFloatField;
    Tb_ProPDESTMIN: TFloatField;
    Tb_ProPDFRACAO: TFloatField;
    Tb_ProPDLISTA: TFloatField;
    Tb_ProPDPRECOC: TFloatField;
    Tb_ProPDPCOMC: TFloatField;
    Tb_ProPDPCOFAB: TFloatField;
    Tb_ProPDSTATUS: TFloatField;
    Tb_ProPDTABICM: TStringField;
    Tb_ProPDIPI: TFloatField;
    Tb_ProPDREGMS: TStringField;
    Tb_ProPDCLAS: TStringField;
    Tb_ProPDSECAO: TStringField;
    Tb_ProPDEMBPAD: TFloatField;
    Tb_ProPDEMBMUL: TFloatField;
    Tb_ProPDCOMIS: TFloatField;
    Tb_ProPDSEMCOM: TFloatField;
    Tb_ProPDPRZVAL: TFloatField;
    Tb_ProPDUCPR: TFloatField;
    Tb_ProPDCODUSR: TFloatField;
    Tb_ProPDSALDO: TFloatField;
    Tb_ProPDDTALT: TDateTimeField;
    Tb_ProPDHRALT: TStringField;
    Tb_ProPDEMBPAD2: TStringField;
    Tb_ProPDCODPROC: TFloatField;
    Tb_ProPDPROALT: TFloatField;
    Tb_ProPDDTULTSAI: TDateTimeField;
    Tb_ProPDDTULTENT: TDateTimeField;
    Tb_ProPDVDAMAXM: TFloatField;
    Tb_ProPDREST: TFloatField;
    Tb_ProPDPESOB: TFloatField;
    Tb_ProPDPESOL: TFloatField;
    Tb_ProPDBAIXO: TFloatField;
    Tb_ProPDALTO: TFloatField;
    Tb_ProPDDATCAD: TDateTimeField;
    Tb_ProPDNOMFOR: TStringField;
    Tb_ProPDNOMPROC: TStringField;
    Tb_ProPDNOMGRU: TStringField;
    Tb_ProPDNOMCON: TStringField;
    Tb_ProPDNOMRAM: TStringField;
    Tb_ProPDNOMTIP: TStringField;
    Tb_ProPDNOMPROALT: TStringField;
    Tb_ProPDSTATUS02: TFloatField;
    Tb_ProPDSALDOR: TFloatField;
    Tb_ProPDBAIXOR: TFloatField;
    Tb_ProPDALTOR: TFloatField;
    Tb_ProPDSALDOC: TFloatField;
    Tb_ProPDBAIXOC: TFloatField;
    Tb_ProPDALTOC: TFloatField;
    Tb_ProPDCODNCM: TStringField;
    Tb_ProPDCUSFAB: TFloatField;
    Tb_ProPDCUSENV: TFloatField;
    Tb_ProPDCUSFIN: TFloatField;
    Tb_ProPDUCODFOR: TFloatField;
    Tb_ProPDUNOMFOR: TStringField;
    Tb_ProPDCODFAB: TStringField;
    Tb_ProPDSALDOT: TFloatField;
    Tb_ProPDALTOT: TFloatField;
    Tb_ProPDBAIXOT: TFloatField;
    Tb_ProPDPMC02: TFloatField;
    Tb_ProPDPMC03: TFloatField;
    Tb_ProPDCX_PVDA: TFloatField;
    Tb_ProPDCX_PFAB: TFloatField;
    Tb_ProPDCX_PMAX: TFloatField;
    Tb_ProPDICMSCRED: TFloatField;
    Tb_ProPDICMSDEB: TFloatField;
    Tb_ProPDVLRINC: TFloatField;
    Tb_ProPDPRAT: TStringField;
    Tb_ProPDLADO: TStringField;
    Tb_ProPDRUA: TStringField;
    Tb_ProPDAPLIC: TStringField;
    Tb_ProPDAPRES: TStringField;
    Tb_ProPDQTDM3: TFloatField;
    Tb_ProPDCOMIS_EXTRA: TFloatField;
    Tb_ProPDQTDGRML: TFloatField;
    Tb_ProPDUNDVDA: TFloatField;
    Tb_ProPDBLDESCAV: TFloatField;
    Tb_ProPDRESTFOR: TFloatField;
    Tb_ProPDRESTCON: TFloatField;
    Tb_ProPDSITCF: TStringField;
    Tb_ProPDCODBAR_EMBPAD: TStringField;
    Tb_ProPDENTPEN: TFloatField;
    Tb_ProPDUSRALT: TFloatField;
    Tb_ProPDUSRINC: TFloatField;
    Tb_ProPDSALDO_PRAT: TFloatField;
    Tb_ProPDSALDO_DEP: TFloatField;
    Tb_ProPDSALDO_REP: TFloatField;
    Tb_ProPDTEMPOFAB: TFloatField;
    Tb_ProPDREFER: TStringField;
    Tb_ProPDDESCMAX: TFloatField;
    Tb_ProPDPRZVAL_ANOS: TFloatField;
    Tb_ProPDPRZVAL_DIAS: TFloatField;
    Tb_ProPDCODDEP: TFloatField;
    Tb_ProPDNOMDEP: TStringField;
    Tb_ProPDDATA_REPLICA: TDateTimeField;
    Tb_ProPDTEMFORMULA: TFloatField;
    Tb_ProPDBALANCA: TFloatField;
    Tb_ProPDVALREGMS: TDateTimeField;
    Tb_ProPDKIT: TStringField;
    Tb_ProPDCODEXT: TFloatField;
    Tb_ProPDFIS_ORIGEM: TStringField;
    Tb_ProPDFIS_CST_ICMS_EST_REV: TStringField;
    Tb_ProPDFIS_CST_ICMS_EST_CF: TStringField;
    Tb_ProPDFIS_PRED_ICMS_EST: TFloatField;
    Tb_ProPDFIS_CST_ICMS_INT_CF: TStringField;
    Tb_ProPDFIS_CST_ICMS_INT_REV: TStringField;
    Tb_ProPDFIS_PRED_ICMS_INT: TFloatField;
    Tb_ProPDFIS_CSOSN_EST_REV: TStringField;
    Tb_ProPDFIS_CSOSN_EST_CF: TStringField;
    Tb_ProPDFIS_CSOSN_INT_REV: TStringField;
    Tb_ProPDFIS_CSOSN_INT_CF: TStringField;
    Tb_ProPDFIS_CST_PISCOF_ENTRADA: TStringField;
    Tb_ProPDFIS_CST_PISCOF_SAIDA: TStringField;
    Tb_ProPDFIS_PIS_ALIQ_ENTRADA: TFloatField;
    Tb_ProPDFIS_COFINS_ALIQ_ENTRADA: TFloatField;
    Tb_ProPDFIS_PIS_ALIQ_SAIDA: TFloatField;
    Tb_ProPDFIS_COFINS_ALIQ_SAIDA: TFloatField;
    Tb_ProPDCONTESP: TFloatField;
    Tb_ProPDCMET_CONSTANTE: TFloatField;
    Tb_ProPDCMET_BITOLA: TFloatField;
    Tb_ProPDCODGEN: TStringField;
    Tb_ProPDQTD_ANALISE: TFloatField;
    Tb_ProPDDESICMS: TFloatField;
    Tb_ProPDNOME_COMPRA: TStringField;
    DBE_NOME: TDBEdit;
    src_pro: TDataSource;
    Label2: TLabel;
    DBE_NOME_COMPRA: TDBEdit;
    Label3: TLabel;
    DBE_MARCA: TDBEdit;
    Label4: TLabel;
    DBE_UND: TDBEdit;
    Label5: TLabel;
    DBE_SECAO: TDBEdit;
    Label6: TLabel;
    DBE_ESTMIN: TDBEdit;
    Label7: TLabel;
    DBE_ESTMAX: TDBEdit;
    Label8: TLabel;
    DBE_EMBPAD: TDBEdit;
    Label9: TLabel;
    DBE_EMBMUL: TDBEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBE_PRECO1: TDBEdit;
    Label11: TLabel;
    DBE_PMC: TDBEdit;
    Label12: TLabel;
    DBE_FARMA_PCOFAB: TDBEdit;
    Tb_ProPDCODBAR_TIPO: TStringField;
    Tb_ProPDFARMA_PCOFAB: TFloatField;
    Label13: TLabel;
    DBE_CODFOR: TDBEdit;
    DBE_NOMFOR: TDBEdit;
    Panel_estoque: TPanel;
    tsCodBar: TTabSheet;
    Label14: TLabel;
    DBE_CODBAR: TDBEdit;
    RxDBCB_CODBAR_TIPO: TRxDBComboBox;
    gb_outroscodbar: TGroupBox;
    Tb_Pro_CodBar: TQuery;
    Src_Pro_CodBar: TDataSource;
    Tb_Pro_CodBarCBCODEMP: TFloatField;
    Tb_Pro_CodBarCBCODPRO: TFloatField;
    Tb_Pro_CodBarCBCODBAR: TStringField;
    Tb_Pro_CodBarCBQTDMULT: TFloatField;
    Tb_Pro_CodBarCBCODBAR_TIPO: TStringField;
    DBGrid_CODBAR: TDBGrid;
    Panel_cont_codbar: TPanel;
    tsCodPFor: TTabSheet;
    GroupBox2: TGroupBox;
    DBGrid_CODPFOR: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Tb_CodPFor: TQuery;
    Src_CodPFor: TDataSource;
    Tb_CodPForPFCODEMP: TFloatField;
    Tb_CodPForPFCODPRO: TFloatField;
    Tb_CodPForPFCODFOR: TFloatField;
    Tb_CodPForPFCODPFORN: TStringField;
    Tb_CodPForPFFATOR: TFloatField;
    Tb_CodPForPFUNDFOR: TStringField;
    Tb_CodPForFRAZAO: TStringField;
    Tb_CodPForDESCR: TStringField;
    DBT_DESCR: TDBText;
    tsFiscais: TTabSheet;
    Label19: TLabel;
    db_clas: TDBEdit;
    Label34: TLabel;
    db_ipi: TDBEdit;
    Label72: TLabel;
    DBCb_TabIcm: TDBComboBox;
    Label64: TLabel;
    RxDBCB_FIS_ORIGEM: TRxDBComboBox;
    Label108: TLabel;
    TRxDBCB_LISTA: TRxDBComboBox;
    DBCB_ICMSST_LIQ: TDBCheckBox;
    btn_SPadrao: TBitBtn;
    gb_cst_icms: TGroupBox;
    Label88: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    RxDBCB_CST_ICMS_EST_REV: TRxDBComboBox;
    RxDBCB_CST_ICMS_EST_CF: TRxDBComboBox;
    DBE_PRED_ICMS_EST: TDBEdit;
    RxDBCB_CST_ICMS_INT_REV: TRxDBComboBox;
    RxDBCB_CST_ICMS_INT_CF: TRxDBComboBox;
    DBE_PRED_ICMS_INT: TDBEdit;
    gb_csosn_sn: TGroupBox;
    Label101: TLabel;
    Label102: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    RxDBCB_CSOSN_EST_REV: TRxDBComboBox;
    RxDBCB_CSOSN_EST_CF: TRxDBComboBox;
    RxDBCB_CSOSN_INT_REV: TRxDBComboBox;
    RxDBCB_CSOSN_INT_CF: TRxDBComboBox;
    gb_cstipi: TGroupBox;
    Label103: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label70: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    RxDBCB_CST_PISCOF_ENTRADA: TRxDBComboBox;
    RxDBCB_CST_PISCOF_SAIDA: TRxDBComboBox;
    EDT_PIS_ALIQ_ENTRADA: TDBEdit;
    DBE_COFINS_ALIQ_ENTRADA: TDBEdit;
    DBE_PIS_ALIQ_SAIDA: TDBEdit;
    DBE_COFINS_ALIQ_SAIDA: TDBEdit;
    tsOutros: TTabSheet;
    lbl_codgru: TLabel;
    db_codgru: TDBEdit;
    db_nomgru: TDBEdit;
    Label15: TLabel;
    db_codtip: TDBEdit;
    db_nomtip: TDBEdit;
    lbl_codram: TLabel;
    db_codram: TDBEdit;
    db_nomram: TDBEdit;
    Label16: TLabel;
    db_codcon: TDBEdit;
    db_nomcon: TDBEdit;
    Label17: TLabel;
    DBE_PESOB: TDBEdit;
    Label18: TLabel;
    DBE_PESOL: TDBEdit;
    Label20: TLabel;
    DBE_REGMS: TDBEdit;
    Tb_ProPDREFRIGERADO: TFloatField;
    Tb_ProPDSGNPC: TFloatField;
    Label21: TLabel;
    RxDBCBTP_RECEITA: TRxDBComboBox;
    DBCB_REFRI: TDBCheckBox;
    DBCB_SGNPC: TDBCheckBox;
    Label22: TLabel;
    DBE_SALDO: TDBEdit;
    DBGrid1: TDBGrid;
    DBT_CODPRO: TDBText;
    DBT_NOME: TDBText;
    Label23: TLabel;
    DBE_CODPRO: TDBEdit;
    U_CodpFor: TUpdateSQL;
    U_Pro_CodBar: TUpdateSQL;
    U_Pro: TUpdateSQL;
    Label24: TLabel;
    DBE_UCPR: TDBEdit;
    Label25: TLabel;
    DBE_PRECOC: TDBEdit;
    Label26: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Tb_ProPDCLASSE_TERAPEUTICA: TFloatField;
    Label27: TLabel;
    RxDBCB_Nivel: TRxDBComboBox;
    Label28: TLabel;
    CB_UND_FARMACOTECNICA: TRxDBComboBox;
    Label29: TLabel;
    CB_UND_INSUMO: TRxDBComboBox;
    Tb_ProPDUND_INSUMO: TFloatField;
    Tb_ProPDUND_FARMACOTECNICA: TFloatField;
    Tb_ProPDTIPO_RECEITA: TFloatField;
    Tb_ProPDUSO_MEDICAMENTO: TFloatField;
    Label30: TLabel;
    RxDBCB_USO_MEDICAMENTO: TRxDBComboBox;
    Label31: TLabel;
    DBE_PDAPRES_QTD: TDBEdit;
    Tb_ProPDAPRES_QTD: TFloatField;
    Tb_ProPDAPRES_NOME: TStringField;
    RxDBCB_PDAPRES_NOME: TRxDBComboBox;
    procedure tb_SairClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure tb_ProximoClick(Sender: TObject);
    procedure tb_UltimoClick(Sender: TObject);
    procedure tb_anteriorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure src_proDataChange(Sender: TObject; Field: TField);
    procedure PC1Change(Sender: TObject);
    procedure tb_alterarClick(Sender: TObject);
    procedure tb_cancelarClick(Sender: TObject);
    procedure tb_incluirClick(Sender: TObject);
    procedure tb_GravarClick(Sender: TObject);
    procedure Tb_ProAfterInsert(DataSet: TDataSet);
    procedure btn_SPadraoClick(Sender: TObject);
    procedure tb_excluirClick(Sender: TObject);
    procedure DBE_CODPROExit(Sender: TObject);
    procedure DBE_CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CODFORExit(Sender: TObject);
    procedure Tb_CodPForAfterInsert(DataSet: TDataSet);
    procedure Tb_CodPForAfterEdit(DataSet: TDataSet);
    procedure Tb_CodPForBeforePost(DataSet: TDataSet);
    procedure DBGrid_CODBARExit(Sender: TObject);
    procedure DBGrid_CODPFORExit(Sender: TObject);
    procedure Tb_Pro_CodBarAfterEdit(DataSet: TDataSet);
    procedure Tb_Pro_CodBarAfterInsert(DataSet: TDataSet);
    procedure Tb_Pro_CodBarBeforePost(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure DBGrid_CODPFORColExit(Sender: TObject);
    procedure DBGrid_CODPFORKeyPress(Sender: TObject; var Key: Char);
    procedure db_codgruKeyPress(Sender: TObject; var Key: Char);
    procedure db_codgruExit(Sender: TObject);
    procedure db_codtipKeyPress(Sender: TObject; var Key: Char);
    procedure db_codtipExit(Sender: TObject);
    procedure db_codramExit(Sender: TObject);
    procedure db_codramKeyPress(Sender: TObject; var Key: Char);
    procedure db_codconKeyPress(Sender: TObject; var Key: Char);
    procedure db_codconExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ToolBar1Click(Sender: TObject);
  private
    { Private declarations }

     mcodbar_ant: string;
     mCodPfor_ant: String;
     mCodfor_ant: String;

     function fLerCodBar: Boolean;
     function fLerCodpFor: Boolean;

     function fBloqueiaLiberaCampos(pLibera: Boolean): Boolean;

  public
    { Public declarations }
     proNov_ori: string;
     mAnt_Codpro: Real;
     mOper: Integer;

     function fLerCadpro(pCodPro,pNome,pMarca,pCodBar: String): Boolean;

  end;

var
  Frm_Pro_Farma: TFrm_Pro_Farma;

implementation

uses Func, func_excecoes, S_DM1, S_DM4, lerarq;

{$R *.dfm}

procedure TFrm_Pro_Farma.tb_SairClick(Sender: TObject);
begin
close;
end;





function TFrm_Pro_Farma.fLerCadpro(pCodPro,pNome,pMarca,pCodBar: String): Boolean;
begin
Tb_Pro.Close;
Tb_Pro.Close;
Tb_Pro.SQL.Clear;
Tb_Pro.SQL.Add('Select * from CADPRO ');
Tb_pro.sql.add(' Where (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) ');
Tb_pro.ParamByName('CODEMP').AsInteger:=codemp;
if codemp>100 then
  Tb_pro.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
else
  Tb_pro.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;


if fsonumero(pCodPro)<>0 then
   begin
   Tb_pro.sql.add(' and PDCODPRO=:CODPRO ');
   Tb_pro.parambyName('CODPRO').AsString:=fdeixanum(pCodpro);
   end;
if trim(pnome)<>'' then
   begin
   Tb_pro.sql.add(' and PDNOME like :NOME ');
   Tb_pro.parambyName('NOME').AsString:=pNome+'%';
   end;
if trim(pMarca)<>'' then
   begin
   Tb_pro.sql.add(' and PDMARCA like :MARCA ');
   Tb_pro.parambyName('MARCA').AsString:=pMarca+'%';
   end;

if fsonumero(pCodBar)<>0 then
   begin
   Tb_pro.sql.add(' and PDCODBAR=:CODBAR ');
   Tb_pro.parambyName('CODBAR').AsString:=fDeixaNum(pcodbar);
   end;
Tb_pro.sql.add(' order by PDNOME ');

try
   Tb_Pro.Open;
except on e : exception do
   ex_erroSql_Novo(tb_pro,409,'frm_pro_farma:'+e.Message ,'CADPRO');
   end;
if Tb_Pro.Eof then
   Result:=False
else
   Result:=True;
end;

procedure TFrm_Pro_Farma.BBnAtuClick(Sender: TObject);
begin

if CAMPO.ItemIndex=0 then
   fLerCadpro(fdeixanum(Edit1.Text),'','','')
else if CAMPO.ItemIndex=1 then
   fLerCadpro('','','',fdeixanum(Edit1.Text))
else if CAMPO.ItemIndex=2 then
   fLerCadpro('','',Edit1.Text,'')
else
   fLerCadpro('',Edit1.Text,'','');

end;

procedure TFrm_Pro_Farma.tb_ProximoClick(Sender: TObject);
begin
Tb_Pro.Next;
end;

procedure TFrm_Pro_Farma.tb_UltimoClick(Sender: TObject);
begin
Tb_Pro.Last;
end;

procedure TFrm_Pro_Farma.tb_anteriorClick(Sender: TObject);
begin
Tb_Pro.Prior;
end;

procedure TFrm_Pro_Farma.FormShow(Sender: TObject);

begin
  fBloqueiaLiberaCampos(false);

  BBnAtuClick(self);

end;

procedure TFrm_Pro_Farma.Edit1Change(Sender: TObject);
begin
BBnAtuClick(self);
end;

procedure TFrm_Pro_Farma.FormCreate(Sender: TObject);
//var
//query_tipo: tQuery;
begin
{
query_tipo:=tQuery.create(nil);
query_tipo.DatabaseName:='SG_ASSOC';
Query_tipo.SQL.Clear;
Query_tipo.SQL.Add('Select count(*) from CADTP ');
query_tipo.Open;
if query_tipo.Fields[0].AsInteger=0 then
   begin
   Query_Tipo.Close;
   Query_Tipo.SQL.Clear;
   Query_Tipo.SQL.add('Insert into CADTP ('
                     +' TCODEMP, '
                     +' TCODTIP, '
                     +' TNOME '
                     +') values ('
                     +' :TCODEMP, '
                     +' :TCODTIP, '
                     +' :TNOME '
                     +')');
   query_tipo.ParamByName('TCODEMP').value:=codemp;
   query_tipo.ParamByName('TCODTIP').value:=1;
   query_tipo.ParamByName('TNOME').value  :='ANTIMICROBIANO';
   query_tipo.ExecSQL;
   fdm1StartCommit;
   query_tipo.Close;
   query_tipo.ParamByName('TCODEMP').value:=codemp;
   query_tipo.ParamByName('TCODTIP').value:=2;
   query_tipo.ParamByName('TNOME').value  :=uppercase('Sujeito a controle Especial');
   query_tipo.ExecSQL;
   fdm1StartCommit;
   end;
}
Tb_ProPDUCPR.DisplayFormat :=mcasaspu;
Tb_ProPDPCOMC.DisplayFormat:=mcasaspu;
Tb_ProPDPRECO1.DisplayFormat:=mcasaspu;
Tb_ProPDPMC.DisplayFormat:=mcasaspu;
Tb_ProPDSALDO.DisplayFormat:=mcasqtd;
Tb_ProPDESTMAX.DisplayFormat:=mcasqtd;
Tb_ProPDESTMIN.DisplayFormat:=mcasqtd;
Tb_ProPDFARMA_PCOFAB.DisplayFormat:=mcasaspu;
Tb_ProPDPESOB.DisplayFormat:='#,##0.00';
Tb_ProPDPESOL.DisplayFormat:='#,##0.00';
Tb_ProPDIPI.DisplayFormat:=mcasas;
Tb_ProPDFIS_PRED_ICMS_EST.DisplayFormat:=mcasas;
Tb_ProPDFIS_PRED_ICMS_INT.DisplayFormat:=mcasas;
Tb_ProPDFIS_PIS_ALIQ_ENTRADA.DisplayFormat:=mcasas;
Tb_ProPDFIS_PIS_ALIQ_SAIDA.DisplayFormat:=mcasas;
Tb_ProPDFIS_COFINS_ALIQ_ENTRADA.DisplayFormat:=mcasas;
Tb_ProPDFIS_COFINS_ALIQ_SAIDA.DisplayFormat:=mcasas;
PC1.ActivePage:=tsPrinc;

end;

procedure TFrm_Pro_Farma.src_proDataChange(Sender: TObject; Field: TField);
begin
  tb_incluir.Enabled   := Not (src_pro.State in [DSINSERT,DSEDIT]);
  tb_alterar.Enabled   := Not (src_pro.State in [DSINSERT,DSEDIT]);
  tb_excluir.Enabled   := Not (src_pro.State in [DSINSERT,DSEDIT]);
  BBnAtu.Enabled := Not (src_pro.State in [DSINSERT,DSEDIT]);
//  BT_Fim.Enabled      := Not (DataSource1.State in [DSINSERT,DSEDIT]);
  tb_Gravar.Enabled    :=      src_pro.State in [DSINSERT,DSEDIT];
  tb_cancelar.Enabled  :=      src_pro.State in [DSINSERT,DSEDIT];
  tb_Ultimo.Enabled :=(not (tb_pro.eof)) AND (not (src_pro.State in [DSINSERT,DSEDIT]));
  tb_Proximo.Enabled:=(not (tb_pro.eof)) AND (not (src_pro.State in [DSINSERT,DSEDIT]));


  tb_Primeiro.Enabled:=(not (tb_pro.bof)) AND (not (src_pro.State in [DSINSERT,DSEDIT]));
  tb_anterior.Enabled:=(not (tb_pro.bof)) AND (not (src_pro.State in [DSINSERT,DSEDIT]));

if (Tb_Pro.Active) and (not Tb_ProPDCODPRO.IsNull) then
   begin
   if (PC1.ActivePage=tsCodBar) and (
      (not Tb_Pro_CodBar.Active) or (Tb_Pro_CodBarCBCODPRO.AsFloat<>Tb_ProPDCODPRO.AsFloat)
        ) then
      fLerCodBar;
   if (PC1.ActivePage=tsCodPFor) and (
      (not Tb_CodPFor.Active) or (Tb_CodPForPFCODPRO.AsFloat<>Tb_ProPDCODPRO.AsFloat) ) then
      fLerCodpFor;
   end;

end;



function TFrm_Pro_Farma.fLerCodBar: Boolean;
begin
Tb_Pro_CodBar.Close;
Tb_Pro_CodBar.SQL.clear;
Tb_Pro_CodBar.SQL.Add('Select * from CADPRO_CODBAR where '
                     +' CBCODEMP=:CODEMP  '
                     +' and CBCODPRO=:CODPRO  '
                     +' order by CBCODBAR ');
Tb_Pro_CodBar.ParamByName('CODEMP').AsInteger:=Tb_ProPDCODEMP.AsInteger;
Tb_Pro_CodBar.ParamByName('CODPRO').AsFloat  :=Tb_ProPDCODPRO.AsFloat;
Tb_Pro_CodBar.Open;






end;

function TFrm_Pro_Farma.fLerCodpFor: Boolean;
begin

Tb_CodPFor.Close;
Tb_CodPFor.SQL.clear;
Tb_CodPFor.SQL.Add('select PFCODEMP,PFCODPRO,PFCODFOR,PFCODPFORN,PFFATOR,PFUNDFOR,FRAZAO '
                  +',RPAD('+QuotedStr(' ')+',80) AS DESCR from CODPFOR,CADFOR '
                  +' WHERE FCODFOR=PFCODFOR '
                  +' and PFCODEMP=:CODEMP '
                  +' and PFCODPRO=:CODPRO ');
if not DM1.Qr_Tid.Locate('TINOME','CADFOR',[]) then
   Tb_CodPFor.SQL.Add(' and FCODEMP=CODEMP ');
Tb_CodPFor.SQL.Add(' order by FRAZAO ');
Tb_CodPFor.ParamByName('CODEMP').AsInteger:=Tb_ProPDCODEMP.AsInteger;
Tb_CodPFor.ParamByName('CODPRO').AsFloat  :=Tb_ProPDCODPRO.AsFloat;
Tb_CodPFor.open;
end;

procedure TFrm_Pro_Farma.PC1Change(Sender: TObject);
begin
if (Tb_Pro.Active) and (not Tb_ProPDCODPRO.IsNull) then
   begin
   if (PC1.ActivePage=tsCodBar) and (
      (not Tb_Pro_CodBar.Active) or (Tb_Pro_CodBarCBCODPRO.AsFloat<>Tb_ProPDCODPRO.AsFloat)
        ) then
      fLerCodBar;
   if (PC1.ActivePage=tsCodPFor) and (
      (not Tb_CodPFor.Active) or (Tb_CodPForPFCODPRO.AsFloat<>Tb_ProPDCODPRO.AsFloat) ) then
      fLerCodpFor;
   end;

end;


function TFrm_Pro_Farma.fBloqueiaLiberaCampos(pLibera: Boolean): Boolean;
begin
DBE_NOME.ReadOnly:=iif(pLibera=true,false,true);
DBE_NOME_COMPRA.ReadOnly:=iif(pLibera=true,false,true);
DBE_MARCA.ReadOnly:=iif(pLibera=true,false,true);
DBE_UND.ReadOnly:=iif(pLibera=true,false,true);
DBE_SECAO.ReadOnly:=iif(pLibera=true,false,true);
DBE_ESTMIN.ReadOnly:=iif(pLibera=true,false,true);
DBE_ESTMAX.ReadOnly:=iif(pLibera=true,false,true);
DBE_EMBPAD.ReadOnly:=iif(pLibera=true,false,true);
DBE_EMBMUL.ReadOnly:=iif(pLibera=true,false,true);
DBE_PRECO1.ReadOnly:=iif(pLibera=true,false,true);
DBE_PMC.ReadOnly:=iif(pLibera=true,false,true);
DBE_FARMA_PCOFAB.ReadOnly:=iif(pLibera=true,false,true);
DBE_NOME_COMPRA.ReadOnly:=iif(pLibera=true,false,true);
DBE_CODFOR.ReadOnly:=iif(pLibera=true,false,true);
DBE_PESOB.ReadOnly:=iif(pLibera=true,false,true);
DBE_PESOL.ReadOnly:=iif(pLibera=true,false,true);
DBE_CODBAR.ReadOnly:=iif(pLibera=true,false,true);
RxDBCB_CODBAR_TIPO.ReadOnly:=iif(pLibera=true,false,true);
DBGrid_CODBAR.ReadOnly:=iif(pLibera=true,false,true);
DBGrid_CODPFOR.ReadOnly:=iif(pLibera=true,false,true);
RxDBCB_CST_ICMS_EST_REV.Enabled:=pLibera;
RxDBCB_CST_ICMS_EST_CF.Enabled:=pLibera;
RxDBCB_CST_ICMS_INT_REV.Enabled:=pLibera;
RxDBCB_CST_ICMS_INT_CF.Enabled:=pLibera;
DBE_PRED_ICMS_EST.ReadOnly:=iif(pLibera=true,false,true);
DBE_PRED_ICMS_INT.ReadOnly:=iif(pLibera=true,false,true);

RxDBCB_CSOSN_EST_REV.Enabled:=pLibera;
RxDBCB_CSOSN_EST_CF.Enabled:=pLibera;

RxDBCB_CSOSN_INT_REV.Enabled:=pLibera;
RxDBCB_CSOSN_INT_CF.Enabled:=pLibera;

RxDBCB_CST_PISCOF_ENTRADA.Enabled:=pLibera;
RxDBCB_CST_PISCOF_SAIDA.Enabled:=pLibera;

EDT_PIS_ALIQ_ENTRADA.ReadOnly:=iif(pLibera=true,false,true);
DBE_PIS_ALIQ_SAIDA.ReadOnly:=iif(pLibera=true,false,true);

DBE_COFINS_ALIQ_ENTRADA.ReadOnly:=iif(pLibera=true,false,true);
DBE_COFINS_ALIQ_SAIDA.ReadOnly:=iif(pLibera=true,false,true);

db_codgru.ReadOnly:=iif(pLibera=true,false,true);
db_codram.ReadOnly:=iif(pLibera=true,false,true);
db_codtip.ReadOnly:=iif(pLibera=true,false,true);
db_codcon.ReadOnly:=iif(pLibera=true,false,true);
db_codgru.ReadOnly:=iif(pLibera=true,false,true);

RxDBCBTP_RECEITA.ReadOnly:=iif(pLibera=true,false,true);

DBCB_REFRI.ReadOnly:=iif(pLibera=true,false,true);
DBCB_SGNPC.ReadOnly:=iif(pLibera=true,false,true);

db_clas.ReadOnly:=iif(pLibera=true,false,true);
db_ipi.ReadOnly:=iif(pLibera=true,false,true);
DBCb_TabIcm.ReadOnly:=iif(pLibera=true,false,true);
RxDBCB_FIS_ORIGEM.ReadOnly:=iif(pLibera=true,false,true);
TRxDBCB_LISTA.ReadOnly:=iif(pLibera=true,false,true);
DBCB_ICMSST_LIQ.ReadOnly:=iif(pLibera=true,false,true);
btn_SPadrao.Enabled:=pLibera;





end;

procedure TFrm_Pro_Farma.tb_alterarClick(Sender: TObject);
begin

if Tb_ProPDCODPRO.IsNull then
   begin
   verteclado(0);
   fMensagem('Não ha registro a ser alterado',0,['0'],0);
   tb_cancelarClick(self);
   exit;
   end;

moper := 8;
fLerCodBar;
fLerCodpFor;


Tb_Pro.Edit;
if (fSonumero(Tb_ProPDCODNCM.AsString)>0) and  (fSonumero(Tb_ProPDCLAS.AsString)=0) then
   Tb_ProPDCLAS.AsString:=Tb_ProPDCODNCM.AsString;

fBloqueiaLiberaCampos(true);
mAnt_Codpro:=Tb_ProPDCODPRO.AsFloat;

if PC1.ActivePage=tsPrinc then
   DBE_NOME.SetFocus


end;

procedure TFrm_Pro_Farma.tb_cancelarClick(Sender: TObject);
var
Query_Exe: TQuery;
begin

if Tb_ProPDNOME.Value='_' then
   begin
   Query_Exe:=TQuery.Create(nil);
   Query_Exe.DatabaseName:='SG_ASSOC';
   Query_Exe.close;
   Query_Exe.SQL.clear;
   Query_Exe.SQL.Add('Delete from CADPRO_CODBAR where '
                    +' (CBCODEMP=:CODEMP and CBCODEMP=:CODEMP_FILIAL) '
                     +' and CBCODPRO=:CODPRO');
   Query_Exe.ParamByName('CODEMP').AsInteger:=codemp;
   Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+iif(codemp>100,-100,100);
   Query_Exe.ParamByName('CODPRO').AsFloat:=Tb_ProPDCODPRO.AsFloat;

   try
      Query_Exe.ExecSQL;
      fdm1StartCommit;
   except
      end;

   Query_Exe.close;
   Query_Exe.SQL.clear;
   Query_Exe.SQL.Add('Delete from CODPFOR where '
                    +' (PFCODEMP=:CODEMP and PFCODEMP=:CODEMP_FILIAL) '
                     +' and PFCODPRO=:CODPRO');
   Query_Exe.ParamByName('CODEMP').AsInteger:=codemp;
   Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+iif(codemp>100,-100,100);
   Query_Exe.ParamByName('CODPRO').AsFloat:=Tb_ProPDCODPRO.AsFloat;

   try
      Query_Exe.ExecSQL;
      fdm1StartCommit;
   except
      end;

   flDesfazerCodigos(0,'CADPRO',Tb_ProPDCODPRO.Value);
   Tb_Pro.Delete;
   end
else
   Tb_Pro.Cancel;

fBloqueiaLiberaCampos(false);
DBE_CODPRO.ReadOnly:=true;
end;

procedure TFrm_Pro_Farma.tb_incluirClick(Sender: TObject);
begin
mOper:=0;
Tb_Pro.Insert;
if flfilpad(-1,'_PRO_CST','') then
   begin
   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_EST_REV']),[]) then
      Tb_ProPDFIS_CST_ICMS_EST_REV.Value:=RxDBCB_CST_ICMS_EST_REV.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_EST_CF']),[]) then
      Tb_ProPDFIS_CST_ICMS_EST_CF.Value:=RxDBCB_CST_ICMS_EST_CF.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_INT_REV']),[]) then
      Tb_ProPDFIS_CST_ICMS_INT_REV.Value:=RxDBCB_CST_ICMS_INT_REV.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_ICMS_INT_CF']),[]) then
      Tb_ProPDFIS_CST_ICMS_INT_CF.Value:=RxDBCB_CST_ICMS_INT_CF.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_PRED_ICMS_EST']),[]) then
      Tb_ProPDFIS_PRED_ICMS_EST.AsFloat:=DM4.Tb_FilPadFPVALOR.AsFloat;

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_PRED_ICMS_INT']),[]) then
      Tb_ProPDFIS_PRED_ICMS_INT.AsFloat:=DM4.Tb_FilPadFPVALOR.AsFloat;

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_EST_REV']),[]) then
      Tb_ProPDFIS_CSOSN_EST_REV.Value:=RxDBCB_CSOSN_EST_REV.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_EST_CF']),[]) then
      Tb_ProPDFIS_CSOSN_EST_CF.Value:=RxDBCB_CSOSN_EST_CF.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_INT_REV']),[]) then
      Tb_ProPDFIS_CSOSN_INT_REV.Value:=RxDBCB_CSOSN_INT_REV.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CSOSN_INT_CF']),[]) then
      Tb_ProPDFIS_CSOSN_INT_CF.Value:=RxDBCB_CSOSN_INT_CF.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_PISCOF_ENTRADA']),[]) then
      Tb_ProPDFIS_CST_PISCOF_ENTRADA.Value:=RxDBCB_CST_PISCOF_ENTRADA.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([-1,'_PRO_CST','PDFIS_CST_PISCOF_SAIDA']),[]) then
      Tb_ProPDFIS_CST_PISCOF_SAIDA.Value:=RxDBCB_CST_PISCOF_SAIDA.Values[ValInt(DM4.Tb_FilPadFPVALOR.Value)];

   end;
mAnt_Codpro:=Tb_ProPDCODPRO.AsFloat;

fLerCodBar;
fLerCodpFor;
PC1.ActivePage:=tsPrinc;
fBloqueiaLiberaCampos(true);
DBE_CODPRO.ReadOnly:=false;
if PC1.ActivePage=tsPrinc then
   begin
   DBE_NOME.SetFocus;
   end;

end;

procedure TFrm_Pro_Farma.tb_GravarClick(Sender: TObject);
var
mCodNCM:String;
Query_testa: TQuery;
mCondicao_old: String;
begin
Self.Perform(WM_NEXTDLGCTL,0,0);

if Trim(Tb_ProPDFIS_CST_ICMS_EST_REV.AsString)='' then
   begin
   PC1.ActivePage:=tsFiscais;
   fmensagem('CST - ESTADUAL - REVENDA  Invalida!',0,['0'],0);
   RxDBCB_CST_ICMS_EST_REV.SetFocus;
   exit;
   end;

if Trim(Tb_ProPDFIS_CST_ICMS_EST_CF.AsString)=''  then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - ESTADUAL - CF  Invalida!',0,['0'],0);
  RxDBCB_CST_ICMS_EST_CF.SetFocus;
  exit;
  end;

if Trim(Tb_ProPDFIS_CST_ICMS_INT_REV.AsString)=''  then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - FORA DO ESTADO - REVENDA  Invalida!',0,['0'],0);
  RxDBCB_CST_ICMS_INT_REV.SetFocus;
  exit;
  end;

if Trim(Tb_ProPDFIS_CST_ICMS_INT_CF.AsString)=''  then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - FORA DO ESTADO - CF  Invalida!',0,['0'],0);
  RxDBCB_CST_ICMS_INT_CF.SetFocus;
  exit;
  end;

if Trim(Tb_ProPDFIS_CSOSN_EST_REV.AsString)=''  then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CSOSN - ESTADUAL - REVENDA  Invalida!',0,['0'],0);
  RxDBCB_CSOSN_EST_REV.SetFocus;
  exit;
  end;

if Trim(Tb_ProPDFIS_CSOSN_EST_CF.AsString)=''  then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - ESTADUAL - CF  Invalida!',0,['0'],0);
  RxDBCB_CSOSN_EST_CF.SetFocus;
  exit;
  end;

if Trim(Tb_ProPDFIS_CSOSN_INT_REV.AsString)=''  then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - FORA DO ESTADO - REVENDA  Invalida!',0,['0'],0);
  RxDBCB_CSOSN_INT_REV.SetFocus;
  exit;
  end;

if Trim(Tb_ProPDFIS_CSOSN_INT_CF.AsString)=''  then
  begin
  PC1.ActivePage:=tsFiscais;
  fmensagem('CST - FORA DO ESTADO - CF  Invalida!',0,['0'],0);
  RxDBCB_CSOSN_INT_CF.SetFocus;
  exit;
  end;





if Tb_ProPDNOME.Value='_' then
   begin
   verteclado(0);
   fmensagem('Descrição do produto Invalida!',0,['0'],0);
   if PC1.ActivePage=tsPrinc then
      DBE_NOME.SetFocus;
   exit;
   end;
if (Tb_ProPDCONTESP.AsInteger=1) and (Tb_ProPDCMET_CONSTANTE.AsFloat=0) then
   Tb_ProPDCMET_CONSTANTE.AsFloat:=8;


if (DM4.Tb_ParGer02PG2USANFE.AsInteger>0) and (Tb_ProPDNIVEL.AsInteger=0) then
   begin
   mCodNCM:=fdeixanum2(Tb_ProPDCODNCM.AsString);
   if length(mCodNCM)<>8 then
      mCodNCM:=fdeixanum2(Tb_ProPDCLAS.AsString);
   if length(mCodNCM)<>8 then
      begin
      Query_testa:=TQuery.Create(nil);
      Query_testa.DatabaseName:='SG_ASSOC';
      Query_testa.Close;
      Query_testa.SQL.Clear;
      Query_testa.SQL.Add('SELECT PDCLAS,PDCODNCM FROM CADPRO '
                          +' WHERE (LENGTH(PDCLAS)=8 OR LENGTH(PDCODNCM)=8) and rownum<2 ');
      try
         Query_testa.Open;
         if length(Query_testa.fieldbyName('PDCLAS').AsString)=8 then
            begin
            Tb_ProPDCLAS.Value:=Query_testa.fieldbyName('PDCLAS').AsString;
            Tb_ProPDCODNCM.Value:=Query_testa.fieldbyName('PDCLAS').AsString;
            mCodNCM:=fdeixanum2(Tb_ProPDCLAS.AsString);
            end
         else
           begin
           Tb_ProPDCLAS.Value:=Query_testa.fieldbyName('PDCODNCM').AsString;
           Tb_ProPDCODNCM.Value:=Query_testa.fieldbyName('PDCODNCM').AsString;
           mcinst:=fdeixanum2(Tb_ProPDCLAS.AsString);
           end;
      except
         end;
      end;
   if length(mCodNCM)<>8 then
      begin
      Tb_ProPDCLAS.Value  :='12345678';
      Tb_ProPDCODNCM.Value:='12345678';
      end;
   end;
if moper=8 then
   begin
   mCondicao_old:=' where PDCODEMP='+Tb_ProPDCODEMP.AsString+' and PDCODPRO='+Tb_ProPDCODPRO.AsString ;
   fGerarTabelas_Old(9 //status
                      ,0 //codigo novo valor chave
                      ,'PDCODNOV' //nome do campo do novo valor (chave)
                      ,'PDDTALT' // nome do campo data e hora do evento
                      ,'PDCODUSR' // nome do campo do usuario
                      ,'PDSTATUS' // nome do campo de status
                      ,'CADPRO' // nome da tabela
                      ,mCondicao_old);
   end;

Tb_ProPDCODUSR.Value  :=codusr;
Tb_ProPDDTALT.AsString:=FormatDateTime(fdt2, pdatasis);
Tb_ProPDHRALT.Value   :=FormatDateTime(fhr, time);
Tb_ProPDNIVEL.Value   :=04;


if not flcadest(0,0,0,Tb_ProPDCODPRO.AsString) then
   begin
   if query_testa=nil then
      begin
      Query_testa:=TQuery.Create(nil);
      Query_testa.DatabaseName:='SG_ASSOC';
      Query_testa.Close;
      Query_testa.Sql.Clear;
      Query_testa.Sql.add('Insert into CADEST ('
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
                       +Tb_ProPDCODPRO.AsString+','
                       +'0,0,0,0,0,0,'
                       +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                       +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)
                       +')');

      try
        Query_testa.ExecSQL;
        fdm1StartCommit;
      except on e : exception do
        ex_erroSql_Novo(query_testa,951,'frm_pro_farma:'+e.Message ,'CADEST');
        end;
      end;
   end;
if fSonumero(Tb_ProPDCLAS.AsString) <>  fSonumero(Tb_ProPDCODNCM.AsString) then
   Tb_ProPDCODNCM.AsString:=Tb_ProPDCLAS.AsString;
if query_testa=nil then
   begin
   Query_testa:=TQuery.Create(nil);
   Query_testa.DatabaseName:='SG_ASSOC';
   Query_testa.Close;
   Query_testa.Sql.Clear;
   Query_testa.SQL.Add('Select count(*) from CADPRO_KIT '
                           +' where KIT_CODPRO=0'+Tb_ProPDCODPRO.AsString
                           +' and KIT_CODEMP=0'+Tb_ProPDCODEMP.AsString);
   try
      Query_testa.Open;
      if Query_testa.Fields[0].AsInteger>0 then
         Tb_ProPDKIT.AsString:='S'
      else
         Tb_ProPDKIT.AsString:='N';
   except on e : exception do
      ex_erroSql_Novo(query_testa,974,'frm_pro_farma:'+e.Message ,'CADPRO_KIT');
      end;
   end;
Tb_Pro.Post;

if query_testa<>nil then
   freeandnil(query_testa);
tb_cancelarClick(self);

fBloqueiaLiberaCampos(false);

end;

procedure TFrm_Pro_Farma.Tb_ProAfterInsert(DataSet: TDataSet);
var
query_pro: TQuery;
codpro: Real;
begin
While true do
   begin
   codpro:=flBuscarCodigos(0,'CADPRO');
   if DM1.Tb_PargerPDCADPRO.Value=1 then
      Codpro:=Digito(CodPro);
   query_pro:=TQuery.create(nil);
   query_pro.DatabaseName:='SG_ASSOC';

   query_pro.Close;
   query_pro.Sql.Clear;
   query_pro.Sql.Add('select count(*) from CADPRO where (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) '
                     +' and PDCODPRO=0'+FloatTostr(codpro));
   query_pro.ParamByName('CODEMP').AsInteger:=codemp;
   query_pro.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+IIF(codemp>100,-100,100);

   query_pro.Open;
   if query_pro.Fields[0].AsInteger<=0 then
      begin
      freeandnil(query_pro);
      break;
      end;
   freeandnil(query_pro);
   end;


Tb_ProPDCODPRO.Value:=codpro;

Tb_ProPDSIT.Value:='000';
Tb_ProPDLISTA.Value:=0;
if Tb_ProPDNOME.IsNull then
   Tb_ProPDNOME.Value:='_';
Tb_ProPDCODBAR.Value :=0;
Tb_ProPDNIVEL.Value  :=0;
Tb_ProPDCODFOR.Value :=0;
Tb_ProPDPRECO1.Value :=0;
Tb_ProPDPMC.Value    :=0;
Tb_ProPDPRECO2.Value :=0;
Tb_ProPDPRECO3.Value :=0;
Tb_ProPDPRECOA1.Value:=0;
Tb_ProPDPRECOA2.Value:=0;
Tb_ProPDPRECOA3.Value:=0;
Tb_ProPDDESC1.Value  :=0;
Tb_ProPDDESC1A.Value :=0;
Tb_ProPDDESC2.Value  :=0;
Tb_ProPDDESC3.Value  :=0;
Tb_ProPDQTDP.Value   :=0;
Tb_ProPDPRAZO.Value  :=0;
Tb_ProPDSIT.Value    :='000';
Tb_ProPDCODGRU.Value :=0;
Tb_ProPDCODCON.Value :=0;
Tb_ProPDCODRAM.Value :=0;
Tb_ProPDCODTIP.Value :=0;
Tb_ProPDFRACAO.Value :=0;
Tb_ProPDLISTA.Value  :=0;
Tb_ProPDSTATUS.Value :=0;
Tb_ProPDTABICM.Value :='A';
Tb_ProPDREST.Value   :=0;
Tb_ProPDDATCAD.AsDateTime:=now;
Tb_ProPDUSRINC.AsFloat:=codusr;

Tb_ProPDFIS_ORIGEM.Value:='0';
Tb_ProPDFIS_PRED_ICMS_EST.Value:=0;
Tb_ProPDFIS_PRED_ICMS_INT.Value:=0;

Tb_ProPDFIS_PIS_ALIQ_ENTRADA.Value:=0;
Tb_ProPDFIS_PIS_ALIQ_SAIDA.Value:=0;

Tb_ProPDFIS_COFINS_ALIQ_ENTRADA.Value:=0;
Tb_ProPDFIS_COFINS_ALIQ_SAIDA.Value:=0;

Tb_ProPDFIS_CST_ICMS_EST_REV.Value:='00';
Tb_ProPDFIS_CST_ICMS_EST_CF.Value:='00';
Tb_ProPDFIS_CST_ICMS_INT_CF.Value:='00';
Tb_ProPDFIS_CST_ICMS_INT_REV.Value:='00';

                    

Tb_ProPDFIS_CSOSN_EST_REV.Value:='101';
Tb_ProPDFIS_CSOSN_EST_CF.Value:='101';

Tb_ProPDFIS_CSOSN_INT_REV.Value:='101';
Tb_ProPDFIS_CSOSN_INT_CF.Value:='101';

Tb_ProPDFIS_CST_PISCOF_ENTRADA.Value:='00';
Tb_ProPDFIS_CST_PISCOF_SAIDA.Value:='00';

if codemp>100 then
   Tb_ProPDCODEMP.Value:=codemp-100
else
   Tb_ProPDCODEMP.Value:=codemp;

Tb_Pro.Post;
Tb_Pro.Edit;

end;

procedure TFrm_Pro_Farma.btn_SPadraoClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_PRO_CST','');
fGravaPadroes2(-1,'PDFIS_CST_ICMS_EST_REV'   ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_ICMS_EST_REV.ItemIndex),RxDBCB_CST_ICMS_EST_REV.Text);
fGravaPadroes2(-1,'PDFIS_CST_ICMS_EST_CF'    ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_ICMS_EST_CF.ItemIndex),RxDBCB_CST_ICMS_EST_CF.Text);
fGravaPadroes2(-1,'PDFIS_CST_ICMS_INT_REV'   ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_ICMS_INT_REV.ItemIndex),RxDBCB_CST_ICMS_INT_REV.Text);
fGravaPadroes2(-1,'PDFIS_CST_ICMS_INT_CF'    ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_ICMS_INT_CF.ItemIndex),RxDBCB_CST_ICMS_INT_CF.Text);
fGravaPadroes2(-1,'PDFIS_PRED_ICMS_EST'      ,'text'            ,'_PRO_CST',DBE_PRED_ICMS_EST.Text,DBE_PRED_ICMS_EST.Text);
fGravaPadroes2(-1,'PDFIS_PRED_ICMS_INT'      ,'text'            ,'_PRO_CST',DBE_PRED_ICMS_INT.Text,DBE_PRED_ICMS_INT.Text);
fGravaPadroes2(-1,'PDFIS_CSOSN_EST_REV'      ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CSOSN_EST_REV.ItemIndex),RxDBCB_CSOSN_EST_REV.Text);
fGravaPadroes2(-1,'PDFIS_CSOSN_EST_CF'       ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CSOSN_EST_CF.ItemIndex),RxDBCB_CSOSN_EST_CF.Text);
fGravaPadroes2(-1,'PDFIS_CSOSN_INT_REV'      ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CSOSN_INT_REV.ItemIndex),RxDBCB_CSOSN_INT_REV.Text);
fGravaPadroes2(-1,'PDFIS_CSOSN_INT_CF'       ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CSOSN_INT_CF.ItemIndex),RxDBCB_CSOSN_INT_CF.Text);
fGravaPadroes2(-1,'PDFIS_CST_PISCOF_ENTRADA' ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_PISCOF_ENTRADA.ItemIndex),RxDBCB_CST_PISCOF_ENTRADA.Text);
fGravaPadroes2(-1,'PDFIS_CST_PISCOF_SAIDA'   ,'itemindex'       ,'_PRO_CST',IntTostr(RxDBCB_CST_PISCOF_SAIDA.ItemIndex),RxDBCB_CST_PISCOF_SAIDA.Text);


end;

procedure TFrm_Pro_Farma.tb_excluirClick(Sender: TObject);
var
Query_Exe: tQuery;
mCondicao_old: String;

begin

if Tb_ProPDCODPRO.IsNull then
   begin
   verteclado(0);
   fMensagem('Não ha registro a ser excluido!',0,['0'],0);
   tb_cancelarClick(self);
   exit;
   end;

if not fProTestaMov(Tb_ProPDCODPRO.AsString,'') then
   begin
   fMensagem('Este Produto possui Movimento de Compra/Venda. Exclusão Inválida!',0,['0'],0);
   tb_cancelarClick(self);
   exit;
   end;

if fmensagem('Quer Realmente Excluir o Produto?',0,['1','2'],2)=mrYes then
   begin
   mCondicao_old:=' where PDCODEMP='+Tb_ProPDCODEMP.AsString+' and PDCODPRO='+Tb_ProPDCODPRO.AsString ;
   fGerarTabelas_Old(9 //status
                      ,0 //codigo novo valor chave
                      ,'PDCODNOV' //nome do campo do novo valor (chave)
                      ,'PDDTALT' // nome do campo data e hora do evento
                      ,'PDCODUSR' // nome do campo do usuario
                      ,'PDSTATUS' // nome do campo de status
                      ,'CADPRO' // nome da tabela
                      ,mCondicao_old);

   Query_Exe:=TQuery.Create(nil);
   Query_Exe.DatabaseName:='SG_ASSOC';
   Query_Exe.close;
   Query_Exe.SQL.clear;
   Query_Exe.SQL.Add('Delete from CADPRO_CODBAR where '
                    +' (CBCODEMP=:CODEMP and CBCODEMP=:CODEMP_FILIAL) '
                     +' and CBCODPRO=:CODPRO');
   Query_Exe.ParamByName('CODEMP').AsInteger:=codemp;
   Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+iif(codemp>100,-100,100);
   Query_Exe.ParamByName('CODPRO').AsFloat:=Tb_ProPDCODPRO.AsFloat;

   try
      Query_Exe.ExecSQL;
      fdm1StartCommit;
   except
      end;

   Query_Exe.close;
   Query_Exe.SQL.clear;
   Query_Exe.SQL.Add('Delete from CODPFOR where '
                    +' (PFCODEMP=:CODEMP and PFCODEMP=:CODEMP_FILIAL) '
                     +' and PFCODPRO=:CODPRO');
   Query_Exe.ParamByName('CODEMP').AsInteger:=codemp;
   Query_Exe.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+iif(codemp>100,-100,100);
   Query_Exe.ParamByName('CODPRO').AsFloat:=Tb_ProPDCODPRO.AsFloat;

   try
      Query_Exe.ExecSQL;
      fdm1StartCommit;
   except
      end;
   FreeAndNil(Query_Exe);
   Tb_Pro.Delete;
   end;

end;

procedure TFrm_Pro_Farma.DBE_CODPROExit(Sender: TObject);
var
query_teste: tQuery;
begin
if mAnt_Codpro<>Tb_ProPDCODPRO.AsFloat then
   begin
   query_teste.Close;
   query_teste.SQL.Clear;
   query_teste.SQL.Add('Select PDCODPRO,PDNOME from CADPRO where '
                     +' (PDCODEMP=:CODEMP or PDCODEMP=:CODEMP_FILIAL) and '
                     +' PDCODPRO=0'+Tb_ProPDCODPRO.AsString);
   query_teste.ParamByName('CODEMP').AsInteger:=codemp;
   query_teste.ParamByName('CODEMP_FILIAL').AsInteger:=100+iif(codemp>100,-100,100);

   query_teste.Open;
   if not query_teste.Eof then
      begin
      verteclado(0);
      FreeAndNil(query_teste);
      fmensagem('Este código ja esta cadastrado no produto: '+query_teste.Fields[1].AsString,0,['0'],0);
      DBE_CODPRO.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Pro_Farma.DBE_CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_ProPDCODFOR.Value:=ValFloat(fChamaFor(0,'frm_Pro_farma',Key));
   DBE_CODFORExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Pro_Farma.DBE_CODFORExit(Sender: TObject);
begin
if Tb_Pro.State in [dsEdit,dsInsert] then
   begin
   if Tb_ProPDCODFOR.Value>0 then
      begin
      if not flqr2('FRAZAO,FRESTFOR','F','CADFOR','N','FCODFOR',Tb_ProPDCODFOR.AsString) then
         begin
         verteclado(0);
         fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
         DBE_CODFOR.SetFocus;
         end
      else
         begin
         Tb_ProPDNOMFOR.Value :=DM1.Query2.Fields[0].AsString;
         Tb_ProPDRESTFOR.Value:=DM1.Query2.Fields[1].AsFloat;
         end;
      end;
   end
else
   begin
   Tb_ProPDNOMFOR.Value :=' ';
   Tb_ProPDRESTFOR.Value:=0;
   end;

end;

procedure TFrm_Pro_Farma.Tb_CodPForAfterInsert(DataSet: TDataSet);
begin
mCodPfor_ant:='';
mCodfor_ant:='';

Tb_CodPForPFCODEMP.AsInteger :=Tb_ProPDCODEMP.AsInteger;
Tb_CodPForPFCODPRO.AsFloat   :=Tb_ProPDCODPRO.AsFloat;
Tb_CodPForPFFATOR.AsInteger  :=1;
Tb_CodPForPFUNDFOR.AsString  :='UN';

end;

procedure TFrm_Pro_Farma.Tb_CodPForAfterEdit(DataSet: TDataSet);
begin
mCodPfor_ant:=Tb_CodPForPFCODPFORN.AsString;
mCodfor_ant :=Tb_CodPForPFCODFOR.AsString;
end;

procedure TFrm_Pro_Farma.Tb_CodPForBeforePost(DataSet: TDataSet);
var
query_teste: tQuery;
begin
if fsonumero(Tb_CodPForPFCODPFORN.AsString)=0 then
   begin
   Tb_CodPFor.Cancel;
   Abort;
   exit;
   end;
if length(Tb_CodPForFRAZAO.AsString)<1 then
   begin
   MessageDlg('Favor Digitar um código de fornecedor válido!',mtWarning,[mbOk],0);
   DBGrid_CODPFOR.SelectedField:=Tb_CodPForPFCODFOR;
   abort;
   exit;
   end;

if (mCodPfor_ant<>Tb_CodPForPFCODPFORN.AsString) or
   (fsonumero(mcodfor_ant)<>Tb_CodPForPFCODFOR.AsFloat) then
   begin
   query_teste:=tQuery.Create(nil);
   query_teste.DatabaseName:='SG_ASSOC';
   query_teste.Close;
   query_teste.SQL.Clear;
   query_teste.SQL.Add('Select count(*) from CODPFOR where '
                      +' PFCODEMP=:CODEMP '
                      +' and PFCODPRO=:CODPRO '
                      +' and PFCODFOR=:CODFOR '
                      +' and PFCODPFORN=:CODPFOR ');
   query_teste.ParamByName('CODEMP').AsInteger :=Tb_ProPDCODEMP.AsInteger;
   query_teste.ParamByName('CODFOR').AsFloat   :=Tb_CodPForPFCODFOR.AsFloat;
   query_teste.ParamByName('CODPRO').AsFloat   :=Tb_ProPDCODPRO.AsFloat;
   query_teste.ParamByName('CODPFOR').AsString :=Tb_CodPForPFCODPFORN.AsString;
   query_teste.Open;
   if query_teste.Fields[0].AsInteger>0 then
      begin
      MessageDlg('Ja existe um registro com este código!',mtWarning,[mbok],0);
      FreeAndNil(query_teste);
      abort;
      exit;
      end;
   FreeAndNil(query_teste);
   end;
end;

procedure TFrm_Pro_Farma.DBGrid_CODBARExit(Sender: TObject);
begin
if Tb_Pro_CodBar.State in [dsEdit,dsInsert] then
   Tb_Pro_CodBar.Post;
end;

procedure TFrm_Pro_Farma.DBGrid_CODPFORExit(Sender: TObject);
begin
if Tb_CodPFor.State in [dsEdit,dsInsert] then
   Tb_CodPFor.Post;

end;

procedure TFrm_Pro_Farma.Tb_Pro_CodBarAfterEdit(DataSet: TDataSet);
begin
mcodbar_ant:=Tb_Pro_CodBarCBCODBAR.AsString;
end;

procedure TFrm_Pro_Farma.Tb_Pro_CodBarAfterInsert(DataSet: TDataSet);
begin
mcodbar_ant:='';
Tb_Pro_CodBarCBCODEMP.AsInteger :=Tb_ProPDCODEMP.AsInteger;
Tb_Pro_CodBarCBCODPRO.AsFloat   :=Tb_ProPDCODPRO.AsFloat;
Tb_Pro_CodBarCBQTDMULT.AsInteger:=1;
Tb_Pro_CodBarCBCODBAR_TIPO.Value:='EAN13';


end;

procedure TFrm_Pro_Farma.Tb_Pro_CodBarBeforePost(DataSet: TDataSet);
var
query_teste: tQuery;
begin
if fsonumero(Tb_Pro_CodBarCBCODBAR.AsString)=0 then
   begin
   Abort;
   Tb_Pro_CodBar.Cancel;
   exit;
   end;

if (mcodbar_ant<>Tb_Pro_CodBarCBCODBAR.AsString)  then
   begin
   query_teste:=tQuery.Create(nil);
   query_teste.DatabaseName:='SG_ASSOC';
   query_teste.Close;
   query_teste.SQL.Clear;
   query_teste.SQL.Add('Select count(*) from CADPRO_CODBAR where '
                      +' CBCODEMP=:CODEMP '
                      +' and CBCODPRO=:CODPRO '
                      +' and CBCODBAR=:CODBAR ');
   query_teste.ParamByName('CODEMP').AsInteger :=Tb_ProPDCODEMP.AsInteger;
   query_teste.ParamByName('CODPRO').AsFloat   :=Tb_ProPDCODPRO.AsFloat;
   query_teste.ParamByName('CODBAR').AsString :=Tb_Pro_CodBarCBCODBAR.AsString;
   query_teste.Open;
   if query_teste.Fields[0].AsInteger>0 then
      begin
      MessageDlg('Ja existe um registro com este código!',mtWarning,[mbok],0);
      FreeAndNil(query_teste);
      abort;
      exit;
      end;
   FreeAndNil(query_teste);
   end;
if length(Tb_Pro_CodBarCBCODBAR_TIPO.AsString)>0 then
   Tb_Pro_CodBarCBCODBAR_TIPO.Value:='EAN13';

end;

procedure TFrm_Pro_Farma.c(DataSet: TDataSet);
begin
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;

end;

procedure TFrm_Pro_Farma.DBGrid_CODPFORColExit(Sender: TObject);
begin
if Tb_CodPFor.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_CODPFOR.SelectedField=Tb_CodPForPFCODFOR then
      begin
      if Tb_CodPForPFCODFOR.AsFloat<>0 then
         begin
          if not flqr2('FRAZAO,FRESTFOR','F','CADFOR','N','FCODFOR',Tb_ProPDCODFOR.AsString) then
             begin
             verteclado(0);
             fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
             DBGrid_CODPFOR.SelectedField:=Tb_CodPForPFCODFOR;
             end
          else
            Tb_CodPForFRAZAO.Value:=DM1.Tb_ForFRAZAO.AsString;
         end;
      end;
   end;
end;

procedure TFrm_Pro_Farma.DBGrid_CODPFORKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['0'..'9']) and
   (DBGrid_CODPFOR.SelectedField=Tb_CodPForPFCODFOR) and
   (Tb_CodPFor.State in [dsBrowse]) then
   begin
   if Tb_CodPForPFCODFOR.IsNull then
      begin
      Tb_CodPFor.Append;
     end;
   end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
   and (DBGrid_CODPFOR.SelectedField=Tb_CodPForPFCODFOR) then
   begin
   if not (Tb_CodPFor.State in [dsEdit,dsInsert]) then
      begin
      if Tb_CodPForPFCODFOR.IsNull then
         Tb_CodPFor.Append
      else
         Tb_CodPFor.Edit;
      end;
   Tb_CodPForPFCODFOR.AsFloat:=fSonumero( fChamaFor(0,'_pro_farma',key));
   key:=#0;
   if (Tb_CodPForPFCODFOR.AsFloat)<>0 then
      begin
      keybd_event(VK_RETURN,0,0,0);
      end;
   end;
end;

procedure TFrm_Pro_Farma.db_codgruKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Tb_ProPDCODGRU.Value:=ValFloat(fChamaGPro(0,'frm_Pro_farma',Key));
   if Trim(db_codgru.Text) <> '' then
     db_codgruExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_Pro_Farma.db_codgruExit(Sender: TObject);
begin
if Tb_Pro.State in [dsEdit,dsInsert] then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',Tb_ProPDCODGRU.AsString) then
      begin
      if Tb_ProPDCODGRU.Value>0 then
         begin
         verteclado(0);
         fMensagem('Grupo não Cadastrado!',0,['0'],0);
         db_codgru.SetFocus;
         end
      else
         Tb_ProPDNOMGRU.Value:=' ';
      end
   else
      tb_ProPDNOMGRU.Value:=DM1.Query1.fields[0].AsString;
   end;

end;

procedure TFrm_Pro_Farma.db_codtipKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
     begin
     Tb_ProPDCODTIP.Value:=ValFloat(fChamaTipPro(0,'frm_Pro_farma',Key));
     if Trim(db_codtip.Text) <> '' then
        db_codtipExit(Self);
     key:=#0;
  end;

end;

procedure TFrm_Pro_Farma.db_codtipExit(Sender: TObject);
begin
if Tb_Pro.State in [dsEdit,dsInsert] then
   begin
   if Tb_ProPDCODTIP.Value>0 then
      begin
      if not flqr2('TNOME,TDESCAV','T','CADTP','N','TCODTIP',Tb_ProPDCODTIP.AsString) then
         begin
         verteclado(0);
         fMensagem('Tipo  não Cadastrado!',0,['0'],0);
         db_codtip.SetFocus;
         end
      else
         begin
         Tb_ProPDNOMTIP.Value  :=DM1.Query2.fields[0].AsString;
         Tb_ProPDBLDESCAV.Value:=valint(DM1.Query2.fields[1].AsString);
         end;
      end
   else
      begin
      Tb_ProPDNOMTIP.Value  :=' ';
      Tb_ProPDBLDESCAV.Value:=0;
      end;
   end;

end;

procedure TFrm_Pro_Farma.db_codramExit(Sender: TObject);
begin
if Tb_Pro.State in [dsEdit,dsInsert] then
   begin
   if Tb_ProPDCODRAM.Value>0 then
      begin
      if not flqr1('RNOME','R','CADRAM','N','RCODRAM',Tb_ProPDCODRAM.AsString) then
         begin
         verteclado(0);
         fMensagem('Ramo não Cadastrado!',0,['0'],0);
         db_codram.SetFocus;
         end
      else
         Tb_ProPDNOMRAM.Value:=DM1.Query1.fields[0].AsString;
      end
   else
      Tb_ProPDNOMRAM.Value:=' ';
   end;

end;

procedure TFrm_Pro_Farma.db_codramKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      Tb_ProPDCODRAM.Value:=ValFloat(fChamaRamPro(0,'frm_Pro_Nov',Key));
      if Trim(db_codram.Text) <> '' then
         db_codramExit(Self); 
      key:=#0;
  end;

end;

procedure TFrm_Pro_Farma.db_codconKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
     Tb_ProPDCODCON.Value:=ValFloat(fChamaTCon(0,'frm_Pro_Nov',Key));
     if Trim(db_codcon.Text) <> '' then
        db_codconExit(Self);
     key:=#0;
  end;

end;

procedure TFrm_Pro_Farma.db_codconExit(Sender: TObject);
begin
if Tb_Pro.State in [dsEdit,dsInsert] then
   begin
   if Tb_ProPDCODCON.Value>0 then
      begin
      if not flqr1('CCODCON,CNOME,CRESTCON','C','CADCON','N','CCODCON',Tb_ProPDCODCON.AsString) then
         begin
         verteclado(0);
         fMensagem('Controle não Cadastrado!',0,['0'],0);
         db_codcon.SetFocus;
         end
      else
         begin
         Tb_ProPDNOMCON.Value :=DM1.Query1.fields[1].AsString;
         Tb_ProPDRESTCON.Value:=DM1.Query1.fields[0].AsFloat;
         end;
      end
   else
      Tb_ProPDNOMCON.Value :=' ';
      Tb_ProPDRESTCON.Value:=0;
   end;

end;

procedure TFrm_Pro_Farma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   action:=cafree;

end;

procedure TFrm_Pro_Farma.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If Tb_Pro.State in [dsInsert, dsEdit] then
   begin
   verteclado(0);
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: tb_Gravar.Click;
      mrNo : tb_cancelar.Click;
      else CanClose:=False;
      end;
   end;
if Tb_ProPDNOME.Value='_' then
   begin
   flDesfazerCodigos(0,'CADPRO',Tb_ProPDCODPRO.Value);
   Tb_Pro.Delete;
   end;

end;

procedure TFrm_Pro_Farma.ToolBar1Click(Sender: TObject);
begin
Self.Perform(WM_NEXTDLGCTL,0,0);

end;

end.
