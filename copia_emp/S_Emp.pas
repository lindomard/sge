{
07	CEI	Número de inscrição no Cadastro Específico do INSS	N	012	-
08	NIT	Número de Identificação do Trabalhador, Pis, Pasep, SUS	N	011	-
}

unit S_Emp;     

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,db,dbtables,func,s_DM1,S_DM2,S_CodEmp,S_SI,lerarq,S_DM4,func2,
  RxDBComb,funcoes_especificas,IdCoderMIME;

type
  TFrm_Emp = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    DBE_UF: TDBEdit;
    Label7: TLabel;
    DBE_CIDADE: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBE_FAX: TDBEdit;
    DBE_FONE: TDBEdit;
    Label10: TLabel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    db_email: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    bbCriarParam: TBitBtn;
    Label11: TLabel;
    DBEdit21: TDBEdit;
    Label21: TLabel;
    DBE_inscmun: TDBEdit;
    Label22: TLabel;
    DBEdit23: TDBEdit;
    Label23: TLabel;
    DBEdit24: TDBEdit;
    Label24: TLabel;
    DBEdit25: TDBEdit;
    Label25: TLabel;
    DBEdit26: TDBEdit;
    Label26: TLabel;
    DBE_juceg: TDBEdit;
    DBEdit30: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit31: TDBEdit;
    DBCB_Fechamento: TDBCheckBox;
    Label31: TLabel;
    DBE_FoneDir: TDBEdit;
    Label32: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBEdit33: TDBEdit;
    Label33: TLabel;
    DBEdit34: TDBEdit;
    Label34: TLabel;
    db_home: TDBEdit;
    Label35: TLabel;
    DBE_CODLOC: TDBEdit;
    Label36: TLabel;
    DBE_codserv: TDBEdit;
    Label37: TLabel;
    DBE_CNAE: TDBEdit;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    MUDARC: TBitBtn;
    DBCB_IncCultural: TDBCheckBox;
    tsContador: TTabSheet;
    Label27: TLabel;
    DBE_CONT_NOME: TDBEdit;
    Label28: TLabel;
    DBE_CONT_CRC: TDBEdit;
    Label38: TLabel;
    Label48: TLabel;
    DBE_CONT_CPF: TDBEdit;
    DBE_CONT_CNPJ: TDBEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label49: TLabel;
    DBE_CONT_ENDERECO: TDBEdit;
    DBE_CONT_NUMERO: TDBEdit;
    DBE_CONT_COMPL: TDBEdit;
    Label50: TLabel;
    DBE_CONT_CEP: TDBEdit;
    Label51: TLabel;
    DBE_CONT_CODLOC: TDBEdit;
    Label52: TLabel;
    DBE_CONT_FONE01: TDBEdit;
    Label53: TLabel;
    DBE_CONT_FAX: TDBEdit;
    Label41: TLabel;
    DBE_CONT_EMAIL: TDBEdit;
    Label42: TLabel;
    DBE_CONT_BAIRRO: TDBEdit;
    Label43: TLabel;
    DBE_CONT_CIDADE: TDBEdit;
    Label44: TLabel;
    DBE_CONT_UF: TDBEdit;
    Label45: TLabel;
    RxDBCB_OPTSIMPLES: TRxDBComboBox;
    Label46: TLabel;
    DBE_suframa: TDBEdit;
    Label47: TLabel;
    RxDBCBIND_ATIV: TRxDBComboBox;
    Label54: TLabel;
    RxDBCB_NAT_PJ: TRxDBComboBox;
    Label55: TLabel;
    DBEdit6: TDBEdit;
    Label56: TLabel;
    DBE_EMP_AUTXML_CNPJCPF: TDBEdit;
    Label57: TLabel;
    DBE_EMP_WHATSAPP_AUTO: TDBEdit;
    Label58: TLabel;
    DBE_EMP_WHATSAPP_ID: TDBEdit;
    GroupBox1: TGroupBox;
    bbIniciarSessao: TBitBtn;
    bbFecharSessao: TBitBtn;
    bbEnviarTexto: TBitBtn;
    bbEnviarArquivo: TBitBtn;
    opd1: TOpenDialog;
    Label59: TLabel;
    edt_fone_dest: TEdit;
    edt_mensagem: TMemo;
    TabSheet1: TTabSheet;
    BitBtn2: TBitBtn;
    edtNrToText: TEdit;
    Label60: TLabel;
    lblText: TLabel;
    btnTextToNr: TButton;
    Label62: TLabel;
    edtTextToNr: TEdit;
    lblNumber: TLabel;
    TsNfse: TTabSheet;
    Label61: TLabel;
    DBE_EMP_CODTRIB_MUN: TDBEdit;
    Label63: TLabel;
    DBE_EMP_CODTRIB_NAC: TDBEdit;
    Label64: TLabel;
    RxDBCB_EMP_REG_AP_TRIB_SN: TRxDBComboBox;
    Label65: TLabel;
    RxDBCb_EMP_REG_ESP_TRIB: TRxDBComboBox;
    Label66: TLabel;
    RxDBCb_EMP_IBS_CBS_TP_OPER: TRxDBComboBox;
    Label67: TLabel;
    RxDBCB_EMP_IBS_CBS_TP_ENTE_GOV: TRxDBComboBox;
    Label68: TLabel;
    RxDBCB_EMP_IBS_CBS_IND_DEST: TRxDBComboBox;
    Label69: TLabel;
    RxDBCB_EMP_TP_RET_PIS_COFINS: TRxDBComboBox;
    Label70: TLabel;
    RxDBCB_EMP_IBS_CBS_FIN_NFSE: TRxDBComboBox;
    Label71: TLabel;
    RxDBCB_EMP_INDFINAL: TRxDBComboBox;
    tsCadcnae: TTabSheet;
    Src_EmpCnae: TDataSource;
    U_EmpCnae: TUpdateSQL;
    Tb_EmpCnae: TQuery;
    Tb_EmpCnaeECNAE_ID: TFloatField;
    Tb_EmpCnaeECNAE_ID_EMP: TFloatField;
    Tb_EmpCnaeECNAE_ID_CNAE: TStringField;
    Tb_EmpCnaeECNAE_PRINCIPAL: TFloatField;
    Tb_EmpCnaeECNAE_CODLC_SERV: TStringField;
    Tb_EmpCnaeECNAE_COD_SERV: TStringField;
    Tb_EmpCnaeECNAE_IND_OP: TStringField;
    Tb_EmpCnaeECNAE_CODNBS: TStringField;
    Tb_EmpCnaeECNAE_CST_PIS_COFINS: TStringField;
    Tb_EmpCnaeECNAE_CST_IBS_CBS: TStringField;
    Tb_EmpCnaeECNAE_PINSS: TFloatField;
    Tb_EmpCnaeECNAE_PCOFINS: TFloatField;
    Tb_EmpCnaeECNAE_PPIS: TFloatField;
    Tb_EmpCnaeECNAE_PCLSS: TFloatField;
    Tb_EmpCnaeECNAE_PIR: TFloatField;
    Tb_EmpCnaeECNAE_PISSQN: TFloatField;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Tb_EmpCnaeECNAE_CADCLASSTRIB: TStringField;
    Tb_EmpCnaeECNAE_COD_ATIV: TStringField;
    Tb_EmpCnaeECNAE_TRIB_NAC: TStringField;
    Tb_EmpCnaeECNAE_REG_AP_TRIB_SN: TStringField;
    Tb_EmpCnaeECNAE_REG_ESP_TRIB: TStringField;
    Tb_EmpCnaeECNAE_TP_OPER: TStringField;
    Tb_EmpCnaeECNAE_P_ENTE_GOV: TStringField;
    Tb_EmpCnaeECNAE_TP_RET_PIS_COFINS: TStringField;
    Tb_EmpCnaeECNAE_IND_DEST: TStringField;
    Tb_EmpCnaeECNAE_FIN_NFSE: TStringField;
    Tb_EmpCnaeECNAE_IND_FINAL: TStringField;
    procedure BBnAtuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure MUDARCClick(Sender: TObject);
    procedure bbCriarParamClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SAIRClick(Sender: TObject);
    procedure DBE_CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CODLOCExit(Sender: TObject);
    procedure DBE_FONEExit(Sender: TObject);
    procedure DBE_FAXExit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBE_FoneDirExit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBE_CONT_CODLOCExit(Sender: TObject);
    procedure DBE_CONT_CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBE_EMP_AUTXML_CNPJCPFExit(Sender: TObject);
    procedure bbIniciarSessaoClick(Sender: TObject);
    procedure DBE_EMP_WHATSAPP_AUTOExit(Sender: TObject);
    procedure bbFecharSessaoClick(Sender: TObject);
    procedure bbEnviarTextoClick(Sender: TObject);
    procedure bbEnviarArquivoClick(Sender: TObject);
    procedure edt_fone_destExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnTextToNrClick(Sender: TObject);
    procedure DBE_EMP_CODTRIB_NACKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_EMP_CODTRIB_NACExit(Sender: TObject);
  private
    { Private declarations }

         function fExisteCodTributo(pCodTrib: String): boolean;

  public
    { Public declarations }
  end;

function fMostrarCaracteres(pTexto: String): boolean;

var
  Frm_Emp: TFrm_Emp;
  emp_ori:String;
  emp_oper: Integer=0;
implementation

uses Math, func_excecoes;


{$R *.dfm}

procedure TFrm_Emp.BBnAtuClick(Sender: TObject);
begin
  inherited;
  flcademp(CAMPO.ItemIndex,1,trim(Edit1.Text));
end;

procedure TFrm_Emp.FormCreate(Sender: TObject);
begin
  inherited;

if codusr<>1111 then
   TabSheet1.TabVisible:=false;

PC1.ActivePageIndex:=0;

{
edt_mensagem.Lines.Add(' ');
edt_mensagem.Lines.Add(' ');
edt_mensagem.Lines.Add(' Intersys Sistemas de Gestão Empresarial ');
edt_mensagem.Lines.Add('             (62) 3247 - 1580            ');
edt_mensagem.Lines.Add('   Acesse http://www.intersysnet.com.br  ');
edt_mensagem.Lines.Add(' Ligue e agende uma visita com nossos consultores. ');
}

DM2.Tb_EmpCGC.DisplayFormat:=pDFCNPJ;
DM2.Tb_EmpCNPF.DisplayFormat:=pDFCNPF;
DM2.Tb_EmpEMP_CPF_RESPONS.DisplayFormat:=pDFCNPF;
DM2.Tb_EmpEMP_CONT_CPF.DisplayFormat:=pDFCNPF;
DM2.Tb_EmpEMP_CONT_CNPJ.DisplayFormat:=pDFCNPJ;


emp_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADEMP') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;

if DM1.Tb_PargerPCODLOC.Value=1 then
   begin
   DBE_CODLOC.Visible:=True;
   DBE_CIDADE.ReadOnly:=true;
   DBE_CIDADE.TabStop :=false;
   DBE_CIDADE.ParentColor:=True;
   DBE_UF.ReadOnly:=true;
   DBE_UF.TabStop :=false;
   DBE_UF.ParentColor:=True;
   end
else
   begin
   DBE_CODLOC.Visible:=False;
   DBE_CIDADE.Left   :=140;
   DBE_CIDADE.Width  :=275;
   end;


INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;

end;

procedure TFrm_Emp.INCLUIRClick(Sender: TObject);
begin
  inherited;
tsContador.Enabled:=true;
TsNfse.Enabled:=true;
DM2.Tb_Emp.Append;
DM2.Tb_EmpDATACAD.Value:=pdatasis;
DBEdit1.Enabled:=True;
mcodigo:=DM2.Tb_EmpCODEMP.AsString;
DM2.Tb_EmpEMP_OPTSIMPLES.AsFloat  :=0;
DM2.Tb_EmpEMP_INC_CULTURAL.AsFloat:=0;

DBEdit2.SetFocus;
emp_oper:=0;
end;

procedure TFrm_Emp.ALTERARClick(Sender: TObject);
begin
  inherited;
PC1.ActivePageIndex:=0;
  if DM2.Tb_Emp.Eof then
   begin
   fmensagem('Não a registro ha ser alterado!',0,['0'],0);
   cancelar.Click;
   exit;
   end;

   DBEdit8.Enabled := True;
tsContador.Enabled:=true;

TsNfse.Enabled:=true;
DM2.Tb_Emp.Edit;
DM2.Tb_EmpDATAALT.Value:=pdatasis;
DBEdit1.Enabled:=False;
DBEdit2.SetFocus;
emp_oper:=1;
end;

procedure TFrm_Emp.GRAVARClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_EmpDATACAD.IsNull then
   DM2.Tb_EmpDATACAD.Value:=date;
if DM4.Tb_ParGer02PG2USANFE.AsInteger>0 then
   begin
   if DM2.Tb_EmpEMP_OPTSIMPLES.AsInteger<1 then
      begin
      MessageDlg('Favor Selecionar o Código de Regime tributado da Empresa!',mtWarning,[mbOk],0);
      RxDBCB_OPTSIMPLES.SetFocus;
      exit;
      end;
{   else if DM2.Tb_EmpEMP_OPTSIMPLES.AsInteger>3 then
      begin
      MessageDlg('Favor Selecionar o Código de Regime tributado da Empresa Válido!',mtWarning,[mbOk],0);
      RxDBCB_OPTSIMPLES.SetFocus;
      exit;
      end;
{   if DM2.Tb_EmpEMP_OPTSIMPLES.AsInteger=2 then
      DM2.Tb_EmpEMP_OPTSIMPLES.AsInteger:=1;}
   end;
dm2.tB_Emp.Post;
if emp_oper=0 then
   bbCriarParam.Click;
   
tsContador.Enabled:=false;
TsNfse.Enabled    :=false;
cancelar.Click;
end;

procedure TFrm_Emp.EXCLUIRClick(Sender: TObject);
var
mcodemp: Integer;
begin
  inherited;
if DM2.Tb_EmpCODEMP.Value=1 then
   begin
   fmensagem('Esta empresa jamais podera ser excluida!',0,['0'],0);
   Exit;
   end;
mcodemp:=DM2.Tb_EmpCODEMP.AsInteger;
if DM2.Tb_Emp.Eof then
   begin
   fmensagem('Não ha registro a ser excluido!',0,['0'],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   DM2.Tb_Emp.Delete;
   end;
if fmensagem('Quer Eliminar todos os dados desta Empresa?',0,['1','2'],2)=mrYes then
   Begin
   mValidarSenha.pTipo:=0;
   mValidarSenha.pCodusr:=codusr;
   mValidarSenha.pCodSen:=36;
   mValidarSenha.pCodEmp:=0;
   mValidarSenha.pCodCli:=0;
   mValidarSenha.pLotSeq:=0;
   mValidarSenha.pChave :=0;
   mValidarSenha.pOrdem :=0;
   mValidarSenha.pTexto :='Senha Para Zerar Estoque de Produtos';
   mValidarSenha.pChave_St:='';
   mValidarSenha.pDesc_requisitado :=0;

   if fValidaSenha(mValidarSenha)<>0 then
      begin
      exit;
      end;
   // dados a eliminar: CADP01, OLD_CADP01, OLD_CADP01V,
//                      CADP01D, OLD_CADP01D, CADP02, OLD_CADP02,
//                      CADP02D,OLD_CADP02D,
//                      CADP02S,OLD_CADP02S,
//                      CADPF1,OLD_CADPF1,
//                      CADPF2,OLD_CADPF2,
//                      CADDAR,OLD_CADDAR,
//                      CADDAP,OLD_CADDAP,
//                      CADPAR,OLD_CADPAR,
//                      CADLDR,OLD_CADLDR,
//                      CADCHQ,OLD_CADCHQ,
//                      CADCHCP,
//                      CADPRO,OLD_CADPRO,
//                      CADCLI,OLD_CADCLI,
//                      CADEST,CADLGC,
//                      CADNE,OLD_CADNE,
//                      CADNS,OLD_CADNS,FPCPDUP,
//                      CADVEN,OLD_CADVEN,
//                      CADTRA,OLD_CADTRA,
//                      CADAJU,OLD_CADAJU,
//                      CADTAB,CADTCA,
//                      FPCP, FPCR, FPCRDUP,
//                      CADOS01,OLD_CADOS01,
//                      CADOS02,OLD_CADOS02,
//                      CADOS03,OLD_CADOS03
//                      CADOS04,OLD_CADOS04
//                      CADOS05,OLD_CADOS05
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADP01 where P1CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 220 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADP01 where P1CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 227 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADP01V where P1VCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADP01V where P1VCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADP01D where P1DCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADP01D where P1DCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADP02 where P2CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADP02 where P2CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADP02D where P2DCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADP02D where P2DCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADP02S where P2SCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADP02S where P2SCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADPF1 where PF1CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADPF1 where PF1CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADPF2 where PF2CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADPF2 where PF2CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADDAR where CRCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADDAR where CRCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADDAP where CACODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADDAP where CACODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADPAR where PCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADPAR where PCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADLDR where CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADLDR where CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADCHQ where CHCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADCHQ where CHCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADCHCP where CHCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADPRO where PDCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADPRO where PDCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADCLI where CCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADCLI where CCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADEST where CECODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADLGC where CLCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADNE where NECODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADNE where NECODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADNS where NSCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADNS where NSCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from FPCPDUP where FPCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from FPCP where FPCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from FPCRDUP where FPCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from FPCR where FPCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADVEN where VCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADTRA where TRCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADAJU where AJCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADAJU where AJCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADTAB where TCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADTCA where TCCODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADOS01 where OS1CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADOS01 where OS1CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADOS02 where OS2CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADOS02 where OS2CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADOS03 where OS3CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADOS03 where OS3CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADOS04 where OS4CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADOS04 where OS4CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from CADOS05 where OS5CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Delete from OLD_CADOS05 where OS5CODEMP=0'+IntTostr(mcodemp));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro 226 ao Excluir dados',0,['0'],0);
      end;

   fmensagem('Concluido!',0,['0'],0);
   end;




end;

procedure TFrm_Emp.CANCELARClick(Sender: TObject);
begin
  inherited;
DM2.Tb_Emp.Cancel;
tsContador.Enabled:=false;
TsNfse.Enabled    :=false;
emp_oper:=0;
end;

procedure TFrm_Emp.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if emp_ori = '' then begin
     PC1.ActivePageIndex:=0;
     ALTERAR.SetFocus;
  end else begin
     ModalResult:=MrOk;
     emp_ori := '';
  end;
end;

procedure TFrm_Emp.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 9) or (key = 27) then begin
     if emp_ori = '' then begin
        PC1.ActivePageIndex:=0;
        ALTERAR.SetFocus;
     end else begin
        ModalResult:= MrOk;
        emp_ori    := '';
     end;
     Abort;
  end;
end;

procedure TFrm_Emp.DBEdit1Exit(Sender: TObject);
begin
  inherited;

if mcodigo<>DM1.Tb_CliCCODCLI.AsString then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('Select RAZAO from CADEMP where CODEMP=0'+DM2.Tb_EmpCODEMP.AsString);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
      ShowMessage('Este código ja esta cadastrado Nome: '+DM1.Query1.Fields[0].AsString);
      DBEdit1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Emp.MUDARCClick(Sender: TObject);
begin
  inherited;
Application.CreateForm(TFrm_CodEmp, Frm_CodEmp);
Frm_CodEmp.MCODEMP.Text:=DM2.Tb_EmpCODEMP.AsString;
Frm_CodEmp.NOMEMP.Text :=DM2.Tb_EmpRAZAO.Value;
Frm_CodEmp.ShowModal;
Frm_CodEmp.Free;
BBnAtu.Click;

end;

procedure TFrm_Emp.bbCriarParamClick(Sender: TObject);
begin
  inherited;
if DM2.Tb_EmpCODEMP.IsNull then
   exit;
if flcadpar01(0,DM2.Tb_EmpCODEMP.AsInteger,'1') then
   begin
   ShowMessage('Ja estava cadastrado');
   exit;
   end;

DM4.Tb_Par01.Append;
DM4.Tb_Par01PCODEMP.Value:=DM2.Tb_EmpCODEMP.Value;
DM4.Tb_Par01pcodseq.Value :=1;
DM4.Tb_Par01PMANDC01.Value:=0;
DM4.Tb_Par01PMANDC02.Value:=0;
DM4.Tb_Par01PMANDCV.Value :=0;
DM4.Tb_Par01PMANDI01.Value:=0;
DM4.Tb_Par01PMANDI02.Value:=0;
DM4.Tb_Par01PMANDIV.Value :=0;
DM4.Tb_Par01PNUMPED.Value   :=1;
DM4.Tb_Par01PNUMPF.Value    :=1;
DM4.Tb_Par01PNUMLIC.Value   :=1;
DM4.Tb_Par01PDBKP.Value     :='';
DM4.Tb_Par01PARQBKP.Value   :='';
DM4.Tb_Par01PFATMZ.Value    :=0;
DM4.Tb_Par01PFATMZC.Value   :=0;
DM4.Tb_Par01PCXAUTO.Value   :=0;
DM4.Tb_Par01PVISNOT.Value   :=0;
DM4.Tb_Par01PVISLSEP.Value  :=0;
DM4.Tb_Par01PVISORC.Value   :=0;
DM4.Tb_Par01PVISVAL.Value   :=0;
DM4.Tb_Par01.Post;
fgravpar02(0,0);

end;

procedure TFrm_Emp.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM2.Tb_Emp.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_Emp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
DM1.Tb_Emp.Close;
DM1.Tb_Emp.SqL.Clear;
DM1.Tb_Emp.SQL.Add('Select * from CADEMP where CODEMP=0'+IntToStr(codemp)
                  +' ORDER BY CODEMP,RAZAO ');
DM1.Tb_Emp.Open;
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

procedure TFrm_Emp.SAIRClick(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
  if emp_ori='' THEN
     close;

end;

procedure TFrm_Emp.DBE_CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM2.Tb_Emp.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM2.Tb_EmpCODLOC.Value:=ValFloat(fChamaLoc(0,'frm_Emp',Key));
      DBE_CODLOCExit(self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_Emp.DBE_CODLOCExit(Sender: TObject);
begin
  inherited;
if not flcadloc(1,0,DM2.Tb_EmpCODLOC.AsString) then
   begin
   verteclado(1);
   fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   DBE_CODLOC.SetFocus;
   end
else
   begin
   DM2.Tb_EmpCODLOC.Value:=DM1.Tb_LocLCODLOC.Value;
   DM2.Tb_EmpCIDADE.Value:=DM1.Tb_LocLNOME.Value;
   DM2.Tb_EmpUF.Value    :=DM1.Tb_LocLUF.Value;
   end;

end;

procedure TFrm_Emp.DBE_FONEExit(Sender: TObject);
begin
  inherited;
  if (Trim(DBE_FONE.Text) <> '') and (Length(LimpaString(DBE_FONE.Text)) >8) then
      DBE_FONE.Text := MaskFone(DBE_FONE.Text);
end;

procedure TFrm_Emp.DBE_FAXExit(Sender: TObject);
begin
  inherited;
  if (Trim(DBE_FAX.Text) <> '') and (Length(LimpaString(DBE_FAX.Text)) >8) then
      DBE_FAX.Text := MaskFone(DBE_FAX.Text);
end;

procedure TFrm_Emp.DBEdit18Exit(Sender: TObject);
begin
  inherited;
  if (Trim(DBEdit18.Text) <> '') and (Length(LimpaString(DBEdit18.Text)) >8) then
      DBEdit18.Text := MaskFone(DBEdit18.Text);
end;

procedure TFrm_Emp.DBE_FoneDirExit(Sender: TObject);
begin
  inherited;
  if (Trim(DBE_FoneDir.Text) <> '') and (Length(LimpaString(DBE_FoneDir.Text)) >8) then
      DBE_FoneDir.Text := MaskFone(DBE_FoneDir.Text);
end;

procedure TFrm_Emp.DBEdit14Exit(Sender: TObject);
begin
  inherited;
  if (Trim(DBEdit14.Text) <> '') and (Length(LimpaString(DBEdit14.Text)) >8) then
      DBEdit14.Text := MaskFone(DBEdit14.Text);
end;

procedure TFrm_Emp.DBEdit16Exit(Sender: TObject);
begin
  inherited;
  if (Trim(DBEdit16.Text) <> '') and (Length(LimpaString(DBEdit16.Text))  >8) then
      DBEdit16.Text := MaskFone(DBEdit16.Text);
end;

procedure TFrm_Emp.DBE_CONT_CODLOCExit(Sender: TObject);
begin
if not flcadloc(1,0,DM2.Tb_EmpEMP_CONT_CODLOC.AsString) then
   begin
   verteclado(1);
   fmensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   DBE_CONT_CODLOC.SetFocus;
   end
else
   begin
   DM2.Tb_EmpEMP_CONT_CODLOC.Value   :=DM1.Tb_LocLCODLOC.Value;
   DM2.Tb_EmpEMP_CONT_NOMLOC.AsString:=DM1.Tb_LocLNOME.AsString;
   DM2.Tb_EmpEMP_CONT_UF.AsString    :=DM1.Tb_LocLUF.AsString;
   end;

end;

procedure TFrm_Emp.DBE_CONT_CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if DM2.Tb_Emp.State in [DsEdit, DsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM2.Tb_EmpEMP_CONT_CODLOC.Value:=ValFloat(fChamaLoc(0,'frm_Emp',Key));
      DBE_CONT_CODLOCExit(self);
      key:=#0;
      end;
   end;
end;

procedure TFrm_Emp.DBEdit6Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_EmpEMP_CPF_RESPONS.AsFloat>0 then
   begin
   if not Fcpf(insere(DM1.Tb_EmpEMP_CPF_RESPONS.Asstring,'0',11)) then
      begin
      MessageDlg('CPF Invalido!',mtWarning,[mbOk],0);
      DBEdit6.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_Emp.DBE_EMP_AUTXML_CNPJCPFExit(Sender: TObject);
begin
  inherited;
DM2.Tb_EmpEMP_AUTXML_CNPJCPF.AsString:=MaskCPFCNPJ(DM2.Tb_EmpEMP_AUTXML_CNPJCPF.AsString);
end;

procedure TFrm_Emp.bbIniciarSessaoClick(Sender: TObject);
var
mRetorno: String;
mComando: String;
begin
  inherited;

if DM2.Tb_EmpCODEMP.AsInteger<>1 then
   begin
   MessageDlg('Configuração Aceita Apenas na Empresa 1',mtWarning,[mbOk],0);
   exit;
   end;
if valfloat(DM2.Tb_EmpEMP_WHATSAPP_AUTO.AsString)=0 then
   begin
   MessageDlg('Número do WhatsApp Tem que Ser Colocado!',mtWarning,[mbOk],0);
   exit;
   end;

if length(trim(DM2.Tb_EmpEMP_WHATSAPP_ID.AsString))<2 then
   begin
   MessageDlg('Número do WhatsApp/Session id Tem que Ser Colocado!',mtWarning,[mbOk],0);
   exit;
   end;


if DM2.Tb_EmpCGC.asfloat<=0 then
   begin
   MessageDlg('Falta o CNPJ da Empresa!',mtWarning,[mbOk],0);
   exit;
   end;


if not fExisteAplicacaoExternaJava then
   exit;




if not fExecutarWhatsAppExternoStart(DM2.Tb_EmpEMP_WHATSAPP_ID.AsString, mRetorno) then
   MessageDlg('Erro ao Buscar Iniciar Sessão '+mRetorno,mtWarning,[mbOk],0)



end;

procedure TFrm_Emp.DBE_EMP_WHATSAPP_AUTOExit(Sender: TObject);
begin
  inherited;
  if (Trim(DBE_EMP_WHATSAPP_AUTO.Text) <> '') and (Length(LimpaString(DBE_EMP_WHATSAPP_AUTO.Text)) >8) then
      begin
      DBE_EMP_WHATSAPP_AUTO.Text := MaskFone(DBE_EMP_WHATSAPP_AUTO.Text);
      DM2.Tb_EmpEMP_WHATSAPP_ID.value :='int'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
      end;


end;

procedure TFrm_Emp.bbFecharSessaoClick(Sender: TObject);
var
mRetorno: String;
mComando: String;
begin
  inherited;

if DM2.Tb_EmpCODEMP.AsInteger<>1 then
   begin
   MessageDlg('Configuração Aceita Apenas na Empresa 1',mtWarning,[mbOk],0);
   exit;
   end;
if valfloat(DM2.Tb_EmpEMP_WHATSAPP_AUTO.AsString)=0 then
   begin
   MessageDlg('Número do WhatsApp Tem que Ser Colocado!',mtWarning,[mbOk],0);
   exit;
   end;

if length(trim(DM2.Tb_EmpEMP_WHATSAPP_ID.AsString))<2 then
   begin
   MessageDlg('Número do WhatsApp/Session id Tem que Ser Colocado!',mtWarning,[mbOk],0);
   exit;
   end;


if DM2.Tb_EmpCGC.asfloat<=0 then
   begin
   MessageDlg('Falta o CNPJ da Empresa!',mtWarning,[mbOk],0);
   exit;
   end;


if not fExisteAplicacaoExternaJava then
   exit;




if fExecutarWhatsAppExternoTerminate(DM2.Tb_EmpEMP_WHATSAPP_ID.AsString, mRetorno) then
   MessageDlg('Retorno '+mRetorno,mtWarning,[mbOk],0)
else
   MessageDlg('Erro ao Fechar Sessao '+mRetorno,mtWarning,[mbOk],0)




end;

procedure TFrm_Emp.bbEnviarTextoClick(Sender: TObject);
var
mRetorno: String;
mComando: String;
begin
  inherited;


if DM2.Tb_EmpCODEMP.AsInteger<>1 then
   begin
   MessageDlg('Configuração Aceita Apenas na Empresa 1',mtWarning,[mbOk],0);
   exit;
   end;
if valfloat(DM2.Tb_EmpEMP_WHATSAPP_AUTO.AsString)=0 then
   begin
   MessageDlg('Número do WhatsApp Tem que Ser Colocado!',mtWarning,[mbOk],0);
   exit;
   end;

if length(trim(DM2.Tb_EmpEMP_WHATSAPP_ID.AsString))<2 then
   begin
   MessageDlg('Número do WhatsApp/Session id Tem que Ser Colocado!',mtWarning,[mbOk],0);
   exit;
   end;


if DM2.Tb_EmpCGC.asfloat<=0 then
   begin
   MessageDlg('Falta o CNPJ da Empresa!',mtWarning,[mbOk],0);
   exit;
   end;

bbEnviarTexto.Enabled:=false;
//fMostrarCaracteres(edt_mensagem.lines.text);


if not fExisteAplicacaoExternaJava then
   begin
   bbEnviarTexto.Enabled:=true;
   exit;
   end;


//function fExecutarWhatsAppExternoSendMessage(pSessionId, pFoneDest, pMensagem: String;   out pRetorno:String ): boolean;


if not fExecutarWhatsAppExternoSendMessage(DM2.Tb_EmpEMP_WHATSAPP_ID.AsString, edt_fone_dest.text,edt_mensagem.text,  mRetorno) then
   MessageDlg('Erro ao Buscar Iniciar Sessão '+mRetorno,mtWarning,[mbOk],0);



bbEnviarTexto.Enabled:=true;


end;

procedure TFrm_Emp.bbEnviarArquivoClick(Sender: TObject);

var
mRetorno: String;
mComando: String;
begin
  inherited;

if DM2.Tb_EmpCODEMP.AsInteger<>1 then
   begin
   MessageDlg('Configuração Aceita Apenas na Empresa 1',mtWarning,[mbOk],0);
   exit;
   end;
if valfloat(DM2.Tb_EmpEMP_WHATSAPP_AUTO.AsString)=0 then
   begin
   MessageDlg('Número do WhatsApp Tem que Ser Colocado!',mtWarning,[mbOk],0);
   exit;
   end;

if length(trim(DM2.Tb_EmpEMP_WHATSAPP_ID.AsString))<2 then
   begin
   MessageDlg('Número do WhatsApp/Session id Tem que Ser Colocado!',mtWarning,[mbOk],0);
   exit;
   end;


if DM2.Tb_EmpCGC.asfloat<=0 then
   begin
   MessageDlg('Falta o CNPJ da Empresa!',mtWarning,[mbOk],0);
   exit;
   end;

bbEnviarArquivo.Enabled:=false;

if not fExisteAplicacaoExternaJava then
   begin
   bbEnviarArquivo.Enabled:=true;
   exit;
   end;


//function fExecutarWhatsAppExternoSendMessage(pSessionId, pFoneDest, pMensagem: String;   out pRetorno:String ): boolean;

if opd1.Execute then
   begin
   if not fExecutarWhatsAppExternoSendFileBase64(DM2.Tb_EmpEMP_WHATSAPP_ID.AsString, edt_fone_dest.text,opd1.FileName,  mRetorno) then
      MessageDlg('Erro ao Buscar Iniciar Sessão '+mRetorno,mtWarning,[mbOk],0)
   end;

bbEnviarArquivo.Enabled:=true;


end;

procedure TFrm_Emp.edt_fone_destExit(Sender: TObject);
begin
  inherited;
edt_fone_dest.text:= MaskFone(fdeixanum(edt_fone_dest.text));

end;


function fMostrarCaracteres(pTexto: String): boolean;
var
x: integer;
mStringList: TStringList;

begin

mStringList:=TStringList.create;
mStringList.Text:='';

for x:=0 to length(pTexto) do
   begin
   mStringList.Add('Caractere['+pTexto[x]+'] codigo []');
   mStringList.Add('Caractere['+pTexto[x]+'] codigo ['+inttostr(ord(pTexto[x]))+']');
//   mStringList.Add('Caractere['+pTexto[x]+'] codigo ['+inttostr(integer(pTexto[x]))+']');


   end;
mStringlist.savetofile('c:\sge\lobo.txt');

fSalvarTextoparaArquivo2(mStringList.Text);

end;


procedure TFrm_Emp.BitBtn2Click(Sender: TObject);
 Var
   output : String;
   input  : String;
   i, n : Integer;


begin
  inherited;
   input := edtNrToText.Text;

   for i := 0 to Pred ( Length( input ) div 2 ) do
   begin
     // Copia os dois primeiros caracteres
     n := StrToInt( Copy( input, 0, 2 ) );

     // Converte
     output := output + Chr( n );

     // Apaga os dois primeiros caracteres
     Delete( input, 1, 2 );
   end;

   lblText.Caption := output;

end;

procedure TFrm_Emp.btnTextToNrClick(Sender: TObject);
 Var
   output : String;
   input  : String;
   i, n : Integer;

begin
  inherited;

   input := edtTextToNr.Text;

   for i := 1 to Length( input ) do
   begin
     // Copia e converte o primeiro caracter
     n := Ord( input[ i ] );

     // Insere na saída
     output := output + IntToStr( n );
   end;

   lblNumber.Caption := output;
 End;

procedure TFrm_Emp.DBE_EMP_CODTRIB_NACKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%')) then
  begin
  if (dm2.Tb_Emp.State in [dsEdit,dsInsert]) then
     begin
     dm2.Tb_EmpEMP_CODTRIB_NAC.AsString:=fChamaPesqTribNac(0,'_venda',key);
     key:=#0;
     if (dm2.Tb_EmpEMP_CODTRIB_NAC.AsString)<>'' then
        begin
        keybd_event(VK_RETURN,0,0,0);
        end;
     end;
  end

end;

procedure TFrm_Emp.DBE_EMP_CODTRIB_NACExit(Sender: TObject);
begin
  inherited;
 if not fExisteCodTributo(DM2.Tb_EmpEMP_CODTRIB_NAC.AsString) then
    begin
    MessageDlg('Codigo do Tribudo '+ DM2.Tb_EmpEMP_CODTRIB_NAC.AsString ,mtWarning,[mbOk],0);
    DBE_EMP_CODTRIB_NAC.SetFocus;
    end;


end;




function TFrm_Emp.fExisteCodTributo(pCodTrib: String): boolean;
var
query_tributo: tQuery;
begin
result:=true;
if trim(pCodTrib)<>'' then
   begin
   query_tributo:=tQuery.create(nil);
   query_tributo.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_tributo.sql.add('select count(*) from CADTRIB_MUN where TM_CODIGO=:CODIGO ');
   query_tributo.parambyname('CODIGO').AsString:=pCodTrib;
   try
      query_tributo.Open;
      if query_tributo.fields[0].AsInteger<1 then
         begin
         MessageDlg('Código do Tributo '+pCodTrib+' não Cadastrado!',mtWarning,[mbOk],0);
         result:=false;
         end;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_tributo,36638,'_stru '+e.message,'user');
      end;
      end;
   query_tributo.close;
   freeandnil(query_tributo);
   end;
end;


end.

