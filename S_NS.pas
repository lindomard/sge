  unit S_NS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func,S_DM1, S_C, DBCtrls, StdCtrls, Grids, DBGrids,
  ComCtrls, Mask, Buttons, ExtCtrls,lerarq,S_VisNF,s_NFE,
  xmldom, XMLIntf, msxmldom, ADODB,XMLDoc, RxDBComb, ToolEdit,ShellAPI;

type
  TFrm_NS = class(TFrm_C)
    DBRg_EntSai: TDBRadioGroup;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    dbModelo: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    db_ordem: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit10: TDBEdit;
    Label5: TLabel;
    Label10: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    LANCAR: TBitBtn;
    GroupBox7: TGroupBox;
    Label27: TLabel;
    DBEdit44: TDBEdit;
    Label28: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit47: TDBEdit;
    GroupBox8: TGroupBox;
    Label48: TLabel;
    Label50: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    Label49: TLabel;
    bbVerNota: TBitBtn;
    DBEdit51: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    dbSerie: TDBEdit;
    Label53: TLabel;
    dbSubSerie: TDBEdit;
    Label54: TLabel;
    DBEdit3: TDBEdit;
    Label55: TLabel;
    DBEdit52: TDBEdit;
    ts_outimp: TTabSheet;
    gb_impipi: TGroupBox;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    gb_impfre: TGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    gb_impseg: TGroupBox;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    gb_ipi: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBCB_Emitente: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    TsNFE: TTabSheet;
    GroupBox5: TGroupBox;
    Label63: TLabel;
    DBEdit74: TDBEdit;
    Label64: TLabel;
    DBEdit75: TDBEdit;
    Label68: TLabel;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    Label69: TLabel;
    Label70: TLabel;
    DBEdit78: TDBEdit;
    Label71: TLabel;
    DBEdit79: TDBEdit;
    Label72: TLabel;
    DBEdit80: TDBEdit;
    Label73: TLabel;
    DBEdit81: TDBEdit;
    Label74: TLabel;
    Label75: TLabel;
    DBEdit68: TDBEdit;
    DBEdit82: TDBEdit;
    Label76: TLabel;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    Label77: TLabel;
    DBEdit85: TDBEdit;
    Label78: TLabel;
    DBEdit86: TDBEdit;
    Label79: TLabel;
    DBEdit87: TDBEdit;
    Label80: TLabel;
    DBEdit88: TDBEdit;
    bbReeNFE: TBitBtn;
    PEDIDO: TBitBtn;
    gb_nfServico: TGroupBox;
    Label62: TLabel;
    DBE_NFSERV_DATHORREC: TDBEdit;
    Label81: TLabel;
    DBE_NFSERV_DATHORCANC: TDBEdit;
    Label82: TLabel;
    DBE_NFSERV_NUMNF: TDBEdit;
    DBE_NFSERV_LOTE: TDBEdit;
    Label83: TLabel;
    Label84: TLabel;
    DBE_NFSERV_PROTOCOLO: TDBEdit;
    tsOutros: TTabSheet;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    GroupBox3: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit43: TDBEdit;
    gb_totpro: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label38: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit32: TDBEdit;
    gb_totalpro: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    tsInfAdic: TTabSheet;
    GroupBox4: TGroupBox;
    DBEdit31: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    CB_COMPFISCO: TGroupBox;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    SaveDialog1: TSaveDialog;
    bbEmail: TBitBtn;
    DBRadioGroup2: TDBRadioGroup;
    Label85: TLabel;
    TRxDBCB_STATUS: TRxDBComboBox;
    tsOcorrencias: TTabSheet;
    DBGrid_evento: TDBGrid;
    Label86: TLabel;
    Query_ocorrencias: TQuery;
    src_ocorrencias: TDataSource;
    Query_ocorrenciasORDEM: TFloatField;
    Query_ocorrenciasTIPODOC: TFloatField;
    Query_ocorrenciasDATANF: TDateTimeField;
    Query_ocorrenciasCHAVEPED: TFloatField;
    Query_ocorrenciasLOTSEQPED: TFloatField;
    Query_ocorrenciasCODEMPPED: TFloatField;
    Query_ocorrenciasEVENTO: TStringField;
    src_ns: TDataSource;
    bbBuscarXML: TBitBtn;
    opd1: TOpenDialog;
    GB_SOBRE_CANC: TGroupBox;
    Label87: TLabel;
    DBE_DATHOR_CANC: TDBEdit;
    Label88: TLabel;
    DBE_NPROT_CANC: TDBEdit;
    GB_SOBRE_INUT: TGroupBox;
    Label89: TLabel;
    Label90: TLabel;
    DBE_DATHOR_INUT: TDBEdit;
    DBE_NPROT_INUT: TDBEdit;
    bbDadoscup: TBitBtn;
    bbXmlCanc: TBitBtn;
    bbSalvarXmlNota: TBitBtn;
    bbSalvarXMLCanc: TBitBtn;
    SaveDialog2: TSaveDialog;
    GB_SOBRE_DENEGACAO: TGroupBox;
    Label91: TLabel;
    Label92: TLabel;
    DBE_NSDATHOR_DENEG: TDBEdit;
    DBE_NSXML_NPROT_DENEG: TDBEdit;
    bbEnvPref: TBitBtn;
    Label93: TLabel;
    DBCB_TipDoc: TRxDBComboBox;
    Label94: TLabel;
    DBCB_TipoFrete: TRxDBComboBox;
    Label102: TLabel;
    cb_tipodoc: TComboBox;
    bbNFCE: TBitBtn;
    GroupBox6: TGroupBox;
    Label95: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label96: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label103: TLabel;
    DBE_NSNFCE_CHV_ACESSO: TDBEdit;
    DBE_NFCE_NUMERO: TDBEdit;
    DBE_NFCE_SERIE: TDBEdit;
    DBE_NSNFCE_NPROT: TDBEdit;
    DBE_NSNFCE_MODELO: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    DBE_NSNFCE_DATA: TDBEdit;
    bbvalidar: TBitBtn;
    edt_dtemis_data: TDateEdit;
    edt_dtemis_hora: TEdit;
    bbBuscarXMLNFCE: TBitBtn;
    DBt_info: TDBText;
    Label99: TLabel;
    DBE_NSNFSERV_NUMNF: TDBEdit;
    Label104: TLabel;
    DBE_NSNFSERV_NUMNF_RPS: TDBEdit;
    Label105: TLabel;
    DBE_NSNFSERV_PROTOCOLO: TDBEdit;
    Label106: TLabel;
    DBE_NSNFSERV_DATHORREC: TDBEdit;
    Label107: TLabel;
    DBE_NSNFSERV_DATHORCANC: TDBEdit;
    Label108: TLabel;
    DBE_NSNFSERV_SERIE: TDBEdit;
    BitBtn1: TBitBtn;
    bbSalvarNfceEve020: TBitBtn;
    bbSalvarNfceAutorizacao: TBitBtn;
    tsConsultas: TTabSheet;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    Label109: TLabel;
    edt_numnf: TEdit;
    cb_ambiente: TComboBox;
    bbCancelar: TBitBtn;
    Memo_cancelar: TMemo;
    Label110: TLabel;
    edt_evento: TEdit;
    Label111: TLabel;
    edt_chNfse: TEdit;
    Label112: TLabel;
    edt_xMotivo: TEdit;
    Label113: TLabel;
    edt_nomesaida: TEdit;
    BitBtn3: TBitBtn;
    tsBaixar: TTabSheet;
    bbConsNfce: TBitBtn;
    Memo_consnfe: TMemo;
    Label114: TLabel;
    edt_url_numnfse: TEdit;
    cb_url_amb: TComboBox;
    Memo_link: TMemo;
    bbBaixarNfse: TBitBtn;
    bbVisualiarNFSe: TBitBtn;
    bbSalvarNFSe: TBitBtn;
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure PEDIDOClick(Sender: TObject);
    procedure LANCARClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure bbVerNotaClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure bbReeNFEClick(Sender: TObject);
    procedure bbEnvPrefClick(Sender: TObject);
    procedure bbEmailClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure src_nsDataChange(Sender: TObject; Field: TField);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid_eventoDblClick(Sender: TObject);
    procedure bbBuscarXMLClick(Sender: TObject);
    procedure bbDadoscupClick(Sender: TObject);
    procedure bbXmlCancClick(Sender: TObject);
    procedure bbSalvarXmlNotaClick(Sender: TObject);
    procedure bbSalvarXMLCancClick(Sender: TObject);
    procedure bbNFCEClick(Sender: TObject);
    procedure bbvalidarClick(Sender: TObject);
    procedure edt_dtemis_dataExit(Sender: TObject);
    procedure edt_dtemis_horaExit(Sender: TObject);
    procedure edt_dtemis_horaChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure bbBuscarXMLNFCEClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbSalvarXmlNfseClick(Sender: TObject);
    procedure bbSalvarNfceAutorizacaoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure bbConsNfceClick(Sender: TObject);
    procedure bbBaixarNfseClick(Sender: TObject);
    procedure bbVisualiarNFSeClick(Sender: TObject);
    procedure bbSalvarNFSeClick(Sender: TObject);
  private
    { Private declarations }
    mIdNewBotoes: integer;
    function fNS01lerant(ptipo: Integer):Boolean;
    function fXmlNFE(pOrigem: Integer): Boolean;
    function fLerOcorrencias(pTipo: Integer): Boolean;
    function fDadosCupom: Boolean;


    function fSalvarXML(pTipo:string;pCodemp, pLotseq, pChave: Integer; pNomeSaida: String): boolean;




    procedure fatualizadatehota(pDatahora: tdatetime; pEdit_data: TDateEdit;pEdit_hora: tEdit);

    procedure fatualizadatehota_no_banco(pDatahora: tField; pEdit_data: TDateEdit;pEdit_hora: tEdit);


    function fSalvarXMLdoEvento(pIdNew: integer; pEvento: String; pNomeSaida: String): boolean;


    procedure fAtualizarBotoes(pIdNew: Integer);

    procedure fBaixarNfseDoSite(pMensagem: boolean);


    procedure fAtualizarDadosNFSe(pIdNewns: Integer);


  public
    { Public declarations }

    form_nfe: tFrm_Nfe;
  end;
function fns01gant(ptipo: Integer): Boolean;

var
  Frm_NS: TFrm_NS;
  ns_ori:String;
  moperns: Integer;
implementation

uses S_DM4, S_CFO, S_DM2, Func2, S_DM1_ADO, S_NFE_Impressao, S_PedCli,
  S_EnviarEmail, S_Agde, S_Ocorrencias, S_Informacoes, func_emitir_notas,
  func_excecoes, S_EmitirNF, s_nfse;

{$R *.dfm}

procedure TFrm_NS.BBnAtuClick(Sender: TObject);
var
mFiltros: string;
begin
  inherited;
if ns_ori='consulta' then
   begin
   fns01lerant(0);
   end
else
   begin
   if cb_tipodoc.itemindex<3 then
      mFiltros:=' NSNFCF = '+Inttostr(cb_tipodoc.itemindex)
   else
      mFiltros:=' ';

   flcadns(CAMPO.ItemIndex,0,0,Edit1.Text,pvazio,mfiltros) ;
   end;

end;

procedure TFrm_NS.INCLUIRClick(Sender: TObject);
begin
  inherited;
moperns:=0;
DM1.Tb_Ns.Append;
DM1.Tb_NsNSTIPO.Value:=0;
PC1.ActivePage:=tsCad;
ts_outimp.Enabled:=true;
DBRg_EntSai.SetFocus;
TsNFE.Enabled:=True;
end;

procedure TFrm_NS.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_NsNSNUMERO.IsNull then
   begin
   fMensagem('Não haa registro a ser alterado!',0,['0'],0);
   exit;
   end;

moperns:=8;
DM1.Tb_NS.Edit;
PC1.ActivePage:=tsCad;
ts_outimp.Enabled:=true;
DBRg_EntSai.SetFocus;
TsNFE.Enabled:=True;
end;

procedure TFrm_NS.GRAVARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_NsNSMODELO.IsNull then
   begin
   fMensagem('Modelo Inválido!',0,['0'],0);
   DBEdit2.SetFocus;
   exit;
   end;
if DM1.Tb_NsNSNUMERO.IsNull then
   begin
   fMensagem('Número Inválido!',0,['0'],0);
   DBEdit2.SetFocus;
   exit;
   end;
if DM1.Tb_NsNSSERIE.IsNull then
   begin
   fMensagem('Série Invalida!',0,['0'],0);
   DBEdit2.SetFocus;
   exit;
   end;
if (DM1.Tb_NsNSTOTPROI.AsFloat=0) and (DM1.Tb_NsNSTOTPROP.AsFloat=0) and (DM1.Tb_NsNSTOTPRON.AsFloat=0) then
   DM1.Tb_NsNSTOTPROI.AsFloat:=DM1.Tb_NsNSTOTNOTA.AsFloat;
if (DM1.Tb_NsNSTOTNOR.AsFloat=0) and (DM1.Tb_NsNSTOTRET.AsFloat=0) and (DM1.Tb_NsNSTOTISEN.AsFloat=0) then
   DM1.Tb_NsNSTOTNOR.AsFloat:=DM1.Tb_NsNSTOTNOTA.AsFloat;


if moperns=8 then
   fns01gant(moperns);
DM1.Tb_NSNSCODUSR.Value:=codusr;
DM1.Tb_NSNSDTALT.Value :=date;
DM1.Tb_NSNSHRALT.Value :=Formatdatetime(fhr, time);
dm1.tB_NS.Post;
CANCELAR.Click;
end;

procedure TFrm_NS.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_NsNSNUMERO.IsNull then
   begin
   ShowMessage('Nao ha registro a ser excluido!');
   exit;
   end;

if fmensagem('Quer Realmente Excluir o Nota de Saida?',0,['1','2'],2)=mrYes then
   begin
   fns01gant(9);
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;

   DM1.Query3.SQL.Add('Delete from CADNS where '
                  +' NSCODEMP=0'+DM1.Tb_NsNSCODEMP.AsString
                  +' and NSLOTSEQ_CP=0'+DM1.Tb_NsNSLOTSEQ_CP.AsString
                  +' and NSCHAVEP=0'+DM1.Tb_NsNSCHAVEP.AsString
                  +' and NSORDEMP=0'+DM1.Tb_NsNSORDEMP.AsString
                  +' and NSTIPO=0'+DM1.Tb_NsNSTIPO.AsString);

   try
      DM1.Query3.execsql;
      fdm1StartCommit;
   except on e : exception do
      ex_erroSql_Novo(DM1.Query3,512,'SGE','CADVER');
      end;
   BBnAtuClick(Self);
   end;


end;

procedure TFrm_NS.CANCELARClick(Sender: TObject);
begin
  inherited;
ts_outimp.Enabled:=false;
moperns:=0;
DM1.Tb_NS.Cancel;
TsNFE.Enabled:=False;
end;

procedure TFrm_NS.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if ns_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   ns_ori := '';
   end;

end;

procedure TFrm_NS.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if ns_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      ns_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_NS.FormCreate(Sender: TObject);
begin
  inherited;
  PC1.ActivePageIndex:=0;
  CAMPO.ItemIndex:=2;
  Edit1.text:=formatdatetime(fdt2, date);

  tsBaixar.Visible:=false;
  tsConsultas.Visible:=false;

  DBNavigator1.DataSource := DM1.Src_NS;
  DBGrid1.DataSource := DM1.Src_NS;
if codusr<>1111 then
   bbBuscarXML.Visible:=false;
DM1.Tb_NsNSDTEMIS.EditMask:='';
GB_SOBRE_CANC.visible:=false;
GB_SOBRE_INUT.visible:=false;
GB_SOBRE_DENEGACAO.visible:=false;

ns_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADNS') then
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

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;

Query_ocorrenciasORDEM.DisplayLabel:='Ordem';
Query_ocorrenciasTIPODOC.DisplayLabel:='Tipo Doc';
Query_ocorrenciasDATANF.DisplayLabel:='Data NF';
Query_ocorrenciasCHAVEPED.DisplayLabel:='Chave Ped';
Query_ocorrenciasLOTSEQPED.DisplayLabel:='Lot Seq';
Query_ocorrenciasCODEMPPED.DisplayLabel:='Cód Emp';
Query_ocorrenciasEVENTO.DisplayLabel:='Evento';
Query_ocorrenciasDATANF.DisplayFormat:=fdt2;







end;
function fns01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(NSCODNOV) from OLD_CADNS');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADNS (';
v:='';
for x:=0 to DM1.Tb_NS.FieldCount-1 do
   begin
   if DM1.Tb_NS.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_NS.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',NSCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_NS.FieldCount-1 do
   begin
   if DM1.Tb_NS.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM1.Tb_NS.Fields[x].FieldName='NSSTATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as NSSTATUS '
   else if DM1.Tb_NS.Fields[x].FieldName='NSCODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as NSCODUSR '
   else if DM1.Tb_NS.Fields[x].FieldName='NSTALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as NSTALT '
   else if DM1.Tb_NS.Fields[x].FieldName='NSHRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as NSHRALT '
   else
      minstru:=minstru+v+DM1.Tb_NS.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as NSCODNOV ';
minstru:=minstru+' from CADNS where NSCODEMP=0'+DM1.Tb_NSNSCODEMP.AsString
                +' and NSTIPO=0'+DM1.Tb_NSNSTIPO.AsString
                +' and NSNUMERO=0'+DM1.Tb_NsNSNUMERO.AsString
                +' and NSSERIE='+chr(39)+DM1.Tb_NsNSSERIE.Value+chr(39);
DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
except
   fMensagem('Erro ao Fazer o Backup da Alteracao AC00953. Contactar Suporte',0,['0'],0);
   end;
DM1.SG_ASSOC.Commit;
result:=True;



end;

function tfrm_NS.fNS01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_NS.FieldCount-1 do
   begin
   if DM1.Tb_NS.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_NS.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADNS where NSCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_NS.Close;
DM1.Tb_NS.SQL.Clear;
DM1.Tb_NS.SQL.add(minstru);
DM1.Tb_NS.Open;
BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
result:=true;
end;





procedure TFrm_NS.PEDIDOClick(Sender: TObject);
begin
  inherited;
if (DM1.Tb_NsNSCHAVEP.IsNull) or (DM1.Tb_NsNSCHAVEP.Value<=0) then
   begin
   fMensagem('Não ha chave de pedido relacionado a esta nota!',0,['0'],0);
   exit;
   end;


end;

procedure TFrm_NS.LANCARClick(Sender: TObject);
begin
  inherited;
if codusr<>1111 then
   begin
   fmensagem('Esta opção esta temporariamente suspensa para este usuario!',0,['0'],0);
   exit;
   end;


end;

procedure TFrm_NS.Edit1Exit(Sender: TObject);
begin
  inherited;
if ((CAMPO.ItemIndex=2) or (CAMPO.ItemIndex=5) or (CAMPO.ItemIndex=7)) and (Trim(Edit1.Text)<>'') then
   begin
   try
      Edit1.Text:=FormatDateTime(fdt2, StrtoDate(Edit1.Text));
   except
      fMensagem('Data Inválida!',0,['0'],0);
      Edit1.SetFocus;
      end;
   end
else
   begin
   if fsonumero(EDIT1.Text)<=0 then
      Edit1.Text:=''
   else
      edit1.Text:=fdeixanum(EDIT1.Text);
   end;




end;

procedure TFrm_NS.bbVerNotaClick(Sender: TObject);
begin
  inherited;
tsCad.Enabled    :=true;
ts_outimp.Enabled:=true;
testeform := TFrm_Ns(FindGlobalComponent('frm_visnf'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_VisNF, Frm_VisNF)
else
   begin
   Frm_VisNF.Free;
   Frm_VisNF:=nil;
   Application.CreateForm(TFrm_VisNF, Frm_VisNF)
   end;


Frm_VisNF.Qr_Dup.Close;
Frm_VisNF.Qr_Dup.SQL.Clear;
Frm_VisNF.Qr_Dup.SQL.Add('Select P1VDATAV AS DTVENC '
                            +'      ,P1VVALOR AS VALOR '
                            +'      ,P1VDESCF AS DESCF '
                            +'      ,P1VDTDESCF AS DTDESCF '
                            +' from CADP01V where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1VCODEMP=0'+DM1.Tb_NsNSCODEMP.AsString+' and ')
                  +' P1VLOTSEQ=0'+DM1.Tb_NsNSLOTSEQ_CP.AsString
                  +' and P1VCHAVE=0'+DM1.Tb_NsNSCHAVEP.AsString
                  +' and P1VORDEM=0'+DM1.Tb_NsNSORDEMP.AsString);
Frm_VisNF.Qr_Dup.Open;


Frm_VisNF.Qr_TotAliq.Close;
Frm_VisNF.Qr_TotAliq.SQL.Clear;
Frm_VisNF.Qr_TotAliq.SQL.Add('Select P2ALIQ AS PF2ALIQ,sum((P2PRECO*P2QTD)-P2TOTDES) as TOTLIQ '
                             +'       ,sum(P2BASEN+P2BCINR) AS BCICMS '
                             +'        ,sum(P2ICMSN+P2ICMSNR) AS ICMS '
                             +'        ,sum(P2BASER)           AS BASER '
                             +'        ,sum(P2ICMSR)           AS ICMSR '
                             +'        ,sum(P2TOTDES)          AS DESCONTO '
                             +'        ,sum(P2ISENTAS)         AS TOTISEN '
                             +'        ,sum(P2VALIPI)             AS VLRIPI '
                             +' from CADP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+DM1.Tb_NsNSCODEMP.AsString+' and ')
                  +' P2LOTSEQ=0'+DM1.Tb_NsNSLOTSEQ_CP.AsString
                  +' and P2CHAVE=0'+DM1.Tb_NsNSCHAVEP.AsString
                  +' and P2ORDEM=0'+DM1.Tb_NsNSORDEMP.AsString
                  +' group by P2ALIQ ');
Frm_VisNF.Qr_TotAliq.Open;

Frm_VisNF.Qr_TotSitTri.Close;
Frm_VisNF.Qr_TotSitTri.SQL.Clear;
Frm_VisNF.Qr_TotSitTri.SQL.Add('Select P2SIT AS PF2SIT,sum((P2PRECO*P2QTD)-P2TOTDES) as TOTLIQ '
                             +'       ,sum(P2BASEN+P2BCINR) AS BCICMS '
                             +'        ,sum(P2ICMSN+P2ICMSNR) AS ICMS '
                             +'        ,sum(P2BASER)           AS BASER '
                             +'        ,sum(P2ICMSR)           AS ICMSR '
                             +'        ,sum(P2TOTDES)          AS DESCONTO '
                             +'        ,sum(P2ISENTAS)         AS TOTISEN '
                             +'        ,sum(P2VALIPI)             AS VLRIPI '
                             +' from CADP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+DM1.Tb_NsNSCODEMP.AsString+' and ')
                  +' P2LOTSEQ=0'+DM1.Tb_NsNSLOTSEQ_CP.AsString
                  +' and P2CHAVE=0'+DM1.Tb_NsNSCHAVEP.AsString
                  +' and P2ORDEM=0'+DM1.Tb_NsNSORDEMP.AsString
                  +' group by P2SIT ');
Frm_VisNF.Qr_TotSitTri.Open;


Frm_VisNF.Qr_TotLista.Close;
Frm_VisNF.Qr_TotLista.SQL.Clear;
Frm_VisNF.Qr_TotLista.SQL.Add('Select P2LISTA AS PF2LISTA,sum((P2PRECO*P2QTD)-P2TOTDES) as TOTLIQ '
                             +'       ,sum(P2BASEN+P2BCINR) AS BCICMS '
                             +'        ,sum(P2ICMSN+P2ICMSNR) AS ICMS '
                             +'        ,sum(P2BASER)           AS BASER '
                             +'        ,sum(P2ICMSR)           AS ICMSR '
                             +'        ,sum(P2TOTDES)          AS DESCONTO '
                             +'        ,sum(P2ISENTAS)         AS TOTISEN '
                             +'        ,sum(P2VALIPI)             AS VLRIPI '
                             +' from CADP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+DM1.Tb_NsNSCODEMP.AsString+' and ')
                  +' P2LOTSEQ=0'+DM1.Tb_NsNSLOTSEQ_CP.AsString
                  +' and P2CHAVE=0'+DM1.Tb_NsNSCHAVEP.AsString
                  +' and P2ORDEM=0'+DM1.Tb_NsNSORDEMP.AsString
                  +' group by P2LISTA ');
Frm_VisNF.Qr_TotLista.Open;

Frm_VisNF.Qr_TotCFOP.Close;
Frm_VisNF.Qr_TotCFOP.SQL.Clear;
Frm_VisNF.Qr_TotCFOP.SQL.Add('Select P2CFO AS PF2CFO,sum((P2PRECO*P2QTD)-P2TOTDES) as TOTLIQ '
                            +'       ,sum(P2BASEN+P2BCINR) AS BCICMS '
                            +'       ,sum(P2ICMSN+P2ICMSNR) AS ICMS '
                            +'       ,sum(P2BASER)           AS BASER '
                            +'       ,sum(P2ICMSR)           AS ICMSR '
                            +'       ,sum(P2TOTDES)          AS DESCONTO '
                            +'       ,sum(P2ISENTAS)         AS TOTISEN '
                            +'       ,sum(P2VALIPI)             AS VLRIPI '
                             +' from CADP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+DM1.Tb_NsNSCODEMP.AsString+' and ')
                  +' P2LOTSEQ=0'+DM1.Tb_NsNSLOTSEQ_CP.AsString
                  +' and P2CHAVE=0'+DM1.Tb_NsNSCHAVEP.AsString
                  +' and P2ORDEM=0'+DM1.Tb_NsNSORDEMP.AsString
                  +' group by P2CFO ');
Frm_VisNF.Qr_TotCFOP.Open;
Frm_VisNF.natop.Caption:='';
mcinst:='';
While not Frm_VisNF.Qr_TotCFOP.Eof do
   begin
   Frm_VisNF.natop.Caption:=Frm_VisNF.natop.Caption+mcinst+FormatFloat('0000',Frm_VisNF.Qr_TotCFOPPF2CFO.Value);
   mcinst:='/';
   Frm_VisNF.Qr_TotCFOP.Next;
   end;

Frm_VisNF.Qr_TotCFOP.First;

Frm_VisNF.Qr_nf02.Close;
Frm_VisNF.Qr_nf02.SQL.Clear;
Frm_VisNF.Qr_nf02.SQL.add('Select P2CODPRO   AS CODPROD '
                     +'       ,P2CFO     AS CFOP '
                     +'       ,P2QTD    AS QUANTIDADE '
                     +'       ,P2ITEM    AS ITEM '
                     +'       ,P2PRECO      AS VLPRODUTO '
                     +'       ,P2ALIQ    AS ALIQ '
                     +'       ,P2LOTE    AS LOTE '
                     +'       ,P2DTVCTO  AS DATAV '
                     +'       ,P2DESC1  AS PDESC01 '
                     +'       ,P2DESC2  AS PDESC02 '
                     +'       ,P2DESC3  AS PDESC03 '
                     +'       ,P2SIT     AS SITTRI '
                     +'       ,P2ALIQ    AS ALIQN '
                     +'       ,P2ALIQNR  AS ALIQNR '
                     +'       ,P2BASEN   AS BASEN '
                     +'       ,P2ICMSN   AS ICMSN '
                     +'       ,P2BASER   AS BASER '
                     +'       ,P2ICMSR   AS ICMSR '
                     +'       ,P2TABELA  AS TABICM '
                     +'       ,P2LISTA   AS LISTA '
                     +'       ,P2TOTDES  AS TOTDES '
                     +'       ,P2BCINR  AS BASENR '
                     +'       ,P2ICMSNR  AS ICMSNR '
                     +'       ,P2ISENTAS AS ISENTAS '
                     +'       ,P2ALIPI   AS ALIPI'
                     +'       ,P2VALIPI  AS VALIPI '
                     +'       ,P2PCOMAX  AS PMC '
                     +'       ,PDNOME     AS DESCRICAO '
                     +'       ,PDUND      AS UNID '
                     +' from CADP02,CADPRO where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+DM1.Tb_NsNSCODEMP.AsString+' and ')
                     +' P2LOTSEQ=0'+DM1.Tb_NsNSLOTSEQ_CP.AsString
                     +' and P2CHAVE=0'+dm1.Tb_NsNSCHAVEP.AsString
                     +' and P2ORDEM=0'+DM1.Tb_NsNSORDEMP.AsString
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                     +' and PDCODPRO=P2CODPRO ');
Frm_VisNF.Qr_nf02.Open;

Frm_VisNF.Qr_nf01.Close;
Frm_VisNF.Qr_nf01.SQL.Clear;
Frm_VisNF.Qr_nf01.SQL.add('Select (P1CODEMP-P1CODEMP)+1 AS FORCLI '
                     +',P1CODCLI    AS CODIGO '
                     +',P1DATAP     AS DATAPED '
                     +',P1DESC01    AS PDESC01 '
                     +',P1DESC02    AS PDESC02 '
                     +',(P1DESC02-P1DESC02) AS PDESC03 '
                     +',P1VLRDES    AS DESCVLR '
                     +',P1TOTDES    AS TOTDES '
                     +',P1TOTALB    AS TOTMER '
                     +',P1TOTALL    AS TOTLIQ '
                     +',P1STATUS    AS STATUS '
                     +',P1TOTPOS    AS TOTPOS '
                     +',P1TOTNEG    AS TOTNEG '
                     +',P1TOTINA    AS TOTINA '
                     +',P1VALFRE    AS VALFRE '
                     +',P1VALSEG    AS VALSEG '
                     +',P1BASEN     AS BASEN '
                     +',P1BASER     AS BASER '
                     +',P1ICMSN     AS ICMSN '
                     +',P1ICMSR     AS ICMSR '
                     +',(P1BASENRN+P1BASENRP+P1BASENRI)  AS BASENR '
                     +',(P1ICMSNRN+P1ICMSNRP+P1ICMSNRI)  AS ICMSNR '
                     +',P1TOTISE    AS ISENTAS '
                     +',P1TOTOUT    AS TOTOUT '
                     +',(P1IPIINA+P1IPINEG+P1IPIPOS)  AS TOTIPI '
                     +',P1DATANF    AS DATANF '
                     +',P1NUMNF     AS NUMNF '
                     +',P1SERIE     AS SERIE '
                     +',P1SUBSER    AS SUBSER '
                     +',P1MODELO    AS MODELO '
                     +',P1BANCO     AS CODBCO '
                     +',P1CODTRA    AS CODTRA '
                     +',(P1CODEMP-P1CODEMP)  AS PERCIPIFRE '
                     +',(P1CODEMP-P1CODEMP)  AS IPIFRETE '
                     +' from CADP01 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+DM1.Tb_NsNSCODEMP.AsString+' and ')
                     +' P1LOTSEQ=0'+DM1.Tb_NsNSLOTSEQ_CP.AsString
                     +' and P1CHAVE=0'+DM1.Tb_NsNSCHAVEP.AsString
                     +' and P1ORDEM=0'+DM1.Tb_NsNSORDEMP.AsString
                     );
Frm_VisNF.Qr_nf01.Open;
Frm_VisNF.Cb_Saida.Checked  :=true;
Frm_VisNF.Cb_Entrada.Checked:=false;
Frm_VisNF.Show;

end;

procedure TFrm_NS.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if key in ['.',','] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_NS.SAIRClick(Sender: TObject);
begin
  inherited;
  if    ns_ori = '' then close;
end;

procedure TFrm_NS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_NS.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Ns.State IN [dsEdit,dsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_NsNSCODCLI.Value:=ValFloat(fChamaCli(0,'frm_ns',key));
      if DM1.Tb_NsNSCODCLI.AsFloat>0 then
         DBEdit4Exit(self);
      end;
   end;
end;

procedure TFrm_NS.DBEdit4Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Ns.State IN [dsEdit,dsInsert] then
   begin
   if DM1.Tb_CliCCODCLI.AsFloat>0 then
      begin
      if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_CliCCODCLI.AsString) then
         begin
         fmensagem('Cliente não cadastrado!',0,['0'],0);
         DBEdit4.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_NS.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Ns.State IN [dsEdit,dsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_NsNSCFO1.AsFloat:=valfloat(fChamacfop(0,'frm_cfo',key));
      if DM1.Tb_NsNSCFO1.AsFloat<>0 then
         DBEdit6Exit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_NS.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if DM1.Tb_Ns.State IN [dsEdit,dsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_NsNSCFO1.AsFloat:=valfloat(fChamacfop(0,'frm_cfo',key));
      if DM1.Tb_NsNSCFO1.AsFloat<>0 then
         DBEdit6Exit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_NS.DBEdit6Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Ns.State IN [dsEdit,dsInsert] then
   begin
   if DM1.Tb_NsNSCFO1.AsFloat<>0 then
      begin
      if not flcadcfo(1,1,DM1.Tb_NsNSCFO1.AsString) then
         begin
         Fmensagem('CFOP não Cadastrado!',0,['0'],0);
         DBEdit6.SetFocus;
         end
      end;
   end;
end;

procedure TFrm_NS.DBEdit7Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_Ns.State IN [dsEdit,dsInsert] then
   begin
   if DM1.Tb_NsNSCFO2.AsFloat<>0 then
      begin
      if not flcadcfo(1,1,DM1.Tb_NsNSCFO2.AsString) then
         begin
         Fmensagem('CFOP não Cadastrado!',0,['0'],0);
         DBEdit7.SetFocus;
         end
      end;
   end;

end;

procedure TFrm_NS.bbReeNFEClick(Sender: TObject);
var
  mNomeArq: String;
  Query_Cons: TQuery;
  Query_Cons2: TQuery;
  mmensagem: string;
  mAchouXML: Boolean;
begin
inherited;
if ((DM1.Tb_NsNSMODELO.AsString<>'55') and (DM1.Tb_NsNSMODELO.AsString<>'65')) then
  begin
  fmensagem('Não é uma nota fiscal eletronica valida!',0,['0'],0);
  Exit;
  end;

flparger02(0,0,'1');
fPedCli_AbrePedido(0,DM1.Tb_nsNSCODEMP.AsFloat,DM1.Tb_nsNSLOTSEQ_CP.AsFloat,
                   DM1.Tb_nsNSCHAVEP.AsFloat,DM1.Tb_nsNSORDEMP.AsFloat);
if DM1.Tb_nsNSCHAVEP.AsInteger=0 then
  exit;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add(' select * from cadp01 where P1CHAVE='+DM1.Tb_nsNSCHAVEP.AsString);
DM1.Query5.SQL.Add(' and P1CODEMP='+DM1.Tb_nsNSCODEMP.AsString);
DM1.Query5.SQL.Add(' and P1LOTSEQ='+DM1.Tb_nsNSLOTSEQ_CP.AsString);
DM1.Query5.SQL.Add(' and P1ORDEM='+DM1.Tb_nsNSORDEMP.AsString);
DM1.Query5.Open;

mNomeArq:=dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
mNomeArq:=mNomeArq+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
mNomeArq:=mNomeArq+'\ENVIADOS\'+FormatDatetime('yyyymm',DM1.Tb_NsNSDTEMIS.AsDateTime)+'\VERSAO_CLIENTE\'+DM1.Tb_nsNSNUMERO.AsString+'-NFE.XML';
query_Cons := TQuery.Create(nil);
query_Cons.DatabaseName:='SG_ASSOC';
query_Cons.SQL.Clear;
query_Cons.SQL.Add('SeleCT NSNUMERO,NSDTEMIS,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNFE_NUMPROT '
                  +',NSCODCLI from CADNS WHERE NSCHAVEP=:CHAVE '
                  +' AND NSLOTSEQ_CP=:LOTSEQ '
                  +' AND NSCODEMP=:CODEMP '
                  +' AND not (NSNFE_XML_CLIENTE is null) '
                            +'  and NSTIPO<3 ' );
query_Cons.ParamByName('CHAVE').AsInteger:=DM1.Tb_nsNSCHAVEP.AsInteger;
query_Cons.ParamByName('LOTSEQ').AsInteger:=DM1.Tb_nsNSLOTSEQ_CP.Asinteger;
query_Cons.ParamByName('CODEMP').AsInteger:=DM1.Tb_nsNSCODEMP.asinteger;
try
  query_Cons.Open;
except
  FreeAndNil(query_cons);
  exit;
  end;
if not query_Cons.isempty then
  begin
{
  query_Cons2 := TQuery.Create(nil);
  query_Cons2.DatabaseName:='SG_ASSOC';
  Query_Cons2.Close;
  Query_Cons2.SQL.Clear;
  Query_Cons2.SQL.Add('select * from nfe_cadcab where idennf='+Query_Cons.FieldByName('NSNUMERO').AsString);
  Query_Cons2.Open;
  if trim(Query_Cons2.FieldByName('CHAVE_ACESSO').AsString)='' then
    begin
    DM1.Query7.Close;
    DM1.Query7.SQL.Clear;
    DM1.Query7.SQL.Add(' update nfe_cadcab set ');
    DM1.Query7.SQL.Add(' chave_acesso='+chr(39)+Query_Cons.FieldByName('NSNFE_CHAVEACESSO').AsString+Query_Cons.FieldByName('NSNFE_DCHAVEACESSO').AsString+chr(39));
    DM1.Query7.SQL.Add(' where idennf='+Query_Cons.FieldByName('NSNUMERO').AsString);
    DM1.Query7.ExecSQL;
    end;
}
  if not DirectoryExists('C:\SGE\DANFE') then
    CreateDir('C:\SGE\DANFE');
   if (DM1.Tb_NsNSSTATUS.AsInteger=7) then
      begin
      Messagedlg('Nota Denegada. Status '+DM1.Tb_nsNSNFE_STAT_PROT.AsString ,mtWarning,[mbOk],0);
      end
   else
      begin
      Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
     Frm_NFE_Impressao.Logomarca:=True;
     try
        Frm_NFE_Impressao.mLerDadosXml.pSalvarPDFPara:='';
        Frm_NFE_Impressao.mLerDadosXml.pSalvarXmlPara:='';
        Frm_NFE_Impressao.mLerDadosXml.pNomeArq:='';
        Frm_NFE_Impressao.mLerDadosXml.pChave:=DM1.Tb_nsNSCHAVEP.AsInteger;
        Frm_NFE_Impressao.mLerDadosXml.pChaveAno:=DM1.Tb_NsNSLOTSEQ_CP.AsInteger;
        Frm_NFE_Impressao.mLerDadosXml.pCodEmp  :=DM1.Tb_NsNSCODEMP.AsInteger;
        Frm_NFE_Impressao.mLerDadosXml.pModelo:=DM1.Tb_NsNSMODELO.AsString;
        Frm_NFE_Impressao.mLerDadosXml.pEnviar:=true;

       Frm_NFE_Impressao.fLerdadosXml(Frm_NFE_Impressao.mLerDadosXml,mmensagem);

       FreeandNil(Frm_NFE_Impressao);
    except
       MessageDlg('Erro 1081, ao tentar reemitir nfe',mtError,[mbOk],0);
       end;
    end;
  end
{
else if fileExists(mNomeArq) then
  begin
  try
    Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
  except
    MessageDlg('Erro 1092, ao tentar reemitir nfe',mtError,[mbOk],0);
    end;
  Frm_NFE_Impressao.Logomarca:=True;
  Frm_NFE_Impressao.fLerdadosXml('',''
                       ,mNomeArq
                       ,DM1.Tb_nsNSCHAVEP.AsInteger
                       ,DM1.Tb_nsNSLOTSEQ_CP.AsInteger
                       ,DM1.Tb_nsNSCODEMP.AsInteger
                       ,True);


  FreeandNil(Frm_NFE_Impressao);
  end
}  
else
  begin
  Application.CreateForm(Tfrm_nfe, form_nfe);
  form_nfe.Logomarca:=True;
  try
    form_nfe.EmissaoDanfe(true,0,0,DM1.Tb_NsNSNUMERO.AsFloat,DM1.Tb_NsNSDTEMIS.AsDateTime
                          ,iif(dm2.Qr_CabP1QTDDECPU.AsInteger>0,dm2.Qr_CabP1QTDDECPU.AsInteger,-1));
  except
    MessageDlg('Erro 1108, ao tentar reemitir nfe',mtError,[mbOk],0);
    end;
  freeandnil(form_nfe);
  end;
FreeAndNil(query_cons);
end;

procedure TFrm_NS.bbEnvPrefClick(Sender: TObject);
var
Form_NFE_Impressao:tFrm_NFE_Impressao;

mmensagem: string;
begin
  inherited;

IF opd1.Execute then
   begin
   Application.CreateForm(TFrm_NFE_Impressao, Form_NFE_Impressao);
   if not Form_NFE_Impressao. fLerdadosNFSE('','',opd1.FileName,0,0,0,false,mmensagem) then
      messagedlg(mMensagem,mtwarning,[mbOK],0);
   freeandnil(Form_NFE_Impressao);
   end;


{
if DM1.Tb_NsNSCHAVEP.AsInteger=0 then
   exit;
fGerarXML_INSS(2,DM1.Tb_NsNSCODEMP.AsInteger,
               DM1.Tb_NsNSLOTSEQ_CP.AsInteger,
               DM1.Tb_NsNSCHAVEP.AsInteger );
}

end;

function tFrm_Ns.fXmlNFE(pOrigem: Integer): Boolean;
var
mNomeArq,mNomeSai: String;
mStatus,mMotivo: String;
mpos: Integer;
Ado_Query1: TADOQuery;

begin
  inherited;


if DM1.Tb_PargerPFORPEDPAD.asinteger=3 then
   begin

   Ado_Query1:=TADOQuery.Create(nil);
   Ado_Query1.Connection:=DM1_ADO.ADOConnection1;
   Ado_Query1.Close;
   Ado_Query1.SQL.Clear;
   Ado_Query1.SQL.Add('Select NSNFE_XML_CLIENTE from CADNS  '
                               +' where NSCHAVEP=:CHAVE '
                               +' and NSLOTSEQ_CP=:CHAVE_ANO '
                               +' and NSCODEMP=:CODEMP '
                            +'  and NSTIPO<2 ' );

   Ado_Query1.Parameters.ParamByName('CHAVE').Value:=DM1.Tb_NsNSCHAVEP.AsInteger;
   Ado_Query1.Parameters.ParamByName('CHAVE_ANO').Value:=DM1.Tb_NsNSLOTSEQ_CP.AsInteger;
   Ado_Query1.Parameters.ParamByName('CODEMP').Value:=DM1.Tb_NsNSCODEMP.AsInteger;
   try
      Ado_Query1.Open;
      if not Ado_Query1.Fields[0].IsNull then
         begin
         SaveDialog1.InitialDir:='C:\SGE';
         SaveDialog1.FileName:='NFE-'+DM1.Tb_NsNSNUMERO.AsString+'.XML';
         if SaveDialog1.Execute then
            mNomeSai:=SaveDialog1.FileName;
         (Ado_Query1.FieldByName('NSNFE_XML_CLIENTE') as TBlobField).SaveToFile(mNomeSai);
         FreeAndNil(ado_query1);
         exit;
         end;
   except
      end;
  FreeAndNil(ado_query1);

   end;



if (length(DM1.Tb_NsNSNFE_CHAVEACESSO.AsString)<30) then
   begin
   fMensagem('Não é uma NFE Eletronica Válida!',0,['0'],0);
   exit;
   end;


if (trim(dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString)='') then
   mNomeArq:='C:\INTERSYS_NFE\NFE'
else
   mNomeArq:=dm4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
mNomeArq:=mNomeArq+'\'+insere(DM1.Tb_EmpCGC.AsString,'0',14);
if DM1.Tb_NsNSNFE_TPEMIS.AsInteger=3 then
   mNomeArq:=mNomeArq+'\SCAN';

mNomeArq:=mNomeArq+'\ENVIADOS\'+FormatDatetime('yyyymm',DM1.Tb_NsNSDTEMIS.AsDateTime)+'\'+DM1.Tb_NsNSNUMERO.AsString+'-NFE.XML';
if not DirExists(mNomeArq) then
   begin
   begin
   if (trim(dm4.Tb_ParGer02PG2PASTAENVIO.AsString)='') then
      mNomeArq:='C:\'
   else
      mNomeArq:=dm4.Tb_ParGer02PG2PASTAENVIO.AsString;
   end;
   if mNomeArq[length(mNomeArq)]='\' then
      mNomeArq:=copy(mNomeArq,1,length(mNomeArq)-1);
   mNomeArq:=UpperCase(mNomeArq);
   mpos:=pos('ENVIO',mNomeArq);
   if mpos>0 then
      mNomeArq:=copy(mNomeArq,1,mpos-1);
   mNomeArq:=mNomeArq+'ENVIADOS\'+FormatDatetime('yyyymm',DM1.Tb_NsNSDTEMIS.AsDateTime)+'\'+DM1.Tb_NsNSNUMERO.AsString+'-NFE.XML';
   end;
if not FileExists(mNomeArq) then
   begin
   fmensagem('Nao foi encontrado o arquivo: '+mNomeArq,0,['0'],0);
   exit;
   end;
if valint(DM1.Tb_NsNSNFE_STAT_PROT.AsString)=204 then
   begin
   mStatus:='100';
   mMotivo:='Autorizado o uso da NF-e';
   end
else
   begin
   mStatus:=DM1.Tb_NsNSNFE_STAT_PROT.AsString;
   mMotivo:='Autorizado o uso da NF-e';
   end;
mNomeSai:='c:\sge\'+'NFE-'+DM1.Tb_NsNSNUMERO.AsString+'.XML';

if pOrigem=0 then
   begin
   SaveDialog1.InitialDir:='C:\SGE';
   SaveDialog1.FileName:='NFE-'+DM1.Tb_NsNSNUMERO.AsString+'.XML';
   if SaveDialog1.Execute then
      mNomeSai:=SaveDialog1.FileName;
   end;
Application.CreateForm(Tfrm_nfe, form_nfe);
form_nfe.Logomarca:=True;
form_nfe.fNSGeraXMLVersaoCliente(mNomeArq,DM1.Tb_NsNSNFE_NUMPROT.AsString,IntToStr(ValInt(DM1.Tb_NsNSNFE_CONTIGENCIA.AsString)+1),
DM1.Tb_NSNSNFE_VERAPLIC.Asstring,DM1.Tb_NsNSNFE_INFPRODID.AsString,DM1.Tb_NsNSNFE_CHAVEACESSO.AsString+DM1.Tb_NsNSNFE_DCHAVEACESSO.AsString
,DM1.Tb_NsNSNFE_DH_RECIBO.AsString,DM1.Tb_NsNSNFE_DIGVAL.AsString,mStatus,mMotivo,mNomeSai);
if pOrigem=1 then
   begin
   fEnviarEmail(mNomeSai,0,DM1.Tb_NsNSCODCLI.AsString);
   end;
freeandnil(form_nfe);
end;



procedure TFrm_NS.bbEmailClick(Sender: TObject);
var
mMensagem: String;
begin
//EnviarEmail(pCodemp, pLotseq, pChave: Integer);
EnviarEmailNFCEeBoleto(DM1.Tb_NsNSCODEMP.AsInteger,DM1.Tb_NsNSLOTSEQ_CP.AsInteger,DM1.Tb_NsNSCHAVEP.AsInteger,'',true,false,mMensagem);

end;

procedure TFrm_NS.FormActivate(Sender: TObject);
begin
  inherited;
TsNFE.Enabled:=False;
end;



function TFrm_NS.fLerOcorrencias(pTipo: Integer): Boolean;
begin

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
                         +',CC1CHAVE AS CHAVEPED '
                         +',0 AS LOTSEQPED '
                         +',0 AS CODEMPPED '
                         +' FROM CADCCOR01 '
                         +' where CC1CODEMP=:CODEMP '
                         +' and CC1NUMNF=:NUMNF '
                         +' and CC1SERIE=:SERIE '
                         +' and CC1MODELO=:MODELO '
                         +' UNION '
                         +' SELECT max(PNLINHA) AS ORDEM, '
                         +' 11 as TIPODOC, '
                         +' P1DATANF AS DATANF '
                         +',PNCHAVE AS CHAVEPED '
                         +',PNLOTSEQ AS LOTSEQPED '
                         +',PNCODEMP AS CODEMPPED '
                         +' FROM CADPNF,CADP01 '
                         +' WHERE P1CHAVE=PNCHAVE '
                         +' AND P1ORDEM=PNORDEM '
                         +' AND P1LOTSEQ=PNLOTSEQ '
                         +' and PNCHAVE_PEDORI=:CHAVE '
                         +' and PNLOTSEQ_PEDORI=:LOTSEQ '
                         +' GROUP BY P1DATANF,PNCHAVE,PNLOTSEQ,PNCODEMP '
                         +') TAB02) ');

Query_ocorrencias.ParamByName('CODEMP').Value   := DM1.Tb_NsNSCODEMP.AsInteger;
Query_ocorrencias.ParamByName('NUMNF').Value    := DM1.Tb_NsNSNUMERO.AsInteger;
Query_ocorrencias.ParamByName('SERIE').Value    := DM1.Tb_NsNSSERIE.AsString;
Query_ocorrencias.ParamByName('MODELO').Value   := DM1.Tb_NsNSMODELO.AsString;
Query_ocorrencias.ParamByName('CHAVE').Value    := DM1.Tb_NsNSCHAVEP.AsInteger;
Query_ocorrencias.ParamByName('LOTSEQ').Value   := DM1.Tb_NsNSLOTSEQ_CP.AsInteger;
Query_ocorrencias.Open;
result:=true;
end;


procedure TFrm_NS.fatualizadatehota(pDatahora: tdatetime; pEdit_data: TDateEdit;pEdit_hora: tEdit);

begin
if pDatahora<=pdatanula then
   begin
   pEdit_data .clear;
   pEdit_hora.clear;
   end
else
   begin
   pEdit_data.date:=pDatahora;
   pEdit_hora.text:=Formatdatetime(fhr, pdatahora);
   end;
end;




procedure TFrm_NS.fatualizadatehota_no_banco(pDatahora: tField; pEdit_data: TDateEdit;pEdit_hora: tEdit);
var
mdathora: string;

begin
if DM1.Tb_Ns.State in [dsedit,dsinsert] then
   begin
   if (pEdit_data.Date<=pdatanula) and (fsonumero(pEdit_hora.Text)=0) then
      pDatahora.Value:=null
   else
      begin
      if (pEdit_data.Date>pdatanula)  then
         mdathora:=pEdit_data.Text
      else
         mdathora:=formatdatetime(fdt2, pdatanula);
      mdathora:=mdathora+' '+fStringtotime_string(pEdit_Hora.text);
      end;
   try
      pDatahora.AsDateTime:=strtodatetime(mdathora);
   except
      pDatahora.value:=null;
      end;
   end;

end;



procedure TFrm_NS.src_nsDataChange(Sender: TObject; Field: TField);
begin
  inherited;

if PC1.ActivePage=tsOcorrencias then
   fLerOcorrencias(0);
GB_SOBRE_CANC.visible:=false;
GB_SOBRE_INUT.visible:=false;
GB_SOBRE_DENEGACAO.visible:=false;
bbSalvarXMLCanc.visible:=false;

if DM1.Tb_NsNSSTATUS.Asinteger=8 then
   begin
   GB_SOBRE_INUT.visible:=true;
   end
else if DM1.Tb_NsNSSTATUS.Asinteger=9 then
   begin
   GB_SOBRE_CANC.visible:=true;
   bbSalvarXMLCanc.visible:=true;
   end
else if DM1.Tb_NsNSSTATUS.Asinteger=7 then
   begin
   GB_SOBRE_DENEGACAO.visible:=true;
   end;
if not (DM1.Tb_Ns.state in [dsedit,dsinsert]) then
   begin
   fatualizadatehota(DM1.Tb_nsNSDTEMIS.AsDateTime,edt_dtemis_data,edt_dtemis_hora);
   end;
bbBaixarNfse.Visible   :=DM1.Tb_NsNSTIPO.AsInteger=2;
bbVisualiarNFSe.Visible:=DM1.Tb_NsNSTIPO.AsInteger=2;
bbSalvarNFSe.Visible   :=DM1.Tb_NsNSTIPO.AsInteger=2;

fAtualizarBotoes(DM1.Tb_NSNSID_NEW.Asinteger);


end;

procedure TFrm_NS.PC1Change(Sender: TObject);
begin
  inherited;
if PC1.ActivePage=tsOcorrencias then
   fLerOcorrencias(0);
end;

procedure TFrm_NS.DBGrid_eventoDblClick(Sender: TObject);
var
Query_Cons: TQuery;
mmensagem: string;
begin
  inherited;
if Query_ocorrenciasTIPODOC.AsInteger=11 then
   begin
   query_Cons := TQuery.Create(nil);
   query_Cons.DatabaseName:='SG_ASSOC';
   query_Cons.SQL.Clear;
   query_Cons.SQL.Add('SeleCT NSNUMERO,NSDTEMIS,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNFE_NUMPROT '
                     +',NSCODCLI from CADNS WHERE NSCHAVEP=:CHAVE '
                     +' AND NSLOTSEQ_CP=:LOTSEQ '
                     +' AND NSCODEMP=:CODEMP '
                     +' AND not (NSNFE_XML_CLIENTE is null) '
                            +'  and NSTIPO<2 ' );

   query_Cons.ParamByName('CHAVE').AsInteger:=Query_ocorrenciasCHAVEPED.AsInteger;
   query_Cons.ParamByName('LOTSEQ').AsInteger:=Query_ocorrenciasLOTSEQPED.Asinteger;
   query_Cons.ParamByName('CODEMP').AsInteger:=Query_ocorrenciasCODEMPPED.asinteger;
   try
      query_Cons.Open;
   except
      FreeAndNil(query_cons);
      exit;
      end;
   if not query_Cons.isempty then
      begin
      if not DirectoryExists('C:\SGE\DANFE') then
         CreateDir('C:\SGE\DANFE');
      Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
      try

        Frm_NFE_Impressao.mLerDadosXml.pSalvarPDFPara:='';
        Frm_NFE_Impressao.mLerDadosXml.pSalvarXmlPara:='';
        Frm_NFE_Impressao.mLerDadosXml.pNomeArq:='';
        Frm_NFE_Impressao.mLerDadosXml.pChave:=Query_ocorrenciasCHAVEPED.AsInteger;
        Frm_NFE_Impressao.mLerDadosXml.pChaveAno:=Query_ocorrenciasLOTSEQPED.AsInteger;
        Frm_NFE_Impressao.mLerDadosXml.pCodEmp  :=Query_ocorrenciasCODEMPPED.AsInteger;
        Frm_NFE_Impressao.mLerDadosXml.pModelo:='';
        Frm_NFE_Impressao.mLerDadosXml.pEnviar:=true;
         Frm_NFE_Impressao.mLerDadosXml.pCodBcoCob    :=0;

      Frm_NFE_Impressao.fLerdadosXml(Frm_NFE_Impressao.mLerDadosXml,mmensagem);

      FreeandNil(Frm_NFE_Impressao);
      except
         MessageDlg('Erro 1393, ao tentar reemitir nfe',mtError,[mbOk],0);
         end;
      end;
   FreeAndNil(Query_Cons);
   end
else if Query_ocorrenciasTIPODOC.AsInteger=2 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin4(1,'CADNS','CC1CODEMP','NSCODEMP','CC1NUMNF','NSNUMERO','CC1SERIE','NSSERIE','CC1MODELO','NSMODELO');



   query_Cons := TQuery.Create(nil);
   query_Cons.DatabaseName:='SG_ASSOC';
   query_Cons.SQL.Clear;
   query_Cons.SQL.Add('SeleCT CC1NFE_XML_CLIENTE,CC1NUMNF,CC1SERIE,CC1MODELO,NSCODEMP,NSCHAVEP'
                    +',NSLOTSEQ_CP FROM CADCCOR01 '+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+iif(la_instrucao='','',la_instrucao+' and ')
                       +' not CC1NFE_XML_CLIENTE is null '
                       +' and CC1CHAVE=0'+Query_ocorrenciasCHAVEPED.AsString);
   try
      query_cons.open;
   except
      Query_cons.sql.savetofile(mpastatemp + 'SQL.txt');
      end;
   if not query_Cons.isempty then
      begin
      if not DirectoryExists('C:\SGE\DANFE') then
         CreateDir('C:\SGE\DANFE');
      Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
      try
      Frm_NFE_Impressao.fLerdadosXml_cce('',''
                           ,''
                           ,query_Cons.Fieldbyname('NSCHAVEP').AsInteger
                           ,query_Cons.Fieldbyname('NSLOTSEQ_CP').AsInteger
                           ,query_Cons.Fieldbyname('NSCODEMP').AsInteger,Query_ocorrenciasCHAVEPED.AsInteger,mmensagem);

      FreeandNil(Frm_NFE_Impressao);
      except
         MessageDlg('Erro 909, ao tentar reemitir nfe',mtError,[mbOk],0);
         end;
      FreeAndNil(Query_Cons);
      end;
   end;
end;

procedure TFrm_NS.bbBuscarXMLClick(Sender: TObject);
var
  adoQuery_temp: TADOQuery;
begin
  inherited;
if (not DM1.Tb_Ns.Active) or (DM1.Tb_NsNSNUMERO.IsNull) then
   begin
   MessageDlg('Não é uma NFE Válida!',mtWarning,[mbOk],0);
   exit;
   end;
if opd1.Execute then
   begin
   adoQuery_temp:=TADOQuery.Create(nil);
   adoQuery_temp.Connection:=DM1_ADO.ADOConnection1;
   adoQuery_temp.Close;
   adoQuery_temp.SQL.Clear;
   adoQuery_temp.SQL.Add('Update CADNS set'
                            +' NSNFE_XML_CLIENTE=:NFE_XML_CLIENTE ');
   adoQuery_temp.SQL.Add(' where NSCHAVEP=:CHAVE '
                            +' and NSLOTSEQ_CP=:CHAVE_ANO '
                            +' and NSCODEMP=:CODEMP '
                            +'  and NSTIPO<2 ' );
   adoQuery_temp.Parameters.ParamByName('NFE_XML_CLIENTE').LoadFromFile(opd1.FileName,ftMemo);
   adoQuery_temp.Parameters.ParamByName('CHAVE').Value:=DM1.Tb_NsNSCHAVEP.AsInteger;
   adoQuery_temp.Parameters.ParamByName('CHAVE_ANO').Value:=DM1.Tb_NsNSLOTSEQ_CP.AsInteger;
   adoQuery_temp.Parameters.ParamByName('CODEMP').Value:=DM1.Tb_NsNSCODEMP.AsInteger;
   try
      adoQuery_temp.ExecSQL;
      fdm1StartCommit;
   except ON E: Exception do
      begin
      ex_erroSql_ado(adoQuery_temp,1668,'_stru'+e.message,'user');
      end;
      end;
    adoQuery_temp.close;
   FreeAndNil(adoQuery_temp);
   end;
end;

function TFrm_NS.fDadosCupom: Boolean;
var
Adoquery: TADOQuery;
form_info: TFrm_Informacoes;
mDadosECF: TStrings;
xLin: Integer;
mDadosLinha: String;
begin
Adoquery:=TADOQuery.Create(nil);
Adoquery.Connection:=DM1_ADO.ADOConnection1;
Adoquery.Close;
Adoquery.SQL.Clear;
Adoquery.SQL.Add('Select CT52_DADOS_CAT52 from CADECF_CAT52 where '
                +' CT52_CODEMP='+DM1.Tb_NsNSCODEMP.AsString
                +' and CT52_CODECF='+DM1.Tb_NsNSCODECF.AsString
                +' and CT52_DATA='+QuotedStr(formatDatetime(fdt2, DM1.Tb_NsNSDATCUP.AsDateTime))
                +' and not CT52_DADOS_CAT52 is null '
                );
Adoquery.Open;
mDadosECF:=TStringList.Create;
Application.CreateForm(TFrm_Informacoes,form_info);
form_info.RichEdit1.Lines.Clear;

if not Adoquery.IsEmpty then
   begin
   mDadosECF.Text:=Adoquery.fieldbyName('CT52_DADOS_CAT52').AsString;
   for xlin:=0 to mDadosECF.Count-1 do
      begin
      if copy(mDadosECF[xLin],1,3)='E14' then
         begin
         if valint(copy(mDadosECF[xLin],53,6))=DM1.Tb_NsNSNUMCUP.AsInteger then
            begin
            form_info.RichEdit1.Lines.Add('Data de Emissão: '+FormatDateTime(fdt2, fTransformaemDataAno4Mesdia(copy(mDadosECF[xLin],59,08) )));
            form_info.RichEdit1.Lines.Add('Sub-Total: '+FormatFloat(mcasas, fFormataReal2Dec(copy(mDadosECF[xLin],67,14))));

            mDadosLinha:='Desconto: '+FormatFloat(mcasas, fFormataReal2Dec(copy(mDadosECF[xLin],81,13)));
            if copy(mDadosECF[xLin],94,01)='V' then
               mDadosLinha:=mDadosLinha+' '+DM1.Tb_PargerPMOEDA.AsString
            else
               mDadosLinha:=mDadosLinha+' %';
            form_info.RichEdit1.Lines.Add(mDadosLinha);

            mDadosLinha:='Acrescimos: '+FormatFloat(mcasas, fFormataReal2Dec(copy(mDadosECF[xLin],95,13)));
            if copy(mDadosECF[xLin],108,01)='V' then
               mDadosLinha:=mDadosLinha+' '+DM1.Tb_PargerPMOEDA.AsString
            else
               mDadosLinha:=mDadosLinha+' %';
            form_info.RichEdit1.Lines.Add(mDadosLinha);
            form_info.RichEdit1.Lines.Add('Total Liquido: '+FormatFloat(mcasas, fFormataReal2Dec(copy(mDadosECF[xLin],109,14))));
            if copy(mDadosECF[xLin],123,01)='S' then
               form_info.RichEdit1.Lines.Add('********************* CUPOM CANCELADO ********************');
            form_info.RichEdit1.Lines.Add('Cliente: '+copy(mDadosECF[xLin],138,40));
            form_info.RichEdit1.Lines.Add('CPF ou CNPJ: '+fRetornoCNPJCPFcomMask(copy(mDadosECF[xLin],178,14)));
            form_info.RichEdit1.Lines.Add('Ítem Codigo         Descricao                                                    Quantidade Und Preco Unit  Desconto  Acrescimos Total Liquido  Tot Parc      Cancelado');
            end;
         end;
{                                                                               12345678901    1234567890112345678901           12345678901234
Ítem Codigo         Descricao                                                    Quantidade Und Preco Unit  Desconto  Acrescimos Total Liquido  Tot Parc      Cancelado
001  12345678901234 123456789012345678901234567890123456789012345678901234567890   1234.123 123 12,345.123  12345.123  12345.123 123,123,123,11 1234567  123,123,123.12
}
      if copy(mDadosECF[xLin],1,3)='E15' then
         begin
         if valint(copy(mDadosECF[xLin],47,6))=DM1.Tb_NsNSNUMCUP.AsInteger then
            begin
            mDadosLinha:=copy(mDadosECF[xLin],59,03); // item
            mDadosLinha:=mDadosLinha+' '+copy(mDadosECF[xLin],62,14); // codigo
            mDadosLinha:=mDadosLinha+' '+copy(mDadosECF[xLin],76,60); // descricao
            mDadosLinha:=mDadosLinha+insere(FormatFloat('#,##0.000', fFormataReal3Dec(copy(mDadosECF[xLin],176,07))),' ',12); // quantidade
            mDadosLinha:=mDadosLinha+' '+copy(mDadosECF[xLin],183,03); // unidade
            mDadosLinha:=mDadosLinha+insere(FormatFloat('#,##0.000', fFormataReal3Dec(copy(mDadosECF[xLin],186,08))),' ',11); // valor unitario
            mDadosLinha:=mDadosLinha+insere(FormatFloat(mcasas, fFormataReal2Dec(copy(mDadosECF[xLin],194,08))),' ',11); // descontos
            mDadosLinha:=mDadosLinha+insere(FormatFloat(mcasas, fFormataReal2Dec(copy(mDadosECF[xLin],202,08))),' ',11); // acrescimos
            mDadosLinha:=mDadosLinha+insere(FormatFloat(mcasas, fFormataReal2Dec(copy(mDadosECF[xLin],210,14))),' ',14); // total liquido
            mDadosLinha:=mDadosLinha+'   '+copy(mDadosECF[xLin],224,07)+' '; // totalizador parcial ou seja aliquota
            if copy(mDadosECF[xLin],94,01)='S' then
               mDadosLinha:=mDadosLinha+insere(FormatFloat(mcasas, fFormataReal2Dec(copy(mDadosECF[xLin],210,14))),' ',14) // total cancelado
            else
               mDadosLinha:=mDadosLinha+insere(FormatFloat(mcasas, fFormataReal2Dec(copy(mDadosECF[xLin],239,13))),' ',14); // total cancelado
            form_info.RichEdit1.Lines.Add(mDadosLinha);
            end;
         end;

      end;


//      form_info.RichEdit1.Text:=Adoquery.fieldbyName('CT52_DADOS_CAT52').AsString;



//   form_info.RichEdit1.Text:=Adoquery.fieldbyName('CT52_DADOS_CAT52').AsString;
   form_info.ShowModal;
   FreeAndNil(form_info);

   end;
FreeAndNil(Adoquery);

end;


procedure TFrm_NS.bbDadoscupClick(Sender: TObject);
begin
  inherited;
fDadosCupom;

end;

procedure TFrm_NS.bbXmlCancClick(Sender: TObject);
var
  adoQuery_temp: TADOQuery;
begin
  inherited;
if (not DM1.Tb_Ns.Active) or (DM1.Tb_NsNSNUMERO.IsNull) then
   begin
   MessageDlg('Não é uma NFE Válida!',mtWarning,[mbOk],0);
   exit;
   end;
if opd1.Execute then
   begin
   adoQuery_temp:=TADOQuery.Create(nil);
   adoQuery_temp.Connection:=DM1_ADO.ADOConnection1;
   adoQuery_temp.Close;
   adoQuery_temp.SQL.Clear;
   adoQuery_temp.SQL.Add('Insert into CADNS_NFEEVE ('
                        +'NSE_CODEMP'
                        +',NSE_ID_NEW'
                        +',NSE_ID_NS_NEW'
                        +',NSE_ID_PED01_NEW '
                        +',NSE_OPERACAO'
                        +',NSE_TIPO'
                        +',NSE_NUMERO'
                        +',NSE_SERIE'
                        +',NSE_MODELO'
                        +',NSE_CHAVEP'
                        +',NSE_CHAVEP_NIVEL'
                        +',NSE_ORDEMP'
                        +',NSE_DATHOR_EVE'
                        +',NSE_XML_NPROT_EVE'
                        +',NSE_XML_EVENTO'
                        +') values ('
                        +' :NSE_CODEMP'
                        +',CADNS_NFEEVE_SAQ.NEXTVAL'
                        +',:NSE_ID_NS_NEW'
                        +',:NSE_ID_PED01_NEW '

                        +',:NSE_OPERACAO'
                        +',:NSE_TIPO'
                        +',:NSE_NUMERO'
                        +',:NSE_SERIE'
                        +',:NSE_MODELO'
                        +',:NSE_CHAVEP'
                        +',:NSE_CHAVEP_NIVEL'
                        +',:NSE_ORDEMP'
                        +',:NSE_DATHOR_EVE'
                        +',:NSE_XML_NPROT_EVE'
                        +',:NSE_XML_EVENTO'
                        +')');

   adoQuery_temp.Parameters.ParamByName('NSE_CODEMP').value  :=dm1.Tb_NsNSCODEMP.AsInteger;
   if (dm1.Tb_NsNSSTATUS.AsInteger =9) then // cancelamento
      begin
      adoQuery_temp.Parameters.ParamByName('NSE_OPERACAO').Value:='CANCELAMENTO';
      adoQuery_temp.Parameters.ParamByName('NSE_DATHOR_EVE').Value   :=DM1.Tb_NsNSDATHOR_CANC.AsDateTime;
      adoQuery_temp.Parameters.ParamByName('NSE_XML_NPROT_EVE').Value:=DM1.Tb_NsNSXML_NPROT_CANC.AsString;

      end
   else
      begin
      adoQuery_temp.Parameters.ParamByName('NSE_OPERACAO').Value :='INUTILIZACAO';
      adoQuery_temp.Parameters.ParamByName('NSE_DATHOR_EVE').Value   :=DM1.Tb_NsNSDATHOR_INUT.AsDateTime;
      adoQuery_temp.Parameters.ParamByName('NSE_XML_NPROT_EVE').Value:=DM1.Tb_NsNSXML_NPROT_INUT.AsString;
      end;
   adoQuery_temp.Parameters.ParamByName('NSE_TIPO').Value        :=DM1.Tb_NsNSTIPO.AsInteger;
   adoQuery_temp.Parameters.ParamByName('NSE_NUMERO').Value      :=DM1.Tb_NsNSNUMERO.AsInteger;
   adoQuery_temp.Parameters.ParamByName('NSE_SERIE').Value       :=DM1.Tb_NsNSSERIE.AsInteger;
   adoQuery_temp.Parameters.ParamByName('NSE_MODELO').Value      :=DM1.Tb_NsNSMODELO.AsInteger;
   adoQuery_temp.Parameters.ParamByName('NSE_CHAVEP').Value      :=DM1.Tb_NsNSCHAVEP.AsInteger;
   adoQuery_temp.Parameters.ParamByName('NSE_CHAVEP_NIVEL').Value:=DM1.Tb_NsNSCHAVEP_NIVEL.AsInteger;
   adoQuery_temp.Parameters.ParamByName('NSE_ORDEMP').Value       :=DM1.Tb_NsNSCODEMP.AsInteger;
   adoQuery_temp.Parameters.ParamByName('NSE_XML_EVENTO').LoadFromFile(opd1.FileName,ftMemo);
   adoQuery_temp.Parameters.ParamByName('NSE_ID_NS_NEW').Value       :=DM1.Tb_NsNSID_NEW.AsInteger;
   adoQuery_temp.Parameters.ParamByName('NSE_ID_PED01_NEW').Value       :=DM1.Tb_NsNSID_PED01_NEW.AsInteger;


   try
      adoQuery_temp.ExecSQL;
      fdm1StartCommit;
   except
      adoQuery_temp.SQL.SaveToFile(mpastatemp + 'SQLnfeinut.txt');
      end;
   FreeAndNil(adoQuery_temp);
   end;
end;


function tFrm_NS.fSalvarXML(pTipo:string;pCodemp, pLotseq, pChave: Integer; pNomeSaida: String): boolean;
var
 Query_AdoCons: TADOQuery;
begin

query_AdoCons:=TADOQuery.Create(nil);
query_AdoCons.Connection:=DM1_ADO.ADOConnection1;
query_AdoCons.Close;
query_AdoCons.SQL.Clear;
if (pTipo='CANCELAMENTO') or (pTipo='INUTILIZACAO') then
   begin
   query_AdoCons.SQL.Add('Select NSE_XML_EVENTO AS  xml from CADNS_NFEEVE where  NSE_CODEMP='+IntToStr(pCodemp)
                  +'  and NSE_CHAVEP='+IntToStr(pChave ) );
   end
else                                                  
   begin
   query_AdoCons.SQL.Add('Select NSNFE_XML_CLIENTE AS xml from CADNS where  NSCODEMP='+IntToStr(pCodemp)
                  +'  and NSLOTSEQ_CP='+IntToStr(pLotseq)
                  +'  and NSCHAVEP='+IntToStr(pChave)
                            +'  and NSTIPO<3 ' );

   end;
try
   query_AdoCons.Open;
except
   query_AdoCons.sql.savetofile(mpastatemp + 'SQLnfe.txt');

   FreeAndNil(query_Adocons);
   exit;
   end;
if (query_Adocons.isempty) or (query_Adocons.fieldbyname('xml').Isnull) then
   begin
   Messagedlg('xml não encontrado!',mtwarning,[mbok],0);
   end
else
   begin
   (query_Adocons.fieldbyname('xml')  as TBlobField).SaveToFile(pnomesaida);
   end;
query_Adocons.close;
FreeandNil(Query_AdoCons);
end;

function InserirEmAnalise(PF2L_CODEMP, PF2L_CODPRO, PF2L_LOTSEQ, PF2L_CHAVE, PF2L_ITEM,
       PF2L_LOTE, PF2L_DTFAB, PF2L_DTVCTO, PF2L_QTD, PF2L_LOTE_RE,
       PF2L_STATUS_ANALISE, PF2L_STATUS_ANALISE_MOTIVO: String):Boolean;
var
  Query_Analise: TQuery;
begin
Result:=False;

Query_Analise:=TQuery.Create(nil);
Query_Analise.DatabaseName:='SG_ASSOC';

Query_Analise.Close;
Query_Analise.SQL.Clear;
Query_Analise.SQL.Add(' select * from CADPF2_LOTES_ORC where PF2L_CHAVE='+QuotedStr(PF2L_CHAVE)
                     +' and PF2L_CODPRO='+QuotedStr(PF2L_CODPRO)+' and PF2L_LOTE='+QuotedStr(PF2L_LOTE)
                     +' and PF2L_LOTE_RE='+QuotedStr(PF2L_LOTE_RE));
Query_Analise.Open;
if Query_Analise.IsEmpty then
  begin
  Query_Analise.Close;
  Query_Analise.SQL.Clear;
  Query_Analise.SQL.Add(' insert into CADPF2_LOTES_ORC (PF2L_CODEMP, PF2L_CODPRO, '
                       +' PF2L_LOTSEQ, PF2L_CHAVE, PF2L_ITEM, PF2L_LOTE, '
                       +' PF2L_DTFAB, PF2L_DTVCTO, PF2L_QTD, PF2L_LOTE_RE, '
                       +' PF2L_STATUS_ANALISE, PF2L_STATUS_ANALISE_MOTIVO) '
                       +' values (:PF2L_CODEMP, :PF2L_CODPRO, :PF2L_LOTSEQ, '
                       +' :PF2L_CHAVE, :PF2L_ITEM, :PF2L_LOTE, :PF2L_DTFAB, '
                       +' :PF2L_DTVCTO, :PF2L_QTD, :PF2L_LOTE_RE, '
                       +' :PF2L_STATUS_ANALISE, :PF2L_STATUS_ANALISE_MOTIVO)');
  end
else
  begin
  Query_Analise.Close;
  Query_Analise.SQL.Clear;
  Query_Analise.SQL.Add(' update CADPF2_LOTES_ORC set PF2L_CODEMP=:PF2L_CODEMP, '
                       +' PF2L_CODPRO=:PF2L_CODPRO, PF2L_LOTSEQ=:PF2L_LOTSEQ, '
                       +' PF2L_CHAVE=:PF2L_CHAVE,PF2L_ITEM=:PF2L_ITEM,'
                       +' PF2L_LOTE=:PF2L_LOTE, PF2L_DTFAB=:PF2L_DTFAB, '
                       +' PF2L_DTVCTO=:PF2L_DTVCTO, PF2L_QTD=:PF2L_QTD, '
                       +' PF2L_LOTE_RE=:PF2L_LOTE_RE, PF2L_STATUS_ANALISE=:PF2L_STATUS_ANALISE, '
                       +' PF2L_STATUS_ANALISE_MOTIVO=:PF2L_STATUS_ANALISE_MOTIVO ');
  end;
Query_Analise.ParamByName('PF2L_CODEMP').AsString:= PF2L_CODEMP;
Query_Analise.ParamByName('PF2L_CODPRO').AsString:=PF2L_CODPRO;
Query_Analise.ParamByName('PF2L_LOTSEQ').AsString:=PF2L_LOTSEQ;
Query_Analise.ParamByName('PF2L_CHAVE').AsString:=PF2L_CHAVE;
Query_Analise.ParamByName('PF2L_ITEM').AsString:=PF2L_ITEM;
Query_Analise.ParamByName('PF2L_LOTE').AsString:=PF2L_LOTE;
Query_Analise.ParamByName('PF2L_DTFAB').AsString:=PF2L_DTFAB;
Query_Analise.ParamByName('PF2L_DTVCTO').AsString:=PF2L_DTVCTO;
Query_Analise.ParamByName('PF2L_QTD').AsString:=PF2L_QTD;
Query_Analise.ParamByName('PF2L_LOTE_RE').AsString:=PF2L_LOTE_RE;
Query_Analise.ParamByName('PF2L_STATUS_ANALISE').AsString:=PF2L_STATUS_ANALISE;
Query_Analise.ParamByName('PF2L_STATUS_ANALISE_MOTIVO').AsString:=PF2L_STATUS_ANALISE_MOTIVO;
try
  Query_Analise.ExecSQL;
  Result:=True;
except
  Result:=False;
  end;
FreeAndNil(Query_Analise);
end;

procedure TFrm_NS.bbSalvarXmlNotaClick(Sender: TObject);
begin
  inherited;

SaveDialog2.FileName:= mpastadefault+'CONTIGENCIA'+DM1.Tb_NsNSNFCE_NUMERO.AsString+'.xml';
IF SaveDialog2.Execute then
   fSalvarXMLdoEvento(DM1.Tb_NsNSID_NEW.AsInteger,'020_NFE_EVENTO',SaveDialog2.FileName);



end;

procedure TFrm_NS.bbSalvarXMLCancClick(Sender: TObject);
begin
  inherited;
SaveDialog2.FileName:= mpastadefault+'NFE'+DM1.Tb_nsNSNFE_CHAVEACESSO.AsString+DM1.Tb_NsNSNFE_DCHAVEACESSO.AsString+'_CANCELAMENTO.xml';
IF SaveDialog2.Execute then
  fSalvarXML('CANCELAMENTO',DM1.Tb_NsNSCODEMP.AsInteger,DM1.Tb_NsNSLOTSEQ_CP.AsInteger, DM1.Tb_NsNSCHAVEP.AsInteger,SaveDialog2.FileName);

end;

procedure TFrm_NS.bbNFCEClick(Sender: TObject);
var
  Query_Cons: TQuery;
  mmensagem: string;
  parametrosNfce: tParametrosNfce;


begin
inherited;
if (DM1.Tb_NsNSNFCF.asinteger<>2) then
  begin
  fmensagem('Não é uma NFCE valida!',0,['0'],0);
  Exit;
  end;

flparger02(0,0,'1');



query_Cons := TQuery.Create(nil);
query_Cons.DatabaseName:='SG_ASSOC';
query_Cons.SQL.Clear;
query_Cons.SQL.Add('SeleCT NSNUMERO,NSDTEMIS,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNFE_NUMPROT '
                  +',NSCODCLI from CADNS WHERE NSCHAVEP=:CHAVE '
                  +' AND NSLOTSEQ_CP=:LOTSEQ '
                  +' AND NSCODEMP=:CODEMP '
                  +' AND not (NSNFE_XML_CLIENTE is null) '
                            +'  and NSTIPO=2 '
                  );
query_Cons.ParamByName('CHAVE').AsInteger:=DM1.Tb_NsNSCHAVEP.AsInteger;
query_Cons.ParamByName('LOTSEQ').AsInteger:=DM1.Tb_NsNSLOTSEQ_CP.Asinteger;
query_Cons.ParamByName('CODEMP').AsInteger:=DM1.Tb_NsNSCODEMP.asinteger;
try
   query_Cons.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_cons,1884,'xml nfce:'+e.Message ,'xmlnfce');
   FreeAndNil(query_cons);
   exit;
   end;
   end;
if Query_Cons.IsEmpty then
   begin
   MessageDlg('Nao Existe NFSE emitida',mtWarning,[mbOk],0);
   exit;
   end;
parametrosNfce.pChave :=  DM1.Tb_NsNSCHAVEP.AsInteger;
parametrosNfce.pChave_ano :=  DM1.Tb_NsNSLOTSEQ_CP.AsInteger;
parametrosNfce.pCodemp :=  DM1.Tb_NsNSCODEMP.AsInteger;

parametrosNfce.pAmbiente := iif(DM4.Tb_ParGer02PG2USANFE.AsInteger<2,2,1);


fEmitirNotadeServico(parametrosNfce);


Query_Cons.Close;
freeandnil(Query_Cons);

end;

procedure TFrm_NS.bbvalidarClick(Sender: TObject);
begin
  inherited;
if  ValidarChaveNFe(DM1.Tb_NsNSNFE_CHAVEACESSO.asstring+DM1.Tb_NsNSNFE_DCHAVEACESSO.AsString) then
    Messagedlg('ok',mtWarning,[mbOk],0)
else
   MessageDlg('Erro na chave de acesso ',mtError,[mbOk],0);


end;

procedure TFrm_NS.edt_dtemis_dataExit(Sender: TObject);
begin
  inherited;
fatualizadatehota_no_banco(DM1.Tb_NsNSDTEMIS,edt_dtemis_data,edt_dtemis_hora);

end;

procedure TFrm_NS.edt_dtemis_horaExit(Sender: TObject);
begin
  inherited;
fatualizadatehota_no_banco(DM1.Tb_NsNSDTEMIS,edt_dtemis_data,edt_dtemis_hora);

end;

procedure TFrm_NS.edt_dtemis_horaChange(Sender: TObject);
begin
  inherited;
TEdit(Sender).Text := Mascara_edit(TEdit(Sender).Text,pMascHora);
TEdit(Sender).SelStart := Length(TEdit(Sender).Text);

end;

procedure TFrm_NS.Edit1Change(Sender: TObject);
var
mposition: integer;
begin
  inherited;

if (campo.itemindex=2) or
   (campo.itemindex=5) or
   (campo.itemindex=7) then
   begin

   mposition:=(Edit1.SelStart);

   if mposition>=Length(TEDIT(Sender).Text) then
      begin
      TEdit(Sender).Text := Mascara_edit(TEDIT(Sender).Text,pmaskdata);
      TEDIT(Sender).SelStart := Length(TEDIT(Sender).Text);
      end
   else
      begin
      TEDIT(Sender).SelStart := mposition;
      end;
//   else
//      TEDIT(Sender).SelStart := Length(TEDIT(Sender).Text)

   end;


end;

procedure TFrm_NS.bbBuscarXMLNFCEClick(Sender: TObject);
var
  Query_Cons: TQuery;
  mmensagem: string;

  function fCriarCADNS_NFEEVE: boolean;
  begin
  query_cons.close;
  query_cons.sql.clear;
  query_cons.sql.add('Insert into CADNS_NFEEVE ('
                    +' NSE_CODEMP '
                    +',NSE_ID_NEW'
                    +',NSE_ID_NS_NEW'
                     +',NSE_ID_PED01_NEW '

                    +',NSE_OPERACAO '
                    +',NSE_TIPO'
                    +',NSE_NUMERO '
                    +',NSE_SERIE '
                    +',NSE_MODELO '
                    +',NSE_CHAVEP '
                    +',NSE_CHAVEP_NIVEL '
                    +',NSE_ORDEMP '
                    +',NSE_DATHOR_EVE '
                    +',NSE_XML_NPROT_EVE '
                    +',NSE_XML_EVENTO '
                    +',NSE_STATUS '
                    +',NSE_VALOR '
                    +',NSE_VALOR '
                    +',NSE_VALOR '
                    +') values ('
                   +' :NSE_CODEMP '
                     +',CADNS_NFEEVE_SAQ.NEXTVAL'
                    +',:NSE_ID_NS_NEW'
                    +',:NSE_ID_PED01_NEW '

                    +',:NSE_OPERACAO '
                    +',:NSE_TIPO'
                    +',:NSE_NUMERO '
                    +',:NSE_SERIE '
                    +',:NSE_MODELO '
                    +',:NSE_CHAVEP '
                    +',:NSE_CHAVEP_NIVEL '
                    +',:NSE_ORDEMP '
                    +',:NSE_DATHOR_EVE '
                    +',:NSE_XML_NPROT_EVE '
                    +',:NSE_XML_EVENTO '
                    +',:NSE_STATUS '
                    +',:NSE_VALOR '
                    +' ) ');

  Query_Cons.ParamByName('NSE_CODEMP').AsInteger:=DM1.Tb_NsNSCODEMP.AsInteger;
  Query_Cons.ParamByName('NSE_OPERACAO').AsString:='ENVIONFCE';
  Query_Cons.ParamByName('NSE_TIPO').AsInteger   :=DM1.Tb_NsNSTIPO.AsInteger;
  Query_Cons.ParamByName('NSE_NUMERO').AsInteger :=DM1.Tb_NsNSNUMERO.AsInteger;
  Query_Cons.ParamByName('NSE_SERIE').AsString   :=DM1.Tb_NsNSSERIE.AsString;
  Query_Cons.ParamByName('NSE_MODELO').AsString  :=DM1.Tb_NsNSMODELO.AsString;
  Query_Cons.ParamByName('NSE_CHAVEP').AsInteger :=DM1.Tb_NsNSCHAVEP.AsInteger;
  Query_Cons.ParamByName('NSE_CHAVEP_NIVEL').AsInteger:=DM1.Tb_NsNSCHAVEP_NIVEL.AsInteger;
  Query_Cons.ParamByName('NSE_ORDEMP').AsInteger :=DM1.Tb_NsNSORDEMP.AsInteger;
  Query_Cons.ParamByName('NSE_DATHOR_EVE').AsDateTime:=DM1.Tb_NsNSNFCE_DATA.AsDateTime;
  Query_Cons.ParamByName('NSE_XML_NPROT_EVE').AsString:=DM1.Tb_NsNSNFCE_NPROT.AsString;
  Query_Cons.ParamByName('NSE_XML_EVENTO').LoadFromFile(opd1.FileName,ftMemo);
  Query_Cons.ParamByName('NSE_STATUS').AsInteger        :=dm1.Tb_NsNSNFCE_SITUACAO.AsInteger;
  Query_Cons.ParamByName('NSE_VALOR').AsFloat        :=dm1.Tb_NsNSTOTNOTA.AsFloat;
  Query_Cons.ParamByName('NSE_ID_NS_NEW').Value       :=DM1.Tb_NsNSID_NEW.AsInteger;
  Query_Cons.ParamByName('NSE_ID_PED01_NEW').Value       :=DM1.Tb_NsNSID_PED01_NEW.AsInteger;

  try
     Query_Cons.ExecSQL;
     fdm1StartCommit;
     result:=true;
  except on e : exception do
     begin
     ex_erroSql_Novo(query_cons,2085,'xml nfce:'+e.Message ,'xmlnfce');
     FreeAndNil(query_cons);
     result:=false;
     exit;
     end;
     end;





  end;


  function fAtualizarCADNS_NFEEVE: boolean;
  begin
  query_cons.close;
  query_cons.sql.clear;
  query_cons.sql.add('Update CADNS_NFEEVE set '
                    +' NSE_XML_EVENTO=:NSE_XML_EVENTO '
                    +' where '

                    +' NSE_CODEMP=:NSE_CODEMP '
                    +' and NSE_OPERACAO=:NSE_OPERACAO '
                    +' and NSE_CHAVEP=:NSE_CHAVEP '
                    +' and NSE_CHAVEP_NIVEL=:NSE_CHAVEP_NIVEL '
                    +' and NSE_ORDEMP=:NSE_ORDEMP ');

  Query_Cons.ParamByName('NSE_CODEMP').AsInteger:=DM1.Tb_NsNSCODEMP.AsInteger;
  Query_Cons.ParamByName('NSE_OPERACAO').AsString:='ENVIONFCE';
  Query_Cons.ParamByName('NSE_CHAVEP').AsInteger :=DM1.Tb_NsNSCHAVEP.AsInteger;
  Query_Cons.ParamByName('NSE_CHAVEP_NIVEL').AsInteger:=DM1.Tb_NsNSCHAVEP_NIVEL.AsInteger;
  Query_Cons.ParamByName('NSE_ORDEMP').AsInteger :=DM1.Tb_NsNSORDEMP.AsInteger;
  Query_Cons.ParamByName('NSE_XML_EVENTO').LoadFromFile(opd1.FileName,ftMemo);
  try
     Query_Cons.ExecSQL;
     fdm1StartCommit;
     result:=true;
  except on e : exception do
     begin
     ex_erroSql_Novo(query_cons,2085,'xml nfce:'+e.Message ,'xmlnfce');
     FreeAndNil(query_cons);
     result:=false;
     exit;
     end;
     end;





  end;


begin
  inherited;
if (DM1.Tb_NsNSNFCE_MODELO.AsString<>'65') then
  begin
  fmensagem('Não é uma NFCE valida!',0,['0'],0);
  Exit;
  end;

if not opd1.Execute then
   exit;


flparger02(0,0,'1');

query_Cons := TQuery.Create(nil);
query_Cons.DatabaseName:='SG_ASSOC';
query_Cons.SQL.Clear;
query_Cons.SQL.Add('Select NSE_XML_EVENTO as XML from CADNS_NFEEVE '
                  +' where NSE_CODEMP=0'+DM1.Tb_NsNSCODEMP.asstring
                  +' and NSE_ORDEMP=0'+DM1.Tb_NsNSORDEMP.asstring
                  +' and NSE_CHAVEP=0'+DM1.Tb_NsNSCHAVEP.AsString
                  +' and not NSE_XML_EVENTO is null '
                  +' and NSE_OPERACAO='+QuotedStr('ENVIONFCE')
                  );
try
  query_Cons.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_cons,1884,'xml nfce:'+e.Message ,'xmlnfce');
   FreeAndNil(query_cons);
   exit;
   end;
   end;

if query_cons.isempty then
   begin
   if fCriarCADNS_NFEEVE then
      begin
      MessageDlg('Concluido ok!',mtInformation,[mbOk],0)
      end;
   end
else
   begin
   if fAtualizarCADNS_NFEEVE then
      begin
      MessageDlg('Concluido ok!',mtInformation,[mbOk],0)
      end;
   end;
Query_Cons.CLOSE;
FreeAndNil(query_cons);

end;

procedure TFrm_NS.BitBtn1Click(Sender: TObject);
var
pChave_ano,pCodEmp,pChave: Real;


    procedure fAtualizarCadns();
    var
    query_atuns: tQuery;
    query_cons:tquery;
    begin

//    fbuscart form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfse_Autorizacao;


    query_cons := TQuery.Create(nil);
    query_cons.DatabaseName:='SG_ASSOC';
    query_cons.SQL.add('SELECT NSNFE_XML_CLIENTE,CADNS.* FROM CADNS WHERE NSID_NEW='+DM1.Tb_NsNSID_NEW.AsString);

    try

       query_cons.open;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_cons,2263,'SGE','CADEST');
       end;
       end;

    query_atuns := TQuery.Create(nil);
    query_atuns.DatabaseName:='SG_ASSOC';


    query_atuns.sql.add('Update cadns set '
{
    NSNFSERV_NUMNF_RPS='+query_serv.fieldbyname('P1NUMNF_SERV').AsString
                       +',NSNFSERV_SERIE='+query_serv.fieldbyname('P1SERIE_SERV').AsString
 }
                       +' NSNFSERV_DATHORREC=:NSNFSERV_DATHORREC '
                       +',NSNFSERV_PROTOCOLO=:NSNFSERV_PROTOCOLO '
                       +',NSNFSERV_NUMNF=:NSNFSERV_NUMNF '
                      
                       +',NSSUBSER='+quotedStr('gr')


                       +' where NSCHAVEP='+FloattoStr(pChave)
                       +' and NSLOTSEQ_CP='+FloattoStr(pChave_ano)
                       +' and NSCODEMP='+FloattoStr(pCodEmp));

    query_atuns.ParamByName('NSNFSERV_DATHORREC').AsDateTime:=fSairDataHoraXml('A', getConteudoTAG(query_cons.fieldbyname('NSNFE_XML_CLIENTE').asstring,'DataEmissao','InfNfse','',''));
    query_atuns.ParamByName('NSNFSERV_PROTOCOLO').AsString  :=getConteudoTAG(query_cons.fieldbyname('NSNFE_XML_CLIENTE').asstring,'CodigoVerificacao','InfNfse','','');
    query_atuns.ParamByName('NSNFSERV_NUMNF').AsInteger     :=valint(getConteudoTAG(query_cons.fieldbyname('NSNFE_XML_CLIENTE').asstring,'Numero','InfNfse','',''));

       ex_erroSql_Novo(query_atuns,281,'SGE','CADEST');    

    try

       query_atuns.ExecSQL;
       fdm1StartCommit;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_atuns,281,'SGE','CADEST');
       end;
       end;
   query_atuns.close;
   freeandnil(query_atuns);

   query_cons.close;
   freeandnil(query_cons);

    end;

begin
  inherited;

pChave_ano:=DM1.Tb_NsNSLOTSEQ_CP.AsFloat;
pChave:=DM1.Tb_NsNSCHAVEP.AsFloat;
pCodEmp:=DM1.Tb_NsNSCODEMP.AsFloat;
fAtualizarCadns();
BBnAtuClick(self);


end;


procedure TFrm_NS.bbSalvarXmlNfseClick(Sender: TObject);
begin
  inherited;
SaveDialog2.FileName:= mpastadefault+'NFSE'+DM1.Tb_NsNSNFSERV_NUMNF.AsString+'.xml';
IF SaveDialog2.Execute then
  fSalvarXML('NOTA',DM1.Tb_NsNSCODEMP.AsInteger,DM1.Tb_NsNSLOTSEQ_CP.AsInteger, DM1.Tb_NsNSCHAVEP.AsInteger,SaveDialog2.FileName );

end;
procedure TFrm_NS.fAtualizarBotoes(pIdNew: Integer);
var
 query_botoes: tquery;
begin
if (pIdNew<>mIdNewBotoes) and (pIdNew>0) then
   begin
   mIdNewBotoes:=pIdNew;
   query_botoes:=tQuery.Create(nil);
   query_botoes.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_botoes.SQL.add('select sum(case when NSE_OPERACAO='+quotedstr('020_NFE_EVENTO')+' and not NSE_XML_EVENTO is null then 1 else 0 END) as NFE_EVENTO_020 '
                       +'       ,sum(case when NSE_OPERACAO='+quotedstr('65AUTORIZACAO')+' and not NSE_XML_EVENTO is null then 1 else 0 END) as NFE_EVENTO_065 '

                       +' from cadns_NFEeve WHERE NSE_ID_NS_NEW='+inttoStr(pIdNew));

   try
      query_botoes.open;
      bbSalvarNfceEve020.Visible:= query_botoes.FieldByName('NFE_EVENTO_020').AsInteger>0;
      bbSalvarNfceAutorizacao.Visible:= query_botoes.FieldByName('NFE_EVENTO_065').AsInteger>0;
      query_botoes.open;
   except on e : exception do
      ex_erroSql_Novo(query_botoes,2359,' SGE'+E.Message,'frm_ns ');
      end;
   query_botoes.close;
   freeandnil(query_botoes);
   end;
end;




function tFrm_NS.fSalvarXMLdoEvento(pIdNew: integer; pEvento: String; pNomeSaida: String): boolean;
var
 Query_AdoCons: TADOQuery;
begin

query_AdoCons:=TADOQuery.Create(nil);
query_AdoCons.Connection:=DM1_ADO.ADOConnection1;
query_AdoCons.Close;
query_AdoCons.SQL.Clear;
query_AdoCons.SQL.Add('Select NSE_XML_EVENTO AS  xml from CADNS_NFEEVE where  NSE_ID_NS_NEW='+IntToStr(pIdNew)
                  +'  and NSE_OPERACAO=:OPERACAO');
query_AdoCons.Parameters.ParamByName('OPERACAO').Value:=pEvento;


try
   query_AdoCons.Open;
except ON E: Exception do
   begin
   ex_erroSql_ado(query_AdoCons,2389,'_stru'+e.message,'user');
   end;
   end;
if (query_Adocons.isempty) or (query_Adocons.fieldbyname('xml').Isnull) then
   begin
   Messagedlg('xml não encontrado!',mtwarning,[mbok],0);
   end
else
   begin
   (query_Adocons.fieldbyname('xml')  as TBlobField).SaveToFile(pnomesaida);
   Messagedlg('Arquivo Salvo como '+pNomeSaida,mtInformation,[mbOk],0);
   end;
query_Adocons.close;
FreeandNil(Query_AdoCons);
end;


procedure TFrm_NS.bbSalvarNfceAutorizacaoClick(Sender: TObject);
begin

  inherited;

SaveDialog2.FileName:= mpastadefault+'NFCE_AUTORIZACAO'+DM1.Tb_NsNSNFCE_NUMERO.AsString+'.xml';
IF SaveDialog2.Execute then
   fSalvarXMLdoEvento(DM1.Tb_NsNSID_NEW.AsInteger,'65AUTORIZACAO',SaveDialog2.FileName);


end;

procedure TFrm_NS.BitBtn2Click(Sender: TObject);
var
  mResposta: TResposta;
  mNfse: tNfse;
begin
  inherited;
mNfse :=tNfse.create;;

mResposta:=mNfse.fConsultarNfse(valint(edt_numnf.text),inttostr(cb_ambiente.itemindex+1),false);
Memo1.Lines.clear;
memo1.Lines.Add(mResposta.codigoResp);
memo1.Lines.Add(mResposta.motivoResp);



freeandnil(mNfse);
end;

procedure TFrm_NS.bbCancelarClick(Sender: TObject);
var
  mResposta: TResposta;
  mNfse: tNfse;
begin
  inherited;
mNfse :=tNfse.create;;

mResposta:=mNfse.fCancelarNfse(edt_chNfse.text,inttostr(cb_ambiente.itemindex+1),edt_xmotivo.text,edt_evento.text);
Memo1.Lines.clear;
memo1.Lines.Add(mResposta.codigoResp);
memo1.Lines.Add(mResposta.motivoResp);
freeandnil(mNfse);

end;

procedure TFrm_NS.BitBtn3Click(Sender: TObject);
var
  mNfse: tNfse;

begin
  inherited;
if trim(Memo1.Lines.Text)<>'' then
   begin
   mNfse :=tNfse.create;;

   mNfse.SalvarBase64ParaPDF(Memo1.Lines.Text, edt_nomesaida.Text);
   fExecutarArquivo(edt_nomesaida.Text);
   freeandnil(mNfse);
   end;

end;

procedure TFrm_NS.bbConsNfceClick(Sender: TObject);
var
  mResposta: TResposta;
  mNfse: tNfse;
  mExecutar: String;

begin
  inherited;
 mNfse :=tNfse.create;

mResposta :=  mNfse.fConsultarURL(valint(edt_url_numnfse.text),inttostr(cb_url_amb.itemIndex+1));
Memo_consnfe.Lines.Clear;
Memo_consnfe.Lines.add('Codigo retorno: '+ mResposta.codigoResp);
Memo_consnfe.Lines.add('  ');
Memo_consnfe.Lines.add('Motivo  ');
Memo_consnfe.Lines.add('  ');

Memo_consnfe.Lines.add(mResposta.motivoResp);
mExecutar:=trim(StringReplace(mResposta.motivoResp, 'Url da NFSe encontrado : ','', [rfReplaceAll, rfIgnoreCase]));
Memo_link.Lines.Clear;
Memo_link.Lines.add(mExecutar);

// Executa o comando para abrir o link/arquivo
  ShellExecute(
    Handle,                    // Handle da janela atual
    'open',                    // Ação (abrir)
    PChar(mExecutar ),   // URL ou caminho do arquivo
    nil,                       // Parâmetros (não necessários aqui)
    nil,                       // Diretório padrão (não necessário aqui)
    SW_SHOWNORMAL              // Como a janela deve ser exibida
  );

//fExecutarArquivo(mExecutar );

end;

procedure TFrm_NS.bbBaixarNfseClick(Sender: TObject);
begin
fBaixarNfseDoSite(true);

end;




procedure TFrm_NS.fBaixarNfseDoSite(pMensagem: boolean);

var
  mResposta: TResposta;
  mNfse: tNfse;
  mAmbiente: String;
  adoQuery_temp: TADOQuery;

begin
  inherited;

if (not DM1.Tb_Ns.Active) then
   begin
   if pMensagem then
      MessageDlg('Não é uma NFE Válida!',mtWarning,[mbOk],0);
   exit;
   end;

if (DM1.Tb_NsNSNFSERV_NUMNF.AsInteger=0) then
  fAtualizarDadosNFSe(DM1.Tb_NsNSID_NEW.AsInteger);

if (DM1.Tb_NsNSNFSERV_NUMNF.AsInteger=0) then
   begin
   if pMensagem then
      MessageDlg('Não é uma NFE Válida!',mtWarning,[mbOk],0);
   exit;
   end;


mAmbiente:='1';
if flfilpad(0,'_NF_SERVICO','NF_TIPO') then
   begin
   mAmbiente:=DM4.Tb_FilPad2FPVALOR.AsString;
   end;

mNfse :=tNfse.create;;


mResposta:=mNfse.fConsultarNfse(DM1.Tb_NsNSNFSERV_NUMNF.AsInteger,mAmbiente,false);


if (mResposta.xmlCliente<>'') then
   begin
   adoQuery_temp:=TADOQuery.Create(nil);
   adoQuery_temp.Connection:=DM1_ADO.ADOConnection1;
   adoQuery_temp.Close;
   adoQuery_temp.SQL.Clear;
   adoQuery_temp.SQL.Add('Update CADNS set'
                            +' NSNFE_XML_CLIENTE=:NFE_XML_CLIENTE ');
   adoQuery_temp.SQL.Add(' where NSID_NEW=:CHAVE ' );
   adoQuery_temp.Parameters.ParamByName('NFE_XML_CLIENTE').value:=mResposta.xmlCliente;
   adoQuery_temp.Parameters.ParamByName('CHAVE').Value:=DM1.Tb_NsNSID_NEW.AsInteger;
   try
      adoQuery_temp.ExecSQL;
      fdm1StartCommit;
   except ON E: Exception do
      begin
      ex_erroSql_ado(adoQuery_temp,1668,'_stru'+e.message,'user');
      end;
      end;
   adoQuery_temp.close;
   FreeAndNil(adoQuery_temp);
   if pMensagem then
      MessageDlg('Concluido com Sucesso!',mtInformation,[mbOk],0);
   end
else
   begin
   if pMensagem then
      MessageDlg('Nao foi possivel baixar o xml '+mResposta.codigoResp+' - ' + mResposta.motivoResp,mtWarning,[mbOk],0);
   end;

freeandnil(mNfse);

end;

procedure TFrm_NS.bbVisualiarNFSeClick(Sender: TObject);
var
  mResposta: TResposta;
  mNfse: tNfse;
  mAmbiente: String;
  adoQuery_temp: TADOQuery;
  mExecutar: String;
begin
  inherited;


if (not DM1.Tb_Ns.Active) then
   begin
   MessageDlg('Não é uma NFE Válida!',mtWarning,[mbOk],0);
   exit;
   end;

if (DM1.Tb_NsNSNFSERV_NUMNF.AsInteger=0) then
  fAtualizarDadosNFSe(DM1.Tb_NsNSID_NEW.AsInteger);

if (DM1.Tb_NsNSNFSERV_NUMNF.AsInteger=0) then
   begin
   MessageDlg('Não é uma NFE Válida!',mtWarning,[mbOk],0);
   exit;
   end;

mAmbiente:='1';
if flfilpad(0,'_NF_SERVICO','NF_TIPO') then
   begin
   mAmbiente:=DM4.Tb_FilPad2FPVALOR.AsString;
   end;

mNfse :=tNfse.create;;

mResposta :=  mNfse.fConsultarURL(DM1.Tb_NsNSNFSERV_NUMNF.AsInteger,mAmbiente);
mExecutar:=trim(StringReplace(mResposta.motivoResp, 'Url da NFSe encontrado : ','', [rfReplaceAll, rfIgnoreCase]));
if (mExecutar)='' then
   begin
   MessageDlg('Nao foi possivel Visualizar o DANFE '+mResposta.codigoResp+' - ' + mResposta.motivoResp,mtWarning,[mbOk],0);
   end
else
   begin
   fExecutarArquivo(mExecutar);
   end;
freeandnil(mNfse);
end;

procedure TFrm_NS.bbSalvarNFSeClick(Sender: TObject);
var
  mResposta: TResposta;
  mNfse: tNfse;
  mAmbiente: String;
  adoQuery_temp: TADOQuery;
  mExecutar: String;

  procedure pFecharTudo;
  begin
  if adoQuery_temp<>nil then
     begin
     adoQuery_temp.Close;
     freeandnil(adoQuery_temp);
     end;
  if mNfse<>nil then
     freeandnil(mNfse);
  end;

   function fLerNota: boolean;
   begin
   result:=false;
   adoQuery_temp.Close;
   adoQuery_temp.SQL.Clear;
   adoQuery_temp.SQL.Add('SELECT NSNFE_XML_CLIENTE as xml from CADNS ');
   adoQuery_temp.SQL.Add(' where NSID_NEWP=:CHAVE AND NSNFE_NOTXML_CLIENTE IS NULL' );
   adoQuery_temp.Parameters.ParamByName('CHAVE').Value:=DM1.Tb_NsNSID_NEW.AsInteger;
   try
     adoQuery_temp.Open;
     if (not adoQuery_temp.IsEmpty) then
        result:=true;
   except ON E: Exception do
      begin
      ex_erroSql_ado(adoQuery_temp,2701,'_stru'+e.message,'user');
      end;
      end;
   end;


begin
  inherited;



if (not DM1.Tb_Ns.Active) then
   begin
   MessageDlg('Não é uma NFE Válida!',mtWarning,[mbOk],0);
   exit;
   end;

if (DM1.Tb_NsNSNFSERV_NUMNF.AsInteger=0) then
  fAtualizarDadosNFSe(DM1.Tb_NsNSID_NEW.AsInteger);

if (DM1.Tb_NsNSNFSERV_NUMNF.AsInteger=0) then
   begin
   MessageDlg('Não é uma NFE Válida!',mtWarning,[mbOk],0);
   exit;
   end;

mAmbiente:='1';
if flfilpad(0,'_NF_SERVICO','NF_TIPO') then
   begin
   mAmbiente:=DM4.Tb_FilPad2FPVALOR.AsString;
   end;

adoQuery_temp:=TADOQuery.Create(nil);
adoQuery_temp.Connection:=DM1_ADO.ADOConnection1;

if not flernota then
   begin
   fBaixarNfseDoSite(false);
   if not fLerNota then
      begin
      messagedlg('nao foi possivel encontrar o XML do cliente ',mtWarning,[mbOk],0);
      pFecharTudo;
      exit;

      end;
   end;

   
SaveDialog2.FileName:= mpastadefault+'NFSE'+DM1.Tb_NsNSNFSERV_NUMNF.AsString+'.xml';
IF SaveDialog2.Execute then
   begin
   (adoQuery_temp.fieldbyname('xml')  as TBlobField).SaveToFile(SaveDialog2.FileName);
   end;
pFecharTudo;


end;



procedure TFrm_NS.fAtualizarDadosNFSe(pIdNewns: Integer);
var
query_qru_nfsens: tquery;
begin

query_qru_nfsens := tquery.create(nil);
query_qru_nfsens.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_qru_nfsens.sQL.ADD('MERGE INTO CADNS T1 '
                        +'USING ( SELECT NSID_PED01_NEW,  NSID_NEW '
                        +',P1DATANF_SERV AS NSNFSERV_DATHORREC '
                        +', P1NUMNF_SERV as NSNFSERV_NUMNF '
                        +' FROM CADNS,CADP01 WHERE P1ID_NEW=NSID_PED01_NEW '
                        +' AND  NSID_NEW='+InttoStr(pIdNewns)+') ss  ON (T1.NSID_NEW = SS.NSID_NEW)'
                        +' WHEN MATCHED THEN '
                        +' UPDATE SET '
                        +'   T1.NSNFSERV_DATHORREC = SS.NSNFSERV_DATHORREC, '
                        +'  T1.NSNFSERV_NUMNF = SS.NSNFSERV_NUMNF ');
try
   query_qru_nfsens.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_qru_nfsens,512,'SGE','CADVER');
   end;
query_qru_nfsens.close;
freeandnil(query_qru_nfsens);
flcadns(9,0,0,dm1.Tb_NsNSID_NEW.AsString,pvazio,'') ;


end;

end.
